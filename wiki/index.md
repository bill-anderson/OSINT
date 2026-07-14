# Data Landscapers Intelligence Wiki — master index

A compounding intelligence base on **data governance and digital transformation
across all 54 African states**. Built and maintained by the agent per
[CLAUDE.md](../CLAUDE.md); the human curates sources and directs analysis.

## Authorities (controlled vocabularies)

- **Places** — [countries.csv](countries.csv) — 54 ISO-3 countries + 8 `X__` regions.
- **Subjects** — [taxonomy.md](taxonomy.md) — 10 Level-1 categories, ~36 Level-2 slugs.
- **Lens** — `sovereignty`, `colonialism`.
- **Entity types** — `company` `organisation` `government-body` `initiative` `person` `deal` `resource` (a standing data asset — database/dataset/registry/tool/portal, e.g. [[peeringdb]]) `instrument` (a published standard, taxonomy, framework, or policy/legal instrument, e.g. [[world-bank-theme-taxonomy]], [[popia]]).

## Faceted navigation

- [places-index.md](places-index.md) — browse by place (country / region).
- [topics-index.md](topics-index.md) — browse by subject.
- [entities-index.md](entities-index.md) — browse by entity.

## Operations

- [log.md](log.md) — append-only operation log and open contradictions.

## Page types & folders

| Folder | Page type | Notes |
|---|---|---|
| `new/` | (intake queue) | Unprocessed clips land here; drained on ingest. Folder = state. |
| `raw/` | source | Admitted sources, flat, `YYYY-MM-DD`-prefixed; immutable after ingest. |
| `_leads/` | (parked) | Non-source material (AI syntheses etc.) to mine, not compile. |
| `wiki/concepts/` | concept | One page per subject slug. |
| `wiki/places/` | place | 54 country + 8 region hubs (one type). |
| `wiki/entities/` | entity | Companies, orgs, gov bodies, initiatives, people, deals. |
| `wiki/intersections/` | intersection | Topic × place — created lazily when substantial. |

## Status

**As of 2026-07-12 (day 5):** ~479 sources of record, 422 entity pages, 45 place hubs
(43 countries/regions + new **SYC**, **XCA**), 35 concept pages, 12 intersections. Day-5 added
62 clippings + 4 batch PDFs (cross-border payment rails, SA digital-ID, Kenya connectivity/cloud,
LEO satellite entrants, Nigeria data-rights, AU–EU AI governance, Africa CDC CDR, a Research ICT
Africa reference tranche incl. Gillwald's GISW WSIS+20 chapter, and ICJ Kenya's DPI/human-rights
report) — see [log.md](log.md) for the full batch record and open contradictions, and
[places-index.md](places-index.md) for the current hub roster. History below is retained as-is.

Initialised 2026-07-10. **~129 sources of record ingested** (as of 2026-07-10) — plus
**instrument** entities. **The overnight backlog batch (2026-07-10)** added the
**Strive Masiyiwa / Cassava / Econet / Liquid C2** cluster, the **Data Landscapers**
own-analysis corpus (9 essays + 2 `/lab` datasets, admissible as expert analysis after the
CLAUDE.md "author's own work" amendment — with author [[bill]] / publisher
[[data-landscapers]]), the **AWS Outposts Rwanda** thread, the **MOSIP/Ethiopia** flagship,
the **US-aid-freeze** data-systems shock ([[usaid]] / [[development-gateway]]), and reference
instruments ([[itu-global-connectivity-report-2025]], [[world-development-report-2025]]).
Earlier counted sources:
the DZAP
World Bank PAD, the Eaves Tech Policy Press op-ed, a first 2026-07-10 batch of **14**, a
second batch of **10** current-affairs items (07-06 → 07-09), and a large third
**2026-07-10 batch of 43** — AI geopolitics (US–Kenya TPD, Pax Silica, UAE $1bn, Google's
$1bn+ summit, Rwanda/Ethiopia national AI institutions), the data-centre capacity crunch
(Microsoft–G42 Kenya stall, SA data-centre policy, Equinix Cape Town), East/Southern
African connectivity (Seacom Nairobi–Kampala, Powertel–Paratus, Telecom Namibia–Angola,
Starlink/"Who Owns Africa's Sky"), DPI/ID (DR Congo RDC-PASS, Nigeria NIN 130M, MOSIP–Fime,
ID-interoperability study), data protection (Meta–NDPC), open data (Kenya data marketplace,
Zambia open-source), and comparative EU tech-sovereignty analysis.

Country hubs now: [[ZAF]] [[ZMB]] [[NGA]] [[KEN]] [[GAB]] [[RWA]] [[MAR]] [[GHA]] [[MWI]]
[[NAM]] [[SLE]] [[ETH]] [[TCD]] [[COD]] [[SWZ]] [[ZWE]] [[AGO]]; region hubs [[XAF]]
[[XSS]] [[XEA]] [[XGL]]. An earlier attempt (DHIS2 internal notes) was unwound as
inadmissible. Parked in `_leads/`: the CBN circular (primary) and one sponsored
SA-operators op-ed.

**Instruments batch (2026-07-10).** CLAUDE.md was amended to add the **`instrument`**
entity type (published standards/taxonomies/frameworks/policy-legal instruments). The 10th
"latest batch" ingested **9 sources** (7 clippings + the Biometric Update **MOSIP**
explainer PDF + the UNDP **"Digital Public Infrastructure in Africa"** report PDF) and the
first **2 instruments**: the **[[world-bank-theme-taxonomy]]** — *reversing the earlier
discard of `wb-taxonomy-2025.pdf`, now that a home exists* — and **[[popia]]** (SA data-
protection law). New entities also incl. [[anthropic]], [[trendai]], [[itu]],
[[partner2connect]], [[smart-africa]], [[afnic]]. New intersection:
[[south-africa--gov-protect]].

**Taxonomy updates (2026-07-10):** **`geopol.gulf`** adopted for UAE/Gulf activities
(concept [[geopol.gulf]]); the **`resource`** entity type added for standing data assets —
**PeeringDB** is now captured as a resource profile ([[peeringdb]]). See [log.md](log.md).
