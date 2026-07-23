# sweep/archive â€” Phase-2 back-fill apparatus (historical)

The 2025-01-01 -> 2026-07-17 back-fill that brought the wiki up to date with
national-press and trade-journal coverage across all 54 states plus the regional
layer. Completed 2026-07-17 (every ledger row `swept`/`staged`; candidates drained
into `new-queue/done/` and ingested via `ingest-runbook.md`). Retained for
provenance and its rich per-country notes.

Nothing here is used by the ongoing **daily trade-journal sweep**
(`DAILY-SWEEP.md`), which is self-contained and reads
`wiki/sweep-daily.csv` fresh each run.

Contents: `README.md` (Phase-2 sweep procedure), `query-recipes.md` (country /
newspaper / Arabic recipes), `ledger.csv` (per-country state + notes),
`ingest-runbook.md` + `run-overnight.ps1` + `overnight-run.log` (the batch-ingest
drain), `held-urls*.txt` (dedup snapshots), `fill-log-batch*.csv`, and
`drop-log-*.csv` (per-country drop logs).
