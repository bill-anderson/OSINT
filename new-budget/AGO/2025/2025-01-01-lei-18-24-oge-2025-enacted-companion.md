---
type: source
title: "Lei n.º 18/24, de 30 de Dezembro — Lei que Aprova o Orçamento Geral do Estado para o Exercício Económico de 2025 (volume aprovado, 671 pp)"
url: https://www.cabri-sbo.org/uploads/bia/Angola_2025_Approval_External_EnactedBudget_MinistryOfFinance_ECCASSADC_Portuguese_2134e2.pdf
publisher: Ministério das Finanças (Angola) — via CABRI Budget Information Archive
published: 2024-12-30
date_precision: day
date_source: source
places: [AGO]
topics: [finance.budget]
entities: [[ministerio-das-financas-angola]]
lens: []
retrieved: 2026-07-23
doc_type: appropriation-act
fiscal_year_label: "2025"
fiscal_years_covered: ["2025"]
source_tier: budget-document
body_completeness: excerpt
---

## What this is

The **enacted OGE 2025 volume** — Lei n.º 18/24, promulgada 24-Dez-2024, published in *Diário da
República* I Série n.º 244 of 30-Dez-2024 — as archived by **CABRI** (Collaborative Africa Budget
Reform Initiative) in its Budget Information Archive. **671 pages, 68.1 MB.** This is the
appropriation act *plus* its budget tables, i.e. the volume that carries the `Peças Integrantes`
listed in the law's Artigo 3.º:

- Resumo da Receita por Natureza Económica
- Resumo da Receita por Fonte de Recursos
- Resumo da Despesa por Natureza Económica
- Resumo da Despesa por Função
- Resumo da Despesa por Local
- **Resumo da Despesa por Programa**
- **Dotações Orçamentais por Órgãos**

The last two are the tables the wiki has been queuing as `ago-oge2025-mapas` — the appropriated-side
route to Angola's FY2025 digital programme and project lines (MINTTICS "Expansão e Modernização das
Comunicações" Kz 229,3 mil milhões; the cross-vote e-gov and justice lines; and the funding-source
column that would settle whether the 4G line is domestically or externally financed).

**Headline figure, per Artigo 2.º:** receita e despesa de **Kz 34 633 790 087 312,00** — 34,63
biliões (10¹²) — for the 2025 economic year. In force from 1 January 2025.

## Acquisition note

Acquired **2026-07-23** by the acquisition pass, on one attempt. The minfin CMS route
(`cms.minfin.gov.ao/api/assets/portal-minfin/<uuid>/`) never surfaced a UUID for this volume across
three sweep passes; **CABRI's BIA mirror is the working route**, and its URLs are plain, unguarded
and directly `curl`-able — the same route that supplied the OGE 2025 Fundamentação. Worth reusing
for other African enacted-budget volumes before fighting a ministry CMS.

## Extraction warning — no text layer

`pdftotext` returns **empty pages** (form-feeds only) across sampled pages 1–3, 100–102 and 200–201.
The volume is a **scanned/image PDF**; the budget tables are not machine-readable as delivered.
`BUDGET-EXTRACT.md` will need an OCR step for this document, which the existing toolchain
(`pdftotext` only, no `pdfplumber`) does not provide. This is a stage gap in the extraction chain,
not in the acquisition: **the document is now held**, and the tables are legible to a reader.

## Status

Staged in `new-budget/AGO/2025/` with this companion, awaiting **budget extract** — not an ingest
queue (`wiki/reference.md` §2). Deferred to the batch checkpoint, per the standing rule for this
run of jobs.
