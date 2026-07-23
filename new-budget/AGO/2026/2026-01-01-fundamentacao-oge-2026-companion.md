---
type: source
title: "Relatório de Fundamentação — Orçamento Geral do Estado 2026"
url: https://cms.minfin.gov.ao/api/assets/portal-minfin/8983392b-8784-45d7-a23d-1aa35cf938b4/
publisher: Ministério das Finanças de Angola
published: 2025-10-31
date_precision: month
date_source: inferred
places: [AGO]
topics: [finance.budget]
entities: [[ministerio-das-financas-angola]]
lens: []
retrieved: 2026-07-23
sweep_batch: domestic-finance-AGO-2026-2026-07-23
fiscal_years_covered: ["2026"]
doc_type: budget-estimates
source_tier: budget-document
artefact: 2026-01-01-fundamentacao-oge-2026.pdf
body_completeness: full
---

# Companion — Relatório de Fundamentação OGE 2026 (Angola)

**Head start for the extraction pass — not an admitted source.** No `ingested:`; not
linked from any wiki page. Becomes a source only when `BUDGET-EXTRACT.md` emits one
into `new/`.

## What this is

The **Relatório de Fundamentação** accompanying the Proposta de Lei do OGE 2026
(delivered to the Assembleia Nacional 31-Out-2025; approved in globality 15-Dez-2025).
Fetched from the minfin CMS (Track B). This document combines:

- the **exposição de motivos / enquadramento legal** (III–VI: legal basis, DR summary,
  media note), and
- the **full articulado of the OGE 2026 law** (ARTIGO 1.º–33.º), including the fiscal
  measures (IRT, Imposto Industrial, IVA, CEOC, Pauta Aduaneira, regularização de
  dívidas à Segurança Social, etc.).

**Headline aggregate (ARTIGO 2.º):** receita orçamental total estimada em
**Kz 33 240 843 683 427,00 (≈ 33,24 biliões)**, despesa fixada em igual montante.
This is **down ~4%** on OGE 2025 (Kz 34,63 biliões, Lei 18/24). The enacted total
matches the proposta total → approved unchanged. Enacted instrument: **Lei n.º
01/V/4.ª/2026-2027** (per the Assembly DIÁRIO II Série; the gazetted DR PDF is in
acquisitions).

## Scale / currency (READ BEFORE EXTRACTING)

- **Currency: AOA (Kwanza).** Values written in full (não em milhares).
- **Portuguese scale trap confirmed at source:** `bilião` = **10¹²**, `mil milhões` =
  **10⁹** (so "33,24 biliões" = 33.24 × 10¹² Kz). Tables use decimal comma + space
  thousands (e.g. `33 240 843 683 427,00`). The ministry's own documents are
  internally consistent 10¹²/10⁹ — unlike Novo Jornal's unreliable "bilião".
- **PDF:** native text (`%PDF-1.7`), **75 pages**, ~1.75 MB, extracts cleanly with
  `pdftotext`.

## What it does NOT contain (→ acquisitions)

Same as the 2024/2025 Fundamentações: **no programme/project digital lines**. The
appropriated per-organ × programa × projecto detail (the "Despesa por Programa
Detalhado" the pti.ao reporting reads — 4G expansion Kz 62,7 mM, cybersecurity-index
programme Kz 32,3 mM, e-gov Kz 136,7 mM, justice modernisation Kz 89,6 mM) lives in
the **Mapas Orçamentais OGE 2026 volume** (`ago-oge2026-mapas`, acquisitions). The
executed digital lines will be in the **Relatório de Execução Trimestral** series
(I-Trim 2026 already published — acquisitions).

## Track B route (unchanged, reliable)

`cms.minfin.gov.ao` fails on local DNS; **DoH → `20.87.80.66`, `curl --resolve
cms.minfin.gov.ao:443:20.87.80.66`** fetches the UUID-keyed assets directly. This
Fundamentação = `8983392b-8784-45d7-a23d-1aa35cf938b4` (surfaced by Exa).
