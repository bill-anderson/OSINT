---
type: review-research
id: zimbabwe-zimra-tarms-date
generated: 2026-07-20
method: Exa search + fetch (live re-fetch of zimra.co.zw news items; Wayback CDX)
status: DO-NOT-INGEST (quarantined synthesis — never cited from a wiki page)
---

# ZIMRA / TaRMS taxpayer-registration page — publication date

## Verdict

**Published January 2026 (month precision).** Hard outer bound from evidence:
**2 December 2025 – 30 January 2026**.

The year on file (**2025**, padded to `2025-01-01`) is **wrong by roughly twelve
months**. It was the clipper's inference from an incorrect anchor.

## Step 1 — the page really is undated

Re-fetched `https://www.zimra.co.zw/news/2346:taxpayer-registration` twice, by two
different fetchers. **No dateline, byline, timestamp or visible metadata.** Unlike the
four other items in this pass, the date was *not* lost in the clip — ZIMRA's news CMS
does not render dates on article pages at all. The listing page (`/news`) is likewise
undated.

So the "re-fetch first" prior was correct to apply, and it returned a clean negative.

## Step 2 — the news-ID sequence is monotonic in publication date

The clipper's *method* was sound; its *anchor* was not. Fetching neighbouring IDs and
reading each for an in-body date gives a consistent, strictly monotonic ID→date mapping:

| ID | Item | Date evidence in body |
|---|---|---|
| 2313 | ZIMRA's Stellar Performance in 2024 | H2-2024 results, "looks ahead to 2025" → early 2025 |
| 2315 | Southern Africa Inter-Revenue Games | games held 18–20 April 2025 |
| 2316 | ZITF breakfast meeting | held 24 April 2025 |
| 2321 | Mutare clean-up | titled "June 2025" |
| 2324 | Chinamasa tells Parliament | dateline **"Harare, 12 July 2025"** |
| 2340 | Beitbridge contraband seizure | incident 31 October 2025 |
| 2343 | Non-FDS Calculation Method | **"published on 25/112025"** (i.e. 25 Nov 2025) |
| 2344 | Pension Fund 2nd AGM | AGM held **02 December 2025** |
| 2345 | International Customs Day preview | prospective — "**will** join … on 26 January 2026"; 2025 enforcement reviewed in past tense |
| **2346** | **Taxpayer Registration (target)** | **— none —** |
| 2347 | Data Privacy Week | Data Privacy Week (26–30 Jan 2026 in 2026) |
| 2348 | Customs Day at Plumtree | retrospective — "**On** January 26, 2026 …" |
| 2349 | Customs Day community piece | retrospective — same event |
| 2355 | Mphoengs Border Post upgrade | commissioned **19 April 2026** |

Twelve independent anchors, no inversions. The mapping holds.

*(Note: the `/news` listing's **display order** is not ID order and is not
chronological — it appears to be a CMS ordering quirk. Only the IDs are ordered. Reading
the display order as chronological would mislead; reading the IDs does not.)*

## Step 3 — the bracket

2346 sits strictly between **2345** and **2347**:

- **Lower bound.** 2344 reports an event of 2 Dec 2025, so 2344 ≥ 2025-12-02, and
  2346 > 2344. 2345 is a Customs Day *preview* reviewing "ZIMRA's enforcement operations
  in 2025" in the past tense — written after year-end and before 26 Jan 2026, so
  January 2026.
- **Upper bound.** 2347 is a Data Privacy Week piece (that week fell ~26–30 Jan 2026),
  and 2348/2349 both report the 26 Jan 2026 Customs Day retrospectively. So
  2346 ≤ ~2026-01-30.

**Therefore: January 2026**, and most likely the second half of that month — after the
Customs Day preview, before the Data Privacy Week piece.

Corroborating, non-decisive: the earliest Wayback capture of the URL is
**2026-05-10** (`20260510110027`, HTTP 200) — consistent with, but far looser than, the
ID bracket.

## Step 4 — where the old "post-February 2024" bound came from

The wiki's held reasoning anchored on "ID 2294 = 29 Feb 2024 (TaRMS Release 2)", giving
only "post-February 2024" and an inferred bare 2025. That anchor is real but **distant**:
52 IDs below the target, spanning ~23 months. The nearer anchors above (2344/2345 vs
2347/2348, four IDs either side) collapse the range from ~26 months to ~8 weeks.

The lesson is that the ID method was never the weak part — the **anchor distance** was.

## Incidental findings (not part of this item)

- **ID 2347 is in-scope and worth holding.** ZIMRA has **two registered Data Protection
  Officers** (Tinashe C. Makambaire, Margaret Chirimumimba), appointed under the Cyber and
  Data Protection Act [Chapter 12:07] and **SI 155 of 2024**, sitting in the Corporate Risk
  and Compliance Division and acting as official liaison with **POTRAZ**. This is a concrete
  named instance of the controller/DPO registration drive already recorded on
  `zimbabwe--gov-protect` (570→721 controllers, 500→~1,200 DPOs). **Clipped to `new/`.**
- **ID 2352 — "ZIMRA Privacy Notice"** — a full first-party privacy notice stating ZIMRA is
  **licensed as a Data Controller** with the DPA under the Cyber and Data Protection Act.
  Also in scope; **not clipped** (only partially fetched here). Reported for `acquisitions.md`.
- **The held body of the target clip is slightly incomplete.** The live page carries two
  registration steps the held clip lacks ("Activate Account" — emailed activation link;
  "Log In" — 2FA code to email and phone). Conversely the held clip's AEO line reads as
  merged prose. A fidelity re-capture would complete the record; flagged, not actioned
  (this worker may not write to `raw/`).
