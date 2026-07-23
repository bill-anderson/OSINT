---
type: source
title: "Lei n.º 15/23, de 29 de Dezembro — Lei que Aprova o Orçamento Geral do Estado para o Exercício Económico de 2024 (Diário da República, volume aprovado)"
url: https://dw.angonet.org/wp-content/uploads/20231229-Lei-n.o-15-23-de-29-de-Dezembro-Orcamento-Geral-do-Estado-de-2024.pdf
publisher: Assembleia Nacional / Diário da República de Angola — via Development Workshop Angola (angonet)
published: 2023-12-29
date_precision: day
date_source: source
places: [AGO]
topics: [finance.budget]
entities: [[ministerio-das-financas-angola]]
lens: []
retrieved: 2026-07-23
doc_type: appropriation-act
fiscal_year_label: "2024"
fiscal_years_covered: ["2024"]
source_tier: budget-document
body_completeness: excerpt
---

## What this is

The **enacted OGE 2024** — Lei n.º 15/23, approved by the National Assembly 13-Dez-2023, promulgated
26-Dez-2023, published in *Diário da República* I Série of 29-Dez-2023 — as the gazette scan
archived by **Development Workshop Angola** (`dw.angonet.org`). **94.5 MB.** Superseded for FY2025
by Lei n.º 18/24.

**Headline figure, per Artigo 2.º:** receita e despesa de **Kz 24 715 263 134 196,00** — 24,72
biliões (10¹²) — for the 2024 economic year. In force from 1 January 2024.

The volume is the gazetted budget publication, so it should carry the same `Peças Integrantes` the
law lists — including **Resumo da Despesa por Programa** and **Dotações Orçamentais por Órgãos**,
the tables queued as `ago-oge2024-mapas`. **That is not verified**: see the extraction warning below.

## Acquisition note

Acquired **2026-07-23** by the acquisition pass, on one attempt. The minfin CMS route never surfaced
a UUID for the OGE 2024 volume across two sweep passes; **DW Angola's document library is the working
route for gazette scans** — plain `wp-content/uploads/` URLs, directly `curl`-able. Worth trying
alongside the CABRI BIA mirror (which carries Angola's 2025 documents but not 2024 or 2026).

## Extraction warning — no text layer

`pdftotext` returns **empty output** across sampled pages (1–4, 400–401). Like the FY2025 enacted
volume, this is a **scanned/image PDF**; the tables are legible to a reader but not machine-readable
as delivered, and `BUDGET-EXTRACT.md` will need an OCR step the current toolchain does not have.
Consequently **whether the Dotações Orçamentais por Órgãos tables are inside this file is
unverified** — it is asserted from the law's own Artigo 3.º, not from the file.

## Status

Staged in `new-budget/AGO/2024/` with this companion, awaiting **budget extract** — not an ingest
queue (`wiki/reference.md` §2). Deferred to the batch checkpoint, per the standing rule for this run.
