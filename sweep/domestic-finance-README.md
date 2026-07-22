# Domestic-state finance sweep — procedure

**Acquisition sweep for one country and one fiscal year**, gathering the material
the domestic-state finance driver (`finance-load-domestic-state.md`) builds
records from: budget documents, outturn and audit reports, ministerial statements,
and on-the-record reporting of state digital spending.

Run manually from Claude Code. **Invocation: "run domestic finance sweep for
`<country>` `<year>`"** — e.g. *run domestic finance sweep for South Africa 2024*.

**A bare year means the year the fiscal year begins** *(Bill's ruling,
2026-07-22)*. "2024" resolves to `2024` in Nigeria and Zambia, `2024/25` in South
Africa, Kenya, Uganda, Tanzania and Egypt, and the Ethiopian year beginning July
2024 — one instruction, one fiscal year, every country. **Resolve it and state the
resolution at the top of the run** ("South Africa 2024 → FY2024/25, 2024-04-01 to
2025-03-31") so the run is unambiguous in the log.

## The unit is country × fiscal year

*(Bill's ruling, 2026-07-22.)* One country, one fiscal year, one run. This is what
makes the sweep a reusable object rather than an open-ended trawl, and it earns
its keep four ways:

- **It has a completion state.** For a given country-year you either hold the
  appropriation, the outturn and the audit, or you don't. That is a checklist. A
  country-wide sweep has no end condition and would run until the cap stopped it,
  which is not the same thing.
- **It matches the record grain.** The driver's rule is one line, one year, one
  stage. A sweep keyed to the same unit hands the driver a coherent set instead of
  a pile.
- **It is re-run as the year matures**, and this is the point: FY2025/26's
  appropriation is publishable now, its outturn in late 2026, its audit in
  2027–28. The same invocation, run again a year later, picks up the stages that
  did not exist the first time. Nothing else in the wiki has that shape.
- **Coverage becomes a matrix** — country × fiscal year × stage — so a gap is
  statable: *no published FY2024/25 outturn for the ICT vote as at 2026-07-22*.
  Per `CLAUDE.md` → *Currency*, a known vacuum is a finding, not a silence.

**In scope: fiscal years beginning on or after 1 January 2024.** Earlier years are
out of scope however easily found — and were deleted at the 2026-07-22 ingest, so
staging one again is a regression, not a gap-fill. Note the edge this cuts: Kenya's
2023/24 ran halfway through 2024 and is still **out**; its first in-scope year is
2024/25.

### The fiscal year is a search target, not a filter on what gets built

Two important qualifications, both learned from the back-swing.

**A document covering several years is fetched once and kept whole.** Budget
documents always state the prior year as comparator; MTEFs and development plans
(Botswana's NDP 12, seen in the back-swing) span three or more. Record every year
it covers in `fiscal_years_covered`, dedup on URL across runs, and let the driver
build records for whichever years the document supports. The run's fiscal year
scopes *what we go looking for*, never *what may be built from what we find*.

**Statements and reporting are date-windowed, not fiscal-year-filtered.** The
back-swing is unambiguous here: of its 24 domestic records, half carry no fiscal
year at all and `budget_stage: unclear` is the modal value, because ministers,
inauguration speeches and presidential despachos do not name fiscal years. A
strict FY filter on the prose blocks would discard exactly the material that makes
opaque budgets legible. So:

- **Blocks 1–3 (documents)** — hard-scoped to the run's fiscal year.
- **Blocks 4–7 (statements, reporting, scrutiny)** — scoped to a **date window**
  running from six months before `fy_start` to twelve months after `fy_end`, and
  the driver assigns the year where it can. Items that resist assignment are still
  records; `fy` blank with the reason noted is honest and already the norm.

## Boundaries

- **Acquisition, not record-building.** No five-fact test, no budget lines, no
  deal records — the driver does that downstream. The sweep's only question is
  *is this document worth holding*.
- **National tier only** *(Bill's ruling, 2026-07-22 — sub-national deferred)*.
  Counties, states and provinces are in scope for the dataset but not for this
  sweep yet; 47 Kenyan counties or 36 Nigerian states would swamp the cap and
  drown the national documents. `state_level: sub-national` stays in the driver
  against the day this is turned on. Own-source national bodies — universal
  service funds, ICT levy bodies, regulators — **are** in scope here.
- **Containment** (`reference.md` §7): writes only to `new/`, `new-budget/` and
  its own `sweep/domestic/` state. Never to `raw/` or any `wiki/` page.
- **Distinct from the daily trade-journal sweep and the digest** — different
  sources, no overlap.

## Two tracks, because Exa does one of these well and one patchily

Exa's neural search is strong on prose: news, speeches, press releases, analysis.
It is weak on the target that matters most here — budget PDFs on ministry-of-
finance domains that are badly indexed, sometimes uncrawled, often behind a
document-library page with no stable link. Expect the reporting track to succeed
and the document track to be patchy, and **do not read a thin document harvest as
evidence that the documents don't exist**.

### Track A — fiscal institutions, domain-scoped

Domain-scope every query to the country's own institutions. This is also the
admissibility firewall: it keeps out the AI-synthesis blogs and content mirrors
that dominate unscoped African budget queries.

| Role | Typical holder |
|---|---|
| Budget authority | Ministry of Finance / Budget Office / Treasury |
| Execution and release | Treasury; budget controller |
| Legislature | National Assembly / Parliament; parliamentary budget office |
| Audit | Auditor-General / Cour des comptes |
| Sector ministry | Ministry of ICT / Digital Economy / Communications |
| Sector regulator | Communications/ICT regulator (own budget, spectrum-funded) |
| Own-source funds | Universal service fund; ICT development levy body |
| Programme owners | National ID authority; e-government agency; statistics office |
| **Procurement portal** | **Public-procurement authority — annual procurement plans** |
| Portal | The government's own open-budget or IFMIS portal |

The procurement portal is there on the back-swing's evidence: Angola's mandatory
per-ministry PAC (Lei 41/20, Portal de Compras Públicas) turned out to be a
recurring annual source, and procurement plans name systems and vendors that the
vote structure never does.

Also worth scoping: the country's **IMF Article IV and programme documents**,
which frequently quote budget aggregates and execution rates the national
documents obscure.

### Track B — direct enumeration

For the budget authority, the procurement portal and the open-budget portal, go at
the **document library page** directly rather than searching for the PDF: fetch
the page, read its links, take the ones matching the run's fiscal year. Budget
portals are usually a predictable directory. One fetch of an index page beats ten
semantic queries.

A document that cannot be reached in one attempt goes to `reviews/acquisitions.md`
per `CLAUDE.md` → *Working the base*. One attempt, then it is a stated absence.

## Semantic context — the query blocks

Run these as **separate queries**, never one blended one; blending "budget" with
"digital" returns neither. Substitute the country's own vocabulary from its
section in the extraction notes. In Francophone, Lusophone and Arabophone states
**query in the document's language** — the terms are not translations of each
other, and an English query returns commentary rather than documents.

**Block 1 — the appropriation.** *Approved budget estimates and appropriation act
for the fiscal year, showing votes, heads and programme allocations by ministry,
department and agency.* Scope: budget authority, legislature. Look for: estimates
volumes, the act as assented, the budget speech and its annexes.

**Block 2 — execution and outturn.** *Budget implementation and expenditure review
reporting actual spending against approved allocations by ministry and programme,
including exchequer releases and absorption rates.* Scope: treasury, budget
controller, legislature. The material almost nobody publishes and everybody needs
— weight the effort here.

**Block 3 — audit.** *Auditor-general's report on the financial statements of
ministries and agencies, including irregularities in ICT and systems procurement.*
Scope: audit institution, legislature.

**Block 4 — the digital line, from the sector side.** *Government allocation and
spending on digital transformation, e-government, digital identity, national data
centre, connectivity and ICT systems in the national budget.* Scope: sector
ministry, regulator, funds, national press. This finds the line item when the
budget document is opaque.

**Block 5 — statements and clarifications.** *Minister's, permanent secretary's or
head-of-state's statement or decree authorising expenditure on a named digital
programme — its cost, its funding source, its implementation status.* Scope:
sector ministry, budget authority, presidency, national press. The back-swing's
richest domestic seam by a wide margin. Include **executive instruments by their
local name** — Angolan *despachos presidenciais*, procurement authorisations,
supplementary-credit orders — which is how appropriations actually surface in
several states.

**Block 6 — own-source bodies.** *Universal service fund, ICT levy and regulator
budgets, their approved expenditure and their annual reports.* Scope: funds,
regulator, sector ministry. Least-covered material on the continent.

**Block 7 — contest and scrutiny.** *Parliamentary committee questioning,
civil-society budget analysis or investigative reporting on digital-programme
spending, cost overruns and procurement.* Scope: legislature, national press,
national budget-transparency organisations. **Analysis is a lead** — mine it for
the primary it cites (`CLAUDE.md` → *The material*). Investigative reporting on
the record is a source.

## What the back-swing already taught us — apply it at capture

`documentation/domestic-budget-extraction.md` is the accumulating record and
**must be read before querying**. Four of its findings change how this sweep is
run, not just how records are built:

- **Domestic figures hide mid-paragraph inside stories about something else** — an
  MoU, a donor project, a summit speech. So query for the *phrases*, not the
  headline: `allocated / also allocated / également alloué / financés à hauteur de
  / a coûté / aprovou a despesa / autorizou a despesa / crédito adicional
  suplementar`. Headline-led queries miss these.
- **"Government invests" headlines are usually external money in state clothing**
  — Eximbank, Chinese bank facilities, an SPV capitalised from an IDA credit, or a
  vendor-financed DBFOT where no fisc money moves at signature. Not the sweep's
  call to make, but stage the funding-source language in the companion page so the
  driver's origin gate has something to work from.
- **Ministry envelopes are the commonest near-miss.** A ministry's total vote is
  not a record. Still stage the source — the envelope is context and sometimes
  contains a stated programme split — but flag it, and do not spend cap on more of
  them once the pattern is established for that country.
- **Multi-year plan envelopes always fail as records.** The acquirable unit
  underneath them is the annual finance law's programme annexe — Francophone
  *loi de finances annexes*, Côte d'Ivoire's *lettres d'engagement*. **Add those
  to `reviews/acquisitions.md` by name** when a plan envelope is all that surfaces.
  Converting envelopes into lines is the single highest-value acquisition this
  dataset has.

Append to the country's section after every run, including what was searched and
found nothing.

## Priority and stopping

**Cap: 40 items per country-year run.** Take documents in this order and stop
early once tiers 1–3 are exhausted:

1. Appropriation act / approved estimates for the run's FY
2. Budget implementation / outturn report for the run's FY
3. Auditor-general report covering the run's FY
4. Budget speech, MTEF or fiscal strategy naming the run's FY
5. Executive instrument or official statement on a named digital programme
6. Procurement plan; own-source-fund budgets and annual reports
7. Reporting and scrutiny on any of the above

A run returning eight documents covering the year's appropriation *and* outturn is
better than one returning forty news items.

**Dedup before fetching**: grep `raw/` and `new/` for the URL and the programme
names. Sweep-time dedup is conservative — exact URL or confident re-crawl only
(`reference.md` §7). On a re-run of the same country-year, most of tier 1 will
already be held; that is success, not a wasted run.

## Staging

**The split is by what a thing is, not by its file extension.**

- **Prose sources → `new/`** — news, statements, press releases, decrees,
  investigative reporting. Flat, date-prefixed, best-effort frontmatter. These
  ingest normally and are the driver's case-4 material.
- **Budget documents → `new-budget/{ISO3}/`** *(Bill's ruling, 2026-07-22)* — the
  artefact **and its companion markdown together, in the same folder, same date
  prefix.** Both wait for the extraction pass.

**Why they sit together** *(Bill's catch, 2026-07-22 — the first draft split them,
which was a bug).* A companion page describes a document that has not been
processed. Sending it to `new/` alone would file a source page into `raw/` whose
`finance.budget` tag routes it straight to the domestic-state driver — which would
find a citation and no budget lines — and whose `[[link]]` would point into a
staging folder the artefact is going to move out of. Neither the record nor the
link would survive the extraction pass that hasn't been written yet. A file's
folder is its state (`CLAUDE.md` → *Structure*); the pair's state is *held, not yet
extracted*, so the pair stays together.

**Nothing in `new-budget/` counts as `awaiting ingest`**, and ingest never drains
it (`reference.md` §2, §7). Append a row to **`new-budget/manifest.csv`** for each
document staged:

`iso3, fiscal_year, doc_type, title, url, artefact_path, companion_path, retrieved, scale, currency, pages, notes`

That manifest is the standing record of what is held and unprocessed — and, read
across a few countries, it is also the raw material for writing the extraction
procedure, since it shows what these documents actually look like before anyone
commits to a method for reading them.

Prose candidates carry `retrieved:` and never `ingested:` (`reference.md` §7).

```yaml
---
type: source
title: <document's own title, verbatim, in its own language>
url: <canonical URL>
publisher: <the institution, not the portal>
published: <publication date; padded + date_precision per reference.md §3>
date_precision: day
date_source: source
places: [<ISO-3>]
topics: [finance.budget, <sector slug where evident>]
entities: [[<institution-slug>]]
lens: []
retrieved: <YYYY-MM-DD>
sweep_batch: domestic-finance-<ISO3>-<fy-label>-<YYYY-MM-DD>
fiscal_years_covered: ["2024/25", "2025/26"]
doc_type: <appropriation-act | budget-estimates | mtef | implementation-report |
           audited-accounts | ifmis-extract | treasury-release | board-budget |
           procurement-plan | statement | reporting>
source_tier: <budget-document | official-statement | reporting>
artefact: <sibling filename, where this is a companion page in new-budget/>
body_completeness: <full | excerpt>
---
```

A companion page in `new-budget/` carries this frontmatter as a **head start for
the extraction pass, not as an admitted source** — it has no `ingested:`, it is
not linked from any wiki page, and it becomes a source only when the extraction
pass emits one into `new/`.

**For a tabular or PDF artefact**, the companion page also records the
**sheet/tab, header row, printed scale and currency**. The scale header — `N'000`,
*en milliers*, "bilião" — is the 1,000× error the driver warns about and the
back-swing already hit in Angolan reporting. Capture it at staging; recovering it
later means reopening the document.

## Close

Terse per `CLAUDE.md` → *Reporting*: documents staged by `doc_type`, items sent to
acquisitions, what was appended to the extraction notes, and — the one that
matters — **which of the run's fiscal-year stages remain uncovered**. For this
dataset the gaps are half the story, and a country-year run that establishes *no
outturn is published* has done its job.

Then the status line.

---

## Notes for Bill

- **`new-budget/` needs one line in `reference.md` §2 (folder structure) and §7
  (containment)** so lint and ingest know it exists and know not to drain it. Not
  written yet — `reference.md` is read by the passes and I've kept off live files.
- **Sub-national is deferred, not dropped.** When it's turned on, the natural shape
  is a separate invocation with its own cap, not a widening of this one — otherwise
  one Nigerian run is 37 governments.
- **First run: South Africa 2024 → FY2024/25** (Bill's choice, on familiarity with
  the data — the right basis for a first run, since the value of run one is
  calibrating the procedure against a corpus someone can check by eye). Good
  properties for a pilot beyond that: an Apr–Mar year, so the resolution rule gets
  exercised immediately; a genuinely published outturn and audit chain; and a
  corpus already lightly touched — the wiki holds one ZAF record
  (`zaf-2025-26-dcdt-sa-connect-phase-2`) and the extraction notes flag a Home
  Affairs ministry-envelope near-miss.
- **Good follow-ons, for different reasons:** Angola 2026 (the back-swing's richest
  seam, and the PAC procurement plans are a known annual source); Kenya 2025 (the
  budget controller's implementation reports are the rare chance to exercise
  `budget_stage` end to end); Benin or Côte d'Ivoire 2026 (to build the Francophone
  vocabulary and test whether the *lettres d'engagement* and finance-law annexes are
  actually acquirable — if they are, the envelope problem is solved for a dozen
  states at once).
