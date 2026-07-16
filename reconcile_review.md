# reconcile_review.md — the review-reconciliation pass

**Operator command.** Run only when the human asks (e.g. "run the reconcile
pass"). Not scheduled, not part of ingest. This pass **fixes the wiki** — it is
the review counterpart to "Run the queries in `queries/pending/`", and it is
wholly separate from `queries/`, which only *reads* the base. Nothing flows
between the two.

## What it operates on

Exactly the files in `reviews/contradictions/open/` — one contradiction per
file. It **never works the human-decision registers (`reviews/gaps.md`,
`reviews/issues.md`) as worklists**: the gaps and issues already there are the
human's to decide, out of scope by construction, not by remembering. (It *may
append* a gap or issue it newly surfaces while reconciling — surfacing one is not
working it; see Failure modes.) If `open/` is empty, report "no contradictions
outstanding" and stop.

## The boundary (do not weaken)

External research is a **synthesis**, and a synthesis is **never a source**
(CLAUDE.md → Source admissibility). This pass therefore:

- writes its raw research into `reviews/contradictions/research/` marked
  do-not-ingest, and treats it as a **lead**, exactly as `_leads/` material is
  treated;
- extracts the **primary** sources that research points to and drops those clips
  into `new/`, so they enter through the normal intake screen and become
  properly-dated, properly-provenanced `raw/` sources;
- fixes the affected wiki pages **citing those primaries**, never the research
  synthesis;
- **never writes to `raw/` directly**, and never cites `research/` from a wiki
  page.

Lint #6 (inadmissible sources) is the structural backstop if anything leaks.

## Per-item procedure

For each file in `reviews/contradictions/open/`:

1. **Read** the brief.
2. **Research** it with Exa — search, then fetch the primaries the search
   surfaces. Follow the brief's own instruction (investigate the discrepancy;
   record an as-of date for each competing value).
3. **Quarantine** the raw output to `reviews/contradictions/research/<id>.md`,
   stamped `generated:` and marked do-not-ingest. This file is a snapshot, not a
   store of record — the same standing as a `queries/results/` file.
4. **Extract primaries** → clips into `new/` for normal ingest. Let the ingest
   pipeline date, screen and file them; do not shortcut it.
5. **Resolve** the affected wiki pages: clear `needs-review`, write the dated
   "as of" resolution, and cite the newly-ingested primaries inline on the claim
   they support. If the research is **inconclusive**, do not force a resolution
   — see Failure modes.
6. **Log**: append a resolution line to `log.md` (what it was, how resolved,
   which primaries it now rests on).
7. **Last step:** move the file from `open/` to `done/`.

Because the file's folder is its state, an interrupted pass leaves exactly the
unfinished contradictions in `open/`; re-running resumes cleanly with no diffing
— the same guarantee that makes `new/` reliable.

## Autonomy

A reconcile resolution is **provisional and reversible**: a tier-2 action
("auto, then digest") under CLAUDE.md → Autonomy and review, not a tier-3 hold.
Every resolved item is itemised in the weekly digest for the human's sweep and
spot-check. The human ratifies on their own schedule; nothing here blocks.

Anything the pass can't settle — a gap, an issue, an inconclusive contradiction —
is **parked in its register and reported in the wrap-up, never asked at the
prompt.** The wrap-up's **last line** is the standing status line (CLAUDE.md →
Autonomy and review): `issues - NN ; contradictions - NN ; gaps - NN`.

## Failure modes

- **Inconclusive research** — the sources still don't reconcile, or the
  primaries aren't findable. Do **not** invent a resolution. Update the brief in
  place with what was checked and why it remains open, leave the file in `open/`,
  and note it in the digest under Flags. An honest "still open" beats a
  manufactured answer.
- **New contradiction surfaced** — if research turns up a *fresh* conflict,
  create a new `open/` file for it rather than folding it silently into this one.
- **A gap surfaces while reconciling** — e.g. the resolution leaves a body
  referenced-but-unhubbed. **Append** it to `reviews/gaps.md` as a lead (an ID +
  a `*Lead:*` line), exactly as ingest step 8 files a gap — a tier-3 hold the
  human still decides on. Surfacing it is in scope; **sourcing it or creating the
  page is not.** Note the new gap in the digest.
- **A judgment call surfaces that the rules don't settle** — e.g. an
  admissibility question about a primary, or an uncertain classification.
  **Append** it to `reviews/issues.md` with a **recommended** resolution and
  carry on; never stop to ask at the prompt.

## What this pass must never do

- Work the human-decision registers (`reviews/gaps.md`, `reviews/issues.md`) as
  worklists, or action / source / create a page from any gap, or resolve any
  issue — existing or freshly surfaced. (It *may append* a newly-surfaced gap or
  issue as a lead; see Failure modes.)
- Write to `raw/`, or cite `reviews/contradictions/research/` from a wiki page.
- Ingest a research synthesis as a source.
- Edit `CLAUDE.md` — schema changes are ratified separately (invariant).
