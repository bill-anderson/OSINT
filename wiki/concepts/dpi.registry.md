---
type: concept
title: Registries (population, land, address, etc.)
slug: dpi.registry
places: [COG, COD, BFA, BDI, AGO, ZAF, TZA, UGA, ETH, NGA, RWA, ZMB, XWA, BEN, CIV, CMR, LSO, MDG, XGL, CAF, DZA, EGY]
entities: [[sa-digital-id-regulations], [nida-tanzania], [mosip], [fayda-ethiopia-national-id], [digital-id-assessment], [nimc], [nigeria-id4d], [nida-rwanda], [sars], [smart-zambia-institute], [dzap], [wuri-programme], [ecowas], [anip-benin], [world-bank], [undp], [oneci], [maposte], [nissa-lesotho], [universal-dpi-safeguards-framework], [mg-ministry-digital-development], [opencrvs], [gates-foundation]]
lens: [sovereignty]
status: active
last_reviewed: 2026-07-12
sources: [[2026-04-21 South Africa's digital ID gets a targeted launch date], [2026-05-29 Opinion South Africa's Digital Identity Regulations A Governance Crossroads], [2026-04-22 Tanzania seeks biometrics contractors for Phase II of national digital ID project], [2026-05-22 Uganda launches prototype program for digital ID and public infrastructure], [2026-05-12 Strengthening Fayda Ethiopia's improvement journey through the Digital ID Assessment], [2025-02-13 Digital ID necessity increases in Nigeria despite lingering challenges], [2026-03-16 Digital IDs How registration is progressing so far], [2026-04-03 Say goodbye to SARS tax numbers in South Africa], [2026-03-24 Zambia looking for MOSIP system integrator to support digital ID project], [2026-03-24 Zambia seeks partner for national digital ID system], [2026-03-30 ECOWAS, World Bank Advance West Africa Digital Identity], [2024-10-28 Benin receives 2,050 biometric terminals from World Bank to boost civil registration], [2025-11-01 Identification System in Benin Increasing Access to Services], [2026-01-19 Ivory Coast Launches MaPoste to Digitize Postal and Administrative Services], [2026-01-13 Cameroon intros digital system for civil documents], [2026-01-16 Lesotho's Digital Leap How Child-Centred Systems are Reshaping Social Protection], [2026-01-27 Madagascar Tests Biometric ID System, Aims to Register 2 Million People by Mid-2026], [2026-07-02 OpenCRVS v2.0 Product Launch Webinar - The Next Generation of Civil Registration], [2026-01-29 Over 4 million smart ID cards issued in 2025], [2026-01-27 SA's Telcos, Banks At War With Govt Over 6,500% ID Verification Fee Hike]]
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
  [[2026-01-29 Over 4 million smart ID cards issued in 2025]],
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
  Identification Number at birth**. With the 2017–18 mass enrolment, biometric coverage is **~99%**. See
  [[dpi.id]], [[include.access]]. Sources:
  [[2024-10-28 Benin receives 2,050 biometric terminals from World Bank to boost civil registration]],
  [[2025-11-01 Identification System in Benin Increasing Access to Services]].
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
- **[[GAB]] Gabon — registries across social, land and justice (2025).** The
  **[[registre-social-unique-gabon]]** (Unique Social Registry, technical work finalised Aug 2025;
  ANINF + World Bank) for social-programme targeting; a French **[[ign-fi]]** engagement to modernise
  the **cadastre** into an integrated land-management system ([[gabon-ign-fi-cadastre-deal]]); and
  digitalisation of judicial **custody registers** (Méndez Principles). See [[GAB]]. Sources:
  [[2025-08-28-gabon-registre-social-unique]] · [[2025-11-24-gabon-cadastre-modernization-ign-fi]].

## Places

[[ZAF]] · [[TZA]] · [[UGA]] · [[ETH]] · [[NGA]] · [[RWA]] · [[ZMB]] · [[XWA]] · [[BEN]] · [[CIV]] ·
[[CMR]] · [[GAB]] · [[LSO]] · [[MDG]] · [[XGL]] · Related: [[dpi.id]] · [[dpi.exchange]] · [[dpi.mis]]

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
- [[2026-01-29 Over 4 million smart ID cards issued in 2025]]
- [[2026-01-27 SA's Telcos, Banks At War With Govt Over 6,500% ID Verification Fee Hike]]
