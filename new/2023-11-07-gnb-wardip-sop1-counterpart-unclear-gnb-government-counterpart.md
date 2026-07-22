---
type: source
title: "Guinea-Bissau national-government counterpart funding to WARDIP SOP1 (US$0.50m)"
url: https://documents1.worldbank.org/curated/en/099110923155592015/pdf/BOSIB00f52bbfa0b60b39402a346c5434ee.pdf
publisher: Government of Guinea-Bissau
published: 2023-11-07
date_precision: day
date_source: source
places: [GNB]
topics: [infra.connect, dpi.govtech, finance.budget]
entities: [[government-of-guinea-bissau], [wardip], [world-bank]]
lens: []
deal_id: gnb-wardip-sop1-counterpart-unclear
finance_origin: domestic-state
state_level: national
fiscal_year_label: ""
budget_stage: unclear
budget_version: original
source_tier: official-statement
scope_confidence: whole
is_transfer: false
amount_total: 500000
currency: USD
amount_usd: 500000
ingested: 2026-07-22
retrieved: 2026-07-22
body_completeness: full
---

# Guinea-Bissau national-government counterpart funding to WARDIP SOP1 (US$0.50m)

The Government of Guinea-Bissau contributes US$0.50 million of its own resources as national-government counterpart funding to the World Bank's Western Africa Regional Digital Integration Program (WARDIP/DTfA) SOP1, alongside a US$60.00m IDA grant.

## Deal record

| Field | Value |
|---|---|
| Deal ID | gnb-wardip-sop1-counterpart-unclear |
| Financier | Government of Guinea-Bissau (national government) |
| Recipient | WARDIP SOP1 Guinea-Bissau component (GNB) |
| Beneficiary type | World Bank regional integration project, national component |
| Instrument | counterpart funding |
| Status | committed at project appraisal/approval (PAD4756, 2023-11-07) |
| Original amount | US$500,000 |
| Commitment (USD) | 500,000 (stated in USD by the document itself) |
| funding_source | counterpart |
| fy_calendar | — |
| amount_scale | table printed in US$ millions ("0.50"); stored normalised to units |
| scope_basis | project financing table of WARDIP SOP1, a wholly digital-sector operation (connectivity, data governance, online services) — the counterpart co-finances the same scope |
| Source tier | official-statement (World Bank PAD, held document) |

## Description

"Counterpart Funding | 1.50 … National Government 0.50 … National Government 1.00" (PAD4756, PROJECT FINANCING DATA block).

"This includes US$1 million and US$0.5 counterpart financing for Mauritania and Guinea-Bissau respectively." (PAD4756, footnote 53.)

Held capture note (2026-07-20): "Guinea-Bissau appears as **US$60.00m** in the IDA Resources table (an IDA *grant*, SDR 45.7m equivalent) and as **US$60.50m** in the component-cost table (Table 2). The US$0.50m difference is the **national-government counterpart contribution** … Write it as **US$60.00m IDA grant plus US$0.50m government counterpart = US$60.50m total (2023-11-07)**."

## Source

https://documents1.worldbank.org/curated/en/099110923155592015/pdf/BOSIB00f52bbfa0b60b39402a346c5434ee.pdf — World Bank PAD4756, held at raw/2023-11-07-worldbank-dtfa-wardip-sop1-pad4756.md (excerpt capture), accessed 2026-07-20.

## Development history

## Notes

- **Counterpart split per the origin gate**: the document states the government share (US$0.50m) separately from the external share (US$60.00m IDA grant), so the government's own share is recorded `domestic-state`; the IDA side is the wiki's held non-state WARDIP deal and is NOT re-recorded here. Compile must not double-count: this record is the domestic sliver of a project whose external financing is held under origin non-state.
- The source is not a budget document and not the fisc's own statement — it is the World Bank's appraisal document recording the government's committed contribution under the financing plan. source_tier set to official-statement as the nearest vocabulary value; doc_type/doc_locator left blank per driver (not a budget document); re-finding locator noted here instead: PAD4756, PROJECT FINANCING DATA block ("Counterpart Funding 1.50"), Table 2 country columns, footnote 53.
- **Fiscal-year fields blank deliberately**: the counterpart is committed over the project implementation period, not appropriated against a stated fiscal year; no FY is stated in the document, so none is asserted, and the deal_id stem carries the project label (wardip-sop1) in place of a fy-label. budget_stage: unclear — the document does not place the contribution in Guinea-Bissau's budget cycle.
- currency USD because the document denominates the counterpart in USD only; no XOF figure is stated and none is derived. amount_usd equals the stated USD amount (no conversion involved).
- Judgment call: this passes fact 3 as a committed figure in an approved financing plan (spec's general commitment form), not as a budget-stage figure. Sibling record: mrt-wardip-sop1-counterpart-unclear.
