# Daily trade-journal sweep — procedure

**Created 2026-07-19.** The daily workhorse: a lightweight, resumable acquisition
sweep of the trade journals in `wiki/trade-journals.csv`, run manually from Claude
Code. It brings the wiki's holdings up to date with journal stories published
**since the last run**, staging candidate source files into `new-queue/` for the
standard human-review-then-ingest pipeline.

This is *not* the Phase-2 back-fill (completed 2026-07-17; its apparatus is in
`sweep/archive/`), and it is *not* the digest. See **Boundaries** below.

## Boundaries — what this is and isn't

- **Acquisition, not briefing.** Output is candidate source files in `new-queue/`
  that feed the wiki. It is upstream of the base: it never writes to `raw/` or any
  `wiki/` page. The human promotes `new-queue/ → new/`; ingest is the only door to
  `raw/`. Staged frontmatter is a best-effort head-start, validated at ingest —
  never a substitute for it.
- **Journals only.** Its whole world is `wiki/trade-journals.csv`. The *universal*
  sweep of everything else — national press, think tanks, journals not in that CSV
  — is the **digest**, run from the `africa-digital-policy-watch` skill in the
  Claude app as a read-only briefing, **not** from here. The two are disjoint by
  design: this sweep is scoped to those journal domains; the digest covers
  everything except them. No double-searching, no competing procedures.
- **Distinct from `africa-digital-sources`.** That skill's trade-press scan is a
  read-only digest over its own registry. This is an acquisition sweep that files
  wiki candidates. `wiki/trade-journals.csv` is the authority for *this* sweep;
  keep it as the single source of truth and sync the skill's list to it, not the
  reverse.

## Sources — read the CSV fresh, every run

Read `wiki/trade-journals.csv` at the start of **every** run (it changes). Each
line is `URL,Title`. **Domain-scope every Exa query to these domains** — this is
also the admissibility firewall: querying the named journals directly keeps out
the unattributed content-mirrors (e.g. Russian-network `*.news-pravda.com`) and
AI-synthesis blogs that pollute open-web African queries. Never run an un-scoped
"latest Africa DPI news" query.

Per-source behaviour carried from Phase-2 (still true at a daily cadence):

- **wearetech.africa** — the Francophone / North-Africa engine; query FR (and AR
  for North-African stories), not only EN.
- **telecomreviewafrica.com, techafricanews.com** — also carry the Maghreb; the
  four SSA-oriented titles (itweb.africa, techcabal.com, connectingafrica.com,
  biometricupdate.com) thin out above the Sahara — expected, not a fault.
- **biometricupdate.com** — the digital-ID / DPI beat; highest signal for `dpi.id`.
- **techcabal.com** — best original reporting, narrow geography (mostly
  NGA/KEN/ZAF/EGY).
- **datacentresafrica.com, subtelforum.com** — infrastructure specialists (data
  centres; submarine cables) — weight for `infra.store` / `infra.connect`.
- **subtelforum.com is largely an aggregator**, and its post dates run 2–7 days
  behind the original datelines it republishes. **Key the window on subtelforum's
  own post date, not the origin dateline** — the syndicated copies are staged.
  Record the canonical origin and its date as a visible note in the staged file so
  ingest's dedup (lint #7) can collide it with a clip of the same story arriving
  from another journal's slice or from the origin publisher. *(Curator ruling,
  2026-07-19 — the general "prefer canonical over syndicated" preference does not
  apply to this domain, where it would zero the yield most runs.)*
  **`published:` carries the true origin dateline** (`date_source: source`), never
  subtelforum's lagged post date — the post date is only the *window* key, not the
  story's publication date, and storing it would seed a wrong date into the wiki.
  subtelforum is the `url`/`publisher`; the origin URL goes in the note.
- **datacentresafrica.com publishes in batches**, not daily (items cluster on
  single dates). A two-day window will often land empty here by design — a nil
  return from this domain is not a sweep failure.
- `techreviewafrica.com` was **removed** from the list (served no dates; a
  dateless PR-wire is unusable in a short, dated window).

## State — two files, one writer, resumable

All state lives on disk in `sweep/daily/`, so any interruption costs at most a
re-run of the current day. Only the run itself writes these, and never two runs at
once (concurrent CSV writes corrupt).

- **`sweep/daily/state.json`** — the high-water mark:
  `{ "last_run_completed_utc": "...", "last_run_staged": N, "last_run_window": "..." }`.
  The window is computed *from* this, so a missed day widens the next window rather
  than dropping the stories in the gap.
- **`sweep/daily/seen.csv`** — the rolling dedup ledger: `url,published,retrieved,title`.
  **Appended, never overwritten** — overwriting loses the memory the moment a run
  slips. Prune rows older than 60 days at the end of a run.

## The window — from the high-water mark, not a fixed 48h

```
window_end   = now (UTC)
window_start = min( last_run_completed_utc , now − 48h )     # always ≥48h overlap
if (window_end − window_start) > 10 days:  window_start = now − 10 days   # cap
first run (no state.json): window_start = now − 48h  (or a date you set)
```

The 48h floor gives overlap so late-indexed stories are still caught (dedup drops
the re-seen ones); the 10-day cap stops a long outage from exploding a single run.
Exa's own date filter is only a coarse pre-filter — the real window test happens at
fetch (step 5).

**The drop test is day-granular, not hour-granular.** `window_start` is computed as
a datetime, but an item is dropped only if its publication *date* is earlier than
`window_start`'s date — a story published on the morning of the start day is IN,
even though its timestamp precedes the computed hour. *(Curator ruling,
2026-07-19.)* Two reasons this is the right default: most journals publish a date,
not a timestamp, so an hour boundary is false precision on the majority of items;
and erring inclusive is free, because `seen.csv` dedups anything the overlap
re-catches, whereas a story dropped at the hour boundary is lost until someone
notices. The cost of the loose edge is a duplicate; the cost of the tight edge is a
gap.

**Expect the newest ~48h to be under-indexed.** Every domain in the 2026-07-19 run
independently returned nothing dated within about two days of the run. This is
what the 48h overlap floor exists to absorb — the next run recovers those items —
so it is expected behaviour, not a fault to chase. Where a domain's listing can be
fetched live (cache-busted, per step 3a), it recovers in-window items the index
missed.

**But check the calendar before blaming the index.** The second run of 2026-07-19
tested that first run's lag hypothesis directly and it did not hold: 2026-07-17 was
a **Friday**, and five domains independently confirmed via live listings that they
published nothing on the Saturday and Sunday. **These journals are weekday
publishers.** A window whose tail is a weekend will look identical to an
index-lagged window, and the two demand opposite responses — a lagged window is
recovered by re-running, an empty weekend never is. Distinguish them by evidence,
not assumption: a date-archive 404 whose sibling days resolve, or a live listing
whose newest timestamp is Friday, is positive evidence of *no publication*.
Connecting Africa's listing showed the same weekend gap on 11/12 Jul, 4/5 Jul and
27/28 Jun. Record which of the two you actually established — the first run's
`state.json` note asserted lag where the cause was mostly the weekend, and the
follow-up run it invited returned nine items that were all **search-recall** misses
from the day *already* swept, not newly-indexed weekend items.

## Procedure

0. **Recover state.** Read `sweep/daily/state.json` and `sweep/daily/seen.csv`.
   First run: initialise both (empty seen ledger; window per above).
1. **Read sources.** Load `wiki/trade-journals.csv` fresh.
2. **Compute the window** from the high-water mark (above).
3. **Search.** For each journal domain, run the two daily clusters (D1, D2 below),
   domain-scoped `web_search_exa`, date-bounded to the window, `numResults` ~25.
   Run the FR/AR variants on the Maghreb-facing domains. **No month-slicing** — a
   daily window is already recency; the Phase-2 slicing machinery does not carry
   over.
3a. **Then fetch the domain's own front page / latest-news listing** and reconcile
   it against the search hits. **Search recall alone is not sufficient.** In the
   2026-07-19 run this step was decisive: on techafricanews.com the four queries
   surfaced only 2 of ~20 in-window articles (an 85% miss, recovered by
   reconstructing article URLs from headline slugs on the listing page), and on
   techcabal.com only 2 of 8. The second run of 2026-07-19 went further: across all
   four productive domains, Exa search contributed **zero** staged items and all
   nine came from listing pages. **Treat the listing as the primary instrument and
   search as the fallback**, not the other way round.

   **Cache-bust every listing fetch.** Exa serves badly stale listing caches that
   silently hide the whole window — subtelforum's front page dated "July 14" with
   listings at "March 28"; telecomreviewafrica attaching "1 day ago" labels to Feb
   2026 datelines; itweb's front page dated 8 Jul; connectingafrica's bare
   `/latest-news` missing a known 07-17 article. Appending a query string forces a
   live crawl and fixed every one: `?nocache=YYYYMMDD` generally, `?page=1` on
   connectingafrica.com, and **`?p=1&nocache=YYYYMMDD` on itweb.africa — `?p=1`
   alone is NOT sufficient**, and on 2026-07-20 it still served a stale 17-Jul
   ceiling that hid four of that domain's eight in-window items. **This supersedes the earlier
   blanket "cannot be used this way" warning on datacentresafrica.com,
   connectingafrica.com and telecomreviewafrica.com — their listings *are* usable,
   but only via a cache-busted URL.** Two residual cautions stand: a stale
   *header* clock does not imply stale per-article date stamps (datacentresafrica's
   article dates were sound under a stale header), and wearetech.africa's homepage
   hero slot is editorially curated rather than chronological — use its aggregate
   `/fr/fils/actualites` and EN feeds. *(Added 2026-07-19; extended 2026-07-19 run 2.)*

   **Known-good and known-dead listing paths** *(established 2026-07-20 — save the
   404s)*:
   - wearetech.africa — **`/en/fils-uk` is DEAD** (`CRAWL_NOT_FOUND`); use `/en/news`
     and `/en/fils-uk/brief`. Critically, **the `brèves` tree is NOT a child of the
     `/fr/fils/actualites` aggregate** — fetch `/fr/fils/breves`,
     `/fr/fils/breves/breves-simple` and `/fr/fils/breves/breves-une` separately.
     On 2026-07-20 the brèves feeds held 5 of the domain's 9 in-window items,
     including one FR original that predated its EN twin by four hours. A run that
     treats the actualites aggregate as complete misses the whole tree.
   - connectingafrica.com — sections nest under parents. Dead: `/data-centers`,
     `/policy-regulation`, `/mobile-money`. Live: `/connectivity/data-centers`,
     `/enterprise-networking/regulation`, `/fintech/mobile-money`, `/fintech`.
   - itweb.africa / itweb.co.za — **`/section/all` does not resolve on either.**

   **Date archives are a positive-evidence completeness check** where a domain uses
   dated URLs: on techcabal.com and techafricanews.com, `/YYYY/MM/DD/` resolves for
   days with output and 404s for days without, so a 404 whose sibling days work is
   evidence of *no publication*, not of a fetch problem. Conversely, **ID probing
   does not work on telecomreviewafrica.com** — IDs above the maximum silently fall
   back to recent articles instead of 404ing, so probing can confirm the ceiling but
   never discover new items. Its **archive date column has also been seen running one
   day BEHIND the article pages** (2026-07-20) — the inverse of the forward-drift
   recorded above. Both directions of drift are possible, so on any boundary case
   take the date from the article page and never from a listing.

   **Listing and search are mutual cross-checks, not primary and fallback.** The
   "listing over search" ruling holds on yield — across four runs search has
   contributed near-zero staged items, and on 2026-07-20 it missed ~96% of
   techafricanews' in-window output and 100% of techcabal's, biometricupdate's and
   wearetech's. But on 2026-07-20 it was an Exa *search* hit that exposed a stale
   itweb.africa listing which would otherwise have returned a false nil for the
   domain. **Run both, and treat a search hit absent from the listing as evidence
   the listing is stale — not as a stray.** *(Amended 2026-07-20.)*
4. **Dedup — conservative.** Drop a hit only if it is **(a)** an exact URL already
   in `seen.csv`, in `raw/` frontmatter, or in a current `new-queue/` candidate; or
   **(b)** confidently the same outlet's re-crawl of a story already held.
   Everything else survives — *same event, different outlet* and *same story, later
   date (an update)* both go through; ingest's lint #7 adjudicates with full text.
   Dedup within the run too. Log every drop to
   `sweep/daily/drop-log-YYYY-MM-DD.csv` (`url,title,published,reason,kept_twin`) —
   nothing dropped silently.
5. **Fetch, verify, classify.** `web_fetch_exa` each survivor:
   - **Establish `published` from the page** — the article dateline/body, or a
     `/YYYY/MM/DD/` date in the URL path (a reliable server-assigned anchor). Never
     trust the search result's date (Phase-2: only ~23% of "in-window" hits truly
     were). Watch for live-clock header dates that render *today*. Fall back
     (ingested → created) only if genuinely undated, setting `date_source: proxy`
     and `date_precision` honestly.
   - **Drop out-of-window** items (published before `window_start`) — log as
     `out-of-window`.
   - **Admissibility screen** — skip second-hand / AI syntheses and content-mirror
     domains; prefer a canonical URL over a syndicated copy (**except
     subtelforum.com** — see *Sources*, where the syndicated copy is staged). Any
     domain on **`sweep/drop-list.csv`** (known mirrors / influence-network sites,
     e.g. `rca.news-pravda.com`) is **never staged** — log the drop as
     **`inadmissible-origin`** (not `off-topic`) and **seek the original instead**,
     staging that. If real reporting exists only on such a mirror and no original can
     be found, **drop it** — do not stage it; where it bears on a page, note the
     absence there, dated. There is no gaps register.
     **Newsletter/digest editions** (e.g. **TechCabal Daily**) are a digest of others'
     reporting — **dropped outright, never lead-mined**; only a publisher's standalone
     articles are admitted.
   - **Classify** against `wiki/taxonomy.md` (topic slugs), `wiki/countries.csv`
     (place codes) and known entities; add `lens` where clear (`sovereignty`,
     `colonialism`). Best-effort — ingest validates.
   - **Capture the full verbatim article body** — the whole article text as
     returned by `web_fetch_exa`, never the `web_search_exa` snippet/highlights or
     any shortened rendering. Set `body_completeness: full`. Sanity-check the
     captured length against the article — a body far shorter than the source is a
     truncated capture, so re-fetch. If the page is behind a **paywall that still
     serves a free lede** (HTTP 200, first 1–3 paragraphs), stage the verbatim free
     portion with `body_completeness: paywalled` — but **only where that free
     content, excluding the title, adds value**; drop a headline-only item rather
     than stage a stub. A `paywalled` item needs a manual subscriber clip before
     promotion where its payload depends on the withheld body; one whose payload
     sits in the free lede promotes normally. If the full text is otherwise
     genuinely unavailable (repeated fetch failure, or a hard paywall yielding
     nothing usable), stage the verbatim portion available (or, if none, a one-line
     note of what failed) + the URL, set `body_completeness: excerpt`, flag it for a
     manual clip before promotion, and log it. **Never** store an AI summary or
     paraphrase as the body (see Standing capture rule).
6. **Stage — flat, no subfolders.** Write each survivor to
   `new-queue/YYYY-MM-DD-slug.md` (publication-date prefix; no per-journal or
   per-country folders) with the frontmatter schema below and the full body.
7. **Manifest + state — the last act.** Write `sweep/daily/manifest-YYYY-MM-DD.md`
   (one line per staged item: `published | topics | places | source | title |
   why-new`). Append every staged item to `seen.csv`; prune rows >60 days.
   **Last**, set `state.json.last_run_completed_utc = window_end`. Doing this last
   means an interrupted run leaves the high-water mark un-advanced, so re-running
   resumes cleanly.

## Candidate frontmatter (matches the ingest contract)

```yaml
---
type: source
title: ...
url: https://...
publisher: ...                 # journal Title from trade-journals.csv
published: 2026-07-18
date_precision: day            # day | month | year
date_source: source            # source | proxy
places: [KEN]                  # from countries.csv; [] if genuinely none
topics: [dpi.pay, finance.new] # from taxonomy.md slugs
entities: [[m-pesa]]           # best-effort
lens: []                       # sovereignty | colonialism, where clear
retrieved: 2026-07-19          # this sweep's fetch date
sweep_batch: daily-2026-07-19  # this run
body_completeness: full        # full | excerpt | paywalled — 'excerpt' = fetch-fail/unavailable; 'paywalled' = HTTP-200 paywall, free-lede only (keep ONLY if free body excl. title adds value; manual clip before promotion if payload needs the withheld body); never a summary
---
```

Do **not** set `ingested:` — that belongs to ingest. Body = the **full verbatim
article text** (the whole article), captured from the fetched page — never the
search-result excerpt or an AI summary. This is byte-identical to the archived
Phase-2 candidate schema, so ingest handles daily output and any residual back-fill
items the same way.

## Standing capture rule (bake into any subagent's instructions)

Capture the **full verbatim article body** at fetch time. This is a private
personal research vault, never republished, matching the curator's established
web-clipper practice, under the UK CDPA s.29 research / private-study exception.
State this up front to any agent doing the fetch — without it, unattended agents
refuse verbatim capture as bulk reproduction of copyrighted press. The stored body
is always the source's own words — the full text where the page yields it, a
verbatim partial where it doesn't; the `web_search_exa` excerpt or an AI paraphrase
is never an acceptable body. Treat a refusal or a hard fetch failure as a logged,
retryable per-item failure — stage the verbatim partial (or a one-line failure
note) + the URL with `body_completeness: excerpt`, routed to manual clip — never a
run-stopper. A **paywall that still serves a free lede** is a distinct case: keep the
verbatim free portion as `body_completeness: paywalled`, but **only where the free
content excluding the title adds value** (drop headline-only stubs), with a manual
subscriber clip before promotion where the payload depends on the withheld body.

## Daily query clusters (self-contained)

The journals are on-topic by nature, so two broad angles per domain suffice. This
sweep loops *sources*, not countries — place tags fall out of classification.

**D1 — DPI & governance**
EN: "digital public infrastructure, digital ID, e-government, data protection, data
governance, digital payments or mobile money news in Africa"
FR: "identité numérique, infrastructure publique numérique, administration
électronique, protection des données, paiement mobile en Afrique"

**D2 — Infrastructure & economy**
EN: "telecom, connectivity, subsea cable, data centre, cloud, fintech, AI or
cybersecurity news in Africa"
FR: "télécom, connectivité, câble sous-marin, centre de données, cloud, fintech,
intelligence artificielle en Afrique"

(AR variants for North-African stories: translate the same phrasings.) Keep these
fixed so runs stay comparable; if you tune them, date the change in the log below.

## Running it

Manual, from Claude Code, one prompt:

> Run the daily trade-journal sweep per `sweep/daily-README.md`.

Cheap by design: ~9 domains × 2 clusters (+ a few FR/AR variants) ≈ 20 searches,
then one fetch per survivor. Run it **inline in the main session**, or fan out at
most **one flat agent per journal** — never per-query or per-recovery micro-agents
(the 200-subagent session cap does not reset except on a new session). Weekends and
outages need no special handling: the high-water window absorbs the gap.

Failure modes, each with its own response: **529** = Anthropic overloaded (back off
and retry; drop concurrency if they cluster); **401 "run /login"** = local auth
expiry (unrelated); **repeated fetch failures on one domain** = flag those items
for manual clip and carry on. A dead run costs nothing — `state.json` only advances
as the final act.

## End every run with the standing status line

Per CLAUDE.md, the last line is the standing register tally:

```
contradictions - NN ; acquisitions - NN ; decisions logged - NN
```

plus a one-line sweep tally: `daily sweep: staged N · dropped N · needs-clip N ·
window <start>→<end>`.

## Change log

- 2026-07-19 — initial version.
- 2026-07-19 — first live run. Added, all from that run's evidence: day-granular
  drop test (curator ruling); subtelforum.com aggregator treatment — key on its own
  post date, stage the syndicated copy, record the canonical origin (curator
  ruling); step 3a front-page reconciliation, after search alone missed 85% of one
  domain's in-window output; datacentresafrica.com batch-publishing note; the
  expected index lag on the newest ~48h. Query clusters D1/D2 unchanged.
- 2026-07-19 — clarified the subtelforum ruling: `published:` carries the true
  origin dateline (post date is the window key only), and cross-referenced the
  carve-out from step 5's canonical-over-syndicated screen.
- 2026-07-19 — full-body fidelity made explicit: added `body_completeness` to the
  frontmatter and required the whole verbatim article (from `web_fetch_exa`, not the
  search excerpt); excerpt only for a genuine paywall/fetch-fail, flagged for clip.
- 2026-07-20 — ISSUE-011 ruling (Bill): added a third `body_completeness` state,
  **`paywalled`**, for HTTP-200 paywalls that serve only a free lede. Kept **only
  where the free content excluding the title adds value** (headline-only items are
  dropped, not staged); manual subscriber clip before promotion where the payload
  depends on the withheld body. Mirrored in CLAUDE.md (source frontmatter vocab +
  filing step 3).
- 2026-07-20 — third run. 32 staged, all Mon 07-20; Sat/Sun nil across all ten
  domains with positive evidence from every one (date-archive 404s with resolving
  siblings, or listing ceilings at Fri 07-17). Folded in: **itweb.africa needs
  `?p=1&nocache=`, not `?p=1`** (a stale listing nearly produced a false nil);
  **listing and search are mutual cross-checks** — search still yields near-nothing
  but it is what exposed that stale listing; **known-good/known-dead listing paths**
  for wearetech (the `brèves` tree is a separate fetch and held 5 of 9 items;
  `/en/fils-uk` is dead), connectingafrica (sections nest under parents) and itweb
  (`/section/all` dead); **telecomreviewafrica's archive date column can lag the
  article page by a day**, the inverse of the recorded forward-drift. Query clusters
  D1/D2 unchanged.
- 2026-07-19 (run 2) — second run same day, to test run 1's index-lag hypothesis.
  Findings folded in above: **the weekend caveat** (07-17 was a Friday and five
  domains independently confirmed no weekend publishing — a weekend tail and an
  index-lagged tail look identical but demand opposite responses); **listing over
  search** (search contributed zero of nine staged items; all came from front-page
  reconciliation, so step 3a is now the primary instrument); **cache-busting**
  (`?nocache=`, `?page=1`, `?p=1`) which forced live crawls and partially overturns
  the standing "unreliable listing" warning on datacentresafrica.com,
  connectingafrica.com and telecomreviewafrica.com; **date archives as positive
  evidence** of non-publication; and **ID probing does not work** on
  telecomreviewafrica.com. Query clusters D1/D2 unchanged.
