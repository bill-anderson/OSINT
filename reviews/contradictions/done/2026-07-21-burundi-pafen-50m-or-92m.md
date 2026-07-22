---
type: contradiction
id: 2026-07-21-burundi-pafen-50m-or-92m
opened: 2026-07-21
shape: dispute
status: resolved
attempt: 1
---

# Burundi Digital Foundations / PAFEN (P176396): US$50m or ~US$92m?

Surfaced 2026-07-21 during the non-state finance load, adjudicating deal record
`wb-bdi-002` against the implementation status report the wiki holds.

## The disagreement

- **US$50,000,000.** The finance deal record `wb-bdi-002`, amount quality `Exact`, and the
  World Bank portal's own commitment field for P176396 (`idacommamt` 50,000,000), which the
  record's enrichment retrieved successfully.
- **"~$92m".** The held page
  `raw/2025-05-13 World Bank - Burundi Digital Foundations Project (PAFEN) Implementation Status Report.md`
  describes PAFEN as an FY2022 IPF of approximately US$92m.

## The likely explanation, which still needs checking

**US$92.2m is the commitment the same load carries for Chad's P180000** — a different
country, a different project, in the same batch. A transcription slip between two records is
the obvious candidate, and if that is what happened the held page carries a wrong figure and
should be corrected rather than the record.

Against that: an additional-financing operation could genuinely have taken PAFEN from US$50m
to around US$92m after 2022, which would make both figures right at different dates and this
a supersession rather than a conflict.

## What the wiki holds

The ISR page above is a companion stub for a PDF, so the figure sits in prose rather than in
a financing table — weaker evidence than it looks. The portal value behind the record is
machine-read from the World Bank search API. **Nothing on file states an additional
financing for P176396.**

## To resolve

Query the World Bank portal for P176396 and read the financing history: original commitment,
any additional financing, and the dates. If no additional financing exists, correct the held
ISR page's figure and note the source of the error. If one does, record both values dated,
current first.

## Resolution

**Resolved 2026-07-21. Both figures are correct at different dates — additional financing, not a transcription error.** Parent P176396 is a US$50m IDA grant (SDR 37.2m, board 22 June 2022); additional financing **P180987** added US$42m (SDR 32m, board 10 January 2024, effective 17 May 2024), taking the total IDA commitment to **US$92m** and extending closing to 30 August 2028.

**The brief's own hypothesis was wrong.** It proposed that the held "~$92m" was a slip from Chad's US$92.2m in the same batch. It was not: 50 + 42 = 92 arrives independently from the primaries.

**Structural point worth keeping:** the World Bank files additional financings under their own project IDs, so a parent's `idacommamt` never absorbs them. The deal record is accurate *as a record of P176396* and was **not** overwritten with 92 — the programme total is carried in its development history instead. Any future finance load will hit this pattern again.

Two primaries found and not held — PAD5527 (6 December 2023) and the World Bank press release of 11 January 2024. Routed to acquisitions.
