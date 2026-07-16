# Country ingest workflow — external-datasets → `/new-queue`

**Purpose.** A repeatable, country-by-country procedure for turning the compiled
`external-datasets/` corpus into admissible intake clips for the Data Landscapers
wiki, without re-fetching material the wiki already holds. One country per run.

**Status.** Draft instruction set for review. This is a *new* process doc, not an
edit to `CLAUDE.md` — if you later want it folded into `CLAUDE.md`, that is a
schema change requiring explicit ratification (per the schema-change-control
invariant).

**Scope / boundary.** This workflow stops at a staged set of intake clips. It does
**not** run the wiki ingest (draining `new/ → raw/`), and it does **not** do
gap-filling web search. Gap-filling is deferred until *every* country has been
brought to this staged state, then run once across the board.

---

## Roles at a glance

The run is **three phases**. The agent (CC) runs **Assess → Fetch as one
autonomous pass** — there is **no approval gate** between them. The human (Bill)
only does the final hand-off.

1. **Assess (CC, autonomous).** Build `{COUNTRY}_review.md` — the bucketed,
   deduplicated candidate list. Category A is split into **A-web** (non-PDF) and
   **A-PDF**.
2. **Fetch (CC, autonomous).** Immediately — no wait for approval — fetch the
   **A-web** URLs, build marksnip clips, and place them in **`/new-queue`**.
3. **Hand-off (Bill, manual).** Move clips from `/new-queue` into `/new`; handle
   the **A-PDF** group and Categories B/C/D by hand.

---

## Inputs

`external-datasets/` (staged from the device), all keyed by country:

| File | Rows | Country key | URL column | Notes column |
|---|---|---|---|---|
| `africa-dpi.csv` | ~7,900 (one row per coded variable) | `Country` (ISO-3) / `Country Name` | `Source urls` | `Comments` |
| `africa-data-centres.csv` | ~300 (one row per facility) | `country` (ISO-3) | `source_urls` | `comments` |
| `african-rural-digitalisation.csv` | ~200 | `Country ISO-3 Code` / `Country Name` | `Source URLs` | `Comments` |

Companion `*-metadata.csv` files document the schemas/codebooks; read them if a
variable's meaning is unclear.

## Folder conventions

- **`/new-queue`** — where CC places fetched A-web clips. **This is the change
  from earlier practice.** It is a holding pen *outside* the clipper's `/new`
  intake, so a country run never collides with other work in progress.
- **`/new`** — the live clipper intake. **Bill moves files here manually** from
  `/new-queue` when ready. CC does not write to `/new` in this workflow.
- Everything downstream of `/new` (dedup, source-page creation, facet tagging,
  `raw/` filing, date-prefix correction to the *publication* date) is the existing
  `CLAUDE.md` ingest pipeline and is out of scope here.

---

## Phase 1 — Assessment → `{COUNTRY}_review.md`  (CC, autonomous)

### 1.1 Extract the country's rows
Filter each of the three datasets to the target ISO-3 code (match `Country` /
`country` / `Country ISO-3 Code`, and fall back to a `Country Name` contains-match
for safety).

### 1.2 Collect distinct source URLs with their notes
Parse every URL out of the URL column (cells may hold several). Normalise (strip
trailing slash / `#fragment` / trailing punctuation). For each distinct URL, keep
the attached context: which dataset it came from, the variable/section or facility
it supports, the year, and any `Comments`. This is the raw candidate list.

### 1.3 Reduce against the wiki
**Do not scan the `raw/` corpus.** Treat the country hub `places/{ISO3}.md` (plus
any linked `intersections/`) as the **complete, authoritative record** of what the
wiki already holds for the country. Read the hub; note what it already covers; and
drop any candidate URL the hub (or a source it cites) already accounts for as
already-held. There is **no** domain+path pass over `raw/`. If no hub exists yet
for the country, treat coverage as empty — nothing is held, every candidate is new.

### 1.4 Currency filter — ignore sources produced before 2024
Drop any candidate **source produced before 2024-01-01**. The cutoff is on the
source's own **publication / production date**, *not* on the year of the fact it
reports (a 2025 article documenting a 2011 law is in-window; a 2019 article is not).

- **Establish the date from the best signal available at assessment:** a date
  encoded in the URL, the page's own date if readily visible, otherwise the dataset
  `Year` for the row(s) the URL supports — take the **most recent** year where a
  URL spans several. Anything that clearly resolves to 2023 or earlier is dropped.
- **Exempt: standing resources / entities.** An evergreen asset with no publication
  date — a portal, registry, database, homepage or reference instrument (the
  Category-D kind, §1.5) — is not a dated source and is **not** subject to the
  cutoff. Carry it forward and bucket it as D; judge these on standing value, not age.
- **When a dated source's real date can't be pinned at assessment** (only an old
  fact-year on file, but the URL/outlet suggests recent republication), don't drop
  it silently — carry it forward, flag it in Category B, and let Phase 2 enforce the
  cutoff once the true publication date is read.

Record the number removed here as **excluded (pre-2024)** in the review header.

### 1.5 Bucket the *new* (not-yet-held, in-window) URLs
Classify by `CLAUDE.md` source-admissibility, not by topic. **Category A is split
in two by artefact type**, so the fetchable web items sit apart from the PDFs:

- **A-web · ingest (non-PDF)** — primary / first-hand, country-specific, on-topic,
  and fetchable as text: official announcements, regulator/ministry pages,
  on-the-record national and trade reporting, dated reference reports (World Bank /
  ITU / UN / DataReportal / Data Protection Africa), analyst reviews of a specific
  instrument. *Always produce this category.* **This is the group CC fetches in
  Phase 2.**
- **A-PDF · ingest (PDF)** — same admissibility as A-web, but the artefact is a
  PDF. Split out because the fetch tools return text, not the binary, and the wiki
  keeps PDFs as binaries with a companion source page. **Bill handles these by hand
  in Phase 3.**
- **B · check first** — plausibly usable but needs a human glance: unknown-quality
  outlet, global/regional document that isn't country-specific, or a dated/old
  reference (flag the year).
- **C · lead only (do not cite)** — tertiary or second-hand: Wikipedia, consultancy
  marketing/case studies, low-authority aggregators, AI-generated syntheses. Mine
  for primaries; never ingest as a source.
- **D · resource / entity (not a dated source)** — standing portals, registries,
  databases, homepages (business registry, peering DB, central-bank site, stats
  portal). These become `resource`/`organisation` **entities** at ingest, not
  `raw/` sources.

### 1.6 Write `{COUNTRY}_review.md`
One section per bucket (**A-web** first, then **A-PDF**, then B, C, D), each URL
listed with its one-line disposition rationale and its dataset/topic context. Head
the file with counts: total distinct URLs, how many already held (from the hub, no
action), how many **excluded (pre-2024)**, how many new and in-window, and the
per-bucket tally (**A-web, A-PDF, B, C, D**).

The review is a **record of the run, not an approval gate** — CC writes it and then
proceeds straight into Phase 2 (fetch) in the same pass.

**Every URL must be a clickable markdown hyperlink** — write it as
`[url](url)` (or, if the URL itself contains parentheses, an angle-bracket
autolink `<url>`). **Never** wrap a URL in backticks/code spans (`` `url` ``):
code spans render as monospace text, not clickable links. Backticks are still
fine for non-URL tokens (paths, slugs, filenames such as `raw/`, `/new-queue`,
`wiki/places/{ISO3}.md`).

**Assessment is read-only** — nothing is fetched or written to the wiki during it —
but the run **does not stop here**; CC continues immediately into Phase 2.

---

## Phase 2 — Fetch A-web (Category A non-PDFs) → `/new-queue`  (CC, autonomous)

Scope: **the A-web group — Category A URLs that are not PDFs.** CC runs this
**immediately after writing the review, with no approval step.** The A-PDF group is
out of scope here (the fetch tools return text, not the binary artefact, and the
wiki is built around keeping PDFs as binaries with a companion source page — Bill
handles those by hand in Phase 3).

### 2.1 Fetch (Exa)
Use Exa (`web_fetch_exa` / `web_search_exa`) per the standing Exa preference. Batch
URLs per call.

**Fetch discipline (important):**
- **Don't try too hard.** If a URL fails (timeout, not-available), retry at most
  once, then **skip it and move on**. Note it as skipped in the run summary.
- **No metadata-only clips.** If a page returns only title/date/author but no
  usable body, **do not create a clip** — skip it. (A clip with no article body is
  not worth placing.)
- **Enforce the pre-2024 cutoff (§1.4).** When the page's **true publication date**
  reads as before 2024-01-01, **do not build a clip** — skip it and note it as
  *skipped (pre-2024)* in the run summary. This catches items whose real date only
  becomes clear on fetch (a recent-looking URL that turns out to be an old piece).

### 2.2 Build the marksnip clip
Non-PDF clips carry the marksnip frontmatter the ingestor expects:

```yaml
---
page: {pagetitle}
title: {title}
author: {byline}
published: {publishedTime:YYYY-MM-DD}
accessed: {date:YYYY-MM-DD}
source: {pageURL}
keywords: {keywords}
---
```

- `published` = the article's **true publication date** (read it from the page;
  many URLs also encode it). Where only site metadata gives it, use that.
- `accessed` = the run date.
- `keywords` = the page's own tags where present, else a short topical set.
- Body = the cleaned article text (strip site chrome/nav/related-posts).

### 2.3 Filename
`YYYY-MM-DD {clean title}.md`, where the **date prefix is today's date** (the
capture date), matching the clipper's convention. (The publication-date prefix is
applied later, at ingest, when the item moves to `raw/`.) Sanitise Windows-illegal
characters from the title: `: \ / * ? " < > |` (replace `:` with ` -`, drop the
rest); keep accents; cap length ~115 chars.

### 2.4 Place in `/new-queue`
Write the clips to `/new-queue` (not `/new`). Report a run summary: clips placed,
URLs skipped (failed fetch), pages skipped (no body), pages skipped (pre-2024), and
the **A-PDF/B/C/D** counts left for Bill.

---

## Phase 3 — Hand-off  (Bill, manual)

- Move the `/new-queue` clips into `/new` when ready for the ingest pipeline.
- Fetch/save the **A-PDF** binaries into `/new` (marksnip clipper or manual), so
  they keep their companion-source-page treatment at ingest.
- Decide on **Category B** items (verify, then keep or drop) and mine **Category C**
  leads for primaries; capture **Category D** as resource/entity pages.

---

## Not in scope (deferred)

- **Wiki ingest** — compiling `/new` into source pages, hubs, concepts,
  intersections, index updates. Existing `CLAUDE.md` pipeline.
- **Gap-filling search** — constructing selective Exa searches to fill what neither
  the datasets nor the wiki cover. **Run once, after all countries are staged.**

---

## Worked example — CAF (Central African Republic), 2026-07-15

*(Historical — predates three later changes: the §1.4 pre-2024 currency filter, the
drop of the `raw/` overlap scan in favour of the hub-as-complete-record rule (§1.3),
and the A-web/A-PDF split plus removal of the approval gate. The numbers below
reflect the older process: a full `raw/` scan, no date cutoff, and a single
Category A. A re-run under the current rules would skip the `raw/` scan, drop any
pre-2024 sources, and report A-web and A-PDF separately.)*

- 152 dataset rows for CAF → **54 distinct source URLs**.
- URL-overlap check vs 601 `raw/` sources → **11 already held** (mostly absorbed
  into one research-dump file), **43 new**. *(This raw scan is no longer done —
  §1.3 now reads coverage off the hub.)*
- Buckets: **A 30**, B 5, C 3, D 5.
- Category A non-PDF = 20 (dropped 2 bare-domain homepages; 8 Cat-A PDFs excluded).
  *(Under the current rules these 20 would be **A-web** and those 8 **A-PDF**.)*
- Fetched: 16 with full body; **2 skipped** (site unreachable / persistent
  timeout), **2 skipped** as metadata-only (no body). → **16 clips** placed,
  date-prefixed `2026-07-15`.
