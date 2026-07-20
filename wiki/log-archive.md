# Operation log — archive

Full detailed pass narratives (reconcile passes, ingest batches, per-country/per-worker research write-ups) moved out of `log.md` on 2026-07-20 to keep the log skimmable; git-held, not meant for skimming — `log.md` keeps a terse summary + pointer for each. Newest entries at top.

## 2026-07-20 — Lint #8 (bloat): two concept pages split, entities-index sharded

gov.protect 6,916 -> 4,434 words; infra.store 6,133 -> 4,133. Both restructured to the
infra.connect template (continental/thematic left intact, `## By place` with Extracted/Indexed).
17 intersections created, 14 merged; all 17 place-hub links applied centrally. Verified: every
link dropped from a parent landed on an intersection — 0 lost on gov.protect, 2 on infra.store,
both restored (NDPA cross-border tension on nigeria--infra-store; AWS/Microsoft on the ETH line).

entities-index 26,940 -> 126-word parent + 9 type shards. 1,741 entries in, 1,741 out, verified
by sorted comm both ways.

gov.regional judged **thematic — not split**. Its place-prefixed cells are mostly blocs (XEA/XWA/
XAF), and blocs are entities here, not places. Two defects fixed instead: the 2nd AfCFTA Digital
Trade Forum was covered twice (merged), and algeria--/morocco--gov-regional existed unlinked from
the concept page (§4 wants both ends).

**Two pages carried facts with no citations.** gabon--gov-protect and caf--infra-store were
extracted with empty `sources:` — but the primaries were held all along (loi n°025/2023, the 2020
ordonnance, the Huawei/Greenline/AIAL/PAD4661 set). Cited now. Neither is an acquisition: the
wiki had the documents, the parent page just never cited them.

log.md is 102k words and by our own standard too long to skim. Every entry is <2 weeks old, so
the delete-after-a-month rule does not bite yet. Flagged, not touched.

Revert: `git revert` the individual lint commits; do not path-checkout, the passes interleave.

## 2026-07-20 — Lint #4 (dead links): 70 body-prose targets triaged, 56 closed

13 pages created, 10 links rewired, 35 unlinked, 14 left. New pages: mario-oliveira, edf,
dpa-southern-africa, zimbabwe-stock-exchange, cosase-uganda, clement-domingo, green-blood-group,
multichoice-nigeria, sniac-cabo-verde, justin-gourna-zacko, afr-ix-telecom,
electronic-banking-services-sudan, jamii-x-change — all added to `entities-index.md`.

**Decisions.** Paged `mario-oliveira` rather than unlinking him: 15 refs, and he is the signing
party on Angola's whole outbound MoU batch, not a passing officeholder. `minttics` was an alias,
not a missing page — rewired to the MINTTICS ministry page (8 refs). `2025-02-07 South Sudan
launches first national instant payment system (NIPS)` is **not held**: removed from 4 body cites
and 2 `sources:` lists, claims kept and the absence stated dated. `edf` and `multichoice-nigeria`
rest on one source each — said so on the page. `electronic-banking-services-sudan` carries an
uncited ownership split inherited from SDN.md, flagged on the page as a provenance gap.
14 mid-band targets left dead as thin (civipol, enabel, gpe-kix, gpe-itap, norad, chrgj, heapi,
digital-tanzania-project, chave-movel-digital-cabo-verde) or officeholder-level
(dionisio-da-fonseca, medard-sseggona, teixeira-candido, parliament-of-uganda,
office-of-the-auditor-general-uganda).

Revert: `git checkout <sha> -- wiki/ raw/ reviews/` restores the prior links and drops the new pages.

## 2026-07-20 — Reconcile: ZRHCP Subcomponent 1.2 resolved; `open/` empty

The day's last contradiction, closed in favour of the **PAD: US$6m / ~150,000 cards**. The unreconciled
fallback the brief allowed for was not needed.

**A third document broke the deadlock.** The project's **Stakeholder Engagement Plan** (internally dated
July 2024, disclosed 2024-08-05) carries the **pre-appraisal** envelope — Component 1 = US$8m *est.*
(1a US$2m, 1b US$6m). That is exactly what the December-2024 ESMF carries. So the ESMF reproduces a
**design generation the appraisal superseded**, rather than amending an appraisal figure.

| | C1 | 1.1 | 1.2 | Cards | Date |
|---|---|---|---|---|---|
| SEP (pre-appraisal) | 8 *est.* | 2 | 6 | — | 2024-07 |
| **PAD (appraisal)** | **7** | **1** | **6** | **~150,000** | 2024-09-05 |
| ESMF (safeguards) | 8 *est.* | 1.5 | 6.5 | ~100,000 | 2024-12 |

**The arithmetic test did not separate them** — both reconcile internally to US$30m. So the "ESMF
transcribed it sloppily" hypothesis is dead: it is a *coherent alternative allocation*, not a slip. What
decides it is standing and sequence — the PAD's table is the machine-generated DATASHEET tied to the
Board-approved Financing Agreement and carries no "est." labels; no restructuring paper exists; and the
grant became **effective 2024-12-23, after the ESMF**, leaving no window for a re-scoping.

**Stated honestly on the pages: the cost divergence is explained, the card count is not.** The SEP gives
no card figure, so ~100,000 cannot be traced to the earlier design — it matches the "over 100,000
refugees" headline rather than the 150,000 refugees *and former refugees* the PAD targets. That step is
flagged as inference, not documentation. **ISR Sequence No. 2** was attempted once more by an alternate
route (JS-gated, page chrome only) and is recorded as a dated absence rather than ground down.

### The method finding, which outlives this item

**World Bank *safeguards* documents — ESMF, SEP, ESRS — can carry stale pre-appraisal cost envelopes
while reproducing PAD narrative near-verbatim, and they reconcile internally.** Internal arithmetic will
not catch it, and near-verbatim narrative makes them read as authoritative. **Anywhere this wiki has taken
a component cost from a safeguards document rather than an appraisal document, that figure is suspect.**
Not swept for other instances.

Filed: `raw/2024-07-01-worldbank-zambia-zrhcp-stakeholder-engagement-plan.md`. `reviews/contradictions/open/`
now holds only its README.

## 2026-07-20 — Ingest: the acquisition batch (50 documents, 12 workers)

`new/` drained; `raw/` at 4,678. Gazetted statutes, court judgments, World Bank project documents,
regulator statistics. 13 concept pages updated. Vocabulary clean across all 191 files touched today.

### The pass's purpose was to close this morning's provenance defect, and it did

**Every boundary added earlier today is now retired or narrowed on evidence**, not on assertion:

| Boundary | Outcome |
|---|---|
| Zambia — ProGres transfer "PAD-derived, PAD not held" | **Retired.** PAD Subcomponent 1.2 carries it verbatim. |
| South Sudan — Crawford/NSS "reconcile-established only" | **Retired.** Confirmed, and sharper than we had it. |
| Uganda — USPC chronology "carried as unverified" | **Split.** Three claims established, three still unverified. |
| Senegal — reform chronology "no held source" | **Narrowed.** One limb corrected, one part-confirmed, three still standing. |
| Gabon / Angola / Seychelles / Djibouti / Togo / Libya / Algeria / CAR | Retired on their primaries. |

**And the primaries corrected the wiki more often than they confirmed it.** The most consequential:

- **Uganda's SI 67/2024 is not what the wiki said it was.** It extends ID validity **ten to eleven
  years**, retroactive to **2015** — validating cards already expired on their printed term. The wiki
  described it as preserving ID use for KYC and financial transactions under ss.65–66. **The instrument
  contains none of that**, and the reading is withdrawn.
- **Senegal's "2017" was not merely unsourced but wrong.** The CDP's own account is *"depuis 2019"*.
  Worse, `SEN.md` **contradicted itself** — a `## Provenance` section asserted the Cour Suprême 2022
  clearance as fact directly against the boundary block above it. Withdrawn.
- **Econet Group parentage is settled, and my softening was over-cautious.** Econet Global holds
  **41.68%** and "will remain the controlling shareholder". Control on a **minority economic stake**.
- **"Distributed Power Zimbabwe (DPZ)" does not exist.** The string appears in neither document; it
  entered via the editorial preamble of a clip this pass then discarded. The real structure is three
  internal divisions — TowerCo / PropCo / PowerCo. **DPA was also never a renewables company**: it "has
  provided backbone tower support services to Econet since inception" (2016). The renewables reading was
  inferred from the name.
- **The Libya error had grown a false narrative.** Not just a 2019 article read as 2026, but an
  interpretation — a Benghazi Tier-3 partnership "scaled down over seven years to a single prefabricated
  module" — that was entirely an artefact of a re-crawl date. Libya Herald published the Benghazi signing
  **2019-10-09** and DCD the module **2019-10-15**: the same engagement one week apart.
- **A second event-date defect found unprompted:** the EBRD facility was dated wiki-wide to its
  **2026-01-16 announcement**; Board approval was **2024-07-24**. An 18-month gap.

### Where the wiki claimed less than its sources supported

The mirror defect, and it recurred: **Chad's data-centre size was never undisclosed** — two held sources
give N'Djamena, four storeys, ~2,000 m², and the apparent "2,000 m² vs 500 m²" conflict is the same
building measured two ways (500 × 4). **CAR's WARDIP backbone was not "resting on nothing"** — the 2,877
km figure rests on the project's own website, *undated*; the weakness is an undated primary, not an
absent one. And **WARDIP covers four phase-1 countries, not three** — Guinea and The Gambia were omitted
from the page and its tags entirely.

### Two more phantom citations

Following the two found this morning: **`car-national-datacentre` cites a Corbeau News item of
2025-04-29 that does not exist in `raw/`** (checked by date and by figures) — and the same unheld
citation props up a "Council of Ministers of 17 Apr 2025" corroboration elsewhere. Both now recorded as
unheld rather than repeated as sourced.

### Findings of substance the wiki did not hold

- **The 75%-vs-2% Crawford dispute is not a dispute.** A **separate November 2020 e-Tax contract** gives
  Crawford 2% of all digitally assessed taxation. Its rebuttal describes a real entitlement under a
  *different contract* and does not answer the eServices or crude-oil splits. Also: the e-Visa portal runs
  on **the same 'e-Citizen' platform Webmasters Kenya built for the Government of Kenya** — Crawford
  neither built nor customised it, and takes 75%.
- **Two regulators funded from the population or the offence.** Gabon levies **1,000 FCFA per person per
  year**, split 40% state / 60% authority; Angola's Centro Nacional de Cibersegurança **retains 30% of
  the fines it levies**, with a further 30% to a *Fundo de Cibersegurança* that exists in no instrument
  the wiki holds. Surfaced independently, an hour apart.
- **South Africa struck down digital-only welfare delivery** and **cross-database verification as a means
  test**, with a Treasury/SALDRU estimate in the record of a **35% false-rejection rate — 4.5m of 13m
  eligible claimants**.
- **Uganda's court found public health absent from the s.66(2) mandatory-ID list**, so ID demanded at
  health facilities is **practice without statutory basis** — relocating the remedy from constitutional
  challenge to administrative discipline.
- **Togo's art. 8 requires prior authorisation for biometric processing and for use of a national
  identification number.** Its MOSIP-based e-ID does both; **no authorisation is held.**
- **Gabon's art. 75 is an outright biometric prohibition**, making the CNIE lawful only by derogation —
  and **no APDPVP authorisation for the 2024 build has been found**.
- **CAR has a fifth data-centre thread predating the other four**, and it is the World Bank's own: two
  government facilities under construction in **2022**, one specified Tier II→Tier III. The 2026 Huawei
  pitch repeats a 2022 target.
- **Zimbabwe's 5G reaches 18.9% of population and 0.0% of rural areas**, against 3G at 73.7% rural.

### Judgement calls worth recording

- **The DHA APP was a keep-both, not a replace** — the fuller capture truncates before **Part E**, the
  only place the document states the Assumptions line that evidences *SARB integrates, SARS hosts*. A
  fuller capture is not automatically a superset.
- **A PDF extraction artefact was caught mid-propagation:** the companion's flat-text rendering of the
  MTEF table column-misaligns, making 2025/26 targets read as 2026/27. The wiki's prose was right only
  because it followed the narrative rather than the table.
- **One worker refused to cite a document I had told it about**, because the wiki does not hold it —
  stating what *is* held instead. That is precisely the discipline whose absence caused the morning's
  defect.
- **Malawi's Act was completed in place** under the verbatim-fidelity exception (204 → 1,047 lines),
  settling s.53 — which had been outside the previous capture and carried on report only.

### Still open

- **The ZRHCP Subcomponent 1.2 discrepancy is real and filed**: PAD **US$6m / ~150,000 cards** against
  ESMF **US$6.5m / ~100,000** — moving in opposite directions, so unit cost jumps ~US$40 → ~US$65. The
  ISR that would settle it is re-queued (403).
- **Angola's 150,787 census gap is now worse-evidenced, not better.** INE's synthesis offers no
  reconciliation *and no coverage-adjustment methodology*, so the wiki's raw-vs-adjusted explanation is
  downgraded to an inference.
- **Malawi's s.53 arithmetic does not close** — 24 months from a commencement date that GN 40, unheld,
  would fix. Carried as reported, not sourced.
- **59 files still reference the deleted registers**, and the Google Johannesburg mis-dating is still
  live in `google.md`'s source list. Both carried over from the previous entry.

## 2026-07-20 — Ingest: the reconcile batch filed (65 clips, 14 workers)

`new/` drained; `raw/` at 4,631. First batch ingested under the rewritten rules. 19 concept pages updated.

### The finding: reconcile research reached pages without its sources

**Four workers hit this independently, and it is my defect, not theirs.** The reconcile pass surfaced
findings from documents it read but did not ingest, and I relayed them into page prose and into the ingest
briefs as though they were established. In every case **the sharpest claim was the unsourced one** — which
is not coincidence: research surfaces the striking detail first, and the striking detail is what got
relayed.

| Where | Asserted | Actually held |
|---|---|---|
| `veridos` / `uganda--dpi-id` | €64.2m 2010 contract, UGX 59.952bn plant, 2016 UPPC JV, 2017-07-03 award, 51/49 split | **None of it**, in either cited clip or anywhere in `raw/` |
| `zrhcp` / `ZMB` | The **ProGres → MoHAIS custody transfer**, $27m/$3m split, Subcomponent 1.2, card counts | PAD/ESMF-derived; **PAD not held**, and cited to a secondary that does not carry it |
| `SSD` / `south-sudan--dpi-govtech` | NSS Internal Security Bureau endorsement "because Crawford was building large databases", Nov-2019 date, CapitalPay, UNCAC arts, VP Igga reversal, shareholdings | From the unheld OHCHR PDF and un-ingested secondary reporting |
| `SEN` | CDP opened revision 2017, 2019 APDP draft, Cour Suprême 2022, Oct-2024 workshops | **No held source carries any of it** |

Two smaller cases of the same shape: an **Enugu contract termination dated February 2025** that no held
source carries (possibly conflated with the separate Mbu termination), and **Sudan's "software-only"
tender scope**, which sits in a specifications document linked from the notice and not held.

Invented precision is the signature: a committee resolution dated "2022-11-22" where the clip says only
that a probe was announced, and "Matthias Karl Kohler" where the source says "Karl Kohler".

**Handled as provenance boundaries, not deletions** — the claims are probably true and worth keeping, so
each site now states plainly what is source-established and what is reconcile-established, dated. The
acquisitions that would close them are queued; the OHCHR report and the DZAP PAD are the two highest-value
items in that list. **One consequence worth naming: `reviews/contradictions/research/` was deleted earlier
today, so the working notes behind these claims survive only in git.**

### The mirror image — pages claiming ignorance they didn't have

`chad-national-data-centre` said the facility's size and location "have not been disclosed" when two held
sources state both (N'Djamena, four storeys, ~2,000 m²). The apparent conflict between "2,000 m² over four
floors" and "500 m² over four levels" is not one: 500 × 4 = 2,000, the same building measured two ways. So
the corpus has been **over-claiming from unheld research and under-claiming from sources it holds**, and
both are failures of the same discipline.

### Corrections landed

- **Uganda's card vendors were inverted.** Mühlbauer was the *incumbent* 2010–2018; **Veridos has held
  production since 2018** via USPC. The 2022–23 parliamentary fight tried to displace Veridos and failed.
  The "overcharging scandal" claim is **withdrawn as unsupported** — objections ran the other way.
- **Gabon's registry was Gemalto's, not Thales's** (Thales holds it via the 2019 acquisition). The two
  firms traded identity assets **both ways**, so neither won its mandate under the name the wiki used.
- **Three Angola claims traced to one secondary headline**: CEIEC mis-dated by 2.5 years (contract
  *Despacho Presidencial nº 8/17*, 2017-01-03; Nov 2019 is the *inauguration*), a **$200m Indian credit
  line that is for defence**, and an **Aadhaar/MOSIP engagement that does not exist**.
- **Ghana's "National Identification Act 2009" does not exist** — Act 707 (2006), Act 750 (2008), Act 950
  (2017), L.I. 2111 as amended by L.I. 2356.
- **Chad's Huawei relationship is incumbent since July 2020**, not prospective — on a China Eximbank loan
  already in repayment with works incomplete.
- **Enugu is 260 schools, not 267**, with a documentary trail the gap I filed claimed did not exist.
- **`BFA.md`'s "370 of 750" was a misread** — the Primature says the 750 are *en complément des 370*.
- **AVCA's US$3.9bn is equity+debt**, the analogue of Partech's US$4.1bn, not a rival equity series.

### Rules exercised, and where they bit

- **Entity tagging (3–6, institutions not officeholders)** worked as intended. The clearest case: dropping
  minister tags from the CAR clips means the **unresolved Gourna Zacko / Andjalandji succession no longer
  propagates through frontmatter**, only through prose where it can be dated. A worker also dropped EBS
  from a Sudan clip on finding it **nowhere in the body** — it had reached the clip from the reconcile
  pass's surrounding knowledge. Tag contamination from context is real.
- **Replace** was exercised four times, each a genuine tier upgrade: a TechReviewAfrica rewrite displaced
  by the eGA primary; a Techpoint file whose stored body was **a paraphrase**; a Starlink `excerpt` with
  sixty lines of chrome; a TechAfrica re-report superseded by pm.gov.tn.
- **Keep-both was defended on a principle the rule doesn't state:** a source that is the *origin of a
  circulating error* is not a duplicate — it is the evidence for the correction. Applied to the Biometric
  Update Angola piece, the EBRD mis-dating and the 25-350 mis-numbering.
- **A worker correctly overrode my brief** on `last_reviewed`: I said set it on every page touched; it
  declined for twelve pages receiving only a one-line source append, because CLAUDE.md defines it as
  marking a *substantive* check. My instruction would have degraded the freshness signal.

### Housekeeping

- **`gov.procure` is not a taxonomy slug** — a worker invented it and tagged two sources plus an entity
  page. Corrected to `gov.policy`. A full vocabulary lint over all 143 files touched today is otherwise
  clean: no invalid topic slugs, no invalid place codes.
- **Structural fixes found while filing:** a malformed `sources:` bracket on `libya--infra-connect` that
  was swallowing two entries; twelve entity `sources:` lines normalised to canonical form; `TUN.md` out of
  reverse-chronological order; four hub citations pointing at prose titles matching no file.

### Still open

- **59 wiki files carry references to the deleted registers** (`ISSUE-NNN`, `GAP-XXX-NNN`,
  `reviews/gaps.md`). Under the new rules each should become a dated statement of what isn't established,
  or be dropped. Not yet done — it is a mechanical sweep with varied phrasing and wants care rather than a
  blanket regex.
- **The Google Johannesburg mis-dating is still live in a source list.** `google.md` cites
  `2025-03-27 Google launches first African cloud region in Johannesburg` — the exact case CLAUDE.md uses
  as its worked example of the event-date rule, 14 months out from Google's own 2024-01-31 opening.
- **`_watchlist.md` was never consulted.** None of the fourteen briefs told workers to check it, so the
  third leg of the entity-tagging rule went unexercised across the whole batch. My omission.

## 2026-07-20 — Reconcile pass: `open/` drained, 49 → 0

Ran the whole folder, as its README requires, across 15 workers. **All 49 items closed**; `open/` now holds
only its README. 64 primary clips are staged in `new/` for a normal ingest. Individual resolutions are on
the pages and in `reviews/contradictions/done/`; what follows is what the pass revealed *in aggregate*.

### The pass's main finding is about the corpus, not any one country

**Event date ≠ publication date is not an occasional slip. It is the corpus's dominant failure mode.** This
run found it **nine more times**, on top of the ones the morning's pass found:

| Where | Held | Actual | Out by |
|---|---|---|---|
| ZIMRA / TaRMS (ZWE) | 2025 (inferred year) | Jan 2026 (bracketed) | ~12 months |
| ZILAS (ZMB) | SZI portal pages | ministerial statement, go-live 2023-05-17 | ~16 months |
| ZRHCP (ZMB) | 2025-10-03 re-report | WB approval 2024-09-26 | ~12 months |
| D-Money ports (DJI) | 2021-12-11 proxy | published 2023-12-12, event 2023-12-10 | ~24 months |
| NITA-U / eGA (UGA) | 2026-07-17 proxy | 2026-02-19 (dateline was on the page) | ~5 months |
| CEIEC contract (AGO) | Nov 2019 | *Despacho Presidencial nº 8/17*, 2017-01-03 | ~2.5 years |
| EBRD–Tunisie Telecom | 2026-01-19 re-report | EBRD's own, 2026-01-16 | 3 days |
| LTT–ZTE MoU (LBY) | 2026-03-11 | 2026-03-09 (The Register's republication date) | 2 days |
| GIYH criticism (SWZ) | 2025-08-05 WB passing mention | 2025-07-04 substantive account | ~1 month |
| IFC DFS report (SDN) | 2026-07-16 (ingest date) | 2021-10-24 | ~4.7 years |

Five were corrected in `raw/` by the orchestrator (workers may not write there): the Sudan IFC report, the
Djibouti D-Money clip, the NITA-U clip, the ZIMRA clip, and the DataReportal Zimbabwe currency flags.

**Two lessons worth keeping.** First, **"date could not be established" was wrong more often than it was
right.** The NITA-U clip's dateline was sitting on the publisher's page and had simply been lost in capture;
the ZIMRA date was recoverable by bracketing a monotonic news-ID sequence against *near* anchors rather than
one 52 IDs distant. A capture failure had been wearing the costume of an honest limitation. Second,
**lint #11 cannot catch any of this** — every bad prefix was well-formed, merely false.

### Errors of substance corrected

- **Three separate Angola claims trace to one Biometric Update headline (2025-05-07):** the CEIEC contract
  mis-dated by 2.5 years, a **$200m Indian credit line that is for defence, not DPI** (per Modi's own words),
  and **an Aadhaar-modelled Angolan ID and MOSIP engagement that do not exist.** A single secondary headline
  had manufactured a China-vs-India DPI contest the record does not support.
- **Uganda's card vendors were inverted.** Mühlbauer was the *incumbent* producer 2010–2018; **Veridos has
  held production since 2018** via USPC (Government 51% / Veridos 49%). The 2022–23 parliamentary fight tried
  to *displace* Veridos and failed. The "overcharging scandal" claim is **withdrawn as unsupported** —
  objections ran the other way, that the Veridos card was too expensive.
- **Gabon's registry was Gemalto's, not Thales's.** Thales holds it only via its 2019 acquisition. The
  conflation had a real cause: the two firms traded identity assets **both ways** (IN Groupe bought Thales's
  identity arm in 2017), so neither won its Gabonese mandate under the name the wiki used.
- **Ghana's "National Identification Act 2009" does not exist.** The stack is Act 707 (2006), Act 750 (2008),
  Act 950 (2017), L.I. 2111 (2012) as amended by L.I. 2356.
- **Chad's Huawei relationship was described as prospective.** Huawei has been the **incumbent PMICE
  contractor since July 2020**, on an Eximbank of China loan already in repayment. That inverts the
  "courting every bloc" reading: China is not one option among several, it is the built infrastructure.
- **A South African IDEMIA contract for 80m cards over ten years appears not to exist** — one unsourced
  sentence, no award notice, and GPW produces Smart IDs in-house. Struck as unverified.
- **Enugu's schools programme is 260, not 267**, and — contrary to the gap that spawned the brief — has a
  substantial documentary trail, including a terminated ₦11.4bn contract, an **EFCC recovery of ₦1.23bn**,
  and a school **demolished in July 2025** after failing integrity tests. The page now reads as a caution
  about announced-vs-verifiable scale.
- **`BFA.md`'s "370 localities of 750 targeted" was a misread** of Digital Magazine; the Primature says the
  750 are *"en complément des 370 déjà réalisées en 2025."*
- **The UN Commission does not name Adut Salva Kiir Mayardit** in connection with Crawford Capital; that
  attribution came from secondary reporting and is now marked *reported, not established*.

### Where the pass corrected this morning's work

- **The EBRD conflation hypothesis was wrong.** The morning's Medusa reconcile concluded that the "EBRD
  €190m finances the Tunisia–Medusa connection" line was trade press conflating a separate corporate loan.
  The EBRD's own statement says the loan finances "**Tunisie Telecom's connection to the MEDUSA submarine
  cable**". Two financings, different money for different objects: the €10m EU CEF grant built the landing
  station Orange owns; the EBRD loan funds TT's connection into the cable as a capacity customer.
- **Decree 26-07 (DZA) should not have entered the record.** Its only sources are `algeriatech.news`, an
  AI-generated content farm; it was written into a gap entry this morning on that basis and is now
  unestablished. A decoy was also caught: a "Référentiel national" presented Feb 2025 predates the decree by
  ten months and is a different object.
- **Two Burkina figures called "uncitable" this morning are real published statements** — Burkina24 and the
  PM's Situation de la Nation. They reconcile on sites ≠ localities and calendar increment ≠ cumulative.
- **P174620 is not CARDIP**, as a brief asserted; it is the bilateral Public Sector Digital Governance
  Project, with no data-centre component.

### Findings of substance the wiki did not hold

- **UNHCR's ProGres refugee database transfers wholesale to Zambia's Ministry of Home Affairs**, with
  refugees enrolling into **INRIS itself** (World Bank P503941, $6m identity limb) — a custody transfer with
  only procedural safeguards. This partly closes the wiki's standing "no account of data-sharing terms".
- **South Sudan's e-Government revenue platform is Crawford Capital Ltd**, untendered since Nov 2019, on a
  **75% profit share**, with public revenues held outside the treasury — and the procurement was endorsed by
  the **National Security Service's Internal Security Bureau because Crawford was building large
  databases** (UN Commission, *Plundering a Nation*, A/HRC/60/CRP.5). A control case sits alongside it: a
  comparable SSRA BOT at **3.56% with full transfer to the state**.
- **Algeria's data-governance decree has not commenced.** Art. 19 makes its duties run only from publication
  of the two Art. 8 *référentiels*, which issue by décision of the High Commissioner — and no such
  publication is traceable. Six months after gazetting, the core obligations are not shown to be in force.
- **Eswatini's GIYH shipped ahead of its own identity and PKI layer**, and the criticism is substantiated
  rather than alleged: a reporter located public data on the system and the eGovernment Services Director
  acknowledged it.
- **Four proposals, three geopolitical sponsors — China, the US, Rwanda — circle one unbuilt CAR data
  centre.** Visible only once `car-socatel-national-digital-hub` and `car-data-centre-threads` were
  recognised as the same object.
- **CAR launched an SNID on 2025-11-28** the wiki knew nothing about; routed to acquisitions pending an
  official communiqué rather than asserted on a single account.

### Rebrands read as new systems — now four this session

**SmartCare "Care 2.0"** is the Hospital Edition tier of one lineage, not a distinct build — joining
NIPS/SSIPS, Jamii Namba and Econet InfraCo. Worth treating as a standing pattern rather than four
coincidences.

### Routed rather than researched

Reconcile is a research pass; a fetch list is a different queue. **`acquisitions.md` grew to 76 items**,
including the Ghana gazetted Acts, Chad's six legal texts, the Tunisian *plan de développement 2026-2030*,
the UN Commission report, ZRHCP's PAD/ESMF, and the CAR World Bank PADs. Two are recorded as **blocked**
rather than pending: INACOM's *Relatório Anual Estatístico* (client-side app, three routes dead, needs a
browser session — do not retry automated) and the Somali NIRA colocation award ref 4500377 (subscriber
wall). An honest caveat sits with the first: **it is not established that the INACOM series reports a
national fibre-km total at all**, so obtaining it may not settle the question it was routed for.

### Orchestrator error, recorded

I dispatched **48 of 49** items and reported the pass as complete before noticing; `zimbabwe-zimra-tarms-date`
was run afterwards as a fifteenth worker. The miscount was mine, not a worker's.

## 2026-07-20 ingest — the reconcile pass's 74 primaries drained from `new/`

Ingested in **17 country-scoped thematic chunks** so no two runs touched the same place hub; the shared
surfaces (concept pages, the three indexes, this log) were held back and applied in one pass afterwards.

**Counts.** 74 clips in. **70 admitted** to `raw/`. **2 discarded as relevant-duplicates** of items already
held (an Angop cybersecurity-suspension piece the reconcile pass had itself already ingested; a New Vision
Uganda 35m story held under a different URL segment). **2 were not new sources at all** and were used as
**verbatim fidelity re-captures** instead (below). `new/` is empty.

### The re-captures — and the error they exposed

`raw/2025-09-11 DZAP World Bank PAD.md` and `raw/2025-01-20 PID Appraisal Stage — DZAP (P505094).md` both
stored a **curator paraphrase / companion note**, not the documents' own words. Both were overwritten with
verbatim text under the CLAUDE.md bounded immutability exception (ISSUE-016), keeping filename, `published`,
`ingested`, facets and artefact pointers. Two deviations from the letter of that rule are recorded on the
pages themselves rather than glossed: `url:` was completed from `unknown` / a bare domain to the canonical
deep link, and `body_completeness` is set to **`excerpt`** rather than `full`, because the verbatim capture
is itself partial. Raised as **ISSUE-030** for ratification.

**This immediately paid for itself, against the reconcile pass's own work.** The verbatim PAD says INRIS
"**registered 15 percent of adults using biometrics**" — a **percentage, not an absolute**. The reconcile
pass had reported the PAD as stating "around 1.5 million people", and I wrote that onto four pages. **That
phrase is not in the text.** Any ~1.5m figure is an *inference* from 15% against a ~10m adult base — the
same move the original contradiction brief made to reach ~1.6m from a slightly different base. Corrected on
`inris`, `dnrpc-zambia`, `zambia--dpi-id` and `ZMB`: the percentage is what the PAD asserts, the absolute is
derived. The underlying resolution (no de-duplication occurred; the Dec-2025 "1.3m" restates a May-2024
figure; enrolment plateaued) is unaffected — but it now rests on what the document actually says.

### Corrections landed while filing (beyond the briefed threads)

- **[[AGO]]** — the hub reported UNESCO RAM as "**83% AI-ready**". 83.6% is **50.9% fully ready + 32.7%
  partial** summed. Now reported as three bands. Separately, the cybersecurity-bill suspension carried
  **2026-07-08** (a publication date) where the event is **2026-07-07** — the very error class this batch
  exists to fix. Luanda provincial report re-dated 2026-03-03 → **2026-02-24**.
- **[[UGA]]** — `uganda--dpi-id` recorded the ~18m unregistered as an advocacy estimate carrying "no cited
  source, and that absence is itself the finding". **Wrong**: the count is NIRA's own (ED Kisembo to
  COSASE, 2024-07-01). The uncited element is narrowed to the "about 40% of the population" gloss, which
  the wiki now adopts the count while rejecting.
- **[[ZAF]]** — the four-party pact re-dated to **2025-04-03** throughout; `nigerian-exchange` and
  `victoria-falls-stock-exchange` both asserted documents were "not held" which this ingest falsifies.
- **[[SEN]]** — the breach entry carried "2026-02" (a publication month) where the intrusion is
  **2026-01-19**.
- **[[ZWE]]** — the National AI Strategy launch, previously "March 2026", is pinned to **2026-03-13** on
  four pages.
- **[[TGO]]** — the DHIS2 milestone entry was dated to the article's **translation** date (2024-11-19);
  re-dated to the 2021 technical milestone, with the "under review" line pinned to the English original's
  **2022-12-01**.

### Duplicates and fidelity flags raised for the human (nothing deleted)

- **Prune candidates** (primary now held, secondary adds nothing): `raw/2024-11-19 HISP WCA…Togo` (the
  French **translation** of the newly-held English original — also the reference case for ISSUE-024);
  `raw/2026-03-24 Zambia seeks partner for national digital ID system` (Channel Africa condensation of the
  ZNBC broadcast); `raw/2026-07-15 Senegal digitizes more than 15 million birth records` (syndicated APA
  copy); the two Botswana Tech Fund press-release reprints now the fund's own release is held.
- **Further non-verbatim bodies found in `raw/`** (ISSUE-016 candidates, not actioned): the CIPIT Malawi
  review; the Congo `2024-05-20` data-centre item (an editorial merge of two outlets plus a 2025 update).
- **Stale claims inside immutable `raw/` files**, corrected on synthesis pages only: the ID Tech Wire Malawi
  piece (asserts no enacted data-protection law, eleven months after commencement); the TechCabal South
  Sudan piece (headlines a project launch as a system launch — its **filename** asserts it too); the
  `2026-02-24` Senegal item ("official DAF communications dispute any confirmed leak", which the APS
  communiqués disprove); and a wiki-authored ingest note in `2026-02-27 SA powers Africa's $1.64bn` carrying
  the exact false parallel this batch refutes.

### Two figures in the corpus with no source at all

The Burkina chunk found that **"330 localities since 2019"** and **"441 sites / 126 rural"** — both cited in
the reconcile record — correspond to **no held `raw/` item and no URL on file**. They appear to have entered
working notes from reconcile research without a corresponding ingest. Flagged as provenance gaps and **not
citable** until sourced. A useful reminder that the research/ingest boundary exists precisely to stop this.

### New contradictions filed (4)

- **`africa-vc-equity-2025-direction`** — Partech reports CY2025 equity **+8% to US$2.4bn**; AVCA reports
  **−21% to US$2.1bn**. Opposite **signs** on the same quantity, each against its own 2024 base. Sharper
  than the Partech/Disrupt Africa item this batch closed, and not resolvable by scope alone.
- **`dpa-zimbabwe-vs-cassava-identity`** — the held `distributed-power-africa` page describes **Cassava's
  South African** solar business; Econet's notice describes a **Zimbabwe-registered** DPA now trading as
  InfraCo. Same brand, two group arms, no document tying them. Marked do-not-merge pending registry extracts.
- **`burkina-faso-white-zones-coverage-to-date`** — a numerator-only dispute (223 vs 330 vs 138 vs 441 vs
  370 localities/sites covered), explicitly not disturbing the resolved 2027/2030 horizon finding.
- **`senegal-daf-perso-server-contents`** — whether the compromised "Perso" server held civil-identity
  records or card-personalisation data, which changes the breach's severity. Filed as asymmetric: Dark
  Reading's civil-identity reading is the reporter's hedged inference.

### Notable finding — the Google mis-dating has a documented origin

The GCIS Cabinet statement of **2025-03-26** records Cabinet "welcoming the launch of Google South Africa's
R2.5-billion cloud region" — **fourteen months after the region actually opened**, and it is the origin of
the R2.5bn figure the wiki carries. This **corroborates** the existing correction rather than reopening it
(Google's own 2024-01-31 announcement remains dispositive; a government body re-welcoming an event does not
re-date it) — but it shows the error class propagating through otherwise-credible official sources.

### Editorial actions

- **One intersection created:** `togo--dpi-mis` (4 sources, ~6 developments, ~900 words — clears the
  materiality bar). Three declined on judgement and reported instead: `malawi--gov-protect` (the instrument
  page already does the job), `tanzania--dpi-exchange` (splitting it would separate Tanzania's two exchange
  builds, the exact conflation the primaries warn against), `burkina-faso--infra-connect` (thematic, not
  matrix-shaped).
- **Concept pages updated:** 23, with ~35 dated bullets. `dpi.mis` had its three citations of the French
  translation swapped to the English original.
- **`wiki/places/ZAF.md` is 3,916 words**, over the ~2,500 review threshold. Diagnosed as **thematic, not
  matrix-shaped** — eight intersections are already split out and "Earlier milestones" is already reduced to
  pointers. Left long deliberately; flagged for the human's judgement.

## 2026-07-20 reconcile pass — 34 contradictions researched, 32 resolved, 2 reframed

Ran `reconcile_review.md` across the whole of `reviews/contradictions/open/` (34 items). Each was
researched via Exa against primaries, its raw research quarantined to
`reviews/contradictions/research/<id>.md` (DO-NOT-INGEST), the primaries it surfaced dropped into `new/`
for normal ingest, and the affected wiki pages fixed. **No wiki page cites a `research/` file, and nothing
was written to `raw/`.**

### Resolutions applied (tier-2, auto-then-digest)

**Corrections — the wiki was wrong**
- **Algeria data-governance decree is 25-320, not 25-350.** Read off the *Journal Officiel* n° 87 of
  30 Dec 2025 (joradp.dz) — the number appears in the issue *sommaire* and as the heading of the enacted
  text, signed Tebboune; **no act numbered 25-350 exists in that issue**. Companion Decree 25-321 (ISS
  Strategy 2025-29) was signed the same day. Entity retitled; DZA hub, `algeria--gov-protect`,
  `digital-algeria-2030` and both indexes corrected. The error is wider than the brief knew — several
  Algerian outlets print 25-350 in Feb-2026 launch coverage while quoting PM Ghrieb saying 25-320.
- **Microsoft's R5.4bn South Africa investment was announced 2025-03-06, not April 2026** — a **13-month**
  error, and the same failure mode as the Google Johannesburg cloud region. Both held dates were the
  re-reports' own publication dates; Daily Maverick (2026-02-09) had already treated the announcement as
  made. April 2026 is a real event but a different one: Microsoft **detailing the allocation** of the same
  R5.4bn, not a further investment. Also encoded: **prefer rand over USD** for this commitment — $296.8m /
  $298.6m / $329m are the same money at three exchange rates.
- **South Africa's four-party digital-ID pact was signed 2025-04-03, not April 2024.** Per SARS's own
  release ("3 April 2025… signed today"); no 2024 instrument between those four bodies exists. Two
  agreements were signed that day — the four-party MoU and a bilateral SARS–DHA agreement reviving the
  **Direct Master Agreement in place since 2010**, which the retrospective mention had garbled into one.
  The Digital Transformation of Government Roadmap was **approved by Cabinet 2025-03-26** and **publicly
  launched 2025-05-12** — both real, six weeks apart, so the hub now carries both.
- **Nigeria's 2008 crash: ₦6.96tn is the closing market capitalisation, not the loss.** The CBN's
  contemporaneous account (*CBN Bullion* 32(4), Dec 2008) records the peak at ₦12.50tn (Feb 2008), the
  close at ₦6.96tn (31 Dec 2008), and the loss at **₦5.55tn / 44.4%** from March 2008. Neither competing
  dollar value ($55.03bn, $5.03bn) converts the right quantity, so **no dollar figure is carried**. The
  mislabelling is not one outlet's — it recurs across Nigerian financial writing since at least 2019.
- **Angola's National Cybersecurity Strategy was enacted, not draft.** Presidential Decree **256/25**
  (Council of Ministers 2025-10-27, published *DR* Iª Série n.º 227 of **2025-12-03**), with **DP 258/25**
  creating the Conselho Nacional (same day) and **DP 263/25** the Centro Nacional (2025-12-10). Entity
  retitled; the "draft" framing came from trade press.
- **Malawi's Data Protection Act 2024 is enacted and in force** — passed 2023-12-07, assented 2024-01-31,
  gazetted 2024-02-02 as Act No. 3 of 2024, commenced **2024-06-03** under GN 40 of 2024, MACRA designated
  DPA by s.4. The held ID Tech Wire claim that Malawi has no enacted law and a stalled Bill (2025-05-21)
  is simply **wrong**, not a compressed operational point — by then the Act had been in force eleven
  months. The real gap is operational (first regulations April 2025; s.53 exempted most controllers until
  2026-06-02; DPA unit still being stood up as of 2026-07-14).
- **South Sudan: "IBPSS" is a mangled acronym, and NIPS never went live.** The live system is **SSIPS**
  (South Sudan Interbank Payment and Settlement System), launched **2025-10-10** — an ATS+ platform
  combining RTGS and ACH on ISO 20022, 13 banks at launch, all licensed banks mandated by 2026-01-31.
  It is **wholesale settlement plumbing, not a retail instant rail**. The February 2025 NIPS event was a
  **project launch** (AfricaNenda's own words: "developing a detailed roadmap"); no go-live is documented,
  and AfricaNenda's *SIIPS 2025* does not list South Sudan among Africa's live instant-payment systems.

**Dissolved — not contradictions at all**
- **Medusa/Bizerte (CONTRA-TUN-001).** Orange Tunisia owns and operates the landing station and the
  ~1,050 km Tunisian segment (hosting agreement 2023-05-11; EU CEF grant €10m); Tunisie Telecom is a
  **capacity customer** on a 20 Tbps pair agreed 2025-02-07. Both CEOs attended the 2025-10-31 landing and
  each firm's PR re-cut the shared event around itself.
- **Africa tech funding 2025.** Partech counts **equity plus debt by deal** (US$4.1bn, 570 deals);
  Disrupt Africa publishes a **self-declared minimum floor by funded venture** under a narrow startup test
  (US$1.6367bn, 178 startups). Not commensurable. **Two corrections to the brief:** its supporting
  observation was a false parallel — Disrupt Africa's 72.5% is share *by count*, its share *by value* is
  **88%**, so the two diverge by 16 points, not converge; and Partech's *debt* subtotal (US$1.64bn) being
  identical to Disrupt Africa's *total* is coincidence, not reconciliation.
- **Eswatini DRA handover.** One event, **2024-11-13** — results launch, validation workshop and formal
  handover were a single occasion, per UNDP Eswatini's own press release published that day. Claim B was
  never asserted by its source: the UNDP blog gives no handover date, and "10 December" is its CMS stamp.
  The contradiction was **generated by** the ingest defect CLAUDE.md already names.
- **Burkina Faso white zones.** end-2027 is the political horizon of the two funded 750-locality phases;
  **2030** is the operational horizon for clearing all ~2,000 zones, and the ministry's own Transition
  Digitale 2030 roadmap year. Bridging fact found: **Phase 2 = a further 750 localities, announced for
  2027**.
- **Botswana Tech Fund.** £50m **target** (2026-04-21), £10m **committed**, £5m **first close**
  (2026-04-27) — three bases, reported at the same moment; Guernsey domicile, Gaborone operating base. The
  defect was in promotional coverage converting a target into an apparently-raised sum.
- **Congo National Data Centre.** €66.55m total CAB Congo component (€52.47m AfDB + €14.50m government)
  covering **both** 600 km of fibre and the data centre; **~€13.8m (≈US$15m)** for the data-centre build
  alone. Congolese reporting's "$13 million" is the euro figure in the wrong currency.
- **Lesotho / Project Kobong.** A **binding Memorandum of Agreement** signed 2026-06-04 — but a
  **development framework only**, expressly subject to feasibility, permitting, financing and definitive
  agreements. The ~$6.2bn is proposed project value, not committed capital. Both outlets were partly right.
- **Econet InfraCo.** Neither newly founded nor a simple rename: it **is Distributed Power Africa (Pvt)
  Ltd**, renamed and converted private→public (2026-03-24), with assets transferred from EWPL and other
  SPVs as a going concern under a Scheme of Reconstruction completed **2025-12-24**. VFEX-listed
  2026-03-31 (~US$1bn), EWZL retaining 70%.
- **SASSA biometric scope.** Two stages: from **2025-05-05** for alternative-ID clients and triggered
  reviews (enforced — May payments withheld); from **2025-09-01** for **all new applications**. **Not
  universal** — van Vrede to the Portfolio Committee, 2025-08-27: "we are not saying everyone must come in."
  What slipped from April was the wider BBE programme, not the May measure. *Correction:* the SCA matter is
  the **SRD-grant** exclusion appeal, not a challenge to biometric enrolment.
- **South Africa digital ID — SARB *and* SARS.** The DHA Annual Performance Plan 2026/27 (tabled
  2026-03-30) names both in one sentence: core identity/PKI infrastructure **hosted in the SARS
  environment**; **SARB an integration partner on payments/eKYC**, its own roadmap stating it is "not the
  leading authority in relation to identification in SA". The 2025 DHA sources were **incomplete, not
  wrong** — and there was no acronym slip.
- **Zambia digital-ID target.** SZI's end-2026 is **first issuance** (initial goal 2m); DNRPC's end-2027 is
  **population-scale coverage**. DNRPC owns issuance, SZI owns the system (World Bank PID). The funded
  target is neither: **4m people by October 2030**.
- **Zambia GWAN.** All 116 councils = SZI's own "phase 1 completed 100 percent" (GCTO Musenge, 2026-03-25);
  North-Western Province (2026-07-07) covers councils **and post offices** over **fibre** — a later phase.
  Caveat recorded: SZI's "connected" has sometimes meant completed site works, not live service.
- **Mauritania Houwiyeti.** The 24.8%→32.9%→35.7% series is the like-for-like measure; the "70% of passport
  requests" is undenominated and **inconsistent with ANRPTS's own volumes** (~94,000 national requests/year
  to mid-2023 vs the app's 63,384 cumulative over ~2.5 years). The extract counts are not comparable on any
  basis — "622,000+ in a year" exceeds the app's entire cumulative all-service total thirteen months later.
- **Togo DHIS2 EMIS.** 2019 = engagement begins; 2021 = StatEduc interoperability go-live. The "under
  review by the Ministry" line dates to the article's **English original of 2022-12-01** — the held French
  page is a **translation carrying the translation date**, so the wiki was running a two-year-old status as
  current. DHIS2 is the national **analytical** layer above CSPro/StatEduc, not the collection layer.
- **Uganda unregistered population.** The 18.1m is **NIRA's own figure**, not the advocacy author's
  estimate: ED Kisembo to COSASE, 2024-07-01, against the **total** census population of 45.9m, adding that
  most unregistered are **children under 17**. Against 23,154,716 adults (18+) the adult gap is ~**2.0m,
  ~9%**. The 35m register is cumulative enrolments with no death/emigration deregistration. The binding
  constraint is **card possession**: 10,152,559 printed, **2,581,457 collected (35.5%)**.
- **Senegal civil records.** ~19–20m = legacy paper acts **scanned and indexed** under NEKKAL (target 30m);
  **15.3m** = records **loaded into the live RNEC database** — a subset, not a regression. Minister Fofana
  drew the distinction himself in June 2024 ("une bonne partie accessible à partir du RNEC").
- **Senegal DAF breach.** The 139TB/139GB split is **the same actor's claim in two artefacts** — leak-site
  posting vs ransom note — with ~139 GB the more credible and **no volume independently verified**. A real
  exfiltration *is* established (Clément Domingo confirmed genuine birth records and ID cards in the
  samples). **Correction:** the DAF never denied exfiltration — its communiqués assert only that data
  *integrity* "demeure intacte", silent on confidentiality. The wiki must not carry that as a denial.
- **Zambia INRIS enrolment.** No de-duplication and no downward revision occurred. The Dec-2025 "~1.3m"
  restates the May-2024 figure in a PR briefing; the PAD states ~1.5m at 2025-09-11. The "~1.6m implied"
  is retired. The finding is a **plateau, not a decline**.
- **Chad internet penetration.** A **publisher rebase**: DataReportal's *Digital 2025* reports 13.2% with
  +4.3% growth and the rate "unchanged", implying a restated Jan-2024 base of ~13.2%, not the 22.5% its own
  2024 edition published. ITU/World Bank give 12.63% (2024). The 22.5% is **superseded**.
- **Zambia internet penetration.** Two measures plus a vintage artefact: carry **33.0% (7.29m people,
  Oct 2025)**; ZICTA's 56.8/64.1/72.1 are **subscriptions per 100 inhabitants**, stated as such in its own
  2022 report and stripped of unit and vintage by UNDP; the DZAP PAD's ~21% is a **retired Kepios vintage**
  for 2021–Jan 2023.
- **Zimbabwe internet penetration.** The 87% is **POTRAZ's own subscriptions ÷ population series** (84.55%
  Q4 2025 — the minister quoted that exact figure to two decimals on 2026-03-13). Decisive tell: the series
  *fell* 1.37pp in Q1 2025 because population grew faster than subscriptions, which a usage measure cannot
  do. DataReportal's 38.4% (6.54m, Oct 2025) measures **users**. Fibre: the minister's "more than 17,000 km"
  is stale, not wrong, against POTRAZ's 19,000+ km (Q1 2026).
- **CAR internet penetration.** The ministry's ~30% is a **network-coverage** figure — the minister
  described it rising to 50% then 70–80% as backbone fibre reaches new regions, against a target of 70%
  *couverture nationale*; a usage rate cannot be moved by laying transit fibre. Kepios's 15.5% (Jan 2025)
  has been **withdrawn by the publisher**. Carry ITU **13.8% (2024)** with Kepios **12.0% (Oct 2025)**.
- **Luanda / Censo 2024.** Definitive figure **8,816,297** (INE, reference date 2024-09-19), on post-2025
  provincial boundaries. **Neither** Novo Jornal figure was the provincial total: 7,961,235 is the
  **aged-5+ denominator** for INE's ID-holding indicator, and "mais de 8,6 milhões" is **8,665,510** from
  INE's separate Luanda provincial report, wrongly paired with the national 24.1% share.

**Provenance hunts — both origins established**
- **Uganda civil-society submission.** *"Seizing the opportunity to improve the national digital ID system
  for Uganda"* is a joint publication of **CHRGJ (NYU School of Law), ISER and HEAPI**, published
  **2024-07-25**. The load-bearing ~1m-unmatchable-fingerprints claim has a dated primary: **UBC**
  (2024-07-02) reporting NIRA ED **Rose Mary Kisembo** to Parliament's COSASE. **Caution recorded:** the
  IriTech line previously treated as corroboration is a *different proposition* — people who could not
  **enrol** prints, versus people already in the register whose stored prints **fail matching**.
- **Tanzania "Jamii" case study.** `_leads/Tanzania_case_study.pdf` is the Tanzania chapter of **"DPI
  Exemplar Stories: Book of case studies", published by Co-Develop** (knowledge partner Kalpa Impact),
  launched **2024-10-01** at the Global DPI Summit, Cairo. The brief's premise that it carries no
  recoverable metadata was wrong — the DocInfo dictionary is intact. **It stays a lead**: it is a secondary
  donor synthesis carrying at least three verifiable errors (a "launched 2014" date for Jamii Namba that is
  actually the NIDA card rollout; "over 25 million registered" exceeding NIDA's own 21.19m; and Bank of
  Tanzania oversight of Jamii Malipo, which sits with MICIT/e-GA).

### Left open, honestly (2)

- **`angola-national-fibre-length-2025-2026`** — **reframed, not closed.** Two of the three values were not
  competing (14,000 km is Unitel's own footprint; "2.000 km" is an annual build increment, not a
  truncation) and 22,000 km is a **c. 2019 World Bank figure** still being restated in 2026. But a decisive
  find breaks the timeline: the Secretary of State told the ITU WTDC **>30,000 km** on 2025-11-28, so the
  official series **declines over time** (20,000 → 30,000 → 22,000 → 28,000 across eight months). That is a
  data-quality defect in the Angolan official record, not a wiki error. INACOM's *Relatório Anual
  Estatístico* would settle it and was not retrievable; brief rewritten to that narrower question.
- **`somalia-national-id-data-hosting`** — **partially resolved.** MoCT itself conceded offshore hosting of
  national data twice on the record (2024-04-28, restated 2025-05-06), corroborating Garowe's direction
  from a far better source; NADRA delivered on-shore data-centre infrastructure 2025-03-13. But the current
  endpoint is unverified: the National Data Center had not launched at the World Bank's Oct-2025
  restructuring, NIRA procured commercial colocation of undisclosed location (2026-02-25), and no hosting
  or localisation clause is public. Brief rewritten with two concrete next steps.

### Primaries extracted to `new/`

~60 clips written for normal ingest — including the JORADP text of Decree 25-320, Microsoft's own
2025-03-06 release plus the Presidency statement, SARS's 2025-04-03 media release and the GCIS Cabinet
statement, Medusa's three own-newsroom releases, AfDB's Congo release, Convalt's Lesotho release, Econet's
24-Dec-2025 restructuring notice and Supplementary PLS, UNDP Eswatini's 2024-11-13 press release, the
Angolan cybersecurity decrees from LEX.AO, the Bank of South Sudan's SSIPS release, APS's two DAF
communiqués (closing a provenance gap the brief had flagged), NIRA Uganda's press statement, UBC's COSASE
report, CHRGJ's dated posting, and the DataReportal country editions behind the Chad/CAR/Zambia/Zimbabwe
resolutions. Several carry `body_completeness: excerpt` with the partial flagged in-file (the Malawi Act,
the DHA APP, the World Bank DZAP documents, the CBN Bullion scan) — these need manual capture to complete.

**These are not yet ingested.** They sit in `new/` awaiting a normal ingest run, which will date, screen
and file them; the page fixes above rest on the facts established, and will gain their inline citations
when the clips land in `raw/`.

## 2026-07-20 — **Rule change:** CLAUDE.md rewritten; decisions now actioned, not queued

Fuller companion to the CLAUDE.md-rewritten entry above; rule content not repeated here.

### Decisions — 15 open issues resolved on CC's recommendations (2 reversed)

- **ISSUE-036 — superseded.** The proposed five-register amendment is moot: the rewrite went
  further and cut to two. Closed unactioned.
- **ISSUE-035 — VC funds: reversed my own recommendation. Not mapping them.** I had recommended
  mapping Antler, Capria, Delta40 and Enza as a set. Under depth-on-demand that is exactly the
  wrong instinct — it is atlas-building for a thread nobody is writing. Revisit when Bill writes on
  African VC; the names stay in the verbatim bodies and are greppable.
- **ISSUE-034 — SBTi: carry it, narrowly.** Network energy is where data-centre build-out meets
  national infrastructure policy, and the thread arrives uninvited via GSMA. Create as an
  `organisation` in the next entity pass.
- **ISSUE-022 — DataReportal editions admitted as sources.** They are the primary for their own
  figures. Standing caveat: figures are **never comparable across editions** (the publisher
  silently rebases and says so itself), and an edition year is not an as-of year — *Digital 2026*
  was published 2025-11-08 on October-2025 data.
- **ISSUE-023 — run the rebase lint.** The *Digital 2024* → *2025* rebase was publisher-wide, not
  a Chad correction, so any held *Digital 2024* penetration figure likely carries the same
  overstatement (~2x in Chad). Queued as a one-off pass.
- **ISSUE-024 — language-prefixed URLs take the original's date.** The Togo contradiction was
  caused by a French DHIS2 page carrying its *translation* date, running a two-year-old status
  claim as current. Added to ingest; lint sweep queued for existing `/fr/`, `/es/` cases.
- **ISSUE-025 — actioned into CLAUDE.md.** Microsoft SA produced three "different" dollar values
  for one R5.4bn commitment purely from exchange drift.
- **ISSUE-026 — name and discount circulating figures.** Mauritania's "70%" stays on the page,
  named and set aside. A debunked figure that will resurface is more useful named than silently
  dropped.
- **ISSUE-027 — the Jamii case study stays in `_leads/`.** Establishing its origin (Co-Develop,
  2024-10-01) cures the dating problem, not the secondariness; it also carries three verifiable
  factual errors. Never promoted to `raw/`.
- **ISSUE-028 — no source-reliability register.** Corrections live on synthesis pages, as now.
  Creating `reviews/source-notes.md` would have added a sixth register on the day five were
  removed.
- **ISSUE-029 — `published` = the reporting date** for recurring monthly primaries (NGX "as at
  2026-05-31", released ~2026-07-03). It sorts the series correctly and is what a citation names.
  The event-date rule still governs: figures are "as at 31 May 2026", never "as of July".
- **ISSUE-030 — both DZAP deviations ratified.** Completing `url:` to a canonical deep link is a
  link fix, not a reinterpretation, and refusing it would leave a source of record uncitable;
  `body_completeness: excerpt` is the honest value for a partial verbatim capture.
- **ISSUE-031 — wiki-authored metadata in `raw/` is correctable.** Filenames and ingest notes are
  the wiki's words, not the source's; only the body is immutable. The South Sudan NIPS filename
  asserts a launch the primaries show never happened, and misleads anyone grepping `raw/`.
  **Rename handed to Bill** (CC cannot move files) — see below.
- **ISSUE-032 — MACRA stays one page** with a clearly separated DPA section; split when the DPA is
  legally independent, not before, to avoid rewiring citations twice.
- **ISSUE-033 — actioned.** `econet-group.md` softened to founder-lineage phrasing with the
  negative evidence stated and dated, rather than asserting or deleting the parentage claim.

### Queued as work (not decisions)

- The *Digital 2024* rebase lint (ISSUE-023) — potentially many country pages.
- The translated-page date lint (ISSUE-024) — at least two known DHIS2 French pages.
- SBTi entity page (ISSUE-034) — next entity pass.

### Process rework, same day (narrative now lives in the files themselves)

- **Registers closed on disk, not just in the log** — a file's contents are its state; emptying
  doesn't need Bill even if deletion does. `issues.md` tombstoned; `entity-backlog.md`/`watch.md`
  headed drain-then-delete.
- **RECONCILE.md written** — whole-folder loop, two-attempt limit, one-pass-at-a-time; tranching struck.
- **reference.md written** (~33KB, 12 sections) — schemas/thresholds verbatim; four spots adapted to the
  new principles; §5a added back (academic work, anti-circularity, external standards).
- **Six dropped rules restored to CLAUDE.md** after diffing the recovered old file (`f7f5104`):
  out-of-scope→delete, sweep containment, cite-only-held-links, capture≠endorsement, structural-facts-
  not-dated, no-requery-of-compiled. "Recent developments" exception restored.
- **Two commits (`f7f5104`, `b33a91f`) silently carried CLAUDE.md edits** via `git add -A`. Left as-is
  (rebase would break `b33a91f` as the register-recovery pointer); fix = stage explicit paths, one
  session at a time. Every defect today traced to **concurrency**, not the new rules.
- Loose ends resolved: `reconcile_review.md` gone (inline now); `new-queue/done/` is Bill's;
  `sweep/recapture/` is spent tooling; South Sudan NIPS file deleted by Bill.

<!--ARCHIVE-END-->
