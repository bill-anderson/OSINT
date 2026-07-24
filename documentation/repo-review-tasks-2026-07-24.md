# Review remediation tasks — 2026-07-24

Derived from `repo-review-2026-07-24.md`. Ordered by priority; phases are sequential, tasks within a phase mostly independent unless noted. Each task is sized to be one Claude Code job (suitable for `JOBS.md`) unless marked **[Bill]**.

## Phase 0 — Safety (do first; you currently have no working git remote)

x1. **[Bill + CC]** Resolve the interrupted batch: re-issue or cancel job 6/68 (`[~]` BDI 2025 in `reviews/JOBS.md`), then commit the ~77 modified files so the tree is clean.
x2. **[Bill]** Move the repo out of Dropbox to local disk (e.g. `C:\Users\bill\OSINT`); verify `git status` runs clean and fast.
x3. **[Bill]** Create the Dropbox mirror: `robocopy` with `/MIR /XD .git` plus `git bundle create … --all`; add both lines to the end of `run-overnight.ps1`.
4. **[Bill]** Stand up a second git remote (GitLab/Codeberg, or a bare repo on an external drive) and push — don't wait for GitHub support.
x5. Remove `*.pdf` from `.gitignore` so binaries enter git (use LFS for the handful of >100 MB files); commit the 318 binary primaries. Backup is not complete until git holds the whole state.

## Phase 1 — Finance layer (protects the USP; cheapest now, at 6.6k)

6. Amend `wiki/finance-record-spec.md`: mandatory `financier_slug` / `recipient_slug` fields taking entity-vocabulary values, alongside the descriptive string.
7. One-off normalisation pass: populate the new slug fields across all existing finance records; fix the World Bank Group / World Bank split in every compiled Financing section (BDI first).
8. Add a lint check: every financier/recipient string must resolve to a canonical slug; fail loudly on new records that don't.
9. Script-audit the ~4,655 machine-loaded records for mechanical defects: forbidden `date_source: proxy`, empty `entities: []`, truncated bodies marked `body_completeness: full`. Output a defect table by class.
10. Fix audit defects by class (scripted where possible, CC pass where judgment is needed).
11. Recast the four 2027–2029 "tranche" files (AWS/Cassava) as single dated commitments with the disbursement schedule in the body.
12. Date-prefix the 40 undated primary files — or, if the `{id}-primary` convention is deliberate, document it in `reference.md` and exempt it from lint.
13. Decide the verbatim question: either enforce full verbatim capture for swept news, or amend `CLAUDE.md` to accept paraphrase-plus-summary for paywalled trade press — and re-mark affected bodies `paraphrase`, never `full`.

## Phase 2 — Documentation drift (cheap; prevents fresh sessions doing damage)

14. Delete or rewrite `documentation/PROJECT-NOTES.md` and `documentation/wiki-workflow.*` — they document the retired architecture and present as onboarding.
15. Write `ENTITY-PASS.md` as a root procedure file; add it to `wiki/index.md` → Processes.
16. Fix the dead skill name: replace `africa-digital-policy-watch` references (DAILY-SWEEP, CONTENT-SWEEP, reference.md, `_watchlist.md`) with the actual skill names.
17. Rewrite `LINT.md` to codify what practice already does: delta-scoped lint on the working set, plus a scheduled scripted full sweep (weekly or monthly).
18. Make `wiki/index.md`'s State block script-generated at the end of each batch — or delete it. (It currently undercounts `raw/` by ~1,630.)

## Phase 3 — Scale (must land before the corpus doubles)

19. Build the manifest: SQLite or TSV of (path, url, published, places, entities, content-hash) for all of `raw/`, with a from-scratch rebuild script; append as the final step of ingest.
20. Rewire the hot path to the manifest: ingest dedup, finance definite-match, URL dedup, sweep dedup — no more filesystem greps over `raw/`.
21. Shard `raw/` into `raw/YYYY/`; update wikilinks and path references (scripted).
22. Scope `FINANCE-COMPILE` to recompile only hubs whose records changed since last compile.
23. Convert deterministic lint checks (freshness, body-completeness, naming, orphan links) to scripts CC invokes rather than performs.
24. Slim `DAILY-SWEEP.md`: move per-domain lore into a notes column in `sweep-daily.csv` (or per-domain files loaded only on failure); leave a principles-only procedure. Add handling notes for the two undocumented domains.

## Phase 4 — Automation hardening (the road to 90%)

25. Add an Exa canary as step zero of every headless job: one trivial search, hard-stop with a distinct marker if the MCP is absent — replaces the manual pre-flight.
26. Harden `run-overnight.ps1`: write completion lines and exit codes; distinguish attempted from done in the progress check (a `[!]` is not progress).
27. Enforce commit-per-job so the tree is never left mid-batch uncommitted; make "start job" and "job done" commits pair up verifiably.
28. Address the OCR wall: add an OCR step to the toolchain (e.g. ocrmypdf/Tesseract, or a paid API for Angola/Burundi-grade scans) so scanned budget PDFs stop blocking extraction.

## Phase 5 — Public good (depends on Phase 1)

29. Define the shareable-layer boundary in `CLAUDE.md`: compiled synthesis pages and derived datasets are publishable; verbatim `raw/` bodies never are.
30. Build the export script: structured finance dataset (one row per deal/budget line — canonical slugs, original currency, dated USD conversion, stage, precision flags, source URL) generated from the records.
31. Choose a licence and publication channel; publish the dataset and synthesis layer. This is the artefact that proves the combined international+domestic claim.

---

Sequencing rationale: Phase 0 first because there is currently no working remote and the tree sits mid-batch uncommitted — everything else assumes reversibility. Phase 1 before Phase 3 because data repairs get linearly more expensive as the corpus grows, and Phase 5 publishes what Phase 1 fixes. Phase 2 is a day's work and stops fresh sessions reintroducing dead structures in the meantime. Phases 3–4 can interleave with normal operation as batch jobs.
