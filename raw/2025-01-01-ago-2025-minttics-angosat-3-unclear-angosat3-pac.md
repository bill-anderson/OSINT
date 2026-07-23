---
type: source
title: "PAC 2025: MINTTICS plans Kz 278 billion spend on Angosat-3 earth-observation satellite"
url: https://www.novojornal.co.ao/economia/detalhe/pac2025-minttics-com-despesas-de-6735-mil-milhoes-usd-quase-metade-do-valor-e-para-o-angosart--3-o-satelite-domestico-para-apoiar-a-agricultura-e-combater-a-seca-63989.html
publisher: Ministério das Finanças (Angola)
published: 2025-01-01
date_precision: month
date_source: source
places: [AGO]
topics: [data.satellite, finance.budget]
entities: [[ministerio-das-financas-angola], [ministerio-das-telecomunicacoes-tecnologias-de-informacao-e-comunicacao-social-angola]]
lens: []
deal_id: ago-2025-minttics-angosat-3-unclear
finance_origin: domestic-state
state_level: national
spending_tier_name: ""
fiscal_year_label: "2025"
fy_start: 2025-01-01
fy_end: 2025-12-31
budget_stage: unclear
budget_version: original
source_tier: reporting
supplementary_basis: ""
scope_confidence: whole
is_transfer: false
amount_total: 278000000000
currency: AOA
ingested: 2026-07-22
retrieved: 2026-07-22
body_completeness: full
---

# PAC 2025: MINTTICS plans Kz 278 billion spend on Angosat-3 earth-observation satellite

Angola's telecoms ministry (MINTTICS) filed its 2025 Plano Anual de Contratação (annual public-contracting plan) on the public procurement portal anticipating Kz 278 billion of spend on Angosat-3, the domestic earth-observation satellite intended to support agriculture and combat drought.

## Deal record

| Field | Value |
|---|---|
| Deal ID | ago-2025-minttics-angosat-3-unclear |
| Financier | Ministério das Finanças / Orçamento Geral do Estado (Angola) |
| Recipient | recipient unspecified (AGO) |
| Spending entity | Ministério das Telecomunicações, Tecnologia de Informação e Comunicação Social (MINTTICS) |
| Status | planned contracting, FY2025 |
| Original amount | AOA 278,000,000,000 ("278 biliões de kwanzas") |
| Commitment year | 2025 |
| funding_source | unstated |
| fy_calendar | gregorian |
| amount_scale | article states "biliões"; established as 10^9 (thousand million) — see Notes; stored in units |
| scope_basis | named project line in the ministry's PAC as reported: "Angosat-3, o satélite doméstico destinado à observação da terra" |
| doc_type | |
| doc_locator | |

## Description

"O Ministério das Telecomunicações, Tecnologia de Informação e Comunicação Social (MINTTICS) já deu entrada do seu Plano Anual de Contratação (PAC) para 2025 no Portal de Compras Públicas, onde prevê gastos na ordem dos 616,7 biliões de kwanzas (cerca de 673,5 mil milhões de dólares). Quase metade desse valor (278 biliões de kwanzas) vai ser gasto no Angosat-3, o satélite doméstico destinado à observação da terra, com o objectivo de apoiar a agricultura e combater a seca."

## Source

https://www.novojornal.co.ao/economia/detalhe/pac2025-minttics-com-despesas-de-6735-mil-milhoes-usd-quase-metade-do-valor-e-para-o-angosart--3-o-satelite-domestico-para-apoiar-a-agricultura-e-combater-a-seca-63989.html — reporting (Novo Jornal, 2025-02-06), accessed 2026-07-22. Held at `raw/2025-02-06-pac2025-minttics-angosat-3-e-banda-larga.md`.

## Development history

- **2025-02-27** — MINTTICS **corrected the PAC 2025** (new document dated 27-Feb-2025, published 05-Mar-2025 on the Portal de Compras Públicas), keeping the same 29 projects but restating the contract estimates: the ministry total falls from Kz 616,7 biliões to **Kz 225,6 mil milhões**, "Construção e Lançamento de um Satélite Doméstico" from Kz 298,7 biliões to **Kz 712,7 milhões**, and "Sistema de Observação da Terra" from Kz 10,4 biliões to **Kz 77,7 milhões** (reclassified from a 2022 continuation to a "nova contratação"). The **Kz 278 bn figure this record carries is a first-PAC artefact**; it is left in place pending reconcile, not silently overwritten — see `reviews/contradictions/open/2026-07-23-ago-minttics-angosat3-pac-278bn-vs-712m.md`. [https://pti.ao/minttics-actualiza-pac-2025-despesas-caem-para-menos-de-230-mil-milhoes-de-kwanzas/]

## Notes

- Translation of the description: MINTTICS has filed its 2025 Annual Contracting Plan (PAC) on the Public Procurement Portal, anticipating spending of around Kz 616.7 billion; almost half of that (Kz 278 billion) is to be spent on Angosat-3, the domestic earth-observation satellite intended to support agriculture and combat drought.
- **funding source unstated** for the Angosat-3 line; origin `domestic-state` flagged, per the origin gate default.
- **budget_stage `unclear` — judgment call**: the PAC is a formal budget-cycle instrument (mandatory under art. 442.º of Lei n.º 41/20 and Decreto Presidencial n.º 73/22, reflecting the ministry's contracting estimates for the budget exercise) but is a procurement plan, not an appropriation line, and the source names no stage in the appropriation→outturn vocabulary. Flagged borderline; a held OGE 2025 document would reset this record (driver case 5).
- **Denomination**: the article writes "biliões" (formally 10^12 in European Portuguese) but its internal equivalence — Kz 226,2 "biliões" for the broadband line matching the USD ~247M/Eximbank USD 248m loan — establishes 10^9. Recorded as 278,000,000,000 AOA.
- **amount_usd left blank**: the article's own USD conversions are garbled ("673,5 mil milhões de dólares" for what must be ~USD 673.5 million); no reliable source-stated conversion exists for this line.
- The ministry's PAC total (Kz 616.7bn) is a ministry envelope and is not recorded (scope rule: a ministry's total is not digital-transformation finance). The Kz 226.2bn Rede Nacional de Banda Larga line is externally financed (2023 China Eximbank loan of USD 248m, Sinohydro contractor, per the same article) and is therefore `non-state` origin — not recorded in this domestic pass.
- `published` = fy_start at month precision: the PAC filing date is not stated (reported "já deu entrada" on 2025-02-06); the article's publication date is not used as the event date.
- Vendor for Angosat-3 not named in the source; no vendor tagged.
