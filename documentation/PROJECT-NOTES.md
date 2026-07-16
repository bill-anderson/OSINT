# Data Landscapers wiki — project notes

Companion to `CLAUDE.md`. **`CLAUDE.md` is canonical and self-contained** — CC
needs nothing else to operate. This file holds only what sits *outside* it:
settled decisions, rejected options, working disciplines, open items.

**Start any new thread by uploading the current `CLAUDE.md` from the repo.**
Not a remembered copy — the live file. CC edits it, so any other copy drifts.

---

## What this is

A Karpathy-pattern LLM wiki: a compounding intelligence base on data governance
and digital transformation across 54 African states, feeding the published work
at data-landscapers.com. CC builds and maintains; Bill curates sources and directs
analysis. Obsidian is the viewer, git the history, Claude Code the agent.

## Settled — do not relitigate

- **Faceted, not hierarchical.** Place + subject as primary facets in frontmatter;
  folders organised by page *type*. 62 places × ~36 topics = no folder matrix.
- **Regions are places, not containers.** `countries.csv` is fixed and in use:
  single-parent tree, 54 ISO-3 + 8 `X__` codes. `XSS`/`XGL` are tag-only.
- **Blocs (AU, ECOWAS, SADC, AfCFTA, Smart Africa) are entities**, not regions —
  the place facet is geographic.
- **Lens is a real facet**, holding `sovereignty` and `colonialism` only.
  Governance/transformation live in the taxonomy; OSINT is a method, not a lens.
- **Taxonomy**: slugs are the tag (`gov.protect`), never labels. Single-parent
  tree; cross-listing by multi-tagging, never by two parents.
- **Three-state pipeline**: `new/` → `raw/` (flat) → `_leads/`, all at root.
  Folder = state. Move out of `new/` is always the last step.
- **`reviews/`** = everything held for the human:
  `contradictions/{open,done,research}/` (fixes), `gaps.md` (sourcing leads) +
  `issues.md` (decisions). **`log.md`** = append-only record of what happened.
  Never conflate an open register with the log.
- **Reviews split by autonomy tier (2026-07-16).** Contradictions are
  machine-actionable: they flow through `reviews/contradictions/open → done`,
  auto-researched via Exa and *provisionally* resolved by the reconcile pass
  (`reconcile_review.md`, run on request) — a tier-2 "auto, then digest" action.
  Gaps stay human-decision leads in `reviews/gaps.md`, which the reconcile pass
  never reads. The pass quarantines research output in `contradictions/research/`
  (do-not-ingest), mines primaries into `new/`, and cites primaries — so the
  ingest boundary is structural, not remembered. This replaced the monolithic
  `_review.md` and folded the old copy-paste-to-a-separate-project relay into one
  in-session pass now that the wiki has Exa.
- **Issues register + park-don't-ask (2026-07-16).** `reviews/issues.md` is a
  third human-owned register beside `gaps.md`: judgment calls the rules don't
  determine (admissibility, schema tweaks, taxonomy questions, invariant edge
  cases), each with CC's *recommended* resolution for bulk rubber-stamping. CC
  **never asks an ad-hoc decision at the prompt** — it parks in the right register
  (contradiction / gap / issue) and reports. The reconcile pass and ingest may
  both *append* to gaps/issues but never *work* them. Every response ends with a
  standing status line — overall open totals, `issues - NN ; contradictions - NN ;
  gaps - NN`.
- **`queries/` reads the base only; `reviews/` fixes it** — kept fully separate,
  never crossing. Contradiction reconciliation is *external* research: its brief
  lives with the `reviews/contradictions/` item, never in `queries/`.
- **Published work is admissible** as expert third-party analysis; unpublished
  notes are not. Anti-circularity is a mechanic (no self-corroboration, no
  re-ingesting wiki-rendered pieces), not a per-instance review.
- **Staleness is a phrasing rule, not a threshold** — time-varying figures always
  written dated. Thresholds belong in lint, not in prose rules.

## Rejected / deferred — reasons, in case they resurface

- **OSINT reliability grading (Admiralty A–F / 1–6)** — off, ingest overhead.
- **WB numeric roll-ups** — abandoned; parent declared per node instead.
- **`raw/YYYY/` year folders** — skipped; date-prefixed filenames already sort
  and grep. Trivially shardable later if `raw/` ever gets unwieldy.
- **`geopol.gulf`** (UAE/G42/Presight) — now tracked as **ISSUE-001** in
  `reviews/issues.md` (recommended: add it), no longer a loose deferred note.
- **Currency + coverage-asymmetry gap sweeps** — deferred as opt-in until the
  conservative structural gap signal proves useful rather than noisy.
- **Re-flagging previously-resolved contradictions** — deliberately not ruled on.
  Too edge-case; keep instructions simple.
- **Standing ingest-time currency check** — trimmed. The phrasing rule makes
  staleness visible on the page; a check that must fire is weaker than structure.

## Working disciplines (Bill's, not CC's)

- **The repo file is canonical.** Upload it before any editing session; ratify
  diffs after.
- **Approve the diff, not the intention.** When CC asks to edit `CLAUDE.md`, ask
  to see the exact change first. Permission follows inspection.
- **Sweep `reviews/` before drafting anything for publication.** Provisional
  contradiction resolutions from the reconcile pass are decisions made on your
  behalf until you look — check `reviews/contradictions/done/` and the digest,
  and `reviews/gaps.md` for open leads.
- **Lean schema.** Every rule added raises attention load on all the others.
  Resist edge-case rules. Encode only what changes a *repeated* decision.
- **Prefer structural over remembered.** A folder state, a required field, a lint
  check — these can't silently fail. Prose rules can.
- Reliability lives in the architecture (pipeline, lints, digest, git), not in CC
  faithfully recalling every line.

## Open items

- **Consolidation pass** — when the schema settles: audit every rule for "could
  this be structural instead of remembered," merge duplicates, cut anything
  earning less than its attention cost. Compress, don't add.
- **CAF/AGO currency fix** — those batches carry 2011/2016/2020 figures written
  as current state; non-compliant with the new phrasing rule. Also check whether
  WB Social Registries / CCDR / DPI-interop figures were promoted into concept
  pages against the reference-study rule.
- **REV-001** — regenerate its brief in the corrected format (held URLs only, no
  CC-suggested primaries, wiki-agnostic). *(The two live contradictions,
  REV-CAF-001 and REV-DJI-001, are already in the corrected format in
  `reviews/contradictions/open/`.)*
- **Gaps review** — Bill to engage with `reviews/gaps.md` and may revisit how
  gaps are handled once he has; left as human-owned leads for now.
- **Obsidian Web Clipper / Chrome bug** — ~10 clips then TLS block on all sites,
  clears on restart. Isolated to the clipper, appears unreported. Firefox
  unaffected. Possible GitHub issue with net-export log evidence.
- **Output step** — house style is still a placeholder line. Wire `bill-writing-
  style` in properly when the wiki starts drafting publication prose.
