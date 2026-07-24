# Machine-record defect audit — repo-review task 9 (2026-07-24)

Script-audit of the machine-loaded `raw/` records for three mechanically-detectable
defect classes. **This audits; task 10 fixes.** Reproduce with:

```
python scripts/audit-machine-records.py                 # prints this table
python scripts/audit-machine-records.py --csv out.csv   # + per-file list for task 10
```

## Scope — record families

`raw/` holds 6,309 `.md` files. "Machine-loaded" is not one flag, so the audit
segments by the markers that identify how a record was generated:

| Family | Marker | Count |
|---|---|---|
| **finance-load** | `finance_origin` / `deal_id` / `amount_total` / `budget_stage` | 1,355 |
| **sweep** | `sweep_batch` (candidate written by the sweep) | 3,088 |
| **other** | neither (older hand-authored sources) | 1,866 |

The review's "~4,655 machine-generated records" ≈ finance-load + sweep (4,443) — the
records not hand-written from a fetched article. Defects are reported per family
because severity differs by family (below).

## Defect table by class

| Class | finance-load | sweep | other | TOTAL |
|---|---:|---:|---:|---:|
| **1 — `date_source: proxy` on a finance record** | 20 | 0 | 0 | **20** |
| **2 — empty `entities: []`** | 49 | 24 | 12 | **85** |
| **3 — `body_completeness: full` but body truncated** | 14 | 179 | 14 | **207** |

Context: `date_source: proxy` also appears on **235 non-finance** sources — that is
**not a defect** (LINT #11 sanctions proxy dating where a date is genuinely
unestablished); only finance records forbid it (`finance-record-spec.md` → *Dates*),
so class 1 counts finance-family only.

## Notes per class (for task 10)

**Class 1 — finance proxy dates (20).** Forbidden: a finance record with no real
event year is not a dated fact. Fix per spec — recover the commitment year from the
primary/body, or re-route the item to an ordinary `raw/` source with the event date
recorded as unestablished (and drop the deal record). Overlaps class 2/3 on several
files (the eximbank-family stubs carry all three).

**Class 2 — empty `entities: []` (85).** The **49 finance-load** ones are certain
defects — they name a financier and recipient in the body/table but tag none (this
is exactly why task 7 left their `financier_slug` blank, and why lint #16 hard-fails
them). Fix = tag the financier/recipient (and re-run the task-7 slug populate). The
**36 sweep/other** ones are untagged sources (LINT #5 territory) — confirm each names
a taggable actor before tagging; under-tagging of mere mentions is not a defect.

**Class 3 — truncated bodies marked `full` (207).** High-confidence candidates only
(a body ending on a comma/semicolon, a dangling function word, a mid-word cut, or a
`[…]`/paywall marker; finance descriptions additionally flag on any missing terminal
stop, since they are full prose paragraphs). A looser "no terminal punctuation" scan
flags ~1,400 but is mostly false positives (bylines, headlines, colons) and is not
used. Precision spot-checked at ~80% on finance-load; **task 10 confirms per file.**
- **finance-load (14):** truncated CSV-load payloads — mark `excerpt` (or recover the
  full text where the primary is held). ~11 of 14 are clear mid-word cuts.
- **sweep (179):** these **overlap task 13** (the verbatim/paraphrase question). Some
  are genuine truncations, some are curator paraphrases mis-marked `full`. Resolve
  under task 13's ruling, not by blanket re-marking.
- **other (14):** case-by-case.

## Task 10 outcome (2026-07-24) — fixes applied

The **finance-load family is now fully clean** (all three classes at 0; lint #16
passes). The non-finance remainder is a different population and is routed to the
passes that own it, not force-fixed here.

| Class | before | fixed | routed / residual |
|---|---:|---:|---|
| **1 — finance proxy dates** | 20 | **20** | 0 |
| **2 — empty `entities: []`** | 85 | **49** (all finance) | 36 non-finance → **LINT #5** |
| **3 — truncated but `full`** | 207 | **14** (all finance) | 177 sweep → **task 13**; 14 other → LINT #15 |

What was done to the 49 finance-load class-2 (+ overlapping class 1/3):
- **20 `-record`** — tagged financier/recipient (`entities` + `financier_slug`/
  `recipient_slug`); `date_source: proxy → source`; **15 promoted to the exact
  signing date** parsed from the body (verified in a "signed…loan agreement"
  context) and the files **renamed** so the prefix matches `published`; the 9
  truncated payloads set `body_completeness: excerpt`.
- **20 `-primary-companion`** — mirrored their sibling record's slugs.
- **9 ZAF budget votes** — `financier_slug` = the spending department (fisc);
  recipient unspecified.

Routed, not fixed here (deliberate):
- **36 non-finance empty `entities`** — academic papers and opinion/news pieces
  that are legitimately actor-thin; tagging them is per-source LINT #5 judgment
  (over-tagging mere mentions is itself a defect, `CLAUDE.md` → *Entities*), not a
  mechanical fix.
- **177 sweep truncations** — the verbatim/paraphrase question (**task 13**);
  resolve under that ruling, never blanket re-marking.
- **14 "other" truncations** — mostly false positives (complete sentences with a
  promo/newsletter footer or a "Subscribe" tail); residual to LINT #15.

The audit detector was tightened during the fix (handles trailing mojibake, a short
`(Artigo 2.º)`-style citation, guillemets, and `[…]` elision), which is why class-3
now reads 191 pre-fix rather than 207 — pure precision, no records changed by that.

## Reproducibility

The audit is deterministic (`scripts/audit-machine-records.py`, stdlib only). The
truncation heuristic is documented in the script's `truncated()` docstring. Two known
false-positive sources in class 3: mojibake `�` characters after a valid full stop,
and a complete parenthetical citation ending — both filtered by task 10's per-file
pass.
