---
type: concept
title: Other GovTech and e-Gov
slug: dpi.govtech
places: [ZMB, ZAF, XGL, MWI, GHA, NAM, KEN, NGA, UGA, BEN, CIV, MOZ, COD, TZA, RWA, EGY, CMR]
entities: [[smart-zambia-institute], [dzap], [david-eaves], [sita], [ucl-iipp], [dmap], [govguide-nigeria], [meta], [bosun-tijani], [malawi-revenue-authority], [mosip], [uxp-benin], [cybernetica], [kenya-revenue-authority], [nitda], [ngea], [galaxy-backbone], [safaricom], [sars], [sarb], [oneci], [maposte], [la-poste-cote-divoire], [atdi-mozambique], [malawi-ministry-of-ict], [undp], [gtmi], [world-bank], [trident-digital-tech], [rdc-pass], [idea-mpa]]
lens: [sovereignty]
status: active
last_reviewed: 2026-07-12
sources: [[2025-09-11 DZAP World Bank PAD], [2025-12-15 The Path to a Sovereign Tech Stack is Via a Commodified Tech Stack  TechPolicy.Press], [2026-07-07 South Africa's state IT agency is slowing government tech rollout], [2025-01-01 dpi_conceptualisation_and_measurement], [2026-07-07 Malawi integrates immigration e-services], [2026-06-20 Ethiopia launches unified MESOB Platform to accelerate national digital transformation], [2026-06-08 Kenya proposes marketplace for State data], [2026-05-18 Eswatini promotes digital transformation project through World Bank engagements], [2026-06-19 Microsoft SA secures digital talent for govt], [2026-06-11 DR Congo to Launch National Digital Identity System RDC-PASS on June 13], [2026-06-18 UAE-Kenya Tech Partnership Gains Momentum as AI Investments Grow], [2026-06-17 Zambia's govt leans towards open-source], [2026-05-22 Nigeria launches GovGuide, an AI chatbot for public service access], [2026-06-03 Malawi reaps digital tax gains], [2026-05-22 Uganda launches prototype program for digital ID and public infrastructure], [2026-07-11 UXP Directory], [2026-07-03 Cybernetica], [2026-04-02 WhatsApp tax filing set to pull millions into Kenya's tax net], [2026-04-07 NITDA Assumes Control Of NGEA Infrastructure], [2026-04-03 Say goodbye to SARS tax numbers in South Africa], [2026-04-02 Safaricom Introduces My OneApp to Simplify Payments, Accounts, and Service Access], [2026-01-19 Ivory Coast Launches MaPoste to Digitize Postal and Administrative Services], [2026-01-08 Zambia unveils online passport application system], [2026-01-23 Zambia begins amending Electronic Government Act], [2026-02-21 Mozambique Launches Digital Government Overhaul, Looking to Kenya and Rwanda as Models], [2026-02-16 Malawi President orders digital revolution], [2026-02-20 Malawi validates AI strategy, digital transformation policy - CAJ News Africa], [2026-01-30 DRC envisages a functional digital government platform by March], [2026-01-26 Tanzania's GovTech success raises bar for East Africa's digital states], [2026-01-13 Cameroon intros digital system for civil documents], [2025-11-09 Behind the speedy MyMzansi screens and the Presidency's race to build a digital government], [2026-01-07 Digital driving licence coming to South Africa]]
---

# Other GovTech and e-Gov (`dpi.govtech`)

Government service delivery online.

## Key material

- **[[ZAF]] MyMzansi — the build, up close (2025-11 → 2026).** The Presidency's
  **[[digital-services-unit-presidency-sa|Digital Services Unit]]** built the [[mymzansi]]
  single-entry-point prototype in ~**10 weeks** on a modular open-DPG stack
  ([[amazon-web-services]], Silverstripe, GOV.UK Pay/Notify, verifiable credentials), bundling
  functional digital ID, a **digital driving permit** and an offline-capable wallet; first
  public rollout was planned for H1 2026. Concrete proof of the "commodified platform" thesis
  below — though by Jan 2026 the underlying digital-ID reform was already behind schedule. See
  [[digital-services-unit-presidency-sa]], [[dpi.id]]. Sources:
  [[2025-11-09 Behind the speedy MyMzansi screens and the Presidency's race to build a digital government]],
  [[2026-01-07 Digital driving licence coming to South Africa]].
- **[[ZMB]] Zambia (2025).** **ZamPortal / eServices** currently offers only ~**300 of
  an estimated 1,500** government services online; **ZamSign** provides e-signatures.
  Digitising government records and services (today largely paper, and vulnerable to
  floods) is a [[dzap]] Component 2 aim, led by [[smart-zambia-institute]] under the
  National e-Government Plan 2023–2026. Citizens otherwise travel far and queue for
  basic services.

- **Commodified platform services (2025, [[david-eaves]]).** Open, reusable government
  platform services as the low-lock-in path to e-gov: UK GOV.UK **Pay/Notify/Forms**,
  India's **Digit/Inji** ([[geopol.india]]), and South Africa's **MyMzansi** ([[ZAF]]),
  which was built in weeks by reusing open platforms. The model African states could use
  to build [[dpi.govtech]] without proprietary lock-in — see [[gov.standards]].

- **[[ZAF]] delivery failure (2026-07, [[sita]]).** South Africa's central ICT
  procurement agency is a national digital-transformation **bottleneck**: a PSC probe
  found 25.2% procurement attrition and contracts stuck >400 days, with departments
  seeking exemptions. The counter-case to the "build the platform" story: e-gov also
  fails on **institutional execution capacity**, not just architecture. See [[gov.policy]],
  [[tech.industry]]. Source: [[2026-07-07 South Africa's state IT agency is slowing government tech rollout]].

- **What counts as DPI (Eaves & Rao, UCL IIPP).** The
  [[2025-01-01 dpi_conceptualisation_and_measurement]] framework defines and measures DPI across
  technology, public-interest values and adoption context — the conceptual anchor for
  this slug.

- **[[MWI]] Malawi — single portal on local servers (2026-07).** The **Bomalathu**
  platform ([[dmap]]) is Malawi's single digital-services portal; the Department of
  E-Government is onboarding **25 e-services** across MDAs (adding immigration to the
  Revenue Authority and National Registration Bureau), with each department **retaining
  data ownership** and hosting on **locally hosted servers** — interoperability plus data
  sovereignty. See [[dpi.exchange]], [[dpi.id]], [[infra.store]]. Source:
  [[2026-07-07 Malawi integrates immigration e-services]].
- **[[NGA]] Nigeria — an AI chatbot for public services (2026-05).** Nigeria launched
  **[[govguide-nigeria]]**, an AI assistant (built with **[[meta]]**, FMCIDE, NCAIR and
  Publica AI on open-source **Llama**) answering government-service questions in **English,
  Hausa, Igbo and Yoruba** — pitched at rural, low-literacy and multilingual users, though
  poor rural broadband limits reach. Minister [[bosun-tijani]] frames it as flagship
  public-sector AI. See [[tech.ai]], [[include.access]], [[capacity.literacy]]. Source:
  [[2026-05-22 Nigeria launches GovGuide, an AI chatbot for public service access]].
- **[[MWI]] Malawi — digital tax as e-gov infrastructure (2026-06).** The
  [[malawi-revenue-authority]]'s **Electronic Invoicing System (EIS)** now generates
  **>$1.2m/day**, with May collections **>$28m** and **~7,500 of ~9,000** VAT operators
  migrated — real-time transaction capture as a governance backbone, constrained by
  blackouts and connectivity. Sits alongside the Bomalathu portal above. See [[dpi.mis]],
  [[data.statistics]], [[gov.policy]]. Source: [[2026-06-03 Malawi reaps digital tax gains]].
- **[[UGA]] Uganda — sourcing e-gov locally (2026-05).** The Government Systems Prototype
  Showcase and **National Innovator Registry** (gazetted 5 Jul) invite locally built systems
  for service delivery, interoperability and DPI atop Uganda's **[[mosip]]**-based ID (>28m
  records) — "technology sovereignty" as a procurement strategy. See [[dpi.id]],
  [[tech.innovate]]. Source:
  [[2026-05-22 Uganda launches prototype program for digital ID and public infrastructure]].
- **[[BEN]] Benin — e-services on a national exchange (2026-07).** Benin routes public
  services through a single **Portail des services publics** riding on the **[[uxp-benin]]**
  exchange (**[[cybernetica]]**'s UXP), the most active client on a bus carrying 138m+
  requests — the working template for interoperable e-gov the region is chasing. See
  [[dpi.exchange]]. Sources: [[2026-07-11 UXP Directory]], [[2026-07-03 Cybernetica]].
- **Also this ingest (2026-07).** Related e-gov moves carried on their country hubs:
  Ghana's Japanese-backed **AI-for-public-services** programme and Civil-Service AI
  capacity-building ([[GHA]]); Namibia's smart-city **digital government services**
  ([[NAM]]); Kenya's Oracle "citizen-centred digital services" talks ([[KEN]]).
- **[[KEN]] Kenya — filing tax by WhatsApp (2026-04).** The **[[kenya-revenue-authority]]** launched
  a **WhatsApp-based tax-filing chatbot** that cuts filing from **eight steps to three** and
  auto-pulls pre-filled PAYE data — meeting taxpayers "where they are" to close the gap between
  Kenya's **22m registered** and only **~7m actively filing** taxpayers. Built on Meta's WhatsApp
  ([[meta]]); mirrors SARS eFiling and Rwanda's Irembo. Government service delivery embedded in an
  everyday messaging app. See [[dpi.pay]], [[include.access]], [[data.statistics]]. Source:
  [[2026-04-02 WhatsApp tax filing set to pull millions into Kenya's tax net]].
- **[[NGA]] Nigeria — NGEA as the e-gov backbone (2026-04).** **[[nitda]]** took over the **[[ngea]]**
  (Nigeria Government Enterprise Architecture) infrastructure (KOICA-built, e-Government Masterplan
  2.0), a shared architecture for **interoperable, coordinated government systems** across MDAs —
  piloted at NIMC, Customs, Immigration and NITDA and hosted by **[[galaxy-backbone]]**. Structured
  IT investment and interoperability as an e-gov foundation. See [[dpi.exchange]], [[gov.standards]].
  Source: [[2026-04-07 NITDA Assumes Control Of NGEA Infrastructure]].
- **[[ZAF]] South Africa — SARS modernisation as e-gov (2026-04).** SARS's **Modernisation 3.0**
  (Commissioner Kieswetter) rebuilds citizen-facing service around **biometric/2FA authentication**,
  a **WhatsApp/"dumb-phone" self-help** password channel, empowered frontline staff, and a single
  whole-of-government **digital identity** — with a planned **[[sarb]]** instant-payment system.
  Revenue authority as e-gov modernisation vanguard (crossed **R2tn** collections). Entity [[sars]].
  See [[dpi.id]], [[dpi.pay]]. Source:
  [[2026-04-03 Say goodbye to SARS tax numbers in South Africa]].
- **[[KEN]] Kenya — Safaricom's My OneApp super-app (2026-04).** [[safaricom]] merged its **M-PESA
  App and MySafaricom App into "My OneApp,"** a single interface for payments, account management and
  telecom services — a private super-app consolidating consumer-facing service access (thin
  announcement, no figures). See [[dpi.pay]], [[tech.industry]]. Source:
  [[2026-04-02 Safaricom Introduces My OneApp to Simplify Payments, Accounts, and Service Access]].
- **[[CIV]] Côte d'Ivoire — MaPoste, a postal super-app (2026-01).** **[[oneci]]** and
  **[[la-poste-cote-divoire]]** launched **[[maposte]]** (16 Jan 2026), giving every National
  Identification Number (NNI) holder a digital mailbox and remote access to ID-card delivery and
  civil-status/nationality/criminal-record certificates across a "phygital" 200+-agency network —
  e-gov built directly on ONECI's biometric register. See [[dpi.id]], [[dpi.registry]]. Source:
  [[2026-01-19 Ivory Coast Launches MaPoste to Digitize Postal and Administrative Services]].
- **[[ZMB]] Zambia — passports online, e-gov law rewritten (2026-01).** [[smart-zambia-institute]]
  launched an **Online Passport Application & Payment System** (~8 Jan 2026; **>1,000** passports
  already processed online), part of a paperless push projected to save **>ZMW400m (~$15m)** in
  stationery. In parallel the government tabled an **Electronic Government (Amendment) Bill** revising
  Act No. 41 of 2021 to give **legal standing to electronic submissions and digital authentication**
  and unblock end-to-end digital services — officials naming **fragmented, vendor-locked systems** as a
  "governance, policy and legal alignment" problem, not a technical one. Builds on the ~300-of-1,500
  services baseline above. See [[gov.legislate]], [[dpi.id]], [[dpi.exchange]], [[gov.standards]].
  Sources: [[2026-01-08 Zambia unveils online passport application system]],
  [[2026-01-23 Zambia begins amending Electronic Government Act]].
- **[[MOZ]] Mozambique — a governance-first overhaul (2026-02).** At the country's first national
  digital-transformation conference (Maputo), President **Daniel Chapo** ordered the digitisation of
  **all** government services — identity, licensing, tax, business registration via a centralised
  citizen portal — explicitly **modelled on Kenya and Rwanda**, with a **Multi-Sector Technical
  Commission** to draft an interoperability roadmap by **mid-2026** and a new **Ministry of
  Communications and Digital Transformation** ([[atdi-mozambique]]) to lead ("no technological islands
  within the state"). The scale: Mozambique ranks **177/193** on the 2024 UN E-Gov Index (0.2848), with
  only ~**25%** internet access. See [[gov.policy]], [[dpi.exchange]], [[gov.regional]]. Source:
  [[2026-02-21 Mozambique Launches Digital Government Overhaul, Looking to Kenya and Rwanda as Models]].
- **[[MWI]] Malawi — presidential order + strategy validation (2026-02).** President **Mutharika**'s
  State of the Nation Address directed all MDAs to digitalise passports, ID cards, driver's licences and
  procurement **"forthwith,"** with a **Digital Identity Wallet** in testing and an **80%
  internet-usage** target under Malawi 2063. Days later the Ministry of ICT ([[malawi-ministry-of-ict]])
  / Department of E-Government, with **[[undp]]**, opened validation of a **Draft National Digital
  Transformation Strategy** and **Draft National AI Strategy** (Lilongwe workshop) plus a "Shape
  Malawi's Digital and AI Future" feedback portal. See [[dpi.id]], [[gov.policy]], [[tech.ai]],
  [[capacity.training]]. Sources: [[2026-02-16 Malawi President orders digital revolution]],
  [[2026-02-20 Malawi validates AI strategy, digital transformation policy - CAJ News Africa]].
- **[[COD]] DR Congo — a platform by Q1, on a costly blueprint (2026-01).** The DRC targets a
  **digital-government platform** plus a **national interbank payment platform, online tax portal and
  customs system** for Q1 2026, under a **2026–2030 Blueprint** (four pillars) requiring ~**$10.4bn**
  (government committing ~$1.5bn), backed by the World Bank **[[idea-mpa]]** programme and AFD; it rests
  on the **[[rdc-pass]]** national ID operated by Singapore's **[[trident-digital-tech]]** ($97.1m).
  Ambition far outrunning financing. See [[dpi.id]], [[dpi.pay]], [[infra.store]]. Source:
  [[2026-01-30 DRC envisages a functional digital government platform by March]].
- **[[TZA]] Tanzania — GovTech maturity as the East African benchmark (2026-01).** The World Bank's
  **2025 GovTech Maturity Index** ([[gtmi]]) placed Tanzania in **Group A ("Extensive")** alongside
  **[[KEN]], [[RWA]], [[UGA]] and [[EGY]]** — scored on 48 indicators across four pillars. Tanzania's
  back-end (**GovESB** data-exchange bus, HCIMS, Ajira, **NeST** procurement, **GePG** payments) anchors
  the tier; the Bank stresses the shift from launched portals to **interoperability, adoption and
  impact**, with **digital citizen engagement** the weak pillar region-wide. See [[dpi.exchange]],
  [[gov.standards]], [[dpi.id]]. Source:
  [[2026-01-26 Tanzania's GovTech success raises bar for East Africa's digital states]].
- **[[CMR]] Cameroon — council-level civil documents go digital (2026-01).** A **[[undp]]**-implemented,
  Denmark-funded system digitises birth, marriage and death certificates at council level across **10
  municipalities** in the Far North, North-West and South-West — service continuity and legal-identity
  access in crisis/displacement regions. Fuller treatment on [[dpi.registry]]. See [[dpi.id]],
  [[digital.localgov]]. Source: [[2026-01-13 Cameroon intros digital system for civil documents]].

## Places

[[ZMB]] · [[ZAF]] · [[XGL]] · [[MWI]] · [[GHA]] · [[NAM]] · [[KEN]] · [[NGA]] · [[UGA]] · [[BEN]] ·
[[CIV]] · [[MOZ]] · [[COD]] · [[TZA]] · [[RWA]] · [[EGY]] · [[CMR]]

## Sources

- [[2025-09-11 DZAP World Bank PAD]]
- [[2025-12-15 The Path to a Sovereign Tech Stack is Via a Commodified Tech Stack  TechPolicy.Press]]
- [[2026-07-07 South Africa's state IT agency is slowing government tech rollout]]
- [[2025-01-01 dpi_conceptualisation_and_measurement]]
- [[2026-07-07 Malawi integrates immigration e-services]]
- [[2026-06-20 Ethiopia launches unified MESOB Platform to accelerate national digital transformation]]
- [[2026-06-08 Kenya proposes marketplace for State data]]
- [[2026-05-18 Eswatini promotes digital transformation project through World Bank engagements]]
- [[2026-06-19 Microsoft SA secures digital talent for govt]]
- [[2026-06-11 DR Congo to Launch National Digital Identity System RDC-PASS on June 13]]
- [[2026-06-18 UAE-Kenya Tech Partnership Gains Momentum as AI Investments Grow]]
- [[2026-06-17 Zambia's govt leans towards open-source]]
- [[2026-05-22 Nigeria launches GovGuide, an AI chatbot for public service access]]
- [[2026-06-03 Malawi reaps digital tax gains]]
- [[2026-05-22 Uganda launches prototype program for digital ID and public infrastructure]]
- [[2026-07-11 UXP Directory]]
- [[2026-07-03 Cybernetica]]
- [[2026-04-02 WhatsApp tax filing set to pull millions into Kenya's tax net]]
- [[2026-04-07 NITDA Assumes Control Of NGEA Infrastructure]]
- [[2026-04-03 Say goodbye to SARS tax numbers in South Africa]]
- [[2026-04-02 Safaricom Introduces My OneApp to Simplify Payments, Accounts, and Service Access]]
- [[2026-01-19 Ivory Coast Launches MaPoste to Digitize Postal and Administrative Services]]
- [[2026-01-08 Zambia unveils online passport application system]]
- [[2026-01-23 Zambia begins amending Electronic Government Act]]
- [[2026-02-21 Mozambique Launches Digital Government Overhaul, Looking to Kenya and Rwanda as Models]]
- [[2026-02-16 Malawi President orders digital revolution]]
- [[2026-02-20 Malawi validates AI strategy, digital transformation policy - CAJ News Africa]]
- [[2026-01-30 DRC envisages a functional digital government platform by March]]
- [[2026-01-26 Tanzania's GovTech success raises bar for East Africa's digital states]]
- [[2026-01-13 Cameroon intros digital system for civil documents]]
- [[2025-11-09 Behind the speedy MyMzansi screens and the Presidency's race to build a digital government]]
- [[2026-01-07 Digital driving licence coming to South Africa]]
