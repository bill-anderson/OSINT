# OSINT repository review — 2026-07-24

Independent design-and-implementation review against the stated goals: comprehensive coverage of digital transformation, data governance and DPI across 54 countries plus regional/global policy; combined international + domestic financing data as the distinctive asset; 90%+ automated daily maintenance; growth from ~6,600 to ~30,000 sources; eventual publication as a public good.

Method: full read of all root process files, drivers and specs; sampled audit of `raw/`, place hubs, entity pages, compiled Financing sections, queues and logs; claims verified against the live tree.

**Current measured state.** 6,613 files in `raw/` (6,295 md, 318 binary); 62 place hubs (all 54 countries + 8 regions), 1,749 entity pages, 36 concepts, 297 intersections; 1 open contradiction, 105 resolved; ~38 items awaiting ingest; 3.1 GB on disk; 438 commits.

---

## Strengths

**The runtime architecture is unusually good.** Folder-as-state (`new/ → raw/`, move-last) makes every pass crash-resumable by construction. The single ingest door with four exhaustive dispositions, sweeps that can never write to `raw/`, two queues each drained whole by a dedicated pass, git-reversibility underwriting "act, log, never ask" — this is a coherent, internally consistent design that most institutional data projects never achieve. The orchestrator (`UPDATE-WIKI.md`) and batch driver (`RUN-BATCH.md` + `run-overnight.ps1`) are thoughtfully hardened: fresh headless session per job to avoid context exhaustion, git-dirty abort, stop/budget brakes, no-progress detection.

**Epistemic discipline is real, not aspirational.** Sampling confirmed the currency rules are actually applied where they are hardest: dated figures throughout ("183rd of 193 on the UN 2024 e-government index"), refusal to convert BIF with the reason stated on the page, non-USD deals excluded from sums and said so, dated statements of known vacuums (BDI's budget-document horizon). The five-fact test and the origin gate in the finance spec are precisely the machinery the international+domestic combination needs — double-counting is prevented *by construction*, which is the credible answer to "no one else has produced this accurately."

**Content quality is high and coverage is complete.** Every country has a hub with the same structure; thin hubs are thin by design, not neglected. Spot-checked citations resolve to real `raw/` pages that support the claims. The contradictions queue is drained and current. Entity pages have a hard 15-line floor and a managed "mentioned, not yet paged" index rather than a stub swarm.

---

## Weaknesses

### 1. Scale assumptions are already breaking

- Flat `raw/` at 6.6k files: a plain `grep -r` across it **times out at 45 s today**, and `git status` on the Dropbox-synced tree also failed to complete in 45 s. Yet ingest dedup, finance definite-match, URL dedup and lint all do O(N) scans of `raw/` on the hot path. At 30k this becomes the dominant cost of every pass.
- `LINT.md` still says "over the vault," but every recent run is logged as "delta-focused." Practice has silently diverged from the written procedure; a fresh session running the documented full-vault lint at scale would blow context and wall-clock.
- `FINANCE-COMPILE` rereads all finance records and rewrites every hub's Financing section, and fires automatically after every finance-admitting ingest — a full recompute per increment.
- Single growing files sit on every session's read path: `log.md` 242 KB, `places-index.md` 54 KB, `entities-index-government-bodies.md` 49 KB, and `DAILY-SWEEP.md` at 35 KB loaded into context on every daily run.

### 2. Data defects in the finance layer — the layer that carries the USP

- **Financier normalisation fails in compiled output.** Deal records store descriptive strings ("World Bank Group — IDA/IBRD (DE4A)") instead of canonical entity slugs, so BDI's hub reports "Top financiers: World Bank Group (US$107m), World Bank (US$10m)" — one institution split into two, in the flagship dataset. This is the spec's own named failure mode, live.
- **Spec violations in machine-loaded records.** Sampled `eximbank-cn-uga-001-record.md` carries forbidden `date_source: proxy`, an empty `entities: []` despite named financier and recipient, and a body truncated mid-sentence while marked `body_completeness: full`. ~4,655 of the 6,295 raw md files are machine-generated records in this family; the defect rate needs measuring, not assuming.
- **Future-dated sources.** Four files dated 2027–2029 (AWS/Cassava commitment "tranches") sort as future sources and assert facts about years that haven't happened.
- **40 undated primaries** (`eximbank-cn-uga-001-primary.pdf` etc.) break the `raw/` naming rule outright, and two naming conventions coexist (1.8k title-form, 4.7k slug-form) while the documentation describes only one.
- **The verbatim rule is not being kept for swept news.** Sampled sweep-ingested items store curator paraphrases (one merges two events into one page) under `body_completeness: full`. This quietly erodes the audit trail the rule exists to protect.

### 3. The documentation layer has drifted out from under the runtime

- `documentation/PROJECT-NOTES.md` presents itself as onboarding ("Start any new thread by uploading…") but documents the *retired* architecture: the abolished `contradictions/research/` quarantine, the withdrawn `gaps.md`/`issues.md` registers, the dead status-line format, `_leads/`. A fresh session reading it would reintroduce three dead structures. `documentation/wiki-workflow.*` has the same problem.
- The **entity pass** is load-bearing (lint defers mint candidates to it; `reference.md` describes it) but has **no procedure file and no row in the Processes directory**, which `CLAUDE.md` claims is complete.
- Sweep procedures route the digest to a skill named `africa-digital-policy-watch`, which does not exist (the installed skills are `sweep-manual` and `africa-digital-sources`).
- `index.md`'s State block undercounts `raw/` by ~1,630 and still lists the abolished parked-leads register.
- `DAILY-SWEEP.md` has accreted 35 KB of perishable per-domain lore ("itweb.africa needs `?p=1&nocache=`") — exactly the case-law failure `CLAUDE.md` bans for itself, and it will rot as sites change.

### 4. The automation is thinner than the 90% target implies

- The headless pipeline's core capability — Exa — depends on an interactively authenticated MCP that "may be absent in a headless run," detected only by the session self-reporting, guarded only by a *manual* pre-flight check.
- The batch driver counts a failed job as progress (pending count drops either way), so "12 jobs done" can mean "12 attempted." `run-overnight.log` currently holds a START line with no completion — died or still running, indistinguishable.
- The tree was left mid-batch with ~77 files modified after the last commit ("start job 6/68"), and the last log entry claims `awaiting ingest - 0` while `new/` holds ~38 items — live state contradicts reported state.
- Hard human-only residuals: OCR (scanned budget PDFs block Angola and Burundi extraction; "the toolchain has none"), paywalled clips, source-registry curation, batch resumption, and the entire review-and-revert model.
- Dropbox is a liability as the substrate: it locks files under the log writer, makes `git status` time out, and `.gitignore` excludes all PDFs and `new-queue/`, so **git does not hold the whole state** — a clean clone is missing every binary primary. "Everything runs in git" is currently untrue for the documents that matter most to the finance work.

### 5. The public-good goal collides with the store of record

`raw/` deliberately stores full verbatim copyrighted press bodies under a private-research justification (`DAILY-SWEEP.md`'s CDPA s.29 note). That is the right call for the vault — but it means the corpus **cannot be published as-is**, and nothing in the current model marks the boundary between the unpublishable store of record and a shareable derived layer. Separately, a markdown wiki is a weak format for the finance dataset as a public good: the value claim ("combined international and domestic financing, accurately") is best proven by a structured, citable dataset, not by prose sections inside country pages.

---

## Recommendations

Ordered by leverage. 1–3 protect the USP; 4–6 buy the path to 30k; 7–9 close the automation gap; 10 delivers the public good.

1. **Repair the finance layer now, while it is small.** Add a mandatory canonical `financier_slug` / `recipient_slug` (entity-vocabulary values) to the finance record spec, alongside the descriptive string. Run a one-off normalisation pass over existing records, then a lint check that every financier string resolves to a slug. This single change fixes the World Bank split and every future variant of it.
2. **Script-audit the machine-loaded records.** The defects found (proxy dates, empty entities, truncated bodies marked `full`) are mechanically detectable. Run a script over the ~4.7k record/companion files, produce a defect table, and fix by class — not by hand. Recast the 2027–2029 "tranche" files as one dated commitment with the disbursement schedule in the body, and date-prefix the 40 undated primaries.
3. **Either keep the verbatim rule or amend it — don't let it silently fail.** If paraphrase-plus-summary is the accepted capture for swept trade press, say so in `CLAUDE.md` and mark those bodies `paraphrase`, never `full`. The audit trail is only as good as the honesty of `body_completeness`.
4. **Kill O(N) greps on the hot path with a manifest.** Shard `raw/` by year (`raw/YYYY/` — already anticipated in `reference.md`), and maintain a single machine index (SQLite or TSV: path, url, published, places, entities, content-hash), appended as the last step of ingest and rebuildable from scratch by script. Dedup, definite-match and URL checks query the manifest, not the filesystem. This is the difference between the pipeline working and not working at 30k.
5. **Move deterministic work out of the model and into scripts.** Compile arithmetic, index maintenance, dedup, freshness scans and defect linting are cheaper, faster and more reliable as Python the session invokes than as reasoning the session performs. Token cost per pass should fall as the corpus grows, not rise. Scope `FINANCE-COMPILE` to recompile only hubs whose records changed.
6. **Codify what practice has already decided.** Rewrite `LINT.md` as delta-scoped with a scheduled (weekly/monthly, scripted) full sweep. Write `ENTITY-PASS.md` and add it to the Processes directory. Delete or rewrite `PROJECT-NOTES.md` and `wiki-workflow.*` — a wrong onboarding document is worse than none. Fix the skill name. Make `index.md`'s State block script-generated or delete it; a hand-maintained count table will always be stale.
7. **Slim the sweep procedures.** Move per-domain lore out of `DAILY-SWEEP.md` into a notes column in `sweep-daily.csv` (or per-domain files loaded only on failure), leaving a principles-only procedure. This cuts fixed context cost on the highest-frequency run and localises rot.
8. **Harden the overnight loop.** Have each headless session run an Exa canary (one trivial search) as step zero and hard-stop with a distinct marker if absent — replacing the manual pre-flight. Log completion lines and exit codes in `run-overnight.ps1`; distinguish attempted from done in the progress check; enforce commit-per-job so the tree is never left mid-batch uncommitted.
9. **Get the repo off Dropbox as the primary substrate.** Dropbox sync is causing file locks, 45 s+ `git status`, encoding mojibake in logs, and a git history that excludes all binaries. Preferred shape: the working clone on the local disk with a proper git remote (GitHub private or similar) holding *everything* including binaries (LFS for the >100 MB PDFs), Dropbox demoted to a convenience mirror or dropped. This restores "everything runs in git" to being literally true.
10. **Build the public-good layer as a distinct, exportable artefact.** The shareable product is (a) the compiled synthesis pages and (b) a structured finance dataset — one row per deal/budget line with canonical slugs, original currency, dated USD conversion, stage, precision flags and source URL — exported by script from the records, licensed, and publishable without a single verbatim body. This cleanly resolves the copyright collision and is also the artefact that *demonstrates* the combined international+domestic claim to the field.

## Overall judgment

The design is better than most funded data observatories: the pipeline discipline, currency rules and double-count machinery are the hard parts, and they exist and mostly work. The project's risks are not conceptual but operational, and they are concentrated: a finance layer whose normalisation defects would embarrass the very claim it exists to prove; O(N) habits that already time out at one-fifth of target scale; a documentation layer that would mislead the fresh sessions the automation model depends on; and an infrastructure substrate (Dropbox + partial git) that undercuts the reversibility guarantee everything else is built on. All four are fixable in days, not months — and far cheaper now than at 30,000 documents.
