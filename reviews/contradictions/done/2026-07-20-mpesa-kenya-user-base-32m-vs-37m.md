---
type: contradiction
status: resolved
opened: 2026-07-20
resolved: 2026-07-20
attempts: 1
---

# M-PESA Kenya user base: 32 million or 37 million?

## Resolution (2026-07-20, attempt 1)

**Resolved — definitional plus staleness, not a live disagreement.** Neither press figure is a
competing measurement; both are restatements of (or misses against) a single defined series that
Safaricom publishes itself.

**The defined series.** Safaricom PLC reports **one-month (30-day) active M-PESA customers** — the
only M-PESA customer count in its audited disclosures — separately for **Kenya** and for the
**Group** (Kenya + Ethiopia). Values on file:

| As at | Kenya | Group |
|---|---|---|
| 30 Sep 2024 (HY25) | 33.46m | 33.98m |
| 31 Mar 2025 (FY25) | 35.82m | 37.03m |
| **30 Sep 2025 (HY26)** | **37.91m** | 39.82m |
| **31 Mar 2026 (FY26)** | **40.99m** | **43.69m** |

Ethiopia alone at 31 Mar 2026: **2.69m 30-day-active** (5.20m 90-day).

**Figure 2 — "more than 37 million" (TechCabal, 2026-07-20, attached to the Feb 2026 Ziidi Trader
launch): explained.** It is the **Kenya 30-day-active count as at 30 September 2025 (37.91m)** — the
most recent figure Safaricom had published when Ziidi Trader launched in February 2026. Correct for
its basis; stale by July 2026, by which time the 31 Mar 2026 figure (40.99m) was six weeks old.
Population: Kenya, 30-day active. As-of: **2025-09-30**.

**Figure 1 — "32 million-plus monthly users" (CBK governor Thugge to Parliament, 2026-01-20, reported
2026-01-28): unmatched.** It corresponds to **no Safaricom-published figure** for the period. The
nearest point on the series is 33.46m at 30 Sep 2024 — sixteen months before the testimony — and the
then-current published count was 37.91m. The word "monthly" tracks Safaricom's own "one-month active"
language, so it reads as a citation of that series rather than a different population, but that
cannot be shown.

**What is not established (2026-07-20):** CBK has published no definition or as-of date for its 32m,
and **no CBK statistical release or National Payments System publication giving an independent M-PESA
user count is on file**. So it is not established whether the ~6m shortfall reflects a genuinely
different population (registered vs active, a narrower transaction class) or simply a stale citation.
That vacuum is stated, dated, on `wiki/intersections/kenya--dpi-pay.md`.

**No third value.** 40.99m (31 Mar 2026) is a later point on the same series as 37.91m, not a rival
measurement — per CLAUDE.md the newest value is carried, with 37.91m kept as the dated prior.

**Applied:** carry the Safaricom series, not the press restatements —
`wiki/intersections/kenya--dpi-pay.md`, `wiki/entities/safaricom.md`, `wiki/places/KEN.md`.

**Primaries ingested:**
- `raw/2026-05-07-safaricom-fy26-results-booklet.md` — Safaricom PLC Results Booklet, audited results
  for the year ended 31 March 2026.
  https://www.safaricom.co.ke/images/Downloads/FY26-Earnings-Booklet-2026-7th-May-2026.pdf
- `raw/2025-11-06-safaricom-hy26-results-booklet.md` — Safaricom PLC Results Booklet, unaudited results
  for the six months ended 30 September 2025.
  https://www.safaricom.co.ke/images/Downloads/HY26-Earnings-Booklet.pdf

Both `body_completeness: excerpt` — the narrative review and all KPI tables extracted verbatim; the
later financial-statement pages were garbled/truncated by the fetch.

**Rejected during research:** `africanfinancials.com` HY2026/FY2026 document pages carry the figures
but are explicitly AI-generated summaries — inadmissible per CLAUDE.md, used only to locate the
Safaricom PDFs. The Safaricom FY26 press release (2026-05-07) was dropped as a duplicate: it rounds
to "41 million active customers" and adds nothing the booklet lacks.

---

## Research brief (as opened)

**The claim in dispute:** the number of M-PESA users in Kenya in early 2026.

**Competing values:**

1. **"32 million-plus monthly users."** Given as part of the Central Bank of Kenya's case that M-PESA
   is systemically critical infrastructure, alongside the statement that Safaricom controls 95% of
   retail payment transactions. Attributed to CBK governor Kamau Thugge testifying to Parliament on
   20 January 2026.
   - Asserted by: TechCabal, 28 January 2026.
   - URL on file: https://techcabal.com/2026/01/28/kenya-central-bank-m-pesa-failure-economy-collapse/

2. **"More than 37 million users."** Given in describing the reach of Ziidi Trader, the share-trading
   product launched on the M-PESA app in February 2026 — "the product gave M-PESA's more than 37
   million users a direct route into the stock market."
   - Asserted by: TechCabal, 20 July 2026.
   - URL on file: https://techcabal.com/2026/07/20/safaricom-financial-services-chief-esther-waititu-to-leave/

**A third, differently-based figure also on file**, offered here only so it is not mistaken for a
competing value: "50 million-plus users **across Africa**" — a multi-country total, not a Kenyan one.

   - Asserted by: TechCabal, 22 September 2025.
   - URL on file: https://techcabal.com/2025/09/22/m-pesa-core-upgrade-complete/

**What is not established from the material on file:** neither of the two competing figures states its
basis. The gap is roughly 5 million users across about one month, which is implausible as organic
growth, so the likeliest explanation is that the two count different things — **registered** or
**cumulative** users versus **30-day active** users, or a Kenya-only versus a wider figure. But **no
source on file says so**, and none gives an as-of date for the 37 million figure beyond the February
2026 product launch it is attached to. Both figures come from the **same outlet**, which rules out an
outlet-level methodology difference as the explanation. No Safaricom investor disclosure, annual
report or CBK statistical release is held that would give an official, defined series.

**Instruction:** these sources report different values for the size of M-PESA's Kenyan user base at
essentially the same time. Investigate the discrepancy and suggest a resolution — establishing, for
each figure, what population it counts (registered / cumulative / 30-day active), what geography it
covers, and an explicit as-of date. Prefer figures traceable to Safaricom's own reporting or to a
Central Bank of Kenya publication over press restatements.
