---
type: source
title: How AI Keeps Europe Hooked on US Cloud
url: https://www.techpolicy.press/how-ai-keeps-europe-hooked-on-us-cloud/
publisher: Tech Policy Press
published: 2026-06-29
ingested: 2026-07-10
places: [XGL]
topics: [infra.store, tech.ai, geopol.usa, geopol.eu, gov.policy, tech.industry, infra.capacity]
entities: [[microsoft], [google], [nvidia]]
lens: [sovereignty, colonialism]
---

Frederike Kaltheuner, Leevi Saari /

*This* [*three-part series*](https://www.techpolicy.press/series-what-europes-ai-market-actually-looks-like/) *is published in partnership with the AI Now Institute.*

![ ](https://cdn.sanity.io/images/3tzzh18d/production/2db4eb18abdb6c63e8aa451a18cc308c2ba97d6c-1200x675.png)

Better Images of AI / CC-BY 4.0[Republish](https://www.techpolicy.press/republish)

In our previous iteration of this series, we talked about European AI start-ups that operate at the application layer — and why betting on certain versions of applied AI may further entrench Europe’s dependency on a handful of United States firms.

The obvious counterexample to start-ups like the Swedish vibe-coding company Lovable is Germany’s DeepL. Launched in 2017, the company develops its own, proprietary models at a [renewable-powered data center in Sweden](https://www.deepl.com/en/blog/sustainable-energy-ecodatacenter), deliberately relying on [acquiring high-quality data](https://www.deepl.com/en/blog/how-does-deepl-work) rather than matching the training-data volume Google built up over years of web crawling. DeepL is more than a European AI success story — it [has outperformed Google Translate in accuracy assessments](https://www.weglot.com/guides/deepl-vs-google-translate) — and it made GDPR compliance, along with processing customer data on its own servers in Germany and Iceland, a core part of its public narrative, and a main selling point for privacy and sovereignty-conscious users.

That was true until April 2026, when the Cologne-based company informed its paying customers that it was entering a partnership with Amazon Web Services (AWS) and would no longer process data exclusively on its own servers. This announcement was publicly [perceived](https://www.theguardian.com/technology/2026/may/07/europe-ai-translation-industry-deepl-partnering-us-firms) as a deliberate decision and, at least implicitly, as a betrayal of the company’s commitment to Europe.

From a strategic perspective, it might seem puzzling: Why would DeepL, a company that has made sovereignty its key selling point, end up partnering with AWS, one of the (perceived) three horsemen of Big Tech?

In this piece, we argue why European AI Sovereignty is intricately connected to its existing dependence on three US cloud providers: Amazon, Microsoft, and Google.

As a result, each of Europe's attempts to build its way out risks deepening the very dependence it aims to cure. By boosting demand for AI, especially at the frontier, it also boosts demand for proprietary models bundled with the dominant cloud providers. By building gigafactories, it trains models that then run on hyperscaler infrastructure. And by building its own compute for inference, it risks subsidizing capacity for the leading US AI firms, the only customers large enough to fill it.

## Hyperscalers own the distribution channels

Contrary to public opinion, DeepL’s decision can be understood through the brutal, structural reality of a highly concentrated global AI stack: DeepL’s enterprise customers (think multinationals) want the same service everywhere. AWS operates globally and can provide low-latency, real-time performance that no European cloud providers can match. Especially as the company is [moving](https://www.deepl.com/en/press-release/deepl-unveils-real-time-spoken-translation-breaking-the-next-language-barrier-with-voice-to-voice) to real-time voice translation, the feasibility of serving AI models globally from a data center in Southern [Sweden](https://www.deepl.com/en/blog/sustainable-energy-ecodatacenter) has become unfeasible. For an ambitious company with an IPO lined up for this year, loading the balance sheet with debt to facilitate its own data center buildout in a historically tight market would likely have faced resistance. Lastly, given the business need to compete with Google Translate's ubiquitous presence, access to AWS's end user market and distribution channels likely drove the decision: Once DeepL is listed on AWS Marketplace, enterprises can acquire, deploy and manage DeepL directly within their existing AWS infrastructure through a trusted procurement platform.

All of these factors point to the pervasive monopolies of the global computational infrastructure that pull European companies into their orbits, rather than the companies’ commitment to Europe.

### Training is on-off, inference is forever

Europe's AI industrial strategy since 2025 has been built around expanding the continent’s ability to train frontier models: centralized, frontier-scale training capacity designed to train, post-train, and evaluate the most complex models. This requires highly specialized compute infrastructure, equipped with (often Nvidia’s) latest AI chips. This framing is politically convenient, as it enables the leveraging and pivoting of existing public high-performance computing clusters (EuroHPC) towards the AI race. Recent AI Factories and Gigafactories are descendants of these initiatives, now facing [headwinds](https://www.euractiv.com/news/an-inside-look-at-the-eus-push-to-build-ai-gigafactories/) due to emerging funding gaps, elusive demand and difficulties in governance.

But even if these questions were solved, a more serious problem looms – widespread AI adoption doesn't automatically generate demand for one-off gigantic training. It generates demand for serving inference: responding to individual user requests one at a time, as they arrive, with low latency and high availability, like a user typing into a chatbot and expecting an immediate answer. Inference also requires high-capacity (though not the latest) GPUs, but is a fundamentally different kind of infrastructure than training. It is distributed, elastic, close to users, rather than centralized and connected. This leads to what we have [elsewhere](https://collections.fes.de/publikationen/id/1976749) called **‘handover blindness’** — the tendency to fixate on training runs that are conducted on public computational clusters while ignoring the private compute ecosystem in which those models will eventually live and produce value.

## Why does mainstream demand for AI products benefit hyperscalers

Now, the obvious question for European policymakers is how to ensure that models run on European cloud infrastructure. There are three reasons why even a huge demand for AI inference doesn’t mean that this demand can (currently) benefit European providers.

#### Proprietary models on hyperscaler infrastructure

What is worth reiterating for a policy audience is that AI models come in two types, and the difference decides who is allowed to run them. With an open-weight model, the developer publishes the model itself for download, so anyone (i.e., a startup, a university, a European cloud provider) can run a copy on their own infrastructure. Alibaba’s Qwen, Meta's Llama and France's Mistral are open-weight. The most capable models remain proprietary: Anthropic's Claude, OpenAI's GPT, Google's Gemini, even as open-weight models like DeepSeek and Qwen have caught up with the frontier tier.

Proprietary model makers distribute their models on the cloud providers they depend on for capital and compute – Amazon AWS, Microsoft Azure, and Google Cloud – largely bypassing European providers. [SAP’s “sovereign” OpenAI for Germany](https://openai.com/de-DE/global-affairs/openai-for-germany/), for instance, also runs on Microsoft’s Azure cloud. This is also due to the fact that AWS, Microsoft, and Google Cloud have struck circular spending partnerships with the largest AI labs, to give them discounted computing costs (in exchange for either guaranteed generous or ownership stakes). In a highly concentrated AI market, where most demand is for proprietary AI models, more AI adoption means more demand for models run on hyperscale infrastructure. This creates a feedback loop: the money and data received from run models can be used to train the next generation of models.

#### The chicken-and-egg problem for EU cloud

All this puts European cloud providers in a bind. As they are not able to offer proprietary frontier models, they're left serving open-weight models. However, the largest open-weight models are very expensive to run, as they require providers to reserve specialized GPUs for that workload alone. Europe's main cloud providers have started offering large open-weight AI models, but mostly older or compressed versions, and usually not the latest. The clearest case is IONOS, whose largest model, Llama 3.1 405B, last led the field in mid-2024. Scaleway is furthest ahead, offering a model that was near the frontier in late 2025. Across all of them, the genuine cutting-edge open models of 2026 are still largely unavailable. (Accurate at the time of publishing; these catalogs change quickly.)

The hyperscalers AWS, Google and Microsoft already own their GPU fleets, which they bought for training and running the proprietary models they serve to their enormous, existing and captured customer base. As a result, their risk of building inference capacity is low. In the worst case, the company can spend the compute on serving their internal needs. A European competitor has to build the fleet from scratch and carry the risk of it sitting idle until demand arrives.

That's the chicken-and-egg problem, and the reason every European cloud provider that offers AI as a service focuses on smaller and medium-sized open-weight models. The choice is constrained on two ends: open-weight because the frontier proprietary models simply aren't available to host on someone else's infrastructure, and smaller because such models have a far lighter memory footprint and can be served on fewer GPUs and other specialized chips needed for inference. All of this is shrinking the fleet you have to bet on before demand materializes. But at the same time, the lack of competitive models is seen as a problem.

#### No open weight demand, no frontier serving in Europe

There is simply no demand (yet) that justifies the investment required to serve frontier models at scale. This also explains why European initiatives that are designed to expand (public) compute for inference end up partnering with large AI companies as anchor clients, as Leevi and Boxi have written in the case of Italy’s Apto data center - the only data center investment currently in the infrastructure portfolio of the European Investment Fund (EIF)

The only private actor that currently has a strategic incentive to diversify inference compute in Europe (and globally) is Nvidia. Its problem is concentration: a handful of US firms account for the bulk of its data-center demand, and those same firms — Microsoft, Amazon, Google, Meta — have each developed their own chips, predominantly for inference serving, but increasingly also for frontier training. That is precisely why Nvidia has had a [strategic](https://collections.fes.de/publikationen/search?operation=searchRetrieve&query=bib.personalName%3D%22Saari%2C%20Leevi%22%20and%20vl.domain%3Dfesps%20sortBy%20vl.date%2Fdesc%20sortBy%20vl.releasetime%2Fdesc) incentive to [support](https://www.theverge.com/ai-artificial-intelligence/822011/coreweave-debt-data-center-ai) a class of so-called neoclouds, AI-specialized compute providers, in Europe. Dutch [Nebius](https://nebius.com/newsroom/nvidia-and-nebius-partner-to-scale-full-stack-ai-cloud) and UK [NScale](https://www.cnbc.com/2025/09/25/nvidia-backed-uk-ai-firm-nscale-raises-1point1-billion-funding-round.html) are notable examples, with Mistral's expansion into computing infrastructure as an emerging competitor in this space. Through investing in companies, providing priority access to the latest chips, and guaranteeing demand through binding purchase commitments known as offtake [agreements](https://www.kkr.com/insights/ai-infrastructure#:~:text=demand.%20%C2%A0-,Data%20Centers%20Are%20Typically,capex%20at%20about%2010%.,-Fast), Nvidia entrenches itself as the computational infrastructure and diversifies its buyer base. However, even many of these Nvidia-backstopped computing providers [have](https://nebius.com/newsroom/nebius-signs-new-ai-infrastructure-agreement-with-meta) [become](https://www.nscale.com/press-releases/nscale-microsoft-norway) suppliers of compute for the American tech in search of a sufficiently high demand for their expensive hardware.

## What Europe gets wrong about AI and the cloud

The reality of the market clashes with three key assumptions behind Europe’s AI industrial policy strategy. From the [EU AI Continent Action Plan](https://euaipolicymonitor.substack.com/p/issue-9-the-eu-ai-continent-action) to its [Apply AI Strategy](https://euaipolicymonitor.substack.com/p/eu-launches-strategy-to-foster-sovereign), the focus has primarily been on (moderately funded) attempts at building compute for frontier model training and boosting AI adoption. This focus has been based on the following assumptions:

- That investing in compute for frontier-model training and European model makers will automatically lead to less dependency on dominant firms;
- That European AI companies can make a conscious choice to avoid US hyperscalers;
- Perhaps, most importantly, that cloud is a generic capacity for which there is a generic demand and supply.

The last assumption in particular is a gaping hole in the proposed Cloud and AI Development Act (CADA), Europe’s latest legislative proposal aimed at tripling the continent’s cloud capacity, while ensuring a small fraction of public sector demand goes to European providers. But that ignores that there are different supply and demand logics behind different cloud services. European cloud providers vary widely: Germany’s Hetzner, for instance, is very competitive on price, with a strong developer following and dedicated GPU servers, but doesn’t offer an "AI-as-a-Service" (AIaaS) platform with pre-built APIs for models. France's Scaleway, for instance, runs a genuine managed-inference / model-as-a-service layer, not just GPU rental, yet still lacks AWS’s global scale and distribution channels.

Even its flagship customer, Mistral, is now building its own infrastructure with Nvidia support instead of scaling on Scaleway. Schwarz Digits, meanwhile, the digital arm of Schwarz Group, the retail conglomerate behind Lidl, wants to become a European hyperscaler.

Demand, too, is not only for raw compute and storage, but for the higher-level services bundled with them: the managed services, as well as the surrounding ecosystem and tooling. Increasingly, demand for cloud services includes demand for proprietary AI models. And much of this “demand” is much less of a fungible consumer choice than the result of contractual lock-ins and other practices currently under [investigation](https://www.reuters.com/sustainability/boards-policy-regulation/european-commission-probes-cloud-computing-services-by-amazon-microsoft-2025-11-18/) by [competition authorities](https://www.bloomberg.com/news/articles/2026-02-13/ftc-ratchets-up-microsoft-probe-queries-rivals-on-cloud-ai). As a result, even under the perfect interoperability conditions, switching may not always be feasible.

## Europe’s uncomfortable choice ahead

As we have seen in the response to DeepL’s choice to partner with AWS, there’s a tendency to misread a structural pull as a moral choice. No European provider could have offered what DeepL needed. But the conclusion to draw from this is not that AWS simply offers a better product. By controlling the distribution and the demand (as well as locking in existing consumers), the hyperscalers can shape the strategies of actors downstream.

Europe’s dependence on three US cloud providers is now widely understood in EU policy debates, and so is Europe’s dependence on a small number of US companies for access to large-scale AI models.

What remains much less understood is how cloud concentration and AI dependence relate to each other: By boosting generic demand for AI (especially at the frontier), Europe risks boosting demand for proprietary models that come bundled with dominant cloud providers. By building gigafactories, Europe risks training models that then run on hyperscaler infrastructure. And even by building European compute for inference, Europe risks subsidizing infrastructure for the leading US labs, the only customers with enough demand to fill it.

AI sovereignty is not separate from the existing cloud market dynamics Europe has failed to grapple with. It is intricately connected in ways that simply boosting supply and demand separately can’t solve.

It’s not all doom and gloom, but the reality of the AI market leaves policymakers with some uncomfortable choices. We will discuss these in the next piece of this series.

[![](https://cdn.sanity.io/images/3tzzh18d/production/2db4eb18abdb6c63e8aa451a18cc308c2ba97d6c-1200x675.png?w=965)](https://www.techpolicy.press/donate)

Support Tech Policy Press

If you've found our work helpful, consider supporting us.[Donate](https://www.techpolicy.press/donate)

## Authors

![](https://cdn.sanity.io/images/3tzzh18d/production/38c4b0607ff1db611819152aa6fec9da50333182-1080x1080.png?fit=max&auto=format)

Frederike Kaltheuner advises governments, funders, and institutions on AI industrial policy, sovereignty, and competition. She is also an advisor at the AI Now Institute. Previously, she was the founding Director of the European AI and Society Fund, Special Adviser to the Vice-President of the Europ...

![](https://cdn.sanity.io/images/3tzzh18d/production/196f8933ae8aa8068360553b03b58bb92b411bdb-1080x1080.png?fit=max&auto=format)

Leevi Saari is a PhD Candidate at the University of Amsterdam and an EU Policy Fellow at AI Now Institute, researching the political economy of AI governance

## Topics

[Artificial Intelligence](https://www.techpolicy.press/topic/artificial-intelligence)

## Related

Perspective

[Europe Can’t Defend Democracy on US Servers](https://www.techpolicy.press/europe-cant-defend-democracy-on-us-servers) October 17, 2025

Perspective

[Can Europe’s Digital Markets Act and Data Act Rein in Cloud Hyperscalers?](https://www.techpolicy.press/can-europes-digital-markets-act-and-data-act-rein-in-cloud-hyperscalers)February 3, 2026

Perspective

[Digital Sovereignty Requires More Than Just European Tech](https://www.techpolicy.press/digital-sovereignty-requires-more-than-european-tech) September 10, 2025

## Recent

News

[Can the United Nations Bring the World Together on AI?](https://www.techpolicy.press/can-the-united-nations-bring-the-world-together-on-ai)July 10, 2026

Analysis

[Breaking Down the Implications of the Landmark Chatrie Ruling](https://www.techpolicy.press/breaking-down-the-implications-of-the-landmark-chatrie-ruling) July 10, 2026

Perspective

[Why Fear Matters in Governing Military AI](https://www.techpolicy.press/why-fear-matters-in-governing-military-ai) July 10, 2026
