# reviews/acquisitions.md — the acquisition queue (documents to fetch)

A **shopping list**, not a research register. Every item is a *specific, known,
identified document* the wiki wants and does not hold — a gazetted Act, a
regulator's bulletin, a project appraisal document, a PDF behind a 403 or a
cookie wall. Nothing here needs investigating; it needs **fetching**.

Worked by the **acquisition pass** (`run acquisitions`, procedure in
`reviews/ACQUIRE.md`), never by reconcile — sending a download through an Exa
research pass wastes it. The pass takes the whole list, one automated attempt
each. What comes back is ingested via `new/` and its line struck; what a single
attempt cannot get — paywall, cookie wall, 403, anything needing a hand-clip — is
**dropped, not parked**, with its absence stated dated on the page it bears on. No
item is carried for a human loop.

Items are marked **[blocked]** (a recorded failure mode: 403, bot-block, cookie
wall, JS shell, fetch-size limit) or **[untried]** (never yet fetched).

---

*(Queue empty as of 2026-07-20 — the acquisition pass drained it; acquired
documents are in `raw/`, dropped items recorded on their pages. New items are
added here by reconcile or ingest when a specific unheld document is identified.)*
