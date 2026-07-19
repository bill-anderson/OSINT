# Daily sweep manifest — run `daily-2026-07-19b`

**Window:** 2026-07-17T19:31Z → 2026-07-19T19:31Z (48h floor; day-granular drop
test, so 2026-07-17 is IN).
**Run:** second run of 2026-07-19, 3.5h after `daily-2026-07-19` (which completed
16:00Z). Its stated purpose was to recover the 07-18/07-19 items the first run
attributed to Exa index lag.
**Staged: 9 · dropped: 96 · needs-clip: 0 · nil-return domains: 4 of 9.**

## Staged

| published | topics | places | source | title | why-new |
|---|---|---|---|---|---|
| 2026-07-17 | tech.industry | XGL | Tech Africa News | Truecaller Reports Lower Q2 Sales, Signals Recovery Across Core Businesses | search-recall miss in run 1; recovered from homepage |
| 2026-07-17 | infra.energy, finance.new, capacity.training | KEN | Tech Africa News | KCB and ePureMotion Expand Electric Mobility with Nairobi PSV Charging Station | search-recall miss in run 1; recovered from homepage |
| 2026-07-17 | tech.innovate, finance.new | XAF | TechCabal | Quick Fire 🔥 with Helina Bischoff | search-recall miss in run 1; recovered from homepage |
| 2026-07-17 | finance.new | NGA | TechCabal | Iron Capital named Nigeria's best investment bank for financing solutions at the 2026 Euromoney Awards | search-recall miss in run 1; recovered from homepage |
| 2026-07-17 | tech.ai, tech.innovate | MAR | wearetech.africa | Avec Qantev, le Marocain Tarik Dadi traque la fraude à l'assurance santé | FR tech-stars section not reached by run 1 |
| 2026-07-17 | tech.industry, dpi.pay | SEN | wearetech.africa | Senegal: Yango Expands Into Corporate Mobility | EN briefs feed not reached by run 1 |
| 2026-07-17 | gov.legislate, infra.connect | MWI | ITWeb Africa | Malawi enforces telecom tariff compliance | search-recall miss in run 1; recovered from homepage |
| 2026-07-17 | dpi.pay, include.access | ZMB | ITWeb Africa | Airtel Money Zambia appoints new MD | search-recall miss in run 1; recovered from homepage |
| 2026-07-17 | tech.ai, digital.rural, capacity.training, capacity.research | MWI | ITWeb Africa | Malawi university deploys AI fertigation technology | search-recall miss in run 1; recovered from homepage |

All nine are **2026-07-17** — i.e. every one is a *recall* miss from run 1, not a
newly-published item. See the finding below.

## Per-domain yield

| domain | staged | outcome |
|---|---|---|
| techafricanews.com | 2 | homepage surfaced ~16 in-window items against search's 0 |
| techcabal.com | 2 | search returned zero in-window URLs; homepage was the whole game |
| wearetech.africa | 2 | aggregate FR/EN feeds reliable; homepage hero is curated, not chronological |
| itweb.africa | 3 | all three invisible to search; recovered only by front-page reconciliation |
| biometricupdate.com | 0 | its sole in-window Africa item already held; all 07-17/18 output non-Africa |
| subtelforum.com | 0 | both Africa items already held; nothing posted since 07-17 |
| telecomreviewafrica.com | 0 | newest article ID 28997 is a publisher webinar promo (dropped); 28991/28992 held |
| connectingafrica.com | 0 | single 07-17 item already held; publishes weekdays only |
| datacentresafrica.com | 0 | newest item 07-09 — batch cadence, as expected |

## Principal finding — the window's last two days are a WEEKEND, not index lag

**2026-07-17 is a Friday; 07-18 and 07-19 are Saturday and Sunday.** Run 1's
`state.json` note attributed the empty 07-18/07-19 to Exa index lag and predicted
this run would recover those items. It did not, because there are no such items:
five domains independently confirmed via *live* (cache-busted) listings that they
published nothing at the weekend —

- **wearetech.africa** — newest "Posted On" anywhere on the site is Fri 17 Jul 15:15.
- **techcabal.com** — `/2026/07/17/` and `/2026/07/18/` date archives resolve; `/2026/07/19/` 404s while its siblings work, which is positive evidence of no Sunday output.
- **techafricanews.com** — homepage newest item 07-17; `/2026/07/18/` and `/2026/07/19/` archives 404.
- **connectingafrica.com** — no output on 11/12 Jul, 4/5 Jul or 27/28 Jun either, all Sat/Sun.
- **subtelforum.com** — eight posts on 07-17, then nothing.

Only **itweb.africa** could not distinguish weekend gap from lag (Exa's crawl of
it tops out at 07-17 and no listing path resolves).

So run 1's yield was not lag-limited in the way its note recorded. The real
deficiency was **search recall**, and this run's entire yield came from step 3a.

## Method findings worth carrying into the procedure

1. **Front-page reconciliation was the sole productive route.** Across all four
   productive domains, Exa search contributed **zero** staged items. Every one of
   the nine came from a listing page. Step 3a is not a completeness check on
   search — on this evidence it is the primary instrument and search is the
   fallback.
2. **Cache-busting defeats Exa's stale listing caches.** Three domains served
   badly stale caches that would have silently hidden the entire window
   (subtelforum front page dated "July 14", listings "March 28";
   telecomreviewafrica attaching "1 day ago" labels to Feb 2026 datelines; itweb
   front page dated 8 Jul). Appending a query string — `?nocache=YYYYMMDD`,
   `?page=1`, `?p=1` — forced a live crawl in each case. **This partially
   overturns the standing "unreliable listing" warning on
   telecomreviewafrica.com, connectingafrica.com and datacentresafrica.com: their
   listings are usable, but only via a cache-busted URL.**
3. **Exa domain-scoping failed outright on two domains** (datacentresafrica.com,
   connectingafrica.com): both clusters returned mostly other publishers, and the
   oversized responses spilled to disk and cost a grep round-trip.
4. **ID probing does not work on telecomreviewafrica.com** — IDs above the
   maximum silently fall back to recent articles rather than 404ing, so probing
   can confirm the ceiling but never discover new items.
5. **datacentresafrica.com's live-clock defect is header-only** — its per-article
   date stamps are independent of the stale header and were internally consistent
   across two separately-rendered modules.

## Flags

- **Scope-marginal stagings, left for ingest to adjudicate** (the sweep does not
  own the scope call): the Truecaller Q2 results (XGL, a Swedish company's
  earnings), the Helina Bischoff personality Q&A, and the Iron Capital award
  press release — the last two carry no digital-governance angle beyond the
  publisher's beat. Precedent from run 1 was to stage comparable press-room items.
- **Advertorial/sponsored content was dropped by three agents** under three
  different descriptions (ITWeb "Companies in the news" award PR ×1, undated
  SPONSORED opinion ×1, Telecom Review's own webinar promo ×1). Consistent calls,
  but made ad hoc — raised as ISSUE-021.
- **Cross-domain leakage:** an itweb.africa listing surfaced *"SAPO upgrades
  payment platform to 'match' industry standards"* (2026-07-17, ZAF, `dpi.pay`)
  whose canonical URL is **itweb.co.za** — a domain on no slice's list. Raised as
  ISSUE-020.
- **Date discrepancy on telecomreviewafrica.com:** article pages report 07-17 for
  IDs 28991/28992 while section archives date them 07-16 (likely a timezone
  boundary). The two files already in `raw/` use `published: 2026-07-17`. Noted,
  not actioned — a one-day ambiguity below the threshold for a contradiction item.
