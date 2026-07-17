# Phase 2 acquisition sweep — procedure

**Ratified 2026-07-17 (curator directive).** This folder holds the runnable
instruction set for the Phase 2 sweep: bringing the wiki's holdings up to date
with all relevant national-press and trade-journal stories **published since
2025-01-01**, for all 54 countries plus the regional/pan-African layer.

This is an *acquisition* process, upstream of the wiki. It never writes to
`raw/` or to any `wiki/` page. Its only output is **candidate source files in
`new-queue/`**, which the human reviews and moves into `new/` for standard
ingest. The `new/ → raw/` pipeline remains the only door into the wiki.

## Files in this folder

- `README.md` — this procedure.
- `query-recipes.md` — the fixed Exa query clusters, derived from
  `wiki/taxonomy.md`. The sweep always queries from these recipes, never
  ad-hoc phrasing, so coverage is even and re-runnable.
- `ledger.csv` — one row per country (plus one for the regional pass): the
  progress ledger and the authority for which two newspapers each country uses.
  A country's `status` column *is* its state — the sweep resumes from the
  ledger after any interruption.
- `drop-log-{ISO3}.csv` — written per country during dedup (see step 3).

## Sources

- **Newspapers:** the two per country named in `ledger.csv`
  (`paper1_*` / `paper2_*` columns), prefilled from the `National Newspaper`
  rows of `my-notes/sources.csv` — the definitive selection;
  `my-notes/national-papers.csv` is the larger candidate pool, not the sweep
  list. Newspapers cover everything, so their searches are **filtered by the
  topic recipes**. CAF has no papers and COG/GNQ only one each **by design** —
  the curator confirmed (2026-07-17) that no suitable online sources exist;
  for these, run what exists plus the journals, and note thin coverage in the
  ledger rather than padding.
- **Trade journals (fixed set of 8, all countries):** searched by **country
  name only** — the journals are on-topic by nature, so no taxonomy filter.

| Journal | Domain |
|---|---|
| wearetech.africa | wearetech.africa |
| Biometric Update | biometricupdate.com |
| Africa Telecom Review | telecomreviewafrica.com |
| Connecting Africa | connectingafrica.com |
| ITWeb Africa | itweb.africa |
| Tech Africa News | techafricanews.com |
| TechCabal | techcabal.com |
| Tech Review Africa | techreviewafrica.com |

Tech Review Africa is a byline-free PR wire: treat its items as **lead-net**
material — admissible only as announcement records, and prefer the primary or
a better outlet when the same story exists elsewhere.

## Per-country procedure

Countries are processed as a **rolling pipeline** (see *Running a production
sweep* below): several in flight at once, each new one claimed from the
ledger as a slot frees up. For each country:

1. **Search.**
   - *Newspapers:* for each of the two domains, run the topic clusters in
     `query-recipes.md` (domain-scoped `web_search_exa`, 25–50 results,
     date-bounded 2025-01-01 → today).
   - *Journals:* for each of the 8 domains, run the two country-scoped
     recipes (country name led; no topic filter).
   - **Time-slicing (default, not exception):** Exa fails by recency-swamping
     — the pilot showed unsliced queries on busy domains miss ~2/3 of
     in-window items. Month-slice by default for big markets (NGA, ZAF, KEN,
     EGY) and for any query whose results come back mostly out-of-window.
     Small-country pairs need one query. Exa's date filter leaks: always
     re-check `published` at fetch time and discard out-of-window items.
2. **Dedup — conservative.** Compare hits against current holdings
   (`raw/` frontmatter: url, title, event + entities + date). Drop **only**:
   - exact URL already held;
   - same outlet, same story, confidently the same item (syndicated re-crawl,
     changed URL).
   Everything else survives to fetch — including *same event, different
   outlet* (may add detail; the ingest dedup rule adjudicates with full text)
   and *same story, later date* (an **update**, never a duplicate). The
   aggressive pass is the post-ingest **lint #7 ladder**, not this step.
3. **Drop log.** Every dropped hit goes to `sweep/drop-log-{ISO3}.csv`:
   `url,title,published,reason,kept_twin`. Nothing is dropped silently — the
   log is the only way to catch an over-aggressive filter.
4. **Fetch + screen.** `web_fetch_exa` each surviving item. At fetch time:
   - establish the true `published` date from content (the standard
     fallback-and-flag discipline: `date_source: proxy`, `date_precision`);
   - **admissibility screen** — skip second-hand/AI syntheses, prefer the
     canonical URL over syndicated copies, flag PR-wire items whose primary
     should be sourced at ingest;
   - discard out-of-window items (pre-2025) — log them as `out-of-window`.
5. **Stage.** Write each item as a markdown candidate in
   `new-queue/{ISO3}/YYYY-MM-DD-slug.md` with best-effort standard source
   frontmatter (`type: source`, title, url, publisher, published,
   date_precision, date_source, places, topics, entities, lens) plus
   `retrieved: YYYY-MM-DD` and `sweep_batch: {ISO3}-{run-date}`. Do **not**
   set `ingested` — that belongs to ingest.
   **Body = the full clipped article text captured at fetch time** (ISSUE-008
   ruling, 2026-07-17): the page is already fetched for date verification, and
   capturing then guards against link rot — never store an AI summary as the
   body. If a page cannot be fetched after retries, stage with a clearly
   flagged summary body and log it; promotion of such an item needs a manual
   clip. Promotion to `new/` therefore requires no refetch.
6. **Manifest.** Write/update `new-queue/{ISO3}/MANIFEST.md`: one line per
   item — `published | topics | source | title | one-line why-it's-new`.
   Review is a skim of the manifest with spot-checks, not open-every-file.
7. **Ledger — last step.** Update the country's row (`status`, counts,
   `last_run`). As with the ingest queue, the ledger update is the final act,
   so an interrupted run leaves the country visibly unfinished and re-running
   resumes cleanly.

## Regional / pan-African pass

After (or alongside) the country loop, run the **regional pass** — the ledger
row `XAF`. Search the 8 journals only, using the `regional` recipe cluster
(AU, AfCFTA, Smart Africa, ECOWAS, SADC, EAC, COMESA, WAEMU/BCEAO, ECCAS,
IGAD, Malabo Convention, continental DPI/data-policy stories that name no
single state). Stage to `new-queue/XAF/`. The country loop structurally misses
these; this pass is not optional.

## Human review gate

The human reviews `new-queue/` (via the manifests), moves accepted items into
`new/`, deletes rejects, and instructs CC to ingest. CC never moves items from
`new-queue/` to `new/` on its own. From `new/` onward the standard CLAUDE.md
filing rules apply unchanged — including the full dedup ladder and, after
ingest, an **aggressive duplicate lint** (lint #7) across the enlarged corpus.

## Pilot — done (2026-07-17)

**TCD / SEN / NGA, window 2025-Q1** ran 2026-07-17: 191 candidates staged
(TCD 8 · SEN 32 · NGA 151), full-text bodies, drop logs written, recipes
tuned (see `query-recipes.md` change log). **The pilot trio covered 2025-Q1
only** — their ledger rows carry `window_done: 2025Q1` and each needs a
**completion pass** (2025-04-01 → run date) before being marked done.

## Running a production sweep (rolling)

The standing prompt for a session is simply:

> Run the Phase-2 sweep per `sweep/README.md`, rolling: 4 countries in
> parallel, continuing down the ledger.

**The rolling model.** CC works as an orchestrator with **4 country workers
in flight at once** (subagents, one country each). When a worker finishes
its country, the orchestrator immediately claims the next `pending` row in
ledger order and starts a new worker — a continuous pipeline, not fixed
batches. The roll continues until the ledger has no `pending` rows left,
the session hits its limits, or the curator stops it; there is no need to
state a batch size or country list in the prompt.

**Claim discipline (one writer).** Only the orchestrator edits
`ledger.csv` — workers never touch it (concurrent CSV writes corrupt).
On claiming a country the orchestrator sets its row to
`status: in-progress` with `last_run` = today; on the worker's completion
report it writes the counts and sets `status: swept` (the pilot rows'
`pilot-staged` means the same, scoped to 2025-Q1). A row left `in-progress` with no
manifest marks a casualty of an interrupted session: re-claim and re-run
it first on the next roll.

Everything else resolves from files, per country: skip nothing — rows whose
papers are blank-by-design (CAF; COG/GNQ single-paper) run journals-only;
the **window = 2025-01-01 → run date**, unless the row's `window_done` says
part is covered (then sweep only the remainder — the pilot trio need
2025-04-01 onward); queries from `query-recipes.md`; sources from the
ledger row + the fixed journal table above. Each country ends with its
manifest, drop log and ledger row updated before its slot is reused.
NGA/ZAF/KEN/EGY-scale countries take far longer than small ones — the
rolling model absorbs this naturally, small countries flowing past a big
one still in flight.

## Known blind spot

The trade press covers ~48 of 54 states. Cabo Verde, Guinea-Bissau,
Equatorial Guinea, São Tomé & Príncipe, Eritrea and Seychelles appeared in no
journal in the selection probe (see
`my-notes/trade-journal-coverage-assessment.md`): for these six, the two
newspapers plus, if needed, targeted non-domain-scoped searches are the only
instruments. Note thin results in the ledger rather than padding.
