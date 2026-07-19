# Sweep manifest — MUS (Mauritius / Maurice)

- **Batch:** MUS-2026-07-17
- **Window:** 2025-01-01 → 2026-07-17
- **Sources swept:**
  - Newspapers: **lexpress.mu** (L'Express Maurice, FR) — N1-N7; **mauritiustimes.com** (Mauritius Times, EN weekly) — N1-N7 + targeted passes.
  - Trade journals (J1-J2 each): wearetech.africa, biometricupdate.com, telecomreviewafrica.com, connectingafrica.com, itweb.africa, techafricanews.com, techcabal.com, techreviewafrica.com.
- **Counts:** staged **29**; dropped **7** (see `sweep/drop-log-MUS.csv`).
- **Month-slicing:** not required — the small newspaper pair + country-scoped journal queries returned in-window items without recency-swamping. All dates verified against fetched bodies.
- **Per-domain yield (established, not assumed):**
  - lexpress.mu — **rich** (primary FR daily): ~14 staged; the deepest single source. In-window identity (MNIC/Mobile ID) news was quiet — N1 returned mostly 2013-2024 items (out of window); identity surfaces via data-centre/social-media/budget pieces instead.
  - mauritiustimes.com — **thin but distinctive** (EN weekly, opinion-heavy): 4 staged; uniquely strong on the **PertSol/Verint surveillance saga** and Moustass-Leaks privacy debate.
  - wearetech.africa — 3 (data strategy, e-social-security, fintech strategy). biometricupdate.com — 1 (Madhub / EU adequacy). telecomreviewafrica.com — 1 (data-centre inventory). itweb.africa — 1 kept (+1 already-held). techafricanews.com — 1 (MT Connect). techcabal.com — 1 (AI/FAIR). techreviewafrica.com — 3 (PR-wire: AllMyT, SIL MoU, mytGPT Education).
  - connectingafrica.com — **genuinely thin**: only an out-of-window WACS/T4 item (2024); no in-window MUS-tagged news. techcabal likewise thin (1 in-window).
- **vs held material:** wiki already holds Mobile ID/Thales (2024), EGDI 2024, the Blueprint (edbmauritius + Le Mauricien), inter-ministerial committee, payments-hub (itweb, dropped as already-held), DataReportal 2024, and the 2026-05-16 Madhub/World-Bank DPA piece. This batch adds the **2026 wave**: National Data Strategy, National AI Strategy + FAIR, National Fintech Strategy, CII cyber regulations, DPO Regulations 2026, Rose-Belle Tier IV data centre, MT "Bridging Africa & Asia" strategy, EU-adequacy move, e-Social-Security, and the surveillance/privacy controversies.

## Staged items (published | topics | source | title | why-it's-new)

### Digital strategy / e-gov / data governance
- 2025-05-26 | gov.policy, dpi.govtech | lexpress | Digital Transformation Blueprint 2025-2029 launch | Newspaper-of-record account of the flagship strategy launch
- 2026-02-01 | gov.policy, gov.protect, data.open | lexpress | National Data Strategy 2025-2029 ("A New Era of Trust") | New national data strategy; Freedom of Information Bill announced; MPF-DPO-CERT-MU MoU
- 2026-02-03 | gov.policy, gov.protect | wearetech | National Data Strategy launch (trade record) | Confirms 28 Jan launch, cybercrime/youth-protection framing
- 2026-06-02 | dpi.mis, dpi.registry, include.access | wearetech | E-Social-Security: 10.5M records digitized | First digitization of the welfare system in 13 yrs; Rs 91.4bn (12.8% GDP) social spend

### Data protection / privacy / surveillance
- 2025-04-09 | gov.protect, infra.cybersec | lexpress | ICT data-protection strategy in preparation | Minister flags EGDI slippage, calls for a citizen "data hub", legal reform
- 2026-06-12 | gov.protect, gov.legislate | lexpress | DPO Regulations 2026 promulgated | Formalises DPO status/duties; in force 1 Jan 2027
- 2026-05-27 | gov.protect, dpi.id, geopol.eu | biometricupdate | Madhub: "no digital ID without data protection" | **Confirms 2026 EU adequacy assessment / full GDPR alignment**
- 2025-02-07 | infra.cybersec, gov.protect | mauritiustimes | In the Shadows of Mass Surveillance | PertSol/VERINT interception revelations; post-2019-election data wipe
- 2026-07-13 | gov.protect, gov.legislate, tech.ai | mauritiustimes | Privacy of communications (SIT/Moustass leaks) | DPA 2017 + e-evidence + deepfakes legal analysis

### Connectivity / data centres / sovereignty
- 2026-01-21 | infra.connect, infra.store, tech.ai | lexpress | MT strategy 2026-2029 "Bridging Africa & Asia" | Four-corridor strategy document
- 2025-12-08 | infra.connect, tech.ai, dpi.pay | techafricanews | MT Connect: Rs 20bn / $434M strategy | Trade record of the 5 Dec launch; T4 + SEACOM 2.0 cables
- 2025-07-16 | infra.store, infra.connect | telecomreviewafrica | Hyperscale data hub — 10 data centres | Named data-centre inventory + cable landings
- 2025-12-31 | infra.store, dpi.govtech | lexpress | Rose-Belle Tier IV data centre | Citizen data migrated; hosts e-Health, Mobile ID, gov portal, AI
- 2026-04-03 | infra.store, gov.protect | lexpress | Tech Trends: data sovereignty | Sovereignty debate; cites the dark-web/Moustass data leak

### Payments / fintech
- 2026-06-29 | dpi.pay, gov.policy, finance.new | wearetech | National Fintech Strategy 2026-2030 | New fintech strategy; National Fintech Governance Committee; open banking
- 2026-02-04 | dpi.pay, geopol.india, gov.regional | lexpress | BoM digital payments workshop | Governor on stablecoins, KYC system, UPI-RuPay cross-border
- 2026-01-19 | dpi.pay, include.access | lexpress | MCB QR payments +67% (2025) | Concrete 2025 adoption figures (QR, cash share 30→27%)

### AI / skills
- 2026-04-12 | tech.ai, gov.policy | lexpress | National AI Strategy (AIM) + FAIR launch | 9 Apr launch; KOREK app, DIVA, AI Marketplace
- 2026-04-23 | tech.ai, gov.standards | techcabal | AI strategy: "ethics before execution" (FAIR) | Analysis: vendor-neutral/border-agnostic, bias audits, local reps
- 2026-06-20 | tech.ai, capacity.training, dpi.pay | lexpress | Budget 2026-2027: 50,000 to be AI-trained | e-Gates/e-Visa, Côte-d'Or SEZ, stablecoin/open-banking frameworks
- 2026-07-13 | tech.ai, infra.store | mauritiustimes | Gungadin interview (AI as economic pillar) | National-paper companion to AllMyT; sovereign AI/mytGPT
- 2026-03-22 | tech.ai, infra.store | mauritiustimes | Build AI ecosystem before infrastructure (opinion) | Critique of MT's infra-first bet; "Timing Trap"
- 2026-01-26 | tech.ai, capacity.training | techreviewafrica [pr-wire] | mytGPT Education pilot | Named AI-in-education product (→ my.t Learn)
- 2026-07-16 | tech.ai, geopol.usa, finance.mou | techreviewafrica [pr-wire] | AllMyT Summit 2026 | AWS MoU, NVIDIA H200, Mauritius AI Registry (richer detail out-of-scope; flagged for ingest)

### Cybersecurity / cybercrime
- 2026-05-22 | infra.cybersec, gov.legislate | lexpress | CII Designation Regulations 2026 | New critical-infrastructure regime; in force 1 Jun 2026
- 2026-06-30 | infra.cybersec, gov.legislate | itweb | Cyber laws framework (CII) | Adds penalties (up to 25 yrs / Rs 2M); phase-1 sectors
- 2026-06-07 | infra.cybersec, gov.legislate, dpi.id | lexpress | Social-media identity-verification consultations | Proposed ID-verification mechanism; 2,300 online-harm cases in 2026

### Deals / partnerships
- 2026-05-30 | finance.mou, dpi.govtech | techreviewafrica [pr-wire] | SIL-Mauritius Telecom MoU | New MoU for public/private digitalisation

### Inclusion / sub-national
- 2026-05-29 | include.divides, tech.ai | lexpress | Rodrigues in national AI/cyber strategy (Rod-Digital Vision) | Rodrigues digital-inclusion roadmap; Rod IT, MauPass/KOREK
