<#
  run-overnight.ps1 -- headless batch driver for the OSINT vault.

  Spawns a FRESH headless `claude` session per job so each starts with clean
  context (the reason a big batch can't run inline -- see RUN-BATCH.md ->
  "Two ways to run"). The session does exactly one job and exits; this script is
  only the outer loop + the between-jobs Stop:/Budget: checks + the finalise call.

  The session owns the markers and commits (RUN-BATCH.md -> "Single-job contract").
  This script edits JOBS.md in ONE case only: to AUTO-FAIL a job it had to kill on
  timeout (flip that job's [~] start-marker to [!]); otherwise it never touches it.

  ROBUSTNESS (tasks 25-27, 2026-07-24):
    * Exa PREFLIGHT CANARY: before any job, one throwaway session confirms the
      claude_ai_Exa MCP works; if absent the run aborts up front (exit 2) instead of
      wasting jobs on degraded/stalled searches.
    * COMMIT-PER-JOB: sessions use `batch: start/done job N` commits that pair up;
      scripts/verify-job-commits.py checks it at the end; a dirty tree between jobs is
      auto-committed with a REVIEW flag so nothing is stranded.
    * Per-job TIMEOUT (-JobTimeoutMin, default 60): a hung job is killed (process
      tree), auto-failed [!], and the batch CONTINUES -- it no longer freezes the
      whole night with no trace (that is what happened 2026-07-23, job 6 hung).
    * KEEP-AWAKE: the machine is prevented from sleeping for the duration of the run.
    * HONEST ACCOUNTING: [x] done vs [!] failed vs timed-out are counted separately;
      a [!] is NOT counted as a completed job.
    * ALWAYS a final summary line (try/finally), so a death/abort is never silent.

  USAGE
    # Test ONE job first. Confirm it produced JSON output and consumed a queue line
    # (the prompt now goes to claude via STDIN, not an argument -- validate that).
    powershell -ExecutionPolicy Bypass -File .\run-overnight.ps1 -MaxJobs 1

    # Then the full drain:
    powershell -ExecutionPolicy Bypass -File .\run-overnight.ps1

    # A different batch file (standing weekly list):
    powershell -ExecutionPolicy Bypass -File .\run-overnight.ps1 -BatchFile reviews\weekly_jobs.md

  SAFETY: uses --dangerously-skip-permissions (unattended). Only acceptable because
  the vault is git + Dropbox versioned, so every job is a revertible commit. Do not
  point this at anything that isn't fully version-controlled.

  NOTE: keep this file ASCII-only. Windows PowerShell 5.1 misreads UTF-8 script
  files, so a stray em-dash or curly quote breaks parsing.
#>

param(
  [string] $BatchFile = 'reviews\JOBS.md',
  [string] $RepoDir   = 'C:\Users\bill\OSINT',      # repo moved off Dropbox 2026-07 (task 2)
  [string] $ClaudeExe = 'claude',            # on PATH; or full path e.g. C:\Users\bill\.local\bin\claude
  [int]    $MaxJobs   = 0,                    # 0 = drain all; 1 = test a single job
  [int]    $JobTimeoutMin = 60,               # per-job hard timeout; 0 = no timeout (not recommended)
  [double] $BudgetHoursOverride = -1,         # <0 = take Budget: from the batch file
  [string] $Model     = '',                   # '' = use the configured default model
  [string] $LogPath   = ''                    # '' = %TEMP%\run-overnight.log (kept OUT of Dropbox)
)

$ErrorActionPreference = 'Stop'
Set-Location $RepoDir

# Log lives OUTSIDE Dropbox by default -- Dropbox locks synced files mid-append.
$LogFile = if ($LogPath) { $LogPath } else { Join-Path ([System.IO.Path]::GetTempPath()) 'run-overnight.log' }

function Write-LogRaw($text) {
  for ($t = 0; $t -lt 6; $t++) {
    try { Add-Content -LiteralPath $LogFile -Value $text -Encoding UTF8; return }
    catch { Start-Sleep -Milliseconds 250 }   # transient lock -- retry
  }
  # give up on the file after retries; console output is not lost
}
function Log($msg) {
  $line = "[{0}] {1}" -f (Get-Date -Format 'yyyy-MM-dd HH:mm:ss'), $msg
  Write-Host $line
  Write-LogRaw $line
}
Write-Host "log file: $LogFile"

# --- keep-awake ----------------------------------------------------------
Add-Type -Namespace Win32 -Name Power -MemberDefinition @'
[System.Runtime.InteropServices.DllImport("kernel32.dll")]
public static extern uint SetThreadExecutionState(uint esFlags);
'@
function Set-KeepAwake($on) {
  $ES_CONTINUOUS      = [uint32]2147483648   # 0x80000000
  $ES_SYSTEM_REQUIRED = [uint32]1            # 0x00000001
  if ($on) {
    [void][Win32.Power]::SetThreadExecutionState([uint32]($ES_CONTINUOUS -bor $ES_SYSTEM_REQUIRED))
    Log "keep-awake ON (machine will not sleep during the run)."
  } else {
    [void][Win32.Power]::SetThreadExecutionState([uint32]$ES_CONTINUOUS)
    Log "keep-awake reset."
  }
}

# --- helpers -------------------------------------------------------------
function Read-Lines { Get-Content -LiteralPath $BatchFile -Encoding UTF8 }

function Get-QueueLines($lines) {
  $m = $lines | Select-String -Pattern '^##\s+Queue' | Select-Object -First 1
  if (-not $m) { return @() }
  $i = $m.LineNumber
  if ($i -ge $lines.Count) { return @() }
  return $lines[$i..($lines.Count-1)]
}
function Get-PendingCount($lines) { (Get-QueueLines $lines | Select-String -Pattern '^\s*-\s*\[\s\]').Count }
function Get-StopCount($lines)    { (Get-QueueLines $lines | Select-String -Pattern '^\s*-\s*\[stop\]').Count }
function Get-DoneCount($lines)    { (Get-QueueLines $lines | Select-String -Pattern '^\s*-\s*\[x\]').Count }
function Get-FailCount($lines)    { (Get-QueueLines $lines | Select-String -Pattern '^\s*-\s*\[!\]').Count }

function Get-Control($lines) {
  $ctl = @{ Mode = 'one-off'; Budget = $null; Stop = 'no' }
  foreach ($l in $lines) {
    if ($l -match '^\s*Mode:\s*(\S+)')   { $ctl.Mode   = $Matches[1].Trim() }
    if ($l -match '^\s*Budget:\s*(.+)$') { $ctl.Budget = $Matches[1].Trim() }
    if ($l -match '^\s*Stop:\s*(.+)$')   { $ctl.Stop   = $Matches[1].Trim() }
  }
  return $ctl
}
function Get-BudgetHours($ctl) {
  if ($BudgetHoursOverride -ge 0) { return $BudgetHoursOverride }
  if ($ctl.Budget -and $ctl.Budget -match '(\d+(\.\d+)?)\s*h') { return [double]$Matches[1] }
  return $null   # no cap
}

function Stop-ProcessTree($processId) {
  try { & taskkill /T /F /PID $processId 2>&1 | Out-Null } catch {}
}

# Prompt goes via STDIN (a temp file), not an argument -- so a giant multi-line
# prompt needs no shell quoting, and we get a real PID we can kill on timeout.
function Invoke-Claude($prompt) {
  $a = @('-p', '--dangerously-skip-permissions', '--output-format', 'json')
  if ($Model) { $a += @('--model', $Model) }
  $inFile  = [System.IO.Path]::GetTempFileName()
  $outFile = [System.IO.Path]::GetTempFileName()
  $errFile = [System.IO.Path]::GetTempFileName()
  [System.IO.File]::WriteAllText($inFile, $prompt, (New-Object System.Text.UTF8Encoding $false))
  $timedOut = $false; $code = -1
  try {
    $p = Start-Process -FilePath $ClaudeExe -ArgumentList $a -NoNewWindow -PassThru `
           -RedirectStandardInput $inFile -RedirectStandardOutput $outFile -RedirectStandardError $errFile
    if ($JobTimeoutMin -gt 0) {
      if (-not $p.WaitForExit($JobTimeoutMin * 60 * 1000)) {
        $timedOut = $true
        Log ("TIMEOUT: job exceeded {0} min -- killing process tree PID {1}." -f $JobTimeoutMin, $p.Id)
        Stop-ProcessTree $p.Id
        [void]$p.WaitForExit(15000)
      }
    } else {
      $p.WaitForExit()
    }
    if (-not $timedOut) { $code = $p.ExitCode }
  } catch {
    Log ("ERROR launching claude: {0}" -f $_.Exception.Message)
  }
  $out = ''
  try { $out = [System.IO.File]::ReadAllText($outFile) + [System.IO.File]::ReadAllText($errFile) } catch {}
  Remove-Item -LiteralPath $inFile, $outFile, $errFile -ErrorAction SilentlyContinue
  $script:LastCode = $code
  Write-LogRaw $out
  return @{ Code = $code; TimedOut = $timedOut; Output = $out }
}

# Exa preflight canary (task 25): one trivial web_search_exa call in a fresh session,
# BEFORE any real job. If the claude_ai_Exa MCP is absent, the whole batch would either
# stall or silently degrade -- so we fail fast here with a distinct marker instead of
# discovering it three jobs and an hour in. Backstop: the in-job rule still catches a
# mid-run drop (mark [stop] "Exa MCP absent").
function Test-ExaCanary {
  Log "Exa preflight canary: one trivial web_search_exa call..."
  $canary = @"
You are a PREFLIGHT CANARY for a headless batch. Do ONLY this, then stop:
Run exactly ONE trivial web search via the claude_ai_Exa MCP tool web_search_exa
(query: "digital connectivity africa").
- If it returns results, output the single token:  EXA_CANARY_OK
- If the claude_ai_Exa MCP / web_search_exa tool is NOT available (not loaded / tool
  not found / errors as absent), output the single token:  EXA_CANARY_ABSENT
Output that one token and nothing else. Do NOT fall back to the built-in web search.
Make no file changes and no commits.
"@
  $r = Invoke-Claude $canary
  if ($r.TimedOut) { Log "canary TIMED OUT -- treating as Exa-absent."; return $false }
  if ($r.Output -match 'EXA_CANARY_OK')     { return $true }
  if ($r.Output -match 'EXA_CANARY_ABSENT') { return $false }
  Log "canary produced neither token (exit=$($r.Code)) -- treating as Exa-absent."
  return $false
}

# On timeout the killed session left its job at [~] (start-marker committed) and
# maybe a dirty tree. Drop the partial work, flip that [~] to [!], commit -- so the
# batch can move on instead of re-attempting a job that hangs.
function Set-JobFailed($mins) {
  & git reset --hard HEAD 2>&1 | Out-Null
  $enc = New-Object System.Text.UTF8Encoding $false
  $full = Join-Path $RepoDir $BatchFile
  $txt = [System.IO.File]::ReadAllText($full)
  $re = [regex]'(?m)^(\s*-\s*)\[~\](.*)$'
  $note = " -- TIMED OUT (auto-failed by runner after ${mins}m; review and re-queue)"
  $new = $re.Replace($txt, { param($m) $m.Groups[1].Value + '[!]' + $m.Groups[2].Value + $note }, 1)
  if ($new -ne $txt) {
    [System.IO.File]::WriteAllText($full, $new, $enc)
    & git add -- $BatchFile 2>&1 | Out-Null
    & git commit -q -m ("batch: auto-fail timed-out job (runner, ${mins}m)") 2>&1 | Out-Null
    Log "marked the timed-out [~] job as [!] and committed."
  } else {
    Log "WARNING: no [~] marker found to auto-fail (job may not have started cleanly)."
  }
}

# --- preconditions -------------------------------------------------------
if (-not (Get-Command $ClaudeExe -ErrorAction SilentlyContinue)) { throw "claude CLI not found: $ClaudeExe" }
if (-not (Test-Path $BatchFile)) { throw "batch file not found: $BatchFile" }

$dirty = (& git status --porcelain) | Out-String
if ($dirty.Trim()) {
  Log "ABORT: working tree is dirty. Commit or revert first (RUN-BATCH precondition):"
  Log $dirty.Trim()
  exit 1
}

# --- Exa preflight canary (task 25) -- fail fast if the MCP is absent ----
if (-not (Test-ExaCanary)) {
  Log "EXA CANARY FAILED -- the claude_ai_Exa MCP is absent (or the canary hung)."
  Log "Aborting the run before any job so no work is wasted. Fix the MCP and retry."
  exit 2
}
Log "Exa canary OK -- MCP present, proceeding."

# --- the job prompt ------------------------------------------------------
$jobPrompt = @"
You are one worker in a HEADLESS batch run of $BatchFile in this repo.
Follow RUN-BATCH.md -> "Single-job (headless) contract". Do EXACTLY this and nothing more:
1. If any line in the ## Queue section is marked [~], a prior session crashed mid-job:
   establish its true state from git and wiki/log.md, and re-mark it ([x]/[!] if it
   actually finished, else [ ] to retry).
2. Take the FIRST [ ] job line in the ## Queue section. If there is none, stop immediately.
3. Mark that line [~] and commit the MARKER ALONE, message:
   "batch: start job N -- <short job desc>"  (N = its 1-based position among the
   ## Queue job lines).
4. Execute the job text exactly as if the user had typed it, to completion, per the
   repo procedures and CLAUDE.md.
   - If the Exa web-search MCP (claude_ai_Exa) is UNAVAILABLE, do NOT degrade to
     built-in web search: mark the job [stop] ("Exa MCP absent") and commit, then stop.
5. Commit ALL of the job's work TOGETHER with the final marker [x] (or [!] ordinary
   failure / [stop] serious failure), message:
   "batch: done job N [x|!|stop] -- <one-line outcome>". The working tree MUST be
   clean when you stop -- nothing left staged or uncommitted.
6. STOP. Do not start a second job. Do not run the end-of-run archive/clear.
"@

# --- the loop ------------------------------------------------------------
$start      = Get-Date
$startRef   = (& git rev-parse HEAD 2>$null); if ($startRef) { $startRef = $startRef.Trim() }
$done       = 0
$failed     = 0
$timedout   = 0
$attempts   = 0
$noProgress = 0
$halted     = $false

Log ("START headless drain of {0} (MaxJobs={1}, timeout={2}m, model='{3}')" -f $BatchFile, $MaxJobs, $JobTimeoutMin, $Model)

try {
  Set-KeepAwake $true

  while ($true) {
    $lines = Read-Lines
    $ctl   = Get-Control $lines
    $pend  = Get-PendingCount $lines
    $stops = Get-StopCount $lines
    $doneN = Get-DoneCount $lines
    $failN = Get-FailCount $lines

    if ($pend -eq 0) { Log "queue drained (0 pending)."; break }
    if ($ctl.Stop -match 'after current') { Log "Stop: after current -> stopping (unreached jobs left for resume)."; $halted = $true; break }

    $budget = Get-BudgetHours $ctl
    if ($null -ne $budget) {
      $elapsed = ((Get-Date) - $start).TotalHours
      if ($elapsed -ge $budget) { Log ("Budget {0}h reached ({1:N2}h elapsed) -> stopping." -f $budget, $elapsed); $halted = $true; break }
    }
    if ($MaxJobs -gt 0 -and $attempts -ge $MaxJobs) { Log "MaxJobs=$MaxJobs reached -> stopping (test/limit)."; $halted = $true; break }

    Log ("running a job -- {0} pending (timeout {1}m)" -f $pend, $JobTimeoutMin)
    $r = Invoke-Claude $jobPrompt
    $attempts++
    Log ("claude exit code: {0} (timedOut={1})" -f $r.Code, $r.TimedOut)

    if ($r.TimedOut) {
      Set-JobFailed $JobTimeoutMin
      $timedout++; $noProgress = 0
      Log ("job TIMED OUT and auto-failed ({0} done, {1} failed, {2} timed-out this run) -- continuing." -f $done, $failed, $timedout)
      continue
    }

    $lines2 = Read-Lines
    $pend2  = Get-PendingCount $lines2
    $stops2 = Get-StopCount $lines2
    $done2  = Get-DoneCount $lines2
    $fail2  = Get-FailCount $lines2

    if ($stops2 -gt $stops) { Log "a job halted with [stop] -> stopping the batch (leave for resume, fix cause, retry)."; $halted = $true; break }

    if ($done2 -gt $doneN) {
      $done += ($done2 - $doneN); $noProgress = 0
      Log ("job DONE [x] ({0} done, {1} failed; {2} pending)" -f $done, $failed, $pend2)
    }
    elseif ($fail2 -gt $failN) {
      $failed += ($fail2 - $failN); $noProgress = 0
      Log ("job FAILED [!] -- attempted, not done ({0} done, {1} failed; {2} pending) -- continuing" -f $done, $failed, $pend2)
    }
    elseif ($pend2 -lt $pend) {
      $noProgress = 0
      Log ("a pending job was consumed but not marked [x]/[!] (pending {0}) -- continuing." -f $pend2)
    }
    else {
      $noProgress++
      Log ("WARNING: no progress this session (no queue line consumed; exit={0})." -f $r.Code)
      if ($noProgress -ge 2) { Log "two no-progress sessions in a row -> serious problem, stopping."; $halted = $true; break }
    }

    # between-jobs hygiene (task 27): a clean session commits its own work. If the
    # tree is dirty here, the session violated the commit-per-job contract -- auto-
    # commit the leftovers with a REVIEW flag so the next job starts clean and nothing
    # is lost, and surface it loudly.
    $mid = (& git status --porcelain) | Out-String
    if ($mid.Trim()) {
      Log ("WARNING: session left tree dirty -- auto-committing leftovers (REVIEW):`n{0}" -f $mid.Trim())
      & git add -A 2>&1 | Out-Null
      & git commit -q -m "batch: REVIEW -- leftovers auto-committed by runner (a session did not commit cleanly)" 2>&1 | Out-Null
    }
  }

  # --- finalise ----------------------------------------------------------
  $lines = Read-Lines
  if ((Get-PendingCount $lines) -eq 0 -and -not $halted) {
    Log "queue empty -> finalising (archive + clear/re-arm by Mode)."
    $finPrompt = @"
The batch $BatchFile is fully drained (no [ ] jobs remain). Perform RUN-BATCH.md ->
"After the run": archive the run to reviews/jobs-archive/<stem>-YYYY-MM-DD-HHMM.md,
then CLEAR (Mode one-off) or RE-ARM (Mode standing) by the Control Mode, reset
Stop: no, commit, and append the one-line closing entry to wiki/log.md. Then stop.
"@
    $null = Invoke-Claude $finPrompt
    Log ("finalise exit code: {0}" -f $script:LastCode)
  }
}
finally {
  Set-KeepAwake $false
  $elapsed = ((Get-Date) - $start).TotalHours
  Log ("DONE -- {0} done, {1} failed, {2} timed-out, {3} attempted, {4:N2}h elapsed, halted={5}" -f $done, $failed, $timedout, $attempts, $elapsed, $halted)
  # commit-per-job integrity check (task 27): every start job paired + clean tree
  if ($startRef -and (Get-Command python -ErrorAction SilentlyContinue)) {
    Log "verifying commit-per-job pairing since drain start ($startRef)..."
    $v = & python (Join-Path $RepoDir 'scripts\verify-job-commits.py') --since $startRef 2>&1 | Out-String
    Write-LogRaw $v
    if ($LASTEXITCODE -ne 0) { Log "COMMIT-PAIRING CHECK FAILED (unfinished job or dirty tree) -- see above." }
    else { Log "commit-per-job pairing OK." }
  }
}
