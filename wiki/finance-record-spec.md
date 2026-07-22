# Finance record — builder spec (source-agnostic)

Given a **single finance item** — a commitment, investment, guarantee, MoU or
agreement, from any source (a dataset row, a news article, a manual capture) —
produce **one structured markdown record in `new/`**, ready for the normal ingest
pass. This spec defines the record's shape and how to derive every field. **It
never reads a particular file.** A **driver** (see the per-source driver docs)
pulls the fields out of a given source and hands them here.

Reused by:

- the non-state finance initial load — driver: `finance-load-nonstate-csv.md`
- domestic-state budget and expenditure capture — driver:
  `finance-load-domestic-state.md`
- structuring existing `raw/` items that report finance (the back-swing) — driver:
  `finance-news-driver.md`, back-swing mode
- ongoing capture of new finance items at ingest — same driver, capture mode, one
  item at a time

The rule of the SSOT holds throughout: values must be traceable to the source (or
the primary at its URL); when a value can't be derived safely, **leave it blank
and say why** — never guess, never write `0` for an unknown.

## The five-fact test — what makes an item a finance record

**No item becomes a finance record unless all five facts are present in the source
itself.** Not inferred, not carried in from the wiki, not filled by the builder.
Every driver runs this test before handing anything here, and names it rather than
restating it.

1. **The financier is identified.** A named party providing the money. Resolvable
   to a canonical slug against the wiki's entity set (a financier with no existing
   entity is minted one consistent new slug, not a failure — see *Entities*). "An
   investor consortium", "development partners", "unnamed backers" — fail. For a
   domestic-state record the financier is the **fisc** — a named treasury,
   ministry of finance, sub-national government, levy fund or SOE spending its own
   revenue — an institution, never the officeholder announcing it.
2. **The recipient country or region is identified.** Must resolve to a
   `countries.csv` ISO-3 or `X__` region. This is the test, **not** the recipient
   organisation: a blank `recip_org` is normal (30% of the initial load) and is
   handled per *Entities* below. "Across Africa" with no bounded region — fail.
3. **An amount that can be treated as a commitment is identified.** A figure the
   source presents as *committed, approved, signed or pledged* — **or a
   disbursement figure**, which evidences money actually moved and stands as the
   commitment where no commitment total is stated. *(Curator ruling, 2026-07-22.)*
   Record which it is: a disbursed-only record carries `disbursed_usd` with
   `commit_usd` blank, never the disbursement copied into both. What fails is a
   figure that is neither — an "up to", an intention to invest, a mobilisation
   target, a valuation or market size. Carry the amount in the announcing party's
   own currency per `CLAUDE.md` → *Currency*.
   For a domestic-state record, a **budget figure at any stage** satisfies this —
   proposed (tabled), appropriated, released, executed, audited — with the stage
   recorded, never conflated: `budget_stage` carries the epistemic status, so a
   tabled figure is a record at `proposed`, not a failure. *(Bill's ruling,
   2026-07-22.)* **MTEF and medium-term outer-year projections still fail**:
   they are indicative planning figures, the budget equivalent of an "up to".
4. **A date of the commitment is identified — a year is enough.** The
   commitment/approval/signature event, never the publication date. Padded to
   `YYYY-01-01` per *Dates*, or carried at its true precision where the driver
   knows one.
5. **The purpose can be matched to our taxonomy.** The test is **mappability, not
   completed classification**. *(Curator ruling, 2026-07-22.)* The source must say
   what the money is *for*, in terms a `taxonomy.md` slug could be resolved from —
   but the resolving need not have happened yet. A stated purpose that is
   in-scope and specific enough to map admits the record, flagged for
   classification if the slug is genuinely uncertain. **What fails is an
   unspecified commitment**: money to a country with no stated use, or "digital
   transformation" as a bare slogan with no named activity. Never substitute a
   default slug — see *Subject tag* §1. For a domestic-state record this is where
   the **scope test** sits: the unit is the programme or project line whose stated
   purpose is a digital activity, never a ministry's total vote, and a mixed line's
   digital share is **never computed** — it is recorded whole and flagged
   (`scope_confidence`), so it can be reported apart from the clean total rather
   than silently inflating it.

**Failing the test is a routing decision, not a rejection.** An admissible,
in-scope item that fails any of the five is still a source: it takes the ordinary
`raw/` route with its `finance.*` subject tags and its entity tags, and simply has
no deal record. It is **not** counted in any hub aggregate. The one exception is
failure on **fact 4**, which routes to `_leads/` per *Dates* — an item of unknown
vintage is not a dated fact at all.

Record which fact failed, in one line. A pattern of failures on the same fact from
the same kind of source is worth knowing.

## Core fields the driver supplies

The driver maps its source into these fields (blank where genuinely unknown):
**financier**; **recipient** (+ ISO-3 place); beneficiary type; **title**;
**description**; **instrument**; status; commitment USD; original amount +
currency; co-financing (amount + names); lead-financier flag; **commitment /
start / end year**; disbursed USD; amount quality; **subject category**;
digital-ID and digital-payments flags; native project ID; IATI ID; **source
URL**; source type; access date; notes. Bold fields are the ones a record is
built around.

**A driver may add origin-specific fields**, and the record carries them as extra
`## Deal record` rows without amending this list — the budget-cycle, fiscal-year,
classification, FX and vendor fields in `finance-load-domestic-state.md` are the
worked example. Only fields the compile and lint passes **filter on** go into
frontmatter; everything else stays in the body table.

**Admission is decided by the five-fact test above, not by this list.** `title`,
`description` and `instrument` are recorded whenever the source states them and
are **not** gates — news reporting of a commitment frequently omits the
instrument, and requiring it would reject sound candidates. Beyond the five facts,
supply every field the source gives and leave the rest blank.

The **subject category** may arrive two ways: as a **World Bank DT label** (the
CSV driver) → resolve via the crosswalk; or **unclassified** (a news item) →
classify from `title` + `description` straight to a `taxonomy.md` slug, as ingest
does. Either way the output is one taxonomy slug.

## Provenance gate

Admissible only if the item's source is **primary** — official portal,
regulation, filing, court record, company/DFI/foundation statement, dataset,
IATI, or on-the-record reporting. A second-hand synthesis (another AI output, a
news aggregator, a digest) is a **lead, not a source**: flag it and file as a
lead, don't build a record. See `CLAUDE.md` → *The material*.

## Subject tag

1. **Primary slug.** From a WB-DT label, take the crosswalk's `mapped_slug`
   (`archived-procs/non-state-finance-crosswalk.csv` — load-only, see *Entities*); where it gives no slug, infer
   from `title` + `description`; a `review` row that carries a slug uses it. From
   an unclassified item, classify from content directly. Log the justifying
   phrase whenever the slug is inferred. **Where the purpose is stated but the slug
   is uncertain, build the record and flag it for classification. Where no purpose
   is stated at all, the item fails fact 5 and no record is built. Never substitute
   a default slug in either case.** A default is a guess wearing a valid slug, and
   it is invisible afterwards: it passes every vocabulary check and reads on the
   page as a derived fact. *(Curator ruling, 2026-07-21; the initial load defaulted
   40 records to `tech.industry`, of which 14 turned out to be out of scope
   entirely.)*
   **Scope is checked here too**, not only provenance: a source whose subject
   falls outside data governance and digital transformation is rejected and
   deleted, not filed as a lead (`CLAUDE.md` → *The material*). A dataset's scope
   is not the wiki's.
2. **Always add a finance tag:** `finance.new` for an investment/commitment,
   `finance.mou` for an MoU, framework agreement or letter of intent,
   `finance.budget` for a domestic budget appropriation or expenditure line.
3. **Flag-derived:** `dpi.id` if the digital-ID flag is set, `dpi.pay` if the
   digital-payments flag is set.
4. Valid `taxonomy.md` slugs only; dedupe; usually 2–3 slugs.

## Places

Tag the recipient's place (ISO-3, or a `X__` region) from `countries.csv`. Add
the parent region only when the item is explicitly regional. Reject values outside
the vocabulary.

## Entities

Tag two actors — the **financier** and the **recipient** — and a third, the
**vendor/contractor**, where a driver supplies one and the source names it.

- **Financier** — resolve to the slug the wiki already uses, by checking
  `wiki/entities/` and `entities-index-organisations.md` (so `world-bank`, not a
  new `world-bank-group`). Where no entity exists, mint one consistent new slug and
  use it thereafter — never slug ad hoc, and never a second variant for a financier
  already tagged elsewhere. Duplicate financier entities are the failure mode this
  guards against.

  *The initial load resolved financiers through a one-off
  `non-state-finance-financier-crosswalk.csv`. That crosswalk is **finished** and
  now sits in `archived-procs/` as the load's provenance record — it is not
  maintained and is not consulted by ongoing capture, which reads the entity set it
  helped create. (Curator ruling, 2026-07-22, on CC's flag.)*
- **Recipient** — best-effort canonical kebab-case (strip descriptive suffixes;
  prefer an obvious short stem). Recipients are mostly one-off counterparties
  below the paging bar, so residual drift here is cheap and the entity pass
  reconciles it. **Where the recipient is blank in the source, emit the financier
  only** and record `recipient unspecified` in `## Notes` — never substitute the
  country, the place tag or any other stand-in. *(Curator ruling, 2026-07-21; this
  is not rare — 345 of the 1,148 initial-load rows, 30%, carry no `recip_org`.)*

**Slugging traps, from the 2026-07-21 pilot:** cut a descriptive suffix only at an
**em/en dash** or a **spaced hyphen**, never at an internal hyphen (else
*Export-Import Bank of China* slugs to `export`); and fold accents before stripping
(else *Côte d'Ivoire* slugs to `c-te-d`).

Co-financiers and officeholders stay in the verbatim body, not as tags.

## Dates

Anchor on the **commitment/approval event**, not a publication date:

- `published` = commitment year, else start year, padded to `YYYY-01-01`;
  `date_precision: year`, `date_source: source`.
- **Where the driver has a dated event or a known period boundary, use it at its
  true precision** rather than padding: an appropriation act's assent date at
  `day`, a fiscal-year start at `month`. Padding exists to stop a bare year
  asserting a January event; it must not be applied to a date we actually know,
  and a July–June fiscal year padded to `YYYY-01-01` would sort six months from
  the event. `date_precision` states which case applies.
- **If neither year exists, do not build a record — file the item to `_leads/`**
  and log it. *(Curator ruling, 2026-07-21. This replaces an earlier instruction to
  fall back to the access date with `date_source: proxy`, which contradicted the
  core-fields rule above that a commitment or start year "must be present" — and
  which would have dated an item of unknown vintage to the day it was scraped,
  sorting it among current material. A finance record with no event year is not a
  dated fact.)*
- The filename date prefix equals `published`, so `new/` sorts by commitment year.
- Record the specific years in the body table regardless — they carry the
  currency discipline onto the page.

## Enrichment — light touch

Explore the primary **once**, to **fill blanks and pull one or two highlights**,
never to re-audit. **Fill only blank fields; never overwrite a supplied value**
(a flat contradiction is a one-line note in `## Notes`, and for a batch a file in
`reviews/contradictions/open/`). Mark each filled field `(enriched from source,
<date>)`.

**One deliberate exception — dates: use the more accurate date.** *(Curator ruling,
2026-07-21.)* Where enrichment yields a **verified event date** from the primary —
a World Bank board-approval date, an IATI transaction date — and its **year agrees
with the source's commitment/start year**, promote it into `published` and set
`date_precision: day`. This is not an overwrite of a conflicting value; it is the
same event stated more precisely, and the wiki's currency discipline prefers the
precise form. **If the years disagree, do not promote** — keep the source year, and
record the divergence in `## Notes` (a systematic pattern of disagreement is a
contradiction, not a rounding issue). Capture at most a sentence or two of verbatim highlight. Set
`body_completeness`: `full` if the primary's substantive text was captured,
`excerpt` for a portion, omit if not fetched.

**Routes** (require network + the IATI key — run from Claude Code, not a
restricted sandbox; prefer the structured route over scraping a JS portal):

- **World Bank** (`project_id` like `P180693`): the **search API** —
  `https://search.worldbank.org/api/v2/projects?format=json&id=<project_id>`
  (board-approval date, closing date, borrower, implementing agency, status,
  themes, sector codes as JSON). Documents:
  `https://projects.worldbank.org/en/projects-operations/document-detail/<project_id>`.
- **IATI activity** (`iati_project_id` present): the **Datastore API** with the
  key — `…/datastore/activity/select?q=iati_identifier:%22<id>%22&fl=iati_json&wt=json&rows=2`,
  header `Ocp-Apim-Subscription-Key: <IATI_API_KEY>` (parsing rules in
  `iati-to-md.md`) — **or**, keyless, **d-portal**:
  `https://d-portal.iatistandard.org/q.xml?aid=<iati_project_id>` (plain HTTP XML;
  fetch directly, not via Exa).
- **DFI / foundation / press pages:** fetch the HTML (Exa `web_fetch_exa`, per
  `prefer-exa-search`, or a plain GET).

One attempt per route; on failure log `enrich: failed <reason>` and proceed with
the item as-is.

## Output template

Filename: `{YYYY-MM-DD}-{id}-{short-title-slug}.md` in `new/`, where the date is
the padded commitment date and `id` is the driver's stable record key (the CSV's
`deal_id`, or for a news item a slug of financier+recipient+year). Example:
`2024-01-01-wb-ago-001-angola-digital-acceleration.md`.

```markdown
---
type: source
title: <title>
url: <source_url — first URL only if several>
publisher: <financier>
published: <YYYY-01-01 from commitment|start year; or a known event date / period
                             boundary at its true precision — see Dates>
date_precision: year        # day | month | year — a record always has an event date
date_source: source         # source (no proxy dating — see Dates)
places: [<recip ISO-3>]
topics: [<crosswalk/derived slug>, finance.new, <dpi.id/dpi.pay if flagged>]
entities: [[<financier-slug>], [<recipient-slug>]]
lens: []
deal_id: <record key>
finance_origin: non-state   # non-state | domestic-state — set by the driver; drives the hub Financing split
ingested: <today>
retrieved: <access date, YYYY-MM-DD>
body_completeness: full     # full | excerpt | (omit if not fetched)
---

# <title>

<one-sentence plain summary: who funded whom, for what, how much>

## Deal record

| Field | Value |
|---|---|
| Deal ID | … |
| Financier | … |
| Recipient | <recipient> (<ISO-3>) |
| Beneficiary type | … |
| Instrument | … |
| Status | … |
| Commitment (USD) | … |
| Original amount | … |
| Co-financing (USD) | … |
| Co-financiers | … |
| Lead financier | … |
| Commitment year | … |
| Start year | … |
| End year | … |
| Disbursed (USD) | … |
| Amount quality | … |
| WB DT category | <source label> → <slug> |
| Digital ID flag | … |
| Digital payments flag | … |
| Capital origin | <if set> |
| Project ID | … |
| IATI activity ID | … |

## Description

<description verbatim; plus any short enrichment highlight, marked as enriched>

## Source

<source_url> — <source_type>, accessed <access date>

## Development history

<empty at build. Each **definite**-match news item appends one dated, attributed
line — only its genuine added detail, never its body:
`- **2026-03-11** — first disbursement US$Y; phase-2 fibre contract signed. [<url>]`>

## Notes

<notes verbatim; then processing notes: inferred-slug justification, enrichment
result, any drift or contradiction flag>
```

Render only body-table rows that have a value; drop empty ones. `deal_id` is kept
in frontmatter as the dedup/traceability key, alongside whichever driver-supplied
fields the compile and lint passes filter on.

**A recorded `0` is permitted where the source states nil** — and only there. The
prohibition above is on writing `0` for an *unknown*; a stated nil is a fact, and
in budget data often the most important one (voted, released nothing). Mark it
`0` with the source's own wording in `## Notes`; leave genuinely unknown blank.

## Store of record, merging and compilation

**These records are the living store of record, in `raw/`.** Unlike an ordinary
source, a finance deal record **accretes** — it is the durable object for its
deal, and later reporting is folded into it rather than spawning a fresh page per
event. This is a deliberate, scoped **exception to `raw/` immutability** (logged
2026-07-21), and it is what keeps the living dataset from re-creating the hub
explosion.

**Compilation is aggregate, never per-deal bullets.** Each place hub carries a
compiled **Financing section** — total committed, deal count, date range,
instrument mix, top financiers, subject breakdown — computed from its deal
records. An individual deal surfaces there only when it clears the deal-entity bar
(§5, reference.md). A dataset of this size treated as one-bullet-per-deal breaks
every §8 hygiene threshold at once.

**One shared Financing space, split by origin.** This non-state dataset and the
forthcoming **domestic state-financing** dataset compile into the *same* hub
Financing section, broken down by origin (non-state — DFIs, foundations, private,
bilateral — vs domestic state). So the section is designed generically, not as a
"non-state" section, and the rollup carries the state/non-state cut; both drivers
feed the same aggregate. The builder here is already origin-neutral — only the
driver differs.

**Merging later reporting into a record — definite only.**

- **Definite match → merge.** Definite = a shared unique key (`project_id` or
  `iati_project_id`) or unambiguously the same deal (same financier, recipient and
  native project identity). Fold in **only the genuine added value** — a new
  figure, disbursement, milestone, named party, status change — as one dated,
  attributed line in `## Development history`, and update the current-state fields
  (status, disbursed). Never copy the whole body. A disagreement is a
  contradiction (`reviews/contradictions/`), not a silent overwrite. Reporting
  that adds nothing material is dropped with a one-line note.
- **Fuzzy match → reference, never merge.** Anything resting on approximate
  amount/date/name similarity stays its own source and gets a
  `possibly the same deal as [[…]]` cross-link. No content moves, and it is **not
  counted in the aggregate** as a distinct deal. If it later proves distinct it
  becomes its own record.

The same definite/fuzzy rule governs the **initial-load overlaps** with finance
the wiki already holds (e.g. the dataset's `ifc-mli-001` vs a held
`ifc-orange-mali-loan`): shared identity merges/replaces per `CLAUDE.md` →
*Duplicates*; a mere resemblance is cross-referenced.

**Ingest is match-or-create, not the news bullet path.** For each finance item:
definite-match a held record → merge; no match but clearly a new deal → create a
record; not deal-specific (a trend or multi-deal piece) → keep as a normal news
source with `finance.*` tags. The standard §6 ingest must not drain these into the
per-event bullet path.

## Verification (per record)

1. Every supplied field is represented; every blank is genuinely blank (no `0`, no
   fabrication).
2. Topics are valid `taxonomy.md` slugs, the primary came from the crosswalk (or
   was inferred-and-logged), and a `finance.*` tag is present.
3. Places are valid `countries.csv` codes.
4. `published` and the filename prefix agree; `date_source`/`date_precision` are
   honest.
5. No source value was normalised except where a driver mandates it (see the
   driver).
6. Enrichment stayed light — blanks filled, highlights added, nothing supplied
   overwritten; each filled field marked, each failed fetch logged.
7. Provenance — the source is primary; a second-hand source was flagged and filed
   as a lead.
