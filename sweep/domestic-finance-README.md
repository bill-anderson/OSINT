# Domestic-state finance sweep — procedure

**Acquisition sweep for one country at a time**, gathering the material the
domestic-state finance driver (`finance-load-domestic-state.md`) builds records
from: budget documents, outturn and audit reports, ministerial statements, and
on-the-record reporting of state digital spending.

Run manually from Claude Code, one country per run. **Invocation: "run domestic
finance sweep for `<country>`".**

## Boundaries

- **Acquisition, not record-building.** Output is candidate source files staged
  for ingest. It applies no five-fact test, extracts no budget lines and builds no
  deal records — that is the driver's job, downstream. The sweep's only question
  is *is this document worth holding*.
- **One country per run.** The vocabulary, institutions and fiscal calendar are
  country-specific and are the substance of the procedure; a multi-country run
  would degrade to generic queries, which is what makes open-web African budget
  searches useless.
- **Containment** (`reference.md` §7): writes only to `new/`, `new-queue/` and its
  own `sweep/domestic/` state. Never to `raw/` or any `wiki/` page.
- **Distinct from the daily trade-journal sweep and the digest.** Different
  sources, different cadence, no overlap: those two never query fiscal
  institutions, and this one never queries the trade journals.

## Scope

**Fiscal years 2024 / 2024-25 onwards only.** Earlier years are out of scope for
this pass, however easily found.

**This is a filter on the fiscal year a document is *about*, never on its
publication date** — the two diverge in both directions and a publication-date
filter gets it wrong at both ends:

- FY2024/25 **estimates** are tabled and published in **early-to-mid 2024**, and
  the medium-term framework naming them appears in **2023**.
- FY2024 **outturn** is published in **2025**, and the **auditor-general's** report
  on it lands in **2025–2027**. A `startPublishedDate` cut at 2024 keeps these; a
  cut at 2025 would lose the estimates.

So set any Exa date window **wide** — 2023-01-01 onwards — and screen on the
fiscal year named *in the document*. A document covering both in-scope and
out-of-scope years (an MTEF spanning FY2023/24–FY2025/26) is **in scope**; note
which years are usable.

## Two tracks, because Exa does one of these well and one patchily

**Be realistic about this.** Exa's neural search is strong on prose — news,
speeches, press releases, analysis. It is weak on the target that matters most
here: budget PDFs sitting on ministry-of-finance domains that are badly indexed,
sometimes uncrawled, often behind a document-library page with no stable link.
Expect the reporting track to succeed and the document track to be patchy, and do
not read a thin document harvest as evidence that the documents don't exist.

### Track A — fiscal institutions, domain-scoped

Domain-scope every query to the country's own fiscal and sector institutions.
This is also the admissibility firewall: it keeps out the AI-synthesis blogs and
content mirrors that dominate unscoped African budget queries.

The institution list per country — this is the real payload of a country's
section, more than any query string:

| Role | Typical holder |
|---|---|
| Budget authority | Ministry of Finance / Budget Office / Treasury |
| Execution and release | Treasury; Controller of Budget or equivalent |
| Legislature | National Assembly / Parliament; parliamentary budget office |
| Audit | Auditor-General / Cour des comptes |
| Sector ministry | Ministry of ICT / Digital Economy / Communications |
| Sector regulator | Communications/ICT regulator (own budget, spectrum-funded) |
| Own-source funds | Universal service fund; ICT development levy body |
| Programme owners | National ID authority; e-government agency; statistics office |
| Sub-national | State/county/provincial treasuries — the largest gap in coverage |
| Portal | The government's own open-budget or IFMIS portal |

Also worth scoping: the country's **IMF Article IV and programme documents**,
which frequently quote budget aggregates and execution rates the national
documents obscure.

### Track B — direct enumeration

For the budget authority and the portal, go at the **document library page**
directly rather than searching for the PDF: fetch the page, read its links, take
the ones matching the in-scope fiscal years. Budget portals are usually a
predictable directory. One fetch of an index page beats ten semantic queries.

A document that cannot be reached in one attempt goes to `reviews/acquisitions.md`
per `CLAUDE.md` → *Working the base*. One attempt, then it is a stated absence,
not a standing chore.

## Semantic context — the query blocks

Run these as **separate queries**, not one blended one. Blending "budget" with
"digital" tends to return neither. Substitute the country's own vocabulary from
its section below; in Francophone, Lusophone and Arabophone states **query in the
document's language**, not in English — the terms are not translations of each
other and an English query returns commentary rather than documents.

**Block 1 — the appropriation.** *Approved budget estimates and appropriation act
for the fiscal year, showing votes, heads and programme allocations by ministry,
department and agency.* Scope: budget authority, legislature. Look for: the
estimates volumes, the appropriation act as assented, the budget speech and its
annexes.

**Block 2 — execution and outturn.** *Budget implementation and expenditure
review reporting actual spending against approved allocations by ministry and
programme, including exchequer releases and absorption rates.* Scope: treasury,
budget controller, legislature. This is the material almost nobody publishes and
everybody needs — weight the effort here.

**Block 3 — audit.** *Auditor-general's report on the financial statements of
ministries and agencies, including irregularities in ICT and systems procurement.*
Scope: audit institution, legislature.

**Block 4 — the digital line, from the sector side.** *Government allocation and
spending on digital transformation, e-government, digital identity, national data
centre, connectivity and ICT systems in the national budget.* Scope: sector
ministry, regulator, funds, plus national press. This is the block that finds the
line item when the budget document itself is opaque.

**Block 5 — statements and clarifications.** *Minister's or permanent secretary's
statement on funding allocated to a named digital programme, its cost, its
disbursement and its implementation status.* Scope: sector ministry, budget
authority, national press, parliamentary reporting. Case 3 and case 4 material in
the driver — often the only place a line becomes legible.

**Block 6 — own-source and sub-national.** *Universal service fund, ICT levy and
regulator budgets; county, state or provincial ICT budgets and their approved
estimates.* Scope: funds, regulator, sub-national treasuries, national press.
The least-covered material on the continent and the reason `state_level` exists.

**Block 7 — contest and scrutiny.** *Parliamentary committee questioning,
civil-society budget analysis or investigative reporting on digital-programme
spending, cost overruns and procurement.* Scope: legislature, national press,
national civil-society budget organisations. **Analysis here is a lead** — mine it
for the primary it cites (`CLAUDE.md` → *The material*). Investigative reporting
on the record is a source.

## Priority and stopping

A single country's fiscal corpus is effectively unbounded. Take documents in this
order and stop at the cap:

1. Appropriation act / approved estimates, per in-scope FY
2. Budget implementation / outturn report, per in-scope FY
3. Auditor-general report covering an in-scope FY
4. Budget speech and MTEF/fiscal strategy naming in-scope years
5. Official statement on a named digital programme's funding
6. Sub-national and own-source-fund budgets
7. Reporting and scrutiny on any of the above

**Cap: 40 items per country per run**, and stop early once tiers 1–3 are
exhausted for every in-scope fiscal year. A run that returns eight documents
covering two fiscal years' appropriation and outturn is a better run than one
returning forty news items.

**Dedup before fetching**: grep `raw/` for the document and for the programme
names. Sweep-time dedup is conservative — exact URL or confident re-crawl only
(`reference.md` §7).

## Staging and frontmatter

- **Markdown candidates → `new/`**, flat, date-prefixed, best-effort frontmatter.
- **Binary and tabular artefacts (PDF, XLSX, CSV) → `new-queue/{ISO3}/`**, with a
  **companion markdown source page in `new/`** carrying the frontmatter and
  linking to the artefact, per the binary-artefact rule in `reference.md` §3.
  Prefix both with the same date so they sort together. *(See the open question at
  the foot of this file — `new-queue/` was retired for the daily sweep on
  2026-07-21 and this reinstates it for binaries only.)*
- Staged candidates carry `retrieved:` and never `ingested:` (`reference.md` §7).

Best-effort frontmatter on every candidate, validated at ingest, never a
substitute for it:

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
sweep_batch: domestic-finance-<ISO3>-<YYYY-MM-DD>
fiscal_years_covered: ["2024/25", "2025/26"]
doc_type: <appropriation-act | budget-estimates | mtef | implementation-report |
           audited-accounts | ifmis-extract | treasury-release | board-budget |
           statement | reporting>
source_tier: <budget-document | official-statement | reporting>
body_completeness: <full | excerpt>
---
```

`fiscal_years_covered` is the scope screen made explicit and is what the driver
reads to know which years a document can support. `doc_type` and `source_tier`
are staged here because the sweep knows them and the driver would otherwise have
to re-derive them.

**For a tabular artefact** (XLSX/CSV budget extract), the companion markdown also
records the **sheet/tab, the header row, the printed scale and the currency** —
the scale header is the 1,000× error the driver warns about, and it is far cheaper
to capture at staging than to recover later.

## Per-country vocabulary

Each run reads and then appends to its country's section in
**`documentation/domestic-budget-extraction.md`** — the accumulating record of what
the digital lines are actually called and where they hide. **Read it before
querying**; a second run on a country should never start from generic terms.

Sketch of what a section holds, to be filled by the runs themselves:

- **Fiscal year**: start/end months, the label form used (`2025/26`, `FY2025`).
- **Budget vocabulary**: Anglophone *vote / head / sub-head / programme / MDA*;
  Francophone *loi de finances / budget-programme / titre / chapitre / action /
  crédits de paiement*; Lusophone *orçamento do estado / dotação / rubrica*.
- **Digital vocabulary as that government writes it** — rarely "digital
  transformation": an ICT vote, a named flagship, an agency's own line.
- **Institutions and their domains**, per the Track A table.
- **What was searched and found nothing.**

### Worked example — Kenya (suggested pilot)

Chosen because it exercises everything awkward and rewards it: a **July–June
fiscal year** (so the padding and precision rules bite), a **published outturn**
via the Controller of Budget's quarterly implementation reports (rare on the
continent, and the whole point of `budget_stage`), **47 county budgets** for the
sub-national tier, and named flagship programmes to anchor Block 4.

In-scope years: **FY2024/25, FY2025/26, FY2026/27** (estimates).

Institutions to domain-scope: National Treasury; Controller of Budget; Parliamentary
Budget Office and the National Assembly; Office of the Auditor-General; Ministry of
Information, Communications and the Digital Economy; Communications Authority;
Universal Service Fund; ICT Authority; the county treasuries; and the Treasury's
own budget-documents library for Track B enumeration.

Block 4 and 5 terms to try: the digital superhighway and creative economy pillar;
Maisha Namba and the national digital identity programme; the government's shared
digital services platform; the national fibre backbone extension; digitisation of
government services; county revenue-management systems.

After the run, write back what the vote and programme actually turned out to be
called — that is what makes the second country cheaper than the first.

**Good next countries, for different reasons:** Nigeria (calendar FY, strong
document availability, federal *and* 36 states, levy-funded NITDA); Ghana
(programme-based budgeting, clear digital flagships); Rwanda (well-structured
budget, explicit ICT programmes); Senegal or Côte d'Ivoire (to build the
Francophone vocabulary early rather than late).

## Close

Terse per `CLAUDE.md` → *Reporting*: documents staged by `doc_type` and fiscal
year, fiscal years with no document found, items sent to acquisitions, and what
was appended to the extraction notes. State plainly which in-scope fiscal years
remain uncovered — **a known gap is a finding**, and for this dataset the gaps are
half the story.

Then the status line.

---

## Open questions for Bill

1. **`new-queue/` was retired.** `reference.md` §7 records the
   `new-queue/ → new/` promotion step as retired on 2026-07-21, with
   `new-queue/done/` reserved to Bill and untouched by CC. Staging binaries there
   reinstates it. Three options: reinstate deliberately (and amend §7);
   put artefacts in `sweep/domestic/{ISO3}/` instead, which the containment rule
   already permits and which keeps 40MB PDFs out of `new/`; or put artefact and
   companion page both in `new/` per the existing §3 binary rule. This file
   currently follows the instruction as given.
2. **Do sub-national budgets belong in the same run**, or a separate pass? 47
   Kenyan counties or 36 Nigerian states will swamp a 40-item cap and drown the
   national documents.
3. **Cap and cadence** — is 40 per run right, and is this a one-off per country or
   re-run each fiscal year?
