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
**Ingest runs this automatically** whenever it admits a finance record (`INGEST.md`
→ *Ending the run*), so the sequence is never left half-done; the standalone
`run finance compile` trigger is for a manual recompute.

Governing rules: `CLAUDE.md` (currency, §8 hygiene via `wiki/reference.md`) and the
spec. This file is only the aggregation loop.

---

## The loop

Aggregation is deterministic over the structured fields, so compute it with a
script and **write the result onto the page** — a compiled figure, not a
query-time derivation (`CLAUDE.md` → *Working the base*). For **each place**
(`places` value, country or `X__` region) that has finance records in `raw/`:

1. **Aggregate its deal records, split by `finance_origin`** (the section holds
   both **non-state** and **domestic-state**):
   - total committed (USD), deal count, commitment-year range;
   - top financiers by committed amount;
   - instrument mix and top subject slugs.

   Currency discipline (`CLAUDE.md` → *Currency*): totals are time-varying, so head
   the section **"as of `<compile date>`"**; sum the USD field only — never restate
   one commitment in three currencies.

   **Domestic-state aggregates differently, and three rules override the above:**

   - **Aggregate by fiscal year, in the original currency.** Never sum
     `amount_usd` across fiscal years — a decade of naira lines converted at
     their own dated rates and added together is not a quantity. Report per-year
     figures in the state's own currency, with the USD conversion beside each as
     a dated figure; a trend statement compares per-year figures in the original
     currency.
   - **Split by `budget_stage`, never merge stages.** Report appropriated and
     actual separately, and where the same line stem carries both, report the
     **execution rate**. That gap is the finding this dataset exists to surface.
   - **Report `scope_confidence: partial` and `unclear` records apart from the
     headline total**, as a stated count and amount. A total mixing clean lines
     with partial ones is worse than no total.

   Three exclusions from the headline total, all set at capture, none inferred
   here: `is_transfer: true` lines (counted at the receiving body instead); the
   **original** line wherever a `supplementary_basis: restated-total`
   supplementary exists for the same stem and stage — the supplementary
   supersedes it and is counted in its place (an `increment` supplementary counts
   *alongside* its original); and any line whose `supplementary_basis` is
   `unclear`. Report each exclusion's count and amount rather than dropping it
   silently.

   Externally-financed budget lines carry `finance_origin: non-state` by the
   driver's origin gate and so land in the non-state total — they are **not**
   counted as domestic state spend. Double-counting is prevented upstream, at
   capture, not here.

2. **Write/replace the `## Financing` section** on the place hub (after
   `## Recent developments`), origin-split, e.g.:

   ```markdown
   ## Financing
   *Aggregate of tracked digital-transformation finance. As of 2026-07-21.*

   **Non-state** — US$X.Xbn committed across N deals (2016–2026). Top financiers:
   world-bank (US$…), gates-foundation (US$…), ifc (US$…). Mostly Grant/Equity;
   leading subjects: dpi.pay, infra.connect.

   **Domestic state** — N budget lines across FY20XX–FY20XX, national and
   sub-national. FY2025: NGN X.Xbn appropriated (US$… at NGN …/US$, FY average),
   NGN Y.Ybn executed — Z% execution. Capital NGN …, recurrent NGN ….
   Leading votes: …. A further N lines (NGN …) are partial- or unclear-scope and
   are excluded from these totals.

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
