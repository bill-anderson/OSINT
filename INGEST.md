# INGEST.md — the ingest pass

Trigger: **"run ingest"**. Drains the `new/` queue: each item is routed to `raw/`
(admitted source), `_leads/` (parked lead), or deleted (discard / out-of-scope).
It is **the only door into the base** — candidates become sources only here.

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

Process each item in `new/` through the steps below. The item's **move out of
`new/` is the last step**, and where it moves is its classification: admitted
sources → `raw/`, parked leads → `_leads/`, discards → deleted. "Moved out of
`new/`" is therefore not the same as "became a source" — draining the queue means
routing each item to its correct destination.

**1. Intake screen (do this first).** Check provenance against `CLAUDE.md` → *The
material*.

- Second-hand or AI-generated synthesis → do **not** compile it. Note it in
  `log.md` as parked-inadmissible with a one-line reason, extract any primary
  sources it references for separate ingestion, move it to `_leads/`, stop.
- Reports no development but establishes or profiles a **standing object** of
  OSINT value — organisation, company, government body, person,
  project/initiative, data asset (database/dataset/registry/tool/portal), or
  reference instrument (standard, taxonomy, framework, policy/legal instrument) →
  capture it as the matching entity type rather than discarding it; never park it
  as a lead.
- **Discard (delete)** only the wiki's own config/vocabulary files and genuine
  non-intelligence artefacts.
- **Out of scope → reject and delete.** An item that is admissible and first-hand
  but falls outside data governance + digital transformation — e.g. transport
  electrification / e-mobility, or a borderline tech innovation carrying **no
  real data or digital-platform layer** — is rejected and deleted
  (git-reversible), **not** parked in `_leads/`. Distinguish the genuinely
  in-scope case where the actor is itself a digital platform (e.g. Yango). When
  scope is in doubt, reject and delete.
- **Undated/unattributed but possibly important?** A parked lead lacking a dated,
  attributable origin yet carrying **possibly-important information** (a
  load-bearing claim, a first-of-kind development) is **also filed as a
  provenance/corroboration hunt in `reviews/contradictions/open/`** — a research
  brief for the reconcile pass to seek the original posting and dated primaries —
  so it is actively worked rather than left inert in `_leads/`. It stays a lead
  until reconcile surfaces admissible primaries.

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
  ordinary source with its `finance.*` tags. This is routing, not rejection — the
  exception is a failure on the **date** fact, which goes to `_leads/` per the
  spec's *Dates*.

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
