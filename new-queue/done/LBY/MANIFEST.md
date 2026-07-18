# LBY — sweep manifest (`LBY-2026-07-17`)

**Window:** 2025-01-01 → 2026-07-17 · **Staged:** 32 · **Dropped:** 15 (`sweep/drop-log-LBY.csv`)

**Sources.** Newspapers: **libyaherald.com** (Libya Herald — English) and **alwasat.ly / بوابة الوسط** (Alwasat — Arabic). Trade journals: the fixed 8 (English) — **established genuinely thin for Libya** (see below). Ran N1–N7 in English on Libya Herald and N1–N7 in Arabic on Alwasat (validated Arabic recipe).

**Arabic dates (LBY Hijri/numeral risk):** Hijri and Eastern-Arabic numerals **did NOT appear on alwasat.ly** — it serves clean Western-digit Gregorian datelines (like Echorouk). Eastern-Arabic numerals (٣٠ أيار ٢٠٢٦) appeared only on a *third-party aggregator* (klyoum.com) re-publishing Alwasat. Feedback for SDN/MRT: the state/aggregator layer, not the private paper, is where the numeral risk sits.

**East/west split:** Most items are **GNU/Tripoli-side** (CBL, GIA, GACI, LPTIC, ministries) — "national" claims are effectively west-administration claims. Explicit **east-side** items: the HoR/National-Security-Council **cybersecurity-law drafting in Benghazi** (524932); the **Al-Marj** (east) civil-registry fraud case (504785); **Seraj Islamic Bank** (Benghazi) digital-payments deal (516048). Background (not staged, see report): GNU suspended Huawei over an eastern "Ozon" network contract; Haftar/east controls much infrastructure.

**Bodies:** staged as fetch-time **excerpts** (`body_completeness: excerpt`) drawn from the on-page clipped text — not AI summaries. A few (LibiGPT, India, and 3 Arabic ID items) have thin excerpts flagged "recommend full clip at promotion." Proxy dates (article-ID interpolation) flagged `date_source: proxy` on 6 Arabic items.

**Month-slicing:** not needed — the two papers were not recency-swamped; topic-cluster queries returned enough in-window depth per pass. **This is a high-activity country** (esp. payments) — the staged set is substantial-but-curated; routine monthly CBL-stat re-reports were consolidated to keystone items (others in drop-log as pr-wire-better-twin).

---

## Payments & digital finance (dpi.pay) — Libya's strongest theme
- 2026-01-20 | dpi.pay,data.statistics | Libya Herald | *E-payment transactions up 186% to LD 389bn in 2025 (CBL)* — keystone annual figure; Governor Issa reforms
- 2026-02-21 | dpi.pay,data.statistics | Alwasat (AR) | *نمو سريع للدفع الإلكتروني* — CBL 2025→15 Feb 2026 stats, LD 313.6bn (twin of held libyanexpress + libyaherald 02-23)
- 2026-03-03 | dpi.pay | Alwasat (AR) | *نمو قياسي + إطلاق الدفع بـQR* — Jan–Feb 2026 figures; QR-POS launch
- 2026-03-06 | dpi.pay,gov.legislate | Libya Herald | *Aldabaiba decree mandates e-payments for state revenue; CBL cuts FX commissions*
- 2026-03-11 | dpi.pay,gov.legislate | Alwasat (AR) | *«المركزي» يسمح للأجانب بمحافظ إلكترونية* — Circular 9/2026, foreigners' e-wallets + transfer caps
- 2026-05-27 | dpi.pay,infra.cybersec | Libya Herald | *2m POS transactions in a day crash e-payment system; CBL apologises* — infrastructure strain
- 2026-06-16 | dpi.pay,finance.new | Alwasat (AR) | *إيبيكس 2026: SoftPOS + Visa* — H1-2026 ~LD162bn, projected ~700bn
- 2026-06-17 | dpi.pay,finance.new | Libya Herald | *EPAIX 2026 — SoftPOS, intl Visa, National Stand-In Processing launched*
- 2026-01-15 | dpi.pay | Libya Herald | *Jumhuria Bank first petrol-station e-payment (OnePay Mini Pay)*
- 2026-05-01(proxy) | dpi.pay,tech.ai,geopol.india,geopol.gulf | Alwasat (AR) | *Finnovate: Libyan banks digital expansion* — Tadamon+JMR(India), Seraj(east)+Network Intl(UAE)

## Digital identity & civil registry (dpi.id) — integrity crisis
- 2026-01-02 | dpi.id,gov.protect,dpi.registry | Libya Herald | *Attorney General crackdown — 225 Malian nationals got national IDs + passports* (extends held 2025-12 breach warning)
- 2026-04-19 | dpi.id,gov.protect | Alwasat (AR) | *أرقام وطنية مزورة للبيع* — black market in forged national numbers
- 2026-01-14 | dpi.id,gov.protect | Alwasat (AR) | *المرج: حبس أجنبي و10 أرقام وطنية* — Al-Marj (EAST) civil-registry fraud
- 2025-06-07 | dpi.id,include.access | Alwasat (AR) | *غضب حاملي «الأرقام الإدارية»* — administrative-vs-national-number access issue

## Connectivity & infrastructure (infra.connect)
- 2025-05-12 | infra.connect,geopol.eu | Libya Herald | *Medusa submarine cable inaugurated (Misrata)* — 8,700km to Europe
- 2026-01-25 | infra.connect,geopol.usa,finance.mou | Libya Herald | *LPTIC–KBR (US) MoU — infrastructure + 5G*
- 2026-01-29 | infra.connect | Libya Herald | *Almadar launches Libya's first 5G (Tripoli)*
- 2026-07-16 | infra.connect,geopol.eu | Alwasat (AR) | *Libya–Nokia (Finland) 5G cooperation*
- 2026-04-22 | infra.connect,infra.cybersec | Libya Herald | *GACI urges IPv4→IPv6 transition*
- 2026-05-30 | infra.connect,include.divides | Alwasat (AR) | *Ghat–Tahala fibre cut (floods) → 91.7% restored via VSAT* (south-west divide)

## E-government, data & regional (dpi.govtech / gov.policy / data.open)
- 2026-04-10 | dpi.govtech,data.open | Libya Herald | *LY_GOVREP government-reporting platform activated* (update on held 2025-07 launch)
- 2026-03-02 | dpi.govtech,dpi.exchange | Libya Herald | *Unified Chambers of Commerce Digital System launched*
- 2026-04-25 | digital.localgov,geopol.eu | Libya Herald | *Tripoli BaladiyaBOT municipal assistant (GIZ/EU-funded)*
- 2026-03-30 | gov.policy,gov.regional | Libya Herald | *GACI sovereign digital-economy vision at UNECA COM 2026 (Tangier)*
- 2026-07-13(proxy) | tech.ai,gov.regional,geopol.usa | Alwasat (AR) | *Libya at Geneva "financing digital sovereignty" ministerial (UNECA/World Bank/Google)*

## AI, cyber & skills (tech.ai / infra.cybersec / capacity.training)
- 2025-10-30 | tech.ai,gov.policy | Libya Herald | *National AI Strategy 2025–2030 published (GIA)* — flags data-protection law due 2026
- 2025-10-28 | tech.ai,tech.innovate | Libya Herald | *LIBIGPT — first Libyan generative-AI system launched*
- 2026-02-01 | tech.ai,capacity.training,geopol.india | Libya Herald | *Libya–India AI/quantum upskilling*
- 2025-11-01(proxy) | tech.ai,infra.cybersec,capacity.training | Alwasat (AR) | *Planning Ministry AI+cybersecurity masters institute (with UNDP); "Libya Vision 2050"*
- 2026-07-16 | infra.cybersec,gov.legislate | Alwasat (AR) | *HoR/National Security Council drafting cybersecurity law (Benghazi — EAST)*
- 2026-06-24(proxy) | infra.cybersec,dpi.pay | Alwasat (AR) | *CBL discloses cyber incident affecting some systems*
- 2025-04-06(proxy) | infra.cybersec | Alwasat (AR) | *Interior Ministry: 135 cybercrime cases, 188 devices seized Q1-2025*

---

## Per-domain yield (established, not assumed)
- **libyaherald.com** — high yield; the primary English window on GNU-side DPI/payments/AI. 17 staged.
- **alwasat.ly (AR)** — high yield and **entirely unmined before this sweep** (no alwasat URLs in `held-urls.txt`). Clean Gregorian dates; strong on payments, civil-registry fraud, cyber, and the east/west split. 15 staged.
- **Trade journals (fixed 8)** — **genuinely thin for Libya, established by probing.** SSA-4 (biometricupdate/techcabal/connectingafrica/itweb.africa) returned no Libya-specific in-window keepers except a Libya-agnostic ID4Africa AGM piece (biometricupdate) and the LPTIC–KBR story attributed to **ITWeb Africa** (a cross-outlet twin of the staged Libya Herald item). Maghreb-carriers (wearetech/telecomreviewafrica/techafricanews/techreviewafrica) surfaced nothing Libya-specific on-domain. Libya's trade-press signal is instead carried by **Ecofin Agency, DataCenterDynamics, TheFintechTimes, techinfoafrica, extensia.tech** — none of which are in the fixed 8. **No journal items staged.**

## Notable off-source LEADS (not staged — out of assigned source list; for the human/`reviews/gaps.md`)
These are high-value Libya DPI developments the paper-sweep confirms but that live on **official/other domains** outside my two papers + 8 journals:
- **gia.gov.ly (GIA official)** — the single richest Libya-DPI source, unmined: **LY-DNID national digital identity Level 2 pilot** (2025-11-20) and **Level 3 biometric eKYC** with CBL (2026-04-19); **Open Government Data Platform** launched (2025-11-27, opendata.gia.gov.ly) + draft open-data policy; **91-dataset** milestone (2026-02-11); **National Cloud Computing Policy w/ ESCWA** (2025-12-30); **LY-NDEX National Data Distributor >300m transactions/yr** (2026-07-01); **AI Ethics Charter + National AI Strategy 2026–2030 formally adopted by PM Dbeibeh** (2026-06-01) with a new **Minister of State for Digital Economy & AI** (Ziad al-Hajjaji) — targets incl. sovereign cloud 2026–27, unified national digital ID by 2027, data-exchange platform by 2028.
- **Huawei / China (east/west)** — GNU **suspended Huawei's Libya activities** (2025-08-17) over an eastern ~US$700m "Ozon" mobile-network contract (libyasecuritymonitor); **Trans-Sahara + Tatweer Huawei FusionModule data centre** for Tripoli (DCD, 2026-06-24); **LTT–ZTE MoU at MWC26** (meatechwatch, 2026-03-11); **Jumhouria Bank–Huawei** digital-transformation talks (2026-06). Russia active in the east (no `geopol` Russia slug — tagged around).
- **DataCenterDynamics** — Medusa Tripoli+Benghazi landing deal (2026-05); **BlueMed** (Sparkle/Google) Libya landings.
- **thefintechtimes.com** — "Fintech Ecosystem of Libya 2026" backgrounder (~20 fintechs; Sadad Libya). Reference/lead.
- **Data-protection gap:** no data-protection law/DPA exists (DLA Piper; NISSA public-sector-only); a draft is promised by 2026 in the AI strategy. Thin theme — flag.
