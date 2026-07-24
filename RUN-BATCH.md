# RUN-BATCH.md — the overnight batch runner

Trigger: **"run the batch"** / **"run jobs"** / **"drain the job queue"** →
`reviews/JOBS.md` (the default). **"run weekly jobs"** / **"run the weekly batch"**
→ `reviews/weekly_jobs.md`. Any future batch file works the same way — this file is
**target-agnostic**; it drains whichever batch file the trigger names.

Runs the jobs in the target batch file **strictly in order, one at a time**. This
file runs no research and files nothing itself — like `UPDATE-WIKI.md`, it is
**only a loop**. Each job line is a natural-language command that CC executes
exactly as if Bill had typed it in a fresh turn; every rule governing the actual
work lives in that job's own procedure and in `CLAUDE.md` / `wiki/reference.md`.

The batch file's format, markers and editing rules are defined in `reviews/JOBS.md`
— the single source of truth for the queue; don't redefine them here. Every batch
file shares that format and declares a **`Mode:`** in its Control block —
`one-off` (archive then empty the queue, e.g. `JOBS.md`) or `standing` (archive
then re-arm for reuse, e.g. `weekly_jobs.md`). See *After the run*.

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

    mark it [~] and commit  (batch: start job N -- <desc>)   # the marker is the state
    announce it:  ▶ running: batch job N/T — "<the job text>"

    execute the job text as a fresh instruction, in full, to completion

    on success:      mark [x] + " — <one-line outcome>"
    on ordinary failure:  mark [!] + " — <what failed>", then CONTINUE
    on serious failure:   mark [stop] + " — <reason>", then HALT (see below)

    commit the job's work + the [x]/[!]/[stop] marker TOGETHER  (batch: done job N [x|!|stop] -- <outcome>)
    # tree must be clean here — start/done commits pair up (scripts/verify-job-commits.py)

when no [ ] lines remain:     write closing log + status; ARCHIVE, then CLEAR (one-off) or RE-ARM (standing)
when halted or early-stopped:  write closing log + status; leave JOBS.md as-is
                               (unreached [ ] lines stay for resume — do NOT archive/clear)
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

## After the run — archive, then clear or re-arm (by `Mode`)

**On a fully-completed run** (every queued job terminal — `[x]` or `[!]` — with no
`[ ]` left), the runner first **archives the run record**, then acts on the batch
file's `Mode:`.

1. **Archive** — copy the run record to
   **`reviews/jobs-archive/<filestem>-YYYY-MM-DD-HHMM.md`** (e.g. `jobs-…` or
   `weekly_jobs-…`), the date + time the batch finished (no colon in the filename;
   it is illegal on Windows). The archive holds: a dated heading, the `Control`
   values used, the completed job lines with their `[x]`/`[!]` outcomes, and the
   batch tally.
2. **Then, by `Mode:`**
   - **`one-off`** (e.g. `JOBS.md`) — **empty** the `## Queue` back to its
     placeholder comment, so the next batch starts clean.
   - **`standing`** (e.g. `weekly_jobs.md`) — **re-arm**: reset every job line to
     `[ ]` (strip the outcome text), keeping the jobs, so the list is ready to run
     again next week. Do **not** empty it.
   - Either way, reset `Stop:` to `no` (leave `Budget:` and `Mode:` as set).
   Everything above the Queue (the docs and Control block) is otherwise untouched.

**A halted (`[stop]`) or early-stopped run does NOT archive, clear or re-arm** — its
unreached `[ ]` lines must stay in the file so the run resumes. Resume it by fixing
the cause, **re-marking any `[stop]` line `[ ]`** (it halted on the environment, not
on its merits — the launch check does this if forgotten), and re-issuing the
trigger. It archives and clears/re-arms only once it finally completes with an empty
queue.

## Two ways to run: inline vs the headless driver

**Inline** — CC works the whole loop itself in one session. Fine for a handful of
light jobs. But a large batch of *heavy* jobs (many domain-scoped Exa passes, PDF
downloads, extraction) exhausts a single session's context long before the wall-clock
`Budget:` bites, forcing repeated compaction. Inline is context-bound, not time-bound.

**Headless driver** — `run-overnight.ps1` in the repo root. Use this for large or
heavy batches. It is a thin outer loop that spawns a **fresh headless `claude` session
per job**, so every job starts with clean context and only wall-clock time accumulates
— which is exactly what the `Budget:` cap was designed for. Each session does **one
job and exits**; the driver re-invokes until the queue is drained, then finalises.

### Single-job (headless) contract

When invoked by the driver, a session does **exactly one job**, per the marker-is-state
rule:

1. **Resolve any leftover `[~]`** first — a `[~]` at start means a prior session
   crashed mid-job. Establish its true state from git/`log.md` and re-mark it
   (`[x]`/`[!]` if it in fact finished, else `[ ]` to retry).
2. Take the **first `[ ]`** in `## Queue`. Mark it `[~]` and commit **the marker
   alone**, message `batch: start job <N> -- <short job desc>` (`<N>` = the job's
   1-based position among the `## Queue` job lines).
3. Run the job text to completion, following the repo's procedures.
4. Mark it `[x] — <outcome>` (or `[!]` ordinary failure / `[stop]` serious), and
   commit **all of the job's work together with that marker**, message
   `batch: done job <N> [x|!|stop] -- <one-line outcome>`. **The working tree MUST be
   clean when you stop** — everything the job produced is in this commit; nothing is
   left staged or dirty.
5. **Stop — never start a second job**, and do not run the end-of-run archive/clear
   (the driver calls a final session for that once the queue is empty).

### Commit-per-job — verifiable pairing

The two commits above are a **pair**: `start job <N>` then `done job <N>`. In commit
order they must **alternate** — every start is closed by a done before the next start.
An unclosed start is a job that began and never finished (a crash or the runner's
timeout-kill), and it is the one thing that must never pass silently. Verify it:

```
python scripts/verify-job-commits.py --since <ref-at-drain-start>
```

Exit 0 = every start paired and the tree clean; exit 1 lists any unfinished job or
uncommitted leftover. The headless driver enforces the clean-tree half at runtime:
if a session leaves the tree dirty, the driver **auto-commits the leftovers with a
`REVIEW` flag** so the next job starts clean and nothing is lost.

The driver owns the outer loop and, **between jobs**, the `Stop:`/`Budget:` checks and
serious-failure halt (two no-progress sessions in a row → stop and leave state for
resume).

### Before a big drain: confirm the Exa MCP

The finance sweeps depend on the **`claude_ai_Exa` web-search MCP**, which is
claude.ai-authenticated and **may be absent in a headless `claude -p` run** (as the
ingest runbook warns of interactively-authenticated servers). Without it, jobs would
fall back to built-in WebSearch/WebFetch — weaker on Francophone/Lusophone budget
portals. So a session that finds Exa **unavailable marks the job `[stop]` ("Exa MCP
absent")** rather than silently producing degraded captures, which halts the batch for
a human look. **Always test one job first** (`run-overnight.ps1 -MaxJobs 1`) and check
it actually used Exa before launching the full drain.
