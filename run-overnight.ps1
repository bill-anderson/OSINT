<#
  run-overnight.ps1 -- headless batch driver for the OSINT vault.

  Spawns a FRESH headless `claude` session per job so each starts with clean
  context (the reason a big batch can't run inline -- see RUN-BATCH.md ->
  "Two ways to run"). The session does exactly one job and exits; this script is
  only the outer loop + the between-jobs Stop:/Budget: checks + the finalise call.

  The session owns the markers and commits (RUN-BATCH.md -> "Single-job contract").
  This script never edits JOBS.md itself.

  USAGE
    # Test ONE job first and confirm it actually used the Exa MCP:
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

function Invoke-Claude($prompt) {
  $a = @('-p', $prompt, '--dangerously-skip-permissions', '--output-format', 'json')
  if ($Model) { $a += @('--model', $Model) }
  $out = & $ClaudeExe @a 2>&1 | Out-String
  $script:LastCode = $LASTEXITCODE
  Write-LogRaw $out
  return $out
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

# --- the loop ------------------------------------------------------------
$jobPrompt = @"
You are one worker in a HEADLESS batch run of $BatchFile in this repo.
Follow RUN-BATCH.md -> "Single-job (headless) contract". Do EXACTLY this and nothing more:
1. If any line in the ## Queue section is marked [~], a prior session crashed mid-job:
   establish its true state from git and wiki/log.md, and re-mark it ([x]/[!] if it
   actually finished, else [ ] to retry).
2. Take the FIRST [ ] job line in the ## Queue section. If there is none, stop immediately.
3. Mark that line [~] and commit.
4. Execute the job text exactly as if the user had typed it, to completion, per the
   repo procedures and CLAUDE.md.
   - If the Exa web-search MCP (claude_ai_Exa) is UNAVAILABLE, do NOT degrade to
     built-in web search: mark the job [stop] ("Exa MCP absent") and commit, then stop.
5. Mark the line [x] with a one-line outcome (or [!] ordinary failure / [stop] serious
   failure) and commit.
6. STOP. Do not start a second job. Do not run the end-of-run archive/clear.
"@

$start = Get-Date
$done  = 0
$noProgress = 0
$halted = $false

Log "START headless drain of $BatchFile (MaxJobs=$MaxJobs, model='$Model')"

while ($true) {
  $lines = Read-Lines
  $ctl   = Get-Control $lines
  $pend  = Get-PendingCount $lines
  $stops = Get-StopCount $lines

  if ($pend -eq 0) { Log "queue drained (0 pending)."; break }
  if ($ctl.Stop -match 'after current') { Log "Stop: after current -> stopping (unreached jobs left for resume)."; $halted = $true; break }

  $budget = Get-BudgetHours $ctl
  if ($null -ne $budget) {
    $elapsed = ((Get-Date) - $start).TotalHours
    if ($elapsed -ge $budget) { Log ("Budget {0}h reached ({1:N2}h elapsed) -> stopping." -f $budget, $elapsed); $halted = $true; break }
  }
  if ($MaxJobs -gt 0 -and $done -ge $MaxJobs) { Log "MaxJobs=$MaxJobs reached -> stopping (test/limit)."; $halted = $true; break }

  Log ("running a job -- {0} pending" -f $pend)
  $null = Invoke-Claude $jobPrompt
  Log ("claude exit code: {0}" -f $script:LastCode)

  $lines2 = Read-Lines
  $pend2  = Get-PendingCount $lines2
  $stops2 = Get-StopCount $lines2

  if ($stops2 -gt $stops) { Log "a job halted with [stop] -> stopping the batch (leave for resume, fix cause, retry)."; $halted = $true; break }
  if ($pend2 -lt $pend) {
    $done++; $noProgress = 0
    Log ("job done ({0} completed this run; {1} pending)" -f $done, $pend2)
  }
  else {
    $noProgress++
    Log ("WARNING: no progress this session (a pending job was not consumed; exit={0})." -f $script:LastCode)
    if ($noProgress -ge 2) { Log "two no-progress sessions in a row -> serious problem, stopping."; $halted = $true; break }
  }
}

# --- finalise ------------------------------------------------------------
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

$elapsed = ((Get-Date) - $start).TotalHours
Log ("DONE -- {0} job(s) completed, {1:N2}h elapsed, halted={2}" -f $done, $elapsed, $halted)
