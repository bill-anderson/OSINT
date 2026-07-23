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
read reviews/JOBS.md  →  note the start time and the Budget: value (if any)

# --- launch checks ---
# Job lines are read from the "## Queue" section ONLY. The [ ] lines in the
# documentation above it (the format examples) are inert — never execute them.
# A leftover [~] at launch means a previous run was interrupted mid-job:
# verify that job's actual state from log.md and git, then re-mark it
# [x] — <outcome> if it in fact completed, or [ ] to retry it. Never start
# the loop with a [~] still standing.
# A leftover [stop] whose cause is now fixed: re-mark it [ ] — it halted on
# the environment, not on its merits, and must be retried, not skipped.

for each line in the ## Queue section, top to bottom:
    skip blank lines and lines starting with '#'
    skip lines already marked [x], [!], or [stop]   # resume cleanly
    take the next [ ] line as the current job

    # --- between-jobs stop checks (re-read the Control block each time) ---
    if Stop: is "after current"            → early-stop  ("manual")
    if Budget set and elapsed ≥ Budget     → early-stop  ("N-hour budget reached")
    # both leave this and all following lines [ ]; nothing in flight is cut off

    mark it [~] in JOBS.md and save            # the marker is the state
    announce it:  ▶ running: batch job N/T — "<the job text>"

    execute the job text as a fresh instruction, in full, to completion

    on success:      mark [x] + " — <one-line outcome>"
    on ordinary failure:  mark [!] + " — <what failed>", then CONTINUE
    on serious failure:   mark [stop] + " — <reason>", then HALT (see below)

    commit JOBS.md (and let the job's own work commit as it normally would)

when no [ ] lines remain (or halted, or early-stop): write closing log + status line
```

**Re-read the Control block from `JOBS.md` on every iteration**, not just at
launch — the whole point of the manual brake is that Bill edits `Stop:` *while the
batch is running*, and CC only sees it by re-reading. The `Budget:` value is fixed
at launch; only the elapsed-time comparison changes.

**Announce every job before it runs** — one clear line naming the job and its
position, in the `STATUS.md` house style:

```
▶ running: batch job 3/7 — "Run domestic finance sweep Senegal 2026"
```

Jobs run **sequentially, never concurrently** — do not start job N+1 until job N
has fully finished and its marker is written. This is the whole point of the queue.

## Stopping early — the graceful brake (manual or time budget)

Two controls in `JOBS.md` end the run **cleanly**, distinct from a failure halt.
Both are checked **between jobs only**, so the job in flight always runs to
completion first (exactly as Bill specified — "finish the job you are running, then
stop"):

- **Manual** — Bill sets `Stop: after current` in `JOBS.md` while the batch runs.
  At the next between-jobs check CC finishes the current job, does not start the
  next, and stops. (If Bill instead types the request into chat, honour it at the
  next between-jobs check the same way — but the file flag is the reliable channel,
  since a running batch may not see chat until it next pauses.)
- **Time budget** — `Budget: <N>h` caps the whole run. CC records the start time
  and, before starting each new job, checks elapsed time; once elapsed ≥ N hours it
  finishes nothing new and stops. A job that itself overruns the budget is never
  interrupted — the check is between jobs, so at most one job runs past the deadline.

A graceful stop is **not** a failure: the completed job is `[x]`, everything below
stays `[ ]`, and the run is resumed simply by re-issuing "run the batch" (clear or
reset `Stop:` first). Record it in the closing log entry as an early stop with its
reason (`manual` / `N-hour budget`) and how many jobs were not reached. Do **not**
use the `[stop]` marker for this — that marker is reserved for serious-error halts.

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
**one** terse closing entry: how many jobs were done / failed / not reached, and
how the run ended — `completed`, `early stop (manual)`, `early stop (N-hour
budget)`, or `halted (<serious reason>)` — then the standing status line (per
`STATUS.md`):

`contradictions - NN ; acquisitions - NN ; awaiting ingest - NN ; decisions logged - NN`

followed by the batch tally:

`batch: N done ; N failed ; N not reached`

## After the run

Finished (`[x]`) and failed (`[!]`) lines stay in `JOBS.md` as the run record;
Bill clears them after review (or asks CC to "clear finished jobs"). A `[stop]`
run is resumed by fixing the cause, **re-marking the `[stop]` line `[ ]`** (it
halted on the environment, not on its merits — the launch check does this if
forgotten), and re-issuing the trigger.
