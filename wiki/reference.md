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
- **`XGL` and `XSS` are groupings, never a country's home region** — apply them
  to pan-SSA or non-Africa-specific items. **Both now have hub pages** and are
  compiled like any other place *(Bill's ruling, 2026-07-21; the earlier "neither
  has a page" and the §9 whitelist entries are withdrawn)*.
- **Never roll sub-regions up into `XSS`.** Because `XSS` is defined by rule as
  all `XAF` children except `XNA`, it *contains* `XEA`/`XWA`/`XSA`/`XCA` — so
  summing those into an `XSS` total double-counts every deal already tagged
  `XSS`. Aggregation is **by literal tag only**. The safeguard is on the tagging
  side: an item scoped to **one** sub-region takes that sub-region's code, and
  `XSS` is reserved for what is genuinely pan-SSA or spans **two or more**
  sub-regions.
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

`finance.new` / `finance.mou` / `finance.budget` are **SUBJECT** tags meaning
"this is about investment / agreements / state budget allocation".

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
new/                      # unprocessed intake queue — clips AND sweep candidates land here; drained on ingest
new-queue/                # RETIRED as sweep target (2026-07-21); sweep now writes straight to new/
  done/                   # BILL'S. Human-owned; CC does not read, write or drain it
new-budget/               # budget documents awaiting extraction — NOT an ingest queue
  {ISO3}/{FY}/            #   artefact (PDF/XLSX) + its companion markdown, together
  manifest.csv            #   what is held and which country-year it belongs to
budget-archive/           # budget documents already extracted (BUDGET-EXTRACT.md)
  {ISO3}/{FY}/            #   artefact + companion + the extracted tables as CSV
                          #   artefacts untracked (binary .gitignore rule); CSVs tracked
sweep/                    # acquisition-sweep STATE (procedures are root DAILY-SWEEP.md /
                          #   DOMESTIC-FINANCE-SWEEP.md / CONTENT-SWEEP.md — upstream of new/):
                          #   daily/           (daily sweep state)
                          #   domestic/        (domestic finance sweep state)
                          #   journals/ newspapers/ organisations/   (content-sweep state:
                          #     each holds state.json → last_swept_day)
                          #   archive/         (completed Phase-2 back-fill apparatus)
                          #   recapture/       (SPENT TOOLING — see note below)
raw/                      # admitted sources, flat — immutable after ingest (one bounded
                          #   exception: verbatim fidelity re-capture, §4)
  2026-06-16-cassava-nvidia-deal.md
                          # (no _leads/ — abolished 2026-07-23; ingest has four dispositions,
                          #  raw / contradiction / acquisition / delete — no parking folder)
reviews/
  contradictions/
    open/                 # one file per unresolved contradiction — the reconcile worklist
    done/                 # resolved (last step)
                          # (no research/ — removed 2026-07-20; reconcile keeps no scratch on disk)
  acquisitions.md         # fetch list: specific known documents the wiki wants and lacks
  JOBS.md                 # the one-off batch queue (RUN-BATCH.md drains it; emptied on completion)
  weekly_jobs.md          # the standing weekly batch (re-armed on completion, not emptied)
  jobs-archive/           # completed batch runs: <filestem>-YYYY-MM-DD-HHMM.md (archived on completion)
wiki/
  concepts/               # one page per SUBJECT topic
  places/                 # country + region hub pages (one page type)
  entities/               # companies, orgs, gov bodies, initiatives, people, deals,
                          #   resources, instruments
    _watchlist.md         # core-entities watchlist (§5)
  intersections/          # topic × place — created LAZILY, only when substantive
  taxonomy.md             # SUBJECT controlled vocabulary (authority)
  countries.csv           # PLACE controlled vocabulary (authority)
  sweep-daily.csv         # daily sweep input list (read fresh each run)
  sweep-journals.csv      # content sweep: journals (url, Title, Description)
  sweep-newspapers.csv    # content sweep: newspapers (URL, iso-3, Title)
  sweep-organisations.csv # content sweep: organisations (URL, Title, Primary Focus)
  index.md                # master table of contents
  topics-index.md         # faceted navigation by subject
  places-index.md         # faceted navigation by place
  entities-index.md       # faceted navigation by entity
  log.md                  # append-only operation log (Decisions live here)
  ingested_log.md         # rolling 7-day view of what ingest admitted to raw/ (temporary, pruned)
  reference.md            # this file
  finance-record-spec.md  # the finance record spec (store of record, merging, compile)
  finance-load-domestic-state.md  # driver: domestic-state budgets/expenditure (invoked by ingest 2a)
  finance-news-driver.md  # driver: finance from prose sources (invoked by ingest 2a; back-swing)
queries/                  # read-only query workspace (§10)
  pending/  done/  results/
```

**`new-queue/done/` is Bill's.** Human-owned staging. CC does not read it, write to
it, drain it, or count it in any tally.

**`{FY}` is always the bare start year — `2024`, never `2024-25`**
*(Bill's ruling, 2026-07-22)*. It means the fiscal year *beginning* in that year,
so `2024` is South Africa's and Kenya's 2024/25 and Nigeria's calendar 2024
alike — the same resolution rule that governs instructions
(`wiki/finance-load-domestic-state.md` → *Fiscal years*). One form everywhere: the
instruction, the folder and the run identifier all read `2024`, and no country's
folder needs a different shape from another's.

The document's own `fiscal_year_label` stays **verbatim** in its frontmatter
(`2024/25`, `2024-2025`, `2017 EFY`). The folder is a path, not a citation.

`{ISO3}/{FY}/` applies to `new-budget/` and `budget-archive/` alike, so a document
keeps its shape when it moves between them, and a country swept for several years
cannot mix them.

**`new-budget/` is outside the ingest path, deliberately.** It holds budget
documents — appropriation acts, estimates volumes, outturn reports, IFMIS and
procurement extracts — staged by the domestic finance sweep
(`DOMESTIC-FINANCE-SWEEP.md`) and drained by `BUDGET-EXTRACT.md`.

- **Ingest never drains it.** A 600-page appropriation act is not a source to be
  read and filed; it is a structure to be learned, and the first documents are
  meant to be looked at by hand before any procedure is committed to.
- **The artefact and its companion markdown sit together**, same folder, same date
  prefix — not split across `new-budget/` and `new/`. The companion is a
  *description of a document not yet processed*, so filing it as a source would
  put a page in `raw/` whose `finance.budget` tag routes it to the domestic-state
  driver with no budget lines in it to find, and whose `[[link]]` points into a
  staging folder the artefact will later move out of. The pair stays together
  until the pair is processed.
- **It is not counted as `awaiting ingest`** in `STATUS.md`, and it is not a
  third queue in CLAUDE.md's sense — nothing drains it on a normal pass. The
  sweep reports what it staged; `manifest.csv` is the standing record.
- **Nothing enters `raw/` from here except through the extraction pass**
  (`BUDGET-EXTRACT.md`, "run budget extract"). That pass produces source pages and
  finance records into `new/`, and ingest is still the only door. On completion it
  moves the artefact and its companion to **`budget-archive/{ISO3}/{FY}/`**
  alongside the tables it extracted as CSV — folder as state, as everywhere else —
  and **removes the emptied `new-budget/` folders**, so a folder that still exists
  always means work outstanding.

**`sweep/recapture/` is spent tooling**, not part of any standing procedure. It
holds the scripts and ledger from the one-off verbatim re-capture run of 2026-07
(`run.log`: 1,007 of 1,013 items processed) — `run.py`, `retry.py`, `extract.py`,
`progress.sh`, `ledger.csv`, `done/exa-recovery.csv`. The **ledger has provenance
value** and records which held sources were re-captured; the scripts are reusable
if another bulk re-capture is ever needed. Nothing reads it on a normal pass. Under
CLAUDE.md's month rule it is a deletion candidate — git holds it.

**The intake pipeline is physical.** A file's folder *is* its state: `new/` = not
yet processed, `raw/` = admitted as a source. Everything not admitted leaves `new/`
by deletion (its residual value captured first as a contradiction brief or an
acquisition line) — there is no parking folder. The web clipper points at `new/`. "What's new" is then just the contents of `new/` — no
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
| *(missing)* | **unverified** — completeness not asserted. New ingests always set the field; a blank is a legacy source, and `full` is never assumed of it. Backfilled from body evidence by lint #15. |

**Finance records extend this schema.** A source built by a finance driver adds
`deal_id`, `finance_origin` and whichever driver-supplied fields the compile pass
aggregates — see `wiki/finance-record-spec.md` and the drivers. Lint neither
validates nor strips them; they are sanctioned there, not here.

**A structured extract of a tabular document is `excerpt` and stays `excerpt`.**
The overwrite-with-fuller-text rule below targets paraphrase and truncation of
*prose*. A budget document's companion source page holds its citation, structure
and headers by design — the 600 pages of tables were never a body to withhold, and
re-capturing them would not complete the record.

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

*(**The ingest procedure moved to [`INGEST.md`](../INGEST.md)** — triggered by
"run ingest", now a first-class pass alongside reconcile and acquire. Its numbered
filing steps, including the **step-2a finance branch** and the **step-10
`last_reviewed`** stamp, keep their numbers there, so existing "§6 step N"
references still resolve. This heading is retained as the pointer; the schemas and
folder rules those steps apply stay here — §2 folders, §3 filenames, §4
frontmatter, §5 entity bar, §7 sweep intake, §8 hygiene. `new/` only —
`new-budget/` is never drained, §2.)*

---

## 7. Sweep intake (`new/` and `sweep/`)

Acquisition sweeps run *upstream* of the wiki and stage into `new/`.

- **Daily sweep** (the workhorse) — procedure in **`DAILY-SWEEP.md`**. Run manually
  from CC; loops the domains in `wiki/sweep-daily.csv` (read fresh each run) over a
  high-water-mark window; stages **flat** candidate files into `new/` (no per-place
  subfolders); keeps its state in `sweep/daily/`.
- **Content sweeps** (journals, newspapers, organisations) — one shared procedure in
  **`CONTENT-SWEEP.md`**, content-scoped rather than time-scoped. Each works a list
  (`wiki/sweep-{journals,newspapers,organisations}.csv`) from a **day-only**
  `last_swept_day` (state in `sweep/journals/` etc.), searching from one day before;
  stages flat into `new/` and hands off to `update wiki`.
- The universal sweep of everything *except* the listed domains (national press,
  think tanks) is the **digest**, run read-only from the
  `africa-digital-policy-watch` skill — it never writes to `new/`.
- **Phase-2 back-fill** (completed 2026-07-17) — the 2025→2026 national-press +
  trade-journal catch-up. Apparatus archived at **`sweep/archive/`** (procedure,
  query recipes, ledger, drop logs); it wrote `new-queue/{ISO3}/` folders, since
  drained into `new-queue/done/`.

**Rules binding every sweep:**

- **Containment boundary.** The sweep writes **only** to `new/` (candidate
  source files with best-effort frontmatter), to `new-budget/` (budget documents
  and their companion pages, which ingest does not drain — §2), and to `sweep/`
  (its own state/logs). It **never** writes to `raw/` or any `wiki/` page.
- Candidates enter the base only by being **processed**: `new/ →` ingest `→ raw/`.
  The sweep stages straight to `new/`; ingest is the gate, so a raw sweep candidate
  can never become a source by accident. *(The former `new-queue/ → new/` human
  promotion step was retired 2026-07-21 — the sweep now feeds `new/` directly, and
  the ingest workflow can be run manually or triggered by a sweep. `new-queue/done/`
  remains Bill's, untouched by CC.)* From `new/`, the filing rules in §6 apply
  unchanged.
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

- *(withdrawn 2026-07-21: `XSS` and `XGL` were listed here as tag-only codes with
  no page. Both have hub pages and are compiled, so their links resolve and they
  are no longer intentionally dead — see §1.)*
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

This sits **outside** the ingest pipeline (`new/ → raw/`). It is a read
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

## 11. Lint

*(**The lint pass moved to [`LINT.md`](../LINT.md)** — triggered by "full lint",
now a first-class pass alongside reconcile and acquire. Its 15 numbered checks keep
their numbers there, so existing "§11" references still resolve. This heading is
retained as the pointer; the thresholds and schemas the checks enforce stay here —
§3 filenames, §4 frontmatter schemas, §8 page hygiene and scaling, §9 dead-link
triage — and the dedup rules are `CLAUDE.md` → *Duplicates*.)*

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

Job wrap-up line (per `CLAUDE.md` → *Reporting*; counts defined in `STATUS.md`):
`contradictions - NN ; acquisitions - NN ; awaiting ingest - NN ; decisions logged - NN`
