---
type: entity
entity_type: government-body
title: Ministério das Finanças (MINFIN) — Angola
places: [AGO]
topics: [finance.budget, dpi.govtech, gov.policy, dpi.exchange]
lens: []
status: active
last_reviewed: 2026-07-23
sources: [[2025-01-21-ago-oge-2025-comunicacoes-tecnologias-226bn], [2026-02-20-ago-oge-2026-comunicacoes-programa-corte], [2025-11-07-ago-oge-2026-modernizacao-digital-programas], [2025-11-06-ago-oge-2026-ciberseguranca-32bn], [2026-04-29-ago-oge-2026-i-trimestre-execucao-lei-identificacao], [2026-01-07-ago-dp-12-26-minfin-telecoms-9-2bn], [2025-02-21-nj-minttics-ainda-nao-corrigiu-pac-2025-zeros-a-mais], [2026-06-08-ago-2026-agt-fatca-software-unclear-fatca-software-licence], [2026-03-30-angola-launches-i-lab-public-finance-techafricanews]]
---

# Ministério das Finanças (MINFIN) — Angola

Angola's finance ministry: the **fisc** behind every domestic-state finance record on this wiki, the
publisher of the budget documents the record series is built from, and — increasingly — a
digital-transformation actor in its own right. Minister (2026): **Vera Daves de Sousa**.

Minted 2026-07-23 by lint (15 referrers) — the slug had been tagged as financier on Angolan budget
records since the first domestic-finance capture without a page behind it.

## Why it matters here

- **It is the financier of record.** Every Angolan `finance_origin: domestic-state` record names
  MINFIN / the Orçamento Geral do Estado as the party providing the money — the FY2025 and FY2026
  communications programmes, the cross-vote e-government and justice lines, and the expenditure
  authorised by presidential despacho. See the compiled Financing section on **[[AGO]]**.
- **It is the document publisher.** The `Despesa por Programa Detalhado` and `Dotações Orçamentais
  por Órgãos` tables MINFIN compiles are the only route to Angola's per-programme digital
  allocations; the trade press reads them, and the wiki's figures ultimately rest on them. Its CMS
  (`cms.minfin.gov.ao`) publishes the Fundamentação reports and quarterly execution reports as
  UUID-keyed assets — reachable, but it has never exposed an enacted-budget volume, which had to be
  acquired from mirrors (see `documentation/domestic-budget-extraction.md`).
- **It publishes the outturn — newly per-organ.** For **Q1 2026** MINFIN published, "for the first
  time", a detailed *Execução Financeira por Órgão do Governo* table. That is what made it possible
  to say **MINTTICS executed 3% of its budget in Q1 2026**, with 20 of 50 programmes below 5% —
  the execution gap that the appropriation figures alone conceal.
  Source: [[2026-04-29-ago-oge-2026-i-trimestre-execucao-lei-identificacao]].

## As a digital-transformation actor

- **Its own IT is appropriated by decree.** **DP 12/26** (7-Jan-2026) authorised **Kz 9,2 mil
  milhões** and opened a framework-agreement tender for telecoms circuits and infrastructure hosting
  across MINFIN and its supervised bodies — "incluindo as zonas fronteiriças e de difícil acesso".
  Source: [[2026-01-07-ago-dp-12-26-minfin-telecoms-9-2bn]].
- **[[i-lab-angola|i.Lab]]** — the ministry's public-finance innovation hub (SETIC-FP, launched March
  2026 with **[[serpro]]** of Brazil at the table), testing qualified digital signatures in its SIGD
  document system. See [[angola--dpi-govtech]].
- **[[agt-angola|AGT]]**, the tax authority it supervises, runs the country's most advanced GovTech
  rollout: mandatory e-invoicing from 1 January 2026, and a **FATCA** data flow to the US IRS
  (€552,000 software licence, 2026) — a sovereignty edge case treated at [[angola--dpi-govtech]].
- The **Serviço Nacional de Contratação Pública (SNCP)** and the Portal de Compras Públicas sit under
  MINFIN — the procurement rail on which ministries file their Planos Anuais de Contratação. Its data
  quality is not assured: MINTTICS filed a 2025 PAC with three surplus zeros and left it uncorrected
  for weeks. Source: [[2025-02-21-nj-minttics-ainda-nao-corrigiu-pac-2025-zeros-a-mais]].

## Related

[[AGO]] · [[angola--dpi-govtech]] · [[agt-angola]] · [[i-lab-angola]] · [[ima-angola]] ·
[[ministerio-das-telecomunicacoes-tecnologias-de-informacao-e-comunicacao-social-angola]] ·
[[presidencia-da-republica-angola]] · [[finance.budget]]
