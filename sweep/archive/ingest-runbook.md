# Phase-2 batch ingest — runbook

**Ratified 2026-07-17 (curator directive).** This is the runnable procedure for
draining the Phase-2 sweep backlog: the ~54 country folders of staged candidates
in `new-queue/`, batch-promoted and ingested **one folder at a time**. It is the
downstream twin of `sweep/README.md` — the sweep fills `new-queue/`; this
runbook empties it into the wiki through the standard `new/ → raw/` door.

**Authorisation — one-off promote-all.** The standing review gate
(`sweep/README.md` → *Human review gate*: the curator skims manifests and
promotes items himself) is **waived for this backlog only**, by explicit curator
directive of 2026-07-17. Under this runbook CC promotes every staged candidate
without a per-item skim; the ingest admissibility screen is the filter, and the
`done/` copies preserve the review trail. The standing rule in `sweep/README.md`
is **unchanged** for future sweep output, and this runbook runs **only when the
curator explicitly invokes it** — never on CC's own initiative.

## State model — resumable by construction

A folder's location *is* its state, exactly like the ingest queue itself:

| State | On disk |
|---|---|
| pending | `new-queue/{ISO3}/` exists (with `MANIFEST.md`) |
| in flight | `new-queue/done/{ISO3}/` exists **and** `new-queue/{ISO3}/` still exists, and/or items sit in `new/` |
| processed | folder present in `new-queue/done/` only |

No ledger is kept for ingest — `sweep/ledger.csv` tracks *sweeping* and is not
touched here (one-writer discipline; ledger stays sweep-scoped). "What's left"
is always just `ls new-queue/`.

**Interruption recovery (do this first, every session).** Items in `new/` are
unfinished ingests (lint #10): finish ingesting them before claiming anything.
A folder present in both `new-queue/{ISO3}/` and `done/{ISO3}/` has an
incomplete teardown: verify its items are ingested (or still in `new/`), then
complete steps 5–7 below. Only then claim the next folder.

## Folder selection

1. List `new-queue/` top-level folders, excluding `done/`, `needs-clip/` and
   `_to_delete/`.
2. **Skip** any country whose `sweep/ledger.csv` row is `in-progress` — a sweep
   may still be writing to that folder. (Rows marked `swept` / `pilot-staged`
   are fair game; the pilot trio's later completion passes will simply restage
   new candidates into a fresh `new-queue/{ISO3}/`, which becomes a new pending
   folder — re-processing it later merges its copies into the existing
   `done/{ISO3}/`.)
3. Claim the folder with the **fewest candidate files** (count `*.md` excluding
   `MANIFEST.md`) — smallest first, so each session clears the most countries
   and the big markets get dedicated sessions. `XAF` (the regional pass) is an
   ordinary folder in this ordering; expect region-level tagging.

## Per-folder loop

For the claimed folder `{ISO3}`, strictly in this order:

1. **Copy to done.** Copy the entire folder — candidates *and* `MANIFEST.md` —
   to `new-queue/done/{ISO3}/`. This is the backup and the review trail; it
   happens **before** anything is moved, so a botched run always leaves a
   pristine copy. On a re-run (completion-pass folders), merge into the
   existing `done/{ISO3}/`; a filename collision is the same item — skip it.
2. **Screen for flagged summaries.** Any candidate whose body is a
   **flagged summary** (fetch failed at sweep time; see `sweep/README.md`
   step 5 and ISSUE-008) is *not* promotable — a summary body is inadmissible
   as source text. Move these to `new-queue/needs-clip/{ISO3}/` and count them
   in the wrap-up; the curator clips them manually and re-promotes by hand.
3. **Promote.** Move every remaining candidate file (never `MANIFEST.md`) from
   `new-queue/{ISO3}/` into `new/`.
4. **Ingest — standard rules, unchanged.** Drain `new/` per `CLAUDE.md` →
   *Filing rules* 1–11 in full: admissibility screen, the complete dedup ladder
   (sweep-time dedup was deliberately conservative — expect and adjudicate
   same-event/other-outlet and update cases here), source pages, entity/place/
   concept/intersection updates, contradiction and gap flagging to the
   registers (never blocking), indexes, `log.md`. Sweep-specific notes:
   - **Verify, don't re-derive.** Staged frontmatter (places, topics, entities,
     `published`, precision/provenance flags) is best-effort: check it against
     the full-text body and correct where wrong, rather than re-tagging from
     scratch.
   - Keep `retrieved:` and `sweep_batch:` as provenance; add `ingested:` as
     usual. The date prefix is already in place — confirm it matches
     `published`.
   - **Chunk large folders.** Work in chunks of ~20–25 items, updating hubs and
     indexes per chunk rather than per item (mechanically equivalent, far
     cheaper), with a git commit per chunk. The 124-item AGO ingest
     (2026-07-17) is the working precedent.
5. **Verify drained.** `new/` must be empty (stranded items = unfinished — go
   back to step 4). Spot-check that admitted counts + parked leads + discards +
   needs-clip = the folder's candidate count, and say so in the wrap-up.
6. **Teardown.** Delete `new-queue/{ISO3}/` (by now just `MANIFEST.md` and any
   husk). If the environment refuses deletion (mounted-folder restriction),
   move it to `new-queue/_to_delete/{ISO3}/` instead and note it in the
   wrap-up for the curator to purge.
7. **Commit.** Git commit the folder's completion —
   `ingest({ISO3}): NN admitted, N leads, N discards, N needs-clip` — on top of
   the per-chunk commits. Then claim the next folder (back to *Folder
   selection*).

## Execution model — the overnight loop

*(Amended 2026-07-17, curator directive: the drain must run unattended
overnight, not stop when a session's budget runs low.)*

Ingest is the heaviest operation in the system — each folder spends synthesis
fan-out on entities, hubs and intersections — so no single session can drain
the whole backlog. The overnight model inverts the problem: **each CC
invocation processes exactly one folder, and an outer driver script re-invokes
CC until the queue is empty.** A fresh session per folder sidesteps every
context and subagent ceiling, and the folder-state model above is what makes
blind re-invocation safe.

- **Driver:** `sweep/run-overnight.ps1`. Loop: while pending folders remain in
  `new-queue/`, invoke headless CC (`claude -p`) with the single-folder prompt
  below; log each iteration; stop on queue-empty, on repeated failures, or on
  no-progress (three iterations without the pending set shrinking — a stuck
  folder needs eyes, not retries).
- **One folder per invocation, strictly.** The session does interruption
  recovery, claims the smallest pending folder, runs the full per-folder loop
  including teardown and the completion commit, reports, and **exits**. It
  never claims a second folder — the driver handles continuation.
- **Big folders may take more than one invocation.** A CIV/NGA-scale folder
  that can't finish in one session exits cleanly mid-folder; the next
  iteration's interruption recovery picks it up where it stopped. This is
  expected behaviour, not failure — per-chunk git commits mean nothing is lost.
- **Permissions:** an unattended run cannot stop to approve tool calls — run
  with a pre-approved allowlist in `.claude/settings.json` or
  `--dangerously-skip-permissions` (acceptable here: the repo is git-tracked
  and Dropbox-versioned, and the run touches only this vault).
- Field lessons still bind: **never run sweeping and batch ingest in the same
  session**, and no per-source micro-agents — synthesis fan-out only.

## Wrap-up — every session

Report, per folder processed: candidates in → admitted / leads / discards /
needs-clip, entities created/updated, contradictions and gaps filed. Aggregate
mechanical counts (moves, renames). End with the standing status line
(`issues - NN ; contradictions - NN ; gaps - NN`), as always.

## Standing prompts

**Overnight (the normal mode)** — start the driver and walk away:

```powershell
powershell -ExecutionPolicy Bypass -File sweep\run-overnight.ps1
```

**Single-folder prompt** (what the driver passes to each `claude -p`
invocation; also usable interactively for a one-folder run):

> Run the Phase-2 batch ingest per `sweep/ingest-runbook.md`: interruption
> recovery first, then claim and fully process exactly ONE folder (smallest
> candidate count first), complete its teardown and git commit, then report
> and exit. Never claim a second folder.
