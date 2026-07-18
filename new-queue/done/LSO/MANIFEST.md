# Sweep manifest — LSO (Lesotho)

- **Batch:** LSO-2026-07-17
- **Window:** 2025-01-01 → 2026-07-17
- **Newspapers (English):** lestimes.com (Lesotho Times), publiceyenews.com (Public Eye) — ran N1–N7 in English on both.
- **Journals:** all 8 fixed trade journals, country-scoped (J1–J2). Material found in ITWeb Africa, TechAfrica News, Connecting Africa, Biometric Update, TechCabal, Telecom Review Africa. wearetech.africa returned no Lesotho-specific in-window items (Francophone-leaning); techreviewafrica.com nil.
- **Month-slicing:** not needed (small market; single-pass queries returned in-window results cleanly).
- **Counts:** staged **25** (lestimes 7 · publiceye 7 · journals 11); dropped **10** (see `sweep/drop-log-LSO.csv`).
- **Thinness:** ESTABLISHED NOT THIN. Lesotho is well-covered by both national papers and the SSA trade press across 2025–2026. Strong, distinct developments on Starlink/sovereignty, a $6.2bn AI-data-centre MoU, digital-ID/MOSIP, payments (LeSwitch/M-Pesa/EcoCash), and national data/AI policy.

## Staged items (grouped by theme)

### Digital ID / DPI / civil registry
- 2025-07-29 | dpi.id, dpi.pay, dpi.exchange, finance.mou, geopol.india | Public Eye | Lesotho–India DPI MoU (India Stack) | NEW deal: India-backed digital ID + unified payments + data exchange; pilots underway
- 2026-03-03 | dpi.id, dpi.registry, gov.protect | Biometric Update | Lesotho–UNICEF 2026 work plan for MOSIP-based integrated national ID | NEW; passport/ID renewal, biometric registration, proof-of-life
- 2026-04-08 | dpi.id, dpi.registry, gov.protect, include.access | Tech Africa News | UNICEF child-focused DPI workshop | NEW; birth registration + child-data protection angle

### Data / AI / cyber policy
- 2026-06-12 | gov.policy, gov.protect, tech.ai, infra.connect | Lesotho Times | Minister signs Broadband Sharing, Data Management & AI policies + Digital Outreach Studio | NEW; three foundational policies signed
- 2026-07-09 | tech.ai, gov.policy, include.divides | ITWeb Africa | Lesotho at UN Geneva AI dialogue; 100% broadband / ~50% usage | NEW; sovereignty/co-creator framing, fresh penetration figures
- 2026-06-17 | tech.ai, capacity.training, geopol.usa | Public Eye | US Embassy + Sebabatso AI Skills Development Programme | NEW; first digital-entrepreneurship/AI training
- 2026-05-30 | tech.ai, infra.cybersec, infra.store | Lesotho Times | DNS Technologies/CBS AI-cloud-cybersecurity executive workshop | NEW; private-sector capacity, data sovereignty theme

### Data centres, cloud & sovereignty
- 2026-06-09 | infra.store, infra.energy, tech.ai, finance.new, geopol.usa | Tech Africa News | Convalt Energy $6.2bn "Project Kobong" hydropower + AI data centre (signed 4 Jun 2026; King Letsie III + Gephardt) | NEW; largest FDI in Lesotho history — see contradiction note below
- 2026-06-30 | infra.store, infra.energy, tech.ai, finance.new, geopol.usa | Connecting Africa | Same Convalt AI data centre, Mokhotlong, green-powered; 48% online penetration (2025) | NEW; complementary detail (1.2GW hydro + 4.6GW solar + 4GWh BESS; begins 2029)

### Connectivity — Starlink & satellite (sovereignty)
- 2025-03-11 | infra.connect, gov.legislate, geopol.usa | Connecting Africa | Section 2 opposes Starlink licence over 100% foreign ownership; Econet 70/30 & Vodacom 80/20 ownership precedent | NEW; pre-licence sovereignty debate
- 2025-04-22 | infra.connect, data.satellite, geopol.usa, gov.legislate | Public Eye | LCA grants 10-yr Starlink licence; Vodacom appeals for local shareholding; US-tariff link | NEW
- 2025-06-30 | infra.connect, data.satellite, geopol.usa | Lesotho Times | Starlink officially launches via T-Connect; 10,000 jobs pledge; AI-data-centre claim | NEW
- 2025-07-01 | infra.connect, data.satellite, geopol.usa, gov.legislate | Public Eye | Starlink launch — surveillance/sovereignty fears, M10/session pricing | NEW; sharpest sovereignty account
- 2025-09-12 | infra.connect, include.divides, digital.rural | Public Eye | T-Connect hands over first community hotspots (Matsieng, Thaba Bosiu, Mokhotlong) | NEW
- 2026-01-17 | infra.connect, include.access, dpi.mis | Public Eye | T-Connect Impact launch at Soofia School, Butha-Buthe (schools/clinics) | NEW (body date "2025" appears a typo — flagged)

### Connectivity — MNO networks
- 2025-05-21 | infra.connect | Lesotho Times | Econet Maseru RAN & transport network upgrade ("Re le Utloile") | NEW
- 2025-06-20 | infra.connect, tech.ai | Tech Africa News | Econet grows 5G sites 54→149 on 700MHz; AI network ops | NEW; concrete figures
- 2025-07-11 | infra.connect, include.access | Lesotho Times | Econet Wi-Fi Plus fixed-mobile-convergence launch | NEW
- 2025-08-25 | infra.connect, dpi.pay, capacity.training, geopol.usa | Tech Africa News | Vodacom network upgrade; Joosub visit; AWS digital-skills pledge | NEW
- 2026-02-17 | dpi.govtech, finance.mou, dpi.pay | ITWeb Africa | Govt–Vodacom digitisation partnership (Vodafone Egypt lead; Kenya/Egypt model) | NEW
- 2026-03-13 | infra.connect, dpi.pay, tech.industry, gov.legislate | ITWeb Africa | Vodacom $40m upgrade; M-Pesa spun off as VCL Financial Services; LCA regulatory scrutiny | NEW; distinct regulatory + fintech detail
- 2026-06-17 | infra.connect, dpi.pay, tech.industry | Public Eye | Vodacom Lesotho at 30 — 1.21m customers, 85% share, 422 base stations, 14,000 M-Pesa agents | NEW; baseline market figures

### Payments & digital finance
- 2025-04-30 | dpi.pay, tech.industry | Lesotho Times | Econet SEFS upgrades EcoCash platform (Oct-2024 migration); interest payouts | NEW
- 2025-05-14 | dpi.pay, include.access, finance.new | Lesotho Times | LeSwitch localised POS launch (11 May); Standard Lesotho Bank/CBL | NEW; different-outlet complement to held LeSwitch-POS source, adds phase detail
- 2026-06-12 | dpi.pay, finance.new, gov.regional | TechCabal | Lesotho migrants shift to fintechs (Mukuru) as SA remittance rules tighten | NEW; cross-border ZAF-dependence angle. PAYWALLED — free lede only (body_completeness: paywalled, [CLIP])

## Notes / caveats
- **Dates:** publiceyenews.com carries a live-clock chrome date (a known trap); URL-path dates used as authoritative `published`. lestimes.com bodies carry no dateline ("published every Thursday") — used the WordPress/CMS publish date (all corroborated by in-body event dates); `date_source: source`, `date_precision: day` throughout. No proxy dates required.
- **Contradiction flagged (for ingest):** the Convalt data-centre deal is described by Tech Africa News (2026-06-09) as a **binding MoA signed 4 June 2026**, but by Connecting Africa (2026-06-30) as a **non-binding MoU** pending feasibility studies. Both staged; reconcile at ingest.
- **Most significant vs held material:** wiki already holds LeSwitch, MOSIP DPI build-out, NISSA, 50-in-5, Starlink-Vodacom LEO. Genuinely NEW here: the **$6.2bn Convalt AI data centre / Project Kobong** (largest-ever FDI, sovereignty + geopol.usa); the **Lesotho-specific Starlink licensing saga** (foreign-ownership/sovereignty debate, US-tariff linkage) — the held Starlink material is pan-African, not the LSO licence fight; the **three signed digital policies (Broadband/Data/AI, Jun 2026)**; **Lesotho–India India-Stack DPI MoU**; **M-Pesa → VCL Financial Services** spin-off; and refreshed penetration figures (48% online / 100% broadband coverage 2025).
- **Same-event/different-outlet copies NOT separately staged** (never dropped — simply not multiplied, per conservative sweep dedup; the post-ingest lint #7 adjudicates): additional Starlink-launch pieces (itweb.africa "goes live" 2025-06-23; connectingafrica "lights up" 2025-06-25) and Vodacom-$40m (telecomreviewafrica 2026-03-23) and Joosub-visit (itweb 2025-08-14). Best/most-substantive outlet(s) per event were staged.
- **Out of source scope (noted, not stageable — neither target newspaper nor a fixed-8 journal):** the **National Data Value Creation Blueprint** workshop (Smart Africa + GIZ + AU, 14–15 Jul 2026; Lesotho selected alongside Senegal & Kenya) appeared only on gov.ls and lesotho.co.ls; the **AUDPF domestication / Data Governance workshops** (Jul & Oct 2025, AUDA-NEPAD/GIZ/CIPESA) on gov.ls/CIPESA/lena.gov.ls; the **digital service-ID pilot** (10,000 participants, biometric, from 2 Apr 2026) and **National AI Policy/Strategy** on gov.ls. These are strong leads for the human to source directly if desired.
