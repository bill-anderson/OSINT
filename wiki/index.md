# Data Landscapers Intelligence Wiki — master index

A compounding intelligence base on **data governance and digital transformation
across Africa**, feeding the long-form output at data-landscapers.com. Built to
**depth on demand**: deep where Bill is writing or asking, thin elsewhere. Thin
coverage of a country nobody is writing about is the correct state, not a gap.

Built and maintained by the agent per [CLAUDE.md](../CLAUDE.md) (principles) and
[reference.md](reference.md) (operational detail); the human curates sources and
directs analysis.

## Authorities (controlled vocabularies)

- **Places** — [countries.csv](countries.csv) — 54 ISO-3 countries + 8 `X__` regions.
- **Subjects** — [taxonomy.md](taxonomy.md) — 10 Level-1 categories, ~36 Level-2 slugs.
- **Lens** — `sovereignty`, `colonialism`.
- **Entity types** — `company` `organisation` `government-body` `initiative`
  `person` `deal` `resource` (a standing data asset — database/dataset/registry/
  tool/portal, e.g. [[peeringdb]]) `instrument` (a published standard, taxonomy,
  framework, or policy/legal instrument, e.g. [[world-bank-theme-taxonomy]],
  [[popia]]).

Values outside the vocabularies are rejected.

## Faceted navigation

- [places-index.md](places-index.md) — browse by place (country / region).
- [topics-index.md](topics-index.md) — browse by subject.
- [entities-index.md](entities-index.md) — browse by entity. Sharded by entity
  type — [companies](entities-index-companies.md) ·
  [organisations](entities-index-organisations.md) ·
  [government bodies](entities-index-government-bodies.md) ·
  [initiatives](entities-index-initiatives.md) ·
  [deals](entities-index-deals.md) · [people](entities-index-people.md) ·
  [resources](entities-index-resources.md) ·
  [instruments](entities-index-instruments.md) ·
  [mentioned, not yet paged](entities-index-mentioned.md).

## Operations

- [log.md](log.md) — operation log and decisions.
- `reviews/contradictions/` — the reconcile worklist.
- `reviews/acquisitions.md` — the fetch list.

## Processes

Every runnable process, its trigger phrase, and what it does. Each has a procedure
file that governs it; this table is only a directory. Orchestrators call the passes;
the passes do the work.

**Orchestrators & batch**

| Trigger | File | Function |
|---|---|---|
| `update wiki` | [UPDATE-WIKI.md](../UPDATE-WIKI.md) | Loops ingest → reconcile → acquire until all three queues are empty, then runs the full lint. Files nothing itself. |
| `run the batch` | [RUN-BATCH.md](../RUN-BATCH.md) | Drains the [JOBS.md](../reviews/JOBS.md) queue overnight, one job at a time, top-to-bottom. Manual "stop after current" brake and an optional `Budget:` in hours; halts on serious errors (e.g. lost connectivity). |
| `wiki status` | [STATUS.md](../STATUS.md) | Reads and shows the three queue counts and the standing tally line. Single source of truth for the counts and the "which process is running" banner. |

**Core passes** (each drains one queue)

| Trigger | File | Function |
|---|---|---|
| `run ingest` | [INGEST.md](../INGEST.md) | Drains `new/` — admits candidates to `raw/`, parks leads in `_leads/`, or deletes. The only door into the base. Applies the schemas in [reference.md](reference.md). |
| `run reconcile` | [RECONCILE.md](../RECONCILE.md) | Resolves the contradictions in `reviews/contradictions/open/`: researches, ingests primaries, applies a dated resolution. |
| `run acquisitions` | [ACQUIRE.md](../ACQUIRE.md) | Works the whole `reviews/acquisitions.md` fetch list — one automated attempt per item, then ingest-and-strike or drop. |
| `full lint` | [LINT.md](../LINT.md) | The 15 hygiene checks over the vault. Acts and logs; surfaces only genuine contradictions. Enforces the thresholds in [reference.md](reference.md). |

**Finance**

| Trigger | File | Function |
|---|---|---|
| `run finance compile` | [FINANCE-COMPILE.md](../FINANCE-COMPILE.md) | Recomputes each place hub's `## Financing` section from the finance records already in `raw/`. Aggregates only — ingests nothing. |
| `run domestic finance capture` / `load` / `back-swing` | [wiki/finance-load-domestic-state.md](finance-load-domestic-state.md) | Builds domestic-state budget records (appropriations, outturns, audit findings) — one line, one fiscal year, one stage. Ongoing driver, fed by the domestic finance sweep. |
| `run finance back-swing` | [wiki/finance-news-driver.md](finance-news-driver.md) | Extracts finance records from prose sources — news, releases, filings. |
| `run budget extract` | [BUDGET-EXTRACT.md](../BUDGET-EXTRACT.md) | Extracts budget lines from documents staged in `new-budget/` (outside the ingest path). Optionally scoped. |

**Sweeps** (acquire and stage candidates into `new/`)

| Trigger | File | Function |
|---|---|---|
| `run the daily sweep` | [DAILY-SWEEP.md](../DAILY-SWEEP.md) | Scans the trade journals in `trade-journals.csv` for items since the last run, stages candidates into `new/`, then hands off to `update wiki`. State in `sweep/daily/`. |
| `run domestic finance sweep for <country> <year>` | [DOMESTIC-FINANCE-SWEEP.md](../DOMESTIC-FINANCE-SWEEP.md) | Gathers the budget material (budget documents, outturn/audit reports, ministerial statements, reporting) for one country and one fiscal year. A bare year means the year the fiscal year begins. State in `sweep/domestic/`. |

**Archived** ([archived-procs/](../archived-procs/) — kept for reference, not run)

| Was | File | Why archived |
|---|---|---|
| `run non-state finance load` | [finance-load-nonstate-csv.md](../archived-procs/finance-load-nonstate-csv.md) | One-off initial load of the 1,148-row non-state deal CSV (`non-state-finance-v1.csv`). Load-only and finished; ongoing capture now runs through the spec, not this driver. |
| Country ingest workflow | [country-ingest-workflow.md](../archived-procs/country-ingest-workflow.md) | Country-by-country procedure for turning the `external-datasets/` corpus into intake clips. Superseded. |

The folder also holds those runs' data artefacts — the source CSVs, financier and
subject crosswalks, run logs, `external-datasets/`, and `normalize_sources.py` — not
processes, just their inputs and records.

## Page types & folders

| Folder | Page type | Notes |
|---|---|---|
| `new/` | (intake queue) | Unprocessed clips **and sweep candidates** land here; drained on ingest. Folder = state. |
| `sweep/` | (staging) | Sweep state/logs. The sweep writes candidates straight to `new/` (the `new-queue/ → new/` human gate was retired 2026-07-21); `new-queue/done/` remains Bill's. |
| `raw/` | source | Admitted sources, flat, `YYYY-MM-DD`-prefixed; immutable after ingest (one bounded exception: verbatim fidelity re-capture). |
| `_leads/` | (parked) | In-scope material not yet usable — to mine, not compile. Nothing else parks here. |
| `wiki/concepts/` | concept | One page per subject slug. |
| `wiki/places/` | place | Country and region hubs (one type). |
| `wiki/entities/` | entity | Companies, orgs, gov bodies, initiatives, people, deals, resources, instruments. |
| `wiki/intersections/` | intersection | Topic × place — created lazily when substantial. |

## State (as of 2026-07-20)

| | Count |
|---|---|
| Sources of record (`raw/`) | 4,665 markdown + 297 binary artefacts |
| Entity pages | 1,741 |
| Place hubs | 62 (54 countries + 8 regions — full roster) |
| Concept pages | 36 (full taxonomy) |
| Intersections | 290 |
| Parked leads | 30 |
| Open contradictions | 0 (84 resolved) |
| Open acquisitions | 0 |

Entity pages by type: government-body 383 · company 371 · initiative 305 ·
instrument 196 · organisation 189 · deal 104 · resource 94 · person 85.

Batch-by-batch ingest history is not kept here — it is in [log.md](log.md) and in
git. This page holds current state, not chronology.
