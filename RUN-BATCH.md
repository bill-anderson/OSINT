# RUN-BATCH.md — the overnight batch runner

Trigger: **"run the batch"** / **"run jobs"** / **"drain the job queue"**.

Runs the jobs listed in `reviews/JOBS.md` **strictly in order, one at a time**.
This file runs no research and files nothing itself — like `UPDATE-WIKI.md`, it is
**only a loop**. Each job line is a natural-language command that CC executes
exactly as if Bill had typed it in a fresh turn; every rule governing the actual
work lives in that job's own procedure and in `CLAUDE.md` / `wiki/reference.md`.

The queue file's format, markers and editing rules are defined in `reviews/JOBS.md`
— the single source of truth for the queue; don't redefine them here.

---

## Preconditions

- **One batch run at a time, and no other CC session writing to the vault while it
  runs.** Many jobs invoke passes (ingest, reconcile, …) that need exclusive access
  to `new/`, `open/`, `acquisitions.md`; a second writer corrupts them (same
  concurrency rule as `UPDATE-WIKI.md`).
- Confirm the working tree is committed before starting, so each job's changes are
  a clean, revertible unit.

## The loop

```
read reviews/JOBS.md
for each line, top to bottom:
    skip blank lines and lines starting with '#'
    skip lines already marked [x], [!], or [stop]   # resume cleanly
    take the next [ ] line as the current job

    mark it [~] in JOBS.md and save            # the marker is the state
    announce it:  ▶ running: batch job N/T — "<the job text>"

    execute the job text as a fresh instruction, in full, to completion

    on success:      mark [x] + " — <one-line outcome>"
    on ordinary failure:  mark [!] + " — <what failed>", then CONTINUE
    on serious failure:   mark [stop] + " — <reason>", then HALT (see below)

    commit JOBS.md (and let the job's own work commit as it normally would)

when no [ ] lines remain (or halted): write the closing log entry + status line
```

**Announce every job before it runs** — one clear line naming the job and its
position, in the `STATUS.md` house style:

```
▶ running: batch job 3/7 — "Run domestic finance sweep Senegal 2026"
```

Jobs run **sequentially, never concurrently** — do not start job N+1 until job N
has fully finished and its marker is written. This is the whole point of the queue.

## Ordinary failure vs. serious failure

Per Bill's rule: **log ordinary failures and carry on; stop the whole batch on a
serious error.** The distinction is about *scope*, not severity to one job.

- **Ordinary** — the failure is contained to this job and the next job could still
  succeed: a source 404s, a PDF won't parse, a country/year has no budget document,
  a single fetch returns a `529`, a job's own precondition isn't met. Mark the line
  `[!]`, write a terse `log.md` entry, move to the next job.
- **Serious / infrastructure** — the failure means *no* job can succeed, so
  continuing would just burn the queue into a wall of `[!]`s. Mark the current line
  `[stop]`, leave everything below `[ ]`, write the log entry, and **halt**. Cases:
  - **loss of network / connectivity** (Bill's named example) — repeated connection
    errors, DNS failures, all fetches timing out;
  - **auth / credential failure** across tools (Exa key rejected, git push denied);
  - **no disk space, vault not writable, or the repo in a broken/merge state**;
  - **the same infrastructure error hitting two jobs in a row** — treat the second
    as proof it is environmental, not job-specific, and stop.

When in doubt, prefer to **stop** rather than shred the queue: a halted run is
resumable (just re-issue "run the batch" once the problem is fixed — it skips the
finished lines and picks up at the first `[ ]`); a queue full of spurious `[!]`s is
not.

## Logging

Each job writes its **own** terse `log.md` entry and status line as it always does
— the runner neither suppresses nor duplicates that. At the end, RUN-BATCH appends
**one** terse closing entry: how many jobs were done / failed / not reached,
whether it halted and why, then the standing status line (per `STATUS.md`):

`contradictions - NN ; acquisitions - NN ; awaiting ingest - NN ; decisions logged - NN`

followed by the batch tally:

`batch: N done ; N failed ; N not reached`

## After the run

Finished (`[x]`) and failed (`[!]`) lines stay in `JOBS.md` as the run record;
Bill clears them after review (or asks CC to "clear finished jobs"). A `[stop]`
run is resumed by fixing the cause and re-issuing the trigger.
