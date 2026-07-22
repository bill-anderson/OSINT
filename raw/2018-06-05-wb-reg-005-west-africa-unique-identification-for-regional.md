---
type: source
title: "West Africa Unique Identification for Regional Integration and Inclusion (WURI) Program"
url: https://projects.worldbank.org/en/projects-operations/project-detail/P161329
publisher: World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A)
published: 2018-06-05
date_precision: day
date_source: source
places: [XWA]
topics: [dpi.id, finance.new]
entities: [[world-bank], [ministry-of-economy-and-finance]]
lens: []
deal_id: wb-reg-005
finance_origin: non-state
ingested: 2026-07-21
retrieved: 2026-06-24
---
# West Africa Unique Identification for Regional Integration and Inclusion (WURI) Program

World Bank Group committed US$122,100,000 to Ministry of Economy and Finance (XWA).

## Deal record

| Field | Value |
|---|---|
| Deal ID | wb-reg-005 |
| Financier | World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A) |
| Recipient | Ministry of Economy and Finance (XWA) |
| Beneficiary type | Government |
| Instrument | Concessional loan *(source label, unverified — see Notes)* |
| Status | Active |
| Commitment (USD) | US$122,100,000 |
| Original amount | USD 122,100,000 |
| Commitment year | 2018 |
| Start year | 2018 |
| End year | 2026 |
| Disbursed (USD) | US$44,523,644 |
| Amount quality | Exact |
| WB DT category | Identification Systems and Civil Registration -> dpi.id |
| Digital ID flag | TRUE |
| Digital payments flag | FALSE |
| Project ID | P161329 |
| IATI activity ID | 44000-P161329 |
| Board approval date | 2018-06-05 *(enriched from source, 2026-07-21)* |
| Closing date | 2026-06-30 *(enriched from source, 2026-07-21)* |
| Borrower | Ministry of Economy and Finance *(enriched from source, 2026-07-21)* |
| Implementing agency | ECOWAS Commission, Minist�re de l'Emploi et de la Protection Sociale (CIV), Guinea Office of the Prime Minister (Primatu *(enriched from source, 2026-07-21)* |
| Status (WB) | Active *(enriched from source, 2026-07-21)* |
| Lending instrument | Investment Project Financing *(enriched from source, 2026-07-21)* |

## Description

Supports unique digital identification for West Africans through a foundational ID system and digital ID credentials.

> **Country list corrected 2026-07-21 (reconcile).** The captured description named *Guinea,
> Cote d'Ivoire, Burkina Faso, Niger and Togo*. **Burkina Faso, Niger and Togo belong to WURI
> Phase 2 (P169594), not to this Phase 1 operation.** Confirmed 2026-07-21 against the World
> Bank projects API for P161329, whose abstract states the objective is "to increase the number
> of persons in **Côte d'Ivoire and Guinea** who have government-recognized proof of unique
> identity", with implementing agencies "ECOWAS Commission, Ministère de l'Emploi et de la
> Protection Sociale (CIV), Guinea Office of the Prime Minister (Primature)". Phase 1 =
> **Côte d'Ivoire, Guinea and ECOWAS**. Original text preserved so the capture fault stays
> auditable.

## Source

https://projects.worldbank.org/en/projects-operations/project-detail/P161329 - Project portal, accessed 2026-06-24

## Development history

- **2025-05-02** — WURI-Guinea closed early on 28 June 2024, two years ahead of plan, after a June-2024 Phase 1 restructuring, with only 8,000 unique identification numbers issued; Côte d'Ivoire disbursement reached 38% (March 2025). [2025-05-02 WURI Implementation Status Report - Cote d'Ivoire and Guinea (P161329 Seq 11).md]

## Notes

Crosswalk confidence: **high**.

Enrichment: wb-api ok.

Flags: published raised to day precision from enriched board-approval date

The capture labelled **74 of its 75 World Bank rows** `Concessional loan` regardless of the actual instrument. Verified against the World Bank portal, seven are IBRD loans and therefore not concessional; the portal's `idacommamt` field does not separate an IDA credit from an IDA grant, so for IDA operations the label is **unverified** — treat it as "IDA commitment", not established as a loan, unless a primary says otherwise.

**Status is partial.** The record's `Active` covers the P161329 MPA as a whole. The May-2025 ISR records the **Guinea component closed early on 28 June 2024**, two years ahead of plan, with only 8,000 unique identification numbers issued. Côte d'Ivoire and ECOWAS remained active.

**Enriched field truncated at build.** The load cut enriched values at 120 characters, so this record's `Implementing agency` / `Borrower` value is incomplete. Re-read it from the World Bank portal before relying on it.
