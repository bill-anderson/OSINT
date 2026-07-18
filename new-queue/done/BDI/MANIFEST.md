# BDI — sweep manifest (`BDI-2026-07-17`)

**Window:** 2025-01-01 → 2026-07-17 · **Staged:** 41 · **Dropped:** 51 (`sweep/drop-log-BDI.csv`)

> Merged from the two half-sweeps (newspapers, trade journals), which ran as
> separate agents writing disjoint files. Same-event twins across the two halves
> are deliberately kept: same event from a different outlet is never a sweep-stage
> drop. Lint #7 adjudicates them at ingest, with full text.

---

## Part 1 — Newspapers

# BDI — newspaper sweep manifest

**Batch:** `BDI-2026-07-17` · **Window:** 2025-01-01 → 2026-07-17
**Papers:** Burundi Times (`burunditimes.com`, EN) · Iwacu (`iwacu-burundi.org`, FR)
**Queries:** 14 (7 clusters × 2 domains) + 1 corroborating date-verification search
**Staged:** 18 · **Dropped:** 22 (see `sweep/drop-log-BDI-papers.csv`)

> Scope note: this manifest covers the **newspaper half** only. Other `new-queue/BDI/`
> files (`*-wearetech`, `*-biometricupdate`, etc.) belong to the concurrent journals half.
> Where the two halves cover the same event from different outlets — the biometric ID
> unveiling, the AI strategy, BurundiPay, E-KORI — **both correctly survive**: same event,
> different outlet is never a sweep-stage drop. The lint #7 ladder adjudicates at ingest.

`published | topics | source | title | why it's new`

## Digital identity, registries & civil status

- **2026-05-07** | `dpi.id` `dpi.registry` `gov.protect` `gov.legislate` `gov.regional` | Burundi Times | Burundi unveils Biometric National ID system, awaits law before full rollout | **Headline find — updates the held "repeatedly-delayed biometric ID" picture.** Ministry of Interior unveiled the digital civil-registration platform on 6 May 2026; officials say they are "technically ready to produce the cards" but await the enabling law. Costed at 15bn BIF; full re-registration of every citizen; old paper ID not required. **Explicitly confirms the causal link the wiki already suspects** — Burundi passed the data-protection law *first*, "before developing the software platform."
- **2026-04-01** *(month, proxy)* | `dpi.registry` `gov.legislate` `gov.protect` `include.access` | Iwacu | Titres fonciers sécurisés : une mesure coûteuse et précipitée | New **electronic secured land-title** regime — 6 Feb 2026 ordinance under art. 142 of the revised Dec-2025 finance law; per-are tariffs (12k–150k BIF), 30 Apr 2026 deadline. Owners and UPRONA allege double payment, opaque pricing, and doubt the processing software even works. A registry-digitisation story read as revenue extraction.
- **2026-05-09** | `dpi.registry` `dpi.id` `gov.policy` | Burundi Times | Burundi opposition parties challenge CENI's 2027 election preparations | **Bears directly on the held coerced-voter-register material.** Five opposition parties demand CENI suspend 2027 preparations; CENI sets the vote for 3 May 2027 with only 3.8bn of a 115.8bn BIF budget secured (Feb 2026). Partial registration to cover new 18-year-olds, returnees and those missed in the 2024 enrolment.

## AI, strategy & sovereignty

- **2026-04-01** *(month, proxy)* | `tech.ai` `gov.policy` `infra.store` `gov.protect` `capacity.training` `tech.innovate` | Iwacu | L'IA au cœur de la Stratégie numérique au Burundi | **Major new thread — Burundi has a validated National AI Strategy (2026–2030).** Six axes incl. a national AI commission, ethics charter, **SETIC data-centre modernisation, data hubs and a sovereign cloud**, incubators in Bujumbura/Ngozi/Gitega. UNDP frames it on "éthique, droits humains et souveraineté numérique." Flags 4G coverage and rural electrification as blockers.
- **2025-11-01** *(month, proxy)* | `tech.ai` `gov.policy` `gov.protect` `capacity.research` | Iwacu | Burundi : un atelier national pour évaluer le paysage de l'IA | The **diagnostic** step that preceded the above — UNDP AILA/EPIA landscape assessment, Bujumbura, 25–27 Nov 2025. Minister's assistant: "L'IA … c'est un enjeu de société, de gouvernance et de souveraineté nationale."

## Payments & digital finance

- **2026-04-25** | `dpi.pay` `dpi.exchange` `include.access` `gov.standards` | Burundi Times | New 'BurundiPay' platform connects banks, microfinance and Mobile Money networks | **National instant-payment switch went live 23 Apr 2026.** 1,000 tps, 24/7, bridges banks/MFIs/mobile money via account, wallet or phone number. BRB targets 78% digital-payment usage by 2040.
- **2025-09-29** | `dpi.pay` `include.access` `include.divides` `data.statistics` | Burundi Times | Burundi digital payments see growth but cash still dominates | **Hard BRB Q2-2025 numbers**: 97.5m transactions worth 4.4tn BIF; 153,000 agents; but only **1.6m of 7.6m mobile wallets active**, deposits/withdrawals = 45% of value, P2P just 3%. BRB itself concedes "adoption remains shallow." Excellent dated baseline against the BurundiPay claims.
- **2026-02-05** | `dpi.pay` `gov.standards` `dpi.exchange` | Burundi Times | Burundi upgrades Payment System to international ISO 20022 Standard | BRB migrated its Automated Transfer System to ISO 20022, live 6 Feb 2026 — the messaging-standard groundwork under BurundiPay.
- **2025-04-21** | `dpi.pay` `dpi.exchange` `include.divides` `infra.cybersec` `capacity.literacy` | Burundi Times | Burundi's Central Bank aims for full digital transformation | The **plan** BurundiPay later delivered — BRB aimed to fully digitise by Nov 2025 via the national e-payment switch; USSD-first for offline users. Useful as the dated prior against the Apr-2026 launch (slipped ~6 months).
- **2026-02-16** | `gov.legislate` `gov.standards` `dpi.pay` `dpi.id` | Burundi Times | Burundi modernizes financial crime defense as Central Bank issues new AML/CFT rules | 30 Jan 2026 BRB regulation + five circulars — **KYC/client-identification obligations**, thresholds, suspicious-transaction typologies, sanctions matrix. FATF/ESAAMLG alignment. The identity-verification demand-side that a biometric ID would serve.

## Connectivity & digital divides

- **2026-05-05** | `infra.connect` `digital.rural` `include.divides` `include.access` `finance.mou` | Burundi Times | $5.9M ONATEL deal marks new push for digital access in rural Burundi | SETIC–ONATEL contract under PAFEN to cover **92 rural "hills" with no 2G/3G at all**, ~372,035 people. Framed by government as "digital sovereignty."
- **2026-01-01** *(year, proxy — see file)* | `infra.connect` `digital.rural` `include.divides` `dpi.govtech` `dpi.pay` `infra.cybersec` `capacity.research` | Iwacu | Internet haut débit : le PAFEN veut couvrir plus de 80 % du territoire | **Best single map of who is building Burundi's DPI.** PAFEN (World Bank) ties together: the OBR tax platform, BurundiPay financing, Onatel+Lumitel contracts for **178 rural communes on 4G / 800,000+ people**, BERNET connecting 14 universities, and drafting of the **national cybersecurity, data-protection and digital-policy strategies**.
- **2025-01-21** | `infra.connect` `gov.regional` `include.divides` `gov.legislate` `gov.policy` | Burundi Times | Burundi Embraces EAC Digital Integration for ICT Growth | **Dated coverage baselines from the minister**: 2G 97%, 3G 51% (EAC avg 78%), 4G 32% as of 2023 (avg 62%), mobile internet penetration 22%. Senate ratified the EAC Regional Digital Integration protocol; ONA entry 1 Aug 2024; Electronic Communications Code promulgated 2024.

## E-government & tax digitalisation

- **2026-01-20** | `dpi.govtech` `gov.policy` | Burundi Times | Burundi Revenue Authority rolls out E-KORI digital tax platform | OBR launched **E-KORI** for online declaration/payment, World Bank-backed — the revenue arm of the Vision 2040/2060 digitalisation push.

## Health data & external partners

- **2026-02-09** | `dpi.mis` `geopol.usa` `finance.mou` `gov.protect` | Burundi Times | United States commits $156M to Burundi health sector under new five-year agreement | MoU signed 6 Feb 2026: >$129m US health assistance over five years, incl. **health data-management systems** and outbreak surveillance. **Burundi agreed to share health data with US authorities** during epidemic-potential outbreaks, under the "America First Global Health Strategy." A live data-sovereignty bargain — and a direct counterpoint to Ghana rejecting a comparable US deal over data-sharing terms ten weeks later (that Ghana piece ran on Burundi Times but is dropped here as GHA-scoped).

## Regional data governance (Burundi as EAC member)

- **2026-05-07** | `include.divides` `gov.protect` `dpi.exchange` `gov.regional` `infra.cybersec` `capacity.literacy` | Burundi Times | Digital Divide persists as East Africa expands regional tech integration | **Contains a direct, dated external assessment of Burundi**: an EAC/EARDIP data-protection advisor classes **Burundi's data-protection system as "nascent"** — alongside Somalia, South Sudan and DRC — while Kenya/Rwanda are "advanced and operational." **This sits in tension with the Jan-2026 data-protection law the wiki holds** (see Flags).
- **2026-06-25** | `dpi.exchange` `gov.protect` `gov.regional` `gov.standards` | Burundi Times | EAC backs Secure Data Sharing Framework | EAC validating a **cross-border data-flow framework** (Dar es Salaam, Jun 2026) under World Bank EARDIP — the regional ceiling any Burundian data-protection regime will have to meet.
- **2025-10-10** | `data.statistics` `gov.regional` `gov.standards` `gov.legislate` | Burundi Times | EALA endorses creation of Regional Statistics Bureau | EALA passed the EAC Statistics Bureau Bill 8 Oct 2025 — **and Burundi is the reason it took 7 years**: Burundi forced its 2022 withdrawal and a Mar-2024 amendment on ministerial designation. A concrete instance of Burundi asserting national control inside regional data governance.

## Flags for the reviewer

- **Contradiction candidate (highest value).** The 2026-05-07 EAC assessment calls Burundi's data protection **"nascent"**, while the 2026-05-07 biometric-ID piece says Burundi **"first adopted legislation on the protection of personal data … to align the system with international standards."** Both same-day, both Burundi Times. Most likely reconciliation: *law on the books, no functioning authority/enforcement* — which would refine the held claim that the Jan-2026 law was passed largely to enable the ID rollout. Worth a `reviews/contradictions/open/` item at ingest.
- **Iwacu serves no publication dates.** Neither search results nor fetched pages expose a date, and the "Jean Bigirimana disparu depuis N jours" counter is **live-rendered at fetch time** (it read 3647 = today), so it is *not* a dating anchor. All 4 Iwacu items are dated from content plus corroborating third-party reports and carry `date_source: proxy`. Three Iwacu candidates were dropped precisely because they could not be dated in-window — including a substantial **privacy critique of the biometric ID** (c. 2014) that is thematically on-point but far out of window; a current equivalent is worth sourcing.
- **`2026-01-01-internet-haut-debit-pafen…` is year-precision only.** True publication is bounded **late Apr – early Jul 2026** (it reports BurundiPay as already launched; crawled 2026-07-10). The `2026-01-01` prefix is a sorting pad, **not** a date claim. Pin before citing.
- **Recency-swamping:** not a problem on either domain — both are low-volume enough that unsliced queries surfaced the full in-window set. No month-slicing needed.
- **Iwacu query drift:** the FR payments cluster (N6) drifted badly into EAC monetary-union/forex stories; the FR data-centre cluster (N5) returned **no** data-centre, data-localisation or hyperscaler coverage at all. Iwacu appears simply not to cover those beats — the sovereign-cloud/data-centre material surfaced only inside the AI-strategy piece.
- **Possible `resource` entity, not staged:** [Iwacu Open Data](https://www.iwacu-burundi.org/iwacu-open-data/) — Iwacu runs a standing open-data portal on Burundi. Logged as a drop (not a dated source) but it is a plausible `entity_type: resource` for `data.open`. Curator's call.

---

## Part 2 — Trade journals

# BDI — trade-journal sweep manifest

Sweep batch: `BDI-2026-07-17` · window 2025-01-01 → 2026-07-17 · 16 queries (8 journals × J1/J2).
Staged: 23 · dropped: 29 (4 already-held, 1 same-outlet-recrawl, 4 out-of-window, 20 off-topic).
Newspaper half (`MANIFEST-papers.md`) is a separate agent's output.

## Staged items

`published | topics | source | title | why it's new`

2025-02-12 | finance.new, dpi.govtech, include.divides | We Are Tech | Burundi Seeks IFC Support for Digital Projects | Second-outlet account of the IFC–SETIC talks the wiki already holds via Biometric Update; adds ITU 2024 IDI rank (46/47, score 24.4) and EGDI 0.2480, plus the Jan-2025 EAC ICT protocol ratification.
2025-06-25 | dpi.govtech, gov.regional | We Are Tech | Burundi Taps Regional Cooperation to Advance Digital Tax Reforms | OBR peer exchanges with Sierra Leone, Liberia and Benin on e-KORI; dates the integrated tax-system tender to 5 May 2025.
2025-09-10 | infra.connect, infra.energy, include.divides, include.access | Connecting Africa | Unreliable connectivity impacts Burundi's citizens | **Ground-level reporting on network failure**: 12.5% internet penetration (Digital Watch), three operators left after two closures, towers offline in power cuts, electricity 118 MW (2025) vs 47 MW (2020). Contradicts other penetration figures — see Flags.
2025-11-14 | gov.policy, gov.protect, gov.standards, data.statistics | We Are Tech | Burundi Adopts National Data Governance Strategy | **New to the wiki**: first National Data Governance Strategy (SNGD) validated Nov 2025, seven pillars, UNECA-co-led, 60+ institutions. Predates the Jan-2026 data-protection law the wiki holds and reframes it as one strand of a wider strategy.
2026-01-16 | gov.protect, gov.legislate, dpi.id | TechAfrica News | Burundi Adopts Landmark Personal Data Protection Law | Second-outlet account of the held data-protection law; adds the eight-chapter structure, sponsoring minister (Léonidas Ndaruzaniye) and the Penal Code / ICT-offences interaction.
2026-01-22 | dpi.govtech, infra.cybersec | We Are Tech | Burundi Digitizes Tax Collection With Launch of e-KORI System | Second-outlet account of held e-KORI story; adds nine-phase rollout, minister's quotes, and the security/technical-partner arrangement.
2026-02-19 | dpi.govtech, dpi.exchange, gov.regional | We Are Tech (FR) | Le Burundi digitalise ses procédures d'importation via un guichet unique | **New**: web version of the Guichet Unique Électronique with the ABREMA module; ties to ASYCUDA and the Single Customs Territory transition.
2026-02-19 | dpi.govtech, dpi.exchange | TechAfrica News | Burundi Launches #ABREMA: Fully Digital Platform for Pharmaceutical Imports | Same event, second outlet; adds exclusive-use start date (18 Feb 2026) and that ABREMA first launched 2021.
2026-03-02 | infra.connect, tech.industry, include.access, finance.mou | We Are Tech | Lyca Mobile Advances Telecom and E-Health Plans in Burundi | **New entrant**: Lyca Mobile licensed by presidential decree Oct 2025, met President Ndayishimiye 27 Feb 2026; **internet penetration 11.1% at end-2025 (~1.6m users)**.
2026-03-04 | infra.connect, digital.rural, finance.new, include.divides | TechAfrica News | Lumitel Burundi Launches $10M High-Speed Internet Project | **New**: PAFEN PPP, $4.37m World Bank + $5.62m Lumitel, 86 hills across 14 provinces, 400,000+ citizens, ~300 schools over 14 months.
2026-03-27 | dpi.id, dpi.govtech, infra.store, finance.new | We Are Tech | World Bank Reviews Burundi's PAFEN Reform Program | **Rollout-date + progress find**: PAFEN at **61% budget commitment** at mid-term, **2028 target**; confirms national digital ID and a national data centre as PAFEN components.
2026-04-23 | tech.ai, gov.policy, infra.store, capacity.training | We Are Tech | Burundi Rolls Out Six-Pillar AI Strategy | **New**: national AI strategy validated 22 Apr 2026 — six pillars, ~15 pilot projects, 1,000+ officials to be trained, sovereign-cloud ambition. Note year conflict — see Flags.
2026-04-23 | tech.ai, gov.policy | TechAfrica News | Burundi Launches Framework to Integrate AI into Governance and Economy | Same strategy, second outlet — dates the workshop **21 April** and the strategy **2026–2030** (We Are Tech says 22 April / 2025–2030). See Flags.
2026-04-27 | dpi.pay, include.access | TechAfrica News | BurundiPay Set to Transform Digital Payments Nationwide | **New**: SETIC announcement of BurundiPay; Burundi is Africa's **22nd** instant-payment country.
2026-04-28 | dpi.pay, gov.standards, include.access | We Are Tech | Burundi Launches Real-Time Payments Platform Backed by World Bank | Fuller account of the same launch (BRB, 23 Apr 2026, Bujumbura): ISO 20022, USSD for feature phones, RTGS/ACH integration. Cites internet penetration "around 30%" — conflicts with 11.1%; see Flags.
2026-05-04 | infra.connect, digital.rural, include.divides | TechAfrica News | Burundi Signs USD 5.9 Million Contract to Expand Rural Network Connectivity | **New**: SETIC/PAFEN–Onatel contract signed 29 Apr 2026; 92 hills, **372,035 rural beneficiaries**, framed as "digital sovereignty and territorial equity".
2026-05-05 | infra.connect, digital.rural, include.divides | ITWeb Africa | Burundi lands funding for 4G rural expansion | Same contract, second outlet; adds **18-month** term and **mobile connections 8.04m / 56.6% (early 2025) rising to 60.7% (Oct 2025)**.
2026-05-08 | dpi.id, dpi.registry, dpi.govtech, include.divides | We Are Tech | Burundi Launches Digital Civil Registry and Biometric ID Initiative | **Highest-value ID find**: 6 May 2026 ministry launch of the civil-registry platform + biometric ID card; infrastructure "nearly complete" but **awaiting a governing decree**; family-code amendment was the blocker. Updates the wiki's Jan-2026 "pilot communes" state. Companion to the newspaper agent's 2026-05-07 file.
2026-05-29 | include.access, gov.policy, infra.connect | Connecting Africa | Burundian President seeks mobile phone ban for civil servants | **New, and analytically sharp**: Ndayishimiye orders civil servants to leave phones at home and use landlines; mobile penetration 60.7%, lowest in the EAC. Digital-rights pushback (Dukingire Isi Yacu) frames it as a rights restriction; notes provinces cut from 18 to five in 2025.
2026-06-23 | dpi.id, dpi.pay, dpi.govtech, geopol.india | We Are Tech | Burundi Studies India Stack for Digital Identity and Payment Reforms | **New geopolitical thread**: 22 Jun 2026 talks with India's ambassador on adapting India Stack; India has 23 country agreements.
2026-06-26 | dpi.id, dpi.pay, geopol.india, dpi.govtech | TechAfrica News | Burundi and India Explore Partnership on Digital Identity and E-Payments | Same meeting, second outlet — terser, names the ministry as "Finance, Budget and Economic Planning" (vs "Digital Economy" elsewhere).
2026-06-26 | dpi.mis, dpi.exchange, infra.connect | We Are Tech | Burundi Advances Health Digitalization With Broader eLMIS Medexis Rollout | **New**: eLMIS Medexis complete across all public/faith-based facilities (2025) — **2,000+ users trained, 956 facilities, 839 laptops, 148 routers**; extension to private providers, Starlink under consideration.
2026-06-30 | dpi.id, dpi.pay, geopol.india | Biometric Update | Burundi looks to India Stack for digital ID and payments infrastructure | Third account of the India talks, and the most analytically loaded: explicitly states **"Burundi had planned to get a fully functional biometric ID system by 2025, but the projection didn't materialize"** — direct corroboration of the wiki's repeated-delay thread.

## Flags

- **Internet-penetration figures conflict across in-window sources**: 11.1% end-2025 (We Are Tech ×2, DataReportal), 12.5% (Connecting Africa, Digital Watch, Sept 2025), 19% (We Are Tech, Feb 2025, ITU), "around 30%" (We Are Tech, Apr 2026, "official data"). Mobile connections are a separate series (56.6% early 2025 → 60.7% Oct 2025). Likely different denominators/series rather than a true contradiction, but the 11.1% vs 30% gap inside the same outlet six weeks apart is worth a contradiction item at ingest.
- **AI-strategy period and date conflict**: We Are Tech says validated **22 April 2026**, strategy **2025–2030**; TechAfrica News says **21 April 2026**, strategy **2026–2030**. Both staged; ingest dedup/contradiction rule should adjudicate.
- **Ministry name varies**: "Ministry of Finance, Budget and Digital Economy" (most sources) vs "Finance, Budget and Economic Planning" (TechAfrica News, June 2026).
- **techreviewafrica.com yielded no in-scope Burundi item.** Its only Burundi hit was a solar EV-charging station launch — energy/mobility, outside the wiki's scope — dropped as off-topic. No PR-wire items staged, so no primary-sourcing follow-ups arise from it.
- **Zero Burundi coverage** from **techcabal.com** and **telecomreviewafrica.com** in the window (telecomreviewafrica's only Burundi article is a 2023 Starlink piece).
- Three staged items are second-outlet accounts of stories the wiki already holds (IFC, data-protection law, e-KORI). Kept per the conservative rule — each adds facts the held copy lacks; lint #7 adjudicates post-ingest.
