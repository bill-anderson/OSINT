# CLAUDE.md — Data Landscapers Intelligence Wiki

*(In force from 2026-07-20. This file is principles; CC reasons from here.
**Every standalone runnable process lives in the repo root as its own procedure
file; `wiki/` holds the drivers and specs those processes call, and
`wiki/reference.md` holds the shared schemas, thresholds and vocabularies they draw
on.** The root processes: `INGEST.md` ("run ingest"), `LINT.md` ("full lint"),
`RECONCILE.md` ("run reconcile"), `ACQUIRE.md` ("run acquisitions"),
`FINANCE-COMPILE.md` ("run finance compile"), `BUDGET-EXTRACT.md` ("run budget
extract"), `DAILY-SWEEP.md` and `DOMESTIC-FINANCE-SWEEP.md` (the sweeps). The
finance drivers — `wiki/finance-load-domestic-state.md`,
`wiki/finance-news-driver.md` — feed `wiki/finance-record-spec.md` and are invoked
by ingest, not triggered as top-level passes. `wiki/index.md` → *Processes* is the
full directory, and is **kept current** whenever a process is added, moved or
retired — the same edit that creates or moves the file updates the index. `UPDATE-WIKI.md` ("update wiki") is the orchestrator that loops
ingest, reconcile and acquire until the queues are empty, then lints; `RUN-BATCH.md`
("run the batch") runs a queued list of jobs one at a time.)*

## Purpose

A compounding intelligence base on data governance and digital transformation
across Africa, built to feed the long-form output at data-landscapers.com.

**It is built to depth on demand.** The wiki goes deep where Bill is writing,
thinking or asked a question, and stays thin everywhere else. It does not try to
cover 54 states × 36 topics evenly — that ambition generates infinite work by
construction and was the engine behind an unmanageable backlog. Thin coverage of
a country nobody is writing about is the correct state, not a gap.

The test for any piece of work: **does it change what the wiki can say?** If not,
don't do it, and don't record that it wasn't done.

## How CC works

**Act. Log after. Never ask.**

Everything runs in git, so every action is reversible and a wrong call is a
revert, not a cleanup. CC therefore makes the call — including judgment calls the
rules don't settle — actions it, and records it in `wiki/log.md` under
**Decisions** with what it decided and why. Bill reviews after the fact and
reverts anything he disagrees with.

CC does not maintain queues of things for Bill to decide. There is no pending-
decision register. If CC finds itself wanting to ask, it should choose the more
conservative option, do it, and log it.

The one thing CC still surfaces *before* acting is a change to this file — not
because it needs permission, but because a rule change is worth reading rather
than discovering. Log it at the top of `log.md` and carry on.

## Keeping this file short

**No new rule without deleting one.** This file grew unmanageable by accreting a
clause for every edge case that ever arose, until it read as case law rather than
principles. If a situation seems to need a new rule, first ask whether an existing
principle already covers it — it usually does. Never cite issue numbers or past
rulings in these rules; a principle that only makes sense with its history
attached is a bad principle.

Anything not touched in a month is deleted, not archived. Git holds it.

## The material

**Only primary or first-hand evidence becomes a source**: official announcements,
regulations, filings, court records, company statements, datasets, on-the-record
reporting, primary documents, published academic work. A source need not break
news — a dated explainer, methodology note or reference report is fine.

**Second-hand syntheses are leads, not sources.** AI outputs (Perplexity,
ChatGPT, NotebookLM and the like) have already compressed and paraphrased their
inputs, so ingesting them launders errors into authoritative-looking pages and
breaks the audit trail. Mine them for the primaries they cite, ingest those,
discard the synthesis. Recurring news digests are discarded outright; only
standalone articles are admitted. Paid placement, awards PR and vendor
thought-leadership report no development — tag any standing object they name,
then discard.

**Out of scope is rejected and deleted.** A first-hand, admissible item that falls
outside data governance and digital transformation is deleted (git-reversible).
When scope is in doubt, reject. **There is no parking folder.** An item that isn't
admitted as a source is turned into a contradiction brief or an acquisition line if
it has residual value, and otherwise deleted — nothing is held in limbo. (See
`INGEST.md` → the four dispositions.)

**Bill's published work is expert third-party analysis** — cited by author,
tagged as analysis not evidence, and free to shape the wiki's framing like any
other named analyst's. His unpublished notes and drafts are not sources. Never
use a piece to corroborate a claim drawn from that same piece.

**Store the full verbatim body**, never a paraphrase or a search-result excerpt.
Where a paywall serves only a free lede, keep it verbatim and mark it as such —
unless the free text adds nothing beyond the headline, in which case drop it. A
stored paraphrase or partial capture may be overwritten with the source's own
fuller words; that completes the record rather than rewriting it.

## Currency

This is where the wiki earns its keep, and where errors actually happen.

- **Every time-varying figure is written dated**: "ranked 156th (2020)", never
  "ranks 156th". No staleness threshold — it's a phrasing rule, so staleness
  stays visible on the page. Structural facts — a law's provisions, a treaty's
  terms — are not time-varying and are not dated. Exchange rates are time-varying too: carry money in
  the announcing party's own currency, and write any USD figure as a dated
  conversion — otherwise one commitment becomes three "different" numbers.
- **The event date is not the publication date.** When a source re-reports an
  older announcement, establish the event date from the primary or mark it
  unknown. A secondary outlet's own date must never become the event's "as of".
- **Dates are honest about their precision.** Record when a date is padded or
  inferred rather than published.
- **An older source arriving late is a baseline, not news.** It never outranks
  fresher state.
- **Supersession is not contradiction.** Keep the current value plus at most one
  dated prior, and only where the trajectory means something.
- **Where a fact is genuinely unestablished, say so on the page, dated.** A known
  vacuum — no data-protection law, no published figure since 2018 — is a finding
  worth stating, not a silence to be tracked elsewhere.
- **Reference studies are cited, not absorbed.** Don't promote a global index's
  figures into country pages as current state.

## Structure

Folders organise by page *type*; classification lives in frontmatter facets —
**place** (countries and regions from `countries.csv`, a single-parent tree),
**subject** (slugs from `taxonomy.md`), **entity**, and **lens**. Blocs like the
AU or ECOWAS are entities, not places. Reject values outside the vocabularies.

`new/ → raw/` is a physical pipeline: a file's folder is its state, and moving it
out of `new/` is the last step of processing it, so an interrupted run resumes
cleanly. Sources in `raw/` are named by publication date and are immutable.
**The sweep writes candidates to `new/`** (with
best-effort frontmatter) and state/logs to its own `sweep/` — never straight to
`raw/` or any `wiki/` page. Candidates enter the base only by being processed
through ingest, so a raw sweep result can never become a source by accident.

**Synthesis pages hold current state, not chronology** — with one exception:
place hubs keep a dated, reverse-chronological **Recent developments** section.
Elsewhere, events live in the dated source pages that cite them. If a page reads like a log, trim it; if its length is
really N repeating per-country cells, split the substantial ones out and leave the
rest as one-line index entries. If it's a long thematic argument, leave it alone.

## Duplicates

A source covering ground the wiki already holds is admitted **only if it
substantially adds value** — a fact, figure, date, named party, quote or primary
link that changes what a page can say. Marginal detail is not value. Three
outcomes:

- **Drop** — adds nothing material. Not admitted; note it in one line.
- **Replace** — adds little, but is *better than what's held*: primary rather
  than secondary, canonical rather than syndicated, full body rather than
  excerpt, finer date precision. Ingest it, rewire the citations, retire the held
  one. **A later, better source displaces an earlier one** — quality beats
  primacy. Only replace on a clear tier upgrade, never for marginal betterness,
  or the wiki churns its own citations for nothing.
- **Keep both** — only where each holds payload the other lacks. This should be
  the rare case.

Same story moved on → an update: revise the pages, keep the prior "as of" dated.
Sources that disagree → a contradiction, not a duplicate.

## Entities

**Tag the actors, not every mention. Page only what's load-bearing.**

Exhaustive tagging was justified as free insurance and is neither: it makes
ingest cost scale with how many names an article drops, and it leaves a long tail
of single-reference slugs that will never become pages. Nothing is lost by not
tagging — the name sits in the verbatim body, and `raw/` is greppable. When an
entity starts to matter, grep for it and backfill then, with full text in hand
and a reason to care.

Tag an entity if it **has a page**, is **on the watchlist**, or is **an actor in
the development the source reports** — not merely named in it. Most sources
should tag three to six entities, not twenty.

**Tag institutions, not officeholders.** A minister announcing his ministry's
programme is the ministry's development. Tag a person only when the person is the
story. Officeholders churn, generate the longest tail, and least often earn a
page.

Mint a page when the entity is actually load-bearing, in a periodic pass, not on
the ingest hot path.

## Working the base

**Contradictions** are the one queue CC keeps: when sources disagree, never
overwrite silently — record it in `reviews/contradictions/`, and the reconcile
pass researches it, ingests the primaries it finds, and applies a resolution.
Prefer the newest value; record the conflict rather than erasing it.

**Acquisitions** is the other: specific known documents the wiki wants and
doesn't hold. It is a fetch list, not a research register — drained by the
acquisition pass, never by reconcile. One automated attempt each; a document that
only a hand-clip could get is dropped and its absence stated on the page, not
parked as a standing chore.

Two queues, both drained by CC, each by its own pass — reconcile for
contradictions, acquire for acquisitions — over the whole queue at once, never a
selection. Anything that can't be closed by either isn't work; it's a horizon, and
belongs on the relevant page as a dated statement of what isn't established.

**CC cites only links it actually holds.** In a contradiction brief or anywhere
else, never suggest a source from your own knowledge as though the wiki held it.
Say plainly that nothing is on file — that absence is the finding.

**Capture is not endorsement.** Profiling an entity, or holding a source, implies
no view of it.

**Querying is read-only.** Results are derived snapshots, never sources, and
never flow back into `raw/`. Never re-derive at query time what a compiled page
already holds — that is what compiling was for. Research output from a reconcile
pass is working material: it earns its place only as an ingested primary.

## Output

Work from the compiled wiki, cite the underlying pages, and follow the house
style — cautiously outspoken, evidence-led, polemical about systems not people,
for governance and policy readers who aren't technical. Cite as inline hyperlinks
placed on the claim they support, not gathered at the end.

## Reporting

**Log entries are terse — a few lines: what changed, why, what to revert if wrong.
Never a narrative.** A `log.md` too long to skim defeats its own purpose. End a job
with what happened, not what's pending:

`contradictions - NN ; acquisitions - NN ; awaiting ingest - NN ; decisions logged - NN`

`STATUS.md` ("wiki status") defines these counts and is the canonical status object;
announce each pass by name as it runs (see there).

Weekly, a terse digest: ingested, decided, shaky. Five minutes to skim.
