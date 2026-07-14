# CLAUDE.md — Data Landscapers Intelligence Wiki

## Purpose

A persistent, compounding intelligence base on **data governance and digital
transformation across all 54 African states**, built to feed the analytical,
evidence-led long-form output at data-landscapers.com.

You (the agent) build and maintain the wiki. The human curates sources, asks
questions, and directs analysis; the human rarely edits pages directly. Follow
Karpathy's LLM-wiki discipline: read each new source, integrate it into
structured markdown, update cross-links, flag contradictions, keep an
append-only log. Never re-derive knowledge at query time when a compiled page
already holds it.

## Facets

Every item is classified along facets held in **frontmatter**, never in a folder
matrix (62 places × ~36 topics would be thousands of empty cells). Folders are
organised by page *type*.

- **PLACE** (primary) — one or more codes from `wiki/countries.csv`. Countries
  (ISO-3) and regions (`X__`) are the *same* facet; a region is a first-class
  place, not a container. Single-parent tree: country → subregion → `XAF` →
  `XGL`. Roll-up by walking parents. Two exceptions: `XSS` (Sub-Saharan Africa)
  is defined by rule as *all `XAF` children except `XNA`*, since no country
  points to it; and `XGL`/`XSS` are **tag-only** groupings (apply to pan-SSA or
  non-Africa-specific items) — never any country's home region.
- **SUBJECT** (primary) — one or more slugs from `wiki/taxonomy.md`. Strict
  single-parent tree, but a page may carry several slugs (cross-border data is
  both `dpi.exchange` and `gov.regional`).
- **LENS** (secondary) — analytical framing: `sovereignty`, `colonialism`.
  These are how the material is *read*, distinct from what it is *about*. (Kept
  deliberately tight: "governance" and "transformation" live in the subject
  taxonomy and overall scope, and OSINT is a method, not a lens. Extend only if
  the human asks — it's an open vocabulary.)
- **ENTITY** (secondary) — linked entity pages (below).

## Blocs are entities, not places

Because the place facet is *geographic*, political and economic blocs — AU,
ECOWAS, SADC, EAC, COMESA, AfCFTA, Smart Africa — are **entities**
(`entity_type: organisation` or `initiative`). The Malabo Convention tags to the
AU entity plus the affected countries, not to a geographic region.

## Folder structure

```
new/                      # unprocessed intake queue — clips land here; drained on ingest
raw/                      # admitted sources, flat — immutable after ingest, never edited
  2026-06-16-cassava-nvidia-deal.md
_leads/                   # parked non-source material (AI syntheses etc.) to mine, not compile
_review.md                # standing worklist of items held for human decision (see Autonomy)
wiki/
  concepts/               # one page per SUBJECT topic
  places/                 # 54 country + 8 region hub pages (one page type)
  entities/               # companies, orgs, gov bodies, initiatives, people, deals
  intersections/          # topic × place — created LAZILY, only when substantive
  taxonomy.md             # SUBJECT controlled vocabulary (authority)
  countries.csv              # PLACE controlled vocabulary (authority)
  index.md                # master table of contents
  topics-index.md         # faceted navigation by subject
  places-index.md         # faceted navigation by place
  entities-index.md       # faceted navigation by entity
  log.md                  # append-only operation log
```

**The intake pipeline is physical.** A file's folder *is* its state: `new/` =
not yet processed, `raw/` = admitted as a source, `_leads/` = parked to mine.
Point the web clipper at `new/`. "What's new" is then just the contents of
`new/` — no diffing against the log. Each item's move out of `new/` is the
**last** step of processing it, so an interrupted run leaves exactly the
unfinished items in `new/`, and re-running resumes cleanly.

## Filenames

Every source in `raw/` carries a **`YYYY-MM-DD` date prefix** taken from its true
**publication date**. This keeps `raw/` chronologically sorted and greppable by
date without a folder tree, and — because the prefix now means *when the source
was published* — it also carries real meaning for the currency discipline. The
existing `raw/` corpus has been normalised to published dates; this is current
practice, not aspiration.

- **The agent establishes `published`; it isn't handed to it.** The web clipper
  cannot reliably supply a publication date, so during ingest read the clip
  content (or the source page) for the real date, and **set or correct the
  `published` frontmatter and the filename accordingly**. This is an active step,
  not a passive read of whatever the clipper left.
- **Fallback chain, flagged.** Only when a publication date genuinely can't be
  found, fall back to `ingested`, then `created`. When you fall back, mark the
  source `date_source: proxy` in frontmatter so a clip-dated file is never later
  reasoned about as though that were its publication date.
- **Partial dates are padded, and the precision recorded.** When the publication
  date is known only to the year, prefix `YYYY-01-01`; known to the month,
  `YYYY-MM-01`. The filename is always a valid, sortable full date, but record
  the true precision as `date_precision: year | month | day` (default `day`) so a
  padded date isn't mistaken for a precise one. Padding is for sorting; the
  frontmatter keeps the honesty.
- **All file types, not just clips.** PDFs, images and other artefacts follow
  the same rule — the clipper only prefixes markdown clips, so anything added by
  other routes must be prefixed on ingest.
- **Binary artefacts get a companion source page.** A PDF or image can't hold
  YAML frontmatter, so create a date-prefixed markdown **source page** carrying
  the frontmatter (places, topics, entities, `published`, etc.) that links to or
  embeds the artefact. Prefix both the source page and the artefact with the same
  date so they sort together.
- **Renaming must not break links.** Source pages are referenced by `[[link]]`
  from `sources:` lists. Rename via Obsidian (which updates links), or if
  renaming on disk, update every referencing link and confirm with the dead-link
  lint. Do renames in git so they're reversible.

## Controlled vocabularies (enforce; reject values outside them)

- **Places** — `wiki/countries.csv` (54 ISO-3 countries + 8 `X__` regions = 62
  codes). Authority for valid place tags and the parent tree.
- **Subjects** — `wiki/taxonomy.md` (10 Level-1 categories, ~36 Level-2 slugs).
  Tag with the **slug** (e.g. `gov.protect`), never the label.
- **Lens** — `sovereignty`, `colonialism`.
- **Entity types** — `company` `organisation` `government-body` `initiative`
  `person` `deal` `resource` `instrument`. A **resource** is a standing OSINT
  asset you consult repeatedly — a database, dataset, registry, tool or portal
  (e.g. PeeringDB, GLEIF, an open-contracting portal). An **instrument** is a
  published standard, taxonomy, framework, or policy/legal instrument that exists
  as a reference object in the domain (e.g. the Malabo Convention, the AU Data
  Policy Framework, the World Bank DT taxonomy, MOSIP specs, GDPR, a flagship
  national data strategy). Neither is a dated source nor a lead; see Source
  admissibility.

## Finance subject vs deal entity

`finance.new` / `finance.mou` are SUBJECT tags meaning "this is about
investment / agreements." A *specific* transaction or MoU is a **deal entity**.
A source on one MoU carries the deal entity + `finance.mou` + its places/topics;
a piece on funding trends carries `finance.new` with no single deal entity.

## Page types and frontmatter

### Source (in `raw/`, immutable)
```yaml
---
type: source
title: Cassava–NVIDIA GPU partnership announcement
url: https://...
publisher: ...
published: 2026-06-16
date_precision: day       # day | month | year — precision of published (default day)
date_source: source       # source | proxy — 'proxy' if the date fell back to ingested/created
ingested: 2026-07-10
places: [ZAF]
topics: [infra.store, tech.ai, geopol.usa]
entities: [[cassava-technologies], [nvidia]]
lens: [sovereignty]
---
```

### Concept (subject page, in `wiki/concepts/`)
```yaml
---
type: concept
title: Data protection
slug: gov.protect
places: [KEN, NGA, ZAF]
entities: [[data-protection-authority-kenya]]
lens: [sovereignty]
status: active            # active | stub | needs-review
last_reviewed: 2026-07-10
sources: [[raw/2026-06-16-cassava-nvidia-deal]]
---
```

### Place (hub page, in `wiki/places/` — countries and regions alike)
```yaml
---
type: place
title: Kenya
code: KEN                 # ISO-3 for countries, X__ for regions
parent: XEA               # from countries.csv; regions point upward too
place_kind: country       # country | region
topics: [gov.protect, infra.store]
status: active
last_reviewed: 2026-07-10
---
```
Place pages open with a dated, reverse-chronological **Recent developments**
section, then sections per active topic linking to concept, entity and
intersection pages.

### Entity (in `wiki/entities/`)
```yaml
---
type: entity
entity_type: company
title: Cassava Technologies
places: [ZAF, KEN, NGA]
topics: [infra.store, infra.connect]
lens: [sovereignty]
status: active
last_reviewed: 2026-07-10
sources: [[...]]
---
```

### Intersection (topic × place, in `wiki/intersections/`)
Created **only when a place-specific treatment of a topic is substantial** —
e.g. `kenya--gov-protect.md`. Do not pre-create empty cells. Name
`{place-slug}--{topic-slug}.md`; link from both the place hub and the concept.

## Source admissibility

Only **primary or first-hand external evidence** becomes a source of record:
official announcements, regulations, court filings, company statements, filings
and financials, datasets, on-the-record reporting, primary-source documents.
A source need **not break news**: a dated, admissibly-published explainer,
backgrounder, methodology or reference report (e.g. a Biometric Update MOSIP
explainer, an ITU methodology note) is a valid source — it supplies datable,
citable reference content even though it reports no fresh event.

**Not admissible as sources** — anything that is a second-hand synthesis,
especially AI-generated research: Perplexity notes, ChatGPT/Claude/Gemini
outputs, NotebookLM summaries, and similar. They have already compressed and
paraphrased their inputs, usually without clean citations or a single
publication date, so ingesting them breaks the audit trail, launders any errors
into authoritative-looking pages, and quietly defeats the currency discipline.

Such material is a **lead, not a source**: mine it for the primary documents it
points to, ingest *those*, and discard the synthesis. Reporting that itself
cites primary sources is admissible, but tag and, where it matters, verify
against the primary source it draws on. When admissibility is genuinely unclear,
park the item (below) and ask the human rather than guessing.

### The author's own work

The trigger is **publication**. The human's *internal notes and unpublished
drafts* are excluded (as is the wiki's own pre-publication draft output), and
AI-generated working assets (e.g. Perplexity-sourced fact sheets) remain
do-not-cite. But the human's **published work** on data-landscapers.com is treated
**as if written by an expert third party** — the same standing as any other named
analyst's published work: dated, attributable, cited by author and publisher, and
tagged as analysis, not primary evidence. **His framing, biases and opinions may
shape the wiki's synthesis wherever relevant**, exactly as a Kariuki or Munyua
framing would. *(Curator directive, 2026-07-13 — supersedes the earlier
"self-authored, apply special guards" framing.)*

Only ordinary analytical hygiene applies — the same as for **any** analyst, not a
special self-authored regime:
- Attribute plainly ("as Data Landscapers has argued") so a reader sees a named
  analytical view, not undisputed fact.
- Never use a piece to corroborate a wiki claim that was itself drawn from that
  same piece (no circular self-corroboration); and don't re-ingest a publication
  that merely re-renders the wiki's own pages — ingest only work that adds
  analysis, evidence or framing.
- Trace factual claims to their underlying primaries where possible; cite the
  piece for its *analysis*, not as a shortcut around sourcing the facts.

Because these are normal citation practice, such self-citations are **not** held
in `_review.md` for review.

### Sources, entity profiles, and leads

A `raw/` item that reports **no single development and tags no place** is not
automatically a discard. Distinguish three things:

- **Source** — dated evidence of a development (an announcement, filing, report,
  data point). Compiled normally.
- **Entity profile (including resources and instruments)** — a clip whose value
  is establishing or profiling a standing object you'll return to, rather than
  reporting an event: an organisation or company, a government body, a person, a
  project or initiative, a **data asset** (database, dataset, registry, tool or
  portal — PeeringDB, GLEIF, national statistics portals), or a **reference
  instrument** (a published standard, taxonomy, framework, or policy/legal
  instrument — the Malabo Convention, the AU Data Policy Framework, the World
  Bank DT taxonomy, MOSIP specs, GDPR). A home, profile or framework page has no
  "event" and may be global — that's expected, not grounds for discard.
  **Capture it as the matching entity type** — `organisation`, `company`,
  `government-body`, `person`, `initiative`, `resource` for a data asset, or
  `instrument` for a reference framework — never discard it and never park it as
  a lead. A dated fact you later pull about it or *from* it (e.g. a country
  ratifying the Malabo Convention, or "PeeringDB lists 14 IXPs in Kenya as of
  2026-07-10") becomes a normal source that cites the entity.
- **Discard** — genuine non-intelligence artefacts only: **the wiki's own**
  config and vocabulary files (`taxonomy.md`, `countries.csv`, scaffolding),
  blank or failed captures, duplicated scaffolding. **External** standards,
  taxonomies and policy instruments are never discards — they are `instrument`
  entities. (The distinction that caused the earlier mis-file: the wiki's own
  `taxonomy.md` is config; the *published* World Bank taxonomy as a domain
  framework is an `instrument` — different objects, different homes.)

An entity profile carries the same frontmatter as any entity; `resource` is the
data-asset case:
```yaml
---
type: entity
entity_type: resource
title: PeeringDB
url: https://www.peeringdb.com/
places: [XGL]              # global; add specific places where its coverage matters
topics: [infra.connect, infra.store]
status: active
last_reviewed: 2026-07-10
---
```
Tag a resource by the topics it *serves* and by `XGL` (or the specific places its
data covers). Do not over-tag with all 62 places.

## Filing rules — draining the `new/` queue

On ingest, process each item in `new/` through the steps below. The item's
**move out of `new/` is the last step**, and where it moves is its classification:
admitted sources → `raw/`, parked leads → `_leads/`, discards → deleted. "Moved
out of `new/`" is therefore not the same as "became a source" — draining the
queue means routing each item to its correct destination.

1. **Intake screen (do this first).** Check the item's provenance against Source
   admissibility. If it is a second-hand or AI-generated synthesis, do **not**
   compile it: note it in `log.md` as parked-inadmissible with a one-line reason,
   extract any primary sources it references for separate ingestion, move it to
   `_leads/`, and stop. If it reports no development but establishes or profiles
   a standing object of OSINT value — an organisation, company, government body,
   person, project/initiative, a data asset (database/dataset/registry/tool/
   portal), or a reference instrument (standard, taxonomy, framework, policy/legal
   instrument) — capture it as the matching entity type rather than discarding it
   (never park it as a lead; see Sources, entity profiles, and leads). Discard
   (delete) only the wiki's own config/vocabulary files and genuine
   non-intelligence artefacts. Only admissible items proceed to the steps below.
2. **Deduplication check.** Before creating pages, decide whether this source
   reports an event already in the wiki or a genuinely new development. Match
   incoming sources against existing pages by event + entities + date:
   - **Same event, same period** (another outlet on the same story) → do *not*
     spawn parallel pages. Create the source page, then attach it to the
     `sources` list of the pages the event already touches. Fold in any detail,
     figure or quote the existing account lacks; if it conflicts, apply the
     contradiction rule below rather than overwriting.
   - **Same story, later date** (the situation has moved) → treat as an
     **update**, not a duplicate: revise the affected pages, add the new source,
     and keep the prior "as of" statement dated rather than deleting it.
   - **New event** → proceed normally.
   When same-vs-new is genuinely unclear, prefer attaching to the existing page
   and note the uncertainty in `log.md` rather than creating a near-duplicate.
3. Create the source page with full frontmatter and facet tags.
4. For each **entity**: create/update its page; append the source; refresh its
   `places` and `topics`. Discrete deals/MoUs become `deal` entities.
5. For each **place**: update the hub — add to Recent developments, ensure the
   topic section exists, link source + entities. Tag regions only when the item
   is genuinely region-level.
6. For each **subject**: update the concept page. If place-specific and
   substantial, create/update the intersection and link from both sides.
7. **Flag contradictions.** Never silently overwrite. Note it in `log.md`, set
   `needs-review` on affected pages, and append a **contradiction** item to
   `_review.md`. The item carries a **paste-ready external-research brief** for
   the human to run in their own tool — **wiki-agnostic** (no facets, slugs, page
   links or scope), containing: the claim in dispute; each competing value; who
   asserts each; and **the source URL(s) CC already holds for each assertion**,
   read from the source pages' frontmatter. CC reports **only links it actually
   holds** — it does *not* suggest external or primary sources from its own
   knowledge. If a competing value has no clean source URL on file, say so (that
   is itself a provenance gap). Close with a plain instruction, e.g. "these
   sources report different values for X — investigate the discrepancy and suggest
   a resolution, recording an as-of date for each." The brief goes with the
   `_review.md` item, **not** into `queries/` — resolving a contradiction is
   external research, not a query against the base.
8. **Structural gap check (conservative).** While filing, flag high-confidence
   *absences* as **gap** items in `_review.md` — not problems in what was seen, but
   things that should exist and don't: an entity referenced with no page of its
   own, or a claim asserted with no supporting source. A gap is a **research lead
   for the human**, never work to action autonomously — CC surfaces it; the human
   decides whether to source it. Keep it conservative: only clear structural gaps,
   not speculative ones. (Currency and coverage-asymmetry gaps can be enabled
   later as a periodic sweep once the signal proves useful.)
9. Update `topics-index.md`, `places-index.md`, `entities-index.md`.
10. Set `last_reviewed` on every page touched; append to `log.md`.
11. **Last step:** move the item from `new/` to `raw/` (now an admitted source),
    adding the `YYYY-MM-DD` prefix from its `published` date if not already
    present (see Filenames). For a binary artefact, ensure its companion source
    page and the artefact share the prefix.

## Currency discipline

- Every factual claim carries an "as of" date or cites a dated source.
- `last_reviewed` = last substantive check, not a trivial edit.
- On conflict, prefer the newest source; record the conflict, don't erase it.

## Page hygiene and scaling

The corpus can grow without bound; a single *operation* cannot. Each ingest
should touch a small local working set, so keep synthesis pages roughly
constant-sized and let linear growth land in `raw/` and source pages.

- **Synthesis pages hold current state, not chronology.** A concept, entity,
  place or instrument page is a synthesis — who/what it is, what matters now, key
  facts, links — not a log of every event. Events live in the dated source pages
  that cite the page; the page points to them.
- **Over-length triggers a review, not an automatic cut.** The word figures are
  diagnostic prompts, not hard caps: entity/concept/place pages target a few
  hundred to ~1,500 words; ~2,500 is where you *stop and classify*, not a ceiling
  a genuine bounded synthesis can't exceed. Crossing it means asking **which of
  three flavours** the length is:
  - **Append-log** (chronology has accreted) → trim back to synthesis; the
    dates live in `sources` and git.
  - **Verbose** (lean content, wordy prose) → tighten.
  - **Matrix** (lean content that is structurally N repeating cells — e.g.
    `dpi.id` carrying ~44 country blocks) → **extract intersections**. A tighten
    won't help; the page is a concept plus N cells wearing one filename. **First
    confirm it is genuinely matrix-shaped:** the length must be structural
    repetition — separable per-place (or per-entity) blocks — not a thematic
    argument with place detail woven through. `dpi.id` and `dpi.pay` decompose
    cleanly into country cells; `infra.connect` and `tech.ai` are genuinely
    thematic and correctly stay long. Extract the former; leave the latter.
    Splitting a thematic page shreds its through-line — when in doubt, don't.
  A page may be over threshold and the right action be "leave it": a dense,
  already-lean synthesis that doesn't decompose into cells is allowed to be long.
- **Extraction obeys a materiality bar.** Size decides *whether to look*; it never
  decides *what to extract*. When splitting a matrix page, a `{place}--{topic}`
  (or `{entity}--{place}`) intersection is created **only for cells that stand on
  their own** — concretely, roughly ≥120 words of substance, or ≥2 cited sources,
  or ≥3 distinct developments/points. Cells below that bar stay **on the parent
  as a single indexed one-line entry each**. The parent then becomes an index:
  full links out to the material cells, terse one-liners for the long tail. This
  is what reconciles splitting with the anti-fragmentation rule — no thin stubs
  minted just to hit a word count.
- **Keep indexes greppable.** The faceted indexes grow with the whole corpus and
  are read often. If one gets large, shard it (by region, or by entity type) so
  the agent reads a section, not the whole file.
- **Batch size.** A batch touching dozens of pages is the heaviest single
  operation. As the wiki matures, prefer smaller ingest batches.
- Trimming and splitting are safe: git and the source pages hold the detail, so
  refactoring a page loses nothing.

## Dead-link handling

Dead links are triaged, not blanket-fixed — a dead link is often a signal, not an
error. Three outcomes, applied by rule:

- **Intentionally dead → whitelist and ignore.** Controlled-vocabulary codes that
  are tags rather than pages — tag-only place codes (`XSS`, `XGL`), lens values
  (`sovereignty`, `colonialism`), and taxonomy slugs used purely as tags — are
  meant to have no page. Maintain a whitelist so they stop surfacing as lint
  noise. These stay "dead" forever, by design.
- **Wanted page → create.** A no-page link with **many referrers (≥10)** is the
  corpus straining toward a page that should exist (e.g. `digital.rural`, ~70
  refs). Create it from the referencing material.
- **Stray → fix or delete.** A dead link with **1–2 referrers** from a typo,
  curly/straight-apostrophe mismatch, or renamed target → repair the link or
  remove it.
- **Middle band (3–9 referrers)** → create if there is enough real material to
  write a genuine page; otherwise leave and list it in the digest. Lean toward
  creating where material exists.

## Autonomy and review

Everything here runs in git, so autonomous actions are reversible — a wrong call
is a revert, not a cleanup. Act autonomously by default; concentrate human
attention at the one point that matters. Three tiers:

- **Auto, silent (git-only).** Rule-determined mechanical maintenance: date
  prefixing, filename/apostrophe normalisation, link updates on rename, index
  sharding, vocabulary corrections, moving stranded queue items, whitelisting
  intentionally-dead links. Just do these. They appear in the digest only as
  aggregate counts.
- **Auto, then digest (itemised).** Consequential but reversible editorial
  actions decided by the written rules above: matrix extraction and materiality
  calls, page creation/deletion from dead-link triage, append-log trims, prose
  tightening, provisional contradiction resolutions. Do them, and list each in
  the weekly digest for skim and spot-check.
- **Hold for the publication pass.** Nothing blocks ingest, but items are
  appended to **`_review.md`**, the standing worklist, for human decision.
  `_review.md` is a **research agenda**, not just an error list — it carries two
  item types, each with a short **ID and git commit ref**:
  - **Contradiction** — competing claims the base can't reconcile, carrying a
    paste-ready, wiki-agnostic **external-research brief**: the competing values,
    who asserts each, and the source URLs CC *holds* for each — for the human to
    investigate outside the wiki (not a query against the base).
  - **Gap** — a high-confidence structural absence flagged as a research lead:
    something to *consider sourcing*, not a task CC actions itself.
  (Self-citation to the author's *published* work is **not** held — it is treated
  as ordinary expert analysis; see Source admissibility → The author's own work.)
  The human checks `_review.md` on their own schedule and prompts CC to act; when
  an item is resolved, CC **removes it from `_review.md` and appends a resolution
  line to `log.md`** (what it was, how resolved). So `_review.md` holds what's
  *open*, `log.md` holds what *happened*, and a short `_review.md` means you're
  caught up.

**Invariants — enforced, never waived.** These are not discretionary judgments
and never generate a review; they simply hold:
- Source admissibility (primary/first-hand only; AI syntheses and the author's
  own *unpublished* / AI-generated assets are leads/do-not-cite, not sources).
- No circular self-corroboration — a piece is never used to corroborate a claim
  drawn from that same piece (applies to the author's published work and any
  analyst alike). Published author work is otherwise treated as expert analysis.
- Capture is not endorsement — profiling an entity implies no view of it.
- Currency honesty — `date_source: proxy` and `date_precision` are set truthfully;
  a padded or proxy date is never presented as precise.
- Schema change control — edits to `CLAUDE.md` itself are **never silent and never
  a side effect of another task**. Proposed changes to this file are surfaced for
  the human's explicit ratification (in the digest or directly), with what changed
  and why, and take effect only once approved. This is the one rule about the
  rules.
If a case seems to require waiving an invariant, stop and raise it in the digest
rather than deciding.

## Weekly digest

Once a week, produce a digest — the human's oversight surface, skimmed not
studied. Every item is a git commit, so anything can be spot-checked or reverted.
Structure:

- **Ingested** — counts: sources admitted, leads parked, discards; entities
  created/updated (by type).
- **Mechanical maintenance** — aggregate counts only (renames, link fixes, shards,
  vocab fixes, queue moves).
- **Editorial actions** — itemised: extractions (which page → which intersections,
  which cells stayed as index lines), pages created or deleted from dead-link
  triage, append-logs trimmed, notable tightening.
- **Held for review** — a pointer to `_review.md`: open-item count and what was
  added this week, broken out by type (contradictions, gaps). The items
  themselves live in `_review.md`, not here.
- **Flags** — anything low-confidence, proxy/low-precision dates added, invariant
  cases raised, middle-band dead links left uncreated.

Keep it terse. The point is a five-minute skim that lets the human catch drift
and revert if needed, not a report to study.

## Querying

The wiki is queried by **reading, never writing**. Two modes, both strictly
read-side — they read the compiled base and never feed it. Query results are
derived synthesis, **never sources**; nothing in the query workspace flows into
`raw/`.

- **Conversational** — ask in session; CC greps the wiki, opens the relevant
  compiled pages, and answers. Nothing is written to disk.
- **Saved queries** — a query file in, a result file out, both filed for reuse,
  history and version control. Suits standing questions you'll re-run.

### Query workspace

```
queries/
  pending/   # query files awaiting a run
  done/      # queries moved here once answered (last step — mirrors new/)
  results/   # CC writes one result per query here
```

This sits **outside** the ingest pipeline (`new/ → raw/ → _leads/`). It is a read
workspace, not a store of record.

### Query file (`queries/pending/`)

```yaml
---
type: query
id: q-2026-07-13-dpi-id-east-africa
format: csv            # csv | md
columns: [country, dpa_status, enforcement_cases, as_of, sources]  # for csv
scope:                 # optional bounds — narrows the search
  places: [XEA]
  topics: [dpi.id]
  lens: []
---
Free-text question: which East African states have live digital-ID enforcement,
with dates and sources?
```

### Running

"Run the queries in `queries/pending/`." For each: read it, query the wiki within
the `scope` bounds, write the result to `queries/results/` in the requested
format, then **move the query to `queries/done/` as the last step** — so an
interrupted run leaves exactly the unanswered queries in `pending/`. CSV suits
matrix questions (X across N places); prose/`md` suits interpretive, lens-driven
questions.

`queries/` is only for **reading the base**. Reconciling a contradiction is
external research, not a wiki query — its brief lives with the `_review.md` item,
never here.

### Result file (`queries/results/`)

- Named to match the query `id`.
- Carries **provenance**: which source pages and as-of dates it rests on, and a
  note where coverage is thin or single-sourced. In `md` results, citations are
  **inline hyperlinks placed with the evidence** — on the specific claim they
  support — not gathered at the end of a paragraph or in a list at the foot of
  the document.
- Stamped `generated: YYYY-MM-DD` — a result is a **snapshot** of the base at that
  moment and goes stale as the base grows.

### The boundary

Results are derived views, never sources. A result is **do-not-ingest**: never
moved into `raw/`, never used to corroborate a wiki claim (same rule as any
synthesis). Treat `queries/results/` as regenerable snapshots, not a second store
of record. The base is canonical.

## Output

When drafting for publication, work from the compiled wiki, cite the underlying
pages, and follow the Data Landscapers house style — cautiously outspoken,
evidence-led, polemical about systems not people, for governance/policy readers
who are not necessarily technical. In markdown drafts, cite as **inline
hyperlinks placed with the evidence**, on the claim they support — not grouped
at paragraph ends or in a footer list. Unpublished draft output is never filed
back as source. Once a piece is *published* on data-landscapers.com it is treated
as expert third-party analysis whose framing may shape the wiki, subject only to
the ordinary hygiene in Source admissibility → The author's own work.

## Lint checks (run on request)

1. **Schema integrity** — pages missing required frontmatter for their type.
2. **Vocabulary** — any `topics` slug absent from `taxonomy.md`, or any place
   absent from `countries.csv`.
3. **Freshness** — `last_reviewed` older than 90 days, or a page whose newest
   source is stale relative to newer material elsewhere.
4. **Orphans & dead links** — pages absent from indexes; broken `[[links]]`.
5. **Untagged sources** — `raw/` items missing place/topic/entity tags.
6. **Inadmissible sources** — any compiled source page whose origin is a
   second-hand or AI-generated synthesis, or the author's *unpublished* notes;
   flag for removal and re-sourcing. (Published Data Landscapers work is
   admissible as analysis — do not flag it.)
7. **Duplicate pages** — near-identical concept/entity/intersection pages
   covering the same event; flag for merge.
8. **Page bloat** — synthesis pages past the refactor threshold (~2,500 words)
   or reading as append-logs; flag for trimming or intersection split. Oversized
   indexes; flag for sharding.
9. **Unresolved contradictions** — open `needs-review` flags from `log.md`.
10. **Stranded queue items** — anything left in `new/` after an ingest run;
    these are unfinished, not filed.
11. **Missing date prefix** — any `raw/` source (or artefact) without a
    `YYYY-MM-DD` prefix; flag for renaming (with link updates).

## Getting started

Create `new/`, `raw/` and `_leads/` at the root, an empty `_review.md`,
`queries/` (with `pending/`, `done/`, `results/`), and `wiki/` with its
subfolders; initialise `index.md`, `log.md`, and copy `taxonomy.md` +
`countries.csv` into `wiki/`. Point the web clipper at `new/`. Then report
"ready to ingest your first source."
