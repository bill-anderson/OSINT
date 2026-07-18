# GHA sweep manifest — batch GHA-2026-07-17

- **Country:** Ghana (GHA), region XWA
- **Window:** 2025-01-01 → 2026-07-17
- **Staged:** 85 · **Dropped:** 18 (see `sweep/drop-log-GHA.csv`)
- **Sources:** Newspapers — Graphic Online (`graphic.com.gh`), MyJoyOnline (`myjoyonline.com`),
  both English, N1–N7. Journals — all 8 fixed (J1–J2): We Are Tech, Biometric Update,
  Telecom Review Africa, Connecting Africa, ITWeb Africa, TechAfrica News, TechCabal,
  Tech Review Africa.
- **Queries:** N1–N7 × 2 papers (14) + J1–J2 × 8 journals (16) = 30 base queries. Volume is
  high; every date re-verified from the fetched body (Exa `site:` and date filters leaked
  heavily — journal J-queries returned the journals' own index/related-links pages listing
  dozens of non-Ghana articles, all hand-filtered out).
- **Month-slicing:** not required — the 2025-01-01→2026-07-17 semantic passes surfaced the
  in-window items directly across both papers and all journals; recency-swamping did not bite
  on Ghana within this window.
- **Flags:** 1 proxy date (`2025-12-15-momo-3trn…`, no in-body dateline); 1 pr-wire
  (`2026-02-27-…-techreview`, techreviewafrica.com); `2025-09-08-mtn-momo-nikulipe-telecomreview`
  is wire-like/pan-African (kept places [GHA]); `2026-06-05-ndpc-…` — "NDPC" here is the
  National **Development Planning** Commission (not the Data Protection Commission) — entity
  corrected, `gov.protect` tag should be dropped at ingest. No paywalls / [CLIP], no fetch-fails.

## Digital identity — Ghana Card / NIA / SIM (dpi.id, dpi.registry)
- 2025-04-07 | dpi.id | Graphic | NIA clearing backlog of printed Ghana Cards | pre-Sept issuance of printed-card backlog + new Accra registrations begins
- 2025-08-27 | dpi.id, gov.legislate | Biometric Update | Ghana seeks to restructure digital ID authority for law enforcement | NIA Act 707 amendment — place NIA under Interior + grant security agencies DB access *(lens: sovereignty)*
- 2025-09-12 | dpi.id | Graphic | Ghana Cards now issued instantly: 2023–2025 backlog cleared — NIA | primary Graphic record: 18.95m registered, 292 centres, instant issuance
- 2025-09-12 | dpi.id, dpi.registry | Biometric Update | Ghana begins enrolling U-14s for digital ID | under-14 (6–14) enrolment begins at premium centres
- 2025-10-13 | dpi.id, infra.cybersec, gov.protect | Biometric Update | 2022 Ghana SIM biometric data never authenticated — official | governance failure: 2022 SIM biometrics never matched to NIA DB *(lens: sovereignty)*
- 2025-12-05 | dpi.id, gov.legislate | Telecom Review Africa | Ghana to launch new nationwide SIM registration by early 2026 | govt declares 2021–23 SIM registration "invalid"; fresh biometric drive Q1 2026
- 2026-03-20 | dpi.id, infra.cybersec | Biometric Update | Ghana to introduce liveness detection in SIM verification drive | facial-liveness tied to NIA DB; 80% self-service app; L.I. pending
- 2026-03-23 | dpi.id | Graphic | Ghana Card 'non-negotiable' for SIM registration — NIA boss | Ghana Card as single source of truth for SIM registration
- 2026-03-25 | dpi.id, infra.cybersec | TechAfrica News | MTN Ghana backs phased SIM re-registration | operator angle (CEO Blewett)
- 2026-04-29 | dpi.id, dpi.registry | MyJoyOnline | NIA targets 3.1m children as Ghana Card registration for 6–14 resumes May 5 | child registration resumes, Volta/Oti first
- 2026-05-14 | dpi.id | MyJoyOnline | Ghana's identity system among world's most integrated — Baiden (ID4Africa 2026) | 19.4m enrolled, 92% adult coverage, 262 institutions
- 2026-05-22 | dpi.id | MyJoyOnline | NIA clears 640,000 card backlog, expands diaspora operations | backlog cleared by Sept 2025; 11 diaspora missions
- 2026-05-23 | dpi.id | MyJoyOnline | Ghana Card is gateway to national services — Interior Minister (NIA 20 years) | NIA 20th anniversary; Ghana Card as critical national asset
- 2026-05-29 | dpi.id, gov.legislate | Biometric Update | Ghana moves toward mandatory biometric verification as child ID expands | parliament bill for mandatory biometric verification + data-retention rules (foreshadows July L.I.)
- 2026-07-07 | dpi.id | MyJoyOnline | NIA four-step process for Ghanaians abroad | diaspora registration (US$115; London pop-up Aug 1)
- 2026-07-09 | dpi.id | MyJoyOnline | NIA/IOM special Ghana Card registration in border communities from July 13 | Ghana–Burkina border, Jul 13–Aug 6
- **2026-07-15 | dpi.id, gov.legislate | Graphic | Photocopying Ghana Card now illegal, fines up to GH¢24,000** | MAJOR: L.I. 2111 gazetted — visual/photocopy checks banned, biometric verification the only lawful method
- 2026-07-15 | dpi.id, gov.legislate | MyJoyOnline | Biometric verification now mandatory; photocopy/visual inspection illegal | companion to the L.I. 2111 story (NIA onboarding required)

## Civil registration / registries (dpi.registry)
- 2025-07-16 | dpi.registry, dpi.id | Graphic | Births and Deaths Registry receives security papers, begins clearing backlog | 181k security papers; CRVS certificate backlog cleared

## E-government / Ghana.gov / data exchange / health MIS (dpi.govtech, dpi.exchange, dpi.mis)
- 2025-04-13 | dpi.exchange, dpi.govtech | Graphic | Govt considers Danish digital model to merge NHIS, tax and licensing records | Denmark eBoks model to unify GRA/NHIS/DVLA records
- 2025-07-07 | dpi.govtech, dpi.exchange | Graphic | Govt to put 16,000 services online in major Ghana.gov revamp | full Ghana Card integration; NITA re-engineering
- 2025-07-10 | dpi.govtech, finance.new | Biometric Update | Ghana to add 16k digital govt services as part of $200m World Bank project | funding context: $200m Ghana Digital Acceleration Project (2023–2027)
- 2025-10-29 | dpi.mis, dpi.govtech | Graphic | Health Ministry rolls out new digital system after NHIS platform disruptions | nationwide GHIMS rollout after Lightwave/LHIMS failures
- 2025-10-29 | dpi.mis, gov.legislate | Graphic | Health Minister Akandoh exposes e-health scandal ($77m health-data contract) | failed $77m LHIMS contract; AG to decide recovery; 15m records reconstructed
- 2025-12-11 | dpi.govtech | Graphic | Interior Ministry launches online digital services portal | operational Dec 15; integrated with NIA databases
- 2026-05-21 | dpi.govtech, dpi.exchange | MyJoyOnline | Major shake-up to make Ghana.gov simpler for citizens | Peduase workshop (World Bank/TBI/Public Digital); GOV.UK/Irembo models
- 2026-05-25 | dpi.pay, dpi.govtech, tech.industry | TechAfrica News | Trident begins commercial rollout of GRA digital MSME platform | Trident–Aliska JV; 530k MSMEs targeted year 1 (Sikaflow)

## Data governance / protection / tech-law reform (gov.protect, gov.legislate, gov.policy)
- **2025-10-23 | gov.legislate, gov.protect, dpi.exchange | Graphic | Data Harmonisation Bill 2025 opened for public consultation (Nov 19–27)** | MAJOR: interoperability-across-systems bill
- 2025-08-01 | gov.protect, gov.policy | TechAfrica News | New Data Protection Commission board sworn in | DPC Governing Board (chair Teki Akuetteh); national data-governance framework
- 2025-09-16 | gov.protect, capacity.literacy | TechAfrica News | Ghana launches nationwide privacy awareness campaign | 1-year, 16-region; GAPP inaugurated
- 2026-01-26 | gov.protect, gov.legislate | MyJoyOnline | DPC to crack down on breaches — 2026 a "year of enforcement" | fines/imprisonment for non-compliance
- 2026-01-27 | gov.protect, gov.policy | MyJoyOnline | Deputy Comms Minister calls for institutional collaboration on data protection | 2026 Data Protection Week; DPC reached 25m in 2025
- 2026-02-04 | gov.legislate, gov.policy, tech.ai | TechAfrica News | Ghana pushes tech-law reforms for AI, fintech, cybersecurity | the "15 digital bills" agenda (TechLaw Conference 2026)
- 2026-02-27 | gov.protect, gov.policy | Tech Review Africa | Minister frames data protection as foundation of digital transformation | previews SIM registration + legislative reforms *(pr-wire)*
- 2026-05-26 | gov.legislate, gov.policy | MyJoyOnline | "What are they hiding?" — consultant questions rush for 15 digital bills | critique of NITA Bill's broad licensing + 1% levy
- 2026-05-30 | gov.legislate, gov.policy | MyJoyOnline | NITA Bill: Sam George rebuts critics, "won't rewrite the rules" | funding detail to sit in an L.I.
- 2026-06-05 | data.statistics, capacity.literacy, data.open | MyJoyOnline | NDPC boss calls for data-driven governance at UCC Data Literacy Week | NB: NDPC = National **Development Planning** Commission; GSS data-sharing with 25 MDAs
- 2026-07-16 | gov.legislate, dpi.govtech | MyJoyOnline | Govt to split NITA's regulatory and commercial functions | new NITA Act; infrastructure payments routed to NITA
- 2026-07-16 | dpi.govtech | TechAfrica News | Ghana appoints Nana Yaw Amoah-Yeboah as NITA Director-General | succeeds Mark-Oliver Kevor

## Connectivity / 5G / fibre / data centre (infra.connect, infra.store)
- 2026-02-25 | infra.connect | Graphic | 5G by 2027: government directive puts regulator on the clock | 70% 5G population coverage by 2027 (Ghana@70)
- **2026-03-03 | infra.connect | Graphic | NGIC activates Ghana's first shared 5G wholesale network** | NCA clearance; Nokia partner
- 2026-05-26 | infra.connect | Connecting Africa | Who will benefit from Ghana's 2027 5G push? | analysis/skepticism (4G-core vs 5G-core)
- **2026-07-09 | infra.connect, gov.legislate | ITWeb Africa | Ghana ends NGIC 5G wholesale monopoly, opens market** | MAJOR reversal — MTN/Telecel to bid; auction within weeks
- 2026-07-17 | infra.connect | TechAfrica News | Ghana opens mobile-broadband and 5G spectrum licence applications | post-NGIC-amendment spectrum round (newest item)
- 2025-12-02 | infra.connect | MyJoyOnline | Govt says network problems resolved after extra spectrum to MTN, Telecel | quality fix via spectrum release
- 2026-04-11 | infra.connect | MyJoyOnline | Sam George unveils 1,150-cell-site rollout to end network woes | MTN 800 + Telecel 350 sites
- 2026-04-18 | infra.connect, infra.cybersec | MyJoyOnline | 157 sites disrupted — MTN CEO reveals scale of fibre-cable sabotage | fibre-cut sabotage/road works
- 2026-05-14 | infra.connect, gov.policy | MyJoyOnline | 'Dig Once' policy could cut fibre rollout costs up to 60% | Q3 target
- 2026-05-18 | infra.connect | Graphic | Ghana's digital backbone comes under strain | >8,000 fibre cuts/yr (from ~400); dig-once lobbying
- 2026-06-17 | infra.connect, include.access | MyJoyOnline | Sam George announces major reduction in MTN fibre broadband prices | 100Mbps unlimited GH¢987→GH¢299
- 2026-03-11 | infra.connect, digital.rural, include.divides | Graphic | Rural telephony project remains top priority — GIFEC CEO | GIFEC–Huawei MWC meeting; RTP masts
- 2025-10-31 | infra.store, geopol.usa | Graphic | Digital Realty opens Ghana's largest data centre in Accra (ACR2) | Ghanaian-outlet report: 1.7MW, 500 racks, 2Africa; sovereignty framing *(lens: sovereignty)*

## Payments / fintech / MoMo / eCedi / cross-border (dpi.pay, finance)
- 2025-07-18 | dpi.pay, tech.industry | ITWeb Africa | Ghana goes tap-to-pay with mobile money (Blu Penguin × Network International) | any-provider MoMo on N-Genius POS
- 2025-09-08 | dpi.pay, gov.regional | Telecom Review Africa | MTN MoMo and Nikulipe expand digital finance across Africa | cross-border (Cameroon/Zambia/Congo); wire-like, pan-African
- 2025-12-15 | dpi.pay, data.statistics | MyJoyOnline | Mobile money transactions hit GH¢3trn as digital payments surge — BoG | GH¢3.01trn is full-year **2024**; Jan–Oct 2025 already GH¢3.6trn *(date_source: proxy)*
- 2026-01-29 | dpi.pay, data.statistics | MyJoyOnline | Total 2025 mobile money value hits GH¢4.5 trillion | record full-year 2025 (BoG); trajectory 1tn→1.9tn→3tn→4.5tn (2022–25)
- 2026-02-02 | dpi.pay, data.statistics | Graphic | Mobile money transactions reach GH¢518b in 2025 | NB: GH¢518.4b is the **December 2025 monthly** peak (not annual) — reconciles with the GH¢4.5tn full-year figure
- 2026-03-25 | dpi.pay, gov.policy | ITWeb Africa | Ghana puts fintech at forefront of digital economy | BoG + Comms Ministry integrated fintech framework
- 2026-04-03 | dpi.pay, gov.legislate | TechCabal | MTN spins off Ghana MoMo into standalone fintech (MobileMoney Fintech Ltd) | Act 987 compliance; MoMo earned $549m in 2025
- 2026-05-06 | dpi.pay, finance.new | TechCabal | Fincra secures enhanced payment licence in Ghana | Nigerian PSP joins Flutterwave/Paystack
- 2026-05-06 | dpi.pay, gov.regional | MyJoyOnline | GhIPSS eyes cross-border payment expansion (3i Africa Summit) | ISO 20022 migration; VASP integration
- 2026-05-12 | dpi.pay, include.access | Connecting Africa | Bank of Ghana touts inclusion but "architecture" needed to close gaps | 81% account/phone ownership (2025 Findex)
- 2026-05-20 | dpi.pay | MyJoyOnline | BoG has not abandoned eCedi — Governor assures | wants more pilots; cross-border settlement interest
- 2026-05-25 | dpi.pay, gov.regional | Graphic | BoG keeps eCedi alive, shifts focus to cross-border payments | AfCFTA/stablecoin talks for SME cross-border trade
- 2026-05-27 | dpi.pay, gov.policy | MyJoyOnline | Proposed 0.75% MoMo-to-bank fee raises inclusion concerns | e-levy-successor debate *(opinion — flag at admissibility screen)*
- 2026-07-08 | dpi.pay, infra.cybersec, gov.legislate | MyJoyOnline | Banks, fintechs trade claims over regulatory burden as fraud grows | 2024: 16,733 fraud cases, ~GH¢99m at risk
- 2026-07-09 | dpi.pay, include.access | MyJoyOnline | Mobile-money histories should unlock loans, insurance — BoG fintech head | "financial inclusion → financial health"
- 2026-07-09 | dpi.pay, gov.policy | MyJoyOnline | Don't turn digital finance into a tax trap — Prof Bokpin | inclusion before taxation
- **2026-07-15 | dpi.pay, gov.legislate | MyJoyOnline | BoG revokes Zeepay licence; officials/police restrict HQ** | MAJOR: DEMI licence revoked 14 Jul (s.13 Act 987; e-money not cash-backed)
- 2026-07-16 | dpi.pay, gov.legislate | MyJoyOnline | BoG to roll out new digital banking framework | draft guidelines + VASP Act 2025 rules + revised cyber directive (AI-governance)

## AI / cybersecurity / skills (tech.ai, infra.cybersec, capacity)
- 2025-01-31 | tech.ai, gov.policy | Graphic | Ghana will be Africa's AI hub in 4 years — Sam George | early vision statement (in-window origin)
- 2025-05-09 | infra.cybersec, tech.ai | Graphic | Ghana launches "Africa's largest AI-driven security centre" | VIA/Exabeam SOC in Accra
- 2026-02-28 | tech.ai, gov.policy, capacity.research | MyJoyOnline | Inside Ghana's AI strategy and KNUST's leadership | cabinet approval Feb 2026; KNUST RAIL role 2022–25
- **2026-04-24 | tech.ai, gov.policy | MyJoyOnline | Mahama unveils 10-year National AI Strategy** | launch — AI ecosystem to 2035, Responsible AI Office
- **2026-04-25 | tech.ai, gov.policy, finance.new, infra.store | Graphic | President unveils $270m National AI Strategy** | definitive launch: $250m compute + $20m implementation fund *(lens: sovereignty)*
- 2026-04-28 | tech.ai, gov.policy | MyJoyOnline | Ghana's AI strategy is a declaration of digital sovereignty | opinion/framing *(lens: sovereignty)*
- 2026-04-29 | tech.ai, gov.policy, infra.store | MyJoyOnline | The sovereignty paradox: data colonialism, debt and Africa's digital future | analysis; notes Ghana rejected a US $109m health-data deal *(lens: sovereignty, colonialism; places GHA, XAF)*
- 2026-05-05 | tech.ai, infra.store, gov.policy | MyJoyOnline | Ghana's AI future will be decided by infrastructure, not ambition | compute/data-centre gap analysis *(lens: sovereignty)*
- 2026-05-19 | tech.ai, dpi.mis, gov.policy | Graphic | Ghana's AI strategy must deliver for healthcare, not just hype | warns of foreign-dataset reliance *(lens: sovereignty)*
- 2026-03-12 | capacity.training, gov.policy | MyJoyOnline | 'One Million Coders' approach lacks a jobs strategy — Franklin Cudjoe | IMANI critique of flagship
- 2026-03-26 | infra.cybersec, gov.legislate, infra.store | MyJoyOnline | BoG Cyber & Information Security Directive 2026 launched | financial-data localisation mandate; FICSOC expansion; first AI-governance framework
- 2026-07-14 | capacity.training, tech.ai, infra.cybersec | MyJoyOnline | YEA partners Ghana Digital Centres to train 2,000 youth | AI/cyber/data; Microsoft microdegrees

## Regional / statistics (gov.regional, data.statistics)
- 2026-05-07 | gov.regional, dpi.exchange, dpi.pay | Graphic | Ghana + 2 others pilot AfCFTA digital trade corridor | VP: new corridor to cut intra-African transaction costs *(places GHA, XWA)*
- 2026-05-11 | gov.regional, dpi.pay, dpi.exchange | TechAfrica News | Ghana champions Continental Digital Trade Corridor (3i Summit) | with Rwanda, Zambia — MoMo interop, cross-border ID KYC, e-invoicing *(lens: sovereignty)*
- 2026-07-15 | data.statistics | MyJoyOnline | Finance Minister urges GSS to publish quarterly employment data | statistics modernisation
