# Sweep query recipes

Fixed Exa query clusters for the Phase 2 sweep. **The sweep always queries
from this file** — never ad-hoc phrasing — so coverage is even across
countries and the run is repeatable. Tune only between batches (record the
change and date at the foot of this file).

Derived from `wiki/taxonomy.md`: every Level-2 slug maps into exactly one
cluster below, so running all clusters covers the whole taxonomy.

## How to use

- **Newspapers:** run every topic cluster (N1–N7) per paper domain. Query
  shape: domain-scoped semantic search, `{cluster phrasing}`, 25–50 results,
  2025-01-01 → today. **Query in the paper's publication language(s)**: for a
  Francophone/Lusophone/Arabic-only paper run the FR/PT/AR variants and skip
  English (pilot finding: EN passes on FR-only papers return nothing — spend
  the query on a month-sliced FR pass instead). Add English only where the
  paper actually publishes in it.
- **Trade journals:** run the two country recipes (J1–J2) per journal domain,
  substituting the country name (and common variants, e.g. "DRC" /
  "DR Congo" / "Congo-Kinshasa"; "Cabo Verde" / "Cape Verde").
- **Month-slice by default on busy pairs.** Exa fails by *recency-swamping*,
  not saturation: an unsliced J1/J2 on a high-volume domain returned 1–2
  in-window hits from 50 where month-named slices recovered ~35–40 (pilot,
  NGA). For big markets (NGA, ZAF, KEN, EGY) and for any query whose results
  are mostly out-of-window, re-run the query once per month of the window
  ("… in January 2025", etc.). Cost is ~+50% queries for ~3× recall.
- **Verify every date at fetch.** Exa's date filters leak badly (pilot: only
  ~23% of on-domain hits genuinely in-window); the `published` in frontmatter
  comes from the fetched page, never from the search result.
- **techreviewafrica.com** serves no dates to search at all — run J1/J2
  anyway, but expect to date every keeper via fetch; it remains a lead-net
  (see README source table).
- **Regional pass:** run R1–R3 against the 8 journal domains only.

## Newspaper clusters

**N1 — Digital identity & registries** (`dpi.id`, `dpi.registry`, `dpi.mis`)
EN: national digital ID, biometric identity card, civil registration and vital
statistics, population register, land registry, health or education
information system
FR: identité numérique, carte d'identité biométrique, état civil, registre de
la population, registre foncier

**N2 — E-government & data exchange** (`dpi.govtech`, `dpi.exchange`,
`digital.localgov`, `digital.rural`)
EN: e-government services portal, digital government platform, government data
exchange and interoperability, digitalisation of local government and rural
administration
FR: administration électronique, services publics numériques,
interopérabilité des données publiques, numérisation des collectivités locales

**N3 — Data governance & protection** (`gov.protect`, `gov.legislate`,
`gov.policy`, `gov.standards`, `data.statistics`, `data.open`)
EN: data protection law or authority, privacy regulation, national data
strategy or policy, data governance bill, open data initiative, national
statistics modernisation
FR: protection des données personnelles, autorité de protection des données,
stratégie nationale des données, loi sur les données, données ouvertes

**N4 — Connectivity & digital divides** (`infra.connect`, `infra.energy`,
`include.divides`, `include.access`)
EN: broadband rollout, fibre optic network, submarine cable landing, Starlink
or satellite internet licence, mobile network coverage, spectrum, universal
access fund, internet shutdown, electricity for telecom infrastructure
FR: déploiement de la fibre optique, câble sous-marin, internet par satellite,
couverture mobile, fonds d'accès universel, coupure d'internet

**N5 — Data centres, cloud & sovereignty** (`infra.store`, `geopol.usa`,
`geopol.china`, `geopol.eu`, `geopol.india`, `geopol.gulf`)
EN: data centre construction or investment, cloud region, data localisation
and digital sovereignty, government cloud, hyperscaler (Google, Microsoft,
AWS, Huawei, G42) partnership or investment
FR: centre de données, souveraineté numérique, localisation des données,
cloud souverain, partenariat Huawei ou Google ou Microsoft

**N6 — Payments & digital finance** (`dpi.pay`, `finance.new`, `finance.mou`)
EN: instant payment system, mobile money regulation, fintech licence, central
bank digital currency, interoperable payments switch, digital economy
investment or MoU
FR: paiement instantané, mobile money, monnaie numérique de banque centrale,
interopérabilité des paiements, protocole d'accord numérique

**N7 — AI, cybersecurity & skills** (`tech.ai`, `tech.industry`,
`tech.innovate`, `infra.cybersec`, `infra.capacity`, `capacity.literacy`,
`capacity.training`, `capacity.research`, `data.satellite`)
EN: national AI strategy or policy, artificial intelligence regulation,
cybersecurity law or agency, cybercrime, data breach, digital skills and
literacy programme, tech hub or innovation ecosystem, satellite earth
observation programme
FR: stratégie nationale d'intelligence artificielle, cybersécurité,
cybercriminalité, fuite de données, compétences numériques, écosystème
d'innovation

*(PT variants for AGO/MOZ/CPV/GNB/STP and AR for North Africa: translate the
same phrasings; keep the cluster structure identical.)*

## Trade-journal country recipes

**J1 — Government & governance angle**
"{Country} digital ID, digital public infrastructure, e-government, data
protection or data governance news"

**J2 — Infrastructure & economy angle**
"{Country} telecom, connectivity, data centre, cloud, fintech or digital
economy news"

## Regional clusters (journals only)

**R1 — Continental frameworks:** African Union data policy, Malabo
Convention, AfCFTA digital trade protocol, Smart Africa, continental digital
ID or DPI framework, AU AI strategy

**R2 — Regional blocs:** ECOWAS or WAEMU/BCEAO digital and payments
integration, SADC data governance, EAC digital integration, COMESA digital
trade, ECCAS, IGAD digital initiatives, regional interoperability or roaming

**R3 — Cross-border DPI & multi-country rollouts:** cross-border data flows
in Africa, regional instant payment systems (PAPSS), multi-country digital ID
or payments rollouts, pan-African cable or cloud investments

## Change log

- 2026-07-17 — initial version, pre-pilot.
- 2026-07-17 (post-pilot) — month-slicing made default for busy pairs;
  newspaper queries now language-of-publication first (skip EN on FR/PT/AR-only
  papers); date-verification-at-fetch and techreviewafrica notes added.
  Basis: TCD/SEN/NGA 2025-Q1 pilot.
