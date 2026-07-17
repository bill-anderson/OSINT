---
type: concept
title: Sectoral management information systems (HMIS, EMIS, etc.)
slug: dpi.mis
places: [COD, CMR, BDI, XAF, XSS, XGL, RWA, ETH, NGA, KEN, ZAF, MWI, TZA, MOZ, GHA, GIN, ZMB, UGA, ZWE, LSO, CPV, EGY, SWZ, TGO, AGO]
entities: [[dhis2], [rediv-angola], [huawei-angola-health-mou], [hisp-centre], [africa-cdc], [open-data-watch], [ethiopia-moh], [echis-ethiopia], [hmis-tanzania-pea], [hmis-malawi-livingstonia], [his-developing-countries-review], [hmis-data-use-index-ethiopia], [echis-ethiopia-study], [dhis2-maturity-ethiopia], [rhis-recording-burden-5country], [america-first-global-health-strategy], [usaid], [gates-foundation], [malawi-revenue-authority], [nissa-lesotho], [universal-dpi-safeguards-framework], [micsti-lesotho], [mosip], [eswatini-cbhis], [eswatini-cmis], [ministry-of-health-eswatini], [eswatini-nhssp], [eswatini-health-system-strengthening-project], [hisp-wca], [stateduc], [mepsta-togo]]
status: active
last_reviewed: 2026-07-17
sources: [[2026-02-23 From Paper to Pixels - Digital Transformation of Community Health Services in Eswatini], [2024-08-01 Eswatini National Health Sector Strategic Plan 2024-25 to 2027-28], [2024-11-19 HISP WCA develops DHIS2 EMIS for education data analysis and visualization in Togo], [2024-11-05 Togo - Integrating DHIS2 with existing EMIS systems], [2026-04-23 Health Data Without Continuity Why Electronic Health Records Still Have Not Scaled Across Africa], [2026-06-03 Malawi reaps digital tax gains], [2026-05-13 Shared Services Fee], [2021-08-04 Health information systems in developing countries case of African countries], [2023-10-30 A political economy analysis of strengthening health information system in Tanzania], [2025-10-21 Utilisation of data and factors affecting the performance of the Health Management Information System (HMIS). The case of six Synods of Livingstonia health facilities in Malawi], [2023-05-11 Data for local decision-making, not a mere reporting requirement development of an index to measure facility-level use of HMIS data  Published in Journal of Global Health Reports], [2023-06-07 Barriers, facilitators and motivators of electronic community health information system use among health workers in Ethiopia], [2024-07-26 Maturity Assessment of District Health Information System Version 2 Implementation in Ethiopia Current Status and Improvement Pathways], [2021-09-13 The burden of recording and reporting health data in primary health care facilities in five low- and lower-middle income countries], [2025-04-03 Now is the time to invest in locally-owned health data systems], [2025-11-05 New report highlights urgent need to rebuild and sustain health data systems], [2026-03-19 African Digital Health Data Is a Condition of Global Health Funding], [2026-03-27 Kenya's Health Deal Is a Stress Test for the America First Global Health Strategy], [2026-02-25 Zimbabwe Turns Down U.S. Health Funding, Citing Sovereignty Concerns], [2026-01-16 Lesotho's Digital Leap How Child-Centred Systems are Reshaping Social Protection], [2026-02-20 MICSTI AND NUL ADVANCED LESOTHO DIGITAL PUBLIC INFRASTRUCTURE], [2026-07-05 Post by DHIS2 on LinkedIn]]
---

# Sectoral management information systems (HMIS, EMIS, etc.) (`dpi.mis`)

Sector-specific management information systems — health (HMIS/EHR), education
(EMIS), tax and revenue — the operational layer that turns DPI identity and
exchange rails into service delivery and administration. The deepest evidence
base here is **health**: routine HMIS is where most African administrative data
is actually created ([[data.statistics]]), and a decade of scholarship shows
what makes it work or fail.

## Key material — health information systems

- **[[NGA]] DHIS2 crosses into education (DNEMIS, 2026-07).** Nigeria's Federal Ministry of
  Education launched **DNEMIS**, a **[[dhis2]]**-based national education MIS and reportedly the
  **largest DHIS2 implementation in the world** — the platform's expansion from HMIS into
  **EMIS**, built with the [[hisp-centre]], UNICEF and the EU, with data domiciled in Nigeria
  (framed as data sovereignty). See [[dpi.govtech]], [[federal-ministry-education-nigeria]],
  [[dnemis-nigeria]]. Source: [[2026-07-05 Post by DHIS2 on LinkedIn]].
- **The DHIS2 backbone, and the fragmentation beneath it (2021–23).** Across the
  continent HMIS has converged on one platform: a 12-country literature review
  ([[his-developing-countries-review]], Koumamba et al.) found **all 12** had
  adopted a DHIS2-based data-warehouse approach — yet **11 of 12 lacked a
  national HIS strategy** and instead aligned to *donor* strategies, with
  **Malawi the lone exception**. The review's verdict: technology (DHIS2) is the
  easy part; **governance is the binding constraint**. Tanzania is the
  archetype — [[hmis-tanzania-pea]] (Kuwawenaruwa et al., 17-KII political-
  economy study) maps an ecosystem of **18 parallel/fragmented sub-systems**
  even though **>90% of data flows via DHIS2** (rolled out to all district
  councils 2013). Fragmentation is *produced*: when the central system can't
  meet a donor's need, "any individual can establish their own system," and
  long-relationship funders (the Basket Fund) hold more sway than newcomers over
  what gets built. See [[gov.standards]], [[dpi.exchange]], [[TZA]],
  [[GHA]], [[MOZ]], [[ZMB]], [[RWA]], [[ZWE]], [[BWA]]. Sources:
  [[2021-08-04 Health information systems in developing countries case of African countries]],
  [[2023-10-30 A political economy analysis of strengthening health information system in Tanzania]].
- **Recording burden — data collected, rarely used (2021).**
  [[rhis-recording-burden-5country]] (Siyam et al.; 80 PHC facilities in
  Cambodia, Ghana, Mozambique, Nigeria, Tanzania) quantifies the load: an
  average **34 registers** and **35 monthly reporting forms** per country;
  **recording consumes ~one-third of consultation time**; monthly reporting
  runs **4h (Mozambique/Nigeria) to 13–15h (Tanzania/Ghana) per health worker**.
  Most of this feeds upward reporting, not local care — and going electronic
  does not automatically relieve it. The study calls for **international
  standards** for facility registers and forms. See [[capacity.training]],
  [[GHA]], [[MOZ]], [[NGA]], [[TZA]].
- **[[GHA]] Ghana's digital-health strategy (2023).** The [[ghana-health-service|GHS]]
  **[[ghana-digital-health-policy-2023-2027|Policy and Strategy on Digital Health 2023-2027]]** sets ten
  strategic objectives centred on **HMIS interoperability and connectivity** — a formal frame for the
  same recording/integration gaps the recording-burden study quantifies (LHIMS integration remains a
  gap for the Ghana Card). See [[GHA]], [[gov.policy]]. Source:
  [[2023-01-01 Ghana Policy and Strategy on Digital Health 2023-2027 (GHS)]].
- **The data-use gap (2023–25).** Digitisation ≠ use. In Malawi's Livingstonia
  synod facilities ([[hmis-malawi-livingstonia]], Salangwa et al.) **70% of
  facility staff** but only **33% of district officials** regularly reviewed
  HMIS data, and **31%** had had no data-handling training in 24 months — health
  workers treat HMIS as a *reporting duty*, not a decision tool. Ethiopia shows
  the lever: [[hmis-data-use-index-ethiopia]] (Qian et al., Gates-funded PMA,
  305 facilities) built a validated **10-item facility data-use index** and
  found use *rose* (7.2→7.9) around COVID-19 where **facility-leadership
  feedback** and actionable recommendations improved — confirming that
  supervision, feedback and a data-use culture, not new software, drive uptake.
  See [[capacity.research]], [[MWI]], [[ETH]]. Sources:
  [[2025-10-21 Utilisation of data and factors affecting the performance of the Health Management Information System (HMIS). The case of six Synods of Livingstonia health facilities in Malawi]],
  [[2023-05-11 Data for local decision-making, not a mere reporting requirement development of an index to measure facility-level use of HMIS data  Published in Journal of Global Health Reports]].
- **Maturity and the infrastructure floor — Ethiopia (2023–24).** A national
  SOCI-tool maturity assessment ([[dhis2-maturity-ethiopia]], Yilma et al.,
  [[ethiopia-moh]]) scored DHIS2 at the **"defined" stage (2.81/5)** overall but
  **ICT infrastructure lowest ("repeatable", 2.14)** — unstable power and
  connectivity are the ceiling — with interoperability and data-use still
  "emerging" (no national digital ID / client registry to link records). At the
  frontline, [[echis-ethiopia-study]] (Bogale et al.) on the offline-first
  **[[echis-ethiopia]]** app for ~40,000 Health Extension Workers finds the same
  barriers made physical: **parallel paper + electronic recording** (doubling
  workload), rural electricity at **9%** (29,950 power banks distributed), 2G/3G/4G
  coverage at **85%/66%/4%**, weak training, and theft-liability fears.
  Full case: [[ethiopia--dpi-mis]]. See
  [[infra.connect]], [[infra.energy]], [[digital.rural]], [[dpi.id]], [[ETH]].
  Sources:
  [[2024-07-26 Maturity Assessment of District Health Information System Version 2 Implementation in Ethiopia Current Status and Improvement Pathways]],
  [[2023-06-07 Barriers, facilitators and motivators of electronic community health information system use among health workers in Ethiopia]].
- **[[dhis2]] as a digital public good, and how it sustains itself (2026-05).**
  DHIS2, developed and maintained by the **[[hisp-centre]]** at the University of
  Oslo, is one of the world's largest DPGs — national HMIS in **75+ countries**
  (used at some scale in 90+), open-source and license-free, its routine data
  touching **~40% of the world's population (~3.2bn people)**. Facing fragmented
  donor funding it introduced a **Shared Services Fee** — income-tiered annual
  fees per production instance ($5k–$50k) that make payers "Contributing
  Partners" with roadmap input — a sustainability model built to keep country
  ownership without vendor lock-in. See [[data.statistics]], [[finance.new]],
  [[XGL]]. Source: [[2026-05-13 Shared Services Fee]].
- **The funding-shock threat and locally-owned resilience (2025–26).** The 2025
  US aid freeze is the live stress test. [[usaid]]/PEPFAR programme systems were
  cut overnight — PEPFAR's HIV database **DATIM effectively switched off**, and
  Kenya's MoH briefly **lost access to its national EMR** (March 2025);
  [[africa-cdc]] estimates up to **80%** of some malaria/HIV programme costs are
  aid-dependent. Yet the [[hisp-centre]] finding is that **locally-owned national
  DHIS2 systems stayed online** while donor-funded *parallel* systems fell over —
  evidence for the "invest in routine data, open-source tools and local
  ownership" thesis. [[open-data-watch]]'s *Rebuilding Global Health Data*
  (Nov 2025) names three risks — **donor over-reliance, weak domestic
  financing/governance, thin country coordination** — and urges governments to
  fund permanent HMIS/CRVS roles in *recurrent* budgets. A second front: US
  bilateral health MOUs under the **[[america-first-global-health-strategy]]**
  make **access to national surveillance and lab databases a condition of
  funding** (data governance treated more fully under [[gov.protect]]). See
  [[geopol.usa]], [[data.statistics]], [[XSS]], [[KEN]], [[ETH]], [[UGA]],
  [[RWA]], [[ZWE]]. Sources:
  [[2025-04-03 Now is the time to invest in locally-owned health data systems]],
  [[2025-11-05 New report highlights urgent need to rebuild and sustain health data systems]],
  [[2026-03-19 African Digital Health Data Is a Condition of Global Health Funding]],
  [[2026-03-27 Kenya's Health Deal Is a Stress Test for the America First Global Health Strategy]],
  [[2026-02-25 Zimbabwe Turns Down U.S. Health Funding, Citing Sovereignty Concerns]].
- **Electronic health records still don't scale (2026-04).** EHR is the least-
  scaled DPI layer: **OpenMRS**, **[[dhis2]]** and proprietary national systems
  run as **silos**, so a record made in one is invisible in another;
  [[africa-cdc]] notes **>50% of facilities lack power or internet** and
  duplicate testing eats **5–10% of diagnostic budgets**. Progress where
  governance leads — Rwanda (interoperable national dashboards), Ethiopia (one of
  the largest DHIS2 deployments). See [[gov.standards]], [[infra.energy]],
  [[RWA]], [[ETH]], [[NGA]], [[KEN]], [[ZAF]]. Source:
  [[2026-04-23 Health Data Without Continuity Why Electronic Health Records Still Have Not Scaled Across Africa]].
- **[[RWA]] Rwanda — CRVS–EIR interoperability via DHIS2 (2022-04).** A DHIS2-based integration of
  Rwanda's Civil Registration & Vital Statistics with the Electronic Immunization Registry uses the
  NIN assigned at birth to link the birth registry to immunization records, improving EPI management —
  an early African example of registry↔HMIS interoperability. See [[dpi.registry]], [[dpi.id]], [[RWA]].
  Source: [[2022-04-28 Interoperability of CRVS and EIR systems for improved EPI management in Rwanda]].
- **[[SWZ]] Eswatini — offline-first community health, wired to the national EHR (2026-02).** The
  Ministry of Health's electronic **Community-Based Health Information System** ([[eswatini-cbhis]])
  runs **offline** on handheld devices and synchronises once connectivity allows, integrated with the
  national electronic health record — the **Client Management Information System** ([[eswatini-cmis]]).
  Modules cover NCDs (diabetes, hypertension), antenatal care, under-five nutritional screening, health
  education, malaria and HIV. The workforce being digitised is what makes it consequential: **Rural
  Health Motivators are nearly 22% of the national health workforce**, in a country where an estimated
  **77% of the population lives in rural areas (as of 2026-02-23)**. RHMs previously spent hours on
  paper registers and travelled at their own expense to the chiefdom, Inkhundla, nearest facility or
  regional office — often completing **duplicate forms for different funding partners**, the same
  donor-driven fragmentation the Tanzania and recording-burden studies above quantify. A pilot is
  complete in **Mpolonjeni Inkhundla, Lubombo**, with national rollout beginning and RHMs in training;
  financing runs through the World Bank **[[eswatini-health-system-strengthening-project]]** (PAD3539,
  US$20m), under the **[[eswatini-nhssp|National Health Sector Strategic Plan 2024/25–2027/28]]**. The
  offline-first design meets the same infrastructure floor as Ethiopia's **[[echis-ethiopia]]** — but
  by syncing rather than running parallel paper. See [[digital.rural]], [[dpi.exchange]],
  [[include.access]], [[SWZ]]. Sources:
  [[2026-02-23 From Paper to Pixels - Digital Transformation of Community Health Services in Eswatini]],
  [[2024-08-01 Eswatini National Health Sector Strategic Plan 2024-25 to 2027-28]].

- **[[AGO]] Angola — an immunisation registry wiring into DHIS2 (2026-02).** Angola runs **[[rediv-angola|ReDIV]]**, a digital platform for **individual, real-time immunisation records** — begun in the COVID-19 response, now used in all national campaigns (polio, measles, HPV) for near-real-time coverage monitoring — plus **IOTA** for real-time vaccine/medicine stock management (central warehouses to peripheral units). Both are being made **interoperable with a [[dhis2|DHIS2]]-based national HMIS**, alongside a telemedicine expansion (Angola was the 2nd Sub-Saharan country with robotic surgery; a robot-commanded operation ran from Orlando at ANGOTIC 2025). Separately, a **[[huawei-angola-health-mou|MINSA–Huawei MoU]]** (Jan 2026) targets **38,000 health workers trained** and **500,000 remote consultations over four years** plus hospital digitisation and health AI — the China vendor inside the health-data stack. See [[dpi.registry]], [[geopol.china]], [[angola--dpi-govtech]], [[AGO]]. Sources: [[2026-02-14-angola-inovacao-digital-no-sistema-de-saude-rediv-dhis2]], [[2026-01-26-angola-huawei-memorando-saude-digital]].

## Key material — other sectoral MIS

- **[[MWI]] Malawi — revenue as a real-time MIS (2026-06).** The
  [[malawi-revenue-authority]]'s **Electronic Invoicing System (EIS)** replaced
  the older Electronic Fiscal Devices, capturing transactions in real time
  (VAT + income tax together); it now generates **>$1.2m/day** (May collections
  **>$28m**) with **~7,500 of ~9,000** VAT operators migrated — a sectoral MIS
  whose main constraints, as in health, are blackouts and connectivity. See
  [[dpi.govtech]], [[data.statistics]], [[gov.policy]]. Source:
  [[2026-06-03 Malawi reaps digital tax gains]].
- **[[LSO]] Lesotho — a social registry with child-centred safeguards (2026-01).** The **National
  Information System for Social Assistance ([[nissa-lesotho]])** holds data on **>90% of households**,
  categorised by vulnerability to target child grants, food assistance and health services — the
  social-protection analogue of an HMIS. A UNICEF/Co-Develop-backed redesign puts children's rights
  at the centre and applies the **[[universal-dpi-safeguards-framework]]** to prevent exclusion
  (missing documents, disability, remoteness) and harden data protection — "not just building
  technology, building trust." See [[dpi.registry]], [[gov.protect]], [[include.access]],
  [[digital.rural]]. Source:
  [[2026-01-16 Lesotho's Digital Leap How Child-Centred Systems are Reshaping Social Protection]].
- **[[LSO]] Lesotho — a government Decision Support System (2026-02).** Alongside X-Road
  interoperability and [[mosip]] digital ID, **[[micsti-lesotho]]** and the National University of
  Lesotho are building a **Decision Support System (DSS)** to analyse data for planning, budgeting and
  service delivery — a cross-sector management-information layer over the DPI stack, built with
  academia. See [[dpi.exchange]], [[dpi.govtech]], [[dpi.id]]. Source:
  [[2026-02-20 MICSTI AND NUL ADVANCED LESOTHO DIGITAL PUBLIC INFRASTRUCTURE]].
- **[[BDI]] Burundi — social protection on openIMIS (2025).** Burundi's flagship **[[merankabandi]]**
  Cash for Jobs programme migrated to the CORE-MIS solution powered by **[[openimis]]**, managing
  **1.25m beneficiaries** across five provinces (since May 2025; >1m records migrated), with integrated
  payment providers and KoboToolbox — the base for a planned Unified Social Registry. See [[dpi.registry]],
  [[include.access]]. Source: [[2026-01-01 Burundi's growing social protection system now runs on openIMIS]].

- **[[TGO]] Togo — DHIS2 over StatEduc, and a start date its own publisher disputes (2024-11).**
  Togo's **[[mepsta-togo|MEPSTA]]** runs a **[[dhis2]]**-based EMIS built by **[[hisp-wca]]** on
  **Norad** and **GPE KIX** funding, layered over the incumbent **[[stateduc]]** application (used in
  ~20 countries, thin analytical tools, leaving sub-national levels dependent on central analyses).
  Data from Togo's **16,000** nursery, primary and secondary schools was collected on paper and entered
  into StatEduc — which **remains the collection tool**, while DHIS2 processes it and produces the
  information products, giving schools and sub-national actors real-time dashboards. Indicators include
  enrolment by level, teacher–learner ratio and national exam pass rates, disaggregated by gender **and
  disability status**; local innovations run to a school observation tool, school report cards, a
  **WhatsApp bot for exam results** and MICS-EAGLE integration. **Contradiction, unresolved — same
  publisher, two accounts:** the DHIS2 country implementation profile records "**Since 2019, national
  scale**" while describing the ministry as "**piloting**" DHIS2 alongside StatEduc; the DHIS2 article
  of **2024-11-19** says "**In 2021** DHIS2 was implemented in interoperability with StatEduc" and that
  the EMIS is "**currently under review by Togo's Ministry of Education**." Both are recorded, neither
  adopted → `reviews/contradictions/open/togo-dhis2-emis-start-date`. Togo is one of **six** education
  ministries in the global **DHIS2 for Education** research project — with **[[SWZ]] Eswatini**,
  Mozambique, The Gambia, Sri Lanka and Uganda. See [[data.statistics]], [[dpi.exchange]],
  [[gov.standards]], [[TGO]]. Sources:
  [[2024-11-19 HISP WCA develops DHIS2 EMIS for education data analysis and visualization in Togo]],
  [[2024-11-05 Togo - Integrating DHIS2 with existing EMIS systems]].

- **[[GAB]] Gabon — education MIS (SIGE).** The **[[sige-gabon]]** (Système d'Information pour la
  Gestion de l'Éducation) is being built out as the education-planning backbone: a 2025 school-data
  collection push (World Bank tablets, UNESCO software) and integration of **school-health and
  well-being indicators** to cross pedagogical with health data. See [[GAB]]. Sources:
  [[2025-03-11-gabon-school-data-collection-priority]] · [[2025-08-09-gabon-school-health-sige-integration]].

## Places

[[XAF]] · [[XSS]] · [[XGL]] · [[RWA]] · [[ETH]] · [[NGA]] · [[KEN]] · [[ZAF]] · [[GAB]] ·
[[MWI]] · [[TZA]] · [[MOZ]] · [[GHA]] · [[ZMB]] · [[UGA]] · [[ZWE]] · [[LSO]] · [[BDI]] ·
[[SWZ]] · [[TGO]] · [[AGO]] ·
Intersections: [[ethiopia--dpi-mis]] · Related:
[[dpi.exchange]] · [[dpi.id]] · [[dpi.registry]] · [[dpi.govtech]] · [[data.statistics]]

## Sources

- [[2021-08-04 Health information systems in developing countries case of African countries]]
- [[2023-10-30 A political economy analysis of strengthening health information system in Tanzania]]
- [[2025-10-21 Utilisation of data and factors affecting the performance of the Health Management Information System (HMIS). The case of six Synods of Livingstonia health facilities in Malawi]]
- [[2023-05-11 Data for local decision-making, not a mere reporting requirement development of an index to measure facility-level use of HMIS data  Published in Journal of Global Health Reports]]
- [[2023-06-07 Barriers, facilitators and motivators of electronic community health information system use among health workers in Ethiopia]]
- [[2024-07-26 Maturity Assessment of District Health Information System Version 2 Implementation in Ethiopia Current Status and Improvement Pathways]]
- [[2021-09-13 The burden of recording and reporting health data in primary health care facilities in five low- and lower-middle income countries]]
- [[2025-04-03 Now is the time to invest in locally-owned health data systems]]
- [[2025-11-05 New report highlights urgent need to rebuild and sustain health data systems]]
- [[2026-03-19 African Digital Health Data Is a Condition of Global Health Funding]]
- [[2026-03-27 Kenya's Health Deal Is a Stress Test for the America First Global Health Strategy]]
- [[2026-02-25 Zimbabwe Turns Down U.S. Health Funding, Citing Sovereignty Concerns]]
- [[2026-05-13 Shared Services Fee]]
- [[2026-04-23 Health Data Without Continuity Why Electronic Health Records Still Have Not Scaled Across Africa]]
- [[2026-06-03 Malawi reaps digital tax gains]]
- [[2026-01-16 Lesotho's Digital Leap How Child-Centred Systems are Reshaping Social Protection]]
- [[2026-02-20 MICSTI AND NUL ADVANCED LESOTHO DIGITAL PUBLIC INFRASTRUCTURE]]
- [[2026-07-05 Post by DHIS2 on LinkedIn]]
- [[2022-04-28 Interoperability of CRVS and EIR systems for improved EPI management in Rwanda]]
- [[2026-02-23 From Paper to Pixels - Digital Transformation of Community Health Services in Eswatini]]
- [[2024-08-01 Eswatini National Health Sector Strategic Plan 2024-25 to 2027-28]]
- [[2024-11-19 HISP WCA develops DHIS2 EMIS for education data analysis and visualization in Togo]]
- [[2024-11-05 Togo - Integrating DHIS2 with existing EMIS systems]]
- [[2026-02-14-angola-inovacao-digital-no-sistema-de-saude-rediv-dhis2]]
- [[2026-01-26-angola-huawei-memorando-saude-digital]]
