---
type: source
title: "Digital Transformation for Africa/ Western Africa Regional Digital Integration Program SOP1"
url: https://projects.worldbank.org/en/projects-operations/project-detail/P176932
publisher: World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A)
published: 2023-11-30
date_precision: day
date_source: source
places: [XWA]
topics: [infra.connect, finance.new]
entities: [[world-bank], [ministre-des-finances-ministry-of]]
lens: []
deal_id: wb-reg-002
finance_origin: non-state
ingested: 2026-07-21
retrieved: 2026-06-24
---
# Digital Transformation for Africa/ Western Africa Regional Digital Integration Program SOP1

World Bank Group committed US$266,500,000 to Minist�re des Finances, Ministry of Finance and Economic Affairs, Minist�re de l'Economie et des Finances), Minist�rio da Economia, Plano e Integra��o Regional (XWA).

## Deal record

| Field | Value |
|---|---|
| Deal ID | wb-reg-002 |
| Financier | World Bank Group — IDA/IBRD (Digital Economy for Africa, DE4A) |
| Recipient | Minist�re des Finances, Ministry of Finance and Economic Affairs, Minist�re de l'Economie et des Finances), Minist�rio da Economia, Plano e Integra��o Regional (XWA) |
| Beneficiary type | Government |
| Instrument | Concessional loan *(source label, unverified — see Notes)* |
| Status | Active |
| Commitment (USD) | US$266,500,000 |
| Original amount | USD 266,500,000 |
| Commitment year | 2023 |
| Start year | 2023 |
| End year | 2028 |
| Disbursed (USD) | US$47,361,213 |
| Amount quality | Exact |
| WB DT category | DIGITAL ECONOMY -> infra.connect |
| Digital ID flag | FALSE |
| Digital payments flag | FALSE |
| Project ID | P176932 |
| IATI activity ID | 44000-P176932 |
| Board approval date | 2023-11-30 *(enriched from source, 2026-07-21)* |
| Closing date | 2028-12-29 *(enriched from source, 2026-07-21)* |
| Borrower | Minist�re des Finances, Ministry of Finance and Economic Affairs, Minist�re de l'Economie et des Finances), Minist�rio d *(enriched from source, 2026-07-21)* |
| Implementing agency | Ministere de la Transformation Numerique de l'Innovation et de laModernisation de l'Admi, Minist�rio dos Transportes e C *(enriched from source, 2026-07-21)* |
| Status (WB) | Active *(enriched from source, 2026-07-21)* |
| Lending instrument | Investment Project Financing *(enriched from source, 2026-07-21)* |

## Description

Supports Western Africa's digital transformation through a Series of Projects (SOP) approach covering broadband infrastructure, digital economy governance, digital public services, and digital inclusion.

> **Country list corrected 2026-07-21 (reconcile).** The captured description named
> *Benin, Burkina Faso, Cote d'Ivoire, Guinea, Niger, Senegal and Togo*. **That list is wrong
> and is not this operation's.** PAD4756's datasheet (held at
> `raw/2023-11-07-worldbank-dtfa-wardip-sop1-pad4756.md`) states "Project Beneficiary(ies)
> **Gambia, The, Guinea, Guinea-Bissau, Mauritania**", with borrowers The Gambia, Guinea,
> Guinea-Bissau, Mauritania, the African Union, ECOWAS and Smart Africa Alliance. Confirmed
> 2026-07-21 against the World Bank projects API for P176932, whose `impagency` field reads
> "Ministere de la Transformation Numerique de l'Innovation et de la Modernisation de l'Admi[nistration]
> (Mauritania), Ministério dos Transportes e Comunicações (Guinea-Bissau), Smart Africa Alliance,
> African Union Commission, Ministry of Communications and Digital Economy (The Gambia), ECOWAS".
> Six of the seven originally named countries are financed by **no** part of this operation.
> The original text is preserved here rather than deleted so the capture fault stays auditable.

## Source

https://projects.worldbank.org/en/projects-operations/project-detail/P176932 - Project portal, accessed 2026-06-24

## Development history

- **2023-11-07** — PAD4756 appraised SOP1 at US$293.00m total (US$266.50m IDA: US$120.00m credit + US$146.50m grant, plus US$1.50m counterpart and US$25.00m commercial), allocated to Guinea-Bissau, The Gambia, Guinea, Mauritania, ECOWAS, the AU and Smart Africa Alliance; overall risk Substantial. [2023-11-07-worldbank-dtfa-wardip-sop1-pad4756.md]

## Notes

Subject slug inferred from "broadband".

Crosswalk confidence: **review**.

Enrichment: wb-api ok.

Flags: slug inferred from "broadband"; crosswalk confidence=review; published raised to day precision from enriched board-approval date

The capture labelled **74 of its 75 World Bank rows** `Concessional loan` regardless of the actual instrument. Verified against the World Bank portal, seven are IBRD loans and therefore not concessional; the portal's `idacommamt` field does not separate an IDA credit from an IDA grant, so for IDA operations the label is **unverified** — treat it as "IDA commitment", not established as a loan, unless a primary says otherwise.

**Enriched field truncated at build.** The load cut enriched values at 120 characters, so this record's `Implementing agency` / `Borrower` value is incomplete. Re-read it from the World Bank portal before relying on it.
