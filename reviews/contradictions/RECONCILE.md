# RECONCILE.md — the reconcile pass

Trigger: **"run reconcile"**. No argument, no selection, no scoping question.
The pass takes **every item in `open/`**. If CC finds itself asking which items
to do, the answer is all of them.

Rules governing the work are in `CLAUDE.md` (currency, admissibility, duplicates)
and `wiki/reference.md` (schemas, filing, lint). This file is only the loop.

---

## The loop

For each file in `open/`:

1. **Read the brief.** It states the claim, each competing value, who asserts
   each, and the source URLs the wiki already holds. Take the question from the
   brief, not from the wiki page — the brief is deliberately wiki-agnostic.

2. **Research it externally.** Exa by default (`web_search_exa` /
   `web_fetch_exa`). Seek the **primary**: the gazette, the regulator's bulletin,
   the filing, the court record, the statistical release. Secondary reporting
   settles nothing that a primary can settle.

3. **Ingest what you find.** Primaries go through `new/` and are filed as normal
   sources — full verbatim body, date-prefixed filename, proper frontmatter.
   **Research notes and search output are not sources**: they go to `research/`
   and are never ingested. The page fix cites the primary, never the synthesis.

4. **Apply the resolution** to every affected page. Prefer the newest value.
   Write the resolved figure dated, and keep at most one dated prior where the
   trajectory means something. Clear `needs-review`.

5. **Close it.** Move the file to `done/` with the resolution and its date
   recorded in it. Moving the file is the **last** step, so an interrupted pass
   resumes cleanly — whatever is still in `open/` is still open.

## When an item won't close

Do not carry it a third time. On the **second** failed attempt:

- Write the position onto the page it bears on — dated, and honest about what is
  not established. A known vacuum is a finding, not a silence.
- Move the file to `done/`, marked unresolved, with what was tried.

Record the attempt count in the brief so the next pass knows which attempt it is.

## Re-routing

An item that turns out to be a **specific document the wiki simply doesn't hold**
is not a contradiction. Strike it from `open/` and add it to
`reviews/acquisitions.md` — a fetch list, worked by the sweep or a hand-clip,
never by reconcile.

## Discipline

**Cite only links you actually hold.** Never offer a source from your own
knowledge as though the wiki held it. Where nothing is on file, say so — that
absence is the finding, and for many of these briefs it is the whole finding.

**Never overwrite silently.** If the research produces a *third* value rather
than settling the two, that is a live contradiction: record it, don't pick.

## Ending the pass

Append one entry to `wiki/log.md`: items researched, resolved, re-routed to
acquisitions, closed unresolved; primaries ingested; anything that looks shaky.
Then the tally:

`contradictions - NN ; acquisitions - NN ; decisions logged - NN`

## Concurrency

One reconcile pass at a time, and no other CC session writing to the vault while
it runs. `open/` is a shared worklist and a second writer corrupts it.
