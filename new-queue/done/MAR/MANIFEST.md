# MAR — sweep manifest (`MAR-2026-07-17`)

**Window:** 2025-01-01 → 2026-07-17 · **Staged:** 45 · **Dropped:** 14 (`sweep/drop-log-MAR.csv`)

Country worker: flat MAR (single agent). Sources: **newspapers** `hespress.com`
(Arabic + `en.hespress.com` English) and `assabah.ma` (Arabic); **8 fixed trade
journals** (English). One-line why-it's-new is grounded against the already-rich
`wiki/places/MAR.md` holdings.

## Coverage notes
- **Papers.** Hespress is high-volume and well-indexed on its **English** section
  (`en.hespress.com` — 7 keepers) and adequately on Arabic `hespress.com` (3 keepers,
  incl. the CNDP/CNIE-named pass). **Assabah is genuinely thin** — Exa barely indexes
  the domain; a single in-window keeper after 3 Arabic passes (established, not assumed).
  `fr.hespress.com` returned no on-domain hits (French coverage came via en.hespress + Arabic).
- **Arabic domain-scoping barely holds** (recipe gotcha confirmed): ~1–3 on-host hits per
  15 results; the rest were government portals, aggregators and AI-synthesis blogs
  (inadmissible, discarded by hand-filter, not staged).
- **Dates:** Hespress and Assabah print **clean Gregorian datelines in Western numerals** —
  **no Hijri dates and no Eastern-Arabic numerals appeared** (feedback for SDN/MRT: same as
  the Algerian private papers; state dailies still a risk there).
- **Journals — Morocco fares well on the SSA-4** (as predicted vs deep-Maghreb): itweb.africa
  (3), connectingafrica.com (2) each carried Morocco-specific items; **techcabal.com was thin**
  (tag page only, no country-tagged article). techafricanews (12) and techreviewafrica (8) are
  very rich. techreviewafrica is byline-free PR-wire: every item flagged `provenance_flag: pr-wire`
  and **every one re-dated from its explicit `Date:` field** (all proxy guesses were wrong; 1 fell
  pre-2025 and was dropped out-of-window).
- **Month-slicing:** not needed — Morocco is high-volume but topic-scoped semantic passes plus the
  Arabic hand-filter surfaced the in-window set without recency-swamping; ran cluster-merged passes.
- **geopol:** Oracle (US) items tagged `geopol.usa`. **No `geopol.israel` slug exists** — no
  Israel-tie item surfaced this sweep, so nothing needed tagging-around; Gulf ties appear only as
  event colour (UAE cyber official at GITEX) not as standalone stories.

---

## Digital identity — CNIE, biometric passport, national wallet (`dpi.id`)
- 2026-06-02 | dpi.id, dpi.govtech | Biometric Update | **Morocco moves CNIE national-ID renewal online** (apply/upload/pay online, biometric capture in person) — *new: online-renewal step; extends held Mon e-ID / wallet thread*
- 2026-05-23 | dpi.id, dpi.govtech | We Are Tech Africa | **DGSN digitizes CNIE renewal** via Epolice.ma/cnie.ma + Mon e-ID app — *new: second-outlet detail on the same online-renewal move*
- 2026-02-12 | dpi.id, dpi.govtech | We Are Tech Africa | **8 MoUs launch Idarati X.0 operational phase** (CNIE-authenticated national wallet) — *held event (2026-02-13); adds outlet + architecture detail*
- 2026-02-12 | dpi.id, dpi.govtech | Biometric Update | **iDakto & ShareID in MTNRA framework** for the Idarati X.0 wallet super-app — *held wallet event; adds vendor/framework detail*
- 2026-07-10 | dpi.id, gov.legislate | Hespress English | **New biometric passport (decree 2.26.551)** — Amazigh+English, encrypted chip, address removed, temp passports abolished; nationwide Aug 2026 — *NEW event*
- 2026-07-15 | dpi.id, gov.legislate | Biometric Update | **Govt council approves biometric-passport legal framework** (ICAO-aligned) — *NEW; journal twin of the passport decree*

## AI strategy, law & responsible-AI (`tech.ai`, `gov.legislate`, `gov.protect`)
- 2026-01-09 | tech.ai, gov.legislate | Hespress | **Parliamentary bill to regulate AI** (Haraki group, 17 articles, criminal liability, fines/jail) — *NEW; earliest-dated MA AI-legislation move, predates the Digital X.0 draft*
- 2025-11-04 | gov.legislate, tech.ai, gov.protect | We Are Tech Africa | **"Digital X.0" framework law** (AI + data governance + digital ID + interoperability) — *held (2025-11); adds outlet detail*
- 2025-09-11 | tech.ai, finance.mou, gov.protect | Hespress English | **Ministry–CNDP deal for a national responsible-AI platform** (sovereign Moroccan LLMs) — *NEW; first CNDP-AI-platform MoU*
- 2026-03-11 | tech.ai, gov.policy | Tech Africa News | **"AI Made in Morocco" / Al-Jazari Institute of Industry X.0** launched (Fez seminar) — *NEW*
- 2025-02-20 | tech.ai, infra.cybersec, dpi.mis | Hespress English | **AI in health raises cybersecurity concerns** (records security, 48k doctor / 100k nurse gap) — *NEW; sectoral MIS/AI angle*
- 2026-06-05 | tech.ai, finance.mou | Tech Africa News | **Ministry–Orange Morocco AI MoU (JAZARI ROOT)** at GenZ AI Summit, Casablanca — *NEW*
- 2026-04-09 | tech.ai, tech.innovate | Tech Africa News | **Orange Maroc + Technopark "AI Garden"** startup programme (GITEX 2026) — *NEW*

## Data centres, cloud & AI-infra sovereignty (`infra.store`)
- 2025-06-09 | infra.store | Hespress English | **Morocco overtakes South Africa as Africa's top data-centre hub — 23 facilities** (Global Finance) — *NEW ranking claim; cf. held "25+ in Casablanca" (2025-07-31), complementary*
- 2026-04-13 | infra.store, tech.ai | Tech Africa News | **Nexus AI Factory — 12bn-dirham ($1.28bn) sovereign AI data centre** (TAQA-powered, Nvidia/Lloyds), GITEX 2026 — *NEW; major build*
- 2025-11-24 | infra.store, infra.energy | Tech Africa News | **Orange Maroc "Orange Tech" solar 1.5 MW UPTIME data centre**, Nouaceur — *NEW*
- 2025-11-18 | infra.store, infra.energy, tech.ai | Tech Review Africa `[pr-wire]` | **Dakhla green data centre ("Icudar") + Al-Jazari AI/energy institute** agreements — *NEW*
- 2025-12-02 | infra.store | Tech Review Africa `[pr-wire]` | **Cloud Computing Week** (Ministry + Oracle, public-sector admin training) — *NEW; ties to held Cloud-First policy*
- 2026-04-21 | gov.policy, infra.store | Tech Review Africa `[pr-wire]` | **Minister frames digital transformation as "third way" sovereignty** (Diplomatic Crossroads, Rabat) — *NEW*
- 2026-06-30 | tech.industry, finance.new, geopol.usa | Tech Review Africa `[pr-wire]` | **Oracle opens regional R&D office in Agadir** (inaugurated 29 Jun 2026; US ambassador) — *NEW*

## Connectivity — 5G, fibre, subsea cable (`infra.connect`)
- 2025-11-08 | infra.connect | Hespress | **5G launched in major cities** (all three operators, 7 Nov 2025) — *NEW; commercial-launch milestone*
- 2025-11-07 | infra.connect, include.access | Hespress English | **What 5G means for the economy** (ANRT July-2025 fees; 25% 2026 / 70% 2030 targets) — *NEW; analytic backgrounder with licence figures*
- 2025-07-16 | infra.connect, gov.legislate | Telecom Review Africa | **5G licence tender launched** under Maroc Digital 2030 — *NEW; the licensing round itself*
- 2025-04-02 | infra.connect | Connecting Africa | **Maroc Telecom & Inwi form FiberCo/TowerCo JVs** ($458m phase 1; dispute settled) — *NEW*
- 2026-04-08 | infra.connect, finance.mou | Tech Africa News | **Orange Maroc–Ericsson partnership renewed** (GITEX 2026) — *NEW*
- 2025-07-28 | infra.connect | ITWeb Africa | **Nokia to power Medusa subsea cable** (Europe–North Africa incl. Morocco) — *NEW; Med cable-hub angle*
- 2025-04-25 | infra.connect, finance.mou | ITWeb Africa | **Vodafone Business–Maroc Telecom enterprise MoU** (smart city, energy) — *NEW*

## Cybersecurity (`infra.cybersec`)
- 2026-06-21 | infra.cybersec | Hespress | **maCERT/DGSSI FortiBleed alert** — Moroccan institutions among global Fortinet SSL-VPN leak victims — *NEW; concrete incident + DGSSI response*
- 2026-06-02 | infra.cybersec, capacity.training, gov.regional | Assabah | **Rabat hosts ANCA cybersecurity executive-leadership programme** (1–5 Jun 2026; DGSSI-hosted regional CERT centre) — *NEW; the one Assabah keeper*
- 2025-11-26 | infra.cybersec, tech.industry | ITWeb Africa | **Morocco cybersecurity market hits $1.2bn** (Ken Research; +30% incidents) — *NEW; market datapoint*

## Payments & fintech (`dpi.pay`)
- 2026-06-04 | dpi.pay, tech.ai | Tech Review Africa `[pr-wire]` | **3rd Visa Fintech Day, Rabat — AI in payments; fintech White Paper** — *NEW*
- 2025-06-10 | dpi.pay, include.access | Tech Review Africa `[pr-wire]` | **2nd Visa FinTech Day — Morocco FinTech Center + Offre Startup Maroc** (~44% adults financially excluded) — *NEW; inclusion datapoint*

## Digital economy, e-gov strategy & GITEX (`tech.industry`, `gov.policy`, `dpi.govtech`)
- 2025-04-14 | tech.industry, gov.policy, tech.ai | Hespress English | **GITEX Africa 2025 kick-off** (Marrakech; ADD; Africa <1% of global DC capacity) — *NEW; flagship-event coverage*
- 2026-03-31 | tech.industry, finance.new, tech.ai | Hespress English | **GITEX Africa 2026 positioned as African investment gateway** (Morocco 300; DGSSI cyber track) — *NEW*
- 2025-03-18 | tech.industry | Tech Africa News | **GITEX Africa Morocco 2025 preview** (IFC as Economic Development Partner) — *NEW*
- 2026-04-10 | finance.mou, tech.industry | Connecting Africa | **GITEX 2026 deals** (Inwi/China Mobile, Orange/Ericsson, $1.2bn Nexus, Huawei) — *NEW; deal round-up*
- 2026-04-10 | tech.industry, gov.policy | Tech Africa News | **D4SD (Digital for Sustainable Development) pavilion** opened by PM Akhannouch + UNDP — *NEW*
- 2025-06-26 | tech.industry, finance.new | We Are Tech Africa | **Major tech players set up in Morocco** (Oracle, Naver, Nokia, Cisco; 20+ data centres) — *NEW; investment-cluster piece*
- 2026-01-30 | tech.industry, finance.mou | We Are Tech Africa | **Three offshoring agreements** (training, Tech Valleys hubs) — *NEW*
- 2025-11-04 | gov.policy, tech.ai, infra.connect | Tech Africa News | **Minister reviews digital/AI/5G progress in parliament** (80bn-dirham 5G; Amazigh in e-gov) — *NEW; progress statement*

## Regional cooperation & open government (`gov.regional`, `data.open`)
- 2026-05-07 | data.open, gov.regional, dpi.govtech | Tech Review Africa `[pr-wire]` | **African Open Government Conference, Rabat** (5–7 May; 3 agreements: ICESCO, Médiateur, anti-corruption authority) — *NEW*
- 2026-05-14 | gov.regional, dpi.govtech | Tech Africa News | **Same Open Government forum** — regional digital-governance cooperation — *same event, different outlet (kept; lint #7 adjudicates)*
- 2026-05-11 | gov.regional, finance.mou | Tech Africa News | **Morocco–Ghana Statement of Intent** on digital transformation/data governance (signed at the forum) — *NEW; bilateral*
- 2026-04-13 | gov.regional, capacity.training, finance.mou | Tech Africa News | **Morocco–Gabon digital-skills/AI capacity agreement** (GITEX 2026) — *NEW; bilateral*
- 2026-07-09 | gov.regional | Tech Review Africa `[pr-wire]` | **Morocco–Digital Cooperation Organization (DCO) bilateral**, Geneva (D4SD Hub) — *NEW*

## Same-event clusters to watch at ingest (deliberately kept — not sweep drops)
- Idarati X.0 wallet: `2026-02-12 wearetech` + `2026-02-12 biometricupdate` (+ held `2026-02-13` pages).
- CNIE online renewal: `2026-06-02 biometricupdate` + `2026-05-23 wearetech`.
- Biometric passport decree (Jul 2026): `2026-07-10 en-hespress` + `2026-07-15 biometricupdate`.
- African Open Government forum (May 2026): `2026-05-07 techreviewafrica` + `2026-05-14 techafricanews` (+ `2026-05-11` Ghana SoI same event).
- GITEX Africa 2026: `2026-03-31 en-hespress` + `2026-04-10 connectingafrica` + `2026-04-10 techafricanews` D4SD + several Orange GITEX items.
- Nexus AI Factory: `2026-04-13 techafricanews` + referenced in `2026-04-10 connectingafrica`.
