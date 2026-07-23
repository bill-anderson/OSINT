---
type: doc
title: Wiki workflow — whole-project lifecycle
last_reviewed: 2026-07-16
---

# Data Landscapers wiki — whole-project workflow

How material moves through the system: the human curates and oversees; CC runs
three separate pipelines over a single canonical base. **Blue = store of record ·
red dashed = do-not-ingest quarantine · green = human touchpoint · amber =
on-request pass.** `reviews/` *fixes* the base, `queries/` only *reads* it, and
they never cross.

> Layout uses the ELK engine (`config: layout: elk`). Recent Obsidian renders it;
> if yours doesn't, delete the two `config` lines to fall back to the default
> layout, or use the rendered SVG/HTML alongside this file.

```mermaid
---
config:
  layout: elk
  theme: base
---
flowchart TB
  subgraph HUMAN["Human (Bill) — curates & oversees"]
    direction TB
    H_clip["Curate sources<br/>(web clipper)"]
    H_trig["Trigger reconcile<br/>pass & queries"]
    H_gap["Decide which<br/>gaps to source"]
    H_ratify["Ratify CLAUDE.md<br/>diffs"]
    H_digest["Skim digest ·<br/>spot-check · revert"]
  end

  subgraph INTAKE["Intake pipeline — folder = state"]
    NEW["new/<br/>unprocessed queue"]
    SCREEN{"Intake screen<br/>+ dedup + file"}
    RAW[("raw/ — sources<br/>store of record · immutable")]
    DISC(["discard"])
  end

  subgraph BASE["wiki/ — compiled base"]
    PAGES["concepts · places · entities<br/>intersections · indexes"]
    LOG[("log.md · append-only")]
  end

  subgraph REVIEWS["reviews/ — FIXES the wiki"]
    COPEN["contradictions/open/<br/>worklist"]
    RECON{{"reconcile pass<br/>reconcile_review.md · Exa"}}
    RESEARCH["contradictions/research/<br/>quarantine · do-not-ingest"]
    CDONE["contradictions/done/"]
    GAPS["gaps.md<br/>human-owned leads"]
  end

  subgraph QUERIES["queries/ — READS base only"]
    QPEND["pending/"]
    QRUN{{"run within scope"}}
    QRES["results/<br/>snapshot · do-not-ingest"]
    QDONE["done/"]
  end

  subgraph GOV["Oversight & output"]
    DIGEST["Weekly digest"]
    GIT[("git · reversibility")]
    SCHEMA["CLAUDE.md rules"]
    PUB["Draft → publish<br/>data-landscapers.com"]
  end

  %% Intake spine
  H_clip --> NEW --> SCREEN
  SCREEN -->|"admissible source"| RAW
  SCREEN -->|"entity profile"| PAGES
  SCREEN -->|"AI synthesis — mine then discard"| DISC
  SCREEN -->|"non-intel / out-of-scope"| DISC
  RAW --> PAGES
  SCREEN -. "flag contradiction" .-> COPEN
  SCREEN -. "flag gap" .-> GAPS
  PAGES --> LOG

  %% Reconcile — contradictions only
  H_trig --> RECON
  COPEN --> RECON
  RECON --> RESEARCH
  RECON -->|"extract primaries"| NEW
  RECON -->|"provisional fix · cite primaries"| PAGES
  RECON --> CDONE

  %% Gaps — human-owned
  GAPS --> H_gap
  H_gap -. "if sourced" .-> NEW

  %% Queries — read-only
  H_trig --> QRUN
  QPEND --> QRUN
  PAGES -. "read-only" .-> QRUN
  QRUN --> QRES
  QRUN --> QDONE

  %% Oversight
  PAGES --> DIGEST
  RECON --> DIGEST
  DIGEST --> H_digest
  H_digest -. "revert" .-> GIT
  H_ratify -. "approve" .-> SCHEMA
  PAGES --> PUB

  classDef store fill:#e8f0fe,stroke:#3b6cb7,color:#12325c;
  classDef quarantine fill:#fdecea,stroke:#c0392b,color:#7b241c,stroke-dasharray:5 3;
  classDef human fill:#eaf7ec,stroke:#2e7d32,color:#1b4620;
  classDef pass fill:#fff4e5,stroke:#e08e0b,color:#7a4f05;
  class RAW,LOG,GIT store;
  class RESEARCH,QRES quarantine;
  class H_clip,H_trig,H_gap,H_ratify,H_digest human;
  class RECON,QRUN pass;
```

## Reading it

- **One canonical base.** `raw/` holds sources of record (immutable); `wiki/` is
  the compiled synthesis; `log.md` records what happened. Everything else is a
  queue, a lead, or a snapshot.
- **The intake loop is the spine.** Clips land in `new/`, get screened and filed,
  and update the wiki. Two things also feed *back* into `new/`: primaries the
  reconcile pass extracts, and gaps the human chooses to source — so both
  re-enter through the same front door and the normal admissibility screen.
- **Reviews fix, queries read.** The reconcile pass (contradictions only) writes
  provisional fixes to the wiki, quarantining its research; queries only read the
  base and write disposable snapshots. Neither quarantine ever crosses into
  `raw/`.
- **Gaps stay human.** They sit in `gaps.md` until the human decides to source
  one; the reconcile pass never touches them.
- **Oversight is git-backed.** The weekly digest is the skim surface; git makes
  any provisional call a revert. CLAUDE.md rule changes are the one gate that
  requires explicit human ratification.

*(Not drawn, to keep the map legible: git underpins every store; CLAUDE.md rules
govern the whole pipeline; and a piece once published on data-landscapers.com can
re-enter via `new/` as admissible expert analysis.)*
