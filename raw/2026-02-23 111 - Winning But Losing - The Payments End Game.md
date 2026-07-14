---
type: source
title: "#111 - Winning But Losing - The Payments End Game"
publisher: Frontier Fintech (Substack)
url: https://frontierfintech.substack.com/p/111-winning-but-losing-the-payments
author: Samora Kariuki
published: 2026-02-23
accessed: 2026-07-12
ingested: 2026-07-12
places: [NGA, KEN, ZAF, TZA, GHA, XAF, XGL]
topics: [dpi.pay, tech.industry]
entities: [[samora-kariuki], [nibss], [safaricom], [onafriq], [visa], [sarb], [bank-of-ghana], [central-bank-of-kenya]]
lens: [sovereignty]
---

<!-- External expert analysis (Frontier Fintech). Thesis: African payment aggregators face Brazil/India-style margin collapse as low-cost central-bank instant-payment systems become utilities; durable value shifts to credit, data and compliance layers, not processing. Body dates StoneCo/PagSeguro figures "mid Feb 2025" but edition sequence (#93 Aug 2025, #117 Apr 2026) supports Feb 2026 — treat "2025" as stale/typo. Attach: dpi.pay + tech.industry concepts; NGA/KEN/ZAF hubs. -->

[

](https://substackcdn.com/image/fetch/$s_!qSjQ!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Fc1caacaf-b7df-4093-9350-9033d51b62f7_1456x1048.png)

Illustration by [Mary Mogoi](https://www.linkedin.com/in/maryokioga/)

Hi all - This is the 111th edition of Frontier Fintech. A big thanks to my regular readers and subscribers. To those who are yet to subscribe, hit the subscribe button below and share with your colleagues and friends.

## Announcing: Frontier Fintech Executive Search

Before this week’s article, a quick announcement.

I’ve partnered with [Triage](https://triage.ag/), a pan-African executive search firm, to offer executive search for African Digital Financial Services.

## Why this exists:

The hardest leadership hires in African DFS aren’t hard because of a talent shortage. They’re hard because the roles demand people who can hold multiple contexts at once.

The Head of Revenue who combines scrappiness with commercial gravitas. The CTO with platform experience who can navigate a high-growth people environment. The banking veteran with a genuine tech and growth mindset. The senior leader who brings seniority without losing startup energy.

These profiles are rare. They don’t surface through keyword searches or credential matching.

## What we’re doing:

Frontier Fintech brings ecosystem context - understanding what roles actually demand in your specific environment.

Triage brings leadership context - a structured Five Dimensions framework and rigorous search methodology that leaves no stone unturned.

Together: Ecosystem intelligence. Leadership science. Rigorous execution.

## Areas of focus:

→ CTO and CPO → CFO and strategic finance → COO and operational leadership → Commercial leadership (Heads of Revenue, Sales Directors)

## Interested?

[Read more about the partnership and how it works here.](https://frontierfintech.substack.com/p/110-unicorns-and-zebras-what-african#)

Or reach out directly: [samora@frontierfintech.io](mailto:samora@frontierfintech.io)

Now, on to this week’s article...

---

## Introduction

Is there a solid future for African Payment Aggregators or is the industry doomed to end up like the TV Manufacturing industry or even worse, the airline industry?

The production of the first mass market television in the late 1930s marked the transition of television from a laboratory curiosity into a commercial reality. For decades, television had existed as a scientific ambition, pursued by physicists and engineers attempting to solve the problem of transmitting moving images electronically. When companies like RCA finally succeeded in manufacturing television sets at scale, they moved the TV from a hobbyist’s pursuit to a must have in every American home. By the 1950s, ownership was spreading rapidly across the United States and Europe, reshaping culture, politics, and entertainment. Television created a new medium entirely.

[

](https://substackcdn.com/image/fetch/$s_!XbY2!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Fa9b05b72-e2a2-4f92-9230-41ef75c9568a_1280x798.png)

An early RCA Television - [Image Source Wikimedia](https://commons.wikimedia.org/wiki/File:RCA_630-TS_Television.jpg)

In those early years, the economics of making televisions looked genuinely attractive. The technology was complex, production required specialised expertise, and only a handful of companies had the capability to build reliable sets. Complexity created barriers, and barriers created margins. Television was both technologically impressive and economically rewarding. The manufacturers were at the center of one of the most significant industrial expansions of the post-war period.

Then the nature of the industry changed. What began as a scientific discipline became a manufacturing one. The core technical problems were solved, production knowledge spread globally, and new entrants, first Japan, then Korea, then China, competed primarily on cost. In Africa we saw this evolution through the TVs in our living rooms, Boomers showed off their Grundigs, the 90s were dominated by Panasonic and Sony, the Y2K generation was dominated by LG and now TCL and other Chinese brands rule the roost.

As TVs became a mass market consumer good to the average buyer, a specific TV became functionally interchangeable with another. Competition intensified, margins compressed, and the economics of television manufacturing largely evaporated. The value created by television did not disappear. It moved to media companies, content creators, and cable operators who owned the relationship with the viewer rather than the device they watched on.

Warren Buffett, reflecting on this in his [1993 annual letter](https://www.berkshirehathaway.com/letters/1993.html?utm_source=chatgpt.com), was typically understated: *“Did we foresee thirty years ago what would transpire in the television manufacturing or computer industries?”* He hadn’t. Almost nobody had. The market grew enormously. The manufacturers largely didn’t. It’s a bit like the airline industry which is another of Buffett’s pet peeves. The industry continues to grow, but the economics for airlines remains stuck.

I think about this when I look at African payments. Transaction volumes across the continent are genuinely impressive, Nigeria’s NIBSS processed $702.6 billion in 2024, M-Pesa handled KShs 40.24 trillion, and the numbers keep climbing. Every headline confirms that the African payments race is real and accelerating. What the headlines don’t address is a more uncomfortable question: in markets that have already run this race, what happened to the companies that won it? In India, PhonePe processes over $1 trillion in payment value and posts an effective take rate of 0.04%. It remains loss-making. In Brazil, StoneCo and PagSeguro lost roughly 90% of their combined market value after Pix arrived, not because they failed, but because the infrastructure they built their businesses on became a public utility. Just like with TVs, the value didn’t disappear, in fact it continues to grow, it just moved.

Africa is not Brazil, and it is certainly not India. The cash-dependent informal economy, trust deficits, and regulatory fragmentation mean the transition here will be slower and more contested. But the direction is the same. This article is about that direction, what the endgame looks like for African payments, and whether the companies currently racing toward volume leadership are building something durable or just building TVs. This particularly as real-time and low cost digital payments continue to scale. We’ll start by quickly going through the fundamentals of payments, evaluate how payments are evolving in the continent particularly with the growth of Instant Payment Systems, discuss how instant payments affect the economics of payments, go deeper into the StoneCo and PhonePe examples in India, discuss how this affects African payment aggregators and how their businesses evolve.

## How Payments Work and How They Have Evolved

[

](https://substackcdn.com/image/fetch/$s_!RB0g!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F92e96b39-38ed-4002-bea3-bd97803c64fe_1456x1048.png)

I’ve written about the fundamentals of payments [here](https://frontierfintech.substack.com/p/54-stablecoins-and-cross-border-payments) and [here](https://frontierfintech.substack.com/p/stripe-paystack-flutterwave-and-why?utm_source=publication-search). You can read those for a deeper analysis.

Every payment system operates across three distinct layers. At the foundation is the **rails layer,** the settlement infrastructure that actually moves money between institutions. Historically dominated by Visa and Mastercard, who reported operating margins of 57% and 59% respectively in their most recent quarters, rails are natural monopolies and also include systems like SWIFT, UPI and Nibss. Whoever controls them sets the terms for everyone who builds on top. Above the rails sits the **wallet layer**, where the end user lives. M-Pesa, Alipay, PhonePe, OPay or even your bank are examples. The wallet owns the customer relationship and accumulates the behavioural data that makes credit, savings, and insurance possible. In most markets, its economics are not primarily about payment fees, the payment is usually a cheap acquisition channel for higher-margin financial services that follow. In Kenya though, M-Pesa is primarily a payments wallet.

Then there is the **aggregator layer,** the merchant-facing middleware. Stripe, Flutterwave, Paystack, StoneCo. These companies abstract the complexity of multiple rails into a single merchant integration and earn a take rate on every transaction processed. This is where a lot of African fintech capital has been directed. It is also the layer most structurally exposed, squeezed from below as rails get cheaper, and from above as wallet players who own the customer can afford to price payment processing at near-zero.

In Africa, this architecture did not emerge in textbook order. It was built against a backdrop of near-total cash dominance, where the first challenge was not efficiency but access. South Africa followed the developed-market script, card infrastructure, bank acquirers, Visa and Mastercard at the centre, interchange fees and merchant discount rates as the business model. Nigeria built differently, investing in NIBSS, an interbank instant payment system that became one of the best-designed rails anywhere in the world, with banks and licensed fintechs building acquisition businesses on top of it. Nigeria also had a card heritage with companies like Interswitch playing a key role in the market.

East Africa produced something else entirely. M-Pesa launched in Kenya in 2007 and compressed all three layers into one. Safaricom was simultaneously the rail, the wallet, and the merchant acquirer. This worked because Safaricom already had what no other telco in Africa could claim, near-total network dominance, with over 90% of Kenyans having it as their primary line. When M-Pesa launched, your contacts were already on it. That critical mass is what made the chain reaction self-sustaining, and what makes the model essentially impossible to fully replicate without those preconditions. Every market that tried without Safaricom’s structural advantage produced a CICO economy, cash in, cash out, with limited genuine digital circulation in between.

On top of this uneven foundation, the aggregator layer emerged. Paystack and Flutterwave in Nigeria, DPO and Pesapal across East Africa, Peach Payments and Stitch in South Africa. Their pitch was coherent: we abstract the complexity, you focus on your business. Moreover, an additional attraction was solving the complex back-end for enterprises who handled multiple payments. The podcast discussion with Kiaan of Stitch gives a good overview.

![](https://www.youtube.com/watch?v=X75GVmxHeco)

They attracted serious capital and built real scale. The core differentiation was based on a technologically superior product that was API first at its core, more customer friendly in terms of onboarding and focused on expanding acceptance options for merchants. The idea was to be a one-stop shop. These companies have all achieved significant success and scale on this premise. The question then becomes what next particularly as instant payment systems continue to be deployed across the continent. The business model is based on Merchant Discount Rates tied to the economics of Visa and Mastercard. However, as payments evolve, potentially away from cards, what happens?

## Payments are Turning into Utilities and What That Means for the Industry

I’ve always argued that fundamentally, the ability to make a payment is a public good. Traditionally that has meant that the Central Bank incurs the cost of managing cash in circulation. As payments go digital, Central Banks across the world are stepping up to ensure they can fulfil the same role digitally. Nowhere has that been more clear than in the growth of Instant Payment Systems (IPS’) across the world. Europe has SEPA, India has UPI, Brazil has Pix, the US has Fednow amongst many other implementations. Whilst success has varied, it’s clear that there’s a trend towards low cost public rails. My view is that where card markets are not entrenched, these will become the defacto P2P and C2B payment rails given their interoperability, low cost and platform-like features that enable wallet providers to innovate on top of.

Africa’s cross-domain instant payment systems processed $1.98 trillion in combined value in 2024. That number sounds large until you put it in context: Pix alone processed $4.6 trillion in Brazil in the same year, a country with a fraction of Africa’s population and economic footprint. The honest read on Africa’s instant payment story is not that it has arrived, it’s that it is arriving, and the trajectory matters more than the current volume. Between 2020 and 2024, payment volumes have grown by a CAGR of 35% from 19.7 billion transactions in 2020 to 64.6 billion transactions in 2024. Payment values grew by a CAGR of 26% in the same period from US$ 772 billion in 2020 to US$ 1.9 billion in 2024 including mobile money.

[

](https://substackcdn.com/image/fetch/$s_!sCSb!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F0d1563f0-c3c5-4503-98f6-fdd05825f567_1118x1260.png)

Source: [Africa Nenda SIIPS Report 2025](https://www.africanenda.org/en/siips2025)

What’s interesting is that the continent is launching more and more IPS platforms. The table below gives the state of play.

[

](https://substackcdn.com/image/fetch/$s_!Ndih!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F2ae4cbc9-9770-427a-850d-ef0562a2c0e5_2048x563.png)

Data Source: Africa Nenda

The map below tells the story.

[

](https://substackcdn.com/image/fetch/$s_!dF9s!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F290c99cd-b87f-49cc-a244-ee22a499165c_2048x925.png)

Source: [Africa Nenda IPS Map](https://www.africanenda.org/en/map)

The infrastructure is spreading faster than most people appreciate. NIBSS in Nigeria has been operating since 2011 and processed $702.6 billion in 2024, with transaction volumes growing 120% in just two years. Tanzania’s TIPS launched in 2022. Ghana’s GhIPSS has been quietly processing significant volumes. Kenya’s Faster Payments System is in development. PayShap went live in South Africa in 2023. What’s interesting with PayShap is that the SARB took a stake in the platform through PayInc. The pattern across the continent is consistent: central banks and regulators are building or mandating interoperable real-time rails, and the volumes on those rails are compounding. This is a trend worth watching closely, not because of what it has done, but because of what it predictably does next.

Instant payment systems damage payment businesses in two distinct ways, and it is worth being precise about both.

The first is **float income**. In traditional settlement systems; T+1, T+2, sometimes longer, funds sit in the pipeline between initiation and final settlement. Banks and processors deploy that float into short-term treasury markets and earn interest on money that is technically in transit. It is invisible revenue; it does not appear on a fee schedule, but it accumulates meaningfully at scale. When settlement moves from days to seconds, that income disappears entirely. The Central Bank of Brazil has been explicit that the speed of Pix adoption forced banks to find new revenue sources to replace lost treasury income. South Africa is most exposed given the prevalence of both debit and credit cards. In my view, this revenue pool and the protection of the same is what has enabled Capitec to innovate on payments without fear of cannibalising itself. It’s what has also led to the design considerations behind the high fees that PayShap launched with.

The second is **MDR compression**. Pix launched in November 2020 with mandatory participation for all licensed institutions and free P2P transfers. Within four years it had 170 million users, 93% of Brazil’s adult population. Merchants who had been paying 2.34% for card transactions found themselves with a Pix alternative at 0.33%. The shift in transaction mix was not a gradual drift, it was a structural realignment.

India took the logic to its conclusion. UPI mandated zero MDR entirely. The result was extraordinary: over 20 billion transactions per month by 2025. It was also an economic trap for processors. [PhonePe controls 45.9% of UPI transaction](https://indiadispatch.com/p/phonepe-paytm-india-upi) volume and processed over $1 trillion in payment value in the first half of its most recent fiscal year. Its effective take rate on that volume: 0.04%. It remains loss-making. The lesson India offers is the starkest form of the argument: you can win the payments race completely and still build a business that cannot sustain itself on payments alone. To this end, the Payments Council of India has actively lobbied for an introduction of an MDR of 0.30% at least to make the economics work, they estimate that Indian Banks and Payments Companies [incur costs of around US$ 1.2 billion](https://economictimes.indiatimes.com/tech/technology/payments-body-writes-to-pmo-seeks-return-of-0-3-mdr-on-upi-for-large-merchants-and-rupay-debit-cards/articleshow/119423280.cms?from=mdr) to maintain UPI payments.

Africa is not going to zero MDR overnight. Implementations will be slow particularly in markets like Kenya and South Africa. The incumbents here have a lot to lose by opening the payments gates to IPS’. Nonetheless, the direction of travel across the world is the same. Payments are becoming a utility. In Europe and the US, these payments systems are facing incumbent card networks that have created a lot of consumer incentives such as cashbacks. The prevalence of credit cards is also high. In Africa, these dynamics don’t exist, meaning that customers are not chasing loyalty points, they are chasing cheap digital payments.

## What Happens When Payment Innovators Meet Instant Payments

The challenge with instant payments particularly Central Bank led systems with mandated pricing is that there is a squeeze at the aggregator level. This same dynamic has played out in Brazil and India. In these countries, we have the likes of StoneCo, PagSeguro and Paytm. All started with stripe-like models of enabling payments acceptance. Nonetheless, both faced the spectre of low cost instant payment systems with high adoption rates. When the customers move, the economics change significantly.

In the case of Brazil, StoneCo and PagSeguro built strong positions in merchant acquiring before Pix arrived. Their model was straightforward: take the complexity of Brazil’s fragmented card system and make it accessible to the long tail of SMEs that banks had ignored. It worked. Both companies reached multi-billion dollar valuations on the back of card-era take rates running between 1.4% and 2.4%. Then Pix launched in November 2020 with mandatory participation and free P2P transfers, and merchants suddenly had a 0.33% alternative to what they had been paying. StoneCo and PagSeguro did not collapse, but they were forced to become different companies. StoneCo rebuilt itself around SME banking and credit, growing its banking client base 46% to 3.1 million in 2024. PagBank leaned into deposits and consumer lending, closing 2024 with a record net profit driven by a credit portfolio that grew 46% to US$ 9 billion. The payment volumes held up. The payment margins did not. Whilst they did pivot well, the markets have not rewarded them for the new businesses. Pivoting is often a case of “from the frying pan into the fire”. Whilst you navigate away from the dying company, you’re not necessarily left with a dominant company. Both companies have seen steep declines from their peak, pre-Pix valuations.

[

](https://substackcdn.com/image/fetch/$s_!GwAY!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F9dba2ec5-de80-419d-8008-ce70e9c4d31c_1390x1116.png)

Source: Google Finance

[

](https://substackcdn.com/image/fetch/$s_!vlEs!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Fa6e14e7d-16ec-4a89-a52a-97c68379de87_1382x1136.png)

Source: Google Finance

StoneCo’s share price stood at US$ 92.14 in February 2021 and has fallen to US$ 17.7 as of mid February 2025. PagSeguro has seen a similar dramatic fall from US$ 61.2 in February 2021 to US$ 11 as of mid February.

India is the more extreme version. Zero MDR, mandated by the government, meant that the processing fees that would have funded the entire payments ecosystem simply ceased to exist as a revenue line. Instead, payment companies have to make due with what is essentially a “solidarity fund” for participating in UPI. PhonePe became the largest payment app on earth, processing over $1 trillion in value in the first half of its most recent fiscal year, commanding 45.9% of UPI transaction volume. Its effective take rate on all of that: 0.04%. It remains loss-making. Paytm, which was slower to pivot toward financial services, watched its $20 billion IPO valuation unravel. It has since stabilised by leaning heavily into lending and insurance distribution, financial services revenue now drives its return to positive EBITDA, but the payment volumes that made Paytm a household name are not what funds the recovery. Again, it’s a case of from the frying pan into the fire. Having a right to win in payments aggregation doesn’t earn you a right to win in providing consumer financial services. It’s a different ball game altogether.

The pattern across both markets is the same. The aggregator that built on API-first principles, reliability and easy onboarding was solving a real problem in a world where the underlying rails were expensive and fragmented. The moment the state built cheap, mandatory, ubiquitous infrastructure on top of those rails, the problem the aggregator was solving got considerably smaller. Volume held up or even grew. Revenue per transaction collapsed. The business model that had attracted the capital and the valuations required an urgent reinvention, toward credit, deposits, software, or some combination of all three. This is the spectre now facing African payment aggregators. The rails are not yet as cheap or as pervasive as Pix or UPI. But they are moving in that direction, and the pace is accelerating. The question then becomes, what makes sense for payments aggregators in this emerging world.

## What Next for Payments Companies

The African context is different from Brazil and India in important ways, but not so different that the lesson doesn’t apply. The compression is coming. The question for African payment aggregators is what they are building that will be worth something on the other side of it. The aggregator landscape in Africa broadly splits into two types of business, each facing a distinct version of the same problem.

The first type is the domestic merchant acquirer, companies like Moniepoint, and Opay in Nigeria, Pesapal and DPO in East Africa, Yoco and Stitch in South Africa. These players built their businesses on the payment processing premium that exists when the underlying rails are fragmented and merchant onboarding is hard. The model has worked well. Moniepoint reportedly processes US$ 294 billion in annual transaction volumes in Nigeria. OPay reached 40 million users in roughly four years. These are real businesses with real scale. Businesses have navigated the rails challenge i.e. limited merchant economics for domestic payments differently. Moniepoint has had a two-pronged approach. First, merchant acceptance in Nigeria suffered from a distribution and reliability problem, this in itself was a big enough problem to build a business on. Opay’s success validates this. Moreover, from this base, they are building aggressively into business banking and credit. It’s a StoneCo strategy but in a market that values the product. Pesapal on the other hand has focused on a specific niche, the hospitality and travel industry where a good chunk of the market wants to pay with cards. South Africa still has some runway. Nonetheless, the fight is moving towards players that can offer multiple payment options given the increasing fragmentation in payment methods.

The second type is the pan-African aggregator, Flutterwave, Onafriq, Cellulant and now Moment. Their thesis is different: Africa’s regulatory fragmentation, currency complexity, and infrastructure patchwork create genuine barriers that a well-resourced multi-market operator can monetise. No state instant payment system solves cross-border or at least large enterprise payments. No domestic rail handles an international merchant collecting across fifteen African markets. The complexity itself is the moat. This is a defensible argument, and it is why Flutterwave’s network of networks, spanning 34 countries with 34 US Money Transmitter Licences, has real value. Onafriq’s interoperability hub connecting mobile money wallets and bank accounts across 40 countries is similarly hard to replicate quickly. Moment is building with a data first approach that will eventually enable them to be both a Pan-African aggregator and a consumer play.

But the moat has to be honest about what it actually is. It is not payment processing, it is the compliance infrastructure, the FX management capability, and the depth of regulatory relationships that took years to build. A company that can tell an international merchant not just that the payment processed, but what that transaction pattern reveals about consumer behaviour across markets, that can offer FX management grounded in real payment flow data, that can handle multi-jurisdictional compliance with institutional reliability, that company has defensible economics.

A company that is essentially a more convenient pipe in a world building better pipes does not. Flutterwave’s shift toward enterprise payments, [which grew 20% in TPV in H1 2025](https://flutterwave.com/eu/h1-2025-report), suggests it understands where the value is moving. The Stablecoin dimension adds another layer, both Flutterwave and Onafriq are quietly exploring Stablecoin settlement for cross-border flows as a backend cost reduction, not a consumer-facing product. Sub-Saharan Africa received over $205 billion in on-chain value between mid-2024 and mid-2025, with Nigeria alone accounting for $92.1 billion. The infrastructure for stablecoin-settled cross-border payments is forming whether the aggregators lead it or not. The ones who build it into their stack early reduce their FX and settlement costs while deepening a moat that pure payment processors cannot replicate.

There is also a third path, which is not really a path, continuing as a traditional merchant aggregator with no meaningful differentiation in data, credit, or consumer relationships, and hoping Africa’s fragmentation delays compression long enough. This is not a strategy. It is a timeline bet, and the Brazil and India precedents suggest the downside of losing that bet is severe. The market grew in both cases. The pure-play processors largely did not. The winners in African payments over the next decade will not be determined by who processes the most volume. That race, as the global evidence shows, leads somewhere less valuable than it appears. They will be determined by who converts the payment relationship into something the rails cannot commoditize, a credit book, a banking relationship, a data intelligence layer, a compliance infrastructure that took a decade to assemble.

Just like the overall TV market grew whilst TV manufacturer economics got worse, the same will play out in payments. Being a pipe doesn’t lead to differentiation. Just like with TVs, the value moves towards different elements of the stack. Particularly the wallets that create true value. Interestingly, in this dynamic, banks may have a fighting chance given that they don’t need to monetise payments and can benefit from lending and other banking products better than pure-play payments companies.