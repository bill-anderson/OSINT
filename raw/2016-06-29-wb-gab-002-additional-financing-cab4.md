---
type: source
title: "Additional Financing CAB4"
url: https://projects.worldbank.org/en/projects-operations/project-detail/P158299
publisher: World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A)
published: 2016-06-29
date_precision: day
date_source: source
places: [GAB]
topics: [infra.connect, finance.new]
entities: [[world-bank]]
lens: []
deal_id: wb-gab-002
finance_origin: non-state
ingested: 2026-07-21
retrieved: 2026-06-24
---
# Additional Financing CAB4

World Bank Group committed US$23,000,000 to an unspecified recipient (GAB).

## Deal record

| Field | Value |
|---|---|
| Deal ID | wb-gab-002 |
| Financier | World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A) |
| Beneficiary type | Government |
| Instrument | IBRD loan — not concessional *(corrected from the source's "Concessional loan"; World Bank portal records the commitment as IBRD)* |
| Status | Closed |
| Commitment (USD) | US$23,000,000 |
| Original amount | USD 23,000,000 |
| Commitment year | 2016 |
| Start year | 2016 |
| End year | 2020 |
| Amount quality | Exact |
| WB DT category | Broadband Infrastructure & Services -> infra.connect |
| Digital ID flag | FALSE |
| Digital payments flag | FALSE |
| Project ID | P158299 |
| Board approval date | 2016-06-29 *(enriched from source, 2026-07-21)* |
| Status (WB) | Closed *(enriched from source, 2026-07-21)* |
| Lending instrument | Investment Project Financing *(enriched from source, 2026-07-21)* |

## Description

Additional financing for Central African Backbone (CAB4) program extending broadband backbone infrastructure in Gabon and Central Africa.

## Source

https://projects.worldbank.org/en/projects-operations/project-detail/P158299 - Project portal, accessed 2026-06-24

## Development history

*(empty at build. Definite-match reporting appends one dated, attributed line here.)*

## Notes

No IATI match

Crosswalk confidence: **high**.

Enrichment: wb-api ok.

Flags: published raised to day precision from enriched board-approval date; recip_org blank in source -> single entity tag; recipient unspecified

The capture labelled **74 of its 75 World Bank rows** `Concessional loan` regardless of the actual instrument. Verified against the World Bank portal, seven are IBRD loans and therefore not concessional; the portal's `idacommamt` field does not separate an IDA credit from an IDA grant, so for IDA operations the label is **unverified** — treat it as "IDA commitment", not established as a loan, unless a primary says otherwise.
