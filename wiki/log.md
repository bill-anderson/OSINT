# Operation log

Append-only. Newest entries at the top. Records every ingest, the pages touched,
contradictions found, and open `needs-review` flags. **Terse by rule** (CLAUDE.md →
Reporting): a few lines each, full detail in `log-archive.md` or git.

---

## 2026-07-20 — Reconcile: 3 researched, 3 resolved, `open/` empty

8 primaries ingested. All three closed on attempt 1; `research/` deleted at pass end.

**Ghana NIA — not a contradiction at all.** "Yayra Koku" and "Wisdom Kwaku Deku" are **the same man** (Wisdom Yayra Koku Deku); Ghanaian outlets use the short familiar form, the NIA's site the formal one. Dedup read two renderings as two people. The gazette date is **neither held value**: the instrument is **L.I. 2523**, signed and gazetted **2026-03-27**, in force **2026-06-09** (NIA press release, s.73(1) Act 750). "Gazetted today, July 15" was **wrong at source** — the error originated in the Executive Secretary's own Facebook post, not the press; Biometric Update's "last month" conflated gazetting with commencement. `places-index` carried the superseded L.I. 2111 — corrected. Residual vacuum stated dated: acting vs substantive appointment is unestablished, the NIA's own site being internally inconsistent.

**Malawi spectrum — one cut, two magnitudes.** Five independent accounts of a single 2025-06-23 announcement give 20%; four reports of one 2026-07-17 speech give the minister's 50%. Decisive point is a negative: **no source records a second reduction**, so the cumulative hypothesis has nothing behind it. Wiki carries 20%. **Method note worth keeping: "prefer the newest value" governs fresher *state*, not a later *retelling* of the same event** — a minister restating a year-old figure is not supersession. Two dates corrected where publication date had become event date (cut 06-23 not 06-26; speech 07-17 not 07-20). `needs-review` cleared.

**M-PESA Kenya — definitional plus staleness.** Safaricom publishes a defined **one-month (30-day) active** series: Kenya **40.99m @ 2026-03-31** (now carried), 37.91m @ 2025-09-30 as dated prior. The "37m" was right for its basis but stale by July 2026. The CBK governor's "32m+ monthly" **matches no Safaricom-published figure** — nearest is 33.46m sixteen months earlier — and no CBK series is held to check it against; stated on the page as a dated vacuum. Found `kenya--dpi-pay` missing from `topics-index` entirely — added.

Shaky: three of the eight primaries are `excerpt` (NIA release is Facebook-only/login-walled; both Safaricom PDFs garbled past the KPI tables) — all four routed to acquisitions for manual clip.

Revert: `git revert <sha>`.

`contradictions - 0 ; acquisitions - 31 ; decisions logged - 3`

## 2026-07-20 — Ingest: the 07-20 sweep batch (32 items, 5 thematic chunks)

**28 filed to `raw/`**, 4 not admitted, `new/` drained. Chunks run sequentially, not parallel — ZAF/KEN/NGA hubs and `dpi.id`/`dpi.pay`/`infra.cybersec` are shared write targets across every chunk. 3 contradictions opened, 22 acquisitions queued. Best of batch: Nigeria's Presidential EO on Virtual Assets Coordination (full text; Virtual Asset Council at CBN, 30-day implementation framework) — nothing on it was held.

**Not admitted (4).** Ghana Card and Niger/AES passport — Biometric Update restatements of events already held from closer sources (MyJoy/Graphic with NIA quotes; ActuNiger at presidency level). ITWeb's ADC/Azure copy — dropped for the fuller Tech Africa News capture of the same event. Oyenuga/SereniMind — rejected and deleted: a "Tech Stars" promo reporting no development, no data or platform layer; standing objects recorded in the mentioned-index with a note that the source was **not** retained and so cannot be grepped.

**Corrections found in held state.** M-PESA's Fintech 2.0 / 6,000 tps figures were *already held* — the Safaricom item's stated rationale did not survive dedup; admitted only for the three-exec-exit pattern, at institution level, no persons tagged. `mpesa.md` is **M-Pesa Tanzania** — the staged `[m-pesa]` tag on a Kenyan source was simply wrong. Held `dsti` is **Sierra Leone's** directorate, not South Africa's department; both kept country-suffixed. Several staged slugs did not match the wiki's own (`international-monetary-fund`→`imf`, `central-bank-of-nigeria`→`cbn`, +8 more).

**Decisions.** (1) VOVE ID pair **kept both** — TechCabal alone carries founding date and named founders for a company with no other coverage; the Biometric Update piece is original interview reporting. The one call most likely to want reverting. (2) The iiDENTIFii sweep note — a paraphrase of an *unheld* ITWeb twin — was **not compiled**; using it would have cited a link the wiki doesn't hold. Preserved verbatim as an ingest note, twin filed as an acquisition. (3) IEC tender roundup admitted despite the digest rule: it aggregates primary procurement notices, not others' reporting, and the IEC's own RFP concedes its election app has "vulnerabilities and inadequate provisions for data safety". (4) Liberia summit admitted (government-convened policy event, thin ≠ out of scope); one dated hub line, marked announced not held.

**Contradictions opened (3):** Ghana NIA Executive Secretary named differently by two held sources same day; MACRA's 20% spectrum fee cut vs the minister's 50% to parliament; M-PESA Kenya 32m (Jan) vs 37m (Feb), basis unstated.

**Standing finding — concept-page bloat is systemic, not local.** `dpi.pay` 4,908w, `finance.new` 4,255w, `dpi.id` 4,309w, `dpi.govtech` 4,125w, `gov.legislate` 4,000w all over threshold; every chunk deliberately routed substance to hubs and intersections to avoid feeding them. `finance.new` looks matrix-shaped and should split cleanly. Needs lint #8. (`infra.connect` 7,228w and `tech.ai` 6,337w are genuinely thematic — leave them.)

Revert: `git revert <sha>`, or `git checkout <sha> -- raw/ wiki/ reviews/`.

## 2026-07-20 — Daily sweep (run 3): 32 staged, weekend nil confirmed everywhere

Window 07-18→07-20, ten domains, one agent each. **32 candidates in `new-queue/`** awaiting Bill's promote-gate; 45 dropped (`sweep/daily/drop-log-2026-07-20.csv`); 0 needing clip. All 32 are Mon 07-20 — Sat/Sun nil on every domain with positive evidence (archive 404s with resolving siblings; listing ceilings at Fri 07-17), so the weekday-publisher finding now holds across three weekends. Best item: Nigeria's Presidential EO on Virtual Assets Coordination, full text.

**Decisions.** (1) Dropped Biometric Update's iiDENTIFii leadership *roundup* — 3 of 4 items non-Africa officeholder churn, and its one Africa item is covered fuller by the ITWeb article; not a dedup coin-flip but "adds nothing material". (2) Kept both outlets on Cassava/ADC and on Vove ID — same event, different outlets, so conservative dedup sends them to lint #7 with full text. (3) Staged Safaricom exec-exit and a wearetech founder profile despite officeholder/scope doubt; dropped the weaker twin profile. Reversible at review.

**README amended** (`sweep/daily-README.md`): itweb.africa needs `?p=1&nocache=` — `?p=1` alone served a stale listing that nearly produced a false nil for the domain; **listing and search are now mutual cross-checks**, since search yields near-nothing but is what exposed that staleness; known-dead paths recorded (wearetech `/en/fils-uk`, itweb `/section/all`, connectingafrica's unnested sections) and the wearetech `brèves` tree flagged as a separate fetch — it held 5 of 9 items there.

Revert: `git checkout <sha> -- new-queue/ sweep/`.

## 2026-07-20 — Lint #8 (bloat): two concept pages split, entities-index sharded

Bloat lint: gov.protect and infra.store concept pages split to the infra.connect template (17 intersections created, 14 merged; every place-hub link verified, 0/2 lost and both restored). entities-index sharded 26,940 words → 126-word parent + 9 type shards (1,741 in/out). gov.regional kept as thematic. Fixed two uncited-but-held extractions — gabon--gov-protect, caf--infra-store — primaries held all along, now cited (not acquisitions). Revert: `git revert` the individual lint commits.
→ full detail in log-archive.md

## 2026-07-20 — Lint #4 (dead links): 70 body-prose targets triaged, 56 closed

Dead-link lint on body prose: 70 targets triaged, 56 closed — 13 pages created (incl. mario-oliveira, paged as a real signing party not an officeholder), 10 rewired, 35 unlinked, 14 thin/officeholder targets left dead. Correction of note: the South Sudan NIPS launch (2025-02-07) is **not held** — removed from 4 body cites + 2 `sources:` lists, claim kept as a dated absence. Revert: `git checkout <sha> -- wiki/ raw/ reviews/`.
→ full detail in log-archive.md

## 2026-07-20 — Lint #7 (duplicates): 14 same-title/same-date clusters resolved

14 `raw/` twins pruned, 38 citations rewired, no contradictions found — every pair was a double capture of one article. Kept the fuller/better capture where clear; where identical, kept the twin already cited. Revert: `git checkout <sha> -- raw/ wiki/`.

## 2026-07-20 — Log entries now terse (rule + cleanup)

Rule added to CLAUDE.md → Reporting: log entries are a few lines, not narrative. RECONCILE/ACQUIRE told to log tersely. Compressed today's process/rules-rework entries; left the ingest/reconcile findings.

## 2026-07-20 — Reconcile: ZRHCP Subcomponent 1.2 resolved; `open/` empty

Closed in favour of the **PAD (US$6m / ~150,000 cards)**. A third document — the July-2024 Stakeholder Engagement Plan — broke the deadlock: it carries the same pre-appraisal envelope (C1 = US$8m est.) as the Dec-2024 ESMF, so the ESMF reproduces a design generation the appraisal superseded, not a slip. Cost divergence explained; card count flagged as inference. **Method finding (outlives the item): World Bank safeguards docs (ESMF/SEP/ESRS) can carry stale pre-appraisal cost envelopes while reproducing PAD narrative near-verbatim and reconciling internally — any component cost this wiki took from a safeguards rather than appraisal document is suspect (not swept).** Filed the SEP; `open/` now README-only.
→ full detail in log-archive.md

## 2026-07-20 — Consistency pass + ZRHCP acquisition dropped

Checked CLAUDE.md → reference.md → RECONCILE/ACQUIRE → sweep → READMEs. Fixes: reference.md no longer "not yet written"; stale "sweep or hand-clip" phrasing corrected in 3 files; RECONCILE now deletes `research/` at pass end; sweep's status line, a `gaps.md` route and an issue-number citation stripped. **Ruling:** the human promote-gate `new-queue/ → new/` stays (the one manual step; gates raw sweep candidates, not CC decisions) — reference.md §7 corrected. **ZRHCP:** acquire had parked the 403-blocked ISR + opened a contradiction. Dropped the ISR per rule; contradiction stays open.

## 2026-07-20 — Ingest: the acquisition batch (50 documents, 12 workers)

50 documents ingested; `raw/` at 4,678; 13 concept pages updated. Corpus corrections: **Uganda SI 67/2024 misread** — extends ID validity 10–11 years retroactive to 2015, not the KYC/ss.65–66 preservation claimed (withdrawn); **Senegal "2017" wrong** (CDP: "depuis 2019"); **Econet Global holds 41.68%**, controlling on a minority stake; **"Distributed Power Zimbabwe/DPZ" does not exist** (real: TowerCo/PropCo/PowerCo); Libya Benghazi DC = 2019 not 2026; EBRD Board-approved 2024-07-24 not 2026-01-16. Chad DC size *was* disclosed (2,000 m² = 500×4). Open: Malawi s.53; 59 files cite deleted registers; Google Johannesburg mis-date still live.
→ full detail in log-archive.md

## 2026-07-20 — Ingest: the reconcile batch filed (65 clips, 14 workers)

65 clips ingested; `raw/` at 4,631; 19 concept pages updated. Central finding: **reconcile research reached pages without its sources** — striking claims (Veridos €64.2m; ZRHCP ProGres transfer; SSD Crawford/NSS; SEN chronology) that no held source carries; handled as dated provenance boundaries. Corrections: **Uganda card vendors inverted** (Veridos incumbent since 2018 via USPC; overcharging claim withdrawn); Gabon registry Gemalto's not Thales's; three Angola claims trace to one mis-dated headline (CEIEC 2017; $200m Indian line is defence; Aadhaar/MOSIP doesn't exist); "National Identification Act 2009" doesn't exist; Enugu 260 not 267. `gov.procure`→`gov.policy`.
→ full detail in log-archive.md

## 2026-07-20 — Lint rewritten: acts and logs, no longer reports

`reference.md` §11 rewritten from "flag for X" to act-and-log. 15 checks split: **auto-fix** (#1,2,4,5,7,11,12,13,14 url-quality,15 body_completeness-backfill), **auto-resolve onto the page** (#3 freshness/currency, #6 inadmissible, #8 bloat), **surface only** #9 real contradictions + #10 stranded `new/`. Equal duplicates auto-settled by #7. Carve-outs: #5 won't over-tag mentions; #8 exempts Recent developments. #14/#15 added to run the `url:`-provenance (241 sources) and missing-`body_completeness` (3,371) repairs as lint, not by hand.

## 2026-07-20 — Reconcile pass: `open/` drained, 49 → 0

Whole `open/` drained (49→0, 15 workers); 64 primaries staged. Aggregate finding: **event-date ≠ publication-date is the corpus's dominant failure mode** — 9 more instances (up to ~4.7yr); "date could not be established" was wrong more often than right. Corrections: Angola CEIEC/$200m/MOSIP claims trace to one mis-dated headline; Uganda vendors inverted; Gabon registry Gemalto's; Ghana "Act 2009" doesn't exist; Chad Huawei incumbent since 2020; SA IDEMIA 80m-card contract struck; Enugu 260 not 267.
→ full detail in log-archive.md

## 2026-07-20 — Registers deleted: `gaps.md`, `issues.md`, `entity-backlog.md`, `watch.md`

Bill's instruction. All four deleted (git `b33a91f` holds final contents); `issues.md`'s 15 items deleted undecided — no pending-decision register survives. 5 wiki pages + `acquisitions.md` rewritten to dated "not established as of 2026-07-20" statements. 43 queued briefs promoted to `open/`; `queued/` removed. `reviews/` = `acquisitions.md` + `contradictions/{open,done,research}` only.

## 2026-07-20 — CLAUDE.md rewritten (52KB → 9.5KB), principles-first

Act-log-never-ask; two queues only; entity tagging non-exhaustive (actors/institutions, not mentions/officeholders); duplicates gain `replace` on tier upgrade; depth-on-demand; no-new-rule-without-deleting. Later diffed against the recovered old file — six dropped rules restored (out-of-scope→delete, sweep containment, cite-only-held-links, capture≠endorsement, structural-facts-not-dated, no-requery-of-compiled) and "Recent developments" exception kept.

## 2026-07-20 — CLAUDE.md rewrite: 15 issues decided (2 reversed)

15 open issues resolved on CC recommendations, **2 reversed**: ISSUE-035 (VC funds — *not* mapping them, atlas-building) and ISSUE-036 (five-register amendment moot). Other rulings: DataReportal editions admitted but never comparable across editions (022); language-prefixed URLs take original's date (024); `published` = reporting date for recurring monthlies (029); DZAP deviations ratified (030); wiki-authored `raw/` metadata correctable, body immutable (031). Every defect that day traced to concurrency, not the new rules.
→ full detail in log-archive.md

## 2026-07-20 — Register triage: `gaps.md` split (superseded hours later)

Bill judged the 102-item `gaps.md` unmanageable. First sorted into four registers by kind; **that split was itself replaced the same day by the two-queue model** and the intermediate registers deleted. Net durable outcome: gaps→contradictions/acquisitions, disposal rule = two attempts then a dated absence. Resolved in passing: GAP-CMR-001 (Cameroon DP bill = Loi n°2024/017, 23 Dec 2024).

## 2026-07-20 — ISSUE-001 resolved: single-author theses admissible

Bill ruled theses admissible on content (single/student authorship no bar); rule added to CLAUDE.md as a tier-1 admit. Ingested the Mugumya 2019 Rwanda e-gov interoperability MSc thesis from `_leads/` as a dated 2019 baseline (cite-don't-absorb); companion + PDF artefact in `raw/`; `_leads/` copy left for Bill to `git rm`.
→ full detail in log-archive.md

---

*Entries before 2026-07-20 trimmed from the live log 2026-07-20 to keep it skimmable. They remain in git (`git log -p wiki/log.md`); pass-level detail is in `log-archive.md`.*
