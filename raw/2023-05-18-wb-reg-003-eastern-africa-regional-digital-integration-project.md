---
type: source
title: "Eastern Africa Regional Digital Integration Project"
url: https://projects.worldbank.org/en/projects-operations/project-detail/P176181
publisher: World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A)
published: 2023-05-18
date_precision: day
date_source: source
places: [XEA]
topics: [gov.regional, finance.new]
entities: [[world-bank], [intergovernmental-authority-on-development-igad]]
lens: []
deal_id: wb-reg-003
finance_origin: non-state
ingested: 2026-07-21
retrieved: 2026-06-24
---
# Eastern Africa Regional Digital Integration Project

World Bank Group committed US$172,000,000 to Intergovernmental Authority on Development (IGAD), Federal Republic of Somalia, Republic of South Sudan, East African Community (EAC) (XEA).

## Deal record

| Field | Value |
|---|---|
| Deal ID | wb-reg-003 |
| Financier | World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A) |
| Recipient | Intergovernmental Authority on Development (IGAD), Federal Republic of Somalia, Republic of South Sudan, East African Community (EAC) (XEA) |
| Beneficiary type | Government |
| Instrument | Concessional loan *(source label, unverified — see Notes)* |
| Status | Active |
| Commitment (USD) | US$172,000,000 |
| Original amount | USD 172,000,000 |
| Commitment year | 2023 |
| Start year | 2023 |
| End year | 2028 |
| Disbursed (USD) | US$20,130,197 |
| Amount quality | Exact |
| WB DT category | DIGITAL ECONOMY -> gov.regional |
| Digital ID flag | FALSE |
| Digital payments flag | FALSE |
| Project ID | P176181 |
| IATI activity ID | 44000-P176181 |
| Board approval date | 2023-05-18 *(enriched from source, 2026-07-21)* |
| Closing date | 2028-05-31 *(enriched from source, 2026-07-21)* |
| Borrower | Intergovernmental Authority on Development (IGAD), Federal Republic of Somalia, Republic of South Sudan, East African Co *(enriched from source, 2026-07-21)* |
| Implementing agency | Intergovernmental Authority on Development (IGAD), Ministry of Communications and Technology (Somalia), Ministry of Info *(enriched from source, 2026-07-21)* |
| Status (WB) | Active *(enriched from source, 2026-07-21)* |
| Lending instrument | Investment Project Financing *(enriched from source, 2026-07-21)* |

## Description

Supports regional digital integration in Eastern Africa through shared digital infrastructure, harmonized regulatory frameworks, and digital public goods.

> **Country list corrected 2026-07-21 (reconcile).** The captured description named
> *Ethiopia, Kenya, Madagascar, Rwanda, Tanzania, Uganda and regional institutions*. **That list
> is wrong**, and is contradicted by this record's own enriched `Borrower` field. Confirmed
> 2026-07-21 against the World Bank projects API for P176181: borrower "**Intergovernmental
> Authority on Development (IGAD), Federal Republic of Somalia, Republic of South Sudan, East
> African Community (EAC)**", and the project abstract describes it as "the Eastern Africa
> Regional Digital Integration Project **for Eastern and Southern Africa, Somalia, South Sudan**".
> The financed sovereigns are **Somalia and South Sudan**, with IGAD and the EAC as regional
> borrowers. None of the six originally named countries is a borrower. Original text preserved
> so the capture fault stays auditable.

## Source

https://projects.worldbank.org/en/projects-operations/project-detail/P176181 - Project portal, accessed 2026-06-24

## Development history

*(empty at build. Definite-match reporting appends one dated, attributed line here.)*

## Notes

Subject slug inferred from the source text: "regional digital integration, harmonized regulatory frameworks".

Crosswalk confidence: **review**.

Enrichment: wb-api ok.

Flags: slug inferred from the source text: "regional digital integration, harmonized regulatory frameworks"; crosswalk confidence=review; published raised to day precision from enriched board-approval date

The capture labelled **74 of its 75 World Bank rows** `Concessional loan` regardless of the actual instrument. Verified against the World Bank portal, seven are IBRD loans and therefore not concessional; the portal's `idacommamt` field does not separate an IDA credit from an IDA grant, so for IDA operations the label is **unverified** — treat it as "IDA commitment", not established as a loan, unless a primary says otherwise.

**Enriched field truncated at build.** The load cut enriched values at 120 characters, so this record's `Implementing agency` / `Borrower` value is incomplete. Re-read it from the World Bank portal before relying on it.
