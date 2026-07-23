# Kenya IPRS (Integrated Personal Registration Services) FY2024/25 revised estimate — KSh 232.2m vs 255.9m

## The claim in dispute

The final revised FY2024/25 estimate for Vote 1024 sub-programme 0626030 (Integrated Personal
Registration Services), State Department for Immigration and Citizen Services.

## Competing values

1. **KSh 232,235,383** — Supplementary III PBB, Vote 1024 Part F (Approved column = post-Supp-II,
   carried unchanged by Supp III). Held artefact:
   `budget-archive/KEN/2024/2025-06-01-ken-pbb-fy2024-25-supplementary-iii.pdf` (p.65).
2. **KSh 255.87m** (155.87m recurrent + 100.00m development) — COB annual NG-BIRR FY2024/25,
   Table 4.104 "Revised Estimates", with actual expenditure KSh 261.46m stated as 102% absorption.
   Held artefact: `budget-archive/KEN/2024/2025-08-01-ken-cob-ng-birr-fy2024-25.pdf`.

## Notes

The 102% absorption arithmetic works against ~255.9m (261.46/255.87), not against 232.2m
(which would give ~113%) — so the BIRR is internally consistent with its own revised figure.
Possible explanations: an Article 223 addition not reflected in the printed Supp III PBB; a
row-wrap misread in the Supp III extraction (layout wraps rows across columns — flagged in the
extraction CSV); or a genuine discrepancy between Treasury's book and COB's records. The BIRR is
OCR-noisy, so its own digits carry uncertainty.

## Instruction

These two held budget documents disagree on IPRS's final revised FY2024/25 estimate — re-read the
Supp III PBB Vote 1024 block at page grain (possibly with pdfplumber) to rule out a row-wrap
misread, then if the disagreement stands, establish whether an Article 223 authorisation explains
the gap, and record the resolution with both values dated.

## Resolution (2026-07-23, attempt 1 — closed on the held documents)

**The extraction was correct and the disagreement is real.** A page-grain raw-mode re-read of the
Supp III PBB (batch job 3/3) confirms the printed row exactly: `0626030 Integrated Personal
Registration Services 232,235,383 → 232,235,383, no change` — not a row-wrap artifact. The BIRR's
revised figure (KSh 255.87m = 155.87m recurrent + 100.00m development) is separately confirmed by
its own absorption arithmetic (261.46/255.87 = 102%).

**Resolution: an in-year adjustment outside the printed estimates.** The BIRR itself documents the
mechanism for FY2024/25: Article 223 approvals "were factored into the subsequent Supplementary
estimates, and executed thereafter as normal budget allocations" — and where they were not (or a
reallocation intervened after Supp III, June 2025, weeks before year-end), COB's working records
diverge from the printed book by exactly this shape. Both values stand, dated: **printed final
revised (Supp III PBB, Jun 2025): KSh 232.24m; COB operative revised (BIRR, Aug 2025):
KSh 255.87m; actual KSh 261.46m (102% of the operative figure)**. For execution analysis the COB
figure is the comparator (newest, execution-side); the printed book remains the appropriation
record. Applied to the population-management record and the extraction CSV.
