# UPDATE-WIKI.md — the update-wiki orchestrator

Trigger: **"update wiki"** / **"run update-wiki"**. Callable **manually**, or as the
step a **sweep** hands off to once it has staged candidates into `new/`.

This file runs **no research and files nothing itself**. It only invokes the
existing passes — ingest, reconcile, acquire — in a loop until the three queues
are empty, then runs the full lint. Every rule governing the actual work lives in
those passes and in `CLAUDE.md` / `wiki/reference.md`; **this file is only the
loop.**

---

## Statuses — the three counts

Read all three at the **top of each iteration** (they change as passes run). The
counts, their commands and the tally line are defined in **`STATUS.md`** — the
single source of truth; don't redefine them here. In brief: **awaiting ingest** =
candidates in `new/`; **contradictions** = files in
`reviews/contradictions/open/`; **acquisitions** = outstanding `[untried]` /
`[blocked]` items in `reviews/acquisitions.md`.

## The loop

```
repeat:
    read statuses (awaiting ingest, contradictions, acquisitions)

    if contradictions == 0 and acquisitions == 0 and awaiting ingest == 0:
        break                      # nothing left to do

    if awaiting ingest > 0:  run ingest      # INGEST.md — drain new/
      if ingest admitted any finance record:
                             run finance compile   # FINANCE-COMPILE.md — hub Financing sections
    if contradictions  > 0:  run reconcile   # RECONCILE.md
    if acquisitions    > 0:  run acquire     # ACQUIRE.md

run full lint                                 # LINT.md — all 15 checks
```

**Announce every pass before it runs** — one clear line naming the process and the
iteration, per `STATUS.md` (e.g. `▶ running: ingest — update-wiki iteration 2`), so
it is always visible which process is executing.

Order within an iteration is **ingest → reconcile → acquire**, as written: both
reconcile and acquire feed `new/`, so the *next* iteration's ingest picks up
whatever they produced.

**Finance compile is not a queue-draining pass** and has no count in the status
line — it recomputes hub Financing sections from what `raw/` already holds, and is
idempotent. It runs immediately after any ingest that admitted a finance record,
because those records are otherwise inert: admitted, but invisible on every hub
until the aggregate is recomputed.

## Why a loop — the passes feed each other

One pass routinely refills another's queue, so a single sweep of the three is not
enough:

- **ingest** drains `new/`, but can file contradictions into `open/` and add
  documents to `acquisitions.md`.
- **reconcile** drains `open/`, but can re-route items to `acquisitions.md` and
  ingest primaries into `new/`.
- **acquire** drains `acquisitions.md`, but stages every fetched document into
  `new/`.

The loop keeps going until a fresh read finds **all three empty**.

## Termination

Each pass is self-draining and anti-recurrence **by design**, so the queues
strictly shrink and the loop converges:

- **ingest** always moves every item out of `new/` (admitted to `raw/`, or deleted
  after any contradiction brief / acquisition line is filed).
- **reconcile** closes every `open/` item to `done/` — resolved, or marked
  unresolved after its **second** attempt (it never carries an item a third
  time).
- **acquire** resolves every item in **one** attempt — ingest-and-strike, or
  drop.

**Safety stop (not in the original spec — added here):** cap at **10** full
iterations. If reached, exit to the lint and **flag it in `log.md`** rather than
spinning — a run that hits the cap means a pass is failing to drain (e.g.
repeated `529`s, or a re-route cycle) and wants a human look, not another lap.

A pass that errors out mid-run leaves its queue non-empty, so the loop simply
retries it next iteration; a *persistent* failure is what the cap catches.

## Concurrency

**One update-wiki run at a time, and no other CC session writing to the vault
while it runs.** The passes it calls each need exclusive access to their shared
worklists (`new/`, `open/`, `acquisitions.md`); a second writer corrupts them.

## Logging

Each pass writes its **own** terse `log.md` entry and status line as it always
does — update-wiki neither suppresses nor duplicates that. At the end, update-wiki
appends **one** terse closing entry: iterations run, which passes fired, whether
the cap was hit, then the standing status line — which on a clean run reads zero
across the three queues:

`contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - NN`

## Running it — two entry points

- **Manually:** `update wiki`.
- **From a sweep:** the daily trade-journal sweep (`DAILY-SWEEP.md`) stages
  candidates flat into `new/`, then hands off to update-wiki, which processes them
  through ingest and drains any contradictions / acquisitions they surface.
