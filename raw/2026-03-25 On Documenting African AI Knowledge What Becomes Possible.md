---
type: source
title: "On Documenting African AI Knowledge: What Becomes Possible"
publisher: Rebecca Mbaya (reamby.substack.com)
url: https://reamby.substack.com/p/on-documenting-african-ai-knowledge
author: Rebecca Mbaya
published: 2026-03-25
accessed: 2026-07-12
ingested: 2026-07-12
places: [XAF]
topics: [tech.ai, tech.innovate, capacity.research, include.divides]
entities: [[rebecca-mbaya]]
lens: [sovereignty]
---

<!-- External expert analysis. Behind-the-scenes of the TAIS Knowledge Map (interactive network of ~53 interviewed African AI innovators across six thematic clusters), and the contradiction of documenting African AI sovereignty with non-African tools (NotebookLM/Claude/Gemini/Lovable) + the offline-first/connectivity gap. Article is human-authored analysis (tools are its subject, not its author) -> admissible as source. TAIS Knowledge Map is Mbaya's own project: candidate resource entity, self-referential, NOT created at intake (flag). Earliest-dated piece in batch. -->

Every Friday since March 2025, I have published **[a story](https://reamby.substack.com/t/tais-interviews)** about an African innovator. In each one, they think out loud about what they are building, why it matters, and what they believe.

Fifty-three stories so far. Fifty-three accounts of people working at the intersection of AI, technology, and African realities in their own words, on their own terms, without a filter.

A few months into this series, I began to sense that these stories deserved more than an archive. I could not name it yet, but something kept turning in my mind. Questions I could not shake: *how do I make visible the way their work speaks to each other? How do I show that what is being built across these stories is not a collection of individuals but an architecture?*

I sat with these questions for months as I kept publishing and noticing connections, spotting patterns, watching arguments emerge across interviews that had never been in conversation with each other. And slowly it became clear to me that TAIS had an ecosystem that needs infrastructure. That is where this map came from.

Today, four days before TAIS turns one, I am sharing the behind-the-scenes of how the map was built because it is a process that stretched me in ways I could not have imagined, and because the friction of building it matters as much as the result.

---

## The Architecture Was Always in the Stories

I discovered the map’s structure as I progressed. As each story was published, I kept going back to the entire body of work. Re-reading. Annotating. Asking a different question like “ *what argument are they making, and who else is making the same argument from a completely different direction?*” I built my own groupings, drew my own connections, and identified what I believed were the deepest fault lines running through the series.

Then I did the same exercise again, this time using NotebookLM to analyse the full archive independently. I asked it to surface the recurring intellectual tensions across all published interviews. I compared its output to my own notes. Where we agreed, I noted and saved the progress but where we diverged, I interrogated both my reading and the tool; sometimes trusting my reading, sometimes finding that NotebookLM had surfaced a connection I had missed, sometimes concluding that neither was quite right and adjusting accordingly.

That comparison, human analysis alongside AI analysis, neither fully trusted, both held accountable to the actual interviews, is how the thinking unfolded. What emerged from that process were theses. Not “ *people who work in health* ” but “ *people who argue that AI fails not because the code is wrong but because the humans are forgotten.*” Not “ *people who work in policy* ” but “ *people who argue that the execution gap between abstract frameworks and operational reality is where African sovereignty lives or dies.*”

Six thematic clusters surfaced from that process:

1. **Linguistic Sovereignty & Epistemic Justice**: the argument that African languages are not dialects of English and must be treated as first-class citizens of the AI era.
	[
	](https://substackcdn.com/image/fetch/$s_!iNNg!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F139a2ed0-7894-4091-811a-acc12a9a96bb_1030x545.png)
	Cluster 1
2. **Warmware & The Human Layer**: the argument that technology fails not because of code but because of people, and that change management is the hardest and most important layer of any digital transformation.
	[
	](https://substackcdn.com/image/fetch/$s_!u7Cv!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Fab0cc748-0f05-48ec-9945-5d365f6ac8da_1028x543.png)
	Cluster 2
3. **Legal Scaffolding, Digital Rights & Strategy**: the argument that policy without implementation is decoration, and that African sovereignty over AI must become institutional muscle, not just aspiration.
	[
	](https://substackcdn.com/image/fetch/$s_!Y6xY!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Ff492ffdd-cc38-45aa-b5de-e4c2c8f432be_1032x540.png)
	Cluster 3
4. **Infrastructure & Sovereign Ecosystems**: the argument that you cannot build on infrastructure you do not own, and that Africa provides the material foundations of global AI while capturing almost none of its value.
	[
	](https://substackcdn.com/image/fetch/$s_!v2yM!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F9ec2db56-4c52-4023-bde0-ce5c282a9890_1022x544.png)
	Cluster 4
5. **Digital Literacy, Gender & Radical Inclusion**: the argument that inclusion is not a feature but a foundation, and that the margin is the most important place to design from.
	[
	](https://substackcdn.com/image/fetch/$s_!VUDB!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Ffc72a359-adc3-4492-b693-1241396cf4ec_1028x544.png)
	Cluster 5
6. **Shelf-to-Field Operations & Decision Intelligence**: the argument that the measure of AI is not its benchmark score but whether a clinician, teacher, farmer, or policymaker can use it to make a better decision today.
	[
	](https://substackcdn.com/image/fetch/$s_!_81u!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F84942d32-0a3b-4af6-8955-2c53200f9330_1022x544.png)
	Cluster 6

These clusters are arguments the innovators were already making independently, across countries, across disciplines before any of them had ever been in the same room. The map makes that visible for the first time.

Claude then helped me pressure-test the structure of the connections I identified, brainstorm how the relationships between clusters and innovators should be visualised, and think through the intellectual architecture of the map itself. Lovable built it. GitHub holds it. Each tool had a specific role. All of them expanded what was possible for one person working alone but none of them replaced judgment.

---

### What the Map Is

TAIS Knowledge Map is an interactive network of all innovators in this series, mapped across those six clusters, with their institutional connections, geographic spread, and chronological history all navigable in one place.

[

](https://substackcdn.com/image/fetch/$s_!MW55!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F4f98ba80-858f-4a6d-b57c-c893e34094b0_950x545.png)

Each innovator is a node. Each cluster is a hub. The distance between an innovator and their cluster hub is not decorative. It reflects intellectual proximity. Core thesis holders sit in the innermost ring. Bridge voices, those whose work spans multiple clusters sit further out, with visible lines connecting them to every cluster they belong to.

Here are some of the things you can do with the map:

- **Explore the constellation**: zoom, pan, filter by country, institution, or series cohort. Watch the timeline slider and see the ecosystem grow from the very first interview, one node appearing every Friday for a year.
- **Explore the statistics**: a collapsible dashboard shows cumulative growth over time, cluster sizes, country distribution, series breakdown, profile types, and sector categorisation.

Ecosystem Stats Dashboard

- **Chat with this interview**: click any innovator’s node and instead of reading a 4,000-word interview, ask it questions directly. The AI answers strictly from the interview text what does this person think about data sovereignty, how does their work connect to language preservation, what would they say to a policymaker. It does not replace reading. But it makes the depth of interviews accessible to anyone, in any amount of time they have.

Feature example: Chat with this Interview

> - **Here is what is actually happening underneath that chat bubble:**
> 	When you send a question, the system fetches the full interview text from its source, strips away everything that isn’t the conversation, no editorial framing, no metadata and places it directly in front of the AI alongside your question. The model is then given one instruction: **answer only from what this person actually said. Not from what it knows about the topic. Not from inference or extrapolation. From their words.**
> 	This means the AI can quote them directly. It can tell you where an answer isn’t in the interview. It will not fill gaps with plausible-sounding invention. The constraint is the point.
> 	**For a policymaker** with ten minutes, this means they can ask the question most relevant to their work and get a grounded answer drawn from someone with lived expertise. **For a researcher**, it means moving across multiple innovators quickly before deciding where to read deeply. **For anyone**, it means the interviews are no longer behind a time barrier.
> 	**What this is not**: it is not a search engine, and it is not a summary tool. It is closer to having a research assistant who has read the interview carefully and will only tell you what is actually in it. The depth is still the innovator’s. The accessibility is the system’s.

- **Build your own roundtable**: select up to five innovators, name your cluster, write your rationale for why these specific people belong in a room together, and share it to LinkedIn. The most compelling community-proposed conversations could become real TAIS recorded sessions. If yours is selected, you can get a seat at the table.
	Feature example: Build Your Roundtable

---

### What the Roundtables Are

TAIS has always been a series of individual conversations. The roundtables are what happens when those conversations finally meet each other. Innovators from each cluster will sit together in the same virtual room for the first time. They have each been interviewed separately by TAIS. They have each been building pieces of the same argument independently, some for years. The roundtable is the moment those pieces are finally in dialogue.

The format is deliberate. Not a panel where experts perform credentials. A facilitated intellectual conversation designed to create productive tension rather than polite agreement. The recording will be published as part of TAIS. A written synthesis follows. And eventually, something more permanent. A document. A framework. A contribution to a literature that does not yet exist.

Every cluster on the map is a potential roundtable. The map is not just a directory of who exists. It is a roadmap for the conversations that still need to happen.

---

### The Technical Reality

For those who want the full picture and I think it matters to share it, because transparency about process is part of what TAIS stands for, below is what is actually running underneath the map.

- **React 18 + TypeScript + Vite**: render the entire interface every panel, modal, filter, and node, as composable components. TypeScript enforces the data structure, catching errors at build time.
- **D3.js** (but not a physics simulation): The map uses a custom deterministic solar system layout. Each cluster is placed at a fixed angle and distance from the TAIS centre. Innovators are arranged in three concentric rings based on their strength value. Bridge innovators are pulled toward a weighted average position between their clusters. The positions are calculated by logic, not physics. This map was designed, not simulated. Every node sits where it sits because of an intellectual decision about proximity.
- **Google Gemini via Supabase Edge Functions:** powers the Chat with Interview feature, fetching the interview text, sending it alongside the user’s question, and streaming the response back in real time. Note the models here: Claude was used to build the map, and Gemini to power the chat within it. Both were essential.
- **Supabase PostgreSQL:** stores all analytics, every node click, filter use, chat open, and roundtable share, with row-level security that allows anonymous writes but blocks public reads. The data belongs to TAIS.
- **GitHub sync:** means the entire codebase is version controlled, backed up, and portable. I can clone it, host it independently, or continue development in any environment, completely independent of Lovable if I choose. That portability matters. Sovereignty does not only apply to data, it applies to code.

What made all of this possible was not just prompting and vibe coding. It was curiosity about what was happening underneath, asking why data was being stored a certain way, pushing back when an implementation did not match the intent, making deliberate decisions about ownership and infrastructure. That is not developer-level expertise but it is a genuine technical literacy. And I believe more non-technical builders will need to develop it as these tools become the norm. Vibe coding is not about looking pretty but about closing the gap between having an idea and having a product without surrendering ownership of either.

---

### The Tools and the Wrestling

This is the part I want to be most honest about and I want to take the time to say it properly, because it is the part that matters most.

I am not a software engineer. I do not write code professionally and I built this in weeks, working largely alone alongside a full publishing schedule. That was only possible because of platforms like Lovable. I am grateful for that access and I am clear-eyed about what that access represents.

NotebookLM. Claude. GitHub. Lovable. Every tool I used to build this map was built outside of Africa. Trained largely on Western data. Designed primarily for users with reliable connectivity, suitable devices, and affordable data plans. Hosted on infrastructure I do not own, did not build, and cannot control. The irony of using these tools to document a movement about African sovereignty over AI is not lost on me. I wrestled with it throughout the entire process of building.

Here is the contradiction I have been sitting with.

> *TAIS Knowledge Map exists to make African AI knowledge visible, navigable, and permanent. It exists so that the student writing a paper on African AI can find her sources. So that the researcher trying to understand who is building what on this continent does not have to piece it together from scattered interviews. So that the innovators themselves can see where they sit in something larger than their own work. That is the intent. It is African in its origin, its sources, its intellectual architecture, and its purpose.*

But the product itself, as it currently stands, requires a stable internet connection, a capable device, and affordable data to access. Which means the student in Limpopo, the researcher in a zone blanche, the innovator in Kinshasa during a power outage, the community health worker in rural Niger, the very people whose sovereignty this map is trying to document and defend may not be able to access it at all. That is not a minor footnote. That is a structural problem and I am not going to smooth over it.

The most resilient digital products built for African realities are built offline-first. Point-of-sale systems, logistics platforms, agricultural tools, the best of them store data locally and sync silently when the network returns. They are designed for the worst-case scenario, not the ideal one. They do not become useless the moment the power goes out or the 4G drops. If a piece of software stops working when the network fails, it is a fragile tenant of someone else’s infrastructure.

Right now, this map is that fragile tenant. I know it and I am naming it explicitly rather than burying it in a future roadmap note, because I think the African innovators in this series, the ones arguing for local compute, for offline-first design, for infrastructure sovereignty deserve that honesty from me.

But I also want to name the other side of this argument, because it is equally true.

> *This map was not built only for Africa. It was also built for the researcher in Amsterdam trying to understand the African AI ecosystem before writing policy. For the funder in Geneva deciding where to invest in African technology. For the journalist in New York who keeps writing about African AI without knowing who is actually doing the work. For the ally anywhere in the world who wants to understand but has no reliable entry point into the ecosystem.*

For those users, the ones with guaranteed connectivity and suitable devices, the map works right now. And their engagement with it matters. Not because their access is more important than African access, but because getting African arguments into the rooms where global decisions are made requires tools that work in those rooms. The external ally who discovers this map and brings it to a funding committee, a policy table, or a university curriculum is part of how the ecosystem the map documents eventually gets the resources it needs to build its own infrastructure.

So the map serves two audiences with different needs and different levels of access. For the external ally, it is already useful. For the African user it must become more useful and that work is already on the roadmap. Offline-first access. Low-bandwidth optimisation. Mobile-first design that works on the devices most Africans actually use. Local hosting options that do not depend on foreign cloud infrastructure.

The map is not finished until it works in Kaduna as well as it works in London. That is the commitment and it is the only honest way to build something that claims to be in service of African sovereignty.

---

### For This Generation and the Next

I am a parent and that is not a rhetorical flourish. When I look at where AI is going, who is shaping it, whose languages it speaks, whose knowledge it reflects, whose futures it imagines, I do not think in abstractions. I think about what my children will inherit. I think about the African innovators in this series, and whether the work they are doing right now, the arguments they are making, the infrastructure they are building, the ideas they are fighting for, will be visible to the generation that comes after them. Or whether those arguments will dissolve into the AI hype and noise, uncited, unconnected, lost to the same invisibility that has swallowed so much African intellectual work before them.

That possibility frightens me more than any technical limitation of this map. More than the offline-first gap. More than the connectivity dependency. More than anything I named in the previous section.

The AI systems being built right now will shape the world my children grow up in. The languages those systems speak, the knowledge they reflect, the futures they imagine, these are not neutral technical decisions. They are choices. And right now, the people making those choices are not, for the most part, African. The innovators in this series are trying to change that. Working across countries, in multiple languages, on problems that the global AI conversation has not yet learned to ask.

If their work is not documented not made findable, citable, and connected, it will be as if it never happened. The next generation of African AI builders will start from scratch, reinventing arguments that were already made, missing the intellectual inheritance that should have been waiting for them.

This is why documentation matters for both audiences, the African student who needs this as a source, and the funder in Geneva who needs to understand where to invest. The external ally who brings this map to a policy table or a funding committee is part of how the ecosystem it documents eventually gets the resources to build its own infrastructure. Visibility is not the opposite of sovereignty. Used deliberately, it is one of its instruments. Documentation is an act of care for the future. This map is, above all, a documentation project.

The change-makers in this series trust me with their stories. They do not have to. They speak in their own words, on their own terms, about work that is too often invisible to the global AI conversation. That access to credible, generous, brilliant human sources who believe this series is worth their time, is the most important resource I have. Not the tools. Not the internet connection. Not the platforms. The people.

Everything else is in service of one thing: **making their stories navigable, connectable, and alive for whoever comes looking now, and ten years from now, and further still.**

---

### What It Needs to Become What It Should Be

The map you are looking at is version one, a working prototype with the architecture of something larger. It is not the end of a project. It is the beginning of an infrastructure and like all infrastructure, it cannot be built or sustained by one person alone indefinitely.

Here is what version two requires:

- Offline-first access so the map works in low-connectivity environments.
- Low-bandwidth optimisation so it loads on the devices many use.
- Local hosting options that reduce dependency on foreign cloud infrastructure.
- A development capacity that keeps pace with the series because 53 innovators will become 300, and the clusters will evolve, and the roundtable recordings will need to live somewhere permanent and searchable.
- A community voting system that lets the ecosystem propose the conversations it most wants to have next.
- An evaluation pipeline for the chat function so it performs reliably for every user, not just the ones with fast connections and forgiving expectations.

None of that is possible on a self-funded publishing schedule alone.

If you work with a foundation, institution, or organisation that funds African knowledge infrastructure, African AI ecosystems, or independent media, I would love to hear from you. Not to pitch. To have a conversation about what this could become with the right investment behind it.

And if you are none of those things but you believe this work matters, the most valuable thing you can do right now is explore the map, share it with someone who should see it, and build your own roundtable. Every share extends the reach of the ecosystem it documents. Every community-proposed cluster is a signal about what conversations still need to happen.

The map is imperfect but is live. **Explore it →** ***[Here](https://tais-constellation-weave.lovable.app/)***

Thank you for reading!

---

#### Support this work

Your support keeps it independent and community-rooted.

[

](https://substackcdn.com/image/fetch/$s_!90fW!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F80ca48f5-abb2-428a-91f3-a87692d53bb2_1024x1134.png)

Thank you for standing with this work.