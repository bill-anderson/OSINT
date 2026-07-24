---
type: source
title: "Digital Eswatini Project"
url: https://projects.worldbank.org/en/projects-operations/project-detail/P508948
publisher: World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A)
published: 2026-06-15
date_precision: day
date_source: source
places: [SWZ]
topics: [infra.connect, finance.new]
entities: [[world-bank], [kingdom-of-eswatini]]
financier_slug: world-bank
recipient_slug: kingdom-of-eswatini
lens: []
deal_id: wb-swz-001
finance_origin: non-state
ingested: 2026-07-21
retrieved: 2026-06-24
last_reviewed: 2026-07-22
---
# Digital Eswatini Project

World Bank Group committed US$19,700,000 to Kingdom of Eswatini (SWZ).

## Deal record

| Field | Value |
|---|---|
| Deal ID | wb-swz-001 |
| Financier | World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A) |
| Recipient | Kingdom of Eswatini (SWZ) |
| Beneficiary type | Government |
| Instrument | IDA credit *(corrected from the source's "Concessional loan"; PADHI01184 records a US$19.7m IDA credit alongside US$45.3m of IBRD loans)* |
| Status | Active |
| Commitment (USD) | US$19,700,000 *(the IDA credit slice; total operation US$65.0m — see Notes)* |
| Original amount | USD 19,700,000 |
| Commitment year | 2026 |
| Start year | 2026 |
| End year | 2031 |
| Amount quality | Exact |
| WB DT category | DIGITAL ECONOMY -> infra.connect |
| Digital ID flag | FALSE |
| Digital payments flag | FALSE |
| Project ID | P508948 |
| IATI activity ID | 44000-P508948 |

## Description

Increases access to affordable broadband internet and improves the government's capacity to deliver digital public services. Supports broadband infrastructure deployment, digital government platforms, and digital economy enabling environment in the Kingdom of Eswatini.

## Source

https://projects.worldbank.org/en/projects-operations/project-detail/P508948 - Project portal, accessed 2026-06-24

## Development history

- **2026-06-08** — appraisal document PADHI01184 set the operation at **US$65.0m** — a US$19.3m IBRD loan and US$19.7m IDA credit to the Kingdom, plus a US$26m IBRD loan to EPTC — across Affordable Broadband (US$36.0m), Government in Your Hand (US$25.0m) and project management (US$4.0m), closing 31 July 2031; approved 15 June 2026 by the Regional Vice President under delegated authority. [2026-06-08-worldbank-padhi01184-digital-eswatini-project.md]
- **2025-01-01** — Government of Eswatini issued terms of reference under the project for the 'Government in Your Hand' digital-government roadmap: digital ID, data exchange, social registries, PKI, payments, ~200 services. [2025-01-01 ToR - Government in Your Hand Digital Government Implementation Roadmap (Digital Eswatini).md]
- **2026-06-24** — Ministry of ICT trained cross-government Change Agents ahead of the 2027 rollout; E648m allocated to affordable broadband (EPTC stabilisation, fibre, last mile) and E450m to the Government in Your Hand DPI component, with 859 schools, 134 health centres and 38 Tinkhundla centres to be connected. [2026-06-24-ict-trains-change-agents-e1-2bn-digitization.md]
- **2026-07-19** — Q1 FY2026/27 update: a US$2m World Bank Project Preparation Grant (E32.7m; closing December 2026) is standing up institutional and fiduciary systems; grant negotiations concluded 18 May and the loan was approved in June; a six-member PIU is operational and EPTC due diligence has begun. [2026-07-19-eswatini-1-06-billion]

## Notes

Re-discovery: new DE4A-type project in Eswatini approved 2026-06-15.

Subject slug inferred from "broadband".

Crosswalk confidence: **review**.

Enrichment: wb-api failed: no project in response.

Flags: slug inferred from "broadband"; crosswalk confidence=review

The capture labelled **74 of its 75 World Bank rows** `Concessional loan` regardless of the actual instrument. Verified against the World Bank portal, seven are IBRD loans and therefore not concessional; the portal's `idacommamt` field does not separate an IDA credit from an IDA grant, so for IDA operations the label is **unverified** — treat it as "IDA commitment", not established as a loan, unless a primary says otherwise.

**Resolved 2026-07-21 (reconcile).** The US$19.7m this record carries is **real but partial**: it is the IDA credit slice of a **US$65.0m** operation (US$45.3m IBRD + US$19.7m IDA). The record mistook a component for the whole commitment; its approval date of 2026-06-15 was correct. The concept note's US$65.16m was never a competing figure — it was US$65.00m of financing plus a US$0.16m gap that appraisal closed, so there is no dated prior worth keeping. The World Bank v2 projects API does not carry this operation, which is why enrichment failed; the v3 WDS documents endpoint does. **The same partial-for-whole framing appears in the German trade agency GTAI's listing, suggesting a shared upstream feed rather than an independent slip.** *Phase number unresolved:* this PAD says Phase III, the disclosed Stakeholder Engagement Plan and the Bank's regional practice director say Phase 2 — the inconsistency is the World Bank's own and is not resolved here.
