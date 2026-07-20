---
type: intersection
title: South Africa × Connectivity
place: ZAF
topic: infra.connect
places: [ZAF]
topics: [infra.connect, include.divides, include.access, data.satellite]
entities: [[sadis-2025], [dbsa], [starlink], [spacex], [icasa], [solly-malatsi], [amazon-leo], [herotel], [maziv], [space42], [google], [dcdt-south-africa], [vodacom], [sita], [mtn-group], [mtn-sa-2026-investment]]
lens: [sovereignty]
status: active
last_reviewed: 2026-07-19
sources: [[2026-03-31 SA finally has a broadband map - and it reveals where the gaps are], [2025-01-01 South Africa's Digital Infrastructure Investment Study 2025], [2026-01-01 Starlink Partners with Airtel & Vodacom From Rival to Ally], [2026-04-28 State broadband merger limps into a second decade], [2026-04-01 MTN to invest $1.3B in South Africa by 2028], [2025-12-12-malatsi-directive-bypass-icasa-bee-starlink], [2025-12-12-sa-eases-ownership-rules-starlink], [2026-04-14-starlink-blocked-icasa-empowerment-pathway], [2026-04-24-icasa-political-crossfire-starlink], [2026-05-14-starlink-legal-deadend-icasa-rejects-bee], [2026-06-30-icasa-satellite-licensing-rules-starlink-hold], [2026-07-06-malatsi-starlink-lobbying-allegations], [2026-07-15-herotel-amazon-leo-distributor], [2026-07-15-ramaphosa-malatsi-meet-amazon], [2026-07-16-why-amazon-partnered-where-starlink-pushed-back], [2026-07-17-starlink-launches-27th-african-country-ivory-coast]]
---

# South Africa × Connectivity

South Africa published its first **granular national broadband map** (2026-03) — the evidence base
for where connectivity actually reaches, built for the **[[sadis-2025]]** investment study
commissioned by the **[[dbsa]]** and National Planning Commission.

## What the map shows

- The country is divided into **~1.5m hexagonal cells** (~0.76 km² each); each of **213
  municipalities** gets a composite broadband-access score.
- **4G reached 98% of the population (2026-03)** (vs 80% in Brazil), yet **~400,000 households lack
  4G+**; **74%** of households are within 10 km of a fibre node but **12.2%** sit **beyond
  20 km**; **6,700+** of ~15,000 public schools and **1,000+ clinics** are **10–25 km** from
  fibre. Unconnected municipalities cluster in Mpumalanga, Northern Cape and KwaZulu-Natal.
- The study models the investment needed for universal + meaningful access (ITU **UMC**
  framework, shared with the [[itu-global-connectivity-report-2025]]).

## The data-ownership catch

The underlying dataset is **DBSA-owned and not yet public**; the study criticises
government/Icasa for withholding infrastructure data — a `data.open` tension inside a
connectivity story. See [[include.divides]], [[data.open]].

## The satellite layer, still on hold

While the [[starlink-vodacom-leo-partnership]] ([[vodacom]] LEO backhaul + resale) and the
[[starlink-airtel-d2c-partnership]] extend LEO across the continent, [[starlink]]'s own **SA
commercial rollout remains delayed on B-BBEE compliance** despite a **ZAR 2.5bn (~$145.6m)**
pledge toward the 30%-historically-disadvantaged-ownership requirement — so satellite has not
yet closed the ~400,000-household 4G gap the broadband map exposes. See [[data.satellite]],
[[sovereignty]]. Source: [[2026-01-01 Starlink Partners with Airtel & Vodacom From Rival to Ally]].

## The Starlink deadlock, and the Amazon workaround (2025–26)

The central connectivity drama of 2026 is a **sovereignty stand-off**: **[[starlink|Starlink]]** wants in but
won't meet SA's **30% historically-disadvantaged-ownership** rule (SpaceX wrote **[[icasa|ICASA]]** calling it
a barrier), and the state's attempt to bend the rule collapsed — while **Amazon** entered by *complying with
the ecosystem instead of the company*.

- **The workaround that failed (Dec 2025 → May 2026).** Minister **[[solly-malatsi]]** issued a **policy
  direction** letting foreign operators substitute **equity-equivalence programmes** for direct Black
  ownership — Reuters read it as **"easing ownership rules to open the door for Starlink."** But it **could
  not override the Electronic Communications Act without amendment**: ICASA **rejected** the B-BBEE policy
  direction (May 2026), Starlink stayed **blocked despite the "empowerment pathway,"** and ICASA was caught in
  political crossfire. Sources: [[2025-12-12-malatsi-directive-bypass-icasa-bee-starlink]],
  [[2025-12-12-sa-eases-ownership-rules-starlink]], [[2026-04-14-starlink-blocked-icasa-empowerment-pathway]],
  [[2026-04-24-icasa-political-crossfire-starlink]], [[2026-05-14-starlink-legal-deadend-icasa-rejects-bee]].
- **Satellite licensing clarified, Starlink still on hold (Jun–Jul 2026).** ICASA spelled out satellite
  licensing rules; Starlink remained un-launched — and by July had gone live in its **27th African country
  before South Africa**. Malatsi also had to publicly rebut **lobbying allegations** over his handling of the
  file. Sources: [[2026-06-30-icasa-satellite-licensing-rules-starlink-hold]], [[2026-07-17-starlink-launches-27th-african-country-ivory-coast]],
  [[2026-07-06-malatsi-starlink-lobbying-allegations]].
- **Amazon found the formula (Jul 2026).** **[[amazon-leo]]** (ex-Project Kuiper) will launch in SA in **2027
  via [[herotel]]** (350k+ customers, 550+ towns; new "evry" service) — Amazon supplies the satellites, the
  **licensed local partner** does sales/support, so **no foreign licence or ownership fight is needed**.
  Ramaphosa and Malatsi met Amazon; the launch (with [[maziv]]'s Jacques de Villiers present) was welcomed by
  government. Analyst Arthur Goldstuck: Amazon **"showed the way foreign operators should operate"** —
  entering *through* the ecosystem, not over it, and pointedly the same partner-model **Starlink already uses
  elsewhere but has refused in SA**. Sources: [[2026-07-15-herotel-amazon-leo-distributor]],
  [[2026-07-15-ramaphosa-malatsi-meet-amazon]], [[2026-07-16-why-amazon-partnered-where-starlink-pushed-back]].

The contrast is the finding: **the same transformation rule that Starlink treats as a wall, Amazon treats as
a doorway.** SA's connectivity future is being decided less by orbit than by who will accept the local terms —
and Musk's refusal has handed the market to a competitor and to a state-backed satellite alternative (below).

## Sovereign satellite, Google's fibre, and the "buy a licence" route

- **The section-13 doorway.** ICASA's 29-June gazette made the legal logic explicit: a LEO operator needs
  I-ECS + I-ECNS licences + spectrum, but ICASA **cannot issue a network licence** absent a ministerial policy
  direction (the DCDT instead ordered an **inquiry** into whether new licences are needed, Aug 2025, still
  running) — so the only lawful route is **acquiring an existing licensee under s.13 of the ECA**. That is
  precisely the Amazon/Herotel move; it applies equally to Starlink, Eutelsat OneWeb and Amazon Leo. Source:
  [[2026-06-30-broadband-decided-in-orbit]].
- **A state-backed satellite (Jul 2026).** Deputy President Mashatile launched **BrainSAT Satellite Services**
  — an SA company using **[[space42|Space42]]** (UAE) infrastructure (YahClick Ka-band broadband, **[[thuraya-4]]**
  phones) under a national **SATCOM strategy** aimed at a **SA-owned satellite system**. The economic pitch:
  DSTI says SA spends **~R100bn/yr on foreign comms providers** versus a **~R6bn one-time** cost for a
  locally-owned 20-year satellite — sovereignty as import-substitution. See [[geopol.gulf]], [[data.satellite]].
  Source: [[2026-07-01-state-backed-sa-satellite-company]].
- **Google's Eastern Cape anchor (Jul 2026).** **[[google]]** confirmed an **Eastern Cape digital-exchange hub**
  (subsea-cable landing station) as the **southern anchor of a four-hub African network** and the SA landing of
  **Umoja** — the first direct **Africa–Australia** fibre — permits secured; plus a R3m Soweto innovation
  centre. Overland/subsea fibre from a US hyperscaler lowering wholesale connectivity cost. See [[geopol.usa]].
  Source: [[2026-07-01-google-ecape-four-hub-anchor]].

## Spectrum and the stalled flagship

- **Innovation spectrum — a WISP win (May 2026).** ICASA gazetted final "innovation spectrum" rules: the
  **lower 6GHz band licence-exempt** for WISPs/Wi-Fi/private networks (**mobile operators locked out** of it),
  plus discounted **3.8–4.2GHz** for standalone 5G, mediated by a **unified spectrum switch** geo-location
  database. WAPA called it "the most important thing ICASA has ever done" — 500MHz of clean spectrum letting
  WISPs deliver gigabit fixed-wireless in direct competition with fibre (a fresh MNO spectrum auction is also
  gearing up). See [[gov.legislate]]. Sources: [[2026-05-27-operators-locked-out-900mhz-spectrum]],
  [[2026-02-17-icasa-next-spectrum-auction]].
- **SA Connect frozen (2026).** The flagship **SA Connect** broadband programme was **effectively frozen for
  most of FY2025/26** — its in-year allocation collapsing from an expected **R1.1bn to R116m**, money arriving
  only in January 2026, equipment delayed by Middle-East shipping disruption — so the **100%-access phase-2
  target (set 2022) closed the year well out of reach** (though 7,397 public facilities were connected). A
  further **R3bn** was allocated in the Feb-2026 Budget. The demand-side/state-delivery counterpoint to the
  private and satellite momentum above. See [[include.access]]. Sources: [[2026-06-18-flagship-broadband-stalled]],
  [[2026-02-26-r3bn-sa-connect]].

## The stalled state backbone

While private and satellite players move, South Africa's **state** connectivity
institutions are stuck. The **Sentech–Broadband Infraco** merger — meant to form the
**State Digital Infrastructure Company** — has slipped to the **2028/29 FY**, over a decade
after it was first mooted, with Broadband Infraco technically **insolvent** and stripped of
its **[[sita]]**/Eskom contracts. SITA itself has run **>3 years without a permanent CIO**
(a **54% executive vacancy** rate). The state's own backbone stalls while the private and
satellite layers above race ahead — a `gov.policy` tension inside the connectivity story.
See [[gov.policy]]. Source: [[2026-04-28 State broadband merger limps into a second decade]].

## Private network investment

Against the state stall, private operators are committing large sums. At the **6th SA
Investment Conference**, **[[mtn-group]]** pledged **R21.8bn (~$1.3bn)** over three years to
end-2028 ([[mtn-sa-2026-investment]]) for ICT infrastructure and digital skills — the
**third-largest** pledge of the conference (total **R113.5bn**) — atop **R6.8bn** of network
spend in 2025 (MTN has **>40m** SA subscribers). See [[finance.new]], [[infra.capacity]],
[[capacity.training]]. Source: [[2026-04-01 MTN to invest $1.3B in South Africa by 2028]].

## Sources

- [[2026-03-31 SA finally has a broadband map - and it reveals where the gaps are]] · [[2025-01-01 South Africa's Digital Infrastructure Investment Study 2025]]
- [[2026-01-01 Starlink Partners with Airtel & Vodacom From Rival to Ally]]
- [[2026-04-28 State broadband merger limps into a second decade]]
- [[2026-04-01 MTN to invest $1.3B in South Africa by 2028]]
