---
type: source
title: "Lagos Is Getting a $250 Million Hyperscale Data Center. Here's Why Nigeria Still Can't Power the Cloud"
publisher: TechMoonshot
url: https://techmoonshot.com/2026/02/26/lagos-is-getting-a-250-million-hyperscale-data-center/
author: Fatima Oladunni
published: 2026-02-26
accessed: 2026-07-11
ingested: 2026-07-11
places: [NGA]
topics: [infra.store, infra.energy, gov.protect, infra.connect]
entities: [[kasi-cloud], [nsia], [equinix], [africa-data-centres]]
lens: [sovereignty]
---

<!-- Kasi Cloud (NSIA-backed) broke ground on a $250m hyperscale campus in Lekki. NG capacity ~86MW operational (2025), >320MW planned (~4x); grid never >6GW for 230m; diesel $0.40-0.50/kWh vs $0.05-0.10 grid; ~$12/watt build. -->

The announcement looked impressive. **Kasi Cloud Ltd.**, a next-generation interconnection and data center platform backed by Nigeria’s sovereign wealth fund, broke ground on a **$250 million hyperscale data center campus** in Lekki, Lagos. When fully developed, the facility will be one of the biggest of its kind in Africa — designed to hyperscale requirements and standards, modeled similarly to [Silicon Valley technology parks](https://en.wikipedia.org/wiki/Silicon_Valley), and positioned to serve the booming demand for cloud infrastructure across West Africa.

Lagos is Nigeria’s commercial capital, home to over 20 million people, and the only African city in the **Global Top 100 Startup Ecosystems**. It’s where Google’s **[Equiano](https://cloud.google.com/blog/products/infrastructure/announcing-googles-equiano-subsea-cable)** and Meta’s **[2Africa](https://engineering.fb.com/2020/05/13/connectivity/2africa/)** submarine cables land, bringing multi-terabit capacity that has reduced latency and bandwidth costs dramatically. It’s where Nigeria’s fintech unicorns — [Flutterwave](https://flutterwave.com/), [Moniepoint](https://moniepoint.com/), [Interswitch](https://www.interswitchgroup.com/) — need low-latency access to their data. And it’s where multinational enterprises evaluating in-country hosting are increasingly choosing to deploy infrastructure rather than route everything through [AWS Cape Town](https://aws.amazon.com/local/africa/) or [Azure Johannesburg](https://azure.microsoft.com/en-us/explore/global-infrastructure/geographies/#geographies).

So Kasi Cloud’s $250 million bet makes strategic sense. Except for one towering, unavoidable, existential problem: **Nigeria’s national power grid**.

The country has 230 million people. Its grid has never carried more than **6 gigawatts** of electricity. South Africa, by contrast, generates **48 GW for just 63 million people**. Nigeria’s grid availability rate is **41%** — meaning it’s offline more often than it’s on. Lagos experiences frequent blackouts. And data centers, which require uninterrupted power 24/7 to keep servers running, cannot depend on the grid. At all.

Which means that Kasi Cloud’s $250 million hyperscale campus, like almost every other data center in Nigeria, will run primarily on **diesel generators**. Backup power isn’t backup — it’s primary. The grid, when available, is the backup. And diesel, at current Nigerian fuel prices, costs roughly **$0.40-$0.50 per kilowatt-hour** to generate on-site, compared to grid electricity in markets like South Africa or Kenya that costs $0.05-$0.10 per kWh.

That cost structure makes Nigerian data centers some of the most expensive to operate in the world. And it raises an uncomfortable question: can Nigeria actually compete as a regional cloud hub if every megawatt of compute capacity costs 5-10x more to power than facilities in Johannesburg, Nairobi, or even Cairo?

The industry’s answer, so far, is: maybe. But only if demand keeps growing fast enough to justify the premium.

## The Numbers That Explain the Boom

Nigeria’s data center market is exploding, despite the power challenges. The numbers are striking:

- **Existing capacity:** Approximately **86 MW** of operational data center capacity as of 2025
- **Upcoming capacity:** Over **320 MW** under construction or planned — a **4x expansion**
- **Investment pipeline:** More than **$2 billion** expected to flow into Nigeria’s data center sector by 2027
- **Market value:** Nigeria’s data center market was valued at **$278 million in 2024** and is projected to reach **$671 million by 2030**, growing at a **15.82% CAGR**

**Lagos dominates** that growth, contributing **over 85%** of planned power capacity. The city accounts for **29.72%** of Nigeria’s existing data center revenue, thanks to submarine cable landings, dense business demand, and proximity to Nigeria’s financial and tech sectors.

Major global operators are betting big. **[Equinix](https://www.equinix.com/)**, the world’s largest data center company, entered Nigeria in 2022 by acquiring MainOne’s facilities and announced plans for a new **$22 million LG3 data center** in Lagos, set to open in Q1 2026. That’s the first phase of an **$100 million investment plan** aimed at transforming Africa’s digital landscape over the next two years.

**[Digital Realty](https://www.digitalrealty.com/)** acquired Medallion Data Centres to establish its Nigerian presence. **[Open Access Data Centres (OADC)](https://www.oadc.com/)** announced plans for a **24 MW facility in Lagos**, with the first **12 MW phase** coming online in 2026. **[Nxtra by Airtel](https://nxtradatacenters.com/)**, part of India’s [Bharti Airtel](https://www.airtel.in/) group, broke ground on a **38 MW hyperscale campus in Lagos** in March 2024, due to be operational by early 2026.

And then there’s **Kasi Cloud** — the $250 million project backed by the **Nigeria Sovereign Investment Authority (NSIA)**, positioning itself as the next-generation interconnection platform for hyperscale and enterprise cloud.

The investment is real. The demand is real. But so is the diesel dependency.

<iframe title="“Spiro Just Raised $50M in Debt to Flood Africa With Electric Motorcycles. The Real Question: Can Battery Swaps Actually Scale?” — Techmoonshot" src="https://techmoonshot.com/2026/02/25/spiro-just-raised-50m-in-debt-to-flood-africa-with-electric-motorcycles-the-real-question-can-battery-swaps-actually-scale/embed/#?secret=rsmzVs1huX#?secret=GWaFGRMLRK" width="600" height="336" frameborder="0"></iframe>

## Why Nigeria, Despite Everything

If Nigerian data centers are 5-10x more expensive to operate than competitors, why are global operators investing billions?

The answer comes down to four factors: **data sovereignty, latency, regulation, and market size**.

**First, data sovereignty.** Nigeria’s **Data Protection Act 2023** mandates local processing of sensitive personal data. That means Nigerian banks, telecoms, fintechs, and government agencies legally cannot host certain workloads offshore. They need Nigerian data centers. That’s not optional demand — it’s regulatory mandate.

**Second, latency.** Before Equiano and 2Africa, latency from Lagos to the nearest cloud region (AWS Cape Town or Azure Johannesburg) was **over 80 milliseconds**. With the new cables, Lagos-to-Europe latency has dropped to around **40 ms**, and local hosting brings that down to **under 15 ms**. For fintech transactions, gaming, real-time video, and AI inference, that latency reduction is material. Nigerian enterprises hosting workloads locally report dramatically improved performance.

**Third, regulation and compliance.** Multinational enterprises operating in Nigeria face increasing pressure from regulators to demonstrate that Nigerian customer data is stored and processed in-country. The Central Bank of Nigeria has issued directives requiring financial institutions to maintain local data backups. Insurance, healthcare, and government sectors face similar mandates. Offshore hosting no longer complies.

**Fourth, market size.** Nigeria has **217.5 million mobile subscribers** as of 2025. Median mobile download speeds hit **95.62 Mbps**. **5G coverage grew from 17.2% in early 2023 to 35.7% by mid-2024**. **MTN Nigeria** alone pledged to invest **$3.5 billion over five years** in network infrastructure. Data consumption is exploding. And enterprises generating that data need somewhere to store, process, and analyze it.

The total addressable market is massive. Nigeria’s digital economy is projected to contribute **$88 billion to GDP by 2028**. Cloud adoption is accelerating. And the combination of regulatory push and commercial pull is creating demand that overcomes the cost disadvantage of diesel-dependent infrastructure.

For now.

## The Diesel Problem Nobody Wants to Talk About

Here’s the uncomfortable reality: **Nigerian data centers are not green**. They run on fossil fuels. And the economics only work if diesel remains affordable and carbon pricing doesn’t catch up with the industry.

According to Turner & Townsend’s **Data Center Cost Index for 2024**, construction costs in Nigeria run approximately **$12 per watt** — higher than global averages due to supply chain issues, inflation, and the need to oversize generator capacity to compensate for grid unreliability. Once built, operating costs are dominated by fuel. A **1 MW data center running on diesel consumes roughly 250-300 liters of fuel per hour**. At Nigerian diesel prices of **₦1,400-1,600 per liter** ($0.90-$1.00), that’s **$225-$300 per hour**, or **$5,400-$7,200 per day**, or **$2 million to $2.6 million per year** just for fuel.

Multiply that across 320 MW of planned capacity, and Nigeria’s data center sector will burn through tens of millions of dollars in diesel annually. The emissions are proportional. And the cost structure makes Nigerian facilities **uncompetitive for workloads that can legally be hosted elsewhere**.

Operators know this. Which is why nearly every major data center project in Nigeria includes some form of renewable energy integration — solar panels, battery storage, hybrid systems that reduce diesel dependence. But the grid remains so unreliable that no operator can eliminate diesel entirely. It’s mitigation, not transformation.

**Kasi Cloud’s $250 million campus** will likely follow the same playbook: diesel generators as primary power, supplemented by solar where feasible, with grid connections treated as auxiliary when available. That keeps the lights on. But it also locks in a cost structure that makes Lagos more expensive than Johannesburg, Nairobi, or Cairo — all of which have more reliable grids.

## The Competition: Who Else Is Building

Kasi Cloud is entering a market that’s already crowded with both regional and global operators, all betting that Nigeria’s data sovereignty mandates and latency requirements will sustain premium pricing despite high operating costs.

**Equinix’s LG3**, opening in Q1 2026, is a **$22 million investment** and the first phase of a **$100 million** pan-African expansion plan. Equinix already operates LG1 and LG2 in Lagos (acquired from MainOne) and is adding **Equinix Fabric** interconnection capabilities to the metro, enabling businesses to connect physical and virtual infrastructure to cloud service providers globally.

**Digital Realty**, another global player, entered via the acquisition of Medallion Data Centres and is scaling capacity aggressively. **Open Access Data Centres (OADC)** is building a **24 MW facility** in two phases. **Africa Data Centres (ADC)**, part of Liquid Intelligent Technologies, operates a **20.65 MW Tier III facility** in Eko Atlantic City with **9,800 m² of white space** across 10 data halls.

**Nxtra by Airtel’s 38 MW campus** is the largest single project announced to date, aiming for hyperscale capacity that can serve cloud providers, content delivery networks, and AI workloads. **Rack Centre**, a Nigerian operator, runs **LGS2**, a major colocation facility, and is expanding. **21st Century Technologies**, another local player, operates multiple facilities across Lagos and Abuja.

And then there’s **Kasi Cloud** — the only one backed directly by Nigeria’s sovereign wealth fund, giving it institutional credibility and access to government contracts that pure-play private operators don’t have.

The competition is real. And the question is whether the market can absorb 320 MW of new capacity when existing utilization rates are uneven and pricing remains high due to operational costs.

## What Kasi Cloud Is Actually Building

Kasi Cloud’s $250 million campus in **Lekki**, a rapidly developing part of Lagos, is designed as a technology park — multiple buildings, modular expansion, hyperscale infrastructure standards, and carrier-neutral interconnection. The company is positioning itself as the interconnection hub for West Africa, not just a colocation provider.

That positioning matters. **Interconnection** is what allows enterprises, cloud providers, and content networks to connect directly to each other without routing traffic through public internet exchanges. It’s faster, more secure, and more reliable. And it’s the value proposition that makes premium data centers worth the premium price.

The campus will offer:

- **Hyperscale capacity** for cloud providers like AWS, Google Cloud, and Azure to deploy local infrastructure
- **Enterprise colocation** for Nigerian banks, fintechs, and corporations that need sovereign hosting
- **Interconnection fabric** that connects tenants to each other and to subsea cable landing stations
- **Carrier-neutral access**, meaning tenants can choose their own connectivity providers rather than being locked into a single carrier

The fact that **NSIA** (Nigeria’s $1.6 billion sovereign wealth fund) is backing the project gives it regulatory cover and access to government contracts. That’s a material advantage. Nigerian government agencies and state-owned enterprises face procurement mandates to use local infrastructure where possible. Kasi Cloud, as an NSIA-backed entity, is well-positioned to capture that demand.

But the project is also a bet that multinational cloud providers will see Lagos as a strategic location for regional infrastructure. And that bet only pays off if the cost of operating in Nigeria — driven primarily by diesel dependency — doesn’t make Lagos uncompetitive relative to Johannesburg, Nairobi, or Cairo.

## The Verdict: Bold Bet, Fragile Foundation

Kasi Cloud’s $250 million hyperscale campus is the most ambitious data center project Nigeria has seen. It’s backed by the sovereign wealth fund. It’s designed to Silicon Valley standards. And it’s targeting the explosive growth in Nigerian cloud demand driven by data sovereignty laws, latency requirements, and surging digital adoption.

But it’s also being built in a country where the national grid has never reliably delivered more than 6 GW for 230 million people. Where data centers run on diesel, not electrons. And where operational costs are 5-10x higher than competitors in markets with stable grids.

That doesn’t mean the project will fail. Nigerian demand is real. Regulatory mandates are forcing workloads onshore. And enterprises are willing to pay premium prices for low-latency, compliant infrastructure. The $2 billion investment pipeline flowing into Nigeria’s data center sector by 2027 suggests institutional investors believe the economics work.

But the foundation is fragile. If diesel prices spike, margins collapse. If grid reliability doesn’t improve, cost structures stay uncompetitive. If AWS or Google decide to deploy their own hyperscale infrastructure in Lagos rather than leasing from third-party operators, the market gets crowded fast.

For now, Kasi Cloud is betting that Nigeria’s market size, regulatory environment, and connectivity improvements outweigh its power challenges. The $250 million campus will get built. Tenants will move in. And West Africa will have one more piece of the cloud infrastructure it desperately needs.

But until Nigeria fixes its grid, every rack in that campus will hum on diesel. And every kilowatt-hour will cost five times what it should.

That’s the reality of building the cloud in Africa’s largest economy. The demand is there. The investment is there. The infrastructure is there. But the power isn’t. And without power, even $250 million can’t buy you a sustainable data center.