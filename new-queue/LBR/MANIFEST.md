# Sweep manifest — LBR (Liberia)

- **Batch:** LBR-2026-07-17
- **Window:** 2025-01-01 → 2026-07-17 (full; no prior `window_done`)
- **Sources swept:** Newspapers — FrontPage Africa (fpa.news / frontpageafricaonline.com), Liberian Observer (liberianobserver.com), both English, N1–N7. Journals — 8 fixed trade journals, J1–J2 (country-name-led).
- **Month-slicing:** not required — medium volume, no query recency-swamped within window.
- **Staged:** 20 · **Dropped:** 5 (see `sweep/drop-log-LBR.csv`)
- **Yield finding:** Liberia is **well-collected, NOT thin** (established, not assumed). Both target newspapers were previously uncollected (0 fpa.news / 0 liberianobserver.com in held-urls). National ID crisis, IIPS/Pay Na-Na, and LTA/connectivity all richly covered across both papers plus journals.
- **Language:** English only (both papers publish in English).

## Staged items — by theme

`published | topics | source | title | why-it's-new`

### Digital identity / NIR crisis (dpi.id)
- 2025-04-30 | dpi.id, dpi.registry, include.access, gov.protect | Liberian Observer | No National ID, No Transaction (EO 147) | Observer's original announcement of Executive Order 147 mandating biometric ID; same event as held biometricupdate/idtechwire but from a sweep newspaper.
- 2025-06-24 | dpi.id, gov.protect, infra.cybersec | Liberian Observer | Current Nat'l ID Card "Could Undermine Nat'l Security" | NAYMOTE's Jarwolo attacks card quality/security, urges Ghana/Nigeria-style chip + ECOWAS technical help — distinct civil-society critique not in wiki.
- 2025-07-09 | dpi.id, dpi.registry | Liberian Observer | Kofi Woods Leads National ID Card Initiative | Observer account of NBIS steering committee (Woods chair), April 2026 target, EO147 suspension detail.
- 2026-03-20 | dpi.id, dpi.registry, gov.protect | FrontPage Africa | National ID Rollout Held Up by $1.7M Unpaid Debt | Names Techno Brain (built system for $5.9m, owed $1.7m locks database); $2m WB tranche on hold; deputy dir. Nyema on record. Key investigative piece.
- 2026-03-23 | dpi.id, dpi.registry | Biometric Update | National ID Issuance Grinds to Halt Over $1.7M Debt | Journal treatment of the debt/OSD-procurement halt; <15% coverage figure.
- 2026-05-13 | dpi.id, gov.protect | FrontPage Africa | Liberia Turns to Austrian Firm (OSD) to Rescue National ID | OSD concession detail: $40m enroll-all cost, secret committee report, Ghana-model PPP, no data-protection law flagged.
- 2026-05-28 | dpi.id, finance.mou | Biometric Update | Liberia Restructures National ID Deal with OSD | Concession terms: OSD finances, 18-month enroll-all, 3.5m free cards, polycarbonate card, parliament ratification pending (ID4Africa 2026 interview).

### Data governance / protection / cybersecurity (gov.protect, infra.cybersec)
- 2025-06-11 | gov.protect, gov.legislate, gov.regional | Liberian Observer | House Reviews Privacy, Data Protection Bill | Boakai's Personal Data Protection bill referred to House PT&T committee; EU/Internews-backed; ECOWAS Supplementary Act basis. Liberia's DP-law gap is a watch item.
- 2026-02-12 | infra.cybersec, gov.protect | Liberian Observer | House to Probe Data Breach (2m citizens) | Alleged breach of LRA/LEC/NIC data (~2m citizens) sold on dark web; LRA denies; House investigation — first breach story in wiki scope.
- 2026-04-29 | dpi.govtech, dpi.exchange, gov.policy, gov.standards, infra.cybersec | Liberian Observer | Executive Order 163 — Digital Government Shift | Establishes NDMI + OTDI (presidential ICT office), enterprise-architecture & interoperability frameworks, technical-clearance regime. Major new e-gov instrument.
- 2026-05-15 | dpi.id, infra.store, gov.protect (lens: sovereignty) | Liberian Observer | Editorial: Liberia Cannot Build Digital Sovereignty by Outsourcing Its Digital Spine | Analytical editorial tying EO163 to the OSD/NIR outsourcing contradiction; sovereignty framing.

### Payments & digital finance (dpi.pay)
- 2025-12-15 | dpi.pay, finance.mou | Liberian Observer | CBL Formalizes IIPS Operations (Participation + SLA) | Pre-launch signing of Participation/Service-Level Agreements with MTN/Orange/ThitsaWorks — distinct event from the launch.
- 2025-12-16 | dpi.pay, finance.new | TechAfrica News | Liberia Launches IIPS to Enable Real-Time Transfers | Journal launch-day report (MTN/Orange interoperability, G2P).
- 2025-12-17 | dpi.pay, finance.new | FrontPage Africa | CBL Launches IIPS, Ends Era of Mobile Money Silos | FPA launch coverage; SIIPS-2025 context, NEPS, ARREST framing.
- 2025-12-17 | dpi.pay, finance.new | Liberian Observer | Gov't Launches IIPS with Orange Money, Mobile Money Integration | Observer launch coverage; MTN/Orange execs + World Bank on record; "Pay Na Na" branding.
- 2025-12-17 | dpi.govtech, dpi.id, dpi.pay | Liberian Observer | CSA Goes Live with Automated LPA Platform | Civil Service Agency biometric (fingerprint) LPA POS platform w/ Mwetana; 5,000 staff enrolled — new govtech item.

**Re-dating note:** the four Dec-2025 IIPS items above establish the **actual launch date as 16 Dec 2025**, whereas the wiki (`wiki/places/LBR.md`, `[[pay-na-na]]`) dates the "launch" as **2026-07-13** (a later Ngafuan *expansion* statement in The New Dawn). Flagged in worker report for ingest correction.

### Connectivity & infrastructure (infra.connect)
- 2026-01-29 | infra.connect, include.access | Liberian Observer | Liberia on the Verge of 5G Revolution | LTA (Massaquoi) 5G plan; 2nd submarine cable landing at Buchanan; fibre extension to SE counties.
- 2026-06-16 | infra.connect, gov.regional | TechAfrica News | TRANSCO CLSG Regional Fibre Expansion | Abidjan workshop: terrestrial redundancy via Côte d'Ivoire/Guinea to reduce ACE single-point-of-failure; regional consortium + SPV.
- 2026-07-17 | infra.connect, gov.legislate, gov.protect | FrontPage Africa | LTA Unveils Sweeping Telecom Reforms, Revokes Star Cell | New licensing regime, satellite/infrastructure regs, IMEI system, ccTLD localisation, Orange privacy fine (L$4m), 156-school Starlink project, Star Cell revoked.

### Finance / regional integration (finance.new)
- 2026-06-08 | finance.new, infra.connect, gov.regional | TechAfrica News | Liberia Secures $125M World Bank Support | Signing (5 Jun 2026, Mount Coffee) of WARDIP2 ($50m) + RESPITE ($57m) + SECRAMP ($18m) — update to the held WARDIP2 announcement.

## Dropped (5) — see drop-log-LBR.csv
- FPA Starlink provisional license (2024-10-11) — out-of-window
- FPA NIR press release re Boakai/EO147 support (2025-05-06) — pr-wire-better-twin (EO147 covered by Observer newspaper item)
- Observer "Stakeholders to Validate Draft Data Privacy Legislation" (2024-12-17) — out-of-window
- TechAfrica News WARDIP2 $125m re-run (2026-06-11) — same-outlet-recrawl (kept 06-08)
- TechAfrica News "Where Is Africa's Data Actually Being Stored?" (2026-05-14) — off-topic (pan-African, not LBR-specific; belongs to XAF)
