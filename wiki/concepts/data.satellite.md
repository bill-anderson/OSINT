---
type: concept
title: Use of satellite data
slug: data.satellite
places: [AGO, NGA, NAM, ZAF, KEN, UGA, SEN, RWA, MOZ, GAB, CIV, XAF, COD, LSO, TZA, XGL, MLI]
entities: [[amazon-globalstar-acquisition], [globalstar], [starlink], [amazon-web-services], [nigcomsat], [cran], [nasa-harvest], [catherine-nakalembe], [watra], [netumbo-nandi-ndaitwah], [orange], [orange-cote-divoire], [orange-sat], [orange-mali], [intelsat], [eutelsat], [spacecoin], [communications-authority-of-kenya], [ncc], [starlink-airtel-d2c-partnership], [starlink-vodacom-leo-partnership], [airtel-africa], [vodacom], [google], [ggpen], [angosat-2], [angeo-1], [airbus], [conecta-angola]]
lens: [sovereignty, colonialism]
status: active
last_reviewed: 2026-07-18
sources: [[2026-04-14 Amazon's $9bn satellite deal set to benefit Africa], [2026-04-01 Nigeria satellite revenue soars to $2 billion], [2026-03-26 Starlink blocked from operating in Namibia], [2026-03-26 Has Satellite Become Africa's Most Critical Connectivity Infrastructure], [2026-04-13 WATRA rallies Africa for region's $216b digital economy], [2026-03-12 Western AI models 'fail spectacularly' in farms and forests abroad], [2026-02-13 Namibia gets  Chinese satellite ground station], [2026-01-22 Orange Côte d'Ivoire intros satellite broadband], [2026-02-05 Senegal embraces Starlink to connect the future], [2026-03-17-angola-launches-259-million-earth-observation-satellite-project], [2025-12-23-angola-launches-commercial-access-to-angosat-2], [2026-06-11-angola-referencia-africana-em-tecnologias-espaciais]]
---

# Use of satellite data (`data.satellite`)

Satellite as both a connectivity layer (LEO/GEO broadband) and an Earth-observation
data source — and the sovereignty questions each raises about who owns the sky and the
data harvested from it.

## Key material

- **Analysis — satellites as the health-tech enabler in rural Africa (TechAfrica News, 2026-03-12).**
  Thematic explainer: GEO/LEO connectivity (Starlink, OneWeb) as the precondition for rural
  telemedicine, EHR and mHealth; carries **Africa CDC** Chief Digital Advisor **Nsengimana**'s
  on-the-record position that telemedicine investment is the accelerant for UHC-2030. See
  [[dpi.mis]], [[include.access]]. Source:
  [[2026-03-12-techafricanews-satellites-health-tech-rural-africa]].

- **From last resort to core infrastructure (2026-03).** An ST Engineering iDirect
  interview (Omar Diab) argues satellite has shifted from expensive fallback to an
  integral layer of a hybrid, multi-orbit connectivity stack — LEO for high-volume data,
  GEO for latency-sensitive traffic, terrestrial where available — with **>300m** Africans
  still out of coverage. The binding constraint is framed as **economics, not technology**:
  rural ARPU is too low for MNOs to reach the last mile without obligation or subsidy. See
  [[infra.connect]], [[infra.capacity]], [[digital.rural]], [[include.access]]. Source:
  [[2026-03-26 Has Satellite Become Africa's Most Critical Connectivity Infrastructure]].
- **The LEO race: Amazon/Kuiper vs Starlink (2026-04).** Amazon is in advanced talks for a
  **~$9bn** acquisition of [[globalstar]] ([[amazon-globalstar-acquisition]]) to accelerate
  Project **Kuiper** (rebranded **Leo**) against [[starlink]]. Kuiper has **~180** satellites
  in orbit versus Starlink's **>7,000**; the sticking point is Apple's **20%** Globalstar
  stake. The prize for Africa is regulatory: Globalstar already holds spectrum and
  partnerships in **[[ZAF]]**, **[[RWA]]**, **[[MOZ]]** and **[[GAB]]** — a shortcut into
  markets where Starlink spent years negotiating. Starlink is live in **≥25** African markets
  (schools, mining, rural fintech). See [[infra.connect]], [[geopol.usa]], [[finance.new]].
  Source: [[2026-04-14 Amazon's $9bn satellite deal set to benefit Africa]].
- **Sovereign refusal — Starlink blocked in Namibia (2026-03).** **[[cran]]** denied
  [[starlink]] both an operating and a spectrum licence: it met only **three of six** criteria,
  failing on ownership (100% foreign, breaching the **51% Namibian-ownership** rule with no
  ministerial exemption), national security/**data sovereignty**, and compliance history
  (a Nov-2024 cease-and-desist for operating unlicensed). Starlink claims 98.6% consultation
  support and that global shareholding rules bar local ownership; **>30%** of Namibians lack
  internet. CRAN left the door open to other LEO providers that meet its rules. A clear case
  of the sovereignty–access tension. See [[NAM]], [[gov.legislate]], [[gov.protect]],
  [[include.divides]]. Source: [[2026-03-26 Starlink blocked from operating in Namibia]].
- **[[NGA]] Sovereign GEO operator surges (2026-04).** State-owned **[[nigcomsat]]** reported
  revenue rising from **$650m (2023)** to **>$2bn (end-2025)**, moving beyond its
  single-satellite legacy into broadband, broadcasting and enterprise across African markets.
  Two new high-capacity Ka/Ku-band satellites, **NIGCOMSAT-2A/2B** (2028/2029), are procured
  to back **5G backhaul** and national-security/intelligence operations, replacing the ageing
  NIGCOMSAT-1R (2011, near its 15-yr design life). Nigeria still trails Egypt (Nilesat) and
  South Africa (Sentech) on satellite count. See [[infra.connect]], [[infra.capacity]],
  [[tech.industry]]. Source: [[2026-04-01 Nigeria satellite revenue soars to $2 billion]].
- **Regulating the non-geostationary layer (2026-04, [[XWA]]).** At its 4th Working Groups
  Meeting in Ouagadougou, **[[watra]]** (16 West-African regulators) finalised technical
  reports including on **non-geostationary satellite (NGSO) regulation** — alongside 5G,
  subsea-cable resilience and cybersecurity — as practical tools for the region's **$216bn**
  digital economy. Signals a move to bring LEO operators under a coherent regional framework.
  See [[gov.regional]], [[gov.policy]], [[infra.connect]]. Source:
  [[2026-04-13 WATRA rallies Africa for region's $216b digital economy]].
- **Earth-observation data must be locally trained (2026-03).** NASA Harvest's
  **[[catherine-nakalembe]]** ([[nasa-harvest]]) found Western-trained AI could not recognise
  local crops from satellite imagery in western Kenya; her team collected **>5m** ground
  images in two weeks to build cropland maps for **[[KEN]]**, **[[UGA]]** and **[[SEN]]**.
  Most models are trained on European/US data and are "largely useless unless adapted" —
  ignoring high internet costs, low bandwidth and missing labelled data. The digital-farming
  market (**~$30bn** 2024 → **~$84bn** 2034) risks a **digital colonialism** in which big tech
  extracts data from poor communities to train proprietary models sold back to them. The
  satellite-*data* case: the imagery is abundant, but the value turns on local labelling and
  ownership. See [[tech.ai]], [[digital.rural]], [[include.divides]], [[capacity.research]].
  Source: [[2026-03-12 Western AI models 'fail spectacularly' in farms and forests abroad]].

- **Satellite for rural reach — the operator play (2026-01, [[CIV]]).** [[orange-cote-divoire]]
  launched **[[orange-sat]]** with **[[eutelsat]]** (KONNECT) to serve rural "white areas" beyond 4G
  and fibre, folding satellite into a hybrid fibre+mobile+satellite portfolio — the operator-led
  version of the multi-orbit shift, aimed at provinces still on 3G. See [[infra.connect]],
  [[digital.rural]], [[include.divides]]. Source:
  [[2026-01-22 Orange Côte d'Ivoire intros satellite broadband]].
- **[[SEN]] Starlink's 26th African market (2026-02).** [[starlink]] went live in Senegal — its 26th
  African deployment (Musk on X) — as the government framed LEO broadband as a lever for closing
  "digital deserts," adding to the ≥25 markets already served. The launch sharpens the
  sovereignty-vs-access tension running through LEO expansion: Senegal embraces entry where **[[NAM]]**
  and [[ZAF]] refuse it over ownership rules (cf. the [[cran]] denial above). See [[infra.connect]],
  [[digital.rural]], [[include.divides]]. Source:
  [[2026-02-05 Senegal embraces Starlink to connect the future]].
- **[[NAM]] Sovereign Earth-observation ground station (2026-02).** China handed Namibia its **first
  satellite data-receiving ground station** (Telecom Earth Station, Windhoek) for agriculture,
  disaster management and environmental monitoring — **wholly Namibia-run**, with China training
  technicians ([[netumbo-nandi-ndaitwah]]). Namibia is drafting a **Space Science & Technology Bill**
  and casts its clear skies as a "sovereign advantage" for space observation. The satellite-*data*
  (not connectivity) case — with a [[geopol.china]] soft-power frame on a foreign-built asset. See
  [[tech.industry]], [[data.statistics]]. Source:
  [[2026-02-13 Namibia gets  Chinese satellite ground station]].

- **Starlink turns incumbents into partners (2026-01).** [[starlink]] signed two continent-scale
  deals: **[[airtel-africa]]** (Direct-to-Cell + backhaul across 14 markets, 2026 launch;
  [[starlink-airtel-d2c-partnership]]) and **[[vodacom]]** (LEO backhaul + equipment resale across
  25 countries; [[starlink-vodacom-leo-partnership]]) — extending rural reach while keeping the
  space layer offshore. Starlink live in 25 African countries as of Nov 2025 (incl. [[ZAF]],
  [[KEN]], [[COD]], [[LSO]], [[TZA]], [[MOZ]]). See [[infra.connect]], [[finance.mou]]. Source:
  [[2026-01-01 Starlink Partners with Airtel & Vodacom From Rival to Ally]].
- **A blockchain-integrated LEO entrant — Spacecoin (2026-01).** **[[spacecoin]]** secured a
  transmission licence from the **[[communications-authority-of-kenya]]** for satellite-IoT/
  connectivity and continues work under an existing **[[ncc]]** (Nigeria) licence, having launched
  3 more satellites in Nov 2025 (plus pilots in Indonesia/Cambodia). A smaller, novel operator
  against Starlink's dominance. See [[KEN]], [[NGA]], [[infra.connect]], [[tech.industry]]. Source:
  [[2026-01-13 Spacecoin strikes major deals to launch satellite internet]].

- **Met/EO data as the real substrate — India's monsoon AI (Rose Mutiso, 2025-12-19).**
  India delivered its first **4-week-ahead monsoon forecasts** in 150 years using
  **[[google]] NeuralGCM + ECMWF's AIFS** models, reaching **~38m farmers** (about a
  quarter changed plans). Mutiso's lesson for the satellite/EO-data debate: the AI
  worked because of **decades of accumulated meteorological data** and institutional
  networks — the model is the last mile, not the achievement — a caution against
  supply-side "just add AI" thinking. Global/India case ([[XGL]]); read alongside the
  Nakalembe crop-mapping finding above on locally-grounded EO data. See [[tech.ai]],
  [[data.statistics]], [[digital.rural]]. Source:
  [[2025-12-19 Why one of the year's biggest AI-for-development stories isn't actually about AI]].

- **[[AGO]] Angola builds a full sovereign space stack (2025–26).** Under **[[ggpen]]** (and an
  Angolan Space Agency created Oct 2025), Angola runs both layers: **[[angosat-2]]** communications
  (opened to commercial ISPs Dec 2025, anchoring the **[[conecta-angola]]** rural programme — 32 free
  access points, six universities, border-post VSAT, TVWS-to-schools) and a new **[[angeo-1]]**
  Earth-observation satellite by **[[airbus]]** (~**€225m/$259m**, Société Générale-financed, S250
  platform, **>1,000 images/day**; SKP milestone May 2026). GGPEN productises EO — AI + geospatial for
  **asset registers and land-use mapping** into public finance — while **ANGOSAT-3** (EO) sits in the
  2025 procurement plan. A layered sovereignty play blending **European** (Airbus/SocGen) and
  **Chinese** (broadband) poles. → [[angola--data-satellite]]. Sources:
  [[2026-03-17-angola-launches-259-million-earth-observation-satellite-project]],
  [[2025-12-23-angola-launches-commercial-access-to-angosat-2]],
  [[2026-06-11-angola-referencia-africana-em-tecnologias-espaciais]].

- **[[MLI]] Mali — first 4G-over-satellite in Francophone West Africa (2025-05).** **[[orange-mali]]**
  selected **[[intelsat]]** to deliver 3G/4G to hard-to-reach regions by satellite — described as "a
  first in Francophone West Africa" for 4G-over-satellite, judged optimal given the country's size and
  logistics; a later account credits it with reaching **~360,000** remote residents, directly
  addressing Mali's rural connectivity gap (internet penetration ~35%). Satellite backhaul as a
  coverage tool for a low-penetration Sahelian market. See [[MLI]], [[include.divides]],
  [[infra.connect]], [[digital.rural]]. Source:
  [[2025-05-07-techafricanews-orange-mali-intelsat-4g-satellite]].

## Places

[[NGA]] · [[NAM]] · [[ZAF]] · [[KEN]] · [[UGA]] · [[SEN]] · [[RWA]] · [[MOZ]] · [[GAB]] · [[CIV]] · [[XAF]] · [[COD]] · [[LSO]] · [[TZA]] · [[XGL]] · [[MLI]]

## Related

[[infra.connect]] · [[tech.ai]] · [[digital.rural]] · [[include.divides]] · [[geopol.usa]]

## Sources

- [[2026-04-14 Amazon's $9bn satellite deal set to benefit Africa]]
- [[2026-04-01 Nigeria satellite revenue soars to $2 billion]]
- [[2026-03-26 Starlink blocked from operating in Namibia]]
- [[2026-03-26 Has Satellite Become Africa's Most Critical Connectivity Infrastructure]]
- [[2026-04-13 WATRA rallies Africa for region's $216b digital economy]]
- [[2026-03-12 Western AI models 'fail spectacularly' in farms and forests abroad]]
- [[2026-02-13 Namibia gets  Chinese satellite ground station]]
- [[2026-01-22 Orange Côte d'Ivoire intros satellite broadband]]
- [[2026-02-05 Senegal embraces Starlink to connect the future]]
- [[2026-01-01 Starlink Partners with Airtel & Vodacom From Rival to Ally]]
- [[2026-01-13 Spacecoin strikes major deals to launch satellite internet]]
- [[2025-12-19 Why one of the year's biggest AI-for-development stories isn't actually about AI]]
- [[2026-03-17-angola-launches-259-million-earth-observation-satellite-project]]
- [[2025-12-23-angola-launches-commercial-access-to-angosat-2]]
- [[2025-05-07-techafricanews-orange-mali-intelsat-4g-satellite]]
- [[2026-06-11-angola-referencia-africana-em-tecnologias-espaciais]]
