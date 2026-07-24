---
type: source
title: "OGE 2026 — Programa \"Expansão e Modernização das Comunicações\" (Kz 159,2 mil milhões, −30,5%)"
url: https://pti.ao/governo-corta-quase-50-da-verba-para-o-programa-de-expansao-de-internet-4g/
publisher: Ministério das Finanças (Angola)
published: 2026-01-01
date_precision: month
date_source: source
places: [AGO]
topics: [infra.connect, infra.cybersec, finance.budget]
entities: [[ministerio-das-financas-angola], [ministerio-das-telecomunicacoes-tecnologias-de-informacao-e-comunicacao-social-angola]]
financier_slug: ministerio-das-financas-angola
recipient_slug: ministerio-das-telecomunicacoes-tecnologias-de-informacao-e-comunicacao-social-angola
lens: []
deal_id: ago-2026-minttics-expansao-modernizacao-comunicacoes-appropriated
finance_origin: domestic-state
state_level: national
spending_tier_name: ""
fiscal_year_label: "2026"
fy_start: 2026-01-01
fy_end: 2026-12-31
budget_stage: appropriated
budget_version: original
source_tier: reporting
supplementary_basis: ""
scope_confidence: whole
is_transfer: false
amount_total: 159200000000
currency: AOA
ingested: 2026-07-23
retrieved: 2026-07-23
body_completeness: full
---

# OGE 2026 — Programa "Expansão e Modernização das Comunicações" (Kz 159,2 mil milhões)

Angola's enacted 2026 state budget carries Kz 159.2 billion for the "Expansão e Modernização das Comunicações" programme — a 30.5% cut on 2025 — with 4G expansion (Kz 62.7 billion, 67.7% of the programme) still the largest line and the 3G coverage line dropped entirely.

## Deal record

| Field | Value |
|---|---|
| Deal ID | ago-2026-minttics-expansao-modernizacao-comunicacoes-appropriated |
| Financier | Ministério das Finanças / Orçamento Geral do Estado (Angola) |
| Recipient | recipient unspecified (AGO) |
| Spending entity | Ministério das Telecomunicações, Tecnologias de Informação e Comunicação Social (MINTTICS) |
| Beneficiary type | Government programme |
| Instrument | Budget appropriation (programme line, OGE 2026) |
| Status | Appropriated |
| Original amount | AOA 159,200,000,000 ("159,2 mil milhões Kz") |
| Commitment year | 2026 |
| funding_source | unstated |
| fy_calendar | gregorian |
| amount_scale | source states "mil milhões" = 10⁹; stored in units |
| programme | Expansão e Modernização das Comunicações |
| scope_basis | Named budget programme, wholly digital in stated purpose ("modernizar e alargar as comunicações no território nacional"), read from the OGE 2026 rubrica "Despesa por Programa Detalhado" |
| econ_class | — (not stated) |
| vendor | — (not named) |
| doc_type | — (reporting-sourced; blank, not inferred) |
| doc_locator | — (reporting-sourced; blank, not inferred) |

## Description

"No global, o 'Programa de Expansão e Modernização das Comunicações' tem despesas avaliadas em 159,2 mil milhões Kz (172,6 milhões USD), sendo a maior parte (67,7%) do valor cabimentado para o projecto de expansão da rede 4G no país, segundo dados constantes da rubrica 'Despesa por Programa Detalhado' do OGE 2026."

Sub-lines stated for OGE 2026: **Expansão da rede 4G — Kz 62,7 mil milhões** (≈ USD 68 M, −42% on 2025); **melhoria da posição no Índice Global de Cibersegurança — Kz 32,3 mil milhões** (≈ USD 35 M, −54% on 2025, ~20% of the programme, third largest); the **"Cobertura de Internet 3G"** rubric (Kz 29 milhões in 2025) is **removed**.

## Source

https://pti.ao/governo-corta-quase-50-da-verba-para-o-programa-de-expansao-de-internet-4g/ — on-the-record trade reporting of the MINFIN "Despesa por Programa Detalhado" tables (Portal das Tecnologias de Informação, 2026-02-20), accessed 2026-07-23. Held at `raw/2026-02-20-ago-oge-2026-comunicacoes-programa-corte.md`. Cybersecurity sub-line from `raw/2025-11-06-ago-oge-2026-ciberseguranca-32bn.md` (proposta stage).

## Development history

## Notes

- **Parent-line capture, deliberately** — as for the FY2025 record: the programme total is the record, the named sub-lines sit in the Description. Recording parent and children both would double-count the appropriation.
- **Stage.** `appropriated`: the 2026-02-20 source reads the OGE 2026 in force ("orçamento vigente"), not the proposta. The cybersecurity sub-line (Kz 32,3 mM) is from the **proposta** (2025-11-06); the programme total it quoted (Kz 159,2 mM) matches the enacted figure, so the sub-line very likely held, but it is carried as proposta-stage detail and is **not** separately recorded.
- **amount_usd left blank** — source-stated conversion only ("à luz da taxa de câmbio do BNA"), no rate, date or basis given.
- **published = `fy_start` at month precision**; the OGE 2026 appropriation act (Lei n.º 01/V/4.ª/2026-2027) is queued in acquisitions (`ago-lei-oge-2026-dr`) and its assent date is not stated in this source.
- **Case 4 (reporting only).** OGE 2026 Mapas queued (`ago-oge2026-mapas`); driver case 5 resets this record if they land. Codes left blank, not inferred.
- **funding source unstated**; origin `domestic-state` by the gate's default, flagged. As for FY2025, the 4G line may overlap the China Eximbank-financed Rede Nacional de Banda Larga (`raw/2023-01-01-eximbank-cn-ago-003-…`); no source on file states the OGE line's funding source, so nothing is apportioned and the whole line stands `domestic-state`, flagged.
