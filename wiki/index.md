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
- [entities-index.md](entities-index.md) — browse by entity.

## Operations

- [log.md](log.md) — operation log and decisions.
- `reviews/contradictions/` — the reconcile worklist.
- `reviews/acquisitions.md` — the fetch list.

## Page types & folders

| Folder | Page type | Notes |
|---|---|---|
| `new/` | (intake queue) | Unprocessed clips land here; drained on ingest. Folder = state. |
| `new-queue/`, `sweep/` | (staging) | Sweep candidates, upstream of `new/`. The sweep never writes past its own staging folder. |
| `raw/` | source | Admitted sources, flat, `YYYY-MM-DD`-prefixed; immutable after ingest (one bounded exception: verbatim fidelity re-capture). |
| `_leads/` | (parked) | In-scope material not yet usable — to mine, not compile. Nothing else parks here. |
| `wiki/concepts/` | concept | One page per subject slug. |
| `wiki/places/` | place | Country and region hubs (one type). |
| `wiki/entities/` | entity | Companies, orgs, gov bodies, initiatives, people, deals, resources, instruments. |
| `wiki/intersections/` | intersection | Topic × place — created lazily when substantial. |

## State (as of 2026-07-20)

| | Count |
|---|---|
| Sources of record (`raw/`) | 4,679 markdown + 297 binary artefacts |
| Entity pages | 1,728 |
| Place hubs | 62 (54 countries + 8 regions — full roster) |
| Concept pages | 36 (full taxonomy) |
| Intersections | 273 |
| Parked leads | 30 |
| Open contradictions | 0 (84 resolved) |
| Open acquisitions | 0 |

Entity pages by type: government-body 383 · company 371 · initiative 305 ·
instrument 196 · organisation 189 · deal 104 · resource 94 · person 85.

Batch-by-batch ingest history is not kept here — it is in [log.md](log.md) and in
git. This page holds current state, not chronology.
