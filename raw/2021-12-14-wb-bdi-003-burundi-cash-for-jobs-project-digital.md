---
type: source
title: "Burundi Cash for Jobs Project \u2014 Digital Payment Delivery Component"
url: https://projects.worldbank.org/en/projects-operations/project-detail/P175327
publisher: World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A)
published: 2021-12-14
date_precision: day
date_source: source
places: [BDI]
topics: [dpi.pay, finance.new, dpi.id]
entities: [[world-bank]]
lens: []
deal_id: wb-bdi-003
finance_origin: non-state
ingested: 2026-07-21
retrieved: 2026-06-24
---
# Burundi Cash for Jobs Project — Digital Payment Delivery Component

World Bank Group committed US$15,000,000 to an unspecified recipient (BDI).

## Deal record

| Field | Value |
|---|---|
| Deal ID | wb-bdi-003 |
| Financier | World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A) |
| Beneficiary type | Government |
| Instrument | Concessional loan *(source label, unverified — see Notes)* |
| Status | Active |
| Commitment (USD) | US$15,000,000 |
| Original amount | USD 15,000,000 |
| Commitment year | 2021 |
| Start year | 2021 |
| End year | 2029 |
| Amount quality | Imputed |
| WB DT category | Payment Systems and Digital Finance -> dpi.pay |
| Digital ID flag | TRUE |
| Digital payments flag | TRUE |
| Project ID | P175327 |
| Board approval date | 2021-12-14 *(enriched from source, 2026-07-21)* |
| Closing date | 2027-12-31 *(enriched from source, 2026-07-21)* |
| Borrower | Republic of Burundi *(enriched from source, 2026-07-21)* |
| Implementing agency | Ministry of National Solidarity, Social Affairs, Human Rights and Gender *(enriched from source, 2026-07-21)* |
| Status (WB) | Active *(enriched from source, 2026-07-21)* |
| Lending instrument | Investment Project Financing *(enriched from source, 2026-07-21)* |

## Description

Digital payment delivery sub-component (~$15M imputed of $150M total) of the Burundi Cash for Jobs Project. Supports mobile money and digital transfer mechanisms for cash-for-work payments, including beneficiary registration systems with digital ID verification.

## Source

https://projects.worldbank.org/en/projects-operations/project-detail/P175327 - Project portal, accessed 2026-06-24

## Development history

*(empty at build. Definite-match reporting appends one dated, attributed line here.)*

## Notes

Sub-component of parent project P175327 (parent total $150,000,000)

Crosswalk confidence: **high**.

Enrichment: wb-api ok.

Flags: published raised to day precision from enriched board-approval date; recip_org blank in source -> single entity tag; recipient unspecified

The capture labelled **74 of its 75 World Bank rows** `Concessional loan` regardless of the actual instrument. Verified against the World Bank portal, seven are IBRD loans and therefore not concessional; the portal's `idacommamt` field does not separate an IDA credit from an IDA grant, so for IDA operations the label is **unverified** — treat it as "IDA commitment", not established as a loan, unless a primary says otherwise.
