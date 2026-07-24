# LINT.md — the lint pass

Trigger: **"full lint"** (also **"run lint"**). The 16 hygiene checks over the
vault, run as the last step of `update wiki` or on demand.

A first-class pass alongside reconcile and acquire. This file is **only the
procedure**; the schemas and thresholds the checks enforce live in
`wiki/reference.md` (§4 frontmatter schemas, §8 page hygiene and scaling, §9
dead-link triage, §3 filenames), and the dedup rules are `CLAUDE.md` → *Duplicates*.
Check numbers are unchanged, so existing "§11" references still resolve.

---

**Lint acts and logs. It does not report.** Every check below has one correct
action; lint takes it, in git, and records a count in `log.md`. It surfaces to
Bill **one thing only**: a genuine contradiction it uncovered, filed to
`reviews/contradictions/open/` and drained by the next reconcile. Everything else
it settles itself — including equal duplicates, where it keeps one and drops the
other without asking, because which copy survives does not matter. Never a to-do
list. Same discipline as reconcile and acquire — the pass cleans up after
itself. A wrong auto-fix is a revert, not a review queue.

Run: work the checks in order (dependencies resolve top-down — schema before
vocabulary, orphans before dead-link triage). End with the tally
(`contradictions - NN ; acquisitions - NN ; awaiting ingest - NN ; decisions logged - NN`) and, if any
check acted, a one-line-per-check count.

### Auto-fix — mechanical, one right answer, no output but a count

1. **Schema integrity** — add missing required frontmatter for the page's type
   from what the page already carries; where a required value cannot be inferred,
   that is the rare surface (see below), not a silent guess.
2. **Vocabulary** — a `topics` slug absent from `taxonomy.md` or a place absent
   from `countries.csv` is a typo or a stale slug: correct it to the controlled
   value. A genuinely new vocabulary value needed is a judgment call — surface.
4. **Orphans & dead links** — add absent pages to their indexes; rewire or
   retire broken `[[links]]` per §9's referrer bands (≥10 create the wanted page,
   1–2 fix or drop). The intentional-dead whitelist (§9) is never touched.
5. **Untagged sources** — tag `raw/` items missing place/topic/entity tags per
   `CLAUDE.md` → *Entities* (actors, not every mention; institutions, not
   officeholders). Under-tagging of mere mentions is **not** a defect — do not
   over-tag to satisfy the check.
7. **Duplicates.** Cluster `raw/` items sharing **event + entities + date**; within
   a cluster, where one source's in-scope payload is identical to another's
   (boilerplate, framing and length don't count), resolve by `CLAUDE.md` →
   *Duplicates*: **drop** the redundant copy, or **replace** the held one on a
   clear tier upgrade (primary over secondary; canonical over syndicated; full
   body over excerpt; finer `date_precision`) — quality beats primacy, never for
   marginal betterness. Rewire `sources:` citations to the kept twin; log the
   deletion (kept + pruned). **Where neither is clearly better, keep the first by
   filename and drop the other — no decision, it doesn't matter which survives.**
   Where payloads differ (a figure, date, quote one lacks) they are complementary
   or contradictory, not duplicates — keep both, or route to #9. Git holds
   deletions. [The old (a)–(d) earliest-publication keeper ladder is superseded.]
11. **Missing date prefix** — rename any `raw/` source or artefact lacking a
    `YYYY-MM-DD` prefix, updating links. Where the date is genuinely
    unestablished, apply `date_source: proxy` at best precision per §3 rather than
    inventing one.
12. **Link-list convention** — normalise `sources:`/`entities:` frontmatter from
    the non-canonical `[[[a]], [[b]]]` (or a malformed hybrid) to `[[a], [b]]`.
13. **Quarantine leaks** — a `wiki/` page citing `reviews/contradictions/research/`,
    `queries/results/`, or any `DO-NOT-INGEST` file: rewire to the ingested
    primary, or remove the citation. These are scratch, never a store of record.
14. **`url:` quality** — a `raw/` source whose `url:` is a **bare domain** (e.g.
    `documents.worldbank.org`), **blank**, or **missing entirely**: recover the
    canonical document-specific URL. A bare domain cites nothing and breaks the
    dedup key.
    - **Check the file's own `source:` key first** (also `canonical`/`origin`/
      `source_url`), before any web research. It is cheap and sometimes decisive:
      in the 2026-07-20 pass one capture cohort carried `source:` in 30 of 69 files,
      matching every independently-researched URL and in three cases holding a URL
      web search never surfaced. **It is a cohort convention, not a wiki-wide one** —
      the other three worklists had it in zero files — so check, don't rely on it.
    - **No attempt limit** — work the strategies until found or genuinely exhausted:
      `source:` key, title search, document/project ID (World Bank docs reconstruct
      from theirs; academic ones from a DOI), publisher site search, archive lookup.
    - **Where a binary artefact is held, byte-compare it against the candidate
      download.** For World Bank documents the WDS JSON API
      (`search.worldbank.org/api/v3/wds`, filterable by `projectid`/`qterm`/date)
      returns the document's real PDF filename, which often matches the stored
      `artefact:` exactly. Byte-identity turns *plausible* into *proven*, and in the
      2026-07-20 pass it recovered 53/53 and exposed three captures whose stored
      title or date was simply wrong — including a slide deck filed as a report and
      a date that was really the download timestamp.
    - **Verify before writing.** The URL must be *that* document — match on title
      and date. A plausible URL for a different report by the same publisher is
      worse than no URL. Never construct one from an unconfirmed pattern. **A 200
      response is not proof the document exists**: some hosts serve a soft-404 (a
      landing page, or worse — `crvssystems.ca` returns 200 with injected gambling
      spam for missing paths), so confirm the returned body *is* the document.
    - **Homepage and entity-profile captures are NOT defects.** Where a source is a
      capture of an organisation's own site as a standing-object reference, with no
      dated event, the bare domain *is* the document-specific URL. Leave it, and do
      not write an unrecovered note on it.
    - Only once exhausted, leave a dated in-file note (`url unrecovered as of
      YYYY-MM-DD`); never invent one. Where the recovered page's date disagrees with
      stored `published`, do **not** edit `published` — that is #3's business.
    *(One-attempt limit dropped, `source:`-first and homepage carve-out added,
    2026-07-20.)*
16. **Finance slug resolution** *(finance records only)* — run
    `scripts/lint-finance-slugs.py`. Every record carrying `finance_origin` must key
    its financier on a **canonical entity slug**: `financier_slug` present,
    well-formed kebab-case, and also present in `entities:`
    (`wiki/finance-record-spec.md` → *Entities*). **Financier defects fail loudly** —
    a blank or non-canonical financier slug (e.g. `world-bank-group` for
    `world-bank`) silently fragments a hub Financing aggregate, so the pass must not
    let it through. Fix where mechanical — derive a missing slug from `entities[0]`,
    rewrite a known alias to its canonical (the script's `ALIASES` map) — and
    **surface the rest** (empty `entities`, or a genuinely novel financier needing a
    page or a mint decision) as a defect list, drained like a contradiction.
    **Recipient drift** (a malformed or non-canonical `recipient_slug`) is *soft*:
    recipients sit below the paging bar and the entity pass reconciles them — route
    it there, don't block. The script exits non-zero on any financier defect, so it
    doubles as an ingest gate. *(Added 2026-07-24, repo-review task 8.)*

### Auto-resolve onto the page — no queue

3. **Freshness** — for each: `last_reviewed` over **90 days**; a page whose newest
   source is over **2 years** old while the topic carries sources under **6
   months** old elsewhere; a time-varying figure in bare undated present tense; a
   USD figure not written as a dated conversion, or money not in the announcing
   party's own currency. **Fix in place**: date the figure, convert the phrasing,
   or where the current value genuinely can't be established, write the dated
   absence on the page (a known vacuum is a finding). Re-stamp `last_reviewed`.

   **Detect at bullet level, not line level.** House style dates the bullet header,
   so a figure inherits its bullet's date and is not a defect. A line-level scan for
   undated money runs ~90% false-positive — the 2026-07-20 pass flagged 558
   candidates, of which ~13 on concept pages were real. Test whether the *enclosing
   bullet* carries a date anywhere, then screen what remains: a USD figure is
   **correct** when USD is the announcing party's own currency (World Bank / IMF /
   AfDB / DFC loans, a US company's own figure), when it is not a commitment at all
   (a price point, a tracker series, an analyst market-size estimate), or when the
   local-currency original is present in a form the scan missed (`Sh`, `₦`, `R`,
   `GH₵`, `CFA`, `N$`, `XAF`). The real defect is narrow: **an African party's
   own-currency commitment rendered into USD with no dated conversion.** Where the
   source itself gives only USD, date it and record that the local original is not
   established — never invent a rate. *(Added 2026-07-20 from that pass.)*
6. **Inadmissible sources** — a compiled source whose origin is a second-hand/AI
   synthesis, Bill's *unpublished* notes, or a publication that re-renders the
   wiki's own pages: **downgrade in place** — demote to a lead, or strike the
   citation and mark the claim for re-sourcing, recording it on the page. (Published
   Data Landscapers work is admissible analysis — never flag it.)
8. **Page bloat** — a synthesis page past ~2,500 words or reading as an append-log:
   trim, or split the substantial per-country cells into an intersection and leave
   the rest as index lines (per `CLAUDE.md` → *Structure*). Shard an oversized
   index. Place-hub **Recent developments** sections are exempt — they are meant to
   be dated logs.
15. **`body_completeness` backfill — by evidence, never by guess.** A `raw/` source
    missing the field: establish it from the stored body. **Marker-matching counts as
    evidence** — a mechanical pass over the body for truncation and paywall markers
    ("Read more", "Continue reading", "subscribe", "sign in to read", a mid-sentence
    cut at the body's end) is a valid check, not a guess, and may set the field at
    scale without per-file reading. Clean and untruncated → `full`; markers present →
    `excerpt` or `paywalled`; **anything the markers leave genuinely ambiguous is
    inspected, or left blank**. Missing means *unverified*, and blank asserts
    nothing — never set `full` on a body no check has passed over, because the
    paywalled-promotion gate and the `full > excerpt` dedup tiebreak both trust the
    field. *(Marker-matching admitted 2026-07-20; the per-file-inspection-only
    requirement is superseded.)*

### Surface to Bill — the only output

9. **Contradictions** — file any conflict the pass uncovered (sources disagreeing,
   or a duplicate-cluster payload mismatch that is a real disagreement) to
   `reviews/contradictions/open/` as a brief, drained by the next reconcile. Report
   the count.
10. **Stranded queue items** — anything left in `new/` after an ingest is
    unfinished. Lint does **not** ingest it (that's a separate pass); it reports the
    count so Bill knows the ingest didn't complete.

Nothing else reaches him. Equal duplicates are settled by #7, not surfaced.
