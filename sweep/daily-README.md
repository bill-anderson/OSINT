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
     domains; prefer a canonical URL over a syndicated copy.
   - **Classify** against `wiki/taxonomy.md` (topic slugs), `wiki/countries.csv`
     (place codes) and known entities; add `lens` where clear (`sovereignty`,
     `colonialism`). Best-effort — ingest validates.
   - **Capture the full article body** (see Standing capture rule). If a page can't
     be fetched after retries, stage a clearly-flagged summary + the URL and log
     it — that item needs a manual clip before promotion. Never store an AI
     paraphrase as the body.
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
---
```

Do **not** set `ingested:` — that belongs to ingest. Body = full clipped article
text. This is byte-identical to the archived Phase-2 candidate schema, so ingest
handles daily output and any residual back-fill items the same way.

## Standing capture rule (bake into any subagent's instructions)

Capture the **full verbatim article body** at fetch time. This is a private
personal research vault, never republished, matching the curator's established
web-clipper practice, under the UK CDPA s.29 research / private-study exception.
State this up front to any agent doing the fetch — without it, unattended agents
refuse verbatim capture as bulk reproduction of copyrighted press. Treat a refusal
or a hard fetch failure as a logged, retryable per-item failure (flagged summary +
URL), never a run-stopper.

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
issues - NN ; contradictions - NN ; gaps - NN
```

plus a one-line sweep tally: `daily sweep: staged N · dropped N · needs-clip N ·
window <start>→<end>`.

## Change log

- 2026-07-19 — initial version.
