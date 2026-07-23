---
type: query-result
id: q-2026-07-23-mymzansi
query: q-2026-07-23-mymzansi
format: md
generated: 2026-07-23
scope:
  places: [ZAF]
  topics: [dpi.exchange]
  entities: [mymzansi]
rests_on:
  - wiki/entities/mymzansi.md (last_reviewed 2026-07-14)
  - wiki/entities/mzansixchange.md (last_reviewed 2026-07-19)
  - wiki/entities/digital-services-unit-presidency-sa.md (last_reviewed 2026-07-12)
  - wiki/entities/amazon-web-services.md (last_reviewed 2026-07-20)
  - wiki/entities/sa-digital-transformation-roadmap.md (last_reviewed 2026-07-20)
  - wiki/intersections/south-africa--dpi-govtech.md (last_reviewed 2026-07-21)
  - wiki/intersections/south-africa--dpi-id.md
  - wiki/concepts/gov.standards.md (last_reviewed 2026-07-20)
---

# Briefing — MyMzansi (meeting, 2026-07-23)

*A snapshot of what the wiki holds as of 2026-07-23. Derived view, not a source. Every dated figure is as-of; where the base holds nothing, that is stated rather than filled.*

## In one line

MyMzansi is South Africa's single digital front door to government — a genuinely advanced, sovereignty-minded design built fast in the Presidency, sitting on top of an execution layer (identity reform behind schedule, the state IT agency in crisis) that is the real constraint. Your counterpart is the builder of the ambitious half; the delivery risk lives in the departments and agencies around them.

## Current status

MyMzansi is the citizen-facing "super-app" and single digital entry point for government services, and the flagship deliverable of the DPI pillar of Operation Vulindlela and the national Digital Transformation Roadmap. It is designed to bring together digital identity, payments and services in one place, delivered as a zero-rated mobile/web app covering driver's-licence renewal, health, social and Home Affairs services ([wiki: MyMzansi](<../../wiki/entities/mymzansi.md>)).

A working prototype was built in roughly **10 weeks (as of 2025-11-09)** by the Presidency's Digital Services Unit (DSU, led by Richard Gevers), demonstrating a functional digital ID, driver's licence, payments gateway and an offline-capable verifiable wallet, showcased live at the Global DPI Summit in Cape Town in **November 2025** ([raw: Behind the speedy MyMzansi screens](<../../raw/2025-11-09 Behind the speedy MyMzansi screens and the Presidency's race to build a digital government.md>)). Per the Operation Vulindlela phase-two Q3 2025/26 progress report **(released 2026-01-30)**, public access was set to begin for **targeted test groups** on high-impact use cases, with the DPI reform pillar rated "on track" ([raw: momentum builds](<../../raw/2026-02-02 Momentum builds on SA's single digital entry point MyMzansi.md>)).

The important caveat: the digital-ID reforms MyMzansi anchors were **behind schedule as of 2026-01-28** — Home Affairs confirmed the identity policy was still under development, and the earlier functional-ID target was set to be missed ([raw: bad news about SA's newest ID book plan](<../../raw/2026-01-28 Bad news about South Africa's newest ID book plan.md>)). So the front end runs ahead of the identity layer it depends on.

## Plans

The Roadmap (Cabinet-approved **2025-03-26**, publicly launched **2025-05-12** — both dates real, six weeks apart) frames the sequencing to a **2030 horizon**: a single digital identity, data-sharing across government, digital payments, and a zero-rated access platform ([wiki: Roadmap](<../../wiki/entities/sa-digital-transformation-roadmap.md>)). Near-term services being sequenced onto MyMzansi include the **digital driving licence** and mDL (physical card validity also extended 5→8 years, "in motion" as of **2026-01-07**) ([raw: digital driving licence](<../../raw/2026-01-07 Digital driving licence coming to South Africa.md>)), and the consolidation of services — digital ID, mDL, SASSA testing, police statements — behind MyMzansi as the single gateway, championed by Ramaphosa as a "digital mega-platform" at **SONA 2026 (Feb 2026)** ([raw: SONA 2026 mega-platform](<../../raw/2026-02-13-sona-2026-digital-mega-platform.md>)). First public rollout was originally targeted for **H1 2026**, a target since under schedule pressure ([wiki: MyMzansi](<../../wiki/entities/mymzansi.md>)).

Worth raising in the meeting: Minister Malatsi's **July 2026** framing that "digital-first must not become digital-only" — MyMzansi must reach the priced-out and offline via low-data, multilingual and offline channels, or the digital state becomes "a premium service layer for the already included" ([raw: digital-first not digital-only](<../../raw/2026-07-13 Digital-first must not become digital-only, says Malatsi.md>)).

## Financing

**The base does not hold a distinct MyMzansi budget line.** What it holds is the anchoring departmental money: Home Affairs tabled **R13.8bn (~$828m at the time) for FY2026/27 (as of 2026-05-20)** — up from ~$615–618m the prior year — for Smart IDs, the digital visa (ETA) and the digital-ID launch, plus a biometric voter-registration drive from 27 May 2026 ([raw: R828m digital-ID budget](<../../raw/2026-05-20-home-affairs-828m-digital-id-budget.md>)). MyMzansi's own prototype was built cheaply and fast on reused open-source components (see below) rather than a bespoke procurement. **If you need MyMzansi's own funding envelope and source, that is not on file — treat it as an open question for the meeting.**

## Relationship with AWS

AWS was a **key technical partner** in the MyMzansi build (its global DPI lead, Pete Herlihy, is named), embedded alongside the DSU as the Presidency built the prototype in 10 weeks on an open-source digital-public-goods stack ([wiki: AWS](<../../wiki/entities/amazon-web-services.md>); [raw: Behind the speedy MyMzansi screens](<../../raw/2025-11-09 Behind the speedy MyMzansi screens and the Presidency's race to build a digital government.md>)). AWS also runs the **Cape Town Region** (its South African cloud region) and holds B-BBEE Level 1 status locally ([wiki: AWS](<../../wiki/entities/amazon-web-services.md>)).

The framing the wiki flags — and a reasonable thing to probe — is the tension of **a US hyperscaler embedded in a state's explicitly "African-led," sovereignty-minded DPI build**. The DSU's own positioning stresses open standards and DPGs precisely to avoid vendor lock-in ([wiki: DSU](<../../wiki/entities/digital-services-unit-presidency-sa.md>)); the open question is how the "borrow, remix, localise" ambition squares with dependence on AWS infrastructure. (Context, not SA-specific: Nigeria's central bank is currently forcing financial data off AWS Cape Town under a localisation mandate — a live illustration of the sovereignty-vs-hyperscaler fault line in the region.)

## Inter-departmental coordination

This is the state's own stated problem, not a side issue. Cabinet's **2025-03-26** approval statement named the target issues as **interdepartmental coordination, outdated systems, overlapping mandates and limited skills/capacity** — i.e. the diagnosis is **institutional fragmentation, not technology** ([raw: Cabinet statement 26 March 2025](<../../raw/2025-03-27-cabinet-statement-26-march-2025.md>)). Coordination mechanisms on file:

- The Presidency's **Inter-Ministerial Committee on Digital Transformation (IMC)** guides the programme to 2030, with **200+ public servants** involved ([wiki: DSU](<../../wiki/entities/digital-services-unit-presidency-sa.md>)).
- **Operation Vulindlela** (Presidency + Treasury) is the cross-cutting reform engine; its digital-transformation workstream was "gathering pace" as of **2026-04-23** ([raw: Operation Vulindlela digital](<../../raw/2026-04-23-operation-vulindlela-digital-transformation.md>)).
- The first concrete instrument under the Roadmap: **SARS, Home Affairs, the BMA and GPW** signed digital-ID collaboration agreements on **2025-04-03**, expressly citing the Roadmap ([raw: SARS/DHA/BMA/GPW agreements](<../../raw/2025-04-03-sars-collaboration-agreements-dha-bma-gpw.md>)).

**The binding constraint to name:** SITA, the State IT Agency meant to host the national e-services portal, was found by a Public Service Commission investigation **(Jul 2026)** to carry **>R2bn in irregular expenditure** plus systemic governance weakness and leadership instability; Malatsi gave it **30 days to produce a recovery plan** ([raw: SITA R2bn](<../../raw/2026-07-06-sita-r2bn-irregular-spending.md>); [raw: 30 days to recover](<../../raw/2026-07-07-malatsi-sita-30-days-recovery.md>)). The design is ahead of the plumbing that has to run it ([wiki: SA × e-government](<../../wiki/intersections/south-africa--dpi-govtech.md>)).

## Interoperability standards

The interoperability rail underneath MyMzansi is **MzansiXchange** — South Africa's government data-exchange platform, built on **Estonia's X-Road**, piloted by the National Treasury in a year-long trial from 2025 under the Roadmap, and launched **2025-10-10** ([wiki: MzansiXchange](<../../wiki/entities/mzansixchange.md>); [raw: MzansiXchange launch](<../../raw/2025-10-10-mzansixchange-launch.md>); [raw: X-Road data exchange](<../../raw/2025-11-05-govt-data-exchange-estonia-xroad.md>)). Key design points to know:

- It is **not a central repository** — it is a federated, real-time, structured data-sharing rail *between* institutions, meant to end the "fragmented, siloed" data management that Treasury DG Duncan Pieterse says has constrained evidence-based policy ([wiki: MzansiXchange](<../../wiki/entities/mzansixchange.md>)).
- The Roadmap lists **interoperability and scalability** as core service principles, and a **national digital-government standards framework is in development** to govern how government systems are designed, built and connected ([wiki: MyMzansi](<../../wiki/entities/mymzansi.md>); [wiki: Roadmap](<../../wiki/entities/sa-digital-transformation-roadmap.md>)).
- The prototype uses reused open standards/DPGs — Silverstripe, GOV.UK Pay/Notify, W3C-style verifiable credentials — chosen partly to keep systems interoperable and avoid lock-in ([wiki: DSU](<../../wiki/entities/digital-services-unit-presidency-sa.md>)).

Broader signal from the base: the recurring finding across African interoperability work (Warwick/Turing study, AfCFTA Digital ID Annex) is that **mature technical standards still fail without interoperable institutions** — governance, not protocol, is usually the bottleneck ([wiki: Standards](<../../wiki/concepts/gov.standards.md>)). That maps exactly onto SA's coordination/SITA problem above.

## "How do different data systems understand each other's content" (semantic interoperability)

This is the sharpest gap in what the wiki holds. The base documents the **transport and trust layer** well — X-Road gives SA secure, authenticated, structured message exchange between institutions (the "how data moves securely" question). It does **not** hold any South-Africa-specific **semantic** standard — a shared data model, common vocabularies/ontologies, or master-data/registry alignment that lets departments interpret each other's fields and codes the same way (the "how systems understand each other's *content*" question). X-Road standardises the pipe, not the meaning carried in it.

The nearest reference points in the base are comparators, not SA facts: enterprise-architecture / interoperability-framework standards elsewhere (Nigeria's NGEA under NITDA; Uganda's renewed GEA and e-GIF for "secure standardised cross-government data exchange") show what a semantic/architecture layer looks like when a state builds one ([wiki: Standards](<../../wiki/concepts/gov.standards.md>)). **Whether MzansiXchange has an equivalent data-model / semantic-interoperability specification is not established in the wiki — a good, concrete question to put to MyMzansi directly.**

## Provenance and confidence

- **Well-sourced:** status/milestones, the AWS partner role, the coordination architecture and SITA constraint, and the MzansiXchange/X-Road transport layer — all rest on multiple dated primary/on-the-record sources reviewed within the last two weeks.
- **Thin / single-sourced:** the financing picture is departmental (Home Affairs), not MyMzansi-specific; MzansiXchange rests on two sources.
- **Not on file (state as open questions):** MyMzansi's own budget and funding source; any SA semantic-interoperability / common-data-model standard; a published contract structure for the AWS relationship.

*Generated 2026-07-23. Snapshot goes stale as the base grows; re-run to refresh.*
