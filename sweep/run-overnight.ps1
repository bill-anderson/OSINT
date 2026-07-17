# run-overnight.ps1 — driver loop for the Phase-2 batch ingest
# (sweep/ingest-runbook.md, "Execution model — the overnight loop").
#
# Repeatedly invokes headless Claude Code, one folder per invocation, until
# new-queue/ has no pending folders. Safe to interrupt (Ctrl-C) and re-start:
# all state lives in folder positions, per the runbook.
#
# Usage (from anywhere):
#   powershell -ExecutionPolicy Bypass -File sweep\run-overnight.ps1
# Progress: sweep\overnight-run.log (tail it, or read it in the morning).
#
# Permissions: unattended runs can't stop to approve tool calls. Either
# pre-approve tools in .claude/settings.json or leave the
# --dangerously-skip-permissions flag below (acceptable for this vault:
# git-tracked and Dropbox-versioned, and the run touches only this repo).

param(
    [int]$MaxIterations = 200,          # hard backstop, > any plausible queue
    [int]$MaxConsecutiveFailures = 5,   # claude exiting non-zero
    [int]$RetrySleepSeconds = 600       # wait after a failure (usage limits, API blips)
)

$Root = Split-Path $PSScriptRoot -Parent   # repo root (script lives in sweep/)
$QueueDir = Join-Path $Root 'new-queue'
$LogFile = Join-Path $PSScriptRoot 'overnight-run.log'
$Excluded = @('done', 'needs-clip', '_to_delete')

$Prompt = 'Run the Phase-2 batch ingest per sweep/ingest-runbook.md: ' +
    'interruption recovery first, then claim and fully process exactly ONE ' +
    'folder (smallest candidate count first), complete its teardown and git ' +
    'commit, then report and exit. Never claim a second folder.'

function Get-PendingFolders {
    Get-ChildItem -Path $QueueDir -Directory |
        Where-Object { $Excluded -notcontains $_.Name } |
        ForEach-Object { $_.Name } | Sort-Object
}

function Log([string]$Message) {
    $line = "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')  $Message"
    Add-Content -Path $LogFile -Value $line
    Write-Host $line
}

Set-Location $Root
$failures = 0
$stalls = 0
$prevPending = $null

Log "=== overnight run started (root: $Root) ==="

for ($i = 1; $i -le $MaxIterations; $i++) {
    $pending = @(Get-PendingFolders)

    if ($pending.Count -eq 0) {
        Log "queue empty - all folders processed. Done after $($i - 1) iteration(s)."
        break
    }

    # No-progress guard: a folder that survives 3 iterations without the
    # pending set changing is stuck and needs human eyes, not more retries.
    $pendingKey = $pending -join ','
    if ($pendingKey -eq $prevPending) { $stalls++ } else { $stalls = 0 }
    $prevPending = $pendingKey
    if ($stalls -ge 3) {
        Log "STOPPED: no progress for 3 iterations. Pending: $pendingKey"
        break
    }

    Log "iteration $i - $($pending.Count) folder(s) pending: $pendingKey"

    & claude -p $Prompt --dangerously-skip-permissions 2>&1 |
        Out-File -FilePath $LogFile -Append -Encoding utf8

    if ($LASTEXITCODE -ne 0) {
        $failures++
        Log "claude exited $LASTEXITCODE (failure $failures/$MaxConsecutiveFailures); sleeping $RetrySleepSeconds s"
        if ($failures -ge $MaxConsecutiveFailures) {
            Log "STOPPED: $MaxConsecutiveFailures consecutive failures."
            break
        }
        $prevPending = $null   # failures have their own guard; don't feed the stall counter
        Start-Sleep -Seconds $RetrySleepSeconds
    }
    else {
        $failures = 0
    }
}

Log "=== overnight run ended - $((@(Get-PendingFolders)).Count) folder(s) still pending ==="
