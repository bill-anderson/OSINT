# AGO — trade-journal sweep manifest

**Batch:** `AGO-2026-07-17` · **Window:** 2025-01-01 → 2026-07-17
**Queries:** 16 (8 journals × J1/J2, country-name only)
**Staged:** 52 · **Dropped:** 59 (4 already-held · 2 same-outlet-recrawl · 8 pr-wire-better-twin · 32 out-of-window · 13 off-topic)
**Drop log:** `sweep/drop-log-AGO-journals.csv`

Format: `published | topics | source | title | why it's new`

## Highest value — the three-way DPI sovereignty contest

- 2025-05-05 | dpi.id, dpi.pay, dpi.govtech, geopol.india, finance.mou, gov.policy | We Are Tech Africa | Angola Adopts India's Digital Model for E-Governance Push | Second outlet on the India $200m DPI credit line (Biometric Update twin already held) — adds the **UN EGDI datapoint: Angola 156th/193, score 0.4149 (2024)**, below both the African (0.4247) and global (0.6382) averages. Quantifies the low base the `angola--dpi-id` intersection asserts.
- 2026-04-29 | infra.store, infra.connect, gov.policy, dpi.govtech, geopol.gulf | TechAfrica News | Angola Launches Government Data Center and Cloud to Boost Digital Economy | **The $89m UAE-origin national cloud finally inaugurated** (late April 2026) and framed by the minister explicitly as "an affirmation of Angola's digital sovereignty". Carries fresh dated figures: >85% broadband population coverage, 17.7m subscribers, ~75% mobile penetration, 22,000km national fibre, 2Africa in service. Closes the loop on the held 2025-11-14 Ecofin "nears completion" item.
- 2025-12-09 | infra.cybersec, gov.policy, gov.legislate, gov.protect, capacity.literacy | TechAfrica News | Angola Unveils National Cybersecurity Strategy to Strengthen Digital Resilience | Draft Presidential Decree creating a National Cybersecurity Council and CERTs — the state-side counterpart to the US Cybastion deal. Note the tension with the newspaper half's reporting of the cybersecurity bill stalling in parliament (Jul 2026).
- 2025-06-25 / 2025-06-30 | infra.cybersec, geopol.usa, finance.new, capacity.training | TechAfrica News / We Are Tech Africa | Cybastion–Angola Telecom $170M investment; $25m first phase | **A fourth pole in the sovereignty contest the wiki reads as three-way (China/India/UAE): a US vendor**, announced at the US–Africa Business Summit in Luanda, funding a *national cybersecurity agency*, Cisco-run training, and a Luanda–Lobito subsea cable — i.e. US capital inside Angola's institution-building, tied to the Lobito Corridor. Dated ITU GCI baseline: Angola Tier 4 (2024).
- 2025-10-06 | geopol.china, tech.ai, capacity.training, capacity.research | Connecting Africa | Huawei to build R&D center in Angola | **China's move in the same window**: R&D centre by 2027 plus 7,000 specialists trained with Angolan universities by 2027, agreed direct with President Lourenço. Complicates the CEIEC-only reading of China's role.

## Digital ID / DPI / e-gov

- 2025-12-16 | dpi.id, dpi.exchange, infra.store, gov.protect | Biometric Update | SITA passenger data system rolls out in Angola | API/PNR gateway at Luanda's Agostinho Neto airport + a **Passenger Information Monitoring and Management Center and dedicated data centre** — a working state data-exchange capability built for border surveillance, ahead of the civil ID system. Sovereignty-relevant: aligns Angola to UNSC/ICAO/EU requirements.
- 2026-03-30 | dpi.govtech, gov.policy, tech.innovate, gov.standards, finance.mou | We Are Tech Africa | Angola Pushes Digital Reform With New Public Finance Innovation Hub | Ministry of Finance i.Lab + qualified digital signatures in SIGD. Notes **a new Angola–Cape Verde digital-governance agreement (early March 2026)** and strengthened ties with Brazil — two partners absent from the wiki's contest map.
- 2026-03-30 | dpi.govtech, gov.standards, tech.innovate | TechAfrica News | Angola Launches i.Lab to Accelerate Digital Transformation of Public Finance | Same event, but carries the quotes the We Are Tech version drops — including **Serpro (Brazil) president Wilton Mota**: "Innovation in the public sector is not just about technology, it is about sovereignty… the State needs to own its own digital destiny". Brazil's Serpro is at the table.
- 2026-05-14 | capacity.research, infra.connect, dpi.mis, gov.policy | TechAfrica News | Angola Unveils AngoREN Network | National research and education network + higher-ed digital transformation roadmap under the World Bank-adjacent TEST project.

## Space / satellite as a sovereignty stack

- 2026-03-17 | data.satellite, geopol.eu, finance.new, gov.policy | We Are Tech Africa | Angola Launches $259 Million Earth Observation Satellite Project | **ANGEO-1 kick-off with Airbus, €225m/$259m** — a European pole. Also records the **Angolan Space Agency announced October 2025**. Explicitly framed as sovereign access to critical data.
- 2025-01-23 | data.satellite, finance.new, geopol.eu | Telecom Review Africa | Angola and France Secure €225 Million for Satellite Projects | The financing side of ANGEO-1 — **Société Générale, €225,257,201, signed at the Angola–France Economic Forum** during Lourenço's state visit. Pairs with the item above.
- 2026-05-14 | data.satellite, geopol.eu | Tech Review Africa | ANGEO-1 Airbus System Key Point milestone validated | Progress marker; first EO ground infrastructure delivery from June 2026. *PR wire — prefer the GGPEN/Airbus primary.*
- 2026-03-17 | data.satellite, geopol.eu | Tech Review Africa | Zolana Joao on ANGEO-1 strategic vision | GGPEN's own sovereignty framing of ANGEO-1. *PR wire; twin of the We Are Tech item, which has the money.*
- 2025-12-23 | infra.connect, include.divides, digital.rural | Telecom Review Africa | Angola Launches Commercial Access to ANGOSAT-2 | ANGOSAT-2 opened from government-only to commercial ISPs via the Funda hub — "reduce dependence on foreign providers".
- 2026-04-10 | infra.connect, include.divides, digital.rural | TechAfrica News | 37 firms enter Conecta Angola Comercial | Quantifies private uptake of the satellite play.
- 2026-05-04 | infra.connect, digital.rural, dpi.govtech | Tech Review Africa | ANGOSAT-2 connectivity to border areas (Luvo Border Post VSAT) | Satellite wired into **border management and tax administration (AGT)** — state-capacity use, not just access. *PR wire.*
- 2026-07-14 | infra.connect, include.access, capacity.literacy | Tech Review Africa | ANGOSAT-2 + TV White Space connects 3,972 students, Ramiros | Newest item in the window; TVWS as a domestic last-mile answer. *PR wire.*
- 2026-06-03 | infra.connect, capacity.training, infra.capacity | Tech Review Africa | 5,600 University of Namibe students on ANGOSAT-2 | Space-skills pipeline with Unitel, Africell, Airbus, ST Engineering. *PR wire.*
- 2026-06-07 | data.satellite, tech.ai, dpi.registry | Tech Review Africa | Secretary of State for Budget visits GGPEN | GGPEN selling **AI + EO geospatial products for land-use mapping and asset registers** into public finance. Thin but it is the registry/satellite crossover. *PR wire.*
- 2026-02-20 | infra.connect, tech.innovate | Tech Review Africa | GGPEN and UNITEL partner to expand connectivity | Precursor to the June ANGOTIC Unitel–GGPN MoU. *PR wire.*

## Regional cooperation — Angola as exporter, not just recipient

- 2026-06-23 | gov.regional, finance.mou, data.satellite | Tech Review Africa | Angola and Mozambique sign space and digital cooperation MoUs | **Boane Earth Station (Maputo) already integrated with ANGOSAT-2 and receiving signal.** Angola exporting space infrastructure to a fellow Lusophone state. *PR wire.*
- 2026-06-13 | gov.regional, finance.mou, data.satellite | Tech Review Africa | Nigeria and Angola sign space cooperation at ANGOTIC 2026 | NASRDA–GGPEN agreement; African Space Agency, SANSA and Portuguese Space Agency present. *PR wire.*
- 2025-10-14 | infra.connect, gov.regional, digital.rural | Connecting Africa | Namibia taps Angosat-2 to boost connectivity | Namibia PoC on Angolan satellite capacity; also records an **INACOM–ARPCE (Congo-Brazzaville) border frequency-coordination agreement**.
- 2026-06-12 | infra.connect, gov.regional, finance.mou | ITWeb Africa | Namibia, Angola ink satellite deal for regional connectivity | Telecom Namibia–GGPEN **pilot commercial agreement** — PoC to real-network trial, plus the concurrent ministerial ICT MoU.
- 2026-06-12 | gov.regional, finance.mou, infra.cybersec | Telecom Review Africa | Namibia and Angola Strengthen Digital Cooperation | The ministerial MoU itself; cybersecurity prominent.
- 2026-06-11 | gov.regional, finance.mou, infra.cybersec | TechAfrica News | Namibia and Angola Join Forces to Accelerate Digital Transformation | Same MoU, ANGOTIC 2026 context.
- 2026-06-16 | infra.store, gov.regional, dpi.govtech | TechAfrica News | Namibia ICT Minister visits Angola's National Data Centre | **Angola's Camama data centre being studied as a model by a neighbour** — the sovereignty play acquiring regional prestige. (ITWeb twin already held; this one names the site and date.)
- 2025-11-03 | gov.regional, finance.mou, infra.connect | Connecting Africa | Angola, Kenya partner to strengthen ICT | Kenya–Angola ICT MoU at the **Luanda Financing Summit** — satellite networks, rural connectivity, cybersecurity, digital literacy.
- 2025-10-31 | gov.regional, finance.mou | ITWeb Africa | Angola, Kenya sign MoU to strengthen ICT | Same MoU; *note the article's opening line mis-states "Kenya and Uganda" — an error in the original, flagged in the file.*
- 2025-11-04 | gov.regional, finance.mou, infra.store, dpi.pay | TechAfrica News | Kenya and Angola Strengthen Digital Ties | Fullest account of the Luanda Summit: AUDA-NEPAD, AfDB, World Bank; data centres, fibre, IXPs; new Nairobi–Luanda direct flights.
- 2026-03-16 | gov.legislate, gov.standards, geopol.eu | Tech Review Africa | ANACOM cooperation mission in Angola | **Portugal's regulator + EU Delegation training INACOM on ICT policy and regulation** — the ex-metropole shaping the regulatory layer. Tagged `colonialism`. *PR wire.*

## Connectivity, cables and the telecom market

- 2026-06-15 | infra.connect, gov.regional, finance.mou | TechAfrica News | Telecom Namibia, Angola Telecom and SATCAB sign SARSSy MSA | **1.0 Tbps initial dedicated capacity on Equiano**; Angola Telecom may assume ownership of its infrastructure components over time. The concrete terms behind the held developingtelecoms item.
- 2026-06-15 | infra.connect, gov.regional | Connecting Africa | Telecom Namibia, Angola Telecom integrate Sarssy with Equiano | Same MSA, independent write-up.
- 2026-04-24 | infra.connect, gov.regional, finance.mou | ITWeb Africa | Angola, Namibia's dynamic connectivity partnership | The April Swakopmund MoU/CTA that SARSSy builds on.
- 2026-06-12 | infra.connect, finance.mou, tech.ai | TechAfrica News | Unitel agreements at ANGOTIC | Unitel–GGPN MoU (AI-driven geospatial) **plus a Unitel–Angola Telecom infrastructure-sharing deal** covering underserved border regions.
- 2026-06-12 | infra.connect, infra.store, geopol.usa | Connecting Africa | Angola Cables, Uniti partnership to benefit African enterprises | Longest treatment; Angola Cables claims **>70% of Africa's internet/data traffic flows**. Carvalho on "distributed, sovereign-compliant infrastructure" and keeping sensitive data in-jurisdiction — a carrier articulating data localisation as product.
- 2026-05-21 | infra.connect, infra.store, geopol.usa | ITWeb Africa | Angola Cables, Uniti expand connectivity | Same deal, terser; 386,000km US fibre, 300+ metro markets.
- 2025-06-23 | infra.connect, infra.store, geopol.eu | ITWeb Africa | Angola Cables inks deal with MEO Wholesale (Portugal) | Atlantic "super corridor" Portugal–Brazil–Africa–US via AngoNAP Fortaleza.
- 2025-03-20 | infra.connect, infra.store, tech.industry | TechAfrica News | Angola Cables and Megaport expand global reach | 930 data centres / 300 cloud nodes via NaaS on-ramps at New York, Miami, London.
- 2025-12-03 | infra.store, tech.innovate | TechAfrica News | Angola Cables unveils Accelera Cloud Program | Free credits + migration onto **Clouds2Africa, billed as the continent's largest cloud**, priced in local currency — a domestic-cloud demand play.
- 2025-03-11 | infra.connect, tech.industry, geopol.eu | Connecting Africa | Ericsson modernizes Unitel's network | Dual-mode 5G core. Dated market shares (end-2024): **Unitel 20.8m, Africell ~5m, Movicel 941,000**; flags the coming privatisation.
- 2025-06-30 | infra.connect, gov.legislate, geopol.eu | TechAfrica News | Eutelsat secures 15-year OneWeb licence in Angola | **First LEO operator licensed in Angola**, Luanda ground station — the LEO layer of the same contest.
- 2025-08-21 | infra.connect, finance.new, include.access | ITWeb Africa | Angola gets $10m from Japan for DTT project | Japan/JICA. Notable: **~70% of the population speaks national languages other than Portuguese**, driving multilingual broadcast requirements.

## Economy, startups, capital

- 2026-07-07 | tech.industry, finance.new, gov.policy | ITWeb Africa | Unitel opens Angola share offering | **The IPO with the numbers**: 15% stake, ~294bn kwanza (~$320m), 7.5m shares at 36,036–40,040 kz, offer 6–24 July, allocation 27 July, trading ~29 July 2026; 21m+ customers. Traces back to the 2022 seizure of Vidatel's stake from Isabel dos Santos.
- 2026-07-08 | tech.industry, finance.new | TechAfrica News | UNITEL launches IPO, opens 15% stake | Same event; adds **IGAPE as offeror under PROPRIV** and Capital Market Commission supervision.
- 2026-03-23 | tech.innovate, gov.legislate, finance.new | ITWeb Africa | Angola passes landmark start-up law | Unanimous passage; $3.5m revenue cap, no floor. **Fewer than 2% of identified Angolan startups have secured venture funding** (Launch Base Africa); $125m AfDB Crescer project.
- 2026-03-20 | tech.innovate, gov.legislate | TechAfrica News | Angola approves Startups Bill (general approval) | The earlier reading — dates the legislative sequence.
- 2026-03-30 | finance.new, tech.innovate, dpi.pay | TechCabal | BFA Asset Management's Kimbo Fund | Rare inside view of Angolan capital formation: **$600m AUM, FSDEA anchored Kimbo with $5m (2024)**, $1.2m into mobility startup Anda after a **three-year** diligence; BFA parent's $239m IPO was Angola's largest ever, 5× oversubscribed.
- 2026-06-29 | tech.innovate, capacity.research, finance.new | ITWeb Africa | Angola launches Luanda technology park | AfDB $100m STDP: 54 school labs, 1,500+ staff trained, 73 research projects, 161 international scholarships, 1,204 girls funded into science.
- 2025-03-18 | tech.innovate, finance.mou, capacity.training | We Are Tech Africa | INAPEM–INFOSI MoU on DIGITAL.AO | IFC baseline (Nov 2023): **~125 startups, no exits yet**; IFC recommended exactly the startup law passed in 2026.
- 2025-02-03 | tech.ai, tech.industry, capacity.training, geopol.usa | We Are Tech Africa | SLB opens Africa Performance Center in Luanda | AI/analytics hub anchored in oil and gas — where Angola's actual AI capacity is landing.

## Flags for the human

- **PR-wire items (11 staged from `techreviewafrica.com`)** each carry a header note naming the primary (GGPEN / MINTTICS / Airbus / NASRDA / ANACOM) that should be sourced at ingest if the detail is load-bearing. Contrary to the sweep note, the site *does* serve in-body `Date:` and bylines — every one was dated from content, none proxy.
- **8 further Tech Review Africa items dropped as `pr-wire-better-twin`** where a better outlet's account of the same event was staged or already held. This is a non-standard drop reason; if the curator prefers strict conservatism, they are all recoverable from the drop log.
- **`connectingafrica.com` Raxio funding item (2026-07-13)** dropped as off-topic (Angola only in a country list) — borderline, since Raxio Angola is the country's only Tier III commercial DC and hosts the national IXP. The Raxio Angola opening press release is already held.
- **techafricanews Raxio Angola piece dropped as already-held**: it is a verbatim syndication of the `raxiogroup.com` press release the wiki already holds (canonical preferred).
- **No recency-swamping** on any of the 16 queries — Angola is low-volume enough on all 8 domains that unsliced J1/J2 surfaced the full window. No month-slicing needed.
- **`techcabal.com` is near-empty for Angola**: one in-window Angola item (BFA) across both recipes. Its other Angola hits are all 2022–24.
- **Possible contradiction with the newspaper half**: this manifest's 2025-12-09 National Cybersecurity Strategy (draft Presidential Decree, National Cybersecurity Council) sits against the Portuguese-language items staged by the other agent showing the cybersecurity *bill* suspended/adjourned in parliament in July 2026. Decree track vs. legislative track — worth reconciling at ingest rather than assuming one supersedes the other.
- **Second contradiction candidate**: the wiki reads Angola's ID as a three-way China/India/UAE contest. This batch adds a **US pole (Cybastion, $170m, building the national cybersecurity agency)**, a **European pole (Airbus/Société Générale, €225m ANGEO-1; ANACOM/EU shaping regulation)**, and a **Brazilian pole (Serpro inside the Ministry of Finance's i.Lab)**. The three-way framing may now understate the field.
