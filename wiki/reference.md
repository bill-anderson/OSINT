# reference.md — operational detail

*(In force from 2026-07-20.)*

`CLAUDE.md` holds the principles and is what CC reasons from. This file holds the
operational detail that `CLAUDE.md` deliberately demoted: vocabularies, folder
layout, filename rules, frontmatter schemas, the step-by-step ingest procedure,
sweep mechanics, hygiene thresholds, the query workspace, lint checks and the
digest structure. Look things up here; decide from `CLAUDE.md`.

Where the two ever disagree, **`CLAUDE.md` wins**. Points where this file was
adapted to it are marked `[adapted: CLAUDE.md now governs]`.

---

## 1. Facets and vocabularies

Every item is classified along facets held in **frontmatter**, never in a folder
matrix (62 places × ~36 topics would be thousands of empty cells). Folders are
organised by page *type*.

| Facet | Rank | Authority | Value form |
|---|---|---|---|
| **PLACE** | primary | `wiki/countries.csv` | ISO-3 country code, or `X__` region code |
| **SUBJECT** (`topics:`) | primary | `wiki/taxonomy.md` | Level-2 **slug** (e.g. `gov.protect`), never the label |
| **LENS** | secondary | this file | `sovereignty`, `colonialism` |
| **ENTITY** | secondary | `wiki/entities/` | entity page slug |

Reject values outside the vocabularies.

### PLACE

- Countries (ISO-3) and regions (`X__`) are the **same facet**; a region is a
  first-class place, not a container.
- **Single-parent tree**: country → subregion → `XAF` → `XGL`. Roll up by
  walking parents.
- **The `XSS` rule.** `XSS` (Sub-Saharan Africa) is defined *by rule* as **all
  `XAF` children except `XNA`**, since no country points to it.
- **`XGL` and `XSS` are tag-only groupings** — apply them to pan-SSA or
  non-Africa-specific items. Neither is ever any country's home region, and
  neither has a page (see §9 whitelist).
- Tag a region only when the item is genuinely region-level.

Region codes in `countries.csv` (54 ISO-3 countries + 8 `X__` regions = 62 codes):

```
XAF,Africa,XGL
XCA,Central Africa,XAF
XEA,East Africa,XAF
XGL,Global/Developing Countries,
XNA,North Africa,XAF
XSA,Southern Africa,XAF
XSS,Sub-Saharan Africa,XAF
XWA,West Africa,XAF
```

### SUBJECT

`wiki/taxonomy.md` — 10 Level-1 categories, ~36 Level-2 slugs. Strict
single-parent tree, but a page may carry several slugs (cross-border data is both
`dpi.exchange` and `gov.regional`).

### LENS

Analytical framing: **`sovereignty`**, **`colonialism`**. These are how the
material is *read*, distinct from what it is *about*. Kept deliberately tight:
"governance" and "transformation" live in the subject taxonomy and overall
scope, and OSINT is a method, not a lens. Open vocabulary — extend only on Bill's
ask.

### Blocs are entities, not places

Because the place facet is *geographic*, political and economic blocs — AU,
ECOWAS, SADC, EAC, COMESA, AfCFTA, Smart Africa — are **entities**
(`entity_type: organisation` or `initiative`).

> Worked example: the **Malabo Convention** tags to the **AU entity plus the
> affected countries**, not to a geographic region.

### Entity types (eight values)

`company` · `organisation` · `government-body` · `initiative` · `person` ·
`deal` · `resource` · `instrument`

- A **resource** is a standing OSINT asset you consult repeatedly — a database,
  dataset, registry, tool or portal (PeeringDB, GLEIF, an open-contracting
  portal, a national statistics portal).
- An **instrument** is a published standard, taxonomy, framework, or policy/legal
  instrument that exists as a reference object in the domain (the Malabo
  Convention, the AU Data Policy Framework, the World Bank DT taxonomy, MOSIP
  specs, GDPR, a flagship national data strategy).

Neither is a dated source nor a lead.

### Finance subject vs deal entity

`finance.new` / `finance.mou` are **SUBJECT** tags meaning "this is about
investment / agreements".

- A *specific* transaction or MoU is recorded as a **dated fact** on the pages it
  touches (the parties' entity tags + `finance.mou` + places/topics).
- It becomes its own **`deal` entity page** only when **material** — large,
  multi-party, or actively tracked — per the entity page bar (§5).
- A one-mention MoU stays a tagged fact, not a page.
- A piece on funding *trends* carries `finance.new` with no single deal.

### Canonical link-list bracket convention

Write **one bracket layer per item** inside the outer list brackets:

```yaml
sources: [[a], [b], [c]]
entities: [[cassava-technologies], [nvidia]]
```

This is the **canonical** form. Do **not** write the double-bracket-per-item
style `sources: [[[a]], [[b]]]`, and never a hybrid (`[[[a], [[b]…`): a parser
reading one convention mis-reads the other. When appending to a page written in
the other style, **convert the whole line to canonical** rather than matching the
local style. Lint #12 checks this.

---

## 2. Folder structure

```
new/                      # unprocessed intake queue — clips land here; drained on ingest
new-queue/                # sweep staging — candidates awaiting processing into new/
  done/                   # BILL'S. Human-owned; CC does not read, write or drain it
sweep/                    # acquisition sweeps (upstream of new/):
                          #   daily-README.md  (daily trade-journal sweep procedure)
                          #   daily/           (its state)
                          #   archive/         (completed Phase-2 back-fill apparatus)
                          #   recapture/       (SPENT TOOLING — see note below)
raw/                      # admitted sources, flat — immutable after ingest (one bounded
                          #   exception: verbatim fidelity re-capture, §4)
  2026-06-16-cassava-nvidia-deal.md
_leads/                   # parked in-scope material not yet usable — to mine, not compile
reviews/
  contradictions/
    open/                 # one file per unresolved contradiction — the reconcile worklist
    done/                 # resolved (last step)
    research/             # quarantined external-research output — DO-NOT-INGEST
  acquisitions.md         # fetch list: specific known documents the wiki wants and lacks
wiki/
  concepts/               # one page per SUBJECT topic
  places/                 # country + region hub pages (one page type)
  entities/               # companies, orgs, gov bodies, initiatives, people, deals,
                          #   resources, instruments
    _watchlist.md         # core-entities watchlist (§5)
  intersections/          # topic × place — created LAZILY, only when substantive
  taxonomy.md             # SUBJECT controlled vocabulary (authority)
  countries.csv           # PLACE controlled vocabulary (authority)
  trade-journals.csv      # sweep input list (read fresh each run)
  index.md                # master table of contents
  topics-index.md         # faceted navigation by subject
  places-index.md         # faceted navigation by place
  entities-index.md       # faceted navigation by entity
  log.md                  # append-only operation log (Decisions live here)
  reference.md            # this file
queries/                  # read-only query workspace (§10)
  pending/  done/  results/
```

**`new-queue/done/` is Bill's.** Human-owned staging. CC does not read it, write to
it, drain it, or count it in any tally.

**`sweep/recapture/` is spent tooling**, not part of any standing procedure. It
holds the scripts and ledger from the one-off verbatim re-capture run of 2026-07
(`run.log`: 1,007 of 1,013 items processed) — `run.py`, `retry.py`, `extract.py`,
`progress.sh`, `ledger.csv`, `done/exa-recovery.csv`. The **ledger has provenance
value** and records which held sources were re-captured; the scripts are reusable
if another bulk re-capture is ever needed. Nothing reads it on a normal pass. Under
CLAUDE.md's month rule it is a deletion candidate — git holds it.

**The intake pipeline is physical.** A file's folder *is* its state: `new/` = not
yet processed, `raw/` = admitted as a source, `_leads/` = parked to mine. The web
clipper points at `new/`. "What's new" is then just the contents of `new/` — no
diffing against the log. Each item's move out of `new/` is the **last** step of
processing it, so an interrupted run leaves exactly the unfinished items in
`new/` and re-running resumes cleanly.

---

## 3. Filenames

Every source in `raw/` carries a **`YYYY-MM-DD` date prefix** taken from its true
**publication date**. This keeps `raw/` chronologically sorted and greppable by
date without a folder tree, and the prefix carries real meaning for the currency
discipline. The existing `raw/` corpus is normalised to published dates — current
practice, not aspiration.

- **CC establishes `published`; it isn't handed to it.** The web clipper cannot
  reliably supply a publication date. During ingest, read the clip content (or
  the source page) for the real date and **set or correct the `published`
  frontmatter and the filename accordingly**. This is an active step, not a
  passive read of whatever the clipper left.
- **Fallback chain, flagged.** Only when a publication date genuinely can't be
  found, fall back to **`ingested`**, then **`created`**. When you fall back,
  mark the source `date_source: proxy` so a clip-dated file is never later
  reasoned about as though that were its publication date.
- **Partial dates are padded, and the precision recorded.**
  - year only → prefix `YYYY-01-01`
  - month only → prefix `YYYY-MM-01`
  The filename is always a valid, sortable full date; record the true precision
  as `date_precision: year | month | day` (default `day`). Padding is for
  sorting; the frontmatter keeps the honesty.
- **All file types, not just clips.** PDFs, images and other artefacts follow the
  same rule — the clipper only prefixes markdown clips, so anything added by
  other routes must be prefixed on ingest.
- **Binary artefacts get a companion source page.** A PDF or image can't hold
  YAML frontmatter, so create a date-prefixed markdown **source page** carrying
  the frontmatter (places, topics, entities, `published`, etc.) that links to or
  embeds the artefact. Prefix **both** the source page and the artefact with the
  same date so they sort together.
- **Renaming must not break links.** Source pages are referenced by `[[link]]`
  from `sources:` lists. Rename via Obsidian (which updates links), or, if
  renaming on disk, update every referencing link and confirm with the dead-link
  lint. Do renames in git so they're reversible.

---

## 4. Frontmatter schemas

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
body_completeness: full   # full | excerpt | paywalled
---
```

`body_completeness` values:

| Value | Meaning |
|---|---|
| `full` | complete verbatim body as published |
| `excerpt` | verbatim *portion* kept when the full text is genuinely unavailable (fetch failure, hard paywall serving nothing usable) |
| `paywalled` | HTTP-200 paywall serving only a free lede; kept **only** where the free body *excluding the title* adds value |

**Paywalled-stub promotion gate.** A `paywalled` item whose payload depends on
the withheld body needs a **manual subscriber clip before promotion**. One whose
full payload sits in the free lede promotes normally. A headline-only item (free
body adds nothing beyond the title) is **dropped, not stored**.

**Immutability has one bounded exception — verbatim fidelity re-capture.** `raw/`
is immutable to stop **retroactive reinterpretation** of the record; it does not
freeze a known fidelity defect. A source whose stored body is a **paraphrase, AI
summary or partial `excerpt`** may be overwritten with the **source's own
verbatim words** under bounded conditions:

- the **URL is identical**;
- the change **only** replaces a non-verbatim/partial body with the fuller
  verbatim text — it never edits facts, framing, or any frontmatter beyond
  `body_completeness`;
- the **filename, `published`, `retrieved`/`sweep_batch` and other frontmatter
  are kept**;
- `body_completeness` is flipped to `full` (or `paywalled` where a paywall still
  caps it);
- log each instance.

**Excerpts are overwritten with the complete body wherever possible.** This
completes the record rather than rewriting it.

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

Created **only when a place-specific treatment of a topic is substantial** — e.g.
`kenya--gov-protect.md`. Do not pre-create empty cells.

- Naming: **`{place-slug}--{topic-slug}.md`**
- Link from **both** the place hub and the concept page.

### `last_reviewed` semantics

`last_reviewed` = the date of the last **substantive** check, not a trivial edit.
A review includes **re-checking the currency of the page's dated figures**, not
just its structure. Set it on every page touched during ingest (§6 step 10).

---

## 5. The entity page bar

Tagging rules themselves are in `CLAUDE.md` → *Entities* (tag the actors, not
every mention; institutions not officeholders; three to six per source).
[adapted: CLAUDE.md now governs — the earlier "tag exhaustively" rule is
withdrawn.] What follows is the **paging** bar and the machinery around it.

**Page (earned) — only when material.** Mint a standing page in `wiki/entities/`
only when the entity is material:

- cited by **≥3 sources**, **OR**
- on the **core-entities watchlist**, **OR**
- a **reference instrument central to the domain** (Malabo, AU DPF, MOSIP and the
  like are material on sight).

Below the bar the entity lives as a tag plus its mentions in source prose; no
page is written, and that is expected, not a gap. A profile page, when minted,
has no "event" and may be global — also expected.

**Core-entities watchlist** — `wiki/entities/_watchlist.md`, Bill-owned: the
couple of dozen players and instruments always worth an eagerly-maintained page
(major operators, key data-protection authorities, the hyperscalers, MOSIP,
initiatives/deals actively tracked). On the list → minted on first mention; off
it → wait for the ≥3-source bar.

**Minting and upkeep is a periodic pass, not inline work.** The **entity pass**
(run on request / weekly) does three things at once:

1. mints pages for entities that have crossed the bar;
2. refreshes the synthesis / `places` / `topics` of existing material pages;
3. **merges tag drift** — variant slugs for the same entity (the
   Econet-Group-vs-opco case) reconciled to **one canonical slug**, rewiring the
   referring `entities:` lists.

At ingest you only *tag*, and *append* the source to any page that already
exists. A newly material entity appears as a tag first and gains its page a
little later; the link is never lost, only the synthesis deferred.

**Resource frontmatter** — the data-asset case:

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

**External instruments are sources, not discards.** Discard means genuine
non-intelligence artefacts only: **the wiki's own** config and vocabulary files
(`taxonomy.md`, `countries.csv`, scaffolding), blank or failed captures,
duplicated scaffolding. **External** published standards, taxonomies and policy
instruments are *never* discards — they are `instrument` references (and pages
once material). The wiki's own `taxonomy.md` is config; the *published* World
Bank taxonomy is an `instrument` — different objects, different homes.

A dated fact you later pull about an entity or *from* it (a country ratifying the
Malabo Convention, or "PeeringDB lists 14 IXPs in Kenya as of 2026-07-10") is a
normal source that cites the entity — whether or not the entity yet has a page.

---

## 5a. Admissibility details not covered by CLAUDE.md

Tiers, primary-vs-synthesis and the author's-own-work regime live in `CLAUDE.md` →
*The material*. These three operational clauses do not, and are carried here.

**Academic work.** Theses and dissertations are admissible on their content.
Single authorship or student authorship is **not** grounds for rejection. An old
thesis is a historical baseline, not stale news — file it dated and treat it as
such.

**No circular self-corroboration.** Beyond the CLAUDE.md rule that a piece never
corroborates a claim drawn from that same piece:

- Do **not** ingest a publication that merely re-renders the wiki's own pages —
  that is the wiki citing itself through a laundering step.
- Where a piece of analysis states factual claims, trace them to the underlying
  primaries and cite those for the facts; cite the piece itself for its analysis.

**External standards are sources, not config.** A published framework, taxonomy or
standard from an outside body (e.g. the World Bank theme taxonomy) is an
`instrument` and is ingested. This is distinct from the wiki's *own* configuration
files — `taxonomy.md`, `countries.csv`, `_watchlist.md` — which are never sources.

---

## 6. Filing rules — draining the `new/` queue

Process each item in `new/` through the steps below. The item's **move out of
`new/` is the last step**, and where it moves is its classification: admitted
sources → `raw/`, parked leads → `_leads/`, discards → deleted. "Moved out of
`new/`" is therefore not the same as "became a source" — draining the queue means
routing each item to its correct destination.

**1. Intake screen (do this first).** Check provenance against `CLAUDE.md` → *The
material*.

- Second-hand or AI-generated synthesis → do **not** compile it. Note it in
  `log.md` as parked-inadmissible with a one-line reason, extract any primary
  sources it references for separate ingestion, move it to `_leads/`, stop.
- Reports no development but establishes or profiles a **standing object** of
  OSINT value — organisation, company, government body, person,
  project/initiative, data asset (database/dataset/registry/tool/portal), or
  reference instrument (standard, taxonomy, framework, policy/legal instrument) →
  capture it as the matching entity type rather than discarding it; never park it
  as a lead.
- **Discard (delete)** only the wiki's own config/vocabulary files and genuine
  non-intelligence artefacts.
- **Out of scope → reject and delete.** An item that is admissible and first-hand
  but falls outside data governance + digital transformation — e.g. transport
  electrification / e-mobility, or a borderline tech innovation carrying **no
  real data or digital-platform layer** — is rejected and deleted
  (git-reversible), **not** parked in `_leads/`. Distinguish the genuinely
  in-scope case where the actor is itself a digital platform (e.g. Yango). When
  scope is in doubt, reject and delete.
- **Undated/unattributed but possibly important?** A parked lead lacking a dated,
  attributable origin yet carrying **possibly-important information** (a
  load-bearing claim, a first-of-kind development) is **also filed as a
  provenance/corroboration hunt in `reviews/contradictions/open/`** — a research
  brief for the reconcile pass to seek the original posting and dated primaries —
  so it is actively worked rather than left inert in `_leads/`. It stays a lead
  until reconcile surfaces admissible primaries.

Only admissible, in-scope items proceed.

**2. Deduplication check.** Before creating pages, decide whether this source
reports an event already in the wiki or a genuinely new development. Match
incoming sources against existing pages by **event + entities + date**. Outcomes
are `CLAUDE.md` → *Duplicates* (**drop / replace / keep both**); the mechanics:

- **Same event, same period** (another outlet on the same story) → do *not* spawn
  parallel pages. Apply drop / replace / keep-both. On **drop**, note it in
  `log.md` in one line. On **replace**, ingest the better source, rewire the
  `sources:` citations, retire the held one. On **keep both**, create the source
  page, attach it to the `sources` list of the pages the event already touches,
  and fold in any detail, figure or quote the existing account lacks. If it
  conflicts, apply step 7 rather than overwriting.
- **Same story, later date** (the situation has moved) → an **update**, not a
  duplicate: revise the affected pages, add the new source, keep the prior "as
  of" statement dated rather than deleting it.
- **Older publication, fresher state already held** (backfill) → a **historical
  baseline**, not a development. File and date it, but it must **not overwrite or
  out-rank fresher state** on synthesis pages. Ingest date is irrelevant here;
  only `published` decides precedence.
- **New event** → proceed normally.

When same-vs-new is genuinely unclear, prefer attaching to the existing page and
note the uncertainty in `log.md` rather than creating a near-duplicate.

**3. Create the source page** with full frontmatter, facet tags, and the source's
**full verbatim body** — the whole article as published. This binds every route,
including automated collection. Capture the full text from the page — never a
search-result excerpt or an AI paraphrase/summary.

- **Paywall serving a free lede** (HTTP 200, first 1–3 paragraphs): keep the
  verbatim free portion, set `body_completeness: paywalled` — but **only where
  that free content, excluding the title, adds value**. Headline-only → dropped,
  not stored. The free-to-read text is the source's own words (first-hand, not a
  summary), so it does not offend the AI-synthesis invariant.
- **Text otherwise genuinely unavailable** (fetch failure, or a hard paywall
  serving nothing usable): store the verbatim portion available, set
  `body_completeness: excerpt`, flag for a manual clip.
- Otherwise record `body_completeness: full`.

**4. Entities — tag now, page later.** Tag the actors per `CLAUDE.md` →
*Entities*. For any entity that **already has a page**, append this source to its
`sources:` list — a one-line append, *not* a re-synthesis. Do **not** create a
page for a newly-named entity here, and do **not** re-synthesise existing pages
inline: minting and refreshing live in the periodic **entity pass** (§5), off the
ingest hot path. Deals/MoUs are recorded as dated facts on the pages they touch
and become a `deal` entity page only when material.

**5. For each place** — update the hub: add to **Recent developments**, ensure the
topic section exists, link source + entities. Tag regions only when the item is
genuinely region-level.

**6. For each subject** — update the concept page. If place-specific and
substantial, create/update the intersection and link from both sides.

**7. Flag contradictions.** Never silently overwrite. Note it in `log.md`, set
`needs-review` on affected pages, and add a **contradiction** item as a new file
in `reviews/contradictions/open/` (one file per item). The item carries a
**paste-ready external-research brief** — **wiki-agnostic** (no facets, slugs,
page links or scope) — containing:

- the claim in dispute;
- each competing value;
- who asserts each;
- **the source URL(s) CC already holds for each assertion**, read from the source
  pages' frontmatter.

CC reports **only links it actually holds** — never suggests external or primary
sources from its own knowledge. If a competing value has no clean source URL on
file, say so; that absence is itself a provenance gap and is the finding. Close
with a plain instruction, e.g. *"these sources report different values for X —
investigate the discrepancy and suggest a resolution, recording an as-of date for
each."*

The brief goes with the `reviews/contradictions/` item, **not** into `queries/` —
resolving a contradiction is external research, not a query against the base. The
**reconcile pass** runs that research in-session, ingests the primaries it
surfaces through `new/`, and applies a resolution to the affected pages. Research
output is quarantined in `reviews/contradictions/research/` and never ingested;
the page fix cites the primaries, not the synthesis. Resolved items move to
`reviews/contradictions/done/` as the last step.

**8. Absences.** A specific known **document** the wiki wants and doesn't hold →
add it to `reviews/acquisitions.md` (a fetch list, worked by the sweep or a
hand-clip, never by reconcile). Anything else that can't be closed by either
queue is a **horizon**, and belongs on the relevant page as a dated statement of
what isn't established. [adapted: CLAUDE.md now governs — `reviews/gaps.md` and
the structural-gap register are withdrawn.]

**9. Update the indexes** — `topics-index.md`, `places-index.md`,
`entities-index.md`.

**10. Set `last_reviewed`** on every page touched; append to `log.md` (judgment
calls under **Decisions**, with what was decided and why).

**11. Last step: move the item from `new/` to `raw/`**, adding the `YYYY-MM-DD`
prefix from its `published` date if not already present (§3). For a binary
artefact, ensure its companion source page and the artefact share the prefix.

---

## 7. Sweep intake (`new-queue/` and `sweep/`)

Acquisition sweeps run *upstream* of the wiki and stage into `new-queue/`.

- **Daily trade-journal sweep** (the workhorse) — procedure in
  **`sweep/daily-README.md`**. Run manually from CC; loops the journals in
  `wiki/trade-journals.csv` (read fresh each run) over a high-water-mark window;
  stages **flat** candidate files into `new-queue/` (no per-place subfolders);
  keeps its state in `sweep/daily/`.
- The universal sweep of everything *except* those journals (national press,
  think tanks) is the **digest**, run read-only from the
  `africa-digital-policy-watch` skill — it never writes to `new-queue/`.
- **Phase-2 back-fill** (completed 2026-07-17) — the 2025→2026 national-press +
  trade-journal catch-up. Apparatus archived at **`sweep/archive/`** (procedure,
  query recipes, ledger, drop logs); it wrote `new-queue/{ISO3}/` folders, since
  drained into `new-queue/done/`.

**Rules binding every sweep:**

- **Containment boundary.** The sweep writes **only** to `new-queue/` (candidate
  source files with best-effort frontmatter) and to `sweep/` (its own
  state/logs). It **never** writes to `new/`, `raw/`, or any `wiki/` page.
- Candidates enter the base only by being **processed**: `new-queue/ → new/ →`
  ingest `→ raw/`. An unreviewed sweep result can never become a source by
  accident. From `new/`, the filing rules in §6 apply unchanged. [adapted:
  CLAUDE.md now governs — CC promotes and logs; there is no human-promotion gate.]
- **Sweep-time dedup is conservative** — exact URL or confident same-outlet
  re-crawl only, logged per run. Nothing is discarded silently. The aggressive
  pass is the post-ingest duplicate lint (#7), with full text in hand.
- The admissibility screen and the `published`-date discipline (fallback chain,
  `date_source: proxy`, `date_precision`) apply at **fetch/staging time** exactly
  as at ingest.
- **Staged candidates carry `retrieved:` but never `ingested:`.** `ingested:` is
  set only when the item is actually ingested.

---

## 8. Page hygiene and scaling

The corpus can grow without bound; a single *operation* cannot. Each ingest
should touch a small local working set, so keep synthesis pages roughly
constant-sized and let linear growth land in `raw/` and source pages.

**Word figures are diagnostic prompts, not hard caps.**

| Figure | Meaning |
|---|---|
| a few hundred – **~1,500 words** | target range for entity / concept / place pages |
| **~2,500 words** | stop and **classify** — not a ceiling a genuine bounded synthesis can't exceed |

Crossing ~2,500 means asking **which of three flavours** the length is:

- **Append-log** (chronology has accreted) → trim back to synthesis; the dates
  live in `sources` and git.
- **Verbose** (lean content, wordy prose) → tighten.
- **Matrix** (lean content that is structurally N repeating cells — e.g. `dpi.id`
  carrying ~44 country blocks) → **extract intersections**. A tighten won't help;
  the page is a concept plus N cells wearing one filename. **First confirm it is
  genuinely matrix-shaped:** the length must be structural repetition — separable
  per-place (or per-entity) blocks — not a thematic argument with place detail
  woven through. `dpi.id` and `dpi.pay` decompose cleanly into country cells;
  `infra.connect` and `tech.ai` are genuinely thematic and correctly stay long.
  Extract the former; leave the latter. Splitting a thematic page shreds its
  through-line — when in doubt, don't.

A page may be over threshold and the right action be "leave it": a dense,
already-lean synthesis that doesn't decompose into cells is allowed to be long.

**Extraction obeys a materiality bar.** Size decides *whether to look*; it never
decides *what to extract*. When splitting a matrix page, a `{place}--{topic}` (or
`{entity}--{place}`) intersection is created **only for cells that stand on their
own** — concretely:

- roughly **≥120 words** of substance, **or**
- **≥2 cited sources**, **or**
- **≥3 distinct developments/points**.

Cells below that bar stay **on the parent as a single indexed one-line entry
each**. The parent then becomes an index: full links out to the material cells,
terse one-liners for the long tail. No thin stubs minted just to hit a word
count.

**Keep indexes greppable.** The faceted indexes grow with the whole corpus and
are read often. If one gets large, **shard it** (by region, or by entity type) so
CC reads a section, not the whole file.

**Batch size.** A batch touching dozens of pages is the heaviest single
operation. As the wiki matures, prefer smaller ingest batches.

Trimming and splitting are safe: git and the source pages hold the detail, so
refactoring a page loses nothing.

---

## 9. Dead-link triage

Dead links are triaged, not blanket-fixed — a dead link is often a signal, not an
error. Four outcomes, applied by rule:

| Referrers | Action |
|---|---|
| whitelisted | **Intentionally dead → ignore** |
| **≥10** | **Wanted page → create** it from the referencing material |
| **3–9** | **Middle band** → create if there is enough real material for a genuine page; otherwise leave and list in the digest. Lean toward creating where material exists |
| **1–2** | **Stray → fix or delete** — typo, curly/straight-apostrophe mismatch, or renamed target: repair the link or remove it |

Example of the ≥10 band: `digital.rural`, ~70 refs.

**Whitelist of intentionally-dead links** — controlled-vocabulary codes that are
tags rather than pages, meant to have no page, and "dead" forever by design:

- tag-only place codes: **`XSS`**, **`XGL`**
- lens values: **`sovereignty`**, **`colonialism`**
- taxonomy slugs used purely as tags

Maintain the whitelist so these stop surfacing as lint noise.

---

## 10. Query workspace

Querying is read-only (`CLAUDE.md` → *Working the base*). Two modes:

- **Conversational** — ask in session; CC greps the wiki, opens the relevant
  compiled pages, and answers. Nothing is written to disk.
- **Saved queries** — a query file in, a result file out, both filed for reuse,
  history and version control. Suits standing questions that get re-run.

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

For each query in `queries/pending/`: read it, query the wiki within the `scope`
bounds, write the result to `queries/results/` in the requested format, then
**move the query to `queries/done/` as the last step** — so an interrupted run
leaves exactly the unanswered queries in `pending/`. CSV suits matrix questions
(X across N places); prose/`md` suits interpretive, lens-driven questions.

`queries/` is only for **reading the base**. Reconciling a contradiction is
external research, not a wiki query — its brief lives with the
`reviews/contradictions/` item, never here.

### Result file (`queries/results/`)

- **Named to match the query `id`.**
- Carries **provenance**: which source pages and as-of dates it rests on, and a
  note where coverage is thin or single-sourced. In `md` results, citations are
  **inline hyperlinks placed with the evidence** — on the specific claim they
  support — not gathered at the end of a paragraph or in a list at the foot.
- Stamped **`generated: YYYY-MM-DD`** — a result is a **snapshot** of the base at
  that moment and goes stale as the base grows.

Results are derived views, never sources: do-not-ingest, never moved into `raw/`,
never used to corroborate a wiki claim. Treat `queries/results/` as regenerable
snapshots, not a second store of record. The base is canonical.

---

## 11. Lint checks (run on request)

1. **Schema integrity** — pages missing required frontmatter for their type.
2. **Vocabulary** — any `topics` slug absent from `taxonomy.md`, or any place
   absent from `countries.csv`.
3. **Freshness** —
   - `last_reviewed` older than **90 days**;
   - a page whose newest cited source is over **2 years** old while the same topic
     carries sources under **6 months** old elsewhere;
   - any time-varying figure written in bare, undated present tense.
4. **Orphans & dead links** — pages absent from indexes; broken `[[links]]`
   (triage per §9).
5. **Untagged sources** — `raw/` items missing place/topic/entity tags.
6. **Inadmissible sources** — any compiled source page whose origin is a
   second-hand or AI-generated synthesis, or Bill's *unpublished* notes; flag for
   removal and re-sourcing. (Published Data Landscapers work is admissible as
   analysis — do not flag it.)
7. **Duplicates.**
   - *Pages* — near-identical concept/entity/intersection pages covering the same
     event; flag for merge.
   - *Sources* — cluster `raw/` items sharing **event + entities + date**, then
     within each cluster find sources whose *in-scope payload* — the facts,
     figures, dates, entities and quotes the wiki draws on — is identical, one
     adding nothing the other lacks (outlet boilerplate, framing and length don't
     count). Resolve each set by `CLAUDE.md` → *Duplicates*: **drop** the
     redundant copy, or **replace** the held one where the incoming is a clear
     tier upgrade (primary over secondary; canonical URL over
     syndicated/aggregator copy; full body over excerpt; `date_source: source`
     with finer `date_precision`). **A later, better source displaces an earlier
     one — quality beats primacy.** Do not replace for marginal betterness.
     [adapted: CLAUDE.md now governs — the old (a)–(d) keeper ladder, which
     preferred earliest publication and fell back to lexicographic filename, is
     superseded.] Before deleting, **rewire any `sources:` citation to the kept
     twin** and record the deletion in `log.md` (kept + pruned URLs/titles). If
     payloads differ at all — a figure, date, quote or provenance link one lacks —
     they are complementary or contradictory, not duplicates: keep both, folding
     in detail or applying the contradiction rule. Git holds the deleted files.
8. **Page bloat** — synthesis pages past the refactor threshold (~2,500 words) or
   reading as append-logs; flag for trimming or intersection split. Oversized
   indexes; flag for sharding.
9. **Unresolved contradictions** — open `needs-review` flags from `log.md`, and
   files left in `reviews/contradictions/open/`.
10. **Stranded queue items** — anything left in `new/` after an ingest run; these
    are unfinished, not filed.
11. **Missing date prefix** — any `raw/` source (or artefact) without a
    `YYYY-MM-DD` prefix; flag for renaming (with link updates).
12. **`sources`/`entities` link-list convention** — any page whose `sources:` or
    `entities:` frontmatter uses the non-canonical double-bracket-per-item style
    `[[[a]], [[b]]]` (canonical is `[[a], [b]]`), or a malformed hybrid; flag for
    normalisation.

---

## 12. Weekly digest structure

Terse — a five-minute skim, not a report to study. Every item is a git commit, so
anything can be spot-checked or reverted. Headings:

- **Ingested** — counts: sources admitted, leads parked, discards; entities
  created/updated (by type).
- **Mechanical maintenance** — aggregate counts only (renames, link fixes,
  shards, vocab fixes, queue moves).
- **Editorial actions** — itemised: extractions (which page → which
  intersections, which cells stayed as index lines), pages created or deleted
  from dead-link triage, append-logs trimmed, notable tightening, entity-pass
  mints and tag-drift merges.
- **Reviews** — contradictions reconciled this pass and any left open as
  inconclusive; acquisitions added and fetched. The items themselves live in
  `reviews/`, not here.
- **Flags** — anything low-confidence, proxy/low-precision dates added,
  middle-band dead links left uncreated, anything that looks shaky.

Job wrap-up line (per `CLAUDE.md` → *Reporting*):
`contradictions - NN ; acquisitions - NN ; decisions logged - NN`
