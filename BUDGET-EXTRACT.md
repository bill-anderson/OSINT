# BUDGET-EXTRACT.md — the budget extraction pass

Trigger: **"run budget extract"**, optionally scoped (`run budget extract for
South Africa 2024`). Drains `new-budget/` one country-year at a time: reads the
held budget documents, builds finance records into `new/`, and archives what it
has processed.

This file is **the loop CC runs**. The knowledge of *how to read a shape of
document* lives in `documentation/budget-extraction-strategies.md` (the strategy
library) and is expected to grow every run. The knowledge of *what a figure means*
lives in `finance-load-domestic-state.md` and
`documentation/domestic-budget-extraction.md`. Three files, three jobs — do not
merge them.

## Where things sit

| Folder | State | In git? |
|---|---|---|
| `new-budget/{ISO3}/{FY}/` | held, not yet extracted | markdown yes, PDFs no |
| `budget-archive/{ISO3}/{FY}/` | extracted; the artefact and its extracted tables | CSVs yes, PDFs no |
| `new/` | records and source pages awaiting ingest | yes |
| `raw/` | admitted | yes |

`.gitignore` already excludes `*.pdf`, `*.xlsx` and friends repo-wide, so **the
artefacts have never been in git** — they live on disk and sync via Dropbox.
Nothing extra is needed to keep the repo lean. What that means in practice: git
holds the *record* of every document (its manifest row, its companion page, its
extracted tables), while the bytes live beside it untracked. A lost PDF is
re-fetchable from the manifest's URL; a lost figure is not, which is why the
extracted tables are committed.

## Scope of a run

**Work country-year by country-year, over all of that year's documents at once,
never a selection.**

**A run is one `new-budget/{ISO3}/{FY}/` folder** *(Bill's ruling, 2026-07-22 —
the year level was added after the pilot)*. The path is the unit, so a country
swept for two fiscal years cannot mix them, and the year-specific reconciliation
checks can't silently straddle two budgets.

**`{FY}` is always the bare start year — `new-budget/ZAF/2024/`, never
`2024-25`** — meaning the fiscal year beginning in 2024, which is South Africa's
2024/25 and Nigeria's calendar 2024 alike (`reference.md` §2).

**Path and manifest answer different questions, and both are needed.** The folder
says *which run acquired this document*; `manifest.csv`'s `fiscal_year` mirrors
it. The companion page's `fiscal_years_covered` says *which years the document can
support*, which is often more — an MTEF filed under 2024-25 may carry three years.
Extract by folder; build records by `fiscal_years_covered`.

**More than one folder is fine.** In normal operation there is one — the sweep
runs a country-year and extract follows it. But leftovers are harmless and mean
something useful: because archiving is the last step, anything still in
`new-budget/` is unfinished, and the next run picks up exactly that. Never treat a
populated folder as an error state or clear it; drain it.

Run over **every** country-year folder present, not just the one just swept.

## When it runs

**At the end of every domestic finance sweep** *(Bill's ruling, 2026-07-22, after
the ZAF pilot)*, and on demand. The sweep stages documents that are inert until
extracted, so a gap between the two just accumulates unread PDFs — the thing
`new-budget/` exists to make visible, not to normalise.

Full chain: **sweep → budget extract → ingest → finance compile.** Extract does
not call ingest; it writes to `new/` and stops, as every upstream pass does.

*While the archetype library is young, read what step 4 adds to it.* Running
inside an automated chain means new entries get written unreviewed, and the first
handful of archetypes set the shape for every one after.

## The loop

### 1. Inspect

Read every document's structure before extracting anything: `pdfinfo` for pages
and producer, `pdftotext | wc -c` for the text layer, `pdftotext -layout | grep -n`
for table captions. Name the archetype each document matches.

Order the documents by **stage**, not by filename — appropriation first, then
adjustments, then outturn, then audit. Later stages are read against earlier ones.

### 2. Review the strategy library — is it fit for purpose?

For each document, does `budget-extraction-strategies.md` hold an archetype that
covers it?

- **Yes → go to 3.**
- **No → go to 4.**

"Yes" is the common case and should get commoner. A document that matches an
existing archetype adds **nothing** to the library — note the match in the run log
and move on. The library grows only on genuine structural novelty.

### 3. Extract

Follow the archetype's strategy. Then, before writing anything:

- **Run the reconciliation table** in the strategy library. A mismatch is either
  an extraction error or a finding; resolve it before recording, and file a
  genuine disagreement to `reviews/contradictions/`.
- **Confirm the scale per table**, not per document, and prove it with
  capital + recurrent = total.
- Write the extracted tables to `budget-archive/{ISO3}/` as CSV, one per source
  table, named for the document and table.

Then hand each digital line to `finance-load-domestic-state.md` — the five-fact
test, the scope test, the origin gate and the record shape are all its job, not
this pass's. Records land in `new/`.

### 4. Modify the strategy library, then extract

Add **one archetype entry** describing the new structure, in the shape of the
existing entries: layout, strategy, traps, what it yields. Then go to 3.

**One modification attempt per document.** If the document still resists after
one revision, stop: log `extraction failed — <reason>`, record what was tried in
the country's section of `domestic-budget-extraction.md`, and move on. A document
that only a hand-clip could crack is not a standing chore — the same discipline as
the acquisition pass. Say so on the place hub as a dated absence if it matters.

### 5. Case 5 — reset records not built from a budget document

Before finishing the country-year, find the held records this year's documents
supersede: grep `raw/` frontmatter for this country's `finance_origin:
domestic-state` records whose fiscal year matches and whose **`source_tier` is
anything but `budget-document`** — `reporting` *and* `official-statement` alike (a
minister's speech is superseded by the estimates exactly as a news story is; the
first such record in the corpus, `zaf-2024-25-vote-30-sa-connect-proposed`, is
`official-statement`). The run-log CSV does not carry `source_tier` — the records'
own frontmatter is the source of truth. A budget document has now surfaced for
them, which is **case 5** in the driver: rebuild from the document, keep the
`deal_id` stem, keep the superseded reporting as a `## Development history` line,
and **file any figure disagreement as a contradiction rather than overwriting
it**.

This is the step that converts a thin news-built corpus into a documented one, and
it is easy to forget because nothing prompts for it.

### 6. Archive

Move the artefact and its companion page from `new-budget/{ISO3}/{FY}/` to
`budget-archive/{ISO3}/{FY}/`, and update the document's manifest row with
`extracted: <date>` and the archive path. **Moving the file is the last step**, so
an interrupted run resumes on exactly the documents not yet processed — the same
discipline as `new/ → raw/`.

**Then delete the emptied folders.** *(Bill's question, 2026-07-22 — yes.)* Once
the last document of a country-year is archived, remove
`new-budget/{ISO3}/{FY}/`, and remove `new-budget/{ISO3}/` too if no year folders
remain under it. An empty folder here asserts something false — that documents are
held and waiting — and the whole point of `new-budget/` is that its contents are
the outstanding work at a glance. Git does not track empty directories, so a
leftover is invisible in the repo and misleading on disk, which is the worst
combination.

Three things are never deleted: **`manifest.csv` rows** (the permanent record of
what was held, where it came from, and when it was extracted — that is what makes
a lost artefact re-fetchable); **anything in `budget-archive/`**; and a folder that
still holds an unprocessed document, however stale.

Nothing enters `raw/` from this pass directly. Records and source pages go to
`new/` and ingest is still the only door.

## Close

Report terse (`CLAUDE.md` → *Reporting*):

- documents processed, by archetype; archetypes added, if any
- records built, by `budget_stage`
- **execution rates found** — the headline output of this pass wherever both an
  appropriation and an outturn were held
- reconciliation mismatches, and how each resolved
- case-5 resets applied, and contradictions filed
- documents that failed extraction, and why
- what was appended to `domestic-budget-extraction.md`

Then the status line:

`contradictions - NN ; acquisitions - NN ; awaiting ingest - NN ; decisions logged - NN`

`new-budget/` is **not** counted in *awaiting ingest* (`reference.md` §2). Report
what remains in it as a separate line.

## After the pass

Records sit in `new/`. Run **ingest** to admit them, then **finance compile** to
recompute the hub Financing sections — per `UPDATE-WIKI.md`, compile follows any
ingest that admitted finance records.

## Notes

- **This pass reads documents; it does not fetch them.** A document the wiki wants
  and lacks goes to `reviews/acquisitions.md` for the acquisition pass.
- **The pass is not idempotent in the way finance compile is.** Re-running it over
  an already-archived country-year would rebuild records that ingest has already
  admitted. Scope re-runs to `new-budget/` contents, which is why archiving is the
  last step.
- **Feed the sweep back.** If a document turned out to support no record — the
  first corpus's treasury cash-flow statement — say so in the run log and in the
  strategy library's *Not worth extracting* section, so
  `sweep/domestic-finance-README.md` can stop spending its cap on it.
