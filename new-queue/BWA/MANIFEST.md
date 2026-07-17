# BWA — sweep manifest (`BWA-2026-07-17`)

**Window:** 2025-01-01 → 2026-07-17 · **Staged:** 115 · **Dropped:** 158 (`sweep/drop-log-BWA.csv`)

> Merged from the two half-sweeps (newspapers, trade journals), which ran as
> separate agents writing disjoint files. Same-event twins across the two halves
> are deliberately kept: same event from a different outlet is never a sweep-stage
> drop. Lint #7 adjudicates them at ingest, with full text.

---

## Part 1 — Newspapers

# BWA — newspaper half of the Phase-2 sweep (Mmegi + Sunday Standard)

**Batch:** BWA-2026-07-17 · **Window:** 2025-01-01 → 2026-07-17 · **Queries:** 14 (7 clusters × 2 domains)
**Staged:** 59 · **Dropped:** 90 (see `sweep/drop-log-BWA-papers.csv`)

**Capture caveat (applies to most items):** both domains paywall. Mmegi serves the lede plus 1–3 paragraphs to
unauthenticated fetch; Sunday Standard cuts hard after 1–2 paragraphs ("There's more to this story"). Every body below is the
**complete free-to-read text captured at fetch on 2026-07-17**, with an HTML capture note recording the truncation. Items marked
[CLIP] would benefit from a manual subscriber clip before promotion.

| published | topics | source | title | why it's new |
|---|---|---|---|---|
| 2025-02-05 | data.statistics, finance.mou, data.open | Mmegi | 'MoU to foster data-driven culture in Botswana' | Statistics Botswana × Business Botswana MoU; names acting SG Lucky Mokgatlhe; NSDS/Statistics Act 2009 framing |
| 2025-02-05 | infra.connect, tech.industry, geopol.usa | Sunday Standard | Elon Musk's Starlink an existential threat to local telecoms sector? | First BWA connectivity-market item; subscription decline figures (SB ICT Brief Q4 2023) [CLIP] |
| 2025-02-16 | infra.cybersec | Sunday Standard | Russian intelligence-linked hackers attack Botswana | APT28/Moobot botnet spike in BOCRA's 2024 annual report — no cyber-incident thread in the wiki at all |
| 2025-02-17 | tech.ai, tech.innovate, gov.policy | Mmegi | Could Botswana be a regional digital living lab for tech? | Named analysis; frames BWA as small-market AI/regulatory sandbox [CLIP] |
| 2025-04-16 | infra.connect, infra.store, finance.new | Mmegi | BoFiNet invests P100m in upgrading Botswana's internet gateway | Hard traffic figures: 100Gbps (Feb 2025) vs <8Gbps (2015); London/Joburg IXP upgrades; Gaborone IXP relocation |
| 2025-05-12 | dpi.govtech, gov.policy, infra.capacity | Sunday Standard | Anatomy of a P500 Million e-government fiasco | Auditor General's verdict on the stalled flagship govtech programme — establishes the e-gov failure thread [CLIP] |
| 2025-05-23 | dpi.pay, include.divides, include.access | Sunday Standard | Mascom launches MyZaka Flexi — device financing | Device-affordability angle: 176% mobile penetration but only 49% smartphones (BOCRA 2023). PR-WIRE FLAG |
| 2025-06-03 | infra.connect, include.divides, digital.rural | Mmegi | How satellite connectivity is transforming Botswana's remote communities | Liquid × Eutelsat/OneWeb LEO in remote BWA. Vendor thought-leadership — flag |
| 2025-06-23 | gov.policy, finance.new, infra.energy | Sunday Standard | Gaolathe makes bold case for Botswana's digital and climate vision | VP pitches digital+green agenda at OPEC Fund Forum [CLIP] |
| 2025-07-01 | tech.industry, infra.connect, finance.new | Mmegi | Demand for data, broadband push BTC revenue up | BTCL FY2025: PBT P259m (+30%), revenue P1.49bn, capex/revenue 14.3%→20.2% |
| 2025-07-13 | dpi.pay, gov.legislate, tech.innovate | Sunday Standard | Why Botswana is Africa's emerging crypto and tokenization giant | Crypto/tokenisation framing; boosterish — verify figures [CLIP] |
| 2025-07-16 | dpi.pay, gov.legislate, finance.new | Mmegi | Crypto finds footing, but remains far from legal tender | Two licensed VASPs (Yellow Card, Express Minds) under the Virtual Asset Act 2022; BoB declines legal tender |
| 2025-08-18 | dpi.govtech, gov.policy | Sunday Standard | No need for a new Digital Services Agency. Do more with less! | Establishes that a new Digital Services Agency was under consideration in 2025 [CLIP] |
| 2025-10-06 | infra.store, infra.energy, finance.mou, geopol.usa, geopol.eu | Mmegi | Dutch, US firms to develop solar-powered data centre in Palapye | AAAS Energy (NL) × ChillMine (US) MoU — a second, private data-centre thread beyond BoFiNet |
| 2025-10-15 | dpi.registry, dpi.govtech | Mmegi | Botswana registry faces backlog | Deeds registry still "substantially manual"; workload 9,000→30,000 transactions/yr since the 2017/2018 land Acts; 70% of land is tribal |
| 2025-10-22 | infra.store, tech.industry | Mmegi | BoFiNet's new data centre boosts digitisation | Digital Delta Data Centre commercial pitch; notes BWA's existing data-centre estate |
| 2025-10-27 | data.statistics, data.open, gov.policy | Sunday Standard | A letter to Dr. Khaufelo Lekobane — Statistician General | Names the new Statistician General (Oct 2025) and argues national statistics quality is "worryingly uneven" |
| 2025-11-03 | dpi.pay, dpi.govtech, gov.policy, finance.new | Sunday Standard | Finance Ministry bets P8.8bn on digital discipline | **Major:** NDP 12 PIP — P486m ICT incl. a national payment switch, fintech regulatory sandbox, e-procurement; BURS P4.13bn for e-VAT invoicing |
| 2025-11-12 | dpi.pay, tech.industry | Mmegi | Absa reshapes payments with virtual cards | Multi-currency prepaid virtual card launch |
| 2025-11-17 | geopol.china, tech.ai, tech.innovate | Mmegi | Botswana, China deepen trade cooperation | Trade minister invites Chinese partners into AI/blockchain/deep-tech labs and incubators |
| 2025-11-23 | capacity.training, geopol.china | Sunday Standard | Huawei ICT competition boosts digital skills development | Huawei ICT Academy across UB, BIUST, BA ISAGO, Botho, BAC — the China skills-pipeline thread |
| 2025-11-25 | gov.protect, gov.legislate, infra.store | Mmegi | Govt moves to 'in-house' local data | **Major:** minister plans to amend the DPA to *compel* in-country data storage — explicit data-sovereignty claim |
| 2025-12-12 | tech.ai, infra.connect, include.divides | Sunday Standard | Infrastructure gap puts Botswana on the back foot in the AI boom | World Bank 4C AI-readiness framing; BWA among lowest AI adopters (to Mar 2024). Reference study — cite, don't absorb |
| 2025-12-14 | gov.policy, gov.legislate, tech.innovate | Sunday Standard | Botswana's ICT trajectory: What 2025 taught us | Year-in-review naming the **Draft Digital Services Bill** — a policy instrument the wiki lacks [CLIP] |
| 2025-12-16 | infra.connect, tech.industry, gov.legislate | Mmegi | BTC sets sights on market growth | BOCRA kickstarts the Mobile Number Portability process (Dec 2025) [CLIP] |
| 2026-01-22 | tech.ai, dpi.govtech, gov.legislate | Mmegi | Judges, Courts must embrace AI-driven cases — CJ | Chief Justice commits to training judges on AI/deepfake evidence and to e-filing — AI-and-courts thread |
| 2026-02-11 | gov.protect, gov.legislate | Mmegi | New Data Commission tightens compliance oversight | **Major:** names the first Information and Data Protection Commissioner (Kepaletswe Somolekae); DPA in force since Jan 2025 |
| 2026-02-18 | infra.connect, include.access, gov.legislate | Mmegi | BTC reduces data prices following regulator approval | Full BOCRA-approved tariff table; BOCRA publishes comparative operator pricing; follows May 2025 cost study |
| 2026-02-23 | dpi.pay, gov.legislate, gov.regional | Mmegi | Crypto oversight gaps persist in Botswana | ESAAMLG follow-up: VASP oversight shortcomings |
| 2026-02-23 | dpi.pay, gov.legislate, gov.regional | Sunday Standard | Botswana's digital asset blind spot raises laundering alarm | Same ESAAMLG report, names it (12th Enhanced Follow-Up Report) — both kept per conservative dedup |
| 2026-02-25 | infra.cybersec, gov.legislate | Mmegi | 'Think before you post or face the law' | Police to step up Cybercrime Act enforcement on social media — speech/enforcement angle |
| 2026-03-04 | infra.connect, include.divides, capacity.literacy | Mmegi | Universal Telecom donates Starlink Internet to Marang JSS | Starlink in a school; 300 Mbps; school-connectivity gap detail |
| 2026-03-09 | infra.cybersec, tech.ai, gov.policy | Mmegi | Cyber Drill sounds alarm on AI, IoT and quantum threats | 2026 National Cyber Drill; BOCRA CEO Martin Mokgware on cyber as national risk |
| 2026-03-09 | dpi.pay, gov.regional, dpi.exchange | Sunday Standard | First Capital Bank rolls out instant SADC payments | **Regional:** real-time SADC cross-border receipts — connects to the wiki's SADC interoperability item [CLIP] |
| 2026-03-18 | tech.innovate, finance.new, gov.policy | Mmegi | Botswana launches Scalar programme to bridge innovation funding gap | Botswana Innovation Fund × Scalar × Frost & Sullivan |
| 2026-03-23 | gov.legislate, gov.policy | Sunday Standard | Botswana's tax system, built for tangible goods, now faces the internet | Finance minister frames digital-services taxation as unavoidable [CLIP] |
| 2026-03-25 | capacity.research, gov.policy | Mmegi | Gov't spends P9.5m on research projects | **National Research Agenda approved by Cabinet July 2025**; 45 projects; 8 focus areas, 22 thematic priorities |
| 2026-04-01 | dpi.pay, include.access, finance.mou | Mmegi | Orange Money, Taxi Association partner to digitise public transport | DuelaEasy merchant onboarding of taxis/combis — informal-sector payments formalisation |
| 2026-04-13 | dpi.pay, infra.cybersec | Mmegi | Orange Money, Paymentology strengthen online payment security | Visa 3DS on Orange Money virtual cards |
| 2026-04-29 | dpi.registry, data.statistics, gov.policy | Mmegi | LEA embarks on nationwide SMME registration | Proposed **mandatory SMME registration** and a centralised national SMME database |
| 2026-04-29 | finance.new, tech.innovate | Mmegi | Botswana Tech Fund launches multimillion pula venture vehicle | £50m (P850m) VC fund; Pula Investments (Lansdown) anchor, Launch Africa Ventures adviser |
| 2026-05-06 | infra.store, dpi.govtech | Mmegi | Digital Delta Data Centre to improve public service delivery | Government services migrating to the DDDC; 99.9% availability claim |
| 2026-05-11 | gov.protect, tech.ai, geopol.usa | Mmegi | The new era of data colonialism | Signed column applying the data-colonialism lens; WTO framework critique [CLIP] |
| 2026-05-11 | gov.protect, include.divides, digital.rural | Sunday Standard | The new scramble for Botswana is about data | Data-sovereignty reportage from rural BWA [CLIP] |
| 2026-05-13 | geopol.china, infra.connect, infra.store, tech.ai | Mmegi | Huawei commits to supporting Botswana's digital transformation | Huawei ICT Congress 2026 Gaborone; 5G/cloud/data-centre/cyber positioning |
| 2026-05-13 | infra.cybersec, infra.store, tech.industry | Mmegi | Liquid Intelligent Technologies expands services in Botswana | Liquid/Cassava launches Secure360 cloud+cyber in BWA; a decade in-country — links to the wiki's Cassava holdings |
| 2026-06-02 | gov.legislate, tech.industry, geopol.usa | Mmegi | BURS looks to tax global digital services providers | **Remote Service VAT Act in force 2026-06-01**; 14% VAT on non-resident digital services; ~P450m/yr target |
| 2026-06-08 | dpi.mis, dpi.govtech, digital.rural | Mmegi | Gov't to unveil long-overdue digital labour market platform | Labour Market Information System nearing go-live; rural jobseeker access rationale |
| 2026-06-15 | dpi.exchange, dpi.mis, gov.regional, digital.rural | Mmegi | Botswana moves to strengthen agricultural data integration | **Regional data exchange:** SADC/FAO/EU Agricultural Information Management System readiness assessment |
| 2026-06-15 | infra.cybersec, dpi.pay | Sunday Standard | Botswana records lowest suspected digital fraud but... | TransUnion H1 2026: 0.9% of transaction attempts suspected fraud — lowest in Africa |
| 2026-06-22 | dpi.pay, include.access | Mmegi | BSB bets on digital banking to become Botswana's primary bank | State-owned savings bank's digital/agency-banking push; +20 ATMs |
| 2026-06-22 | dpi.govtech, dpi.registry, gov.protect | Mmegi | IEC pushes for digital election reforms | Voter-registration digitisation for 2029; IEC Secretary says Batswana don't want EVMs. **Date flag: see file** |
| 2026-06-22 | infra.cybersec, capacity.literacy | Sunday Standard | Grandparents fight back against cyber scammers | Elderly-targeted fraud; Mascom literacy workshop in Pitsane |
| 2026-07-06 | tech.industry, infra.connect | Mmegi | BTC profit plunges as rising costs bite | BTCL FY2026: PBT P146.2m (−45%), revenue P1.47bn — reverses the FY2025 story above |
| 2026-07-06 | dpi.govtech, dpi.registry | Sunday Standard | Electoral transparency, credibility, and the dark shadow of the EVM | Adds the **Elections Management System (EMS)** detail (replacing 1990s platforms, testing for 2029) [CLIP] |
| 2026-07-06 | finance.mou, finance.new | Sunday Standard | Inside Botswana's trillion-Pula illusion | Investigation into >P800bn of promised capital/MoUs vs delivery — scepticism check on the MoU pipeline [CLIP] |
| 2026-07-07 | gov.legislate, dpi.govtech | Sunday Standard | BURS rolls out sweeping tax law overhaul | New tax laws in force from 1 July 2026 — update on the Remote Service VAT thread [CLIP] |
| 2026-07-13 | gov.legislate, gov.regional | Mmegi | Botswana expands digital tax net | ATAF 2025 report: $514.6m (P7bn) African remote-services VAT; BWA joins the cohort |
| 2026-07-13 | dpi.mis, digital.rural, dpi.exchange | Mmegi | Animal Disease Surveillance Dashboard launched (FMD) | Dashboard integrating **BAITS** (animal traceability) and district vet networks — a live sectoral MIS |

---

## Part 2 — Trade journals

# BWA — trade-journal sweep manifest

**Batch:** `BWA-2026-07-17` · **Window:** 2025-01-01 → 2026-07-17 · **Run:** 2026-07-17
**Queries:** 16 (8 journal domains × recipes J1/J2, country-name-led, no taxonomy filter)
**Staged:** 56 · **Dropped:** 68 (3 already-held · 1 same-outlet-recrawl · 44 out-of-window · 20 off-topic) — see `sweep/drop-log-BWA-journals.csv`

Covers the trade-journal half only. The newspaper half is `MANIFEST-papers.md`.
Files are suffixed with the outlet slug, so same-event-different-outlet pairs sit side by side
for the ingest dedup ladder (lint #7) to adjudicate — this pass kept them per the conservative rule.

---

## wearetech.africa

| published | topics | source | title | why it's new |
|---|---|---|---|---|
| 2025-11-26 | gov.policy, infra.connect, infra.store, dpi.govtech, data.satellite, infra.cybersec | We Are Tech Africa | Botswana outlines new digital priorities under Minister David Tshere | First full statement of the Tshere roadmap: data-price cuts, rural fibre, Digital Delta, 1Gov, BOTSAT-1 commercialisation. Carries ITU IDI 2025 score (82.1, 6th in Africa) and 81.4% internet penetration (end-2025). |
| 2026-03-17 | infra.connect, finance.mou, tech.innovate | We Are Tech Africa | Orange Botswana, SEZA Sign Deal to Upgrade Digital Infrastructure | Deal entity: Orange Botswana–SEZA MoU (13 Mar 2026), IoT/smart-zone connectivity in the special economic zones. |
| 2026-03-18 | tech.innovate, finance.new | We Are Tech Africa | Botswana rolls out innovation accelerator for climate, digital startups | Brief on the Scalar Botswana Innovation Program; names the $150m Africa Decarbonisation Fund link. |
| 2026-04-10 | tech.innovate, infra.energy | We Are Tech Africa | Botswana launches one-year program for climate tech startups | Later re-run of the same programme with the sector list (renewables, energy efficiency, water, data-driven tech); kept as a possible update rather than assumed duplicate. |
| 2026-04-17 | tech.innovate, capacity.training, capacity.research | We Are Tech Africa | University of Botswana Enters VR Space With New Immersive Initiative | UB UniPod + Mafikeng Digital Innovation Hub VR lab — first research/skills item for Botswana in the base. |
| 2026-04-24 | finance.new, tech.innovate | We Are Tech Africa | Botswana Tech Fund Debuts $67.5 Million Vehicle for Southern African Startups | £50m ($67.5m) Gaborone-based VC vehicle backed by Pula Investments / Stephen Lansdown; opens a Botswana finance thread. |

## biometricupdate.com

| published | topics | source | title | why it's new |
|---|---|---|---|---|
| 2025-12-05 | dpi.id, gov.protect, include.access | Biometric Update | African digital ID systems need better governance by stronger independent bodies: Researchers | **Thread-opener.** Reports the IDS "Digital-ID in Africa" study, in which **Botswana is one of ten dedicated country case studies** — the only substantive digital-ID assessment of Botswana the sweep surfaced. Lens: sovereignty + colonialism (the report frames African digital ID as descended from colonial control tools). Gap lead: the underlying IDS report itself is not held. |

## telecomreviewafrica.com

| published | topics | source | title | why it's new |
|---|---|---|---|---|
| 2025-03-13 | data.satellite, tech.innovate, capacity.research, geopol.usa | Telecom Review Africa | Botswana Enters Space Race with BOTSAT-1 Launch | **Thread-opener.** BOTSAT-1 launch (BIUST-built, hyperspectral, SpaceX-launched, ground station in-country). The wiki holds no Botswana earth-observation thread; several later items depend on this. Only in-window Botswana item this domain returned. |

## connectingafrica.com

| published | topics | source | title | why it's new |
|---|---|---|---|---|
| 2025-10-02 | infra.store, infra.energy, tech.ai, finance.mou, geopol.usa, geopol.eu | Connecting Africa | ChillMine, AAAS Energy to launch data center in Botswana | Deal entity: MoU for a solar-powered hyperscaler/AI data-centre campus at the Leupane/Palapye energy hub (250MW solar + 100–400MW BESS). |
| 2025-11-26 | infra.store, infra.connect, tech.industry | Connecting Africa | Botswana launches Tier III certified carrier-neutral data center | Fullest account of the Digital Delta launch — Uptime TCCF Oct 2025, decade-long build history, 18 citizen subcontractors, Zhong Gan main contractor, 308 jobs. (The wiki holds the thinner TechAfrica version; this adds all of the above.) |
| 2026-03-06 | infra.connect, infra.store, tech.industry | Connecting Africa | Botswana's BoFiNet appoints new CEO | Dr. Gaone Seleka replaces Keabetswe Segole — matters because Segole is the named source in the Digital Delta and SADC-IXP items. |

## itweb.africa

| published | topics | source | title | why it's new |
|---|---|---|---|---|
| 2025-05-22 | dpi.govtech, gov.policy, infra.cybersec, geopol.eu, capacity.training | ITWeb Africa | Botswana taps Estonia's blueprint to drive digital growth | Boko state visit to Estonia; Nortal and Baltic Computer Systems already operating in Botswana — an EU-vendor e-gov dependency the base does not record. |
| 2025-05-28 | dpi.pay, dpi.id, include.access, finance.new | ITWeb Africa | SmartSwitch advances financial inclusion in Botswana | Same story as the held Biometric Update piece, different outlet; adds the Ministry of Local Government procurement framing. |
| 2025-09-26 | infra.store, infra.energy, tech.ai, geopol.gulf, finance.new | ITWeb Africa | Botswana's Kala Data Centre near revenue-generating stage | **Second data-centre thread.** Tlou Energy's gas-to-power Kala HPC modules at Lesedi with UAE-based Kala Data FZCO — a Gulf-linked compute build the base has nothing on. |
| 2025-11-06 | infra.connect, tech.industry | ITWeb Africa | Botswana gets 'Always-On Internet' with MTN, Ethica alliance | MTN SDIA launch; carries BOCRA internet penetration ≈73% (2025) — note this conflicts with the 80–81.4% figures in the We Are Tech / Botswana Tech Fund items. |
| 2025-11-27 | infra.connect, gov.regional, infra.store | ITWeb Africa | Botswana seeks to host SADC internet exchange | BoFiNet shortlisted (with one Zimbabwean company) to host the SADC regional internet exchange — a live regional-infrastructure contest. |
| 2025-11-28 | infra.connect, include.divides, dpi.pay, digital.rural | ITWeb Africa | BTC's new reach extends to 61 villages in Botswana | BTC H1 FY26 results: P796m revenue (+10%), P148m PBT, satellite backhaul to 61 villages, SMEGA Pay QR/tap-to-pay. |
| 2026-03-02 | dpi.pay, gov.regional, include.access, finance.mou | ITWeb Africa | FCB Botswana, PayInc partner to drive financial inclusion | Same event as the held Africa Fintech Network item; different outlet, kept for the ingest ladder. |
| 2026-03-13 | tech.innovate, finance.new, infra.energy | ITWeb Africa | Botswana unveils initiative to support start-ups | Scalar Botswana Innovation Program launch with minister Segokgo's framing (note: Segokgo named here, Tshere elsewhere — ministerial attribution worth checking at ingest). |
| 2026-03-18 | gov.policy, dpi.govtech, infra.connect | ITWeb Africa | Botswana's ambitious $300m digital proposal | FY2026/27 ICT ministry budget ≈$319.35m (P473.2m) under NDP 12; Government Data Network Expansion III, e-Services, National Backbone Network. |
| 2026-04-09 | geopol.china, gov.policy, infra.store, tech.ai | ITWeb Africa | Botswana seeks digital partnerships abroad | Tshere at China IT Expo Shenzhen + Huawei HQ, then IAEA/AFRA Vienna. |
| 2026-05-08 | geopol.china, tech.ai, infra.connect, digital.rural, dpi.govtech | ITWeb Africa | Botswana taps Huawei for AI, rural connectivity | **Opens the China thread.** Huawei ICT Congress 2026 in Gaborone; government explicitly endorses Huawei as long-standing partner on broadband, cloud and AI. |
| 2026-05-13 | infra.store, infra.cybersec, tech.industry, tech.ai | ITWeb Africa | Liquid expands service portfolio in Botswana | Liquid/Cassava adds cloud + Secure360 cyber services after a decade in-country. |
| 2026-05-25 | infra.cybersec, gov.legislate, include.divides, infra.connect | ITWeb Africa | Botswana advances robust digital ecosystems | **Thread-opener.** Confirms the **Cybersecurity Act passed November 2025**, establishing a **National Cybersecurity Authority** over critical information infrastructure. |
| 2026-07-14 | infra.connect, tech.industry | ITWeb Africa | Paratus Botswana, Eutelsat showcase resilient connectivity for mining | **PR-wire** ("Issued by Paratus"), flagged `pr_wire: true`. Value is the data point that Paratus Botswana resells Eutelsat OneWeb LEO into mining. Source the Paratus/Eutelsat primary if used. |

## techafricanews.com

| published | topics | source | title | why it's new |
|---|---|---|---|---|
| 2025-04-17 | infra.connect, tech.industry, capacity.training | TechAfrica News | BoFiNet Entrusts P100M Internet Gateway Upgrade to Citizen-Owned Companies | London/Johannesburg→Botswana gateway upgrade, >P100m, awarded to 100% citizen-owned Hexaract and Comsoft. Localisation/sovereignty angle. |
| 2025-05-22 | dpi.govtech, gov.policy, geopol.eu, capacity.training | TechAfrica News | President Duma Gideon Boko Highlights Digital Transformation Lessons on Estonia State Visit | Same event as the ITWeb Estonia item, different outlet. |
| 2025-05-28 | dpi.pay, dpi.id, include.access, gov.standards | TechAfrica News | SmartSwitch Botswana Pioneers Dignified Digital Aid for 75,000+ Beneficiaries | Fullest SmartSwitch account: >75,000 beneficiaries, 1,200+ shops, UEPS accredited by the central banks of Namibia, Ghana and South Africa, new tender pending. |
| 2025-06-09 | infra.connect, include.divides, include.access | TechAfrica News | Botswana Launches Community Wi-Fi in Old Naledi | BTC subsidised community Wi-Fi (P2–P10, 45 free minutes/day) in an underserved Gaborone settlement. |
| 2025-09-17 | dpi.govtech, dpi.pay, dpi.id, gov.policy, include.access | TechAfrica News | Botswana Partners with PEMANDU to Drive Nationwide Digital Transformation | **Thread-opener.** PEMANDU Digital Ecosystem Model Project: a **Citizen Wallet** (unified e-wallet for subsidy delivery) and a **Cryptographic Card** — the closest thing to a Botswana digital-ID/DPI programme the sweep found. |
| 2025-10-09 | gov.regional, gov.policy, gov.protect, dpi.id, infra.store | TechAfrica News | Botswana's Vice President Calls for United African Push Toward Digital Transformation | VP Gaolathe at Digital Government Africa Summit: federated systems, harmonised data-protection/e-signature/digital-ID policy, joint data centres and IXPs. |
| 2025-11-25 | infra.connect, gov.policy, infra.store, data.satellite, dpi.govtech, gov.legislate | TechAfrica News | Internet Prices Slashed, Data Centre Ready: Botswana Accelerates Digital Transformation | Tshere's first media briefing; same event as the We Are Tech roadmap item. Explicitly frames Digital Delta as a **data-sovereignty** asset. |
| 2025-12-11 | dpi.id, gov.protect, include.access | TechAfrica News | New Report Provides Comprehensive Overview of Digital-ID Systems Across Africa | ADRN / Paradigm Initiative synthesis of the same ten-country digital-ID study; Botswana a named case study. |
| 2026-02-18 | infra.connect, gov.regional, finance.mou | TechAfrica News | MTC Namibia and BoFiNet Sign MOU to Strengthen Cross-Border Connectivity | Deal entity: BoFiNet–MTC Namibia MoU (Gaborone, 17 Feb 2026); Buitepos–Ngoma corridor, capacity exchange, IP transit. |
| 2026-03-02 | dpi.pay, gov.regional, include.access | TechAfrica News | PayInc and First Capital Bank Botswana Launch Instant Cross-Border Payments | Botswana **TCIB corridor live** — SADC's regional instant-payment scheme reaching Botswana; inbound from SA (SendHome) and Zimbabwe (ZB Bank). |
| 2026-03-13 | infra.connect, gov.regional, gov.standards, include.access | TechAfrica News | Botswana and Five SADC Countries Slash Roaming Tariffs under One Network Area Framework | BOCRA ONA expansion to Malawi, Lesotho, Mozambique, Zambia, Zimbabwe; roaming cuts of 10–98.6% (BWA–ZMB data −94%), free inbound SMS. Builds on BWA–NAM Aug 2024. |
| 2026-03-17 | infra.connect, finance.mou, tech.innovate | TechAfrica News | Orange Botswana and SEZA Collaboration to Power Digital Economic Expansion | Same MoU as the We Are Tech item, different outlet. |
| 2026-03-18 | dpi.govtech, dpi.exchange, gov.legislate, infra.cybersec, infra.store, infra.connect, data.satellite, tech.innovate | TechAfrica News | Botswana Advances Digital Government with 1Gov-1Citizen Platform Upgrade | **Richest single item in the batch.** Digital Services Act + **Digital Services Authority**; 1Gov-1Citizen e-services 33→52; SD-WAN across 600 sites; GDN expansion; government migration to Digital Delta plus a second data centre planned outside Gaborone; 13,400 facilities on the Local Access Network; Johannesburg–Tlokweng fibre link; BOTSAT-1 commercialisation + SKA participation; BIF's 33 projects. |
| 2026-04-09 | geopol.china, gov.policy, infra.store, tech.ai | TechAfrica News | Botswana Minister Embarks on Strategic China, Austria Visits | Same trip as the ITWeb item, with exact dates (China 7–11 Apr, Austria 13–17 Apr 2026). |
| 2026-04-22 | finance.new, tech.innovate | TechAfrica News | Botswana Tech Fund Targets £50m to Accelerate Digital Growth Across Southern Africa | Fund structure detail: Launch Africa as investment advisor, Pula Investments anchor, Phase One £5m (£1m pre-seed), Botswana Innovation Hub partnership. |
| 2026-05-13 | infra.store, infra.cybersec, infra.connect, tech.ai | TechAfrica News | Liquid Enhances Botswana's Digital Infrastructure with Enterprise-Grade Security and Cloud | Same launch as the ITWeb item; adds the 1,174.08 km fibre / 730 km A1 backbone figures and the decade-in-country marker. |
| 2026-05-25 | include.divides, infra.cybersec, capacity.literacy, gov.legislate | TechAfrica News | Botswana Advances Digital Inclusion Through Technology Donations and Education Support | Same WTISD 2026 event as the ITWeb Cybersecurity Act item, different outlet. |

## techcabal.com

| published | topics | source | title | why it's new |
|---|---|---|---|---|
| 2025-05-01 | dpi.pay, tech.innovate, gov.legislate, include.access | TechCabal | In a sparse fintech landscape, two new startups prepare to make their mark in Botswana | **Thread-opener.** Best account of why Botswana fintech is thin: the P2m (~$150k) banking licence as a hard gate, N2 Pay and Pathetic Inc., the Fintech Association of Botswana, FAB↔SARB talks on a SADC-wide fintech licensing framework. |
| 2026-02-06 | digital.rural, tech.innovate, tech.ai, include.divides, include.access | TechCabal | Brastorne, the startup bringing rural Africans online, is expanding to Ivory Coast | Botswana-origin principal: Brastorne (mAgri/Mpotsa/Vuka, ~6m users across BWA, COD, CMR, GIN, ZMB) exports a feature-phone rural-access model. Directly feeds `digital.rural`. |
| 2026-03-17 | tech.innovate, finance.new, infra.energy, tech.ai | TechCabal | Botswana launches 12-month startup programme tied to $150m climate fund | Best-reported SBIP account: launched 10 Mar 2026, TRL 4–5 bar, Botswana domicile requirement, Africa Decarbonisation Fund I with Mergence, 15,000 jobs by 2030 target. |
| 2026-04-27 | finance.new, tech.innovate | TechCabal | Botswana Tech Fund sees opportunity where African venture capital rarely flows | **Contradicts the press-release framing.** Reports £10m committed / £5m first close (vs the £50m "target" in the other two accounts) and a Guernsey domicile. Flag for the ingest contradiction rule. Partial capture (free sign-in wall on the tail). |

## techreviewafrica.com — PR wire, all items flagged `pr_wire: true`

Serves no dates to search; every date below was read off the fetched page. Items duplicated by a
bylined outlet were dropped in favour of the better outlet (see drop log).

| published | topics | source | title | why it's new |
|---|---|---|---|---|
| 2025-04-01 | infra.cybersec, capacity.training, gov.policy | Tech Review Africa | Botswana strengthens cyber defenses through immersive crisis simulation | UK Africa Cyber Programme resilience exercise — earliest cyber-governance marker in the window, predating the Nov 2025 Act. |
| 2026-01-22 | capacity.literacy, include.divides, infra.cybersec, capacity.training | Tech Review Africa | BOCRA expands ICT training to support digital inclusion in Botswana schools | BOCRA CIRT school programme following Digital Centre handovers. Thin. |
| 2026-03-31 | data.open, tech.innovate, capacity.training | Tech Review Africa | Open Data Hackathon kicks off in Botswana | Only `data.open` item for Botswana in the batch; Botswana Digital & Innovation Hub. |
| 2026-04-04 | infra.connect, infra.store, gov.regional, include.access, capacity.training | Tech Review Africa | Orange Botswana highlights digital infrastructure as key to regional economic integration | Orange Botswana CEO puts **local data sovereignty** among four stated priorities — operator-side sovereignty framing. |
| 2026-05-08 | dpi.govtech, gov.regional, dpi.exchange | Tech Review Africa | Irembo joins Rwanda–Botswana Business Forum | Rwanda state visit; Irembo (Rwanda's e-gov platform operator) courting Botswana on sovereign digital infrastructure. Watch for a follow-on deal. |
| 2026-05-21 | infra.connect, infra.capacity, gov.standards, capacity.training | Tech Review Africa | BOCRA leads IPv6 training initiative | BOCRA + AFRINIC + Mascom + ICT Dynamix; picks up the 2023 IPv6 migration strategy (out of window) with an in-window action. |
| 2026-06-01 | infra.connect, data.statistics, gov.regional, capacity.training, data.open | Tech Review Africa | ITU BDT drives Africa Broadband Maps project with subregional GIS training in Southern Africa | Botswana hosts (BOCRA + CRASA + EU) the Southern Africa GIS/broadband-mapping training for BWA, MWI, ZMB, ZWE. |
| 2026-06-15 | gov.regional, infra.connect, gov.standards | Tech Review Africa | Botswana pushes for RRB seat as African states forge common ITU agenda | Botswana's candidate Basebi Mosinyi for the ITU Radio Regulations Board 2027–30 — Botswana seeking a seat in global spectrum governance. |
| 2026-06-30 | data.satellite, geopol.usa, gov.regional | Tech Review Africa | Botswana joins Artemis Accords as 68th Signatory | **Thread-opener.** Signed 25 Jun 2026 at NASA HQ by Tshere — a formal US space-governance alignment ~18 months after BOTSAT-1. |
| 2026-07-13 | gov.policy, tech.industry, finance.mou | Tech Review Africa | Botswana launches national e-waste strategy as BOCRA and Environmental Department sign MoU | National E-Waste Management Strategy launch + BOCRA–DEP MoU. Newest item in the batch. |

---

## Reviewer notes

- **Threads the wiki lacked entirely, now openable:** Botswana digital-ID (via the IDS/ADRN ten-country
  study, Botswana a case study) · the **PEMANDU Citizen Wallet + Cryptographic Card** programme ·
  a **Cybersecurity Act (Nov 2025) + National Cybersecurity Authority** · the **Digital Services Act
  + Digital Services Authority** · two data centres (BoFiNet Digital Delta; Tlou/Kala) plus a third
  proposed (ChillMine/AAAS) · the **TCIB payments corridor** going live · **BOTSAT-1** and the
  **Artemis Accords** accession · a **Huawei** relationship the government publicly embraces.
- **Contradiction to flag at ingest:** internet penetration is reported as **73% (BOCRA, via ITWeb
  2025-11-06)**, **~80% (Botswana Tech Fund, 2026-04)** and **81.4% (DataReportal, end-2025)**.
  Different definitions are likely, but the values are used interchangeably.
- **Second contradiction:** Botswana Tech Fund size — **£50m target** (press releases) vs
  **£10m committed / £5m first close** (TechCabal, 2026-04-27).
- **Ministerial attribution:** the Scalar programme launch is quoted to **Thulagano Merafe Segokgo**
  as minister of communications and innovation (ITWeb, TechCabal, Mar 2026) while every other 2025–26
  item names **David Tshere** in that post. Worth resolving.
- **PR-wire items needing a primary if used:** all 10 techreviewafrica items, and the ITWeb
  Paratus/Eutelsat release (2026-07-14).
- **`already-held` overlap was only 3 of 124 raw hits** — Botswana's trade-press record was almost
  entirely unheld, consistent with the thin-holdings brief.
