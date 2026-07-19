# MWI sweep manifest — batch MWI-2026-07-17

- **Window:** 2025-01-01 → 2026-07-17
- **Sources:** Newspapers — Malawi24 (malawi24.com), The Times/Times Group (times.mw), both English (N1–N7 run in English). Journals — fixed-8, J1–J2 each.
- **Counts:** staged **39** · dropped **11** (drop-log-MWI.csv)
- **Per-domain yield (staged):** malawi24 14 · times.mw 7 · itweb.africa 8 · techafricanews 6 · wearetech.africa 2 · techreviewafrica 1 (pr-wire) · biometricupdate 1. **Thinness established, not assumed:** techcabal.com (only out-of-window 2024 hit → 0 in-window), connectingafrica.com (no MWI hits surfaced), telecomreviewafrica.com (only out-of-window/regional → 0 MWI-specific in-window).
- **Month-slicing:** not needed — medium-small market; single topic/country queries returned in-window items without recency-swamping.
- **Dates:** all `date_source: source`, `date_precision: day`. malawi24 & techafricanews carry YYYY/MM/DD in URL; times.mw/itweb confirmed via fetched body + byline datelines; techreviewafrica via explicit "Date:" field. No proxy dates.
- **Note:** cajnews, mwnation, nyasatimes, malawifreedomnetwork, businessmalawi, developingtelecoms, datacenterdynamics, iafrica, technomag, spaceinafrica etc. recurred heavily but are **off-scope** (neither the two papers nor the fixed-8 journals) — not staged. Several duplicate in-scope stories anyway (Huawei $180m; data-sharing regulation; national data centre launch).

---

## Digital identity & civil registration (dpi.id / dpi.registry)
`published | topics | source | title | why-it's-new`

- 2026-07-06 | dpi.id, gov.protect | times.mw | Digital IDs poised to go live in September | NRB confirms **September** launch of mobile digital ID; PS Machika; complements/adds to held July-13 items
- 2026-06-11 | dpi.id | itweb.africa | Malawi to unveil digital IDs in September (Nzika Wallet) | **Names the app — Nzika Wallet**; digital IDs won't need renewal, unlike plastic cards
- 2026-01-16 | dpi.registry, dpi.id | malawi24 | K17.8bn push to register 4.6 million children | Costed birth-registration campaign figures (7 phases, 25 districts, K5.4bn allocated FY25/26)
- 2025-10-27 | dpi.id, gov.policy | biometricupdate | NRB 2025–2030 Strategic Plan / SDG 16.9 blueprint | **Six-pillar** universal-legal-identity strategy detail (launched Sept 2025)
- 2025-05-26 | dpi.id | techafricanews | Malawi sets 2026 target for nationwide digital ID | ID4Africa AGM announcement; early baseline of the mobile-ID plan
- 2025-01-07 | dpi.id, dpi.exchange | times.mw | ID system said to be key to digital growth | ICTAM urges national-ID integration with digital platforms; NSFI III 95%-by-2028 context

## Data governance & protection (gov.protect / gov.legislate)
- 2026-07-16 | gov.protect, gov.legislate | malawi24 | MACRA targets stronger data protection compliance | Draft **registration-fee** regs (K50,000–K7m by turnover); mandatory DPA registration
- 2026-07-14 | gov.protect, gov.legislate | itweb.africa | Malawi advances data protection framework | Same Mount Soche consultation, USD fee figures (~$29–$4,000+); PS Msusa / DPA head Chiwoni
- 2026-03-26 | infra.cybersec, gov.protect | techafricanews | Malawi secures World Bank backing for cyber & data protection | WB TA; plan to spin **DPA & MwCERT into independent institutions**

## E-government, data exchange & digitalisation (dpi.govtech / dpi.exchange / digital.localgov)
- 2026-06-11 | dpi.exchange, gov.legislate | itweb.africa | Malawi devises operational rules for data exchange platform | **Government Data Sharing Regulation** for Boma Lathu; encryption, DSAs, audit trails
- 2026-06-09 | infra.connect, geopol.china, finance.new | malawi24 | Malawi eyes wider digital access in $180m Huawei deal | Proposed 4-yr **US$180m Huawei** ICT plan; 28-district ring-protected network + one-stop portal
- 2026-04-01 | dpi.govtech, gov.policy | malawi24 | PPDA rolls out mandatory e-procurement (MANePS) | **Mandatory** national e-procurement live 1 Apr 2026
- 2026-01-27 | gov.policy, dpi.govtech | times.mw | ICT sector eyes policy enforcement (2026 outlook) | ESB interoperability pressure; National Single Window (May 2025); zero-rating idea
- 2026-01-13 | dpi.govtech, dpi.id | times.mw | The year ICT sector grappled with implementation woes | 2025 review: passport/Madras $29.9m saga, **MACRA misinformation-tracking system**, MEC 6,500 election devices, ESB failure
- 2025-05-20→(2026-05-20) | digital.localgov, gov.policy | malawi24 | NLGFC/E-Gov sensitizes Dowa Council on ICT policy | **First ICT policy for Local Authorities** (validated 4 May 2026)

## Connectivity, spectrum & satellite (infra.connect / include.divides)
- 2026-05-22 | infra.connect, finance.new | techafricanews | Airtel Malawi eyes satellite connectivity (27th AGM) | Airtel FY25: MK50.8bn capex, 58 new sites, 5G on 111 sites/10 districts; satellite interest
- 2026-04-17 | infra.connect, include.divides | malawi24 | Malawi schools have no internet (UNICEF/Giga) | **85% of 9,000 schools** limited/no internet; 900 with none; no budget line critique
- 2026-03-26 | infra.connect, include.divides | techafricanews | DMAP to roll out 90+ telecom towers | **1,000+ towers needed** nationally; USF funding gap
- 2025-07-26 | infra.connect, geopol.china | malawi24 | Chiyamwaka hails TNM 5G rollout (Malawi 2063) | TNM 5G launch (Huawei partner); MIP-1 framing
- 2025-06-26 | infra.connect, gov.policy | techafricanews | MACRA slashes spectrum fees by 20% | AIP-model revision; lower entry barriers
- 2025-06-25 | infra.connect, include.access | wearetech.africa | 8.5m benefit from Digital Foundations Project (WB brief) | Journal write-up of WB results brief; bandwidth $460→<$10/Mbit/s

## Data centres, cloud & sovereignty (infra.store)
- 2026-06-06 | tech.industry, finance.new | malawi24 | Malawi's ICT exports soar to K270bn (ICTAM Expo 2026) | ICT services exports US$70m (2020)→US$154m (2023); Sparc export blueprint
- 2026-05-01 | infra.store | malawi24 | Sparc moves to end reliance on offshore data | New commercial **Sparc data centre** in Lilongwe; sovereignty framing
- 2026-03-06 | infra.store, infra.connect | itweb.africa | TNM mulls third datacentre + launches VoLTE | TNM 3rd data centre plan; VoLTE launch 5 Mar 2026

## Payments & digital finance (dpi.pay)
- 2026-04-16 | dpi.pay, gov.policy | itweb.africa | Malawi unveils digital payments roadmap | **RBM NPS Vision & Strategy 2026–2030**; cyber, ISO 20022, regional integration
- 2026-03-30 | dpi.pay, data.statistics | times.mw | K38tn transacted via mobile money (2025 NPS Report) | **K37.9tn (+94%)**, 19.9m subs; merchant payments only 7.7%; limit hikes
- 2026-06-24 | dpi.pay, digital.rural, finance.mou | itweb.africa | Airtel Money digitises farmer payments (Admarc) | Airtel Money–**Admarc** agri value-chain payments
- 2025-07-16 | dpi.pay, gov.legislate | malawi24 | CFTC orders TNM Mpamba to open e-ticketing | **Interoperability-enforcement** ruling vs mobile-money exclusivity
- 2025-06-17 | dpi.pay, finance.new | malawi24 | PayChangu, Centenary Bank launch instant bank transfer | **Malswitch-powered** instant transfers via \*632# USSD; up to MWK 500m
- 2026-04-24 | dpi.pay, tech.innovate | wearetech.africa | PayChangu targets SME growth (profile) | Aggregator profile — homegrown fintech founded 2021

## AI, skills & innovation (tech.ai / capacity / tech.innovate)
- 2026-07-10 | tech.ai, dpi.id, gov.protect | itweb.africa | Malawi explores AI, digital IDs collaboration (MACRA–UNDP) | National-ID↔SIM verification integration; responsible AI; digital skills
- 2026-06-24 | tech.ai, data.open | techafricanews | Malawi launches Chichewa AI initiative | **Low Resource Language Data Trust** (World Bank + Gates Foundation)
- 2025-12-05 | digital.rural, dpi.exchange | times.mw | Connecting farmer data | Farmer-ID/**NAGDI** agricultural-DPI analysis; PICSA/FISP/Zaulimi silos
- 2025-11-10 | infra.connect, tech.ai | times.mw | TNM turns 30, sets ambitious plans | **AI labs** plan; 85% pop coverage; forex constraint
- 2025-11-19 | tech.innovate, tech.ai | malawi24 | K75.5m for 2025 Innovation Jam (NBM–ICTAM) | "AI for Sustainable Development"; 3-yr ICTAM MoU
- 2026-04-22 | tech.innovate, gov.policy | techreviewafrica *(pr-wire)* | National ICT Innovation Awards | Awards event; flagged pr-wire
- 2026-01-07 | capacity.training | malawi24 | Airtel Nzeru Fund STEM scholarships | 25 STEM scholarships at MUST

## Consumer / access (infra.connect / include.access)
- 2026-07-17 | infra.connect, include.access | malawi24 | Hundreds sign MACRA internet petition | Consumer petition on internet pricing/data-billing transparency (885 signatures)
