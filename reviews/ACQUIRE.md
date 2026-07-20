# ACQUIRE.md — the acquisition pass

Trigger: **"run acquisitions"**. No selection. The pass takes **every item in
`reviews/acquisitions.md`**. One automated attempt each, then the item is
resolved one way or the other — nothing is carried for a human loop.

Governing rules: `CLAUDE.md` (admissibility, currency) and `wiki/reference.md`
(filing, schemas). This file is only the loop.

---

## The loop

For each item in `acquisitions.md`:

1. **Attempt the fetch — once, properly.** In order of what the item needs:
   - a direct document URL (government PDF, gazette, project document) → fetch it;
   - a normal page → Exa fetch (`web_fetch_exa`);
   - `[blocked — JS shell]` (a JavaScript data explorer) → Chrome MCP, which
     renders the page.
   One real attempt. Do **not** loop, retry variants, or hunt for mirrors.

2. **Got it → ingest.** Stage the document in `new/` as a normal clip — full
   verbatim body, date-prefixed filename, proper frontmatter — and let the
   normal ingest file it to `raw/`. Then **strike the line** from
   `acquisitions.md`.

3. **Couldn't get it → drop it.** Anything the one attempt cannot retrieve —
   paywall, cookie wall, 403, bot-block, subscriber-only, anything that would
   need a hand-clip — is **deleted from `acquisitions.md`, not parked.** Where the
   item bears on a specific page, add **one dated line** to that page recording
   the document is not held (e.g. "Gazetted text not held as of 2026-07-20").
   Where it maps to no page cleanly, just delete and log the drop. No manual
   queue, ever.

There is no third state. After the pass, `acquisitions.md` holds only its header.

## Why dropping is correct

A document that only a hand-clip can get costs more human time than the figure is
worth. On balance the wiki is better served by a stated dated absence than by a
standing chore. Bill analyses the data; he does not manage the queue.

## Ending the pass

Append **one terse entry** to `wiki/log.md` (a few lines): counts acquired /
dropped (with reason class), pages that gained a dated not-held line. Then:

`contradictions - NN ; acquisitions - NN ; decisions logged - NN`

`acquisitions - 00` is the expected end state.

## Concurrency

One pass at a time, and no other CC session writing to the vault while it runs.