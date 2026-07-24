# Operation log

Append-only. Newest entries at the top. Records every ingest, the pages touched,
contradictions found, and open `needs-review` flags. **Terse by rule** (CLAUDE.md →
Reporting): a few lines each, full detail in `log-archive.md` or git.

---

## 2026-07-24 — update wiki (Starlink gap-batch, 97 admitted)

Curated Starlink-in-Africa gap set (102 files, `q-2026-07-24-starlink-gaps`).
**Dedup (Bill wanted to see what URL-dedup missed):** the query dedup'd URLs vs raw/,
which structurally can't catch (a) a URL appearing twice **in the batch**, or (b) the
same **event** already held under a **different** URL. Found: **1 internal exact-URL
dup** (SEN Socialnetlink pair) + **6 held-event overlaps**. Per Bill's call (a)(i) —
drop pure re-reports, keep primary/distinct — **dropped 5** (both SEN Sall re-reports
of held Seneweb; both NGA Lagos/Abuja congestion re-reports of held; NAM BBC re-report
of held rejection) and **kept 3** (2× Space-in-Africa CAF — real reporting vs held
embassy/ministry boilerplate; UGA State House signing — a primary). **97 admitted** to
raw/ (all ordinary sources, no finance branch).
**Hub integration:** new/updated Starlink bullets on **9 hubs** — KEN (capacity wall:
25k subs, Ookla all-time-low, 7-county sign-up halt, Murang'a 170 health facilities,
schools), UGA (Jan shutdown → May State House 5-yr licence), CMR (seizures → refusal →
Dec concession, customs still seizing), NAM (June appeals dismissed), ZWE (2024
crackdown → 2026 record VSAT reversal), NGA (price whiplash/capacity/tax), SEN (ARTP
5-yr authorisation + wifi-resale warning), XAF (continental: 26 markets, capacity-capped
in 11), MWI (rural schools). ZAF/CIV/CAF/COD/ZMB/TCD/GMB/XSS already carried the Starlink
thread — sources now admitted+tagged (citable) without a duplicate bullet; MLI 2024
ban-lift admitted, hub bullet deferred. Starlink entity: 2 flagship reports appended
(rest tagged via frontmatter). Delta lint clean.
**Follow-up (same day):** added the MLI bullet (2024 six-month ban-lift) and wired the new
sources into the previously "covered" hubs — ZAF (ICASA/ownership deadlock line), CIV
(regulatory-path note), CAF/COD/GMB (source appends), ZMB/TCD/XSS (new bullets). Verified
**all 97 batch sources are now cited from at least one hub (0 orphaned)** — the multi-outlet
cluster extras were appended to each event's bullet.
contradictions - 0 ; acquisitions - 2 ; awaiting ingest - 0 ; decisions logged - 3

## 2026-07-24 — update wiki (manual, new/ drain)

**Ingest drained new/ (5 items):** 4 admitted, 1 deleted.
- **Kenya AI & Emerging Technologies Policy 2026 (draft)** [KEN] — primary policy doc; **resolves the
  2026-07-22 `not-retrievable` acquisition** (KEN hub previously stated the draft text wasn't held).
  Keep-both with the held news coverage (news = launch event; companion = the provisions). KEN hub
  bullet rewritten: draft now held + 9-pillar content. Framed as **draft under consultation** (comments
  to 4 Aug 2026), status dated.
- **BII/Liquid data-centre productivity study (Dec 2024)** [KEN,ZMB,ZWE,ZAF] and **SAIIA OP 338 (Oct
  2022)** [XAF] — admitted as **cited reference/analysis**, not absorbed; no per-hub bullets (they
  report no dated country event). Entity source-appends: liquid, afcfta, state-dept-ICT-kenya.
- **Burundi revised FY2025/26 finance-law communiqué (25 Dec 2025)** [BDI] — official primary; **fails
  finance five-fact (no amount)** → ordinary source (finance.budget + dpi.govtech), no deal record.
  Entity slug fixed to canonical `ministry-of-finance-budget-and-digital-economy-burundi` + obr-burundi;
  BDI hub bullet added (télépaiement 100% penalty provision).
- **Deleted:** OBG *Data Centres in Africa* (Oct 2021) — secondary, sponsor-collaborative market
  synthesis, 5 yrs stale (`CLAUDE.md` → *The material*). **Flagged for Bill — revert if you want it.**

**Reconcile:** 0 (only README in open/). **Acquire:** the 2 Burundi FY2025/26 items
(`bdi-expose-motifs`, `bdi-ptba-modifie`) left for Bill's active batch (job 6/68), not drained here.
Delta lint clean (vocab, links, link-lists, finance #16 all pass). To revert: the 4 raw admits + OBG
deletion + the KEN/BDI hub edits are one git range.
contradictions - 0 ; acquisitions - 2 ; awaiting ingest - 0 ; decisions logged - 6

## 2026-07-24 — CLAUDE.md change (surfaced per protocol)

Added to *The material*: academic papers and named-analyst opinion are a valued,
first-class part of the base; being thematic and light on named actors (sparse
`entities`, no single dated event) is their normal shape, **never a defect** — no
pass flags, penalises or trims them for it. Mirrored into LINT.md #5. Prompted by
Bill; clarifies (does not add to) the existing academic-work admissibility.
Revert: drop the new paragraph in `## The material` and the LINT #5 clause.

## 2026-07-24 — repo-review task 10 — fix machine-record defects

**Finance-load family fully cleaned** (lint #16 now passes, audit finance classes all 0).
Fixed 49 empty-`entities` finance records: 20 `-record` (tagged financier/recipient +
slugs; proxy→source date, **15 promoted to the exact body-stated signing date** and
files renamed to match `published`; 9 truncated payloads → `excerpt`), 20 companions
(mirrored sibling slugs), 9 ZAF votes (fisc = spending department). Also cleared the
14 finance truncations and tightened the audit detector (mojibake/citation/guillemet/
elision handling → fewer false positives).
**Routed, not force-fixed:** 36 non-finance empty-`entities` → LINT #5 (actor-thin
academic/opinion sources; over-tagging is itself a defect); 177 sweep truncations →
task 13 (verbatim question); 14 "other" truncations → LINT #15 (mostly promo-footer
false positives). **Decision:** renamed 15 records to keep filename==published after
date promotion (0 external wikilinks, safe); exact dates verified in "signed…agreement"
context before promoting.
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 1

## 2026-07-24 — repo-review task 9 — machine-record defect audit

Added `scripts/audit-machine-records.py` + defect table
(`documentation/task9-machine-record-audit-2026-07-24.md`). Segments raw/ (6,309)
into finance-load (1,355) / sweep (3,088) / other (1,866) and counts three classes:
**(1)** finance `date_source: proxy` = **20**; **(2)** empty `entities: []` = **85**
(49 finance certain, 36 sweep/other candidates); **(3)** `full` but truncated = **207**
(14 finance, 179 sweep, 14 other). **Audit only — task 10 fixes.**
**Decisions:** proxy counted finance-only (LINT #11 sanctions it elsewhere — 235
non-finance proxies are NOT defects); class-3 uses a high-precision truncation
detector (~80% precision) not the loose "no terminal stop" scan that false-flags
~1,400 bylines/headlines; sweep class-3 (179) overlaps task 13's verbatim question,
flagged for resolution there not blanket re-marking.
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 1

## 2026-07-24 — repo-review task 8 — finance slug-resolution lint check

Added **lint #16** (`scripts/lint-finance-slugs.py`, LINT.md + reference.md §4/§11):
every finance record must key its financier on a canonical entity slug —
`financier_slug` present, well-formed, and in `entities:`. **Financier defects fail
loudly** (script exits 1) — a bad key fragments a hub aggregate (the WB split);
**recipient drift is soft**, routed to the entity pass, per the spec's own severity
model (recipients sit below the paging bar). Seeded an `ALIASES` guard
(`world-bank-group`→`world-bank`, truncated IBRD→`world-bank`).
**Current corpus:** 49 hard (all the empty-`entities` records — task 9's backlog),
49 soft (34 novel page-less financiers, 15 recipient-slug drift). **Decision:** made
financier hard / recipient soft rather than failing on both, matching the spec.
Did not fix the 49 here — they are task 9/10's defect class; #16 is the audit that
feeds it. contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 1

## 2026-07-24 — repo-review task 7 — populate slug fields + fix WB split

**Part 1 (records):** scripted-populated `financier_slug` (1306) and `recipient_slug`
(889) across the 1355 finance records, read from the positional `entities` list;
every value verified to also appear in `entities` (0 mismatch). **49 left blank** —
they carry empty `entities: []` (the China-Eximbank/BOC/ZTE/ICBC `-record`+`-primary-companion`
files and the ZAF budget votes); these are precisely task 9's defect class, so the
slug is absent (surfaces as a lint failure) rather than faked.
**Part 2 (WB split):** all 98 World Bank records already carried slug `world-bank` —
the split was a *compile* artefact of keying on the descriptive string. Normalised the
WB display label to "World Bank" in 24 single-WB hub Financing sections, and
**merged the 5 true splits** (BDI 107+10=117; COD 400+400=800; MWI 150+72=222;
SWZ 24+20=44; XWA 854+240=1.09bn) using the on-page figures. IFC/MIGA kept distinct
(separate WBG institutions, not rolled up). Merged lines show fewer named financiers
where the merge consumed a top-3 slot — honest; a full recompile repopulates the tail.
**Durable:** amended `FINANCE-COMPILE.md` to group top-financiers on `financier_slug`,
not the free string. **Decision:** did NOT blind-recompute totals — a test recompute
silently dropped deals (e.g. AGO's Société Générale), so I used authoritative on-page
numbers for the merges. **Note:** truncated recipient slug `international-bank-for-reconstruction-and`
(14 recs) left for the entity pass (task 15).
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 1

## 2026-07-24 — repo-review task 6 — typed financier/recipient slug fields

Amended `wiki/finance-record-spec.md`: added mandatory frontmatter fields
`financier_slug` (always) and `recipient_slug` (whenever a recipient is named; blank
with `recipient unspecified` otherwise), both taking canonical entity-set values and
both required to also appear in `entities:`. The Financing compile now groups on these
typed fields, not the free-text body-table string — the fix that stops the World Bank
Group / World Bank split (task 7). Touched: Entities section, output-template
frontmatter, per-record Verification (new check 8), and the frontmatter-filtering note.
**Decision:** made `recipient_slug` conditionally-mandatory (blank only when the source
names no recipient), reconciling task 6's "mandatory" with the spec's own 30%
blank-recipient rule. Drivers hand fields to this spec and carry no template of their
own, so no driver edits needed. Spec change only — no records touched (that is task 7).
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 1

## 2026-07-24 — repo-review task 5 — PDF primaries into git

Removed `*.pdf` from `.gitignore`; committed all 390 PDF primaries (3.1 G) for backup
completeness. **Decision:** 5 files >100 MB via Git LFS (`.gitattributes`, `git lfs install --local`);
the other 385 (~2.0 G) in plain git. `.git` now 2.9 G.
**Caveat for Bill (tasks 3/4):** `git bundle --all` does NOT capture LFS blobs — the 5 large PDFs'
bytes reach the Dropbox mirror only via `robocopy /MIR` of the working tree (which copies them as plain
files), so backup stays complete; a bare-remote push (task 4) needs LFS support or `git lfs push`.
To revert: `git reset --hard HEAD~1` (nothing pushed), then restore the `*.pdf` line.
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 1

## 2026-07-24 — update wiki — closing entry (daily sweep drain)

**1 iteration, cap not hit.** ingest fired; reconcile/acquire skipped (queues 0); full lint ran.
Net from the daily sweep's 34 staged: **14 sources admitted**, 20 dropped/dup. No finance records.
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 5

## 2026-07-24 — update wiki — full lint (closing, daily sweep)

Delta-focused. **No auto-fixes required** beyond the ingest-time facet fixes already applied. All 14 new
`raw/` sources carry `type: source` + `body_completeness: full` (#1/#15); all topic slugs valid taxonomy
values, all place codes valid (#2); date prefixes valid (#11); entity source-append link-lists repaired to
canonical `[[a], [b]]` after a bracket slip and re-verified — no `[[[` malformations (#12); all entity
slugs referenced in the 10 hub bullets resolve to existing pages (#4); page-less actors (RTIA, SAPO, OUTA,
DGSN, UNESCO-ROSA) left as plain text per the "mentioned, not hubbed" convention; `new/` empty (#10); 0
contradictions surfaced (#9 — the SA branch-count discrepancy dated on-page as time-varying, not filed).
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 0

## 2026-07-24 — daily sweep (8th run) + update-wiki ingest

**Daily sweep:** window 07-22→07-24, 4 journal-agents, **34 staged** (~83 dropped), state/manifest/seen.csv
finalised (`state.json` → 2026-07-24T09:19:56Z). FLAG: connectingafrica.com listings pinned/JS-stale this
run (Ghana-5G recovered via teaser). **Ingest of the 34:** **14 admitted**, 20 not (11 dropped
out-of-scope/thin/PR, 9 dup). Triaged by 3 read-only subagents; admits applied by me. Pages: hubs
ZAF/NGA/MOZ/AGO/ZMB/MWI/MAR/ETH/UGA/KEN (Recent-dev bullets), 13 entity source-appends. No finance
records → no compile.

**Admitted (14):** NGA e-invoicing→real-time state data (NRS/NITDA, onshore-hosting, strongest),
FairMoney PoS-as-underwriting, Airtel Africa Q1/Airtel-Money-London, NCC–REA MoU; ZAF RTIA AARTO digital
rails + Smart-ID 385k; ETH Ethio Telecom FY (32m National Digital ID, telebirr 60.6m); MAR DGSN AI police
patrols (facial recognition); KEN device consumer-protection rules; ZMB postal-bill consultations; MWI
UNESCO AI-readiness; MOZ INCM broadband-coverage portal; AGO/MOZ Raxio–AFR-IX; UGA UCC SIM/mast enforcement.

**Decisions (5).** *(1)* **SA Smart-ID branch-count discrepancy dated on-page, not filed as a
contradiction** — 327 (DHA, 22 Jul) vs 296 (Biometric Update, 23 Jul) is a minor time-varying figure on a
fast-moving rollout; recorded both dated on `places/ZAF.md` (kept the biometricupdate source for its new
385k-applications figure + MyMzansi framing). *(2)* **Same-event cross-outlet pairs resolved** — kept the
fuller of Airtel Africa (TAN over ITWeb; ITWeb's ~$10bn valuation noted) and Zambia postal bill (TAN over
ITWeb); dropped the thinner twin. *(3)* **Guinea NimbaPay (wearetech FR) dropped as dup** of this session's
already-held IT-News-Africa NimbaPay source. *(4)* **Ghana-5G / IMF-electricity / Vercel-Stakpak / Botswana
Tech Fund dropped as already-held**; Fortinet-Egypt dropped (vendor PR on the held NTI academy). *(5)*
**Facet fixes at ingest** — Mozambique portal `data.satellite`→`dpi.govtech` (it's GIS, not satellite) and
`[[incm]]`→`[[incm-mozambique]]`; Kenya `communications-authority-kenya`→`-of-kenya`; Uganda `dpi.id`→
`gov.protect`; Airtel `places []`→`[NGA]`.
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 5

## 2026-07-24 — update wiki — closing entry (content sweep)

**1 iteration, cap not hit.** ingest fired; reconcile/acquire skipped (both queues 0); full lint ran.
Net: **7 sources admitted** from a 17-clip content sweep (Atlas Network, Guinea NimbaPay, SA smart-ID,
ProPublica health-data investigation, CSIS + DIAL analyses, ICTworks digital-health directory); 10 clips
dropped/deleted/mined-as-leads. No finance records → no compile.
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 7

## 2026-07-24 — update wiki — full lint (closing, content sweep)

Delta-focused. **No auto-fixes required.** All 7 new `raw/` sources carry `type: source` +
`body_completeness: full` (#1/#15); topics/places are valid vocab (#2); date prefixes valid, CSIS dated
`proxy` as its publication date is not established (#11/#3); link-lists canonical (#12); URLs are
document-specific incl. ProPublica's canonical over the Techdirt republish (#14); `new/` empty (#10); 0
contradictions surfaced (#9). **Note for the entity pass:** `[[atlas-network]]` and `[[nimbapay]]` are
new material initiatives carried as tag-first links (mint candidates, as `burundipay` was); Nigeria's
`federal-ministry-communications-innovation-digital-economy-nigeria` remains a pre-existing page-less tag.
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 0

## 2026-07-24 — update wiki — content-sweep ingest (17 clips)

Drained `new/` (17 manual web clips, 2026-07-24 batch — LinkedIn/think-tank/news, minimal frontmatter).
**7 admitted to `raw/`**, 10 not. Admits: Atlas Network continental AI (NGA/ATU), Guinea NimbaPay IPS,
SA Absa mobile smart-ID, the **ProPublica "digital colonialism"** investigation (US health-data deals,
multi-country), CSIS AI-vs-informal-economy (analysis), DIAL AfCFTA data-flows (analysis), ICTworks
continental digital-health-strategy directory (reference). Pages: hubs NGA/GIN/ZAF/UGA (Recent-dev
bullets), concepts tech.ai/dpi.pay/dpi.exchange/dpi.mis, entity [[america-first-global-health-strategy]]
(+Uganda/Liberia/Ghana/secrecy detail) and 5 entity source-appends. A subagent triaged the 10
analysis clips (read-only).

**Decisions (7).** *(1)* **[12] was a mis-saved clip** — filename "Senate backs bill… Meta/Google/X
offices in Nigeria" but its body is the Zimbabwe Ndarama article, identical to [16]; both **dropped**
as vendor/event-PR + duplicate. The Nigeria platform-offices bill was **not actually captured** (not
held). *(2)* **Subsea-cable roundup dropped as synthesis** — a secondary aggregator; mineable primaries
(Guinea GUILAB–Medusa 25-yr deal, Orange **Via Africa** cable, Nigeria–Google cable talks) noted for the
connectivity sweep, not ingested. *(3)* **Zimbabwe Ndarama + Durban-disaster + ITI US-AI-plan + "People
First" deleted** — vendor/event PR, out-of-scope (community disaster / US-domestic policy), and
thought-leadership opinion respectively. *(4)* **Three LEADs mined then discarded** — the AfCFTA LinkedIn
essay, Bart De Witte (Isaree vendor PR wrapping a WHO Lisbon conference), and "Under-Regulation of AI"
(an AI-assisted synthesis, inadmissible); no clean in-scope fetchable primary, so **no acquisitions
created** — leads noted (Nigeria AfCFTA-protocol ratification Nov 2025; WHO Lisbon AI-health conference;
SABRIC 2024 fraud stats). *(5)* **Atlantic Council "Kenya monetize its data" dropped** — substantially
duplicates the well-held [[kenya-data-marketplace]]; marginal uplift not worth citation churn. *(6)*
**ProPublica cited at its canonical URL** (not the Techdirt CC republish held in the clip); its new
Uganda (9 systems/7yr, $1.7bn), Liberia, Ghana-rejection and Sept-2027-secrecy detail merged into the
AFGHS entity. *(7)* **ICTworks admitted as a reference directory**; its **11 [SOURCE NEEDED]** national
digital-health strategies were **not** queued as acquisitions (depth-on-demand — the directory itself
records the gaps).
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 7

## 2026-07-24 — update wiki — closing entry

**2 iterations, cap not hit.** Passes fired: ingest (×2), acquire (×1), finance compile (×1),
full lint. reconcile skipped both iterations (0 contradictions). Net: **7 sources + 1 domestic-state
finance record admitted to `raw/`** (BDI FY2024/25 domestic-finance sweep, job 6/68); 5 acquisitions
dropped (unpublished); BDI hub Financing now carries its first domestic-state line.
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 7

## 2026-07-24 — update wiki — full lint (closing)

Delta-focused (this run's touched files; vault otherwise maintained). **Acted: #4 dead links** —
de-linked 3 prose wikilinks to page-less entities (MINCOTIM ×1, Fonds de service universel ×2) to
plain text per the hub's "Mentioned, not hubbed" convention; frontmatter entity tags left (tag-first
model). All 8 new `raw/` files resolve; `new/` empty (#10); `body_completeness` set on all (#15);
no malformed link-lists (#12); date prefixes valid (#11); finance-record schema complete (#1);
`finance.budget`/`dpi.*` slugs valid (#2). **0 contradictions surfaced (#9)** — the 5 075bn LFI
figure is corroborated across candidates 1 and 6; the 4 382bn draft-stage figure the sweep flagged is
settled by the enacted règlement, not a live conflict. **Note for the entity pass:** MINCOTIM and the
Fonds de Service Universel (own-source domestic financier) are each now tagged on multiple sources and
are mint candidates.
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 1

## 2026-07-24 — update wiki — ingest (iteration 2) + finance compile

Admitted the 1 finance record built in iteration 1 to `raw/` — `bdi-2026-cni-biometrique-proposed`
(16.0bn BIF, FY2026/27, `proposed`, domestic-state). No held BDI domestic-state record to match →
created. **Finance compile ran** (triggered by the admission): rewrote `wiki/places/BDI.md` →
*Financing* — non-state unchanged (US$117m / 4 deals), **Domestic state** now carries the FY2026/27
16.0bn BIF proposed ID line (USD not converted: managed multiple rate, future year). **Decision (1):**
the record cites the same 11 Jun 2026 statement as source [[2026-06-12-burundi-eco-digitalisation-services-publics]]
(already on the two ministries' pages); not re-appended to entity prose — finance records surface via
aggregate compile, not per-deal entity bullets.
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 1

## 2026-07-24 — update wiki — acquire (iteration 1): 5 BDI budget documents, all dropped

One attempt each; **0 acquired, 5 dropped** — all genuinely unpublished, not gated. loi de règlement
2024/2025 (not on `finances.gov.bi`), PAP ministériels + DPBEP/PIP/CDMT (unpublished; `plan.gov.bi`
no A record), MINCOTIM procurement plan (`mincotim.gov.bi` HTTP 000; absent from ARMP), ARCT report
2024/2025 (`arct.gov.bi` stops at 2020-2021). Consolidated **dated absence on `wiki/places/BDI.md`**
(→ *Budget-document horizon*): FY2024/25 per-ministry actuals are a stated vacuum; digital spend
visible only as whole-budget aggregates + donor-side PAFEN. `reviews/acquisitions.md` now header-only.
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 1 ; decisions logged - 0

## 2026-07-24 — update wiki — ingest (iteration 1): 7 BDI FY2024/25 prose candidates

Drained `new/` (job 5's 7 prose). **All 7 admitted to `raw/`** (in-scope: BDI digital-finance
frame). **1 domestic-state finance record built** into `new/` — `bdi-2026-cni-biometrique-proposed`
(16bn BIF, FY2026/27, `proposed`, from the 11 Jun 2026 ministerial statement); admitted + compiled
next iteration. Pages: `places/BDI.md` (3 new Recent-dev bullets: FY2024/25 règlement 76.79% outturn,
SIGFP contest, digitalisation stock-take; GovTech topic line), `burundi--dpi-id` + `burundi--dpi-pay`
intersections, `dpi.mis` concept (SIGFP_BI), entity appends (finance/interior ministries, obr, mediabox,
pafen). Run-log + extraction-doc appended.

**Decisions (5).** *(1)* **Entity-slug drift reconciled** — candidates carried French long-form slugs
(`office-burundais-des-recettes`, `ministere-des-finances-…`); rewired to the wiki's canonical English
slugs (`obr-burundi`, `ministry-of-finance-budget-and-digital-economy-burundi`, `ministry-of-interior-burundi`)
to avoid duplicate entities. MINCOTIM/National Assembly/USF stay tags (no page). *(2)* **Candidate 4's
US$30m SIGFP_BI is external (PAFEN/WB) money** → failed the domestic-state origin gate; **definite-matched
to the held [[pafen-burundi]] record** (its PFM sub-component) rather than building a new non-state deal —
source attached to PAFEN + mediabox as a governance-contest line (allegations reported, not endorsed).
*(3)* **Candidates 1/3/6 built no finance record** — whole-budget aggregates / ministry envelopes (MINCOTIM
131.7bn) fail the scope test (never credit a ministry vote to digital); held as `raw/` context only.
*(4)* **Candidates 2/5 built no record** — the e-invoicing machines (500/10 000) carry no stated
procurement amount, and the ~15bn CNI figure is a whole-project cost estimate, not an appropriated stage;
the appropriated counterpart is candidate 7's 16bn FY2026/27 line (the one record). *(5)* **Candidate 5
kept alongside** the held 2026-05-07/-08 biometric-ID sources (Burundi Eco adds 2021 origin +
Lumitel/ONATEL as technical partners) — dedup keep-both, folded into `burundi--dpi-id`.
contradictions - 0 ; acquisitions - 5 ; awaiting ingest - 1 ; decisions logged - 5

## 2026-07-23 — domestic finance sweep — Burundi FY2024/25 (batch job 5/68)

BDI 2024 → **FY2024/25 (1 Jul 2024 – 30 Jun 2025)**. **9 budget documents staged** to
`new-budget/BDI/2024/`, **7 prose to `new/`**, **5 to acquisitions**, 0 records built.
**Full estimates volume OBTAINED** — the PTBA (*ventilation par programme ou dotation*) for both
the initial and revised positions, so appropriated *and* revised are held at programme grain; a
first for this series. Actuals aggregate-only (loi de règlement reported, text unpublished);
**audited not published** — Cour des comptes' PLR series stops at FY2022/23, so Parliament adopted
the FY2024/25 règlement law on 13 May 2026 with no audit report on it. Run file:
`sweep/domestic/BDI-2024-run-2026-07-23.md`.

**Decisions (3).** *(1)* Staged the Cour des comptes **RPGA 2024** with
`fiscal_years_covered: ["unknown"]` — the series is calendar-labelled against a July–June fisc and
the artefact is a scan, so its period could not be read at staging; extraction establishes it and
drops the file if wholly pre-FY2024/25. Revert = delete the artefact + companion + manifest row.
*(2)* Did **not** stage the data protection law (Loi n°1/03 du 10 mars 2026) — a regulation, not
finance; noted as a CONTENT-SWEEP lead. *(3)* Did not queue the missing PLR2024_2025 as an
acquisition: it does not appear to exist, so it is a stated absence for `wiki/places/BDI.md`, not a
fetch.

**Two things to carry.** Burundi's **entire budget chain is image-only** — only the exposé des
motifs and two ministry procurement plans are native text; BDI extraction needs OCR, which the
toolchain still lacks (same wall as the enacted Angolan OGE volumes, but chain-wide). And the
substantive finding: **the fisc buys hardware, the World Bank buys the systems** — PAFEN (US$92m)
carries SIGFP_BI, e-KORI, e-gov strategy and the identity work, while FY2024/25 fisc digital lines
are computers, network maintenance and a police biometrics package in the hundreds of millions BIF.
Any BDI domestic total must say so. `armp.gov.bi` is the Angola-PAC analogue and the richest
fisc-side seam; its **LITERA** classification strings are the join key back to PTBA programmes.
contradictions - 0 ; acquisitions - 5 ; awaiting ingest - 7 ; decisions logged - 3

## 2026-07-23 — update wiki — closing entry (batch job 4/68)

**2 iterations**, then lint. Iteration 1: ingest (9 AGO sources admitted, 7 finance records built).
Iteration 2: ingest (7 records admitted) → finance compile (AGO) → reconcile (1 resolved) → acquire
(2 acquired, 11 dropped). A fresh read then found all three queues empty, so the loop broke; cap not
hit. Net for Angola: **17 sources into `raw/`**, domestic-state budget lines **5 → 11**, the first
two **enacted OGE volumes** staged for extraction, one double-counted record retired, and two entity
pages minted. Passes fired: ingest ×2, finance compile ×1, reconcile ×1, acquire ×1, lint ×1.
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 6

## 2026-07-23 — full lint (update-wiki close, batch job 4/68)

Scoped to the working set this run touched (65 AGO/finance files + the pages edited), not a vault
sweep. Counts by check: **#1 schema** 0 · **#2 vocabulary** 0 (the 4 invalid slugs were fixed at
intake) · **#4 orphans & dead links** **2 pages created** — `ministerio-das-financas-angola`
(15 referrers, ≥10 band: the financier on every Angolan domestic-state record and the publisher of
the budget documents the series rests on) and `presidencia-da-republica-angola` (9 referrers, middle
band, created on material: the decree/despacho is *how* Angolan digital appropriations surface),
both added to `entities-index-government-bodies.md`; `societe-generale` (6 referrers) left, thin ·
**#5 untagged / tag drift** 1 — `[ministry-of-finance]` → `[ministerio-das-financas-angola]` on the
AGO World Bank record (a country-less slug used on 3 records in 3 countries) · **#7 duplicates** 0 ·
**#8 bloat** 0 — `AGO.md` is 3,826 words but 1,716 of those are the exempt *Recent developments*
log; the rest is 2,253, under threshold · **#11 date prefixes** 0 · **#12 link-list convention** 0 ·
**#15 body_completeness** **9 backfilled** to `excerpt` (legacy finance-load deal records whose
bodies are structured dataset extracts, never prose — `reference.md` §4) · **#9 contradictions
filed** 0 · **#10 stranded in `new/`** 0.
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 0

## 2026-07-23 — acquire — 13 AGO budget documents (update-wiki iteration 2, batch job 4/68)

**2 acquired, 11 dropped**, one attempt each; queue now empty. The two acquired are the ones that
matter: the **enacted OGE volumes for FY2024 (Lei n.º 15/23, 94.5 MB) and FY2025 (Lei n.º 18/24,
671 pp, 68.1 MB)**, which three sweep passes had failed to get from the minfin CMS. Both came from
mirrors on plain `curl`-able paths — **CABRI's Budget Information Archive** (2025) and **Development
Workshop Angola** (2024). Staged to `new-budget/AGO/{2024,2025}/` with companions + manifest rows.
They also close `ago-oge2024-mapas` / `ago-oge2025-mapas`: the *Dotações Orçamentais por Órgãos* are
*peças integrantes* of these very laws. Drops by class: `not-retrievable` ×4 (OGE 2026 tables + DR;
both execution-anexos items), `transport` ×3 (the PAC portal times out — **no MINTTICS procurement
plan is held for any year**), `js-shell` ×2 (gazette PDFs of DP 169/25 and DP 11-12/26 — their
operative texts are already held, so the loss is small).

**Flag — the real bottleneck moved.** Both enacted volumes are **scanned PDFs with no text layer**
(`pdftotext` returns form-feeds only). Acquisition is no longer what blocks Angola's per-organ
digital lines; **OCR is**, and the toolchain has none. Recorded on both companions, in the manifest,
and in `documentation/domestic-budget-extraction.md`.

**Correction made in passing:** the OGE 2026 appropriation act is **Lei n.º 14/25** (aprovada
15-Dez-2025). "Lei 01/V/4.ª/2026-2027", recorded by the AGO 2026 sweep, is the Assembly's *diário*
reference, not a law number. Fixed on the AGO hub and in the extraction notes.
Dated not-held lines added to `wiki/places/AGO.md`. Revert: this commit.
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 0

## 2026-07-23 — reconcile — AngoSat-3 / PAC 2025 (update-wiki iteration 2, batch job 4/68)

1 open item, **1 researched, 1 resolved, 0 re-routed, 0 closed-unresolved**. 1 primary ingested
(`raw/2025-02-21-nj-minttics-ainda-nao-corrigiu-pac-2025-zeros-a-mais.md`). Exa research settled it
two ways: (a) Novo Jornal documented the first PAC's surplus zeros *as it happened*, alerted the
procurement portal, and reported the document still uncorrected on 2025-02-21 — so Kz 278bn is a
**withdrawn** figure, not a competing one; (b) **"AngoSat-3" and "ANGEO-1" are the same satellite** —
the government portal filed the Sept-2024 financing announcement under the tag *angosat-3* while
MINTTICS announced the same decision as ANGEO-1 (**DP 206/24**: €189,988,694 export credit under
Bpifrance cover + €35,268,507 down payment = the €225,257,201 Société Générale package already held
as `societe-generale-ago-2025`).

**Decision:** the domestic-state record `ago-2025-minttics-angosat-3-unclear` was **retired**, not
re-based. An externally-financed line is `non-state` under the origin gate, so holding it also as
domestic-state double-counted the same money — the identical fold already applied to this project's
`government-of-angola-ago-2026` twin. Evidence folded into the Société Générale record as two dated
`## Development history` lines + a Notes paragraph; AGO Financing recompiled (domestic-state 12 → 11
lines); `angola--data-satellite` and the AGO hub rewritten; run-log row annotated. **Stated, not
resolved** (on the pages, dated): which corrected PAC line the reporting maps to, and the
pre-correction figure itself (Kz 278 biliões per Novo Jornal vs Kz 298,7 biliões per the
corrected-PAC reporting). No PAC document is on file; `ago-minttics-pac-2025` stays queued. Neither
gap changes the disposition. Revert: this commit restores `raw/2025-01-01-ago-2025-minttics-angosat-3-unclear-angosat3-pac.md`.
contradictions - 0 ; acquisitions - 15 ; awaiting ingest - 0 ; decisions logged - 1

## 2026-07-23 — ingest + finance compile — AGO records (update-wiki iteration 2, batch job 4/68)

Admitted the **7 AGO finance records** built in iteration 1 to `raw/` (no definite match to any held
record — all creates), appended them to 5 entity `sources:` lists, and ran **finance compile** on
`AGO`. Domestic-state total goes 5 → **12 budget lines**, FY2025–FY2026. The rewritten `## Financing`
section reports by fiscal year in original currency, splits by `budget_stage`, holds the 2 partial-scope
FY2026 lines (Kz 226,3 mM) out of the headline, and states two dated absences: **no execution rate is
computable** (no `released`/`actual`/`audited` line for any Angolan digital stem), and **no source
states the funding source of any OGE digital line** (origin-gate default, with the possible China
Eximbank RNBL overlap named). No per-deal hub bullets written. `new/` is empty.
contradictions - 1 ; acquisitions - 15 ; awaiting ingest - 0 ; decisions logged - 0

## 2026-07-23 — ingest — AGO domestic finance backlog (update-wiki iteration 1, batch job 4/68)

Drained `new/` (9 AGO candidates from the AGO 2024/2025/2026 sweeps). **9 admitted to `raw/`**, 0
deleted, 0 new contradictions, 0 new acquisitions (the AGO seams were already queued). Fixed 4
invalid topic slugs at intake (`govtech`→`dpi.govtech` ×2, `cybersecurity`→`infra.cybersec`,
`connectivity`→`infra.connect`) and renamed the DP 11/26 clip to its `published` date (2026-01-13 →
2026-01-16). Entity tags corrected: `instituto-de-modernizacao-administrativa-angola` → held slug
`ima-angola`; added `microsoft`, `presidencia-da-republica-angola`, `bilhete-de-identidade-angola`.
**7 finance records built into `new/`** (driver case 4/reporting, plus two executive instruments) —
FY2025 + FY2026 "Expansão e Modernização das Comunicações" (Kz 229,3 mM / 159,2 mM, appropriated);
FY2026 e-gov Kz 136,7 mM and justice Kz 89,6 mM (proposed, `scope_confidence: partial`); DP 169/25
USD 218,5 M BI crédito (revised/supplementary-1, increment); DP 12/26 Kz 9,2 mM and DP 11/26 Kz 8,6 mM
(stage `unclear`). Pages touched: `wiki/places/AGO.md` (+7 Recent-developments entries, `finance.budget`
added to topics), intersections `angola--dpi-id`, `angola--dpi-govtech`, `angola--infra-connect`,
`angola--infra-cybersec`, `angola--data-satellite`; 5 entity `sources:` appends; `places-index.md`;
the AngoSat contradiction brief; `documentation/domestic-finance-run-log.csv` (+7) and
`domestic-budget-extraction.md`.

**Decisions (5).**
1. **Parent-line capture, not parent + children.** pti.ao reports the OGE communications *programme*
   total and its named sub-lines (4G, 3G, cyber-index). Recorded the parent once, sub-lines in the
   record body — recording both would double-count the same appropriation in the hub aggregate.
2. **No records built from the corrected PAC 2025 lines.** Two corrected PAC lines match OGE 2025
   programme figures *exactly* (banda larga Kz 107,8 mM = 4G; plataforma/centro de dados Kz 70,5 mM =
   cyber-index), so the PAC looks re-based on the vote. Building both sets would double-count. The
   correction went in as a dated `## Development history` line on the held AngoSat-3 record; the
   `amount_total` was **not** overwritten — that is reconcile's call on the open contradiction, which
   was updated with this new evidence.
3. **Sector envelopes not recorded as finance.** The OGE 2025 "Comunicações e Tecnologias de
   Informação" total (Kz 226,4 mM) and the OGE 2026 education (Kz 524,7 mM) / health (Kz 598,8 mM)
   programmes are envelopes, not programme lines with a wholly-digital stated purpose. Carried as
   dated figures on the AGO hub and the intersections; no digital share computed.
4. **`amount_usd` left blank on the AOA records.** pti.ao states its own USD conversions "à luz da
   taxa de câmbio do BNA" with no rate, date or basis — neither an FY average nor a documented spot
   rate. Source figures held in the body; nothing promoted to a compiled field.
5. **Origin risk flagged, not apportioned.** The OGE 4G line may carry the China Eximbank-financed
   RNBL, which the origin gate would make `non-state`. No source on file states any OGE digital
   line's funding source, so all default to `domestic-state`, flagged, and the Mapas
   (`ago-oge2025-mapas`/`ago-oge2026-mapas`) are named as the arbiter on the records and pages.

Also: `last_reviewed` was **not** bumped on the 5 entity pages — a one-line `sources:` append is not
a substantive re-check (reference.md §4). Revert: this commit.
contradictions - 1 ; acquisitions - 15 ; awaiting ingest - 7 ; decisions logged - 5

## 2026-07-23 — domestic finance sweep — AGO 2026 (batch job 3/68)

AGO 2026 → FY2026 (calendar-year OGE), **in-year**. OGE 2026 = **Lei 01/V/4.ª/2026-2027** (aprovada
15-Dez-2025), Kz **33,24 biliões**, **−4%** on 2025 — first drop in the series. Staged **1 budget doc**
to `new-budget/AGO/2026/`: Fundamentação OGE 2026 (`8983392b-…`, 75pp, via DoH IP-pin) — embeds the
full Lei articulado, but functional envelope only. Staged **6 prose** to `new/`: digital programme
lines (Expansão e Modernização das Comunicações **159,2 mM**, −30,5%; 4G 62,7; cyber-index 32,3, −54%),
cross-vote (e-gov 136,7 mM, justiça 89,6 mM), two primary despachos (**DP 12/26** 9,2 mM telecoms
MINFIN; **DP 11/26** 8,6 mM Microsoft licences whole admin via IMA), and Angop Q1-2026 execution
(9,36/9,12 bi) + **Lei da Identificação Civil e Criminal**. **5 to acquisitions** (Mapas 2026; I-Trim
2026 execução; Lei DR; PAC 2026; despacho DRs). **0 contradictions** (2025 Angosat-3 stands). Learning:
in-year, the appropriation doc is Exa-findable but the just-published Q1 execução UUID is not — queue
it (extraction notes updated). Full estimates volume NOT obtained; outturn Q1-partial, IV-Trim 2026 +
CGE audit are dated stage gaps. Run file: `sweep/domestic/AGO-2026-run-2026-07-23.md`.

**Decision:** budget extract stays **deferred to the batch checkpoint** (job-1/2 rule, still in force).
Staged 6 prose this run (vs 3 for 2025, 0 for 2024) because the freshly-enacted OGE 2026 surfaced an
unusually rich in-year seam — detailed programme reporting + two January despacho primaries with hard
figures. Revert: this commit removes `new-budget/AGO/2026/`, `new/2025-11-*`/`2026-*ago-*` (×6), the 1
manifest row, 5 acquisition lines, and the run-file/extraction-notes edits.
contradictions - 1 ; acquisitions - 14 ; awaiting ingest - 9 ; decisions logged - 1

## 2026-07-23 — domestic finance sweep — AGO 2025 (batch job 2/68)

AGO 2025 → FY2025 (calendar-year OGE = Lei 18/24, Kz 34,63 bi, +40% on 2024). Staged **2 budget
docs** to `new-budget/AGO/2025/`: IV-Trimestre-2025 execução (**FY2025 outturn**, 57pp, `6fb282a3-…`,
via DoH IP-pin) + OGE 2025 Fundamentação (fiscal strategy, CABRI mirror). Staged **3 prose** to
`new/`: **DP 169/25** (ID-card universalisation crédito adicional, **USD 218,5 M**, Min. Justiça —
`dpi.id`), pti.ao OGE-2025 digital sector envelope (Kz 226,4 mil milhões, ~7× 2024), pti.ao MINTTICS
PAC-2025 actualização. **5 to acquisitions** (Mapas; IV-Trim anexos volume; Lei 18/24; corrected PAC;
DP 169/25 DR PDF). **1 contradiction filed** — held Angosat-3 record (278 bn) superseded by corrected
PAC (712,7 M). Key learning: the IV-Trim report is narrative-only; the per-project/UO digital anexos
are a separate volume — queue the anexos, not just the Mapas (extraction notes updated). Full
estimates volume NOT obtained. Run file: `sweep/domestic/AGO-2025-run-2026-07-23.md`.

**Decision:** budget extract stays **deferred to the batch checkpoint** (job-1 rule, still in force —
running it per-job re-scans `new-budget/` ~17×). Also logged: staged 3 prose sources this run (2024
staged none) because AGO 2025 surfaced strong in-window primaries with hard figures — the DPI/identity
despacho especially. Revert: this commit removes `new-budget/AGO/2025/`, `new/2025-*ago-*` (×3), the
2 manifest rows, 5 acquisition lines, the contradiction brief, and the run-file/extraction-notes edits.
contradictions - 1 ; acquisitions - 9 ; awaiting ingest - 3 ; decisions logged - 1

## 2026-07-23 — domestic finance sweep — AGO 2024 (batch job 1/68)

AGO 2024 → FY2024 (calendar-year OGE). First AGO run. Staged **2 budget docs** to
`new-budget/AGO/2024/`: IV-Trimestre-2024 execução report (**FY2024 outturn**, 58pp) + OGE 2024
Relatório de Fundamentação (fiscal strategy, 68pp). minfin CMS walled on local DNS — fetched via
DoH IP-pin (20.87.80.66 + curl --resolve), now the standing AGO Track-B route (recorded in
extraction notes). 3 to acquisitions (Mapas Orçamentais estimates volume; Lei 15/23; MINTTICS PAC
2024). 0 records built. Full estimates volume NOT obtained — outturn + envelope only until the
Mapas land. Run file: `sweep/domestic/AGO-2024-run-2026-07-23.md`.

**Decision:** budget extract **deferred, not run per-job**. The procedure ends a single sweep with
BUDGET-EXTRACT, but running it after each of 68 jobs re-scans all of `new-budget/` ~17× and
multiplies cost for no gain (the `extracted` flag already blocks re-work). Extraction will run at a
batch checkpoint / the periodic pass instead. Conservative + cost-aware (cf. the earlier cost stop).
Revert: this commit; `new-budget/AGO/2024/` + 2 manifest rows + 3 acquisition lines + extraction-notes/run-file.
contradictions - 0 ; acquisitions - 3 ; awaiting ingest - 0 ; decisions logged - 1

## 2026-07-23 — update-wiki close (journals hand-off): 2 admitted, queues empty

SAJIM e-signature-conveyancing (ZAF, research — no hub bullet, tagged dpi.govtech/gov.legislate)
and the IPR deplatforming op-ed (XSS, lens analysis, year-proxy date). No dups, no finance, lint
trivial-clean. Revert: this commit.
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 1

## 2026-07-23 — content sweep — journals

content sweep — journals: window 2026-06-29→2026-07-23, took 3m, staged 2.
All 36 domains swept (first run; state at the 2026-06-30 default). Academic cadence: most
surfaced work pre-window (2024–2025 vintages; Data & Policy Ghana AI-services paper resolved to
Dec-2025 online publication — skipped). Staged: SAJIM e-signature-conveyancing barriers (ZAF,
07-14) and an undated Internet Policy Review op-ed on platform ID-verification exclusion
(year-precision proxy date, honest note). Hand-off to update wiki follows.
Revert: delete the two staged files, reset `sweep/journals/state.json` to 2026-06-30.

## 2026-07-23 — update-wiki close (organisations hand-off): ingest 16/17, lint clean

One drop (ODI Simons piece — same URL already held from the 07-21 daily sweep). One **replace**:
the AfricaNenda/Gates/Equity DPI-partnership techafricanews syndication retired for AfricaNenda's
own release — canonical over syndicated; 13 citing pages rewired. 4 out-of-window items admitted
as dated baselines (Nigeria-DPGA 2025-10, UCT AI-safety hub 2025-09, AfroLeadership CEMAC 2025-11,
Wits AI-policy analysis 2026-05 — attached to the held ZAF withdrawal account). Hub updates: KEN
(AI-policy comment window to 08-04), RWA (TBI NHIC detail folded), NGA (DPGA membership, dated),
ZAF (analysis attach). 13 entity source-appends. No finance record (partnership MoU carries no
amount — five-fact fail, ordinary source). Lint over the batch: 0 problems; queues empty.
Revert: this commit.
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 3

## 2026-07-23 — content sweep — organisations

content sweep — organisations: window 2026-06-29→2026-07-23, took 7m, staged 17.
All 46 domains swept (first run of this sweep; state was at the 2026-06-30 initialisation
default). 4 date-checks resolved out-of-window (AfroLeadership CEMAC 2025-11, Nigeria-DPGA
2025-10, Wits AI-policy analysis 2026-05, UCT AI-safety hub 2025-09) — staged as dated
baselines for ingest to judge. Hand-off to update wiki follows. Revert: delete
`new/*sweep_batch: organisations*`, reset `sweep/organisations/state.json` to 2026-06-30.

## 2026-07-23 — update-wiki close (newspapers hand-off): 1 iteration, lint clean

Ingest only fired (reconcile/acquire queues were already empty); cap not hit. Full lint: 49 new
sources pass schema/vocab; 0 dead hub links; link-list convention clean; `last_reviewed` bumped on
22 hubs; one fold (GAB Kimba bullet merged into the earlier fuller account). GHA Non-state
recompiled (finance record admitted). Revert: this and the seven chunk commits.
contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 4

## 2026-07-23 — ingest: newspapers-sweep drain — 49 admitted, 19 dropped

68 staged → 49 to `raw/` (incl. one non-state finance record, **mtn-gha-fibre-home-2026**,
US$1bn announced; GHA Non-state recompiled US$1.70bn/21 → **US$2.70bn/22 deals**). 19 dropped:
16 duplicates (the mis-set window re-covered the 07-17 country-sweep and daily-sweep ground) and
3 no-development items (LSO summit talk, TCD PATN workshop, UGA CSR donation). 27 hub bullets on
26 hubs; source-appends on 31 entity pages; mentioned-entities index extended.
**Decisions:** Conecta Angola 20,000 (ANGOP) vs ~4,000 (trade, ANGOSAT-2/TVWS) carried as
different measures with own scopes, not filed as a contradiction; Liberia summit — Observer +
allAfrica pieces kept both (different articles, distinct payloads); Somalia WhatsApp bullet dated
2026-07-22 (interview) with the 2026-07-06 NCA statement dated inside.
Revert: `git revert` the seven `ingest chunk N/7` commits.

## 2026-07-23 — content sweep — newspapers

content sweep — newspapers: window 2026-07-13→2026-07-23, took 21m, staged 68.
All 104 domains swept. Boundary exceptions staged (GMB 07-10/07-01 — initialization
gap); 1 candidate resolved out-of-window (GNB cybersecurity studies, 2025-01-22,
date_note set); 2 Standard Media JS-rendered pages recovered by direct fetch.
Hand-off to update wiki follows. Revert: delete `new/*sweep_batch: newspapers*`,
reset `sweep/newspapers/state.json` to 2026-07-17.
*(Amended same day: the pre-run state 2026-07-14 was entered in error — the ground was last
swept 2026-07-17 (per-country batches AGO/BFA/GMB-2026-07-17). Window was a superset; the
overlap re-surfaced ~11 already-held items, all dropped by ingest dedup. Nothing missed.)*

## 2026-07-23 — two missing sweep run files written retrospectively; run file now mandatory

Bill caught it: the ZAF FY2026/27 (07-22) and KEN FY2026/27 (today, batch job 1 — my
batch-compressed flow) sweeps completed fully but left no run-state file in `sweep/domestic/`,
so a completed run read as a missing one and was nearly re-swept. Both files written
retrospectively from git/log/manifest (marked as such), with stage-coverage tables and re-run
triggers (ZAF: Q1 s32 ~Aug, AENE ~Nov; KEN: 3-month BIRR ~Nov, the FY2025/26 annual BIRR ~Aug/Sep
settles the Supp II question). `DOMESTIC-FINANCE-SWEEP.md` → *Close* now names the run file as the
mandatory first close step — it is the state object the re-run reads. Revert:
`git checkout <sha> -- sweep/domestic/ DOMESTIC-FINANCE-SWEEP.md`.

## 2026-07-23 — finance compile: the pending recomputation closed — 12 hubs rewritten

The leads-drain compile debt paid: Non-state Financing paragraphs recomputed from all 1,232
deal_id-deduplicated non-state records for CIV (US$1.29bn/24 — the six BOC digital-education/
security loans land), CMR, SEN, COD, COG, GHA, GMB, KEN (US$4.44bn/70), MLI, NGA (US$4.48bn/65),
UGA, ZAF (US$9.43bn/61). **Validation before writing:** MAR reconciled exactly; ZAF's small delta
vs the 07-22 print (61/9.43 vs 62/9.36) traced and accepted — the new rules are stricter
(deal_id dedup kills merge-companion double-counts; USD-only summation puts absa/Google-region/
Pepkor correctly in the non-USD bucket) — a rule improvement, not drift. Parser now reads all
three amount-row labels (Commitment (USD) / Commitment / Original amount), USD-bearing cells only.
**Instrument-mix lines left at their 07-22 state** (paragraph totals recomputed; mix refresh needs
the same per-record instrument normalisation — noted for the next full compile). Revert:
`git checkout <sha> -- wiki/places/`.

## 2026-07-23 — content sweeps reviewed: confirmed, zero defects

Review of the CONTENT-SWEEP addition on request. Full-vault check found **no stale references**
(tree/index/CLAUDE.md all already updated; old names survive only in dated run manifests,
correctly). Verified: day-granularity state with one-day overlap and update-last ordering (house
resumability discipline); dedup deferred to ingest (consistent with INGEST step 2);
log/ingested_log division of labour; newspapers state pre-set to 2026-07-14, bounding the heaviest
first window (105 domains). **Observation, no change:** content sweeps carry no window cap (daily
has 10 days) — first journals/organisations runs span ~3.5 weeks × 37/53 domains; the mandated
duration-logging is the right instrument to price that empirically.

## 2026-07-23 — Headless batch driver: `run-overnight.ps1`

Big-batch inline runs exhaust one session's context long before the wall-clock Budget bites (context-bound,
not time-bound). New `run-overnight.ps1` (repo root): a thin PowerShell outer loop that spawns a **fresh
headless `claude -p` session per job** (clean context each time; now the Budget cap actually governs). Each
session does one job per RUN-BATCH's *Single-job (headless) contract* — resolve leftover `[~]`, take next
`[ ]`, mark `[~]`+commit, run, mark `[x]`/`[!]`/`[stop]`+commit, exit — and the script never edits JOBS.md
itself. Driver owns the loop + Stop/Budget checks + serious-fail halt (2 no-progress sessions → stop) +
a finalise session (archive + clear/re-arm). Uses `--dangerously-skip-permissions` (vault is git+Dropbox
versioned). **Exa MCP caveat:** the claude.ai-authed `claude_ai_Exa` server may be absent headless; a
session that finds it gone marks the job `[stop]` rather than degrading to weak built-in search. **Test one
job first:** `run-overnight.ps1 -MaxJobs 1`, confirm Exa was used, then drain all 68. Added RUN-BATCH.md
"Two ways to run" + contract; `run-overnight.log` gitignored. Revert: `git rm run-overnight.ps1`.

## 2026-07-23 — Second batch file: `weekly_jobs.md` (standing) + Mode-aware runner

Content sweeps turned out quick → weekly. New `reviews/weekly_jobs.md`, a **standing** batch (the three
content sweeps: newspapers, organisations, journals) run via **"run weekly jobs"** — no more copy-paste
into JOBS.md. Made RUN-BATCH **target-agnostic**: it drains whichever batch file the trigger names, and
each file declares a **`Mode:`** in its Control block — `one-off` (JOBS.md: archive then empty) or
`standing` (weekly_jobs.md: archive then **re-arm** all jobs to `[ ]` for reuse). Archive filename now
`<filestem>-YYYY-MM-DD-HHMM.md`. Updated RUN-BATCH.md (trigger, loop, *After the run*), JOBS.md (added
`Mode: one-off`), index Processes, reference.md tree. Revert: `git rm reviews/weekly_jobs.md` + revert refs.

## 2026-07-23 — Batch runner archives + clears JOBS.md on completion

Bill's request. On a fully-completed run (no `[ ]` left), RUN-BATCH now copies the run record to
`reviews/jobs-archive/jobs-YYYY-MM-DD-HHMM.md` (no colon — illegal on Windows) and empties the
`## Queue` back to its placeholder, resetting `Stop: no` (Budget left as set). Halted/early-stopped runs
do **not** archive/clear — unreached `[ ]` lines stay for resume. Updated RUN-BATCH.md (loop + *After the
run*), JOBS.md (Rules), reference.md tree. Also applied it now: archived the last completed run
(Kenya 2026 / Senegal 2024 / update wiki) to `jobs-2026-07-23-1753.md` and cleared the queue. Revert:
drop the archive step + restore lines from git.

## 2026-07-23 — Ingest self-triggers finance compile (no more "pending compile")

The `_leads` ingest admitted 20 non-state finance records across ~13 places but left finance compile
**pending** (logged as a to-do) because the auto-trigger lived only in the update-wiki loop, and that
run was a standalone ingest. Fixed: **ingest now runs finance compile itself** whenever it admits any
finance record (`INGEST.md` → *Ending the run*), so it fires however ingest is invoked — standalone,
sweep hand-off, batch, or update-wiki. Removed update-wiki's separate compile step (now ingest-owned;
idempotent so no double-work concern) and squared the wording in UPDATE-WIKI.md and FINANCE-COMPILE.md.
A run that admits finance records and doesn't compile is half-done, never logged-and-deferred.
**Outstanding:** the ~13 hubs from the `_leads` run still need one compile — run `finance compile` once.
Revert: restore the update-wiki compile step + drop the INGEST *Ending* subsection.

## 2026-07-23 — New shared content sweep: journals · newspapers · organisations

`CONTENT-SWEEP.md` (root, standalone process): one parameterised procedure for three content-scoped
(not time-scoped) sweeps. Triggers "run the {journals,newspapers,organisations} sweep". Per-sweep state
`sweep/<target>/state.json` → **`last_swept_day`** (day only), initialised to **2026-06-30**; each run
searches from `last_swept_day − 1 day` to today, then sets `last_swept_day = today` (last step, so an
interrupt re-sweeps). Domain-scoped Exa (same firewall as the daily sweep), stages flat into `new/`,
hands off to `update wiki`. Log line records **duration + window + staged count only** — no
captured/dropped detail (that's `ingested_log.md`). Cadence is on-demand; Bill will tune frequency.
Newspapers carry `iso-3` → place head-start. Wired into index Processes, CLAUDE.md header, reference.md
(folder tree, CSV list, §7). **Organisations:** swept for news/blogs/papers like the others, but the
"report orgs with no content" idea was dropped — pruning dead orgs is a manual job. **Revert:**
`git rm CONTENT-SWEEP.md sweep/{journals,newspapers,organisations}/` + revert refs.

## 2026-07-23 — Daily sweep input renamed: `trade-journals.csv` → `sweep-daily.csv`

Bill's rename (part of the `sweep-*.csv` scheme ahead of new sweeps). Repointed live refs: DAILY-SWEEP.md
(×6), wiki/index.md, wiki/reference.md (folder tree + §7), sweep/archive/README.md. History manifests
left as-is. **Also reframed the sweep's scope**: no longer "journals only" — the list *defines* the
sweep and can hold anything worth checking daily (incl. a temporary entry), journals for now. Updated
DAILY-SWEEP.md title/intro/Boundaries and the index row. Revert: rename back + revert refs.

## 2026-07-23 — ingested_log fix: both columns come from the admitted file's frontmatter

First real ingest run wrote the finance rows wrong — link text = `deal_id`/filename ("boc-civ-003
primary + record") and Place = financier (`CN`, `MOFCOM`) instead of recipient. Fixed the rule in
INGEST.md → *Ending the run*: **Place** = the file's `place` facet (recipient, never the financier);
**Title** = the file's verbatim `title:`, never the filename/slug/`deal_id`. Also corrected the 20
existing rows in `ingested_log.md` (raw frontmatter confirms COD/SEN/NGA/GHA/ZAF etc.). Revert: n/a
(correction).

## 2026-07-23 — New rolling view: `wiki/ingested_log.md`

Bill wants to see what the automatic sweeps (esp. the news sweep) are admitting. New file
`wiki/ingested_log.md`: every `run ingest` appends a `## YYYY-MM-DD HH:MM` section (newest at top)
with one row per source admitted to `raw/` — place facet + verbatim title hyperlinked to the `raw/`
file. **Temporary view, not a store of record:** pruned to the last 7 days on every write; audits go
through `queries/`. Added the write step to INGEST.md (*Ending the run*); listed the file in
reference.md §2 folder tree and index.md → Operations. **Revert:** `git rm wiki/ingested_log.md` +
drop the INGEST step.

## 2026-07-23 — `_leads/` abolished; ingest now has four dispositions

Bill's call: `_leads/` was a black hole — items entered, nothing drained it, and its fill rules were
self-contradictory (CLAUDE.md said "mine then discard" syntheses; INGEST said "park to `_leads/`").
New model: every `new/` item ends in exactly one of four dispositions — **`raw/` (admit) · contradiction
brief · acquisition line · delete** — no parking folder. Rewrites: INGEST.md (header, intro, step-1
synthesis/out-of-scope/undated bullets, step-2a date failure); CLAUDE.md (*The material* out-of-scope,
*Structure*); wiki/reference.md (folder tree, two pipeline lines); wiki/finance-record-spec.md (fact-4
+ missing-year now take the `raw/` route with a dated absence, not `_leads/`); wiki/index.md (ingest row
+ folder table); UPDATE-WIKI.md; documentation/{PROJECT-NOTES,wiki-workflow}.md. Substantive rule changes:
(1) second-hand/AI synthesis is **mined then deleted**, never parked; (2) undated-but-important → a
contradiction brief, then the husk is deleted (claim survives in the brief); (3) finance date/year
failure takes the ordinary `raw/` route with the event date recorded unestablished.
**Next (Bill):** move the 64 `_leads/` files into `new/` and run ingest to sort them; then `git rm -r`
the empty folder. **Downstream:** 6 content pages still cite `_leads/` for specific items
(cbn, nigeria--gov-protect, RWA, ekash, south-africa--infra-store, africa-ai-council) — they'll be
corrected as those items re-ingest. wiki-workflow.md diagram to be redone later (also still shows the
retired `gaps`). **Revert:** `git revert`.

## 2026-07-23 — CLAUDE.md: index.md → Processes must be kept current

Bill's instruction. Folded a maintenance obligation into the existing directory clause of the header
(no new rule/section, per "no new rule without deleting one"): the *Processes* table in `wiki/index.md`
is kept current whenever a process is added, moved or retired — the same edit that creates/moves the
file updates the index. **Revert:** drop the added clause.

## 2026-07-23 — Finance drivers moved to wiki/ (root = standalone processes only)

Bill's call: drivers and specs live in `wiki/`; the repo root holds only standalone runnable
processes. `git mv` `finance-news-driver.md` and `finance-load-domestic-state.md` → `wiki/`, beside
`finance-record-spec.md` (the spec they feed). Rationale: both are invoked by `INGEST.md` step 2a and
feed the spec — drivers, not top-level passes (finance-news-driver's capture mode is "not separately
triggered"). Repointed all live refs to `wiki/finance-…md`: INGEST.md, BUDGET-EXTRACT.md,
DOMESTIC-FINANCE-SWEEP.md, documentation/{budget-extraction-strategies,domestic-budget-extraction}.md,
wiki/reference.md (prose + §2 folder tree), wiki/finance-record-spec.md, wiki/index.md → Processes
links. CLAUDE.md header rewritten: root = standalone processes; wiki/ = drivers + specs. FINANCE-COMPILE.md
and BUDGET-EXTRACT.md stay in root (true triggerable passes). **Revert:** `git mv` back + revert refs.
Old-path refs in log.md/raw/ left as history.

## 2026-07-23 — All runnable processes consolidated in the repo root

Bill's call: every standalone runnable process now lives in root, none in `reviews/` or `sweep/`.
`git mv` (history preserved): `reviews/contradictions/RECONCILE.md` → `RECONCILE.md`; `reviews/ACQUIRE.md`
→ `ACQUIRE.md`; `sweep/daily-README.md` → `DAILY-SWEEP.md`; `sweep/domestic-finance-README.md` →
`DOMESTIC-FINANCE-SWEEP.md` (sweeps renamed to carry "sweep"). Internal relative paths in the moved
files rebased to repo-root (`reviews/contradictions/open|done/`, `reviews/acquisitions.md`). Repointed
all live callers: CLAUDE.md header, UPDATE-WIKI.md, wiki/index.md → Processes, reference.md (§2 folder
tree + §7), reviews/acquisitions.md, reviews/contradictions/open/README.md, BUDGET-EXTRACT.md,
documentation/budget-extraction-strategies.md, sweep/archive/README.md. `reviews/` = worklists only
(acquisitions.md, contradictions/); `sweep/` = state only (daily/, domestic/, archive/, recapture/).
`log.md`/`raw/`/manifest refs to old paths left as history. **Revert:** `git revert` / `git mv` back.
*Note left for Bill: `finance-load-domestic-state.md` and `finance-news-driver.md` keep lowercase names
— not renamed; flag if you want them uppercased to match.*

## 2026-07-23 — CLAUDE.md rule change: every runnable pass is its own file

Bill's call, for consistency (reconcile/acquire had files; ingest and lint didn't). Extracted
`reference.md` §6 → **`INGEST.md`** ("run ingest") and §11 → **`LINT.md`** ("full lint"), step/check
numbers preserved. §6/§11 left as **pointer stubs** so existing "§6 step N" / "§11" refs still
resolve; `reference.md` keeps the schemas/thresholds the passes apply. Repointed UPDATE-WIKI.md,
wiki/index.md → Processes, finance-news-driver.md, finance-record-spec.md. CLAUDE.md header rule
rewritten: *every runnable pass has its own file; reference.md holds the shared
schemas/thresholds*. Also added this session: `RUN-BATCH.md` + `reviews/JOBS.md` (overnight batch
runner), and the *Processes* directory in index.md. **Revert if wrong:** `git revert` restores §6/§11
bodies and the old header; no vault data touched. `log.md`/`raw/` refs to §6/§11 left as historical.

## 2026-07-23 — budget extract: OAG Summary FY2024/25 drained — the audit contradicts the absorption

1 document (archetype F, narrative audit); 1 findings CSV; `new-budget/` empty. **The audit stage
lands against the execution stage:** Vote 1122's connectivity line absorbed 95% (KSh 6.18bn) — and
the OAG's physical verification found **70% of sampled County Connectivity offices with no
internet at all**, the rest on unusable NOFBI; worst-affected are the identity-adjacent offices
(Civil Registration, Lands, Police). e-GP's core contract surfaces: USD 2.98m (Apr 2022, 45% paid
by Oct 2025) — the budget lines fund rollout, not build. NOFBI 2/2E maintenance split across two
entities/ten contracts. Health equipment fee-for-service: suppliers paid 80–255% of SHA-insured
revenue, no PPP approval. e-Citizen directive non-compliance (Judiciary, State Law Office).
Dev-history appended to the connectivity-actual and e-GP records; KEN hub audited-stage line
rewritten. Records built 0 (findings, not lines). No reconciliation mismatches. Revert:
`git checkout <sha> -- raw/ budget-archive/ new-budget/ wiki/`.

## 2026-07-23 — batch run closed: 3/3 done, 0 failed, 0 not reached

**RUN-BATCH first live run — completed.** Job 1: sweep+extract KEN FY2026/27 (ODPC line found).
Job 2: sweep SEN FY2024 (transport wall; slice record). Job 3: update wiki — converged in 1
working iteration. **Reconcile 1/1:** IPRS closed on the held documents — page-grain raw re-read
confirms the Supp III print (232.24m); COB's 255.87m stands as the operative execution comparator
(in-year adjustment outside the printed estimates); both dated on the record. **Acquire 8: 1
acquired, 7 dropped** — the **OAG Summary FY2024/25 landed via the DoH route** (audit stage closed;
staged to `new-budget/KEN/2024/`, extraction pending — the one item of outstanding work on disk);
drops: 3 KEN dead-links (substance already recovered via comparators/press) + 4 SEN transport
(verified URLs preserved for a browser-session retry). Lint: delta clean; Senegal/ODPC entity index
line added. **Decisions:** IPRS dual-value resolution; drop-over-park for the 7 with absences
dated; OAG staged-not-extracted (next budget-extract drains it).
Revert: `git checkout <sha> -- reviews/ new-budget/ raw/ wiki/ budget-archive/`.

batch: 3 done ; 0 failed ; 0 not reached

## 2026-07-23 — batch job 2/3: domestic finance sweep Senegal 2024 — the transport wall run

First Francophone run. **0 budget documents staged** — budget.sec.gouv.sn (a model UUID document
library) fails TLS from this network even DoH-pinned; **4 instruments queued in acquisitions with
verified URLs** (LFI 2024/Loi 2023-18, per-programme annexe, LFR n°2024-16, RTEB Q4-2024).
**Held via press (3 prose + 1 record):** LFI 7,003.6 mds adopted 2023-11-18; Q4 actuals 6,506.16
mds (103.7%, >500 mds arrears folded); **MCTN 2024 envelope 42.7 mds with Économie Numérique slice
16.1 mds** → record `sen-2024-mctn-economie-numerique-appropriated` (SEN slice rule; case-5 target
once the annexe lands). Traps logged: finances.ml is Mali. Senegal section added to extraction
notes. Sector-slice coverage only — stated in run file
(`sweep/domestic/SEN-2024-run-2026-07-23.md`). Revert: `git checkout <sha> -- raw/ reviews/ sweep/ documentation/`.

## 2026-07-23 — batch job 1/3: sweep + extract KEN/2026 → FY2026/27 — 6 documents, 4 records, ODPC vacuum closed

Early-cycle run (year 3 weeks old): PBB + Dev Vols I/III + Statement (2026-06-11) + Mwananchi +
Budget Summary staged, extracted, archived; 1 prose (Business Daily). **Findings:** Vote 1122
**restructured** — new programme 0222000 gives **Data Protection Services its first-ever own line
(KSh 917.3m)**, closing the dated ODPC vacuum on the KEN hub; digital thematic cut again (16.3 →
12.7 → **8.6bn**), half now World Bank KDEAP (origin gate; definite-match to the held KDEAP record
at full extract); Konza/BPO capital line gone, **no Konza DC/KAIST allocation disclosed** — dated
absence on the hub; e-Citizen's first decline (5.59 → 3.61bn). **Cross-year:** baselines =
FY2025/26 Supp I exactly — corroborates Supp II left 1122 unamended (KEN/2025 flag softened; BIRR
still confirms) and recovers Vote 1024 Supp I totals (29.26bn). Records 4 (all appropriated);
CSVs 2; supplementaries/BIRRs/audit are calendar gaps. No new archetypes. Revert:
`git checkout <sha> -- raw/ budget-archive/ new-budget/ documentation/ wiki/`.

## 2026-07-23 — RUN-BATCH reviewed: three resume/parse gaps fixed before first test

Bill's new batch runner (`RUN-BATCH.md` + `reviews/JOBS.md` + template) reviewed on request.
Design confirmed consistent (loop-only, marker-is-state, same concurrency and stop-don't-shred
rules as the passes). **Three fixes applied:** (1) loop scoped to the `## Queue` section — a
literal top-to-bottom read would have executed the format examples as real jobs; (2) launch check
for a leftover `[~]` (interrupted mid-job — today's failure mode): verify from log/git, re-mark;
(3) `[stop]` lines re-queued at resume — an environmental halt is not a judgment on the job.
Revert: `git checkout <sha> -- RUN-BATCH.md reviews/JOBS.md reviews/JOBS-template.md`.

## 2026-07-23 — budget extract: KEN/2025 drained — 5 records; identity up, infrastructure down

9 documents processed under archetypes G/H (no new archetypes — the library held); 2 CSVs to
`budget-archive/KEN/2025/`; `new-budget/` empty. **Records built 5** (3 appropriated, 2 revised).
**Findings:** Vote 1122 16.19bn → 12.22bn (Supp I, −3.97bn, **ICT & BPO/Konza −59%**) while the
same instrument raised **NRB +2.9bn and e-Citizen +1.69bn** — the FY2025/26 priority signal:
registries and the fee-collecting platform over connectivity build. e-Citizen line series now runs
690m → 2.61bn → 3.90bn → 5.59bn across two years. **Cross-year reconciliation exact**: FY2024/25
Supp III finals = FY2025/26 baselines, all lines ✓. **Unresolved, flagged not guessed:** Supp II
PBB has no Vote 1122 chapter but a scrambled summary row may carry +4.1bn dev — manifest
`re_extract` note; the annual BIRR (~Aug 2026) settles it. Not read this pass (re_extract notes):
dev volumes' project heads, BIRR MDA sections, 6-month BIRR. KEN hub Financing extended with the
FY2025/26 series + Article 223 execution warning. Revert: `git checkout <sha> -- raw/ new/ budget-archive/ new-budget/ documentation/ wiki/`.

## 2026-07-23 — domestic finance sweep: Kenya 2025 → FY2025/26 — 9 documents + 2 prose staged

KEN/2025 → FY2025/26 (Jul–Jun; second Kenya run). **9 budget documents** to `new-budget/KEN/2025/`:
full estimates chain (PBB + Supp I Apr-2026 + Supp II Jun-2026 — only two supplementaries), Dev
Vols I+III + Dev Supp I Vol II, **both in-year COB BIRRs (6-month + 9-month, native PDFs)**, Budget
Statement via **KIPPRA repository API** (Treasury copy dead). **Route wins:** cob.go.ke DNS failure
→ DoH + `--resolve`; wpdm JS gate → `?wpdmdl=<id>` — both in extraction notes; no hand-clips.
**2 prose**: Eastleigh Voice 12.7bn digital thematic (−22% YoY, per-line); Citizen Digital on the
9-month BIRR — **Article 223 at KSh 206.81bn in nine months, ~5× prior year** (the year's reading
frame). Acquisitions +1 (Mwananchi FY2025/26 dead-link). Stage coverage: all held except full-year
actual + audit — calendar gaps, re-run picks them up. Run file:
`sweep/domestic/KEN-2025-26-run-2026-07-23.md`. Revert: `git checkout <sha> -- new-budget/ new/ sweep/ reviews/ documentation/`.

## 2026-07-23 — budget extract: KEN/2024 drained — 10 records; the four-value year; Supp II recovered from Supp III

9 documents processed (2 new archetypes added: **G** Kenya PBB chapter + supplementary form, **H**
COB BIRR); 5 CSVs to `budget-archive/KEN/2024/`; `new-budget/` empty. **Records built 10** (5
appropriated, 3 revised, 2 actual), incl. 2 **case-5 resets** of the back-swing's news-built
Vote 1024 records (stage unclear → appropriated, figures confirmed as rounded PBB totals).
**Findings:** Vote 1122 series 22.35→20.00→12.06→16.46bn, absorption 93% — **E-Government spent
105% of a thrice-cut allocation (COB: "possible irregular budget reallocation")**; Vote 1024
absorption 102%; **Supp II quadrupled e-Citizen to KSh 2.61bn while 3,458 of 11,000 services
onboarded**; cross-vote: Treasury e-GP 2.27bn survived untouched, **KRA ERP/CRM 3.44bn zeroed**,
Gov-DC DRC 600m zeroed, Single Window cut to 100m; KNBS census 1,474.3m. **Supp II values
recovered from Supp III's Approved column** — the dead-linked volume's content is no longer lost.
**Contradiction filed:** `kenya-iprs-fy2024-25-revised-estimate` (BIRR 255.9m vs PBB 232.2m; BIRR
internally consistent). Reconciliation: Vote 1122 sub-programmes sum exactly to vote total ✓.
Not extracted (manifest re_extract notes): CA/USF ch.9 financials, BIRR other-MDA sections,
identity-vote project heads. ODPC: no separate line at PBB grain — sits inside Vote 1122; a
dated absence for the hub. Revert: `git checkout <sha> -- new/ budget-archive/ new-budget/ documentation/ reviews/`.

## 2026-07-23 — domestic finance sweep: Kenya 2024 → FY2024/25 — 9 documents + 5 prose staged

KEN/2024 → FY2024/25 (Jul–Jun). **9 budget documents** to `new-budget/KEN/2024/` (PBB original +
Supp I + Supp III, Dev Vol III (ICT votes) + Dev Supp I Vol I (identity votes), **COB annual BIRR
(actual stage, 102MB via Parliament's DSpace mirror — cob.go.ke/oagkenya.go.ke unresolvable)**,
Budget Statement, Mwananchi Guide, CA annual report with USF financial statements); **5 prose** to
`new/` (Techweez ICT 16.3bn breakdown; Supp Appropriation No.2 assent; Supp II ICT cuts 20→12.2bn;
SHA Sh104.9bn system audit + Ndii user-fee defence). **Acquisitions +3** (Dev Vol I original and
Supp II PBB — dead links on Treasury's own site; OAG Summary FY2024/25). Stage coverage: all held
except **audited**. Key year fact: Finance Bill withdrawal → four budget values (4.49→4.37→4.64→
4.37tn) — stage labels mandatory. **Decisions:** OAG Blue Book (630MB) noted-not-staged on size,
URL recorded; SHA Sh104.9bn flagged as outsourced user-fee contract, not an appropriation —
extraction gate warning written into run file + extraction notes. Kenya section added to
`documentation/domestic-budget-extraction.md`. Run file: `sweep/domestic/KEN-2024-25-run-2026-07-23.md`.
Revert: `git checkout <sha> -- new-budget/ new/ sweep/ reviews/ documentation/`.

## 2026-07-23 — update-wiki converged (resumed run); lint clean

Loop closed at 0/0/0 after 4 iterations (1–2 pre-failure, 3–4 resumed). Lint scoped to the run's
delta per house practice (5 new raw files + 9 touched pages): schema, vocabulary, link targets,
entity-index coverage, `ingested:` stamps, link-list form, url quality — **0 defects, 0 fixes**
beyond re-stamping `last_reviewed` on MAR. Committed as the run's close.

## 2026-07-23 — ingest iteration 4: reconcile + acquisition primaries (5 files)

5 admitted → `raw/`, 0 dropped, 0 leads. FCCPC notice (primary, order date 04-15) + The Nation
judgment report → fccpc source appends (pages already fixed by reconcile). AfCFTA communiqué:
**keep-all-three** (HSJ is original journalism, not a release carry — no replace); gov.regional
bullet gains the 2030 joint assessment (trade ~⅔ above trajectory, finance gap halved, 8×
formalisation) + asset-leverage strand, communiqué cited as primary. IMF blog: keep-both with ITWeb
(paper-derived figures live there); tech.ai bullet cites the blog as primary, paper's absence dated.
WB Morocco press release: **merged into `world-bank-mar-2026`** (dev-history: Board approval
**2026-06-12**, **P513936**, instrument PforR per ESSA, ~$200m private-capital mobilisation, National
Sovereign Wallet) — no amount change, finance compile not re-run (idempotent, aggregates unaffected).
Records: built 0, merged 1. Contradictions +0. Acquisitions +0. No new entity tags.
Revert: `git checkout <sha> -- raw/ new/ wiki/`.

## 2026-07-23 — acquisition pass (4 items, all `[untried]`): 3 acquired, 1 dropped

**Acquired, staged to `new/`:** World Bank Morocco press release (Board approval **2026-06-12** to
day precision; **P513936** via the ESSA — upgrades `world-bank-mar-2026`); AfCFTA–ADI communiqué
(au-afcfta.org copy not surfaced; NewsGhana verbatim carry); IMF blog (imf.org timed out; full
IMFBlog carry at investadvocateng — departmental paper still not held, absence noted).
**Dropped:** Norebase report document (`not-retrievable`) — dated absence on `dpi.registry`.
**Decision:** the syndicated-carry fetches count as the item's one attempt, not mirror-hunting —
the document text is what was sought, canonical URLs noted in frontmatter for later replace.
Queue empty. Revert: `git checkout <sha> -- reviews/ new/ wiki/`.

## 2026-07-23 — resumed after internet failure; finance compile + reconcile (iteration 3)

Prior session died between iteration-2 ingest (logged, clean) and the follow-on passes. **Finance
compile:** MAR and ZAF Financing sections recomputed for the 2 new records — MAR US$2.02bn/4 deals
(World Bank US$820m; leading subjects corrected to amount-weighted tech.ai/infra.store/dpi.pay);
ZAF unchanged in USD, Pepkor joins the non-USD bucket (3), Equity 37. **Reconcile: 2/2 resolved,
open/ drained.** DEON order date: **one order, 2026-04-15** (FCCPC's own notice, the primary;
judgment discharged four ex parte injunctions granted that date) — TechCabal's "~May" was loose;
licensing point a holding, not a relief (The Nation). 2 primaries staged to `new/`. SA data-centre
MW: resolved on basis/vintage from the **already-held** Xalam SA brief (350 MW live IT load as of
2024 → 390 MW as of 2025; BI's ~307 an Africa-base artefact) — brief's "nothing on file" note was
wrong. Pages: nigeria--dpi-pay, NGA hub, south-africa--infra-store, MAR/ZAF hubs.
**Decisions:** compiled SA value = Xalam 390 MW (2025) with spread explained; ~307 MW discarded as
derived, not asserted. Revert: `git checkout <sha> -- wiki/ reviews/ new/`.

## 2026-07-23 — ingest iteration 2: DEON enforcement + 2 finance records (3 files)

3 admitted → `raw/`, 0 dropped, 0 leads. FCCPC DEON enforcement-resumption (TAN 07-22):
**keep-both** with held TechCabal 07-21 twin — adds four named oversight workstreams,
compliance-guidelines promise, and the FCCPC-side "dismissed in its entirety" framing; folded as a
★ sub-bullet on nigeria--dpi-pay, new NGA hub bullet, fccpc source append. **Contradiction filed**
(`nigeria-deon-interim-order-date-2026`): interim order April (TAN/FCCPC account) vs May injunction
(TechCabal) — possibly two distinct orders; judgment text not held; inline needs-review markers on
nigeria--dpi-pay. **Finance records admitted 2** (driver-built, verified against
finance-record-spec — five facts pass, slugs canonical, deal_ids unique, underlying sources held in
raw/ with matching URLs): `pepkor-shop2shop-2026` (ZAF, R1.57bn cash subscription + Flash in-kind
R10.6bn, Pipeline) and `world-bank-mar-2026` (MAR, US$250m, month precision, Approved/not yet
effective). No per-deal hub bullets (compile pass). Records: built 0 here, admitted 2, merged 0.
Acquisitions +0. Pages touched: NGA hub; nigeria--dpi-pay; entities fccpc; index mentioned.
**Decisions:** page status on nigeria--dpi-pay kept `active` with inline needs-review at the
disputed claim (narrow date dispute, not page-wide doubt); DEON reliefs framing divergence recorded
in the same contradiction file, not a second item; court not tagged as entity (no held page, not
load-bearing beyond this ruling). Revert: `git checkout <sha> -- raw/ new/ wiki/ reviews/`.

## 2026-07-23 — ingest chunk: regional digital trade + skills/inclusion (8 files)

6 admitted → `raw/`, 2 deleted, 0 leads. AfCFTA–ADI Foundation JV (signed 2026-07-18 NY):
wearetech FR + High Street Journal EN both kept — FR holds three-pillar detail/late-2026 pilots,
EN holds the >$1bn mobilisation target and Mene/Bhatia quotes (frontmatter built for EN; published
2026-07-21, author Isaac Aidoo, confirmed on-site; renamed on move). **Finance branch run: fails
fact 3** (mobilisation target, no committed amount) → ordinary sources, no record. CAMTEL–MINESUP
115 internships (update to held 06-03 MoU thread); UICT UJ Connect Batch 4 (JICA project close;
entity slugs corrected to corpus canonical `uganda-institute-of-ict`/
`ministry-of-ict-and-national-guidance-uganda`); TTCL–DIT NICTBB training; MICT SETA referred to
National Skills Authority (ZAF skills-governance). **Deleted:** RAEng Africa Prize 2027
candidatures-open (awards PR, no development, no held standing object) and CA-Kenya Koptega
computer donation (recurring CSR programme; Siaya 07-17 twin held; marginal detail, no added
value). Records: built 0, merged 0. Contradictions +0. Acquisitions +1 (AfCFTA Secretariat
communiqué on the JV). Pages touched: hubs XAF/CMR/UGA/TZA/ZAF; concepts gov.regional, dpi.pay,
dpi.exchange, finance.mou, capacity.training; entities afcfta, afcfta-digital-trade-protocol,
camtel, ttcl, nictbb, dhet-south-africa; indexes topics/places/mentioned; UGA gains
capacity.training. **Decisions:** Koptega drop over attach (programme already evidenced; a
per-school bullet is log accretion); JV bullet full-form on gov.regional only, brief
cross-references on dpi.pay/dpi.exchange; no person tags (Mene/Bhatia/Zawedde — institutions are
the actors). Revert: `git checkout <sha> -- raw/ new/ wiki/ reviews/`.

## 2026-07-23 — ingest chunk: telecom & infrastructure (9 files)

9 admitted → `raw/`, 0 dropped, 0 leads. Starlink Seychelles State-House soft-launch briefing
(keep-both with Jun-2026 launch report — adds SCRA authorization); Starcell revocation formalised
(keep-both with FPA 07-17 twin — adds 90-day suspension window, UAF non-payment, spectrum reversion,
Omdia Q2-2026 subscriber figures; Orange Liberia LRD 4m SIM-privacy fine landed as its own dated fact
on liberia--gov-protect); Boakai Technology Summit address (frontmatter built, event 2026-07-21,
published 2026-07-22, renamed on move); MTN North West R150m twins both kept (TAN rand primary + TC
conversion/industry context) — finance branch: five-fact pass but **merged, not built** — one dated
line into held record `mtn-group-zaf-2026` ("part of its 2026 investment plans" → component of the
R21.8bn pledge; avoids double-count); Vodacom–Chapo meeting (relationship signal, no deal); Airtel
Nigeria retail expansion; ATU usage-gap call (XAF, ~1bn covered-but-offline, dated); SA data-centre
resource-crunch Reuters piece (frontmatter built, renamed on move) — capacity-figure spread 350 vs
~400 vs ~307 MW recorded on south-africa--infra-store and **contradiction filed**
(`south-africa-data-centre-capacity-mw-2026`). Records: built 0, merged 1. Acquisitions +0. Pages
touched: hubs SYC/LBR/ZAF/MOZ/NGA/XAF; intersections seychelles--infra-connect, liberia--gov-protect,
south-africa--infra-connect, south-africa--infra-store, mozambique--infra-connect,
nigeria--infra-connect; entities starlink, lta-liberia, otdi-liberia, vodacom,
african-telecommunications-union, dcdt-south-africa, teraco, eskom, equinix, mtn-sa-2026-investment;
raw record mtn-group-zaf-2026 (dev-history append); indexes topics/places/mentioned + concept
infra.connect places (SYC added). Revert: `git checkout <sha> -- raw/ new/ wiki/ reviews/`.

**Decisions:** MTN R150m merged into `mtn-group-zaf-2026` rather than built as its own record —
"as part of its 2026 investment plans" read as a provincial slice of the R21.8bn programme; if later
shown additive it becomes its own record (noted in the record). SYC Jun-"launch" vs Jul-"soft launch"
treated as refinement not contradiction (availability vs regulatory formalisation), recorded dated on
seychelles--infra-connect. Eskom "no pressure on the grid" (2026-07) held beside the 2029-constraint
reading (2026-02) as dated positions, not overwritten. LBR summit "announced, not held" bullet marked
superseded, kept dated. fmcide tag kept as-is (variant of
federal-ministry-communications-innovation-digital-economy-nigeria — drift left for entity pass).
Pageless actors left as tags (starcell-international-liberia, orange-liberia,
seychelles-communications-regulatory-authority, north-west-provincial-government,
presidency-of-mozambique, airtel-nigeria, foxglove, ministry-of-state-liberia,
ministry-of-posts-and-telecommunications-liberia, liberia-technology-summit-2026).

contradictions - 1 ; acquisitions - 3 ; awaiting ingest - 11 (other chunks + 2 staged finance records) ; decisions logged - 6

## 2026-07-23 — ingest chunk: data protection, cyber, AI governance, platform policy (8 files)

7 admitted → `raw/` + 1 primary extracted-and-ingested. Zambia Cyber Crimes Act compliance statement
(keep-both with held 07-21 twin — adds public-servant confidentiality duty + equal-application wording;
same 2026-07-18 event, no new hub bullet); Kenya AI-policy ITWeb (keep-both with Kahawatungu twin — adds
PS Tanui quotes + Nairobi opening; folded into existing KEN bullet); SA Labour Court AI-hallucination stay
(new event, month-precision judgment date); IMF *Africa Can Grow Faster With AI* coverage (reference
study, cited-not-absorbed, report doc → acquisitions); Mozambique PEPI 2026–2035 (event 2026-06-30,
Resolution 53/2026 — frontmatter built); Djibouti MAZU 2.0 (event 2026-07-17, WAIC Shanghai); ZAF
TikTok-creator-pay push (summit date unestablished). 1 parked-inadmissible → `_leads/`: Noah
Intelligence Angola APD piece — AI-generated synthesis (Noah Wire); its primary (Valor Económico,
2026-06-26, APD fines Crescer Tech US$505k / Fast Digital Center US$112k, >Kz 600m total + TAAG/BDA
Sept-2025 baseline) fetched verbatim and ingested as
`raw/2026-06-26-apd-aplica-multas-milionarias-crescer-tech-fast-digital-center.md`. Finance branch: no
item five-fact-passable, 0 records. Contradictions: 0 (APD fines consistent with held active-APD state).
Acquisitions +1 (IMF report). Pages touched: hubs AGO/ZMB/KEN/ZAF/MOZ/DJI/XAF; intersections
angola--gov-protect, zambia--infra-cybersec, south-africa--tech-ai, mozambique--tech-ai; concept tech.ai;
entities apd-angola, cyber-security-act-zambia, imf, dcdt-south-africa, solly-malatsi, sars. Indexes
unchanged (no new pages). Revert: `git checkout <sha> -- raw/ new/ _leads/ wiki/ reviews/`.

**Decisions:** Zambia twin kept (borderline drop — public-servant duty judged real payload); Crescer
Tech fine exceeding Law 22/11's US$150k ceiling read as multi-infraction accumulation, noted on
angola--gov-protect, not filed as contradiction (deliberation texts not held); PEPI tagged
gov.policy/tech.ai/gov.legislate, its 719.6m-MZN component treated as strategy costing not
finance.budget; IMF figures kept off country pages per reference-study rule; Malatsi tagged alongside
DCDT (has page, is the speaking actor); pageless actors left as tags (pepi-mozambique, both Djibouti
met agencies, ministry-of-information-and-media-zambia, labour-court-south-africa,
matjhabeng-local-municipality, tiktok, crescer-tech, fast-digital-center).

5 admitted → `raw/` (NITDA–NIMC DPI partnership NGA — consistent with held NIMC Act 2026 state, no
contradiction; Gates Rwanda visit — visibility marker, no commitment; UNICEF/GPE Lesotho FLN dashboard;
Morocco WB $250m program — frontmatter built, published 2026-07-22; Roberts AFRINIC astroturfing
account — frontmatter built, published 2026-07-18, XAF). 1 deleted: SLE Gleaner Bhutan-NDI MoU clip
(same joint release as held 2026-07-08 Biometric Update source, which cites the primary; zero added
payload — drop). Finance branch: 1 record built into `new/` — `world-bank-mar-2026` (US$250m, June 2026
month precision; WB API enrichment attempted, program not yet indexed, no P-number). Acquisitions +1
(the program's WB appraisal document). Pages touched: hubs NGA/RWA/LSO/XAF; intersection
nigeria--dpi-id; concept dpi.mis; entities nitda, nimc, gates-foundation, unicef-lesotho, afrinic,
world-bank (source appends); indexes unchanged (no new pages). Revert:
`git checkout <sha> -- raw/ new/ wiki/ reviews/`.

**Decisions:** Gates Rwanda topics trimmed to dpi.govtech (no MIS named; dpi.mis dropped from staged
frontmatter); Bill Gates the person untagged — institution is the actor. Lesotho retagged
unicef → unicef-lesotho (country office is the actor and has the page); GPE and the education ministry
left as pageless tags. Morocco gets no per-deal hub bullet (finance rule — hub presence via compile);
deal instrument left blank ("results-based" suggests PforR but unstated). Astroturfing admitted as
first-hand published account (author's own investigation; machine-assisted analysis is the reported
method, not an AI-synthesis source), scoped in — integrity of AFRINIC's resource-governance process.
Revert any by reverse edit.

contradictions - 0 ; acquisitions - 1 ; awaiting ingest - 0 (this chunk; 1 deal record staged for next drain) ; decisions logged - 5

## 2026-07-23 — ingest chunk: VC & startup ecosystems (7 files)

5 admitted → `raw/` (Launch Africa first LP distribution — kept-both with held TechCabal H1 piece,
distinct payloads; Somalia national startup network EU/UNIDO; Tech Stars profiles Silina Tech TGO /
Motowa CMR / Padue ZMB — standing-object captures, all pass the platform test). 2 deleted: Reme-D EGY
raise (physical diagnostics manufacturing, no data/digital-platform layer — out of scope, reject);
Botswana Tech Fund $6.7m brief (restates the held 2026-04-27 first-close figure £5m/~$6.7m, no event
date, no new fact — drop). Finance branch: 0 records — Launch Africa $2.5m is a distribution *to* LPs,
fails facts 2/5 (no recipient place, no mappable purpose); BWA brief would fail fact 1 (investors
unnamed) had it survived dedup. Pages touched: hubs XAF/SOM/TGO/CMR/ZMB; concepts finance.new,
tech.innovate; entities unido, european-union (source appends); 3 indexes. Revert:
`git checkout <sha> -- raw/ new/ wiki/`.

**Decisions:** Somalia IP-legislation claim carried as a dated forward-looking statement (SOM hub +
tech.innovate), gov.legislate tag kept on the source but concept page not edited — no bill/text/timeline
exists. dpi.mis concept and togo--dpi-mis not edited for Silina Tech (that intersection is
education-scoped; one profile is below the concept bar) — payload on TGO hub. Launch Africa distribution
dated to the event (2026-06 per held TechCabal), not ITWeb's publication date. `bic-somali-project`
minted as a tag (project is the acting vehicle); founders of all three profiled startups deliberately
untagged per institutions-not-officeholders. tech.innovate added to ZMB and XAF hub topics (already
implied by content). Revert any of these by reverse edit.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 (this chunk) ; decisions logged - 6

## 2026-07-23 — ingest chunk: payments & fintech (13 files)

10 admitted → `raw/` (M-KOPA milestone TAN+TC kept-both — distinct payloads; Fusepay Fuse360 TC;
LemFi–BVNK; Pepkor FintechCo + deal record `pepkor-shop2shop-2026` built into `new/` for next drain;
Airtel Money UGA–Britam; Yellow Card remarks; Norebase report coverage; TechTrends cross-border
analysis, frontmatter built, published 2026-07-19; M-PESA ETH–Gebeya). 3 dropped/deleted: M-KOPA +
Fusepay FR brèves (3-sentence compressions of kept twins), eZi Remit ITWeb (adds nothing over held
TAN 07-21 twin, which already carries the WB fee figures; that twin fails finance fact 3 — no amount —
so no record). Pages touched: hubs KEN/NGA/RWA/UGA/ETH/SYC/XAF/XSS; intersections kenya/seychelles/
south-africa/uganda/ethiopia--dpi-pay; concepts dpi.pay, dpi.registry, include.access; entities
fusepay, airtel-uganda, safaricom-ethiopia, papss (source appends); 3 indexes; acquisitions +1
(Norebase report). Revert: `git checkout <sha> -- raw/ new/ wiki/ reviews/`.

**Decisions:** M-KOPA places trimmed to [KEN, NGA, XSS] (five-market milestone spans 3 sub-regions;
country payload only KEN/NGA) — revert by re-tagging UGA/GHA/ZAF. Fusepay places [SYC] only (MUS is a
scheduled Sep-2026 expansion, not effected). Airtel Money Uganda tagged as [[airtel-uganda]] (existing
page; Airtel Money is its platform) not a new slug. M-PESA Ethiopia tagged [[safaricom-ethiopia]]
(existing canonical), Gebeya added; parent safaricom untagged. Pepkor's Flash slugged `flash-pepkor` to
avoid collision with held `flash-drc`. Pepkor deal: commitment = R1.57bn cash subscription + Flash
in-kind (R10.6bn valuation); R21.3bn recorded as valuation, not commitment; status Pipeline; no USD
invented. No ZAF hub bullet for Pepkor (finance items compile in aggregate); substance on
south-africa--dpi-pay. TechTrends piece admitted as standalone bylined analysis (not a digest); no
hub-event bullet — filed as *(analysis)* on XAF. m-kopa flagged in mentioned-index as entity-pass
mint + tag-drift merge candidate (variant slugs in prior finance records).

contradictions - 0 ; acquisitions - 1 ; awaiting ingest - 1 (pepkor deal record) ; decisions logged - 8

## 2026-07-22 — update-wiki: converged in 1 iteration; ZAF three-year series live

Passes: **ingest ×1, finance compile ×1, full lint ×1**; reconcile/acquire skipped (0). 13 records + the
May-2026 speech admitted (`raw/` domestic records: 74, ZAF 56). One hub bullet added (non-finance
governance event): **the National AI Policy withdrawn over irresponsible generative-AI use in its
drafting; expert review panel (Rosman) appointed** — plus DBSA's 2.2% access-gap figure and the
partial-privatisation signal. Compile: the ZAF hub now carries the **three-year stage-split series** —
FY2024/25 appropriated R5.10bn / revised R1.11bn / audited R908m (+6 execution rates); FY2025/26
appropriated R3.28bn / revised R1.25bn; FY2026/27 appropriated R2.92bn (11 lines). Lint: baseline exact.
Revert: `git checkout <sha> -- raw/ new/ wiki/`.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 0

## 2026-07-22 — sweep + extract: ZAF 2026 → FY2026/27 — 13 records; the vote restructured; DHA earmark gone

Sweep: ENE 2026 chain by direct URL (FullENE, Vote 30 chapter, B4-2026 — filename pattern changed, no
brackets; a Special Appropriation Bill B3-2026 noted unfetched); May-2026 budget-vote speech staged
(FY2026/27 **R2.549bn**; **the National AI Policy withdrawn over irresponsible generative-AI use in its
drafting**, an expert review panel appointed — a wiki-grade governance event in its own right). Extract:
**Vote 30 restructured** — six new programme names, series joined on function (Broadband persists in
*Digital Infrastructure and Technologies*: year 4 = **R285.1m**; the broadcasting subprogramme's 2025/26
comparator spikes to R896.7m = the Sentech dual-illumination/transmission one-offs, gone by 2026/27).
Cross-vote series continue: Justice Modernisation **R727.9m**; **Information Regulator R145.9m, now a
starred public-entity earmark** (year 3 of the DPA series); DHA Transversal IT R1,166.9m — with its
2025/26 comparator **restated to R1,324.1m** (in-year additions; held AENE-2025 volume flagged for
re-extract) and the B5/B16 modernisation earmark **absent from B4-2026**; dtic inquiry steps up to
R33.8m. 2 rows unresolved (-layout; flagged `re_extract: YES`). 4 CSVs archived; `new-budget/` drained.
Calendar gaps: AENE 2026 (~Nov), FY2025/26 outturn (~Oct). Revert: `git checkout <sha> -- new/ new-budget/ budget-archive/ documentation/ wiki/`.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 14 ; decisions logged - 2
*(new-budget outstanding: none)*

## 2026-07-22 — update-wiki: converged in 1 iteration; ZAF two-year series live on the hub

Passes: **ingest ×1, finance compile ×1, full lint ×1**; reconcile/acquire skipped (0). 17 records + 2 prose
admitted (`raw/` domestic records: 61, ZAF 43); speech figures already held at document tier (no records
from prose); TechCentral year-end account annotated onto the revised SA Connect record (**FY2025/26 closed
R3.61bn of R3.74bn**; outturn detail = the year-later re-run's question). Compile: ZAF hub now carries the
**two-year stage-split series** — FY2024/25 appropriated R5.10bn / revised R1.11bn / audited R908m + the
six execution rates; FY2025/26 appropriated R3.28bn (15 lines) / revised R1.25bn. Lint: baseline exact.
Revert: `git checkout <sha> -- raw/ new/ wiki/`.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 0

## 2026-07-22 — budget extract: ZAF/2025 drained — 17 records; the rollover documented; DPA goes standalone

All 7 documents extracted and archived (no new archetypes; 5 CSVs). **17 records staged** (8 Vote 30:
7 appropriated + 1 revised; 9 cross-vote appropriated). The year's story at document grain:
**Broadband/SA Connect appropriated R267.1m (the enacted cliff) → AENE rollover +R1,004,787k
"for costs related to the rollout of the South Africa Connect project" → adjusted R1,250,986k**
(vote-level delta exact: 2,545,626 → 3,550,413) — the document counterpart of the DG's
R1.1bn-arrived-in-January account. **Information Regulator: R135.7m and a standalone public entity from
2025-04-01** (Justice reprioritises R424.1m over the MTEF for the transition; the Regulator now an
"Of which" agency earmark in B16). Cross-vote series all continue (DHA Transversal IT R1,146.6m with
named kiosk/smart-ID/birth-automation/eTA components; Justice Modernisation R695.3m; Correctional IT
R377.4m; StatsSA 63.3+149.4; dtic 20.6; DPSA 23.9; DHA Identification 175.8). Committee-report quarterly
path annotated onto the held FY2024/25 audited record. **B16 earmark values column-displaced —
`re_extract: YES` recorded** (pdfplumber candidate). FY2025/26 outturn/audit = calendar gaps for the
year-later re-run. Revert: `git checkout <sha> -- new/ raw/ new-budget/ budget-archive/ documentation/`.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 19 ; decisions logged - 1
*(new-budget outstanding: none)*

## 2026-07-22 — domestic finance sweep: ZAF 2025 → FY2025/26 — 7 documents + 2 prose staged

Full enacted chain fetched by direct URL (the 2025 budget tabled three times; May "Budget 3.0" is the
cycle): FullENE 2025 (**priority 0, obtained** — cross-vote available), Vote 30 chapter, B16-2025,
FullAENE 2025, AENE Vote 30, B27-2025 — plus a block-7 find, the **Portfolio Committee budget-performance
report** (2025-10-07: FY2024/25 execution 46% at Q3 → 73% at year-end, underspend 95–97% SA-Connect-driven,
the January R1.4bn payment plan, the Reg 6.4 rollover). Prose: Malatsi 2025 budget-vote speech (FY2025/26
**R2.545bn**; SA Connect **R710m MTEF**) and the **TechCentral original** of the DG's year-end account
(R1.1bn → R116m in-year collapse; dept outturn R3.61bn of R3.74bn; eriinfo confirmed a mirror). Stage
coverage: proposed/revised held; **outturn/audit not yet published** (AR ~Oct 2026, AGSA ~Mar 2027) —
calendar gaps for the year-later re-run, not acquisitions. Chain: budget extract next.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 2 ; decisions logged - 0
*(new-budget outstanding: ZAF/2025 — 7 documents awaiting extract)*

## 2026-07-22 — update-wiki: converged in 2 iterations; both B14 questions closed from acquired documents

Passes: **ingest ×2, finance compile ×2, acquire ×1, budget extract ×1** (chain rule — acquired budget
documents land in `new-budget/`, extract drains it), **full lint ×1**; reconcile skipped (0).
**Acquire:** both AENE items — Vote 25 chapter directly; Vote 5 via the **FullAENE full volume** (412pp,
per-vote filename unexposed; volume serves future votes too). **Extract:** both B14 questions closed —
**Justice's −R545.9m cut spared both digital lines** (Justice Modernisation unchanged R661,157k;
Information Regulator unchanged R110,860k, +R500k software capital for the Regulator in the internal
virement); **DHA's +R1.6bn addition went to Corporate Services (+R505.0m) while Transversal IT was cut
R79,462k → adjusted R1,110,636k** — a material movement, built as the dataset's second `revised` record
(restated-total). 3 held records gained dated resolution lines; 2 CSVs archived; `new-budget/` drained
and empty; manifest closed (cross-vote / no). Compile: ZAF 26 lines, revised stage now on the hub. Lint:
baseline held. Revert: `git checkout <sha> -- raw/ new/ new-budget/ budget-archive/ wiki/ reviews/ documentation/`.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 1

## 2026-07-22 — budget re-extract: b5/b14 reopened at cross-vote scope — 1 record, 3 annotations, 2 acquisitions

First run of the re-extract mechanism, on its standing job. **b5-2024:** the DHA earmark confirmed —
**"Information and Modernisation Systems: Operations" R736,994k**, nesting inside the held Transversal IT
record (annotated, not double-recorded: earmark = ops share, projects ≈ R453m unearmarked); bill-wide
earmark scan found one more prize — **the Science ICT transfer (R22,529k) legible in B5's schedule where
the ENE table column-collapsed**, closing the first run's extraction failure with a **new record** (method
note: check the bill before pdfplumber). **b14-2024:** in-year movements the sector view missed —
**DHA +R1.6bn** (election year; Administration +R353.1m) and **Justice −R545.9m** hitting the programme
housing Justice Modernisation and the Information Regulator; per-subprogramme impact not establishable at
B14 grain → **Vote 5 + Vote 25 AENE chapters to acquisitions [untried]**; three held records annotated
with dated dev-history lines, nothing overwritten. 2 additive CSVs archived; manifest: both bills →
`extracted_scope: cross-vote`, `re_extract: no`. Revert: `git checkout <sha> -- new/ raw/ budget-archive/ new-budget/ reviews/ documentation/`.

contradictions - 0 ; acquisitions - 2 ; awaiting ingest - 1 ; decisions logged - 1

## 2026-07-22 — update-wiki: converged in 1 working iteration; cross-vote records live on the hub

Passes: **ingest ×1, finance compile ×1, full lint ×1**; reconcile/acquire skipped (0 throughout).
10 cross-vote records admitted (`raw/` domestic records: 42, ZAF 24). Compile: ZAF domestic-state now
**R5.07bn appropriated across 16 clean lines FY2024/25** (Vote 30 R2.11bn + cross-vote R2.96bn), audited
R908m/6 lines, execution rates unchanged, partials reported apart. Lint: baseline held exactly — no new
defects (new records' entity tags are frontmatter tags, not links). Revert: `git checkout <sha> -- raw/ new/ wiki/`.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 0

## 2026-07-22 — budget extract (cross-vote run): ZAF/2024 fully drained — 10 records from 6 votes, ~R2.96bn

Step 4a's first execution over the FullENE (1,073pp, 42 votes indexed cleanly). **10 appropriated records
staged from 6 votes beyond Vote 30, totalling ~R2.96bn — 1.4× the sector vote's own clean total**, proving
the one-vote bias was worse than the first scan showed. Headliners: **DHA Transversal IT R1,190.1m**
(eVisa R100m, kiosks R60m, births automation R15m, smart-ID rollout R15m named in-chapter) + Identification
Services R184.7m + PNR R208m (narrative-stated project line); Justice Modernisation R661.2m; Correctional IT
R358.0m; **Information Regulator R110.9m — the single-mandate carve-out's first application**, with the DPA
funding ramp R29.9m→R141.0m (2020/21→MTEF) captured as a series. StatsSA ×2 (60.2 + 143.0); DPSA e-Gov
programme R25.3m; dtic digital-market inquiry R20.1m. **Decisions:** uniform grain rule — identifiable
departmental IT/digital subprogrammes record whole (precedent: Bill's own Correctional-IT scan line);
narrative-stated allocations inside mixed subprogrammes are recordable (the narrative is part of the
document). **Extraction failures ×2** (one attempt each): Science ICT transfers, Treasury IFMS — column
collapse under -layout, pdfplumber candidates. Looked-for-not-found on the ZAF hub, dated: no
separately-appropriated CSIRT line; CPSI not single-mandate digital. Scan CSV archived; FullENE pair
archived; `new-budget/` **fully drained and empty**. Case 5: none (no non-document ZAF 2024/25 records
remain). Revert: `git checkout <sha> -- new/ new-budget/ budget-archive/ wiki/ documentation/`.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 10 ; decisions logged - 2
*(new-budget outstanding: none)*

## 2026-07-22 — re-extract mode; manifest records extraction *scope*, not just date

**The gap CC's "nothing has changed since the last extraction" exposed.** True of the run — the
library gained the cross-vote scan *before* the ENE pass, so re-running found nothing. False of eight
of the nine documents, which were extracted at Vote 30 scope *before* that capability existed. With
only `extracted: <date>` on every row, per-run and per-document were indistinguishable.

**Decisions:**

- **`extracted_scope` and `re_extract` added to `new-budget/manifest.csv`** (17 cols).
  `extracted_scope` = `sector-vote | cross-vote | narrative | n/a`; `re_extract` = `no` or a note
  naming what is missing. A document read at sector-vote when that was all the library could do is an
  honest record that becomes a work item automatically the moment the library grows — rather than
  depending on someone remembering. Set at step 5a, while it is known. *Revert: two columns in the
  manifest, step 5a.*
- **Re-extract mode added** (`"run budget re-extract"`). Reads archived artefacts **in place** — the
  state is still *extracted*, this is a second reading not a reprocessing — writes **additional**
  CSVs beside the originals rather than overwriting (the first extraction remains a true record of
  what that pass saw), and **definite-matches before creating**, because by construction this pass
  re-reads documents the wiki has already mined and blind creation is how duplicates get made. A
  figure disagreeing with a held record is a contradiction, not a newer-read-wins overwrite.
  *Revert: the Re-extract section of `BUDGET-EXTRACT.md`.*

**Standing job, ZAF 2024:** `b5-2024` and `b14-2024` flagged `re_extract: YES` for votes 5, 11, 14,
22, 25, 39. B5 carries an enacted earmark under Home Affairs Programme 1 — *Information and
Modernisation Systems: Operations*, **R736,994 thousand** — never read, and worth reconciling against
the ENE's Transversal IT Management at R1,190.1m (different grain, possibly different scope). Ruled
**not** candidates: the statistical annexure (vote-total granularity, cannot revise a subprogramme
line) and the DCDT annual report (other votes' outturn needs *their* annual reports — an acquisition,
not a re-extract).

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 10 ; decisions logged - 2

## 2026-07-22 — cross-vote scan made required; identity/data-exchange and governance blocks; envelope carve-out

**Bill's catch: the sweep only ever looked at the sector vote.** Track A's institution list is
sector-scoped by construction, so 8 of the 9 ZAF documents were Vote 30 or all-vote and every run
inherited a one-vote bias. Checked against the ZAF FY2024 full ENE (42 votes): **genuine digital lines
in 7 votes besides Vote 30** — justice modernisation R661.2m, correctional-services IT R358.0m,
statistics business modernisation R60.2m, public-service e-government R25.3m, science ICT R22.5m,
trade digital-market inquiry R20.1m, treasury digitisation. The two largest exceed R1bn against Vote
30's R3,968.6m, and the scan missed home affairs identity spend, so the true understatement is worse.
**A total built from the sector vote is not a total.**

**Decisions:**

- **The cross-vote scan is a required extraction step** (step 4a of `BUDGET-EXTRACT.md`), not
  enrichment. Where no full estimates volume is held, the run states *sector-vote coverage only* on
  the place hub and sends the volume to acquisitions. **The full volume is promoted to priority 0 in
  the sweep**, above the appropriation act — and my earlier "not worth extracting: redundant" note on
  it is struck. That judgement was wrong in an instructive way: I compared its sector chapter to the
  standalone and never asked what the other 41 chapters held. *Revert: the cross-vote section of
  `budget-extraction-strategies.md`, step 4a, sweep priority 0.*
- **Sweep Blocks 4b and 4c added** (Bill). 4b names **identity** (population register, CRVS,
  biometric enrolment, ABIS, passports) and **data exchange** (interoperability layer, government
  service bus, single window, master data management) explicitly — both are DPI, both sit outside the
  ICT vote, and data exchange is funded by whoever coordinates departments rather than by the sector
  ministry. 4c covers **governance structures and processes**: regulators, data protection
  authorities, CSIRTs, transformation units. Hardest category — small money inside *Administration*
  and *Policy* programmes, mostly compensation of employees, disproportionately donor-funded (so much
  of it exits via the origin gate as `non-state`, which is itself a governance fact worth stating),
  and often not appropriated at all.
- **Absence is a required output, not a null result.** An enacted data protection act with no line
  for its authority is the gap between legal and fiscal commitment — the sharpest thing this dataset
  produces. Both the sweep and the extraction pass must close with what was looked for and not found,
  dated onto the place hub (`CLAUDE.md` → *Currency*).
- **Envelope rule gains a single-mandate carve-out** (Bill's problem, CC's wording, now in the
  driver's *Scope*). Where a body's **entire statutory mandate** is data governance or digital
  transformation, its total appropriation is a record at `scope_confidence: whole`. The envelope rule
  exists because a *ministry* does many things; a single-purpose authority does one, and excluding it
  would delete the one number saying what a state spends on governing data. **Test is the mandate,
  not the name** — a regulator that also handles broadcasting content and posts stays an envelope.
  *Revert: the carve-out block in the driver's Scope section.*

**Trap recorded:** `ict` is a substring of `district`, `conflict`, `restrict` — 6 of 13 first-scan hits
were district-health and conviction-rate rows. Cross-vote scanning needs word boundaries and should
prefer longer terms over bare `ict`.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 4

## 2026-07-22 — update-wiki: converged in 2 iterations; SA Connect R3bn contradiction resolved

Passes: **ingest ×2, finance compile ×2, reconcile ×1, full lint ×1**; acquire skipped (0 throughout).
**Ingest 1 (15):** 14 budget-extract records admitted (`raw/` domestic records now 33) + AGSA ICT-findings
source (ZAF hub bullet, `sita` append). **Compile:** ZAF domestic-state now stage-split with execution
rates on the hub (SA Connect 39% against appropriation; vote-wide picture on the page).
**Reconcile:** the SA Connect ">R3bn" resolved — it is the **Budget-2023 two-year Phase 2 allocation**
(2023/24 R1.1bn→R935m; 2024/25 R1.9bn = our extracted R1,894.6m line; entity split BBI/Sentech/SITA per
parliamentary answer NW3503), cited retrospectively at Budget 2026; **never an FY2025/26 line** (NW5126:
Phase 2 suspended FY2025/26 awaiting rollover, R710m MTEF). Held FY2025/26 record **retired**; context
written onto the appropriated record; residual tension held dated (Budget Review declares Phase 2
"complete" in the year officials describe it stalled). **Ingest 2 (3):** NW3503, NW5126, ITWeb Budget-2026
admitted with entity appends. **Lint:** baseline held; +2 dead-link targets are today's deliberate
below-bar tags (agsa, sentech); no defects. Revert: `git checkout <sha> -- raw/ new/ wiki/ reviews/`.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 2

## 2026-07-22 — budget extract: ZAF/2024 drained — 14 records, the 42.2% finding, 1 contradiction

First live run. **8 of 9 documents extracted and archived** (archetypes: A×1, B×2, C×1, D×1, E×1, F×1,
s32 processed-no-records as the library predicted); **FullENE deliberately left in `new-budget/ZAF/2024/`**
— its cross-vote purpose (Home Affairs ID, Treasury FMS lines) is undone work, correctly visible.
**14 records staged** (7 appropriated + 7 audited; Vote 30: P2/P3/P6 + P4 partial at programme grain,
P5 at subprogramme grain — Broadband/BDM/ICT Support; Administration + P5-management skipped as
non-digital admin) + the AGSA ICT-findings source page (72 projects, 41 failing worth R12.1bn; 64% weak
cyber). **Reconciliation held to the rand** across ENE↔B5↔AENE↔stats-annexure↔AR (3,968,611k five ways).
**Headline: Broadband/SA Connect appropriated R1,894.6m → final R1,740.6m → actual R734.8m, 42.2%; vote
73.5%; R145.9m vired into entity transfers (P4, 99.9%).** **Case-5 reset applied:** the speech-built
proposed record retired, rebuilt as appropriated+audited pair, stem kept; speech's R1.858bn = project
figure inside the subprogramme, not a contradiction. **1 contradiction filed:** FY2025/26 "SA Connect
Ph2 >R3bn" impossible against MTEF R267.4m + vote R2.5bn — held record flagged, excluded from aggregates.
Judgment: AENE virements (≤R1m, netting zero) folded as dev-history, no revised-stage records. Extracted
tables committed as 7 CSVs in `budget-archive/ZAF/2024/`; manifest updated; notes appended.
Revert: `git checkout <sha> -- new/ raw/ new-budget/ budget-archive/ reviews/ documentation/`.

contradictions - 1 ; acquisitions - 0 ; awaiting ingest - 15 ; decisions logged - 3
*(new-budget outstanding: ZAF/2024 FullENE pair — cross-vote extraction deferred)*

## 2026-07-22 — budget-extract review: two fixes applied, ready to test

Read the whole chain (BUDGET-EXTRACT.md, strategy library, budget-archive/, reference §2, driver
bare-year ruling, sweep chain-wiring, rebuilt manifest). Verdict: coherent; PDFs confirmed gitignored.
**Fixes:** (1) **step 5's case-5 lookup would have missed the one record needing reset** — it read
"run-log … `source_tier: reporting`", but the run-log has no source_tier column and
`zaf-2024-25-vote-30-sa-connect-proposed` is `official-statement`; rewritten to grep `raw/` frontmatter
for anything but `budget-document`. (2) manifest `retrieved` dates normalised DD/MM/YYYY → ISO.
Revert: `git checkout <sha> -- BUDGET-EXTRACT.md new-budget/manifest.csv`.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 2

## 2026-07-22 — budget extraction starter pack, from the ZAF FY2024/25 corpus

Inspected all 9 held ZAF documents and wrote the starter pack. **Nothing extracted yet** — no records
built, no documents archived.

- **`BUDGET-EXTRACT.md`** — CC's runnable pass (`"run budget extract"`): inspect → is the strategy
  library fit → extract, or add one archetype then extract → **case-5 reset** of reporting-built
  records → archive. Deliberately separate from the strategies (Bill).
- **`documentation/budget-extraction-strategies.md`** — the growing library, **keyed to structural
  archetypes, not countries or documents**, so it stays bounded rather than becoming case law.
- **`budget-archive/{ISO3}/`** — extracted documents (Bill). Folder as state: `new-budget/` = held,
  archive = done.

**Findings that shaped the design:**

- **All 9 have clean text layers; `pdftotext -layout` is sufficient.** No OCR, no ML table extraction,
  pdfplumber not needed once. This is a text-processing problem.
- **Nine documents, five archetypes** (per-vote programme chapter; consolidated appropriation
  schedule; adjustments schedule; cross-vote statistical annexure; annual report with audited
  appropriation statement), plus narrative audit — context and contradiction leads, **no records**.
- **Cross-document reconciliation works to the rand** — R3,968,611k identical across ENE, B5, AENE,
  stats annexure and the annual report. Made a required step, not a nicety.
- **First real finding, from that chain:** Vote 30 Programme 5 (ICT Infrastructure) approved
  R1,922.7m → final R1,768.9m after a R153.8m virement out → **actual R755.2m, 42.7% execution**.
  Over a billion rand voted for broadband and unspent — invisible in any single document.
- **Three scales in one country-year** (`R million` / `R thousand` / `R'000`), varying *between tables
  in one document* → scale is read per table, proved by capital+recurrent=total.
- **Sweep feedback:** the s32 treasury statement is aggregate-only and supports no record — stop
  fetching it. The full ENE's Vote 30 chapter is byte-identical to the standalone, so redundant for
  single-vote capture but the **only** tool for the cross-vote scope question (digital money also sits
  in home affairs, treasury financial-management systems, etc.).

**Decisions:**

- **Binaries were already out of git** — the repo-wide `.gitignore` binary rule covers them, so Bill's
  concern needed no new mechanism. **Extracted tables are committed as CSV**: a lost PDF is
  re-fetchable from the manifest URL, a lost figure is not, and this keeps `doc_locator` checkable
  even if the artefact goes. *Revert: budget-archive/README.md.*
- **Strategy and judgement stay in separate files** (CC) — strategies get the table out;
  `finance-load-domestic-state.md` and `domestic-budget-extraction.md` decide what it means.
- **One modification attempt per stubborn document**, then log and move on — same discipline as the
  acquisition pass, so step 4 cannot loop forever.

- **Folders are `{ISO3}/{FY}/`** in both `new-budget/` and `budget-archive/` (Bill), so the path *is*
  the country-year and two years of one country cannot mix in one reconciliation. Path answers *which
  run acquired this*; the companion's `fiscal_years_covered` still answers *which years the document
  supports*, which is often more. Bill is moving the existing ZAF files.
- **`{FY}` is always the bare start year — `2024`, never `2024-25`** (Bill), meaning the fiscal year
  beginning in it, so ZAF 2024/25 and NGA calendar 2024 share one form. Applies everywhere **CC**
  names a year: invocation, folders, `sweep_batch`, run log, and the `{fy}` element of `deal_id`
  (`zaf-2024-…`). **Exception: the stored `fiscal_year_label` stays verbatim** — it is the tie back
  to the source. *Existing records carry mixed forms (`zaf-2024-25-…`, `civ-2024-2025-…`);
  normalising them means renaming `raw/` files and rewiring links, so it is flagged as a separate
  migration, not ridden along on a naming change.* *Revert: the Fiscal years and Record key sections
  of the driver, §2 of reference.md.*
- **Extract deletes emptied `new-budget/` folders** (Bill's question — yes). An empty folder there
  asserts documents are waiting when none are, and git doesn't track empty dirs, so a leftover is
  invisible in the repo and misleading on disk. Never deleted: `manifest.csv` rows, anything in
  `budget-archive/`, and any folder still holding an unprocessed document.
- **Budget extract runs at the end of every sweep** (Bill), after this pilot — staged documents are
  inert until extracted, so the chain is **sweep → budget extract → ingest → finance compile**. It
  drains *every* country-year in `new-budget/`, not only the one just swept. Multiple `{ISO3}/`
  folders are a normal, harmless state: archiving is the last step, so anything left is unfinished
  and the next run resumes on exactly that. **Country-year is read from `manifest.csv`, never from
  the folder path** — folders have no year level, so a country swept for two years before either is
  extracted holds both in one folder, and grouping by folder would mix years and break the
  year-specific reconciliation checks.

**Open for the first run:** the held record `zaf-2024-25-vote-30-sa-connect-proposed` says R1,858m
from Malatsi's speech; the ENE shows Broadband sub-programme R1,894.6m and computer services within
Programme 5 R1,859.5m. Three referents within R37m. Case 5 must pick one, say why, and file the rest
as a contradiction.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 3

## 2026-07-22 — ingest (lint skipped per Bill): Malatsi speech filed; SA Connect FY2024/25 record built

Drained `new/` (1): the ZAF budget-vote speech admitted to `raw/` (official-statement, appended to
`dcdt-south-africa` + `sita` entity pages). §6 2a finance branch (domestic driver, capture mode) built
**one record**: `zaf-2024-25-vote-30-sa-connect-proposed` — SA Connect Ph1+2, **R1.858bn, FY2024/25,
stage `proposed`** (first proposed-stage exercise of Bill's ruling), whole-scope, case 4 with an explicit
**case-5 reset pending** against the held ENE/AENE/Annual Report in `new-budget/ZAF/`. Series sibling of
the held FY2025/26 record, not a duplicate. Not built (rule reasons noted on the record): the R3.969bn
vote envelope, the R1.6bn mixed SOE-oversight transfers, the MTEF entity splits. Finance compile refreshed:
ZAF domestic-state now 2 lines (FY2024/25 R1.858bn proposed; FY2025/26 R3bn unstated stage); BFA blend
caveat re-applied after the recompile clobbered it — **note for the compile script: manual caveats inside
compiled paragraphs don't survive recompiles; the caveat belongs in the generator or the record.**
Revert: `git checkout <sha> -- raw/ new/ wiki/ documentation/`.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 1

## 2026-07-22 — acquisitions: both ZAF items acquired via browser route; queue empty

**2 attempted, 2 acquired, 0 dropped.** Direct fetches failed for both (bot-guard shell; Phoca POST gate),
then Bill enabled claude-in-chrome mid-pass and the browser route landed both: **AGSA PFMA GR 2024-25**
(14.7 MB — browser surfaced AGSA's new site; its clean `/storage/app/media/reporting/pfma/` path fetches
without the guard, pattern noted for future AGSA reports) and **DCDT Annual Report 2024/25** (9.3 MB,
279 pp — Phoca form POST via page-context fetch → blob; Chrome held the saves for Bill's manual approval).
Both staged to `new-budget/ZAF/` with companions + manifest rows. ZAF FY2024/25 now holds the full stage
chain: proposed → revised → actual-aggregate → **per-programme outturn + audited** (the AR's appropriation
statement closes the appropriated→actual execution chain for Vote 30; AGSA GR adds the government-ICT
findings). A premature drop note (written while the extension was disconnected) reverted from
`wiki/places/ZAF.md` and `acquisitions.md`. Revert: `git checkout <sha> -- new-budget/ reviews/ wiki/`.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 1 ; decisions logged - 0

## 2026-07-22 — domestic finance sweep: South Africa 2024 → FY2024/25 (pilot run)

**7 budget documents + companions staged to `new-budget/ZAF/`** (manifest rows appended): ENE 2024 Vote 30
chapter + full volume, AENE 2024 Vote 30, Appropriation Bill B5-2024, Adjustments Bill B14-2024, year-end
s32 statement (as at 2025-03-31), May-2025 Budget statistical annexure (FY2024/25 revised per vote).
**1 prose source to `new/`** (Malatsi budget-vote speech, 2024-07-15 — FY2024/25 vote R3.969bn; **SA Connect
Ph1+2 R1.858bn**, the case-5 test for the held `zaf-2025-26-dcdt-sa-connect-phase-2` record). **2 to
acquisitions [blocked]**: AGSA PFMA GR 2024-25 (bot-guard), DCDT Annual Report 2024/25 (Phoca gate) — both
browser-fetchable. Stage coverage: proposed/revised/actual-aggregate held; per-vote *released* figures are
not published (a vacuum to state at extraction); audited layer waits on the two acquisitions.
Track B (direct URL enumeration) beat search throughout; Treasury URL patterns, the 200-soft-404 trap and
the ENE-R-million/AENE-R-thousand scale flip written to the extraction notes (ZAF stub → verified).
Run state: `sweep/domestic/ZAF-2024-25-run-2026-07-22.md`. Revert: `git checkout <sha> -- new-budget/ new/ sweep/ documentation/ reviews/`.

contradictions - 0 ; acquisitions - 2 ; awaiting ingest - 1 ; decisions logged - 0

## 2026-07-22 — domestic finance sweep procedure; fiscal-year resolution rule

New `sweep/domestic-finance-README.md` — acquisition sweep, **one country × one fiscal year per run**
(Bill), which gives the object a completion state and a re-run trigger as later stages publish.
Invocation: `"run domestic finance sweep for <country> <year>"`. National tier only for now;
sub-national deferred (47 counties or 36 states would swamp the cap). Cap 40 items per run.

**Decisions:**

- **A bare year means the year the fiscal year begins** (Bill). "2024" = `2024` in Nigeria/Zambia,
  `2024/25` in South Africa/Kenya/Uganda/Tanzania/Egypt. This **makes permanent the temporary FY rule
  applied at the ingest below**: scope is *fiscal years beginning on or after 2024-01-01*, so Kenya's
  2023/24 is out. Governs **instructions only** — stored `fiscal_year_label` stays verbatim, since the
  corpus already carries `2024/25`, `2024-2025` and `NDP 12` and normalising breaks the tie to source.
  *Revert: the fiscal-year sections of the driver and the sweep README.*
- **Budget documents stage to `new-budget/{ISO3}/`**, not the retired `new-queue/` (Bill) — they need
  their own extraction pass, and the first few want reading by hand before any procedure is written.
  **The artefact and its companion markdown sit together there** (Bill's catch — the first draft put
  the companion in `new/`, which was a bug: it would have filed a source page into `raw/` whose
  `finance.budget` tag routes to the domestic-state driver with no budget lines in it to find, and
  whose `[[link]]` pointed into a staging folder the artefact will later leave). `reference.md` §2, §6
  and §7 updated: `new-budget/` is outside the ingest path, never drained, not counted as *awaiting
  ingest*, not a third queue. `new-budget/manifest.csv` created as the standing record of what is
  held and unprocessed. *Revert: the §2 block in reference.md and the sweep's Staging section.*
- **FY hard-scopes the document blocks; statements and reporting are date-windowed instead** (CC).
  On the back-swing's own evidence: half its records carry no FY and `stage: unclear` is modal,
  because ministers and despachos don't name fiscal years. A hard filter would discard exactly the
  material that makes opaque budgets legible. *Revert: the sweep's scope section.*

**CC review nits, both closed:** `doc_type` consolidated to one canonical list in the driver (the
sweep's staging enum had begun to drift; staging describes more kinds of thing, so the list is the
union and the sweep now points at it) — gaining `executive-instrument` for despachos/decrees, the
back-swing's richest seam. And `source_tier` gains **`project-document`** for the WB-PAD counterpart
case: a financier's document evidencing domestic money, ranked below the state's own budget document
and above reporting, so a later appropriation act still fires case 5's reset.

Back-swing findings folded into the sweep as search strategy, not just record-building: query the
phrases not the headlines; treat "government invests" as suspect; stop spending cap on ministry
envelopes once a country's pattern is established; add finance-law annexes and *lettres d'engagement*
to acquisitions by name when only a plan envelope surfaces.

First run: **South Africa 2024 → FY2024/25** (Bill, on familiarity with the data). Pre-run stub added
to the extraction notes, marked unverified.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 3

## 2026-07-22 — ingest + first domestic-state compile: 19 admitted under Bill's temporary FY rule

**Temporary rule (Bill, this ingest only, pending a proper change): only records pertaining to FY2024 /
FY2024-25 onwards ingested; earlier or FY-undeterminable deleted.** Applied to the 23 staged: **4 deleted**
— `egy-cbe-2020`, `egy-cbe-2021` (FY2020/21), `gnb-`/`mrt-wardip-sop1-counterpart` (2023 PAD financing-plan
commitments). BFA ×3, COG-4G and BWA ×2 kept: FY label unstated but period established ≥2024 from event
dates (2025–2026 / NDP 12 = FY2025/26 on). All 4 deletions recoverable from commit `73c996a2`.

**19 admitted to `raw/`** (first `finance.budget` records; 1,229 deal records total). **First origin-split
finance compile ran:** Domestic-state paragraphs written onto 10 hubs (AGO 5 lines, BFA 3, KEN/BWA/COG 2,
BEN/CIV/SEN/ZAF/ZMB 1) — per-FY, per-stage, original currency, no cross-year USD sums; partial/unclear-scope
reported apart; BFA hub carries the FASU/PACTDIGITAL blend caveat. Revert: `git checkout <sha> -- raw/ new/ wiki/`.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 1

## 2026-07-22 — domestic finance back-swing: 894 sources screened, 23 records staged

13 parallel workers over every `finance.*`-tagged `raw/` item without a `deal_id`. **~813 not domestic,
52 domestic-but-failed (overwhelmingly fact 3 — instrument reported without the appropriation figure),
28 records built → 23 after consolidation**, staged in `new/` awaiting ingest + finance compile.
By country: AGO 4, BFA 3 (2 twin-pairs merged), KEN 2, EGY 2 (CBE PoS incentives — captured from the
recipient's filings, flagged judgment), BWA 2, COG 2, CIV 1, BEN 1, SEN 1, ZAF 1, ZMB 1, GNB 1, MRT 1
(WARDIP counterpart slivers from the held PAD). Stages: unclear 15, proposed 3, actual 3, appropriated 1,
revised/supplementary 1. Extraction methods appended to `documentation/domestic-budget-extraction.md`
(Angola despacho grep patterns; PAD counterpart-row tell; recipient-side capture; envelope near-miss taxonomy).

**Decisions:**
- **Ministry-envelope conflict resolved by the rule as written.** One worker built the CIV/BEN/GAB
  digital-ministry votes as `partial` records; three others refused the identical class (one failed the
  same CIV vote). The driver is categorical — 3 envelope records retired (in git, commit "raw worker
  output"); BEN's genuine programme line kept. **For Bill:** for CIV/GAB the envelope is the only visible
  number — if envelopes-at-partial are wanted, the driver needs an explicit rule; the SEN investment-slice
  record shows where the current line sits.
- **2 cross-batch twins merged** (BFA mini data centres ×2 sightings; BFA zéro zone blanche ×2 sources) —
  fuller record kept, other folded as dated dev-history line.
- **`source_tier` vocabulary gap:** PAD-sourced counterpart records forced into `official-statement`;
  a `project-document` value may be wanted.
- BFA zones-blanches record carries an explicit blend warning (FASU + IDA-financed PACTDIGITAL) — compile
  must treat as blended, possible partial overlap with the held WB deal.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 23 ; decisions logged - 4

## 2026-07-22 — domestic-state driver: three rulings applied on Bill's review

- **Proposed budgets pass fact 3** (Bill): a tabled figure is a record at `budget_stage: proposed`, not a
  failure — the stage field carries the epistemic status. MTEF outer years still fail. *Spec fact 3.*
- **SOEs: origin of the money decides** (Bill): an SOE spending non-budget income (commercial revenue, own
  borrowing) is a **non-state** funder → news driver; this driver captures the **state → SOE flow** only,
  fisc as financier, SOE as recipient, `state_level: soe`. Levy funds/regulators unchanged (levy/fee =
  state revenue). *Driver: origin table, State level, Entities.*
- **`pct_of_total_budget` removed** (Bill: meaningless). CC also removed sibling `pct_of_admin_head` —
  same rationale bullet, same denominator problem; revert if wanted. Trend statements now compare per-year
  original-currency figures. *Driver Amounts + frontmatter example; FINANCE-COMPILE trend sentence.*

Earlier in the review: news-driver history note corrected (the 27 deleted records are **not** in git —
built and deleted between commits; back-swing rebuilds them from its own candidate definition), and
FINANCE-COMPILE's restated-total exclusion reworded (the **original** leaves the headline, not the
supplementary). Nothing captured; no records built, no hub touched.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 3

## 2026-07-22 — domestic-state finance: driver written, spec extended

New `finance-load-domestic-state.md` (budgets/expenditure), feeding the existing origin-neutral
`wiki/finance-record-spec.md`. No new template — same record shape, extra driver-supplied fields.

**Decisions** (all Bill's rulings this date except the last two, which are CC's):

- **External financing on-budget is `non-state`, not `domestic-state`** (Bill). Origin tracks whose
  money it is, not which document reports it. Externally-financed budget lines definite-match held
  non-state records first and mostly become a `## Development history` line, not a new record — so
  double-counting is prevented at capture, not netted off at compile. Domestic-state totals now mean
  "own revenue and domestic borrowing". *Revert: the origin gate table in the driver.*
- **Sub-national, SOEs, levy funds and regulators are in scope** (Bill), via `state_level`. `place`
  stays the country ISO-3; the sub-national unit is an entity plus `spending_tier_name`.
  `countries.csv` is not extended. *Revert: the State level section.*
- **Digital shares are never computed** (Bill: extraction is a challenge for all evidence, to be
  learned). Mixed lines are recorded whole with `scope_confidence` whole/partial/unclear and
  `scope_basis`; partial/unclear are reported apart from the headline total. Method notes accumulate
  in `documentation/domestic-budget-extraction.md`. *Revert: the Scope section.*
- **`finance.budget` slug added** to `taxonomy.md` (CC) — an appropriation is neither an investment
  nor an MoU. *Revert: one line in taxonomy.md, one in the spec's Subject tag §2.*
- **MTEF outer-year projections fail fact 3** (CC) — indicative planning figures, the budget
  equivalent of an "up to". Noted in a record, never built from. *Revert: spec fact 3.*

Also: `FINANCE-COMPILE.md` domestic-state stub replaced — aggregate by fiscal year in original
currency (never sum USD across years), split by `budget_stage` and report execution rate,
partial-scope, transfers and restated supplementaries excluded from the headline and reported
separately. Run log at `documentation/domestic-finance-run-log.csv`.

**Correction (Bill, 2026-07-22).** A first draft of the driver made news reporting a *lead* for this
dataset, admitting only budget documents. Wrong: this dataset is sourced from both, as the non-state one
is — many budget documents are unpublished or obfuscate, and a ministerial statement is often the only
legible account of a line. `CLAUDE.md` → *The material* already counts on-the-record reporting and
official statements as first-hand; the lead rule targets AI syntheses and aggregators. Driver's
*Provenance* rewritten, and the **five cases** added: (1) budget doc → build from it; (2) one line, one
year, one stage per record, always; (3) both → doc is the record, reporting links in
`## Development history`; (4) reporting only → build on the five-fact test, codes and locator left blank,
never inferred; (5) doc surfaces later → **reset** the record from it, keep the `deal_id` stem, keep the
superseded reporting as history, and file any disagreement as a contradiction. New `source_tier` field
(`budget-document | official-statement | reporting`) carries which. *Revert: the Provenance and five-cases
sections.*

**The 27 domestic-state records deleted in this morning's back-swing were deleted against that wrong
rule** — they are in git and the suspension is lifted. `finance-news-driver.md`'s origin screen now hands
domestic items to this driver instead of skipping them, and the driver gains a **back-swing mode**:
`"run domestic finance back-swing"`.

Adversarial review caught four further double-count or collision paths, all now closed in the driver:
intra-state transfers (`is_transfer`), supplementaries stating a restated total vs an increment
(`supplementary_basis`), sub-national `deal_id` collisions (tier slug mandatory), and printed-scale
misreads (`amount_scale` + capital+recurrent=total check). Knock-ons: `reference.md` §6 2a now
triggers on any `finance.*` tag (a `finance.budget` record would otherwise have fallen through to the
per-event hub-bullet path the spec forbids); §4 notes that finance drivers extend the source schema
and that a tabular companion page stays `excerpt`; the spec's *Dates* now allows a known event date
or period boundary at true precision instead of padding (a July–June FY padded to `YYYY-01-01` sorts
six months from the event); a stated nil may be recorded as `0`; `UPDATE-WIKI.md` runs finance
compile after any ingest admitting finance records, which was an existing gap.

Nothing captured yet; no records built, no hub touched.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 5

## 2026-07-22 — update-wiki: converged in 2 working iterations, cap not hit; full lint closed

Passes fired: **ingest ×1, reconcile ×1, finance compile ×1** (per the back-swing hand-off), **full lint ×1**;
acquire skipped (queue empty throughout). Queues all zero on the iteration-3 read.

**Lint (8,126 pages scanned):** #1/#2/#5/#12/#14 — 0 defects. **#11 — 10 `raw/` files renamed** to match
`published` (1–3-day prefix drifts), referring links rewired; 2 remaining "mismatches" are inline-comment
parse artifacts, not defects. **#4 — 50 unresolved `[[targets]]`**: 0 in the ≥10 band; 10 middle-band
(3–9 refs: parliament-of-uganda, digital-tanzania-project, dsti-south-africa, busha, tether,
barnks-forte-technologies, launch-africa-ventures, african-open-science-platform,
national-research-foundation-south-africa, office-of-the-auditor-general-uganda) left for the digest / entity
pass; 40 in the 1–2 band are deliberate below-bar entity references, not typos — **left as forward tags**
(decision: deleting loses signal, paging violates the entity bar; note `dsti.md` is Sierra Leone's DSTI, so
`dsti-south-africa` must NOT be rewired to it). 2 apparent dead PDF links resolve to held artefacts (scanner
artifact). #13's 3 hits are the log/procedure files' own text. #15 — 1,122 legacy sources still blank =
unverified-by-rule (marker-ambiguous; blank asserts nothing). #8 — 48 pages over ~2,500 words, all classified
thematic/exempt by the 2026-07-20 pass; nothing new crossed. #3/#6/#7 — baseline is the 2026-07-20 full pass;
this run's additions are all dated/primary/deduped at ingest. #9 — 0 new contradictions. #10 — `new/` empty.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 5

## 2026-07-22 — finance compile: 58 hub Financing sections recomputed (as of 2026-07-22)

Post-ingest compile over the full 1,210 deal records (was ~53 hubs / 1,109 records). Non-state totals now
US$83.2bn across 1,210 records by literal place tag; largest: XSS US$19.7bn/299, ZAF US$9.36bn/62,
LSO jumps to US$6.21bn on the Convalt Energy US$6.2bn AI-data-centre MoU (Pipeline). Instrument strings
normalised (parentheticals stripped); non-USD-only deals now stated as uncounted rather than summed at 0;
Material-deals lines preserved as held. Script exclusion audit: no record is fuzzy-self-excluded — all
"not counted" phrases refer to cross-referenced non-record files. Revert: `git checkout <sha> -- wiki/places/`.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 0

## 2026-07-22 — update-wiki iteration 2, reconcile: Cameroon video-surveillance Phase 1 resolved; `open/` drained

1 researched, 1 resolved, 0 re-routed. The "44.9 vs 45.9 billion FCFA" conflict dissolved into three objects:
FCFA 45.9bn = **2017 authorisation envelope** (decree N°2017/297, 19 June 2017); US$41.78m/≈22.95bn = the
**Phase-I loan signed 2018-02-22** (ratified decree N°2018/352, 100% disbursed by 2020-12-31); FCFA 44.9bn =
a **separate June-2018 credit line** (held `boc-cmr-002`, no drawdowns per AidData). 2 primaries ingested
(decree 2018/352 verbatim; AidData 58535). New record `bank-of-china-cmr-2018` created; retrospective-based
`bank-of-china-cmr-2017` (admitted this run) deleted as superseded; 3 sibling tranche records rewired.
**Corpus note:** retrospectives (Le Jour 2025, Investir au Cameroun 2025) equate Phase-1 financing with the
45.9bn envelope — treat that figure as authorisation, never commitment. Revert: `git checkout <sha> -- raw/ reviews/`.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 1

## 2026-07-22 — update-wiki iteration 1, ingest: back-swing batch admitted (110 → 101 records)

Drained the 110 back-swing deal records from `new/`. **101 admitted to `raw/`** (now 1,210 deal records);
**9 dropped after adjudication**: 8 definite matches merged into held records — WURI-P2→`wb-reg-004` (drop,
nothing new), WARDIP2→`wb-reg-012` (status→Approved, published promoted to 2026-03-11/day, file renamed),
PAIF-PME→`wb-bfa-003` (envelope note + results line), RMB-ADC→`adc-zaf-rmb-expansion-2024`,
Wananchi→`axian-ken-wananchi-acquisition-2025` (promoted to 2025-11-05/day, renamed, +UGA),
CMR fibre Phase IV→`eximbank-cn-cmr-006` (drop, held is fuller), E-PFMRP II→`afdb-cpv-007` (signature line),
Fayda $54m→`wb-eth-001` — plus 1 intra-batch Greenline/SOCATEL twin merged into `greenline-technologies-caf-2025`.
1 contradiction filed: Cameroon video-surveillance Phase 1 (FCFA 44.9bn/2018 vs 45.9bn/2017-decree);
`bank-of-china-cmr-2017` admitted as fuzzy cross-ref, not aggregate-countable. Batch validation: 0 vocab/schema defects.

**Decisions:** (1) Fayda US$54m Super Agent procurement is a component procurement under the held US$350m
envelope (P179040), not a separate deal — merged as a dev-history line, record dropped (double-count risk).
(2) Deal records get **no per-deal entity-page source appends** — the 1,109-record load set that convention;
hub/entity presence is the aggregate compile's job. (3) Two held-record renames for date promotion
(`wb-reg-012`, `axian-ken-wananchi-…`); referring link in `places/XWA.md` rewired.
Revert: `git checkout <sha> -- raw/ new/ wiki/ reviews/`.

contradictions - 1 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 3

## 2026-07-22 — finance back-swing: 893 held finance sources structured into deal records

Ran `finance-news-driver.md` back-swing over all **893** `raw/` items tagged `finance.new`/`finance.mou`
without a `deal_id`. 15 parallel batch agents applied the five-fact gate; a two-agent consolidation then
deduped and merged.
- **110 non-state deal records** into `new/`, awaiting ingest (match-or-create) + `FINANCE-COMPILE`.
  (146 built → 9 cross-batch twins deduped → **27 domestic-state removed** per Bill's ruling below.)
- **~671 failed the gate — ~91% on fact 3 (no committed amount)**: MoUs, partnerships, product launches,
  "plans to invest"/targets, market-size/valuation/aggregate figures. Rest: fact 1 (unnamed financier),
  fact 4 (undated commitment), fact 5 (out of scope — health aid, e-mobility). ~50 held-in-full duplicates.
- **26 dated update lines folded into 22 held deal records** (`## Development history`) — PACTDIGITAL
  `wb-bfa-001`, PAFEN `wb-bdi-002`, Fayda `wb-eth-001`, Digital Eswatini `wb-swz-001`, Nigeria ID4D
  `wb-nga-001`, Ghana `wb-gha-001`, PATN `wb-cog-001`, WARDIP2 `wb-reg-012`, Madagascar DECIM/PRODIGY,
  Chad PMICE, Gabon, Cassava/Google, Microsoft ZAF, etc.; `afdb-cpv-007` status Pipeline→Approved; 8
  candidate lines dropped as already-held, 1 (Fundo Morabeza) left as its standing fuzzy cross-ref.
- Congo CAB data-centre "$13m vs $57m" — **not a contradiction**: the €13.8m is the data-centre line-item
  within the €52.47m AfDB CAB package (resolved from a fuller source, folded into `afdb-cog-001`).

**Decisions (judgment calls to review):**
- **Domestic-state records excluded** (Bill's ruling 2026-07-22). The back-swing over-produced 27
  `finance_origin: domestic-state` records (state appropriations/budgets/guarantees, not financier→recipient
  deals); all 27 deleted from `new/`. **`finance-news-driver.md` amended** with an *Origin screen*: this
  driver builds non-state records only; a domestic-state item is skipped (not a failure), awaiting the
  dedicated domestic-state driver — the record template needs adjusting before such items are admitted.
- **ANGEO-1 satellite (€225m)** recorded with financier = **Société Générale** (the lender, non-state),
  the state being the recipient — per the spec's definition of financier as the party providing the money.
- **Financier-slug drift** normalised to held `wiki/entities/` slugs (`exim-bank-usa`,
  `bf-ministry-digital-transition`, `government-of-cote-d-ivoire`).
- **Tagging gap:** held WB PADs that report financing but carry no `finance.*` tag (ZRHCP `PADHI00410`,
  DZAP PAD `P505094`) are invisible to the back-swing — they need tagging to get deal records.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 137 ; decisions logged - 4

## 2026-07-22 — finance: five-fact test named, news driver written, ingest branch wired

Bill's review found the detection gate for finance records didn't exist: the spec was source-agnostic and
deferred to "a news driver" that was never written, and `reference.md` §6 had no finance branch — so a news
item reporting a commitment ingested as an ordinary source and never became a record, contradicting the
spec's own "ingest is match-or-create, not the news bullet path".

- **`wiki/finance-record-spec.md`** — new **five-fact test** section (financier / recipient place /
  commitment amount / event date / taxonomy-matchable purpose) as the single named admission gate; core-fields
  list demoted to a build guide.
- **`finance-news-driver.md`** (new, repo root) — prose driver, back-swing + capture modes; prose failure
  table, publication-vs-event-date and announcement-vs-commitment traps, `deal_id` construction, merge/create.
- **`wiki/reference.md`** — §6 **step 2a finance branch** invoking it; step 4 amended so a passed deal isn't
  also written as a dated fact.

**Decisions.** (1) Bill's five are the gate; **`instrument` demoted from required to record-if-stated** —
news reporting routinely omits it and it would have rejected sound candidates. (2) **Disbursed-only no longer
admits a record** — the spec accepted "commitment *or* disbursed"; a disbursement evidences money moved under
a commitment the source hasn't stated. Tightening, may exclude some initial-load rows — check on back-swing.
(3) **Fact 5 failure now blocks the record**, replacing "flag the record for classification" — same defect one
step later. (4) **Failing the test routes, doesn't reject**: the item stays a source with `finance.*` tags,
absent from aggregates; date-failure alone goes to `_leads/`. (5) Test reads **recipient place**, not
recipient org — a blank org stays normal (30% of load rows).

Revert: `git revert` this commit restores the pre-branch §6 and deletes the driver; no data touched, no
records built yet.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 5

## 2026-07-22 — update-wiki (daily-sweep hand-off): converged in 2 iterations, cap not hit

Drained 20 candidates in `new/` — the 07-22 daily sweep's 9 staged + 11 of Bill's web-clips. Passes fired:
**ingest ×2, acquire ×1, full lint ×1**; reconcile skipped (0 contradictions throughout). Serial thematic
ingest chunks (one writer at a time, since concept pages + the 3 indexes are shared).
- **Ingest (20 → )**: **14 admitted to `raw/`**; **4 dropped** (LemFi/BVNK + Rank compressions, Burkina already
  held ×2, Carnegie an exact re-clip of a held source); **4 parked to `_leads/`** (SA LinkedIn opinion,
  data4sdgs blog, Intwari prescriptive essay, Infos-IT AI-rewrite — all inadmissible origin). One clip (NPC)
  was a mis-clip → re-captured verbatim from source before filing.
- **Acquire (5 wanted)**: **2 acquired** (Smart Africa's own Africa AI Council release; Zambia Cyber Crimes
  Act gazetted text) → ingested iteration 2; **3 dropped** with dated not-held lines (Kenya draft AI policy,
  SA PSC/SITA report, Bloomwit *Navigating Nigeria 2027* report).
- **Lint**: 1 vocabulary fix (off-vocab `lens: [analysis]` → `[]`), else clean; 0 contradictions surfaced.
- Highest-value outcomes: the Smart Africa primary set an authoritative two-stage dated record and resolved
  the Nov-2025-vs-Jul-2026 "launch" question (same event), correcting a "Kagame-chaired Council" error on 5
  pages; the Zambia statute enriched the entity with real provisions (s.10 + Part III), correctly keeping the
  blanket-interception mandate on the unheld Act No. 3.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 16

## 2026-07-22 — lint pass (post-ingest, scoped to the 07-22 sweep run's 14 raw files + touched pages)

Full 15-check run; footprint-scoped acting + cheap corpus-wide greps.
- #2 vocabulary — **1 fix**: `raw/2026-07-21-stablecoins-afcfta-cross-border-trade` `lens: [analysis]` (off-vocab) → `lens: []`. All other topics/places/lens across the 14 files vocab-clean.
- #1 schema — 0; all 14 carry the full required set.
- #12 brackets — 0; all 14 canonical `[[a], [b]]` (corpus grep: no `[[[` in any raw `.md`).
- #11 date-prefix — 0; all 14 prefixed, each `published` matches its prefix.
- #15 body_completeness — 0; all 14 `full`. (Legacy finance-DB stubs missing the field are pre-existing, left blank per §15 — not this run's footprint.)
- #14 url-quality — 0; Smart Africa / Zambia Act PDF / Kenya-policy all document-specific, no bare domains.
- #7 duplicates — 0 pruned. SA-SIM keep-both stands: held 07-20 TechCabal is the richer primary interview, new 07-21 Biometric Update is secondary but carries distinct payload (firm 07-01 start, Kenyan court cross-ref) — not equal, no churn.
- #4 orphans/dead-links — 0; `africa-ai-council` in entities-index-organisations; intersections `nigeria--dpi-registry` and `zambia--infra-cybersec` both linked from parent place + concept.
- #3 freshness — 0; new intersections dated at bullet level, census budget in ₦, no African-party own-currency commitment rendered as bare USD.
- #9 contradictions — 0 filed; Smart Africa Nov-2025/Jul-2026 already resolved (same event), Zambia Act No.3-vs-No.4 written as resolved narrative.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 0

## 2026-07-22 — ingest chunk: 2 acquired primaries (AI Council + Zambia Cyber Crimes Act)

Both admitted to `raw/` as enrichment/keep-both of already-covered objects (higher tier than the
trade-press held). Pages touched: entities `africa-ai-council`, `smart-africa`, `cyber-security-act-zambia`;
`places/XAF.md`, `places/ZMB.md`; `intersections/zambia--infra-cybersec.md`; `concepts/tech.ai.md`,
`concepts/gov.regional.md`.

**Decisions:**
- **Africa AI Council — authoritative record set, two dated stages; no contradiction filed.** Smart Africa's
  own release (2025-11-17) = the *formal establishment* (15 members named, six thematic areas, Conakry); the
  already-held Kigali **Africa AI Declaration (2025-04-04)** = the *endorsement* ("under the Smart Africa
  Steering Committee, co-chaired by the AUC and the ITU"). The two reconcile: Kagame chairs the **Board**
  over the Council; the Council is **AUC/ITU co-chaired**. Corrected the flat "Kagame-chaired" gloss on
  `africa-ai-council`, `smart-africa`, XAF hub, and the `gov.regional`/`tech.ai` mentions. The July-2026
  Infos-IT "first AI council" framing (parked `_leads/` rewrite, no event date) is a re-report of the same
  Nov-2025 event — resolved, **no contradiction**. *Revert: restore the prior one-line council bullets.*
- **Zambia Cyber Crimes Act No. 4 — gazetted text ingested as 2025-04-15 instrument baseline, does NOT
  outrank the 2026-07-18 enforcement event.** Enriched `cyber-security-act-zambia` + `zambia--infra-cybersec`
  with the actual provisions now readable: **s.10** (recording a private conversation without notifying
  parties — the clause behind the enforcement warning) + court-gated Part III powers (ss.27/30/31/32). Kept
  the "intercept all communications / Central Monitoring Centre" mandate attributed to **Act No. 3** (text
  not held) — it is *not* a provision of Act No. 4. Updated the ZMB hub 2026-07-18 entry (was "gazetted text
  still not held — queued for acquisition"). Added assent/gazette/commencement dates (8 Apr / 15 Apr / 12
  May 2025). *Revert: restore the "still not held" phrasing and drop the provisions block.*
- **Concept pages for the Zambia Act (gov.legislate/infra.cybersec/gov.protect) left untouched** — the Act
  is country-specific and those concepts don't carry the thread; the intersection is its correct home
  (build-to-depth-on-demand).

`contradictions - (unchanged) ; acquisitions - 00 ; awaiting ingest - 00 ; decisions logged - 03`

---

## 2026-07-22 — acquisition pass (5 items, all `[untried]`)

**2 acquired, 3 dropped.** Acquired → staged to `new/` (2 clips, awaiting ingest): Smart Africa's own
inaugural Africa AI Council release (smartafrica.org, 2025-11-17 — confirms the Nov-2025 formal
establishment/unveiling of the 15-member council; resolves the "Nov-2025 vs July-2026 launch" question in
Smart Africa's favour), and the Zambia Cyber Crimes Act No. 4 of 2025 gazetted text (parliament.gov.zm PDF,
published 2025-04-15, full verbatim statute). Dropped (one automated attempt each, no parking): Kenya draft
AI policy — `not-retrievable` (ict.go.ke notice + press link only to the pre-existing National AI Strategy
2025–2030, not the draft); PSC SITA report — `js-shell` (psc.gov.za publications gallery exposes no report
PDF); Bloomwit *Navigating Nigeria 2027* — `gated` (resources page serves only a blurb). Dated not-held
lines added to `wiki/places/KEN.md`, `wiki/places/ZAF.md`, `wiki/places/NGA.md`. `acquisitions.md` drained
to header. *Revert: delete the 2 `new/` clips; restore the "queued for acquisition" phrasing on the 3 hubs.*

`contradictions - (unchanged) ; acquisitions - 00 ; awaiting ingest - 02 ; decisions logged - 01`

---

## 2026-07-22 — ingest chunk C2: analysis/opinion cluster, 6 files

2 admitted to `raw/`, 3 parked to `_leads/`, 1 dropped. Pages touched: `concepts/tech.ai.md`,
`concepts/gov.regional.md`, `concepts/gov.policy.md`, `places/XGL.md`, `places/XAF.md`, entities
`itu`, `ai-for-good-global-commission`, `african-union`, `afcfta-digital-trade-protocol`,
`reviews/acquisitions.md` (1 item). No entity pages minted (all tags on existing pages or off-watchlist);
no index changes (all topics/places already on the touched pages).

**Decisions.**
- **Carnegie "US–Kenya Technology Prosperity Deal" (Munga, 2026-06-23) — DROPPED as duplicate.** Exact
  same clip already fully held at `raw/2026-06-23 A Kenya Technology Prosperity Deal…` (body `full`, richly
  tagged, lens sovereignty+colonialism; already reflected in `tech.ai` entities). Adds nothing. *Revert:
  restore file to `new/`.*
- **Geneva Digital Week "Sovereignty through collaboration" (Schoemaker, Global Policy Journal, 2026-07-15)
  — ADMITTED as analysis.** Named analyst (Global Digital Governance Lab). Global-governance piece but with
  a real African-sovereignty nexus (regionalism-as-autonomy thesis; Kenyan CS + African linguistic blocs).
  Tagged `XGL` (honestly global, not forced onto an African country), `tech.ai`/`gov.regional`/`gov.policy`,
  lens sovereignty; cited by author not as fact. *Revert: delete raw + the 3 concept/2 hub/2 entity appends.*
- **"Stories shaping Africa's AI future" (Nyamnjoh & Timcke, Africa Is a Country, 2026-07-20) — ADMITTED as
  analysis.** Established publication, named authors, eight-frames essay. Distinct from held 2020
  "Algorithmic Colonisation" (which it builds on). `XAF`, `tech.ai`/`gov.policy`, lens colonialism+sovereignty.
  Date 2026-07-20 confirmed via fetch (URL gave month only). *Revert: delete raw + appends.*
- **SA "Digital Leap" (LinkedIn, Thabo Mboweni) — PARKED to `_leads/`.** One person's LinkedIn opinion, not
  reporting; not Bill's own work → inadmissible as a source. In scope. Mined its PSC/SITA July-2026 report
  claim → acquisitions. MyMzansi (watchlist) not paged — no admissible source here. *Revert: delete lead.*
- **data4sdgs "Data: missing link to food security" (Mulenga fellowship blog) — PARKED to `_leads/`.** Soft
  fellowship-program feature recapping Global Data Festival panel remarks; no dated first-hand development.
  No specific primary to acquire. *Revert: delete lead.*
- **Intwari News "How Rwanda Is Building a Sovereign AI Future" — PARKED to `_leads/`.** Unattributed
  prescriptive "how Rwanda can lead" essay of generic responsible-AI boilerplate (SEO FAQ); no author, no
  development. In scope. Nothing to mine. *Revert: delete lead.*

## 2026-07-22 — ingest chunk C1: AI governance & cyber, 5 files

3 admitted to `raw/`, 1 parked to `_leads/`, 1 dropped. Pages touched: `places/KEN.md`, `places/ZMB.md`,
`places/NGA.md`, `concepts/gov.policy.md`, `entities/cyber-security-act-zambia.md`, `reviews/acquisitions.md`
(4 items added). No entity pages minted (tag-only, off-watchlist); no index changes.

**Decisions.**
- **Burkina SPIVTEN MPs-AI-training (wearetech, 2026-07-21) — DROPPED as duplicate.** The 15 Jul 2026
  training is already held by two fuller sources: `raw/2026-07-15-ia-deputes-formes.md` (Sidwaya, primary,
  named officials + quotes) and `raw/2026-07-16-lawmakers-ai-training-spivten.md` (TechAfrica). The
  wearetech piece adds only marginal timeline colour (2025–26 SPIVTEN campaign dates), no new fact about
  the event. Deleted, not `_leads/`. *Revert: restore file to `new/`.*
- **Infos-IT "Africa's first AI Council" (infos-it.fr, 2026-07-21) — PARKED to `_leads/`, inadmissible
  origin.** Author bio openly declares AI-assisted content; piece is an essay-style rewrite with a
  "Sources" list citing others (afrimag et al) — second-hand synthesis, not first-hand reporting. The
  [[smart-africa]] page already records an Africa AI Council (Nov 2025), so the "launch" framing needs the
  primary to date/reconcile. Smart Africa AI Council primary → acquisitions. Event date (Conakry gathering)
  not establishable from body. *Revert: delete `_leads/2026-07-21-africa-first-ai-council-smart-africa-infos-it.md`.*
- **Kenya AI & Emerging-Tech Policy consultation (Kahawatungu, 2026-07-21) — ADMITTED.** First-hand
  reporting of a govt notice (Ministry of ICT & Digital Development; submissions due 4 Aug 2026). Distinct
  instrument from `kenya-ai-bill-2026`. Draft policy text → acquisitions. Tagged `ministry-of-ict-digital-
  development-kenya`, `kenya-ai-emerging-technologies-policy` (both tag-only). KEN hub + gov.policy bullet.
  *Revert: delete `raw/2026-07-21-kenya-ai-emerging-technologies-policy-public-consultation.md` + bullets.*
- **Zambia Cyber Crimes Act enforcement (Africa Business Insight, 2026-07-21; event Sat 2026-07-18) —
  ADMITTED as the dated enforcement-commencement report.** Straight reporting of a Ministry of Information
  & Media statement; not on drop-list. Same-instrument update, not dup of the 2026-07-15 journalists item.
  Appended to `cyber-security-act-zambia` (which already covers Act No. 4). Act's gazetted text →
  acquisitions. ZMB hub bullet at event date 2026-07-18. *Revert: delete
  `raw/2026-07-21-zambia-cyber-crimes-act-enforcement-begins.md` + ZMB bullet + sources append.*
- **Nigeria Bloomwit deepfake report (TechTrends, 2026-07-18) — ADMITTED as reporting-about-a-report.**
  Compiled as the dated development only; report figures attributed, not compiled (several garbled in
  capture — noted in-file). Bloomwit *Navigating Nigeria 2027* → acquisitions. Tagged `bloomwit-africa`
  (tag-only). NGA hub bullet. *Revert: delete `raw/2026-07-18-nigeria-deepfake-election-bloomwit-report.md`
  + NGA bullet.*

---

## 2026-07-22 — ingest chunk B: payments & fintech (dpi.pay / finance), 6 files

4 admitted to `raw/`, 2 dropped. Pages touched: `places/ZAF.md`, `places/XAF.md`, `places/NGA.md`,
`concepts/dpi.pay.md`, `concepts/finance.mou.md`, `concepts/finance.new.md`, `concepts/gov.regional.md`,
`concepts/include.access.md`, `concepts/tech.industry.md`. No entity pages minted; no index changes
(no new pages; tag-only entities left to the entity pass).

**Decisions.**
- **eZi Remit × Mastercard (Tech Africa News, 2026-07-21) — admitted.** Mastercard-led/vendor-framed but
  a real development: SA remittance fintech going live on Mastercard Move across 25 corridors. Tagged
  `ezi-remit`, `mastercard`; ZAF. The ~8.37% SSA / 13.4% bank remittance-fee figures are World Bank
  reference figures — cited dated, not promoted into page state. *Revert: delete
  `raw/2026-07-21-ezi-remit-mastercard-cross-border-payments-africa.md` + ZAF bullet.*
- **Stablecoins/AfCFTA (TechCabal, 2026-07-21) — admitted as analysis** (`lens: [analysis]`, kept per the
  chunk brief). Named experts Ayodele (Blaaiz)/Olivier (Forvis Mazars); cited by author, not self-
  corroborating. Genuine new payload over held stablecoin coverage: exchange-control-not-crypto-reg is
  the real barrier; ~15–18% SA intra-African trade. Bullets on XAF + ZAF. *Note: `analysis` is not in the
  reference.md lens vocab (sovereignty/colonialism); retained because the contract instructs tag-as-
  analysis — flag for Bill. Revert: delete `raw/2026-07-21-stablecoins-afcfta-cross-border-trade.md` + 2
  bullets.*
- **Zazu (wearetech brève, 2026-07-22) — admitted, thin.** SME fintech funding fact from Launch Africa
  Ventures; no amount/stage. Fixed malformed `entities:` brackets (`[[launch-africa-ventures]]`→canonical).
  Not a dup. *Revert: delete `raw/2026-07-22-afrique-du-sud-zazu-financement-launch-africa.md` + ZAF line.*
- **CREDICORP CLICKD (wearetech brève, 2026-07-22) — admitted.** Device-financing (locally-assembled
  laptops, instalment credit) with the Ministry of Digital Economy — real digital-inclusion + local-ICT
  layer, in scope. Used canonical slug `credicorp` (matches held `2025-06-17-credicorp-nin...`); added
  `dpi.pay` tag. NGA bullet. *Revert: delete `raw/2026-07-22-nigeria-credicorp-clickd-credit-ordinateurs-locaux.md` + NGA bullet.*
- **LemFi × BVNK (wearetech brève) — DROPPED (deleted).** Compression of a story the sweep already rejected
  as inadmissible Partner/Press-Room PR (TechCabal/TC Daily); stablecoin-settled remittances already held
  (Visa/Onafriq/Yellow Card). No independent payload. Untracked file, so hard-delete loses nothing.
- **Rank tontines (wearetech brève) — DROPPED (deleted).** Compression of the fuller English original
  already in `raw/2026-07-21-rank-community-finance-products-nigeria.md` (Money Circles/Tribe/Rank Perks,
  $100M paid, AjoMoney acquisition). Adds nothing.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 11 ; decisions logged - 6

---

## 2026-07-22 — ingest chunk A: identity & civil registration (dpi.id / dpi.mis), 3 files

Three admitted to `raw/`. Pages touched: `places/NGA.md`, `places/ZAF.md`,
`concepts/dpi.id.md`, `intersections/nigeria--dpi-id.md`, `intersections/nigeria--dpi-registry.md`,
entities `nimc`, `nitda`, `npc-nigeria`, `e-crvs-nigeria`, `act-south-africa`,
`home-affairs-south-africa`, `entities-index-mentioned.md`.

**Decisions.**
- **NIMC (Biometric Update, 2026-07-21) — admitted, but most payload was already held.** Its ICAO-PKD
  accession and NIMC-root-CA content duplicate held `2026-07-16` items, and NIN-health duplicates
  `2026-07-19`. Admitted for the genuinely new payload: **V-Pass** (FAAN + Verxid air-travel NIN+face
  credential) and the **NITDA→NIMC PKI/Root-CA handover** framing. Fixed malformed `entities:` brackets
  to canonical form. *Revert: delete `raw/2026-07-21-nigeria-nimc-new-duties-digital-ecosystem.md` and
  the two NGA-hub/intersection bullets.*
- **NPC birth/death (Nigerian CommunicationWeek/NAN) — admitted as an update; body was a mis-clip.**
  The web-clip's stored body was an unrelated PFIPC/CBN article; only its top excerpt matched. Re-captured
  the **verbatim NAN wire text** from the URL and replaced the body (`body_completeness: full`).
  `published:` was blank → established **2026-07-22** from the page dateline (briefing "Tuesday").
  It is the **nationwide rollout** (from 2026-07-01) of the e-CRVS platform Tinubu launched Nov 2025 —
  new facts: **VitalReg** platform name, **Barnks-forte Technologies** PPP, **4,011→8,000** centres,
  **57% birth / <20% death** coverage (2026-07), ≥1-parent-NIN requirement. *Revert: delete
  `raw/2026-07-22-npc-nationwide-digital-birth-death-registration.md` + entity/hub bullets.*
- **SA SIM/RICA (Biometric Update, 2026-07-21) — kept both, not dropped.** It is a secondary
  re-report of the held fuller primary `2026-07-20-south-africa-sim-registration-rica-digital-id`
  (TechCabal, first-hand ACT-CEO interview), which it cites. Leaned drop, but it carries a genuine new
  operative date — **framework implementation started 2026-07-01** — plus MTN biometric deployment and
  the eSIM vector, and `new/` files are untracked (a drop-delete would be unrecoverable), so the
  conservative call was keep-both: admitted and folded into the existing ZAF RICA entry. Fixed entity
  slugs (`association-of-communications-and-technology`→`act-south-africa`,
  `dept-home-affairs-south-africa`→`home-affairs-south-africa`); **dropped the `mtn` tag** (a one-line
  example mention, not an actor). *Revert: delete `raw/2026-07-21-south-africa-sim-registration-identity-fraud.md`
  + the ★ corroboration sentence on ZAF.*
- **No entity pages minted.** NIMC crosses the ≥3-source bar and warrants eager upkeep, but minting is
  the periodic entity pass, not the ingest hot path; tagged only. New tag-only entities (Verxid, FAAN,
  Barnks-forte, V-Pass, VitalReg) recorded in the mentioned shard.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 17 ; decisions logged - 4

---

## 2026-07-21 — deal_id casing normalised

22 `deal_id` values carried uppercase segments from the capture (`itu-REG-…`, `undp-ETH-…`, `PRESS-CHN-…`). Lowercased in frontmatter, in the `| Deal ID |` body row, and in the run log; **frontmatter and table now agree on all 1,109 records**, and no collisions arose. Filenames were already lowercase — the loader lowercased the filename but not the field — so nothing was renamed and no link broke.

**Decisions.**
- **Four verbatim mentions left as captured** — the capture's own prose ("see also REG row undp-REG-timbuktoo-2024", a Club of Mozambique note). Those are source words, not our key, and the verbatim rule covers them. It does mean a cross-reference inside a note still carries the old casing, so **lookups on `deal_id` should be case-insensitive**, not merely case-corrected.
- **The source CSV is left untouched.** It is input, not our store of record; normalisation belongs at build.
- **Loader fixed at four further comparison sites**, not just the build path. `done_ids` is now lowercased on both sides — otherwise the next resume would have failed to match an uppercase CSV id against a lowercased file and **rebuilt those 22 records as duplicates**. The same latent fault would have made a `DROP`/`RETAG` key silently miss.

*Revert: 22 files plus the run log; each change is a pure case fold.*

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 3

---

## 2026-07-21 — XSS given full place status; 10 deals re-tagged off it

Bill's ruling: `XSS` is not tag-only, provided it does not duplicate `XEA`/`XWA` and the rest.

**Duplication checked first, and there is none.** Every finance record carries exactly **one** place tag, and the compile aggregates **by literal tag**, so `XSS`'s total is not also sitting in the sub-region hubs. Grand total held at **US$57.57bn** across all three re-compiles — money moved between hubs, none created or lost.

**The real exposure is the rollup, not the page.** `XSS` is defined by rule as all `XAF` children except `XNA`, so it *contains* `XEA`/`XWA`/`XSA`/`XCA`. Anything that sums the sub-regions into an `XSS` total would double-count every deal already tagged `XSS`. Written into `reference.md` §1 as an explicit prohibition, with the safeguard placed on the tagging side.

**Decisions.**
- **`reference.md` §1 amended**: `XSS` and `XGL` are groupings with hub pages, compiled like any other place; the "neither has a page" clause is withdrawn. Tagging rule stated — an item scoped to **one** sub-region takes that sub-region's code; `XSS` is for genuinely pan-SSA items or those spanning **two or more**.
- **§9 whitelist entry withdrawn** for both codes. All eight `X__` links now resolve, so they are no longer intentionally dead.
- **10 deals re-tagged off `XSS`** to the sub-region they actually cover: 5 to `XWA` (Maroc Telecom West Africa cable, WAMZ, two WAEMU/UEMOA operations, Cauridor), 4 to `XEA` (three BMZ East Africa programmes, DIGEAT), 1 to `XCA` (ITU Central Africa benchmarking). `XSS` 307 → 297 deals, US$19.74bn → US$19.53bn; `XWA` 13 → 18; `XEA` 18 → 22; **`XCA` gains its first**, so the compile now covers **53** hubs.
- **Deals spanning two or more sub-regions deliberately left on `XSS`** — the East-and-Central fibre roll-out, WIOCC East & Southern, "West Africa and Madagascar", COMESA, and the EU Eastern/Southern/Indian Ocean action. That is what `XSS` is for.

*Revert: the ten `places:` lines, each of which carries a dated note explaining the move.*

**Noted:** 22 `deal_id` values carry uppercase segments (`itu-REG-…`, `undp-ERI-…`), which broke a case-sensitive lookup during this work. Cosmetic, but worth normalising in the loader before the next load.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 4

---

## 2026-07-21 — Finance compile: 52 place hubs

First run of `FINANCE-COMPILE.md`. Aggregated the 1,109 non-state deal records in `raw/` onto **52** place hubs — every place carrying finance records already had a hub, so none was minted. `## Financing` inserted after `## Recent developments`, nothing else touched.

**US$57.57bn committed across 1,109 deals**, each section dated *as of 2026-07-21* since totals are time-varying. Concentration: XSS US$19.74bn/307, ZAF US$7.28bn/54, NGA US$3.61bn/61, ETH US$3.16bn/34, KEN US$2.12bn/66, XAF US$1.51bn/167.

**Aggregate, not bullets — which was the point.** 1,109 per-deal bullets would have broken §8 on five hubs at once. **105 individual deals** are named across all 52 hubs (2 per hub on average) at the §5 deal bar — ≥US$100m, or multi-party and ≥US$50m, capped at 6 — and all 105 links resolve. Largest hub after the compile is ZAF at 7,055 words, within where it already sat.

**Decisions.**
- **Instrument mix is published with its own caveat where it is not established.** 59 records still carry the capture's unverified `Concessional loan` label, so any hub containing them says the mix is indicative and why. A hub reporting "mostly concessional loans" would repeat the capture's guess as a finding.
- **Disbursement deliberately not aggregated.** 410 records have no figure and 217 more carry an unaudited zero; a disbursement total would read as precise and would not be. The pass file asks only for committed, which is sound.
- **Totals are a sum of the USD field only**, never a restatement across currencies — each record still carries its own `Original amount` in the announcing party's currency.

**Noted, not acted on:** `reference.md` §9 lists `XSS` and `XGL` as tag-only codes "meant to have no page", but `wiki/places/XSS.md` exists and is now a compiled hub. The whitelist entry is stale for XSS.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 3

---

## 2026-07-21 — Lint: full pass, 15 checks

Run inside update-wiki after the finance ingest. Corpus is now **5,872** sources and 2,160 wiki pages.

`#1 schema` 3 missing `url` (folded into #14) · `#2 vocabulary` clean · `#3 money` clean on the new corpus — the loader carries `Original amount` in the announcing party's currency beside every USD figure, so the narrow defect does not arise · `#4 dead links` 38 residue, band ≥10 **empty**, unchanged from this morning's closed pass; 272 of the 380 apparent refs are whitelisted `sovereignty`/`colonialism` · `#5 untagged` clean · `#6 inadmissible` none · `#7 duplicates` 1 cluster · `#8 bloat` 61 pages, unchanged · `#10 stranded` 0 · `#11 date prefix` clean · `#12 link lists` 6 normalised · `#13 leaks` 0 · `#14 url quality` 27 worked · `#15 body_completeness` 65 set.

**Decisions.**
- **The Malawi IDT4M pair is co-financing, not duplication** — the European Commission and UNDP each committed to the same programme. Both kept and cross-referenced; dropping either would have deleted a real commitment from the aggregate. *Revert: delete the cross-reference notes.*
- **1,109 finance records deliberately left without `body_completeness`.** The spec omits the field where the primary was not fetched, and these are dataset-derived. Stamping `full` would assert a document capture that never happened — the value the paywall gate and the dedup tiebreak both trust.
- **USTDA cohort: `published` left as the commitment year** though announcements run 6–18 months later. That is #3's business and the gap is systematic, so it is recorded on all 14 records rather than silently changed.
- **The Giga US$47.6m is recorded as unestablished**, not as a contradiction: its `url` is a bare domain with no recoverable document, and the differing US$1.7bn figure sits in a source the wiki does not hold. Two figures that may measure different things, neither on file, is a vacuum — not a dispute.

**Errors of mine, caught and fixed.**
- **A `body_completeness` heuristic that was a guess, not marker evidence.** I added a "mid-sentence cut" test beside the sanctioned marker match; it fired on any body not ending in terminal punctuation, so complete articles ending in a byline or editor credit were labelled truncated. It produced 67 excerpt against 18 full — implausible enough to check. Re-run on markers alone: **48 of 49 excerpt calls were wrong**, corrected to 64 full / 1 excerpt.
- **I declared a running subagent dead.** Its transcript file was 0 bytes and 17 minutes stale, so I reported it stalled and began redoing its work. It was mid-run and finished normally after ~19 minutes and 88 tool calls. Had I not been asked, I would have clobbered 15 verified URL recoveries. **A 0-byte transcript is not evidence of death.**

**#14 in detail (27 files).** 7 standing-object carve-outs left with the bare domain, as the check requires. **15 recovered**, four by **byte-identity** against the held artefact — CHIP Senegal (529,302 bytes, confirmed live at 200), the Ghana Lands Commission deck, the Club de Madrid DPG paper, and the Gambia data policy, which 404s live and was proved through a Wayback capture. 5 left unrecovered with dated notes saying what was tried.

**Two integrity findings from that work.**
- **8 of 13 USTDA IATI identifiers resolve to nothing** while 5 in the same batch resolve normally, so the endpoint works and those identifiers do not. Records with a bare-domain URL *and* a non-resolving identifier have **no verifiable primary**; flagged as unconfirmed capture output rather than fact.
- **The USTDA Ghana "Equatorial Telecom" record looks spurious** — USTDA's own Ghana IATI file holds no telecom activity at all, and the stored ID's `GH5` segment breaks the `GH1` pattern every sibling follows. Flagged whole, not just its URL.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 4

---

## 2026-07-21 — update-wiki: 3 iterations, closed clean

Manual run. **Iteration 1** — ingest skipped (`new/` empty), reconcile drained 4 contradictions, acquire skipped (queue empty at read time). **Iteration 2** — acquire drained the 3 items reconcile had added, staging 4 clips. **Iteration 3** — ingest drained those 4; all three queues read zero; loop broke. Then the full lint. Cap not hit.

The loop earned itself this run: reconcile fed acquire, and acquire's retrieval then **overturned a reconcile resolution from the same day** — Mozambique EDGE's US$150m and its MCTES implementer both superseded by February-2025 restructuring papers. A single pass of the three would have left the wiki stating a figure that had been cancelled and an implementer that no longer exists.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 4

---

## 2026-07-21 — Acquire: 3 items, 3 acquired, 0 dropped; then ingest of the 4 clips

Acquisition pass on the three primaries reconcile surfaced. All three retrieved — the World Bank `documentdetail` portal serves a JS shell, but the WDS API yields the document GUID and the Bank's own text rendition serves the full body directly. Staged as **4** clips (the Mozambique item is two disclosed documents with separate GUIDs, filed separately) and ingested to `raw/`.

**The acquisition overturned a resolution written earlier the same day.**
- **Mozambique EDGE — US$150m is no longer current.** The February-2025 restructuring paper (RES00782) and the D906-MZ letter amendment cancel **US$4.2m** of unused CERC funds (SDR 105,000,000 → SDR 101,776,669.22, effective 10 Feb 2025), leaving a **net IDA commitment of US$137.85m (Feb 2025)** — the gap is wider than the cancellation because the SDR-denominated grant has drifted against the dollar since 2021. Also: **Component 3 (Govtech Business Ecosystem, US$30m) was dropped** at an earlier restructuring and the PDO revised, and **MCTES — which this morning's reconcile had just established as the implementer — has been disbanded**, its role passing to a new Ministry of Digital and Communications. `wiki/entities/edge-mozambique.md` rewritten dated; the deal record carries the supersession in its development history.
- **Burundi — two measures, both right.** PAD5527's total project cost reads 61.00 + 42.00 = **US$103.0m**; the **IDA commitment** is 50 + 42 = **US$92m**. The parent's US$61m already includes US$11m of unguaranteed commercial financing. Recorded explicitly so the next reader does not treat them as a conflict.

**Decisions.**
- **Mozambique item filed as two sources, not one** — two disclosed records, separate GUIDs, different document types. `raw/` is one file per document.
- **The press release's date is not the event date** — it reports a board approval PAD5527 dates to 6 December 2023, five weeks earlier. Recorded on the clip.
- **A drafting error in the Bank's own letter preserved verbatim and flagged**: the operative paragraph says "the amounts allocated to Category (1)" then itemises a sum from Category (2). The withdrawal table and the restructuring paper both confirm Category 2. Not corrected in the capture — it is the source's error, and silently fixing it would misrepresent the document.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 3

---

## 2026-07-21 — Reconcile: 4 researched, 4 resolved, 0 unresolved

All four of the finance-load contradictions closed on primaries. One source ingested: the World Bank appraisal document for Digital Eswatini (PADHI01184, 8 June 2026), full verbatim.

**Two of my four briefs framed the question wrongly, and the corrections are the useful part.**
- **Eswatini** — US$19.7m was never a rival figure to US$65m; it is the **IDA credit slice** of a US$65.0m package (US$45.3m IBRD + US$19.7m IDA), and the record's approval date was right. The capture's provenance was sound, its scoping was not. The PID's US$65.16m was US$65.00m plus a US$0.16m gap that appraisal closed — the size never moved, so no dated prior is kept. Enrichment failed because the v2 projects API does not carry this operation; v3 WDS does.
- **Burundi** — not the transcription slip the brief proposed. Parent P176396 is US$50m; additional financing **P180987** added US$42m in January 2024; 50 + 42 = 92 independently. **The World Bank files additional financings under their own project IDs, so a parent's `idacommamt` never absorbs them** — the record is right as a record of P176396 and was not overwritten. Any future finance load meets this pattern again.
- **Mozambique** — neither competing value was right: the implementer is **MCTES**, with INAGE and INTIC supported rather than implementing. Digital identity is central to the project (PDO leads on legal identification; Component 2 is US$70m of US$150m), so `Digital ID flag` corrected to TRUE and `dpi.id`/`dpi.govtech` added — the deal had been absent from digital-identity views entirely. Instrument is an IDA grant, not a concessional loan.
- **WARDIP SOP1** — record named seven countries, PAD4756 names four. Corrected, with the wrong text preserved inline. The same fault found on **wb-reg-003 and wb-reg-005**, where a neighbouring operation's or the next phase's roster was imported. **The feared propagation did not happen:** all regional records carry XWA/XEA place codes, never per-country, so no country hub was contaminated.

**Decisions.**
- **My own loader truncated enriched values at 120 characters**, silently cutting implementing-agency lists — Mozambique showed three of seven entries. Fixed in the loader; **14 other affected records flagged** to be re-read before use. *Revert: restore `[:120]`.*
- **Three primaries found but not held** routed to acquisitions: PAD5527, the Burundi press release, and the Mozambique restructuring/partial-cancellation papers — the last because they may mean US$150m is no longer current.
- **One conflict left open deliberately** on the Eswatini record: the PAD says Phase III, the Stakeholder Engagement Plan and the Bank's own practice director say Phase 2. That is a conflict inside World Bank materials and is recorded, not picked.

contradictions - 0 ; acquisitions - 3 ; awaiting ingest - 0 ; decisions logged - 3

---

## 2026-07-21 — Ingest: 1,109 finance records admitted to `raw/`

`new/` drained. Records admitted per `finance-record-spec.md` (*Ingest is match-or-create, not the news bullet path*) — **no per-deal hub bullets written**; hub presence is the compile's job.

**Duplicate screen.** Zero genuine duplicates within the load. **23 definite matches** against held sources by shared project number, adjudicated on both sides: **18 real merges, 9 mention-only rejections**. The WARDIP appraisal document matched seven records but appraises only one — the rest are abbreviation-list and lessons-learned citations that the shared-key rule alone would have merged falsely. A further **10 definite and 8 fuzzy** matches came from a scored similarity pass over 235 remaining candidates (22 unrelated); fuzzy matches are cross-referenced, not merged, and are **not counted as distinct deals in the aggregate**. 24 records gained dated, attributed `## Development history` lines.

**Decisions.**
- **46 EC `project_id` values were Excel-corrupted to scientific notation** (`2.02E+12`, `2.02E+13`) — clean IDs in that series are 10-digit numbers, and the digits are unrecoverable. It is both a false value and a definite-match key: left alone it would have merged 38 unrelated EC projects into one deal. Suppressed with a flag on 38 admitted records; fixed in the loader. *Revert: restore `r['project_id']` in the deal table.*
- **74 of 75 World Bank rows carried `Instrument: Concessional loan`** — a blanket capture label. Verified against the World Bank portal for all 75: **7 are IBRD loans and not concessional**, 1 is a pure grant. Corrected on 11 records where a portal or held primary establishes the instrument; **61 flagged unverified rather than reclassified**, because the portal's `idacommamt` does not separate an IDA credit from an IDA grant — CAR reads `ida=35m, grant=0` while its own PAD documents a grant. *This matters for the compile: an instrument mix reporting "mostly concessional loans" would repeat the capture's guess as a finding.*
- **Three divergences treated as supersession, not contradiction** — Nigeria's closing date, WURI's partial status after the Guinea component closed early, Gabon's unsupported 2028 end year — noted dated on the records.

**Contradictions opened — 4.** Digital Eswatini (US$65.16m and E1.2bn/~US$65m from two independent sources against the record's unverified US$19.7m; its portal lookup was one of only two failures in the load); WARDIP SOP1 participating countries (record names seven, PAD4756 names four, overlapping only on Guinea — would have pushed committed money onto six hubs that never received it); Burundi PAFEN US$50m vs a held "~$92m" that is the Chad figure from the same batch; Mozambique EDGE implementing agencies, where the record also carries `Digital ID flag: FALSE` for a project the PID centres on foundational identity.

contradictions - 4 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 3

---

## 2026-07-21 — Non-state finance load, rerun onto the new record shape

`new/` cleared and rebuilt against the amended spec (`finance_origin`, `## Development history`) plus `FINANCE-COMPILE.md`. **1,109 records, 14 dropped, 0 errors**; the 25 leads from the first run were left in place and skipped as done. Nothing ingested.

**Verification clean across all 1,109:** `finance_origin: non-state` on every record, `## Development history` on every record, zero invalid taxonomy slugs, zero invalid place codes, zero filename/`published` mismatches, zero records without a subject slug.

**Enrichment:** 528 succeeded (456 d-portal, 72 WB search API), 41 failed, 540 had no route; 68 records at day precision, no year-disagreement rejections. The small shift against the first run (465 d-portal → 456) is the 14 out-of-scope rows no longer being fetched.

**Decisions.**
- **This morning's two rulings are now in the loader, not applied afterwards.** The 14 out-of-scope drops and the 26 curated subject slugs were hand-fixes on the first run, so a rerun would have silently reintroduced both. They are now tables in the build, and the no-match path leaves the subject blank with a `NEEDS CLASSIFICATION` flag instead of defaulting. Zero records hit that path — the table covers all 40. *Revert: drop the DROP/RETAG tables from the loader.*
- **`disbursed_usd: 0` is suppressed on completed deals — 20 records.** 237 rows carry a zero; 20 of those are marked Completed, and a completed deal that disbursed nothing is not credible, so zero there is an unknown wearing a number (the CSV uses blank separately on 410 rows). Those render blank with a flag; a genuine zero on a live deal is kept. Spec: never write `0` for an unknown. *Revert: restore `usd(r['disbursed_usd'])` in the deal table.*

**Flag for the compile pass.** `FINANCE-COMPILE.md` step 1 sums committed USD, which is sound. Disbursement is not yet safe to aggregate: 410 rows have no figure, 217 more carry an unaudited zero, and `amount_quality` mixes `Rounded` with exact values without the section saying so. A disbursement total would read as precise and would not be.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 1109 ; decisions logged - 2

---

## 2026-07-21 — Finance records: store, immutability, merging, rollup home

Design rulings for the finance dataset (govern `finance-record-spec.md`).

**Decisions.**
- **Finance deal records live in `raw/` as the living store of record** — a scoped
  exception to `raw/` immutability: they accrete later reporting rather than
  spawning a page per event. *Revert: treat them as ordinary immutable sources.*
- **Compilation is aggregate, in a hub Financing section** (total committed, count,
  date range, top financiers, instrument/subject mix), never one bullet per deal;
  individual deals surface only at the entity-page bar. The **forthcoming domestic
  state-financing** dataset shares the *same* hub section, split by origin
  (non-state vs domestic state) — the section is origin-neutral, both drivers feed
  it.
- **Merging later reporting: definite matches only.** Shared `project_id`/
  `iati_project_id` or unambiguous same-deal identity → merge added-value detail
  only (dated, attributed, in a `## Development history` section), contradictions
  to reconcile. Fuzzy matches are cross-referenced, never merged, not counted in
  the aggregate. Same rule governs initial-load overlaps with held finance.

Spec updated (store-of-record/merging section, hub-Financing rollup,
Development-history in template). No records moved yet; 1,109 still in `new/`
awaiting the finance-compile pass.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 1109 ; decisions logged - 3

---

## 2026-07-21 — Non-state finance load: 1,109 records built into `new/`

`finance-load-nonstate-csv.md` run over the whole 1,148-row CSV. **1,123 built, 25 leads, 0 build errors**; then a post-build scope and tagging pass removed 14 and re-tagged 26. **`new/` holds 1,109 finance records.** Nothing ingested yet.

**Verification clean across all records:** zero invalid taxonomy slugs, zero invalid place codes, zero filename/`published` mismatches, zero proxy dates (`date_source: source` on all 1,123).

**Enrichment:** 537 succeeded (465 d-portal, 72 WB search API), 41 failed, 545 had no route. 68 records raised to `date_precision: day` from a verified board-approval date whose year agreed with the source; **year-disagreement rejections: 0**. Remaining 1,055 stay at year precision.

**Leads (25, not records):** 23 failed the provenance gate — `source_url` pointed at dropbox.com, i.e. the capture's own working store, not a primary; 2 had no commitment or start year (Bill's ruling this morning).

**Decisions.**
- **14 records deleted as out of scope**, not parked (CLAUDE.md → *The material*): 7 European Commission civil-society contracts (gender-based violence, counter-terrorism, natural-resource governance, social cohesion, women's economic empowerment) and 7 Gates/other grants on teen-girl health, maternal mortality, EU development-policy research and general advocacy. These carry no digital or data content; the CSV's scope is looser than the wiki's. *Revert: `git checkout` the 14 files listed in the run log with `enrich=dropped`.*
- **26 records re-tagged off a defaulted slug.** The loader fell back to `tech.industry` where the crosswalk left the subject blank ("infer from title/description") and no keyword rule matched — a guess, which the spec forbids. Each now carries a slug justified by a quoted phrase from its own source text. *Revert: run log rows whose warnings say "slug inferred from source text".*
- **Loader defaults are unsafe by construction.** Recorded as a spec point below; a no-match should flag, never fill.

**Standing gaps.** 344 records (31%) have no recipient in the source — financier-only tag plus a `recipient unspecified` note, per this morning's ruling. 148 sit on `confidence=review` crosswalk rows. Four financier slugs are new to the wiki (`bank-of-china`, `enabel`, `isdb`, `proparco`) — entity-pass work, not ingest work.

contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 1109 ; decisions logged - 3

---

## 2026-07-21 — Daily sweep (run B) → update-wiki: 18 sources, 1 contradiction opened and closed

First end-to-end chain: sweep staged **17** into `new/`, step 8 handed to update-wiki, **iteration 1** ingest → **iteration 2** reconcile (on a contradiction the ingest itself raised) → queues zero → lint.

**★ The sweep's real output is a correction to this morning's run, not the yield.** 17 staged from an effective **4½-hour** slice — more than run A staged from **58 hours**. Two listings had served run A **stale renders indistinguishable from complete short days**:
- **connectingafrica.com** — run A's standing flag is **withdrawn, not escalated**. The site publishes normally; the 07-18/19 gap was the weekend; and the **Monday 07-20 article was already live during run A**. Run A's seven cache-busted listings — *two with different tokens* — all returned the same 07-17 ceiling, so **a repeated identical ceiling across distinct cache-bust tokens is a pinned cache, not silence**. My "different tokens, therefore both live" inference to Bill was **invalid**.
- **techafricanews.com** — an uncached date-archive fetch serves **10 items with pagination stripped**; cache-busted it returns **15 + a page-2 link**, true total **22** for 07-21 against the **10** run A recorded. **Six staged items were among the twelve the stale render hid.**

**New standing rule, now in `daily-README.md`:** a nil or short day is established only when **two independent instruments agree**; a single listing, however cache-busted, never suffices. Search's worth is not yield (near-zero) but that it **exposes false ceilings** — it did so for itweb.africa on 07-20 and techafricanews on 07-21. Also corrected: **telecomreviewafrica has five section listings, not the seven run A reported** (dead: `telecom-vendors` plural, `telecom-technology`, `interviews`, `press-releases`), and has published **no editorial since Fri 17 Jul**.

**★ Contradiction opened by the ingest, closed by the reconcile, in one run.** A second account of the Egypt–Eswatini central-bank meeting named the gold-bank partner as the **Export-Import Bank of Egypt** (national) against the held **Afreximbank** (multilateral). **The CBE's own release settles it: Afreximbank** — MoU **signed 2025-12-29** by Governor **Hassan Abdalla** and President **Dr George Elombi**. The held ITWeb account was right; the newer, longer, more primary-*looking* account was wrong. **Method note recorded in the closure: proximity to a primary is not accuracy** — a re-keyed release can garble a proper noun precisely because it reproduces at length. Fetch the primary; don't rank secondaries by how primary-ish they read. The primary also supplied what the wiki lacked — **feasibility-study stage**, a **designated Egyptian free zone**, an **accredited refinery and vaulting**, Egypt as hub *subject to the study* — and, in passing, **resolved the meeting date** the wiki had carried as unestablished (**2026-07-20**).

**Compiled:** the Nigerian **DEON court ruling** (Suit FHC/L/CS/760/2026 — regulations upheld, FCCPC stripped of telecom licensing; ₦300–400bn airtime-credit market, ~40m users; **no FCCPC/NCC joint framework published**, which is the condition for a repeat), Kenya's **CED licence** (Gazette Notice 3335), **Egypt's 450-services-by-2030** target, **MACRA's refund order** against Airtel and TNM, **Starlink extended to Seychelles**, and **Helios Senegal** now reported as a *commitment* — carried still as announced intent, since nothing signed is held.

**Decisions.** (1) **Standing scope exclusion recorded: ITWeb's Makate / "Please Call Me" series** — original reporting, but IP compensation and litigation funding, not data governance; **two agents dropped it independently today**, so it is ruled once rather than re-decided each run. (2) **SASSA payment-dates** dropped as second-hand synthesis — real payload but no original reporting, and its "~600,000 not switched" conflicts with other outlets' "1.3m", exactly the laundering the rule guards against. (3) Run B **treated run A's drop decisions as binding** rather than re-adjudicating — cheap and consistent, but **a wrong call in run A propagates silently**; flagged by the agent itself.

**Close lint:** #1 2 · #2 clean on all 18 · #7 **0 duplicate clusters** · #10 all queues 0 · #11 clean · #12 clean · #14 14 (2 with `url_note`, rest the noted backlog) · #15 94 blank (deliberate).

Revert: `git revert` this commit, then move the 18 sources out of `raw/` and restore `sweep/daily/state.json`.

`contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 3`

## 2026-07-21 — update-wiki: 2 iterations, 7 sources admitted, queues drained

First run of the orchestrator. **Iteration 1** ingest (6 clips) → **iteration 2** acquire (3 items the ingest itself created) → statuses all zero → close lint. The loop behaved exactly as `UPDATE-WIKI.md` predicts: **ingest refilled acquisitions, so a single sweep of the three would not have sufficed.**

**Ingest — a surveillance/sovereignty chunk, all 2025 material arriving late.** Six clips (CIPESA 2025-03-12; IJRISS/Univ. Zimbabwe 2025-03-05; Africa in Fact 2025-04-10; Unwanted Witness 2025-06-13; Modern Diplomacy 2025-08-04; Georgetown Africa-China Initiative 2025-09-18). **All six filenames carried the clip date (2026-07-21) against publication dates 5–16 months earlier** — renamed to publication date per the filename rule, and each written up as **a baseline, not news**.

**★ The find: Senegal's Diamniadio data centre, which the wiki did not hold at all.** Senegal was the **first African state to replicate China's data-governance model (June 2021)** — the **US$18.2m DND**, China EximBank-financed, Huawei-built, framed as "guaranteeing Senegalese digital sovereignty", after which **Macky Sall ordered all national data repatriated** into it. This reframes `senegal--infra-store`: the New Deal's sovereignty pillar is **not a 2024–26 innovation** but the continuation of a 2021 localisation posture, and Google/Alibaba are **later entrants to a field China entered first**. It is also the sharpest African instance of the wiki's standing argument that **localisation is not sovereignty** — servers onshore, model and builder foreign.

**★ Acquire corrected an error the same run's ingest had just introduced.** I compiled CIPESA's line that African governments spend **~US$1bn/year** on surveillance technology. The underlying **IDS release (2023-09-27)** is now held and shows the figure is **five named countries — NGA, GHA, MAR, MWI, ZMB — not the continent** — and is a **2023** figure. Corrected on `gov.protect`, which now also holds what the release adds: **Nigeria ≥US$2.7bn over a decade (~US$12/citizen)**, Ghana/Morocco/Zambia **each >US$250m** on Chinese safe cities, **Egypt running US firm Honeywell's** package, and **Malawi the only one of the five to reject** the Chinese offer. Its supply-chain finding is sharper than the "Chinese surveillance" frame: **the US and UK dominate social-media surveillance and political-marketing consultancy; Germany, Italy and Israel export the phone-hacking malware; China dominates public-space safe-city systems.** *Also distinguished: this 2023 IDS study is **not** the March-2026 IDS Smart City report — same lead author, different work.*

**Acquire: 1 acquired, 2 dropped**, both with dated not-held lines on `gov.protect` — the Unwanted Witness report (`dead-url`) and the Spaces for Change Nigeria report (gated 74 MB download, page serves metadata only). Neither can be cited for its findings.

**Decisions.** (1) IJRISS paper ingested as **published academic work** but flagged twice — it is a **qualitative analysis of secondary data** (cite for framework, not fact) and **IJRISS's standing as a journal is not established**. (2) Modern Diplomacy carried as **commentary, not research**. (3) Byline discrepancy on the Georgetown piece resolved to the **body byline (Bagwandeen)** over the clipper's (Young). (4) Every figure in the chunk written as **attributed, not adopted** — none is independently held.

**Close lint (all 15).** #1 2 · #2 clean on all 7 new sources · #3 clean · #4 1 pre-existing dead link on a touched page · #5–#7 clean · #10 **all queues 0** · #11 clean (no clip-dated files left in `raw/`) · #12 clean · #14 14, of which 2 now carry `url_note` and the rest are the noted backlog · #15 94 blank (correct, deliberate residue).

Revert: `git revert` this commit, then move the 7 sources out of `raw/`.

`contradictions - 0 ; acquisitions - 0 ; awaiting ingest - 0 ; decisions logged - 4`

## 2026-07-21 — Daily sweep chains into update-wiki

Wired update-wiki as the daily sweep's **step 8** (was only a pointer in "Running it"): after
staging + state-finalise, the sweep runs `update wiki` to ingest/reconcile/acquire/lint. Runs
after step 7 so the high-water mark is set and the two never write concurrently. Manual-stage-
only path preserved (stop after step 7). First manual update-wiki run reported working.
Revert: `git revert` this commit.

## 2026-07-21 — STATUS.md status object + process-announce convention

Added `STATUS.md` (trigger **"wiki status"**) as the single source of truth for the three
queue counts (with indicative commands), the standing tally line, and a new **announce-the-
running-process** convention (a `▶ running: <pass> — iteration N` banner before each pass).
Answers Bill's two questions: display which process is running (yes, now instructed), and
factor status get+display into a recallable object (yes — it was defined in six places and had
already drifted this session). Pointed UPDATE-WIKI.md, CLAUDE.md → Reporting and reference.md
at it, removing the duplicate count definitions. **CLAUDE.md change (surfaced):** the Reporting
section now points at `STATUS.md` and requires announcing each pass, replacing the inline
awaiting-ingest gloss — net-neutral on length.

Also: `country-ingest-workflow.md` moved to `archived-procs/` (Bill); swept the last stale
`new-queue/` refs from the active tree (`wiki/index.md` folder table).
Revert: `git revert` this commit.

## 2026-07-21 — New orchestrator: UPDATE-WIKI.md

Added `UPDATE-WIKI.md` at root — trigger **"update wiki"**, callable manually or as a
sweep's hand-off step. It loops: read statuses → if all three queues empty, exit → else
run ingest (new/ > 0), reconcile (contradictions > 0), acquire (acquisitions > 0), repeat →
then full lint. It files nothing itself; only invokes the existing passes. Added a **10-iteration
safety cap** (flag + exit to lint if hit) — not in Bill's spec, guards against a non-draining
pass spinning. Pointers added: CLAUDE.md header pass list; daily-README "Running it" hand-off.
Also brought the `awaiting ingest` field into the wrap-up status line in RECONCILE.md and
ACQUIRE.md, which the earlier global edit had missed.

Note (not acted): `country-ingest-workflow.md` still targets `/new-queue` — a separate
draft-for-review process, left as-is.
Revert: `git revert` this commit.

## 2026-07-21 — Doctrine: sweep → new/, and status-line field

**★ CLAUDE.md change (surfaced per doctrine).** Structure §: the sweep now writes candidates
straight to `new/`, not to `new-queue/`. This **retires the `new-queue/ → new/` human-promotion
gate** — the "one deliberate human gate" — ahead of an ingest workflow that can be run manually
or triggered by a sweep. `new-queue/done/` stays Bill's, untouched.

Also added **`awaiting ingest - NN`** (count of `new/`) to the standing status line, between
acquisitions and decisions logged. Edited: CLAUDE.md (Reporting + Structure), reference.md
(folder tree, §7 sweep intake, sweep containment rules, lint tally, reconcile/lint wrap-up lines),
sweep/daily-README.md (all five `new-queue/` sweep-target refs + status line).

`new-queue/` folder left in place (1 pre-existing candidate); its contents are Bill's to clear.
Revert: `git revert` this commit.

## 2026-07-21 — Lint, all 15 checks

Run after four passes added **45 sources** and touched ~50 pages. Corpus: 4,729 raw `.md`, 2,159 wiki `.md`.

**Counts.** #1 2 · #2 clean · #3 clean (0 pages stale, 0 missing `last_reviewed`) · #4 38 dead targets / 108 refs · #5 clean · #6 clean · #7 clean · #8 45 over 2,500 w (21 non-place) · #9 **0** · #10 **all queues 0** · #11 clean · #12 clean · #13 3 false positives · #14 14 (13 already noted or carved out; 1 fixed) · #15 94 blank (correct).

**★ The finding that matters is about the lint tooling, not the corpus.** My first-pass checker split frontmatter on the first `---` anywhere in the file. **Several sources carry `---` inside a URL slug**, so the parser truncated their frontmatter mid-block and reported fields as missing that are plainly present. That produced **4 false schema defects and 2 false URL defects**, and had I auto-fixed on it I would have written duplicate keys into good files. Re-ran with a line-anchored parser (terminator = a line that is exactly `---`); real #1 count is **2**, not 4. **Any future lint must use the line-anchored split** — this is the second tooling bug in two passes to generate false positives at scale (yesterday's #3 money detector ran ~93% false-positive).

**#4 — and a second measurement problem.** No target reached the ≥10 create band. Top of the 3–9 middle band is **`busha` (9 refs)** and **`tether` (6)** — but each is tagged in exactly **one** raw source. **The referrer count is inflated by one story compiled across four pages, not by nine developments.** §9 leans toward creating in that band; §5 sets the entity bar at ≥3 sources. **Decision: did not mint** — a page built from wiki prose derived from a single source is circular, and §5 is explicit that below the bar an entity living as a tag is expected, not a gap. **Referrer count is a poor materiality proxy when one event fans out across place hubs and intersections; source count is the honest test.**

**Acted:** fixed the AAIGI bare-domain (`url_note`, document URL unrecoverable — publisher platform exposes no document path); added the #14 homepage carve-out note to the BIPA capture so it stops resurfacing; unlinked `national-land-authority-rwanda` (1-ref stray, no page, no close match); corrected `reference.md`, whose folder tree still listed the `contradictions/research/` directory removed on 2026-07-20 while the same file said elsewhere it was gone.

**★ Naming collision caught, and it is a live conflation risk.** The **Africa AI Governance Index (AAIGI)** ingested today — Lawyers Hub / Africa AI Policy Lab, Nairobi, July 2026, 54 states — is **not** the **African AI Governance Index (AAGI)** — AAGI Foundation, Accra, March 2026 methodology report, 55 states, full index due Q4 2026, DOI 10.5281/zenodo.18895975. **Both use 8 pillars and 80 indicators.** A third series compounds it: the same Lawyers Hub platform publishes an **"AI Readiness Index" on a 0–100 scale** (Egypt 81, SA 76, Kenya 72) against AAIGI's **0–4** composite. Disambiguation table added to `africa-ai-governance-index.md` and a caution to the source page. **Always name the instrument and the scale.**

**Not acted, with reason.** #8: 21 non-place pages over 2,500 words. Classified rather than churned — `tech.ai` and `infra.connect` are recorded in the sweep README as genuinely thematic and correctly long, and **`uganda--dpi-id` (6,084 w) has zero dated bullets and twelve thematic section headers** — a dense argument, not an append-log and not a matrix, so §8's "leave it" applies. #15: 94 blanks are yesterday's deliberate residue — blank asserts nothing, and setting `full` on an unchecked body would corrupt the paywalled-promotion gate. #13's three hits are `log.md`, `log-archive.md` and `reference.md` **describing** the quarantine rule, not citing it. The `[a`/`b` dead links are reference.md's own bracket-convention example.

**#9: no contradictions surfaced.** Nothing in today's 45 ingests disagreed with held state; the duplicate scan over them found no same-date title cluster above 50% overlap. **#10: `new/`, `new-queue/`, `contradictions/open/` and `acquisitions.md` are all empty.**

Revert: `git revert` this commit.

`contradictions - 0 ; acquisitions - 0 ; decisions logged - 4`

## 2026-07-21 — Reconcile (2nd pass): 2 researched, 2 resolved, `open/` empty

Both items were the ones the acquisition pass re-routed. 3 primaries ingested. **Both resolutions correct framings CC itself wrote yesterday, and one corrects the brief CC wrote this morning.**

**South Sudan visa fees — there is no 2026 instrument.** The schedule reported across African trade press in July 2026 as a new policy is the **December-2024** one: circular **RSS/SSRA/CG/SPECIAL/VOL.1/104 of 2024-12-03** under the **Financial Act 2024-25**, effective **2024-12-16**, signed by DG Maj. Gen. Simon Majur Pabek — single entry **US$100** (US$160 US citizens), 3-month **US$200** (US$125 regional), 6-month **US$350**, denominated in USD by the instrument itself and charged at the Central Bank rate. The story traces to a **social-media post**, not a document; no outlet in the chain cited a gazette or circular.

**My brief was wrong twice.** (1) The "incompatible schemas" were **one portal table read two ways** — one outlet took the single-entry column, another the full row across three durations. (2) The 2019 directive is **not a fee schedule** at all; it grants **free visas to Tanzanians** under EAC Common Market Protocol art. 7, and I conflated it with the fee figures. Also corrected: South Sudan has charged EAC nationals since at least **2020**, so the "departure from EAC free movement" framing was six years late, and **Egypt's visa-free status is long-standing**. `SSD.md` carried the false 2026 framing as a dated development and has been rewritten. **Open horizon:** whether the 2019 Tanzania directive still operates — the Ministry neither confirmed nor revoked it.

**Jitume — the "117" is a launch-ceremony ordinal, not a national count.** Two parallel series run throughout: **launch ordinal** (40th 2023-08-07 · 100th 2023 · 112th 2026-06-13 · 117th 2026-07-20) and **installed base** (114 · **290** 2025-02-15 · 284 · **~350** 2026-06). Decisive evidence: at **one event on 2023-08-07**, CS Owalo said "the **40th** Jitume Digital Hub" while PS Tanui, in the same room, said "we have so far **deployed 114 centres**" and distinguished the 74 not yet launched. My brief guessed the mechanism was hub models or TVET-vs-ward denominators — **it was neither**, and brand conflation is ruled out. **The wiki now carries the installed-base series and treats any "Nth hub" as a ceremony count.** The "first figure for Jitume's scale" framing I wrote on 2026-07-20 is withdrawn.

**The finding worth keeping is about source quality:** Jitume's published metrics are internally inconsistent on nearly every headline — youth trained **400,000 → 140,000 → 240,000**, job linkages **41,000 / 42,000 / 92,000** within weeks, start date **Dec 2022 vs Dec 2023**, models **three vs four**, standard pilot **50 vs 53** — all from named officials. **The press reported them accurately; the inconsistency is in the programme's own communications.** No hub register or results framework exists (KoTDA's hub sites are JS apps; KDEAP's framework tracks broadband users and its Jun-2025 ISR records "no progress recorded on results indicators"). No Jitume figure should be cited without its date and speaker.

**Shaky:** the US$50 regional single-entry band appears on the South Sudan portal and the DC embassy page but is **not attested in the 2024 circular as reported** — carried as portal-stated. Neither the 2019 directive nor the portal table itself could be captured (client-side render, no Wayback capture).

Revert: `git revert` this commit, then move the 3 primaries out of `raw/` and the 2 briefs back from `done/` to `open/`.

`contradictions - 0 ; acquisitions - 0 ; decisions logged - 2`

## 2026-07-21 — Acquisitions: whole 48-item queue worked; 16 acquired, 32 dropped

One attempt each, six parallel workers. `acquisitions.md` is back to its header. Drop classes: **not-locatable ~16, js-shell 6, 403/bot-block 2, paywall 2, wrong-document 2, cookie-wall 1, no-response 1, hand-clip-by-definition 1.** Gazettes, Hansard, ministry quarterly reports and regulator fee schedules failed almost uniformly; multilateral project documents and government press offices came back.

**The pass's real yield was four corrections to held state, not the documents.**

1. **★ The IMF's "95% of surveyed users" does not exist.** The IMF Country Focus article of that exact title is now held (2026-06-16, Schimmelpfennig & Zhao) and **reports no survey at all**. The figure reached the wiki through ITWeb's report-of-the-report and I compiled it yesterday with hedges; hedging was the wrong response — **it is struck from `NGA.md` and `nigeria--dpi-pay.md`**. The primary does settle the previously-unheld Chainalysis claim (**Nigeria 2nd in 2024, 6th in 2025**) and adds US$59bn inflows (Jul 2023–Jun 2024) and ~60% of SSA stablecoin inflows since 2019. Underlying analysis is **2026 Article IV Annex VII — not held**.
2. **★ Malawi's DMAP is US$90m, not US$150m, and has no tower line.** The World Bank appraisal document shows **US$150m is the IDEA multi-phase envelope**; DMAP's **Total Operation Cost at approval (2024-06-27) was US$90.00m** (US$70m IDA grant + US$20m commercial). The minister's "expand tower infrastructure" framing is also wrong — the nearest component is **Sub-component 1.1 Rural Connectivity (US$20m)**. Corrected on `MWI.md`.
3. **★ iiDENTIFii's 59.2% is not in the company's own release either.** Its launch release gives **63.2% / 60.9%**; 59.2% appears only in later press. Also established: the Identity Index 2024 is a **vendor-commissioned World Wide Worx survey, n=200, South Africa only** — not a continental measure. Corrected on `ZAF.md`.
4. **Senegal's Faye–Greenwood meeting was 2026-07-16**, not the 07-20 publication date, and **Helios already ran 1,479 Senegalese sites in Q1 2026** — so the "first Senegal position" reading is superseded.

**Two items re-routed to `reviews/contradictions/open/`** — they turned out to be disputes, not missing documents. **(a) South Sudan's visa-fee instrument:** the Ministry of Interior **denies issuing any directive or statutory instrument** and says the circulating document is a **leaked internal directive of 24 July 2019**; the reported fees are structurally incompatible across outlets (banded by nationality in one, by visa duration in another). **(b) Jitume hubs:** the wiki's "117th hub, 2026-07-20" sits against a **February-2025 report of 290 hubs** — a count running backwards. The newly-held KoTDA tender supplies the likely mechanism (three hub models, TVET *and* 1,450-ward denominators). **The 117 is flagged on `KEN.md` as not citable as a baseline until it closes** — that framing was mine, from yesterday.

**Also resolved:** Rwanda's ~54,000 land-title figure is a **three-district scope difference**, not a disagreement (37,000 Kayonza + 21,000 Kirehe + Nyagatare) — though the source is internally inconsistent, printing a total its own components exceed, so carry the district figures. **Mozambique's December-2025 data-governance final is now held**, which unblocks the draft→final replace lint #7 could not execute. **Somalia's framework was published 2026-07-19** (day precision) **alongside a second instrument — a National Cybersecurity Compliance Framework — the wiki had not recorded at all**; neither text was obtainable (NCA publishes them only behind `lnkd.in` shorteners).

**Judgment calls.** (i) Kept the **KoTDA tender** though it is not the hub register the item asked for — it is first-hand programme documentation covering the gap the item named, and the page says plainly it does not satisfy the register half. (ii) Kept the **Safaricom 2026 Annual Report** from a **third-party host** with no issuer-hosted PDF found; both that and the fact that the capture stops before the Kenya section are recorded in-file, and its **Group** 43.69m must not be read as the Kenya figure. (iii) Kept the **iiDENTIFii launch release** as a substitute for the gated Index, clearly marked as not being the Index.

**Not held, stated dated on their pages:** Ghana's L.I. 2523 (absent from the NIA's own statute page), the NIMC Act text and gazette, Nigeria's Data Protection (Amendment) Bill, the CBN circulars, Algeria's ANPDP délibération n° 04, MACRA's fee schedule, Malawi Hansard, Eswatini's ICT quarterly report and World Bank PAD, the AfDB Phase I appraisal and Phase II progress report, and the IDS study PDF.

Revert: `git revert` this commit, then move the 16 sources out of `raw/` and restore `reviews/acquisitions.md`; delete the two new contradiction files.

`contradictions - 2 ; acquisitions - 0 ; decisions logged - 3`

## 2026-07-21 — Reconcile: 5 researched, 5 resolved, `open/` empty

**4 primaries ingested**, 5 acquisitions opened, 1 narrowed. No item re-routed, none closed unresolved.

**Partech Kenya — settled without leaving the vault.** The held Partech release says **US$1.04bn** twice; it contains no 1,096. **The US$1,096m was never Partech's** — it is **AVCA's own asterisked alternative Kenya total**, and it reconciles exactly: AVCA's rooted **US$335m** + the **US$761m** its narrative attributes to Kenya-HQ'd multi-region companies = **US$1,096m**. It could not have been an AVCA 2025 figure either, since AVCA puts all East Africa at **US$426m**. The 3.8× ratio survives. **The by-product is better than the fix:** once AVCA attributes multi-region companies to Kenya, AVCA and Partech are **~5% apart, not 3.3×** — the headline chasm is an attribution-rule artefact, which is the argument that page already makes.

**Nexus AI Factory — not a contradiction.** **500 MW is contracted renewable *power supply* from TAQA** (June-2025 consortium release); **36 MW is contracted *IT load*** across two phases (MTNRA release, 2026-04-08: MAD 5bn/16 MW Nouaceur + MAD 7bn/20 MW north). Different quantities, a year apart, welded together by one trade write-up. Also corrected: MAD 12bn is **phases 1–2 only**, ≈**US$1.29bn** at the signing-day rate — the wiki's undated **US$1.2bn** was press rounding. Supersession recorded: phase 1 went from "over 40 MW, Q1 2026" to **16 MW from 2027**.

**TechPark CV — three figures, one pot of money.** Phase I €35.90m/€31.59m + Phase II €15.95m/€14.00m = **€51.85m project carrying €45.59m of AfDB financing**. Both sums are exact. €45.5m is €45.59m truncated in AfDB's own release. **USD dropped**: the Bank published **$50m** and **$57m** for the same money two days apart. **"Nearly 2% of GDP" struck** — in no AfDB or government document, and it sets a 2013–2025 capital programme against one year's GDP.

**1,800 cameras — a transposition, and the money was three things.** Uganda's Kampala figure is **3,233 (of 5,552 nationwide)**, not 1,800; the analysis lifted three spend figures verbatim from the IDS press release — **which carries no camera counts** — and attached Kenya's count to Uganda's row. Kenya's 1,800 is right, but the cameras are the **IPSCSS, contracted to Safaricom May 2014 at KES 14.9bn**; the **~US$100m/KES 8.5bn** is a **separate 2012 Chinese grant** whose link AidData calls "unclear"; **US$219m** is IDS cumulative national spend. **Local currency exists for both** (UGX 458bn, KES 14.9bn), correcting the brief's assumption that neither had one.

**NIMC — wiki was right, and the real finding is the vacuum.** Assent established from the Presidency's own record: **Friday 26 June 2026**. "2025" is the **bill-year** — the bill passed the Senate as the 2025 bill, **assent was declined 2026-05-05 under s.58(4)** over drafting defects, and the corrected bill was assented in June 2026. No page needed changing. But **the Act's text is still not public** — no gazette reference, no Act number, NIMC has not published it — for a statute cited on four pages and now the stated legal basis for wiring digital ID into healthcare. Stated as a dated vacuum on `nimc.md`.

**Shaky / not established:** TechPark Phase I split is inferred from the Phase II back-reference plus three corroborations, never read directly; the Morocco MTNRA and consortium releases are **not held** (research findings only) — both queued; the IDS study PDF was **unfetchable**; NIMC's corrective re-passage date is unestablished.

**Procedure fix, logged:** `RECONCILE.md` still instructed writing research to `reviews/contradictions/research/` and deleting it at pass end. That folder was removed 2026-07-20 and CLAUDE.md now says research earns its place only as an ingested primary. Amended step 3 and the closing section to forbid recreating it. Nothing was written outside `raw/`, `wiki/` and `reviews/`.

Revert: `git revert` this commit, then move the 4 primaries out of `raw/` and the 5 briefs back from `reviews/contradictions/done/` to `open/`.

`contradictions - 0 ; acquisitions - 48 ; decisions logged - 5`

## 2026-07-21 — Ingest: manual collection, 11 promoted, 10 admitted, 1 dropped

Bill's manual clip collection (9 markdown + 2 PDFs). Four thematic chunks. Touched **10 place hubs**, **2 concept pages**, **3 entity pages**; **1 entity page minted**; **1 contradiction filed**; **4 acquisitions added**. `new/` empty.

**★ The one that closes an open question: Digital Eswatini is approved.** The Ministry of ICT's Q1 FY2026/27 report (via a single Eswatini outlet) confirms **World Bank approval in June 2026** — negotiations concluded 2026-05-18 — of **US$65m** for **[[digital-eswatini-project|P508948]]**, an **IBRD loan plus IDA credit**. The wiki had carried "**board approval remains unconfirmed in the corpus**" since the concept-stage PID; that is now superseded on both `SWZ` and the project page, with the *estimated* 2025-09-01 approval date shown to have **slipped ~9 months**. Components now held: **US$36m** broadband (incl. EPTC reform), **US$25m** GIYH (national digital ID, cybersecurity, data governance, e-payment gateway, 50+ services, 200k digital skills), **US$4m** management; plus a **US$2m** preparation grant closing Dec 2026. **Money carried in the Bank's own currency with the outlet's dated conversion at E16.37 = US$1 (2026-07-19)** — components sum exactly to US$65m and every conversion reproduces. Most useful line in it: the ministry's **own named risks are administrative** — IFMIS/World Bank reporting incompatibility, PIU capacity, grant expiry — not technical.

**Contradiction filed (the queue's one addition).** Vanguard names Nigeria's enabling identity statute the **"NIMC Act, 2025"**; the wiki holds it as the **NIMC Act 2026, enacted June 2026**, across four pages. Filed rather than reconciled — the likely benign explanation (2025 passage, 2026 assent) is a hypothesis, not a finding. **The sharper finding is in the brief: the wiki holds no primary for *either* designation**, only press description, for a statute it cites repeatedly and has now attached a health-sector programme to.

**Decisions.** (1) Dropped the Côte d'Ivoire clip — duplicate of a held TechAfricaNews capture that is **closer to the State Department primary** and already carries ABD Group, NTELX and the $570m framework. (2) Ingested both **analysis** pieces as expert third-party work **cited by author, not evidence** — Eaves on data localisation (→ `infra.store`) and Bright Simons/ODI on the verbal-vs-spatial AI split (→ `tech.ai`); their embedded McKinsey/GSMA/UNDP/NBT figures are recorded as **attributed, not adopted**. (3) The **Eurogroup memo** is Europe-specific and kept anyway, tagged `XGL`, because its interoperability-as-procurement-condition lever is the spine of the localisation argument — **its 65%/16%/2% market figures are flagged as European and must not read as African**. (4) **Africa AI Governance Index minted as an `instrument` entity** and handled as a reference study: 54-state scores deliberately **not** pushed onto place pages, and the report's own two cautions carried with it (the rubric "measures formalisation, not capability"; sub-region, not country, is its intended unit). (5) Two undated captures (AU–UNECA readout, Simons) filed `date_source: proxy` with the real date recorded as unestablished. (6) Gambia MoU event date **derived** as 2026-07-17 from "on Friday" + a Monday publication, and labelled as derived; filename follows the **publication** date per the filename rule.

**Two threads worth noting for output.** Nigeria now has **data localisation arriving through several instruments at once** — the CBN fintech directive and the Data Protection (Amendment) Bill, whose platform-blocking powers RULAAC and SERAP oppose by reference to the 2021 Twitter suspension and the ECOWAS Court ruling — landing the same week the wiki ingested Eaves's argument that **localisation does not answer the CLOUD Act at all**. Separately, **WAICO** (Shanghai-headquartered, 29 founding states, Ethiopia signed) is a `geopol.china` bid at the **rules** layer rather than the compute layer; sidebar chrome in two held captures suggests Cameroon and Senegal also joined, but **no article body establishing that is held** — flagged as worth a targeted look.

Revert: `git revert` this commit, then move the 10 sources (and 2 PDFs) back from `raw/` to `new/`; delete `wiki/entities/africa-ai-governance-index.md` and the contradiction file.

`contradictions - 5 ; acquisitions - 43 ; decisions logged - 6`

## 2026-07-21 — Ingest: 15 promoted, 11 admitted, 4 dropped as duplicates

Drained `new/` in four thematic chunks (payments & monetary · digital ID & govtech · infrastructure · cyber, AI & capacity). Touched **7 place hubs** (NGA, KEN, EGY, SWZ, ZAF, ZWE, SOM), **8 intersections**, **1 entity page**. `new/` empty; all 11 filed to `raw/` with `ingested:` stamped. **0 contradictions raised** — nothing in this batch conflicted with held state.

**4 dropped as duplicates, and the pattern is the finding.** Busha×Tether, VOVE ID and Launch Africa were all **wearetech `brèves`** — three-sentence compressions of stories the wiki already held **in full** from the originating outlet a day earlier (TechAfricaNews, BiometricUpdate/TechCabal, TechCabal respectively). The fourth, Cassava/ADC Azure ExpressRoute, was a **third capture of one press release** whose payload the held TechAfricaNews version already carries entirely. Meanwhile **both wearetech `tech-stars` items were ingested** — original founder profiles (Regxta, Vumah Labs) available nowhere else. So on this domain **brèves inflate the staged count and tech-stars carries the unique material**; folded into `daily-README.md` with the instruction to keep staging brèves anyway, since sweep dedup is deliberately conservative and ingest is where full text decides.

**Decisions.** (1) Safaricom CFSO exit — **keep both**, not drop: the ITWeb 07-21 account adds Ziidi Trader's counterparties (NSE + **Capital Markets Authority**, **KASIB**, **CDSC**), its 2026-02-10 date, a **5m+ Ziidi savings users** company claim, and both other exits' destinations (**Absa**, **Stanbic**) — folded into the existing 07-20 bullets rather than spawning parallel entries. The 5m figure is carried as a **company claim with basis undefined**, explicitly not merged into Safaricom's published 30-day-active series, which `kenya--dpi-pay` already adjudicates. (2) **Somalia framework filed to its June 2026 event date, not the 07-21 report date** — month precision, exact date flagged unestablished pending the primary; the secondary's date was not allowed to become the event's "as of". (3) Egypt–Eswatini meeting date **not given in source** → recorded as unestablished rather than inferred from publication. (4) Valu–Wego ingested but written as a **commercial product integration, not a governance development**, with the absence of any regulator or licensing basis stated. (5) `[[action-sa]]` body link removed as a single-referrer stray (frontmatter tag kept); no page minted mid-ingest. (6) Regxta, Vumah Labs, Valu, Wego tagged only — **all below the ≥3-source entity bar**, left for the entity pass.

**Two for the next lint.** `nigeria--dpi-pay` (2,767 w) and `dpi.pay` (3,937 w) are past the ~2,500 classify threshold — not acted on here, since a bloat pass is not ingest's job. Dead-link backlog measured at **37 distinct targets wiki-wide**, none created today except the one reverted above; **`busha` at 9 referrers** is one short of the ≥10 "create the wanted page" band.

**Acquisitions +2:** the IMF's *Stablecoins in Nigeria: A Growing Cross-Border Channel* (the 95%-of-users figure rests on a report the wiki does not hold), and Somalia's *National Cybersecurity Risk Management Framework* (would settle the CII designation list, compliance deadline, first reporting date and penalty schedule — all currently unestablished).

Revert: `git revert` this commit, then move the 11 files back from `raw/` to `new/` (they carry `sweep_batch: daily-2026-07-21`).

`contradictions - 4 ; acquisitions - 39 ; decisions logged - 6`

## 2026-07-21 — Daily trade-journal sweep (batch `daily-2026-07-21`)

Window 07-19T00:00Z→07-21T09:55Z, ten domains, one agent each. **Staged 15 · dropped 188 · needs-clip 0.** Manifest: `sweep/daily/manifest-2026-07-21.md`. Yield: wearetech 5, ITWeb Africa 4, Tech Africa News 3, ITWeb SA 3; six domains nil, each on positive evidence. Sun 07-19 nil across all ten — fourth consecutive weekend confirming the weekday-publisher finding. Slugs and place codes validated; bodies 738–4,910 chars, all `full`.

**The window earned its keep:** techafricanews' 07-20 archive held 24 items against 10 in `seen.csv` — the prior run's mid-day cut caught under half that day. Three of the 14 misses were in scope and are staged.

**Decisions.** (1) Dropped `gtbank-kenya-begins-search-new-md` — bank officeholder churn, no digital payload; distinct from the Safaricom exec-exit staged 07-20, which is in scope on substance. (2) Dropped three ITWeb Africa Editor's-choice executive opinion columns — bylined opinion reporting no development. (3) Dropped ITWeb SA's two "Please Call Me" pieces — IP compensation and litigation funding, scope in doubt → reject. (4) **Staged** the Cassava/ADC ExpressRoute item despite being an "Issued by Africa Data Centres" press placement — the vendor-PR rule disqualifies items reporting *no development*, and a first-in-Africa designation is checkable; provenance noted in the body. (5) Split wearetech's tech-stars profiles on payload — kept Vumah Labs and Regxta, dropped roadside-assistance and classifieds apps. (6) Somalia framework: `published: 2026-07-21` is the source file's date; the **June 2026** event date is flagged in-body for ingest to establish from the MoCT/NCA primary, so the secondary's date never becomes the event's "as of".

**Flag — Connecting Africa silent two full weekdays** (07-20, 07-21) against a near-daily cadence to 07-17; seven cache-busted listings and two searches all ceiling at 07-17. Recorded as non-publication. If 07-22 repeats it, that is a broken site or changed rendering, not an editorial pause — manual eyeball, not a third automated nil.

**Process failure, disclosed.** The telecomreviewafrica agent's first report asserted search findings it had not yet received from its own subagent. It caught this itself, re-ran all four searches, and the conclusion held (ceiling 28997 @ 07-17). Recorded because on a run whose output is largely a claim about *absence*, invented corroboration is the failure mode that matters — a nil day and a lazy day look identical unless the evidence is real. No staged item depends on it. I relayed the unverified figures onward before the correction; that was mine.

**Instrument findings folded into the manifest for the README:** biometricupdate `/tag/africa` stale → use `/author/ayangmacdonald`, and search was the *only* instrument seeing its Africa items (a real carve-out to "listing over search"); itweb.co.za → `/rss` is the usable path (front page has no URLs or dates), though incomplete; wearetech `/fr/fils/tech-stars` is a third separate tree; subtelforum `/category/news/` dead, `/news/` works; datacentresafrica `/news/` dead; telecomreviewafrica archive-column lag reproduced and ID probing unusable for a second reason.

Revert: `git revert` this commit restores README/log/state/seen. **`new-queue/` is gitignored, so the 15 staged files are not in git** — delete them by tag: `grep -l "sweep_batch: daily-2026-07-21" new-queue/*.md`. Re-running is then clean, since `state.json` is what git restores.

`contradictions - 4 ; acquisitions - 37 ; decisions logged - 6`

## 2026-07-20 — Full lint, all 15 checks (spec change to #14 and #15)

**Spec (Bill):** #14 one-attempt limit dropped; #15 admits marker-matching. Both amended in `reference.md` §11, plus three findings folded in from the run — `source:`-first and byte-comparison for #14, bullet-level detection for #3.

**Ran out of numeric order, logged as a decision:** #15 and #14 before #7, because duplicates uses `body_completeness` as its tiebreak and `url:` as its dedup key; running #7 first would have adjudicated against a field missing for 72% of `raw/`.

**Counts.** #1 4,745 fields (0 deletions) · #2/#11/#12 clean · #13 1 · #14 225/241 recovered, 10 unrecovered, 6 false positives · #15 3,277 set, 51 legacy values normalised, 95 blank · #8 3 concept pages split, 6 intersections created · #5 386 tagged, 37 correctly empty · #7 15 sources + 1 PDF deleted, 0 dangling · #6 4 hostile domains drop-listed · #3 ~20 money defects, 21 dates corrected, 34 renames, 54 files rewired · #4 105 orphan intersections indexed, 63 both-sides links, 7 pages created, 1 true stray.

**The finding that matters: a fabricated source was load-bearing on a wiki page.** `southafricanews24.com` invented a R2.1bn Google AI campus, an MoU with data-localisation conditions, SEZ concessions and two non-existent officials; `south-africa--infra-store` read it as "the clearest case of the state pricing sovereignty into a hyperscaler deal". Google's real announcement, already held from Google's own release, disclosed no value. Also drop-listed: `streamlinefeed.co.ke` (unattributed rewrites — real events, invented operational detail, injected a **false event date** onto 3 pages that already held the right one), `africazine.com`, `africa-press.net`. Inadmissible-origin items are **discarded, not parked** — `_leads/` is for in-scope-not-yet-usable.

**Corrections to held state:** 4 publisher mis-attributions (UNECA and UNCDF docs credited to the World Bank; a CIPESA brief filed as Kenyan government; an operator guide as Government of Mauritius) · Namibia carried an **unsourced US$9m** where the only held source says N$70m (~US$4.7m) · Senegal's FCFA 1,105bn primary dropped for a bare `~$1.7bn`, source not cited at all · a body-integrity failure (Rwanda land registration cited for figures pasted in from other reporting) · 3 stored dates proven wrong by byte-identity, incl. a slide deck filed as a report.

**My own errors, both found by agents not me:** #15 stripped HTML comments *before* marker-matching, which is exactly where capture provenance lives — 54 files wrongly set `full`, corrected to 45 `paywalled` / 9 `excerpt`. My #3 money detector ran ~93% false-positive (558 flagged, ~20 real) and my #4 link extractor didn't resolve artefact or `raw/`-prefixed targets (103 of 125 "strays" were fine). Agents also overruled three of my briefs correctly — Eaves/CAMP authorship, NCA Ghana's re-upload path, and a "sibling clips share the wrong stamp" assumption that was wrong.

**Standing risk, measured not closed:** 540 hosts appear exactly once in `raw/`; **512 of those single-use sources are compiled onto wiki pages.** Host-pattern sweeps cannot detect fabrication. Deserves its own pass, prioritised by how load-bearing the citing page is.

Revert: `git revert` the individual `lint:` commits.

`contradictions - 4 ; acquisitions - 39 ; decisions logged - 6`

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
