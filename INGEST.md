# INGEST.md — the ingest pass

Trigger: **"run ingest"**. Drains the `new/` queue. Every item ends in exactly one
of **four dispositions** — there is no parking limbo:

1. **`raw/`** — admitted as a source.
2. **Contradiction** — a provenance/research brief filed to
   `reviews/contradictions/open/` for the reconcile pass; the item itself is then
   deleted once its claim and any held URL are captured in the brief.
3. **Acquisition** — a line added to `reviews/acquisitions.md` naming a specific
   document to fetch; the item itself is then deleted.
4. **Delete** — discard outright (out-of-scope, config/junk, or a second-hand
   synthesis once mined).

A source (disposition 1) may *also* spawn a contradiction or acquisition as a
side-effect (steps 7–8). It is **the only door into the base** — candidates become
sources only here.

A first-class pass alongside reconcile and acquire. This file is **only the
procedure**; the schemas, filename rules and folder pipeline the steps apply live
in `wiki/reference.md` (§2 folders, §3 filenames, §4 frontmatter schemas, §5 entity
bar, §7 sweep intake, §8 hygiene), the finance five-fact test lives in
`wiki/finance-record-spec.md`, and the governing principles are in `CLAUDE.md`. The
numbered steps below are unchanged and keep their numbers, so existing "§6 step N"
references still resolve.

*(`new/` only. `new-budget/` is not an ingest queue and is never drained here —
`reference.md` §2.)*

---

Process each item in `new/` through the steps below. The item's **exit from `new/`
is the last step**, and how it exits is its disposition: an admitted source is
moved to `raw/`; everything else is **deleted** — after, where warranted, its
residual value is captured as a contradiction brief (`reviews/contradictions/open/`)
or an acquisition line (`reviews/acquisitions.md`). "Left `new/`" is therefore not
the same as "became a source" — draining the queue means routing each item to one
of the four dispositions above, never leaving it parked.

**1. Intake screen (do this first).** Check provenance against `CLAUDE.md` → *The
material*.

- Second-hand or AI-generated synthesis → do **not** compile it. **Mine it**:
  extract the primaries it cites and stage those into `new/` for their own
  ingestion; where a cited primary is a specific document the wiki can't fetch
  now, add it to `reviews/acquisitions.md`. Then **delete** the synthesis (note it
  in `log.md` in one line). The husk is never kept — mining is the value, the
  synthesis itself is inadmissible.
- Reports no development but establishes or profiles a **standing object** of
  OSINT value — organisation, company, government body, person,
  project/initiative, data asset (database/dataset/registry/tool/portal), or
  reference instrument (standard, taxonomy, framework, policy/legal instrument) →
  capture it as the matching entity type rather than discarding it.
- **Discard (delete)** only the wiki's own config/vocabulary files and genuine
  non-intelligence artefacts.
- **Out of scope → reject and delete.** An item that is admissible and first-hand
  but falls outside data governance + digital transformation — e.g. transport
  electrification / e-mobility, or a borderline tech innovation carrying **no
  real data or digital-platform layer** — is rejected and deleted (git-reversible).
  Distinguish the genuinely in-scope case where the actor is itself a digital
  platform (e.g. Yango). When scope is in doubt, reject and delete.
- **Undated/unattributed but possibly important?** An item lacking a dated,
  attributable origin yet carrying **possibly-important information** (a
  load-bearing claim, a first-of-kind development) is **filed as a
  provenance/corroboration hunt in `reviews/contradictions/open/`** — a research
  brief for the reconcile pass to seek the original posting and dated primaries,
  carrying the claim and any URL the item holds. The item itself is then
  **deleted**: the brief is what reconcile works, and the claim survives in it.

Only admissible, in-scope items proceed.

**2. Deduplication check.** Before creating pages, decide whether this source
reports an event already in the wiki or a genuinely new development. Match
incoming sources against existing pages by **event + entities + date**. Outcomes
are `CLAUDE.md` → *Duplicates* (**drop / replace / keep both**); the mechanics:

- **Same event, same period** (another outlet on the same story) → do *not* spawn
  parallel pages. Apply drop / replace / keep-both. On **drop**, note it in
  `log.md` in one line. On **replace**, ingest the better source, rewire the
  `sources:` citations, retire the held one. On **keep both**, create the source
  page, attach it to the `sources` list of the pages the event already touches,
  and fold in any detail, figure or quote the existing account lacks. If it
  conflicts, apply step 7 rather than overwriting.
- **Same story, later date** (the situation has moved) → an **update**, not a
  duplicate: revise the affected pages, add the new source, keep the prior "as
  of" statement dated rather than deleting it.
- **Older publication, fresher state already held** (backfill) → a **historical
  baseline**, not a development. File and date it, but it must **not overwrite or
  out-rank fresher state** on synthesis pages. Ingest date is irrelevant here;
  only `published` decides precedence.
- **New event** → proceed normally.

When same-vs-new is genuinely unclear, prefer attaching to the existing page and
note the uncertainty in `log.md` rather than creating a near-duplicate.

**2a. Finance branch.** If the item carries **any `finance.*` tag**, run the
matching driver *before* continuing — `wiki/finance-news-driver.md` (capture mode) for
`finance.new`/`finance.mou`, `wiki/finance-load-domestic-state.md` for
`finance.budget`. It applies the
**five-fact test** in `wiki/finance-record-spec.md` — financier, recipient place,
commitment amount, event date, taxonomy-matchable purpose — and then:

- **Passes, definite match to a held record** → merge into that record (one dated
  attributed line in its `## Development history`; update status/disbursed).
- **Passes, no match** → build a deal record into `new/`, to be admitted on the
  next drain.
- **Fails any fact** → no record. The item continues through the steps below as an
  ordinary source with its `finance.*` tags. This is routing, not rejection. A
  failure on the **date** fact is no longer a special case: the item still takes
  the ordinary `raw/` route, with the event date **recorded as unestablished** per
  `CLAUDE.md` → *Currency* (mark it unknown, dated) — no record, not counted in any
  aggregate. If the date is worth chasing, also file a provenance hunt (step 7).

Either way, **finance items get no per-deal hub bullet at step 5** — their hub
presence is compiled in aggregate by `FINANCE-COMPILE.md`. A piece on funding
*trends* rather than a specific deal never enters this branch: it is an ordinary
source carrying `finance.new`.

**3. Create the source page** with full frontmatter, facet tags, and the source's
**full verbatim body** — the whole article as published. This binds every route,
including automated collection. Capture the full text from the page — never a
search-result excerpt or an AI paraphrase/summary.

- **Paywall serving a free lede** (HTTP 200, first 1–3 paragraphs): keep the
  verbatim free portion, set `body_completeness: paywalled` — but **only where
  that free content, excluding the title, adds value**. Headline-only → dropped,
  not stored. The free-to-read text is the source's own words (first-hand, not a
  summary), so it does not offend the AI-synthesis invariant.
- **Text otherwise genuinely unavailable** (fetch failure, or a hard paywall
  serving nothing usable): store the verbatim portion available, set
  `body_completeness: excerpt`, flag for a manual clip.
- Otherwise record `body_completeness: full`.

**4. Entities — tag now, page later.** Tag the actors per `CLAUDE.md` →
*Entities*. For any entity that **already has a page**, append this source to its
`sources:` list — a one-line append, *not* a re-synthesis. Do **not** create a
page for a newly-named entity here, and do **not** re-synthesise existing pages
inline: minting and refreshing live in the periodic **entity pass** (§5), off the
ingest hot path. A deal that passed the finance branch (2a) is already a record —
do **not** also write it as a dated fact here. A deal or MoU that *failed* the
five-fact test is recorded as a dated fact on the pages it touches, as before.
Either becomes a `deal` entity page only when material.

**5. For each place** — update the hub: add to **Recent developments**, ensure the
topic section exists, link source + entities. Tag regions only when the item is
genuinely region-level.

**6. For each subject** — update the concept page. If place-specific and
substantial, create/update the intersection and link from both sides.

**7. Flag contradictions.** Never silently overwrite. Note it in `log.md`, set
`needs-review` on affected pages, and add a **contradiction** item as a new file
in `reviews/contradictions/open/` (one file per item). The item carries a
**paste-ready external-research brief** — **wiki-agnostic** (no facets, slugs,
page links or scope) — containing:

- the claim in dispute;
- each competing value;
- who asserts each;
- **the source URL(s) CC already holds for each assertion**, read from the source
  pages' frontmatter.

CC reports **only links it actually holds** — never suggests external or primary
sources from its own knowledge. If a competing value has no clean source URL on
file, say so; that absence is itself a provenance gap and is the finding. Close
with a plain instruction, e.g. *"these sources report different values for X —
investigate the discrepancy and suggest a resolution, recording an as-of date for
each."*

The brief goes with the `reviews/contradictions/` item, **not** into `queries/` —
resolving a contradiction is external research, not a query against the base. The
**reconcile pass** runs that research in-session, ingests the primaries it
surfaces through `new/`, and applies a resolution to the affected pages. Research
output is **not retained**: the page fix cites the primaries the pass surfaces, and
the synthesis is discarded once the resolution is applied. It is never ingested.
*(The former `reviews/contradictions/research/` quarantine was removed 2026-07-20 —
its files were explicitly regenerable snapshots, never a store of record.)* Resolved items move to
`reviews/contradictions/done/` as the last step.

**8. Absences.** A specific known **document** the wiki wants and doesn't hold →
add it to `reviews/acquisitions.md` (a fetch list drained by the acquisition pass,
`run acquisitions`, never by reconcile). Anything else that can't be closed by
either queue is a **horizon**, and belongs on the relevant page as a dated
statement of what isn't established. [adapted: CLAUDE.md now governs — `reviews/gaps.md` and
the structural-gap register are withdrawn.]

**9. Update the indexes** — `topics-index.md`, `places-index.md`,
`entities-index.md`.

**10. Set `last_reviewed`** on every page touched; append to `log.md` (judgment
calls under **Decisions**, with what was decided and why).

**11. Last step: move the item from `new/` to `raw/`**, adding the `YYYY-MM-DD`
prefix from its `published` date if not already present (§3). For a binary
artefact, ensure its companion source page and the artefact share the prefix.

---

## Ending the run — write the ingested view

After the run, record what reached `raw/` in **`wiki/ingested_log.md`** — a rolling
view so Bill can see what is coming in, especially from the automatic news sweep.
This is in **addition** to the `log.md` Decisions entry, and applies to **every**
ingest — manual or sweep-triggered.

- Append **one `## YYYY-MM-DD HH:MM` section** for this run at the **top** of the
  file (newest first).
- **One row per source admitted to `raw/`** this run. Read **both columns from the
  admitted file's own frontmatter**, never from the filename or the deal:
  - **Place** = the file's `place`/`places` facet — for a finance record the
    **recipient** place (e.g. `COD`, `SEN`), never the financier's country (`CN`)
    or an entity (`MOFCOM`). Multiple places → list them.
  - **Title** = the file's `title:` value, **verbatim**, as the hyperlink text —
    **never the filename, slug or `deal_id`** (`boc-civ-003` is a filename, not a
    title).
  - `| COD | [China Eximbank provides RMB 1.05 billion … ICT Modernization Project](../raw/eximbank-cn-cod-002-primary-companion.md) |`
- List **only items that reached `raw/`** — not contradictions, acquisitions or
  deletions. A run that admitted nothing writes no section.
- **Prune** any section older than **7 days** before saving. It is a view, not a
  record — git and a query (`queries/`) reconstruct any audit, so nothing is lost.
