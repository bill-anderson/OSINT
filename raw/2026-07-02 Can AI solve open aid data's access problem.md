---
type: source
title: "Can AI solve open aid data’s access problem?"
publisher: Publish What You Fund
url: https://www.publishwhatyoufund.org/2026/07/can-ai-solve-open-aid-datas-access-problem/
author: Elma Jenkins; Alex Tilley
published: 2026-07-02
accessed: 2026-07-12
ingested: 2026-07-12
places: [ETH, XGL]
topics: [data.open, tech.ai, data.statistics]
entities: [[publish-what-you-fund], [international-aid-transparency-initiative], [usaid]]
lens: []
---
<!-- PWYF experiment using an LLM agent to query raw IATI aid data: strong on retrieval (totals within 0.3% of established tools), unreliable on interpretation (hallucinated explanations, missed double-counting, missed UK/FCDO 2025 cuts). Reference-study figures live on [[international-aid-transparency-initiative]]/[[publish-what-you-fund]], NOT concept/place pages. Ethiopia used only as worked example. -->

AI generated image

Extracting insights from data has often been compared to the process of extracting natural resources from the ground – metaphors like ‘mining data’, ‘harvesting insights’ or ‘data scraping’ are often employed in discussion around using data for evidence and analysis, and data has been called the [new oil](https://en.wikipedia.org/wiki/Clive_Humby). The comparison is driven by the high levels of skill needed to store, clean, query, parse and analyse data which has created a bottleneck by limiting its raw use to ‘data intermediaries’. In this article, we explore how raw data can be mined using the latest technology.

### Accessing open aid data

In the world of international aid and development, one of the richest, free data sets available online is the [International Aid Transparency Initiative (IATI)](https://iatistandard.org/en/) data. Since 2011 international aid and development organisations have been on a journey to publish more open and structured data about their work. In that year the UK’s (former) Department for International Development was the first, with publishing rising to over 2,000 agencies in early 2026. There is now 13.7GB of data available – equivalent to approximately 2.4 billion words in plain text.

There have been many [uses of IATI data so far](https://www.publishwhatyoufund.org/why-it-matters/data-use-examples/) including tracking funding flows, mapping aid cuts and analysing aid effectiveness. Some [data access tools](https://iatistandard.org/en/iati-tools-and-resources/) have been built for the general user but these have limitations. To improve accessibility, they apply their own processing and cleaning rules to the data which limits how data can be searched and viewed. In response, Publish What You Fund, the only organisation independently measuring aid transparency, began providing [training on how to access and use the data.](https://www.publishwhatyoufund.org/training/) But using raw IATI data has, until recently, been limited to skilled intermediaries who firstly understand the structure of IATI data and secondly, know how to access and manipulate the raw data.

### The potential of using “Artificial intelligence” with IATI data

However, there is a new technology in town which has the potential to break the entry barrier and allow every-day users to query IATI data directly, whilst also meeting users at their own skill level. So called “artificial intelligence” (AI) offers an opportunity to remove data use barriers and help new and experienced users alike to access data in new ways. Publish What You Fund has been investigating the use of *AI agents* to search and analyse raw IATI data directly.

The scope of AI tools is broad so when using this new technology to access IATI data Publish What You Fund has focussed on a sub-set of AI, specifically Large Language Model (LLM) agents. LLMs are trained on large amounts of data to improve their pattern recognition and thereby perform comprehensive tasks. When using an online LLM chatbot, such as ChatGPT, replies are generally based on secondary sources that have used IATI data for their analysis. Chatbots can also produce programming code that can be used to query the IATI dataset, but these would need to be operationalised by the user themselves. The AI agent adds an extra dimension to the LLM as it is able to read files, edit and run code, and iterate towards a goal.

The quality of the data which LLMs are trained on define the quality of their outputs. There is a strong connection between high-quality open aid data as advocated by Publish What You Fund’s [Aid Transparency Index](https://www.publishwhatyoufund.org/the-index/) – which pushes for open, standardised, machine readable, up-to-date, reliable information – and the success of LLM models. With an AI agent, users can start to ask questions like “Which donors are increasing climate finance in East Africa?”. The agent can then produce and analyse a tailored dataset, providing a synchronised, written response to the question, without the user needing to know the specific structure of IATI data, to interpret IATI code lists or to write any programming code.

### Limitations of AI

While AI tools can play a significant role reducing barriers to entry for data use, there are important limitations. LLMs are not built for accuracy, instead, they are designed to produce the most probable response based on a synthesis of the training data, which creates unique issues when conducting research. In particular:

1. **Hallucinations**: LLMs are renowned for generating false insights
2. **Identifying outside-of-data knowledge gaps**: agents struggle with identifying data incompleteness or errors
3. **Complexity of the data set**: due to the breadth and variety of organisations publishing IATI data, specialist knowledge is required to understand how the data is reported and how it can be interpreted, which may cause issues as the LLMs try and analyse the data.

### A trial run in mining IATI data with an AI agent

To get a sense of how AI agents can use IATI data to answer questions about aid and development activities, Publish What You Fund ran some experiments. We used an LLM agent (Claude Code) to conduct several queries using raw IATI data. We started with a set of tasks:

1. **Calculate the total official development assistance (ODA) disbursed by a specific major bilateral donor in calendar year 2025.** We were aware that the donor’s IATI spending for 2025 was significantly under-reported and wanted to see if the agent would pick this up.
2. **Calculate the total food aid funding to Ethiopia in 2025.** One of the major challenges to producing spending totals using IATI data is the risk of double counting, as the same funds are reported multiple times as they are spent down the delivery chain. We wanted to see whether the agent would pick this issue up.
3. **Provide the full list of funders reporting food aid to Ethiopia in that year.** We felt that this would be a useful and relatively easy task and wanted to see how the agent performed.

The findings from these queries were triangulated against outputs from other data tools including [d-portal](https://d-portal.org/), donor published financial statements, and [OECD DAC](https://data-explorer.oecd.org/vis?lc=en&df%5bds%5d=DcdDisseminateFinalDMZ&df%5bid%5d=DSD_CRS%40DF_CRS&df%5bag%5d=OECD.DCD.FSD&dq=DAC..1000.100._T._T.D.Q._T..&lom=LASTNPERIODS&lo=5&to%5bTIME_PERIOD%5d=false) statistics, to check for consistency and discrepancies, whilst also being wary of the AI-specific issues listed above.

### Summary of findings: strong on data retrieval, weak on interpretation

*More detailed results of the queries are included in the [Annex](#annex) below.*

We were able to successfully configure the AI agent to query raw IATI data through the IATI Datastore API and produce results broadly consistent with existing IATI tools. However, the setup process required technical steps, including installing software, configuring command-line access, and providing API credentials, creating a barrier for non-technical users.

Across the three test queries, the agent demonstrated strong capabilities in retrieving and analysing IATI data, including selecting relevant sector codes, benchmarking results against external sources, and occasionally correcting its own errors. For straightforward calculations, such as total donor ODA, its results closely matched those from established IATI tools.

The main limitation was not data retrieval but interpretation. The agent frequently generated plausible but incorrect explanations for anomalies, missing data, and low funding totals. In several cases it failed to identify the true causes of discrepancies, including incomplete donor reporting, double counting across aid delivery chains, and unusual reporting practices by specific organisations such as the US Agency for International Development (USAID). It also missed important contextual factors, such as reductions in UK aid spending.

While additional prompting often improved the quality of the analysis and enabled the agent to identify issues such as double counting, accurate conclusions depended heavily on user expertise and external validation. Overall, the findings suggest that AI agents can be effective tools for querying and exploring IATI data, but they are not yet reliable as standalone analytical tools and require careful oversight from users with knowledge of aid data and reporting practices.

### Will AI replace data intermediaries?

AI agents present an exciting opportunity to lower the entry barrier to use aid and development spending data. By using a properly instructed AI agent IATI data can be queried directly to produce insights and analysis of development spending and activity.

It was promising that the financial figures from the live queries were correct as these were based on the raw data, thereby offsetting the issue of hallucinations. However, it was evident specialist knowledge is still required to properly contextualise these figures as the tool could not clean or prepare the data by, for example, removing double counts or identifying where donor’s publishing structure varied from the norm. Therefore, at a basic level the agent was only able to select and analyse the most common data points, informing the user how it ran the query and how it cleaned and prepared the data.

The agent is likely to run into issues when making explanatory commentary around the data such as causal claims, context, and caveats because this involves drawing on reasoning and training rather than real-time data. The plausible sounding warnings about gaps and quality issues were often inaccurate.

There remains a ‘black box’ element to the analysis which was only uncovered with further prompting and careful interrogation. In particular, prompting the agent to check accuracy and to compare results with other sources helped improve the outputs. Therefore, the agent was not able to contextualise outside-of-data gaps and still required specialist knowledge to create fully accurate searches.

While AI agents can act as powerful research assistants, capable of analysing large quantities of data extremely quickly, knowledge and expertise in the IATI Standard and publishing practices is still required to produce credible findings. If AI models can be further trained in these specific areas, we may reach the stage where non-expert users can use them to make detailed, tailored enquiries and produce accurate results. As these developments unfold, a well-maintained, high-quality dataset will be crucial to ensure high-quality outputs. Development agencies should therefore ensure their data is published, accurate and up to date to avoid users misinterpreting results produced by AI and using incorrect data to make decisions. Publish What You Fund and the Aid Transparency Index will continue to push for more and better data from the leading aid and development organisations.

*The next Aid Transparency Index will be launched in November 2026. We will post further details of the launch and how to participate in future Indexes [here](https://www.publishwhatyoufund.org/the-index/).*

---

### Annex: detailed query results

**Agent calibration**

The first challenge was setting up the agent and directing it to use the raw data. Online LLM tools are unable to query the data directly due to limitations in their ability to run code commands. To overcome this, we installed an LLM agent. In addition, the raw IATI data file is too large to upload to the agent directly, so we had to instruct the agent to query the data using the IATI datastore, which has an API function. This API function allows software to access and query the raw data directly. The set-up for this did not take long but did require the installation of Python programming language and giving the LLM agent access to our computer Command Line. Querying the IATI datastore API also requires a unique key which is generated when a user sets up an API account, so we had to share this key with the LLM agent. While these steps did not require programming expertise, they currently represent a set-up barrier for a non-technical user to use AI to query raw IATI data.

*Query 1: < **Calculate the total ODA disbursed by \[bilateral donor X\] in calendar year 2025** >*

Total IATI spend results from the AI agent were within 0.3% of results from other IATI search tools. The small variance is attributable to differences in currency conversion methodology demonstrating that AI querying of raw IATI data produces largely consistent results with established IATI tools. The agent was also able to identify and correct errors mid-query. For example, the agent started querying the wrong bilateral donor with a similar IATI ID but was able to correct itself without human intervention mid-search.

The agent also included caveats for its answers. It identified and flagged the low total spend and tried to explain the reason for this. In doing so it fabricated plausible sounding but logically flawed explanations. It cited differences caused by multilateral contributions reporting, in-donor refugee processing costs, and other finance flows being systematically absent.

With further prompting the agent did benchmark its figures against external (non-IATI) sources (in this case the OECD-DAC CRS data and official statistics published by the donor). However, it was unable to identify the real reason for undercount, that the bilateral donors’ IATI data only captured 50–65% of the true ODA. This suggests that AI tools cannot easily overcome the issue of not being able to identify data incompleteness errors without prompting and good external knowledge by the user.

*Query 2: <* **Calculate the total food aid funding to Ethiopia in 2025** *\>*

For this query the agent had a more difficult task of looking at several agencies’ financial flows across the aid chain. It was able to identify the correct sector codes (72040-emergency food aid; 52010-food security) to use and automatically picked out some top donors per sector. It also suggested how broader food aid sectors (31163 livestock, 31120 agricultural development) could impact the totals.

It attempted to identify the double counting issue but initially drew incorrect conclusions in its caveats. It reasoned an incorrect undercount of the total spend by claiming that funds from top-of-aid-chain donors were missing due to their contributions to multilaterals like the World Food Programme not being included in the data. In fact, adding these funds to the total would cause double counting.

Further prompting led the agent to better identify how the aid flows work and what to exclude. Eventually, after an additional prompt, the agent identified the double counting issue correctly:

> **\>Are there any other double count issues in your totals?**
> 
> Yes — there’s a real double-counting risk I didn’t flag, and it affects the Ethiopia food aid total.
> 
> *The implementing partner chain problem*
> 
> In IATI, multiple organisations in the same funding chain can each publish their own transactions, all tagged to Ethiopia with the same sector code. For example:
> 
> USAID → World Vision → local partner → beneficiary
> 
> ↓ ↓
> 
> Reports Reports
> 
> to IATI to IATI
> 
> (Ethiopia, (Ethiopia,
> 
> 72040) 72040)
> 
> Both transactions could appear in our $456M total — the same money counted twice (or more if there are more links in the chain).
> 
> Looking at our actual results, you can see this is likely happening at the small end — Plan International Netherlands appears under both sector codes alongside their government funders (Netherlands MFA is also in the data), and World Vision UK appears too. Those amounts are tiny (~$245K combined) but the same logic applies to the larger donors.
> 
> The more concerning case is the bigger numbers:
> 
> Does Germany’s $71.3M (BMZ) include money that GIZ or KfW also report separately in IATI?
> 
> Does USAID’s $43.5M include flows that NGO implementers also report?
> 
> I genuinely don’t know — I’d need to query who the receiver organisations are on those transactions.

In this case, a non-technical user making the query would have been given confidently incorrect answers to the query. We were only able to reach correct answers by making additional queries based on our expertise in analysing IATI data. It is worth noting here that other IATI data search tools fall into the same issue and that, without specialist knowledge of IATI data, total outputs are generally not flagged as double counted. Calculating totals across reporting agencies is challenging and users must draw their own conclusions carefully in all cases. The issue with the AI agent is the risk that it provides incorrect but plausible sounding analysis around the figures it produces.

The agent also made other suggestions for improvement such as querying other sources to support its search (in this case WFP’s own data portal) and that a correction was needed for the initial exchange rates used, as these were not from real sources.

*Query 3: <* **Provide the full list of funders reporting food aid to Ethiopia in that year** >

For this query the agent produced a partially complete funder list with totals and, when prompted to triangulate against other source results, was able to highlight major absences including the USAID and UK, FCDO. Again, the agent fabricated explanations for the errors. The agent identified that USAID was missing when comparing results from other IATI search tools such as D-portal. Despite this, it still reasoned that USAID was not identified because it does not use the standard sector codes, which is incorrect. USAID has an unusual but legitimate approach to identifying sectors – it uses sector codes at the transaction rather than activity level. These can be missed if the user is not aware of this idiosyncrasy. The AI agent missed this and couldn’t identify it as the cause for missing USAID data.

With respect to the FCDO, the agent identified its absence from the dataset when 2025 figures were benchmarked against historical FCDO funding trends, which have consistently reflected significant contributions to Ethiopian food aid. It reasoned that the use of multilateral bodies to fund food security was obscuring its presence in the search results. In fact, UK aid cuts meant that food aid to Ethiopia dropped dramatically in 2025, which the agent did not identify.