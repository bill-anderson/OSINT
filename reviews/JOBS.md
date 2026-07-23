# JOBS.md — the batch queue

The list of jobs for an overnight run. **You edit this file; CC drains it** with
`RUN-BATCH.md` ("run the batch"). One job per line. CC runs them **strictly
top-to-bottom, one at a time** — never two at once.

Each line is a natural-language command, exactly as you would type it into a fresh
CC turn. The runner does not know what the jobs mean; it just executes each line
in order. So anything CC can do from a single instruction is a valid job.

**Jobs go only in the `## Queue` section at the bottom of this file — that is the
only live section.** Everything above it is documentation; the runner never
executes it. The only thing you edit up top is the **Control** block (below), and
only if you want a time budget or a manual stop.

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
Mode: one-off
Budget: 8h
Stop: no
```

`Mode: one-off` — on completion the runner archives the run and **empties** this
queue (see `RUN-BATCH.md` → *After the run*). The standing counterpart is
`reviews/weekly_jobs.md` (`Mode: standing`), re-armed rather than emptied.

Both `Budget:`/`Stop:` leave the unreached jobs `[ ]`, so the run resumes on the next "run the batch".

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
- Add new jobs by appending `[ ]` lines.
- **On a fully-completed run, the runner archives and clears for you.** When the
  queue is fully drained (no `[ ]` left), it copies the run record to
  `reviews/jobs-archive/jobs-YYYY-MM-DD-HHMM.md` and empties the `## Queue` here,
  so you always start the next batch from a clean queue. An early-stop or `[stop]`
  halt does **not** archive/clear — the unreached `[ ]` lines stay for resume.
- The runner ends on the standing status line (see `STATUS.md`) plus a batch
  summary: jobs done / failed / not reached.

---

## Queue

<!-- Add jobs below, one per line, each starting with "- [ ] ". -->

- [x] Run domestic finance sweep for AGO 2024 — 2 budget docs staged (outturn + fundamentação), 3 acquisitions, 0 records; full estimates volume not obtained; budget-extract deferred to checkpoint
- [x] Run domestic finance sweep for AGO 2025 — 2 budget docs staged (IV-Trim 2025 outturn + Fundamentação), 3 prose (DP 169/25 ID USD 218.5M; OGE-2025 226bn digital sector; PAC actualização), 5 acquisitions, 1 contradiction (Angosat-3 278bn superseded); full estimates volume not obtained; budget-extract deferred to checkpoint
- [~] Run domestic finance sweep for AGO 2026
- [ ] Update wiki
- [ ] Run domestic finance sweep for BDI 2024
- [ ] Run domestic finance sweep for BDI 2025
- [ ] Run domestic finance sweep for BDI 2026
- [ ] Update wiki
- [ ] Run domestic finance sweep for BEN 2024
- [ ] Run domestic finance sweep for BEN 2025
- [ ] Run domestic finance sweep for BEN 2026
- [ ] Update wiki
- [ ] Run domestic finance sweep for BFA 2024
- [ ] Run domestic finance sweep for BFA 2025
- [ ] Run domestic finance sweep for BFA 2026
- [ ] Update wiki
- [ ] Run domestic finance sweep for BWA 2024
- [ ] Run domestic finance sweep for BWA 2025
- [ ] Run domestic finance sweep for BWA 2026
- [ ] Update wiki
- [ ] Run domestic finance sweep for CAF 2024
- [ ] Run domestic finance sweep for CAF 2025
- [ ] Run domestic finance sweep for CAF 2026
- [ ] Update wiki
- [ ] Run domestic finance sweep for CIV 2024
- [ ] Run domestic finance sweep for CIV 2025
- [ ] Run domestic finance sweep for CIV 2026
- [ ] Update wiki
- [ ] Run domestic finance sweep for CMR 2024
- [ ] Run domestic finance sweep for CMR 2025
- [ ] Run domestic finance sweep for CMR 2026
- [ ] Update wiki
- [ ] Run domestic finance sweep for COD 2024
- [ ] Run domestic finance sweep for COD 2025
- [ ] Run domestic finance sweep for COD 2026
- [ ] Update wiki
- [ ] Run domestic finance sweep for COG 2024
- [ ] Run domestic finance sweep for COG 2025
- [ ] Run domestic finance sweep for COG 2026
- [ ] Update wiki
- [ ] Run domestic finance sweep for COM 2024
- [ ] Run domestic finance sweep for COM 2025
- [ ] Run domestic finance sweep for COM 2026
- [ ] Update wiki
- [ ] Run domestic finance sweep for CPV 2024
- [ ] Run domestic finance sweep for CPV 2025
- [ ] Run domestic finance sweep for CPV 2026
- [ ] Update wiki
- [ ] Run domestic finance sweep for DJI 2024
- [ ] Run domestic finance sweep for DJI 2025
- [ ] Run domestic finance sweep for DJI 2026
- [ ] Update wiki
- [ ] Run domestic finance sweep for DZA 2024
- [ ] Run domestic finance sweep for DZA 2025
- [ ] Run domestic finance sweep for DZA 2026
- [ ] Update wiki
- [ ] Run domestic finance sweep for EGY 2024
- [ ] Run domestic finance sweep for EGY 2025
- [ ] Run domestic finance sweep for EGY 2026
- [ ] Update wiki
- [ ] Run domestic finance sweep for ERI 2024
- [ ] Run domestic finance sweep for ERI 2025
- [ ] Run domestic finance sweep for ERI 2026
- [ ] Update wiki
- [ ] Run domestic finance sweep for ETH 2024
- [ ] Run domestic finance sweep for ETH 2025
- [ ] Run domestic finance sweep for ETH 2026
- [ ] Update wiki


