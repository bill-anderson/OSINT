# JOBS.md — the batch queue

The list of jobs for an overnight run. **You edit this file; CC drains it** with
`RUN-BATCH.md` ("run the batch"). One job per line. CC runs them **strictly
top-to-bottom, one at a time** — never two at once.

Each line is a natural-language command, exactly as you would type it into a fresh
CC turn. The runner does not know what the jobs mean; it just executes each line
in order. So anything CC can do from a single instruction is a valid job:

```
- [ ] Run domestic finance sweep Senegal 2024
- [ ] Run domestic finance sweep Senegal 2025
- [ ] Run domestic finance sweep Senegal 2026
- [ ] Update wiki
- [ ] Run domestic finance sweep Benin 2024
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
