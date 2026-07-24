---
type: source
title: "Burundi Digital Foundations Project"
url: https://projects.worldbank.org/en/projects-operations/project-detail/P176396
publisher: World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A)
published: 2022-06-22
date_precision: day
date_source: source
places: [BDI]
topics: [infra.connect, finance.new]
entities: [[world-bank], [republic-of-burundi]]
financier_slug: world-bank
recipient_slug: republic-of-burundi
lens: []
deal_id: wb-bdi-002
finance_origin: non-state
ingested: 2026-07-21
retrieved: 2026-06-24
last_reviewed: 2026-07-22
---
# Burundi Digital Foundations Project

World Bank Group committed US$50,000,000 to Republic of Burundi (BDI).

## Deal record

| Field | Value |
|---|---|
| Deal ID | wb-bdi-002 |
| Financier | World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A) |
| Recipient | Republic of Burundi (BDI) |
| Beneficiary type | Government |
| Instrument | Concessional loan *(source label, unverified — see Notes)* |
| Status | Active |
| Commitment (USD) | US$50,000,000 |
| Original amount | USD 50,000,000 |
| Commitment year | 2022 |
| Start year | 2022 |
| End year | 2028 |
| Disbursed (USD) | US$27,824,586 |
| Amount quality | Exact |
| WB DT category | DIGITAL ECONOMY -> infra.connect |
| Digital ID flag | FALSE |
| Digital payments flag | FALSE |
| Project ID | P176396 |
| IATI activity ID | 44000-P176396 |
| Board approval date | 2022-06-22 *(enriched from source, 2026-07-21)* |
| Closing date | 2028-08-30 *(enriched from source, 2026-07-21)* |
| Borrower | Republic of Burundi *(enriched from source, 2026-07-21)* |
| Implementing agency | Minist�re de la Communication, des Technologies de l'Information et des M�dias (MINCOTIM), Secr�tariat Ex�cutif des Tech *(enriched from source, 2026-07-21)* |
| Status (WB) | Active *(enriched from source, 2026-07-21)* |
| Lending instrument | Investment Project Financing *(enriched from source, 2026-07-21)* |

## Description

Establishes digital foundations in Burundi including broadband connectivity, digital government platforms, cybersecurity, and digital skills.

## Source

https://projects.worldbank.org/en/projects-operations/project-detail/P176396 - Project portal, accessed 2026-06-24

## Development history

- **2024-01-10** — additional financing P180987 approved: a further US$42m IDA grant (SDR 32m), signed 25 January 2024 and effective 17 May 2024, taking the total IDA commitment to PAFEN to **US$92m** and extending closing to 30 August 2028. [World Bank PAD5527, 6 December 2023; press release 11 January 2024]
- **2024-09** — PAFEN (~US$92m) launched by Vice-President Prosper Bazombanza; three components: digital access and inclusion; enablers of digital public-service delivery; and institutional coordination. [Biometric Update]
- **2025-05-13** — ISR03987 (seq 6) archived; implementation split across MINCOTIM, MFBPE and SETIC across the broadband, digital-skills and service-digitisation components. [2025-05-13 World Bank - Burundi Digital Foundations Project (PAFEN) Implementation Status Report.md]
- **2026-03-26** — World Bank mid-term review reported PAFEN at 61% budget commitment; total US$92m; components include the national digital-ID rollout and a national data centre, with implementation targeted to 2028. [wearetech.africa]

## Notes

Subject slug inferred from "broadband".

Crosswalk confidence: **review**.

Enrichment: wb-api ok.

Flags: slug inferred from "broadband"; crosswalk confidence=review; published raised to day precision from enriched board-approval date

The capture labelled **74 of its 75 World Bank rows** `Concessional loan` regardless of the actual instrument. Verified against the World Bank portal, seven are IBRD loans and therefore not concessional; the portal's `idacommamt` field does not separate an IDA credit from an IDA grant, so for IDA operations the label is **unverified** — treat it as "IDA commitment", not established as a loan, unless a primary says otherwise.

**Resolved 2026-07-21 (reconcile).** Not a transcription error — the held ISR page's "~$92m" is correct as a *programme* total. This record's **US$50m is correct for P176396**, the parent operation (IDA grant SDR 37.2m, board 22 June 2022, effective 28 February 2023, total project cost US$61m including US$11m unguaranteed commercial financing). A separate additional financing, **P180987**, added US$42m in January 2024; 50 + 42 = 92. The World Bank files additional financings under their own project IDs, so the parent's `idacommamt` never absorbs them — **this record must not be overwritten with 92**. The coincidence with Chad's US$92.2m, which prompted the contradiction, was a red herring.

**Enriched field truncated at build.** The load cut enriched values at 120 characters, so this record's `Implementing agency` / `Borrower` value is incomplete. Re-read it from the World Bank portal before relying on it.

**Two measures, both correct.** PAD5527's total project cost table reads 61.00 + 42.00 = **US$103.0m** (parent US$61m including US$11m unguaranteed commercial financing, plus the US$42m additional financing). The **IDA commitment** is 50 + 42 = **US$92m**. The figures differ because the parent's US$61m already includes non-IDA money; neither supersedes the other.
