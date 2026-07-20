---
type: concept
title: Energy
slug: infra.energy
places: [AGO, XAF, CAF, ZAF, NGA, KEN, ETH, MAR, SOM, SDN, CIV, RWA]
entities: [[cassava-technologies], [gocab], [yango], [spiro], [ampersand], [moove], [kasi-cloud], [nsia], [ncc], [microsoft-sa-2026-expansion], [microsoft], [equinix], [equinix-sa-438m-expansion], [mtn-group], [africa-data-centres], [liquid-c2], [gsma], [gsma-mobile-net-zero-2026]]
lens: [sovereignty]
status: active
last_reviewed: 2026-07-20
sources: [[2026-07-17-gsma-mobile-net-zero-renewable-energy], [2026-06-23 Africa's Data Centre Boom Where The New Facilities Are Being Built], [2026-06-04 Equinix faces challenge to Cape Town data centres over environmental concerns], [2026-02-25 South Africa puts data centres on par with energy, ports in big policy shift], [2026-07-09 Microsoft and G42 data center in Kenya stalled due to lack of power capacity], [2026-05-21 Africa Data Center Investment 2026 The $4.5B Race and the Power Problem], [2026-02-26 Lagos Is Getting a $250 Million Hyperscale Data Center. Here's Why Nigeria Still Can't Power the Cloud], [2026-05-22 Why global hyperscalers are avoiding Nigeria despite Africa's biggest market], [2026-04-17 Microsoft picks South Africa for $329 million expansion in cloud infrastructure and AI training], [2026-04-15 Microsoft secures land for future South Africa data centre growth], [2026-04-14 Africa's data centres rethink power as grids falter], [2026-03-28 MTN makes big bet on AI data centres in South Africa], [2026-04-01 US data centre firm Equinix is investing $438 million in South Africa], [2026-04-01 US tech giant from Silicon Valley buys R890 million worth of land in South Africa], [2026-02-10 AI in Africa Barriers, opportunities and policy], [2026-07-01 Strategy Ahead of Infrastructure, Part I Inside the CBN's June 2026 Payments Circular], [2026-06-01 Africa's Place in the AI Sovereignty Debate], [2026-07-18-gocab-yango-abidjan-evs]]
---

# Energy (`infra.energy`)

Power is the binding constraint on Africa's data-centre and AI ambitions — the cost
variable that turns colocation economics from marginal to unviable.

## Key material

- **Mobile networks' own energy transition (GSMA, 2026-07-17).** The **[[gsma]]**'s *Mobile Net Zero
  2026* is the sector-side counterpart to the data-centre story on this page: it tracks operators'
  renewable-energy procurement and emissions trajectory, and treats **network energy as critical
  infrastructure in national resilience planning** — read directly onto the African grid constraints
  catalogued below. *Reference study: cite, don't absorb — no Africa-specific breakdown is held; the
  figures stay on the report page.* See [[infra.connect]], [[gsma-mobile-net-zero-2026]]. Source:
  [[2026-07-17-gsma-mobile-net-zero-renewable-energy]].
- **Grid instability drives captive power (2026-06, TechTrends).** Teraco began a
  **120 MW solar PV plant** in South Africa's Free State (Nov 2024) to power its data
  centres "in direct response to ongoing grid instability." Renewable PPAs are now
  "standard features of new builds." Source: [[2026-06-23 Africa's Data Centre Boom Where The New Facilities Are Being Built]].
- **Diesel penalty (2026-06).** In **Nigeria**, the cost of building/operating diesel backup
  inflates build cost to **~US$15m/MW** against a continental average near **US$10m/MW**
  (both as reported 2026-06-23). Source:
  [[2026-06-23 Africa's Data Centre Boom Where The New Facilities Are Being Built]].
- **Site selection follows power (2026-06).** Ghana's Accra draws interest partly on **high solar
  irradiation**; power redundancy is a named factor everywhere. Grid deficits persist
  for the surrounding communities even where facilities self-provision. Source:
  [[2026-06-23 Africa's Data Centre Boom Where The New Facilities Are Being Built]].
- **The DC power penalty, quantified (2026, [[NGA]] Nigeria).** Nigeria's national grid has
  never carried **>6 GW** for **230m** people — against **48 GW for 63m** in [[ZAF]] South
  Africa — and runs at **~41% availability**, so diesel is the *primary* supply, not backup.
  On-site diesel costs **$0.40–0.50/kWh** (vs $0.05–0.10 grid in SA/Kenya); a **1 MW** hall
  burns **250–300 L/hr**; build cost reaches **~$12/watt** (a later index; cf. the ~$15m/MW
  figure above). Operators average ~4 hrs/day of grid power, and diesel adds ~40% to opex —
  making Lagos hosting structurally uncompetitive with Johannesburg, Nairobi or Cairo. The
  [[kasi-cloud]]/[[nsia]] $250m Lekki campus ([[infra.store]]) will run primarily on diesel.
  Sources: [[2026-02-26 Lagos Is Getting a $250 Million Hyperscale Data Center. Here's Why Nigeria Still Can't Power the Cloud]],
  [[2026-05-21 Africa Data Center Investment 2026 The $4.5B Race and the Power Problem]].
- **Power decides location — and drives flight (2026-05).** A ~**20 MW** Bitcoin-mining
  project that once considered Nigeria moved to **[[ETH]] Ethiopia** for far cheaper power; at
  the [[ncc]] telecom-policy review, unreliable and expensive electricity was named a top
  reason hyperscalers bypass Nigeria for Kenya/South Africa. See [[gov.policy]], [[infra.store]].
  Source: [[2026-05-22 Why global hyperscalers are avoiding Nigeria despite Africa's biggest market]].
- **Power/water readiness as headline spend (allocation detailed 2026-04, [[ZAF]]).** Even in the
  continent's strongest grid market, [[microsoft-sa-2026-expansion]]'s **R5.4bn** explicitly funds **power
  and water readiness** (and land), not just servers — Brad Smith: "You can't have AI without
  data centres." SA's 48 GW is the exception the rest of the build-out cannot assume. Sources:
  [[2026-04-17 Microsoft picks South Africa for $329 million expansion in cloud infrastructure and AI training]],
  [[2026-04-15 Microsoft secures land for future South Africa data centre growth]].

- **"Grid-first cannot be Africa's strategy" (2026-04).** At GITEX Africa, Schneider
  Electric's Hady Stephan called a grid-first data-centre model **"a liability"**: even in
  advanced markets, outages, voltage swings and transmission bottlenecks make continuous
  uptime impossible, so operators ([[liquid-c2]], Teraco, [[africa-data-centres]]) now design
  **hybrid grid + solar PV + battery + diesel** as the default architecture, not backup. AI
  workloads — with far higher, more volatile rack densities — intensify the strain. The
  emerging move is to **site compute next to generation**: Backbone Connectivity is piloting
  data processing co-located at a **hydropower** plant with Mainstream Energy, casting data
  centres as **anchor consumers** that justify new capacity ("leapfrog energy"). See
  [[infra.store]], [[tech.ai]]. Source:
  [[2026-04-14 Africa's data centres rethink power as grids falter]].
- **Power/water as the AI-DC constraint in SA (2026-03/04).** Even South Africa's stronger
  grid is stressed by AI cooling loads: [[mtn-group]]'s AI data-centre push (SA + Nigeria)
  drew warnings over **electricity and water** in municipalities already losing >50% of water
  (e.g. an eThekwini/KZN proposal), and [[equinix]]'s **$438m** SA expansion
  ([[equinix-sa-438m-expansion]]) adds **~160 MW** of demand — nearly doubling the 172 MW
  under construction continent-wide (Africa runs ~409 MW total). Power is the headline line
  item, not servers. See [[infra.store]], [[ZAF]]. Sources:
  [[2026-03-28 MTN makes big bet on AI data centres in South Africa]],
  [[2026-04-01 US data centre firm Equinix is investing $438 million in South Africa]],
  [[2026-04-01 US tech giant from Silicon Valley buys R890 million worth of land in South Africa]].

- **Power as the first precondition (Rose Mutiso, VoxDev, 2026-02-10).** Mutiso
  frames power (with connectivity and data) as one of three fundamentals for AI in
  Africa and argues AI is **not** a classic leapfrog technology precisely because
  it depends on heavy, reliable energy; African electricity prices are among the
  world's highest. Her prescription inverts the usual order: use **data centres as
  anchor utility customers** whose predictable load underwrites building affordable
  power at scale. See [[infra.store]], [[tech.ai]]. Source:
  [[2026-02-10 AI in Africa Barriers, opportunities and policy]].
- **Grid as the binding deadline-risk, and a renewable workaround (2026).** Anjola
  Adebowale's CBN reading corroborates the Nigeria-vs-SA grid gap (~6 GW for 230m
  vs ~48 GW for 63m; diesel ~+40% opex; a 1.5 MW hall ~90,000 L diesel) and warns
  Nigeria's 1 Jan 2027 data-localisation deadline outruns power capacity, citing
  Kenya's Olkaria/G42 suspension (Ruto's "half the country") as the precedent
  ([[2026-07-01 Strategy Ahead of Infrastructure, Part I Inside the CBN's June 2026 Payments Circular]]).
  Adebowale's sovereignty piece flags **Morocco's 500 MW renewables AI project**
  (Jun 2025) as an energy-led, CLOUD-Act-free model
  ([[2026-06-01 Africa's Place in the AI Sovereignty Debate]]). See [[NGA]],
  [[KEN]], [[MAR]], [[infra.store]].
- **[[CAF]] Central African Republic — energy as the binding constraint.** Only ~14.3% electricity
  access (~0.4% rural); the World Bank **PARSE** project (2022, $138m) funds 10 MW of mini-grids, the
  Danzi solar expansion (25→40 MW) and off-grid solar via utility **[[enerca]]** — inadequate power is
  the ITU-flagged brake on CAR's connectivity and its absent data-centre base. Source:
  [[2022-06-03 Central African Republic - Increasing Electricity Supply and Access and Supporting the Health System]].
- **[[AGO]] Angola — the binding constraint on a digital build.** ~47% electrification (2020), **<10%
  rural**; only 47% of Angolans enjoy a reliable supply (just 6% of rural residents). The power gap sits
  under the sovereign-cloud/data-centre ambition. Source:
  [[2023-07-04 AD664 - Lack of grid access plagues most rural residents in Angola]].

- **[[SOM]] Somalia — green data centres off-grid (2024-12).** **[[hormuud-telecom]]** powers its
  **11 data centres** with **solar** — private captive renewables filling the grid gap in a state with
  minimal public power. See [[infra.store]], [[SOM]].

- **Electric mobility: the other energy story, and it is not the grid ([[CIV]], [[RWA]], [[KEN]],
  2026-07-18).** Most of this page is about **energy as a constraint on compute**. Electric mobility is
  the inverse case — **energy cost as the product**. **[[gocab]]** handed **100 electric cars** to
  driver-partners in Abidjan (first half of a 200-vehicle programme), selling the switch on running cost:
  its **own operating benchmarks (2026-07, unverified)** put a full charge at **~8,000 FCFA ($14) for up
  to 470 km** against **20,000–40,000 FCFA ($35–$70)** of fuel for the same distance — a claimed **60–80%
  cut**, or **255,000–681,000 FCFA (~$444–$1,186)** retained per 10,000 km. That saving is what services a
  three-year **drive-to-own** repayment, so **the energy arithmetic is the credit model**.
  Continental context: African EV deployment is overwhelmingly **two- and three-wheeled**, and the real
  asset is the **battery-swap network** — **[[spiro]]** reports **100,000+ e-motorcycles and 2,500 swap
  stations across seven markets**, **[[ampersand]]** **4,000+ in Rwanda and 1,300+ in Kenya with 25 swap
  stations** (both 2026-07). These are **private networks substituting for grid and fuel-retail capacity**,
  the same substitution logic as mobile money for branch banking. Whether **four-wheeler** electric
  ride-hailing clears at all — higher capex, longer payback, premium-fare dependent — is what Abidjan is
  testing. See [[civ--tech-innovate]], [[tech.industry]], [[dpi.pay]]. Source:
  [[2026-07-18-gocab-yango-abidjan-evs]].

## Places

[[XAF]] · [[AGO]] · [[CAF]] · [[ZAF]] · [[NGA]] · [[KEN]] · [[ETH]] · [[MAR]] · [[SOM]] · [[CIV]] ·
[[RWA]]

## Related

[[infra.store]] · [[tech.ai]] · [[finance.new]]

## Sources

- [[2026-07-17-gsma-mobile-net-zero-renewable-energy]]
- [[2026-07-18-gocab-yango-abidjan-evs]]
- [[2026-06-23 Africa's Data Centre Boom Where The New Facilities Are Being Built]]
- [[2026-06-04 Equinix faces challenge to Cape Town data centres over environmental concerns]]
- [[2026-02-25 South Africa puts data centres on par with energy, ports in big policy shift]]
- [[2026-07-09 Microsoft and G42 data center in Kenya stalled due to lack of power capacity]]
- [[2026-05-21 Africa Data Center Investment 2026 The $4.5B Race and the Power Problem]]
- [[2026-02-26 Lagos Is Getting a $250 Million Hyperscale Data Center. Here's Why Nigeria Still Can't Power the Cloud]]
- [[2026-05-22 Why global hyperscalers are avoiding Nigeria despite Africa's biggest market]]
- [[2026-04-17 Microsoft picks South Africa for $329 million expansion in cloud infrastructure and AI training]]
- [[2026-04-15 Microsoft secures land for future South Africa data centre growth]]
- [[2026-04-14 Africa's data centres rethink power as grids falter]]
- [[2026-03-28 MTN makes big bet on AI data centres in South Africa]]
- [[2026-04-01 US data centre firm Equinix is investing $438 million in South Africa]]
- [[2026-04-01 US tech giant from Silicon Valley buys R890 million worth of land in South Africa]]
- [[2026-02-10 AI in Africa Barriers, opportunities and policy]]
- [[2026-07-01 Strategy Ahead of Infrastructure, Part I Inside the CBN's June 2026 Payments Circular]]
- [[2026-06-01 Africa's Place in the AI Sovereignty Debate]]
