---
type: concept
title: Registries (population, land, address, etc.)
slug: dpi.registry
places: [MRT, COG, COD, BFA, BDI, AGO, ZAF, TZA, UGA, ETH, NGA, RWA, ZMB, XWA, BEN, CIV, CMR, LSO, MDG, GHA, GAB, GIN, SEN, XGL, CAF, DZA, EGY, STP, SOM, SLE, SWZ, SYC, TCD, TGO, MLI, SDN]
entities: [[sa-digital-id-regulations], [nida-tanzania], [mosip], [fayda-ethiopia-national-id], [digital-id-assessment], [nimc], [nigeria-id4d], [nida-rwanda], [sars], [smart-zambia-institute], [dzap], [wuri-programme], [ecowas], [anip-benin], [world-bank], [undp], [oneci], [maposte], [nissa-lesotho], [universal-dpi-safeguards-framework], [mg-ministry-digital-development], [opencrvs], [gates-foundation], [seychelles-national-addressing-system], [seychelles-postal-regulator], [dagl-togo], [otr-togo], [services-publics-togo], [ceni-togo], [novissi], [anats], [eswatini-youth-employment-opportunities-project]]
lens: [sovereignty]
status: active
last_reviewed: 2026-07-20
sources: [[2025-01-01 National Addressing System - Seychelles Postal Regulator], [2025-12-18 Urban addressing - modernisation effort], [2025-11-19 Georeferencing of land titles - a revolution for security and transparency in Togo], [2025-12-17 Togo Expands Public Service Digitisation With Online Civil Registry Platform], [2025-12-16 Digitalisation - civil status act requests now possible online], [2025-06-03 Chad, Mali, Senegal pursue birth registration reforms to close gaps], [2025-05-12 New World Bank Project Supports Job Creation for Eswatini's Youth], [2025-08-05 Robust DPI inevitable for Eswatini's economic, jobs boom - World Bank], [2025-04-02 Municipal elections in Togo - revision of electoral rolls begins 7 April], [2023-01-01 Case Study - G2PX in Togo, End-to-End Digital G2P (World Bank)], [2026-04-21 South Africa's digital ID gets a targeted launch date], [2026-05-29 Opinion South Africa's Digital Identity Regulations A Governance Crossroads], [2026-04-22 Tanzania seeks biometrics contractors for Phase II of national digital ID project], [2026-05-22 Uganda launches prototype program for digital ID and public infrastructure], [2026-05-12 Strengthening Fayda Ethiopia's improvement journey through the Digital ID Assessment], [2025-02-13 Digital ID necessity increases in Nigeria despite lingering challenges], [2026-03-16 Digital IDs How registration is progressing so far], [2026-04-03 Say goodbye to SARS tax numbers in South Africa], [2026-03-24 Zambia looking for MOSIP system integrator to support digital ID project], [2026-03-24 Zambia seeks partner for national digital ID system], [2026-03-30 ECOWAS, World Bank Advance West Africa Digital Identity], [2024-10-28 Benin receives 2,050 biometric terminals from World Bank to boost civil registration], [2025-11-01 Identification System in Benin Increasing Access to Services], [2026-01-19 Ivory Coast Launches MaPoste to Digitize Postal and Administrative Services], [2026-01-13 Cameroon intros digital system for civil documents], [2026-01-16 Lesotho's Digital Leap How Child-Centred Systems are Reshaping Social Protection], [2026-01-27 Madagascar Tests Biometric ID System, Aims to Register 2 Million People by Mid-2026], [2026-07-02 OpenCRVS v2.0 Product Launch Webinar - The Next Generation of Civil Registration], [2026-01-28 Home Affairs sets new record by delivering over four million Smart IDs in 2025], [2026-01-27 SA's Telcos, Banks At War With Govt Over 6,500% ID Verification Fee Hike], [2026-06-08-pr-cria-comissao-actualizacao-dados-cidadaos-maiores-bdcm], [2026-06-15-arranca-prova-de-vida-para-actualizacao-do-registo-eleitoral], [2026-07-01-impressao-do-bi-abrange-todas-as-provincias]]
---

# Registries (population, land, address, etc.) (`dpi.registry`)

The authoritative population, civil, land and address databases that DPI reads
from and writes to — where the identity layer of [[dpi.id]] is actually stored,
maintained and queried.

## Key material

- **[[ZAF]] the register's uptime and its price (2026-01).** Repairing the **Online
  Verification Service (OVS)** lifted National Population Register uptime and helped DHA issue
  a record **4.0m smart IDs in 2025**; DHA then raised the OVS verification fee ~**6,500%**
  (15c → ZAR 10) to fund an "Intelligent Population Register," triggering a High Court challenge
  ([[act-south-africa]]). Registry-access pricing is now itself a governance battleground. See
  [[home-affairs-south-africa]], [[dpi.id]], [[south-africa--dpi-id]]. Sources:
  [[2026-01-28 Home Affairs sets new record by delivering over four million Smart IDs in 2025]],
  [[2026-01-27 SA's Telcos, Banks At War With Govt Over 6,500% ID Verification Fee Hike]].
- **[[ZAF]] South Africa — the population register as an API (2026-04/05).** SA's
  emerging national ID centres on the **population register** held by Home Affairs
  inside the **SARS** hosting environment, with **facial recognition** the primary
  biometric. Draft **Identification Regulations** (gazetted 4 May 2026) would let
  accredited **"trusted entities"** — banks, telcos, agencies — query the register
  in real time over **APIs** under Director-General-approved data-sharing
  agreements, with seven-year access logs. Critics warn there is **no right to
  erasure**: once enrolled, biometric templates stay indefinitely, and citizens get
  no visibility into who queried their record. The registry, not the wallet, is
  where the governance stakes sit. See [[dpi.id]], [[dpi.exchange]], [[gov.protect]].
  Sources: [[2026-04-21 South Africa's digital ID gets a targeted launch date]],
  [[2026-05-29 Opinion South Africa's Digital Identity Regulations A Governance Crossroads]].
- **[[TZA]] Tanzania — Jamii Namba goes multimodal (2026-04).** [[nida-tanzania]] is
  procuring Phase II of the **Jamii Namba** population register, **adding iris and
  facial** recognition to fingerprints, building a NIDA HQ in Dodoma and expanding
  enrolment offices to **31 districts** — financed by a **~$70m Korea Eximbank loan**
  under the World Bank's Digital Tanzania Project. Registration reach is the
  explicit bottleneck to service access. See [[dpi.id]], [[infra.store]]. Source:
  [[2026-04-22 Tanzania seeks biometrics contractors for Phase II of national digital ID project]].
- **[[UGA]] Uganda — CRVS plus a new innovator registry (2026-05).** Uganda's
  **[[mosip]]**-based national ID (**>28m records** migrated) sits alongside civil
  registration; the Government Systems Prototype Showcase explicitly solicits
  systems for **CRVS and registries**, and a **National Innovator Registry** was
  gazetted **5 Jul 2026** to catalogue local tech suppliers. See [[dpi.id]],
  [[dpi.govtech]], [[tech.innovate]]. Source:
  [[2026-05-22 Uganda launches prototype program for digital ID and public infrastructure]].
- **[[ETH]] Ethiopia — Fayda registration at scale (2026-05).** The
  **[[fayda-ethiopia-national-id]]** register has passed **42m registrations** with
  **130+ agency integrations** (target **90m by 2028**); the NIDP uses DIAL's
  **[[digital-id-assessment]]** to score registry maturity as it grows. See
  [[dpi.id]], [[gov.standards]]. Source:
  [[2026-05-12 Strengthening Fayda Ethiopia's improvement journey through the Digital ID Assessment]].
- **[[NGA]] Nigeria — the NIN as a base for functional registers (2025-02).** The
  **NIN** ([[nimc]], financed via [[nigeria-id4d]]) is being made the spine of
  downstream registers — a **social register** for cash transfers and a planned
  **farmers register** — with NIN mandated for all social services. Registry
  integrity is the weak point: ~**6,000 Niger nationals** were found holding NINs,
  triggering a database audit, against a World Bank target of **≥180m IDs by
  end-2026**. See [[dpi.id]], [[gov.protect]], [[include.access]]. Source:
  [[2025-02-13 Digital ID necessity increases in Nigeria despite lingering challenges]].
- **[[RWA]] Rwanda — a CRVS-integrated register (2026-03).** Rwanda's new biometric
  **e-Indangamuntu** ([[nida-rwanda]]) is built **on top of the Civil Registration and Vital
  Statistics** system, linking parent–child family trees to drive service delivery. Enrolment
  collects a minimal set (names, parents, DOB/place, nationality, current + voting address, contact)
  with iris added to fingerprint/face; the **Single Digital Identification Law** makes it the sole
  government identity (legacy cards void by June 2027). Register access is logged and consent-gated
  through the **eRainbow** platform. As of 2026-03-16, **2,373,854 of ~14m** enrolled. See [[dpi.id]],
  [[gov.protect]]. Source: [[2026-03-16 Digital IDs How registration is progressing so far]].
- **[[ZAF]] South Africa — one register as the single identity (2026-04).** SARS Commissioner
  Kieswetter's Modernisation 3.0 makes the **population register the single source of identity** for
  ~62m people, folding the **7–8 identifiers** each person now holds (Home Affairs ID, tax number,
  VAT, hospital number…) into one biometric record to close "arbitrage" gaps. The register — hosted
  inside the SARS environment — becomes the government-wide key, reinforcing the API/"trusted
  entities" stakes above. Entity [[sars]]. See [[dpi.id]], [[dpi.govtech]], [[gov.protect]]. Source:
  [[2026-04-03 Say goodbye to SARS tax numbers in South Africa]].
- **[[ZMB]] Zambia — ID plus civil registration on open standards (2026-03).**
  [[smart-zambia-institute]] is procuring a system integrator to deploy a **[[mosip]]**-based
  national ID **integrated with the civil-registration architecture**, built by Zambians on open
  standards to avoid lock-in (full rollout / 80% coverage targeted end-2026; financed via [[dzap]]).
  Foundational register and CRVS built together. See [[dpi.id]], [[dpi.govtech]], [[zambia--dpi-id]].
  Sources: [[2026-03-24 Zambia looking for MOSIP system integrator to support digital ID project]],
  [[2026-03-24 Zambia seeks partner for national digital ID system]].
- **[[XWA]] West Africa — federating national registers (2026-03).** The **[[wuri-programme]]**
  ([[ecowas]] + World Bank) advanced a cross-border interoperability strategy toward **mutual
  recognition** of member states' identity registers and harmonised technical specifications —
  registers designed to be read across borders, not just nationally. See [[dpi.id]], [[dpi.exchange]],
  [[gov.regional]]. Source: [[2026-03-30 ECOWAS, World Bank Advance West Africa Digital Identity]].
- **[[BEN]] Benin — CRVS feeding the RNPP (2024–2026).** Benin's civil registration writes directly into
  the **National Register of Natural Persons (RNPP)** and the **Register of Civil Status Events (RNEC)**:
  the World Bank donated **2,050 mobile biometric terminals** (via [[wuri-programme]] / **[[anip-benin]]**,
  Oct 2024) so health facilities register births, marriages and deaths instantly, and a **digital
  civil-registration** pilot (Oct 2025, UNICEF + WURI) issues a birth certificate **and a Personal
  Identification Number at birth**. With the 2017–18 mass enrolment, biometric coverage is **~99%** — but
  the *civil-registration* leg lagged badly: **2021–2025 ~2.5m births were declared yet under 1m
  registered**, because parents had to make a second trip to an ANIP unit. The fix is a **guichet unique**
  at maternities (WURI/UNICEF/World Bank) that merges declaration and registration; a 10-maternity pilot
  lifted the rate to **76.56%** (vs ~22% nationally, 2025), with generalisation slipping 3–4 months into a
  consolidation phase. See [[dpi.id]], [[include.access]], [[benin--dpi-id]]. Sources:
  [[2024-10-28 Benin receives 2,050 biometric terminals from World Bank to boost civil registration]],
  [[2025-11-01 Identification System in Benin Increasing Access to Services]],
  [[2026-07-16-adjinacou-maternite-identite-legale]],
  [[2026-02-26-guichet-unique-naissances-bilan-six-mois]].
- **[[BFA]] Burkina Faso — CRVS + a social registry under a security crisis (2024–26).** The **SNEC**
  civil-registration strategy ([[veneem]]) hit **64.11%** execution in 2024 (**3.39m acts, 54 communes**;
  30 communes fully digitised by end-2025), issuing **121,000 acts to internally displaced persons** (2×
  the target) — registration as resilience. A **Registre Social Unique** interoperating with the unique ID
  reached **362,698 households / 2.2m people (99 communes)**. See [[dpi.id]], [[burkina-faso--dpi-id]],
  [[BFA]]. Sources: [[2025-06-19-snec-taux-execution-physique-6411-2024]],
  [[2026-01-06-registre-social-unique-protection-sociale]].
- **[[BEN]] Benin — a digital land cadastre with a legal lock (2025–26).** Alongside the CRVS/RNPP,
  **[[andf-benin|ANDF]]**'s **e-Foncier Bénin** platform (InfoCad field app; per-parcel **NUP**) registered
  **445,695 parcels** (Mar 2026; **491,420** across 12 communes at the Feb-2025 baseline), Netherlands-funded
  via PMAF→PPMEC. **Décret 2025-176** (9 Apr 2025) makes the **Certificat d'Enregistrement au Cadastre**
  mandatory for any transaction — legalising sales without a full title but only through e-FB, closing the
  informal land market; a national **addressing** strategy and GIS urban registries (Abomey, fiscal) extend
  it. Women hold ~12% of parcels. See [[digital.localgov]], [[BEN]]. Sources:
  [[2026-03-26-andf-e-foncier-cadastre-national-445000-parcelles]], [[2025-02-04-e-foncier-491000-parcelles]].
- **[[CIV]] Côte d'Ivoire — the RNPP as service backbone (2026-01).** **[[oneci]]**'s biometric
  **National Register of Natural Persons (RNPP)** is the pillar under the new **[[maposte]]** super-app,
  which delivers ID cards and civil-status/nationality/criminal-record certificates on a certified
  identity — registry integrity as the precondition for e-gov. See [[dpi.id]], [[dpi.govtech]]. Source:
  [[2026-01-19 Ivory Coast Launches MaPoste to Digitize Postal and Administrative Services]].
- **[[CMR]] Cameroon — council-level civil registers digitised (2026-01).** A **[[undp]]**-run,
  Denmark-funded system digitises birth, marriage and death certificates at council level across **10
  municipalities** in the Far North, North-West and South-West — faster issuance, secure archiving and
  continuity of vital records in crisis/displacement zones (one certificate once took three handwritten
  pages). See [[dpi.id]], [[include.access]], [[digital.localgov]]. Source:
  [[2026-01-13 Cameroon intros digital system for civil documents]].
- **[[LSO]] Lesotho — NISSA, the social register (2026-01).** The **National Information System for
  Social Assistance** (**[[nissa-lesotho]]**) holds data on **>90% of households**, categorised by
  vulnerability to target child grants, food and health support. A UNICEF/Co-Develop-backed redesign
  puts children's rights first and applies the **[[universal-dpi-safeguards-framework]]** — a functional
  register whose stakes are data protection for the most vulnerable rather than identity per se. See
  [[dpi.mis]], [[gov.protect]], [[include.access]]. Source:
  [[2026-01-16 Lesotho's Digital Leap How Child-Centred Systems are Reshaping Social Protection]].
- **[[MDG]] Madagascar — building the register from scratch (2026-01).** Madagascar's biometric-ID pilot
  (nationwide April 2026, **2m** target Apr–Jun) captures fingerprints, face and **iris** expressly to
  raise the **reliability of civil-registry records** and de-duplicate official databases — a
  foundational register under construction (and, per OpenCRVS below, a live CRVS deployment). See
  [[dpi.id]]. Source:
  [[2026-01-27 Madagascar Tests Biometric ID System, Aims to Register 2 Million People by Mid-2026]].
- **OpenCRVS v2.0 — a re-architected CRVS public good (2026-07).** **[[opencrvs]]**'s second major
  release (donors NORAD + **[[gates-foundation]]**) makes civil registration configurable to each
  country's law, adds **offline registration** (print a certificate before central sync) and **verifiable
  credentials with selective disclosure**, and passed an Orange Cyber Defense pen-test (May 2026) with
  **zero critical/high** findings. It interoperates with **[[mosip]]** so registration can trigger ID
  enrolment — the World Bank's "virtuous circle" where CRVS supplies continuous life-events data and ID
  authenticates it. Deployments cited: **Uganda (NIRA), Madagascar**, Philippines (PSA). See [[dpi.id]],
  [[dpi.exchange]], [[infra.cybersec]], [[XGL]]. Source:
  [[2026-07-02 OpenCRVS v2.0 Product Launch Webinar - The Next Generation of Civil Registration]].
- **[[GHA]] Ghana — CRVS extension and land digitalization (2025).** The
  **[[national-identification-authority-ghana|NIA]]** plans continuous registration to capture **7m
  under-15s** and diaspora, with a **Births & Deaths Registry** / GHS pilot for ages 0-6 (feeding CRVS
  into the [[ghana-card]] base). Separately the **[[lands-commission-ghana]]** is digitalizing land
  administration toward a fit-for-purpose cadastre. See [[GHA]], [[ghana--dpi-id]], [[digital.localgov]].
  Sources: [[2025-05-01 NIA to capture 7 million under-15s and 3 million Ghanaians abroad for Ghana Card]],
  [[2023-01-01 Digitalization of Land Administration in Ghana (Lands Commission)]].
- **[[GIN]] Guinea — biometric civil registry, RAVEC and a social registry (2023-2026).** The
  [[oneci-guinea|ONECI]] is rolling out **biometric birth certificates** (Sanoyah, 2026) as the
  foundational document for the national ID (MOSIP/TECH5), backed by the **RAVEC** administrative census
  and an Enabel/Belgium civil-registry pilot (10 communes, 105,000+ records) — against a 45-60%
  birth-registration baseline; the **[[rsu-guinea|RSU]]** (Decree 2019) is the unified social registry,
  and a full **land-cadastre** digitalization was announced (2026). See [[GIN]], [[guinea--dpi-id]],
  [[digital.localgov]].
- **[[GAB]] Gabon — registries across social, land and justice (2025).** The
  **[[registre-social-unique-gabon]]** (Unique Social Registry, technical work finalised Aug 2025;
  ANINF + World Bank) for social-programme targeting; a French **[[ign-fi]]** engagement to modernise
  the **cadastre** into an integrated land-management system ([[gabon-ign-fi-cadastre-deal]]); and
  digitalisation of judicial **custody registers** (Méndez Principles). See [[GAB]]. Sources:
  [[2025-08-28-gabon-registre-social-unique]] · [[2025-11-24-gabon-cadastre-modernization-ign-fi]].
- **[[SEN]] Senegal — Nékkal digitising civil records (2024–2026).** The EU-funded
  **[[nekkal-programme|Nékkal]]** programme (2021) had digitised **19m+** civil records by 2024;
  **[[anec-senegal|ANEC]]** reports **15.3m** (2026) — the figures differ by counting base — and has
  begun health-facility pre-declaration software (Jan 2026). See [[dpi.id]], [[dpi.govtech]]. Sources:
  [[2024-06-27 Senegal digitizes millions of civil records under the Nekkal program]],
  [[2026-01-28 Senegal plans digital overhaul of civil status system (ANEC)]].
- **[[SEN]] Senegal — the RNU social registry scales (2024).** The
  **[[rnu-senegal|Registre National Unique]]** grew from **542,000 to 1m households**. See
  [[dpi.mis]], [[include.access]]. Source:
  [[2025-12-09 Senegal's RNU social registry rises from 542,000 to one million households]].
- **[[NGA]] Nigeria — e-CRVS launched (2025-11).** President Tinubu launched **[[e-crvs-nigeria]]**
  (electronic Civil Registration & Vital Statistics; **[[npc-nigeria]]**); **[[unicef]]** reported
  **14m** births registered over two years (2026-02). See [[dpi.id]]. Source:
  [[2026-02-20 UNICEF records 14 million Nigeria birth registrations in two years]].
- **[[STP]] São Tomé and Príncipe — CRVS-first sequencing (2023).** São Tomé is building foundational
  ID on a civil-registration base with **~98%** birth-certificate coverage (2023, World Bank) —
  registry before ID. See [[dpi.id]], [[STP]].
- **[[SOM]] Somalia — a unified digital CRVS from a very low base (2025–26).** Somalia's
  **[[somalia-crvs]]** (OpenCRVS) moved from a **19-district** pilot (Africa CRVS Day, 10 Aug 2025) to
  **30 districts / 160 hospitals** (Jan 2026), against just **3%** under-5 birth registration
  (2020 DHS). See [[dpi.id]], [[somalia--dpi-id]], [[SOM]].
- **[[SLE]] Sierra Leone — a NIN-integrated farmer registry (2025-05).** Sierra Leone launched a
  **[[sierra-leone-national-digital-farmer-registry|National Digital Farmer Registry]]** integrated with
  the national ID number (Feed Salone). See [[dpi.id]], [[digital.rural]], [[SLE]].
- **[[SYC]] Seychelles — an address registry approved but not yet legally underpinned (undated).** The
  **[[seychelles-national-addressing-system]]** has Cabinet approval to implement, with the **S42**
  address standard endorsed — an international standard over a bespoke scheme, with downstream
  interoperability consequences. Led by the **[[seychelles-postal-regulator]]** with Seychelles Postal
  Services, Lands and Housing, the National Bureau of Statistics, [[dict-seychelles|DICT]], the AG's
  Office, Land Transport and Local Government; pitched at service delivery, location mapping, urban
  planning, emergency response and **national statistics**. **Currency caveat — read this status as
  undated:** the sole source is an **undated government portal page** (`date_precision: year`,
  `date_source: proxy`), on which the **legal framework was still being drafted and the draft
  legislation not yet submitted to Cabinet**. Treat as a historical snapshot of unknown vintage; it may
  well have moved. See [[gov.standards]], [[gov.legislate]]. Source:
  [[2025-01-01 National Addressing System - Seychelles Postal Regulator]].
- **[[TGO]] Togo — address, land and civil registers digitising in parallel (2025).** Three separate
  register strands moved in one year. **Addressing:** urban-addressing modernisation launched in the
  **Autonomous District of Greater Lomé** ([[dagl-togo]], 2025-12-18) — databases of coded and named
  roads plus metric address points each carrying an entry number, signage plaques, and certification of
  "doors," preceded by updating the geographic address database of the **13 communes**. DAGL
  Secretary-General **Tagba Atafeyinam Tchalim**: "The address is a central element of domiciliation and
  an essential tool for access to public and private services." **Land:** [[otr-togo]] is georeferencing
  **land titles created before 2007** to modernise the cadastre and cut overlapping titles and disputes
  — but gives **no parcel counts, budget or completion date**, and the source is the revenue office's own
  self-promotional publication; recorded as announced intent, not a measured programme. **Civil
  registry:** online requests for birth, marriage and death certificates via the **Guichet National du
  Service Public** ([[services-publics-togo]]), announced **2025-12-15**, live in **five pilot communes**
  — Agoè-Nyivé 1, Golfe 1, Avé 2, Zio 2, Lacs 1 (Golfe 3 already on the platform) — with real-time
  tracking and "a secure interface designed to protect the confidentiality of personal data"; the
  Ministry of Energy added **29 procedures** (CEET, AT2ER, ARSE), other departments expected from
  **January 2026**.
  See [[TGO]], [[digital.localgov]], [[dpi.govtech]], [[gov.standards]]. Sources:
  [[2025-12-18 Urban addressing - modernisation effort]],
  [[2025-11-19 Georeferencing of land titles - a revolution for security and transparency in Togo]],
  [[2025-12-16 Digitalisation - civil status act requests now possible online]],
  [[2025-12-17 Togo Expands Public Service Digitisation With Online Civil Registry Platform]].
- **[[TGO]] Togo — the electoral roll is a different register (2025).** [[ceni-togo]] revised the
  electoral roll **7–23 April 2025** for the municipal elections, training **324 trainers** who in turn
  trained ~**6,000 data-entry operators**; the previous census, for the April 2024 legislative and
  regional elections, had registered **4.2m+ voters**. **This is a register distinct from the
  [[anid-togo|ANID]] e-ID/NIU system and must not be read as e-ID enrolment** — a distinction that
  matters precisely because [[novissi]] targeted G2P through the **voter registry (93% coverage)** in
  the absence of a social registry. See [[digital.localgov]], [[dpi.id]]. Sources:
  [[2025-04-02 Municipal elections in Togo - revision of electoral rolls begins 7 April]],
  [[2023-01-01 Case Study - G2PX in Togo, End-to-End Digital G2P (World Bank)]].
- **[[TCD]] Chad — CRVS routed through hospitals and schools (2025-06).** Since civil registration was
  integrated with health facilities in **2023**, **120,000+** children have been registered via
  hospital-based registry offices, with community health workers as intermediaries reaching about **70%
  of the rural population**; school campaigns have registered **180,000+** pupils since 2023 against a
  baseline where, per [[anats]]'s Brahim Ali Seid, "**over 80 percent of children in primary and
  secondary schools lack birth certificates**." Registry offices, hospitals, vaccination centres,
  municipalities, mobile units, refugee camps and schools relay records by **SMS** to [[anats]], which
  validates and returns them. Plans: **97 → 600** digitised hospital registration points, and **zero
  unregistered births by 2030**. Seid frames the baseline as inherited — "we inherited a colonial civil
  registration system governed by colonial laws" ([[colonialism]]). Comparators in the same account:
  **[[MLI]] Mali** at **89.5%** birth registration with **747** functional primary centres (ANSAEC
  created 2025); **[[SEN]] Senegal** awaiting civil-registration digitisation legislation (as of
  2025-06-03). See [[dpi.id]], [[include.access]], [[digital.rural]]. Source:
  [[2025-06-03 Chad, Mali, Senegal pursue birth registration reforms to close gaps]].
- **[[SWZ]] Eswatini — the population register as the missing foundation (2025).** The [[world-bank]]
  identifies Eswatini's **national population register** as the foundation robust DPI must be built on,
  advising it be fully digitally equipped with a resilient security architecture plus biometric
  authentication (2025-08-05) — i.e. the foundational register is named as a precondition, not a
  built asset. Alongside it, the **[[eswatini-youth-employment-opportunities-project]]** (approved
  2025-05-12) funds a **"dynamic and digital Social Registry"** to identify and target vulnerable youth,
  intended as a tool for broader social protection — a functional register arriving before the
  foundational one is settled. See [[SWZ]], [[dpi.id]], [[dpi.mis]], [[include.access]]. Sources:
  [[2025-08-05 Robust DPI inevitable for Eswatini's economic, jobs boom - World Bank]],
  [[2025-05-12 New World Bank Project Supports Job Creation for Eswatini's Youth]].

- **[[AGO]] Angola — registers assembled under an electoral clock (2026).** Angola ran the
  region's most visible **civil-registry mobilisation** ahead of the 2027 elections, from a
  base of **63% birth registration (2024)**. Over mid-2026 it decentralised
  **[[bilhete-de-identidade-angola|BI]]** production from one Luanda centre to **all 21
  provinces** (24–48h target), tied births to the register via **[[nascer-com-registo-angola|
  Nascer com Registo]]** (EU/UNICEF) and the World Bank **[[projecto-njila-angola|Njila]]**
  project, and — the analytic core — is wiring the **civil-identification database
  ([[bdic-angola|BDIC]])** to the **adult-citizen database ([[base-de-dados-de-cidadaos-maiores-angola|
  BDCM]])** under a presidential proof-of-life commission, targeting **16,707,455** citizens
  across **254 of 634 [[balcao-unico-de-atendimento-ao-publico-angola|BUAP]]** counters by
  2027-03-31. A parallel land-register platform ([[igca-angola|IGCA]]/AGT/Conservatória)
  targets 40,000 legalised properties. Connectivity is the binding constraint. Fuller
  treatment: → **[[angola--dpi-registry]]**. See [[dpi.id]], [[dpi.exchange]],
  [[digital.localgov]]. Sources:
  [[2026-06-08-pr-cria-comissao-actualizacao-dados-cidadaos-maiores-bdcm]],
  [[2026-06-15-arranca-prova-de-vida-para-actualizacao-do-registo-eleitoral]],
  [[2026-07-01-impressao-do-bi-abrange-todas-as-provincias]].
- **[[SEN]] Senegal (2026) — two civil-registration counts measure different things.** They must not be
  read as a regression: the EU-funded **Nékkal** programme reports legacy paper acts **scanned and indexed**
  out of communal archives (**19m+ by Jun 2024**; **10m digitised / 20m indexed** at programme close,
  2026-06-29, against a 30m target), whereas **ANEC's 15.3m (2026-07-13)** counts records **loaded into the
  live national database (RNEC)** — a subset of the archive stock. Minister Moussa Bala Fofana drew the
  distinction himself: "Plus de 19 millions d'actes… sont numérisés et indexés. *Une bonne partie*
  accessible à partir du Registre national de l'état civil." A worked example of archive-digitisation
  totals being mistaken for live-database load. *Note ANEC's framing is* actes d'état civil *— all
  civil-status events, not "birth records" as some coverage headlines it.* See [[senegal--dpi-id]].
- **[[ZMB]] Zambia — ZILAS, live 2023-05-17.** Cabinet-approved 2020; migrated from ZILMIS 2023-05-13;
  sixty e-services on the Government Service Bus. Predecessor **ZILMIS ran nine years (2014–2023) with its
  maintenance contract expired since 2022-03-31** — the ministry ran the national land register
  unsupported, "a conduit for corruption" (Minister of Lands, 2023-06-16). A mandatory **Digital
  Clearance** gates *every* land transaction and takes **3–4 weeks in practice (2023-09)**. The queue
  moved; it did not vanish.
- **[[CAF]] Central African Republic (2025-04-17).** The **97-page World-Bank-financed *Diagnostic de la
  République centrafricaine*** was validated at a Bangui workshop after ~2 years of study. Its stated
  payoff: a reliable population database would let CAR **skip a costly general census**. Financed under
  **P174620 (Public Sector Digital Governance Project)** — **not CARDIP**, and carrying **no data-centre
  component**.

## Places

[[AGO]] · [[ZAF]] · [[TZA]] · [[UGA]] · [[ETH]] · [[NGA]] · [[RWA]] · [[ZMB]] · [[XWA]] · [[BEN]] · [[CIV]] ·
[[CMR]] · [[GAB]] · [[LSO]] · [[MDG]] · [[MLI]] · [[SEN]] · [[SWZ]] · [[SYC]] · [[TCD]] · [[TGO]] · [[XGL]] ·
Related: [[dpi.id]] · [[dpi.exchange]] · [[dpi.mis]]

## Sources

- [[2026-04-21 South Africa's digital ID gets a targeted launch date]]
- [[2026-05-29 Opinion South Africa's Digital Identity Regulations A Governance Crossroads]]
- [[2026-04-22 Tanzania seeks biometrics contractors for Phase II of national digital ID project]]
- [[2026-05-22 Uganda launches prototype program for digital ID and public infrastructure]]
- [[2026-05-12 Strengthening Fayda Ethiopia's improvement journey through the Digital ID Assessment]]
- [[2025-02-13 Digital ID necessity increases in Nigeria despite lingering challenges]]
- [[2026-03-16 Digital IDs How registration is progressing so far]]
- [[2026-04-03 Say goodbye to SARS tax numbers in South Africa]]
- [[2026-03-24 Zambia looking for MOSIP system integrator to support digital ID project]]
- [[2026-03-24 Zambia seeks partner for national digital ID system]]
- [[2026-03-30 ECOWAS, World Bank Advance West Africa Digital Identity]]
- [[2024-10-28 Benin receives 2,050 biometric terminals from World Bank to boost civil registration]]
- [[2025-11-01 Identification System in Benin Increasing Access to Services]]
- [[2026-01-19 Ivory Coast Launches MaPoste to Digitize Postal and Administrative Services]]
- [[2026-01-13 Cameroon intros digital system for civil documents]]
- [[2026-01-16 Lesotho's Digital Leap How Child-Centred Systems are Reshaping Social Protection]]
- [[2026-01-27 Madagascar Tests Biometric ID System, Aims to Register 2 Million People by Mid-2026]]
- [[2026-07-02 OpenCRVS v2.0 Product Launch Webinar - The Next Generation of Civil Registration]]
- [[2026-01-28 Home Affairs sets new record by delivering over four million Smart IDs in 2025]]
- [[2026-01-27 SA's Telcos, Banks At War With Govt Over 6,500% ID Verification Fee Hike]]
- [[2024-06-27 Senegal digitizes millions of civil records under the Nekkal program]]
- [[2026-01-28 Senegal plans digital overhaul of civil status system (ANEC)]]
- [[2025-12-09 Senegal's RNU social registry rises from 542,000 to one million households]]
- [[2026-02-20 UNICEF records 14 million Nigeria birth registrations in two years]]
- [[2025-01-01 National Addressing System - Seychelles Postal Regulator]]
- [[2025-12-18 Urban addressing - modernisation effort]]
- [[2025-11-19 Georeferencing of land titles - a revolution for security and transparency in Togo]]
- [[2025-12-17 Togo Expands Public Service Digitisation With Online Civil Registry Platform]]
- [[2025-12-16 Digitalisation - civil status act requests now possible online]]
- [[2025-06-03 Chad, Mali, Senegal pursue birth registration reforms to close gaps]]
- [[2025-05-12 New World Bank Project Supports Job Creation for Eswatini's Youth]]
- [[2025-08-05 Robust DPI inevitable for Eswatini's economic, jobs boom - World Bank]]
- [[2025-04-02 Municipal elections in Togo - revision of electoral rolls begins 7 April]]
- [[2023-01-01 Case Study - G2PX in Togo, End-to-End Digital G2P (World Bank)]]
- [[2026-06-08-pr-cria-comissao-actualizacao-dados-cidadaos-maiores-bdcm]]
- [[2026-06-15-arranca-prova-de-vida-para-actualizacao-do-registo-eleitoral]]
- [[2026-07-01-impressao-do-bi-abrange-todas-as-provincias]]
