# FINANCE-COMPILE.md — the finance compile pass

Trigger: **"run finance compile"**. This pass **aggregates**: it reads the finance
records already in `raw/` and (re)writes the `## Financing` section on each place
hub. **It does not ingest.** It moves no files, admits nothing, and makes no
dedup decisions.

Admission of finance records (`new/ → raw/`, provenance, and the definite-match
merge / fuzzy cross-reference) is the **ingest** pass's job, governed by
`wiki/finance-record-spec.md` (*Store of record, merging and compilation*) and
`CLAUDE.md` (*Duplicates*). The one finance rule ingest must honour is: admit these
to `raw/` but **do not write per-deal hub bullets** — their hub presence is built
here, in aggregate. So the order is: ingest admits → **then** run finance compile.

Governing rules: `CLAUDE.md` (currency, §8 hygiene via `wiki/reference.md`) and the
spec. This file is only the aggregation loop.

---

## The loop

Aggregation is deterministic over the structured fields, so compute it with a
script and **write the result onto the page** — a compiled figure, not a
query-time derivation (`CLAUDE.md` → *Working the base*). For **each place**
(`places` value, country or `X__` region) that has finance records in `raw/`:

1. **Aggregate its deal records, split by `finance_origin`** (**non-state** now;
   **domestic-state** once that dataset lands — the section holds both):
   - total committed (USD), deal count, commitment-year range;
   - top financiers by committed amount;
   - instrument mix and top subject slugs.

   Currency discipline (`CLAUDE.md` → *Currency*): totals are time-varying, so head
   the section **"as of `<compile date>`"**; sum the USD field only — never restate
   one commitment in three currencies.

2. **Write/replace the `## Financing` section** on the place hub (after
   `## Recent developments`), origin-split, e.g.:

   ```markdown
   ## Financing
   *Aggregate of tracked digital-transformation finance. As of 2026-07-21.*

   **Non-state** — US$X.Xbn committed across N deals (2016–2026). Top financiers:
   world-bank (US$…), gates-foundation (US$…), ifc (US$…). Mostly Grant/Equity;
   leading subjects: dpi.pay, infra.connect.
   **Domestic state** — *(pending that dataset)*.

   Material deals: [[…]], [[…]].
   ```

3. **List an individual deal only at the deal-entity bar** (§5, reference.md) —
   large, multi-party, or watchlisted. Everything else lives only in the aggregate
   and in its own `raw/` record; it is **not** named on the hub. This is what keeps
   §8 hygiene intact under 1,000+ records.

4. **Touch nothing else** — no `Recent developments` bullets, no other sections.

## Close

Report terse (`CLAUDE.md` → *Reporting*): hubs whose Financing section was
written, and the aggregate totals. End with the status line:

`contradictions - NN ; acquisitions - NN ; awaiting ingest - NN ; decisions logged - NN`

## Notes

- **Read `finance_origin`, don't guess it.** A `raw/` finance record missing the
  field is a build error — fix it upstream, don't classify it here.
- **Regional buckets** (`XAF`, `XSS`, …) get a Financing section like any place;
  they are where this dataset concentrates, and the aggregate is what stops that
  concentration becoming hundreds of bullets.
- **Idempotent.** The pass recomputes each section from the current `raw/` records,
  so it is safe to re-run after new records are ingested or merges land — it just
  refreshes the totals.
