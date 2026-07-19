# archive-phase2.ps1 — retire the completed Phase-2 back-fill apparatus.
#
# The 2025 -> 2026-07 national-press + trade-journal back-fill finished on
# 2026-07-17 (every ledger row `swept`/`staged`, new-queue/ drained into
# new-queue/done/). Its runnable apparatus is now historical. This script moves
# it into sweep/archive/ with `git mv` so history is preserved and the change is
# one reversible commit. The ongoing daily sweep (sweep/daily-README.md) depends
# on none of it.
#
# Run ONCE from anywhere in the repo:
#   powershell -ExecutionPolicy Bypass -File sweep\archive-phase2.ps1
# Then review `git status` and commit. Delete this script afterwards.

$ErrorActionPreference = 'Stop'
$Root = Split-Path $PSScriptRoot -Parent      # repo root (script lives in sweep/)
Set-Location $Root

$Archive = 'sweep/archive'
New-Item -ItemType Directory -Force -Path $Archive | Out-Null

# Explicit Phase-2 files (everything in sweep/ EXCEPT daily-README.md, the
# sweep/daily/ state folder, sweep/archive/, and this script itself).
$items = @(
    'sweep/README.md',
    'sweep/query-recipes.md',
    'sweep/ledger.csv',
    'sweep/ingest-runbook.md',
    'sweep/run-overnight.ps1',
    'sweep/overnight-run.log',
    'sweep/held-urls.txt',
    'sweep/held-urls-unsafe.txt',
    'sweep/fill-log-batch1.csv',
    'sweep/fill-log-batch2.csv',
    'sweep/fill-log-batch3.csv',
    'sweep/fill-log-batch4.csv'
)
# All per-country drop logs (drop-log-XXX.csv).
$items += (Get-ChildItem 'sweep' -Filter 'drop-log-*.csv' -File |
    ForEach-Object { "sweep/$($_.Name)" })

$moved = 0
foreach ($f in $items) {
    if (Test-Path $f) {
        git mv -- $f "$Archive/"
        Write-Host "moved  $f"
        $moved++
    }
    else {
        Write-Host "skip   $f (absent)"
    }
}

# Archive signpost.
$readme = @'
# sweep/archive — Phase-2 back-fill apparatus (historical)

The 2025-01-01 -> 2026-07-17 back-fill that brought the wiki up to date with
national-press and trade-journal coverage across all 54 states plus the regional
layer. Completed 2026-07-17 (every ledger row `swept`/`staged`; candidates drained
into `new-queue/done/` and ingested via `ingest-runbook.md`). Retained for
provenance and its rich per-country notes.

Nothing here is used by the ongoing **daily trade-journal sweep**
(`sweep/daily-README.md`), which is self-contained and reads
`wiki/trade-journals.csv` fresh each run.

Contents: `README.md` (Phase-2 sweep procedure), `query-recipes.md` (country /
newspaper / Arabic recipes), `ledger.csv` (per-country state + notes),
`ingest-runbook.md` + `run-overnight.ps1` + `overnight-run.log` (the batch-ingest
drain), `held-urls*.txt` (dedup snapshots), `fill-log-batch*.csv`, and
`drop-log-*.csv` (per-country drop logs).
'@
Set-Content -Path "$Archive/README.md" -Value $readme -Encoding utf8
git add -- "$Archive/README.md"

Write-Host ""
Write-Host "Archived $moved file(s) into $Archive/. Review with 'git status', then:"
Write-Host "  git commit -m 'Archive completed Phase-2 sweep apparatus; add daily sweep'"
