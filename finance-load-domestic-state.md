# Driver — domestic-state finance (budgets and expenditure)

Feeds `wiki/finance-record-spec.md` from **national and sub-national budget
documents**: appropriation acts, estimates, budget implementation reports,
audited accounts, IFMIS and open-budget portal extracts. One record per budget
line, per stage.

— **and from reporting and official statements about them**, which for many
countries is the only way the money is visible at all.

Invocation: **"run domestic finance capture"** (one document or item at a time),
**"run domestic finance load"** (a prepared CSV of lines), or
**"run domestic finance back-swing"** (a pass over `raw/` items already carrying
`finance.*` that report domestic state spend and have no `deal_id` — the
counterpart to the news driver's back-swing). Because extraction needs network and
PDF handling, run it from Claude Code.

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

## Provenance — budget documents *and* reporting

**This dataset is built from both, exactly as the non-state one is.** Many budget
documents are not published; some that are obfuscate; a minister's press release
or a parliamentary report often clarifies what the tables hide. Treating anything
short of the appropriation act as inadmissible would mean holding almost nothing
for the countries where the question matters most. *(Bill's ruling, 2026-07-22,
correcting a first draft of this driver that made news a lead.)*

Primary, all of them: the **budget document**; the government's **own statements**
— ministry or treasury press releases, budget speeches, official portals;
**auditor-general and parliamentary budget office reports**, which are first-hand
institutional findings and frequently the only place an outturn is stated at all;
**IFMIS / open-budget extracts** where the portal is the government's own (Kenya's
Treasury portal, Nigeria's OpenTreasury, South Africa's Vulekamali); and
**on-the-record reporting** of any of these.

Leads, not sources, per `CLAUDE.md` → *The material*: AI syntheses, news
aggregators and digests, third-party portal mirrors.

**`source_tier`** records which we built from — `budget-document` |
`official-statement` | `reporting` — because it decides what happens when a better
source arrives.

## The five cases

The unit is always **one budget line, one fiscal year, one stage** (see *Budget
stage*). What varies is what we can see it through.

1. **Budget document exists** — build from it. Full classification chain, codes,
   scale, `doc_locator`. `source_tier: budget-document`.
2. **Each line and each year is its own record.** A programme appearing in FY2024
   and FY2025 is two records; appropriated and actual are two more. Never one
   record updated in place — the series *is* the finding.
3. **Both exist** — the budget document is the record; the reporting is **linked,
   not merged into the fields**. Add it as a dated attributed line in
   `## Development history` (spec → *Store of record*). This is where a minister's
   clarification of an opaque line belongs, and it is often the only thing that
   makes the line legible.
4. **Only reporting exists** — build the record if it passes the spec's five-fact
   test, no differently from the non-state driver. `source_tier: reporting`.
   Classification codes, scale and `doc_locator` are **left blank, not inferred**;
   `budget_stage` is recorded only if the source says which stage it is, else
   `unclear`. A record with blanks is worth having; a record with guessed vote
   codes is not.
5. **A budget document later surfaces for a record built from reporting — reset.**
   Rebuild the record from the document: it is a clear tier upgrade, so it
   *replaces* rather than supplements (`CLAUDE.md` → *Duplicates*). Keep the
   `deal_id` stem so the series holds; take every field from the document; and
   keep the superseded reporting as a `## Development history` line rather than
   discarding it — it is the evidence of what was public before the document was.
   Log the reset. **A figure that disagrees is a contradiction**, filed to
   `reviews/contradictions/`, not silently overwritten — a budget document
   disagreeing with what a minister announced is precisely the kind of thing this
   wiki exists to catch.

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
| Domestic revenue; domestic borrowing; own-source (levy or fee income of a levy fund or regulator) | `domestic-state` | build normally |
| External loan; external grant; development-partner financed | `non-state` | **definite-match first** (below) |
| Counterpart / matching funds against an external project | **split** | see below |
| Not stated | `domestic-state`, flagged | record `funding source unstated` in `## Notes` |

**`funding_source` vocabulary** (closed): `domestic-revenue` | `domestic-borrowing`
| `own-source` | `external-loan` | `external-grant` | `counterpart` | `unstated`.

**Externally-financed lines are definite-matched before anything is built.** The
wiki very likely already holds the deal from the financier's side, so these
usually merge rather than create — spec → *Store of record* governs; do not
re-derive it here. What is worth saying is *why it matters*: the merged line is
often the only public evidence that a donor commitment actually reached a
national vote, and it is the added value a budget document uniquely carries.

`- **2025-06-12** — appropriated NGN 4.2bn in the FY2025 federal budget, vote
0522, against this project. [<url>]`

A diverted line **drops `finance.budget` and carries `finance.new`** — it is a
donor commitment that a budget document happens to evidence, and the tag must
route it to the deal it belongs to, not back into this driver.

Where no held record matches, a new `non-state` record is built — and its
**financier is the external funder, not the treasury**. Budget documents often
name it only as an instrument ("IDA credit", "AfDB loan", "JICA grant"); resolve
that to the funding institution's existing entity slug. Where the line names no
funder at all beyond "external", the record **fails fact 1** — route it as an
ordinary source and say so, rather than tagging the fisc as financier for money
that is not the state's.

**Counterpart funding splits only where the document states both parts
separately.** The government's own share is `domestic-state`; the external share
is `non-state` and goes through the matching gate above. Where the document gives
a combined figure only, record one line at its stated origin and note the
blending — never apportion it ourselves.

### Transfers inside the state — the second double-count

The origin gate separates external money from domestic. It does not stop the same
domestic naira being counted twice **within** `domestic-state`, which happens two
ways: a national subvention appropriated to a levy fund, regulator or SOE that
then appears again in that body's own board budget; and a national conditional
grant to a county or state that is re-appropriated at the sub-national tier.

**Capture at the spending end, once.** Where a line is a transfer to another body
whose budget we also capture, set **`is_transfer: true`** and record the
receiving body — the record stands (the transfer is itself a fact worth holding)
but the compile pass excludes `is_transfer` lines from the total, counting the
receiving body's own spend instead. Where we do *not* hold the receiving body's
budget, the transfer line is the only record of the money and counts normally —
set `is_transfer: false` and note why.

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

### A bare year in an instruction means the year the fiscal year *begins*

*(Bill's ruling, 2026-07-22.)* "FY2024", "2024", or "run … for 2024" all mean **the
fiscal year beginning in 2024**, whatever that country calls it — so it resolves
to `2024` in Nigeria and Zambia (calendar), `2024/25` in South Africa (Apr–Mar),
Kenya, Uganda, Tanzania and Egypt (Jul–Jun), and the Ethiopian year beginning in
July 2024. One instruction, one fiscal year, every country.

This settles the scope cut too: **FY2024 onwards = fiscal years beginning on or
after 1 January 2024**. Kenya's 2023/24 is therefore out and 2024/25 is its first
in-scope year, even though 2023/24 ran halfway through 2024.

The rule governs **instructions only**. The stored `fiscal_year_label` stays
verbatim as the document writes it — the corpus already carries `2024/25`,
`2024-2025`, `2025/26` and `NDP 12`, and normalising them would destroy the tie
back to the source.

Every record carries:

- **`fiscal_year_label`** — verbatim as the document writes it (`2025/26`,
  `FY2025`, `2017 EFY`). Never normalised.
- **`fy_start` / `fy_end`** — ISO dates, so records can be compared and bucketed.
- **`fy_calendar`** — `gregorian` | `ethiopian` (Ethiopian-calendar labels also
  carry the Gregorian equivalent in `fy_start`/`fy_end`).

`published` anchors on the **appropriating or reporting event**: the date the
appropriation act was assented to or the implementation report published, at day
precision where stated. Failing that, `published` = **`fy_start`** with
**`date_precision: month`** — not `year`. A July–June fiscal year cannot be padded
to `YYYY-01-01` without asserting a false event date and sorting a Kenyan FY2025/26
line six months away from a Nigerian FY2025 one; `fy_start` at month precision is
the honest form, and the spec's year-padding rule does not apply because the
anchor here is a known fiscal-year boundary, not a bare year.

The document's own publication date is never the event date where the two differ
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

**A supplementary states either an increment or a restated total, and which one
must be recorded** — `supplementary_basis`: `increment` | `restated-total`. Two
records at the same stage for the same line stem would otherwise be summed, which
is the same double-count as external financing wearing different clothes. Where
the basis is `restated-total`, the supplementary **supersedes** the original for
totalling purposes; both records stand, per `CLAUDE.md` → *Currency*
(supersession is not contradiction). Where the document does not make the basis
clear, record `unclear` and exclude the line from totals rather than guessing.

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
- **`amount_scale`** — **the first thing to establish and the easiest error to
  make.** Budget tables are printed in thousands or millions, stated once in a
  column header or a note that may be three hundred pages from the line
  (`N'000`, "in millions of Kenya shillings", `en milliers de FCFA`). Record the
  scale as printed **and store all amounts normalised to units**. A missed scale
  header is a 1,000× error that looks entirely plausible on the page. Check that
  `amount_capital + amount_recurrent = amount_total` on every line where all
  three are given; a mismatch means a scale or a column has been misread, and the
  line is not recorded until it resolves.
- **`currency`** — ISO-4217, the announcing state's own currency
  (`CLAUDE.md` → *Currency*). **Redenominations break original-currency series**:
  Sierra Leone's SLL→SLE (1,000:1, 2022), Ghana's and Zambia's earlier
  redenominations. Record the code in force in that fiscal year — never
  back-convert historic figures — and note the break where a series spans one.
- **`amount_usd`** — a **dated conversion**, carrying `fx_rate`, `fx_rate_date`,
  `fx_rate_source` and `fx_rate_basis` on the record. Use the **fiscal-year
  average rate** from a named source (IMF IFS, or the central bank's own published
  average), not spot at capture: spot-converting a 2019 naira line and a 2025 one
  and summing them produces a number that means nothing. Two fallbacks, in order,
  because a July–June year has no published calendar-year average and a current
  year has no average at all: **(a)** the mean of the twelve monthly averages
  spanning `fy_start`–`fy_end`, `fx_rate_basis: fy-average-computed`; **(b)** for
  an incomplete fiscal year, the rate at `fy_start`, `fx_rate_basis: fy-start-spot`
  — and that record's USD figure is provisional, to be recomputed when the year
  closes. Where a state runs a multiple or heavily managed exchange rate, say
  which rate was used; the official rate is often not the transacting one.
**Never sum USD across fiscal years** in a compiled total. Aggregate within a
year, or aggregate in original currency.

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
- For `levy-fund` and `regulator`, `budget_stage` is usually `appropriated`
  (board-approved budget) or `actual`; funding source is `own-source` and origin
  is `domestic-state` — a levy or licence fee is state revenue by another route.
- **SOEs: the origin of the money decides.** *(Bill's ruling, 2026-07-22.)* An
  SOE spending income that is not the state budget — commercial revenue, its own
  borrowing — is a **non-state** funder: its investments belong to the news
  driver, exactly as a private operator's do. What this driver captures is the
  **state → SOE flow**: a subvention, recapitalisation or appropriation to an SOE
  is a `domestic-state` record with the fisc as financier and the **SOE as
  recipient**, `state_level: soe`. An SOE wholly dependent on budget transfers
  has no own-spend to record separately.

## Entities

Per `CLAUDE.md` → *Entities*, and the spec. Three actors here, not two:

- **Financier** — the fisc: the national or sub-national treasury/ministry of
  finance, or the levy fund / regulator spending its own levy or fee income. An
  institution, never the minister who read the budget speech. An SOE is a
  recipient or spending entity here, never the financier — its own-revenue spend
  is non-state, per *State level*.
- **Spending entity** — the MDA. Resolve against `wiki/entities/`.
- **`vendor`** — the contractor or supplier, **where the document names one**.
  Often it does not; where it does, this is the most valuable field on the record.
  Procurement and technology-dependency stories live here, and neither the vote
  structure nor the non-state dataset captures them. Tag as an entity.

## Record key and filename

`deal_id` stem:
`{ISO3}[-{tier-slug}]-{fy_label}-{admin_head_code}-{programme_code}-{stage}`,
lowercased, non-alphanumerics to hyphens — e.g.
`nga-2025-0522-erp01-appropriated`, `nga-lagos-state-2025-05-erp01-appropriated`.

**The tier slug is mandatory for anything not `state_level: national`.** Without
it, Lagos State and Kano State vote 05 programme ERP01 collide on one key — and
since the stem is also the appropriation↔outturn join, a collision would silently
merge two states' execution rates. Vote numbering is not comparable across
sub-national units and must never be assumed unique.

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

`doc_type` and `doc_locator` apply to `source_tier: budget-document`. A record
built from reporting or a statement cites that source normally, per the spec, and
leaves both blank.

### The budget document gets one companion source page

A 600-page appropriation act cannot be a verbatim body, and forty records will
cite the same document. So the document is stored **once**, as a companion source
page per `reference.md` §3, holding the citation, the scope of the document, the
classification structure and the scale/currency headers — with
`body_completeness: excerpt` and a note that the body is a structured extract of a
tabular document, not a withheld text. Every record from that document links to
it. This is what stops lint #15 inferring `full` on a body that was never prose.

Each record's own `## Description` carries the **line's stated purpose, verbatim**
— the programme narrative or project description as printed — and nothing else.
Where the document gives only a title, the description is blank; that is normal
for budget data and must not be filled with the title reworded.

**Capture the title and description in the document's own language.** Do not
translate French, Portuguese or Arabic budget lines into English on the page —
the spec's verbatim rule holds, and a translated programme title is unfindable
against the source. Add a translation in `## Notes` where it aids the reader.

**A budget document that cannot be fetched goes to `reviews/acquisitions.md`**,
one automated attempt, per `CLAUDE.md` → *Working the base*. Records built from
reporting stand meanwhile — they are not provisional, and they are not waiting on
anything; if the document later arrives, case 5 resets them. If it stays
unobtainable, state the absence on the place hub as a dated finding — "no
published FY2025 outturn for the ICT vote as at 2026-07-22" is itself worth
saying — and do not leave it as a standing chore.

## Additional frontmatter

Frontmatter carries **what the compile pass aggregates or filters on**; everything
else renders as rows in the `## Deal record` table. On top of the spec's schema:

```yaml
finance_origin: domestic-state   # or non-state, per the origin gate above
state_level: national            # national | sub-national | soe | levy-fund | regulator
spending_tier_name: ""           # verbatim, required unless state_level: national
fiscal_year_label: "2025"
fy_start: 2025-01-01
fy_end: 2025-12-31
budget_stage: appropriated       # unclear, where a reporting source doesn't say
budget_version: original
source_tier: budget-document     # budget-document | official-statement | reporting
supplementary_basis: ""          # increment | restated-total | unclear (supplementaries only)
scope_confidence: whole          # whole | partial | unclear
is_transfer: false
amount_total: 4200000000         # normalised to units, original currency
amount_capital: 3100000000
amount_recurrent: 1100000000
currency: NGN
amount_usd: 2734000
fx_rate: 1536.0
fx_rate_basis: fy-average        # fy-average | fy-average-computed | fy-start-spot
```

The amount and FX fields sit here because `FINANCE-COMPILE.md` sums them by
script; putting them in a markdown table would force the compile to parse prose.

In the body table, not frontmatter: `funding_source`, `fy_calendar`,
`amount_scale`, `fx_rate_date`, `fx_rate_source`, the full
classification chain and its labels, `econ_class`, `vendor`, `scope_basis`,
`doc_type`, `doc_locator`.

## Loop

For each budget line: run the **scope** test → run the **origin gate** (external
lines divert to definite-match, and mostly to a merge, not a new record) → run the
spec's five-fact test → map fields → hand to `wiki/finance-record-spec.md` → write
one file to `new/` → append one line to `documentation/domestic-finance-run-log.csv`
(`deal_id, file, country, state_level, fy, stage, version, origin,
funding_source, scope_confidence, is_transfer, amount_total, currency,
doc_locator, matched_to, warnings`) → append any new extraction method to
`documentation/domestic-budget-extraction.md`. Moving the file into `new/` is the
last step, so an interrupted run resumes on the lines not yet written.

Work a document at a time, over all its digital lines at once, never a selection.

**Back-swing mode.** Candidate set: `raw/` items carrying a `finance.*` tag that
report domestic state spend and have no `deal_id` — including everything the news
driver logged `origin: domestic-state — skipped`. Work the whole set in one pass.
Each item runs the five cases: mostly case 4 (reporting only), sometimes case 3
(the wiki already holds the budget document) or case 5 (it has since arrived).
**The source page stays where it is and is not rewritten** — the record cites it.
Log per item: `deal_id | source file | case | source_tier | failed-fact NN`.

## Close

Report terse (`CLAUDE.md` → *Reporting*): documents processed, records built by
stage and origin, lines diverted to merge, lines that failed scope or the
five-fact test and why. End with the status line:

`contradictions - NN ; acquisitions - NN ; awaiting ingest - NN ; decisions logged - NN`
