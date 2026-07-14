---
type: source
title: "Uncovering the Humanitarian and Nonprofit Sector's AI Governance Crisis"
publisher: Tech Policy Press
url: https://www.techpolicy.press/uncovering-the-humanitarian-and-nonprofit-sectors-ai-governance-crisis/
author: Danai Nhando
published: 2026-07-09
accessed: 2026-07-12
ingested: 2026-07-12
places: [XGL, XSS]
topics: [gov.protect, tech.ai, dpi.id, include.access]
entities: []
lens: [colonialism]
---

<!-- TPP analysis of the humanitarian/nonprofit AI-governance gap: WFP Gaza breach (~600k households' data, incl. IDs/biometrics); 93% of 2,539 aid workers (144 countries, 75% in SSA/MENA/AsiaPac) use AI but only 22% have formal policies; UNHCR (19m people, 15.8m facial images) / WFP (31m people, 59 countries) as extreme biometric-data custodians; the 'unconsenting beneficiary' consent problem. gov.protect + dpi.id (biometrics). -->

Danai Nhando /

Palestinians carry food boxes delivered by the World Food Programme (WFP) in Khan Younis, southern Gaza Strip, Sunday, Nov. 2, 2025. (AP Photo/Jehad Alshrafi)[Republish](https://www.techpolicy.press/republish)

In early June, in what may be the [largest-known breach](https://www.thenewhumanitarian.org/news/2026/06/02/data-600000-gaza-households-exposed-wfp-cyber-attack) of humanitarian beneficiary data to date, a [cyberattack](https://opsecinsider.com/wfp-gaza-data-breach/) against the World Food Programme (WFP) exposed the personal information of roughly 600,000 households in Gaza, including names, identification numbers, phone numbers, and location data belonging to people seeking food assistance. For a population already enduring war, displacement, and acute vulnerability, it is a damning indictment of how humanitarian organizations collect and protect sensitive data and of who pays the price when they fail, the very people they exist to protect.

The incident arrives at a moment when humanitarian organizations are rapidly embracing AI, often without the governance structures needed to manage their risks. Across the humanitarian sector, aid workers are adopting AI tools faster than their organizations can govern them, and red flags should be flying. The first global [study](https://www.humanitarianleadershipacademy.org/resources/report-artificial-intelligence-in-the-humanitarian-sector-mapping-current-practice-and-future-potential/) of AI use in the field surveyed 2,539 aid workers across 144 countries and found that 93% have used AI tools, 70% rely on them weekly or daily, and 69% specifically use commercial products like ChatGPT, almost always chosen on their own initiative rather than provided by their employer. Yet only 22% work in organizations with formal AI policies. With 75% of respondents based in Sub Saharan Africa, MENA, and Asia Pacific, the frontlines of humanitarian response, the findings suggest that AI is becoming embedded in humanitarian operations long before the governance structures needed to ensure its safe and responsible use are in place.

The broader nonprofit sector is no better, with [studies](https://dataconomy.com/2025/04/08/82-percent-of-nonprofits-use-ai-almost-none-are-regulating-it/) showing that 82% of nonprofits report using AI, while fewer than 10% have formal policies governing its use, despite widespread adoption. This gap, described as the [humanitarian AI paradox](https://www.datafriendlyspace.org/resources/humanitarian-ai-survey-report), means that AI adoption is rapidly outpacing governance across these sectors. When governance fails in these sectors, the people who pay the price are the ones already fighting for their lives, the very people these organizations exist to protect with no say in any of it.

## The unconsenting beneficiary at the center of this AI governance crisis

That beneficiary sits behind every ungoverned AI tool in a humanitarian or nonprofit setting, never consenting to having their data processed by AI. Humanitarian action has long been based on the collection of timely and reliable information on people in need. Refugees don't negotiate the terms of their data collection. Neither do famine survivors, trafficking victims, or displaced children. [Beneficiaries](https://www.cambridge.org/core/books/handbook-on-data-protection-in-humanitarian-action/legal-bases-for-personal-data-processing/DF71FB331569DA5B83B60DC925017278) have no meaningful possibility to give consent to data collection, because they are in an extremely vulnerable position and have no genuine choice. [Consent](https://www.devex.com/news/is-data-consent-in-humanitarian-contexts-too-much-to-ask-93133) plays no role because often the crisis the beneficiaries are facing means there is no meaningful choice not to participate. The [bind](https://dai-global-digital.com/beyond-consent-why-seeking-consent-for-data-processing-can-be-problematic-in-humanitarian-and-development-contexts.html) is that a person who has no other option but to consent to receive life-saving services cannot provide valid consent. Layer AI governance gaps onto that dynamic, and the risk compounds.

To put into perspective the magnitude of data processed in these sectors, [UNHCR](https://www.biometricupdate.com/202410/unhcr-adopting-biometric-face-image-quality-standard-for-refugee-id-documents) registers over 19 million people, including 15.8 million facial photographs, while the [WFP](https://executiveboard.wfp.org/document_download/WFP-0000099987) holds records on more than 31 million people across 59 countries, records that, as the recent Gaza breach makes plain, carry life-altering consequences when left inadequately protected. The organizations entrusted with safeguarding the world's most vulnerable people cannot afford weak or fragmented AI governance, nor can they risk becoming inadequate stewards of the data placed in their care.

## How AI enters without anyone deciding it should and what it produces

By the time organizations recognize the extent of AI use within their operations, it has already reshaped workflows, informed consequential decisions, and processed data belonging to some of the world's most vulnerable people all without audit trails, risk assessments, or meaningful accountability. Each entry point carries its own failure mode.

1. **Staff ‘shadow AI’ use exposes sensitive data:** Individual workers use and deploy AI tools without organizational knowledge or approval. In December 2023, it came to light that a caseworker at Victoria, [Australia's Department of Families, Fairness and Housing](https://www.theguardian.com/australia-news/2024/sep/26/victoria-child-protection-chat-gpt-ban-ovic-report-ntwnfb) used ChatGPT to draft a Protection Application Report for the Children's Court, entering names, risk assessments, and case details into a consumer AI tool. The resulting report contained inaccurate information that downplayed risks to the child, using language inconsistent with departmental guidelines. The data was transferred to OpenAI, an overseas company, outside government control, violating privacy law. Investigators found the worker may have used ChatGPT in up to 100 child protection cases over a year. Meanwhile, nearly 900 department employees, 13% of the workforce, had accessed ChatGPT in the latter half of 2023 with no training or ethical guidance.
2. **Reliance on free AI tools:** [Access Now](https://www.accessnow.org/wp-content/uploads/2024/02/Mapping-humanitarian-tech-February-2024.pdf) identifies a largely overlooked dimension of shadow AI: the tool-tier problem Many smaller humanitarian organizations, particularly in the Global Majority, rely on free or low-cost AI services that lack the privacy protections, governance controls, and cybersecurity guarantees available in enterprise offerings. Resource constraints shape access to safer AI infrastructure and those serving the world's most vulnerable populations may be disproportionately exposed to the risks associated with less protected AI systems.
3. **Formal procurement**: Tools procured without internal AI-specific risk criteria and audit obligations. In late 2025, investigators raised concerns about the Irish Department of Justice's deployment of [AI chatbots](https://www.iccl.ie/news/irish-department-of-justice-chatbots-mislead-people-seeking-information/), including one that provided information to asylum seekers about legal procedures. Critics argued that the systems were introduced through an existing technology contract rather than a dedicated [AI procurement and governance process](https://www.iccl.ie/news/irish-department-of-justice-chatbots-mislead-people-seeking-information/). Independent testing found that the chatbots could generate inaccurate or misleading information about sensitive legal matters. The case has become a prominent example in debates about whether procurement and contractual compliance alone constitute adequate oversight of high-risk AI systems.
4. **Software licensing:** In December 2023, Dropbox switched on a "third-party AI" setting by default for paid users enrolled in its AI alpha, sending file content to [OpenAI](https://tech.co/news/stop-dropbox-sharing-data-openai) when AI features were used, and some users said they didn't know they'd been enrolled. The default was switched off in advance for [Canada, the UK, and the EU](https://www.computing.co.uk/news/4157118/dropbox-backlash-openai-sharing), where data protection law made opt-out-by-default harder to defend, leaving everywhere else, including most of the Global South, opted in unless someone found the toggle. That carve-out left the weakest regulatory backstop exactly where humanitarian and non-profit organizations, often without a dedicated privacy team, handle some of the most sensitive data that exists.
5. **Partnership arrangements**: Implementing partners and donors to introduce AI-enabled tools, transferring model risk to receiving organizations that had no role in their selection or design. In 2024, OpenAI was a nonprofit with a humanitarian partnership with the International Rescue Committee, building AI tools for children in crisis zones. By early 2026, it had become a [public benefit corporation](https://startupfortune.com/openai-converts-to-a-public-benefit-corporation-and-moves-closer-to-a-conventional-tech-giant/) with a $200 million US Defense Department contract and a partnership with Anduril, which builds autonomous drones and weapons systems for the military. The organization that chose OpenAI to serve displaced children in 2024 did not choose this, it inherited it. Standard vendor due diligence has no mechanism to catch a transformation of this kind.
6. **Vendor breaches**: Vendors embed AI into existing platforms through routine updates with no obligation to notify the contracting organization. In [one of the largest breaches ever against a humanitarian organization](https://thesoufancenter.org/intelbrief-2022-march-3/), in January 2022, the International Committee of the Red Cross was attacked through a third-party vendor that had passed every standard review. The entry point was an [unpatched vulnerability in a Zoho authentication tool](https://www.upguard.com/blog/how-did-red-cross-get-hacked), exploited undetected for over two months. The breach exposed [confidential data on more than 515,000 highly vulnerable people](https://www.icrc.org/en/document/sophisticated-cyber-attack-targets-red-cross-red-crescent-data-500000-people), conflict-separated families, missing persons, people in detention across 60 societies and forced offline a family reunification program serving 12 people a day. The ICRC had done nearly everything right. It wasn't enough.

## First steps to closing the AI governance crisis

The starting point is knowing what AI is actually in use. Beyond what has been formally adopted, map out all the shadow tools in use including AI-enhanced features embedded in existing platforms, free consumer tools running on staff devices, third-party services operating inside vendor agreements. Most organizations will be surprised by what they find. That mapping exercise is the precondition for knowing what decisions have been made on behalf of beneficiaries without anyone deciding to make them.

From there, the question becomes whether staff are equipped to act on what they find. Technology governance fails without the people who operate it. Organizations must invest in ongoing, role-specific AI literacy that equips staff to recognize AI-generated errors, understand bias risks in automated outputs, challenge vendor claims, and apply organizational values to real-time AI decisions. This is especially urgent for staff working directly with beneficiaries, where AI-influenced decisions carry the highest human stakes. No mapping exercise, no contract clause, and no funder requirement produces safety without staff who understand what responsible AI use looks like in practice.

Vendor contracts are a key gap to close. Most existing agreements were not written with AI in mind. They need provisions specifying that client data cannot be used to train AI models, that material product changes require advance notification, that third-party relationships in the vendor's AI supply chain are disclosed, and that breach notification timelines are legally enforceable. Critically, as the [Access Now procurement report](https://www.accessnow.org/wp-content/uploads/2024/02/Mapping-humanitarian-tech-February-2024.pdf) recommends, vendors should be required to replace opt-out with opt-in as the default for all new algorithmic functionalities, meaning no AI feature is added to an existing system without the client actively approving it. Where vendors decline these terms, that refusal is itself significant information. The [CDAC Network's SAFE AI framework](https://www.cdacnetwork.org/safeai) and the [NetHope Humanitarian AI Code of Conduct](https://nethope.org/toolkits/humanitarian-ai-code-of-conduct/) provide rights-based contractual templates to build from.

Finally, funders must prioritize resource governance alongside adoption. The current incentive structure rewards deployment while underinvesting in oversight, producing precisely the configuration we have. Donors should require AI governance standards as a condition of funding, and include the cost of building those standards within grants. The [November 2025 Joint Statement on AI and the Rights of the Child](https://www.unicef.org/press-releases/joint-statement-ai-rights-child), issued by multiple UN agencies, calls on states and international organizations to adopt child-rights-based governance across all AI systems — a standard that translates directly to the beneficiary populations documented throughout this article. The [UN Working Group on Business and Human Rights](https://www.ohchr.org/en/special-procedures/wg-business) has documented the legislative gaps in rights-respecting AI procurement globally. These frameworks require enforcement infrastructure, not just endorsement.Support Tech Policy Press

If you've found our work helpful, consider supporting us.[Donate](https://www.techpolicy.press/donate)

## Authors

Danai Nhando is an international human rights lawyer, public interest technologist, and AI governance expert. She is a Global Advisor at the Atlantic Council's Freedom and Prosperity Center and AI and New Engagement Strategies Campaign Director at a global non-profit, leading the integration of resp...

## Related

Perspective

[The 'Humanitarian Halo' When Tech Sells One Stack for Aid and War](https://www.techpolicy.press/the-humanitarian-halo-when-tech-companies-sell-the-same-stack-for-aid-and-war) May 8, 2026

[The Democratic Deficit in AI Humanitarian Systems: Why Community Participation Can't Wait](https://www.techpolicy.press/the-democratic-deficit-in-ai-humanitarian-systems-why-community-participation-cant-wait) November 13, 2024

Perspective

[Artificial Intelligence and the Orchestration of Palestinian Life and Death](https://www.techpolicy.press/artificial-intelligence-and-the-orchestration-of-palestinian-life-and-death) August 12, 2025

## Recent

Podcast

[Is Europe Getting AI Wrong?](https://www.techpolicy.press/is-europe-getting-ai-wrong)July 12, 2026

Perspective

[Labor Power and the Role of Subcontracting in the AI Economy](https://www.techpolicy.press/labor-power-and-the-role-of-subcontracting-in-the-ai-economy) July 10, 2026

News

[Can the United Nations Bring the World Together on AI?](https://www.techpolicy.press/can-the-united-nations-bring-the-world-together-on-ai)July 10, 2026