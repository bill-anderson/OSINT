---
type: source
title: "Digital Tanzania Project"
url: https://projects.worldbank.org/en/projects-operations/project-detail/P160766
publisher: World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A)
published: 2021-05-27
date_precision: day
date_source: source
places: [TZA]
topics: [infra.connect, finance.new]
entities: [[world-bank], [united-republic-of-tanzania]]
financier_slug: world-bank
recipient_slug: united-republic-of-tanzania
lens: []
deal_id: wb-tza-001
finance_origin: non-state
ingested: 2026-07-21
retrieved: 2026-06-24
---
# Digital Tanzania Project

World Bank Group committed US$150,000,000 to United Republic of Tanzania (TZA).

## Deal record

| Field | Value |
|---|---|
| Deal ID | wb-tza-001 |
| Financier | World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A) |
| Recipient | United Republic of Tanzania (TZA) |
| Beneficiary type | Government |
| Instrument | Concessional loan *(source label, unverified — see Notes)* |
| Status | Active |
| Commitment (USD) | US$150,000,000 |
| Original amount | USD 150,000,000 |
| Commitment year | 2021 |
| Start year | 2021 |
| End year | 2026 |
| Disbursed (USD) | US$107,810,055 |
| Amount quality | Exact |
| WB DT category | DIGITAL ECONOMY -> infra.connect |
| Digital ID flag | FALSE |
| Digital payments flag | FALSE |
| Project ID | P160766 |
| IATI activity ID | 44000-P160766 |
| Board approval date | 2021-05-27 *(enriched from source, 2026-07-21)* |
| Closing date | 2026-10-31 *(enriched from source, 2026-07-21)* |
| Borrower | United Republic of Tanzania *(enriched from source, 2026-07-21)* |
| Implementing agency | Ministry of Communications and Information Technology (MCIT), President's Office - Public Service Management and Good Go *(enriched from source, 2026-07-21)* |
| Status (WB) | Active *(enriched from source, 2026-07-21)* |
| Lending instrument | Investment Project Financing *(enriched from source, 2026-07-21)* |

## Description

Supports Tanzania's digital economy through improved broadband connectivity, digital government platforms, digital financial services, and digital skills programs.

## Source

https://projects.worldbank.org/en/projects-operations/project-detail/P160766 - Project portal, accessed 2026-06-24

## Development history

*(empty at build. Definite-match reporting appends one dated, attributed line here.)*

## Notes

Subject slug inferred from "broadband".

Crosswalk confidence: **review**.

Enrichment: wb-api ok.

Flags: slug inferred from "broadband"; crosswalk confidence=review; published raised to day precision from enriched board-approval date

The capture labelled **74 of its 75 World Bank rows** `Concessional loan` regardless of the actual instrument. Verified against the World Bank portal, seven are IBRD loans and therefore not concessional; the portal's `idacommamt` field does not separate an IDA credit from an IDA grant, so for IDA operations the label is **unverified** — treat it as "IDA commitment", not established as a loan, unless a primary says otherwise.

**Enriched field truncated at build.** The load cut enriched values at 120 characters, so this record's `Implementing agency` / `Borrower` value is incomplete. Re-read it from the World Bank portal before relying on it.
