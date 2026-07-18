# KEN (Kenya) — sweep manifest

- **Batch:** KEN-2026-07-17
- **Window:** 2025-01-01 -> 2026-07-17
- **Sources:** Newspapers — Daily Nation (nation.africa), The Standard (standardmedia.co.ke), both English. Journals — fixed 8 (J1/J2, country-name), heaviest yield from biometricupdate, techcabal, itweb, techafricanews, telecomreviewafrica, connectingafrica.
- **Counts:** staged **84** · dropped **53** (already-held 25, out-of-window 12, off-topic 8, pr-wire-better-twin 5, same-outlet-recrawl 3). Drops -> `sweep/drop-log-KEN.csv`.
- **Month-slicing:** Exa did NOT hard-filter by domain here — single Kenya-wide topic queries surfaced hits across all target domains at once; recency-swamping was not the failure mode (semantic scatter + site: leakage was). Hand-filtered every result set to the target host. Explicit per-month slicing not needed; year anchors (2025 2026) sufficed given the very high absolute volume.
- **Body note:** 6 items carry full clips (telecomreviewafrica, non-paywalled); 61 carry substantial Exa lede/key-fact **excerpts** (`body_completeness: excerpt`); 17 items — almost all **The Standard** — are **paywalled/JS-rendered** and returned only page chrome via Exa (`body_completeness: summary-only`, marked `[CLIP]`): title + byline + related-topics captured, **dates verified from visible bylines**, full clip required on promotion.
- **Per-domain staged yield:** nation 20; standard 17; biometricupdate 13; itweb 10; techafricanews 8; techcabal 6; telecomreviewafrica 6; connectingafrica 4
- **Notable NEW entities referenced, no wiki page yet:** national-registration-bureau, national-cyber-security-agency-kenya, moniepoint (Kenya entry), kenswitch, Baobab Cloud/Mitsumi, TouchNet, Qhala/Amini AI/Angani (Qubit Hub), LINX Nairobi.

## Digital ID / Maisha Namba
`published | topics | source | title | why-it's-new`
2025-01-29 | dpi.id, include.access | biometricupdate | Court judgement paves way for national ID issuance to over 40k 'persecuted' Kenyans | NEW; statelessness/inclusion ruling (Pemba, Shona, double-registration groups) — exclusion angle absent from held ID thread
2025-02-25 | dpi.id, dpi.registry | biometricupdate | Kenya's birth registration reforms set the stage for automatic national ID issuance | NEW; UPI-at-birth / CRVS-to-ID linkage detail predating held Births&Deaths Bill items
2025-03-12 | dpi.id, gov.protect | standard | Experts warn Kenya's Maisha Namba digital ID discriminative, threatens privacy [CLIP] | NEW national-paper court coverage; expert testimony on discrimination/privacy in the Maisha petition
2025-03-17 | dpi.id, gov.protect, include.access | biometricupdate | Advocates pick privacy, inclusion holes in Kenya's Maisha Namba digital ID system | NEW; civil-society critique detail (privacy/inclusion gaps) on Maisha
2025-05-19 | dpi.id, gov.standards, gov.protect | biometricupdate | Kenya releases draft guidance on biometrics, age assurance | NEW; ODPC draft guidance on biometrics & children age-assurance — standards thread not held
2025-05-27 | dpi.id, dpi.mis | biometricupdate | Kenya to harmonize education sector data through Maisha Namba ID integration | NEW EMIS angle; Maisha Namba as education-sector unique learner ID
2025-07-18 | dpi.id, gov.policy, dpi.exchange | biometricupdate | Kenya considers dedicated digital ID in digital trade policy reform | NEW; digital-trade-policy tie-in to a dedicated digital ID
2025-10-14 | dpi.id, dpi.registry | nation | Explainer: Why IEBC is using iris identification technology | NEW; iris biometrics in the voter register (2027 prep) — biometric-electoral ID angle
2026-01-15 | dpi.id, include.access | biometricupdate | Kenya announces more national ID reforms to facilitate service access | NEW 2026 reform package (vetting removal, decentralised issuance)
2026-03-23 | dpi.id, gov.protect, dpi.pay | biometricupdate | Kenyan high court ruling recognizes phone numbers as digital ID | NEW landmark ruling: phone number = personal data / digital identifier; M-Pesa privacy implications
2026-05-21 | dpi.id, dpi.registry, dpi.mis | biometricupdate | Kenya rolls out digital birth notification system tied to national ID reforms | NEW digital birth-notification system (hospital-to-CRVS) feeding automatic ID
2026-06-15 | dpi.id, dpi.mis, include.access | biometricupdate | Kenya expands digital ID program to minors through health sector rollout | NEW; biometric enrolment of 7-17 dependants via SHA, Maisha Namba linked to child health records
2026-06-15 | dpi.id, dpi.registry, geopol.eu, gov.regional | biometricupdate | EU supports Kenya to boost digital ID for cross-border trade, land verification | NEW EU-funded ID-for-trade & land-verification support
2026-06-15 | dpi.id, dpi.registry, infra.cybersec | standard | KTN investigation exposes illegal trade in Kenyan IDs, passports and birth certificates [CLIP] | NEW investigative expose of ID/passport fraud networks (registration-integrity angle)
2026-06-22 | dpi.registry, dpi.govtech | standard | Kenyans can now download birth certificates online [CLIP] | NEW; online birth-certificate download via eCitizen (CRVS digitisation)
2026-06-24 | dpi.govtech, gov.protect, dpi.id | biometricupdate | Kenya moves to institutionalize trust as digital government services expand | NEW; digital-trust framework as eCitizen/ID services scale
2026-06-26 | dpi.id, gov.protect, infra.cybersec | biometricupdate | Kenya considers linking national ID database to CCTV facial recognition network | NEW surveillance escalation: proposal to link ID database to CCTV/facial-recognition
2026-07-01 | dpi.id, dpi.govtech | standard | Kenyans to get ID cards in 10 days, passports in a week as govt procures new system [CLIP] | NEW; procurement of new ID/passport issuance system, SLA cut to 10 days

## Data protection / governance
`published | topics | source | title | why-it's-new`
2025-07-05 | gov.protect, gov.policy | standard | Data protection office launches Sh12.6 billion privacy plan [CLIP] | NEW; ODPC 5-yr strategic/privacy plan & budget — enforcement-capacity detail
2026-01-31 | gov.protect, gov.policy | standard | Public trust in data governance crucial to Kenya's digital future [CLIP] | NEW op-ed (Houghton/Momanyi) framing Data Privacy Conference 2026 & trust deficit
2026-02-28 | gov.protect | standard | Why every Kenyan must protect their personal data [CLIP] | NEW; Data Commissioner Kassait op-ed on data rights (attributable primary voice)
2026-03-31 | gov.protect, tech.ai | nation | Kenya joins UK, US in probing controversial Ray-Ban Meta AI glasses | NEW; ODPC privacy probe of Meta AI wearables (biometric/consent angle)
2026-05-13 | gov.protect, gov.legislate | nation | Register or face shutdown: Kabogo to betting firms with children's data | NEW; ODPC/ICT CS enforcement threat over betting firms holding children's data

## eCitizen / GovTech
`published | topics | source | title | why-it's-new`
2025-04-01 | dpi.govtech, dpi.pay | nation | Court halts mandatory school fees payment via eCitizen | NEW; court check on mandatory eCitizen payment rails (coercion/inclusion)
2025-04-20 | dpi.govtech, gov.legislate | nation | Why MPs want multi-billion shilling e-Citizen deal cancelled | NEW; parliamentary scrutiny of eCitizen/Pesaflow contract
2025-07-23 | dpi.govtech | standard | PS Kiptoo summoned as probe shows E-citizen payments don't reach Treasury accounts [CLIP] | NEW; eCitizen revenue-leakage probe (Treasury reconciliation gap)
2026-03-10 | dpi.govtech, gov.protect | standard | Hand over eCitizen platform to State - Auditor General recommends [CLIP] | NEW; Auditor-General recommends state control of eCitizen (data-sovereignty/ownership)
2026-03-26 | dpi.govtech | techafricanews | eCitizen Grows to 22,000 Services as Kenya Briefs Parliament on Digital Platform Audit | NEW dated scale figure: 22,000 services; parliamentary audit briefing
2026-03-26 | dpi.govtech, dpi.pay | itweb | Kenya's eCitizen revenue hits $4.6m daily | NEW dated revenue figure ($4.6m/day) on eCitizen throughput
2026-03-27 | dpi.govtech, dpi.pay | standard | e-Citizen heist: How Pesaflow diverted Sh6.3b to private accounts [CLIP] | NEW; Sh6.3bn eCitizen/Pesaflow diversion scandal detail
2026-04-25 | gov.policy, dpi.govtech, infra.cybersec | standard | CS Kabogo: Digital economy now established, focus shifts to governance and accountability [CLIP] | NEW; ICT CS policy pivot to governance/trust/cyber (framing primary)
2026-06-23 | dpi.govtech | nation | Agencies defy Ruto's e-Citizen order, 1,695 services yet to be migrated | NEW; migration-mandate non-compliance (1,695 services unmigrated)

## Data marketplace / open data
`published | topics | source | title | why-it's-new`
2026-06-07 | data.open, gov.policy, dpi.govtech | nation | State plans eCitizen data sale to boost revenue | National-paper PRIMARY for the State data-marketplace (held only via itweb) — 1,000 datasets/5yr, KNBS, non-personal only
2026-06-08 | data.open, gov.protect | nation | Curb risks in data sale plan (editorial) | NEW; editorial caution on privacy/anonymisation risks of the data-sale plan
2026-06-08 | data.statistics, data.open, dpi.pay | techafricanews | Safaricom and KNBS Partner to Harness Mobile Data for National Planning | NEW; Safaricom-KNBS mobile-data-for-official-statistics MoU (private data → public planning)

## Payments / fintech
`published | topics | source | title | why-it's-new`
2025-09-22 | dpi.pay, infra.store | techcabal | Safaricom completes M-PESA's biggest upgrade in a decade | NEW; core M-Pesa re-platforming (Fintech 2.0), 8,000 TPS target — resilience/sovereignty of the rail
2025-11-26 | dpi.pay, tech.industry | itweb | Safaricom unveils Daraja 3.0 as M-PESA API transactions surge | NEW; Daraja 3.0 developer API upgrade (fintech-platform layer)
2026-01-13 | dpi.pay, tech.innovate | itweb | M-PESA gets new partner to elevate blockchain tech | NEW; M-Pesa blockchain/Web3 partnership (settlement direction)
2026-01-28 | dpi.pay, gov.protect | techcabal | M-Pesa has become too big for Kenya to fail | NEW analysis; CBK systemic-risk framing of M-Pesa concentration
2026-02-10 | dpi.pay, finance.new | connectingafrica | Safaricom, NSE enable share trading via M-Pesa (Ziidi Trader) | NEW; M-Pesa Ziidi Trader opens NSE equities to retail (capital-markets DPI)
2026-03-20 | dpi.pay, gov.protect | techcabal | M-PESA privacy push to target merchant payments, bank transfers | NEW; M-Pesa to mask full phone numbers to merchants/banks by end-2026 (data-minimisation)
2026-04-02 | dpi.pay, finance.new | connectingafrica | Unicorn fintech Moniepoint enters Kenyan market | NEW; Nigerian unicorn Moniepoint enters Kenya (cross-border fintech competition to M-Pesa)
2026-04-03 | dpi.pay, finance.mou | techcabal | Kenswitch taps Visa to strengthen bid for Kenya's national switch | NEW; Kenswitch-Visa alliance for the national payment switch (interoperability contest)
2026-04-23 | tech.ai, gov.protect, dpi.pay | nation | Safaricom sued over AI use in customer service and M-PESA decisions | NEW; suit over automated/AI decisioning on M-Pesa (algorithmic-accountability first)
2026-05-08 | dpi.pay, include.divides | nation | Kenyans 'Fuliza' record Sh1.4 trillion loans for food, rent and fees | NEW dated figure; Sh1.4tn Fuliza mobile-overdraft volume (digital-lending dependence)
2026-07-01 | dpi.pay, finance.new | techcabal | Why M-PESA sees Kenya's next financial gap in credit | NEW; M-Pesa credit/lending strategy (Fuliza/overdraft expansion)
2026-07-14 | dpi.pay, infra.cybersec, dpi.id | nation | DTB, Safaricom liable for Sh4.4m SIM-swap fraud loss, court rules | NEW; court liability ruling on SIM-swap fraud (identity/KYC & telco duty)

## Tax / KRA digital
`published | topics | source | title | why-it's-new`
2025-09-24 | dpi.pay, gov.legislate, geopol.usa | standard | Why KRA is after Netflix, ChatGPT, Airbnb with new digital tax [CLIP] | NEW; significant-economic-presence / digital-services tax on non-resident platforms
2026-01-01 | dpi.pay, gov.legislate | nation | Petroleum dealers protest State order on eTIMS use at fuel stations | NEW; eTIMS mandate friction (digital-tax-infra rollout resistance)
2026-05-31 | dpi.pay, include.divides, gov.legislate | nation | Telcos warn transactions cost to rise by 33pc if MPs approve higher excise tax | NEW; Finance Bill 2026 mobile-money excise hike & phone-import tax (affordability)

## Data centres / cloud / AI infra
`published | topics | source | title | why-it's-new`
2025-05-14 | infra.store, tech.ai | itweb | Safaricom, iXAfrica launch East Africa's first AI-ready data centre | NEW; Safaricom-iXAfrica NBOX1 AI-ready DC partnership (twins: telecomreviewafrica/connectingafrica/techafricanews same event)
2025-06-05 | tech.ai, infra.store, geopol.usa | itweb | Safaricom selects AWS for GenAI use cases | NEW; Safaricom-AWS GenAI deal (US-hyperscaler dependence angle)
2025-07-17 | infra.store, tech.ai | techafricanews | TouchNet Brings Sovereign AI Cloud to Kenya, Hosted at iXAfrica Data Centre | NEW; earlier sovereign-AI-cloud entrant (TouchNet) predating held Servernah
2026-03-26 | tech.ai, gov.policy, finance.new | standard | Kenya bets Sh152 billion on AI to become Africa's technology hub [CLIP] | NEW; Sh152bn national AI investment framing (AI strategy funding)
2026-05-10 | infra.store | standard | Airtel takes on Safaricom with Sh5.6b data centre [CLIP] | NEW national-paper coverage of Airtel Nxtra Tatu City DC (competition framing; twin of held DCD/telecomreview)
2026-05-22 | infra.store, tech.ai | techafricanews | iXAfrica Data Centres and Baobab Cloud Services Launch Sovereign Public Cloud Platform in Kenya | NEW; iXAfrica-Baobab-Mitsumi sovereign public cloud launch
2026-05-25 | tech.ai, infra.store, tech.innovate | techafricanews | Qhala, Amini AI, Angani and iXAfrica Unite to Launch AI Infrastructure Hub in Kenya | NEW; Qubit Hub AI-compute collaboration (local AI-infra ecosystem)
2026-06-05 | infra.store, tech.ai, gov.policy | itweb | Kenya targets AI, data centres expansion | NEW; Tanui policy-forum push on DC/cloud regulatory reform (Konza, Oracle region)
2026-06-16 | infra.store, tech.ai, gov.protect | standard | Tech firms launch country-first sovereign cloud to protect sensitive data [CLIP] | NEW; GITEX-Kenya sovereign-cloud launch (national-paper, data-residency framing)

## AI strategy / surveillance
`published | topics | source | title | why-it's-new`
2026-02-20 | tech.ai, gov.policy | nation | Real test lies ahead for Kenya's new AI roadmap | NEW opinion; critical read of the Kenya AI Strategy 2025-2030 rollout
2026-04-03 | tech.ai, infra.cybersec | nation | State turns to AI to curb insecurity | NEW; AI-for-policing/security deployment plans (surveillance-governance angle)
2026-05-24 | tech.ai, gov.protect, infra.cybersec | nation | State seeks Sh2.7 billion for AI surveillance on social media, communication centre | NEW; Sh2.7bn AI social-media monitoring/communications-surveillance budget bid

## Connectivity / telecom
`published | topics | source | title | why-it's-new`
2025-01-25 | infra.connect, include.access | standard | Local ISPs now feel the heat as Starlink doubles market share [CLIP] | NEW; early-2025 Starlink share growth vs local ISPs (LEO disruption)
2025-05-08 | infra.connect, gov.regional | connectingafrica | Bayobab connects Uganda, Kenya with new fiber route | NEW; MTN Bayobab Uganda-Kenya terrestrial route
2025-10-30 | infra.connect, geopol.usa | telecomreviewafrica | Meta Selects Safaricom as Landing Partner for Daraja Subsea Cable | NEW; Meta Daraja cable (Oman-Mombasa, 4,108km) landed by Safaricom (twin: techcabal 2025-10-28)
2025-11-05 | infra.connect, digital.rural | telecomreviewafrica | Kenya Advances Fiber and Wi-Fi Rollout with Public-Private Push | NEW; Digital Superhighway 100,000km fibre / 25,000 hotspots PPP (Ngcaba/SEACOM)
2026-01-20 | digital.localgov, infra.connect | telecomreviewafrica | Kenya Advances Digital Economy with Fiber, Wi-Fi, and Youth Programs | NEW; Kirinyaga county 102.4km fibre to One Government Network (sub-national digitalisation)
2026-02-05 | infra.connect, gov.regional | connectingafrica | East African telcos ink cross-border fiber network deal | NEW; multi-operator cross-border EA fibre pact (regional backbone)
2026-03-09 | infra.connect | telecomreviewafrica | Ericsson and Safaricom Deepen Collaboration to Strengthen Kenya's 5G Transport Network | NEW; multi-year Ericsson microwave/5G-transport deal, 1Gbps to North Kenya
2026-05-06 | infra.connect, geopol.china | telecomreviewafrica | Safaricom Launches Kenya's First Fiber-to-the-Room Service with Huawei | NEW; Safaricom-Huawei FTTR home-fibre launch (twin: techafricanews 2026-05-06)
2026-05-18 | infra.connect, gov.legislate | itweb | Safaricom secures landmark 25-year licence | NEW; Safaricom's 25-year unified licence renewal (market-structure)
2026-06-20 | include.divides, infra.connect | nation | Smartphones hit 50m, basic handsets ditched | NEW dated device figure; 50m smartphones (digital-divide/access shift)
2026-06-24 | infra.connect, include.access | telecomreviewafrica | Safaricom Strengthens Market Leadership in Kenya's Broadband Sector | NEW; CA Q3 2025/26 stats — 84.1m SIMs, Safaricom 68.9%, Starlink top-10 ISP (24,999 subs)
2026-07-10 | infra.connect, dpi.exchange | itweb | LINX expands Kenya peering network | NEW; LINX Nairobi peering/IXP expansion (local traffic exchange)

## Cybersecurity
`published | topics | source | title | why-it's-new`
2025-11-17 | infra.cybersec | nation | Hackers target several government websites, temporarily take over presidency portal | NEW; breach of gov portals incl. presidency (state-cyber-resilience gap)
2026-06-22 | infra.cybersec, gov.protect | nation | Puzzle over Ruto cybersecurity unit | NEW; scrutiny of a new presidential cyber/monitoring unit (oversight concerns)
2026-06-23 | infra.cybersec, gov.legislate | itweb | Kenya approves National Cyber Security Agency | NEW; creation of a National Cyber Security Agency (institutional)
2026-07-01 | infra.cybersec, tech.ai, gov.policy | standard | Government moves to bolster cybersecurity, tighten AI governance [CLIP] | NEW; combined cyber-agency + AI-governance policy move (Omollo)
2026-07-02 | gov.legislate, infra.cybersec, gov.protect | nation | New Bill: Sharing State secrets on WhatsApp, emails could land you in jail | NEW; official-secrets/data bill criminalising digital leaks (speech/privacy tension)

## Policy / innovation / EU
`published | topics | source | title | why-it's-new`
2026-01-07 | tech.innovate, include.divides | techcabal | Kenya's tech future is no longer a Nairobi monopoly | NEW analysis; decentralisation of Kenya's startup ecosystem beyond Nairobi
2026-02-20 | gov.policy, infra.connect | techafricanews | Kenya Presents 2026 ICT and Digital Economy Budget Policy Statement to Parliament | NEW; FY2026/27 ICT budget policy statement (spending priorities)
2026-05-13 | gov.legislate, tech.innovate | itweb | Kenya enacts new law to formalise tech zones | NEW; law formalising ICT/tech special zones (Konza-style incentives)
2026-06-09 | geopol.eu, finance.new, gov.policy | techafricanews | Kenya Secures Ksh.15.3 Billion EU Boost to Accelerate Digital Transformation | NEW; Ksh15.3bn EU digital-transformation funding (Global Gateway)
2026-06-18 | geopol.eu, gov.policy, dpi.exchange | techafricanews | Kenya Deepens EU Digital Cooperation on AI, Data Governance and DPI | NEW; EU-Kenya cooperation on AI/data-governance/DPI (Brussels-effect alignment)
