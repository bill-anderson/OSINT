# Sweep manifest — NER (Niger)

- **Batch:** NER-2026-07-17
- **Window:** 2025-01-01 → 2026-07-17 (full window; not previously swept)
- **Sources:** Newspapers — ActuNiger (`actuniger.com`), Le Sahel / ONEP (`lesahel.org`, **state daily — government voice; capture is not endorsement**), both French (N1–N7 in FR). Journals — the fixed 8, J1/J2 by country name (`wearetech.africa` FR+EN).
- **Counts:** 22 staged · 22 dropped (see `sweep/drop-log-NER.csv`).
- **Month-slicing:** not required — Niger is medium-volume; unsliced FR queries returned in-window material without recency-swamping.
- **Yield note:** Niger proved **rich, not thin** — both newspapers and Biometric Update / Connecting Africa / TechAfrica News carried substantial in-window material. `techcabal.com` is **zero for Niger the country** (its "Niger" hits are all Nigeria's *Niger State*). `wearetech.africa` and `techreviewafrica.com` carried only index/regional mentions, no stageable country-specific dated article. Thinness established by probing, not assumed.

Columns: `published | topics | source | title | why-it's-new`

## Digital identity — AES CNIB, e-passport, MOSIP/WURI
- 2026-07-16 | dpi.id, gov.regional | ActuNiger | AES biometric passport: President Tiani first enrollee, enrolment phase launched | **NEW today** — passport phase (distinct from CNIB); 5 passport categories inc. Hadj; DST Police + Al Itisal Aljadid + local partner HASDI; "lancé depuis août 2025"
- 2026-05-07 | dpi.id, gov.regional, gov.legislate | Le Sahel | CNIB-AES mass enrolment launch (25 Apr 2026, Yantala) | State-daily primary; adds fee (4,500 FCFA), biometrics (fingerprint/face/voice/iris), 20-commissariat Niamey rollout, PM enrolled 9 Apr
- 2026-04-27 | dpi.id, dpi.pay | ActuNiger | CNIB-AES: NITA payment kiosks simplify enrolment fees | Payments/logistics layer of enrolment; NITA at ID×payments intersection
- 2026-04-21 | dpi.id, gov.protect | Connecting Africa | Niger's biometric ID rollout gets a thumbs up (critical analysis) | Surveillance/exclusion critique (Sani Suleiman); end-2025 penetration 23.2%; ~US$6 cost
- 2025-05-01 | dpi.id, dpi.registry | Biometric Update | WURI-Niger birth-certificate pilot, Filingué, 21,202 under-fives | **WURI-status answer** — WURI-Niger operationally enrolling May 2025 despite ECOWAS exit; CRVS digitisation
- 2025-02-21 | dpi.id, dpi.registry | Biometric Update | BioEnable powers Niger MOSIP-based national digital ID pilot | **MOSIP/open-source ID track** under WURI-Niger (4 communes, 3,000+ enrolled) — distinct from the Al Itissal/AES CNIB path

## Data protection & governance
- 2025-07-28 | gov.protect, gov.legislate | Le Sahel | Interview: HAPDP president Iro Adamou | **RE-DATING** — DP law now **Loi 2022-59 (16 Dec 2022)** repealing/replacing Loi 2017-28/2019-71; Malabo ratified 23 May 2022
- 2025-05-26 | gov.protect, tech.ai | Le Sahel | *(companion, not separately staged)* HAPDP conference series on AI & cybercrime — see report

## Connectivity — fibre backbone, Starlink, regulation
- 2025-11-17 | infra.connect, infra.store, gov.regional | Le Sahel | Trans-Sahara Fibre Backbone (DTS): 1,031 km received + Tier III national data centre (14 Nov 2025) | State-daily primary; AfDB ~€43m/30bn FCFA; 5 cross-border axes + 88km loop to data centre
- 2026-01-29 | infra.connect, gov.standards | Le Sahel | ARCEP inaugurates continuous mobile-network monitoring platform (28 Jan 2026) | New QoS/regulation tool (TRAFSCAN/QUALCOP/NETFIX); vendor INFOCOM (Tunisia)
- 2026-01-18 | infra.connect, tech.industry | ActuNiger | Airtel Niger launches "Starlink by Airtel" (16 Jan 2026) | Telco-integrated satellite model (Bharti Airtel × SpaceX)
- 2025-09-09 | infra.connect, gov.legislate | ActuNiger | ARCEP crackdown on pirate Starlink "Wifi Zones" | Enforcement under Loi 2018-45; sanctions; ultimatum 3 Oct 2025
- 2025-05-06 | infra.connect, include.access | Le Sahel | NINETEC launches NINE-Starlink kit distribution (30 Apr 2025) | 100% Nigerien Starlink distributor; décret 2020-331 KYC; US Embassy present
- 2025-03-13 | infra.connect, geopol.usa | ActuNiger | Starlink officially available in Niger (13 Mar 2025) | Commercial launch; ties to Oct-2024 SpaceX–junta agreement
- 2025-03-17 | infra.connect, geopol.usa | Connecting Africa | Starlink beams into Niger | Trade-journal companion (body from highlight — re-clip on promotion)

## Data centre, e-gov, critical infrastructure
- 2025-07-24 | infra.cybersec, dpi.govtech, infra.store | Le Sahel | National committee for critical digital infrastructure installed (23 Jul 2025) | Blueprint: PKI, **CNAC national cybersecurity centre (SOC+CERT)**, IXP, gov Tier III data centres, Forensic Lab, fibre backbone
- 2025-03-04 | infra.store, dpi.govtech, gov.policy | Le Sahel | Minister Raliou interview: national Data Center under construction (target 30 Sept) | Primary for national data centre + national digital-development policy (then undrafted/unadopted)

## Payments & fintech
- 2026-06-29 | dpi.pay, finance.mou | Le Sahel | Banque Atlantique Niger × NITA "Bank/Wallet" interoperability (launched 26 Jun 2026) | `pr-wire` flag; bank↔wallet instant transfers; NITA as fintech actor

## AI, cyber, innovation, skills, e-health, rural
- 2025-07-25 | infra.cybersec, gov.policy | Le Sahel | 13th AfricaCERT Handshake symposium, Niamey (24 Jul 2025) | PM Zeine announces **National Cybersecurity Strategy** elaboration + national data centre; ANSI three-pillar framing
- 2026-06-10 | tech.ai, capacity.training, data.statistics | Le Sahel | UN office trains 140 cadres in AI for human security (Illimi Niger, 1–12 Jun 2026) | Multisectoral data platform (gov + UN); INS, ANSI, Interior involved
- 2025-08-04 | tech.innovate, tech.industry | Le Sahel | ANSI: Nigerien startups ecosystem profile | Qwiper, E-Mobility Niger, CodeLoccol, ADN, Africa Ycone, Maria Server
- 2026-07-10 | digital.rural, include.divides | Le Sahel | ANSI "smart villages" digital centre, Tabelot (Agadez) | Rural digital-inclusion field account (World Bank-linked Villages Intelligents)
- 2026-07-09 | dpi.mis, gov.policy | Le Sahel | National e-Health Master Plan 2025-2029 budgeted roadmap validated | 27 structuring projects (HMIS, interoperability, cybersecurity) — dpi.mis absent from wiki NER coverage

## Companion coverage found but not separately staged (same event as a staged item; target outlets)
To keep the queue lean these were not staged; request if wanted. All are target outlets, same event as a staged source:
- Le Sahel `carte-...-chef-de-letat-senrole` (2026-03-27, Tiani CNIB enrolment) — covered by staged CNIB items + connectingafrica analysis
- Le Sahel `carte-...-passeport-aes-piliers-integration` (2025-12-22, ID+passport as AES pillars)
- Le Sahel `telecom-airtel-et-starlink-sallient` (2026-01-19) — companion to ActuNiger Airtel-Starlink
- Le Sahel `deploiement-starlink-...-wifi-zones-reglementation` (2025-10-03) — companion to ActuNiger ARCEP crackdown
- Le Sahel `cloture-13e-africacert` (2025-07-30) + `SIATEG` AI/geospatial week (2025-07-30)
- Le Sahel HAPDP AI/cybercrime conference series (2025-05-26)
- ActuNiger `21169` AfricaCERT symposium (2025-07-25) — companion to Le Sahel AfricaCERT
- TechAfrica News Niger CNIB launch (2026-03-30); TechAfrica News Niger Starlink (2025-03-14); We Are Tech CNIB (2026-03-30) — companions to staged ID/Starlink events
