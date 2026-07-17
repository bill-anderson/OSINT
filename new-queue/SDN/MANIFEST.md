# SDN (Sudan / السودان) — Phase-2 sweep manifest

- **Batch:** SDN-2026-07-17
- **Window:** 2025-01-01 → 2026-07-17
- **Staged:** 17 candidates (12 SUNA / Arabic · 5 trade-journal / English) · **Dropped:** ~34 logged in `sweep/drop-log-SDN.csv`
- **Sources run:** Newspapers — **suna.sd** (Sudan News Agency, **state agency**, Arabic — Port-Sudan government voice) and **sudantribune.com** (independent/diaspora, English). Journals — the fixed 8, `site:`-scoped per domain.
- **All 17 keepers are new to holdings** (0 hits vs `sweep/held-urls.txt`; no suna.sd/sudantribune/techafricanews/telecomreviewafrica Sudan URLs were held).

## Method / caveats

- **Exa ignored domain filters** — plain queries returned the open web, so N1–N7 were re-run as `site:<domain>` queries and hand-filtered to host, per the Arabic-recipe gotcha #1 (domain scoping barely holds). `site:suna.sd` and `site:<journal>` worked well.
- **War-news filter:** dropped pure military/casualty/politics; kept connectivity, telecom, ID, payments, e-gov, cyber, and the war's physical-infrastructure-destruction dimension (grid). Borderline monetary items (physical currency-swap/demonetization, Hajj-payment logistics, solar-financing facility) dropped as off-topic (no digital payload) — logged.
- **suna.sd is a STATE agency** (SAF/Port-Sudan government). Every SUNA candidate carries `provenance_flag: state-agency` and a body note: capture is not endorsement; "rebel militia"/RSF attributions are the government's framing. Weight vs the independent record accordingly.
- **sudantribune.com = genuinely thin (ESTABLISHED, not assumed).** `site:` probe returned **no in-window (2025–26) digital/telecom items** — its recent Sudan coverage is pre-2024 banking/macro and war-politics. Zero staged from Sudan Tribune.

## Arabic date-loop finding (closes the SDN state-agency question)

**suna.sd serves clean in-body Gregorian datelines** in the form `City DD-M-YYYY (سونا)`, in **Western-Arabic digits** (0-9). Across ~20 SUNA items seen, **Hijri appeared only in Hajj-season religious references** (1447هـ), never as an article dateline. **One** exception on Eastern-Arabic numerals: the Dinder police item (`٢/٢٢`, = 22 Feb) — the sole Eastern-numeral dateline; converted and recorded. Net: the flagged Hijri/Eastern-numeral risk **largely did NOT materialise** even at the state-agency layer; dates are `date_source: source`, `date_precision: day`. (Exa returned `Published: N/A` for every suna.sd URL — dates established from the body dateline, as required.)

## Per-domain journal yield (SDN-specific, in-window)

| Journal | SDN in-window yield | Status |
|---|---|---|
| techafricanews.com | **4 staged** (Zain Bede, Network Intl, USSD banking, MTN Al-Manssa) | the workhorse for SDN |
| telecomreviewafrica.com | **1 staged** (Horizon Fiber binding) | rest 2018–2021 or SSD |
| biometricupdate.com | 0 new (only the already-held SudaPass piece) | established thin |
| connectingafrica.com | 0 (Sudatel items 2017–18; rest SSD) | established thin |
| itweb.africa | 0 in-window (all Sudan coverage 2023–24) | established thin |
| techcabal.com | 0 in-window (Bloom/alsoug/war 2021–23) | established thin |
| wearetech.africa | 0 in-window SDN-specific | established thin |
| techreviewafrica.com | 0 (all items are South Sudan) | established thin/nil |

Confirms the recipe note "LBY/SDN/MRT will be even thinner" on the SSA-4 — **and** that wearetech/techreviewafrica are thin for SDN too; techafricanews + telecomreviewafrica carry Sudan.

## Staged items — by theme

### Digital identity & e-government (the Port-Sudan digital-state build)
- `2026-05-21 | dpi.id, dpi.govtech, infra.cybersec | suna | السودان يطلق "سوداباس" (Sudan LAUNCHES SUDAPASS national digital ID)` — **MAJOR UPDATE: SUDAPASS is now LIVE** (launched 21 May 2026 via Cyber Security Authority + National e-Certification Authority + Interior/Civil Registry). Wiki holds it only as "imminent/preparing" (Jan–Feb 2026).
- `2026-04-19 | dpi.govtech, dpi.id, dpi.registry, include.access | suna | لقاء وزاري: التحول الرقمي والسجل الاجتماعي الموحد (unified SOCIAL REGISTRY + new civil-service system)` — foundational social-protection DPI for targeting poor/displaced; new.
- `2026-02-23 | dpi.govtech, finance.new | suna | ترخيص المشروعات الاستثمارية عبر "بلدنا" (Baladna e-gov platform launches electronic investment licensing)` — Baladna (same programme as SUDAPASS) expanding to investment services.
- `2025-06-18 | dpi.govtech, infra.connect | suna | إعادة تشغيل الأسيكودا بجمارك الجزيرة (ASYCUDA customs system reactivated after war looting)` — post-war restoration; earliest in-window item.
- `2026-05-24 | dpi.govtech, dpi.pay | suna | ديوان الضرائب: استعادة الفاتورة الإلكترونية (tax e-invoicing project restored after war, PM backing)` — post-war system restoration.
- `2026-05-20 | dpi.mis, dpi.govtech | suna | التحول الرقمي في القطاع الصحي ومنصة "عافية" (health-sector digital strategy + "Afia" platform, with WHO)` — health MIS build.

### Payments & digital finance (wartime survival rails)
- `2025-04-18 | dpi.pay, finance.new, include.access | techafricanews | Zain launches 'Bede' digital wallet in Sudan` — telco mobile-money wallet, launched in Port Sudan; complements Bank of Khartoum's Bankak.
- `2026-03-18 | dpi.pay, include.access, infra.connect | techafricanews | Sudan launches USSD banking (works without internet)` — explicit wartime connectivity-resilience/inclusion rail (Ministry + CBoS + telecom regulator).
- `2026-01-19 | dpi.pay, finance.mou, geopol.gulf | techafricanews | Network International + Saudi Sudanese Bank (Mastercard processing)` — Gulf/MEA processor entering Sudan; geopol.gulf tagged around external actor (**flagged** — no proxy nuance in taxonomy).
- `2026-04-30 | dpi.pay, dpi.govtech | suna | المالية × بنك العمال الوطني: خدمة "إيصالي" (Isali e-collection of govt revenue)` — P2G digital revenue collection.
- `2026-05-03 | dpi.pay, digital.localgov | suna | القضارف تنقل تجربة "إيصالي" لكسلا (Isali e-collection spreads Gadarif→Kassala)` — sub-national DPI diffusion; companion to the 30-04 national contract.
- `2026-02-22 | infra.cybersec, dpi.pay, gov.protect | suna | محاكمة شبكة تزوير إشعارات "بنكك" (fraud network convicted for forging Bankak mobile-money alerts)` — payments-integrity/cyber dimension of the dominant wartime DFS rail. *(Eastern-numeral dateline ٢/٢٢.)*

### Connectivity & infrastructure (incl. war destruction)
- `2026-02-04 | infra.connect, gov.regional, finance.mou | suna | سوداتل × جيبوتي × إثيوبيا: مبادرة "هورايزن فايبر" (Horizon Fiber cross-border corridor; Sudatel added ~2,700 km during the war)` — **MAJOR**: Djibouti–Ethiopia–Sudan multi-terabit fibre; Sudan as regional digital hub.
- `2026-02-10 | infra.connect, gov.regional, finance.mou | telecomreviewafrica | Ethio/Djibouti/Sudatel seal BINDING Horizon Fiber deal` — complementary twin (Dec-2024 MoU → binding; CEO quotes). Both kept.
- `2026-01-16 | infra.connect, tech.industry | suna | سوداني وسوداتل يقودان التحول الرقمي للأعمال (minister praises Sudani/Sudatel; Port-Sudan business digital-transformation event)` — establishes operator status post-war.
- `2025-08-18 | capacity.training, tech.industry, include.access | techafricanews | MTN Sudan 'Al-Manssa' digital-skills programme` — rare capacity.training data point.
- `2026-05-23 | infra.energy, infra.connect | suna | وزارة الطاقة: إعادة بناء الشبكة القومية بعد الاستهداف الممنهج (national grid reconstruction after "systematic targeting" of power facilities)` — the war's physical-destruction dimension and the upstream cause of the connectivity collapse (electricity for telecom, N4). One representative energy item; other sub-national power/health/roads items dropped as off-topic.

## Most significant finds vs held material

1. **SUDAPASS is LIVE (21 May 2026)** — the wiki's largest SDN update: SUDAPASS moves from "imminent/preparing" to launched, via the Cyber Security Authority + National e-Certification Authority + Civil Registry (matches the Nov-2025 authority build-out already held).
2. **Horizon Fiber (Djibouti–Ethiopia–Sudan)** — a new cross-border fibre-sovereignty story; Sudatel says it laid ~2,700 km of new fibre *during* the war. Two independent outlets (SUNA + Telecom Review Africa).
3. **Wartime DFS survival rails proliferating** — Zain 'Bede' wallet, USSD banking (offline), Isali government e-collection, plus a Bankak-fraud conviction — corroborating and extending the wiki's "payments concentrated on Bankak / single-provider vulnerability" thesis with fresh, dated, multi-provider evidence.
4. **The war's digital dimension** appears mainly as: (a) infrastructure destruction (grid/telecom, systematic targeting) and reconstruction from Port Sudan, and (b) resilience/inclusion workarounds (USSD, cloud, cross-border fibre). Within the 2025–26 window and the designated sources, the acute **blackout/Starlink** story has **receded** — most such coverage is 2024 and on non-designated outlets (Reuters, Dabanga, ITWeb); noted, not staged.

## Coverage leads NOT staged (out of source scope — for the human)

Significant in-window SDN digital developments surfaced on **non-designated outlets** (logged `off-source-scope`): **NIPS instant-payment tender (CBoS) + national payment switch / EBS**; **CBoS revokes Al-Asjad license (UAE-ties controversy)**; **Baladna "28 digital services" launch**; **Khartoum data-centre reopening**. If the curator wants these, they need primary/designated sourcing at promotion.

## Nothing else touched
Wrote only `new-queue/SDN/` (17 candidates + this MANIFEST) and `sweep/drop-log-SDN.csv`. Did **not** touch `ledger.csv`, `README.md`, `held-urls.txt`, `query-recipes.md`, `my-notes/`, `new/`, `raw/`, or `wiki/`.
