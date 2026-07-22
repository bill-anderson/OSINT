---
type: source
title: "Benin Social Safety Nets Program \u2014 Digital Payment Infrastructure Component"
url: https://projects.worldbank.org/en/projects-operations/project-detail/P176680
publisher: World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A)
published: 2023-03-24
date_precision: day
date_source: source
places: [BEN]
topics: [dpi.pay, finance.new]
entities: [[world-bank]]
lens: []
deal_id: wb-ben-002
finance_origin: non-state
ingested: 2026-07-21
retrieved: 2026-06-24
---
# Benin Social Safety Nets Program — Digital Payment Infrastructure Component

World Bank Group committed US$10,000,000 to an unspecified recipient (BEN).

## Deal record

| Field | Value |
|---|---|
| Deal ID | wb-ben-002 |
| Financier | World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A) |
| Beneficiary type | Government |
| Instrument | Concessional loan *(source label, unverified — see Notes)* |
| Status | Active |
| Commitment (USD) | US$10,000,000 |
| Original amount | USD 10,000,000 |
| Commitment year | 2023 |
| Start year | 2023 |
| End year | 2027 |
| Amount quality | Imputed |
| WB DT category | Payment Systems and Digital Finance -> dpi.pay |
| Digital ID flag | FALSE |
| Digital payments flag | TRUE |
| Project ID | P176680 |
| Board approval date | 2023-03-24 *(enriched from source, 2026-07-21)* |
| Closing date | 2027-12-31 *(enriched from source, 2026-07-21)* |
| Borrower | REPUBLIC OF BENIN *(enriched from source, 2026-07-21)* |
| Implementing agency | Ministry of Social Affairs and Microfinance *(enriched from source, 2026-07-21)* |
| Status (WB) | Active *(enriched from source, 2026-07-21)* |
| Lending instrument | Program-for-Results Financing *(enriched from source, 2026-07-21)* |

## Description

Digital payment and MIS sub-component (~$10M imputed of $100M total) of the Benin Social Safety Nets Program. Finances mobile money payment channels for direct cash transfers, beneficiary management systems, and digital targeting mechanisms for social protection delivery.

## Source

https://projects.worldbank.org/en/projects-operations/project-detail/P176680 - Project portal, accessed 2026-06-24

## Development history

*(empty at build. Definite-match reporting appends one dated, attributed line here.)*

## Notes

Sub-component of parent project P176680 (parent total $100,000,000)

Crosswalk confidence: **high**.

Enrichment: wb-api ok.

Flags: published raised to day precision from enriched board-approval date; recip_org blank in source -> single entity tag; recipient unspecified

The capture labelled **74 of its 75 World Bank rows** `Concessional loan` regardless of the actual instrument. Verified against the World Bank portal, seven are IBRD loans and therefore not concessional; the portal's `idacommamt` field does not separate an IDA credit from an IDA grant, so for IDA operations the label is **unverified** — treat it as "IDA commitment", not established as a loan, unless a primary says otherwise.
