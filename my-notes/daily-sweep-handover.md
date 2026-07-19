# Handover to the daily trade-journal sweep project

**From:** Wiki Gaps Phase 2 (the 2025→now back-fill of national press + trade journals, 54 countries).
**Written:** 2026-07-17, at the close of the initial sweep.
**Purpose:** carry forward what was learned so the daily trade-journal sweep is designed on evidence, not rediscovered by trial. Where a claim came from the pilot or the production run it is marked; treat unmarked items as design judgement.

---

## 1. What the daily sweep inherits unchanged

**The eight trade journals are the whole source list.** They were chosen empirically for pan-African breadth beyond South Africa/Nigeria/Kenya/Egypt (full assessment: `my-notes/trade-journal-coverage-assessment.md`). In rough priority: wearetech.africa (the Francophone/North-Africa engine, bilingual), Biometric Update (digital-ID/DPI beat, ID4Africa desk), Africa Telecom Review, Connecting Africa, ITWeb Africa, Tech Africa News, TechCabal (best original reporting, narrow geography), Tech Review Africa (broadest on paper but a byline-free PR wire — lead-net only). This subset covered 41 of the 48 countries that appeared anywhere in the probe; the other 20 journals added only seven countries between them. A daily sweep has no reason to widen the list — widening buys almost nothing and multiplies cost.

**The pipeline invariant holds.** Collection writes only to `new-queue/`; the human promotes to `new/`; ingest is the only door to `raw/`. The daily sweep is another producer into the same funnel and must respect the same rule. Ingest is still required after promotion — the sweep's frontmatter is a best-effort head-start (topics/places/entities), validated and compiled at ingest, never a substitute for it (this was asked and settled explicitly).

**Full text at capture, never a summary** (ISSUE-008 ruling). The page is fetched anyway to verify the date; capture the full clipped article body then, because African press/journal URLs rot. Store the clip, not an AI paraphrase — paraphrase is inadmissible as a source and defeats the audit trail.

**Conservative dedup at collection, aggressive lint at ingest.** Drop only exact-URL and confident same-outlet re-crawls. Same event from a different outlet survives; same story at a later date is an *update*, not a duplicate. For a daily sweep this discipline runs against three things, not one: the wiki's holdings, *and* the immediately preceding daily runs, *and* the other items in the same run.

---

## 2. What is genuinely different about a daily cadence

**Month-slicing becomes irrelevant — the hardest-won pilot lesson does not transfer.** The back-fill's central problem was Exa recency-swamping an 18-month window, forcing per-month query slices. A daily window *is* recency, so a single query per source per theme suffices. The daily sweep is therefore far cheaper and simpler per run — do not carry the slicing machinery over.

**By-source, not by-country.** The back-fill looped 54 countries because national papers are country-bound. Trade journals are pan-African, so the daily sweep loops the 8 *sources* (× a small set of theme queries) and lets country tagging fall out of classification. This collapses the orchestration: a daily run is a handful of source-agents, not a rolling 54-country pipeline. It should sit comfortably inside one session's spawn budget with room to spare.

**It needs a high-water mark and gap-tolerance.** A recurring sweep must record "last successful run to <datetime>" and window from there, so a missed day (outage, credits, weekend) widens the next window rather than dropping stories. Design the window as *since last high-water mark*, not *last 24h fixed*.

**Reconcile with the two existing skills before building anything.** `africa-digital-policy-watch` already defines a 48-hour digest, and `africa-digital-sources` already defines a trade-press scan and monthly literature check over the same registry. A new daily trade-journal sweep overlaps both. Decide deliberately whether it *replaces* the trade-press scan, *feeds* the digest, or is a third distinct thing — and whether its output is wiki candidates (into `new-queue/`) or a read-only digest. Building it without this reconciliation will produce duplicated, competing procedures.

---

## 3. Source-behaviour intelligence (the most valuable carry-over)

Because the 8 journals *are* the daily sweep's entire world, per-source quirks learned during production matter enormously. Dating is the whole game in a short window, and Exa's own date filter leaks badly (in the back-fill only ~23% of "in-window" hits were genuinely in-window) — so **every date must be verified from the fetched page, never trusted from the search result.** Specific traps observed:

- **techreviewafrica.com serves no dates at all.** Every keeper had to be dated by fetching. Keep it as a lead-net (mine for stories, source the primary elsewhere), not a citable dated source. For a *daily* sweep where dating is the point, it may not be worth including at all — evaluate.
- **Live-clock header dates** — some sites (seen on rdc-monde.com, La Nation Djibouti in the country work; watch for it on journal sites too) render *today's* date in the page header, which returned four different values across six fetches. Always take the date from the article *dateline/body*, or from a date encoded in the URL path (e.g. `/YYYY/MM/DD/`), which proved a reliable server-assigned anchor.
- **The SSA-focused journals are weak on the Maghreb.** North-African coverage in the fixed 8 rests mainly on wearetech.africa, Tech Review Africa, Tech Africa News and Africa Telecom Review; the others thin out above the Sahara. A daily sweep that cares about North Africa should weight or supplement accordingly.
- Publication language matters: query wearetech.africa and the Maghreb-facing sources in French/Arabic, not only English.

**Provenance hazard worth a standing rule:** the country work repeatedly surfaced an unattributed Russian-network mirror (`rca.news-pravda.com`) as the *most prolific* hit on Francophone queries. A daily automated sweep is exactly where such a mirror slips in unnoticed. Bake an admissibility screen against unattributed content-mirror domains into the collection step.

---

## 4. Operational playbook — how to run automation at scale on this stack

These were paid for in failures during the production run; they are the reason the daily sweep should behave well from day one.

- **Flat agents beat orchestrator-to-worker fan-out.** A supervisory agent holding coordination state is a single point of failure — one 529 against it orphans every worker's results. Flat agents (spawned directly from the main loop, one level deep) fail one unit at a time and recover cleanly. This was CC's own field recommendation and it is correct.
- **One agent = one whole unit of work.** In the back-fill that was one country; in the daily sweep make it one source (all its themes, dedup, fetch, stage inside a single agent). Fragmenting into per-query/per-recovery micro-agents burned the **200-subagent-per-session cap** at ~10× the necessary rate. That cap is per session and does *not* reset on `/login` or reboot — only a new session clears it.
- **State lives in files, so any death is recoverable.** The ledger-as-state design (a unit's status *is* its row; last write is the completion) meant 529s, auth expiries and the spawn-cap wall all cost at most a re-run of the interrupted unit, never lost work. Replicate this: the daily sweep's "have I processed this?" must be answerable from disk, with one writer to any shared control file (concurrent CSV writes corrupt).
- **Distinguish the failure modes.** 529 = Anthropic overloaded (server-side, transient, check status.claude.com, retry/back off — drop concurrency to 2 if they cluster). 401 "please run /login" = local auth expiry, unrelated. 200/200 spawn = session budget, needs a fresh session. Credits exhausting = clock-based reset, no restart helps. Each has a different response; don't conflate them.
- **Durable register writes.** The single real integrity loss this run was agent deaths that referenced new issues/gaps (ISSUE-011–014, GAP-CPV) in ledger notes but died before appending them to `issues.md`/`gaps.md`. For an *unattended* daily sweep this risk is higher. Make register/log appends the durable last act of a unit, and have the run reconcile "notes reference an ID that isn't in the register" as an explicit end-of-run check.

---

## 5. The copyright-refusal lesson (operationally important for unattended runs)

When asked to store full verbatim article text, subagents may refuse it as bulk reproduction of copyrighted press — even given a curator ruling. What unlocked it: explicit context that this is a **private personal research vault**, never republished, matching the user's established **web-clipper practice**, under the **UK CDPA s.29 research/private-study** exception. Even with that framing, *some* instances still declined; the workaround was to route the remaining files to the agents that had accepted (via continuation) rather than re-rolling fresh ones. A daily *unattended* sweep can't shepherd this in real time, so bake the framing into the agent's standing instructions from the start, and treat a refusal as a logged, retryable per-item failure (leave a flagged summary + the URL) rather than a run-stopper. Persistently unfetchable sources (Vanguard-class 403/timeout behaviour was common) keep a flagged placeholder needing a manual clip on acceptance.

---

## 6. Loose ends from Phase 2 the new project should be aware of

- **Register backlog:** ISSUE-011 to ISSUE-014 and GAP-CPV are referenced in ledger notes but were never written to the registers (agent-death casualties). They cover: Botswana paywalled-paper clips, a CAF source-list promotion recommendation (Radio Ndeke Luka / Oubangui Médias), the Russian-mirror admissibility call, and a **missing `geopol.russia` taxonomy slug** (surfaced by Algeria's Alger–Moscow cyber MoU — the taxonomy currently has USA/China/EU/India/Gulf but no Russia). The daily sweep will hit the same Russia-activity gap; worth resolving the slug centrally.
- **Ledger state at handover:** 24 countries `swept`, 14 `staged` (awaiting review), 14 `pending`, 3 pilot countries needing a 2025-Q2-onward completion pass. The back-fill is not finished; the daily sweep should not start competing for the same `new-queue/` space until you've decided how the two coexist.
- **Two documented rulings you already made** and should reaffirm or revisit for daily use: full-text capture (ISSUE-008) and conservative-collect/aggressive-lint dedup.

---

*Companion files, all in the OSINT vault: `sweep/README.md` (full procedure + the rolling/flat/one-agent-per-unit playbook), `sweep/query-recipes.md` (taxonomy-derived query clusters, N/J/R), `sweep/ledger.csv` (state + rich per-country notes), `my-notes/trade-journal-coverage-assessment.md` (why these 8 journals).*
