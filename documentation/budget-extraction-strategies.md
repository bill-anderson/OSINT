# Budget extraction — strategy library

**How to get figures out of a shape of document.** One entry per *structural
archetype*, not per country and not per document. Read by `BUDGET-EXTRACT.md`,
which is the pass that runs this.

Started 2026-07-22 from the ZAF FY2024/25 corpus (9 documents). Everything here
is provisional and expected to be wrong in places — it improves by being run.

## What belongs here, and what does not

**Here: strategy.** How this shape of document is laid out, which tool reads it,
where the numbers are, what breaks.

**Not here: judgement.** Whether a line is digital, whether an envelope is a
record, how to date or tag it — that is `finance-load-domestic-state.md` (the
rules) and `documentation/domestic-budget-extraction.md` (per-country vocabulary,
where digital lines hide). Restate either here and the two will drift.

The distinction in one line: *this file gets the table out; those files decide
what the table means.*

## Keep it bounded

**One entry per archetype, and archetypes are rare.** There are perhaps six or
eight budget-document structures across the continent, not fifty-four. A new
document either **matches an existing archetype** — in which case add nothing,
just note the match in the run log — or **reveals a new one**, which earns an
entry.

Country-specific quirks belong in the country's section of
`domestic-budget-extraction.md`, not as new archetypes here. A file that grows an
entry per document becomes case law and stops being readable, which is the failure
`CLAUDE.md` names.

## Baseline: the toolchain

**`pdftotext -layout` is the workhorse and it is enough.** Every document in the
first corpus has a clean embedded text layer; `-layout` preserves column
alignment well enough to read tables directly. Confirmed across InDesign, XPP,
PScript and Word producers.

So, in order:

1. `pdfinfo` — page count, producer. Producer is a decent archetype hint.
2. `pdftotext -layout <f> -` piped to `grep -n` — locate the tables by their
   captions before extracting anything.
3. `pdftotext -layout -f <first> -l <last>` — pull just the pages that matter.
4. `pdfplumber` — **only** where `-layout` genuinely fails on a table. It is
   slower and needs per-table tuning. It was not needed once in the first corpus.
5. OCR — only if `pdftotext` returns near-zero characters across the whole
   document, i.e. a scanned document. None seen yet.

**Check the text layer first**: `pdftotext <f> - | wc -c`. A low count on the
first pages means a graphical cover, not a scan — measure the whole document
before concluding anything.

---

## Archetype A — per-vote programme-budget chapter

*Seen as: South Africa ENE Vote 30 (2024, 36pp).* **The richest structure in the
corpus and the primary extraction target.**

**Layout.** A budget-summary table (programme × economic classification × 3
years), then narrative, then one table per programme giving **sub-programme ×
economic classification** across ~7 year-columns: several audited outcome years,
an adjusted appropriation for the current year, and three medium-term estimate
years. Programme tables are numbered (`Table 30.14`) and continue across pages
with a `(continued)` caption.

**Strategy.**

1. `grep -n "^Table [0-9]*\.\|Programme [0-9]:"` to index the tables.
2. Read the scale from the **table stub** — the cell above the first data column,
   typically `R million` or `R thousand`. It varies *between tables in the same
   document*, so read it per table, never once per document.
3. Take the sub-programme block and the economic-classification block separately;
   they are two tables stacked under one caption, each ending in a `Total` row
   that must match.
4. Identify the current-year column by its header (`2024/25`), not by position —
   column count varies with how many audited years are shown.

**Traps.**

- **Row labels wrap onto continuation lines** ("ICT Infrastructure Development
  and / Support"). Join a line with no numeric cells to the line above.
- **`–` (en dash) means nil, not missing.** Record `0` where the source states a
  dash in a figure column; leave blank only where the cell is genuinely absent.
- **Percentage and growth-rate columns sit between the year columns** — average
  growth rate, expenditure share. Do not mistake them for money.
- **A `Change to <year> Budget estimate` row** carries parenthesised negatives.
  Parentheses are minus signs.
- **`of which:` blocks** under goods and services are a partial decomposition, not
  a complete one — the components do not sum to the parent, by design.

**What it yields.** `appropriated` (or `proposed`, pre-enactment) records at
sub-programme grain, with capital/recurrent split available from the economic
classification.

---

## Archetype B — consolidated appropriation schedule

*Seen as: South Africa Appropriation Bill B5-2024 (40pp), Adjustments
Appropriation Bill B14-2024 (20pp).*

**Layout.** One block per vote: a total line, then numbered programmes, each with
five columns — total, compensation of employees, goods and services, transfers
and subsidies, payments for capital assets. Purpose text between blocks.
Sub-programmes are **not** shown. Always in the smallest unit (`R'000`).

**Strategy.** `grep -n -A15 "<vote name>"` — the vote block is short and
self-contained. Read the vote total from the header line and the programme lines
beneath it.

**Traps.**

- **Coarser than Archetype A** — it is the legally authoritative statement of the
  amount, but it will not give a digital line below programme level. Use it for
  the **stage and the authority**, and Archetype A for the detail.
- `Of which` sub-lines (e.g. named household transfers) appear under programmes
  and are not programmes.

**What it yields.** Confirms `appropriated` / `revised`, and the `doc_locator`
that makes the record legally citable.

---

## Archetype C — adjustments schedule

*Seen as: South Africa AENE Vote 30 (2024, 8pp).*

**Layout.** A summary of the original appropriation, decreases and increases, and
the adjusted appropriation; then a per-programme decomposition of the adjustment
into named columns — unforeseeable/unavoidable, virements and shifts, roll-overs,
emergency, other.

**Strategy.** This archetype is what `budget_version` and `supplementary_basis`
were built for. The column headers tell you the basis directly: a document
presenting *original + adjustments = adjusted* is a **`restated-total`**, not an
increment, so the adjusted figure supersedes rather than adds.

**Traps.**

- **A zero net adjustment is not "no change".** ZAF Vote 30 FY2024/25 shows
  −R2.789m and +R2.789m netting to zero at the vote, while money moved *between*
  programmes. The vote total is unchanged and the programme totals are not.
  Extract at programme level or the movement is invisible.
- Decreases are parenthesised.

**What it yields.** `revised` records, and the virement trail that explains a
later underspend.

---

## Archetype D — cross-vote statistical annexure

*Seen as: South Africa Budget 2025 statistical tables (40pp).*

**Layout.** One row per vote, columns spanning several years and stages (outcome,
budget estimate, adjusted appropriation, revised estimate).

**Strategy.** Locate the vote by name, then map columns by reading the header
block above — which may be **two or three rows deep**, with year spanners above
column names.

**Trap — this archetype is right-labelled.** In the ZAF tables **the vote name
sits at the END of the row and the columns read leftward from it.** A parser that
assumes label-then-values will attach every figure to the wrong vote. Always
eyeball one known row against a figure you have from another document before
trusting a whole table.

**What it yields.** The `revised` estimate, and — its real value — cross-vote
coverage for the scope problem: which *other* votes carry digital money.

---

## Archetype E — annual report with audited appropriation statement

*Seen as: DCDT Annual Report 2024/25 (279pp).* **The outturn, and the most
valuable single document in the chain.**

**Layout.** A long performance narrative, then annual financial statements. The
appropriation statement gives, per programme: approved budget, shifting of funds,
virement, **final budget, actual expenditure, variance, expenditure as % of final
budget**, plus the prior year's final and actual.

**Strategy.**

1. `grep -n "APPROPRIATION STATEMENT"` — it recurs as a running header, so take
   the **first occurrence after the table of contents**, around two-thirds
   through.
2. Scale is `R'000`, stated in the column header block.
3. Take the whole row: approved → final → actual is three `budget_stage` values
   for one line, and they are the point.

**Traps.**

- **Heavy left indentation** from the page furniture; strip leading whitespace
  before parsing columns.
- Programme names are UPPERCASE and hyphenate across lines
  (`ICT INFRA-` / `STRUCTURE`). Rejoin before matching.
- The report covers the department, not the vote's transfers to entities — an
  entity's own spending is in *its* annual report.

**What it yields.** `actual` and `audited` records, and the **execution rate**,
which is the finding this whole dataset exists to produce. First corpus: Vote 30
Programme 5 approved R1,922.7m → final R1,768.9m → actual R755.2m, 42.7%.

---

## Archetype F — narrative audit report

*Seen as: AGSA Consolidated General Report PFMA 2024-25 (280pp).*

**Layout.** Prose findings with figures embedded in sentences, plus infographic
tables that do not survive text extraction cleanly.

**Strategy.** Do not attempt table extraction. `grep -n -i` for the ICT terms and
read the surrounding paragraphs.

**What it yields — and does not.** **No deal records.** It yields context,
contradiction leads (spend reported against systems never used), and named
programmes worth chasing. Treat it as a source page, not an extraction target.

---

## Cross-document reconciliation — required, and it works

The archetypes check each other, and in the first corpus they agreed **to the
rand**: R3,968,611 thousand appears identically in the ENE (A), the Appropriation
Bill (B), the AENE (C), the statistical annexure (D) and the annual report's
approved-budget column (E).

Run these before writing any record:

| Check | Across |
|---|---|
| Vote total = sum of programme totals | within each document |
| Sub-programme total = programme total | A |
| Capital + recurrent + transfers = total | A, B |
| Appropriation = ENE main appropriation | A ↔ B |
| Adjusted appropriation = adjustments schedule | C ↔ B |
| Final budget = original + adjustments | C ↔ E |
| Prior-year actual = that year's outturn | E ↔ previous E |

**A mismatch is either an extraction error or a finding, and you cannot tell
which without looking.** Resolve it before recording. If it resolves as a genuine
disagreement between documents, it is a contradiction
(`reviews/contradictions/`), not a rounding issue.

## Scale — per table, never per document

The first corpus carried `R million`, `R thousand` and `R'000` **within the same
country-year**, and the ENE varies scale between tables in a single document.
Read the stub of every table. Store normalised to units. Check
capital + recurrent = total as the arithmetic proof that the scale was read right.

## The cross-vote scan — required, not optional

**Digital money is not in the digital ministry's vote.** *(Bill's catch,
2026-07-22, confirmed against the ZAF FY2024 full ENE.)* Sector-vote-only capture
systematically understates domestic digital spend, and by a lot: scanning all 42
ZAF votes turned up genuine digital sub-programme lines in **seven votes outside
Vote 30**.

| Vote | Line | 2024/25 |
|---|---|---|
| 25 Justice and Constitutional Development | Justice Modernisation | R661.2m |
| 22 Correctional Services | Information Technology | R358.0m |
| 14 Statistics South Africa | Business Modernisation | R60.2m |
| 11 Public Service and Administration | e-Government Services and Information | R25.3m |
| 35 Science and Innovation | Various institutions: ICT | R22.5m |
| 39 Trade, Industry and Competition | Digital market inquiry | R20.1m |
| 8 National Treasury | Digitisation: Distribution capability; integrated financial management system | — |

Justice Modernisation alone exceeds four of Vote 30's six programmes. The two
largest come to over R1bn against Vote 30's R3,968.6m total — and that scan missed
home affairs' identity spend, so the true understatement is worse.

**So the cross-vote instrument is the full estimates volume** (archetype A × N),
and it is not the redundant document an earlier draft of this file called it. Run
this scan on **every** country-year that holds one:

1. Index the vote chapters — in the ZAF volume, a line matching `^\s*Vote\s+\d+\s*$`
   with the vote name on the next non-blank line. 42 found cleanly.
2. Walk every line, attributing it to the vote chapter it falls in.
3. Keep lines that carry a digital term **and** look like a budget row (a label
   plus several money-shaped cells) — narrative mentions are not lines.
4. Hand the survivors to the driver's scope test like any other candidate. Most
   will be `whole`; some, like a modernisation programme mixing systems with
   buildings, will be `partial`.

**Trap — `ict` is a substring of `district`, `conflict` and `restrict`.** Six of
thirteen hits in the first scan were district-health and conviction-rate rows.
Match on word boundaries, and prefer the longer terms (`digitis`, `e-gov`,
`information technology`, `broadband`, `modernisation`) over bare `ict`.

**Trap — the sector vote is still the anchor.** The cross-vote scan finds lines,
not context: a name like "Business Modernisation" gives no purpose. Confirm
against the programme's narrative before recording, and mark
`scope_confidence: unclear` where the volume never says what the money buys.

**This changes what the sweep must fetch.** A country-year without its full
estimates volume can only produce sector-vote coverage, and any total built from
it should say so on the page — an understated total presented as a total is worse
than a stated gap.

## Not worth extracting

Recorded so later runs don't repeat the effort:

- **Treasury cash-flow / s32-style statements** — aggregate revenue and
  expenditure only, no vote or programme detail. Support no record. The sweep
  should stop fetching them.
- ~~The full estimates volume~~ — **struck 2026-07-22.** An earlier draft called it
  redundant because its sector-vote chapter duplicates the standalone extract.
  That was wrong: the duplication is beside the point, and the other 41 chapters
  are where a quarter or more of the spend turns out to live. It is a **required**
  fetch and a required scan — see *The cross-vote scan* above.
