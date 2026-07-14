---
type: concept
title: Data Storage
slug: infra.store
places: [XGL, XAF, ZAF, NGA, KEN, GAB, EGY, SEN, GHA, NAM, MWI, AGO, TGO, MAR, ETH, TZA, DJI, MOZ, BWA, MLI, NER, BFA, GNQ, XSS]
entities: [[david-eaves], [cassava-technologies], [mtn-group], [airtel-africa], [st-digital-gabon], [us-dfc], [cbn], [huawei], [oracle], [google], [microsoft], [equinix], [g42], [microsoft-g42-kenya-datacenter], [trendai], [anthropic], [popia], [kasi-cloud], [nsia], [microsoft-sa-2026-expansion], [ncc], [axiz], [lome-data-centre], [sin-togo], [afcfta], [wamkele-mene], [amazon-web-services], [fccpc], [equinix-sa-438m-expansion], [wingu-africa], [uneca], [africa-data-centres], [liquid-c2], [galaxy-backbone], [alliance-of-sahel-states], [bf-ministry-digital-transition], [world-bank], [ixafrica-data-centres], [servernah-cloud], [mtn-ghana], [backbone-connectivity-network-nigeria], [nigeria-eqguinea-subsea-cable], [national-sovereign-cloud], [cassava-ai-factories], [google-cassava-90m-round], [liquid-c2-google-cloud-mou], [finnfund], [ixafrica-oracle-oci-nairobi]]
lens: [sovereignty, colonialism]
status: active
last_reviewed: 2026-07-12
sources: [[2025-12-15 The Path to a Sovereign Tech Stack is Via a Commodified Tech Stack  TechPolicy.Press], [2026-06-23 Africa's Data Centre Boom Where The New Facilities Are Being Built], [2026-07-06 Gabon Inaugurates First Tier III Datacenter to Boost Digital Sovereignty], [2025-01-01 Eaves commodification], [2026-07-07 CBN's local data order puts Nigeria's data centres to test], [2026-07-08 China funds Namibia digital infrastructure], [2026-07-07 Kenya's State Department of ICT and Digital Economy discusses digital partnership with Oracle], [2026-07-07 Malawi integrates immigration e-services], [2026-02-25 South Africa puts data centres on par with energy, ports in big policy shift], [2026-07-03 Google Cloud Region forecasts R1.7tn boost for SA], [2026-06-04 Equinix faces challenge to Cape Town data centres over environmental concerns], [2026-07-09 Microsoft and G42 data center in Kenya stalled due to lack of power capacity], [2026-06-15 Namibia encouraged by Angola on datacentre establishment], [2026-06-08 The Promise and Limits of African Data Sovereignty], [2026-06-29 How AI Keeps Europe Hooked on US Cloud], [2026-07-09 Anthropic's Claude to bolster data sovereignty in SA], [2026-05-21 Africa Data Center Investment 2026 The $4.5B Race and the Power Problem], [2026-04-08 Africa's digital trade push requires 700 data centres, says AfCFTA chief], [2026-02-26 Lagos Is Getting a $250 Million Hyperscale Data Center. Here's Why Nigeria Still Can't Power the Cloud], [2026-05-22 Why global hyperscalers are avoiding Nigeria despite Africa's biggest market], [2026-04-17 Microsoft picks South Africa for $329 million expansion in cloud infrastructure and AI training], [2026-04-15 Microsoft secures land for future South Africa data centre growth], [2026-04-28 Axiz Welcomes Equinix Investment, Citing Boost to Africa's Digital Infrastructure], [2026-06-02 SIN, ST Digital to deploy cloud services at Lomé data center], [2026-05-21 Pushing back from Big Tech Africa's hard road to AI sovereignty], [2026-07-10 Nigeria tests data sovereignty as foreign tech firms facing probe], [2026-07-11 AWS in Africa], [2026-04-01 US data centre firm Equinix is investing $438 million in South Africa], [2026-04-01 US tech giant from Silicon Valley buys R890 million worth of land in South Africa], [2026-03-28 MTN makes big bet on AI data centres in South Africa], [2026-04-14 Africa's data centres rethink power as grids falter], [2026-04-01 Wingu Africa debuts cloud exchange platform in Ethiopia], [2026-04-13 Stakeholders urge shift in digital public infrastructure trajectory], [2026-04-07 NITDA Assumes Control Of NGEA Infrastructure], [2026-02-02 Mali unveils modern Tier III data centre], [2026-03-23 Burkina Faso steps into the future with digital investment], [2026-01-22 Burkina Faso aims for digital sovereignty with infrastructure supervision center], [2026-03-12 iXAfrica hosts Kenya's first sovereign-hosted AI cloud], [2026-02-23 MTN Ghana secures $1.1bn boost as AI push deepens], [2026-02-24 Nigeria, Equatorial Guinea subsea cable strengthens connectivity], [2026-03-06 Cassava launches sovereign cloud for Africa's public sector], [2026-03-18 Cassava Technologies Launches AI Factory in South Africa, Plans Expansion Across Africa], [2024-12-17 Google joins $90M investment into Cassava to bolster Africa's digital infrastructure], [2026-02-05 Can Africa's Power Grid Withstand the Next Wave of Emerging Technologies], [2026-03-02 Synthesis, Google Cloud smash data silos holding back African enterprises], [2026-01-28 iXAfrica, Oracle to launch Kenya's first public cloud region], [2026-07-10 CBN's Data Localisation Directive Puts Nigerian Fintechs In A Cloud Dilemma]]
# Source-linkage: the TrendAI/Anthropic "locally-governed data centre + data lake" is a
# data-residency-driven storage case (POPIA §72). Prose enrichment pending.
---

# Data Storage (`infra.store`)

Cloud storage and data hosting — where lock-in begins and standardisation could break
it; in the African frame, the data-centre build-out that decides whether data can be
hosted on the continent at all.

## Key material

- **Africa's data-centre boom (2026-06, TechTrends).** Africa holds **<2%** of global
  colocation supply for ~18% of world population; **>half** sits in **[[ZAF]]**
  (Johannesburg 31 facilities, Nairobi 15, Lagos 13). The build wave: Teraco JB7 (40 MW,
  AI liquid-cooling), [[cassava-technologies]] ADC Cape Town (DFC-backed), [[mtn-group]]
  and [[airtel-africa]] in Lagos, IXAfrica/Servernah in Nairobi, PAIX in Dakar, plus
  Egypt/Ghana. Drivers: ~20%/yr cloud adoption, subsea cables (2Africa, Equiano),
  **data-localization** rules, AI power/cooling demand. Market ~$1.26bn (2024) →
  ~$3.06bn (2030). The gap: the ADCA estimates Africa needs ~**1,000 MW / 700
  facilities** to match SA's per-capita capacity elsewhere. Source:
  [[2026-06-23 Africa's Data Centre Boom Where The New Facilities Are Being Built]]. See
  [[infra.energy]], [[finance.new]], [[geopol.usa]], [[geopol.china]].
- **[[cassava-technologies]]'s sovereign-cloud + AI-Factory play (2026-03).** At MWC Barcelona
  Cassava launched a **[[national-sovereign-cloud]]** for African governments — cloud,
  cybersecurity, AI compute and local-language models "under local legal and operational
  jurisdiction," against **US CLOUD Act** exposure (~33–45% of world data is
  US-hosted). It pairs with **[[cassava-ai-factories]]** — Cassava as "the continent's
  first NVIDIA Cloud Partner," deploying an **AI Factory** in [[ZAF]], scaling to [[NGA]],
  [[KEN]], [[EGY]], [[MAR]] (GPUaaS/AIaaS, models tuned Swahili→Zulu/Afrikaans) — plus a
  Cloud Partner Programme reselling through MNOs/integrators and an **AI Multi-Model
  Exchange** spanning [[anthropic]] Claude and [[google]] Gemini. Sovereign AI productised
  as a procurement category. See [[tech.ai]], [[gov.protect]], [[geopol.usa]], [[infra.capacity]]. Sources:
  [[2026-03-06 Cassava launches sovereign cloud for Africa's public sector]],
  [[2026-03-18 Cassava Technologies Launches AI Factory in South Africa, Plans Expansion Across Africa]].
- **Google's direct stake in Cassava (2024-12).** [[google]] joined a **$90m** equity round into
  [[cassava-technologies]] ([[google-cassava-90m-round]]; with [[us-dfc]] and [[finnfund]], part
  of a $310m package), a **direct equity stake** in the infrastructure partner behind
  Umoja's terrestrial leg ([[infra.connect]]). Separately, [[liquid-c2]] became Africa's first
  Google Cloud Interconnect provider ([[liquid-c2-google-cloud-mou]]) and runs a Johannesburg
  Gemini-Enterprise centre, while Google partner Synthesis/Digicloud deploys BigQuery/Looker/Gemini
  Enterprise to "break data silos" atop Google's ~$1bn Africa cloud build —
  US hyperscaler capital increasingly *owning* the African storage/cloud layer it hosts. See
  [[finance.new]], [[geopol.usa]], [[tech.ai]]. Sources:
  [[2024-12-17 Google joins $90M investment into Cassava to bolster Africa's digital infrastructure]],
  [[2026-03-02 Synthesis, Google Cloud smash data silos holding back African enterprises]].
- **Data-centre power constraints, quantified (2026-02).** Africa's DC electricity demand is
  growing **~20–25%/yr** (potentially **8,000 GWh** as networks mature) against ~600m Africans
  without electricity and grids (e.g. Nigeria's) delivering only hours a day. [[ralph-mupita]]
  ([[mtn-group]]) says the continent needs "hundreds of billions" in energy investment, and AI
  racks demand far higher power density than legacy space — **power, not capital, is the
  scarce input**. See [[infra.energy]], [[tech.ai]],
  [[include.access]]. Source:
  [[2026-02-05 Can Africa's Power Grid Withstand the Next Wave of Emerging Technologies]].
- **Localization stress-test (2026-07, Nigeria).** The **[[cbn]]** directive to host all
  financial-sector data onshore by **2027-01-01** turns the DC build-out into a hard
  deadline. Nigeria has **~26 facilities** (18 commercial), **50–56 MW live / ~124 MW
  installed** — Africa's #2 market (~15% of continental capacity), heading to 210–300 MW
  by 2030. Operators say physical capacity is *not* the constraint; the gap is **local
  cloud-compute & storage platforms** to replace AWS/Azure/Google, plus power and skills.
  The proposed "smoothest path": pull hyperscalers to deploy **local cloud regions**. See
  [[nigeria--gov-protect]], [[gov.protect]], [[dpi.pay]]. Source:
  [[2026-07-07 CBN's local data order puts Nigeria's data centres to test]].
- **AI-ready national data centre (2026-07, Namibia).** Under the Chinese-financed Smart
  City programme ([[china-namibia-smart-city]]), **[[huawei]]** is building an **AI-ready
  national data centre** with Namibia's government — sovereignty framing on a foreign stack.
  See [[NAM]], [[geopol.china]], [[tech.ai]]. Source:
  [[2026-07-08 China funds Namibia digital infrastructure]].
- **"Sovereign cloud" talks (2026-07, Kenya).** Kenya's ICT department and **[[oracle]]**
  discuss **sovereign cloud infrastructure** for government workloads — the vendor-branded
  sovereignty pitch (cf. Servernah "sovereign AI cloud"). See [[KEN]],
  [[geopol.usa]]. Source:
  [[2026-07-07 Kenya's State Department of ICT and Digital Economy discusses digital partnership with Oracle]].
- **Locally hosted government platform (2026-07, Malawi).** Malawi's **Bomalathu** runs on
  **locally hosted server infrastructure** ([[dmap]]), framed as data-sovereignty and
  reliability support. See [[MWI]], [[dpi.govtech]]. Source:
  [[2026-07-07 Malawi integrates immigration e-services]].
- **Sovereign hosting (2026-07, Gabon).** [[st-digital-gabon]]'s first Tier III datacenter
  frames domestic hosting as reduced "reliance on foreign digital infrastructure" — the
  sovereignty case for local [[infra.store]]. Source:
  [[2026-07-06 Gabon Inaugurates First Tier III Datacenter to Boost Digital Sovereignty]].
- **Hyperscaler build-out & its limits (2026-07 batch).** **South Africa** reframed data
  centres as **"as critical as electricity, ports and transport"** (55 DCs; >R50bn over
  three years); **[[google]]**'s Johannesburg region is projected at **R1.7tn / 315k jobs**
  by 2030. But constraints bite: **[[equinix]]**'s Cape Town plan (160 MW) faces a
  water/power objection, and the **$1bn [[microsoft-g42-kenya-datacenter]]** stalled on
  grid capacity. **Angola** inaugurated a **$89m sovereign national data centre** (Luanda),
  a model Namibia cited. The binding constraint is again **power/capacity**
  ([[infra.capacity]], [[infra.energy]]). Sources:
  [[2026-02-25 South Africa puts data centres on par with energy, ports in big policy shift]],
  [[2026-07-03 Google Cloud Region forecasts R1.7tn boost for SA]],
  [[2026-06-04 Equinix faces challenge to Cape Town data centres over environmental concerns]],
  [[2026-07-09 Microsoft and G42 data center in Kenya stalled due to lack of power capacity]],
  [[2026-06-15 Namibia encouraged by Angola on datacentre establishment]].
- **The $4.5bn build-out race (2026-05).** An updated count puts Africa at
  **223 data centres across 38 countries** (mid-2025) — **<0.02%** of the global ~11,800 —
  with **[[ZAF]] 56, [[KEN]] 19, [[NGA]] 17** holding **41%**. Arizton pegs the DC
  *construction* market at **$4.58bn by 2031** (24% CAGR); McKinsey sees demand tripling-to-
  quintupling to **1.5–2.2 GW by 2030** on **$10–20bn** of fresh capital. Power, not capital,
  is the scarce input — grid unreliability lifts Africa's PUE to
  **1.67** (vs 1.58 global), an "instability tax." See [[infra.energy]], [[infra.capacity]].
  Source: [[2026-05-21 Africa Data Center Investment 2026 The $4.5B Race and the Power Problem]].
- **AfCFTA's 700-DC target (2026-04, Marrakech).** [[wamkele-mene]] told GITEX Africa that
  digital trade under the **[[afcfta]]** needs **>700 data centres** (vs ~220 today, ~**1%** of
  global commercial capacity) and localised compute; installed capacity is projected to triple
  to **~1.2 GW by 2030**. The gap bottlenecks a **$3.6tn** single market
  and a **$721bn** digital economy by 2050. See [[infra.capacity]], [[dpi.exchange]], [[MAR]].
  Source: [[2026-04-08 Africa's digital trade push requires 700 data centres, says AfCFTA chief]].
- **Lagos hyperscale, on diesel (2026-02, Nigeria).** [[kasi-cloud]] (backed by sovereign fund
  [[nsia]]) broke ground on a **$250m** Tier III campus in Lekki. Nigeria has **~86 MW live**
  and **>320 MW** planned (~4x), ~85% of it in Lagos — but every rack runs primarily on diesel
  ([[infra.energy]]); data-residency, latency and the [[cbn]] mandate justify the
  premium. See [[NGA]], [[nigeria--gov-protect]]. Source:
  [[2026-02-26 Lagos Is Getting a $250 Million Hyperscale Data Center. Here's Why Nigeria Still Can't Power the Cloud]].
- **No full cloud region in Nigeria (2026-05).** At an [[ncc]] telecom-policy review, operators
  warned that **no hyperscaler runs a full cloud region** in Nigeria — only access points into
  regions hosted abroad (AWS's sole African region is Cape Town) — while hyperscale
  investment flows to Kenya and South Africa instead. Causes: telecom policy
  unchanged since 2000, high ICT import duties, power, multiple taxation and fibre vandalism.
  See [[NGA]], [[gov.policy]]. Sources:
  [[2026-05-22 Why global hyperscalers are avoiding Nigeria despite Africa's biggest market]],
  [[2026-07-11 AWS in Africa]].
- **Microsoft doubles down on SA (2026-04).** [[microsoft-sa-2026-expansion]]: a **$329m
  (~R5.4bn)** expansion — land for future DC growth, **power/water readiness**, added capacity
  in the Johannesburg/Cape Town regions — atop a prior **$1.2bn (R20.4bn)**. Brad Smith: "You
  can't have AI without data centres." Paired with an AI-skills push (1m South Africans; 50,000
  certification exams; SABC+ collaboration). See [[ZAF]], [[tech.ai]], [[geopol.usa]]. Sources:
  [[2026-04-17 Microsoft picks South Africa for $329 million expansion in cloud infrastructure and AI training]],
  [[2026-04-15 Microsoft secures land for future South Africa data centre growth]].
- **Channel & West-African sovereign hosting (2026-04/06).** [[equinix]]'s SA distributor
  [[axiz]] welcomed Equinix's SA investment as AI-workload, hybrid-cloud and data-sovereignty
  demand rises (Equinix also runs LG1–LG3 in Lagos). In Togo, state-owned [[sin-togo]] —
  operator of the Tier III [[lome-data-centre]] — partnered ST Digital to launch a **sovereign
  private cloud**, hosting local firms' data in-country to cut foreign-infrastructure reliance.
  See [[TGO]], [[gov.regional]]. Sources:
  [[2026-04-28 Axiz Welcomes Equinix Investment, Citing Boost to Africa's Digital Infrastructure]],
  [[2026-06-02 SIN, ST Digital to deploy cloud services at Lomé data center]].
- **The <1% ceiling and AI sovereignty (2026-05).** Africa holds **<1%** of global DC capacity
  for **18%** of world population (WEF); its top five markets have less capacity than
  France in 2024 (McKinsey). Nigeria, Egypt and Kenya have draft AI strategies naming
  US-tech dependence as a security threat (SA's was withdrawn over AI-hallucinated citations);
  governments lean toward **"segmented"** setups — data stored locally, processed abroad — and
  warn of vendor lock-in even where DCs are built. See [[tech.ai]], [[infra.capacity]],
  [[geopol.usa]]. Source: [[2026-05-21 Pushing back from Big Tech Africa's hard road to AI sovereignty]].
- **Sovereignty probe + onshoring deadline (2026-07, Nigeria).** The FG directed the
  **[[fccpc]]** to probe Meta/Alphabet/X and GenAI platforms for anti-competitive practices
  (after a press-industry petition; cf. FCCPC's 2025 **$222m** Meta penalty, under appeal),
  while the [[cbn]] mandate (financial data onshore by **2027-01-01**) bears down on **~26
  facilities / 50–56 MW live (124 MW installed)** — Africa's #2 market, targeting 210–300 MW by
  2030. NIBSS logged **₦1.07 quadrillion (~$702bn)** in e-transactions in 2024. See
  [[gov.protect]], [[dpi.pay]]. Source: [[2026-07-10 Nigeria tests data sovereignty as foreign tech firms facing probe]].
- **The CLOUD Act ceiling (2026-06, sovereignty essay).** [[2026-06-08 The Promise and Limits of African Data Sovereignty]] argues African data hosted by US-parent firms ([[microsoft]],
  [[google]], AWS; Teraco/Equinix-owned facilities) remains reachable under the 2018 US
  CLOUD Act — enforcement stops at the subsidiary–parent boundary. The **[[g42]]**/Kenya
  "trusted data zone" (on Azure) is the case study. Europe faces the same bind
  ([[2026-06-29 How AI Keeps Europe Hooked on US Cloud]]). See [[gov.protect]], [[geopol.usa]].
- **Demand, not just supply, is thin (2026 analyst batch).** Russell Southwood's
  demand-side survey (2026-05-19) argues the specialist AI-training/inference
  market (large MNOs, banks, governments, universities) is too small to fill
  hyperscale GPU capacity — the stalled [[microsoft-g42-kenya-datacenter]] is his
  weak-anchor-tenant exhibit, while Cassava (Cape Town GPUs), IXAfrica (first GPU
  infra, Nov 2025) and MTN's "Genova" unit are early demand signals. Rose
  Mutiso (VoxDev, 2026-02-10) sharpens the scale gap — Africa has ~**166×**
  Switzerland's population but only ~**2×** its data centres, cloud coverage
  concentrated in South Africa — and reframes data centres as **anchor utility
  customers** whose load can justify affordable power at scale. Anjola
  Adebowale (2026-06-12) puts **[[ZAF]] at ~70% of the continent's digital-infra
  capacity** and the **~$720m** Cassava–Nvidia build among the sovereign-compute
  markers, arguing localisation rules ([[cbn]], 1 Jan 2027) must be *sequenced*
  against grid/data-centre milestones, not mandated ahead of them
  ([[2026-07-01 Strategy Ahead of Infrastructure, Part I Inside the CBN's June 2026 Payments Circular]]:
  Nigeria ~26 facilities / ~75 MW). See [[infra.energy]], [[tech.ai]],
  [[infra.capacity]], [[geopol.usa]]. Sources:
  [[2026-05-19 Trying to make sense of who will use Artificial Intelligence in Africa and how – Going beyond the hype]],
  [[2026-02-10 AI in Africa Barriers, opportunities and policy]],
  [[2026-06-12 Beyond the AI Stack Why Governments Need Dynamic Digital Infrastructure]],
  [[2026-06-01 Africa's Place in the AI Sovereignty Debate]].
- **The competition backdrop (Eaves & Bester, "Parting Clouds").** Three hyperscalers
  hold ~66% of global public cloud (85% in Canada); the fuller evidence base for the
  standardisation argument below. See [[tech.industry]], [[2025-01-01 Eaves commodification]].

- **Global (2025, Eaves).** AWS **S3** (2006), the first cloud infrastructure
  service, is after ~20 years the **de facto storage standard** (Cloudflare and
  others built S3-compatible services). Eaves' **bottom-up proposal**: governments
  mandate that any government-funded cloud provider offer S3-interoperable storage,
  certified by a national standards body — not retrospective, just a condition of
  public business. This forces incumbents and domestic champions alike to interoperate,
  minimising any "sovereignty premium," and is the easiest lever to coordinate internationally.
- **Resilience caveat:** sovereign data localisation has failure modes too — South
  Korea may have permanently lost **858TB** of government data in a data-centre fire;
  Estonia/Ukraine deliberately store data abroad. "Increasing control at resilience's
  cost is a bad tradeoff."

- **[[ZAF]] Equinix's $438m self-funded expansion (2026-04).** [[equinix]] committed **$438m
  (R7.5bn)** to expand in Johannesburg and Cape Town ([[equinix-sa-438m-expansion]]) —
  buying **R890m** of land (**327,000 m²** secured) to add **~160 MW**, all balance-sheet
  funded. Africa has just **~409 MW** operational (**<1%** of global), SA holding
  ~three-quarters; the SA market is projected **$2.6bn (2025) → >$5bn (2031)**. The added
  160 MW nearly doubles the 172 MW under construction continent-wide. See [[finance.new]],
  [[tech.ai]], [[infra.energy]], [[geopol.usa]]. Sources:
  [[2026-04-01 US data centre firm Equinix is investing $438 million in South Africa]],
  [[2026-04-01 US tech giant from Silicon Valley buys R890 million worth of land in South Africa]].
- **[[ZAF]]/[[NGA]] MTN enters the AI data-centre race (2026-03).** [[mtn-group]] (CEO
  Ralph Mupita) is building an **AI-enabled data-centre** network, naming **SA and Nigeria**
  priority markets and shortlisting co-investment partners; its Lagos **Sifiso Dabengwa**
  facility (largest in West Africa) runs at **4.5 MW**, phase 2 to **14–20 MW**. Analysts flag
  the **water and electricity** strain AI cooling adds to SA's stressed municipalities. See
  [[tech.ai]], [[infra.energy]], [[infra.capacity]]. Source:
  [[2026-03-28 MTN makes big bet on AI data centres in South Africa]].
- **Grid-first "is a liability" (2026-04).** A GITEX Africa panel reframed the build-out
  around power: Schneider Electric's Hady Stephan said a **grid-first approach "cannot be
  Africa's strategy… it is a liability."** Operators ([[liquid-c2]], Teraco,
  [[africa-data-centres]]) now design **hybrid grid + solar + battery + diesel** as default,
  and some explore **co-locating compute at generation** — Backbone Connectivity is piloting
  data processing at a **hydropower** site with Mainstream Energy ("leapfrog energy"). Again,
  power, not capital, is the scarce input. See [[infra.energy]], [[tech.ai]]. Source:
  [[2026-04-14 Africa's data centres rethink power as grids falter]].
- **[[ETH]] Local-currency sovereign cloud (2026-04).** **[[wingu-africa]]** launched the
  **Wingu Cloud Exchange (WCX)** in Ethiopia — a private cloud for **in-country data
  residency**, priced in local currency and hybridised with Azure/AWS ([[amazon-web-services]],
  [[microsoft]]) — after a **$60m** East-African raise (also Tanzania Nov-2025, Djibouti). The
  data-residency-driven storage case. See [[TZA]], [[DJI]], [[gov.protect]], [[dpi.exchange]].
  Source: [[2026-04-01 Wingu Africa debuts cloud exchange platform in Ethiopia]].
- **The 10x-capacity call (2026-04, UNECA).** At the 58th ECA Conference of Ministers,
  **[[africa-data-centres]]**' Adil el Youssefi said Africa must **increase data-centre
  capacity tenfold** to build "AI factories" hosting and processing African data locally —
  the continent generates **<1%** of global data despite ~**20%** of world population.
  Ministers (Mozambique, Botswana, Tanzania, Kenya) pushed data classification, sovereign
  clouds, "data embassies" and governments as **anchor clients**; the **[[uneca]]** ES
  tied it to funding national statistics to measure impact. See [[MOZ]], [[BWA]],
  [[data.statistics]], [[dpi.exchange]], [[gov.regional]]. Source:
  [[2026-04-13 Stakeholders urge shift in digital public infrastructure trajectory]].
- **[[NGA]] Government cloud on a national backbone (2026-04).** Nigeria's **NGEA**
  government enterprise architecture — now run by NITDA (built with Korea's KOICA) — is
  **hosted by [[galaxy-backbone]]**, the state carrier, as the "secure, resilient"
  environment for MDA interoperability under e-Government Masterplan 2.0 — state-owned
  hosting as govtech substrate. See [[dpi.govtech]], [[dpi.exchange]], [[gov.standards]].
  Source: [[2026-04-07 NITDA Assumes Control Of NGEA Infrastructure]].

- **[[MLI]]/[[NER]]/[[BFA]] Sahel sovereign data centre (2026-02).** Mali inaugurated a **Tier III
  National Data Centre** at its 3rd Digital Week with fellow **[[alliance-of-sahel-states]]** (AES)
  digital ministers, to host state strategic data and **"mutualised" AES infrastructure** — framed
  as ending dependence on foreign and **extraterritorial cloud**. Digital sovereignty is
  cast as a pillar of the junta bloc's wider security/economic independence. See [[gov.regional]],
  [[infra.cybersec]], [[dpi.govtech]]. Source: [[2026-02-02 Mali unveils modern Tier III data centre]].
- **[[BFA]] "Zero data abroad" and a supervision centre (2026-01/03).** Under **PACTDIGITAL-BF**
  (~**$170m** [[world-bank]] IDA + national, 12 flagship projects to 2030), Burkina Faso commissioned
  **two mini data centres** in Ouagadougou (Jan 2026) as an interim step to a planned national data
  centre, enforcing a **"zero data abroad"** localization rule ([[bf-ministry-digital-transition]]). It
  is also building a **Digital Infrastructure Supervision Center** (~**$5.4m**, nine-month build,
  delivery ~Oct 2026) to oversee the backbone, data centres and cyberspace. See [[infra.cybersec]],
  [[gov.policy]], [[alliance-of-sahel-states]]. Sources:
  [[2026-03-23 Burkina Faso steps into the future with digital investment]],
  [[2026-01-22 Burkina Faso aims for digital sovereignty with infrastructure supervision center]].
- **[[KEN]] Sovereign-hosted AI cloud (2026-03).** **[[servernah-cloud]]**, billed as Kenya's first
  **sovereign-hosted cloud and AI platform**, launched at the **[[ixafrica-data-centres]]** Nairobi
  campus (with Atlancis and Everse), running AI workloads **within African borders** for regulated
  government/enterprise use. It reframes sovereignty beyond storage as **retaining talent,
  revenue and skills** — every VM bought abroad "a job removed from the local economy." See
  [[tech.ai]], [[infra.capacity]]. Source:
  [[2026-03-12 iXAfrica hosts Kenya's first sovereign-hosted AI cloud]].
- **[[KEN]] Kenya's first public cloud region (2026-01-28).** **[[ixafrica-data-centres]]** will
  host the **Oracle Cloud Infrastructure (OCI) region in Nairobi** — Kenya's first public cloud
  region ([[ixafrica-oracle-oci-nairobi]]), announced by President Ruto in 2024 — moving
  the "sovereign cloud" pitch from talks ([[oracle]] discussions above) to a concrete deployment
  on the region's largest AI-ready carrier-neutral campus. See [[tech.ai]], [[geopol.usa]].
  Source: [[2026-01-28 iXAfrica, Oracle to launch Kenya's first public cloud region]].
- **[[NGA]] CBN localisation, the fintech dilemma (2026-07).** A second-outlet analysis of the
  [[cbn]] payment-data-localisation directive (data onshore by **2027-01-01**) argues it
  conflates data domestication with protection, sits in tension with the cross-border-transfer
  safeguards of [[nigeria-data-protection-act-2023]], and urges encryption/key-control and
  hybrid hosting over pure geography — hyperscalers still concentrate full-scale African DCs in
  SA. See [[nigeria--infra-store]], [[gov.protect]], [[dpi.pay]]. Source:
  [[2026-07-10 CBN's Data Localisation Directive Puts Nigerian Fintechs In A Cloud Dilemma]].
- **[[GHA]] MTN's hyperscale bet (2026-02).** [[mtn-ghana]]'s **$1.1bn** three-year programme names
  **hyperscale data centres** (alongside 4G/5G and AI/cloud) to position Ghana as a West-African
  digital hub, leaning on subsea-cable capacity. See [[infra.connect]], [[tech.ai]]. Source:
  [[2026-02-23 MTN Ghana secures $1.1bn boost as AI push deepens]].
- **[[NGA]]/[[GNQ]] Data centre in the subsea deal (2026-02).** The Nigeria–Equatorial Guinea subsea
  agreement ([[backbone-connectivity-network-nigeria]], [[nigeria-eqguinea-subsea-cable]]) bundles a
  **commercial data centre**, so local hosting rides in on the cross-border cable — localised storage
  to cut the European routing detour. See [[infra.connect]], [[gov.regional]]. Source:
  [[2026-02-24 Nigeria, Equatorial Guinea subsea cable strengthens connectivity]].

## Places

[[XGL]] · [[XAF]] · [[ZAF]] · [[NGA]] · [[KEN]] · [[GAB]] · [[EGY]] · [[SEN]] · [[GHA]] · [[NAM]] · [[MWI]] · [[AGO]] · [[TGO]] · [[MAR]] · [[ETH]] · [[TZA]] · [[DJI]] · [[MOZ]] · [[BWA]] · [[MLI]] · [[NER]] · [[BFA]] · [[GNQ]] · [[XSS]]

## Related

[[gov.standards]] · [[tech.industry]] · [[geopol.usa]] · [[geopol.china]] · [[infra.energy]]

## Sources

- [[2025-12-15 The Path to a Sovereign Tech Stack is Via a Commodified Tech Stack  TechPolicy.Press]]
- [[2026-06-23 Africa's Data Centre Boom Where The New Facilities Are Being Built]]
- [[2026-07-06 Gabon Inaugurates First Tier III Datacenter to Boost Digital Sovereignty]]
- [[2025-01-01 Eaves commodification]]
- [[2026-07-07 CBN's local data order puts Nigeria's data centres to test]]
- [[2026-07-08 China funds Namibia digital infrastructure]]
- [[2026-07-07 Kenya's State Department of ICT and Digital Economy discusses digital partnership with Oracle]]
- [[2026-07-07 Malawi integrates immigration e-services]]
- [[2026-05-21 Africa Data Center Investment 2026 The $4.5B Race and the Power Problem]]
- [[2026-04-08 Africa's digital trade push requires 700 data centres, says AfCFTA chief]]
- [[2026-02-26 Lagos Is Getting a $250 Million Hyperscale Data Center. Here's Why Nigeria Still Can't Power the Cloud]]
- [[2026-05-22 Why global hyperscalers are avoiding Nigeria despite Africa's biggest market]]
- [[2026-04-17 Microsoft picks South Africa for $329 million expansion in cloud infrastructure and AI training]]
- [[2026-04-15 Microsoft secures land for future South Africa data centre growth]]
- [[2026-04-28 Axiz Welcomes Equinix Investment, Citing Boost to Africa's Digital Infrastructure]]
- [[2026-06-02 SIN, ST Digital to deploy cloud services at Lomé data center]]
- [[2026-05-21 Pushing back from Big Tech Africa's hard road to AI sovereignty]]
- [[2026-07-10 Nigeria tests data sovereignty as foreign tech firms facing probe]]
- [[2026-07-11 AWS in Africa]]
- [[2026-04-01 US data centre firm Equinix is investing $438 million in South Africa]]
- [[2026-04-01 US tech giant from Silicon Valley buys R890 million worth of land in South Africa]]
- [[2026-03-28 MTN makes big bet on AI data centres in South Africa]]
- [[2026-04-14 Africa's data centres rethink power as grids falter]]
- [[2026-04-01 Wingu Africa debuts cloud exchange platform in Ethiopia]]
- [[2026-04-13 Stakeholders urge shift in digital public infrastructure trajectory]]
- [[2026-04-07 NITDA Assumes Control Of NGEA Infrastructure]]
- [[2026-02-02 Mali unveils modern Tier III data centre]]
- [[2026-03-23 Burkina Faso steps into the future with digital investment]]
- [[2026-01-22 Burkina Faso aims for digital sovereignty with infrastructure supervision center]]
- [[2026-03-12 iXAfrica hosts Kenya's first sovereign-hosted AI cloud]]
- [[2026-02-23 MTN Ghana secures $1.1bn boost as AI push deepens]]
- [[2026-02-24 Nigeria, Equatorial Guinea subsea cable strengthens connectivity]]
- [[2026-03-06 Cassava launches sovereign cloud for Africa's public sector]]
- [[2026-03-18 Cassava Technologies Launches AI Factory in South Africa, Plans Expansion Across Africa]]
- [[2024-12-17 Google joins $90M investment into Cassava to bolster Africa's digital infrastructure]]
- [[2026-02-05 Can Africa's Power Grid Withstand the Next Wave of Emerging Technologies]]
- [[2026-03-02 Synthesis, Google Cloud smash data silos holding back African enterprises]]
- [[2026-01-28 iXAfrica, Oracle to launch Kenya's first public cloud region]]
- [[2026-07-10 CBN's Data Localisation Directive Puts Nigerian Fintechs In A Cloud Dilemma]]
- [[2026-05-19 Trying to make sense of who will use Artificial Intelligence in Africa and how – Going beyond the hype]]
- [[2026-02-10 AI in Africa Barriers, opportunities and policy]]
- [[2026-06-12 Beyond the AI Stack Why Governments Need Dynamic Digital Infrastructure]]
- [[2026-06-01 Africa's Place in the AI Sovereignty Debate]]
- [[2026-07-01 Strategy Ahead of Infrastructure, Part I Inside the CBN's June 2026 Payments Circular]]
