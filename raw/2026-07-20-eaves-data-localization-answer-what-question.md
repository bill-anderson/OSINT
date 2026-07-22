---
type: source
title: "Data Localization is the Answer. What Was the Question?"
url: https://eaves.ca/2026/07/20/data-localization-is-the-answer-what-was-the-question/
publisher: eaves.ca
author: David Eaves
published: 2026-07-20
date_precision: day
date_source: source
places: [XGL]
topics: [infra.store, gov.protect, gov.policy, infra.cybersec]
entities: [[cloud-act], [amazon-web-services], [microsoft]]
lens: [sovereignty]
ingested: 2026-07-21
retrieved: 2026-07-21
body_completeness: full
---

*Admissibility note (ingest 2026-07-21): **expert third-party analysis, cited by author, not
evidence.** David Eaves (UCL Institute for Innovation and Public Purpose) writes here in a personal
analytical capacity, summarising a Chatham House talk. Factual claims it makes — the September 2025
South Korea NIRS Daejeon fire, Estonia's data embassies, Ukraine's hyperscaler adoption — are
**cited to this piece and not independently held**; trace them to primaries before relying on them.
The `published` date is taken from the article URL path (`/2026/07/20/`), which the clipper's
frontmatter contradicts with 2026-07-21. Non-Africa-specific, hence `XGL`.*

# Data Localization is the Answer. What Was the Question? | eaves.ca

> ## Excerpt
> Last week I gave a talk at Chatham House for an event on ‘Is Data Localisation the Answer to Data Sovereignty? Location, Control and the Architecture of Trust’, organised in collaboration with their D

---
_Last week I gave a talk at Chatham House for an event on ‘_Is Data Localisation the Answer to Data Sovereignty? Location, Control and the Architecture of Trust’,_  organised in collaboration with their Digital Ambassadors Forum. I really enjoyed the conversation and questions and had a number of people ask for slides and more details so have put together the following summary._

___

Four years ago I had the privilege of hosting digital transformation leaders from around the world at Rockefeller’s Bellagio conference centre. In the room we had senior officials from governments that represented at least 2 billion people. Much of our conversation focused on digital public infrastructure (then…a new topic) but at one point the conversation shifted to data and sovereignty. Most leaders in the room insisted that yes, data mattered and, obviously, data localization was the answer. Everyone, that is, except the Ukrainian in the room. We’ll come back to that.

If data localization is the solution… what problem is it solving? What is the nature of the “data sovereignty” we think is a threat? My experience is that data’s location says very little about sovereignty… and the reduction of local vs abroad on where data is stored both presupposes some fairly pre-digital notions of sovereignty and ignores a lot of options and tradeoffs that could befuddle a policy maker. If you’re too busy to read any of this post, this first slide sums up much of what I’m getting at. On one axis is a range of models for storing data. Some are “local,” others are not. On the other axis is a range of threats one should be thinking about when storing data (this list isn’t even exhaustive). The resulting matrix (which would be unique for any country or company) tries to lay out the real tradeoffs between storage models and risk types. But more than anything else it suggests localization is not a magic cure-all for one’s policy or economic woes.

[![](https://eaves.ca/wp-content/uploads/2026/07/chattham-house-data-localization.020.jpeg?w=625)](https://eaves.ca/wp-content/uploads/2026/07/chattham-house-data-localization.020.jpeg)

I think sovereignty (or as I prefer, agency) is best achieved via adopting multiple models to provide coverage against a range of threats. This also has tradeoffs, and, to be most effective suggests governments should be trying to shape the cloud market into being more interoperable. This argument – which I refer to as a “[commoditized stack](https://www.techpolicy.press/the-path-to-a-sovereign-tech-stack-is-via-a-commodified-tech-stack/)” – offers a more promising path to agency than anything currently on the table.

## There is Both New Infrastructure and a Genuine Problem

First, some context. Any conversation about data, data localization and/or digital sovereignty has to contend with _how_ and _where_ data is stored. This quickly gets you to a topic I’m deeply interested in: the cloud. I [recently presented to Europe’s finance ministers](https://www.consilium.europa.eu/en/meetings/eurogroup/2026/06/11/) (the memo I wrote for them [is published on the Eurogroup’s website](https://www.consilium.europa.eu/en/meetings/eurogroup/2026/06/11/)) and I first sought to impress on them that “the cloud” is 21st-century infrastructure in exactly the way water systems, railways, electricity and telecoms were essential infrastructures in previous centuries.

[![](https://eaves.ca/wp-content/uploads/2026/07/chattham-house-data-localization.003.jpeg?w=625)](https://eaves.ca/wp-content/uploads/2026/07/chattham-house-data-localization.003.jpeg)

The cloud – which at a minimum is the provisioning of storage and compute at scale – is now critical to any modern economy. It is a core input into services ranging from food delivery to government benefits to banking. Happily, most people get this, and it is a reason why concern over who controls data has become so important.

## Whose Data are we Talking About?

There’s a second question hiding inside the “data localization” question. When a government says “our data must be localized,” which data does it mean? Its own — the tax records, health files and registries it holds in trust for citizens? Or the data generated by the entire economy — every bank, hospital, startup and grocery chain?

These are radically different problems. The first is, in many ways, a government procurement question. This is in part because states carry a special custodial duty. Citizens cannot opt out of giving the state their data. But it is also a function of the fact that states are expected to be actors of last resort, capable of functioning under even the most brutal circumstances – such as a state of war.

The second is industrial policy. Requiring the whole economy to localize means repricing compute and storage for every firm in the country. Most localization debates slide between “the government’s data” and “the nation’s data” without noticing they have changed the subject. For this piece, let’s assume we are just talking about government data, but you can easily expand this to the whole economy and see how the implications and tradeoffs become more daunting.

## What is the Threat Model?

To return to our title, if data localization is the solution, what is the problem? Here policy makers would benefit from a little [threat modeling](https://en.wikipedia.org/wiki/Threat_model), to understand what the threats (and potentially opportunities) data localization is seeking to answer.

At present there is a threat that many policy makers have in mind. In most European and OECD countries (and beyond), many people, when pressed, land on the same answer: **lawful access** (or unlawful access, depending on your point of view). Specifically, they are worried about the CLOUD Act, the 2018 US law that lets American authorities compel US providers (like AWS, Azure or Google Cloud) to hand over data stored on servers they manage, _regardless of where they are located around the world_. Somewhat related, people also worry about a **denial of access**, whereby, via legal means, a government might be denied access to its own data.

I too find the CLOUD Act deeply, deeply problematic, and an excellent reason why one should think carefully about becoming reliant on US (or Chinese) cloud providers. But it isn’t the _only_ threat to a government’s data. Here, for example, is a fuller list:

[![](https://eaves.ca/wp-content/uploads/2026/07/screenshot-2026-07-09-at-23.29.22.png?w=625)](https://eaves.ca/wp-content/uploads/2026/07/screenshot-2026-07-09-at-23.29.22.png)

Lawful (or unlawful) access remains a threat. And there are others:

-   Access denial: not someone reading your data, but someone simply turning the servers off, or severing connectivity to them, because they can.
-   Cyber attack: an actor stealing or ransomwaring your data.
-   Data colonialism: an actor exporting data outside your jurisdiction to be exploited by foreign firm(s).
-   Lack of capacity: an inability to use or protect your own data.
-   Competitiveness: when storing, managing and accessing your data is simply more expensive than in other jurisdictions, leaving you at a competitive disadvantage.
-   Act of God: Your ability to access your data (particularly if stored in a single location or region) is at risk from a natural disaster.

Any one of these can compromise data integrity or security – which would suggest it is core to discussions about “data sovereignty” – but almost none of these figure in the political discourse. Everyone focuses on the lawful access and access denial problem. (To be fair, I find most engineers and business people are thinking about _all_ these threats; it’s mostly policy people zeroing in on the first two.) But if you start to think about various possible threats, solutions become trickier as each threat points in a different direction.

### Where does data actually live?

Once you’ve wrapped your head around the numerous ways the universe might conspire to destroy your data, you have to reconcile that with the options you have to store your data. There are several and one can somewhat imperfectly align them along an axis of “foreign controlled” to “locally controlled.”

[![](https://eaves.ca/wp-content/uploads/2026/07/chattham-house-data-localization.014.jpeg?w=625)](https://eaves.ca/wp-content/uploads/2026/07/chattham-house-data-localization.014.jpeg)

At one end you have your classic hyperscaler model, a US firm offering almost limitless storage, with high redundancy (as well as a range of other platform services) all subject to the CLOUD Act, with your data primarily stored in a data centre in Virginia. At the other end, a government-owned data centre you nominally control entirely (we could debate the provenance of the technology inside it, but set that aside). In between sit a range of actors we rarely bother to distinguish: a firm headquartered in your country that hosts your data in a datacentre located abroad; a hyperscaler’s local data centre on your soil (but still subject to the CLOUD Act!); a domestic joint venture running on licensed foreign technology; a domestic firm hosting domestically. Very different rules apply to each.

In addition, what is foreign controlled and locally controlled has little alignment with data localization. Indeed the localization debate flattens them into “local good, foreign bad” which, depending on your threat model, may have profound, and not necessarily positive implications for your data’s security or sovereignty.

To make this more obvious you can run the aforementioned threats against this spectrum of options. This is where it gets uncomfortable.

### Lawful access: localization doesn’t help

Start with the threat everyone cares about. The CLOUD Act applies to data sitting in Ireland, or the UK, or Montreal on an American hyperscaler exactly as much as it applies to data sitting in Virginia. The Act follows the _company_, not the geography. Moving your data into a hyperscaler’s local data centre — the single most popular “sovereignty” measure on offer (and one whole procurement frameworks are built around!) — does not address this threat.

[![](https://eaves.ca/wp-content/uploads/2026/07/chattham-house-data-localization.015.jpeg?w=625)](https://eaves.ca/wp-content/uploads/2026/07/chattham-house-data-localization.015.jpeg)

This is one reason why governments are being persuaded to invest in their own “local” or “national” clouds. Sovereignty is derived from ownership (which, as we’ve seen, it may not be) and comes with its own tradeoffs…

What actually helps against lawful access is holding your own encryption keys, or using a provider genuinely outside the requesting state’s jurisdiction — and each of those brings its own trade-offs from elsewhere on the list.

### Cyber attack: you might be safer on the hyperscaler

Against a serious state-backed attacker, where do you want your data? The honest answer is awkward: probably on the platform with the largest, best-resourced defensive security team on earth. If you’re a middle power government, or a large, successful private company, do you trust your state agencies to out-defend firms whose security teams and budgets dwarf your own? If your “A” team is protecting national secrets, who’s left to protect more mundane things like social benefits or the DMV? If you’re concerned about attacks from North Korea, Russia or China — states with sophisticated capabilities – this analysis becomes even more awkward. Localizing your data onto weaker domestic infrastructure can make this threat _worse_.

[![](https://eaves.ca/wp-content/uploads/2026/07/chattham-house-data-localization.016.jpeg?w=625)](https://eaves.ca/wp-content/uploads/2026/07/chattham-house-data-localization.016.jpeg)

### Access denial: ownership beats location — sometimes

Access denial is the threat I think deserves far more attention than it gets. Forget reading your data; someone with control over your infrastructure can simply deny you access to it. Maybe via legal process, or… not. They could just turn the power off or sever a key network cable.

[![](https://eaves.ca/wp-content/uploads/2026/07/chattham-house-data-localization.017.jpeg?w=625)](https://eaves.ca/wp-content/uploads/2026/07/chattham-house-data-localization.017.jpeg)

Here the spectrum behaves differently. Physical denial is possible for anything hosted outside your borders — including by a domestically-owned firm operating internationally. Legal denial can reach even a foreign-owned entity that happens to sit on your soil: if the parent company is ordered to stop serving you, the local data centre goes dark just the same. Only the bottom of the spectrum — genuinely domestic operations — offers much protection.

Localization _can_ help here… with caveats. A domestic operation still depends on hardware, software and services that are not indigenous to your country. You may have traded a low risk of someone flipping the off-switch for an elevated cyber risk and the slow grind of a degraded service. But of all the threats on this list, access denial is the one localization most clearly addresses.

### Attack and act of god: the safest place may not be your country

Remember the Ukrainian in the room at Bellagio, the one person least sold on localization? They were the ones presenting. It was a talk I still think about: photo after photo of bombed-out Ukrainian data centres. When your threat model includes missiles, “keep the data at home” reads very differently. Data localization isn’t necessarily the best defence against hostile acts. Ukraine has become a significant adopter of US hyperscalers. They are not alone. Estonia drew this lesson a decade earlier and implemented its data embassies, placing core data abroad on purpose to ensure continuity of service in the event of a hostile kinetic attack.

[![](https://eaves.ca/wp-content/uploads/2026/07/chattham-house-data-localization.018.jpeg?w=625)](https://eaves.ca/wp-content/uploads/2026/07/chattham-house-data-localization.018.jpeg)

Data localization can also carry risks and tradeoffs. Last September, South Korea’s National Information Resources Service — the government’s own data centre in Daejeon — experienced a fire. Six hundred and forty-seven government services went down. Ninety-six systems were destroyed outright, including G-Drive, the government’s internal file store: roughly 858 terabytes of working documents, gone. There was… no backup. Last time I searched, it was still unrecoverable. This wasn’t an attack. It was infrastructure, in one place, and that one place burned.

The hard reality is, depending on your threat model, the safest place for your data may _not be in your country_. My home of Canada has the luxury of being enormous — an act of God is unlikely to take out data centres in Vancouver and Montreal simultaneously (if it does, I suspect we collectively, as a planet, have bigger problems). But many countries don’t have that luxury. If you’re Belgium or an island nation, I’m not sure you do. As mentioned above, Estonians have decided, explicitly, that they don’t. An Estonian “data embassy” in Luxembourg (and possibly elsewhere) stores sovereign Estonian data abroad, precisely _because_ it’s safest there.

### Data colonization: it’s about who collects, not where it sits

One more, because it exposes the frame’s deepest flaw. If your worry is the extraction of your data’s economic value — data colonialism, industrial loss — then where the data is _stored_ is only part of the issue. Equally important is who _collects_ it. A foreign application harvesting your citizens’ data will do so regardless of which data centre it rents. Does a domestic company that collects the data, then chooses to store it abroad, raise bigger questions than a foreign company storing your data locally?

[![](https://eaves.ca/wp-content/uploads/2026/07/chattham-house-data-localization.019.jpeg?w=625)](https://eaves.ca/wp-content/uploads/2026/07/chattham-house-data-localization.019.jpeg)

## Every Choice is a Trade-Off

To really drive this home I created an illustrative matrix of these trade-offs. The ratings would likely differ from country to country, but it gives one a sense of the terrain. There is no row that is all green. There never will be. And that is my point. Data localization is a solution to a very specific threat model… an important one, but a specific one. And the notion that you should spend billions or more to create a national champion to solve for that problem is… a trade-off in its own right that, even executed well, may carry significant risks and downsides.

[![](https://eaves.ca/wp-content/uploads/2026/07/chattham-house-data-localization.020.jpeg?w=625)](https://eaves.ca/wp-content/uploads/2026/07/chattham-house-data-localization.020.jpeg)

So the first conclusion of the talk: **data localization is not a strategy. It is a tactic that addresses some threats, may sometimes be effective for** **the headline threat, and actively worsens others.** If someone is leading with localization, the serious response is: against which threat? Until that question has an answer, it’s hard to balance risk and reward, costs and options.

## Moving from Sovereignty to Optionality

So what would a more successful strategy for achieving “sovereignty” look like? First and foremost, it means not starting with a solution but with a threat model — and being honest about the tradeoffs in addressing each threat. As we’ve just seen, that exercise rarely lands on a single answer.

I think it also lies in creating optionality, both domestically and internationally. This is what I’ve argued for in [The Path to a Sovereign Tech Stack is Via a Commodified Tech Stack](https://www.techpolicy.press/the-path-to-a-sovereign-tech-stack-is-via-a-commodified-tech-stack/). The core thesis being that standardizing storage at the cloud level, and then, ideally, platform-as-a-service functions, would bring portability, competition and federative options to the cloud layer – including, critically, around data storage.

Focusing on choice and interoperability creates a range of more interesting options than focusing on “sovereignty” since, as I previously mentioned, that conjures up unhelpful notions that conflate territoriality and ownership with control and security. Mike Bracken and I first suggested _agency_ was a more helpful term in our [Lisbon Council piece on Europe’s Digital Strategy](https://lisboncouncil.net/the-service-gap-europe-international-digital-strategy-2025/). Mike’s gone on [to write some additional good thoughts](https://public.digital/pd-insights/blog/2025/07/our-view-on-digital-sovereignty), but here is one of my favourite parts of that original piece:

> Which brings us to a deeper concern: the framing of digital sovereignty itself.
> 
> We understand the instinct. In a world where digital infrastructure is often foreign-owned and opaque, wanting more control is natural. But sovereignty, if defined as owning every layer of a technological stack, can quickly become counterproductive. It leads to balkanized systems, limited interoperability and a retrenchment from global cooperation. The incentives for creative development disappear. Competition and innovation subside.
> 
> Instead, we should be aiming for digital resilience and interoperability.

## Summary Advice

If you’ve read this far, here is the version to carry into your next meeting.

Data localization is an answer waiting for a question. Before adopting it, name your threat model. If the threat is the CLOUD Act, localization does not help you — the law follows the company, not the geography. If the threat is a state-backed cyber attack, localization may hurt you. If the threat is access denial, it helps — read the fine print on ownership. If the threat is fire, flood or missiles, the safest place for your data may be another country entirely; ask Estonia, or ask South Korea, which kept its data sovereign, domestic, in one building, and lost 858 terabytes of it in an afternoon.

If you carry only three questions out of this post, make them these.

**Whose data?** A rule that is prudent stewardship for a tax agency becomes an economy-wide tax when applied to every firm in the country.

**Against which threat?** Localization genuinely helps with some threats, does little for the headline one, and makes others worse. Name the threat, and the right storage model usually names itself.

**Can you leave?** Sovereignty that depends on any single provider’s goodwill — foreign or domestic — isn’t sovereignty. The durable kind comes from being able to move. That’s the commoditized stack argument, and it’s the subject of my next post.

___

_The Chatham House conversation was held under a mix of rules; nothing here draws on anything said in the room — this is the argument I brought in. Related: [Parting Clouds](https://antimonopoly.ca/parting-clouds-creating-a-competitive-marketplace-for-compute/) (with Curtis McCord, for the Canadian Anti-Monopoly Project), [The Path to a Sovereign Tech Stack is via a Commoditized Tech Stack](https://www.techpolicy.press/the-path-to-a-sovereign-tech-stack-is-via-a-commodified-tech-stack/) (Tech Policy Press), and [NATO’s Digital Back End Could Fall Apart Without Change](https://foreignpolicy.com/2026/06/09/nato-cloud-computer-ai-iran-war/) (Foreign Policy). If you’re working on any of this elsewhere in the world, I’d like to compare notes._

### Share this:

-   [Email a link to a friend (Opens in new window) Email](mailto:?subject=%5BShared%20Post%5D%20Data%20Localization%20is%20the%20Answer.%20What%20Was%20the%20Question%3F&body=https%3A%2F%2Feaves.ca%2F2026%2F07%2F20%2Fdata-localization-is-the-answer-what-was-the-question%2F&share=email&nb=1)
-   [Share on Facebook (Opens in new window) Facebook](https://eaves.ca/2026/07/20/data-localization-is-the-answer-what-was-the-question/?share=facebook&nb=1)
-   [Share on X (Opens in new window) X](https://eaves.ca/2026/07/20/data-localization-is-the-answer-what-was-the-question/?share=twitter&nb=1)
-   [More](https://eaves.ca/2026/07/20/data-localization-is-the-answer-what-was-the-question/#)

-   [Share on LinkedIn (Opens in new window) LinkedIn](https://eaves.ca/2026/07/20/data-localization-is-the-answer-what-was-the-question/?share=linkedin&nb=1)
-   [Share on Reddit (Opens in new window) Reddit](https://eaves.ca/2026/07/20/data-localization-is-the-answer-what-was-the-question/?share=reddit&nb=1)

Like Loading...

<iframe class="post-likes-widget jetpack-likes-widget" name="like-post-frame-44349185-7925-6a5f187fb9bf1" src="//widgets.wp.com/likes/index.html?ver=20260721#blog_id=44349185&amp;post_id=7925&amp;origin=eavesca.wordpress.com&amp;obj_id=44349185-7925-6a5f187fb9bf1&amp;domain=eaves.ca" height="55px" width="100%" frameborder="0" scrolling="no" title="Like or Reblog"></iframe>

### _Related_

[Cloud Is a Competitiveness Question — A Note to Europe’s Finance Ministers](https://eaves.ca/2026/06/15/cloud-is-a-competitiveness-question-a-note-to-europes-finance-ministers/?relatedposts_hit=1&relatedposts_origin=7925&relatedposts_position=0&relatedposts_hit=1&relatedposts_origin=7925&relatedposts_position=0 "Cloud Is a Competitiveness Question — A Note to Europe&#8217;s Finance&nbsp;Ministers")June 15, 2026In "commoditized stack"

[The Curious Case of Media Opposing Government Transparency](https://eaves.ca/2011/03/04/the-curious-case-of-media-opposing-government-transparency/?relatedposts_hit=1&relatedposts_origin=7925&relatedposts_position=1&relatedposts_hit=1&relatedposts_origin=7925&relatedposts_position=1 "The Curious Case of Media Opposing Government&nbsp;Transparency")March 4, 2011In "canadian politics"

[The dangerous mystique of the “open data” business](https://eaves.ca/2014/02/05/the-dangerous-mystic-of-the-open-data-business/?relatedposts_hit=1&relatedposts_origin=7925&relatedposts_position=2&relatedposts_hit=1&relatedposts_origin=7925&relatedposts_position=2 "The dangerous mystique of the &#8220;open data&#8221;&nbsp;business")February 5, 2014In "open data"
