# Operation log

Append-only. Newest entries at the top. Records every ingest, the pages touched,
contradictions found, and open `needs-review` flags.

---

## 2026-07-14 — Reversal: Nigeria RIA/CIS digital-ID study deleted (stale — curator directive)

Curator flagged the **"Digital Identity in Nigeria" (RIA/CIS, Okunoye)** PDF as too stale to keep
(its content dates to **2020–2021**; superseded by NIN 130M+, the NIMC Act 2026 and the NDPA 2023).
Reversing item 3 of the midday batch in full:
- **Deleted:** the artefact `raw/2021-01-01 Digital Identity in Nigeria (RIA-CIS case study).pdf`;
  the instrument entity `digital-identity-in-nigeria-ria-cis-2021`; and `centre-for-internet-and-society`
  (created only to support that study — no other wiki presence, so removed rather than left orphaned).
- **References cleaned:** the "Background reference (historical)" block + links on `nigeria--dpi-id`;
  the pointer on the `dpi.id` Nigeria line; both rows in `entities-index` (instrument + CIS org).
- **Unaffected:** the other three midday-batch items stand. `nigeria--dpi-id` current-state content
  was never fed by the study, so nothing there needed re-sourcing.

## 2026-07-14 — Midday batch: 4 pieces ingested (2 sources + 2 reference PDFs)

**Intake:** billed as "3 new pieces"; a **4th arrived mid-run** (`south_africa_tax_reform.pdf`,
the GSMA report itself) — 2 markdown clips + 2 PDFs (`1783880870767.pdf` untitled; the GSMA report).

**Admitted (3):**
1. **São Tomé & Príncipe — national AUDPF adoption** (D4D Hub LinkedIn post; first-hand
   organisational announcement of its own 9–10 Jul 2026 data-governance workshop). Filed
   `2026-07-13 D4D Hub on Sao Tome and Principe`. **New place page `STP`** (São Tomé, XWA per
   countries.csv — the wiki's first STP page, `status: stub`); new entities `d4d-hub`,
   `auda-nepad`, `kictanet`; updated `au-data-policy-framework` (national-adoption example),
   `giz`, `gov.protect`. `date_source: proxy` (post date inferred from "1 day ago").
2. **SA smartphone luxury-tax removal** (Sowetan op-ed **by Minister Solly Malatsi** — on-the-record
   ministerial commentary). Filed `2026-07-10 SOLLY MALATSI  Removing smartphone tax means access
   to opportunity`. Updated `solly-malatsi`, `dcdt-south-africa`, `ZAF`, `include.access`,
   `include.divides`. New **stub instrument** `gsma-sa-smartphone-tax-reform-2026` — the report the
   op-ed cites — **primary now held** (item 4 below).
   - **[item 4] GSMA report — the primary itself** (`south_africa_tax_reform.pdf`, arrived mid-run).
   Renamed to `2026-07-01 GSMA Accelerating Smartphone Adoption Through Tax Reform - Evidence from
   South Africa.pdf` (`date_precision: month`, `proxy` — "recently published," data through Feb 2026).
   Upgraded `gsma-sa-smartphone-tax-reform-2026` **stub→active** with precise figures — reform
   **effective 1 April 2025** (sub-R2,500, ~USD 150); entry-level unit growth **−7.9%→+6.2%**;
   entry-level **+80%** / feature-phone **−87%** (Mar 2025→Feb 2026); market value **+15%
   (R2.7bn→R3.1bn/mo)**. Corrected the citing pages (`ZAF`, `include.access`) to cite the primary
   and add the effective date; the op-ed's rounder "+1.1m/11 months" kept as the minister's framing.
3. **Digital Identity in Nigeria (RIA/CIS case study, Okunoye, ~2021)** — the untitled PDF turned out
   to be a rights-based digital-ID evaluation (one of a ten-country RIA/CIS study; Omidyar-funded).
   **PDF renamed + kept in `raw/`** as `2021-01-01 Digital Identity in Nigeria (RIA-CIS case study).pdf`
   (`date_precision: year`, `date_source: proxy` — no explicit pub date; content places it late-2021).
   New instrument entity + new `centre-for-internet-and-society` entity; light background reference
   added to `nigeria--dpi-id` and `dpi.id`. **Per standing practice, its 2020–21 figures were NOT
   promoted** into the live Nigeria ID pages (superseded by NIN 130M+, NIMC Act 2026, NDPA 2023).

**Mechanical maintenance (aggregate):** 2 source pages framed + prefixed; 1 binary artefact
renamed with date prefix; `last_reviewed` bumped on all touched pages; 6 new entities added to
entities-index; places-index (+STP row) and topics-index (gov.protect +STP) updated.

**Editorial actions (itemised):**
- Created `STP` place page (new country hub, stub).
- Captured the untitled PDF as a **reference instrument**, not a live source; deliberately withheld
  its dated figures from concept/place pages (reference-study discipline).
- Captured the GSMA tax-reform report as a **stub instrument** rather than hardening its op-ed-quoted
  figures.

**Held for review:** GAP-002 was raised **and resolved within the same batch** — the primary GSMA
report arrived mid-run, so the instrument was upgraded and GAP-002 closed (removed from `_review.md`,
resolution recorded here). No open gaps added; no contradictions.

**Resolution — GAP-002 (GSMA SA smartphone-tax report):** primary now held
(`2026-07-01 GSMA Accelerating Smartphone Adoption Through Tax Reform - Evidence from South Africa.pdf`);
instrument `gsma-sa-smartphone-tax-reform-2026` upgraded stub→active; op-ed figures reconciled against
the report (report leads on precision).

**Flags (for the digest):**
- Three **proxy/low-precision dates**: STP D4D post (`proxy`, day), Nigeria PDF (`proxy`, **year**),
  GSMA report (`proxy`, **month**).
- The GSMA report's figures differ slightly in framing from the minister's op-ed (report: growth-rate
  −7.9%→+6.2% and +80%/−87% substitution; op-ed: rounder "+1.1m units, 250k→460k") — reconciled on the
  instrument page, report preferred.

## 2026-07-14 — Morning batch: 8 clippings triaged → 6 sources ingested, 1 duplicate discarded

**Intake:** 8 items in `new/`, all clipped 2026-07-14 (publication dates 2026-07-13).

**Admitted sources (6, all filed to `raw/` with published-date prefix `2026-07-13`):**
1. **Malawi digital ID** — two outlets, same period, deduped into one treatment (not parallel
   pages): Biometric Update (13.5m IDs; ~99% of 16+; UNDP) + CAJ News (mobile-ID transition;
   National Registration Act review; DMAP). New entity `national-registration-bureau-malawi`
   (promoted from "mentioned"); new intersection **`malawi--dpi-id`** (materiality: 2 sources,
   near-universal-coverage milestone + mobile transition + rich surrounding context). Updated
   `MWI`, `dpi.id` (added MWI to Extracted list + places), indexes.
2. **Rwanda eKash full interoperability** (Africazine) — *update* to the Dec-2025 eKash launch,
   not a new event: interoperability effective 2026-07-14 under BNR Directive 45/2026 (RWF 20 fee
   cap, RWF 10m limit). Updated `ekash`, `national-bank-of-rwanda`, `RWA`, `dpi.pay`. Prior "as
   of" launch statement kept.
3. **EBRD €270m to Yas (Kenya/Senegal)** (TechTrends KE) — new deal. New entities `yas`,
   `ebrd-yas-network-loan` (deal), `ilx-fund`; updated `ebrd`, `axian-telecom` (Yas = AXIAN's
   operating brand), `KEN`, `SEN`, `finance.new`, `infra.connect`.
4. **Djibouti WSIS-2026 ITU/Smart Africa push** (We Are Tech) — new entities `eardip`,
   `vision-djibouti-2035`; substantially enriched the `DJI` stub (topics +tech.ai/gov.policy/
   gov.regional/include.divides); updated `itu`, `smart-africa`, `tech.ai`.
5. **SA — Malatsi "digital-first must not become digital-only"** (ITWeb) — new entities
   `solly-malatsi` (person), `dcdt-south-africa` (gov-body), both promoted from "mentioned";
   updated `ZAF`, `mymzansi`, `include.divides` (strong analytical fit — the "democratic divide").
6. **CAIMSA Africa AI data-centre vision** (IPP Media, TZA) — new entity `caimsa`
   (`status: stub`). Aspirational announcement, no timeline/partners/location/funding — captured
   as an entity profile (pan-African, `XAF`), not treated as a built development.

**Discarded (1):**
- **Liberia Expands Digital Finance** — duplicate re-clip of `2026-07-13 Liberia Expands Digital
  Finance` already in `raw/` and fully processed on 2026-07-13 (LBR/pay-na-na/dpi.pay all current).
  Deleted the `new/` copy; no re-processing.

**Mechanical maintenance (aggregate):** 6 source pages framed + prefixed; `last_reviewed` bumped
on all touched pages; 9 new entities added to entities-index; topics-index (dpi.id +MWI, tech.ai
+DJI) and places-index (DJI, MWI rows) updated; one MWI apostrophe/link typo self-corrected.

**Editorial actions (itemised):**
- Created intersection `malawi--dpi-id` (Malawi's ID story crossed the substantiality bar).
- Deduped the two Malawi ID sources into one treatment rather than spawning parallel pages.
- Treated Rwanda eKash as an *update*, preserving the dated Dec-2025 launch statement.

**Flags (for the digest):**
- **Low-authority provenance, flagged in-page (not `_review`):** Rwanda eKash source is a news
  aggregator (Africazine) paraphrasing an apparent BNR notice — fee/limit and Directive 45/2026
  should be verified against the BNR directive (noted on `ekash`, `national-bank-of-rwanda`, `RWA`).
  CAIMSA is a bare vision announcement (`caimsa` marked `stub`; base country unconfirmed).
- **Not a contradiction:** the "€270m" headline vs "€170m committed" reconciles as €170m committed
  + €100m uncommitted — stated precisely on `ebrd-yas-network-loan`, no `_review` item raised.

**Contradictions:** none. **Gaps:** none high-confidence/structural. `_review.md` unchanged.

## 2026-07-13 — `_review.md` resolution: REV-001 closed (curator directive)

**Curator directive:** treat as authoritative from currently available sources — **49 countries
signed the Africa AI Declaration** and, **as of end-2025, 44 countries have data-protection laws**;
other claims are qualified against these.

- **(a) Signatories = 49**, per the primary Declaration document
  ([[2025-04-04 Africa Declaration on Artificial Intelligence]]): 49 countries + AU + Smart Africa.
  Nagadya's 49 confirmed; Munyua/Adebowale's 54 and African Law & Business's 52 marked high.
- **(b) Data-protection laws = 44 (end-2025)**, per two independent trackers (Digital Policy Alert ×
  Tech Hive Advisory; Code for Africa). Adebowale's 44 confirmed; Mbaya's second-hand 36 treated as
  an earlier/narrower count.
- **Other claims qualified against these:** [[au-continental-ai-strategy]] (the "recorded, not
  reconciled" bullet rewritten as resolved-to-49) and [[alice-munyua]] (54 marked high vs the primary
  49). [[africa-ai-declaration]] and [[gov.protect]] already carry the authoritative figures from the
  ingest above. No synthesis page asserted "36", so none needed changing.
- **REV-001 removed from `_review.md`.**

---

## 2026-07-13 — Ingest: Africa AI Declaration primary + 2025 data-protection roundups (REV-001 evidence)

Drained `new/` (4 items) in preparation for a REV-001 response.

**Sources admitted (4):**
- `2025-04-04 Africa Declaration on Artificial Intelligence` — **PRIMARY** bilingual declaration PDF +
  companion source page. Signatory block = **49 countries + AU + Smart Africa** (absent: DR Congo,
  Eritrea, Libya, Seychelles, Tanzania, Western Sahara). PDF date-prefixed to its 2025-04-04 signing.
- `2025-05-13 Optimism but uncertainty over Africa's AI Declaration` (African Law & Business) — reports
  52 signatories ("only Tanzania + W. Sahara absent"), high vs the primary.
- `2026-01-11 The Year of the Teeth Data Protection in Africa Roundup` (Digital Policy Alert × Tech Hive
  Advisory) — end-2025: ≥44 laws, ≥38 operational DPAs, 11 yet to legislate; >50 projected by end-2026.
- `2026-05-05 Africa's data protection laws began to bite in 2025` (Code for Africa) — corroborates 44/38.
  (Both DP pieces cite primaries throughout → admissible reference reports, not AI syntheses.)

**Entities created (3):** [[digital-policy-alert]] (resource), [[tech-hive-advisory]] (organisation),
[[code-for-africa]] (organisation).

**Pages updated:** [[africa-ai-declaration]] (discrepancy → primary-settled 49; +3 sources);
[[gov.protect]] (new continental-count bullet: 44 laws/38 DPAs end-2025; +2 sources, +3 entities);
[[tech.ai]] (declaration primary + AI-law trajectory bullet; +2 sources); [[XAF]] (two Recent-developments
entries); `entities-index` (+3 rows).

**Bearing on REV-001 (held open for the human's response):** (a) signatory count **settled at 49** by the
primary; (b) DP-law count **corroborated at 44** by two trackers vs Mbaya's "36". Both annotated in
`_review.md`, ready to close.

**Contradiction check:** the roundup's "USD 1.6bn" Kenya–US Health Cooperation Framework vs the wiki's
~$2.5bn is **whole-vs-part, not a conflict** (Carnegie holds both: $2.5bn total, $1.6bn for health
programs). No REV item minted.

**Gap flagged:** GAP-001 — NADPA (Network of African DPAs) referenced but has no entity page.

---

## 2026-07-13 — `_review.md` reprocessed against feedback-loop guidance (corrected)

**Supersedes the earlier same-day stub attempt.** The revised CLAUDE.md (steps 7–8; Autonomy;
Querying) makes a contradiction carry a **paste-ready, wiki-agnostic external-research brief** *in
`_review.md`* — for the human to run in their own tool — **not** a wiki query file. Corrected
accordingly:

- **Deleted** the six `queries/pending/q-2026-07-13-rev-00*` stubs created earlier today (a
  misreading of the prior draft). `queries/` is read-the-base only; the workspace itself stays.
- **Rewrote `_review.md`** to the two-type model (contradiction, gap; gaps none open). Each of
  REV-001…006 now has a wiki-agnostic brief: claim in dispute, competing values, who asserts each,
  and **only the source URLs held on file** (pulled from source-page frontmatter) — no primaries
  suggested from own knowledge.
- **Provenance gaps surfaced honestly** where a competing value has no clean URL on file:
  REV-001 "36" is second-hand (Mabuza inside Mbaya, no Mabuza page); REV-002 counter-narrative has
  no single source, and the −53% is a Vanguard write-up not the CBN report; REV-003 $3.8bn is
  unattributed across three sources, and the "1998 Econet" date cites a Guardian piece not on file;
  REV-004 Channel Africa/Reuters has only a publisher-homepage URL; REV-005 single secondary source,
  no primary gazette.

No page facts changed; no contradiction resolved. Editorial-tier (digest) action.

---

## 2026-07-13 — Scaffolding: `queries/` workspace created

Created the read-side query workspace per the new Querying architecture:
`queries/pending/`, `queries/done/`, `queries/results/` (each with a `.gitkeep`).
This is the store for saved queries and for the contradiction rule's
resolution-query stubs. Sits outside the ingest pipeline — read-only, never feeds
`raw/`. Silent-tier maintenance.

---

## 2026-07-13 — `_review.md` resolution: Section B (self-citations) cleared

**Curator directive:** treat the author's own *published* work (data-landscapers.com) **as if by an
expert third party** — same standing as any named analyst — with his framing, biases and opinions
free to influence the wiki's synthesis wherever relevant. The 10 self-citation instances held in
`_review.md` Section B (REV-007…016) are therefore **removed / not held**. Only ordinary analytical
hygiene remains, as for any analyst: plain attribution, and no using a piece to corroborate a claim
drawn from that same piece. His *unpublished* / AI-generated assets
([[data-landscapers-cable-factsheet]]) stay do-not-cite on their own pages — outside this directive.
`_review.md` now holds only Section A (contradictions, REV-001…006). **CLAUDE.md updated to match**
(same session): Source admissibility → "The author's own work" rewritten (expert-third-party
treatment; framing/opinions may shape synthesis; only ordinary hygiene applies), the Autonomy
"Hold for the publication pass" tier no longer holds self-citations, and the Invariants list
reframed to "no circular self-corroboration" (applies to any analyst).

---

## 2026-07-13 — Ingest: 6 key instruments (AU + SADC frameworks, PDFs)

Six policy-framework **instruments** as PDF artefacts. Each handled per the binary-artefact rule:
PDF date-prefixed into `raw/` + a **companion `.md` source page** carrying the frontmatter/tags and
linking the artefact (the MOSIP-report pattern). Published dates read from each document's own
title page (2 are ~13 MB — front matter only, per the reference-study rule: capture as reference
entities, don't push their figures into concept/place pages). `new/` drained; source artefacts
+companions 520 → 532.

- **[[africa-digital-compact]]** — AU Commission, **Jul 2024** (Africa's input to the UN Global
  Digital Compact). **new instrument.**
- **[[au-continental-ai-strategy]]** — AU, **Jul 2024**. *existing* entity → primary document now
  held (previously only secondary citations).
- **[[au-data-policy-framework]]** — AU, **Feb 2022**. *existing* → primary document now held.
- **[[au-digital-transformation-strategy]]** — AU, **2020–2030**. *existing* → primary held.
- **[[sadc-digital-transformation-strategy]]** — SADC, draft, **12 Oct 2022**. **new instrument.**
- **[[sadc-ridmp]]** — SADC Regional Infrastructure Development Master Plan exec summary, **Aug
  2012**. **new instrument.**

**Entities:** 4 new ([[sadc]] organisation + the 3 new instruments); 3 existing AU instruments
enriched with their primary documents. Added to entities-index (instruments + organisations).
**Not** pushed into place hubs (old frameworks, not "recent developments"; the entities +
entities-index are the home — per the reference-study rule).

**Dead-link triage:** `global-digital-compact` (1 referrer, no page) unlinked to plain text
rather than minting a thin global stub (per the stray-link rule); `[[dbsa]]` already exists.

**Currency note:** dates are `date_precision: month` (5) / `day` (1, the SADC-DTS 12-Oct-2022 ref);
all `date_source: source`. **Contradictions:** none. **needs-review:** none.

---

## 2026-07-13 — Ingest: 5 sources (first MarkSnip batch)

First intake via the **MarkSnip** web clipper (replacing Obsidian Web Clipper). Frontmatter differs
— `source:`→`url:`, `author:`(publication or byline), plus `page:`/`keywords:` (dropped); no `type`
or facet tags. Mapped each to the source schema on ingest and set `published`/`date_precision`/
`date_source` actively. `new/` drained to empty; source pages **515 → 520**.

**Publish-date handling:** four dated from source (2× 2026-07-13, 2× 2026-07-12 — the two 07-12
files re-prefixed from the 07-13 clip date). One — **TeKnowledge/Equinix** (Nigerian Pilot, undated
article, "joint statement released on Thursday") — has no findable publication date → `published:
2026-07-13` with **`date_source: proxy`**.

**Sources & routing:**
- **Liberia Expands Digital Finance** (LBR, dpi.pay) → new initiative **[[pay-na-na]]** (Inclusive
  Instant Payment System); [[LBR]] hub + dpi.pay LBR one-liner.
- **Agric Ministry adopts NIMC for farmer verification** (NGA, dpi.id) → *update*: [[nimc]] +
  [[nigeria--dpi-id]] (sectoral NIN use for a farmers database); [[NGA]] hub.
- **'How Nigeria… secure undersea cables'** (Guardian; XAF/XSS/NGA, infra.connect) → *update*, not
  new: the ITU–ICPC **Advisory Body's final report** (already tracked in [[infra.connect]] since
  Nov-2024). Updated [[infra.connect]] + [[international-cable-protection-committee]] + [[XAF]] hub.
- **Algiers Declaration: Africa's OTT Platform Rules** (AlgeriaTech analysis, cites APS/Ecofin
  primaries; DZA/XAF) → new **instrument** [[algiers-declaration]] (ATU, adopted 6–8 Dec 2025);
  [[african-telecommunications-union]] + [[XAF]]/[[DZA]] hubs. Tagged analysis.
- **TeKnowledge–Equinix partnership** (NGA/XWA, infra.store) → new **deal**
  [[teknowledge-equinix-partnership]]; [[teknowledge]] + [[equinix]] + [[NGA]] hub.

**3 new entities** (pay-na-na, algiers-declaration, teknowledge-equinix-partnership); **5 existing
updated** (nimc, ICPC, teknowledge, equinix, ATU). Indexes updated (entities/places/topics).
`last_reviewed` 2026-07-13 on touched pages.

**Contradictions:** none new. **needs-review:** none new (TeKnowledge date is a flagged `proxy`, not
a contradiction).

---

## 2026-07-13 — Matrix extraction: `infra.connect`, `tech.ai`, `dpi.pay` (no ingest)

Applied the Page-hygiene matrix-extraction rule to the three remaining over-length concepts.
Same materiality bar (≥120w OR ≥2 sources OR ≥3 distinct developments) and source-link invariant
(every original source preserved across concept + its intersections, verified before/after).

Key finding: the three differ sharply in how matrix-shaped they are.

- **`infra.connect` 5,047 → 4,208w** — *mostly thematic* (submarine-cable political economy,
  satellite/LEO, operator financing, the regulator/operator shift don't decompose). Kept 21
  thematic bullets. Extracted **[[namibia--infra-connect]]** (new) and folded ZAF (state-backbone
  drift + MTN R21.8bn) into **[[south-africa--infra-connect]]**; one-lined 13 country cells.
  Modest reduction is correct — this is the "dense thematic synthesis, allowed to be long" case.
  Invariant 64/64.
- **`tech.ai` 4,822 → 4,256w** — *mostly thematic* (the sovereignty debate, partnership scramble,
  algorithmic-colonialism, governance seats). Kept 25 thematic bullets. Extracted
  **[[rwanda--tech-ai]]** (Anthropic-as-govt-infra + Horizon1000) and **[[south-africa--tech-ai]]**
  (sovereign-AI-as-compliance + inclusion) new; folded KEN (middle-power partnerships + Sama
  labour) into **[[kenya--tech-ai]]**; one-lined NGA, ETH, GHA, MWI. Invariant 62/62.
- **`dpi.pay` 4,174 → 2,749w** — *genuinely matrix* (national payment systems). Kept 14 thematic
  bullets. Extracted **7 new pages**: [[ethiopia--dpi-pay]], [[south-africa--dpi-pay]],
  [[nigeria--dpi-pay]], [[drc--dpi-pay]] (carries the needs-review stablecoin caveat),
  [[somalia--dpi-pay]], [[zambia--dpi-pay]], [[ghana--dpi-pay]]; one-lined KEN, MUS, SSD, MOZ.
  Invariant 55/56 — the one prune, `2026-06-11 …RDC-PASS`, is a digital-ID source (7 referrers,
  properly homed in `dpi.id`); it and four other dangling frontmatter-only double-tags (DZAP,
  MTN-all-in, Vodacom, $240bn-mobile-economy) were pruned/re-homed to a sector-context citation —
  no data lost (all well-referenced elsewhere).

**10 new intersections + 3 fold-ins**, all wired from concept ("## By place" index) and place hub
("Full case:"); added to topics-index. RWA/KEN/GHA/XWA-style borderline calls confirmed by human
("keep all four" applied to the earlier dpi.id set; "proceed" to this plan). Frontmatter
regenerated from each new body; no triple-bracket errors; 0 new dead links (7 pre-existing
`log.md` footnote artefacts unchanged). `last_reviewed` 2026-07-13 on all touched pages. Pre-lint
`wiki/` backup retained in session scratchpad.

**Contradictions:** none new (the DRC stablecoin needs-review flag carried onto [[drc--dpi-pay]]).

---

## 2026-07-13 — Matrix extraction: `dpi.id` → 9 place intersections (no ingest)

Applied the updated Page-hygiene "matrix extraction" rule to `dpi.id` (was 5,344w — a concept +
~30 country cells wearing one filename). Materiality bar: extract a `{place}--dpi.id` intersection
only for cells clearing **≥120 words OR ≥2 sources OR ≥3 distinct developments**; sub-threshold cells
stay as one-line index entries.

**Result: `dpi.id` 5,344 → ~2,040 words.** Now an index — 11 continental/thematic bullets kept
(MOSIP model, AfCFTA annex, interoperability-governance, UNDP framing, OpenCRVS, Kariuki
payments-maturity, etc.) + a "## By place" section (9 links out, 12 one-liners).

**9 material cells extracted:**
- **5 new pages:** [[benin--dpi-id]] (230w/7src), [[rwanda--dpi-id]] (113w/1src, cleared on ≥3
  points), [[ghana--dpi-id]] (166w/3src), [[kenya--dpi-id]] (119w/2src), [[xwa--dpi-id]] (regional
  cell — WURI integration vs AES/Sahel secession, 199w/2src).
- **4 fold-ins to existing pages** (verified each concept development was already present or added it
  + its sources — nothing dropped): [[south-africa--dpi-id]] (+3 devs: SARS single-ID engine,
  grassroots opposition, bank-branch Smart ID + ETA; +4 src), [[nigeria--dpi-id]] (+3: NIN
  suspensions, Niger-State gender gap, gatekeeper critique; +3 src), [[ethiopia--dpi-id]] (+2:
  DIAL self-assessment, pre-Fayda gap; +3 src), [[zambia--dpi-id]] (+1: MOSIP integrator hunt;
  +2 src).

RWA/KEN/GHA/XWA were the four borderline calls — human confirmed all four extract.

**12 sub-threshold one-liners** kept on the concept (each ≤85w, single-source): MAR, MOZ, TZA, UGA,
SLE, COD, CIV, MDG, SDN, LSO, GMB, TGO — no thin stub pages minted for these.

**Invariant verified:** all **58** of the concept's original source links still present across
`dpi.id` + its 9 intersections (0 lost). Concept frontmatter `places`/`entities`/`sources`
regenerated from the new body. 3 minor entity links dropped from compressed one-liners
(`la-poste-cote-divoire`, `mg-ministry-digital-development`, `sierra-leone-digital-id-mou`) — all
still referenced elsewhere (not orphaned). New intersections wired from concept + place hub; added
to topics-index and places-index. `last_reviewed` 2026-07-13 on all touched pages.

**Contradictions:** none.

---

## 2026-07-13 — Full lint + fixes (no ingest)

Ran all 11 lint checks over the corpus (515 sources, 444 entities, 36 concepts, 55 places,
12 intersections) and applied fixes. No new sources; `new/` empty throughout.

**Clean on:** vocabulary (0 off-taxonomy tags), freshness (0 `last_reviewed` >90d), untagged
sources (0), stranded queue (0), duplicate pages (0), inadmissible origins (0 by publisher/url
heuristic). Note: the "missing date prefix" check is a **non-issue** — the corpus uses
`YYYY-MM-DD <space>` prefixes (not hyphen); all 515 sources + PDFs are correctly prefixed.

**Fixed:**
- **Schema (3).** Empty `published:` on the 2026-07-12 proxy-dated intake files (BRICS portal,
  DPI Map Codebook, DPI Map Methodology) → set to `2026-07-12` (`date_source: proxy` retained).
- **Dead links (24 across 14 pages).** Seven sources were linked by bare title without their
  `YYYY-MM-DD ` filename prefix, so they didn't resolve (files existed). Added prefixes:
  *Promise and Limits of African Data Sovereignty* (→2026-06-08), *Kenya Technology Prosperity
  Deal* (→2026-06-23), *How AI Keeps Europe Hooked on US Cloud* (→2026-06-29), the two EU
  Tech-Sovereignty-Package pieces (→2026-06-03 / 06-11). Content pages now 0 dead links; 7
  remain in `log.md` (footnote artefacts `[[^1]]`/`[[DOI]]`/`[[PubMed]]` — left as-is).
- **Orphan intersections (2).** `ethiopia--dpi-mis` was referenced only from the log → wired
  into [[dpi.mis]] and [[ETH]]. `nigeria--infra-store` was missing from the NGA hub → linked
  from [[NGA]]. (`kenya--gov-protect` was already fine.)
- **needs-review (1 of 9 resolved).** [[visa]] → `active`: the Visa Pay DRC launch is now
  independently corroborated (Connecting Africa, 2026-01-26); the uncorroborated stablecoin-pilot
  caveat was scoped down to the deal page [[visa-mpesa-onafriq-drc-stablecoin-pilot]]. The other
  8 flags left standing by design (weak-provenance items awaiting a primary source: [[brics-pay]],
  [[visa-mpesa-onafriq-drc-stablecoin-pilot]], [[data-landscapers-cable-factsheet]]; live/evolving:
  [[microsoft-g42-kenya-datacenter]]; editor-discard call: [[fintech-festival-tanzania]];
  capture-not-endorsement bibliographies: [[diode-network]], [[govlab-nontraditional-data-compilation]];
  undated methodology: [[dpi-map]]).

**Page bloat (13) — partial.**
- **Place hubs fixed.** NGA/ZAF/KEN/XAF `Recent developments` had become append-logs
  (4,100–4,800 words). Refactored to: newest 15 entries verbatim + older entries compressed to
  one-liners under `### Earlier`. Whole-page: NGA 5,441→3,585, ZAF 5,374→3,409, KEN 4,750→3,130,
  XAF 4,716→3,182. **Source-link invariant verified: every dated source link preserved (71/74/67/69,
  zero dropped).**
- **Concepts — tightened, not resolved.** The 9 over-length concept pages (dpi.id, tech.ai,
  infra.connect, dpi.pay, infra.store, geopol.usa, gov.protect, gov.regional, gov.policy) are
  **fact-dense synthesis, not append-logs**, so a verbosity pass only cut ~1.5–2.7% each
  (all source + entity links verified preserved). They remain over threshold. **Real fix =
  intersection-extraction** (they are cleanly country-blocked, e.g. dpi.id has ~44 country
  bullets → `{country}--dpi-id` pages) — deferred as a curator-steered decision to avoid
  over-fragmentation. Also flagged: [[gov.protect]] has two near-duplicate bullets on the same
  FCCPC probe worth merging.

**Backup** of pre-lint `wiki/` kept in the session scratchpad. No frontmatter `last_reviewed`
bumped by the refactors (structural edits, not fact re-verification); [[visa]] bumped to
2026-07-13 as it had a substantive contradiction review.

**Contradictions:** none new.

---

## 2026-07-12 — Substack/analysis batch (29 sources) via the `new/` queue

Second `new/`-queue ingest. 29 named-author Substack/analysis pieces, all admissible as external
expert **analysis** (none AI-generated, none the human's own). Pipeline: 4 parallel triage agents →
central scoping (`_plan_S.md`) → 4 writer agents (splice + `new/`→`raw/` move) → 3 updater agents
(existing entities/concepts/hubs/intersections) → central indexes/log/lint. **Source pages: 486 →
515; entities: 426 → 444.** `new/` drained to empty.

**Publish-date re-prefixing (the pipeline's core move):** clips arrived prefixed `2026-07-12`
(clip date); each was re-prefixed to its true `published` date on the move — spread **2021→2026**
(1×2020, 1×2021, 8×2025, 23×2026): Frontier Fintech #31 → 2021-08-30, Birhane-adjacent pieces to
2025, the Gatekeepers/health/telco pieces to their real dates. VoxDev "AI in Africa" had an empty
`published`; set to **2026-02-10** (recovered from the article body — not a proxy).

**Clusters:** payments end-game / instant-payment rails (Frontier Fintech Samora Kariuki ×4, Rwanda
eKash, the CBN June-2026 payments circular ×2); telecom state-of-market & ICT4D history (Russell
Southwood ×5); AI governance / sovereignty / internet governance (Alice Munyua's *Gatekeepers* ×3,
"Africa in the Room" / Zuria Nagadya ×4, Chinasa Okolo ×2); AI-sovereignty & data governance (Anjola
Adebowale ×5, Rebecca Mbaya ×2, Rose Mutiso ×3).

**18 new entities.** Persons (7): [[samora-kariuki]], [[russell-southwood]], [[anjola-adebowale]],
[[zuria-nagadya]], [[rebecca-mbaya]], [[rose-mutiso]], [[chinasa-t-okolo]]. Instruments (3):
[[eu-ai-act]], [[cbn-payments-circular-2026]], [[kenya-ai-bill-2026]]. Initiatives (3):
[[ekash]], [[caiga]], [[africa-ai-declaration]] (Kigali Apr-2025 + $60bn Africa AI Fund).
Organisations (3): [[icann]], [[afrinic]], [[consumer-federation-of-kenya]]. Also [[waka]] (company),
[[national-bank-of-rwanda]] (gov-body). (3 Gatekeepers attached to existing [[alice-munyua]].)

**Substantive existing-entity work:** [[alice-munyua]] (full *Gatekeepers* body); the **US–Kenya
health-deal litigation thread** ([[us-kenya-health-framework]], [[america-first-global-health-strategy]],
[[specimen-sharing-agreement]], [[odpc-kenya]], [[kenya--gov-protect]] — COFEK petition → High Court
suspension of the data-transfer component → Court of Appeal reversal); [[cbn]] (four-pillar circular);
[[kenya-data-marketplace]], [[european-union]] (EU AI Act reach), [[smart-africa]] (CAIGA),
[[microsoft-g42-kenya-datacenter]], [[mtn-group]] telco state-of-market. Concepts refreshed:
dpi.pay, tech.ai, gov.protect, gov.legislate, gov.regional, geopol.china, geopol.eu, geopol.usa,
tech.industry, infra.*, include.*, data.*, digital.rural, finance.new. Hubs: KEN/NGA/GHA/RWA/ZAF/XAF/
XSS/XGL/ETH/COD/MAR/EGY + tail one-liners. Indexes: 18 rows added; topics-index resynced.

**Contradictions / needs-review (open):**
- **CBN "Strategy Ahead of Infrastructure" Part II** dated `2026-06-19` but references Part I
  (`2026-07-01`) as already live and post-dates the 15-Jun circular it analyses → **date almost
  certainly wrong** (likely early July). Kept as-is, flagged on the source + [[cbn-payments-circular-2026]].
- **Kigali AI Declaration signatories: 54 (Munyua, Adebowale) vs 49 (Nagadya)** — both dated on
  [[africa-ai-declaration]], [[au-continental-ai-strategy]], [[african-union]], tech.ai.
- **African data-protection-law count: 44 (Adebowale, early 2026) vs 36 (Mbaya, citing Mabuza)** —
  recorded dated on tech.ai, not reconciled.
- **Morocco 500MW renewables-AI project** (outside US CLOUD Act) — routed to the [[MAR]] hub as a
  candidate entity; NOT conflated with [[pax-silica]] (the US chip coalition).
- [[microsoft-g42-kenya-datacenter]] remains `needs-review` (live power/anchor-tenant situation).

**Provenance caveats on pages:** #117 "Payments Follow Trade" is a Waka **partner piece**
(company-stated figures); the eKash piece is by an **RSwitch insider**; Frontier Fintech #31 is a
**2021 backgrounder** — figures dated, not promoted into current synthesis. **Not created**
(capture ≠ endorsement): the five former-incumbent telcos (Camtel priority), Siyabonga Mabuza's
"Rewriting the Algorithm", the TAIS Knowledge Map, social-health-authority-kenya, kenya-cloud-policy-2025
— attributed in-source, flagged for later review. **Housekeeping:** the batch reintroduced curly
apostrophes in 6 filenames; normalised back to straight ASCII (filenames + links) for corpus consistency.

---

## 2026-07-12 — Backfill: `date_precision` / `date_source` frontmatter (align to updated CLAUDE.md)

CLAUDE.md's Filenames section was extended with two per-file honesty markers; the corpus was
brought into line (frontmatter-only — no renames, no link changes):

- **`date_precision: year`** added to the **20** files whose `published` is year-only (prefix
  padded `YYYY-01-01`); **`date_precision: month`** to the **19** month-only files (padded
  `YYYY-MM-01`). Day-precise files keep the default (`day`, unmarked).
- **`date_source: proxy`** added to the **4** files with no discoverable publication date, whose
  prefix is therefore a clip/created-date proxy: `AWS in Africa`, `BRICS portal`,
  `Codebook - DPI Map`, `Methodology - DPI Map`.
- Inserted immediately after the `published:` line; frontmatter integrity verified; lint
  unaffected (no filename/link changes). Corpus now fully matches the updated Filenames rules.

---

## 2026-07-12 — Corpus-wide filename standardisation: `raw/` prefixes → `published` date

Re-prefixed every `raw/` source to its **`published`** date (was mostly the clipper's
`created`/clip date), so filenames now sort by publication, per the new Filenames rule. The
clipper can't reliably extract `published`, so this is done at ingest/maintenance instead.

- **411 of 486 `.md` re-dated** (71 already correct; **4 left as-is** — no `published` field:
  `AWS in Africa`, `BRICS portal`, `Codebook - DPI Map`, `Methodology - DPI Map`, all undated
  reference/profile pages). Partial dates padded (`2026`→`2026-01-01`, `2026-06`→`2026-06-01`).
  ~65 moved to earlier years (2025×31, 2024×13, 2023/2022×6 each, 2019×3, 2020/2021×2, 2017/2018×1)
  — e.g. the Gillwald op-eds to 2019, "From Davos to New Delhi" to 2026-02-17, Birhane to 2020-08-21.
- **Links rewritten in 488 files** via a collision-guarded, two-phase **sentinel** replace
  (oldstem→sentinel→newstem) so no chained double-substitution — covering body wikilinks and
  single-bracket `sources:`/`entities:` frontmatter items alike.
- **3 PDF companions re-synced** so artefact and companion share the prefix: `DIGITAL FUTURES…`
  (→2020-12-19), the ICJ `Mapping Global DPI…` (→2025-01-01), the GFI `Trade-related-IFFs…`
  (→2026-01-01); in-body `raw/` PDF paths and the ICJ entity's `sources:` link updated.
- **Verification:** every `raw/` file is `YYYY-MM-DD`-prefixed; prefix==`published` wherever one
  exists; **lint #4 fully clean** (0 genuine dead links, 0 apostrophe, 0 placecode, 0 orphans).
  Batch history is preserved in these log entries; `raw/` now sorts by true publication date.

---

## 2026-07-12 — First `new/`-queue ingest (architecture test): 6 items (4 clips + 2 PDFs)

First run of the physical intake pipeline (`new/` → `raw/`). Drained the queue; all 6 items were
admissible sources (nothing parked/discarded). **Source pages: 479 → 485** (+2 PDF artefacts).

- **Clips (4)** spliced to `type: source` and moved to `raw/` **re-prefixed with their `published`
  date** (the normalisation test): Birhane *Algorithmic Colonisation of Africa* (The Elephant) →
  **2020-08-21** (clip was `2026-07-12`); the three Tech Policy Press pieces → 2026-07-10 / 07-08 /
  07-09.
- **PDFs (2)** moved to `raw/` with published-date prefixes, each given a **date-prefixed companion
  source page** sharing the prefix: *Narratives and Counternarratives on Data Sharing in Africa*
  (Abebe, Birhane et al, FAccT '21) → **2021-03-01**; *Power to the People? Participatory AI*
  (Birhane et al, EAAMO '22) → **2022-10-01**.
- **New entity:** person **[[abeba-birhane]]** (recurring — authors 3 of the 6 items; the
  algorithmic-colonialism / data-justice backbone for the `colonialism` lens).
- **Attached to existing:** [[un-ai-scientific-panel]] (the two UN-AI-governance pieces — added an
  **independence-critique** synthesis), [[ai-for-good-global-commission]], [[meta]], [[google]],
  [[google-deepmind]]. Concepts updated: **[[tech.ai]]** (algorithmic-colonialism frame +
  global-AI-governance/Global-South bullet), **[[gov.protect]]** (humanitarian-data / WFP-Gaza
  breach + "unconsenting beneficiary"). Place hub **[[XAF]]** (Birhane framing note). Indexes:
  abeba-birhane added to `entities-index.md`.

**Scope/judgement notes:** the two UN-AI-governance clips and the participatory-AI paper are
**global** (tagged XGL) — captured for the Global-South-in-global-AI-governance thread and
Birhane's body of work, not as African developments; the participatory-AI paper is flagged
scope-marginal on its own page. Data-Sharing-in-Africa and the Algorithmic-Colonisation essay are
squarely in scope. **Pipeline verdict:** works end-to-end — `new/` ends empty, `published`-date
prefixing applied, PDFs sit beside their companions, lint clean. No contradictions.

---

## 2026-07-12 — Lint #4 cleanup: place hubs for tag-only codes + uncreated entities

Cleared the two remaining actionable lint-#4 classes (the citation-cruft class was left as-is,
by direction):

- **10 place hubs created** for tag-only codes that were dead wikilinks: countries **[[EGY]]**
  (GovTech GTMI Group A, AI strategy, cable-landing hub), **[[DJI]]** (East-African cable
  "switchboard"), **[[GNQ]]** (Nigeria–EG subsea cable + CEMAC), **[[BWA]]** (SADC fibre corridor
  / stats), **[[DZA]]**, **[[GIN]]**, **[[MRT]]**, **[[CAF]]** (light `status: stub`); and regions
  **[[XNA]]** (North Africa) and **[[XSA]]** (Southern Africa). Added all to `places-index.md`
  tables; refreshed the "not yet hubbed" note. **Now 55/62 codes hubbed** — remaining unhubbed
  (no source references them yet): BDI, COM, CPV, ERI, GNB, LBY, STP.
- **3 entities created** for recurring uncreated links: person **[[alice-munyua]]** (the
  "Gatekeepers" sovereignty critic, ×8 refs), person **[[john-tanui]]** (PS, Kenya Ministry of
  ICT & Digital Economy, ×4), instrument **[[malabo-convention]]** (AU Convention on Cyber
  Security & Personal Data Protection, 2014→in force 2023). Added to `entities-index.md`.
- **Léon Thévenin** (submarine-cable repair ship, single mention in [[jess-auerbach]]) —
  **de-linked to plain text** rather than made an entity (a specific vessel fits no entity type
  and isn't an object the wiki profiles).

**Lint #4 now clean:** 0 genuine dead links, 0 apostrophe mismatches, 0 tag-only-place dead
links, 0 orphans. **Left as directed:** the ~39 academic-citation cruft tokens (`[[DOI]]`,
`[[PubMed]]`, `[[^1]]`…​) inside the 2026-07-11 health-systems PDF clippings.

---

## 2026-07-12 — Lint #4 pass: digital.rural concept + apostrophe normalisation

Ran lint #4 (orphans & dead links) and cleared the two actionable classes:

- **Created concept [[digital.rural]]** ("Rural digital data capture") — synthesised from the
  71 references across 14 concepts, ~13 entities and 13 place hubs (community-health capture/eCHIS,
  satellite-ag data & sovereignty, last-mile connectivity economics, the "creation not just
  digitisation" thesis, rural/gender divides). Added to `topics-index.md` (Digitalisation). All
  71 dead `[[digital.rural]]` links now resolve.
- **Apostrophe/quote normalisation.** Renamed **80** `raw/` files carrying curly quotes
  (`'` `'` `"` `"`) to straight ASCII, and straightened the curly quotes inside every `[[…]] wikilinks`
  and `sources:`/`entities:` frontmatter item across **194** files. Windows-safe mapping (curly
  double-quotes → straight `'`, since ASCII `"` is a reserved filename char — affected 3 files
  incl. ECOWAS *'SIGMAT'*). Apostrophe-mismatch dead-link bucket: ~12 → **0**.
- **Fixes:** orphan `data-systems-crossroads` (instrument) added to `entities-index.md`; one
  wrong-date link typo in `KEN.md` corrected (`2026-07-10`→`2026-07-11` Visa/M-Pesa).

**Lint #4 remainder (unchanged, out of this pass's scope):** 10 tag-only place codes without hubs
(BWA/CAF/DJI/DZA/EGY/GIN/GNQ/MRT/XNA/XSA); ~39 academic-citation cruft tokens (`[[DOI]]`,
`[[PubMed]]`, `[[^1]]`…​) inside the health-systems PDF clippings; and **4 uncreated-entity links** —
`[[alice-munyua]]` (×8), `[[john-tanui]]` (×4), `[[malabo-convention]]`, `Léon Thévenin`
(mojibake) — recurring enough (esp. the first two) to warrant entity pages on a later pass. Two
apparent dead links (`[[…]] links`, `[[…]] wikilinks`) are literal examples inside backticks in this log,
not real links.

---

## 2026-07-12 — CLAUDE.md structural update digested + repo migration

CLAUDE.md was revised: **physical intake pipeline** (`new/` queue → `raw/` admitted / top-level
`_leads/` parked / discard=delete; folder = state; move out of `new/` is the last step),
**mandatory `YYYY-MM-DD` filename prefix** on every `raw/` file (from `published`→`ingested`→
`created`), **binary artefacts get a date-prefixed companion source page** (artefact shares the
prefix), the **`publication` entity type retired** (→ folded into `instrument`), filing rules
re-anchored to draining `new/`, and two new lint checks (#10 stranded `new/` items, #11 missing
date prefix). Migration run to bring the existing repo into line (decisions per human):

- **Publications → instrument.** All **17** `entity_type: publication` pages re-typed to
  `instrument`; self-referential "filed as a publication" prose reworded; the entities-index
  "Publications" section renamed to "Instruments — scholarly & analytical works".
- **`_leads/` relocated** from `raw/_leads/` to top-level **`_leads/`** (18 items); current-state
  path references in `gov.protect`, `cbn`, `index.md`, `nigeria--gov-protect` updated (historical
  log references left as-is).
- **Date-prefix migration.** Added `YYYY-MM-DD` prefixes to **56 `.md` sources** (from their
  `published` date, partials padded) + **54 artefacts** (companion-page date where one exists,
  else file mtime; explicit dates for SAT3/Jagun/GISW and this session's 3 PDFs). Rewrote **all
  referencing links** — `[[…]] wikilinks`, single-bracket `sources:`/`entities:` frontmatter items,
  and in-body `raw/…​.pdf` paths — across ~150 files (a first pass missed the single-bracket
  frontmatter form; caught and fixed). This session's 3 PDFs now sit beside their companions.
- **Lint after migration:** 0 unprefixed files in `raw/` (#11 clean); all in-body PDF paths
  resolve; dead-link count unchanged at **54**, all **pre-existing** (tag-only place codes
  BWA/CAF/DJI/DZA/EGY/GIN/GNQ/MRT/XNA/XSA; academic-citation cruft DOI/Scholar/PMC/footnotes;
  lens links `[[sovereignty]]`/`[[colonialism]]`; the never-created `[[digital.rural]]` concept;
  and a few uncreated entity/person links — none introduced by this migration). These remain as
  standing lint items for a future pass, not migration regressions.

---

## 2026-07-12 (day 5) — Fifth big batch: 64 dated clippings triaged, 62 ingested

Pipeline: 6 parallel triage subagents → central admissibility/dedup/facet scoping (`_plan.md`)
→ 5 partitioned writer subagents (frontmatter splice + new entities + place hubs) → 3 updater
subagents (existing entities + intersections + concepts) → central indexes/log/lint.
**Source records: 415 → 477** (62 clippings spliced). **Entities: 365 → 419** (54 new).
Two new place hubs (**SYC, XCA**) and one new concept page (**capacity.literacy**).

Dominant clusters: **cross-border instant-payment rails** (BEAC→PAPSS Central-Africa accession,
EAC RSwitch↔TIPS Rwanda–Tanzania PoC, NIBSS National Payment Stack, PAPSSCARD, PAPSS-Nigeria
−53% decline); **SA digital government/ID** (MyMzansi DSU build, 4.0m smart IDs, OVS 6,500%
verification-fee court fight, ID-policy slip, digital driving licence); **Kenya connectivity &
cloud** (ICT Authority fibre/WiFi targets, iXAfrica–Oracle first public cloud region, EU-funded
KCR cyber project, KSG–Huawei prospective skills MoU); **LEO satellite entrants** (Amazon Leo
Nigeria permit, Spacecoin, Starlink→Airtel/Vodacom tie-ups); **Nigeria data-rights** (FCCPC
big-tech news-content probe, DRLI/INEC suit, NiRA/.ng sovereignty); **AI governance** (AU–EU
co-creation, Horizon1000 Gates+OpenAI health-AI, feature-phone voice-AI inclusion); **Africa CDC
Central Data Repository**; and a large **Research ICT Africa reference tranche**.

**Intake screen / admissibility**
- **2 parked inadmissible → `raw/_leads/`:** [21] Tech-In-Africa "Data Sovereignty" listicle and
  [38] "Lagos Digital Highway" — both seobotai.com AI/SEO-generated aggregations with uncited /
  internally-contradictory stats. Primaries to chase noted in triage (NITDA Feb-2025 framework,
  SA National Data & Cloud Policy, Microsoft–G42 Kenya, Metrofibre/Lagos ITS, LASRRA, etc.).
- **Institutional analytical reports kept `source`** (not `publication`): the five After Access /
  "Digital Africa post-pandemic" RIA country reports, Safeguarding Tanzania, NSOs-as-custodians,
  Taking-digital-inequality — captured as dated survey/analysis evidence citing the new
  [[research-ict-africa]]/[[after-access]] pages; **their figures were NOT promoted** into
  concept/place pages (per the reference-study-facts memo). Named-scholarship works became
  `publication` entities: [[cross-border-data-flows-afcfta-ria-2025]],
  [[mapping-african-digital-infrastructures]] (one publication for the 3-part series),
  [[digital-data-driven-transformations-landscape-review-2025]].
- **Gillwald op-eds ([2],[28],[54],[55],[22])** filed as external expert analysis (`source`),
  all facts dated "as of" their 2018–2020 publication; the erroneous "~60 million SA Facebook
  users" figure was flagged and **not propagated**.
- **DPI Map codebook [18] / methodology [44]** ingested as undated reference sources attaching to
  [[dpi-map]] (Eaves & Rao 2025 IIPP working paper cited in prose, page deferred).

**Dedup (attached/backfilled, not duplicated)**
- [16] CBN localisation, [47] PAPSS −53%, [3] Afreximbank Davos → folded into existing
  [[cbn]]/[[papss]]/[[afreximbank]] (+ intersections), no parallel pages.
- [14]&[15]&[27] → same SA digital-ID programme → [[mymzansi]] + new
  **[[south-africa--dpi-id]]** "Delivery/register/front-end" section (kept both "as of" datings).
- [48]&[51] → same OVS/register upgrade, cross-linked. [62] FCCPC probe kept distinct from
  [[ndpc-meta-settlement]] (competition/copyright vs data-privacy).
- [61] IISS Pax Silica essay → attached to existing [[pax-silica]] (new critical-minerals framing
  + DRC track; roster/date reconciled by dating both, not overwriting). [64] → updated
  [[american-ai-exports-program]] (78 first-round applications; Anthropic order imposed-then-reversed).
- [1] "Africa's Digital Policy Review 2025" = lead-rich self-published synthesis → light-attach
  only (no fact-hardening); corrupt publish date fixed 2001-01-12 → 2026-01-12. Its primaries
  (Gambia PDPP Bill, Botswana DPA commencement, NDPC GAID 2025, Rwanda data-governance standards,
  Egypt Open Data Policy, AfCFTA 8 annexes, national AI strategies) logged as follow-up leads.

**Pages created — 54 entities** across companies (amazon-leo, axian-telecom, mtn-nigeria,
quest-ghana, spacecoin, viamo, x-corp), organisations (beac, aficta, african-telecommunications-union,
act-south-africa, data-for-policy, digital-rights-lawyers-initiative, ecdpm, expertise-france,
nibss, nira-nigeria, public-health-informatics-institute, publish-what-you-fund, global-fund),
government-bodies (central-bank-of-kenya, digital-services-unit-presidency-sa,
federal-ministry-education-nigeria, ict-authority-kenya, inec, kenya-school-of-government),
initiatives (afcfta-digital-trade-corridor, brics-pay⚠, dnemis-nigeria, dl4all-nitda,
eac-cross-border-payment-masterplan, fintech-festival-tanzania⚠, kenya-cyber-resilience-project,
national-payment-stack, papsscard, rswitch-rwanda, sa-digital-transformation-roadmap, tips-tanzania),
deals (horizon1000, seychelles-afcfta-mou, starlink-airtel-d2c-partnership,
starlink-vodacom-leo-partnership, ixafrica-oracle-oci-nairobi), instruments
(au-data-policy-framework, au-digital-transformation-strategy), publications (3 above), resources
(africa-cdc-cdr, after-access, international-aid-transparency-initiative), persons (alison-gillwald,
leon-schreiber, bola-tinubu). **Hubs created:** SYC, XCA. **Concept created:** capacity.literacy.

**Pages updated** — ~65 existing entities (papss/cbn/mymzansi/home-affairs-south-africa/nitda/ndpc/
nimc/fccpc/meta/google/dhis2/hisp-centre; research-ict-africa (new "Recent outputs" index),
dpi-map (→needs-review), pax-silica, american-ai-exports-program, afcfta-digital-trade-protocol,
african-union, afreximbank, uneca, itu, huawei, mtn-group, starlink/spacex/airtel-africa/vodacom,
oracle/ixafrica-data-centres, communications-authority-of-kenya/ncc, gates-foundation/openai/
paula-ingabire, eac/giz/world-bank/european-union/estdev, and the tail). Intersections:
nigeria--gov-protect, nigeria--infra-store, south-africa--dpi-id (substantive),
south-africa--infra-connect. Concepts refreshed across dpi.*/gov.*/tech.ai/geopol.*/infra.*/
include.*/capacity.*/data.*/finance.*. Indexes: 54 entity rows into `entities-index.md`;
`topics-index.md` place-lists resynced from concept frontmatter + capacity.literacy added;
`places-index.md` SYC/XCA hubbed + day-5 note.

**Contradictions / needs-review (open)**
- **PAPSS-Nigeria decline (contradiction-watch):** CBN Financial Stability Report (30 Jun 2025)
  shows Nigeria PAPSS value −53% H1'25 (N11.97bn→N5.6bn) and −29% transactions, against the
  bullish continental-rollout narrative. Recorded (dated) on [[papss]], [[afreximbank]],
  [[dpi.pay]] — **not** erased; worth watching whether it's a blip or a trend.
- **Meta penalty figure:** existing NGA hub cited **$222m**; item [62] says **$220m** — recorded
  as "$220–222m", not silently overwritten.
- **brics-pay** and **fintech-festival-tanzania** filed `status: needs-review` (thin/undated
  provenance; may be downgraded to lead / discarded on human review). **dpi-map** set
  `needs-review` (undated methodology pages folded).
- **BEAC accession [12]** is lede-only (paywalled) — accession terms/date unconfirmed; corroborate
  against a BEAC/Afreximbank primary.
- **Taxonomy gap:** no slug for **information-integrity / disinformation / internet-shutdowns**
  ([52] Safeguarding Tanzania tagged infra.connect+include.divides+gov.policy as nearest). Flagged
  for the human — candidate new Level-2 slug.
- **Bundled trailing stories** in clip [45] (Flutterwave–Circle USDC, Moniepoint $11.09bn study,
  POS fraud) noted as separate potential leads, not ingested.

**PDFs in the day-5 batch (4 new, handled separately from the 62 clippings)**
- **`2025-01-01 SE_GISW-Gillwald_final.pdf`** → new `publication` [[gillwald-digital-inequality-paradox-2025]]:
  Alison Gillwald's chapter "From 'digital divide' to 'digital equality': Unpacking the digital
  inequality paradox" in the *Global Information Society Watch* WSIS+20 special edition (APC, 2025).
  Named scholarly authorship → publication; PDF cited in-body (no companion .md). Linked from
  [[alison-gillwald]] and [[research-ict-africa]].
- **`Mapping-Global-Digital-Public-Infrastructure-...-Kenya.pdf`** → new `source`
  ([[2025-01-01 Mapping Global DPI - A Human Rights Perspective with Focus on Kenya (ICJ Kenya)]])
  + new organisation [[icj-kenya]]. ICJ Kenya (2025) institutional rights report on DPI (M-Pesa,
  eCitizen, Huduma Namba, Worldcoin biometric-consent concerns); institutional authorship → source,
  not publication. Attached to [[KEN]], [[kenya--gov-protect]], gov.protect/dpi.id.
- **`DIGITAL FUTURES - SOUTH AFRICA'S READINESS FOR THE 4IR.pdf`** → **companion, not re-filed**:
  it is the full NPC/RIA/UCT draft paper (released for comment 6 Jul 2020) already captured by
  clipping source [29] ([[2020-12-19 Digital futures South Africa's readiness for the 4IR]]). A
  note pointing to the local PDF was added to that source; no parallel page (dedup).
- **`2026-01-01 Trade-related-IFFs-Africa-near-final-1.pdf`** (Global Financial Integrity, *Trade-Related
  Illicit Financial Flows in Africa 2013–2022*, Jan 2026) → **ingested per human direction** as
  `source` ([[2026-01-01 Trade-Related Illicit Financial Flows in Africa 2013-2022 (Global Financial Integrity)]])
  + new organisation [[global-financial-integrity]]. Framed via its **data angle**: a mirror-trade
  analysis of **UN Comtrade** statistical quality (value gaps as a data-integrity proxy for trade
  misinvoicing) → tagged data.statistics/data.open/gov.regional, XSS + top-gap countries
  (ZAF ≈42%/$478bn, NGA, GHA, CIV, KEN, GMB). Figures kept on source/entity pages (reference-study
  rule), with a data-integrity note added to [[data.statistics]]; not pushed into place hubs.

---

## 2026-07-12 — Ingest: World Bank *Infrastructure Foundations* (Straub et al., 2026) as a `publication`

**Item:** `raw/2026-07-12 Infrastructure Foundations From Current Assets to Future Growth.pdf`
(204 pp.; World Bank, Sustainable Infrastructure Series; DOI 10.1596/978-1-4648-2311-4;
authors Straub, He, Li, Lyu, Steinbuks, Vergara Cobos, Dann, García-Santana, Selod).

**Intake screen.** Admissible — primary, first-hand World Bank measurement study (a
geolocated dataset + methodology), not a second-hand/AI synthesis. Reports *no single
development* and is global/multi-place → an **entity profile of a standing reference
object**, not an event-source and not a lead.

**Type decision (the interesting call).** Global flagship covering energy, transport and
**digital**. Two live precedents for World Bank flagships: CLAUDE.md says "default to
`source`" for institutional analysis, *but* [[world-development-report-2025]] was captured
as an `instrument` (a standing reference entity, not a bare source). Applied CLAUDE.md's
instrument-vs-publication test: an **instrument is normative** (align/comply/measure
against — fits WDR 2025's standards theme); a **publication is analytical** (cite/weigh/
argue with). This book is an empirical *measurement* study under **named scholarly
authorship** in an academic series with a DOI — analytical, not normative → filed as a
**`publication`**, consistent with the wiki's other named-authorship works
([[triad-tech-sovereignty-verhulst-otero-2026]], [[cable-wars-abels-babic-2026]], etc.).

**Capture discipline (deliberately tight).** Per "capture is not endorsement," did **not**
fan a 204-page global book out across 54 country hubs or concept pages at intake. Created
one publication entity with a synthesis focused on the **in-scope digital + SSA** findings
and the reusable unit-cost table; specific dated facts drawn later become normal sources
citing it.

**Pages touched:**
- **Created** `entities/infrastructure-foundations-straub-2026.md` — places
  `[XGL, XSS, XAF, NGA, KEN, COD, SLE]` (global + SSA + countries named with specific
  data), topics `[infra.connect, infra.store, infra.energy, finance.new, capacity.research]`,
  lens `[sovereignty]`.
- **Updated** `entities-index.md` (Publications table) and `entities/world-bank.md`
  (added to reference shelf; `last_reviewed` → 2026-07-12).

**Notable in-scope data points captured** (all as-of 2024–2025): data centres — HICs host
**72%** of global facilities vs **0.2%** low-income; IXP median peak traffic **556 Mbps in
SSA vs >470,000 Mbps in North America**; the "fiber divide" (60 below-median countries incl.
much of SSA + Kenya, Nigeria; severe gaps DRC, Sierra Leone); SSA RAN still **>80%** macro;
unit costs (cell tower macro ~US$308,746; data centre ~US$530m; IXP US$30k/150k/1m by tier).

**Contradictions:** none surfaced.
**Open item:** none blocking. Left the raw PDF flat in `raw/` (existing convention; not the
dated `raw/YYYY/` scheme) — consistent with the standing raw/-foldering question already in
the log.

---

## 2026-07-11 (day 4) — Fourth big batch (70 dated clippings) ingested — backlog "last batch of the day"

Same pipeline (parallel triage → central admissibility/dedup/facet scoping → scripted frontmatter splice →
partitioned page-writer subagents → central indexes/log/lint). **Source records: 345 → 415** (70 clippings
spliced; several standing-reference PDFs captured as entities rather than raw companions). Dominant clusters:
a **submarine-cable political-economy** deep-dive, the **US–Africa health-data / AFGHS** thread (Specimen
Sharing Agreement + Africa CDC pushback + KFF tracker), **sovereign-AI partnerships** (Kenya–India–Italy,
Kenya–Germany, AU–Google, Rwanda DPI), **Cassava/Liquid/Google** cloud-and-cable backfill, **Nigeria digital
rights / NDPA**, and **SA digital ID / ETA / MyMzansi**.

**Intake screen / admissibility**
- **`2026-06-03 cable-factsheet.pdf` — flagged, filed as needs-review `resource`** ([[data-landscapers-cable-factsheet]]).
  This is Data Landscapers' *own* "Submarine cables serving Africa" fact sheet (June 2026) with **"Data
  collection by Perplexity Computer"** — i.e. AI-assembled, unverified, an internal working asset. Per
  admissibility (author's unpublished notes excluded; AI synthesis inadmissible as a source) it is **not** a
  source of record: captured as a standing internal reference with a prominent provenance caveat that every
  figure must be verified against a primary source (TeleGeography / cable-owner announcements) before it is
  cited, and an explicit instruction never to attach it as a `sources:` entry. **Human review requested.**
- **Cable-history PDFs captured as entities** (no raw `.md`, PDF cited in-body): the **APC SAT-3/WASC open-access
  briefing + Jagun et al. four-country case study (2008)** → one `publication` [[jagun-sat3-open-access-2008]];
  **Internet Society "Africa Internet History: Highlights"** → `resource` [[internet-society-africa-history]];
  **Verhulst & Otero, "Triad of Tech Sovereignty" (SSRN 2026)** → `publication`
  [[triad-tech-sovereignty-verhulst-otero-2026]]. `P505739…pdf` = the WBG DPI White Paper already held
  ([[wbg-dpi-white-paper]]) — not re-filed. The 22 Xalam DC-market-brief PDFs remain covered by
  [[xalam-dc-market-briefs-2026]] (no per-brief page).

**Dedup (attached/backfilled, not duplicated)** — this batch was heavily backfill:
- **Cassava/Liquid/Google** — the "Cassava sovereign cloud / NVIDIA autonomous network / AI Factory", "Liquid
  C2 × Google Cloud (partnership / hybrid / distribution / Experience Centre)", "$90M Google→Cassava round"
  and "Google WAXAL / Hustle Academy / Impact" clips attach to existing [[cassava-technologies]],
  [[liquid-c2]], [[cassava-ai-factories]], [[google]] (+ new dedicated deal/dataset pages
  [[google-cassava-90m-round]], [[liquid-c2-google-cloud-mou]], [[waxal]]). The 2022 Liquid–Equiano fibre-pair
  acquisition filed as backfill to [[liquid-c2]]/[[equiano-cable]].
- **Rwanda–Anthropic** clip = the MoU already held → attached to [[anthropic-rwanda-mou]] (adds 17 Feb 2026
  signing, 2,000-trainee target), not re-spawned.
- **Nigeria fintech blueprint** (Capital FM) = second outlet on the CBN Policy Insight Series → attached to
  [[cbn-policy-insight-series-2025]]/[[dpi.pay]], Kenya-angle folded.
- **AFGHS** — Specimen-Sharing-Agreement full text + Africa CDC "huge concerns" (Kaseya) + KFF MOU tracker all
  attach to [[america-first-global-health-strategy]] (+ new [[specimen-sharing-agreement]],
  [[kff-afghs-mou-tracker]]).

**Pages created (56 entities, 0 hubs, 0 concepts)** — no new place hubs or concepts were needed (all affected
places/topics already existed):
- **Submarine-cable cluster (14):** [[2africa-cable]], [[equiano-cable]], [[umoja-cable]], [[telegeography]],
  [[international-cable-protection-committee]], [[carnegie-endowment]], [[nsrc]], [[jess-auerbach]],
  [[submarine-cable-political-economy-dataset]], [[cable-wars-abels-babic-2026]],
  [[equiano-mainone-nwankwo-2025]], [[jagun-sat3-open-access-2008]], [[internet-society-africa-history]],
  [[data-landscapers-cable-factsheet]].
- **Nigeria (9):** [[abia-state-government]], [[national-digital-farmers-registry-nigeria]],
  [[nigeria-data-protection-act-2023]], [[nigeria-digital-postcode-system]], [[nigeria-finland-digital-mou]],
  [[eu-nigeria-global-gateway-290m]], [[trust-stamp]], [[european-union]], [[global-gateway]].
- **Kenya / AU-AI (10):** [[communications-authority-of-kenya]], [[kenya-aist]], [[kenya-germany-ai-centre]],
  [[kenya-india-italy-sovereign-ai-partnership]], [[kenya-public-service-commission]], [[pesalink]],
  [[au-continental-ai-strategy]], [[au-google-mou]], [[apolitical]], [[cloud-act]].
- **South Africa (10):** [[home-affairs-south-africa]], [[saps]], [[forensic-data-analysts]],
  [[operation-vulindlela]], [[mymzansi]], [[south-africa-eta]], [[spacex]], [[space42]], [[thuraya-4]],
  [[vodacom-safaricom-stake-deal]].
- **Rwanda / DPI / health / misc (13):** [[rwanda-dpi-strategy]], [[rwanda-information-society-authority]],
  [[digital-investment-facility]], [[dpga]], [[dpi-map]], [[google-cassava-90m-round]],
  [[liquid-c2-google-cloud-mou]], [[waxal]], [[aisha-walcott-bryant]], [[tony-blair-institute]],
  [[kff-afghs-mou-tracker]], [[specimen-sharing-agreement]], [[triad-tech-sovereignty-verhulst-otero-2026]].

**Pages updated** — ~34 existing entities (Cassava/Google/Liquid cluster; AFGHS/Africa CDC/health MOUs;
Nigeria NIMC/NDPC/ID; SA ID; payments/telecom tail); hubs **NGA, KEN, GHA, RWA, ZAF, XAF, XSS, XGL, ETH**
(UGA, ZWE, COD, MOZ, CIV deliberately unchanged — only tangential pan-African mentions); concepts
**infra.connect** (new "submarine cables as contested infrastructure" synthesis), **infra.store, tech.ai,
geopol.usa, geopol.eu, gov.protect, gov.legislate, gov.policy, gov.regional, dpi.id, dpi.pay, finance.mou**.
Indexes: 56 entity rows added to `entities-index.md`; 12 concept place-lists refreshed in `topics-index.md`;
`places-index.md` day-4 note added.

**Contradictions / needs-review**
- **AFGHS signatory count & value drift (open):** snapshots diverge — earlier pages carried ~22–26 countries /
  "16 signatories"; the newer State-Dept-based tables give **14 named African signatories / ~$16bn**, while
  Ecofin/KFF give **16 / >$18.3bn**. Recorded side-by-side and dated (growing roster over time, likely not a
  hard conflict) on [[america-first-global-health-strategy]], geopol.usa and XSS — **worth reconciling to one
  definition.**
- **Zimbabwe AFGHS amount ($350m vs $367m):** the new Reuters/Africa CDC source is a **third corroboration of
  $367m** → the day-2/3 conflict is effectively resolved in favour of **$367m/5yr**.
- **Nigeria AFGHS value ($5.1bn):** reconciled — = **$2.1bn US grant + $3.0bn Nigerian domestic** co-investment
  (a breakdown, not a conflict).
- **Soft version-drift (handled inline by dating, not overwritten):** Hustle Academy reach (18,000 SMEs 2026 vs
  10,300 SMBs 2024), Google accelerator cumulative count (106 vs 120), Liquid fibre footprint (100,000 km/14
  countries vs 110,000 km/21). All kept as dated growth, not contradictions.
- **`data-landscapers-cable-factsheet` (needs-review):** AI-sourced (Perplexity) internal asset — figures
  unverified; do not cite without primary confirmation (see Intake screen above).

**Temp files removed:** `wiki/_ingest_writer_spec.md`, `wiki/_ingest_update_spec.md`.

---

## 2026-07-11 (day 3) — Third big batch (99 dated items + 3 PDFs) ingested

Same method (parallel read-only triage → central scoping/dedup/admissibility → scripted frontmatter
splice → partitioned page-writer subagents → central indexes/log). **Source records: 250 → 345**
(93 clippings spliced + 2 report companions). The largest batch yet; dominant clusters: a **Benin
DPI** deep-dive, **ECOWAS / West-Africa** integration, **small-state DPI** across the Sahel, Horn and
Central Africa, the **US-health-MOU** cluster (now Zambia + Zimbabwe + Kenya), Chinese **surveillance /
Huawei**, and **satellite** connectivity.

**Intake screen / admissibility**
- **Parked to `raw/_leads/`** (5): the LinkedIn "OpenAI/Microsoft AI Health Tools" newsletter (Vota,
  no African place); the `Biometric Update` search-results page (aggregation — mine its 9 Benin
  headlines, all separately ingested); the "How Satellites Are Accelerating Health Tech" thought
  piece (no dated event); the "Cybersecurity Threats In Ghana" composite op-ed; and the `Recall Cards`
  UI-capture artefact.
- **Failed capture → re-fetch** — `Ministry of Digital Transformation … "Baldna" Project` (Sudan/SUNA)
  rendered only nav chrome; parked, worth re-fetching (real event: Sudan 28 e-services).
- **3 PDFs filed** — the **IDS "Smart City Surveillance in Africa"** report (Wakabi & Roberts) filed as
  a `source` companion — the *primary* behind day-2's SCMP surveillance clip (now on [[zte]]/[[hikvision]]/
  [[huawei]]); the **UN Independent International Scientific Panel on AI Preliminary Report** filed as a
  `source` companion (updates [[un-ai-scientific-panel]]; 8 African panel members); and **GovLab's
  "Re-Use of Non-Traditional Data"** compilation as a `resource` ([[govlab-nontraditional-data-compilation]],
  needs-review, entries not promoted).

**Dedup (attached, not duplicated)**
- **Benin fID/WURI/ANIP** — the 2024 terminal-donation and World-Bank-blog outcomes pieces are the same
  programme → both on [[anip-benin]]/[[wuri-programme]]; the Biometric-Update search page parked.
- **US health MOUs** — the Zambia rejection (Guardian/Africanews) parallels [[zimbabwe-us-health-mou]]
  and [[us-kenya-health-framework]] → new [[zambia-us-health-mou]] deal + shared
  [[america-first-global-health-strategy]] pattern. The **$367m** Zimbabwe figure is now **corroborated**
  (Africanews), reducing the day-2 $350m/$367m conflict to a rounding/draft-stage difference.
- **Safaricom Ethiopia** 12m and **M-PESA +258%** are one event, folded together.
- **PAPSS** 2022 profiles (African Business, US ITA) attached as dated backfill to [[papss]]/[[afreximbank]].
- **Orange Sat** appears twice (same CIV launch) → one event on [[orange-cote-divoire]].
- **Cameroon ANTIC/PATNUC** cyber procurement — two pieces, one event.

**Pages created**
- **12 country hubs** ([[BFA]], [[CMR]], [[COG]], [[GMB]], [[LBR]], [[LSO]], [[MDG]], [[MLI]], [[SDN]],
  [[SOM]], [[SSD]], [[TUN]]) + the **[[XWA]]** West-Africa region hub — Africa is now largely hubbed.
- **1 concept:** [[digital.localgov]].
- **77 entities** — incl. the Benin DPI set ([[anip-benin]], [[asin-benin]], [[seamfix]], [[epass-benin]],
  [[cybastion]], [[securoute]], [[cdpi]], [[giz]]); ECOWAS/WA ([[wardip]], [[sigmat]], [[margins-id-group]],
  [[ecowas]]…); Ethiopia/Horn ([[ethio-telecom]], [[telebirr]], [[safaricom-ethiopia]],
  [[digital-ethiopia-2030]], [[somcable]], [[central-bank-of-somalia]], [[nira-somalia]]); small-state
  DPAs/bodies ([[national-personal-data-protection-commission-congo]], [[intic-mozambique]],
  [[antic-cameroon]], [[sudapass]], [[micsti-lesotho]], [[nissa-lesotho]]); deals
  ([[anthropic-rwanda-mou]], [[gabon-huawei-mou]], [[gambia-national-id-contract]],
  [[zambia-us-health-mou]], [[nigeria-eqguinea-subsea-cable]], [[payservices-drc-banking-deal]]);
  instruments/resources ([[gtmi]], [[cbn-policy-insight-series-2025]], [[digital-liberia-strategy]],
  [[universal-dpi-safeguards-framework]], [[opencrvs]], [[gtmi]]); AI/geopol ([[deepseek]], [[tech-corps]],
  [[martin-tisne]]); connectivity ([[ebrd]], [[tunisie-telecom]], [[medusa-submarine-cable]],
  [[orange-cote-divoire]], [[eutelsat]], [[bayobab-zambia]], [[uganda-communications-commission]]).

**Pages updated**
- Hubs: [[BEN]], [[ETH]], [[GHA]], [[ZMB]], [[NGA]], [[KEN]], [[XAF]], [[RWA]], [[MWI]], [[NAM]], [[MOZ]],
  [[CIV]], [[COD]], [[UGA]], [[SEN]], [[ZAF]].
- ~24 concept pages (dpi.id / dpi.govtech / dpi.registry / dpi.pay / dpi.exchange / the governance,
  finance, infra, geopolitics and capacity families).
- 66 existing entities had the new sources attached + a dated bullet where material ([[onafriq]] and
  [[visa]] partly de-flagged from needs-review by corroboration).
- Faceted indexes (places / topics / entities) refreshed.

**⚠ NEEDS-REVIEW / open items**
- **Nigeria & US health MOUs** (day-2 open item) persists: the AFGHS coverage says Nigeria *signed* the
  largest ($5.1bn) MOU, vs a day-1 bullet that Nigeria *rejected* US health-data deals — still to resolve.
- **PayServices–DRC** damages figure varies across filings ($400m vs up to $4bn) — recorded, not reconciled.
- **Somaliland** items mapped to **SOM** (no ISO code) — flagged in prose (Somcable, Ethio Telecom talks).
- Several sources to source at primary: the **CBN Policy Insight Series 2025** report itself, the
  **Partech/CIPIT** reports, and the **Sudan/Baldna** re-fetch.

**Scratchpad specs** `_ingest_spec.md`, `_ingest_hub_spec.md`, `_ingest_concept_spec.md`,
`_ingest_entityupd_spec.md` in `wiki/` are temporary and to be deleted post-ingest.

---

## 2026-07-11 (day 2) — Second big batch (63 dated items + 1 GSMA PDF) ingested

Same method (parallel read-only triage → central scoping/dedup/admissibility → scripted
frontmatter splice → partitioned page-writer subagents → central indexes/log). **Source records:
~188 → 250** (61 clippings spliced + 1 PDF companion). Strong sub-clusters this batch: a
**health-information-systems / DHIS2 scholarly cluster**, a **US health-data-sovereignty cluster**
(America First Global Health Strategy), Chinese **surveillance**, **satellite** connectivity, and
Africa **AI-skills / AI-sovereignty**.

**Intake screen / admissibility**
- **Parked to `raw/_leads/`** (2): `TechCabal Daily – Project BRIDGE gets $200 million` (a
  newsletter daily-digest aggregating others' reporting — mine the AfDB Project BRIDGE $200m /
  Optasia / Amazon Leo primaries); and `Google DeepMind Opens Free AI Curriculum Across Africa`
  (TechBuzz.ai — a secondary rehash of Google's own blog post; the **primary** Google blog version,
  `Broadening advanced AI education across Africa`, is compiled instead).
- **RETRACTION captured** — `RETRACTION: Ghana's National ID cards can now make payments` (TechCabal
  withdrew its 2026-04-01 story; Ghana Cards do **not** support payments). Verified **no** existing
  wiki page carried the reversed claim (dpi.id cites only ~20m Ghana Card coverage). Recorded on
  [[ghana-card]].
- **Publications** — 7 peer-reviewed HMIS/DHIS2 papers captured as `publication` entities
  ([[hmis-tanzania-pea]], [[hmis-malawi-livingstonia]], [[his-developing-countries-review]],
  [[hmis-data-use-index-ethiopia]], [[echis-ethiopia-study]], [[dhis2-maturity-ethiopia]],
  [[rhis-recording-burden-5country]]). Institutional/agency posts (DHIS2/HISP, ICTworks, Carnegie,
  Facephi) kept as `source`, not publication.

**Dedup (attached, not duplicated)**
- **Liquid C2 × Google Cloud Partner Experience Centre** — one event, 3 sources (htxt, IT-Online,
  Cassava-Tech); folded onto [[liquid-c2]]/[[cassava-technologies]].
- **Equinix SA $438m / R7.5bn** — the "$438 million" and "R890m land" pieces are the same
  investment → one deal [[equinix-sa-438m-expansion]], two sources.
- **Zambia digital ID** — the "MOSIP system integrator" and "seeks partner" pieces are the same
  procurement → both on [[smart-zambia-institute]].
- **GSMA mobile-money 2026** — the SOTIR PDF + the Ecofin "Mobile Money in Africa" clipping →
  one companion source [[2026-03-01 GSMA State of the Industry Report on Mobile Money 2026]].
- **Ghana $250m AI push** — the "AI Hub/Strategy" and "Huawei training" pieces link to one
  programme → [[ghana-national-ai-strategy]].
- Rwanda's **[[nida-rwanda]]** created distinct from the existing [[nida-tanzania]] (both are NIDAs).

**Pages created**
- **3 country hubs:** [[SEN]], [[CIV]], [[NER]].
- **1 concept:** [[data.satellite]].
- **2 intersections:** [[kenya--gov-protect]] (US health-data-sharing vs the Kenya DPA; High Court
  freeze), [[ethiopia--dpi-mis]] (the Ethiopia HMIS study cluster).
- **51 entities** — incl. instrument [[america-first-global-health-strategy]] + deals
  [[us-kenya-health-framework]]/[[zimbabwe-us-health-mou]]; the 7 HMIS publications + [[echis-ethiopia]]/
  [[ethiopia-moh]]/[[hisp-centre]]/[[open-data-watch]]; digital ID ([[nida-rwanda]], [[wuri-programme]],
  [[ecowas]], [[alliance-of-sahel-states]], [[sars]], [[ghana-card]], [[ngea]], [[galaxy-backbone]]);
  infra/satellite ([[icasa]], [[cran]], [[watra]], [[uneca]], [[nigcomsat]], [[helios-towers]],
  [[globalstar]], [[amazon-globalstar-acquisition]], [[wingu-africa]]); deals/payments
  ([[equinix-sa-438m-expansion]], [[mtn-sa-2026-investment]], [[ethswitch]], [[sarb]],
  [[kenya-revenue-authority]], [[new-deal-technologique]], [[dhet-south-africa]]); AI/skills/surveillance
  ([[google-deepmind]], [[google-ai-research-foundations]], [[hustle-academy]],
  [[ghana-national-ai-strategy]], [[microsoft-elevate]], [[nasa-harvest]], [[catherine-nakalembe]],
  [[zte]], [[hikvision]]); people ([[taslim-okunola]], [[tiara-pathon]], [[kashifu-inuwa]], [[odpc-kenya]]).

**Pages updated**
- Hubs: [[NGA]], [[ZAF]], [[KEN]], [[XAF]], [[ETH]], [[TZA]], [[ZWE]], [[ZMB]], [[RWA]], [[GHA]],
  [[UGA]], [[MOZ]], [[MWI]], [[NAM]].
- ~24 concept pages (dpi.mis rebuilt as an HMIS evidence base; gov.protect/geopol.usa/geopol.china
  reframed around health-data + surveillance; infra.connect/store/energy; the ID/govtech/payments/
  capacity families).
- ~36 existing entities had new sources attached + a dated bullet where material.
- Faceted indexes (places / topics / entities) refreshed.

**⚠ NEEDS-REVIEW / open contradictions**
- **Zimbabwe US health deal amount** — **$350m** (Business Insider, 2026-02-24) vs **$367m**
  (ICTworks / US Embassy). Recorded on [[zimbabwe-us-health-mou]] and the ZWE/geopol.usa pages; not
  reconciled.
- **Nigeria & the US health MOUs** — the AFGHS coverage says Nigeria **signed** the largest MOU
  ($5.1bn), which sits against a day-1 bullet (Rest of World) that Nigeria was among countries that
  **rejected** US health-data-sharing deals. Flagged inline on [[NGA]]; resolve which/when.
- **Ghana Card payments** — retraction recorded (claim false); watch for the claim resurfacing.
- **Provenance note** — one raw file (`⁠Zimbabwe rejects $350 million…`) has a leading invisible
  word-joiner (U+2060) in its name; `[[…]] links` to it must be byte-exact (writers used the clean
  `Zimbabwe Turns Down…` basename where possible).

**Scratchpad specs** `_ingest_spec.md`, `_ingest_hub_spec.md`, `_ingest_concept_spec.md`,
`_ingest_entityupd_spec.md` in `wiki/` are temporary and to be deleted post-ingest.

---

## 2026-07-11 — Big batch (59 dated items + 4 backlog PDFs) ingested

Method (as in the 2026-07-10 batch): facets/provenance extracted by parallel read-only
agents; scoping, dedup and admissibility decided centrally; source frontmatter spliced
in place by a controlled script (bodies untouched); new pages + hub/concept/entity
updates written by page-writer subagents to fixed specs, partitioned one-writer-per-file;
indexes and the log wired centrally. **Source records: ~130 → ~188** (58 clippings spliced
+ 1 PDF companion).

**Intake screen / admissibility**
- **Parked to `raw/_leads/`** — `2026-07-11 The Digital Renaissance of African Trade Scaling
  AfCFTA with Blockchain` (ICOYACA advocacy blog, "Ambassador Salim Kim W."; unsourced,
  AI-toned "mathematical certainty" figures). Mine for primaries: the AfCFTA **ADAPT**
  initiative (WEF/IOTA/Tony Blair Institute) and the **PAPSS–Interstellar** currency
  marketplace.
- **Compiled but flagged `needs-review`** — `Visa and M-Pesa Launch Blockchain Stablecoin
  Pilot in DR Congo` (Streamline Feed, a low-authority aggregator with no clear primary
  citation). Source + [[visa]]/[[onafriq]]/[[visa-mpesa-onafriq-drc-stablecoin-pilot]] pages
  carry `status: needs-review`; corroborate against Visa/Safaricom/Onafriq primary releases.
- **Kept as external analysis** — the Tech Policy Press / AI Now "What Europe's AI Market
  Actually Looks Like" series (no African place) is retained tagged `XGL`/`geopol.eu`, in
  the existing EU tech-sovereignty cluster as a mirror for Africa's dependency debate.
- **Entity-profile clips** (no single event) captured as entities, not discarded: AWS-in-Africa
  (→ [[amazon-web-services]]), Cybernetica (→ [[cybernetica]]), DIAL Digital ID Assessment
  (→ [[digital-id-assessment]]), DHIS2 Shared Services Fee (→ [[dhis2]]), UXP Directory
  (→ [[uxp-benin]]), and the **DIODE Publications list** — filed as a single `resource`
  [[diode-network]] with `status: needs-review` per the new bibliography rule (entries **not**
  promoted at intake).

**Dedup (attached, not duplicated)**
- Microsoft SA **$329m ≈ R5.4bn** expansion — the Business Insider (2026-04-17) and
  MyBroadband/Joburg-ETC (2026-04-15) pieces are the **same event**: one node
  [[microsoft-sa-2026-expansion]], two sources.
- Two distinct **Meta–Nigeria penalties** kept separate: the **$222m FCCPC** competition
  penalty ([[fccpc]], under appeal) vs the **$32.8m NDPC** data-protection fine (waived).
- Fayda / NIDP treated as one programme — no separate `nidp-ethiopia`; both new items update
  [[fayda-ethiopia-national-id]]. ST Digital Togo linked to the existing [[st-digital-gabon]]
  group rather than a parallel entity.

**Pages created**
- **6 country hubs:** [[BEN]], [[MOZ]], [[MUS]], [[TGO]], [[TZA]], [[UGA]].
- **2 concepts:** [[dpi.registry]], [[dpi.mis]].
- **2 intersections:** [[nigeria--infra-store]] (power/policy, not racks, the ceiling on
  Nigeria's DC estate), [[south-africa--dpi-id]] (SA digital-ID launch + contested DHA regs).
- **~51 entities.** Orgs/bodies: [[african-development-bank]], [[afreximbank]], [[africa-cdc]],
  [[dial]], [[id4africa]], [[eac]], [[estdev]], [[atdi-mozambique]], [[nida-tanzania]],
  [[sin-togo]], [[fccpc]], [[nsia]], [[malawi-revenue-authority]], [[global-center-on-ai-governance]],
  [[paris21]]. Companies: [[orange]], [[cybernetica]], [[realtyme]], [[peach-payments]],
  [[kasi-cloud]], [[axiz]], [[visa]], [[onafriq]], [[sama]]. Initiatives/products:
  [[nafa]], [[adli]], [[sadx]], [[via-africa-cable]], [[nucap]], [[govguide-nigeria]],
  [[google-for-startups-accelerator-africa]], [[lome-data-centre]] (resource), [[uxp-benin]]
  (resource), [[dhis2]] (resource), [[diode-network]] (resource). Instruments:
  [[digital-id-assessment]], [[afcfta-digital-trade-protocol]], [[mozambique-cyber-security-law]],
  [[sa-digital-id-regulations]], [[global-index-on-responsible-ai]], [[wbg-dpi-white-paper]].
  Publication: [[2026-07-11 data-systems-crossroads]]. Person: [[sidi-ould-tah]]. Deals:
  [[microsoft-sa-2026-expansion]], [[gates-anthropic-partnership]], [[estdev-smart-africa-mou]],
  [[mozambique-ethiopia-dpi-mou]], [[smart-africa-realtyme-partnership]],
  [[sin-st-digital-lome-cloud-deal]], [[visa-mpesa-onafriq-drc-stablecoin-pilot]].

**Pages updated**
- Hubs: [[NGA]], [[ZAF]], [[KEN]], [[XAF]], [[ETH]], [[COD]], [[MWI]], [[RWA]], [[XEA]].
- ~28 concept pages across DPI / infrastructure / governance / technology-geopolitics /
  cross-cutting (finance, inclusion, capacity, statistics).
- ~40 existing entities had the new sources attached + a dated bullet where material (Seacom
  2.0, Starlink/SpaceX, MOSIP, Fayda, Smart Africa, AfCFTA, Meta, Microsoft, AWS, CBN, PAPSS,
  NCC, Anthropic, Google, Equinix, World Bank, POPIA, SITA, …).
- Faceted indexes (places / topics / entities) refreshed.

**4 backlog PDFs filed**
- `GSMA DRC Digital Economy Report 2025` — new `source` companion (attachment), place [[COD]].
- [[global-index-on-responsible-ai]] (GIRAI 2nd ed.) + publisher [[global-center-on-ai-governance]].
- [[wbg-dpi-white-paper]] (WBG DT White Paper Vol 1, Mar 2025).
- [[2026-07-11 data-systems-crossroads]] (PARIS21 Discussion Paper 22) + [[paris21]].

**⚠ NEEDS-REVIEW / open items**
- **Visa–M-Pesa–Onafriq DRC** stablecoin pilot — provenance weak (aggregator); verify.
- **Afreximbank president** — source body says Benedict Oramah, caption says "George Elombi";
  confirm before asserting on [[afreximbank]].
- **Mozambique Cyber Security Law** — source gives an internally inconsistent implementation
  cost (160m vs 167,257.94m meticais); recorded on [[mozambique-cyber-security-law]], not
  reconciled.
- **Figure conflicts flagged in-text, not overwritten:** DC build cost ~$12/watt vs the older
  ~$15m/MW; the new "223 DCs / 38 countries" counts vs older city-level counts (infra.store /
  infra.energy).
- **[[diode-network]]** bibliography — `needs-review`; promote individual works to `publication`
  only on deliberate review or when cited.

**Contradictions:** none requiring `needs-review` beyond the figure conflicts noted above.

**Scratchpad specs** `_ingest_spec.md`, `_ingest_hub_spec.md`, `_ingest_concept_spec.md`,
`_ingest_entityupd_spec.md` in `wiki/` are temporary and to be deleted post-ingest.

---

## 2026-07-10 — Overnight backlog batch (STEP 2): the outstanding raw/ items ingested; duplicates deleted

Ingested the whole remaining backlog. Facets extracted by parallel read-only agents; scoping,
dedup and admissibility decided centrally; source frontmatter spliced in place (bodies
untouched); new pages written centrally + by page-writer subagents to fixed specs; indexes and
cross-links wired centrally. **Source records: 78 → ~129.**

**Deleted (duplicates / discard)**
- `Google Summit in Africa 2026.md` — **identical** to the already-ingested
  [[2026-07-01 Google Cloud Summit in Africa Highlights the Continent's Digital Transformation and Unveils New Agentic AI and Infrastructure Investments]] (same googlecloudpresscorner release). Deleted.
- `Creating a Competitive Marketplace for Compute.pdf` — **byte-identical** (md5 confirmed) to
  `2025-01-01 Eaves commodification.pdf`, already ingested as [[2025-01-01 Eaves commodification]] ("Parting Clouds").
  Deleted the redundant copy.
- `2026-07-10 Digital Sovereignty Assessment.md` — **blank rready lead-gen capture** (no body,
  no author/date); genuine non-intelligence → discarded per CLAUDE.md.

**Parked to `raw/_leads/`**
- `Profiles of African infrastructure companies.pdf` — the author's **own, AI-generated
  (Perplexity Deep Research)** 165-page compilation. Doubly inadmissible as a source; kept as a
  **lead** — the 12 African-owned infra firms it profiles (Angola Cables, WIOCC/OADC, Axian,
  CSquared, Onix, Wingu, ST Digital, etc.) are entity candidates once re-sourced to primaries.

**Dedup (attached, not duplicated)**
- [[2026-07-09 Africa benefits from connectivity milestone]] (ITWeb) = the same **P2C >$100bn
  WSIS-Forum-2026 milestone** already on [[partner2connect]] → attached as a second source, not a
  parallel page (folded in "~25% offline", ITU "$2.6–2.8tn by 2030").
- **AWS Outposts Rwanda** — Montjalinews + TechReview are the **same event** → one deal
  [[aws-outposts-rwanda]], two sources.

**Sources ingested (frontmatter spliced)** — the Strive Masiyiwa / Cassava / Econet / Liquid
biography+corporate cluster (13), the Cassava/Liquid/Google cloud releases (Gemini, NSC, CAIMEx,
Liquid×3, GDC), AWS Outposts ×2, and standalone sources (Development Gateway/USAID, Wired-Europe,
Gillwald "Davos→New Delhi", SA broadband map, UN AI panel, MOSIP webinar, Mazzucato/Eaves DPI
paper, HBR-2019). Plus **7 PDF companion source records** (Club-de-Madrid/RIA DPG, NetHope AI,
the SA DBSA study, and the four 2021–2024 **Development Initiatives** reports by [[bill]] et al.).

**Pages created**
- **1 concept:** [[data.statistics]] (national statistics; the US-aid-freeze shock + the DI
  bottom-up thesis).
- **2 instruments:** [[itu-global-connectivity-report-2025]], [[world-development-report-2025]].
- **~24 entities.** Companies: [[econet-wireless]], [[africa-data-centres]], [[liquid-c2]],
  [[cassava-ai]], [[amazon-web-services]], [[sand-technologies]]. Initiatives/products:
  [[cassava-ai-factories]], [[national-sovereign-cloud]], [[caimex]], [[aisca-foundation]],
  [[africa-medical-supplies-platform]], [[ecocash]]. Deal: [[aws-outposts-rwanda]]. Orgs:
  [[development-gateway]], [[un-ai-scientific-panel]], [[dbsa]], [[club-de-madrid]], [[nethope]].
  Gov-body: [[usaid]]. Resource: [[sadis-2025]]. People: [[strive-masiyiwa]], [[mariana-mazzucato]].
- **2 intersections:** [[ethiopia--dpi-id]] (Fayda/MOSIP flagship — 46m registered,
  auth-as-a-service), [[south-africa--infra-connect]] (Sadis 2025 broadband map / gaps).

**Pages updated**
- **[[cassava-technologies]]** refactored into a **group hub** indexing ADC/Liquid/Cassava-AI/
  AI-factories (hygiene: hub-as-index, detail on subsidiary pages).
- Entities: [[google]] (Gemini deal, GDC, "Google in Africa" audit), [[anthropic]] (2024
  Liquid deal, CAIMEx), [[mosip]] (ecosystem scale, ETH), [[partner2connect]], [[david-eaves]] +
  [[ucl-iipp]] (Mazzucato DPI paper, DPI Map), [[research-ict-africa]] (Gillwald ×2), [[itu]],
  [[nvidia]], [[american-ai-exports-program]], [[gates-foundation]], [[openai]], [[huawei]],
  [[afcfta]], [[smart-africa]], [[seacom]], [[meta]], [[world-bank]].
- Place hubs: [[ZWE]] (Econet/EcoCash/Masiyiwa), [[RWA]] (AWS Outposts, AISCA, Gates/OpenAI),
  [[ZAF]] (Cassava AI factory, Liquid Experience Centre, Sadis, G20), [[ETH]] (Fayda/MOSIP,
  USAID), [[KEN]], [[NGA]].
- All faceted indexes (entities/topics/places) + [[index]] (count + batch narrative).

**Analytical through-lines (cross-links, not contradictions)**
- **The sovereignty dividing line.** Cassava's stack is African at the app layer but US at
  chip/cloud/model layers (CLOUD-Act-reachable) — the [[bill]] essay
  [[2026-06-16 The digital sovereignty dividing line]] threads [[cassava-technologies]],
  [[liquid-c2]], [[anthropic]], [[nvidia]], the [[google]] Gemini deal, and [[national-sovereign-cloud]].
- **Regional, not national, localisation.** The DI 2024 compacts paper → the 2026 "backup"/
  "same road twice" essays converge on REC-level localisation as the escape from the CLOUD-Act
  ceiling — cross-linked via [[gov.regional]], [[afcfta]], [[smart-africa]].
- **Data creation precedes DPI/AI.** [[data.statistics]] + the US-aid-freeze shock ([[usaid]])
  vs the sovereign-AI spend — you cannot govern data that was never created.

**⚠ Open items / flags for the human**
- **AI-methodology sources (lint #6 tension):** [[2026-03-31 Africa we have a data problem]]
  (Perplexity+Claude) and [[2026-01-08 African smart cities A critical analysis]] (Perplexity)
  ingested as the author's published analysis **with methodology caveats**; confirm they stand
  as analysis or should be down-graded to leads. The two `/lab` datasets (data-centre register;
  cable factsheet) similarly carry AI-compilation caveats.
- **Weakly-sourced figures to verify:** Cassava **$720m / 3,000–15,000 GPU** counts (Ecofin +
  niche blog citing TIME); AMSP **Afreximbank $3bn vs $3.8bn**; Masiyiwa biography conflicts
  (license 1997 vs incorporated 1998; wealth; orphan counts) — reconciled as dated "as of" on
  [[strive-masiyiwa]], not averaged.
- **Approximate dates** (frontmatter blank on capture): AISCA (~2025), Ecofin (~2026), Stanford
  & Tools-and-Weapons (~2023), NYU Stern (~2015), Milken AMSP (2020-06), GDC/Liquid-interconnect
  (~2026) — backfill if used in publication.
- **⚠ PRE-EXISTING lint #4 (not introduced tonight):** a vault link-scan found earlier-batch
  **body** wikilinks that omit the `2026-07-10 ` filename prefix (e.g. `[[How AI Keeps Europe
  Hooked on US Cloud]]`, `[[2026-06-08 The Promise and Limits of African Data Sovereignty]]`, `[[A Kenya
  Technology Prosperity Deal…]]`) — their `sources:` frontmatter is correct but the prose links
  don't resolve; plus concept pages linking non-hubbed place codes ([[EGY]], [[SEN]], [[TZA]],
  [[UGA]], [[XSA]]). Tonight's new pages resolve cleanly. **Recommend a dedicated link-fix lint
  pass** (say the word and I'll normalise the old links / stub the place hubs).
- **Leads harvested** (from the DL essays / Profiles PDF, for future ingest as primaries): AU
  DTS 2020–2030, AU Data Policy Framework, AU Continental AI Strategy, **Malabo Convention**,
  AfCFTA Digital Trade Protocol; US **CLOUD Act**, EOs 14179/14320, NIST AI Agent Standards;
  Zimbabwe National AI Strategy; SADX / ADAPT / IOTA / TWIN; OpenAI **Horizon 1000**; the 12
  African-owned infra operators. See the Profiles PDF in `_leads/`.

**Contradictions:** none new against existing pages (figure conflicts handled as dated ranges).

---

## 2026-07-10 — CLAUDE.md "the author's own work" + Data Landscapers ingested as expert analysis (STEP 1 of the overnight batch)

The human amended CLAUDE.md (**"The author's own work"**): the trigger is **publication** —
Bill Anderson's *published* work on data-landscapers.com is admissible as a source, treated
as **external expert analysis/commentary** (cited by author + publisher, dated by publication,
tagged as analysis), subject to **three circularity guards** (no re-ingesting pieces that
merely render wiki pages; facts still trace to primaries; self-citation always attributed,
never presented as independent corroboration). **This reverses the earlier-in-session default**
of parking the author's own essays as house-analysis leads.

**Entities created / completed** (skeletons placed by the human, completed from the live
data-landscapers.com **About page** only — nothing invented):
- **[[bill]]** (person; renamed from the placed `bill-anderson.md` so `[[bill]]` resolves;
  `aliases: [bill, Bill Anderson]`). Systems architect; **Data Landscapers Ltd** (UK company);
  former IATI technical lead / data-standards advisor and **Development Initiatives** data-
  ecosystems programme lead (14 yrs, to its **Oct 2024 liquidation**); SA-liberation-struggle
  veteran / former ANC military-intelligence data-processing officer. Profile/CV/LinkedIn/GitHub
  links recorded. *(Founding year of the practice not stated on the site — not inferred.)*
- **[[data-landscapers]]** (organisation; publisher). Editorial spine recorded: *CLOUD-Act
  jurisdiction defeats residency → single-country localisation is self-defeating → regional
  (REC-level) localisation by African-owned operators is the escape route.*

**Sources ingested — the 9 data-landscapers.com `/writing` essays** (author `[[bill]]`, publisher
`[[data-landscapers]]`, dated by publication, tagged as expert analysis; frontmatter spliced in
place, bodies untouched):
[[2026-06-16 The digital sovereignty dividing line]] (06-16),
[[2026-06-11 Can Africa supply it's own digital infrastructure]] (06-11),
[[2026-06-03 The system's crashed. Where's the backup]] (06-03),
[[2026-05-28 Building the same road twice]] (05-28),
[[2026-05-20 Google in Africa]] (05-20),
[[2026-03-31 Africa we have a data problem]] (03-31),
[[2026-02-27 You can have any AI stack you like, so long as it's American]] (02-27),
[[2026-01-28 A bit of quality assurance advice for Bill Gates]] (01-28),
[[2026-01-08 African smart cities A critical analysis]] (01-08).

**Circularity-guard decisions**
- **Guard 1 (no self-rendering):** none of the 9 was a mere rendering of existing wiki pages —
  each adds original analysis/framing (the wiki was built from independent news sources, not
  from these essays), so none skipped. "Google in Africa" explicitly *adds* framing beyond the
  [[google]] hub.
- **Guard 2 (facts→primaries):** ingested for their **analysis**, not as fact shortcuts. Each
  source record names the primaries its figures trace to. The essays' companion **`/lab`
  datasets** (Sub-Saharan data-centre register; submarine-cable factsheet) and the AI-generated
  **`Profiles of African infrastructure companies.pdf`** are treated as **leads/reference data**
  (mine for primaries), not fact sources — handled in STEP 2.
- **⚠ AI-methodology flags (lint #6 tension):** **"Africa we have a data problem"** (Perplexity +
  Claude across 54 countries) and **"African smart cities"** (Perplexity) are self-described
  AI-assisted/AI-generated. Ingested as the author's published analysis **with an explicit
  methodology caveat** on each record; their compiled country-level figures are flagged as
  author-compilation, to be re-sourced to primaries via each piece's own bibliography. **Flag
  for the human:** confirm these two should stand as analysis sources, or be down-graded to leads.

**Wired:** [[bill]] added to entities-index **People**; [[data-landscapers]] to **Organisations**.
Topic/place-index facet refresh and full cross-linking of these sources into place/entity/concept
pages are folded into the STEP-2 batch pass below (same session), to avoid double-editing the
faceted indexes.

**Note on the DI PDFs:** the four 2021–2024 `Development Initiatives` PDFs are Bill's *named,
institutionally-published* reports → admissible as external analysis (not data-landscapers.com,
but published under a named publisher); ingested in STEP 2.

---

## 2026-07-10 — CLAUDE.md `instrument` entity type + the "latest batch" (9 sources, 2 instruments)

The human amended CLAUDE.md to add the **`instrument`** entity type — a published standard,
taxonomy, framework, or policy/legal instrument that exists as a reference object in the
domain (e.g. the WB DT taxonomy, Malabo Convention, AU Data Policy Framework, MOSIP specs,
GDPR) — and clarified that **external** standards/taxonomies/policy instruments are **never
discards** (only the wiki's *own* config/vocabulary files are). Then ingested the remaining
un-ingested `raw/` items — the "latest batch."

**Batch scope (10 items → 9 sources + 1 instrument document)**
- 7 clippings: [[2026-07-09 Anthropic's Claude to bolster data sovereignty in SA]] (ITWeb),
  [[2026-07-08 FG Halts Enforcement of New Regulations on Internet Platforms]] (Nigeria),
  [[2026-07-09 ITU's Partner2Connect crosses $100 billion in global connectivity pledges]],
  [[2026-07-10 Kenya and U.S. Discuss Draft Data Governance Policy to Strengthen Digital Economy]],
  [[2026-07-09 NIMC Act 2026 Director-General Coker-Odusote Launches 8,809-Ward Digital ID Drive]],
  [[2026-07-09 Smart Africa and AFNIC Partner to Strengthen Africa's Internet Infrastructure]],
  [[2025-01-01 South African Digital Sovereignty at the Crossroad of Securitization and Development (Chapter 4) - Digital Sovereignty in the BRICS Countries]] (Cambridge book chapter).
- 2 PDFs → new companion source records: [[2026-05-01 Understanding-MOSIP-Biometric-Update-report]]
  (Biometric Update explainer, admissible reference report per CLAUDE.md) and
  [[2026-01-01 Digital Public Infrastructure in Africa - UNDP]] (UNDP RBA/DAI-Hub policy paper).
- 1 instrument document: `2026-07-10 World Bank Theme Taxonomy.md` — **not** a source.

**⭐ First `instrument` entities**
- **[[world-bank-theme-taxonomy]]** — the WB Theme Taxonomy (June 2025). **This reverses the
  2026-07-10 discard of `wb-taxonomy-2025.pdf`** (it was admissible but had no home before
  the `instrument` type). The raw capture was given `type: instrument` frontmatter (linked
  to the entity via `documents_entity`) and **retained** as the archived full text —
  *judgment call*: unlike the PeeringDB resource capture (consumed + deleted), a 1.1MB
  full-text reference document is worth keeping as an auditable attachment. Flag if the
  human prefers it deleted.
- **[[popia]]** — SA Protection of Personal Information Act 2013, a recurring reference
  object across the Anthropic and BRICS-chapter sources. Added an **Instruments** section to
  `entities-index.md` and `instrument` to the `index.md` entity-type authority.

**Dedup / update decisions**
- **NIMC ward drive = update, not new event.** The 8,809-ward drive extends the existing
  NIMC Act 2026 / NIN thread → folded into [[nimc]], [[nigeria-id4d]] and the intersection
  [[nigeria--dpi-id]] (not a parallel page).
- **FG regulatory halt** → attached to the existing [[nigeria--gov-protect]] intersection
  (the NCC/NITDA/NDPC harmonisation committee) + new [[bosun-tijani]] / [[ncc]] entities.
- **Anthropic/TrendAI** — vendor claims are single-sourced (one ITWeb interview);
  ingested with an explicit "corroborate before use" caveat on [[anthropic]]/[[trendai]]/
  [[ZAF]]. (Ingested neutrally despite being about Claude itself.)

**Pages created**
- **2 instruments:** [[world-bank-theme-taxonomy]], [[popia]].
- **10 other entities:** companies [[anthropic]] [[trendai]]; orgs [[itu]] [[smart-africa]]
  [[afnic]] [[research-ict-africa]]; gov-body [[ncc]]; initiative [[partner2connect]]; deal
  [[smart-africa-afnic-mou]]; person [[bosun-tijani]].
- **1 intersection:** [[south-africa--gov-protect]] (POPIA vs Draft Data & Cloud; sovereign AI).
- **No new concepts or place hubs** — every topic/country in the batch already had one
  (lean batch by design).

**Pages updated**
- **Entities:** [[mosip]] (report + UGA/ETH/SLE/MAR case studies, dpi.pay/tech.industry),
  [[undp]] (flagship DPI paper), [[world-bank]] (added a *Reference instruments* section →
  the taxonomy), [[nimc]], [[nitda]], [[ndpc]], [[nigeria-id4d]], [[gsma]], [[microsoft]]
  (P2C pledges), [[gates-foundation]], [[afcfta]] (UNDP + Smart Africa link),
  [[us-department-of-state]] (Kenya track).
- **Place hubs:** [[ZAF]] (BRICS chapter, Anthropic sovereign AI, Telkom P2C),
  [[NGA]] (FG halt, ward drive), [[KEN]] (US data-gov talks, MS rural hubs), [[XAF]]
  (Smart Africa/AFNIC, UNDP DPI paper, P2C).
- **Concepts — prose (9):** gov.standards (first-instrument note), gov.protect, dpi.id,
  gov.regional, tech.ai, infra.cybersec (was a stub — substantially expanded), infra.connect,
  geopol.usa, gov.policy.
- **Concepts — source-linkage only (10):** gov.legislate, dpi.exchange, geopol.eu,
  geopol.china, include.divides, capacity.training, infra.store, tech.industry,
  include.access, finance.new. *(Prose enrichment flagged pending, as in prior batches.)*
- **Deferred entirely:** dpi.pay, dpi.govtech — touched only lightly by the UNDP paper,
  which is already reachable from dpi.id/gov.regional/gov.policy and its own source record.
- All three faceted indexes + `index.md` (69 → **78 sources**; +2 instruments).

**Analytical through-lines (cross-links, not contradictions)**
- **"Sovereign AI" becomes a procurement category.** The [[trendai]]/[[anthropic]] SA
  data-centre reframes data-residency compliance ([[popia]] §72/§19) as an AI product —
  the demand-side mirror of the CLOUD-Act ceiling ([[The Promise and Limits of African Data
  Sovereignty]]). Threaded via [[south-africa--gov-protect]].
- **Adequacy vs localization vs harmonisation.** Three national data-policy tracks this
  batch — SA (POPIA adequacy vs a localizing Draft Data & Cloud policy), Kenya (Draft Data
  Governance Policy, US-workshopped), Nigeria (regulatory harmonisation) — all circling the
  same sovereignty-vs-interoperability tension ([[gov.policy]], [[gov.protect]]).
- **The instrument layer.** Capturing the WB Theme Taxonomy makes explicit that *classification
  frameworks* are themselves standards/instruments of governance ([[gov.standards]]) — the
  vocabulary the Bank's own operations ([[dzap]], [[dmap]], [[nigeria-id4d]]) are coded against.
- **Continental DPI, consolidated.** The UNDP paper is now the definitive continental DPI
  reference (three layers; four barriers; AfCFTA $450bn), cross-linking the DPI concepts and
  the [[XAF]] hub.

**⚠ Open items / to verify**
- **Approximate dates:** UNDP DPI paper `published` set to **2026-01-01** (cites Dec-2025
  interviews; exact date not in the capture — backfill). BRICS book chapter dated
  **2025-01-01** ("January 2025"); **chapter author not captured** — backfill from the book.
  MOSIP report dated **2026-05** (from the PDF).
- **Best-guess URLs:** the UNDP report `url` (RBA landing page) and MOSIP report `url`
  (biometricupdate.com) — backfill exact document links if used in publication.
- **Vendor-asserted claims:** the Anthropic/TrendAI "no competitor has this" / sovereign-AI
  claims are single-sourced — verify before publication.
- **Instrument-capture retention** (WB taxonomy raw file kept, not deleted) — confirm the
  human is content with this vs the PeeringDB "consume + delete" precedent.
- **Future instrument candidates** noted on pages: AfCFTA Digital Trade Protocol, Malabo
  Convention, AU Data Policy Framework, MOSIP specs, national data policies (SA Draft Data &
  Cloud, Kenya Draft Data Governance, NIMC Act 2026) — create as `instrument` pages if they
  recur substantively.
- `raw/_leads/` unchanged (CBN circular primary; sponsored SA-operators op-ed).

**Contradictions:** none surfaced against existing pages.

---

## 2026-07-10 — CLAUDE.md `resource` entity type + PeeringDB reprocessed

The human amended CLAUDE.md to add a new **`resource`** entity type — a standing OSINT
asset (database/dataset/registry/tool/portal) consulted repeatedly — and clarified that a
`raw/` item reporting **no development and tagging no place** is **not** an automatic
discard: if it profiles a standing entity of value, it is captured as the matching entity
type (never parked as a lead, never discarded).

**Actions**
- **PeeringDB reclassified.** Previously flagged for discard, then parked as a lead; now
  captured as **[[peeringdb]]** (`entity_type: resource`; `url`, `places: [XGL]`,
  `topics: [infra.connect, infra.store]`). The raw `_leads/` capture was **consumed into
  the entity page** (filed, not discarded) and removed from `_leads/`. Future dated facts
  pulled *from* PeeringDB (e.g. IXP/facility counts by country) will be filed as normal
  `type: source` records citing [[peeringdb]].
- Added a **Resources** section to `entities-index.md`; added `resource` to the entity-type
  authority in `index.md`; updated the `index.md` status note.

**⚠ Data-integrity note (not my action).** Between parking PeeringDB and this reprocessing,
the **two Recall.it lead clippings** (`Recall Cards.md`, `Recall Cards 1.md`) **disappeared
from `raw/_leads/`** — removed externally (user/linter), consistent with the earlier
intentional-cleanup pattern. No intelligence lost: they were AI-summary leads, and the
primaries they pointed to (**du/PEACE UAE–Kenya cable**, techafricanews; **UNDP Africa
Accelerator for DPI** media advisory, undp.org) are already recorded in the batch log entry
below for separate ingestion. `raw/_leads/` now holds only the **CBN circular** (primary,
to obtain) and the **sponsored SA-operators op-ed**. Flag if this removal was unintended.

---

## 2026-07-10 — Batch ingest: the 2026-07-10 "latest batch" (43 sources)

Ingested the **43 admissible** items from the newly-added `2026-07-10 *` batch (47 files
total). All facet-extracted via parallel read-only agents; scoping/dedup decided by me;
frontmatter and pages written centrally for cross-link consistency. (Source-frontmatter
normalisation for 3 of the 6 file-batches was completed via a local shell splice after
transient API-overload killed the writer subagents — content preserved, bodies untouched.)

**Intake / admissibility (47 → 43 sources + 4 non-sources)**
- **Parked as leads → `raw/_leads/`:** `Recall Cards.md` and `Recall Cards 1.md` (Recall.it
  **AI-summary clippings** — second-hand synthesis; primaries they point to: a du/PEACE
  UAE–Kenya cable story (techafricanews) and a UNDP DPI-Accelerator media advisory
  (undp.org) — to be ingested separately). `South Africa's operators solved fintech…`
  (**sponsored/vendor op-ed** by Contactable's CEO — inadmissible per the CBN-Cencori
  precedent; its Vodacom/MTN figures are corroborated by admissible sources).
- **Flagged for discard (not compiled):** `PeeringDB.md` — an interconnection-database
  homepage capture that reports no development and tags no place (same category as the
  earlier `wb-taxonomy` discard). **Left in `raw/` pending human confirmation** to delete.
- **Borderline-scope, ingested as global context:** the two Tech Policy Press EU pieces,
  the ITIF EU piece, and Microsoft Frontier Company — non-African (XGL) but retained for
  their sovereignty/hyperscaler-dependency parallels; Frontier tagged lightly.

**Dedup / update decisions**
- **Google Cloud Summit (press release) + Google-$1bn (Reuters)** = the **same 2026-07-01
  event** → both attached to shared pages, no parallel pages.
- **Seacom "boosts EA" (ITWeb) + Seacom Nairobi–Kampala (first-party)** = **same event**
  → both on [[seacom]]; noted as **distinct from Seacom 2.0** (subsea vs terrestrial).
- **Nigeria "130M" (Biometric Update, Jun 5)** = an **earlier data point** in the existing
  NIN thread → reconciled the timeline on [[nigeria--dpi-id]]/[[NGA]] (**123.9M Oct 2025 →
  130M Jun 2026 → 136M Jul 2026 → 180M target Dec 2026**; project total **$430m**); no new
  page.
- **Microsoft–G42 Kenya (DCD, Jul 9)** = **update** to an existing thread → created the
  deal entity [[microsoft-g42-kenya-datacenter]] (`needs-review`; live/evolving), also
  cited by Carnegie and the sovereignty essay.
- **UAE $1bn (Nov 2025) vs UAE–Kenya (Jun 2026)** = related but **separate** events.

**Pages created**
- **2 concepts:** [[data.open]], [[infra.capacity]]. (`data.satellite` deliberately *not*
  created — the batch's satellite items are **connectivity**, filed under [[infra.connect]].)
- **7 place hubs:** countries [[TCD]] [[COD]] [[SWZ]] [[ZWE]] [[AGO]]; regions [[XSS]] [[XEA]].
- **~39 entities** — companies [[google]] [[microsoft]] [[vodacom]] [[starlink]] [[g42]]
  [[equinix]] [[meta]] [[nvidia]] [[paratus]] [[telecom-namibia]] [[trident-digital-tech]]
  [[openai]]; orgs [[gsma]] [[ifc]] [[african-union]]; gov-bodies [[nitda]] [[ndpc]]
  [[us-department-of-state]] [[rwanda-national-ai-agency]] [[ethiopian-ai-institute]] [[uae]];
  initiatives [[technology-prosperity-deal]] [[pax-silica]] [[uae-ai-for-development-initiative]]
  [[us-auc-strategic-investment-working-group]] [[mesob-platform]] [[rdc-pass]]
  [[eswatini-digital-transformation-project]] [[kenya-data-marketplace]] [[servernah-cloud]];
  deals [[ifc-airtel-africa-loan]] [[microsoft-g42-kenya-datacenter]]
  [[telecom-namibia-angola-deals]] [[powertel-paratus-fibre-corridor]] [[ndpc-meta-settlement]];
  people [[jane-munga]] [[william-ruto]] [[cyril-ramaphosa]] [[ralph-mupita]]
  [[paula-ingabire]] [[emma-theofelus]] [[felix-tshisekedi]] [[abiy-ahmed]].
- **2 intersections:** [[kenya--tech-ai]], [[south-africa--infra-store]].

**Pages updated**
- **Place hubs:** [[KEN]] [[ZAF]] [[NGA]] [[NAM]] [[ETH]] [[RWA]] [[ZMB]] [[GHA]] [[XAF]].
- **Existing entities (source + activity appended):** [[seacom]] [[mtn-group]] [[safaricom]]
  [[airtel-africa]] [[afcfta]] [[mosip]] [[huawei]] [[cbn]] [[smart-zambia-institute]]
  [[nimc]] [[nigeria-id4d]] [[world-bank]] [[american-ai-exports-program]]
  [[us-department-of-commerce]] [[gates-foundation]].
- **Concepts — full prose updates (10):** tech.ai, infra.connect, infra.store, geopol.usa,
  geopol.eu, gov.protect, dpi.id, gov.regional, gov.standards, finance.new.
- **Concepts — source-linkage updates (14):** geopol.china, gov.legislate, gov.policy,
  dpi.exchange, dpi.govtech, dpi.pay, infra.energy, finance.mou, tech.industry,
  tech.innovate, include.divides, include.access, capacity.training, capacity.research.
  *(These got the new sources added to their `sources:` lists but not expanded prose this
  pass — flagged for a future enrichment pass.)*
- **Intersections:** [[nigeria--dpi-id]] (130M/$430m + interop caveat), [[nigeria--gov-protect]]
  (Meta/NDPC + silos).
- All three faceted indexes + `index.md` (**26 → 69 sources**; +5 country + 2 region hubs).

**Analytical through-lines (cross-links, not contradictions)**
- **Capacity is the binding constraint.** Power/bandwidth/compute — not capital or will —
  now gates ambition (Microsoft–G42 grid stall; Equinix water/power; the "~1% of global DC
  capacity" figure). New concept [[infra.capacity]] threads this.
- **The AI-partnership scramble.** US TPD/Pax Silica ([[jane-munga]]/Carnegie), UAE $1bn +
  the Gulf-bridge triangle ([[uae]]/[[g42]]), Google's $1bn+ summit, and national AI
  agencies (Rwanda/Ethiopia) — read against the recurring "capability vs dependence" question.
- **Sovereignty-as-agency vs the CLOUD-Act ceiling.** [[The Promise and Limits of African
  Data Sovereignty]] + the EU pieces show even sovereign framings ([[servernah-cloud]],
  "trusted data zones") sit on US stacks reachable by US courts — Europe faces the same bind.
- **Open-standards / vendor-independence** deepens: Zambia's open-source directive + NSDI,
  the Warwick/Turing "governance not tech" study, MOSIP–Fime — cross-linked with the
  existing Eaves/[[gov.standards]] thread.

**Resolved same day (2026-07-10, human decisions)**
- **`geopol.gulf` ADOPTED.** Human un-commented the slug in `taxonomy.md`. Applied:
  created concept [[geopol.gulf]]; tagged 5 sources (UAE $1bn, UAE–Kenya, Carnegie,
  Microsoft–G42 stall, sovereignty essay), 6 entities ([[uae]], [[g42]],
  [[uae-ai-for-development-initiative]], [[pax-silica]], [[microsoft-g42-kenya-datacenter]],
  [[technology-prosperity-deal]]), hubs [[KEN]]/[[XAF]], the [[kenya--tech-ai]] intersection,
  and the topics/entities indexes. (`geopol.usa` retained alongside where the US is also
  substantive.)
- **PeeringDB → parked** (`raw/_leads/`) per human instruction. *(Superseded later same
  day — reclassified as a `resource` entity; see the top entry.)*

**⚠ Open items / to verify**
- **Date corrections on ingest:** Carnegie `published` was garbled `2001-06-23` → corrected
  to **2026-06-23** (from URL). Several ITWeb/TechReview clippings had blank `published`;
  set from dateline/URL.
- **Verify flags set on pages:** [[rdc-pass]] / [[COD]] (confirm the 13 Jun 2026 launch
  occurred), [[eswatini-digital-transformation-project]] (thin source; no primary WB doc or
  figure), [[microsoft-g42-kenya-datacenter]] (`needs-review` — evolving).
- **Author-asserted / weakly-sourced stats:** "Who Owns Africa's Sky" contains several
  `example.com` placeholder citations (Sonatel $50m, GSMA $77bn, sub counts) — verify
  against the Africa CEO Forum/Askya report and GSMA before publication.
- **Concept-body enrichment** pending for the 14 source-linkage-only concepts above.

**Contradictions:** none surfaced against existing pages (the 130M/136M NIN figures were
reconciled as a dated timeline, not a conflict).

---

## 2026-07-10 — Ingest: latest additions (10 current-affairs sources, 2026-07-06 → 07-09)

Ingested the **10 newly-added `raw/` items** that post-dated the previous batch (all
un-normalised clippings; all **admissible** — on-the-record trade/tech reporting or
first-party government/company releases). No leads parked; the prior CBN circular lead
remains parked (now **corroborated** by the TechCabal report below, primary still to
obtain).

**Sources ingested (10)**
- [[2026-07-07 African nations recommit to operationalize AfCFTA digital single market framework]] (Biometric Update) — 2nd AfCFTA Digital Trade Forum, Lagos.
- [[2026-07-07 CBN's local data order puts Nigeria's data centres to test]] (TechCabal) — CBN data-localization directive + DC-readiness debate.
- [[2026-07-07 Ghana and UNDP Strengthen Partnership on Digital Transformation Projects]] (TechAfrica News).
- [[2026-07-07 Malawi integrates immigration e-services]] (ITWeb Africa) — Bomalathu / DMAP.
- [[2026-07-08 China funds Namibia digital infrastructure]] (ITWeb Africa) — ¥98m Smart City / Huawei.
- [[2026-07-08 Sierra Leone partners with Bhutan, Sign on digital identity platform]] (Biometric Update).
- [[2026-07-09 Nigeria seeks support to operationalize new digital ID law as NIN tops 136M]] (Biometric Update) — NIMC Act 2026.
- [[2026-07-07 Kenya's State Department of ICT and Digital Economy discusses digital partnership with Oracle]] (Tech Review Africa, 2026-07-07).
- [[2026-07-06 Safaricom Ethiopia partners National ID Program to expand digital identity registration]] (Tech Review Africa, 2026-07-06) — Fayda Lots 3 & 4.
- [[2025-11-01 Seacom's Prenesh Padayachee on the 'Seacom 2.0' subsea cable]] (Connecting Africa, ATF 2025).

**Dedup / update decisions**
- **Seacom 2.0 interview → not a new event.** Same project as the already-ingested
  DataCenterDynamics announcement; attached to [[seacom]] + [[infra.connect]] + [[ZAF]] and
  folded in phasing/economics (phase 1 by 2030, retire original 2035, $1.5–2bn raise).
- **CBN piece = same primary as the parked Cencori lead** (circular 2026-06-15, deadline
  2027-01-01). Treated as corroborating on-the-record reporting; created [[cbn]] and the
  intersection [[nigeria--gov-protect]]; circular itself still to be ingested directly.
- **MOSIP** cited (not deployed) in the Sierra Leone piece — attached as a light mention;
  SLE's own build uses the [[bhutan-ndi]] framework, not MOSIP.

**Pages created**
- **5 place hubs:** [[GHA]] [[MWI]] [[NAM]] [[SLE]] [[ETH]].
- **18 entities:** gov-bodies [[cbn]] [[nimc]]; orgs [[undp]] [[sign-foundation]]
  [[bhutan-ndi]]; companies [[huawei]] [[oracle]] [[safaricom]]; initiatives [[papss]]
  [[fayda-ethiopia-national-id]]; deals [[dmap]] [[china-namibia-smart-city]]
  [[sierra-leone-digital-id-mou]] [[nigeria-id4d]] [[safaricom-ethiopia-fayda-jv]]; people
  [[wamkele-mene]] [[samuel-nartey-george]] [[netumbo-nandi-ndaitwah]].
- **2 intersections:** [[nigeria--gov-protect]] (CBN localization + DC readiness — the
  whole TechCabal piece), [[nigeria--dpi-id]] (NIMC Act + NIN 136M→180M + ID4D).
- **No new concepts** — every topic touched already had a concept page.

**Pages updated**
- Entities: [[afcfta]] (+forum, papss, wamkele-mene), [[seacom]] (+interview), [[mosip]]
  (+SLE mention), [[world-bank]] (+DMAP, +Nigeria ID4D).
- Places: [[NGA]] (CBN + NIMC/NIN), [[KEN]] (Oracle), [[ZAF]] (Seacom interview), [[XAF]]
  (AfCFTA forum; country-hub list refreshed).
- Concepts (19): dpi.id, dpi.pay, dpi.exchange, dpi.govtech, gov.regional, gov.standards,
  gov.protect, gov.legislate, gov.policy, infra.store, infra.connect, geopol.usa,
  geopol.china, tech.ai, tech.innovate, capacity.training, finance.new, finance.mou,
  include.divides, include.access.
- All three faceted indexes + `index.md` (16 → **26 sources**; +5 country hubs).

**Scoping judgments (agent decisions, open to correction)**
- **Hubbed** all five new countries (each carries a substantive, single-source treatment).
  AfCFTA forum tagged `XAF` primary + `NGA` (Lagos host only, no Nigeria-specific claim).
- **People:** created only principals (AfCFTA SG, a minister, a head of state), matching the
  prior kagame/nilekani bar; agency DGs / execs / PSs left as named mentions in prose and
  the entities-index.
- **Deals vs finance:** each discrete MoU/JV/financing became a deal entity (DMAP,
  China–Namibia, SL ID MoU, Nigeria ID4D, Safaricom–Fayda JV); Kenya–Oracle was
  **discussions only** (no MoU) → no deal entity, no finance tag.
- **DC operators** (OADC/WIOCC, Kasi Cloud, Galaxy Backbone, Equinix) and hyperscalers
  left as mentions; the Nigeria DC-capacity figures carried on [[NGA]] + [[nigeria--gov-protect]].

**Analytical through-lines (cross-links, not contradictions)**
- The **open-standards / national-ownership** thread gains a **South–South** data point:
  Sierra Leone adopting Bhutan's open-source NDI framework — cross-linked with
  [[zambia--dpi-id]], [[mosip]] and Eaves via [[gov.standards]].
- The **externally-financed sovereignty** tension recurs across [[dmap]] (World Bank),
  [[nigeria-id4d]] (WB/AFD/EIB) and [[china-namibia-smart-city]] (China/Huawei) — the same
  "does external finance build sovereign capacity or entrench dependence?" question.
- **Data-localization** sharpens into an infrastructure test in Nigeria ([[cbn]]) and a
  local-hosting norm in Malawi ([[dmap]]).

**⚠ Open items**
- **Seacom interview date approximate** (`published: 2025-11`; ATF 2025 ≈ Nov 2025) — exact
  date not on the capture. Backfill if used in publication.
- **CBN primary circular** still to be obtained (parked lead corroborated, not replaced).
- **Author-asserted statistics** in the TechCabal / AI-cost style pieces (e.g. Nigeria DC
  MW figures, NIN counts) are single-source; verify against NIBSS/NCC/NIMC primaries before
  publication.

**Contradictions:** none surfaced against existing pages.

---

## 2026-07-10 — Batch ingest: all remaining `raw/` items (14 sources)

Ran the intake screen over every remaining `raw/` item and ingested the 14 admissible
ones. **1 item held** for human guidance; the previously parked CBN lead remains parked.

**Intake / admissibility outcomes**
- **Discarded: `wb-taxonomy-2025.pdf`** — the World Bank *Theme Taxonomy* (June 2025).
  Admissible as a primary WB document, but a **classification/methodology reference**
  (themes, sub-themes, acronyms) that reports no development and tags no place — not an
  intelligence source of record. Flagged for the human, who **confirmed 2026-07-10:
  discard**. File deleted from `raw/`; not compiled. (Not moved to `_leads/`, which is
  reserved for inadmissible syntheses.)
- **Thin capture noted:** `Kagame co-chairs global AI commission.md` (ITWeb) captured only
  the headline/lede. Admissible, but substance was drawn from the first-party
  [[2026-05-21 AI for Good Global Commission]] page; both attached to the same pages (same event).
- All other 12 items admissible (on-the-record reporting, government/first-party releases,
  or named-author analyses citing primaries). The AfCFTA/P.M. News piece is a bylined
  op-ed with a promotional angle (Senocean Law) — tagged as analysis, statistics flagged
  as author-asserted. The AI-cost piece (The Sun) similarly bylined analysis.

**PDF handling** (Read can't render PDFs; text via `pdftotext`)
- `2026-07-10 ssrn-6907425.pdf` (Triad) — the existing `The Triad…md` landing page normalised into
  the source record, PDF as `attachment` / source of record.
- `2025-01-01 dpi_conceptualisation_and_measurement.pdf` and `2025-01-01 Eaves commodification.pdf` — new
  companion `.md` source records created (flat, per existing raw/ convention). Both
  resolve the two Eaves items previously flagged as unfiled on [[david-eaves]].
- Confirmed **"Parting Clouds"** is Eaves **& Keldon Bester**, publisher **[[camp]]**
  (Canada-focused) — a *distinct, fuller* work, **not** a duplicate of the TPP op-ed;
  filed as its own source and cross-linked.

**Sources ingested (14)** — clusters:
- *Infrastructure:* [[2026-06-23 Africa's Data Centre Boom Where The New Facilities Are Being Built]],
  [[2026-07-06 Gabon Inaugurates First Tier III Datacenter to Boost Digital Sovereignty]],
  [[2026-07-09 Seacom plans 25,000km subsea cable from France to Singapore and South Africa]].
- *DPI:* [[2026-07-07 Equity, AfricaNenda and Gates Foundation Partner to Advance Digital Public Infrastructure Across Africa]],
  [[2026-06-17 They're taking DPI to the world - The Times of India]], [[2025-01-01 dpi_conceptualisation_and_measurement]].
- *AI economics/geopolitics:* [[2026-06-17 Priced out of the future Confronting the rising cost of AI in Africa]],
  [[2026-07-07 Commerce Statement on Application Conclusion, Next Steps of the American AI Exports Program]],
  [[2026-05-21 AI for Good Global Commission]], [[2026-07-03 Kagame co-chairs global AI commission]].
- *Sovereignty analysis:* [[2026-06-09 The Triad of Tech Sovereignty and Europe's Package Dependency, Openness, and Agency]],
  [[2025-01-01 Eaves commodification]], [[2026-07-03 AfCFTA, Data Governance and the Hidden Legal Gaps Reshaping Africa's Digital Economy - P.M. News]],
  [[2026-07-07 South Africa's state IT agency is slowing government tech rollout]].

**Pages created**
- **9 concepts:** [[tech.ai]] [[infra.energy]] [[finance.mou]] [[gov.protect]]
  [[gov.legislate]] [[include.access]] [[tech.innovate]] [[capacity.research]]
  [[geopol.china]].
- **6 place hubs:** [[NGA]] [[KEN]] [[GAB]] [[RWA]] [[MAR]] [[XAF]]; updated [[ZAF]].
- **23 entities:** companies [[cassava-technologies]] [[seacom]] [[mtn-group]]
  [[airtel-africa]] [[st-digital-gabon]] [[equity-group-holdings]]; orgs [[africanenda]]
  [[gates-foundation]] [[us-dfc]] [[the-govlab]] [[ucl-iipp]] [[camp]]; gov-bodies [[sita]]
  [[us-department-of-commerce]]; initiatives [[afcfta]] [[mosip]]
  [[ai-for-good-global-commission]] [[american-ai-exports-program]]; deal
  [[equity-africanenda-gates-dpi-partnership]]; people [[james-mwangi]]
  [[nandan-nilekani]] [[paul-kagame]] [[stefaan-verhulst]].

**Pages updated:** 16 existing concepts (infra.connect, infra.store, dpi.id, dpi.pay,
dpi.exchange, dpi.govtech, gov.policy, gov.regional, gov.standards, tech.industry,
geopol.usa, geopol.eu, geopol.india, finance.new, include.divides, capacity.training);
[[david-eaves]] (two PDFs attached); all three faceted indexes; `index.md`.

**Scoping judgments (agent decisions, open to correction)**
- **Hubbed** only countries with dedicated/substantive treatment (NGA, KEN, GAB, RWA,
  MAR). **Tagged but not hubbed** (thin-page discipline): EGY, SEN, GHA (data-centre build
  mentions), TZA, UGA, and subregions XCA/XWA. Created **XAF** for genuinely continental
  items; other subregions tag-only for now.
- Entities not hubbed (mentioned only): Teraco, Rack Centre, IXAfrica, Raxio, PAIX,
  Servernah, Mojaloop, CDPI, iSpirt, UIDAI, ITU, European Commission, Keldon Bester,
  Begoña Gonzalez Otero, Krisstina Rao — listed in entities-index.
- **finance vs deal:** the Equity/AfricaNenda/Gates MoU filed as a **deal** entity +
  `finance.mou`; the Gabon startup-hosting MoU folded into [[st-digital-gabon]] + [[GAB]].

**Analytical through-line (cross-links, not contradictions)**
- A **sovereignty-as-agency-not-ownership** thread now spans four independent sources:
  [[david-eaves]] (commodification), the [[the-govlab]] Triad, India's open-source DPI
  ([[mosip]]/[[nandan-nilekani]]), and Zambia's open-standards ID ([[zambia--dpi-id]]).
  Recorded as a converging argument via [[gov.standards]] / [[gov.policy]].
- A **geopolitical-financing** thread: [[us-dfc]] data-centre capital framed against
  China ([[geopol.china]]); US [[american-ai-exports-program]] pushing full-stack AI
  outward; both read against Africa's demand-side AI-cost exclusion ([[tech.ai]]).

**Contradictions:** none surfaced against existing pages.

**⚠ Open items / backfill**
- `wb-taxonomy-2025.pdf` decision (above).
- Some source records have approximate `published` (both Eaves PDFs dated `2025` — exact
  month not confirmed from extracted text) and best-guess `url`s for the two PDF reports
  (CAMP/UCL landing pages) — backfill exact citations if used in publication.
- Statistics in the two op-eds (AI-cost, AfCFTA) are author-asserted; verify against
  primaries before publication.
- Wikilinks to files with curly apostrophes (`They’re…`, `…Package…`) must match the
  on-disk filename exactly for Obsidian resolution — copied verbatim, but worth a link-lint.

---

## 2026-07-10 — Ingest: Eaves, "Sovereign Tech Stack via a Commodified Tech Stack" (Tech Policy Press)

**Source:** named-author analysis by David Eaves, Tech Policy Press, published 2025-12-15
(accessed 2026-06-09). Admissible (named author + publisher + date; cites primaries).
File `raw/The Path to a Sovereign Tech Stack is Via a Commodified Tech Stack  TechPolicy.Press.md`
— existing capture frontmatter normalised into a `type: source` block on ingest.

**Facets**
- places: `XGL` (primary — non-Africa-specific/global analysis, per the tag-only rule)
  + `ZAF` (South Africa's MyMzansi example + middle-power mention). `XAF`/African
  countries deliberately not tagged — the piece is global, not African.
- topics: `gov.standards tech.industry geopol.usa infra.store dpi.govtech gov.policy
  geopol.eu geopol.india`.
- entities: [[david-eaves]] (person). Hyperscalers (AWS/Azure/Google), JEDI, Gaia-X,
  Digit, MyMzansi discussed as phenomena/examples → captured as topics, not hubbed as
  entities (no substantive intelligence about them *as actors* here).
- lens: `sovereignty` (whole argument) + `colonialism` ("vassalage"; a sovereignty
  paradigm that excludes 50–100+ poorer/smaller states).

**Pages created:** source (frontmatter) + [[david-eaves]] + places [[XGL]] & [[ZAF]] +
6 new concepts (`gov.standards tech.industry geopol.usa infra.store geopol.eu
geopol.india`).
**Pages updated:** concepts [[gov.policy]] & [[dpi.govtech]] (added global dimension +
this source); all three faceted indexes; `index.md`.

**Cross-link (not a contradiction):** Eaves argues sovereignty is better achieved via
*commodified, interoperable* standards than proprietary "sovereign stacks." This
**resonates with** Zambia's DZAP approach (open-standards, vendor-independent ID —
[[zambia--dpi-id]]): the two sources now cross-reference via [[gov.policy]],
[[gov.standards]] and [[dpi.govtech]]. Recorded as a productive tension, not a conflict.

**Note:** `david-eaves` also authored two still-unfiled `raw/` items
(`2025-01-01 dpi_conceptualisation_and_measurement.pdf`, `2025-01-01 Eaves commodification.pdf`) — flagged on
his entity page to attach when ingested.

## 2026-07-10 — Intake screen of raw/ + admissibility actions

Ran the new Source-admissibility intake screen across all 20 `raw/` items (18
ADMISSIBLE, 1 LEAD, 1 UNCLEAR). Actions taken on the human's instruction:
- **Deleted** `Gates-DPI-Africa-Political-Economy.md` — the human's own compiled draft
  ("Bill Anderson, May 2026"), inadmissible draft output.
- **Parked** `The CBN Data Localization Mandate - Cencori.md` → `raw/_leads/`. Vendor
  marketing blog, but it **reproduces the primary CBN circular verbatim** (signed Dir.
  Rakiya Yusuf, dated **2026-06-15**, on Nigerian data-localization).
  → **Primary to obtain/ingest:** the CBN circular itself (the Cencori post is only the
  wrapper). Not yet ingested — awaiting the original circular.
- `raw/` now holds 18 admissible external items + `raw/_leads/`.
- Noted: `The Triad of Tech Sovereignty…md` is the SSRN landing page for
  `2026-07-10 ssrn-6907425.pdf` (same paper) — treat the PDF as the source of record.

## 2026-07-10 — Ingest: Digital Zambia Acceleration Project (DZAP) — World Bank PAD

**Source:** World Bank Project Appraisal Document, Report No. PADHI00683, Project
P505094, published 2025-09-11. Admissible primary document. Source record created at
`raw/DZAP World Bank PAD.md` (frontmatter + abstract) with the PDF `2026-05-23 World Bank Zambia.pdf`
as its attachment. (PDF text extracted via `pdftotext`; the Read tool can't render PDFs
in this environment.)

**Facets**
- places: `ZMB` (single-country operation; the regional dimension is carried by the
  [[idea-mpa]] entity, not a region tag).
- topics: `infra.connect infra.cybersec dpi.id dpi.pay dpi.exchange dpi.govtech
  capacity.training gov.policy gov.regional finance.new include.divides`.
- entities: [[world-bank]] (organisation), [[idea-mpa]] (initiative), [[dzap]] (deal),
  [[smart-zambia-institute]] (government-body).
- lens: `sovereignty` (explicit vendor-independence/homegrown-ID agenda) + `colonialism`
  (that agenda is externally financed — IDA grant + ID4D/UNDP/UNHCR TA).

**Pages created**
- Source record + 4 entities + place [[ZMB]] + 11 concepts + intersection
  [[zambia--dpi-id]]. Updated all three faceted indexes and `index.md`.

**Scoping judgments**
- Kept places to `ZMB` only — sibling IDEA countries (COD/AGO/MWI/SWZ/TZA/BWA/MDG/LSO/
  SSD) appear only as program context, so they are tagged on [[idea-mpa]] but not hubbed
  (avoids the thin-page over-tagging from the DHIS2 attempt).
- DZAP filed as a **deal** entity (a discrete US$100M financing operation); `finance.new`
  carries the investment subject.
- Secondary themes present but **not** tagged as separate concepts to avoid dilution:
  infra.energy (drought/hydro constraint), include.access, capacity.literacy, infra.store
  (secure hosting), tech.ai — captured in prose on the source record and [[ZMB]].
- One intersection created ([[zambia--dpi-id]], substantial + sovereignty-laden);
  `zambia--infra-connect` is a candidate for the next connectivity source.

**⚠ Minor open item**
- Source `url` unknown — it's a public-disclosure PAD (Report No. PADHI00683 / P505094);
  should be backfilled with the documents.worldbank.org link.

**Contradictions:** none against existing pages.

---

## 2026-07-10 — UNWIND of the DHIS2 ingest

Reason: the ingested item was **internal research notes, not external evidence**,
so it should never have been in `raw/` or filed as a source (per CLAUDE.md: "Draft
output is never filed back as source; only external evidence becomes a source").

**Reverted**
- Deleted all 19 pages the ingest created: entities `dhis2`, `pepfar`; places
  `XSS UGA ETH NGA TZA MWI MOZ AGO GMB`; concepts `dpi.mis digital.rural
  infra.connect infra.energy capacity.training gov.policy geopol.usa`; intersection
  `uganda--dpi-mis`.
- Reset `places-index.md`, `topics-index.md`, `entities-index.md` to empty.
- Corrected the status line in `index.md`.
- Scaffolding retained (`index.md`, `log.md`, folders, `countries.csv`,
  `taxonomy.md`) — that was the separate initialisation, not part of the ingest.

**Note on the source file**
- The frontmatter I had added to `raw/Why Rural Clinics…md` did not need stripping:
  the file itself was **removed from `raw/` externally during this session** (not by
  me — my deletions were scoped to `wiki/` only).
- Observed the same session: **11 other files also disappeared from `raw/`**, all of
  which read as internal notes/drafts — the four `Room-9-*` files, `Rwanda as a
  Digital Health Outlier`, `DHIS2 Tracker…`, `Electronic Medical Records in LMICs…`,
  `Deepseek use in Africa`, `African Digital Infrastructure Initiatives…`, `MOSIP`,
  `MOSIP-Africa-Fact-Sheet`. The 20 remaining `raw/` items are external articles/PDFs.
  → **Confirmed 2026-07-10 by the human: intentional cleanup, not data loss.** `raw/`
  now holds external evidence only and is ready for the first real ingest.

## 2026-07-10 — Wiki initialised

- Created `wiki/index.md`, `wiki/log.md`, `wiki/places-index.md`,
  `wiki/topics-index.md`, `wiki/entities-index.md`.
- Confirmed `wiki/taxonomy.md` and `wiki/countries.csv` in place as authorities
  (62 place codes, ~36 subject slugs).

## 2026-07-10 — Ingest: Why Rural Clinics Are Still on Paper — The DHIS2 Implementation Gap

**Source file:** `raw/Why Rural Clinics Are Still on Paper  The DHIS2 Implementation Gap.md`
(frontmatter added on ingest; file otherwise unchanged and now immutable).

**Facets applied**
- places: `XSS` (primary, pan-SSA framing) + `UGA ETH NGA TZA MWI MOZ AGO GMB`
- topics: `dpi.mis digital.rural infra.connect infra.energy capacity.training gov.policy geopol.usa`
- entities: `dhis2`, `pepfar`
- lens: `sovereignty`, `colonialism`

**Pages created**
- Source frontmatter on the raw file.
- Entities: `dhis2`, `pepfar`.
- Places: `XSS UGA ETH NGA TZA MWI MOZ AGO GMB`.
- Concepts: `dpi.mis digital.rural infra.connect infra.energy capacity.training gov.policy geopol.usa`.
- Intersection: `uganda--dpi-mis` (Uganda's DHIS2 treatment is substantial — the
  2026 mixed-methods study is the piece's backbone).
- Updated all three faceted indexes.

**Scoping judgments (agent decisions, open to correction)**
1. "First source" interpreted as oldest by file mtime (2026-04-01).
2. Places limited to countries carrying a *specific retrievable fact*. Deliberately
   **not** tagged: GHA (only one of five burden-study countries, no country-specific
   finding pulled out), LBR (CHT "shown promise", no detail), KEN (reference-title
   mention only). Cambodia appears but has no African place code.
3. `XSS` used per the tag-only rule for pan-SSA items; `XAF` deliberately not used
   (would wrongly pull in North Africa — this piece is SSA-specific).
4. Treated the piece as external evidence (a source) per the instruction, though it
   reads like compiled analysis. See NEEDS-REVIEW below.

**⚠ NEEDS-REVIEW / open items**
- **Missing provenance.** The source file has no `url`, `publisher`, or `published`
  date. Frontmatter records these as `unknown`. Internal evidence (cites 2025 PEPFAR
  crisis + a "2026" Uganda study; file mtime 2026-04-01) suggests **early 2026**.
  → Human to supply URL/publisher/date, or confirm whether this is in-house analysis
  rather than external evidence (if in-house, it should not be filed as a source).
- **Dating/foldering convention.** Raw files are currently flat in `raw/` with
  descriptive names, not `raw/YYYY/YYYY-MM-DD-slug.md` as CLAUDE.md specifies. Left
  the filename as-is (no confident published date to encode). → Confirm whether to
  migrate raw files into dated year-folders.

**Contradictions:** none surfaced against existing pages (this is the first ingest).

---

## 2026-07-14 — H1-2026 think-tank ingest, Batch A (data protection / DPAs / data governance)

Part of the H1-2026 literature catch-up (62-item drop; processed in thematic batches, one commit
each). Orientation map: `my-notes/literature-catchup-2026-H1_1.md` (an Exa-sourced synthesis — used
for dates/publishers only, **not cited as a source**).

**Ingested (11 sources admitted):**
- Clips → `raw/`: FPF continental DP reforms (2026-03-12); Unwanted Witness *Privacy Scorecard 2025*
  (2026-05-18); Tech Hive bimonthly Jan–Feb (2026-06-23); MRA 13-CSO horizontal-accountability call
  (2026-06-22); Paradigm Initiative Data Privacy Week stock-take (2026-01-29); Cenfri *Reassessing
  DPAs* (2026-03-23); CIPESA app-based health data (2026-06-23); Cenfri Rwanda data-governance
  (2026-05-07).
- PDFs (artefact + companion source page): Unwanted Witness *Uganda 2026 Polls* (2026-03-31); ACHPR
  Res.620 draft *African Guidelines on Data Access* (2026-05-07, **proxy** date/month precision —
  undated draft); CSEA *SA Data Governance Snapshot 2026* (2026-04-07, **proxy**, export metadata).

**Entities created (18):** orgs — future-of-privacy-forum, unwanted-witness, media-rights-agenda,
paradigm-initiative, cenfri, cipesa, csea, african-commission; gov-bodies — nisr,
information-regulator-south-africa, personal-data-protection-office-uganda, electoral-commission-uganda;
instruments — kenya-data-protection-act-2019, data-protection-and-privacy-act-uganda-2019,
african-guidelines-data-access (status: draft), rwanda-national-data-sharing-policy; resources —
privacy-scorecard-report, ripoti.

**Pages updated:** concept synthesis bullets added to gov.legislate, gov.protect, gov.regional, tech.ai,
dpi.exchange, data.open (all last_reviewed → 2026-07-14). Place hubs NGA (MRA), RWA (NISR), UGA (2026
polls). entities-index rows added (all 18).

**Editorial calls (auto, digest-listed):**
- Continental trackers (FPF, Tech Hive, Unwanted Witness, Paradigm) compiled with country detail held on
  the **source page** and synthesis on **concept pages**; place hubs updated only for standout
  country-specific developments — deliberately *not* fanned into ~20 country hubs (matrix anti-pattern).
- CSEA SA snapshot treated as a reference profile: indicator figures kept on the source page, **not**
  pushed into the ZAF hub or concept pages (per standing note on reference studies).
- ACHPR guidelines: dated companion source page (proxy) + standing `instrument` entity (draft).
- **Page-bloat flag:** gov.protect (~3.9k words), tech.ai (~4.4k), gov.regional (~3.5k), gov.policy
  (~3.4k) are past the ~2,500-word review threshold. Added only tight bullets; extraction/trim deferred
  and flagged for the digest.
- topics-index / places-index place-list refresh **deferred to a final mechanical sweep** across all
  batches (regenerated from source-frontmatter coverage) rather than per-batch nibbling.

**Contradictions:** none new surfaced against existing pages. (Burundi's Jan-2026 law → "~45 laws" is
consistent with the existing 44/38 count thread.)

**Gaps flagged:** GAP-003 (national DPA entity pages) — see `_review.md`.

---

## 2026-07-14 — H1-2026 ingest, Batch B (digital ID / foundational identity)

**Ingested (5 new sources + 1 dedup):**
- Clips → `raw/`: World Bank Benin "C’est Moi"/WURI (2026-05-20); OpenCRVS Somalia CRVS (2026-01-16,
  **proxy**/month — page undated); CDPI São Tomé Citizen Portal (2026-04-07); CMU-Africa *My Money, Your
  Name* CHI ’26 (2026, **proxy**/year — clip lost authors + date, retrieve from DOI 10.1145/3772318.3791007).
- PDF (artefact + companion): Caribou *Digital Identity and Migration* (2026-02-01).
- **Dedup:** the DIAL *Strengthening Fayda* case study was **already held** (`2026-05-12 …`, cited by
  [[fayda-ethiopia-national-id]] and the ETH hub). Deleted the duplicate source page I had created; instead
  **attached the source PDF artefact** to the existing 2026-05-12 page (kept its date to preserve links;
  cover states only "May 2026"). No new ETH-hub/entity entries — already present.

**Entities created (3):** cmu-africa, caribou, co-develop.

**Pages updated:** concept bullets on dpi.id and include.divides (last_reviewed → 2026-07-14). Hubs: BEN
(WURI), SOM (OpenCRVS), STP (Citizen Portal — stub→active, topics/entities expanded), KEN + TZA (ID-as-
exclusion). entities-index rows (3).

**Editorial calls:** My Money / Caribou are ID-*exclusion* evidence — filed under dpi.id + include.divides
with the ID-rollout wins (Benin/Ethiopia/Somalia/São Tomé) framed as the countervailing thread. Non-African
cases in the Caribou report (EU/UK/Germany) covered on the source page but not place-tagged. Existing-entity
bullet edits (opencrvs, wuri-programme, cdpi) **deferred to Obsidian backlinks** — source pages, hubs and
concept bullets already link them.

**Contradictions:** none new. **Gaps:** none new (GAP-003 from Batch A still stands).

---

## 2026-07-14 — H1-2026 ingest, Batch C (DPI & instant payments)

**Ingested (15 sources; 1 dedup-delete):**
- PDFs (artefact + companion): SIIPS 2025 (AfricaNenda, **2025-11 proxy** — internal evidence favours Nov
  2025 over the orientation lead's March 2026); DPI Roadmap Playbook (consortium instrument, 2026-03);
  AfricaNenda Annual Report 2025 (2026-03); Scaling Instant Payments (2026-03); Making Non-bank
  Participation a Reality / FOCUS-NOTE (AfricaNenda+AllianceDFA, 2026-04); The State of Cash Dependency
  (Affinity/Mo Ibrahim/Yale, 2026-06); Interoperability as a Cornerstone (Development Gateway, **2024**
  year-proxy); Cross-border payments & identity in Nigeria under the AfCFTA (ODI, 2026-03); Privacy &
  Data Protection of Digital Lending Apps in Kenya (CIPIT, **2021** — pre-window but admissible); Mobile
  Money Taxes & Affordability (GSMA, 2026-03); Building Open Digital States (DPGA, 2026-01, proxy).
- Clips: Urgent Need to Harmonize Payment Regulations (AfricaNenda, 2026-02-18); The financing gap for
  data exchange (DIAL, 2026-06-16); CIPESA Public Dialogue DPI East Africa (2026-03-23); DPI at the G20
  (ODI, 2026-05-29 proxy).
- **Dedup-delete:** the GSMA *State of the Industry Report on Mobile Money 2026* PDF was a byte-identical
  duplicate of an already-held artefact (2026-07-11 …); deleted from `new/` (no new page).
- **Reclassified out of Batch C:** *Appendix — Country Perspectives* is the companion appendix to ODI's
  *China's infrastructure finance in Africa* — deferred to **Batch E** (left in `new/`).

**Entities created (13):** mojaloop, dpi-roadmap-playbook (instrument), payment-service-directive-africa
(instrument, proposed), odi-global, mo-ibrahim-foundation, affinity-africa, cipit, media-foundation-west-africa,
alliancedfa, africa-data-leadership-initiative, gleif, central-bank-of-liberia, risa.

**Pages updated:** dpi.pay + dpi.exchange concept synthesis; africanenda entity (2025 execution year);
entities-index rows (13). LBR hub **not** re-edited — Liberia's IPS ("Pay Na-Na") already held; AfricaNenda
AR linked via CBL + africanenda entities (dedup-adjacent call).

**Editorial calls:** Large multi-country payment reports (SIIPS, Scaling, Affordability) tagged by region +
2–3 standout countries; per-country detail kept on the source pages, **not** fanned into ~25 country hubs.
DPI Roadmap Playbook filed as a standing **instrument** + dated companion source page.

**Flags:** DPI Roadmap Playbook states "Malabo Convention adopted 2014, not yet ratified" — **outdated**
(entered into force Jun 2023); wiki [[malabo-convention]] page is correct, source's phrasing noted on its
page (not a wiki contradiction). SIIPS historical values restated via World Bank Atlas method → differ from
prior editions (methodological). **Contradictions:** none new. **Gaps:** none new.

---

## 2026-07-14 — H1-2026 ingest, Batch D (AI governance & strategy)

**Ingested (6 sources):**
- Clips: CIPESA rights-centred submission to Uganda's AI strategy (2026-05-11); MISA Zimbabwe National AI
  Strategy critique (2026-06-23); RIA "From digital ID to AI in policing" / SoNA 2026 (2026-02-13);
  Brookings/Gabon "sequence, not rush into AI" (2026-02-10).
- PDFs (artefact + companion): CIPIT "Rethinking Ownership…IP for African AI" (2026-04-19, proxy);
  Lawyers Hub "Africa–Europe Cooperation on AI Governance" (2026-05, month).

**Entities created (5):** misa, brookings, lawyers-hub, zimbabwe-national-ai-strategy (instrument),
project-pangolin (initiative).

**Pages updated:** tech.ai concept synthesis; hubs ZWE (AI strategy), ZAF (SoNA), UGA (CIPESA submission);
entities-index rows. GAB hub **not** edited (the Brookings piece is continental commentary by Gabon's
minister — GAB source tag suffices).

**Flags:** the Lawyers Hub report carries several **in-source** inconsistencies (Africa Declaration
signatories 52 vs 49; two distinct AI funds — $200m governance vs $60bn; divergent compliance-cost and
AI-investment-share figures) — noted on its source page, not wiki contradictions. It also records **South
Africa's draft AI Policy withdrawn (April 2026)** over AI-fabricated citations. tech.ai now well over the
~2,500-word threshold (bloat flag stands). **Contradictions/gaps:** none new.

---

## 2026-07-14 — H1-2026 ingest, Batch E (connectivity & infrastructure)

**Ingested (6 sources):**
- Clips: Internet Society peering→affordability (2026-05-25); ISOC Pulse content-locality "Beyond the
  Homepage" (2026-06-09).
- PDFs (artefact + companion): ODI *China's infrastructure finance in Africa* (2026-02-05; **main paper +
  Country-Perspectives appendix = one source, two artefacts** — the appendix was reclassified here from
  Batch C); GSMA *Digital Transformation…Republic of Congo* (2026-01, proxy/year); ATU/AFRINIC/ISOC
  *Model Framework for Internet Resilience in Africa* (**2025-06**, pre-window instrument); GSMA *Mobile
  Data for Humanitarian Action* (2026-05).

**Entities created (7):** internet-society, internet-society-pulse (resource), china-eximbank,
konza-technopolis (initiative), congo-digital-strategy-2030 (instrument),
internet-resilience-framework-africa (instrument), + earlier risa. (Note: an `internet-society` org page
now exists distinct from the pre-existing `internet-society-africa-history`.)

**Pages updated:** infra.connect concept synthesis; hubs BFA (BFIX affordability), MWI (3% content
locality), COG (GSMA digital economy — stub topics expanded); entities-index rows.

**Editorial calls:** the Internet Resilience Framework and Congo Digital Strategy filed as **instruments**
+ dated companion pages. GSMA Humanitarian is global-LMIC — filed with African-actionable content (Ebola
cross-border divergence, Ghana/DRC/Togo) and its restated global figures kept off concept/place pages.
**Flags:** Model Framework is modelled on the US DHS resilience template (noted). **Contradictions/gaps:**
none new.

---

## 2026-07-14 — H1-2026 ingest, Batches F (digital rights) & G (SA e-gov / DT academic)

**Batch F — Ingested (4 sources):** ARTICLE 19 civic-space (Kenya/Rwanda, ACHPR May-2026 sessions,
2026-05 proxy, clip); Pollicy *Systemic Barriers* Afro-feminist DPI analysis (Uganda/Kenya/SA, 2026-01,
PDF); Bloggers of Zambia *State of Internet Freedom 2026* (6th ed., 2026-04 proxy, PDF); Access Now
*#KeepItOn Internet Shutdowns 2025* (2026-03, PDF).

**Batch G — Ingested (5 sources):** SAJIM — Gauteng municipal-healthcare DT framework (2025-05 proxy);
SA rural-municipalities DT (2025 proxy/year); DT & transformational leadership (2026 proxy/year); EJISDC
e-government platform-governance, Ghana (2026-03-11); AJIS SITA centralized-ICT-procurement (2026-02).

**Entities created (5):** article-19, access-now, pollicy, bloggers-of-zambia, salga.

**Pages updated:** concept synthesis on digital.localgov (G) and include.divides (F); ZMB hub (new cyber
laws); entities-index rows. Tanzania's 8 shutdowns kept on the KeepItOn source page + include.divides
(not fanned to the TZA hub).

**Filing fix:** the 4 G items are markdown *clips* (full paper text), not PDFs — initially mis-filed as
PDF-companion summary pages; corrected to frontmatter-transformed clips retaining the paper body.

**Flags:** KeepItOn — **no Uganda-Starlink order** in the document (a common mis-claim), corrected on the
source page. Several academic clips lost their publication date in clipping (proxy/year; verify via DOI).
Bloggers of Zambia title-year ("2026/6th ed." vs "2025") noted. **Contradictions/gaps:** none new.
