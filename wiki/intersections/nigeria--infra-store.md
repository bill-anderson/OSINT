---
type: intersection
title: Nigeria × Data Storage
place: NGA
topic: infra.store
places: [NGA]
topics: [infra.store, infra.energy, gov.policy, gov.legislate, gov.protect, tech.ai, geopol.usa]
entities: [[kasi-cloud], [nsia], [ncc], [equinix], [africa-data-centres], [cbn]]
lens: [sovereignty]
status: active
last_reviewed: 2026-07-12
sources: [[2026-05-22 Why global hyperscalers are avoiding Nigeria despite Africa's biggest market], [2026-02-26 Lagos Is Getting a $250 Million Hyperscale Data Center. Here's Why Nigeria Still Can't Power the Cloud], [2026-05-21 Africa Data Center Investment 2026 The $4.5B Race and the Power Problem], [2026-07-10 Nigeria tests data sovereignty as foreign tech firms facing probe], [2026-07-10 CBN's Data Localisation Directive Puts Nigerian Fintechs In A Cloud Dilemma]]
---

# Nigeria × Data Storage

Nigeria is Africa's second-largest data-centre market and its biggest single demand signal — a
[[cbn]] localization mandate is forcing financial data onshore ([[nigeria--gov-protect]]) — yet no
global hyperscaler runs a full cloud region in the country. The binding constraints are **power and
policy**, not physical racks.

## What we know (as of 2026-07)

- **The demand.** Nigeria has **~26 data-centre facilities** (18 commercial), **50–56 MW** live
  (~124 MW installed), **Africa's #2 market after South Africa** (~15% of continental capacity),
  targeting **210–300 MW by 2030**; a **>$2bn pipeline** by 2027. Market ~$278m (2024) → ~$671m by
  2030 (15.8% CAGR). Source:
  [[2026-02-26 Lagos Is Getting a $250 Million Hyperscale Data Center. Here's Why Nigeria Still Can't Power the Cloud]].
- **The flagship build.** **[[kasi-cloud]]** (backed by the sovereign wealth fund **[[nsia]]**)
  broke ground on a **$250m hyperscale campus in Lekki, Lagos** — sovereign capital into domestic
  data infrastructure. Others: [[equinix]] (LG3, part of a $100m plan), Nxtra 38 MW, OADC, ADC
  (Eko Atlantic), Rack Centre. Source: same.
- **Why hyperscalers stay away.** No top hyperscaler operates a full cloud region in Nigeria — only
  access points to regions hosted abroad; investment has gone to **Kenya and South Africa** instead.
  Nigeria's telecoms policy is **unchanged since 2000**; the **[[ncc]]** is rewriting the National
  Telecommunications Policy. Barriers: high ICT import duties, power costs, multiple taxation, fibre
  vandalism; Lagos-to-second-city transport can cost more than Lagos-to-South-Africa. A ~20 MW
  bitcoin-mining project **left Nigeria for Ethiopia** over electricity costs. Source:
  [[2026-05-22 Why global hyperscalers are avoiding Nigeria despite Africa's biggest market]].
- **The power penalty.** The grid has **never reliably exceeded 6 GW for ~230m people** (~41%
  availability); diesel backup runs **$0.40–0.50/kWh** (vs $0.05–0.10 grid in ZAF/KEN) and adds
  ~40% to opex; construction is **~$12/watt**. Power — not land or capital — is the ceiling on the
  estate. Source:
  [[2026-05-21 Africa Data Center Investment 2026 The $4.5B Race and the Power Problem]].
- **The forcing function.** The [[cbn]] directive requiring banks/fintechs to host transactional
  data in Nigeria by **1 Jan 2027** turns a policy question into a capacity race: NIBSS put 2024
  e-transactions at **₦1.07 quadrillion (~$702bn)**. Source:
  [[2026-07-10 Nigeria tests data sovereignty as foreign tech firms facing probe]]. A July-2026
  analysis frames the push as domestication that is not automatically protection, urging
  encryption and hybrid hosting over wholesale relocation. Source:
  [[2026-07-10 CBN's Data Localisation Directive Puts Nigerian Fintechs In A Cloud Dilemma]].

### Lagos data-centre cluster — 2025 build-out (backfill)

The physical capacity behind the localisation debate is a fast-growing, still-modest Lagos cluster
(Equinix/MainOne, Rack Centre, Digital Realty, WIOCC/OADC, MTN, Airtel):

- **MTN Sifiso Dabengwa DC (2025-07-01).** [[mtn-nigeria]]'s **$235m**
  **[[mtn-sifiso-dabengwa-data-centre]]** — Phase 1 Tier III, 780 racks, **4.5 MW**, with a
  naira-priced, self-orchestration cloud; scaling to **9–14 MW** (Phase 2, Tier IV). MTN claims
  West Africa's largest Tier III. Sources:
  [[2025-07-01 MTN launches West Africa's largest Tier III data centre with cloud services (Techpoint)]],
  [[2025-07-02 MTN Nigeria launches Tier III Sifiso Dabengwa data centre in Lagos (Developing Telecoms)]],
  [[2025-07-02 MTN Nigeria launches data center in Lagos (Connecting Africa)]].
- **Airtel Nxtra Eko Atlantic DC (2025-08-08).** A planned **38 MW** GPU/AI-ready hyperscale build
  ([[airtel-nxtra-eko-atlantic-data-centre]]), **>$120m**, 3,000+ racks, PUE < 1.4, targeted Q1
  2026. Source: [[2025-08-08 Airtel Nigeria to build 38MW hyperscale data centre in Eko Atlantic (Nxtra)]].
- **Digital Realty LKK2 (2025-08-25).** [[digital-realty]] (ex-Medallion) opened **~2 MW** LKK2 in
  Lekki, interconnecting with LKK1 (the **2Africa** landing station) and LOS1/LOS2. Source:
  [[2025-08-25 Digital Realty launches a 2MW data center (LKK2) in Lagos, Nigeria]].
- **OADC Lagos expansion (2025-03-24).** [[oadc]] (WIOCC) expanding its Lagos facility to **24 MW by
  2027** (~$240m) under a $500m pan-African plan. Source:
  [[2025-03-24 Open Access Data Centres to expand Lagos facility to 24MW by 2027]].
- **Subsea backbone.** Eight subsea cables land in Nigeria (MainOne, SAT-3, GLO-2, ACE, WACS,
  Equiano, 2Africa, NCSCS) — the low-latency connectivity underpinning the DC cluster (accessed
  2026-07-16). Source: [[2026-07-16 Nigeria - Submarine Networks]].

## Reads

- `sovereignty`: onshoring mandates + sovereign-fund-backed builds ([[nsia]]/[[kasi-cloud]]) aim to
  nationalise the infrastructure layer — but with no local hyperscale *cloud* region, the compute
  platforms remain foreign even as the racks come home (cf. [[nigeria--gov-protect]]).

## Links

Place: [[NGA]] · Concepts: [[infra.store]] · [[infra.energy]] · [[infra.connect]] ·
Intersection: [[nigeria--gov-protect]] · Entities: [[kasi-cloud]] · [[ncc]] · [[mtn-nigeria]] ·
[[mtn-sifiso-dabengwa-data-centre]] · [[airtel-nxtra-eko-atlantic-data-centre]] · [[digital-realty]] · [[oadc]]

## Sources

- [[2026-05-22 Why global hyperscalers are avoiding Nigeria despite Africa's biggest market]]
- [[2026-02-26 Lagos Is Getting a $250 Million Hyperscale Data Center. Here's Why Nigeria Still Can't Power the Cloud]]
- [[2026-05-21 Africa Data Center Investment 2026 The $4.5B Race and the Power Problem]]
- [[2026-07-10 Nigeria tests data sovereignty as foreign tech firms facing probe]]
- [[2026-07-10 CBN's Data Localisation Directive Puts Nigerian Fintechs In A Cloud Dilemma]]
- [[2025-07-01 MTN launches West Africa's largest Tier III data centre with cloud services (Techpoint)]]
- [[2025-07-02 MTN Nigeria launches Tier III Sifiso Dabengwa data centre in Lagos (Developing Telecoms)]]
- [[2025-07-02 MTN Nigeria launches data center in Lagos (Connecting Africa)]]
- [[2025-08-08 Airtel Nigeria to build 38MW hyperscale data centre in Eko Atlantic (Nxtra)]]
- [[2025-08-25 Digital Realty launches a 2MW data center (LKK2) in Lagos, Nigeria]]
- [[2025-03-24 Open Access Data Centres to expand Lagos facility to 24MW by 2027]]
- [[2026-07-16 Nigeria - Submarine Networks]]
