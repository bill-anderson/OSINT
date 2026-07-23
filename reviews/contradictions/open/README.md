# reviews/contradictions/open/ — the live worklist

**Everything in this folder is live work.** The reconcile pass researches each item,
ingests the primaries it finds, applies a resolution to the affected pages, and moves
the file to `done/`.

*(This file previously described a `queued/` staging area that no longer exists. Its
43 briefs were promoted here on 2026-07-20 and the folder was removed. Nothing in
`open/` is staged or dormant.)*

## Two shapes of item live here

- **Disputes** — two or more sourced values disagree. Establish which is right, or
  record why both stand, with a date on each.
- **Provenance hunts** — the wiki holds or asserts a claim with no dated primary
  behind it, or a status it cannot confirm. Migrated from the former `gaps.md`.
  For most of these the wiki holds **no source URL at all**, only the second-hand
  mention that introduced the claim; each brief says so where that is the case.

## Working them

**Run the whole folder.** A reconcile pass takes every item in `open/`, not a
selection — choosing a subset is a manual decision that buys nothing and stalls
the queue. Procedure: `RECONCILE.md` (in the repo root).

An item that cannot be closed after **two** reconcile attempts is not carried a third
time: state the position on the page it bears on, dated and honest about what isn't
established, and move the file to `done/`. An unanswerable question is a horizon, not
a backlog.

If the answer turns out to be a specific document the wiki simply doesn't hold, it is
not a contradiction — move it to `reviews/acquisitions.md` and fetch it.
