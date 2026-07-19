---
type: intersection
title: São Tomé and Príncipe × Digital Identity & Registries
place: STP
topic: dpi.id
places: [STP]
topics: [dpi.id, dpi.registry, dpi.exchange, include.access, infra.store, geopol.eu]
entities: [[sao-tome-national-digital-id], [mosip], [prese-sao-tome], [national-data-protection-agency-sao-tome]]
lens: [sovereignty]
status: active
last_reviewed: 2026-07-19
sources: [[2025-09-17-world-bank-ajuda-memoria-stp-digital-setembro-2025], [2026-01-22-campanha-bi-gratuito-ilheu-das-rolas], [2026-06-25-bi-disponiveis-levantamento-campanha-diaspora-portugal], [2026-04-15-stp-lanca-sistema-emissao-passaportes-sep-2-0], [2025-09-02-stp-encerra-projeto-reforma-sistema-eleitoral-prese], [2026-04-30-prese-inaugura-recenseamento-automatico], [2026-02-06-stp-pronto-novo-sistema-recenseamento-eleitoral], [2026-04-15-recenseamento-automatico-fiscalizado-anpdp], [2026-05-14-afap-tender-data-center-servidores-identidade-digital], [2025-04-07-governo-lanca-sistema-emissao-documentos-embaixada-portugal]]
---

# São Tomé and Príncipe × Digital Identity & Registries

STP is building a **foundational digital ID off a near-complete civil-registration base** (~98% birth
registration; the informatised **SIGA** register since 2017) — and, uniquely, wiring that register
directly into an **automatic electoral roll**. The build is **open-standards** and donor-financed (World
Bank, EU), with an eye on cost that suits a ~241k-person state.

## The foundational digital ID (World Bank "STP Digital", P177158)

- **The build.** Under the **$21.8m** World Bank **STP Digital** project (IDA+GIF, approved Jun 2022, 36%
  disbursed by Sep 2025), the System Integrator **Ooru** was contracted (Sep 2025) to design a new
  foundational **bilhete de identidade** as a **digital ID** — jointly led by **INIC** and **DGRN**, on
  the **[[mosip]]** base. Live prototypes cover a **Verifiable Credentials Infrastructure (VCI)**, an
  **interoperability/data-exchange platform (DEX)**, the citizen **Portal/App** and an **e-Signature**
  service — **open standards, source code available to Government**. Roadmap: **Jan 2026** Digital ID +
  Portal; **Mar 2026** interop×VCI; **May 2026** e-Signature. A **mass population registration** (Jan/Feb
  2026) pairs with an update of the single social registry (Cadastro Social Único). The mission flagged a
  new **identity law** ("aggregated identification document Law") as urgent — its absence could constrain
  data collection. See [[sao-tome-national-digital-id]], [[dpi.exchange]]. Source:
  [[2025-09-17-world-bank-ajuda-memoria-stp-digital-setembro-2025]].
- **Data-centre backbone.** **AFAP** (the project's fiduciary agency) tendered **servers + disaster
  recovery** for the digital-ID system (May 2026), executing the aide-mémoire's recommendation of a
  **TIER III data centre or cloud** migration. See [[infra.store]]. Source:
  [[2026-05-14-afap-tender-data-center-servidores-identidade-digital]] *(tender notice — body in an
  attached PDF; manual clip advised)*.

## "BI para Todos" — universal ID access

- **Free national-ID campaign (2026).** A DGRN brigade issues the **bilhete de identidade (BI)** free to
  all citizens reaching majority, reaching remote localities (**Ilhéu das Rolas, Porto Alegre**) with a
  **[[prese-sao-tome|PReSE]]**-provided **Starlink** link and portable generator to emit IDs off-grid.
  Source: [[2026-01-22-campanha-bi-gratuito-ilheu-das-rolas]].
- **Diaspora arm.** The **embassy in Portugal** issues DGRN documents (birth certificates, polycarbonate
  BI, criminal record, marriage capacity) directly off the **SIGA** register (from Apr 2025), and BIs
  requested under the campaign are collected there. See [[include.access]]. Sources:
  [[2025-04-07-governo-lanca-sistema-emissao-documentos-embaixada-portugal]],
  [[2026-06-25-bi-disponiveis-levantamento-campanha-diaspora-portugal]].
- **Passport SEP 2.0 (Apr 2026).** A modernised passport-issuance system, under a **4-year contract**
  with Portugal's **Imprensa Nacional–Casa da Moeda** — STP is one of only four countries using its
  biographic-page technique (with Cabo Verde, Portugal, Hungary). Source:
  [[2026-04-15-stp-lanca-sistema-emissao-passaportes-sep-2-0]].

## The automatic electoral roll (PReSE)

- **Registry → electoral roll.** The EU-funded **[[prese-sao-tome|PReSE]]** (€500k, Camões/Cooperação
  Portuguesa; platform by the **University of Aveiro**) built **Africa's first Lusophone automatic and
  permanent voter registration** — enrolling voters **automatically** via **interoperability between the
  civil register (SIGA/BI) and the electoral roll (CEN/GTE)**, ending repeated manual censuses. It
  responds to EU Election Observation recommendations (2021/2022), applies to the **July/Sep 2026**
  general elections, and saves the state ~**€2m/yr**. See [[geopol.eu]], [[dpi.exchange]]. Sources:
  [[2025-09-02-stp-encerra-projeto-reforma-sistema-eleitoral-prese]],
  [[2026-04-30-prese-inaugura-recenseamento-automatico]], [[2026-02-06-stp-pronto-novo-sistema-recenseamento-eleitoral]].
- **DPA oversight.** The **[[national-data-protection-agency-sao-tome|ANPDP]]** (pres. José Manuel Costa
  Alegre) supervises the **linkage of the registry and CEN databases** — the connection point is exactly
  where voters' personal data must be protected (assessed only after the interconnection is inspected).
  See [[gov.protect]], [[sao-tome--gov-protect]]. Source: [[2026-04-15-recenseamento-automatico-fiscalizado-anpdp]].

## Reads

- `sovereignty`: STP is doing DPI the "right way round" for a micro-state — **open standards with
  source-code custody**, an ID built *on* a strong civil register rather than from scratch, and cost
  discipline (the automatic roll pays for itself). The dependency is **donor finance** (World Bank, EU)
  and **foreign integrators** (Ooru, Univ. Aveiro, Portugal's Mint), but the design keeps control and
  the data at home — a small state buying capability without ceding the registry.

## Links

Place: [[STP]] · Concepts: [[dpi.id]] · [[dpi.registry]] · [[dpi.exchange]] · Intersections:
[[sao-tome--gov-protect]] · Entities: [[sao-tome-national-digital-id]] · [[mosip]] · [[prese-sao-tome]]
