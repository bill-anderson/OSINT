---
type: source
title: "Strategy Ahead of Infrastructure, Part I: Inside the CBN's June 2026 Payments Circular"
publisher: Anjola Adebowale (Substack)
url: https://anjolaadebowale.substack.com/p/strategy-ahead-of-infrastructure-8ef
author: Anjola Adebowale
published: 2026-07-01
accessed: 2026-07-12
ingested: 2026-07-12
places: [NGA, KEN, ZAF, XGL]
topics: [gov.legislate, infra.store, dpi.pay, gov.protect, infra.energy, geopol.usa]
entities: [[anjola-adebowale], [cbn-payments-circular-2026], [cbn], [microsoft-g42-kenya-datacenter], [g42], [microsoft], [william-ruto], [africa-data-centres], [amazon-web-services]]
lens: [sovereignty]
---

<!-- External expert analysis. Close reading of the CBN's 15 June 2026 payments circular PSS/DIR/PUB/CIR/001/004 (signed Dr. Rakiya Yusuf): four-pillar strategy (market-structure caps, data localisation, UBO disclosure, systemic oversight) strategically sound but the 1 Jan 2027 data-localisation deadline outruns Nigeria's data-centre and grid capacity. Same circular as Part II → both cite one shared [[cbn-payments-circular-2026]] instrument. anjola-adebowale created by Writer D. Kenya Olkaria/G42 suspension (May 2026) attaches to [[microsoft-g42-kenya-datacenter]] as update evidence. Attach: cbn; gov.legislate/infra.store/dpi.pay/gov.protect/infra.energy/geopol.usa concepts; NGA/KEN/ZAF hubs. -->

Nigeria’s current account surplus sheds 41% in Q3, says CBN

The Central Bank of Nigeria has issued a payments circular that addresses market concentration, data sovereignty, ownership transparency, and systemic oversight in a single regulatory instrument. The strategic direction is sound and consistent with a broader global pattern, but the sequencing raises questions about implementation. This piece, the first of two, examines what the circular says and where its strategy holds. Part II turns to where the implementation does not, and what a sequenced rollout might have looked like.

*A brief note before we begin: I write this from an implementation perspective. My work sits closer to data, AI, and digital transformation than to financial policy, so this analysis focuses on what the circular looks like when an institution actually has to absorb it.*

## Contents

*A note on structure: Sections I and II set out what the circular contains, for readers who want the background. Readers already familiar with the circular can skip to Section III, where the analysis begins.*

[I. Understanding the Circular: what the CBN issued, and why](https://anjolaadebowale.substack.com/i/204440104/i-understanding-the-circular)

[II. The Four Pillars: the provisions, in CBN’s own words](https://anjolaadebowale.substack.com/i/204440104/ii-the-four-pillars)

[III. Strategic Assessment: where the strategy holds](https://anjolaadebowale.substack.com/i/204440104/iii-strategic-assessment)

[IV. Implementation Risks: where the implementation does not](https://anjolaadebowale.substack.com/i/204440104/iv-implementation-risks)

*(Part II continues with: V. The Opportunity, VI. Sequencing and Implementation, VII. Conclusion)*

## I. Understanding the Circular

On 15 June 2026, the Central Bank of Nigeria issued circular [PSS/DIR/PUB/CIR/001/004](https://regalert.today/document/ffc123b8-cb7d-4767-8857-b79bebce2a39), titled *Introduction of Market Structure Requirements, Data Localisation, Ultimate Beneficial Ownership Disclosure, and Systemic Oversight Measures in the Nigeria Payments System*. The circular was signed by the Director of the Payments System Supervision Department, Dr. Rakiya Yusuf, and addressed to Deposit Money Banks, Microfinance Banks, Mobile Money Operators, Switching Companies, Payment Solution Service Providers, Payment Terminal Service Providers, Super Agents, and other licensed payment operators.

The title is doing important work, because it names four distinct interventions packaged into a single regulatory action. Most of the [public coverage](https://www.premiumtimesng.com/business/business-news/887992-cbn-orders-banks-fintechs-to-disclose-owners-store-payment-data-in-nigeria.html) has framed the document as a “data localisation circular,” which understates what is actually being introduced. The circular addresses market structure, data sovereignty, ownership transparency, and systemic oversight as parts of one coherent intervention rather than as separate measures.

The CBN’s own rationale, taken directly from the document, is worth quoting in full because it establishes the framing the rest of the circular operates within:

“The Nigerian payments ecosystem has witnessed significant structural developments characterised by rapid growth in electronic payments, increasing adoption of digital financial services and the emergence of operators with substantial market presence across key payment activities. While these developments have supported innovation, efficiency, and financial inclusion, they have also raised concerns relating to market concentration, operational dependence, systemic importance, transparency of ownership structures, and the localisation of critical payment data.”

The regulator is observing that the Nigerian payments market has grown rapidly, that a small number of players have become very large within it, and that it considers this the moment to draw structural lines before those concerns develop into structural problems. The circular addresses this through four pillars, which are best understood individually before being assessed together.

## II. The Four Pillars

### Pillar 1: The Market Structure Rule

This provision has received less public attention than the data localisation requirement, but its structural significance is at least as large. The rule states:

> “Any licensed financial institution engaged in card-issuing activities, whether individually or as part of a group of related entities, that holds more than 25 per cent market share in card issuing within any rolling 12-month period shall not hold more than 15 per cent market share in merchant-acquiring activities during the same period.”

The same cap applies in reverse to merchant-acquiring dominance.

Payments has two sides. Issuing refers to the institution that provides the consumer with the card or wallet. Acquiring refers to the institution that processes the merchant’s side of the transaction. A number of Nigerian institutions have built integrated operations spanning both, capturing margin at every stage. The CBN is establishing that an institution can be dominant in one side of the market, but not in both at once.

The critical phrase is “whether individually or as part of a group of related entities.” It closes the workaround of splitting issuing and acquiring activities into separate subsidiaries under a shared parent. By explicitly looking through corporate structure, the CBN is signalling that the rule is enforceable rather than cosmetic.

### Pillar 2: Data Localisation

The circular provides:

> “All financial institutions and participants facilitating payments within Nigeria shall ensure that payments transaction data generated within Nigeria are stored and managed in Nigeria in accordance with data protection laws and regulations applicable in Nigeria.”

Full compliance is mandated by 1 January 2027. The practical effect is that every payment transaction generated within Nigeria must reside on infrastructure located inside the country. This is also where the central technical ambiguity in the directive sits, which we return to in the implementation risks below.

### Pillar 3: Ultimate Beneficial Ownership Disclosure

The provision states:

> “All Deposit Money Banks, Payment Service Providers, and Other Financial Institutions with digital payment footprints shall disclose the Ultimate Beneficial Ownership (UBO) of significant shareholders in accordance with applicable extant laws and regulations.”

Every regulated institution must disclose not just the shareholders on its corporate register, but the natural persons who ultimately control those shareholders. Shell companies, trust structures, and layered holdings must resolve to identifiable human owners, with records kept current and made available on request.

Although framed as an anti-money laundering measure, the provision’s more important function is enabling enforcement of the market structure rule in Pillar 1. The “group of related entities” clause is unenforceable without visibility into who ultimately controls each entity, and UBO disclosure provides that visibility. The two pillars work together.

### Pillar 4: Monthly Market-Share Returns

The CBN requires all regulated entities to submit monthly market-share returns using prescribed templates and reporting timelines.

This creates a continuous, near-real-time view of market share in reporting formats the CBN itself defines, which prevents institutions from shaping the data through their own internal reporting. Without it, the 25%/15% cap cannot be verified, and the regulator would be intervening only after concentration problems became visible through other means.

## III. Strategic Assessment

The CBN is asserting sovereignty across three layers of the payments system simultaneously: the data layer, the governance layer, and the systemic oversight layer.

Read together, the four pillars constitute a coherent intervention. They address a structural problem in the Nigerian payments market that is genuinely present. The market is concentrated, several institutions operate on both sides of the value chain, a substantial volume of Nigerian payment data is held on infrastructure outside the country, and the ownership of some of the largest operators traces through corporate structures that are not transparent to the regulator. The strategic direction is appropriate to the problem it identifies.

The intervention is also part of a clear global pattern. The Reserve Bank of India issued a directly comparable payment data localisation directive [in April 2018](https://www.rbi.org.in/Scripts/NotificationUser.aspx?Id=11244), through circular RBI/2017-18/153, requiring all payment system data to be stored within India. Indonesia introduced similar provisions through its OJK financial regulator. Saudi Arabia did the same through SAMA. China embedded payment data localisation in its Personal Information Protection Law and Data Security Law. Russia adopted Federal Law 242-FZ in 2014. Vietnam introduced Decree 53. Brazil adopted comparable measures through its broader data protection framework. According to the Center for Global Development, [more than 100 countries](https://www.cgdev.org/blog/data-localization-hidden-tax-poor) now have some form of data localisation rule in place, with financial data localisation representing the most globally consistent sector pattern.

What is genuinely distinctive about the directive is not the data localisation provision itself, which is broadly conventional, but the way the CBN has packaged data localisation with anti-monopoly market structure rules, beneficial ownership transparency, and continuous reporting, all enforced through a single coordinated instrument. The Indian 2018 directive addressed data alone. The Saudi and Indonesian frameworks treat data and market structure as separate regulatory questions. By contrast, the CBN’s directive treats the payments system as an architecture with multiple layers that need to be regulated together rather than in isolation. That integrated approach is uncommon among the comparable regulations issued by other jurisdictions over the past decade.

In broader infrastructure terms, the CBN is asserting sovereignty across three layers of the payments system simultaneously: the data layer, the governance layer, and the systemic oversight layer. The instinct is the right one, and it is consistent with what digital sovereignty looks like when implemented coherently rather than piecemeal.

## IV. Implementation Risks

It changes the cost basis for the entire payments sector and determines whether the rule achieves genuine sovereignty or merely relocates the geographic address of dependency.

The strategic direction of the circular is defensible. The implementation is where the analysis becomes more difficult, and four concerns deserve examination.

The first concern is whether Nigeria’s data centre infrastructure can scale rapidly enough to accommodate the localisation requirement by January 2027. Nigeria currently hosts approximately [15 per cent of Africa’s data centre capacity across 26 operational and planned facilities, with a total installed IT load of roughly 75 megawatts](https://insights.techcabal.com/can-nigerias-data-centres-power-africas-ai-future/). Industry forecasts suggest that [capacity could reach 150 megawatts by 2027](https://insights.techcabal.com/can-nigerias-data-centres-power-africas-ai-future/) if all planned facilities are delivered on schedule, which would represent a doubling in approximately eighteen months. A large proportion of Nigerian financial institutions currently host significant workloads in South African cloud regions, primarily AWS Cape Town and Azure Johannesburg. The repatriation of those workloads to infrastructure inside Nigeria, on the timeline the CBN has set, would require the local data centre industry to absorb a step-change in demand it was not previously sized to handle. Whether the capacity build can keep pace with the regulatory deadline is, at present, an open question.

The second concern is that compliance costs are likely to reach consumers, and the evidence from comparable markets suggests the effect will be material. Localisation requires institutions to either contract premium local data centre capacity, build their own infrastructure, or migrate to international cloud providers’ Nigerian zones if and when those become available. Each option is more expensive than the existing cross-border arrangements that currently underpin much of the industry. Historically, in payments markets, cost differentials of this kind travel through to consumers via higher transaction fees or service charges.

The distributional implications of this passthrough deserve particular attention. [Analysis from the Center for Global Development](https://www.cgdev.org/blog/data-localization-hidden-tax-poor) examining data localisation regimes across more than one hundred countries concludes that, while proponents argue these policies advance national interests, in practice they often fail to deliver on their stated goals while imposing what the analysis terms a “localization tax” on low-income consumers. By increasing the operating costs of providers serving lower-income segments and restricting access to globally competitive cloud services, the policies tend to fall hardest on those least able to absorb the additional cost. The CBN circular does not address whether institutions will be permitted to pass these costs through to end users, nor whether consumer pricing for affected services will be regulated alongside the new requirements. This is a meaningful gap, and one that sits in tension with the CBN’s own stated priorities, given that financial inclusion remains a central policy objective for the regulator and that a substantial portion of the Nigerian population is either unbanked or marginally banked. A regulation that strengthens data sovereignty at the cost of widening the affordability gap for the financially excluded is one that may achieve one policy goal by undermining another.

The third concern is structural rather than transitional. Nigeria’s national grid produces approximately [6 gigawatts of generation capacity for a population of 230 million people](https://introl.com/blog/africa-ai-data-center-boom-opportunities-nigeria-kenya-south-africa), whereas [South Africa’s grid produces approximately 48 gigawatts for a population of 63 million](https://introl.com/blog/africa-ai-data-center-boom-opportunities-nigeria-kenya-south-africa). Nigerian data centres operate with a baseline assumption of diesel backup generation, which adds [roughly 40 per cent to operating costs, with a typical 1.5-megawatt facility storing approximately 90,000 litres of diesel on-site](https://african.business/2025/12/technology-information/inside-the-race-to-fire-up-africas-power-hungry-data-centres). This is not a problem that resolves on an eighteen-month timeline, because it reflects a structural constraint on how much compliance-grade data centre infrastructure can exist in Nigeria at any given price point.

The Kenyan experience over the past year is instructive on precisely this point. In May 2024, Kenya announced a $1 billion hyperscale data centre partnership with Microsoft and G42 at the Olkaria geothermal site, with a 100-megawatt first phase and a long-term ambition of 1 gigawatt. [In May 2026, the project was suspended](https://www.datacenterdynamics.com/en/news/microsoft-and-g42-data-center-in-kenya-stalled-due-to-lack-of-power-capacity/) after the partners and the Kenyan government were unable to agree on power and capacity guarantees. President William Ruto explained the underlying problem directly: “To switch on that one data centre, we would need to shut off power for half the country. That’s when I knew there was a problem.” Kenya, [with roughly 3.3 gigawatts of installed capacity and nearly 90 per cent of its generation from renewable sources, with geothermal alone accounting for almost half](https://www.iea.org/reports/kenya-2024/executive-summary), could not commit to powering a single hyperscale facility without disrupting service to the rest of the economy. The country is now pursuing [expansion to 10 gigawatts of installed capacity by 2030, seeking an estimated $38 billion in funding](https://www.datacenterdynamics.com/en/news/microsoft-and-g42-data-center-in-kenya-stalled-due-to-lack-of-power-capacity/). The lesson is consequential: even a country with stronger renewable credentials than Nigeria was unable to absorb a single large facility without a multi-year grid expansion programme funded in parallel. A localisation policy that requires an entire payments sector to repatriate workloads to domestic infrastructure, without an equivalent grid investment programme running alongside, leaves a substantial gap between the regulatory ambition and the physical capacity to support it.

The fourth concern is the cloud provider ambiguity, which is the most significant unresolved question in the circular. The document does not specify whether international cloud providers operating local availability zones inside Nigeria would count as compliant infrastructure under the localisation rule. If AWS, Microsoft Azure, or Google Cloud were to build Nigerian data centres, the question of whether institutions could host on those zones and remain compliant is not addressed. The two readings produce materially different outcomes for the industry.

Under a liberal reading of the rule, foreign hyperscalers would build local availability zones to comply, institutions would migrate workloads to those zones, and the data localisation rule would solve data residency without addressing the underlying dependency on foreign cloud providers. This would constitute sovereignty in geographic terms only. Under a strict reading, only Nigerian-owned or Nigerian-operated data centres would qualify, and the market would shift decisively toward domestic operators including MainOne, Rack Centre, Africa Data Centres, and Nxtra by Airtel, with significant implications for pricing across the industry. This is not a marginal question. It changes the cost basis for the entire payments sector and determines whether the rule achieves genuine sovereignty or merely relocates the geographic address of dependency. The CBN will need to clarify its position before institutions can plan compliance with any precision, and the fact that this clarification has not been issued alongside a circular setting an eighteen-month deadline is itself indicative of the gap between regulatory ambition and operational readiness.

*[Part II picks up here: the commercial and architectural opportunity the circular creates, why sequencing matters as much as strategy in determining whether a regulation like this succeeds, and what a phased version of the CBN circular might have looked like.](https://open.substack.com/pub/anjolaadebowale/p/strategy-ahead-of-infrastructure?r=ks2i2&utm_campaign=post&utm_medium=web&showWelcomeOnShare=true)*

**Sources and further reading:**

- [Central Bank of Nigeria circular PSS/DIR/PUB/CIR/001/004](https://regalert.today/document/ffc123b8-cb7d-4767-8857-b79bebce2a39) (15 June 2026)
- [Premium Times: CBN orders banks, fintechs to disclose owners, store payment data in Nigeria](https://www.premiumtimesng.com/business/business-news/887992-cbn-orders-banks-fintechs-to-disclose-owners-store-payment-data-in-nigeria.html)
- [Reserve Bank of India: Storage of Payment System Data (Circular RBI/2017-18/153, April 2018)](https://www.rbi.org.in/Scripts/NotificationUser.aspx?Id=11244)
- [TechCabal: Can Nigeria’s data centres power Africa’s AI future?](https://insights.techcabal.com/can-nigerias-data-centres-power-africas-ai-future/)
- [Introl: Africa’s AI Data Center Boom, Nigeria, Kenya, South Africa](https://introl.com/blog/africa-ai-data-center-boom-opportunities-nigeria-kenya-south-africa)
- [African Business: Inside the race to fire up Africa’s power-hungry data centres](https://african.business/2025/12/technology-information/inside-the-race-to-fire-up-africas-power-hungry-data-centres)
- [Center for Global Development: Data Localization, a Hidden Tax on the Poor](https://www.cgdev.org/blog/data-localization-hidden-tax-poor)
- [Data Center Dynamics: Microsoft and G42 data center in Kenya stalled due to lack of power capacity](https://www.datacenterdynamics.com/en/news/microsoft-and-g42-data-center-in-kenya-stalled-due-to-lack-of-power-capacity/)
- [International Energy Agency: Kenya 2024 Energy Policy Review](https://www.iea.org/reports/kenya-2024/executive-summary)