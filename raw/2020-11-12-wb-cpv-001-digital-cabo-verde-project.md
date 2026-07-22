---
type: source
title: "Digital Cabo Verde Project"
url: https://projects.worldbank.org/en/projects-operations/project-detail/P171099
publisher: World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A)
published: 2020-11-12
date_precision: day
date_source: source
places: [CPV]
topics: [infra.connect, finance.new]
entities: [[world-bank], [republic-of-cabo-verde]]
lens: []
deal_id: wb-cpv-001
finance_origin: non-state
ingested: 2026-07-21
retrieved: 2026-06-24
---
# Digital Cabo Verde Project

World Bank Group committed US$20,000,000 to Republic of Cabo Verde (CPV).

## Deal record

| Field | Value |
|---|---|
| Deal ID | wb-cpv-001 |
| Financier | World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A) |
| Recipient | Republic of Cabo Verde (CPV) |
| Beneficiary type | Government |
| Instrument | Concessional loan *(source label, unverified — see Notes)* |
| Status | Active |
| Commitment (USD) | US$20,000,000 |
| Original amount | USD 20,000,000 |
| Commitment year | 2020 |
| Start year | 2020 |
| End year | 2028 |
| Amount quality | Exact |
| WB DT category | DIGITAL ECONOMY -> infra.connect |
| Digital ID flag | FALSE |
| Digital payments flag | FALSE |
| Project ID | P171099 |
| IATI activity ID | 44000-P171099 |
| Board approval date | 2020-11-12 *(enriched from source, 2026-07-21)* |
| Closing date | 2025-10-31 *(enriched from source, 2026-07-21)* |
| Borrower | Republic of Cabo Verde *(enriched from source, 2026-07-21)* |
| Implementing agency | Special Projects Management Unit, PIU (UGPE) (Ministry of Digital Economy), Directorate of Telecommunications and Digita *(enriched from source, 2026-07-21)* |
| Status (WB) | Active *(enriched from source, 2026-07-21)* |
| Lending instrument | Investment Project Financing *(enriched from source, 2026-07-21)* |

## Description

Supports Cabo Verde's digital economy through improved internet connectivity, digital government services, and digital skills development.

## Source

https://projects.worldbank.org/en/projects-operations/project-detail/P171099 - Project portal, accessed 2026-06-24

## Development history

- **2025-01-01** — UGPE (Ministry of Finance) tendered a National Governance Framework for Digital Transformation under the Additional Financing, coordination sitting with the Prime Minister's Office via a Government Digital Service Team. [2025-01-01 Cabo Verde MoF - ToR National Governance Framework for Digital Transformation.md]
- **2025-05-02** — additional credit of SDR 15.1m (approx US$20.0m) proposed to the parent project, restructured into three components and delivered via NOSi; targets 60% of services online by 2026, 80% by 2030 (Report No. PPIAF000146). [2025-05-02 WB Project Paper - Digital Cabo Verde Project Additional Financing.md]

## Notes

Subject slug inferred from "connectivity".

Crosswalk confidence: **review**.

Enrichment: wb-api ok.

Flags: slug inferred from "connectivity"; crosswalk confidence=review; published raised to day precision from enriched board-approval date

The capture labelled **74 of its 75 World Bank rows** `Concessional loan` regardless of the actual instrument. Verified against the World Bank portal, seven are IBRD loans and therefore not concessional; the portal's `idacommamt` field does not separate an IDA credit from an IDA grant, so for IDA operations the label is **unverified** — treat it as "IDA commitment", not established as a loan, unless a primary says otherwise.

**Enriched field truncated at build.** The load cut enriched values at 120 characters, so this record's `Implementing agency` / `Borrower` value is incomplete. Re-read it from the World Bank portal before relying on it.
