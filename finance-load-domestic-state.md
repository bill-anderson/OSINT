# Driver — domestic-state finance (budgets and expenditure)

Feeds `wiki/finance-record-spec.md` from **national and sub-national budget
documents**: appropriation acts, estimates, budget implementation reports,
audited accounts, IFMIS and open-budget portal extracts. One record per budget
line, per stage.

Invocation: **"run domestic finance capture"** (one document at a time) or
**"run domestic finance load"** (a prepared CSV of lines). Because extraction
needs network and PDF handling, run it from Claude Code.

This driver only does what is peculiar to state budgets: identify the line,
place it in the budget cycle, and settle origin. All record-shaping, tagging,
dating, enrichment, merging and verification live in the spec — do not restate
them here.

## What this dataset is, and is not

The non-state dataset answers *who from outside is putting money into African
digital transformation*. This one answers a harder and more interesting question:
**what are African states spending out of their own resources, and does the money
voted ever arrive?** That second half is why stage matters more than anything
else here. An appropriation is a statement of intent by a legislature; an outturn
is a fact. The wiki holds both and never silently conflates them.

## Provenance

The budget document itself is the primary. A budget-tracking portal, a
civil-society budget analysis or a newspaper's summary of the estimates is a
**lead**: mine it for the appropriation act or implementation report it works
from, ingest that, discard the synthesis (`CLAUDE.md` → *The material*).

Two exceptions worth naming, because they look secondary and are not:

- **Auditor-general and parliamentary budget office reports** are primary. They
  are first-hand institutional findings, not commentary, and they are frequently
  the only place an outturn figure is stated at all.
- **IFMIS / open-budget portal extracts** are primary where the portal is the
  government's own (Kenya's Treasury portal, Nigeria's BudgIT-independent
  OpenTreasury, South Africa's Vulekamali). A third-party mirror is a lead.

## Origin — the double-counting gate

*(Curator ruling, 2026-07-22.)* **A budget line financed externally is recorded as
`finance_origin: non-state`, not `domestic-state`** — even though it appears in
the national budget. The origin field tracks *whose money it is*, not which
document reports it.

This makes the hub aggregate's domestic-state total mean "resourced from the
state's own revenue and domestic borrowing", which is the number worth having,
and it removes double-counting by construction rather than by netting off.

Run this gate on every line, before building anything:

| Budget line's stated funding source | `finance_origin` | Then |
|---|---|---|
| Domestic revenue; domestic borrowing; own-source (levy, SOE revenue) | `domestic-state` | build normally |
| External loan; external grant; development-partner financed | `non-state` | **definite-match first** (below) |
| Counterpart / matching funds against an external project | **split** | see below |
| Not stated | `domestic-state`, flagged | record `funding source unstated` in `## Notes` |

**Externally-financed lines must be definite-matched before a record is created.**
The wiki very likely already holds the deal from the financier's side. Match on
`project_id` or `iati_project_id`, or unambiguous financier + recipient + project
identity (spec → *Store of record*). On a definite match, **do not create a second
record** — fold the budget's view into the held one as a dated line in
`## Development history`, which is exactly the added value a budget document
carries: `- **2025-06-12** — appropriated NGN 4.2bn in the FY2025 federal budget,
vote 0522, against this project. [<url>]`. That single line is often the only
public evidence that a donor commitment reached a national vote. Only where no
held record matches is a new `non-state` record created.

**Counterpart funding splits only where the document states both parts
separately.** The government's own share is `domestic-state`; the external share
is `non-state` and goes through the matching gate above. Where the document gives
a combined figure only, record one line at its stated origin and note the
blending — never apportion it ourselves.

## Scope — which lines are digital

The hardest problem in this dataset, and one we expect to get better at rather
than solve. *(Curator ruling, 2026-07-22: "this is a challenge for all evidence;
we need to keep learning how to extract this.")*

Two rules hold regardless:

- **Never compute a digital share of a mixed line.** No percentages, no
  apportionment, no "roughly a third of the ministry's capital budget". An
  estimated share passes every vocabulary check and reads on the page as a
  derived fact — the same failure mode as a defaulted subject slug (spec →
  *Subject tag* §1).
- **A ministry's total vote is not digital-transformation finance.** The unit of
  capture is the programme, sub-programme or project line whose stated purpose is
  a digital activity — not the ICT ministry's envelope.

Every record therefore carries two fields:

- **`scope_confidence`** — `whole` (the line's stated purpose is entirely a
  digital activity), `partial` (the line demonstrably contains digital spend
  among other things, amount not separable), `unclear` (identified as digital on
  weaker grounds — say so).
- **`scope_basis`** — one line on *how* the line was identified: an explicit
  programme title, a project code, a budget-classification tag, a narrative
  paragraph, a named system. This is the field that makes the learning
  cumulative.

`partial` and `unclear` records are built and held, but the finance compile pass
reports them **separately from the headline total**, never folded in. A total
that mixes clean lines with partial ones is worse than no total.

**Extraction methods accumulate in `documentation/domestic-budget-extraction.md`**
— per country and per document type, what the digital lines are actually called,
which classification codes carry them, where they hide. Append to it on every
run, including the failures. Next year's capture of the same country should start
from what this year learned, not from scratch.

## Fiscal years

Fiscal years do not align across the continent and are not calendar years:
Nigeria runs January–December, Kenya, Uganda, Tanzania and Egypt July–June,
South Africa April–March, Ethiopia Hamle–Sene on the Ethiopian calendar. Treating
"2025" as one comparable year across these is the single easiest way to produce a
confidently wrong aggregate.

Every record carries:

- **`fiscal_year_label`** — verbatim as the document writes it (`2025/26`,
  `FY2025`, `2017 EFY`). Never normalised.
- **`fy_start` / `fy_end`** — ISO dates, so records can be compared and bucketed.
- **`fy_calendar`** — `gregorian` | `ethiopian` (Ethiopian-calendar labels also
  carry the Gregorian equivalent in `fy_start`/`fy_end`).

`published` anchors on the **appropriating or reporting event**: the date the
appropriation act was assented to or the implementation report published, at day
precision where stated; otherwise `fy_start`, `date_precision: year`. The
document's own publication date is never the event date where the two differ
(`CLAUDE.md` → *Currency*).

## Budget stage and version

Stage is the field this dataset lives or dies by. A record is one line **at one
stage** — the same line at appropriation and at outturn is two records sharing a
key stem, not one record overwritten.

**`budget_stage`** — `proposed` (tabled, not yet enacted) | `appropriated`
(enacted) | `revised` (supplementary or in-year revision) | `released`
(warranted/disbursed to the MDA by treasury) | `actual` (executed/outturn) |
`audited` (auditor-general verified).

**`budget_version`** — `original` | `supplementary-1`, `-2`, … | `revised`.

**MTEF outer-year projections are not records.** A medium-term expenditure
framework's years 2 and 3 are indicative planning figures, not appropriations —
they fail the spec's fact 3 the same way an "up to" or a mobilisation target
does. Only the budget year is captured. Note the outer-year figure in the
record's `## Notes` if it is informative; do not build from it.

**A later stage does not overwrite an earlier one, and is not a contradiction.**
Appropriated NGN 4.2bn against actual NGN 0.9bn is not two sources disagreeing —
it is the finding. Both records stand; the compile pass reports execution rate
where both stages exist for the same line.

## Classification — codes, not just names

Names churn between years and ministries are merged and split constantly; **codes
are the join key** across years and between the budget and the outturn document.
Capture both, verbatim, and never invent a code that isn't printed.

The administrative chain varies by tradition, so the schema is generic rather
than Westminster-shaped:

| Field | Anglophone | Francophone (LOLF-style) |
|---|---|---|
| `admin_head` + `admin_head_code` | Vote / Head | Section / Ministère |
| `spending_entity` + `spending_entity_code` | MDA | Institution / Service |
| `programme` + `programme_code` | Programme | Programme |
| `sub_programme` + `sub_programme_code` | Sub-programme / Project | Action / Activité |

Keep the document's own label for each level in `classification_labels`, so a
francophone *action* is not silently rendered as a *sub-programme* on the page.

**`econ_class`** — the economic classification as stated (GFS-style: compensation
of employees, goods and services, acquisition of non-financial assets, capital
transfers). Verbatim; do not map to a house vocabulary.

## Amounts

- **`amount_capital`** and **`amount_recurrent`** as separate numeric fields in
  the original currency, plus `amount_total`. Two numbers, not prose: the one
  analysis that matters most here is how much of a state's digital spend is
  salaries and allowances versus actual build, and a "details" text field cannot
  answer it. Where the document gives only a combined figure, fill `amount_total`
  and leave the other two blank — never split them ourselves.
- **`currency`** — ISO-4217, the announcing state's own currency
  (`CLAUDE.md` → *Currency*).
- **`amount_usd`** — a **dated conversion**, carrying `fx_rate`, `fx_rate_date`
  and `fx_rate_source` on the record. Use the **fiscal-year average rate** from a
  named source (IMF IFS, or the central bank's own published average), not spot
  at capture: spot-converting a 2019 naira line and a 2025 one and summing them
  produces a number that means nothing.
- **`pct_of_total_budget`** and **`pct_of_admin_head`** where the document states
  the denominators. These are the comparisons that survive inflation and
  depreciation, and across a decade of budget data they are more informative than
  any USD series. Compute only from figures in the same document; never against a
  denominator fetched from elsewhere.

**Never sum USD across fiscal years** in a compiled total. Aggregate within a
year, or aggregate in original currency, or use the percentage fields.

## State level — what counts as domestic state

*(Curator ruling, 2026-07-22: sub-national and own-source-funded bodies are in.)*

**`state_level`** — `national` | `sub-national` | `soe` | `levy-fund` |
`regulator`.

Sub-national digital spend is substantial and largely untracked: Nigerian states,
Kenyan counties, South African provinces and metros. Levy- and own-revenue-funded
bodies sit outside the vote structure entirely but are among the largest domestic
funders of digital transformation on the continent — NITDA's levy, universal
service and access funds, spectrum-fee-funded regulators. Excluding them because
they are not appropriations would miss the money.

- **`place` is always the country ISO-3** — `countries.csv` has no sub-national
  vocabulary and is not being extended. The sub-national unit is an **entity**
  (`lagos-state-government`, `nairobi-city-county`) plus **`spending_tier_name`**
  verbatim.
- For `soe`, `levy-fund` and `regulator`, `budget_stage` is usually `appropriated`
  (board-approved budget) or `actual`; funding source is `own-source` and origin
  is `domestic-state`.

## Entities

Per `CLAUDE.md` → *Entities*, and the spec. Three actors here, not two:

- **Financier** — the fisc: the national or sub-national treasury/ministry of
  finance, or the levy fund / SOE spending its own revenue. An institution, never
  the minister who read the budget speech.
- **Spending entity** — the MDA. Resolve against `wiki/entities/`.
- **`vendor`** — the contractor or supplier, **where the document names one**.
  Often it does not; where it does, this is the most valuable field on the record.
  Procurement and technology-dependency stories live here, and neither the vote
  structure nor the non-state dataset captures them. Tag as an entity.

## Record key and filename

`deal_id` stem: `{ISO3}-{fy_label}-{admin_head_code}-{programme_code}-{stage}`,
lowercased, non-alphanumerics to hyphens — e.g. `nga-2025-0522-erp01-appropriated`.
Where a code is genuinely absent, use a slug of the name and note it. The stem
without `-{stage}` is what links appropriation to outturn.

Filename per the spec: `{published}-{deal_id}-{short-title-slug}.md` in `new/`.

## Source citation

Budget documents run to hundreds of pages, so a bare URL is not re-findable.
Every record carries **`doc_type`** and **`doc_locator`**:

- `doc_type` — `appropriation-act` | `budget-estimates` | `mtef` |
  `implementation-report` | `audited-accounts` | `ifmis-extract` |
  `treasury-release` | `board-budget`.
- `doc_locator` — page, table and line reference as printed
  (`p. 412, head 0522, line 23050113`).

## Additional frontmatter

On top of the spec's schema:

```yaml
finance_origin: domestic-state   # or non-state, per the origin gate above
state_level: national
fiscal_year_label: "2025"
fy_start: 2025-01-01
fy_end: 2025-12-31
fy_calendar: gregorian
budget_stage: appropriated
budget_version: original
scope_confidence: whole          # whole | partial | unclear
funding_source: domestic-revenue
doc_type: appropriation-act
```

The remaining fields (classification, amounts, FX, vendor, `scope_basis`,
`doc_locator`) render as rows in the `## Deal record` table, not as frontmatter —
frontmatter carries only what the compile and lint passes filter on.

## Loop

For each budget line: run the **scope** test → run the **origin gate** (external
lines divert to definite-match, and mostly to a merge, not a new record) → run the
spec's five-fact test → map fields → hand to `wiki/finance-record-spec.md` → write
one file to `new/` → append one line to `documentation/domestic-finance-run-log.csv`
(`deal_id, file, country, fy, stage, origin, scope_confidence, amount_total,
currency, matched_to, warnings`) → append any new extraction method to
`documentation/domestic-budget-extraction.md`. Moving the file into `new/` is the
last step, so an interrupted run resumes on the lines not yet written.

Work a document at a time, over all its digital lines at once, never a selection.

## Close

Report terse (`CLAUDE.md` → *Reporting*): documents processed, records built by
stage and origin, lines diverted to merge, lines that failed scope or the
five-fact test and why. End with the status line:

`contradictions - NN ; acquisitions - NN ; awaiting ingest - NN ; decisions logged - NN`
