---
type: source
title: "Digital Governance and Economy Project"
url: https://projects.worldbank.org/en/projects-operations/project-detail/P172350
publisher: World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A)
published: 2021-09-23
date_precision: day
date_source: source
places: [MOZ]
topics: [dpi.govtech, dpi.id, infra.connect, finance.new]
entities: [[world-bank], [republic-of-mozambique]]
financier_slug: world-bank
recipient_slug: republic-of-mozambique
lens: []
deal_id: wb-moz-003
finance_origin: non-state
ingested: 2026-07-21
retrieved: 2026-06-24
---
# Digital Governance and Economy Project

World Bank Group committed US$150,000,000 to Republic of Mozambique (MOZ).

## Deal record

| Field | Value |
|---|---|
| Deal ID | wb-moz-003 |
| Financier | World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A) |
| Recipient | Republic of Mozambique (MOZ) |
| Beneficiary type | Government |
| Instrument | IDA grant *(corrected from the source's "Concessional loan"; PAD4298 records a grant of SDR 105m, US$150m equivalent)* |
| Status | Active |
| Commitment (USD) | US$150,000,000 |
| Original amount | USD 150,000,000 |
| Commitment year | 2021 |
| Start year | 2021 |
| End year | 2027 |
| Disbursed (USD) | US$65,440,964 |
| Amount quality | Exact |
| WB DT category | DIGITAL ECONOMY -> infra.connect |
| Digital ID flag | TRUE *(corrected 2026-07-21 — see Notes)* |
| Digital payments flag | FALSE |
| Project ID | P172350 |
| IATI activity ID | 44000-P172350 |
| Board approval date | 2021-09-23 *(enriched from source, 2026-07-21)* |
| Closing date | 2027-02-28 *(enriched from source, 2026-07-21)* |
| Borrower | Republic of Mozambique *(enriched from source, 2026-07-21)* |
| Implementing agency | Ministry of Science, Technology and Higher Education (MCTES) *(corrected 2026-07-21 from PAD4298; INAGE and INTIC are supported agencies, not implementers)* |
| Status (WB) | Active *(enriched from source, 2026-07-21)* |
| Lending instrument | Investment Project Financing *(enriched from source, 2026-07-21)* |

## Description

Supports Mozambique's digital governance and economy through improved digital government platforms, broadband infrastructure, and digital financial services.

## Source

https://projects.worldbank.org/en/projects-operations/project-detail/P172350 - Project portal, accessed 2026-06-24

## Development history

- **2025-02-28** — restructuring paper RES00782 and letter amendment cancelled **US$4.2m** of unused CERC funds (grant D906-MZ: SDR 105,000,000 to SDR 101,776,669.22, effective 10 Feb 2025), leaving a net IDA commitment of **US$137.85m**; Component 3 (Govtech Business Ecosystem, US$30m) had been dropped at an earlier restructuring and the development objective revised; counterpart ministry MCTES disbanded, its role passing to a new Ministry of Digital and Communications. [2025-02-28-worldbank-mozambique-edge-restructuring-paper-res00782.md]
- **2021-06-29** — Project Information Document issued; project branded EDGE, with INAGE and INTIC named as implementing agencies and foundational digital identity in scope. [2021-06-29 Mozambique Digital Governance and Economy Project - PID (EDGE, P172350, World Bank).md]

## Notes

Subject slug inferred from "broadband".

Crosswalk confidence: **review**.

Enrichment: wb-api ok.

Flags: slug inferred from "broadband"; crosswalk confidence=review; published raised to day precision from enriched board-approval date

The capture labelled **74 of its 75 World Bank rows** `Concessional loan` regardless of the actual instrument. Verified against the World Bank portal, seven are IBRD loans and therefore not concessional; the portal's `idacommamt` field does not separate an IDA credit from an IDA grant, so for IDA operations the label is **unverified** — treat it as "IDA commitment", not established as a loan, unless a primary says otherwise.

**Resolved 2026-07-21 (reconcile), against PAD4298 — which postdates the PID and precedes effectiveness.** The implementing agency is **MCTES**; INAGE and INTIC receive support under sub-component 1.1 and sit on the spending-controls committee, but do not implement. The API's `impagency` field for this project lists seven bodies including energy utilities that appear nowhere in the PAD — it looks like cross-project contamination in the World Bank's own field, and **this record previously showed only the first three because the load truncated enriched values at 120 characters**. **Digital identity is central, not absent:** the project development objective leads on access to legal identification, the first outcome indicator is the share of eligible individuals holding legal identification credentials, and the API scores Civil Registration and Identification at 51%. The `Digital ID flag` is corrected to TRUE and `dpi.id` and `dpi.govtech` added. **Not established:** a Disclosable Restructuring Paper and a partial-cancellation letter amendment for grant D906-MZ, both dated 2025-02-28, are listed on the portal but not held — so the US$150m figure may no longer be current. Added to acquisitions.

**Superseded within the same day's passes (2026-07-21).** The reconcile resolution above established MCTES as implementer and US$150m as the commitment, from PAD4298 (2021). The acquisition pass then retrieved the February-2025 restructuring papers, which move both: net IDA commitment **US$137.85m (Feb 2025)**, and **MCTES itself disbanded**. The US$150m figure stands only as the dated 2021 approval amount. This record's own commitment field is left at the approval figure, which is what a deal record holds; current net commitment lives in the development history.
