---
type: intersection
title: Nigeria × Data Storage
place: NGA
topic: infra.store
places: [NGA]
topics: [infra.store, infra.energy, gov.policy, gov.legislate, gov.protect, tech.ai, geopol.usa]
entities: [[kasi-cloud], [nsia], [ncc], [equinix], [africa-data-centres], [cbn], [galaxy-backbone], [fccpc], [fringe-infrastructure], [unicloud-africa], [backbone-connectivity-network-nigeria], [nigeria-eqguinea-subsea-cable]]
lens: [sovereignty]
status: active
last_reviewed: 2026-07-20
sources: [[2026-05-22 Why global hyperscalers are avoiding Nigeria despite Africa's biggest market], [2026-02-26 Lagos Is Getting a $250 Million Hyperscale Data Center. Here's Why Nigeria Still Can't Power the Cloud], [2026-05-21 Africa Data Center Investment 2026 The $4.5B Race and the Power Problem], [2026-07-10 Nigeria tests data sovereignty as foreign tech firms facing probe], [2026-07-10 CBN's Data Localisation Directive Puts Nigerian Fintechs In A Cloud Dilemma], [2025-09-10-1gov-cloud-galaxy-backbone], [2026-03-05-cassava-national-sovereign-cloud], [2026-06-10-21st-century-china-mobile-sovereign-cloud], [2025-12-08-data-centre-capacity-400mw-2030-verraki], [2026-05-05-gbb-ondi-subsidised-sovereign-cloud-startups], [2026-05-28-kasi-cloud-los1-hyperscale-flagoff], [2025-03-24-visa-data-centre-1-billion], [2025-11-10-equinix-lg3-22m-lagos-data-centre], [2025-01-14-aws-accepts-naira-payments], [2025-03-20-rack-centre-data-sovereignty], [2026-04-07 NITDA Assumes Control Of NGEA Infrastructure], [2026-07-01 Strategy Ahead of Infrastructure, Part I Inside the CBN's June 2026 Payments Circular], [2026-07-07 CBN's local data order puts Nigeria's data centres to test], [2026-02-05 Inside Kasi Cloud, Nigeria's first 100MW AI data centre in Lagos], [2026-01-08 Nigeria's digital future gets a boost with Fringe's Ikoyi Metro EDGE launch], [2026-02-24 Nigeria, Equatorial Guinea subsea cable strengthens connectivity], [2026-07-11 AWS in Africa]]
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
  AWS's sole African region is **Cape Town** ([[2026-07-11 AWS in Africa]]).
- **The power penalty.** The grid has **never reliably exceeded 6 GW for ~230m people** (~41%
  availability); diesel backup runs **$0.40–0.50/kWh** (vs $0.05–0.10 grid in ZAF/KEN) and adds
  ~40% to opex; construction is **~$12/watt**. Power — not land or capital — is the ceiling on the
  estate. Source:
  [[2026-05-21 Africa Data Center Investment 2026 The $4.5B Race and the Power Problem]].
- **The forcing function.** The [[cbn]] directive requiring banks/fintechs to host transactional
  data in Nigeria by **1 Jan 2027** turns a policy question into a capacity race: NIBSS put 2024
  e-transactions at **₦1.07 quadrillion (~$702bn)**. Source:
  [[2026-07-10 Nigeria tests data sovereignty as foreign tech firms facing probe]]. A July-2026
  analysis frames the push as domestication that is not automatically protection — it sits in
  tension with the cross-border-transfer safeguards of [[nigeria-data-protection-act-2023]] —
  urging encryption/key-control and hybrid hosting over pure geography, since hyperscalers still
  concentrate full-scale African DCs in South Africa. Source:
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

## The sovereign-cloud push (2025-2026)

The "racks come home, cloud stays foreign" gap is exactly what a wave of **sovereign-cloud** initiatives now
targets — reinforced by the CBN/NDPC data-localisation mandates (see [[nigeria--gov-protect]], [[nigeria--dpi-pay]]).

- **Government: 1Gov / Galaxy Backbone (2025-09).** The FG began full rollout of a **sovereign 1Government Cloud
  (1Gov)** via **[[galaxy-backbone]]** — GovDrive, GovMail (encrypted), GovECMS and GovE-Sign — across ministries,
  to cut foreign-system reliance and recurrent costs. It later paired with **ONDI** (NITDA) to give **iHatch
  startups subsidised sovereign cloud** on the Galaxy Cloud Platform. Sources:
  [[2025-09-10-1gov-cloud-galaxy-backbone]], [[2026-05-05-gbb-ondi-subsidised-sovereign-cloud-startups]].
- **Commercial sovereign cloud.** **[[cassava-technologies]]** launched a **National Sovereign Cloud** for
  African governments (cloud + cyber + AI compute + local-language models + an AI Institute); and indigenous
  **21st Century Technologies** partnered **China Mobile International** to expand sovereign cloud + AI in Nigeria
  ("much data still hosted outside the country") — a data-sovereignty push riding partly on a **Chinese** stack
  ([[geopol.china]]). Sources: [[2026-03-05-cassava-national-sovereign-cloud]],
  [[2026-06-10-21st-century-china-mobile-sovereign-cloud]].
- **Hyperscale build-out.** **[[kasi-cloud|Kasi]] LOS1** (Lekki, ~4ha by six subsea landings incl. Equiano/2Africa)
  flagged off as **West Africa's first hyperscale-ready, AI-capable** platform (scaling to ~100MW); **Visa** plans
  a **$1bn**-portfolio Nigeria data centre; **Equinix** added an LG3 build ($22m); **AWS** began accepting
  **naira** (cutting cloud cost for Nigerian firms hosting in its EU region). A Verraki report projects national
  DC capacity **65–86MW → 400MW+ by ~2030** (17 active DCs, 9+ under construction). Sources:
  [[2026-05-28-kasi-cloud-los1-hyperscale-flagoff]], [[2025-03-24-visa-data-centre-1-billion]],
  [[2025-11-10-equinix-lg3-22m-lagos-data-centre]], [[2025-01-14-aws-accepts-naira-payments]],
  [[2025-12-08-data-centre-capacity-400mw-2030-verraki]], [[2025-03-20-rack-centre-data-sovereignty]].

## State hosting, the competition probe, and further builds (2026)

- **Government cloud on a national backbone (2026-04).** Nigeria's **NGEA** government enterprise
  architecture — now run by **NITDA** (built with Korea's KOICA) — is **hosted by
  [[galaxy-backbone]]**, the state carrier, as the "secure, resilient" environment for MDA
  interoperability under **e-Government Masterplan 2.0** — state-owned hosting as govtech substrate.
  See [[dpi.govtech]], [[dpi.exchange]], [[gov.standards]]. Source:
  [[2026-04-07 NITDA Assumes Control Of NGEA Infrastructure]].
- **Sovereignty probe alongside the onshoring deadline (2026-07).** The FG directed the
  **[[fccpc]]** to probe **Meta/Alphabet/X** and GenAI platforms for anti-competitive practices
  (after a press-industry petition; cf. FCCPC's 2025 **$222m** Meta penalty, under appeal) — the
  competition arm of the same sovereignty push as the [[cbn]] onshoring mandate. See
  [[gov.protect]], [[dpi.pay]]. Source:
  [[2026-07-10 Nigeria tests data sovereignty as foreign tech firms facing probe]].
- **Sequencing the mandate against the grid.** Analyst Anjola Adebowale puts **[[ZAF]] at ~70% of
  the continent's digital-infrastructure capacity** and argues localisation rules ([[cbn]],
  **1 Jan 2027**) must be *sequenced* against grid and data-centre milestones, not mandated ahead of
  them — putting Nigeria at ~**26 facilities / ~75 MW**. Operators say physical capacity is *not* the
  constraint; the gap is **local cloud-compute and storage platforms** to replace AWS/Azure/Google,
  plus power and skills, and the "smoothest path" is pulling hyperscalers to deploy **local cloud
  regions**. Sources:
  [[2026-07-01 Strategy Ahead of Infrastructure, Part I Inside the CBN's June 2026 Payments Circular]],
  [[2026-07-07 CBN's local data order puts Nigeria's data centres to test]].
- **More Lagos capacity (2025–26).** **[[kasi-cloud]]**'s Lekki campus is positioned as Nigeria's
  first **AI-purpose-built hyperscale** site (up to **100 MW** at full density, $250m, 2026-02);
  **[[fringe-infrastructure]]** launched **Ikoyi Metro EDGE** (2026-01); and
  **[[unicloud-africa]]**+BDIC built a Makurdi DC (2024). Sources:
  [[2026-02-05 Inside Kasi Cloud, Nigeria's first 100MW AI data centre in Lagos]],
  [[2026-01-08 Nigeria's digital future gets a boost with Fringe's Ikoyi Metro EDGE launch]].
- **A data centre inside the subsea deal (2026-02).** The Nigeria–Equatorial Guinea subsea agreement
  ([[backbone-connectivity-network-nigeria]], [[nigeria-eqguinea-subsea-cable]]) bundles a
  **commercial data centre**, so local hosting rides in on the cross-border cable — localised storage
  to cut the European routing detour. See [[gnq--infra-store]], [[infra.connect]],
  [[gov.regional]]. Source:
  [[2026-02-24 Nigeria, Equatorial Guinea subsea cable strengthens connectivity]].

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
- [[2026-04-07 NITDA Assumes Control Of NGEA Infrastructure]]
- [[2026-07-01 Strategy Ahead of Infrastructure, Part I Inside the CBN's June 2026 Payments Circular]]
- [[2026-07-07 CBN's local data order puts Nigeria's data centres to test]]
- [[2026-02-05 Inside Kasi Cloud, Nigeria's first 100MW AI data centre in Lagos]]
- [[2026-01-08 Nigeria's digital future gets a boost with Fringe's Ikoyi Metro EDGE launch]]
- [[2026-02-24 Nigeria, Equatorial Guinea subsea cable strengthens connectivity]]
