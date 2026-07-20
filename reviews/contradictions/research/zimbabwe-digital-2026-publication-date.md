---
type: review-research
id: zimbabwe-digital-2026-publication-date
generated: 2026-07-20
method: Exa fetch (publisher's own page)
status: DO-NOT-INGEST (quarantined synthesis — never cited from a wiki page)
---

# Digital 2026 Zimbabwe publication date — RESOLVED in favour of the clipper

**Claim A (2025-11-08) is correct. Claim B (house precedent, Feb/Mar) is a superseded pattern.**

## The publisher's own words

Fetched `https://datareportal.com/reports/digital-2026-zimbabwe` (2026-07-20). Exa's extractor
returns **`Published: 2025-11-08`**, and the page body states it outright under "A note on dates":

> "To align our reporting more closely with our readers' digital planning cycles, please be aware
> that **we published our Digital 2026 reports at the end of 2025**. As a result, many of the data
> points we'll reference in this article are from **late 2025**. For reassurance, these data points
> reflect the **latest available data in October 2025**… However, because **we've changed our
> publication cycle since our Digital 2025 reports**, please pay close attention to the dates and
> time periods stated… and **avoid calculating values for change over time by referencing data
> published in our previous reports**."

## Why the house precedent misled

The precedent was real but **describes the pre-2026 cycle only**. DataReportal published *Digital
2025* on **2025-03-03** (Jan-2025 data) and then moved the *Digital 2026* series forward to
**2025-11-08** (Oct-2025 data). Every Feb/Mar edition in the corpus predates the change; the
November date is not out of line, it is the new line.

## Already corroborated inside the corpus

`raw/2025-11-08-digital-2026-zambia-datareportal.md` carries the same date at
`date_precision: day` / `date_source: source`, as do the Chad and CAR 2026 editions. The Zimbabwe
clip was the only one of the four left on a proxy date. `wiki/entities/datareportal.md` already
documents this as dating trap #1.

## Consequence for the raw file

`raw/2025-11-08 Digital 2026 Zimbabwe - DataReportal.md` currently carries
`date_precision: month` / `date_source: proxy` plus an italic in-body note stating the date is
"PROXY AND CONTESTED". Both are now falsified. The filename and `published` value are already
correct — only the honesty flags and the note are stale. **Not corrected here: the reconcile pass
is barred from writing to `raw/`.** Routed to the orchestrator as a currency-honesty correction.

## Data as-of, for anyone citing the figures

Internet users **6.54m / 38.4%** and mobile connections **16.2m / 95.0%** are **end-2025**; social
media **2.60m / 15.3%** and population **17.0m** are **October 2025**. None of these is a 2026
figure despite the report's title.
