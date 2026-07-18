# DZA — sweep manifest (`DZA-2026-07-17`)

**Window:** 2025-01-01 → 2026-07-17 · **Staged:** 135 · **Dropped:** 141 (`sweep/drop-log-DZA.csv`)

> Merged from the two half-sweeps (newspapers, trade journals), which ran as
> separate agents writing disjoint files. Same-event twins across the two halves
> are deliberately kept: same event from a different outlet is never a sweep-stage
> drop. Lint #7 adjudicates them at ingest, with full text.

---

## Part 1 — Newspapers

# DZA newspaper-half sweep — MANIFEST (papers)

**Recovery completed 2026-07-17.** The original DZA papers agent staged ~30
Echorouk + 2 El Moudjahid candidates, then died before writing a manifest, drop
log, or recording its Arabic query set. This pass (single sequential agent)
**recovered the run**: verified/indexed all 32 pre-staged items, ran N1–N7 in
**Arabic against echoroukonline.com** and **French against elmoudjahid.dz**, and
staged **22 new candidates** (14 El Moudjahid — the under-covered state daily —
and 8 new Echorouk items the first pass missed). Drops → `sweep/drop-log-DZA-papers.csv`
(85 rows). The Arabic recipe is reported to the orchestrator for `query-recipes.md`.

- Papers on disk after this pass: **54** (Echorouk 38, El Moudjahid 16).
- Window 2025-01-01 → 2026-07-17. Papers: **echoroukonline.com** (Echorouk El
  Yawmi — Arabic, privately owned, often critical) and **elmoudjahid.dz** (El
  Moudjahid — French/Arabic **state daily**; `provenance_flag: state-media`).
- **[NEW]** = staged this recovery pass. Others were staged by the first (dead) pass.
- **Date caveats:** Echorouk pages carry explicit Gregorian datelines (reliable).
  **El Moudjahid serves almost no in-body dates** → most EM `published` are
  `date_source: proxy`, `date_precision: month`, interpolated from the sequential
  article-ID; page "sur le même thème"/multimedia widgets are live-clock traps and
  were ignored. No Hijri-only datelines or Eastern-Arabic-numeral datelines were
  encountered on either paper (Echorouk datelines are Western digits; the Hijri
  watch still stands for future AR countries).
- **Contradiction flagged:** El Moudjahid (245982) and Echorouk (market-supply IS,
  2026-04-27) both cite the 30 Dec 2025 data-governance decree as **n° 25-320**;
  the wiki `places/DZA.md` cites **Decree 25-350** (same date). Number divergence
  to reconcile at ingest.

## Data governance & protection (gov.protect / gov.legislate / gov.policy)

- **[NEW]** 2025-12-01 | gov.protect, gov.legislate | El Moudjahid | *ANPDP exige le respect de la loi* (data-protection authority presses public/private bodies on law 25-11: DPO designation, processing register, automated audit log) | first EM piece detailing ANPDP enforcement mechanics
- **[NEW]** 2026-01-01 | gov.protect, gov.policy, dpi.exchange | El Moudjahid | *Décret sur la gouvernance des données — socle technique* (analysis of Presidential Decree **25-320**, JO 30 Dec 2025; expert critique: no open-data/valorisation) | names decree number (25-320 vs wiki's 25-350) + named-expert critique
- **[NEW]** 2026-07-01 | infra.cybersec, gov.protect, dpi.id | El Moudjahid | *L'engagement sans faille de la DGSN* (police chief Badaoui; study day on data-protection law 18-07/25-11; names ANPDP president **Samir Bourehil**) | DGSN/police framing + ANPDP president identity
- 2026-01-23 | gov.protect, infra.cybersec | Echorouk | *حماية خصوصيات الجزائريين* (Presidential Decree 26-07: cyber/data-protection units in every public body) | prior
- 2026-04-19 | gov.policy, infra.cybersec, gov.protect | Echorouk | *السياسة السيبرانية الجزائرية* (analysis: EGDI 0.56; 38m users 2025; laws 18-05/18-07/09-04) | prior

## Digital identity, registries & civil status (dpi.id / dpi.registry)

- **[NEW]** 2026-04-05 | dpi.govtech, dpi.registry, dpi.id | El Moudjahid | *Immatriculation des véhicules au tout-numérique* (3rd phase live 5 Apr 2026; biometric ID card required for transfers) | vehicle-registry digitalisation tied to biometric ID
- 2025-09-01 | dpi.id, dpi.govtech, gov.standards | El Moudjahid | *ARPCE lance authentification & signature électroniques* | prior (proxy month)
- 2025-12-01 | dpi.id, gov.legislate | El Moudjahid | *Projet de loi services de confiance numériques à l'APN* | prior (proxy month)
- 2026-01-21 | dpi.id, dpi.govtech, dpi.registry | Echorouk | *CNAS carte électronique* (e-health card for uninsured, decree 24-187) | prior
- 2026-06-24 | dpi.id, dpi.govtech | Echorouk | *تجديد جواز السفر البيومتري عن بُعد* (remote biometric passport renewal, diaspora) | prior

## E-government, data exchange & sectoral MIS (dpi.govtech / dpi.exchange / dpi.mis)

- **[NEW]** 2026-05-25 | tech.ai, gov.policy, dpi.govtech | El Moudjahid | *Gouvernement examine la stratégie nationale d'IA* (PM Ghrieb, 25 May 2026; Dzair Digital Services deployment) | explicit-dated government-level AI-strategy review
- **[NEW]** 2026-06-01 | dpi.govtech, data.statistics, dpi.exchange | El Moudjahid | *Cartographie sociale & portail national des services numériques* (Tebboune tasks HCN with national social map) | national social-map + portal decision-support
- **[NEW]** 2026-06-01 | dpi.mis, dpi.registry, digital.rural | El Moudjahid | *Système national d'information agricole* (unified agri MIS; national farm + land registers) | agriculture sectoral MIS (not previously covered)
- **[NEW]** 2025-12-01 | dpi.mis, dpi.govtech, include.access | El Moudjahid | *Plateforme numérique de transfert des patients* (health-transfer platform, priority South/Highlands) | health-sector MIS
- **[NEW]** 2026-07-06 | infra.store, dpi.govtech, dpi.exchange | El Moudjahid | *Centre national des services numériques inauguré* (state-daily version; Mohammadia site, two-site architecture) | state-daily framing + Mohammadia data-centre detail
- **[NEW]** 2026-07-10 | dpi.govtech, dpi.exchange, gov.regional | El Moudjahid | *Apostille désormais accessible en ligne* (Hague Convention e-legalisation) | state-daily version of apostille launch
- **[NEW]** 2026-07-15 | dpi.govtech, dpi.exchange, gov.regional | Echorouk | *تصديق رقمي لوثائق التعليم العالي (الأبوستيل)* (higher-ed docs recognised in 126 states; effective 9 Jul 2026; acceded 25 Aug 2025) | higher-ed angle + 126-country/accession dates
- **[NEW]** 2026-04-27 | dpi.mis, dpi.exchange, data.statistics | Echorouk | *نظام معلوماتي موحد لتموين السوق* (unified market-supply/price monitoring IS; per Decree 25-320) | market-supply MIS + confirms decree 25-320
- 2026-07-05 | infra.store, dpi.govtech | Echorouk | *الرئيس تبون يُدشن المركز الوطني للخدمات الرقمية* (National Centre for Digital Services) | prior
- 2026-07-10 | dpi.govtech, dpi.exchange | Echorouk | *منصة "الأبوستيل"* (apostille platform launch) | prior
- 2026-06-04 | infra.store, dpi.govtech | Echorouk | *رقمنة البرلمان — السحابة السيادية* (parliament sovereign-cloud agreement) | prior
- 2026-05-17 | dpi.mis, dpi.exchange | Echorouk | *نظام معلوماتي اقتصادي للمؤسسات الصغيرة والمتوسطة* (SME economic information system) | prior
- 2025-05-12 | gov.policy, infra.store, dpi.govtech | Echorouk | *Algeria candidate for digital leadership by 2030* (Benmouloud unveils SNTN, 5 data centres) | prior

## Registries & open data (dpi.registry / data.open)

- **[NEW]** 2026-03-29 | dpi.registry, data.statistics, data.open, dpi.govtech | Echorouk | *السجلات التجارية المفتوحة* (173,651 new vs 125,195 struck-off registrations 2025; "Sedjilkoum" portal + e-commercial register) | electronic commercial-register stats

## Connectivity & digital infrastructure (infra.connect)

- **[NEW]** 2026-05-18 | infra.connect, data.statistics, include.access | Echorouk | *Alger dans le Top 50 mondial (Ookla)* (48th mobile-speed, up 68 places; 163.31 Mbps) | Ookla city-ranking time-series
- 2025-05-29 | infra.connect, gov.legislate | Echorouk | *الجزائر تدخل عصر الجيل الخامس* (ARPCE 5G licence tender) | prior
- 2026-02-17 | infra.connect, include.access | Echorouk | *الجزائر الأولى إفريقيا FTTH* (1st in Africa FTTH, 3m households) | prior
- 2026-04-09 | infra.connect, data.satellite | Echorouk | *منافسة الاتصالات الفضائية* (tender for 2 satellite-ISP licences) | prior
- 2026-04-24 | infra.connect, data.statistics | Echorouk | *أوكلا: أحسن شبكة جيل خامس* (Ookla 5G performance) | prior
- 2026-05-16 | infra.connect, digital.rural | Echorouk | *زروقي: تعميم الألياف مطلع 2027* (fibre completion 2027; 7m fixed, 51m mobile) | prior
- 2026-07-14 | infra.connect, gov.standards | Echorouk | *تعميم بروتوكول IPv6* (IPv6 adoption) | prior

## Data centres, cloud & sovereignty (infra.store / geopol)

- **[NEW]** 2026-06-01 | infra.store, infra.connect, geopol.china | El Moudjahid | *Le grand bond numérique* (200,000+ km fibre; Mohammadia data centre w/ Huawei, Uptime Tier III; Constantine 2023; Blida under deployment) | names specific data centres + Huawei/Tier III
- **[NEW]** 2025-11-01 | infra.cybersec, finance.mou, capacity.research | El Moudjahid | *Alger et Moscou — partenariat cybersécurité* (Positive Technologies × Proxylan/CERIST MoU) | **Russia geopolitics** angle absent from wiki (no geopol.russia slug)

## Payments & digital finance (dpi.pay / finance)

- **[NEW]** 2026-04-29 | dpi.pay, gov.legislate, finance.new | El Moudjahid | *Banque d'Algérie prépare une instruction KYC* (governor Lebbou; digital banks & PSPs under review) | KYC/AML + digital-bank licensing
- **[NEW]** 2026-05-04 | dpi.pay, gov.legislate, gov.protect | Echorouk | *"اعرف زبونك" — تعليمة 04-2026* (KYC instruction 04-2026 of 30 Apr 2026; PEP scrutiny) | detailed instruction text (number, articles)
- 2025-11-21 | dpi.pay | Echorouk | *بريدي موب نسخة محدثة* (BaridiMob: virtual card/TPE, cashless) | prior
- 2026-04-27 | dpi.pay, tech.ai, finance.new | Echorouk | *الدينار الرقمي والبلوك تشين* (digital dinar / financial sovereignty) | prior
- 2026-05-15 | dpi.pay, data.statistics | Echorouk | *أرقام الدفع الإلكتروني* (22m cards, 104k TPE) | prior
- 2026-05-25 | dpi.pay, tech.industry | Echorouk | *"إيني" تنتج 1.6 مليون جهاز دفع* (ENIE 1.6m payment terminals) | prior

## AI, cybersecurity & digital skills (tech.ai / infra.cybersec / capacity)

- **[NEW]** 2026-06-01 | infra.cybersec, capacity.training | El Moudjahid | *Les RSSI en première ligne* (ASSI/MDN 2nd RSSI training, Sidi Abdellah; confirms Decree 26-07 of 7 Jan 2026 & SSI strategy decree of 30 Dec 2025) | training + firm decree dates
- **[NEW]** 2026-05-05 | gov.policy, finance.mou, capacity.training | Echorouk | *دعم استراتيجية التحول الرقمي 2025-2030* (HCN + UNDP + Japan project signing; 2027-2030 executive plan) | UNDP+Japan partnership + strategy timeline
- **[NEW]** 2026-06-01 | infra.cybersec, include.access, gov.protect | Echorouk | *خلية لليقظة السيبرانية لحماية الأطفال* (child-protection body cyber-vigilance cell; green line 1111) | child online-protection cyber unit
- **[NEW]** 2026-05-21 | capacity.training, tech.ai, capacity.literacy | Echorouk | *برنامج "7.77" — 64 ألف مشترك* (National Digital Empowerment: 64,508 enrollees, AI top choice, all 58 wilayas) | detailed enrolment stats
- 2025-11-10 | tech.ai, gov.legislate | Echorouk | *تشريعات لضبط الذكاء الاصطناعي* (ethical-AI law prep; national AI strategy) | prior
- 2026-03-03 | infra.cybersec, gov.policy | Echorouk | *Defence info-systems security strategy 2029* (first National ISS Strategy 2025-2029) | prior
- 2026-04-15 | tech.ai, geopol.china | Echorouk | *التعاون مع هواوي* (AI/GPU & digital-economy talks) | prior
- 2026-05-25 | tech.ai, capacity.research, geopol.usa, geopol.china | Echorouk | *New Lines: Algeria to lead AI in N.Africa* ($499m 2025 → $1.69bn 2030) | prior
- 2026-06-08 | tech.ai, capacity.training | Echorouk | *أول مركز للتعليم الافتراضي والابتكار* (first virtual-education AI innovation centre) | prior
- 2026-06-14 | infra.cybersec, tech.innovate | Echorouk | *CYS-D 2026* (first Cyber Security Days, Algiers) | prior
- 2026-06-15 | infra.cybersec, geopol.china | Echorouk | *MPT-CERT* (cyber-incident response centre, KOICA) | prior — **note: file carries invalid place code `KOR`; fix at ingest**
- 2026-07-09 | tech.ai, include.divides | Echorouk | *مشروع اتصالات الجزائر يتوج (ITU/WSIS)* (Algerie Telecom AI award) | prior

## Satellite, space & research (data.satellite / capacity.research)

- 2026-01-31 | data.satellite, geopol.china | Echorouk | *Alsat-3B* (2nd Earth-observation satellite launch) | prior
- 2026-06-20 | capacity.research, tech.innovate | Echorouk | *هيكلتان تحت رئاسة الجمهورية* (High Council of Scientists + Archaeology Agency) | prior

## DPI / regional posture

- 2026-04-02 | dpi.exchange, dpi.id, dpi.pay, gov.policy | Echorouk | *الانضمام إلى "50 في 5"* (joins global DPI campaign) | prior

---

## Part 2 — Trade journals

# DZA sweep — trade-journal manifest (RECOVERY COMPLETION)

**Recovery note.** The original DZA trade-journal sweep (batch 2026-07-17) fanned
out to staging workers that staged ~68 journal items, then the orchestrator died
in a server-overload storm before writing this manifest; some batch workers also
failed mid-fetch. This manifest is the recovery-completion product. A single
sequential agent (2026-07-17) re-ran recipes J1–J2 across the eight fixed journals
to confirm completeness, staged **13 genuinely-new items** the failed workers had
missed (flagged `[recovery-add]` below; three of them were EN twins the drop log
falsely recorded as "staged"), and reconciled the manifest against files on disk.

- **Journal items staged: 81** (68 prior + 13 recovery-adds). All frontmatter read.
- Scope: journal half only. Newspaper items (`-echorouk` / `-elmoudjahid`) are the
  newspaper agent's and are **not** listed here (see `MANIFEST-papers.md`).
- Window: 2025-01-01 → 2026-07-15. Drops (incl. same-event-different-outlet copies,
  regional/off-topic, out-of-window) logged in `sweep/drop-log-DZA-journals.csv`.
- Fixed-8 per-domain yield: wearetech 21 · techreviewafrica 15 · techafricanews 14 ·
  telecomreviewafrica 12 · connectingafrica 5 · techcabal 3 · biometricupdate 3 ·
  itweb 1. (The four SSA-oriented journals are genuinely thin on Algeria — see
  report; not a worker artefact.)

Format: `published | topics | outlet | title | why-it's-new`

---

## A. National digital strategy, governance & institutional reform

- 2025-01-07 | dpi.govtech, gov.policy | Telecom Review Africa | 75% of Algeria's Digital Projects to Focus on Modernizing Public Services | 2025 programme priorities; Digital Algeria 2030 baseline
- 2025-05-13 | gov.policy, capacity.training, infra.store | We Are Tech | Algeria Aims for Full Digital Transformation by 2030 with New Strategy | `[recovery-add]` SNTN 2030 launch (5 pillars, 500k ICT specialists, 20% GDP); flagship strategy, journal coverage was missing
- 2025-09-19 | gov.policy, dpi.pay, finance.new | We Are Tech | Algeria's State Fund Backs New Tech Hub to Modernize Public Sector | `[recovery-add]` FNI + 4 firms (Djezzy/IT-DEV/Inet/Smart Test) tech-hub agreement; EN twin the drop log wrongly marked staged
- 2025-09-30 | infra.store, tech.innovate | TechAfrica News | Algeria's Telecom Minister Inspects SATICOM, Highlights Digital Innovation | Minister inspection of SATICOM facility
- 2025-10-29 | gov.policy, capacity.research, tech.ai | We Are Tech | Algeria Appoints Expert Panel to Accelerate Digital Overhaul | New scientific/technical committee (CSTHCN)
- 2025-11-03 | gov.policy, capacity.training, finance.mou | We Are Tech | UNDP to Support Algeria's Push for Digital Transformation | UNDP support framework
- 2025-11-04 | gov.policy, dpi.govtech, finance.mou | TechAfrica News | Algeria and UNDP Sign Agreement to Accelerate National Digital Transformation | UNDP agreement signed
- 2026-01-02 | infra.connect, gov.policy, dpi.govtech | Tech Review Africa | Algeria's Postal and Telecommunications Sector Records Progress in 2025 | Year-end sector review / 2026 outlook
- 2026-04-08 | dpi.govtech, infra.store, dpi.exchange | Tech Review Africa | Algeria Accelerates Digital Transformation with New E-Governance Platform | UN/UNDP engagement; Dzair Services (52 services) preview
- 2026-05-19 | capacity.literacy, capacity.training, include.access | Tech Review Africa | Algeria Launches National Digital Empowerment Programme (Citizens 7 to 77) | "7.77" nationwide digital-skills programme

## B. Data centres, cloud & digital sovereignty

- 2025-03-26 | infra.store, tech.innovate, capacity.research | We Are Tech | Algeria Launches Cloud, Drone, and Incubator Platforms to Drive Innovation | CERIST cloud/drone/incubator platforms
- 2026-07-08 | infra.store, dpi.govtech, geopol.china | We Are Tech | Algeria Opens Dual Data Center Infrastructure to Support Digital Government | `[recovery-add]` National Digital Services Center inaugurated (Algiers+Blida active-active, Huawei-built, 99.98%); journal coverage was missing
- 2026-07-15 | dpi.exchange, dpi.govtech, infra.store | We Are Tech | Algeria Sets One-Month Deadline for Government Data Center Integration | `[recovery-add]` Tebboune orders admin interconnection to National DC in 1 month; EN twin the drop log wrongly marked staged

## C. Cybersecurity & data protection

- 2026-01-26 | infra.cybersec, gov.legislate, gov.protect | TechAfrica News | Algeria Strengthens Cybersecurity Framework to Protect National Infrastructure | New institutions (ASSI, ANPDP, HCD); Law 18-07 amendments
- 2026-01-26 | infra.cybersec, gov.legislate, gov.protect | We Are Tech | Algeria Adopts New Cybersecurity Framework as Digital Risks Rise | Presidential Decree 26-07 institutional framework
- 2026-03-05 | infra.cybersec, gov.policy, gov.protect | We Are Tech | Algeria Adopts 2025-2029 National Cybersecurity Strategy | National cybersecurity strategy adopted
- 2026-04-01 | infra.cybersec, infra.connect, tech.industry | Telecom Review Africa | NEC Deploys Next-Generation Firewalls for Ooredoo Algeria | Vendor cyber deployment (NEC/Ooredoo)
- 2026-04-20 | tech.ai, infra.cybersec, tech.innovate | We Are Tech | Algeria Unveils First AI and Cybersecurity Start-up Cluster | First AI/cyber startup cluster
- 2026-06-15 | infra.cybersec, gov.policy, capacity.training | TechAfrica News | Algeria Launches Sectoral Cyber Incident Response Center (MPT-CERT) | `[recovery-add]` MPT-CERT launched w/ South Korea/KOICA cooperation; journal coverage was missing

## D. Digital ID, trust services & biometrics

- 2025-02-17 | dpi.id, gov.standards, gov.legislate | We Are Tech | Algeria Adopts Electronic Signatures and Certification | E-signature/certification framework (ARPCE/AGCE)
- 2025-11-04 | gov.legislate, dpi.id, gov.protect | We Are Tech | Algeria Approves Law to Strengthen Digital Trust and E-Transactions | Digital-ID & trust-services draft law (Council of Ministers)
- 2025-11-10 | gov.legislate, dpi.id, gov.protect | Biometric Update | Algeria Approves Draft Legislation on Digital ID, Trust Services | Same law, biometric-sector detail (links to biometric ID card)
- 2025-11-21 | dpi.id, infra.cybersec, finance.mou | Biometric Update | Algeria to Get UK Support on Digital Forensics, Biometrics for Policing | `[recovery-add]` DGSN–UK Home Office MoU (fingerprint forensics); journal coverage was missing
- 2026-04-27 | dpi.id, dpi.pay, gov.regional | Biometric Update | Algeria Emboldens DPI Push with 50-in-5 Campaign Membership | 15th African / 33rd overall member; DPI detail (Algérie Poste 29M accounts)

## E. Connectivity — 5G, fibre, satellite, subsea

- 2025-02-25 | infra.connect, geopol.china, tech.industry | TechAfrica News | Algeria Telecom and Huawei Ignite a New Era of High-Speed Connectivity | Nationwide 400G WDM optical network
- 2025-05-02 | infra.connect, include.access, gov.policy | We Are Tech | Algeria to Phase Out Copper, Switch to Fiber by 2027 | All-fibre migration target 2027
- 2025-05-05 | infra.connect, infra.capacity, geopol.china | Telecom Review Africa | Algérie Télécom Unveils WiFi 7 at 22-Year Milestone | WiFi 7 rollout
- 2025-06-02 | infra.connect, gov.policy, gov.legislate | Connecting Africa | Algeria Begins Tender Process for 5G Licenses | `[recovery-add]` ARPCE opens 5G tender (3 licences, provisional July 2025); journal coverage was missing
- 2025-07-04 | infra.connect, gov.legislate | Telecom Review Africa | Ooredoo Algeria Secures 5G License Following Competitive Tender | `[recovery-add]` Ooredoo ranked 2nd, awarded provisional 5G licence; EN twin the drop log wrongly marked staged
- 2025-07-25 | infra.connect, finance.mou, infra.store | Connecting Africa | Algérie Télécom, Sparkle Plan Subsea Cable to Link Italy to Africa | Italy–Algeria subsea cable MoU
- 2025-10-15 | infra.connect, gov.standards, gov.policy | TechAfrica News | Algeria Moves Toward eSIM Integration to Advance Digital Transformation | eSIM adoption move
- 2025-12-05 | infra.connect, gov.policy, tech.industry | Connecting Africa | Algeria Launches 5G Rollout | 5G licences confirmed (63.9bn DZD/$492m); rollout starts, 8 pilot wilayas
- 2025-12-08 | infra.connect, finance.new, include.divides | ITWeb Africa | Mobilis, Djezzy, Ooredoo Lead Algeria's $492m 5G Rollout | Same $492m award w/ GDP projections & cost warnings
- 2026-02-03 | data.satellite, geopol.china, infra.capacity | Connecting Africa | Algeria Launches Second Satellite in 2026 (ALSAT-3B) | ALSAT-3B EO satellite launch
- 2026-02-18 | infra.connect, infra.capacity, include.access | TechAfrica News | Algeria Telecom to Deploy 345 New 4G Base Stations Nationwide | `[recovery-add]` 345 eNodeB across 44 provinces; journal coverage was missing
- 2026-02-20 | infra.connect, include.access, digital.rural | TechAfrica News | Algeria Reaches Milestone as 3 Million Households Connect to Fibre Broadband | 3M FTTH households milestone
- 2026-03-03 | infra.connect, infra.capacity, tech.industry | Telecom Review Africa | Qvantel Deepens Djezzy Partnership with New Managed Services Hub | Djezzy/Qvantel managed-services hub
- 2026-03-04 | infra.connect, include.access | TechAfrica News | Djezzy Launches Nationwide 5G Network Across 18 Algerian States | Djezzy 5G live in 18 states
- 2026-03-12 | infra.connect, include.access | Connecting Africa | Ooredoo Expands 5G Network to All Algerian Provinces | Ooredoo 5G all wilayas (ahead of schedule)
- 2026-03-13 | infra.connect, include.access | Telecom Review Africa | Ooredoo Algeria Expands 5G Network Nationwide | Same Ooredoo nationwide 5G (operator framing)
- 2026-04-09 | infra.connect, digital.rural, include.divides | Tech Review Africa | Algeria Opens Satellite Communications Market to Boost Remote Connectivity | ARPCE NGSO satellite-licence tender (2 licences)

## F. Telecom operator strategy & interviews

- 2025-05-06 | infra.connect, tech.ai, include.access | Telecom Review Africa | Ooredoo Algeria: Powering Algeria's Digital Future | Ooredoo Algeria strategy interview (Roni Tohme)
- 2025-10-03 | infra.connect, tech.ai, include.access | Telecom Review Africa | 5G, AI and Beyond: Ooredoo's Role — Dr. Medhat ElHusseiny | Ooredoo 5G/AI interview
- 2025-12-05 | infra.connect, tech.ai, tech.innovate | Telecom Review Africa | Leading Algeria's Digital Leap: Ooredoo's Strategic Vision | Ooredoo strategy interview (Isabelle Hajri)
- 2026-04-22 | finance.mou, tech.industry, tech.innovate | TechAfrica News | Djezzy and INATEL Forge Strategic Partnership | Djezzy–INATEL industrial/sovereignty partnership

## G. Digital payments & fintech

- 2025-07-16 | dpi.pay, include.access, finance.mou | Tech Review Africa | Algeria Advances Digital Payment Ecosystem Through Post-Energy Partnership | Algérie Poste–Sonelgaz utility-payment deal (Posty Mob)
- 2025-12-16 | finance.new, tech.innovate, dpi.pay | TechCabal | VOLZ Raises Algeria's Largest Startup Funding Round in Local Currency | VOLZ 600m DZD (~$5m); first ASF exit
- 2025-12-27 | dpi.pay, dpi.govtech, dpi.registry | We Are Tech | Algeria Moves Business Registration Stamp Duties Online | Online stamp-duty payment (Tabaakoum/Edahabia)
- 2026-01-05 | dpi.pay, dpi.govtech, dpi.registry | TechAfrica News | Algerian Ministries Launch Digital Stamp Duty Payment for Commercial Registration | MoF/MoT stamp-duty e-payment MoU
- 2026-02-24 | dpi.pay, tech.innovate, finance.new | TechCabal | Why VaulFi Is Building a Stablecoin-Powered Super App for North Africa | VaulFi stablecoin super-app profile
- 2026-03-13 | dpi.pay, tech.industry, finance.new | We Are Tech | Algeria's Yassir Buys Uno Hypermarkets to Extend Super-App Ecosystem | Yassir acquires Uno hypermarkets
- 2026-05-16 | dpi.pay, include.access, data.statistics | We Are Tech | Algeria's Electronic Payment Market Surpasses 22 Million Cards | 22M cards figure (Algérie Poste)

## H. GovTech & sectoral digital platforms

- 2025-03-11 | dpi.exchange, dpi.govtech, dpi.pay | We Are Tech | Algeria Orders Fast-Tracking of Digital Tax Data Integration | Tax-data integration order (Djibayatic/Moussahamatic)
- 2025-07-15 | dpi.govtech, dpi.exchange, finance.mou | TechAfrica News | Algeria Strengthens E-Governance with New Notarial Sector Digital Partnership | `[recovery-add]` Algérie Télécom–Chamber of Notaries MoU; journal coverage was missing
- 2026-01-12 | dpi.registry, dpi.govtech, dpi.mis | We Are Tech | Algeria Moves to Electronic Land Titles With AMLAK System | AMLAK e-land-titles system
- 2026-02-16 | dpi.govtech, dpi.exchange, data.open | We Are Tech | Algeria Launches Online System for Lawyers to Access Certified Court Decisions | Justice Ministry lawyer portal
- 2026-02-25 | dpi.govtech, dpi.registry, capacity.research | TechAfrica News | Algeria Launches Four New Digital Platforms to Modernise Higher Education | 4 higher-ed platforms (EN)
- 2026-02-25 | dpi.govtech, dpi.registry, capacity.research | We Are Tech (FR) | Algérie : 4 plateformes numériques pour les services universitaires | Same 4 higher-ed platforms (FR)
- 2026-02-26 | dpi.govtech, dpi.registry, capacity.research | Telecom Review Africa | Algeria Launches Four National Digital Platforms to Transform Higher Education | Same 4 higher-ed platforms (3rd outlet)
- 2026-03-18 | dpi.registry, data.statistics, data.open | We Are Tech | Algiers Targets Export Growth With National Data Platform | National export-data platform (EN)
- 2026-03-18 | dpi.registry, data.statistics, tech.industry | We Are Tech (FR) | Un fichier numérique national pour recenser les biens/services à l'exportation | Same export-data platform (FR)
- 2026-03-24 | dpi.registry, dpi.govtech, dpi.exchange | We Are Tech | Algiers Tightens Trade Controls with New Import Tracking System | National import-tracking system
- 2026-06-19 | dpi.govtech, dpi.registry, capacity.training | We Are Tech | Algeria Digitizes Degree Recognition Through National Qualifications System | `[recovery-add]` National Certification & Qualification Framework (CNC) pilot; journal coverage was missing

## I. AI, innovation ecosystem & startups

- 2025-02-20 | tech.ai, tech.innovate, finance.new | Telecom Review Africa | Algeria Bets on Artificial Intelligence to Boost Its Economy | AI economic push; national AI commission
- 2025-03-17 | tech.ai, infra.capacity, capacity.research | We Are Tech | Algeria Launches Construction of an AI Supercomputing Center | AI supercomputing centre (Oran)
- 2025-07-01 | tech.innovate, finance.new | TechCabal | Algeria and Cameroon Are Powering Africa's Next Startup Wave | Algeria/Cameroon startup-ecosystem feature
- 2026-02-03 | tech.industry, tech.innovate, infra.connect | Tech Review Africa | Algeria Moves to Build Structured Video Game Industry | Gaming/e-sports sector plan (Fiber Game)
- 2026-02-03 | finance.new, gov.policy, tech.innovate | We Are Tech | Algeria Waives IPO Fees for Startups Until 2028 | IPO-fee waiver for startups
- 2026-02-04 | infra.connect, digital.localgov, tech.industry | Tech Review Africa | Ooredoo Algeria Launches Smart City Pilot in Sétif (5G + IoT) | Sétif "Ganzat" smart-city pilot
- 2026-04-27 | tech.ai, capacity.training, tech.innovate | Tech Review Africa | Algeria Launches AI Training Programme to Enhance Digital Skills | National AI training programme (12-week; incubator)
- 2026-04-30 | tech.ai, infra.store, tech.innovate | TechAfrica News | Djezzy Unveils AI Cloud Platform (AventureCloudz) with Algeria Venture & Taubyte | AventureCloudz sovereign AI cloud launch

## J. Regional & international cooperation

- 2025-07-28 | finance.mou, geopol.eu, tech.industry | Tech Review Africa | Algeria and Italy Hold Bilateral Tech Cooperation During Presidential Visit | Algeria–Italy telecom/post MoU (5th High-Level Summit)
- 2026-03-30 | dpi.exchange, gov.regional, include.access | Tech Review Africa | Algeria Joins 50in5 Initiative | Algeria joins 50in5 (Global Africa Tech Summit)
- 2026-03-30 | gov.regional, infra.connect, capacity.training | Tech Review Africa | Algeria and Niger Strengthen Telecom/Digital Cooperation | Algeria–Niger bilateral cooperation
- 2026-03-30 | gov.regional, infra.connect, infra.store | Tech Review Africa | African Ministers Adopt Algiers Declaration on Telecom Sovereignty | Algiers Declaration (2026–2030) adopted
- 2026-03-31 | infra.connect, gov.regional, gov.policy | TechAfrica News | Africa Adopts Algiers Declaration to Strengthen Telecom Sovereignty | Same Algiers Declaration (2nd outlet)
- 2026-05-10 | tech.innovate, gov.regional, finance.mou | Tech Review Africa | AfCFTA Secretariat, Algeria Partner on Africa Start-up Conference 2026 | AfCFTA–Algeria startup-conference partnership
- 2026-06-09 | gov.regional, infra.connect, finance.mou | TechAfrica News | Algeria and Tunisia Expand Cooperation in Telecom and ICT Sector | `[recovery-add]` 4th Algeria–Tunisia Joint Technical Commission; journal coverage was missing
- 2026-07-06 | tech.ai, gov.policy, gov.regional | Tech Review Africa | Algeria Advocates Practical AI Governance at UN Global Dialogue (Geneva) | UN AI-governance dialogue address
- 2026-07-13 | tech.ai, gov.regional, dpi.exchange | Tech Review Africa | Smart Africa and Algeria Hold Discussions on AI Adoption and Digital Integration | Smart Africa–Algeria AI talks (Africa AI Council)

## K. Benchmarks & indices

- 2025-07-04 | data.statistics, include.access, infra.connect | Telecom Review Africa | Algeria Climbs 15 Places in Global ICT Index | `[recovery-add]` ITU IDI June 2025: Algeria 74th (up from 89th in 2024), score 86.1; journal coverage was missing
