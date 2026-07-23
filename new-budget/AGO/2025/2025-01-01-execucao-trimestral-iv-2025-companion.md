---
type: source
title: "Relatório de Execução Trimestral do Orçamento Geral do Estado: IV Trimestre de 2025"
url: https://cms.minfin.gov.ao/api/assets/portal-minfin/6fb282a3-8ce4-4319-86ca-e271ae984b2b/
publisher: Ministério das Finanças de Angola — Direcção Nacional de Contabilidade Pública
published: 2026-03-12
date_precision: day
date_source: source
places: [AGO]
topics: [finance.budget]
entities: [[ministerio-das-financas-angola]]
lens: []
retrieved: 2026-07-23
sweep_batch: domestic-finance-AGO-2025-2026-07-23
fiscal_years_covered: ["2025"]
doc_type: implementation-report
source_tier: budget-document
artefact: 2025-01-01-execucao-trimestral-iv-2025.pdf
body_completeness: excerpt
---

## Scope of the document

Ministry of Finance quarterly budget-execution report for the **IV Trimestre de 2025**
(finalised 12 March 2026; SIGFE reference date 31 December 2025) — the **cumulative
full-year outturn of OGE 2025** (calendar year). This is the **outturn
(implementation-report) stage** for AGO FY2025. OGE 2025 authorised receita/despesa:
**Kz 34 633 790 087 312,00 ≈ Kz 34,63 biliões** (Lei n.º 18/24, promulgated 24-Dec-2024,
in force 1-Jan-2025), +40% on OGE 2024's Kz 24,72 biliões.

## What this file contains — and does not

**This is the 57-page narrative report + glossary.** It carries aggregate and
**sector/functional execution rates** (taxas de execução by função and by domain), the
receita/despesa balance, and the debt position — but the **detailed anexo tables are only
TOC-listed here, not printed**: ANEXO 13 (despesa **por projecto** — the finest grain,
where named digital projects surface) and ANEXO 16 (execução das UO a nível central —
MINTTICS / Justiça / Interior / MAT rows) live in a **separate anexos volume**. So the
per-project/per-UO **digital execution lines are NOT in this file** — they need the anexos
(added to acquisitions). The narrative names no digital órgão by name.

## Classification structure (report body)

- Cap. IV — Execução do OGE: receita and despesa by natureza económica and by função, with
  taxa de execução (grau de execução / taxa de execução efectiva / projecção linear).
- Sector execution rates are stated in prose (e.g. sectors at 20–53% grau de execução for
  the period) — functional, not programme/project grain.
- Glossary (UO, Fonte de Recurso, Taxa de Execução) at the tail.

## Scale & currency

- **Currency:** Kwanza (Kz). **Scale:** tables mix full values (e.g. `34 633 790 087 312,00`)
  and prose in *biliões* (10¹²) / *mil milhões* (10⁹). **Decimal comma, space thousands
  separator.** `bilião` = 10¹² (the ministry's own documents are consistent, unlike the
  trade press). Verify per table at extraction.

## Notes

- IP-pinned fetch: host `cms.minfin.gov.ao` does not resolve on local DNS; DoH →
  `20.87.80.66`, `curl --resolve cms.minfin.gov.ao:443:20.87.80.66`. Asset is
  UUID-keyed `/api/assets/portal-minfin/<uuid>/`.
- The I–III Trimestre 2025 reports are prior in-year snapshots (UUIDs recorded in the run
  file), not needed for the annual figure. Digital-line targets at extraction: the **ANEXO
  13 / ANEXO 16 anexos volume** (acquisition) and the OGE 2025 **Mapas Orçamentais**
  (appropriated side, acquisition).
