---
type: source
title: "Niger Adaptive Safety Net Project 2 \u2014 Digital Payment System Component"
url: https://projects.worldbank.org/en/projects-operations/project-detail/P166602
publisher: World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A)
published: 2019-01-03
date_precision: day
date_source: source
places: [NER]
topics: [dpi.pay, finance.new]
entities: [[world-bank]]
lens: []
deal_id: wb-ner-002
finance_origin: non-state
ingested: 2026-07-21
retrieved: 2026-06-24
---
# Niger Adaptive Safety Net Project 2 — Digital Payment System Component

World Bank Group committed US$8,000,000 to an unspecified recipient (NER).

## Deal record

| Field | Value |
|---|---|
| Deal ID | wb-ner-002 |
| Financier | World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A) |
| Beneficiary type | Government |
| Instrument | Concessional loan *(source label, unverified — see Notes)* |
| Status | Active |
| Commitment (USD) | US$8,000,000 |
| Original amount | USD 8,000,000 |
| Commitment year | 2019 |
| Start year | 2019 |
| End year | 2025 |
| Amount quality | Imputed |
| WB DT category | Payment Systems and Digital Finance -> dpi.pay |
| Digital ID flag | FALSE |
| Digital payments flag | TRUE |
| Project ID | P166602 |
| Board approval date | 2019-01-03 *(enriched from source, 2026-07-21)* |
| Closing date | 2026-06-30 *(enriched from source, 2026-07-21)* |
| Borrower | REPUBLIC OF NIGER *(enriched from source, 2026-07-21)* |
| Implementing agency | Cellule Filets Sociaux *(enriched from source, 2026-07-21)* |
| Status (WB) | Active *(enriched from source, 2026-07-21)* |
| Lending instrument | Investment Project Financing *(enriched from source, 2026-07-21)* |

## Description

Digital payment system component (~$8M imputed, within $10M System Strengthening sub-component of $80M total) of the Niger Adaptive Safety Net Project 2. Finances feasibility study for mobile payments, digital payment model design, payment system setup, and beneficiary information system modules for urban cash transfers.

## Source

https://projects.worldbank.org/en/projects-operations/project-detail/P166602 - Project portal, accessed 2026-06-24

## Development history

*(empty at build. Definite-match reporting appends one dated, attributed line here.)*

## Notes

Sub-component of parent project P166602 (parent total $80,000,000)

Crosswalk confidence: **high**.

Enrichment: wb-api ok.

Flags: published raised to day precision from enriched board-approval date; recip_org blank in source -> single entity tag; recipient unspecified

The capture labelled **74 of its 75 World Bank rows** `Concessional loan` regardless of the actual instrument. Verified against the World Bank portal, seven are IBRD loans and therefore not concessional; the portal's `idacommamt` field does not separate an IDA credit from an IDA grant, so for IDA operations the label is **unverified** — treat it as "IDA commitment", not established as a loan, unless a primary says otherwise.
