---
type: source
title: "3 Reasons Mobile Money Programs Have a $1.7 Trillion Problem"
publisher: ICTworks
url: https://www.ictworks.org/african-mobile-money-program-problems/
date_precision: day
date_source: source
author: Wayan Vota
published: 2026-04-16
accessed: 2026-07-11
ingested: 2026-07-11
places: [KEN, UGA, GHA, NGA, TZA, XSS]
topics: [dpi.pay, tech.ai, gov.protect, include.divides, include.access, finance.new, gov.policy]
entities: [[safaricom], [mtn-group], [airtel-africa], [gsma], [huawei]]
lens: [colonialism]
body_completeness: excerpt
---

<!-- ICT4D evidence-audit citing GSMA/INTERPOL/Smile ID/CGAP primaries. Admissible as analysis; the embedded primary reports are leads. 2024: 2.1bn accounts, 108bn txns, $1.68tn. -->

## 3 Reasons African Mobile Money Programs Have a $1.7 Trillion AI Problem

Mobile money is the one unambiguous success story in digital development.

In 2024, 2.1 billion registered accounts processed [108 billion transactions worth $1.68 trillion](https://www.gsma.com/newsroom/press-release/mobile-money-surpasses-two-billion-registered-accounts-and-over-half-a-billion-monthly-active-users-globally/), a 20% jump in transaction volume year-on-year. Sub-Saharan Africa holds over one billion of those accounts.

For a field that endlessly debates whether its pilots ever scale, mobile money is the rare proof point that digital development can reach hundreds of millions of people.

So here is what I am watching with increasing concern: AI is being woven into this infrastructure across three simultaneous fronts — fraud detection, credit scoring, and customer service — and the narrative around each is uniformly optimistic.

- AI detects fraud faster.
- AI lends more fairly.
- AI serves customers around the clock.

CGAP, the GSMA’s Inclusive Tech Lab, and the Tony Blair Institute have all begun engaging with AI risks in financial services at a governance level. But there is a specific gap nobody has filled: independent, practitioner-facing scrutiny of AI systems actually deployed in African mobile money, audited against real user outcomes.

A $1.68 trillion infrastructure that underpins [healthcare payments](https://www.ictworks.org/digital-financial-services-improve-global-health/), government transfers, and agricultural value chains is being reshaped by algorithms that have not been independently evaluated for bias, accuracy, or exclusionary effects in the contexts where they operate.

This post is a critical evidence audit. I mapped where the claims are, where the evidence is, and where the gap between them is widest.

## 1\. Fraud Detection May Be Flagging the Wrong Users

The fraud problem is real and large. Africa loses an estimated $3 billion annually to cybercrime according to INTERPOL’s [2025 Africa Cyberthreat Assessment](https://www.interpol.int/content/download/23222/file/2025%20Africa%20Cyberthreat%20Assessment%20Report.pdf). At 108 billion transactions per year, legacy rule-based systems cannot keep pace.

- Safaricom uses biometric authentication and SIM-swap monitoring for M-Pesa.
- MTN and Airtel are integrating GSMA Open Gateway APIs.
- Fintechs deploy ML anomaly detection that flags suspicious behavior within milliseconds.

The question practitioners should be asking: what is the false positive rate, and who bears the cost?

I cannot document that AI fraud systems are disproportionately flagging rural women as suspicious — because the data to make that determination does not exist publicly. What I can document is the structural pathway that would produce exactly that outcome, and why it is theoretically grounded rather than speculative.

AI fraud detection systems are trained on historical transaction data from the highest-activity users, who are disproportionately urban, male, and frequent transactors. [CGAP has noted](https://www.cgap.org/blog/ais-promise-new-era-for-financial-inclusion) that AI models trained on data skewed toward higher-income, urban populations will systematically undervalue the data of low-income and rural users, with women particularly exposed due to thinner digital footprints.

The behavioral patterns that trigger a fraud flag — irregular transaction timing, unusual amounts, transactions from a new device — are also the exact behavioral patterns of a first-time rural user. She is, by the AI’s definition, anomalous.

[The Smile ID 2026 Digital Identity Fraud Report](https://reports.usesmileid.com/fraud-report-2026) adds a specific technical dimension: 90% of blocked fraud in 2025 was triggered by mobile SDK signals rather than image analysis.

USSD-only users — a significant share of low-income and rural users across East and West Africa — do not generate SDK signals at all. Their absence from the signal layer makes their behavioral patterns harder to contextualize, not easier.

No published audit of false positive rates disaggregated by gender, geography, or transaction frequency exists for any major African mobile money AI fraud system. Every data point on detection accuracy comes from vendors selling the systems or operators deploying them.

The academic evidence base for AI fraud detection in mobile money is built on simulated data. [Azamuke et al. (2025)](https://www.sciencedirect.com/science/article/pii/S2352340925002665) had to build a synthetic mobile money dataset because Ugandan operators refused to share real transaction data with researchers.

The harm I am describing may be occurring at scale right now — or it may not be. We have no way to know, and that absence of knowledge is itself a governance failure.

## 2\. AI Credit Scoring Inherits the Exclusion It Claims to Fix

As of mid-2024, [44% of mobile money providers offered credit services](https://www.gsma.com/newsroom/press-release/mobile-money-surpasses-two-billion-registered-accounts-and-over-half-a-billion-monthly-active-users-globally/), the most common adjacent financial product. Companies like JUMO, Tala, Branch, and M-Shwari use ML models analyzing transaction histories to issue microloans.

The industry cites a [2024 MIS Quarterly study](https://misq.umn.edu/misq/article/48/4/1803/2314/The-Effect-of-AI-Enabled-Credit-Scoring-on) finding that AI credit scoring reduced bias against self-employed and rural borrowers by 27-52% compared to rule-based models.

I have read this paper. The finding is real. It is also from a large Chinese bank operating under robust credit infrastructure and established regulatory oversight.

[CGAP has explicitly flagged this generalizability problem](https://www.cgap.org/topics/collections/data-and-ai-for-inclusive-finance): there is no peer-reviewed evidence on AI credit scoring performance in African mobile money contexts specifically. Extrapolating those findings to a Kenyan mobile lender operating with thinner data and no AI lending regulation is not analysis.

It is an act of faith dressed as evidence, and the industry narrative does it without qualification.

The structural problem runs deeper.

[Women in LMICs were 36% less likely than men](https://www.gsma.com/solutions-and-impact/connectivity-for-good/mobile-for-development/programme/mobile-money/progress-in-closing-the-mobile-money-gender-gap-has-stalled-latest-evidence-from-findex-2025/) to own a mobile money account in 2024, up from 30% in 2021. The gender gap in mobile money account ownership is not closing — it is widening.

An AI credit scoring model trained on mobile money transaction data inherits this gap structurally. Thinner transaction histories for women produce lower credit scores, which produce lower loan approval rates, which produce thinner future data.

[As NextBillion’s analysis](https://nextbillion.net/ai-risk-management-digital-finance-protecting-africas-underbanked-from-invisible-threats/) noted, “if these datasets or algorithms place undue emphasis on the structural inequalities that exist between communities, the AI models may systematically undervalue the creditworthiness of the same populations that are already excluded.”

No mobile money credit provider has published gender-disaggregated approval and default rates that would let us measure whether this feedback loop is operating.

The regulatory vacuum makes this worse.

- The U.S. Consumer Financial Protection Bureau fined Apple $25 million and Goldman Sachs $45 million in October 2024 for AI-related card failures.
- The EU AI Act classifies credit scoring as high-risk AI, requiring explainability.
- In Kenya, Uganda, Ghana, and Tanzania — countries hosting the world’s largest mobile money markets — no central bank has published guidance on AI in mobile lending.

Some of these providers combine transaction data with call records, location data, and social graph analysis for scoring, under consent frameworks buried in SIM registration terms of service. The credit scoring model, in these cases, is a surveillance tool.

Whether it is a fair one is a question with no current regulatory mechanism to answer.

## 3\. When AI Designs Products, Who Is It Designing For?

In August 2025, Safaricom and Huawei’s CBS Billing team [launched “Idea-to-Cash”](https://www.safaricom.co.ke/media-center-landing/press-releases/safaricom-and-huawei-cbs-accelerate-telecom-innovation-with-ai-driven-idea-to-cash-transformation), an AI platform that analyzes user behavior and market data to generate financial product concepts and configure them for deployment.

The stated objective, in Safaricom’s own press release, is to “intelligently optimize Safaricom’s core offer monetization processes.”

An earlier pilot of the underlying platform, documented by Developing Telecoms, targeted users who tend only to use free data and therefore do not generate additional revenue for carriers — and succeeded in increasing ARPU by 24%.

I am not asserting that Safaricom is acting against its users’ interests.

What I am asserting is that the disclosed objective function of this AI system is revenue optimization, and that no disclosure exists about what constraints, if any, govern the tradeoff between revenue and user welfare when the two diverge.

That transparency gap is the problem, not the tool itself.

Documented cases from social media and e-commerce — sectors where AI optimization for engagement and revenue is now well-studied — show that absent explicit constraints, revenue-optimized AI systems consistently produce outcomes that benefit providers at users’ expense over time.

There is also a specific dispute resolution problem that [consumer protection principles for digital financial services](https://www.ictworks.org/getting-principled-on-digital-financial-services-for-development/) have long flagged: when transactions fail or money disappears, resolution quality determines whether users trust the system enough to continue.

AI chatbots — Safaricom’s Zuri, MTN’s MoMo bot, Airtel Nigeria’s Airtel Assist — are designed for routine inquiries. They are not designed for adversarial situations where user interests conflict with provider interests: a disputed charge, a fraud claim the system missed, a loan fee not clearly disclosed.

If AI handles the front line and human agents handle only escalations, the friction to reach a human becomes a de facto barrier to dispute resolution for the users who need it most.

## What the ICT4D Community Should Demand Now

We helped build mobile money into what it is. We wrote the consumer protection principles, funded the gender inclusion research, and advocated for the regulatory frameworks that made this infrastructure trustworthy.

Five specific demands, each mapped to a specific actor, are warranted now.

### 1\. Open mobile money transaction datasets for academic research

The Azamuke et al. finding — that researchers must simulate data because operators refuse to share real transactions — is the foundational problem. Every other audit depends on data access. The GSMA Mobile Money programme should make anonymized, consent-based data sharing with academic institutions a condition of operator membership in its programmes.

### 2\. Gender-disaggregated credit decision data from providers

Loan approval rates, default rates, and loan amounts broken down by gender, geography, and transaction frequency — reported annually, independently verified. Donors conditioning market access support on this disclosure is the most direct leverage point available.

### 3\. Central bank guidance on AI in mobile money lending

Not consultation documents. Guidance with enforcement mechanisms, modeled on the CFPB’s existing framework and the EU AI Act’s high-risk classification for credit scoring. The precedent exists. What is missing is political will to apply it by regulators in Kenya, Uganda, Ghana, Nigeria, Tanzania.

### 4\. False positive audits for AI fraud detection

Third-party evaluations with published methodology, disaggregated by user type. Not vendor claims. The GSMA already collects extensive operational data from mobile money providers. Adding false positive rates by gender and geography to that survey is technically straightforward.

### 5\. Disclosed objective functions for AI product design tools

Any AI system that generates financial products from behavioral data should disclose whether it optimizes for user welfare, provider revenue, or a combination — and what constraints govern the tradeoff. The Safaricom Idea-to-Cash disclosures tell us the optimization target is monetization. What we do not know is what, if anything, limits that optimization when it conflicts with user outcomes.

**Filed Under:** [Featured](https://www.ictworks.org/category/featured/), [Management](https://www.ictworks.org/category/business/management/)  
**More About:** , , ,