# JOBS.md — the batch queue

The list of jobs for an overnight run. **You edit this file; CC drains it** with
`RUN-BATCH.md` ("run the batch"). One job per line. CC runs them **strictly
top-to-bottom, one at a time** — never two at once.

Each line is a natural-language command, exactly as you would type it into a fresh
CC turn. The runner does not know what the jobs mean; it just executes each line
in order. So anything CC can do from a single instruction is a valid job:

## Control

Two optional controls, both read by the runner **between jobs** (never mid-job —
so either one always lets the job in flight finish before the run stops):

- `Budget:` — a time limit in hours for the whole run. Set it before you launch.
  Once that many hours have elapsed, CC **finishes the current job and stops**
  without starting another. Blank or `none` = run to completion.
- `Stop:` — the manual brake. Change it to `after current` **while the batch is
  running** (just edit and save this file); at its next between-jobs check CC
  finishes the job in flight and stops. `no` = keep going.

```
Budget: none
Stop: no
```

Both leave the unreached jobs `[ ]`, so the run resumes on the next "run the batch".

```
- [x] Run domestic finance sweep Kenya 2026 — 6 docs + 1 prose staged+extracted; 4 records; first data-protection line found (917.3m); thematic cut to 8.6bn
- [x] Run domestic finance sweep Senegal 2024 — DGB transport-walled: 4 documents to acquisitions w/ verified URLs; 3 prose + 1 record (numerique slice 16.1 mds) via press
- [x] Update wiki — converged in 1 iteration: IPRS contradiction closed (dual-value resolution); acquisitions 8→0 (OAG summary FY2024/25 acquired via DoH route, 7 dropped w/ dated absences); lint clean

```

## The marker is the state

The `[ ]` box at the start of each line **is** the job's state — the runner reads
and rewrites it as it goes, so an interrupted run resumes cleanly from the file
alone (same principle as `new/ → raw/`). Markers:

- `[ ]` **queued** — not yet started. This is the only marker you write.
- `[~]` **running** — CC is on this job now. At most one line ever carries this.
- `[x]` **done** — completed. CC appends ` — <one-line outcome>`.
- `[!]` **failed** — attempted, errored, logged, and **skipped so the batch
  continued** (per your rule). CC appends ` — <what failed>`. Review in the morning.
- `[stop]` **halted** — a serious/infrastructure error (e.g. lost connectivity)
  stopped the whole run here. Everything below stayed `[ ]`. CC appends the reason.

## Rules

- **Only the `## Queue` section is live.** The `[ ]` lines in the documentation
  above (the format examples) are inert — the runner never executes them.
- A `[~]` or `[stop]` found at launch is an interrupted run: the runner verifies
  the job's real state and re-marks it before starting (see `RUN-BATCH.md`).
- Blank lines and `#` comment lines are ignored — use them to group jobs.
- Add new jobs by appending `[ ]` lines; you can queue the next batch while one is
  finished but not yet cleared.
- Completed (`[x]`) and failed (`[!]`) lines are left in place as the run record.
  Clear them yourself when you've reviewed them, or tell CC to "clear finished jobs".
- The runner ends on the standing status line (see `STATUS.md`) plus a batch
  summary: jobs done / failed / not reached.

---

## Queue

<!-- Add jobs below, one per line, each starting with "- [ ] ". -->

- [x] Run domestic finance sweep Kenya 2026 — 6 docs + 1 prose staged+extracted; 4 records; first data-protection line found (917.3m); thematic cut to 8.6bn
- [x] Run domestic finance sweep Senegal 2024 — DGB transport-walled: 4 documents to acquisitions w/ verified URLs; 3 prose + 1 record (numerique slice 16.1 mds) via press
- [x] Update wiki — converged in 1 iteration: IPRS contradiction closed (dual-value resolution); acquisitions 8→0 (OAG summary FY2024/25 acquired via DoH route, 7 dropped w/ dated absences); lint clean
