---
type: source
title: "OGE 2025 — Programa \"Expansão e Modernização das Comunicações\" (Kz 229,3 mil milhões)"
url: https://pti.ao/governo-corta-quase-50-da-verba-para-o-programa-de-expansao-de-internet-4g/
publisher: Ministério das Finanças (Angola)
published: 2025-01-01
date_precision: month
date_source: source
places: [AGO]
topics: [infra.connect, finance.budget]
entities: [[ministerio-das-financas-angola], [ministerio-das-telecomunicacoes-tecnologias-de-informacao-e-comunicacao-social-angola]]
lens: []
deal_id: ago-2025-minttics-expansao-modernizacao-comunicacoes-appropriated
finance_origin: domestic-state
state_level: national
spending_tier_name: ""
fiscal_year_label: "2025"
fy_start: 2025-01-01
fy_end: 2025-12-31
budget_stage: appropriated
budget_version: original
source_tier: reporting
supplementary_basis: ""
scope_confidence: whole
is_transfer: false
amount_total: 229300000000
currency: AOA
ingested: 2026-07-23
retrieved: 2026-07-23
body_completeness: full
---

# OGE 2025 — Programa "Expansão e Modernização das Comunicações" (Kz 229,3 mil milhões)

Angola's enacted 2025 state budget carried Kz 229.3 billion for the named programme "Expansão e Modernização das Comunicações", of which Kz 107.8 billion was the 4G network expansion line — the year the digital envelope spiked before being cut back for 2026.

## Deal record

| Field | Value |
|---|---|
| Deal ID | ago-2025-minttics-expansao-modernizacao-comunicacoes-appropriated |
| Financier | Ministério das Finanças / Orçamento Geral do Estado (Angola) |
| Recipient | recipient unspecified (AGO) |
| Spending entity | Ministério das Telecomunicações, Tecnologias de Informação e Comunicação Social (MINTTICS) |
| Beneficiary type | Government programme |
| Instrument | Budget appropriation (programme line, OGE 2025) |
| Status | Appropriated |
| Original amount | AOA 229,300,000,000 ("229,3 mil milhões Kz") |
| Commitment year | 2025 |
| funding_source | unstated |
| fy_calendar | gregorian |
| amount_scale | source states "mil milhões" = 10⁹; stored in units |
| programme | Expansão e Modernização das Comunicações |
| scope_basis | Named budget programme whose stated purpose is wholly digital communications build-out ("modernizar e alargar as comunicações no território nacional"); sub-lines named are 4G expansion, 3G coverage and the cybersecurity-index programme |
| econ_class | — (not stated) |
| vendor | — (not named) |
| doc_type | — (reporting-sourced; blank, not inferred) |
| doc_locator | — (reporting-sourced; blank, not inferred) |

## Description

"No global, o 'Programa de Expansão e Modernização das Comunicações' tem despesas avaliadas em 159,2 mil milhões Kz (172,6 milhões USD) […] uma vez que, no ano passado, a verba estava fixada em 229,3 mil milhões Kz (248,8 milhões USD), o que corresponde a um corte de 30,5% em relação ao valor inscrito orçamento vigente."

Sub-lines stated for OGE 2025: **Expansão da rede 4G — Kz 107,8 mil milhões** (≈ USD 116,9 M); **Cobertura de Internet 3G — Kz 29 milhões**; **melhoria da posição no Índice Global de Cibersegurança — Kz 70,5 mil milhões** (≈ USD 76,4 M, per the 2025-11-06 pti.ao reading of the OGE 2026 proposta).

## Source

https://pti.ao/governo-corta-quase-50-da-verba-para-o-programa-de-expansao-de-internet-4g/ — on-the-record trade reporting of the MINFIN "Despesa por Programa Detalhado" tables (Portal das Tecnologias de Informação, 2026-02-20), accessed 2026-07-23. Held at `raw/2026-02-20-ago-oge-2026-comunicacoes-programa-corte.md`. Cybersecurity sub-line from `raw/2025-11-06-ago-oge-2026-ciberseguranca-32bn.md`.

## Development history

## Notes

- **Parent-line capture, deliberately.** The programme total is recorded once; its named sub-lines (4G, 3G, cybersecurity index) are held in the Description rather than as separate records, because recording both parent and children would double-count the same appropriation in the hub aggregate.
- **amount_usd left blank.** The source states its own USD conversion (USD 248,8 M) "à luz da taxa de câmbio do BNA" without naming a rate, date or basis; that is neither a fiscal-year average nor a documented spot rate, so it is carried in the body as the source's figure and not promoted to a compiled field.
- **published = `fy_start` at month precision.** Neither the enactment date of the OGE 2025 appropriation act (Lei n.º 18/24, promulgada 24-Dez-2024 per the acquisitions entry) nor a tabling date is stated in this source; the reporting date (2026-02-20) is not the event date.
- **Case 4 (reporting only).** The OGE 2025 Mapas Orçamentais are queued in `reviews/acquisitions.md` (`ago-oge2025-mapas`); if obtained, this record resets per driver case 5. Classification codes are left blank, not inferred.
- **Trajectory** (all as reported by the same source): OGE 2024 Kz 7,4 mil milhões → OGE 2025 Kz 229,3 mil milhões → OGE 2026 Kz 159,2 mil milhões. The 2024 figure is a single comparative clause and is not built as a record.
- **funding source unstated**; origin `domestic-state` by the gate's default, flagged.
- **Possible overlap with externally-financed broadband — flagged, not netted off.** The corrected MINTTICS PAC 2025 (27-Feb-2025) prices "Implementação da Rede Nacional de Banda Larga" at **exactly Kz 107,8 mil milhões**, the same figure as this programme's 4G line, and its "Plataforma Analítica, Centro de Dados…" line at **exactly Kz 70,5 mil milhões**, the same figure as the cybersecurity-index line — so the corrected procurement plan appears to have been re-based on the enacted vote. The wiki separately holds the **RNBL as China Eximbank-financed** (`raw/2023-01-01-eximbank-cn-ago-003-…`), which under the origin gate would make part of this envelope `non-state`. **No source on file states the funding source of the OGE line**, so no share is apportioned and the whole line stands as `domestic-state`, flagged. The OGE 2025 Mapas (`ago-oge2025-mapas`, acquisitions) is the arbiter.
