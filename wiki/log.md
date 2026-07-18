# Operation log

Append-only. Newest entries at the top. Records every ingest, the pages touched,
contradictions found, and open `needs-review` flags.

---

## 2026-07-16 — ISSUE-001 resolved (geopol.gulf already in taxonomy)

Bill confirmed **`geopol.gulf`** is already in `wiki/taxonomy.md` (Geopolitics section, line 55 —
"Gulf/UAE activities"). The issue was stale: the slug is both in the authority file **and** in active use
(concept page [[geopol.gulf]], tagged across COD, KEN, geopol.usa, etc.). No action needed. Removed
ISSUE-001 from `reviews/issues.md`; register now empty.

---

## 2026-07-16 — Reconcile pass (REV-CAF-001, REV-DJI-001 resolved — open/ now empty)

First run of the in-session reconcile pass (`reconcile_review.md`) on `reviews/contradictions/open/`.
Both open contradictions resolved conclusively; 3 primaries extracted → `new/` → ingested; research
quarantined do-not-ingest; `open/` drained.

**REV-CAF-001 · Al Madina home country — RESOLVED (conclusive).** Researched via Exa. **Both descriptors
are right at different levels, not two firms:** Al Madina / Almadina is **registered/HQ'd in Oman**
(Muscat/Ruwi; "Al Madina Development & Supply LLC" / "Security Printing Press Oman LLC", founded 1984) but
**Lebanese-owned/run** (the **Nassour** family — Aziz Nassour, dir.). RFI (21 Aug 2020) states it plainly:
"enregistrée à Oman… dirigée par Aziz Nassour." Corbeau's "libanaise" = ownership nationality; Biometric
Update's "Oman-headquartered" = registration. No unrelated same-named firm involved.
- **Primary extracted → new/ → ingested:** [[raw/2020-08-21 Centrafrique - Al Madina, la societe qui pose question a Bangui (RFI)]]
  (routed through `new/` and the intake screen, not written to `raw/` directly).
- **Research quarantined** (do-not-ingest): `reviews/contradictions/research/REV-CAF-001.md`.
- **Pages resolved (cite the primary, not the research):** [[al-madina]] (needs-review → active; "Home
  country (resolved)" section), [[caf--dpi-id]], [[CAF]].
- Item moved `open/ → done/`.

**REV-DJI-001 · Djibouti ANCS vs ANC — RESOLVED (conclusive, primary law text found).** The statutory
body is the **ANC** (Autorité Nationale de Cybersécurité), created by **Loi n° 195/AN/25/9ème L** (adopted
12 Nov 2025; JO n°23, 15 Dec 2025) — an autonomous public establishment under the Presidency, operational
from Dec 2025 (DG **Abdallah Ibrahim Yonis**). Law **Art. 24** makes **ANSIE's DSSI** its initial nucleus,
so the real predecessor is ANSIE's cyber directorate, **not** a body called "ANCS." "ANCS" (in the Nov-2024
strategy reporting) was a **pre-statutory/informal label**, not a separate institution and not a straight
rename.
- **Primaries extracted → new/ → ingested (2):** [[raw/2025-12-15 Loi n 195-AN-25 portant creation de l'Autorite Nationale de Cybersecurite (Djibouti, JO)]]
  (the Journal Officiel law text — gold-standard primary) and
  [[raw/2025-12-09 Djibouti Launches National Cyber Security Authority (ANC operational, DG named)]].
- **Research quarantined** (do-not-ingest): `reviews/contradictions/research/REV-DJI-001.md`.
- **Pages resolved:** [[national-cybersecurity-authority-djibouti]] (needs-review → active; retitled to lead
  with ANC; "Name / lineage (resolved)" section), [[djibouti--gov-protect]], [[DJI]].
- Item moved `open/ → done/`.

**Flag:** the ANC law transfers **ANSIE's** DSSI into the ANC — **ANSIE** (Agence Nationale des Systèmes
d'Information de l'État) is now a referenced-but-unhubbed body (plain-text mentions, no dead links). Possible
entity-creation follow-up for the human; not actioned here (reconcile pass does not touch `gaps.md`).

---

## 2026-07-16 — Morning news ingest (9 items)

Drained `new/` (9 clips). **7 admitted as new-development sources; 2 same-event duplicates attached to
existing pages; 2 new entities created.** No leads/discards.

**Sources admitted / attached:**
- **RDC/PNN2 $1.5bn (Agence Ecofin FR, pub 11 Oct 2025).** The exact FR primary that 403'd during
  REV-COD-001, arrived via the clipper — renamed to its true 2025-10-11 publication date (clip was dated
  2026-07-16). **Backfill**, attached to [[drc-national-digital-plan-pnn2]] + [[drc-national-ai-strategy]];
  states the split explicitly ("$1bn public over 5 yrs + $500m external support already guaranteed") —
  **further hardens REV-COD-001** and adds the planned **Congolese Academy of AI**. → [[raw/2025-10-11 La RDC prevoit 1,5 milliard $ de budget pour son Plan national du numerique et de l'IA 2026-2030 (Agence Ecofin)]].
- **AUC–ITU cooperation MoU** (AI for Good Summit, Geneva; no clip date → `date_source: proxy`). Attached to
  [[african-union]] + [[itu]]. → [[raw/2026-07-16 African Union Commission, ITU sign cooperation agreement]].
- **CSquared adds 2Africa West capacity** for West Africa route diversity/resilience. New entity
  **[[csquared]]**; attached to [[2africa-cable]], [[XWA]]. → [[raw/2026-07-15 CSquared boosts internet by integrating with 2Africa West cable]].
- **Ethio Telecom + Huawei** expand into enterprise/SME cloud/AI/cyber (Next Horizon 2028). Attached to
  [[ethio-telecom]], [[huawei]] (added ETH), [[ETH]]. → [[raw/2026-07-15 Ethio Telecom, Huawei expand digital push]].
- **Nigeria fibre cuts hit record** (NCC: 155,397 in Apr–May 2026, +2,428% on Q1; vandalism-led). Attached to
  [[ncc]], [[NGA]]. → [[raw/2026-07-15 Nigeria records surge in fibre cuts (NCC)]].
- **Senegal cybersecurity cooperation** (critical-infrastructure protection; future legal framework). Attached
  to [[new-deal-technologique]], [[SEN]]. → [[raw/2026-07-15 Senegal pushes stronger cybersecurity cooperation to protect critical infrastructure]].
- **Senegal digitises 15.3m civil-registration records** (ANEC). New entity **[[anec-senegal]]**; attached to
  [[SEN]]. → [[raw/2026-07-15 Senegal digitizes more than 15 million birth records in civil registration overhaul]].

**Same-event duplicates (attached, not spawned):**
- **Raxio $380m committed capital** (tech.africa, 15 Jul) — same event as the held 2026-07-14 source; attached
  to [[raxio-group]]. → [[raw/2026-07-15 Raxio data-centre capital tops $380m on investor boost]].
- **Yas/EBRD €270m ($307m)** (TechBooky, 14 Jul) — same event as the held 2026-07-13 EBRD-Yas source; attached
  to [[ebrd-yas-network-loan]], [[yas]], [[SEN]] (added the **Zuku**/Wananchi detail). → [[raw/2026-07-14 Yas gets $307m to rebuild Zuku's broadband fight in Kenya and expand in Senegal]].

**New entities:** [[csquared]] (company), [[anec-senegal]] (government-body) — both added to `entities-index`.
**Mechanical:** 1 file renamed to true publication date (Ecofin FR, 2026-07-16 → 2025-10-11); SEN topics
gained `dpi.registry`/`dpi.govtech`, ETH/huawei/new-deal topics touched. Concept pages left unbloated —
events captured on entity + place hubs per the synthesis-not-log rule. `last_reviewed` bumped on all touched
pages.

---

## 2026-07-16 — REV-006 resolved (DRC Visa/M-Pesa/Onafriq stablecoin — downgrade + re-anchor)

Curator ran the verification brief for **REV-006**. **Verdict: partly confirmed, materially overstated
as framed — downgrade.** The **core mechanism is now corroborated** by an on-record Visa exec (Godfrey
Sullivan, SVP CEMEA, via The EastAfrican 2 Jul 2026): Visa is settling [[safaricom]] M-Pesa top-ups in
stablecoins in the background in the DRC, with [[onafriq]], via **Visa Pay** — lifting it well above the
single weak aggregator (Streamline Feed) it was flagged on. But the maximalist "**Visa + M-Pesa + Onafriq
jointly launched a USD-stablecoin *pilot***" framing is **not** supported by any issuer primary: Ecofin
(2 Jul 2026) states outright there is **no single, jointly-announced pilot** — only "converging
initiatives." Unconfirmed: the joint-pilot framing; any Safaricom/Onafriq primary on the stablecoin leg
(M-Pesa's *own* announced stablecoin move is a **separate** Jan 2026 ADI Foundation UAE-**dirham** deal);
the **USD peg** for the DRC leg (inferred from Visa's global USDC work, not disclosed); scale/status (one
Visa partnership still **awaiting regulatory approval**; the BCC is pursuing de-dollarisation).

**Ingested 2 primaries** (both fetched direct = HTTP 403; built from curator's Exa verification, verbatim
quotes/dates): [[raw/2026-07-02 Visa tests stablecoins in DRC for cross-border payments (The EastAfrican)]]
(the Sullivan quote; editor's note on pending regulatory approval) and
[[raw/2026-07-02 DR Congo becomes Africa's live test for dollar-settled mobile money (Ecofin)]] (the
"no joint pilot" corrective). The weak Streamline Feed source ([[raw/2026-07-10 Visa and M-Pesa Launch Blockchain Stablecoin Pilot in DR Congo]])
is retained on the deal entity as provenance history and swapped out of the other pages' inline citations.

**Deal entity retitled + reframed:** [[visa-mpesa-onafriq-drc-stablecoin-pilot]] (slug kept to avoid
link breakage) → title "Visa–Onafriq DRC stablecoin settlement (via Visa Pay)"; **needs-review → active**
with the narrow claim stated and the framing downgraded by dated caveat. **Caveats scrubbed / reframed on:**
[[COD]], [[drc--dpi-pay]], [[visa]], [[safaricom]], [[onafriq]], [[geopol.usa]], [[geopol.gulf]],
[[gov.protect]], [[KEN]] (removed "low-authority — verify" / "needs-review"; corrected "joint pilot"
wording; M-Pesa reframed as the wallet topped-up, not a confirmed stablecoin-leg partner). Entities-index
title updated. Item removed from `_review.md`.

**Flag:** Onafriq's own stablecoin move (Feb 2026 Conduit/USDC treasury, BusinessWire primary) and M-Pesa's
ADI Foundation dirham-stablecoin alliance are real, **separate** developments surfaced by the note but **not
ingested** — optional follow-ups if either warrants its own entity/source.

---

## 2026-07-16 — REV-005 resolved (Mozambique Cyber Security Law cost — units error)

Curator ran the external-research brief for **REV-005** and returned a reconciliation. **Resolution:
the two figures are one number, not two.** "167.257,94" (PT format) is a **thousands-of-meticais** value
(10³ MT) that the reporting mislabelled as "millions"; read correctly it is **≈167.26m MZN ≈ US$2.5m** —
the same amount as the "just over 160 million meticais" the same article prints. The literal "167,257.94
million MZN" (≈167bn MZN / ~US$2.6bn) is implausible against Mozambique's ~500–700bn MZN annual State
Budget — a units error. Funding: State Budget + donations.

**Confidence high, but not primary-confirmed.** This is arithmetic + budget-convention on the single held
source, not a read of the government's own costing table. The figure lives in the bill's financial-impact
annex (proposta de lei, 16 Apr 2026), which is **not held / not publicly posted**; the enacted Lei n.º
13/2026 (*Boletim da República*, 1 Jul 2026) carries no cost. So the units-level provenance gap stays open
at the primary-budget-line level even though the reconciliation is high-confidence.

**Pages updated (hedge → resolved figure, gap flagged):** [[mozambique-cyber-security-law]], [[MOZ]].
Item removed from `_review.md`. **No new ingest** — the correction is an interpretation of the one held
source ([[raw/2026-04-17 Mozambique parliament unanimously approves Cyber Security Law]]).

**Flag (optional follow-up, not actioned):** the note also surfaced the law's **enactment** — Lei n.º
13/2026 (Segurança Cibernética) + Lei n.º 14/2026 (Crimes Cibernéticos), promulgated by President Chapo
12 Jun 2026, gazetted 1 Jul 2026, in force **29 Sep 2026** (implementing regulation within 180 days). The
wiki's instrument page still reads "approved 2026-04-17" only. Ingesting INTIC/Lusa would update it from
"approved" to "enacted" — flagged to curator; not done under a cost-only directive.

---

## 2026-07-16 — REV-004 resolved (Zimbabwe–US health MoU: $350m vs $367m)

Curator ran the external-research brief for **REV-004** and returned a reconciliation. **Resolution:
$367 million over five years** — the **US Embassy Harare's own stated MoU value** (Ambassador Pamela
Tremont, 24 Feb 2026), reported by Ecofin (held: [[raw/2026-02-25 Zimbabwe Turns Down U.S. Health Funding, Citing Sovereignty Concerns]])
and independently corroborated by Africanews (26 Feb) and Reuters/Africa CDC (5 Mar). The **$350m**
(Business Insider, held: [[raw/2026-02-24 ⁠Zimbabwe rejects $350 million US health funding deal warns It threatens national sovereignty]])
was a **pre-announcement round estimate** off the leaked 23 Dec 2025 Zimbabwean memo — same deal, not a
rival value. A third figure (~$328m, Harare's own hedged "in the region of" via the state *Herald*) is
noted but **not held on file**. No new ingest — both competing sources were already held; the "$367m is
the funder's own figure" resolution rests on the held Ecofin source plus the wiki's existing Africanews /
Reuters-Africa-CDC corroborations.

**Pages updated (removed the "reported inconsistently / contradiction" hedges, standardised to $367m
with $350m as the early estimate):** [[zimbabwe-us-health-mou]] (amount flag → resolved), [[ZWE]],
[[geopol.usa]], [[finance.new]]. Pages already stating $367m (usaid, america-first-global-health-strategy,
africa-cdc, gov.protect, ZMB, zambia-us-health-mou) left as-is. Item removed from `_review.md`.

---

## 2026-07-16 — REV-003 resolved (AMSP facility figure + Econet founding dates)

Curator ran the external-research brief for **REV-003** (two Masiyiwa-linked facts) and returned a
reconciliation. Both anchor on sources the wiki **already holds**, so no new ingest.

**(a) AMSP / PATIMFA facility — $3bn, not $3.8bn.** $3bn is the primary Afreximbank figure (Board-
approved 20 Mar 2020, $200m reserved for AMSP), matching Masiyiwa's own **written** account
([[raw/2020-07-01 Strive Masiyiwa. Best practices from Africa Collaboration in the time of COVID-19]]).
The stray **$3.8bn is now pinned**: a single verbal remark in his Milken interview
([[raw/2020-06-01 Interview with AU Special Envoy Strive Masiyiwa on the Launch of the Africa Medical Supplies Platform  Milken Institute]])
— an uncorroborated slip, not a rival estimate. Kept the wiki's $3bn/$200m; recharacterised the $3.8bn
as a footnoted misstatement on [[africa-medical-supplies-platform]].

**(b) Econet founding — the wiki's "licence 1997 vs incorporation 1998" axis was wrong.** There are
**three** dates, not two: **incorporated 1993** (Stanford GSB, held — "started Econet in 1993"),
**licence secured ~1997** (NYU Law + African Leadership, held), **commercial launch 1998** (10 Jul
1998 per Econet's own record; ZSE listing Sept 1998). The "incorporated/established 1998" reading was
a **launch date mislabelled as incorporation**, and its cited authority ("Guardian 2014") **is not on
file** — a phantom citation, now removed. Corrected the biographical spine and the figure-reconciliation
block on [[strive-masiyiwa]].

**Pages updated:** [[africa-medical-supplies-platform]], [[strive-masiyiwa]]. Item removed from
`_review.md`. The year-level correction stands on held sources.

**Follow-up ingest (2026-07-16, curator-directed):** to pin the precise **10 July 1998** launch,
ingested Econet's own *About Us* page as a company primary record →
[[raw/2026-07-16 Econet Wireless Zimbabwe About Us (network launch 10 July 1998)]]. Evergreen page,
no publication date (copyright © 2026), so filed **`date_source: proxy`** on the ingest date — a
historical-baseline backfill documenting a 1998 fact, not a 1998 publication. It fixes the launch at
10 July 1998, the legal battle at 1993–1998, and a ZSE listing within three months; it carries no
separate incorporation/licence date. No new entities. **Caught the same "incorporated ~1998" error
on [[econet-wireless]]** (Profile → Origins) and corrected it there too (incorporated 1993; launch
10 Jul 1998), citing the new source. Pages touched: [[econet-wireless]], [[strive-masiyiwa]].

---

## 2026-07-16 — REV-002 resolved (Nigeria PAPSS "−53%" contradiction-watch)

Curator ran the external-research brief for **REV-002** (Nigeria PAPSS flows contracting vs the rail
scaling) and returned a reconciliation. **Resolution: a false binary — both hold at different scopes.**
(1) The Nigeria H1'25 dip is **real, not an FX/denomination artefact**: transaction *count* also fell
29% and the naira was flat-to-stronger, so the USD decline (~52–55%) tracks the naira one. (2) But
**₦5.6bn ≈ ~US$3.7m for a half-year is far too small to be Nigeria's total PAPSS throughput** — Nigeria
is the rail's largest participant on a network now ~28 countries wide — so the CBN figure is almost
certainly a **narrow line item**, not a proxy for Nigeria's activity. Local contraction on one metric
and continental scaling therefore **coexist rather than contradict**. (3) **No H2 2025 Nigeria figure
exists yet** (as of 16 Jul 2026) — a rebound can't be confirmed; watch the H2 2025 CBN FSR. (4)
Base-period ambiguity (H1'24 vs H2'24) is unresolved in the press; only the primary CBN table settles it.

Reframed the "contradiction-watch / counter-signal" language on all five affected pages to "real but
narrow-scope metric, not a counter-signal." **Pages updated:** [[papss]], [[dpi.pay]], [[NGA]],
[[afreximbank]], [[nigeria--dpi-pay]] (added the resolved PAPSS-Nigeria treatment + the source).
Item removed from `_review.md`. **No new sources ingested** — the wiki already held both anchors (the
−53% source [[raw/2026-01-27 Nigeria's PAPSS cross-border payments falls 53% to N5.6bn]] and the
[[beac]] accession [[raw/2026-07-11 BEAC joins PAPSS and accelerates cross-border payments integration in Central Africa]]);
the "narrow line item" and "real-not-FX" findings are the curator's reasoned inference (my-notes,
do-not-cite), recorded as dated analysis, not new cited facts. Continental-scaling detail the note
surfaced but the wiki does **not** yet hold as sources (TechCabal 4-yr review incl. ~$600m/quarter;
fuller BEAC/CEMAC figures — 28 countries/190+ banks/250+ institutions) left un-ingested; flagged to
curator as an optional follow-up.

---

## 2026-07-16 — REV-COD-001 resolved (PNN2 cost contradiction)

Curator ran the external-research brief for **REV-COD-001** (DRC National Digital Plan 2026-2030 /
PNN2 cost reported inconsistently) and returned a reconciliation. **Resolution:** the defensible
figure is the **US$1.5bn government financing envelope** = **$1bn public treasury (2026–2030) + $500m
secured partner support (2025–2029)**, attributed to the Ministry of the Digital Economy / President
Tshisekedi at the 8 Oct 2025 launch and restated through July 2026 (held source
[[raw/2025-10-10 DR Congo launches National Digital Plan 2026-2030 (PNN2) and first AI strategy]]).
The **"$8.7bn total"** ([[raw/2026-02-01 DRC unveils $8.7 billion digital plan to expand connectivity and AI skills by 2030]])
is **unverified** — secondary tech-trade media only, currency-ambiguous ($8.7bn vs €8bn/$8.8bn in the
same outlet), no primary source; most plausibly a fuller ambition envelope incl. private capital. The
**€8.7bn / $10.4bn total** once carried on [[rdc-pass]] **could not be corroborated** from any public
source. No finalised, published PNN2 document with an official headline total exists yet (plan still in
drafting), so the circulating "cost" is the announced envelope, not a costed line-item total.

**Pages updated:** [[drc-national-digital-plan-pnn2]] (needs-review → active; new "Cost (resolved)"
section), [[rdc-pass]] (corrected the $10.4bn line), [[COD]] (two Recent-developments entries +
Active-topics lines). Item removed from `_review.md`. Reconciliation source: curator's external
research (my-notes, do-not-cite) — wiki citations rest on the held source pages above. Raw source
pages left immutable (their inline "REV-COD-001" notes are historical).

**Follow-up ingest (2026-07-16, curator-directed):** to give the **$1bn + $500m split** a hard
citation rather than resting it on the reconciliation note, ingested **1 new source** — We Are Tech
(Ecofin), 20 Feb 2026, reporting the DRC's **17 Feb 2026** operationalisation of the $500m external-
partner tranche after World Bank/AFD talks → [[raw/2026-02-20 DRC operationalises $500m partner tranche of PNN2 financing (World Bank, AFD)]].
Directly states $1bn government treasury (2026-2030) + $500m secured partners; also refs June 2025
deals (WB $400m digital; EU €100m). No new entities (WB, IDEA, PNN2 already held). Pages touched:
[[drc-national-digital-plan-pnn2]] (source + split now cited), [[COD]] (new 2026-02-17 development),
[[idea-mpa]] (DRC section refreshed, stale $10.4bn corrected, source appended). Candidate Agence
Ecofin FR (11 Oct 2025) not ingested — URL returned HTTP 403.

---

## 2026-07-15 — ETH + ERI ingest batch (Ethiopia deep-dive + Eritrea greenfield)

Largest batch to date: **43 markdown clips + 11 PDFs (~54 items)**, spanning two countries. Processed
in one run at the curator's explicit direction (acknowledged as well above the recommended batch size;
future batches should stay smaller). ETH is the wiki's richest hub — much of this is dedup/updates
against existing entities (Fayda, EthSwitch, M-PESA, Ethio Telecom, Telebirr, Digital Ethiopia 2030,
DHIS2); ERI was unhubbed → **new stub hub** (hubbed count **58 → 59 of 62**; unhubbed now 3).

**Ingested — ~50 sources admitted (39 markdown-derived + 11 PDF), 0 leads, 0 discards.**
- **Dedup / merges:** Fayda launch + Yodahe roadmap → 1; NBE Fayda-banking (2 clips) → 1; NDPS +
  outbound-cross-border → 1; three PDPP overview clips → 1 (+ ALN legal-alert PDF companion).
- **Mis-staged clip corrected:** "Google GCP new cloud region" is about **Johannesburg, South Africa**,
  not Ethiopia — filed under **[[ZAF]]** (attached to [[google]]/[[amazon-web-services]]; one-line ZAF
  hub note), not ETH.

### Ethiopia (ETH) — hub deep-dive (existing active)
- **New entities (6):** [[national-bank-of-ethiopia]], [[ethiopian-communications-authority]] (gov-bodies);
  [[ethiopia-pdpp]] (Proclamation 1321/2024), [[ethiopia-ndps]] (NDPS 2026–2030) (instruments);
  [[ethiopia-digital-id-inclusion-project]] (WB $350m, P179040, deal); [[mastercard]] (company).
- **Existing entities updated** (representative new sources appended): [[fayda-ethiopia-national-id]],
  [[ethswitch]], [[ethio-telecom]], [[safaricom-ethiopia]], [[telebirr]], [[digital-ethiopia-2030]],
  [[dhis2]], [[google]]. *(For bounding, entity source-lists were updated representatively, not
  exhaustively; the hub carries the full synthesis.)*
- **Intersections created (2):** [[ethiopia--gov-protect]], [[ethiopia--dpi-govtech]] (existing
  [[ethiopia--dpi-id]], [[ethiopia--dpi-pay]], [[ethiopia--dpi-mis]] left intact).
- **Threads:** Fayda scale-up (28m Nov 2025; education mandate; NBE banking harmonisation; WB $350m
  inclusion project; MESOB one-stop; tax integration); payments (NDPS 2026–2030, EthioPay-IPS instant
  payments, EthSwitch–Mastercard, M-PESA/EthSwitch interoperability, Findex momentum-without-maturity);
  **data protection enforcement gap** (PDPP live but directives unissued, ECA not yet enforcing —
  racing behind Fayda/banking data-harmonisation); GovTech (DE2030 launched 21 Dec 2025, EeGIF
  interoperability, unmanned Smart Police Station); infrastructure (Shandong/RailTel data centres,
  Bitdeer Oromia power draw, Huawei 4G); health (DHIS2 1bn records).

### Eritrea (ERI) — new greenfield stub hub (parent XEA)
- **Sources (4):** ASYCUDA World digital customs (source-code sovereignty, Jan 2026); digital-identity
  challenges profile; Digital 2025/2026 connectivity (~23.7%). No new entities (references [[undp]]).

### Currency / flags
- **Supersession, not contradiction:** Fayda registration figures form a clean time series (12m Feb →
  16.4m Jun → 28m Nov 2025 → 46m mid-2026); account-ownership 46%→49% (Findex) with the region-exclusion
  caveat noted on-source.
- **Proxy/low precision:** UNCDF literacy (year), WB Fayda end-user study (year), CRVS snapshot (year),
  SIIPS EthSwitch case study (year), PDPP overview items.
- **Flag:** the ALN legal-alert PDF cites "Proclamation No. 1324/2024" — a typo for the operative
  **1321/2024** (noted on the source page; not a genuine conflict).
- **No `_review.md` items** — no high-confidence contradiction or structural gap surfaced.

### Indexes / vocab
- entities-index: +6 rows (1 company, 2 gov-bodies, 2 instruments, 1 deal).
- places-index: **ERI row added** (new stub); ETH row unchanged (already comprehensive); count 58 → 59.
- topics-index + concept `places:`: ERI added across dpi.govtech/dpi.id/dpi.exchange/gov.policy/
  infra.connect/include.divides; ETH already broadly tagged.

Dead-link lint: clean (see run below).

---

## 2026-07-15 — EGY ingest batch (Egypt — light hub built out)

Drained a single-country Egypt batch from `new/` (26 markdown clips + 2 PDFs). **Curator-directed
deepening of a North-African state** previously tracked lightly (GovTech/cable node); the batch
treats Egypt's full DPI stack substantively, so the EGY hub is expanded from a thin node to a full
synthesis (status already `active`; no hub-count change). Same scope note as DZA — North Africa is
otherwise kept light unless the human stages sources.

**Ingested — 26 sources admitted (24 markdown + 2 PDF), 0 leads, 0 discards.**
- **Dedup:** CBE **Haweya** digital financial ID (Biometric Update + Business Monthly → 1); **PDPL
  Executive Regulations** (Access Partnership + Baker McKenzie → 1). The Alexandria **court judgment**
  (Orange Egypt) kept separate as a distinct enforcement event predating the Regulations.
- **Payments kept as distinct rails:** SoftPOS, tpay carrier-billing (P2G), FRA digital factoring,
  and the inclusion-rate update — four sources clustered in [[egypt--dpi-pay]].
- **Analysis admitted (dated, attributable, non-AI):** Masaar rights-based e-gov critique; Cairo
  Review privacy/AI essay; David Sims 2016 land-tenure essay (filed as a **historical/analytical
  baseline** — must not out-rank the 2025 Property ID Law on land-registry state).
- **PDFs:** Egypt Vision 2030 (209 pp, 2023); WB Policy Note on automatic UHI enrolment (Feb 2025).

### Egypt (EGY) — hub built out (existing active; parent XNA)
- **Entities created (14):** [[central-bank-of-egypt]], [[mcit-egypt]], [[pdpc-egypt]], [[ntra-egypt]],
  [[fra-egypt]] (gov-bodies); [[telecom-egypt]], [[tpay]] (companies); [[digital-egypt]], [[haweya]],
  [[moieg-pass]], [[takaful-and-karama]] (initiatives); [[egypt-pdpl]], [[egypt-property-id-law]],
  [[egypt-vision-2030]] (instruments).
- **Entities reused/updated:** [[dhis2]] (+EGY, DHIS2-launch source), [[amazon-web-services]] (+EGY,
  Cairo edge source); linked [[cassava-ai-factories]].
- **Intersections created (5):** [[egypt--dpi-id]], [[egypt--dpi-pay]], [[egypt--gov-protect]],
  [[egypt--dpi-govtech]], [[egypt--dpi-mis]].
- **Through-line:** a deep, multi-channel DPI state — layered biometric IDs (CBE Haweya vs Interior
  MOIEG-PASS), a mature payments/inclusion system (77.6%), sectoral MIS (DHIS2, Takaful/Karama), a
  GTMI "Group A" GovTech platform, and a data-protection regime moving from five years dormant to
  imminent enforcement (with courts already imposing tort liability).

### Currency / date handling
- **Supersession, not contradiction:** financial-inclusion figures form a clean time series (76% →
  76.3% Jun 2025 → 77.6% end-2025) — kept current-plus-dated, not flagged.
- **Proxy/low-precision:** Egypt Vision 2030 PDF (2023, year); DZ MOB-style — none here beyond the
  Vision PDF. The Sims land-tenure essay dated to its true 2016 publication and flagged historical.
- **No `_review.md` items this batch** — no high-confidence contradictions or structural gaps surfaced.

### Indexes / vocab
- entities-index: +14 rows (2 companies, 5 gov-bodies, 4 initiatives, 3 instruments).
- places-index: EGY row rewritten (thin → full, with intersection links). Hubbed count unchanged
  (58/62; EGY already active).
- topics-index + concept `places:` frontmatter: EGY added where missing (dpi.id, gov.protect,
  gov.legislate, dpi.mis, dpi.registry, dpi.exchange, include.access; most others already had EGY).

Dead-link lint: clean (see run below).

---

## 2026-07-15 — DZA ingest batch (Algeria — stub promoted to active)

Drained a single-country Algeria batch from `new/` (16 markdown clips + 4 PDFs). **Curator-directed
deepening of a North-African state** previously kept as a deliberate stub (outside the Sub-Saharan
core scope) — the batch treats Algeria substantively, so **DZA is promoted stub → active** and built
out. Flagged (not an invariant issue): North Africa otherwise stays light unless the human stages
sources, as here.

> **Pipeline note.** At the start of the run `new/` held all 20 items and I read the 16 markdown
> clips. Mid-run the intake folder was relocated externally (clips briefly appeared under
> `my-notes/done/new/`, a fresh empty `new-queue/` was created); I did **not** move them and did not
> touch `my-notes/`. The user restored `new/` intact and confirmed I hadn't caused the move. Processed
> normally from the restored `new/`. (Same external-relocation pattern as the DRC batch.)

**Ingested — 18 sources admitted (14 markdown + 4 PDF), 0 leads, 0 discards.**
- **Dedup:** the **digital-ID & trust-services draft law** (2 Nov 2025) was reported by three outlets
  (Ecofin, Biometric Update, Mobile ID World) → 1 source.
- **Payments cluster kept separate (distinct rails):** DZ MOB PAY (mobile-wallet app), the Bank of
  Algeria domestic **instant switch**, **Tabioucom** (stamp-duty e-payment), and **PAPSS** accession
  are four different instruments — filed as four sources, clustered in [[algeria--dpi-pay]].
- **PDFs (4):** Council of Europe cybercrime legislative profile (2023, reference); three published
  academic papers (e-municipalities/Billeh; blockchain-NFC e-voting/Echchaoui-Boudour; digital
  transition/Hammal) admitted as dated, attributable **analysis** (not AI syntheses).

### Algeria (DZA) — hub promoted **stub → active** (parent XNA)
- **Entities created (10):** [[digital-algeria-2030]] (initiative), [[high-commission-digitalisation-algeria]]
  (gov-body, HCD/HCN), [[dzair-services]] (initiative), [[amlak]] (initiative),
  [[algeria-digital-id-trust-law]] (instrument), [[algeria-data-governance-framework]] (instrument,
  Decree 25-350), [[algeria-national-ai-strategy]] (instrument), [[anpdcp]] (gov-body, Law 18-07),
  [[algerie-telecom]] (company), [[african-startup-fund-algeria]] (initiative).
- **Entities reused:** [[papss]], [[afreximbank]], [[algiers-declaration]], [[african-telecommunications-union]].
- **Intersections created (4):** [[algeria--dpi-pay]], [[algeria--dpi-govtech]], [[algeria--gov-protect]],
  [[algeria--tech-ai]].
- **Through-line:** a sovereignty-first, Presidency-steered model — mandatory data localisation,
  hyperscaler-free protected cloud market, sovereign cloud + state-owned data-centre/AI compute (Oran
  AI DC), under Digital Algeria 2030.

### Currency / date handling
- **Proxy/low-precision:** DZ MOB PAY (2024, year — preview of Jan-2025 launch); Billeh e-municipalities
  paper (2025, year); IJISAE e-voting paper (dated to 2025-04-15 acceptance, proxy). All others dated to
  published.

### Held for review (added this batch)
- **Gap GAP-DZA-001** — Algeria data-governance framework: reconcile "JO-87" (LinkedIn lead, not held)
  vs **Presidential Decree 25-350**.

### Indexes / vocab
- entities-index: +10 rows (1 company, 2 gov-bodies, 4 initiatives, 3 instruments).
- places-index: DZA row rewritten (stub → active); **stub list now GIN, MRT, XNA** (hubbed count
  unchanged at 58/62 — DZA was already counted).
- topics-index + concept `places:` frontmatter: DZA added across gov.policy, dpi.govtech, dpi.id,
  gov.protect, gov.legislate, dpi.pay, dpi.registry, dpi.exchange, tech.ai, infra.store, gov.regional,
  include.divides, include.access, tech.innovate, finance.new, digital.localgov (where missing).

Dead-link lint: clean (see run below).

---

## 2026-07-15 — DJI + CPV ingest batch (Djibouti update · Cabo Verde greenfield)

Drained a two-country batch from `new/` (29 markdown clips + 5 PDFs). Currency rules applied; no
`my-notes/` review sheet used or consulted.

**Ingested — 28 sources admitted (23 markdown + 5 PDF), 1 lead parked, 0 discards.**
- **Lead parked:** "Data Location Architecture — A $1tn Opportunity from Djibouti" — a **Wingu
  Africa vendor blog** (promotional analytical thesis, not primary evidence of a development) →
  `_leads/`. Its one hard stat (cross-border payments → $1tn by 2035) is itself sourced to
  fintechnews.africa; mine there if needed.
- **Dedup (11 clips → 5 sources):** Djibouti **Mobile ID** launch (4 outlets → 1, event 9 Feb 2026);
  **Digital Code** adoption (2 → 1, Assembly 30 Jun 2025); **Visa "Smart Wallet"** MoU (2 → 1, 16 Sep
  2025); **PAIX JIB1** data-centre JV (3 → 1, May-2024 announcement). Djibouti **AI strategy** clip
  attached to the existing DJI-hub AI thread (no parallel event).

### Djibouti (DJI) — hub **updated** (existing; parent XEA)
- **Sources (14 + 2 PDF):** Mobile ID launch; Digital Code adoption; DP-law review (156-art regime);
  Visa Smart Wallet MoU; PAIX JIB1 JV; Wingu TO7 Tier-3 DC + landing station (25 Nov 2024); National
  Cybersecurity Strategy 2024–2030; ANC-authority bill (10 Nov 2025); national AI strategy
  (ESCWA/UNESCO); G2B one-stop platform (15 Dec 2025); D-Money port payments (proxy date);
  Digital 2026 (DataReportal); + 2 World Bank GovTech PDFs (Djibouti Digital Customs/ASYCUDAWorld;
  GovTech Operations case study, Dec 2023).
- **Entities created (9):** [[mobile-id-djibouti]], [[djibouti-digital-code]] (instrument),
  [[cndp-djibouti]] (gov-body), [[smart-wallet-djibouti]], [[paix-data-centres]] (company),
  [[fonds-souverain-djibouti]] (org), [[national-cybersecurity-authority-djibouti]] (gov-body,
  needs-review), [[djibouti-telecom]] (company), [[tech5]] (company).
- **Entities updated:** [[wingu-africa]] (TO7 + infra.connect), [[visa]] (+DJI, Smart Wallet,
  dpi.id/finance.mou), [[vision-djibouti-2035]] (Mobile ID / Digital Code / G2B / AI realisations).
- **Intersections created (4):** [[djibouti--dpi-id]], [[djibouti--gov-protect]],
  [[djibouti--infra-store]], [[djibouti--dpi-pay]].

### Cabo Verde (CPV) — **new greenfield hub** (was unhubbed; parent XWA)
- **Sources (9 + 3 PDF):** NOSi "60% services online by 2026" (GovInsider, year-proxy); Gov.CV portal
  launch (paired CPV+CAR, Biometric Update); TechPark CV $50m unveiling + Mindelo $58M campus opening
  (6 May 2025); national SOC/CSIRT; Digital 2025 (DataReportal); IBA data-protection chapter
  (Law 133/V/2001, year-proxy); WB "New Horizon" transformation feature; SNS health digitalisation;
  + 3 PDFs (WB Project Paper — Digital Cabo Verde Additional Financing $20m, 2 May 2025; MoF ToR
  National Governance Framework; Financial Audit ToR).
- **Entities created (6):** [[nosi]] (gov-body), [[gov-cv]] (initiative), [[techpark-cv]]
  (initiative), [[cnpd-cabo-verde]] (gov-body), [[data-protection-law-cabo-verde]] (instrument),
  [[digital-cabo-verde-project]] (initiative).
- **Entities updated:** [[african-development-bank]] (+CPV, TechPark CV, infra.store).
- **Intersections created (2):** [[cabo-verde--dpi-govtech]], [[cabo-verde--gov-protect]].
- Cross-country: the Gov.CV source also tags [[CAF]] — a one-line paired-coverage note added to the
  CAF hub.

### Currency / date handling
- **PAIX "2026" vs May-2024:** the PAIX JV clips were dataset-tagged 2026 (projected first-phase
  opening); dated to **publication (2024-05-15)** per currency discipline, with the 2026 opening
  noted in-text. *Provisional editorial call, not a contradiction.*
- **TechPark CV $50m vs $58M:** reconciled as **AfDB portion (€45.5m ≈ $50m)** vs **total project
  (€51.85m ≈ $58M)** — not a contradiction.
- **Proxy/low-precision dates:** NOSi 60% (year), IBA metaverse chapter (year), WB Djibouti Customs
  PDF (year), CPV MoF/Audit ToR PDFs (year); **D-Money** port launch dated 2021-12-11 with
  `date_source: proxy` (year inferred) → GAP-DJI-001.

### Held for review (added this batch)
- **Contradiction REV-DJI-001** — Djibouti cybersecurity authority "ANCS" (2024 strategy) vs "ANC"
  (2025 bill): same body or a naming discrepancy? Brief in `_review.md`.
- **Gap GAP-DJI-001** — D-Money port-launch publication year unconfirmed.

### Indexes / vocab
- entities-index: +15 rows (3 companies, 1 org, 4 gov-bodies, 5 initiatives, 2 instruments); 3 rows
  updated (visa, wingu-africa, afdb).
- places-index: CPV row added; DJI row enriched; **hubbed count 57 → 58 of 62** (unhubbed now 4:
  ERI, GNB, LBY, STP).
- topics-index + concept `places:` frontmatter: DJI/CPV added across dpi.id, dpi.govtech, dpi.pay,
  gov.protect, gov.policy, infra.store, infra.connect, infra.cybersec, dpi.exchange, dpi.mis,
  tech.ai, include.access, include.divides, finance.mou (only where missing).
- **Provenance fix:** corrected 14 source-page `url:` fields (and several `publisher:`) to the exact
  URLs the clips carried, before writing the contradiction brief.

Dead-link lint: clean across the corpus (see run below).

---

## 2026-07-15 — COM + COG ingest batch (Comoros greenfield · Republic of Congo update)

Drained a two-country batch from `new/` (no review sheet used). Currency rules applied.

**Ingested — 16 sources admitted (15 markdown + 1 PDF), 0 leads, 0 discards.**
- **Dedup:** Comoros PayLogic switch (award + go-live → 1), AfDB DPI grant (2 outlets → 1); Congo $72.8m
  Brazzaville data centre (2 outlets + a 75%-completion update → 1), DP-commission draft-law approval (2 → 1).

### Comoros (COM) — **new greenfield hub** (was unhubbed; parent XEA)
- **Sources (7):** PayLogic national interoperable payment switch (go-live Aug 2025, WB PADSF); PAPSS accession
  (BCC, Aug 2024); AfDB "Project to Support Digitization of the Comorian Economy" ($10.4m/€9.51m; DC + DPI + DP
  authority); Tier-3 public data centre completed (ANADEN/Comores Cable); Anjouan biometric ID cards (Genkey
  replaces Semlex); 2021 Data Protection Law review (authority not operational); Digital 2025.
- **Entities (5):** [[paylogic]] (company); [[bcc-comoros]], [[anaden]] (gov bodies); [[project-digitization-comorian-economy]]
  (initiative); [[comoros-data-protection-law-2021]] (instrument). Reused [[genkey]]. **Hub:** [[COM]] created.

### Republic of Congo (COG) — **existing hub, expanded**
- **Sources (7 + PDF):** NIU biometric universal ID relaunch; national digital-identity workshop (PATN, Thales,
  SIFEC); Pointe-Noire passport/ID production centre; Brazzaville National Data Centre (CAB, "first in Central
  Africa"); Pointe-Noire 2Africa data centre (ARPCE); DP-commission draft-law approval (Jul 2024 origin); PATN
  $63.9m 2024 budget; + WB Congo Digital Acceleration Project (P175592) ISR.
- **Entities (4 new + update):** [[patn-congo]], [[congo-national-data-centre]] (initiatives), [[arpce-congo]] (gov
  body), [[niu-congo]] (instrument); updated [[national-personal-data-protection-commission-congo]] (+Jul-2024 origin).
  **Intersection:** [[congo--dpi-id]]. Expanded the [[COG]] hub (intro + ID/DC developments + entities).

### Regional
- [[afrilabs]] (organisation) — pan-African tech-hub network (+18 hubs, 2024); filed at [[XAF]].

**Concepts/indexes.** Added COM to 10 and COG to 8 concept frontmatters + topics-index; by-place pointers on
[[dpi.id]] (COG → congo--dpi-id; COM indexed). places-index: **COM new country row**, hubbed **56→57** (COM off
the unhubbed list → 5 left); COG row rewritten. entities-index: 10 new rows.

**Flags.** No hard contradiction: the Brazzaville DC's **$72.8m ≈ €66.55m** (same amount) and the Comoros AfDB
**$10.4m ≈ €9.51m** reconcile as currency differences (written dated). Two more **"law/commission but authority
lagging"** cases: **Comoros'** 2021 DP law authority is not yet operational; **Congo's** DP commission (bill Jul
2024) had members installed only Jan 2026. Both Congos kept distinct — COG (Brazzaville, this batch) vs COD (DR
Congo, prior batch); `national-personal-data-protection-commission-congo` and `congo-digital-strategy-2030` are COG.

---

## 2026-07-15 — COD (DR Congo) ingest batch — existing hub, digital-ID saga deepened

Drained the DRC batch. **Note on intake:** midway through, the `new/` folder was relocated externally to
`my-notes/done/new/` (the human's manual workspace); source clips were already compiled to `raw/`, and the
3 PDF binaries were retrieved from there and moved to `raw/`. `my-notes/` is the human's manual area and is
**not** part of the ingest pipeline — recorded so future runs don't reach into it.

**Ingested — 21 sources admitted (18 markdown + 3 PDF), 0 leads, 0 discards.**
- **Heavy dedup on the DRCPass digital-ID saga (11 clips → 6 sources):** IDEMIA/Afritech $1.2bn cancellation
  (2024-09); Trident implementation agreement + validation phase (merge Feb+Mar 2025); the definitive 20-yr PPP
  + phased deployment (merge Jun-25/26/27 + Aug 2025); NTU-SBF risk analysis; Margins Group card track; $97.1m
  pricing. Also: PNN2 + first AI strategy (2 clips → 1 + the $8.7bn variant); OADC Texaf (first Tier-III) and
  Raxio DRC1 (largest) DCs; Visa Pay; blockchain e-gov; ENCORE civil-servant registry; DP-authority operationalisation;
  data-centre FDI talks; eCommerce CCG; Digital 2026. PDFs: WB ID4D-adjacent geospatial report (→ XSS, 2022),
  ST Digital×OADC-Texaf press release, DRC CRVS snapshot.

**Entities.** Created **7**: [[idemia]], [[oadc-texaf-digital]] (companies); [[onip-drc]] (gov body);
[[drc-national-digital-plan-pnn2]], [[drc-national-ai-strategy]], [[drc-digital-code]] (instruments); [[encore-drc]]
(initiative). Substantially updated [[rdc-pass]] and [[trident-digital-tech]] (full 2024–26 timeline: IDEMIA reset →
Trident pivot → 20-yr PPP → $97.1m + scrutiny); updated [[margins-id-group]] (+DRC cards), [[raxio-group]] (+DRC1),
[[st-digital]] (+DRC via OADC Texaf). **Intersection:** [[drc--dpi-id]] (the outsourced-sovereignty extreme).

**Hub/concepts/indexes.** Expanded [[COD]] hub (ID-saga backstory + PNN2 + data centres + ENCORE + Digital Code +
DC-FDI; entities regrouped). Added COD to 6 concept frontmatters + topics-index (dpi.registry/dpi.mis); upgraded the
[[dpi.id]] by-place COD line to point at [[drc--dpi-id]]. places-index COD row rewritten. entities-index: 7 new rows.

**Contradiction flagged → `_review.md` REV-COD-001:** the PNN2 plan cost is reported as **$1.5bn** (government
investment), **$8.7bn** (iAfrica), and **~€8.7bn / $10.4bn** (total, existing sources) — likely a €/$ confusion
(total €8.7bn ≈ $10.4bn; $1.5bn is the government share), but recorded not silently reconciled.
[[drc-national-digital-plan-pnn2]] set `needs-review`.

**Flags.** The DRC ID build is the **most externalised in the wiki**: a $1.2bn contract cancelled for overbilling,
replaced by a 20-year foreign-exclusive e-KYC concession, over a population whose **data-protection authority is
still un-operationalised** (Digital Code Art. 262) — a live governance gap, not just an item. Proxy dates: CRVS
snapshot (year), WB geospatial (month, 2022). `national-personal-data-protection-commission-congo` is
**Congo-Brazzaville (COG)**, not the DRC — kept distinct; created [[drc-digital-code]] for the DRC instead.

---

## 2026-07-15 — CMR + CIV ingest batch (Cameroon + Côte d'Ivoire, both existing hubs)

Drained a two-country batch from `new/` (CIV had a review sheet; CMR classified from clips). Currency rules
applied (dated figures; budget trajectory written dated).

**Ingested — 27 sources admitted (23 markdown + 4 PDF), 0 leads, 0 discards.**
- **Dedup:** Cameroon biometric CNI (4 outlets → 1), BUNEC/Liber (2 → 1); CIV UXP platform (2 → 1), ST Digital
  Grand-Bassam DC (3 → 1). The CMR "first digital birth certificate" (UNDP) folds into the hub's existing
  UNDP/Denmark civil-docs coverage (same 10-municipality programme) — attached, not duplicated.

### Cameroon (CMR) — existing hub, major expansion
- **Sources (~11 md + 2 PDF):** new **Augentic/DGSN biometric CNI** (48-hr issuance, first African ID-1 format;
  + lawmaker cost criticism; + Far North displacement enrolment); **BUNEC × Liber Technologies** CRVS
  (Law 2024/016, UPIN, CRVS-by-2029); UNDP first digital birth certificate; civil-registration e-gov academic;
  **ST Digital / SNIA** national AI strategy; **Campost × FindMe** address system; **PATNUC** 328-rural-localities;
  digital-health-governance study; + PDFs (WB ID4D Cameroon, DS-I Africa data-law report).
- **Entities (11):** [[augentic]], [[liber-technologies]], [[st-digital]], [[findme]] (companies);
  [[dgsn-cameroon]], [[bunec]], [[campost]] (gov bodies); [[cameroon-civil-registration-law-2024]], [[snia-cameroon]]
  (instruments). Updated existing [[patnuc]] (+rural). **Intersection:** [[cameroon--dpi-id]]. Rewrote the [[CMR]] hub
  framing (donor-capacity → foreign-vendor-built foundational-ID overhaul).
- **Note:** ST Digital treated as a Cameroon-HQ **regional group** (new [[st-digital]]); the existing
  [[st-digital-gabon]] is cross-linked as the Gabon arm.

### Côte d'Ivoire (CIV) — existing hub, govtech expansion
- **Sources (~12 md + 2 PDF):** **UXP** interoperability ([[sndi-cote-divoire]]/[[cybernetica]]); e-Justice +
  **digital nationality certificate** ([[oneci]]); **RSU** social registry; 2026-30 **SDSI** master plan; the
  digital-budget trajectory (CFA52.6bn→60.78bn→83.2bn); **ARTCI** biometrics governance; **ST Digital** + **Raxio
  CIV1** data centres; US-ITA digital-economy guide; Digital 2025; + PDFs (WIPO GII 2024 CIV, ADCA continental
  data-centre report → XAF).
- **Entities (3 new + updates):** [[sndi-cote-divoire]], [[artci]] (gov bodies), [[rsu-cote-divoire]] (initiative);
  updated [[oneci]] (e-Justice/nationality), [[cybernetica]] (+CIV), [[raxio-group]] (+CIV1). **Intersection:**
  [[civ--dpi-govtech]]. Updated the [[CIV]] hub (govtech cluster + DC cluster).

**Concepts/indexes.** Added CMR to 10 and CIV to 6 concept frontmatters; by-place pointers on [[dpi.id]] (CMR) and
[[dpi.govtech]] (CIV). places-index: CMR + CIV rows rewritten with intersection links. entities-index: 14 new rows.
(CMR/CIV already present in most topics-index slugs.)

**Gap flagged → `_review.md`:** GAP-CMR-001 (Cameroon's 2024 personal-data-protection bill — enactment status
unconfirmed; the paired civil-registration bill became Law 2024/016, but the DP bill's fate is unclear).

**Flags.** Proxy/year dates: WB ID4D Cameroon, DS-I Africa law report, WIPO GII CIV, ADCA report. Two strong
**foreign-vendor-run identity** stories (Cameroon: Augentic 15-yr BOT + Liber CRVS) sit against a sovereignty
framing — advanced tech, contested cost/capacity. CIV is the more self-directed build (SNDI/Cybernetica UXP,
rising domestic budget). No hard contradictions (CIV budget $145.9m/$146.9m is rounding of CFA83.2bn).

---

## 2026-07-15 — BFA + BWA ingest batch (Burkina Faso + Botswana, both existing hubs)

Drained a two-country batch from `new/` (BFA had a review sheet `my-notes/done/BFA_review.md`; BWA classified
from clips). Applied the ratified currency rules (dated figures; supersession handling).

**Ingested — 36 sources admitted (29 markdown + 7 PDF), 0 leads, 1 already-covered (attached).**
- **Heavy dedup:** CIB-AES biometric ID (3 outlets → 1), BFA mini data centres (2 → 1), Botswana DP Act (4
  outlets → 1), Digital Delta DC (2 → 1), India... n/a. The BFA "supervision centre" clip (dig.watch) was a
  3rd outlet on an event the hub already documents → filed + noted as corroboration, not a parallel page.
- **Supersession recorded (not a contradiction):** PACTDIGITAL reported at **$150m** (2024 approval) vs
  **~$170m / 96.7bn CFA** (2026 ministry framing incl. counterpart) — both values written dated on
  [[pactdigital]].

### Burkina Faso (BFA) — existing hub, expanded
- **Sources (~17 md + 5 PDF):** CIB-AES AES biometric ID; two mini data centres; PACTDIGITAL $150m WB; national
  AI Action Plan 2026-28; public-admin decree (SNMAP); Faso Arzêka payments; VENEEM civil registration; 2025
  digital agenda; DNSSEC (.bf); connectivity/citizen-houses; local-HQ localization decree; Faso Ãndúbe; digital
  education; SYC@D land cadastre; BFIX; Digital 2024; + PDFs (WB PACTDIGITAL ISR, CRVS webinar, IMF report,
  WIPO GII 2024, WURI2 PAD → filed XWA).
- **Entities (7):** [[oni-burkina-faso]], [[arcep-burkina-faso]] (gov bodies); [[cib-aes]] (instrument);
  [[pactdigital]], [[faso-arzeka]], [[veneem]] (initiatives); [[bfix]] (resource). Updated [[alliance-of-sahel-states]]
  (CIB-AES). **Intersection:** [[burkina-faso--dpi-id]].

### Botswana (BWA) — thin hub → full synthesis
- **Sources (~10 md + 2 PDF):** Data Protection Act 2024 (repealing the never-commenced 2018 Act); Digital Delta
  national data centre (BoFiNet); Digital BoB2024 gov payments; SmartSwitch biometric UEPS cards; TCIB
  cross-border; BOCRA SIM registration; digital Omang ID; US-ITA digital-economy guide; Digital 2024; DPI op-ed;
  + PDFs (WIPO GII 2025 — Botswana 4th in SSA; Londa 2023 digital-rights).
- **Entities (8):** [[botswana-data-protection-act-2024]] (instrument); [[information-data-protection-commission-botswana]],
  [[bocra]], [[bank-of-botswana]] (gov bodies); [[bofinet]], [[smartswitch-botswana]] (companies);
  [[omang-digital-id-botswana]], [[tcib]] (initiatives). **Intersection:** [[botswana--gov-protect]]. Rewrote the
  [[BWA]] hub (was a 3-line stub-ish synthesis).
- **Regional:** [[sadc-cross-border-dpi-framework]] (SADC CCBG × Co-Develop × FinMark Trust — Africa's first
  cross-border digital-ID/eKYC framework, 16 states) filed at [[XSA]].

**Concepts/indexes.** Added BFA to 9 and BWA to 8 concept frontmatters + topics-index slugs; by-place pointers on
[[dpi.id]] (BFA) and [[gov.protect]] (BWA). places-index: BFA + BWA rows rewritten with intersection links.
entities-index: 17 new rows.

**Gap flagged → `_review.md`:** GAP-BFA-001 (CIB-AES vendor/technology unconfirmed — "Emptech" appears in source
keywords only).

**Flags.** Proxy/year dates: WIPO GII (BFA 2024, BWA 2025), CRVS webinar, IMF report, WURI2 PAD (2020 month),
Londa 2023. The BFA identity story sits at a **donor-DPI / AES-sovereignty** tension (WURI-financed card reframed
as post-ECOWAS AES statement); Botswana's is a **"law that finally took effect"** story (2018 DP Act never
commenced). Botswana is a comparatively strong regional performer (GII 2025: 4th in SSA), unlike the low-income
Sahel profile.

---

## 2026-07-15 — BEN + BDI ingest batch (Benin update · Burundi greenfield)

Drained a two-country batch from `new/` (no review sheet; classified from clips). Applied the ratified
currency rules (time-varying figures written dated; older pieces filed as historical baselines).

**Ingested — 23 sources admitted (17 markdown + 6 PDF), 0 leads, 0 discards.**
- **Dedup:** Burundi DP law (CADE + We Are Tech → 1), Burundi e-KORI (Ecofin + TechAfrica → 1); Benin's
  `2026-01-28` ANIP "mass digital ID" clip folded into the existing `2026-02-02` 75%-digital account as a
  **corroborating outlet** (same ANIP 2025 annual data), not a parallel page. Benin backfills (fID décret
  2020-099 2024-05-06; DGI online tax 2024-05-27; Loko/ASIN interview 2024-05-29) filed as historical
  baselines under the new rule.

### Burundi (BDI) — **new greenfield hub** (was unhubbed)
- **Sources (10):** DP law adopted 15 Jan 2026; e-KORI online tax (OBR); land cadastre EDRMS (Mediabox/
  DTFCN); Merankabandi social protection on openIMIS (1.25m beneficiaries); IFC/PAFEN digital-transformation;
  CENI voter-card extension + coercion; biometric-ID-not-ready-for-2025; + PDF companions (WB PAFEN ISR,
  WIPO GII 2024 Burundi, ECCAS remittance diagnostic).
- **Entities (8):** [[ceni-burundi]], [[obr-burundi]], [[setic-burundi]] (gov bodies); [[mediabox]] (company);
  [[pafen-burundi]], [[merankabandi]] (initiatives); [[burundi-data-protection-law-2026]] (instrument);
  [[openimis]] (resource). **Intersection:** [[burundi--dpi-id]]. **Hub:** [[BDI]] created (parent [[XEA]];
  also an ECCAS member).

### Benin (BEN) — **update/expand** existing hub
- **Sources (13):** ANIP 2025 digital-ID data + electoral platforms + fID instrument; MTN first 5G; SIM-
  registration (ARCEP); DGI online tax; 2026 digital budget −6.32%; digital vision 2031; GSMA XOF 1.2tn
  report; + PDF companions (WIPO GII 2024 Benin, WB Enterprise Surveys Benin 2024, Smart Africa National
  Data Strategy ToR).
- **Entities:** created [[mtn-benin]], [[dgi-benin]], [[arcep-benin]]; updated [[asin-benin]] (partnership
  strategy, budget, 2031 vision), [[anip-benin]] (electoral platforms, fID, corroboration) and the
  [[benin--dpi-id]] intersection (electoral backbone, SIM nexus). Updated [[BEN]] hub (7 new dated developments).

**Concepts/indexes.** Added BDI to 13 concept frontmatters + topics-index slugs + a [[dpi.mis]] Burundi line +
a [[dpi.id]] by-place pointer; added BEN to tech.innovate/geopol.china. places-index: **BDI new country row**,
hubbed count **55→56** (BDI removed from unhubbed → 6 left). entities-index: 11 new rows.

**Gaps flagged → `_review.md`:** GAP-BDI-001 (Burundi biometric-ID vendor/tech and firm launch date unconfirmed
after repeated slips); GAP-BDI-002 (Burundi–Vietnam digital-cooperation MoU referenced, no source/detail).

**Flags.** Proxy/low-precision dates: openIMIS blog (2026, year), ECCAS remittance diagnostic (2025-04, month),
WIPO GII 2024 ×2 and WB Enterprise Surveys (year). Burundi's biometric-ID timeline slipped repeatedly (2023
"before 2025" → 2024 not-ready → Jan 2026 pilot communes) — recorded as a dated trajectory, not a contradiction.
Burundi voter-registration data noted as produced under documented coercion (governance caveat, not a data error).

---

## 2026-07-15 — AGO (Angola) ingest batch — thin hub → full synthesis

Drained the Angola batch from `new/` (staged via the country-ingest workflow; Phase-1 sheet
`my-notes/done/AGO_review.md`). **AGO expanded from a thin 2-item hub to a full active country synthesis.**

**Ingested — 32 sources admitted (24 markdown + 8 PDF), 0 leads parked, 1 discard.**
- **Dedup applied:** Africell DC (3 outlets → 1 source), Raxio AG1 (3 → 1), Paratus DC3 announcement+financing
  (2 events → 1), India DPI summit (Biometric Update + Ecofin → 1). The 278KB "Untitled" clip was the
  **World Bank ID4D Diagnostic of ID Systems in Angola (2023)** — compiled as a distilled source.
- **Markdown sources (24):** data centres (Africell 2021, Raxio 2025, Paratus DC3, INFOSI national DC,
  national cloud/Huawei skills), payments (KWiK/EMIS, Afrimoney/GSMA, AGT e-invoicing, Kwenda G2P, India
  DPI credit), identity (ID4D diagnostic, China/CEIEC civil registration 2020, newborn ID, Presight/G42
  MoU), data protection (Law 22/11 Hunton 2011, PLMJ APD-enforcement 2024, CMS stack 2025, AI-law review),
  strategy (ICT White Paper/LBTIC), energy (Afrobarometer AD664), regional (SADC financial inclusion),
  IDEA/PADA (World Bank).
- **8 PDF binaries** → `raw/` with companion source pages + shared prefix: BDI Angola biometrics report
  (Greater Internet Freedom 2023), WB Social Protection PAD (2019), WB DPI/interoperability (2023, ref),
  WB Angola CCDR (2022, ref), WIPO GII 2025 (138/139), Paradigm Initiative digital-ID brief (AGO/CAF/DRC,
  cross-links [[caf--dpi-id]]), AU CRVS status report (XAF ref), Angola Cables commercial catalogue (resource
  collateral). Global/regional references (CCDR, WB DPI, AU CRVS) held without promoting per-country figures.
- **1 discard:** "Data Centers - Database" = datacentermap.com global homepage (no Angola content, generic
  marketing) — deleted.

**Entities created (14).** Companies: [[africell]], [[angola-cables]], [[emis-angola]], [[unitel]]. Government
bodies: [[infosi]], [[ima-angola]], [[agt-angola]], [[apd-angola]]. Initiative: [[kwenda]]. Deals:
[[angola-india-dpi-credit-line]], [[digital-angola-presight-mou]]. Instruments:
[[angola-data-protection-law-22-11]], [[livro-branco-tic-angola-2023-2027]], [[angola-ai-bill]]. Updated
existing [[paratus]] (+AGO DC1/2/3) and [[raxio-group]] (+AG1). (Angola Telecom, SATCAB, GGPEN, MSTelcom,
Movicel, FAS, MINTTICS, CEIEC, Presight/G42 mentioned inline, not hubbed.)

**Intersections created (4):** [[angola--infra-store]], [[angola--dpi-pay]], [[angola--dpi-id]],
[[angola--gov-protect]].

**Hubs/concepts/indexes.** Rewrote [[AGO]] (thin → full synthesis; preserved the June-2026 Telecom-Namibia
content). Added by-place pointers on concepts infra.store, dpi.pay, dpi.id, gov.protect, infra.energy, tech.ai;
added AGO to 21 concept frontmatter `places:` lists (mechanical facet correction). Added the SADC FI item and
kept AGO regional context on [[XSA]] via sources. Updated entities-index (14 rows), places-index (AGO row +
intersection links), topics-index (AGO added to infra.energy, dpi.id, dpi.exchange, dpi.registry, geopol.gulf,
geopol.india, infra.cybersec).

**Gaps flagged → `_review.md`:** GAP-AGO-001 (Unitel–Ericsson modernisation, dataset-only, unsourced);
GAP-AGO-002 (whose stack? China CEIEC civil-registration vs India Aadhaar/MOSIP digital-ID model — unreconciled).

**Flags.** Several proxy/low-precision dates (ID4D 2023, WB DPI 2023, CCDR 2022, WIPO GII 2025, Paradigm brief
2024, AU CRVS 2017, Angola Cables catalogue 2022-11 — all `date_source: proxy` / year|month precision). No hard
contradiction raised (national-DC cost figures $89–90m reconcile). B-item outlets (FurtherAfrica, 360Mozambique-
sourced) used where corroborated. Notable finding: Angola's **APD is an actively-enforcing DPA** (2024 sanctions)
— contrast with CAF's dormant authority.

---

## 2026-07-15 — CAF (Central African Republic) ingest batch — stub → active

Drained the CAF batch from `new/` (staged via the country-ingest workflow). **CAF promoted from
`status: stub` to a full `active` country hub.**

**Ingested — 20 sources admitted, 1 lead parked, 0 discards.**
- **18 markdown sources** → `raw/` (publication-date prefixed): ID-card price restoration
  (Corbeau News 2025-07-27), Bossangoa CNI (Radio Ndeke Luka 2023-10-07), Birao CNI (Journal de
  Bangui 2025-12-08), biometric voter reg ×2 (Biometric Update 2024-10-08 / 2024-12-10),
  Francophonie CRVS (2025-08-12), unified portal (Ecofin 2025-12-12), PND/DUNIA (MEPCI 2026-02-11),
  e-Tax (Agence Ecofin 2025-03-25), Touadera transformation (Ndjoni Sango 2025-05-22), Orange 4G
  (DCD 2024-11-11), Digital 2024 (DataReportal 2024-02-23), DP factsheet (Data Protection Africa
  2026-01-28), DP-law review (TechHive 2025-09-23), AI/digital-space (Greater Internet Freedom
  2022-10-21), electricity PARSE (World Bank 2022-06-03), ECCAS integration (IJRISS 2024-02-19).
- **3 PDF binaries** → `raw/` with companion source pages + shared date prefix: BDI CAR
  identification report (Greater Internet Freedom, 2023-06-27); ITU Country Profile CAR
  (2017, date proxied to year); WB "Global Insights on Social Registries" (global reference,
  XGL, 2024 — figures **not** promoted to CAF pages, per memory guidance).
- **1 lead parked** → `_leads/`: Luvent Consulting CAR tax-digitalisation case study
  (consultancy marketing — mine, do not cite).

**Entities created (16).** Companies: [[al-madina]] (needs-review), [[genkey]],
[[orange-centrafrique]], [[socatel]], [[enerca]]. Government bodies:
[[ane-central-african-republic]], [[arcep-central-african-republic]],
[[dgid-central-african-republic]], [[mepci-central-african-republic]]. Organisations: [[eccas]],
[[oif-la-francophonie]], [[greater-internet-freedom]]. Instruments:
[[car-data-protection-law-24-001]], [[pnd-2024-2028-central-african-republic]]. Person:
[[faustin-archange-touadera]]. Resource: [[data-protection-africa]]. (EY Tunisie Medianet,
TechHive Advisory, IMF, Centrafrique numérique 2018, DUNIA/e-Tax/Gouvernemental-Centralisé
platforms mentioned inline, not hubbed.)

**Intersections created (4):** [[caf--dpi-id]], [[caf--dpi-govtech]], [[caf--gov-protect]],
[[caf--infra-connect]].

**Hubs/concepts/indexes.** Rewrote [[CAF]] (stub → active synthesis). Added CAF to concepts
dpi.id, dpi.govtech, gov.protect, infra.connect, infra.energy, tech.ai (frontmatter + Places +
by-place pointer) and to dpi.registry, gov.policy (frontmatter). Added the regional Francophonie
CRVS item to [[XCA]]. Updated entities-index (16 rows), places-index (CAF row + removed from
"thinnest" list), topics-index (CAF added to 13 slug roll-ups).

**Contradiction flagged →`_review.md` REV-CAF-001:** Al Madina's home country — Corbeau News
("libanaise"/Lebanese) vs Biometric Update ("Oman-headquartered"). [[al-madina]] set
`needs-review`; both values recorded with attribution, not overwritten.

**Gap flagged → `_review.md` GAP-CAF-001:** SOCATEL "National Digital Hub" (planned Bangui Tier
III DC) appears in the dataset with no dated primary; CAR has no national data centre — flagged,
not asserted.

**Flags.** Two proxy/low-precision dates added (ITU profile 2017 `date_precision: year`,
`date_source: proxy`; WB social-registries study 2024 same). ECCAS academic article ingested
lightly (free-movement content tangential to data governance; used to establish the [[eccas]]
entity + XCA integration frame). The Global Social Registries study filed as a global reference —
its per-country figures deliberately **not** lifted into CAF pages.

---

## 2026-07-15 — Morning batch ingest (9 items → 6 sources, 2 leads, 1 duplicate)

Drained the small morning batch in `new/`.

**Sources admitted (6):**
- `2026-07-14 OUT, PDPC Launch National Data Protection Programme` — TZA · gov.protect, capacity.training.
  Tanzania's PDPC + Open University launch a national Certified Data Protection Officer (CDPO) Programme.
  New gov-body entity **[[pdpc-tanzania]]**. Touched: TZA hub, gov.protect (light frontmatter — page near
  bloat threshold), capacity.training (substantive bullet).
- `2026-07-14 Liquid appoints Bernard Beya as DRC CEO` — COD · infra.connect. Leadership appointment at
  Liquid Intelligent Technologies (Cassava business). Updated **[[liquid-c2]]** (+COD place) and COD hub.
  Beya captured inline (no thin person page).
- `2026-07-14 Raxio raises data centre funding` — UGA/ETH/MOZ/COD/CIV/AGO/TZA · infra.store, finance.new.
  Equity top-up (Meridiam + Roha) above US$380m. New company entity **[[raxio-group]]**. Touched
  infra.store + finance.new (bullets). *Multi-country corporate footprint tagged on source/entity; did
  not spray all 7 place hubs (hygiene).*
- `2026-07-14 Zambia and COMESA Launch AI Initiative…` — ZMB/XSA · tech.ai, gov.policy, gov.regional.
  COMESA regional-AI workshop under IDEA. New org entity **[[comesa]]**; updated **[[idea-mpa]]**. Touched
  ZMB hub (added tech.ai topic), tech.ai, gov.regional.
- `2026-07-09 Closing the Adoption Gap - How AI Is Being Built in the Global South` — **PDF + companion
  source page** (New America; Kapur & Rosenberg). Multi-place Global South · tech.ai, dpi.exchange,
  capacity.training. Reference study — per memory [[reference-study-facts-not-promoted]], one framing
  bullet on tech.ai, no figure-spray into place pages.
- `2026-07-13 On Leapfrogging - What are we leaping over and where are we landing` — Ezejiofor / Global
  Center on AI Governance. Analysis (tagged as such) · lens sovereignty+colonialism · RWA/KEN/XAF/XSS ·
  digital.rural, infra.connect, gov.policy. Updated **[[global-center-on-ai-governance]]** (+colonialism
  lens); substantive bullet on digital.rural. Published date established via source (was blank on clip).

**Leads parked (2, `_leads/`):**
- M-Pesa "building products" op-ed (TechTrends, Ajah) — thin thought-leadership, no primary evidence, no
  datable development; nothing to mine.
- New Commons "Data Commons in the AI Era" review (Open Data Policy Lab) — largely non-African synthesis;
  mineable African primaries noted: **Malawi Voice Data Commons** (potential `resource` entity, no page
  yet) and WAXAL ([[waxal]], already an entity).

**Duplicate deleted (1):** "Every country defines identity differently…" (DIAL, Chacha) — **already in
`raw/` as `2026-07-10`** and cited across [[gov.protect]]; the `new/` copy was a re-clip. Removed, no
re-ingest.

**Mechanical:** New America PDF prefixed to published date (2026-07-09) on move to `raw/`. entities-index
updated (+raxio-group, +comesa, +pdpc-tanzania). topics-index/places-index place-lists already covered all
tags (no change). No contradictions or gaps flagged for `_review.md`.

**Note (not actioned):** a separate **Central African Republic batch (~18 files)** landed in `new/` mid-run;
left in place and surfaced to the curator — not part of this morning batch.

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

---

## 2026-07-14 — H1-2026 ingest, Batch H (cross-cutting / trade / geopolitics) — FINAL BATCH

**Ingested (8 sources):**
- Clips: Mzalendo ICT Promise Tracker (Kenya, 2026-05 proxy); Brookings *Realizing Africa's digital trade
  potential under the AfCFTA* (Signé & Munyati, 2026-03-18).
- PDFs (artefact + companion): Brookings *Foresight Africa 2026* (2026-02-18); Mo Ibrahim *Africa on the
  move* (2026-05); ODI *Getting Smart about Africa's mineral wealth* (Bright Simons, 2026-02); CIGI PB232
  *Tech Diplomacy* (Soulé, 2026-03); CIGI PB226 *Governing Global Tech Giants* (Heffernan, 2026-02);
  CSEP/AUDA-NEPAD *Africa–India Blueprint for Growth* (2026-01, from new-queue).

**Entities created (3):** cigi, csep, mzalendo (resource).

**Pages updated:** concept synthesis on gov.regional and tech.industry; entities-index rows. KEN hub not
re-edited (Mzalendo tracker linked via its entity + konza-technopolis; KEN hub already very dense).

**Editorial calls:** flagship reference studies (Foresight Africa, Africa on the move, Africa–India
Blueprint) filed with figures **attributed on the source page**, not fanned into concept/place pages
(reference-study rule). ODI mineral-wealth "Royale Protocol" term does not exist in the paper (noted;
corresponds to the National Data Cloud / chain-of-benefit model). **Contradictions/gaps:** none new.

**QUEUE DRAINED:** `new/` and `new-queue/` are now empty. All 62 drop items processed across Batches A–H
(58 sources admitted; 3 dedups; 1 discard).

---

## 2026-07-14 — Mechanical sweep: topics-index & places-index regenerated

Resolved the loose end flagged in the digest. Regenerated the faceted place-lists from **source-frontmatter
coverage** across all raw/ sources (1,139 distinct topic×place pairs):
- **topics-index.md** — each topic's `places:` code-list rebuilt as *existing ∪ source-coverage* (additive,
  existing order preserved, new codes appended). This also fixed pre-existing under-representation (the
  lists predated much of the corpus). No duplicates.
- **places-index.md** — the "Lead topics" column is **curated prose** (annotations, `[[intersection]]`
  links, "— stub" notes); preserved verbatim and only **appended** the topic slugs each place has source
  coverage for but wasn't yet listed (inserted before any trailing "— note"). No duplicates; region rows
  untouched.
Done deterministically in a single awk pass (Git Bash `<()` process-substitution proved unreliable and was
avoided). Row/line counts unchanged (topics-index 36 topic lines; places-index 56 country + 8 region rows).

---

## 2026-07-14 — Lint follow-up: 2 pre-existing dead links fixed

Full 11-check lint (run on request) came back clean for the H1-2026 ingest. Two pre-existing dead links
resolved — both were **binary artefacts in `raw/` that never got their companion `.md` source page**, so
the dated `[[…]]` citations had nothing to resolve to:
- **`2026-07-11 data-systems-crossroads.pdf`** (PARIS21 DP22, *Data Systems at a Crossroads*) — 8 dead
  references. Created the companion source page; standing synthesis remains at instrument entity
  [[data-systems-crossroads]].
- **`2025-01-01 SE_GISW-Gillwald_final.pdf`** (Gillwald, GISW WSIS+20 special edition) — 1 dead reference.
  Created the companion source page; synthesis at [[gillwald-digital-inequality-paradox-2025]].
Both filed at their existing dated names (proxy dates, precision year) so all citations resolve. **Corpus
dead-link count is now 0** (excluding the whitelisted lens values). Remaining lint notes are advisory:
page-bloat on ~16 large pages (deferred editorial pass) and the standing `_review.md` worklist.

---

## 2026-07-14 — Page-bloat review (16 over-threshold pages) + place-hub append-log trims

Ran the CLAUDE.md "stop and classify" step on the 16 pages over ~2,500 words. Verdict:

**Concept pages (11) — LEAVE (correctly-long thematic).** tech.ai, infra.connect, infra.store, gov.protect,
geopol.usa, gov.regional, gov.policy, finance.new, dpi.pay, dpi.exchange, gov.standards are all organised by
**theme/argument, not by country cells** (bullet headers read "National data policies as sovereignty
instruments", "Data-centre boom", "Health data as a funding condition", "Continental data-governance
instruments"…). CLAUDE.md explicitly names tech.ai/infra.connect as thematic-stay-long; the same holds for
the rest. dpi.pay/tech.ai/infra.connect additionally already carry "By place" extractions to intersections.
Scattered country items are terse one-liners below the ≥120-word materiality bar. Per "when in doubt, don't
split thematic," these are dense syntheses that are allowed to be long — **flag cleared as reviewed, not
actioned.**

**entities/google — LEAVE.** A dense thematic profile of a top-tier cross-continental actor (subsea cables,
Cloud/AI, Cassava/Liquid, sovereignty critique); not an append-log or matrix.

**Place hubs (4) — TRIMMED (append-log → synthesis).** NGA/ZAF/KEN/XAF each had a `### Earlier` section that
had accreted into a 37–48-entry dated chronology — the append-log anti-pattern (CLAUDE.md: synthesis pages
hold current state, not chronology; events live in the dated source pages). Trimmed `### Earlier` back to the
most recent/material anchors (NGA hand-curated to 11 milestones; ZAF/KEN/XAF to the 12 most-recent), keeping
`## Recent developments`, the `## Active topics` synthesis (which points to the topic intersections) and
`## Entities`. Every trimmed entry is preserved in its linked source page, the topic intersections, and git.
Result: NGA 3,536→2,258w · ZAF 3,448→2,250w · KEN 3,068→1,810w · XAF 3,190→2,283w. **Corpus dead-link count
remains 0** after the trims. Reversible in git if the fuller timelines are wanted back.

---

## 2026-07-15 — Ingest Gabon batch (21 clips + 2 World Bank ISR PDFs → 23 sources)

Drained `new/` of the Gabon batch. **All 23 items admissible** (primary/first-hand: government
announcements [Gouvernement.ga, Interior Ministry], World Bank press release + two Implementation
Status & Results Reports, on-the-record tech/biometric reporting, DataReportal dated stats). **No
leads, no discards.**

**Sources admitted (23):** 21 clip-derived markdown + 2 ISR companion pages for the archived PDFs
(`2024-06-29…isr-seq6.pdf`, `2024-12-19…isr-seq7.pdf`), all date-prefixed to true publication date.
Two dates fell back to proxy/low precision, flagged: custody-registers (`2025-02-01`, month, proxy —
event month, publication date not on page) and electoral-roll platform (`2025-01-01`, year, proxy —
undated page tied to 2025 elections).

**Dedup:** the **June 2024 CNIE launch** is one event across **five outlets** (WeAreTech, Powers of
Africa, Innovation Village, Techpoint, Biometric Update) — created five source pages, attached all
five to [[gabon--dpi-id]] / [[dpi.id]] rather than spawning parallel pages; the two 11-year-hiatus
pieces share a publication date (2024-07-02) with distinct slugs.

**Entities created (15):** initiatives — [[digital-gabon-project]], [[sigfip-gabon]],
[[madigipaie-gabon]], [[digitax-gabon]], [[registre-social-unique-gabon]], [[sige-gabon]]; government
bodies — [[aninf-gabon]], [[dgi-gabon]]; companies/orgs — [[in-groupe]], [[thales]], [[uncdf]],
[[ign-fi]]; deals — [[gabon-uncdf-financial-inclusion-deal]], [[gabon-visa-partnership-deal]],
[[gabon-ign-fi-cadastre-deal]]. **Updated (4):** [[world-bank]] (+GAB, Digital Gabon Project bullet +
ISR under-execution story), [[visa]] (+GAB, May-2025 partnership), [[beac]] (MADIGIPAIE/GIMACPAY),
[[huawei]] ($234m smart-cities corroboration).

**Editorial actions (auto, itemised):**
- **Intersection created:** [[gabon--dpi-id]] (CNIE/NIP relaunch, French-vendor stack, DPI keystone,
  electoral-roll linkage) — the batch's strongest, most-sourced sub-story (6 sources). Linked from
  [[dpi.id]] "By place" (extracted list), topics-index Intersections, places-index GAB row.
- **Place hub [[GAB]] rewritten** from a one-development stub into a full hub: reverse-chron Recent
  developments (14 dated entries) + thematic Active-topics sections (ID / public-finance & payments /
  registries / MIS / strategy-governance / connectivity) + full Entities block. Topics frontmatter
  expanded to 17 slugs.
- **Concept pages updated (8):** dpi.id, dpi.pay, dpi.govtech, dpi.registry, dpi.mis, dpi.exchange,
  gov.policy, finance.mou — one concise Gabon entry each (linking out to GAB/intersection/entities),
  deliberately kept terse to avoid bloating pages already near the ~2,500-word threshold.
- **Indexes:** entities-index (+15 rows across Companies/Organisations/Government bodies/Initiatives/
  Deals), topics-index (GAB added to 6 topic place-lists + intersection line), places-index (GAB row
  topics regenerated + intersection pointer).

**Contradictions:** none (no competing numeric values). **Gaps flagged in `_review.md` (3):**
GAP-GAB-001 (Gabon data-protection law/authority asserted but unsourced), GAP-GAB-002 (CNIE/NIP
enrolment coverage — no published figure; WB indicator at baseline Dec 2024), GAP-GAB-003 (ID
vendor-role disambiguation IN Groupe vs Thales + Visa digital-ID leg reported second-hand).

**Flag (currency/precision):** two proxy/low-precision dates added (above). The World Bank ISRs are
primary evidence of the project's **chronic under-execution** (effective only Jul 2024 after a
~3-year delay; **1.92% disbursed** by Dec 2024) — recorded as the through-line behind Gabon's 2026
acceleration push, not smoothed over.

---

## 2026-07-16 — Ghana batch ingest

**Intake:** drained `new/` (22 items → 0). **Sources admitted (21):** 15 markdown clips + 6 PDF
companion source pages. **Leads parked (1):** the eaglebadger.com "Digital ID Systems: Lessons from
Ghana's Success Story" comparative analysis (second-hand/aggregated synthesis, author "Data Analytics
Team") → `_leads/2025-07-01 …` (inadmissible; its cited primaries — Ghana DP/NIA/NIR Acts, WB ID4D —
noted for separate sourcing, and conflicting statute dates flagged GAP-GHA-002). **Discards:** none.
**Artefacts:** 7 PDFs moved to `raw/` with published-date prefixes; each has a date-matched companion
source page carrying `artefact:` frontmatter.

**Filenames:** all clips re-prefixed from the clip date (2026-07-15/16) to true **published** dates
(2024-07 → 2026-01). Four PDFs dated by proxy (`date_source: proxy`): Payment Systems Report 2023
(2024, year), NCA Q2-2024 bulletin (2024-09, month), DIAL case study (2024, year), Lands Commission
cadastral deck (2023, year); digital-health policy & integration study self-dated (source).

**Entities created (10):** government bodies — [[national-identification-authority-ghana]] (central; ~8
sources), [[data-protection-commission-ghana]], [[national-communications-authority-ghana]],
[[ghana-health-service]], [[lands-commission-ghana]]; company — [[digital-realty]]; initiatives —
[[ghana-national-data-strategy]], [[leap-ghana]]; instrument — [[ghana-digital-health-policy-2023-2027]];
deal — [[onafriq-papss-ghana-launch]]. **Entities updated (10):** [[ghana-card]] (dated coverage
trajectory 17.56m→19.2m; mandatory-banking; NIA operations; SIM link), [[bank-of-ghana]] (guidance
note, Onafriq–PAPSS pilot, FY2023 payment stats), [[margins-id-group]] (SIM-online at ICPS),
[[onafriq]], [[papss]], [[afreximbank]] (Ghana launch), [[gsma]] (+GHA, Digital Africa Summit report),
[[smart-africa]] (National Data Strategy), [[samuel-nartey-george]] (SIM framework), [[2africa-cable]]
(ACR2 anchor).

**Editorial actions (auto, itemised):**
- **Intersections expanded (2):** [[ghana--dpi-id]] (330w → full NIA/coverage/SIM/mandatory-ID
  synthesis, +7 sources) and [[ghana--dpi-pay]] (+Onafriq–PAPSS, LEAP G2P, MoMo scale/fraud, +5
  sources). No new intersections minted (ID/pay material folded into the two existing ones;
  data-centre/digital-health/land below the standalone-intersection materiality bar — kept on
  concept/hub).
- **Place hub [[GHA]]** — Recent developments +~11 dated entries (Jan-2026 BoG banking mandate; LEAP;
  Digital Realty ACR2; NIA Sept cluster; GSMA report; Onafriq–PAPSS; NIA May cluster; SIM-online;
  ID critique) + one consolidated **"Baselines & institutional map (2023-2024)"** entry folding the 8
  reference/backgrounder sources (kept as one dense line, not 8 log entries, per page hygiene).
  Active-topics rebuilt; Entities block expanded (NIA/DPC/NCA/GHS/Lands/Digital Realty/LEAP/DIAL/…);
  frontmatter topics +geopol.usa, dpi.registry, dpi.govtech, gov.protect, include.access,
  digital.rural, digital.localgov, data.satellite.
- **Concept pages updated (5, terse link-outs to avoid bloating near-threshold pages):** infra.store
  (Digital Realty ACR2), dpi.mis (digital-health policy), dpi.registry (CRVS + land digitalization),
  dpi.exchange (DIAL eGIF/Ghana.gov), include.divides (GSMA usage gap + rural school study).
- **Indexes:** entities-index (+10 rows across Companies/Government bodies/Initiatives/Deals/
  Instruments), places-index (GHA row rebuilt with entity pointers), topics-index (GHA added to
  dpi.registry; both Ghana intersection descriptions refreshed).

**Dedup:** the 2025-09-08 (Biometric Update) and 2025-09-09 (Ecofin) SIM-framework reports = same
event → both filed as sources, attached to the same pages (NIA/SNG/ghana--dpi-id), no parallel pages.

**Currency:** Ghana Card coverage recorded as a **dated trajectory** (17.56m Oct-2023 → 19.2m early-2026),
older figures kept as baselines, newest (19.2m / 262 institutions) as current — no overwrite. The Sep-2025
"95 institutions (real-time auth)" vs early-2026 "262 institutions" recorded as dated, likely different
metrics (not raised as a contradiction). Reference statistical reports (BoG Payments 2023, NCA Q2-2024)
cited, not promoted to synthesis pages.

**Registers:** **GAP-003** Ghana-DPC portion resolved (DPC entity created; 2025 DP Bill primary still
to source). **Gaps added (3):** GAP-GHA-001 (GhIPSS no page), GAP-GHA-002 (NIA statutory basis
single-sourced / date conflict), GAP-GHA-003 (NITA/CSA/GIFEC under-hubbed). No contradictions, no
issues.

**Flag (currency/precision):** 4 proxy dates added (above), all `date_source: proxy` with the
uncertainty stated on the companion pages. The Integration-study and headteacher-study findings rest
on small, skewed samples (n=104 tertiary-skewed; n=200 single-municipality) — noted as indicative on
their source pages.

---

## 2026-07-16 — Guinea batch ingest

**Intake:** drained `new/` (20 items → 0). **Sources admitted (20):** 18 markdown clips + 2 PDF
companion source pages (WB WURI ISR; RSU social-registry presentation). **Leads parked:** none.
**Discards:** none. **Artefacts:** 2 PDFs moved to `raw/` with published-date prefixes + date-matched
companion pages (`artefact:` frontmatter). All clips re-prefixed from clip date (2026-07-15/16) to true
**published** dates (2023-08 → 2026-03). Two proxy dates: RSU deck (2025, year) and — the WURI ISR
dated to its archival date (2025-05-02, source).

**New place hub:** **[[GIN]] Guinea rebuilt from a one-line stub** (submarine-cable landing only) into a
full hub — reverse-chron Recent developments (15 dated entries) + Active-topics + Entities; frontmatter
topics 1 → 19.

**Entities created (12):** gov bodies — [[bcrg]], [[ministry-digital-economy-guinea]], [[oneci-guinea]],
[[arpt-guinea]]; initiatives — [[simandou-2040]], [[transform-africa-summit-2025]], [[fugas]],
[[telemo]], [[tresor-pay]], [[rsu-guinea]]; resource — [[guinea-national-data-centre]]; person —
[[rose-pola-pricemou]]. **Entities updated (6):** [[wuri-programme]] (+GIN/CIV; Guinea early closure
28-Jun-2024, ~8,000 IDs, Oct-2023 ID-law caution), [[smart-africa]] (+GIN; TAS 2025 host, SANIA, 42
members, ARPT/CAR chair), [[visa]] (+GIN; TAS Smart Africa MoU), [[mosip]] (+GIN), [[tech5]] (+GIN).

**Editorial actions (auto, itemised):**
- **Intersections created (2):** [[guinea--dpi-id]] (WURI exit → domestic MOSIP/TECH5 civil registry +
  national ID via ONECI, RAVEC, FUGAS payroll, RSU — 5 sources) and [[guinea--dpi-pay]] (cash-preference
  crisis; BCRG Mojaloop SPI, M-Pesa-style merchant system, Trésor Pay — 4 sources). Both clear the
  materiality bar; other threads (infra, TAS, govtech, health) kept on hub/entities.
- **Concept pages updated (10, terse):** dpi.id & dpi.pay (By-place bullets + intersections),
  dpi.registry (civil registry/RAVEC/RSU/cadastre), infra.store (Tier III DC), infra.connect (200 Gbps
  backbone/GIGA), gov.regional (TAS host/CAR chair); GIN added to `places` frontmatter on those plus
  dpi.govtech, dpi.mis, include.access; topics-index GIN added to ~14 topic lists.
- **Indexes:** entities-index (+12 rows), places-index (GIN row rebuilt from "stub"), topics-index (GIN
  added across topic lists + 2 Guinea intersection lines).

**Dedup (clusters, each event filed once, multiple outlets attached):** FUGAS launch (Ecofin 2025-11-30
+ Biometric Update 2025-12-03); Tier III data centre / .gn (Ecofin 2025-09-04 + TechAfrica 2025-09-05);
BCRG SPI 18-Dec workshop (WeAreTech 2025-12-22 + Ecofin 2025-12-21); Transform Africa Summit 2025 (Smart
Africa opening 2025-11-13 + closing 2025-11-19).

**Currency/analysis:** Guinea's low base recorded honestly (26.5% internet penetration, ~23% banked,
45-60% birth-registration) so the ambitious 2025 milestones aren't read as outcomes. The **WURI early
closure** (~8,000 IDs) is kept as the pivot point behind the domestic MOSIP/TECH5 path, and the ISR's
caution on Guinea's Oct-2023 ID law is preserved, not smoothed.

**Registers:** **Gaps added (2):** GAP-GIN-001 (ANDE/ANSSI/ANSUTEN agency architecture under-hubbed),
GAP-GIN-002 (SNIS health-information-system has no entity page). No contradictions, no issues.

**Flag (precision):** 2 proxy/low-precision dates (RSU year; WURI ISR archival date). The RSU and the
Smart Africa "Get to know Guinea" backgrounder are establishing/promotional in tone — captured as
profile/reference, not event reporting.

---

## 2026-07-16 — Four-country batch (GNQ · GNB · GMB · KEN)

**Intake:** drained `new/` (77 items → 0), processed as four sequential country sub-batches. **Sources
admitted (77):** 63 markdown clips + 14 PDF/docx companion source pages. **Leads parked:** none.
**Discards:** none. All clips re-prefixed from clip date to true **published** dates (2018 → 2026);
artefacts moved to `raw/` with date prefixes + companion pages (several year/month proxies flagged).

**Equatorial Guinea (GNQ)** — hub rebuilt from a subsea-cable stub into a full hub (nascent, oil-dependent
digital economy; no digital ID yet, no licensed mobile-money operator). Entities (3): [[cnedoge]] (DIP/
passport issuer), [[adige]] (digital agenda / AGENDA 2035), [[equatorial-guinea-digital-economy-diagnostic]].
Updated [[dhis2]] (+GNQ malaria eLMIS, Bioko).

**Guinea-Bissau (GNB)** — **new hub created from scratch** (least-connected; donor-driven civil-registry/ID
build; ENTD.GW strategy; no national backbone). Entities (5): [[sirec]], [[entd-gw]], [[semlex]], [[enbic]],
[[guinea-bissau-digital-economy-diagnostic]]. Intersection [[guinea-bissau--dpi-id]] created.

**The Gambia (GMB)** — hub expanded (eCRVS unique-national-ID backbone; Mojaloop instant switch; social
registry; data-protection law). Entities (7): [[gamswitch]] (BANTABA 2.0), [[yonna-wallet]],
[[gambia-social-registry]], [[gambia-data-protection-act-2025]], [[gambia-national-digital-id-strategy]],
[[gambia-national-digital-economy-masterplan]], [[gicta]]. Intersection [[gambia--dpi-pay]] created.
Updated [[margins-id-group]]/[[gambia-national-id-contract]] (MIDSA corroboration), [[mojaloop]] (+GMB/GIN),
[[dhis2]] (+GMB health/education).

**Kenya (KEN)** — mature hub; batch mostly backfilled/corroborated existing threads (kept hub growth
bounded via one consolidated block). Entities (7): [[maisha-namba]] (central digital-ID initiative,
finally hubbed), [[social-health-authority-kenya]], [[ardhisasa]], [[kenya-dpi-roadmap]], [[inua-jamii]],
[[kenya-national-digital-masterplan]], [[i-cemac]] (continental/CEMAC). Intersection [[kenya--dpi-id]]
expanded with the Maisha Namba governance/exclusion material. Updated [[microsoft-g42-kenya-datacenter]]
(founding $1bn announcement backfill + Semafor US-China framing), [[pesalink]] (Afreximbank primary +
SIIPS 2022), [[afrilabs]] (dedup: the "18 new hubs / 496 total" event folded into the held source).

**Dedup:** AfriLabs "18 new hubs" (my clip = existing 2024-08-22 event); Margins/Gambia ID (2026-01-22 =
held 2026-01-20 contract); Microsoft-G42 announcement (2024-05 ×2, same event); Pesalink-PAPSS (Afreximbank
primary vs held reporting); FUGAS/SPI/TAS/data-centre clusters within countries. Two clips reclassified
mid-batch from Gambia to **Kenya** (civil-registration bill; refugee-ID SIM regs).

**Currency/analysis:** low bases recorded honestly (GNQ 45% mobile / GNB 32.5% internet / GMB 45.9% /
KEN 48%); statistical/reference reports (CBK AR/KEPSS, WB diagnostics, DataReportal) cited, not absorbed.
Kenya's Maisha Namba kept as a **contested** programme (adoption budget vs Temple iLIT / Amnesty / HRRC
exclusion findings), not smoothed into a success story.

**Registers:** **Gaps added (3):** GAP-GNQ-001 (GITGE no page), GAP-GMB-001 (Central Bank of The Gambia /
GRA no pages), GAP-KEN-001 (IPRS / NPSIMS govtech systems no pages). No contradictions, no issues.

**Flag (precision):** multiple year/month proxy dates on reference PDFs (WB diagnostics, national strategies,
CBK AR) — all `date_source: proxy` with the uncertainty stated on companion pages. The Semlex GNB item is a
vendor announcement (flagged for verification); the HRRC/Amnesty Kenya ID pieces are advocacy analyses,
tagged as such.

---

## 2026-07-16 — Four-country batch (LBR · LBY · LSO · MAR)

**Intake:** drained `new/` (70 items → 0), processed as four sequential country sub-batches + continental.
**Sources admitted (70):** 54 markdown clips + 16 PDF/docx companion source pages. **Leads parked:** none.
**Discards:** none. All clips re-prefixed to true published dates (2016 → 2026); artefacts moved with date
prefixes + companion pages (many year/month proxies flagged).

**Liberia (LBR)** — hub gained a **national-ID-crisis** thread: [[national-identification-registry-liberia|NIR]]
(EO 147 mandatory NBIS; ~14% coverage; $5 fee) stalled by a **procurement scandal** (rejected restricted-bid
award to Austria's OSD → issuance suspension), funded by the [[great-project-liberia|GREAT]] WB project, all
without a data-protection authority. Entities (2): NIR, GREAT. Intersection [[liberia--dpi-id]] created.

**Libya (LBY)** — **new hub created from scratch** (digital transformation despite an east-west political
split). Entities (5): [[central-bank-of-libya]] (payments boom, Ratebk Lahzi payroll), [[gia-libya]] (data
governance/LY-GOVREP), [[gaci-libya]] (root servers/sovereignty), [[civil-registry-authority-libya]]
(National ID Number, Intilaqa, breach warnings), [[libya-unified-social-registry]].

**Lesotho (LSO)** — hub expanded: [[leswitch]] national payment switch (POS/ATM localization),
[[lesotho-national-id]] (digital birth registration, Ntlafatsa Bana), [[lesotho-digital-transformation-strategy]]
(Agenda 2030 + Digital Policy; 50-in-5); NISSA updated. Entities (3).

**Morocco (MAR)** — hub rebuilt into a full DPI hub (Africa's most advanced: 92% internet, ITU Tier 1, EGDI
90th). Entities (7): [[digital-morocco-2030]], [[dgsn-morocco]] (4.6m e-IDs), [[add-morocco]] (chairs Smart
Africa CAITA), [[mon-e-id]] wallet, [[idarati-x0]] e-gov platform, [[digital-x0-law]] (AI/data/ID),
[[morocco-national-population-registry]] (RNP/RSU, Law 72-18, WB $70m). Intersection [[morocco--dpi-id]]
created. Company [[idakto]].

**Continental:** [[biometric-digital-id-in-africa]] (10-country reference volume, Sesan & Roberts, Dec 2025);
[[smart-africa]] updated (+MAR; Africa's first Cross-Border Data Exchange Guidelines, Rabat/CAITA); AfriLabs
"18 hubs" folded (prior batch had established the entity). Al Itissan (Libyan ID vendor) → Niger contract
cross-linked to [[NER]].

**Dedup:** Liberia EO-147 (ID Tech + Biometric Update, same order); Morocco Digital X.0 (CADE + Biometric
Update); Morocco Idarati X.0 + iDakto/ShareID (same Feb-2026 launch); LeSwitch (2024 press release + 2025 POS
update). **Cross-region signal:** the ITU GCI 2024 places Morocco Tier 1 and Libya third-tier (recorded on
both hubs).

**Currency/analysis:** low bases kept honest (LBR 32.4% internet, ~14% ID coverage; LBY/LSO baselines) vs
Morocco's high penetration. Reference reports (WB diagnostics/DPFs, DataReportal, CBK/CBL/GovTech studies)
cited, not absorbed. Liberia's ID programme kept as a **cautionary case** (mandate + crisis), not a success
story; Libya's payroll/civil-registry reforms recorded with their **east-west politicization**, not smoothed.

**Registers:** **Gaps added (4):** GAP-LBR-001 (no data-protection authority/law), GAP-LBY-001 (HNEC / Libyan
Tax Authority / Commercial Registry Authority under-hubbed), GAP-LSO-001 (Central Bank of Lesotho / Revenue
Services Lesotho no pages), GAP-MAR-001 (CNDP / ANCFCC / CNSS Morocco under-hubbed). No contradictions, no
issues.

**Flag (precision):** many year/month proxy dates on reference PDFs (WB, national strategies, GovTech/RIA
studies, CBL AR) — all `date_source: proxy` with the uncertainty stated. The Alwadi "State of Digital
Transformation in Libya" and the Makhele affordability deck are partly promotional/analytical, tagged as such.

## 2026-07-16 — Four-country batch (MDG · MLI · MOZ · MRT)

**Intake:** drained `new/` (61 items → 0), processed as four per-country sub-batches (parallel source-page
creation, coordinator-led synthesis). **Sources admitted (59):** 49 markdown clips + 10 PDF companion source
pages. **Leads parked (2):** the two ISS/Peter Johnson "Madagascar 2044" futurist scenario op-eds (same piece,
blog + ISS Today re-publish) → `_leads/` (speculative analysis, no datable event). **Discards:** none. All
clips re-prefixed to true published dates (2007 → 2026); artefacts moved with date prefixes + companion pages.

**Madagascar (MDG)** — stub-ish hub rebuilt into a full DPI hub around **[[prodigy-madagascar|PRODIGY]]** (WB
P169413, ~$143m, PAD 2020, extended to 30 Jun 2026): biometric national ID (NUI, pilot 27 Jan 2026 via
[[oni-madagascar|ONI]]), civil-registry reform bill (Senate 4 Jul 2025), X-Road interoperability
([[ugd-madagascar|UGD]], Estonia eGA). Payments: [[mvola]] (GSMA API-compliant, 10m+), Orange Money Pro,
[[e-ariary]] CBDC pilot (23 May 2025). Entities (5 new): prodigy, mvola, e-ariary, ugd, oni;
[[mg-ministry-digital-development]] expanded. WB baselines (ID4D 2017, NFIS 2018, PAD 2020, FI restructuring
2021) cited not absorbed.

**Mali (MLI)** — hub expanded from one entry into a **digital-sovereignty** hub: Tier III National Data Centre
(31 Jan 2026, AES-mutualised), **E-AES biometric passport** ([[emptech]] replacing [[idemia]], Oct 2025),
locally-built Sigui-Dolo/OpenClinic/SIGIP platforms (Sep 2025), diaspora platform, birth-reg reform (ANSAEC),
TerraPay–Wave remittances. Entity [[emptech]] created; [[alliance-of-sahel-states]] updated (E-AES passport,
diaspora platform, data-centre outlets). WB diagnostics (infoDev 2007, DE4A 2023) cited not absorbed.

**Mozambique (MOZ)** — large hub extended (still under bloat threshold): legal-identity drive
([[edge-mozambique|EDGE]]/ID4D free-ID campaign via [[dnic-mozambique|DNIC]]; ~34% ID coverage 2024), draft
**[[mozambique-data-protection-law|PDPL]]** (Malabo-aligned, CNPD/ANPD), WB data-governance rapid diagnostic
(2025), Tier III data-centre build-out ([[raxio-group|Raxio MZ1]], [[vodacom]] Matola, BCX/Alibaba — ~18 DCs
nationally), biometric SIM registration ([[incm-mozambique|INCM]], NUTEL), merchant digital-payments study.
Entities (4 new): edge, dnic, mozambique-data-protection-law, incm; raxio-group + vodacom updated. EDGE PID
(2021), CRVS UNICEF (2021) and land-reform (2008) filed as baselines. Clarified the 2026-02 Maputo conference
(11–12 Feb; INTIC strategy drafting) against the existing 2026-02-21 overhaul entry — same event, publication
date; folded, not a contradiction.

**Mauritania (MRT)** — **stub → active** (promotion noted in places-index). Full ID/e-gov hub:
**[[anrpts-mauritania|ANRPTS]]** biometric register (94% coverage, SIGPTS), **[[houwiyeti]]** digital-ID/e-gov
app ([[tech5]]/SmartMS/[[undp]], 2022 pilot → 2024), Ijraati 800-procedure portal ([[mtnima-mauritania|
MTNIMA]]), biometric-SIM enforcement ([[are-mauritania|ARE]] notices Jan 2026), EIB Tier III Nouakchott data
centre (WARCIP/ACE/Ellalink). Entities (4 new): houwiyeti, anrpts, mtnima, are; [[tech5]] updated (+MRT). WB
DPF P171238 (2021) baseline. Admitted the businessfocus advertorial ministerial interview (2023) as a source
(on-the-record ministerial statements establishing the 2022–2025 Agenda), flagged as advertorial.

**Dedup / clusters:** Madagascar pilot (ID Tech Wire + Biometric Update, 27 Jan 2026); Mali data centre (4
outlets, 31 Jan 2026); Mali platforms (Biometric Update/CADE/Ecofin, 16 Sep 2025); Mali AES passport (2
outlets); Mozambique Raxio MZ1 (CIO + DCD), Vodacom Matola (360 + DCD), free-IDs (WB feature + Biometric
Update); Mauritania Houwiyeti (ID Tech Wire/Biometric Update/UNDP), Nouakchott DC (EEAS + EIB) — each folded
onto shared hub entries.

**Editorial call:** no intersections minted this batch — the new entity pages (PRODIGY, Houwiyeti, ANRPTS,
DNIC, EDGE, MTNIMA) already carry the substantive place-specific treatment, so `{place}--{topic}` cells would
duplicate (anti-fragmentation). Indexes updated (places-index rows for all four + MRT promotion; entities-index
+14 rows; topics-index place-code additions across ~13 subjects).

**Registers:** no gaps, contradictions or issues added this batch.

**Flag (precision):** year/month proxy dates on reference PDFs — ID4D Madagascar (2017, year), NFIS (2018,
month), CRVS Mozambique (2021, year), Mali DE diagnostic (2023, year), infoDev Mali (2007, month), Data
Governance Mozambique (2025, month). The **Madagascar FI Project restructuring (P161491)** carries
`date_source: proxy`, `2021-01-01` year — the PDF prints no approval date but references a May–Jul 2021 MTR,
so it postdates mid-2021 (proxy stated). The businessfocus Mauritania piece is advertorial, tagged as such.

## 2026-07-16 — Four-country batch (MUS · MWI · NAM · NER)

**Intake:** drained `new/` (98 items → 0) — the largest batch yet — processed via six parallel per-country
source-page agents (MWI and NAM split in two), coordinator-led synthesis. **Sources admitted (94):** 61
markdown clips + 33 PDF companion pages. **Leads parked (4):** an ICT-vs-IT op-ed (NAM), an International IDEA
democracy tracker (NAM), a Niger electricity-tariff notice (NER), and a Shufti Pro AML/KYC vendor summary
(NAM, PDF). **Discards:** none. Clips re-prefixed to true published dates (2002 → 2026); 34 PDFs moved with
date prefixes + companion pages (many year/month proxies flagged truthfully).

**Mauritius (MUS)** — thin hub (257w) built into a full digitally-mature-state hub. Entities (4):
**[[mauritius-mobile-id]]** (Thales ISO-standard wallet, Sep 2024; NIC Mobile ID Regs 2024),
**[[maucas]]** (instant-payment switch), **[[mauritius-digital-blueprint-2025-2029]]** (May-2025 strategy +
inter-ministerial committee), **[[civil-status-division-mauritius]]** (CRVS base). EGDI-2024 leader; [[thales]]
updated (+MUS). Older baselines (e-Gov Interop Framework 2002, Health 2015) cited not absorbed.

**Malawi (MWI)** — already-rich hub (1,003w) extended with new threads (still under bloat threshold). Entities
(4 new): **[[macra-malawi]]** (biometric SIM registration Jul 2025 + National Addressing System),
**[[idt4m]]** (UNDP/EU DPI programme), **[[reserve-bank-of-malawi]]** (mobile money >20m subscribers, K19.5tn),
**[[malawi-electoral-commission]]** (voter-register access tension); **[[national-registration-bureau-malawi]]**
expanded (EEAS 10-yr CRVS partnership, 4.6m-child birth-registration campaign, ID4Africa 2025). **[[comesa]]**
updated (+MWI/ZMB DRPP first Malawi–Zambia cross-border payment). WB Fiscal-Governance PforR (e-GP), FinScope,
SIIPS, Health-Data-Governance review filed as baselines.

**Namibia (NAM)** — connectivity-heavy hub (724w) gained a whole new **ID / CRVS / payments** thread it lacked.
Entities (7 new): **[[namibia-civil-registration-identification-act-2024]]** (CRIA 2024, single Civil
Register), **[[namibia-digital-id]]** (e-ID by Jul 2026), **[[ministry-home-affairs-namibia]]**,
**[[mtc-namibia]]**, **[[bipa-namibia]]**, **[[namibia-payment-system-management-act-2023]]**,
**[[bank-of-namibia]]** (Instant Payment Solution / G2P, Q3-2026); [[papss]] updated (+NAM courting). Strong
CRVS/ID base documented (ID4D 2018, IMS 2016, eGA X-Road 2016, eHealth strategy 2021-25). Privacy caution
carried honestly (APC: biometric collection ahead of a weak DP regime).

**Niger (NER)** — thin hub (275w) rebuilt into a full digital-sovereignty hub. Entities (5 new):
**[[niger-national-eid]]** (AES biometric ID + e-passport; decrees Dec 2025, Tiani first enrollee Mar 2026),
**[[al-itissal-al-jadeed]]** (Libyan supplier, June-2025 MoUs), **[[hapdp-niger]]** + **[[niger-data-protection-law]]**
(Loi 2017-28/2019-71), **[[niger-ixp]]** (Niamey IXP). [[wuri-programme]] updated (+NER; Accra fID
interoperability validation + 2023 brief). ID4D Niger (2017), état-civil report (2023), STAR-UEMOA baselines.

**Continental:** a data-sharing case study (found to be about Mauritius → filed MUS/XGL); an AfDB/COMESA
**CRVS-digitalisation-in-Africa** assessment (XAF); a **data-localization "tax on the poor"** working paper
(CGD, XGL — publisher corrected from the spec's "CGAP").

**Dedup / clusters folded:** MUS Mobile ID coverage; MWI ID4Africa-2025 rollout (two outlets) + WB-brief/Biometric
Update duplicate; NAM APC/Biometric-Update CRVS-bill assessment; NER AES e-ID decrees + June MoUs (two outlets)
+ portal snapshot — each attached to shared hub/entity entries rather than spawning parallels.

**Editorial call:** no new intersections minted — the new entity pages (Mobile ID, CRIA 2024, namibia-digital-id,
niger-national-eid, IDT4M, etc.) carry the place-specific depth; the existing [[malawi--dpi-id]] intersection
absorbed the new Malawi ID material by reference. Indexes updated (places rows for all four; entities-index +20
rows; topics-index place-code additions across ~10 subjects).

**Registers:** **1 contradiction opened** — `malawi-data-protection-law-status` (a May-2025 SIM-registration
article says Malawi has no enacted DP law, vs the enacted Malawi Data Protection Act 2024; likely an
enacted-but-not-operational reconciliation). No gaps, no issues added.

**Flags:** the Niger public **E-ID portal** snapshot (`nigeridentite.com`) is of uncertain provenance (expired
hosting, "simulate" capture) — admitted but its counters are **not** promoted. Several analysis/opinion pieces
admitted-and-flagged rather than parked (APC digital-rights essays, CIPIT MDPA review, EdTech scan,
community-policing study, land-reform and climate-DPI blogs); the Malawi DRA clip is served from a vercel.app
preview domain (content genuine). Date corrections vs first guesses: **ID4D Niger = 2017** (not 2021),
**Namibia IMS Analysis = 2016** (verified in-doc). Many year/month **proxy** dates on reference PDFs/strategies,
all `date_source: proxy` with the uncertainty stated.

---

## 2026-07-16 — Batch ingest: NGA · RWA · SDN · SEN (four-country)

Large batch (~90 `new/` items) drained via four per-country workers (sole writer each of its place hub,
source pages and country entities) + a parent merge of the shared surfaces (concepts, indexes, shared
entities, reviews, log). `new/` fully drained to empty.

**Sources admitted (~67 source pages, clips + PDF companions):** NGA 26 clips + 5 PDFs (Digital-Skills WB,
INEC Handbook, NIMC ID4Africa, PwC expatriates, ID4D P167183 restructuring); RWA 13 clips + 4 PDFs
(CIS-RIA, People's Perspectives WB, ID4D-2016, RURA SIM Reg 18/2024); SDN 5 clips (Rebuilding-Sudan
short+long **merged to one**) + 2 PDFs (WB Digital Economy 2022, DFS resilience); SEN 17 clips + 3 PDFs
(RNU/PRB63, Children's-Right-to-Identity, DP-law). Parent-filed globals: **GSMA Mobile Gender Gap Report
2025** (new `resource` entity), **Xalam East Africa DC market brief** (May 2025), **DIAL/ADLI** pan-African
DPI-exemplars piece (2025-05-02). Currency discipline held (dated figures; DataReportal/ID4D reference works
cited-not-absorbed).

**Entities:** ~35 created — SDN (zain-sudan, bank-of-khartoum, ministry-digital-transformation-sudan,
sudanese-cybersecurity-authority, digital-transformation-authority-sudan, sudanese-data-and-ai-authority,
magdi-amin, totogi); RWA (irembo, rura-rwanda, rwanda-sim-card-registration-regulation-2024); SEN
(daf-senegal, iris-corporation, senegal-numerique, cdp-senegal, senegal-data-protection-law, rnu-senegal,
dgpsn-senegal, nekkal-programme, sen-csu, google-senegal-sovereign-cloud); NGA (ngdx, ninauth,
ecowas-national-biometric-identity-card, npc-nigeria, e-crvs-nigeria, mtn-sifiso-dabengwa-data-centre,
airtel-nxtra-eko-atlantic-data-centre, oadc); parent (unicloud-africa, fringe-infrastructure,
benue-digital-infrastructure-company, gsma-mobile-gender-gap-report, unicef, better-than-cash-alliance).
Updated: kasi-cloud, nida-rwanda, rwanda-national-data-sharing-policy, ekash, anec-senegal,
new-deal-technologique, sudapass, rwanda-information-society-authority.

**Intersections:** created nigeria--dpi-exchange, rwanda--dpi-govtech, senegal--dpi-id, senegal--dpi-pay;
updated nigeria--dpi-id, nigeria--infra-store, rwanda--dpi-id.

**Editorial actions (tier-2, itemised):**
- **Duplicate-page merge:** `risa.md` → `[[rwanda-information-society-authority]]` (folded CDPI-Feb-2025 +
  NISR Data-Governance-Unit secondment + DPGA-case-study CEO note; referrers repointed; `risa.md` deleted).
- **Duplicate reference removed:** my `2025-01-01 dpga-building-open-digital-states` (md+pdf) was a duplicate
  of the pre-existing `2026-01-20 Building Open Digital States…` (DPGA report already ingested 2026-07-14 with
  its PDF) — deleted; the report is dated **2026-01-20**, not my 2025 guess.
- **Worker-dropped clips recovered:** the NGA worker omitted 6 data-centre/cloud clips (ran long on 36
  items); parent processed them — Kasi Cloud 100MW (2026-02-05, → [[kasi-cloud]]), Fringe Ikoyi Metro EDGE
  (2026-01-08, new entity), UniCloud–BDIC Makurdi (2024-07-12, new entities); the 3 redundant homepages/dups
  discarded.

**Mechanical (tier-1, aggregate):** ~47 clips date-prefixed from clip-date `2026-07-16` to true `published`
and moved `new/→raw/`; 15 PDF binaries moved+prefixed to match companions; curly→straight apostrophe
normalisation on filenames/links.

**Dedup / clusters folded:** MTN Sifiso Dabengwa (3 outlets → 1 deal); NGDX (multiple → 1 event); NIN-mandatory
(Guardian+ID Tech); ward-level NIN drive; Rebuilding-Sudan (short+long); SEN national-ID breach (4 outlets → one
evolving incident); New Deal Technologique (strategy + digital-rights analysis).

**Leads parked (5):** Sudan KYC vendor SEO guide; SYLVERE MUGUMYA MSc thesis (→ ISSUE-001); NGA NGDX "impact"
AI-generated piece; NGA NDPA vendor compliance guide; NGA DPI explainer (thin). **Discards:** NGA corrupted
NGDX capture; SDN "How to build trust" (re-clip of held 2026-01-29); PAPSS homepage (entity exists); DPGA
duplicate; 3 orphan homepages/dups.

**Registers:** **2 contradictions opened** — `senegal-national-id-breach-volume` (139TB vs 139GB vs
official no-leak) and `senegal-civil-records-digitised-count` (19m 2024 vs 15.3m 2026, likely counting-base).
**2 issues** — ISSUE-001 (MSc-thesis admissibility, recommend admit as low-authority dated ref), ISSUE-002
(Sudan XEA vs North-Africa parent, recommend keep XEA). **Gaps** — NGA-001, RWA-001, SEN-001, SDN-001,
SDN-002 (NDPC fine primary; RWA DPI actors; SEN DP-law revision + Iris↔breach; Sudan AML framework; CBOS /
Zain-Group / DFS-date). Not filed as contradictions: RWA $38m-vs-$57m ID cost (different funding envelopes,
recorded dated on [[nida-rwanda]]); SEN EGDI 0.5162/0.5142 (same publisher rounding); Kasi groundbreaking
2022-vs-2026 framing (recorded dated on [[kasi-cloud]]).

**Flags:** several proxy/low-precision dates on reference PDFs (`date_source: proxy` set truthfully — Irembo
interview 2021, Sudan DFS report, SEN DP-law summary, SEN Children's-Right CRC submission); analysis/opinion
admitted-and-attributed not parked (Paradigm Initiative on the New Deal; interweave.africa on Rwanda; Totogi
& Mojaloop-Foundation first-party tech blogs tagged low-authority).

**Addendum (same batch):** duplicate-page merge — the NGA worker's `ecowas-national-biometric-identity-card`
was folded into the pre-existing `[[enbic]]` instrument (same ECOWAS card; Nigeria-rollout + Senegal-voter
content merged in; links repointed; duplicate page + index row deleted). Flagged by the index pass.

## 2026-07-16 — Full lint pass (all 11 checks; duplicate-focused)

Ran the full lint on request. **Clean:** #1 schema (0 of 1,357 raw `.md` missing type/title/published),
#2 vocabulary (0 bad topic/place tags), #5 untagged sources (0), #6 inadmissible (no AI-synthesis
publishers), #11 date prefixes (all 1,357 `.md` + 252 artefacts prefixed). #3 freshness: 0 `last_reviewed`
>90d; **1 page missing `last_reviewed`** (`intersections/burundi--dpi-id.md`). #4 dead links: essentially
clean — 0 "wanted" (≥10-ref) and 0 middle-band; ~2 genuine strays (`[[zain-group]]` from `zain-sudan.md`;
`[[instrument]]` from a Ghana source), rest are `log.md` prose false-positives. Orphans: 0 (every
entity/concept/place indexed). #10 stranded queue: `new/` holds 67 items (all 2026-07-16 — the S-country
intake batch awaiting ingest, not stranded).

**#7 duplicates (tier-2, auto-then-digest).** Entity+date clustering over all 1,357 sources → ~26 tightest
candidate clusters; 18 verified by payload comparison. Finding: multi-outlet clusters are overwhelmingly
**complementary, not redundant** (each clip adds distinct facts/figures/quotes) — the fold-in rule working
as designed. Only **4 exact relevant-duplicates** confirmed; **2 pruned this pass:**
- **Pruned** `[[2024-07-02-gabon-resumes-electronic-id-11-year-break]]` (Innovation Village) — identical
  payload to kept `[[2024-07-02-gabon-electronic-id-11-year-hiatus]]` (Techpoint; ladder (d), lexicographically
  first + fuller Thales name). 5 redundant links removed from `thales.md` + `gabon--dpi-id.md` (keeper already
  co-cited); file git-rm'd.
- **Pruned** `[[2024-03-06 Liquid C2 partners…capabilities to Africa - Mar 6, 2024]]` (PRNewswire wire copy) —
  verbatim same release as kept `…capabilities to Africa` (Cassava first-party; ladder (a) primary + (d)
  cited by 4 pages vs 2). Suffix links removed from `anthropic.md`; in `liquid-c2.md` sources-list entry
  repointed to keeper and body duplicate removed; file git-rm'd. Keeper intact in 4 pages.

**Held (not auto-pruned — see reviews/):** (1) Social Registries duplicate pair — filed **ISSUE-003**
(pruning one companion `.md` also implicates deleting a second PDF copy that can't be byte-diffed). (2) The
2026-04-08 Liquid "Experience Centre" cluster is actually **3 source files**, not 2 (the pair audit missed
`[[2026-04-08 Liquid C2, Google open first-for-Africa Partner Experience Centre]]`); needs a 3-way payload
check before any prune — flagged for the next dedup/reconcile pass. Also noted: `2024-08-22 AfriLabs opens
18 new tech hubs` is nearly subsumed by the 2024-08-26 account but carries no *conflicting* payload, so it
stays under the strict rule (manual-prune candidate only).

**Lint completion (remaining sub-checks run same pass).** Closing gaps in the first sweep so the lint is
executed in full against the current CLAUDE.md:
- **#3b (stale-source coverage asymmetry):** 65 pages flagged (page's newest cited source >2yr old while a
  shared topic carries a source <6mo old). **All 65 are entity pages — 0 concept/place synthesis pages** —
  and most are legitimately old (historical laws/instruments/entities: `angola-data-protection-law-22-11`
  2011, `sadc` 2022, telco pages). A few are genuine refresh candidates. Reported as a review list, not
  actioned.
- **#3c (bare undated present-tense time-varying figures):** 58 candidate lines (penetration/coverage/
  rank/% figures without an inline "as of" on the line) — e.g. `places/GHA.md:180` "62% usage gap … 99% 4G
  coverage", `concepts/dpi.pay.md:94` "SSA smartphone ownership ~33%". Heuristic; many have a date in the
  surrounding sentence/source. Reported as a currency-review list for verification, not auto-edited.
- **#7 Pages (near-identical pages, flag for merge):** 1 genuine duplicate found —
  **`entities/adli.md` ⇄ `entities/africa-data-leadership-initiative.md`** are the same entity (identical
  title "Africa Data Leadership Initiative (ADLI)", both DIAL-convened peer-learning networks), split across
  two ingests. `adli.md` is the richer page (5 topics, XAF/NGA/KEN, two developments, cites 2026-05-27);
  the other is a stub (cites 2026-06-16). **Merged (tier-2):** keeper = `adli` (10 inbound links vs 2;
  acronym slug matches the `dial`/`eac`/`sadc`/`ecowas`/`afcfta` convention). Folded the stub's 2026-06-16
  source + data-exchange-sustainability framing and `data.open` topic into `adli.md`; repointed the
  `dpi.exchange.md` inline link; removed the stub's `entities-index` row and synced the keeper row; git-rm'd
  `africa-data-leadership-initiative.md`. No dangling refs. Other 10 title-matches were false positives
  (place-hub vs its intersection/entity of the same name; different-country DGIs and diagnostics).
- **#7 Sources — Experience Centre 3-way resolved:** the 2026-04-08 cluster is **complementary** — Cassava
  (first-party primary) kept; IT-Online adds a KEN/NGA/MAR/EGY market footprint + Strive Masiyiwa; htxt is a
  thin subsumed secondary (manual-prune candidate, non-conflicting). No auto-prune.
- **#6 (deep body-provenance scan):** run — grepped `raw/` bodies for AI-output tells (knowledge-cutoff /
  "as an AI" / "generated by ChatGPT|Claude|Gemini|Perplexity|NotebookLM" / summary-boilerplate) and AI
  publishers. **0 hits.** Syntheses are correctly parked in `_leads/` (34). #6 clean.

All 11 lint checks and their sub-parts now executed in full against the current CLAUDE.md.

## 2026-07-16 — Batch ingest: SLE · SOM · SSD · STP (four-country)

66 `new/` clips drained via four per-country workers (sole writer each of its place hub, source pages and
country entities) + a parent merge of shared surfaces (concepts, indexes, shared entities, reviews, log).
`new/` fully drained to empty; no dropped clips.

**Sources admitted (~54 pages):** SOM 24 (from 35 clips — 6 multi-outlet folds, 5 NIRA portal pages routed
to entities), SLE 13 (from 15 — two dup pairs folded), SSD 11, STP 5 (2 DataReportal editions = supersession),
+ parent-filed cross-cutting **AfricLaw "DPI Through an Open Government Lens"** (2026-02-11, Hlengiwe Dube —
admitted as attributed analysis, `[[open-government-partnership]]`, places [XSS]). Currency discipline held
(dated figures; DataReportal Digital-20xx editions cited-not-absorbed; EGDI/penetration written dated).

**Entities:** ~32 country entities created — **SOM** (nira-somalia*, snid, eaqoonsi, somali-data-protection-act,
somalia-data-protection-authority, somalia-cybersecurity-law, hormuud-telecom, somtel,
somalia-digital-transformation-strategy, somalia-instant-payment-system, somalia-crvs, somalia-moifar,
somalia-national-electoral-commission, somalia-spring-project; central-bank-of-somalia* updated),
**SSD** (dcrnpi-south-sudan, national-communication-authority-south-sudan, electronic-services-council-south-sudan,
koneta-hub, nips-south-sudan, mgi-communications, south-sudan-data-protection-bill, south-sudan-cybercrime-bill-2025;
bank-of-south-sudan* updated), **SLE** (ncra, sierra-leone-data-protection-rti-bill-2025,
sierra-leone-instant-payment-switch, sierra-leone-national-digital-farmer-registry,
sierra-leone-national-data-strategy, orange-sierra-leone; sierra-leone-digital-id-mou* updated),
**STP** (national-strategy-digital-governance-sao-tome, sao-tome-national-digital-id, sao-tome-data-protection-law-2016,
sao-tome-interoperability-framework-2024, national-data-protection-agency-sao-tome). Parent-filed shared
entities: **datareportal, kepios, unhcr, unu-egov, open-government-partnership, dare1-cable, nadra** (7 created);
**eac** updated (Somalia membership + e-Passport).

**Intersections:** created `somalia--dpi-id`, `somalia--gov-protect`, `south-sudan--dpi-id`; updated
`somalia--dpi-pay`. (SLE `dpi.id` kept on the hub — anti-fragmentation; flagged `sierra-leone--dpi-id` as first
extraction candidate if the hub bloats.)

**Concepts (18 updated):** dated country lines folded across dpi.id, dpi.registry, dpi.pay, dpi.exchange,
dpi.govtech, gov.protect, gov.legislate, gov.policy, gov.standards, gov.regional, infra.connect, infra.store,
infra.cybersec, infra.energy, include.access, include.divides, tech.ai, digital.rural.
**Indexes:** entities-index +~39 rows; places-index & topics-index expanded topic memberships + 3 new
intersections registered; STP de-stubbed.

**Dedup / clusters folded:** SLE — F4D + We-Are-Tech → one instant-payment source; AYV + Sierraloaded ID-deadline
(2024) → one (Sierraloaded, earliest). SOM — mass-registration (3 outlets→1), biometric-mandate, DT-Strategy,
EAC-e-Passport, CRVS-launch, DP-Act analyses each folded to one keeper. STP — DataReportal 2025/2026 supersession.

**Editorial actions (tier-2, itemised):**
- **Duplicate-page merge:** parent's brief mistakenly had a worker create `east-african-community` while `[[eac]]`
  already existed (same org). Folded the Somalia-membership + EAC-e-Passport fact into `[[eac]]`, repointed the
  e-Passport source + index row, deleted `east-african-community.md` and its dup index row.
- **Demotions (below materiality):** `international-bar-association` (single STP reference) and `qhala` (single
  SLE reference) demoted to plain-text mentions — no thin stubs minted; the IBA `[[link]]` removed from STP hub
  + the raw source.
- **Straggler fix (from the earlier lint ADLI merge):** `2025-05-02-dial-african-countries-foundational-dpi`
  still linked `[[africa-data-leadership-initiative]]` (a `raw/` ref the merge missed) → repointed to `[[adli]]`.

**Mechanical (tier-1):** ~54 clips date-prefixed from clip-date `2026-07-16` to true `published` and moved
`new/→raw/`; DataReportal supersession dating; curly/straight apostrophe + Windows-illegal-char sanitisation
on filenames.

**Registers:** **2 contradictions opened** — `somalia-national-id-data-hosting` (stored in Somalia vs
Pakistan-hosted) and `south-sudan-nips-vs-ibpss` (one system, two phases, or two rails?). **4 gaps** —
SSD-001 (SSD de-facto tax platform primary), SLE-001 (SLE gov-portal 403 items: NCPC, NCRA–SLRSA, NACSA),
STP-001 (STP registry/ID owning bodies page-less), SOM-001 (SOM MOIFAR CRVS + NIRA-Act primaries). **Not filed
as contradictions** (documented dated on pages): SOM NADRA-vs-FBI (two distinct systems — civilian foundational
ID vs police ABIS); SLE internet penetration 20.7% vs 30.4% and 93%-registration vs card-issuance (definitional);
STP broadband-share 93.3%→82.6% (GSMA methodology). **0 leads parked; 2 discards** (SLE F4D + AYV folded dups).

**Flags:** proxy/low-precision dates set truthfully — SOM Garowe data-security (year, proxy), SOM Pakistan-partnership
(proxy), STP National-Strategy + IBA-Metaverse (year), SSD Policy-&-Legal (year, proxy), SLE three ToR/announcement
pages (year). Admitted-and-attributed analysis (not parked): Biometric Update "thorny road", CIPIT/Strathmore DP-Act
critique, IBA Metaverse chapter, AfricLaw DPI open-gov lens. Figure variants noted dated on pages: SOM 15m-ID target
(end-2029 dominant vs 2030/2026 variants), SOM $125m rollout cost (single-sourced), SOM internet 27.6%→55.2% jump.

---

## 2026-07-17 — SWZ · SYC · TCD · TGO batch (Eswatini, Seychelles, Chad, Togo)

**Scale.** The largest single ingest to date: **85 queue items** — 57 markdown clips + 28 PDFs —
drained to empty. **82 source pages** now in `raw/` from this batch (56 clips + 26 artefact
companions), **104 new entity pages** (839 → 943), **6 new intersections**, 4 place hubs rebuilt,
12 concept pages updated.

**Ingested.** 56 clips admitted; **26 artefacts** date-prefixed with companion source pages; **0
leads parked** — no AI or second-hand syntheses in the batch, every item attributable, dated and
published; **2 discards** — one byte-identical PDF (`Digitalization of CRVS in Africa (1).pdf`,
md5 `b974d892…` confirmed against its twin) and one redundant re-clip (below). Entities created by
type: government-body 26, initiative 16, instrument 15, organisation 13, company 12, deal 11,
person 6, resource 5.

**Dedup — one merge, one prune.** The batch re-clipped
`biometricupdate.com/202506/chad-mali-senegal-pursue-birth-registration-reforms…`, already held as a
**Mali-focused extract**. Same URL, same date, one published item — but neither extract contained the
other (the held one carried unique Mali detail; the incoming carried the full Chad section). **Merged
into the held page** (now `places: [TCD, MLI, SEN]`, both payloads folded in, filename kept so the
`MLI` hub citation needed no rewire); redundant re-clip deleted. Nine *apparent* duplicate pairs or
clusters were examined and **kept as complementary**: the Seychelles DPA analyses (Appleby vs
TechHive — each carries facts the other lacks, in both directions), the SeyID launch pair (the ICS
primary vs the trade re-report carrying the WISeKey lineage), the Eswatini Economic Update cluster
(×3), the Digital Readiness Assessment cluster (×3), the APC pair, the Chad data-centre pair, the
Senegal-on-Togo pair, the DHIS2 pair and the BCEAO pair. **No exact relevant-duplicate found under
lint #7 beyond the merge above.**

**Dates — the active step.** All 57 clips arrived prefixed `2026-07-16` (the clipper date,
meaningless). True publication dates established for every item, spanning **2018-01-01 →
2026-03-16**, and files re-prefixed. Traps caught and recorded: the **BIS/Mnisi** speech (published
2025-01-14, but the Eswatini Payment Switch launch it reports is **2024-12-11** — synthesis pages
date the launch, not the publication); the **DCD Chad** piece (the site's "14 Jul 2026" stamp is a
template artefact; true byline 2026-01-06); the **World Bank Togo $100m** release (URL says /12/19/,
dateline says 18 Dec — dateline taken). Four PDFs printed no date: two were resolved by reading the
artefacts (the **WURI ISR** carries a 12/21/2023 stamp; **Enterprise Surveys Eswatini 2024** is
© 2025, 2024 being the *survey* year), two fell back to year-precision proxy.

**A correction to an inference this batch nearly made.** The Digital Eswatini PID (P508948) prints
**"Estimated Appraisal Date 01-Aug-2025"** and **"Estimated Approval Date 01-Sep-2025"** — *planned*
dates in a concept-stage document, not a record of approval. An initial reading took them as actual,
which manufactured a false conflict with the May-2026 report of live negotiations. Reading the
artefact dissolved it: estimated dates that slipped are consistent with both accounts. **No source
confirms P508948 was approved**; the pages say so.

**Editorial actions (tier-2, itemised).**
- **Intersections extracted** (all clear the materiality bar; parents left as indexes):
  `togo--dpi-id` (1,238w, 7 sources), `chad--dpi-id` (940w), `seychelles--dpi-id` (773w),
  `togo--dpi-pay` (841w), `eswatini--gov-protect` (792w), `seychelles--gov-protect` (517w).
  **TGO promoted** from a `dpi.id` index one-liner to an extracted cell.
- **Cells deliberately NOT extracted:** `eswatini--dpi-pay` (would near-duplicate the
  `[[eswatini-payment-switch]]` entity page — a stub minted to hit a word count);
  `eswatini--dpi-id` (its story is an *absence* — "not rolled out in earnest" — better as a rich
  index line); Chad and Togo on `gov.protect` (Chad has no enacted law to describe; Togo's single
  accord doesn't yet stand as a cell).
- **Duplicate slugs avoided:** `wuri` and `afdb` were briefed in error; both already existed as
  **`wuri-programme`** (42 referrers) and **`african-development-bank`** (~20 referrers). The
  canonical pages were extended instead, and stray frontmatter refs repaired (`[wuri]` →
  `[wuri-programme]` ×5, `[afdb]` → `[african-development-bank]` ×2).
- **WURI financing reconciled** (inference, recorded as such, not asserted): the reported "$395m
  WURI total" (Togo First via Biometric Update, 2024-03) does not match the ISR's **$317.1m** 2018
  MPA envelope — but Phase 1 ($122.1m) + Phase 2 ($273m) = **$395.1m**, so the figure is almost
  certainly the two phases summed against an original envelope later exceeded. Recorded on
  `[[wuri-programme]]`; **no contradiction opened**.
- **Standing flag resolved, partially:** the SWZ hub's "⚠ verify against a WB project record" is
  answered — the record is **P508948** — but approval is unconfirmed, so the identification is
  marked probable-not-established pending ISSUE-005.
- **Seychelles Digital Governance Report publisher established** by reading the artefact's cover:
  **Economic Forum for Sustainable Development**, "created for" the Commonwealth Secretary-General.
  It is an index digest restating ITU/UN readings, so the cite-don't-absorb guard was strengthened
  — promoting its figures would launder an index number through an intermediary.

**Mechanical (tier-1).** 57 clips re-prefixed clip-date → true `published` and moved `new/→raw/`;
26 PDFs renamed from opaque filenames (`sc.pdf` → GII 2025 Seychelles profile; `BOSIB11f3…` → Chad
PAD00070; four World Bank `P…` project IDs resolved) with companion pages minted; `url:` +
`artefact:` added to 26 companions to satisfy the source schema; 104 rows added to
`entities-index.md`; 40 place-code additions across `topics-index.md`; 4 rows rewritten in
`places-index.md`; CRLF line endings restored on `infra.connect.md` after an editing pass stripped
them.

**Registers.** **3 contradictions opened** — `chad-internet-penetration-2024-2025` (22.5% Jan-2024
vs 13.2% start-2025, both tracing to DataReportal: a 9.3pt fall against that publisher's own +9.2%
growth); `togo-dhis2-emis-start-date` (same publisher — "since 2019, national scale" vs "in 2021…",
plus piloting / under-review / national-scale as three maturity states);
`eswatini-dra-handover-date` (ESEPARC's 5 Dec account predates the 10 Dec date UNDP assigns the same
handover). **2 issues** — ISSUE-004 (scope of utility-tariff reporting; *recommend* admit-narrowly),
ISSUE-005 (merge the two Eswatini project pages; *recommend* merge). **12 gaps** — SWZ-001/002,
SYC-001/002, TCD-001…005, TGO-001/002/003.

**Not filed as contradictions** (documented dated on pages, per precedent): SWZ rural share 77% (WB,
2026-02) vs 74.9% (DataReportal, Jan 2025) — definitional; SWZ youth 70% (Maziya) vs 30% (World
Bank) — different cut-offs, each attributed; SWZ internet 57.6% vs "about 58%" — consistent, same
series rounded; Chad data centre "built, awaiting certification" vs "under construction" — framing,
resolved by specificity; Chad PMICE $180m → $204.7m — supersession, both dated; ANATS "Secure
Documents"/"Secure Titles", TECHSO-GROUP/Techso Group, PI-PSI/PI-SPI/PI, ESEPARC/"SEPARC" — naming
variance, aliased; Eswatini gazette "Data Protection **Commission**" vs ESCCOM's own "Data
Protection **Agency**" — recorded as an unresolved terminology mismatch against the primary, not
harmonised.

**Flags.** Proxy / low-precision dates set truthfully: SWZ ITLawCo (year), ESCCOM mandate (year),
RSTP NDC (year); SYC addressing portal (year) and the SNA cheque piece (**canonical URL 403'd — body
is a syndicated copy**); TCD Airtel Money (**no internal date at all — launch year not
established**); TGO DHIS2 country profile (a living page whose date is a page date); G2PX Togo and
the GIYH ToR (year). `needs-review` deliberately **not** set on `dpi.mis` / `infra.connect` for the
two contradictions: both are registered in `reviews/contradictions/open/`, and flagging 3–5k-word
thematic pages over one country bullet each reads as noise (prior art agrees — `infra.connect`
already carried the Chad contradiction at `active`). Reversible.

**Bloat findings for the digest** (flagged, not actioned): **`dpi.registry` (now ~3,400w) is a
textbook matrix page** — ~25 separable country cells; extraction warranted, scheduled not done.
**`gov.protect` (now ~5,000w) is half-refactored** — a genuinely thematic top with an
already-matrix country tail where CAF/AGO/BWA point out to intersections but SOM/SEN are still
written longhand. `infra.connect` (5,304w) and `infra.store` (5,369w) reviewed and **correctly left
long** — thematic, with place detail woven through the argument rather than separable into cells.
`dpi.id` narrative body is back **under** 2,500w after the three extractions.

**Provenance concentration** noted on the TGO hub: **Togo First supplies 9 of the 19 Togo clips**
and is sole source for most of Togo's current-state picture (payments, AML, civil registry, e-ID
rollout).

**Lints run clean across the 208 batch-touched files:** 0 dead links, 0 schema violations, 0
vocabulary violations, 0 stranded queue items (`new/` empty).

---

## 2026-07-17 — TUN · TZA · UGA batch (Tunisia, Tanzania, Uganda)

**Scale.** 65 queue items (47 clips + 18 PDFs) drained to empty. **61 source pages** in `raw/`
(46 clips + 15 artefact companions), **99 new entity pages** (943 → 1,038), **6 new intersections**,
3 place hubs rebuilt, 3 indexes updated.

**Ingested.** 46 clips admitted; 15 artefacts date-prefixed with companion source pages; **2 leads
parked**; **4 discards/prunes**. No AI or second-hand syntheses in the batch — every clip was
attributable, dated and published.

**Dedup — four prunes, one tag fix, one origin recovered.**
- **`Digitalization of CRVS in Africa.pdf` re-clipped again** — md5 `b974d892…` confirmed
  **byte-identical** to the held `2023-04-01` artefact. Discarded. (Second batch running to
  re-clip this same file.)
- **E-Houwiya double-clip** — the Mobile ID World copy **self-declares** "*This is a repost of the
  same authored article carried by IDTechWire*" and adds nothing. Pruned; ID Tech kept (canonical,
  and a strict superset carrying the CBT KYC regs, the three operating bodies, the X.509 detail and
  the "no legal obligation" caveat).
- **URA TIN→NIN double-clip** — Nile Post (2025-11-12) vs SoftPower (2025-11-11): same URA
  #LearnTaxUg statement, payload identical field-for-field; Nile Post's only distinctive content is
  rhetorical framing, which lint #7 excludes. Pruned by rung (c), earliest publication. Pruned URL:
  `nilepost.co.ug/business/301709/ura-announces-historic-shift-from-tin-to-nin`.
- **EGDI re-clip of a HELD source** — same URL as `2024-09-23 South Africa, Mauritius and Tunisia
  Lead E-Government Progress in Africa (UN EGDI 2024)`. Discarded rather than admitted as a second
  page for one article, and its three extra details (regional increase percentages, the band counts
  with the lowest-ranked list, the Tunisia-surpasses-Seychelles line) folded into the held page.
  **The re-clip also exposed a defect in the held page: it was tagged `places: [MUS]` alone despite
  its own title leading with South Africa, Mauritius *and* Tunisia, and naming Morocco, Seychelles
  and Egypt with individual scores — which is why a TUN place-search never surfaced it.** Fixed to
  `[ZAF, MUS, TUN, MAR, SYC, EGY, XAF]`; `entities: []` filled. Created **[[un-egdi]]**, which did
  not exist despite the index being cited across Chad, Seychelles, Tunisia and more.
- **Uganda's "28M records" clip is the ORIGIN account, not a duplicate.** The wiki held that fact
  only second-hand, as a passing clause in the held 2026-05-22 prototype-programme source — **which
  hyperlinks to this very article**. Admitted, and the UGA hub's two `>28m` citations **re-anchored**
  to it. Independently corroborated by IriTech as MOSIP's **first completed brownfield
  implementation**.
- Nine further apparent duplicate pairs examined and **kept as complementary**: both Tunisia
  biometric-ID accounts, both NaPA accounts, both Tanzania infant-registration accounts, both PDPA
  analyses, the two Centenary accounts, the three Aeonian accounts.

**Dates.** All 47 clips arrived prefixed `2026-07-17` (clipper date, meaningless); true publication
dates established, spanning **2019-01-01 → 2026-03-02**. Traps: **Data Center Dynamics renders a
bogus "14 Jul 2026" current-date page header** — caught on both DCD clips, true bylines 2024-08-12
and 2024-12-13 (**a standing trap for future clips from that publisher**); the Tanzania
infant-registration piece's on-page "Saturday, January 3, 2025" is a typo resolved by weekday
arithmetic (3 Jan 2026 *is* a Saturday; 3 Jan 2025 was a Friday). **Four PDFs and one clip could not
be dated** and were filed honestly: the NIRA/NITA-U deck and the NITA-U workshop clip fall back to
the **ingest date** marked `proxy` (not publication dates; their sort positions are meaningless —
GAP-UGA-004); the IDRC COVID/MVRS brief and the GLTN land blog are year-precision proxies.

**Scope corrections.** Three clips arrived mis-routed: **"Home Affairs unveils 2.06tri- budget" is
Tanzania**, not Uganda (a "Ministry of Home Affairs" name collision — it turned out to corroborate
the ID4Africa coverage figures by an independent parliamentary route); the **YAS/Wananchi**
acquisition arrived with the Tanzania batch but contains **no Tanzanian fact** (Uganda/Kenya); the
**Nxtra** piece is pan-African **and marked `(sponsored)`** — the company's account of its own
plans, held to a one-line ceiling on the UGA hub.

**Corrections to my own briefing, caught by the agents.** Three, all mine: **`e-GIF.pdf` and
`Digital-Strategy.pdf` are Uganda's**, not Tanzania's, and `National-Financial-Inclusion-Strategy`
is Uganda's; the **`CIS_..._RIA_...` filename's "RIA" is Research ICT Africa**, the co-publisher,
not a regulatory impact assessment; and I briefed that the High Court found "few and isolated cases"
**three months** before NIRA published 37.3% — **the true interval is eight months** (10 Jun 2025 →
11 Feb 2026); "three months" was the judgment-to-DRAA-piece gap. The point is stronger for the
correction.

**Editorial actions (tier-2, itemised).**
- **Intersections extracted** (all clear the materiality bar; parents left as indexes):
  `uganda--dpi-id` (1,855w, 11 sources — the batch's central page), `tanzania--dpi-id` (1,133w, 7),
  `uganda--dpi-pay` (865w, 8), `tanzania--gov-protect` (764w, 4), `uganda--infra-store` (715w, 8),
  `tanzania--dpi-registry` (492w, 2).
- **Hubs rebuilt and trimmed:** TUN **280 → 1,728w** (a single-thread stub before this batch); TZA
  **1,280 → 3,122 → 1,656w**; UGA **1,341 → 3,470 → 1,963w**. Both TZA and UGA crossed the ~2,500
  classify threshold on rebuild and were brought back by extraction, with mechanical fact-loss
  audits (55 and 100 distinctive figures respectively grepped against the outputs — **zero lost**).
- **[[un-egdi]] created** — a recurring reference index cited across the corpus with no page. Its
  figures live on it, per cite-don't-absorb.
- **[[cybernetica]] fixed** — Tunisia was missing from its places despite the UXP deployment.
- **`michael-aboneka` created** — the Uganda hub agent had de-linked him rather than mint a dead
  link; he is load-bearing for attributing the ISER critique.

**Mechanical (tier-1).** 47 clips re-prefixed and moved `new/→raw/`; 15 PDFs renamed from opaque
filenames (`01J5TJ…` → Tanzania Digital Economy Strategic Framework; `2025051609501183` → the
BOT/FSDT TIPS case study; `sc.pdf`-class names resolved) with companion pages; 94 rows added to
`entities-index.md`; 17 place-code additions across `topics-index.md`; 3 rows rewritten in
`places-index.md`.

**Registers.** **1 contradiction opened** — `uganda-unregistered-population`: DRAA's **18 million
(~40%)** unregistered against NIRA's **35 million** register. It does not resolve as supersession:
NIRA's own 2024 baseline (17.2m unregistered) minus 6.4m enrolled implies **~10.8m**, contradicting
neither cleanly, and **the DRAA estimate carries no cited source — which is itself the finding**.
Likely definitional root: *registered*, *holds a NIN* and *holds a usable card* are three different
populations (10.1m cards printed, 2.5m collected). **2 issues** — ISSUE-006 (Tunisie Telecom's chief
executive: "Lassaad Ben Dhiab" vs "Assad bin Dyab", one month apart, near-certainly one person under
two transliterations; *recommend* treat as one, canonical form, variant recorded), ISSUE-007 (two
PDFs **undated *and* unattributed** — a Uganda CSO submission and a Tanzania DPI case study — parked
in `_leads/` rather than admitted on a guess; *recommend* hand-source the originals, since the
former's claim that **1 million people in the register have unmatchable fingerprints** is
independently corroborated by IriTech and would be load-bearing). **11 gaps** — UGA-001…005,
TZA-001/002, TUN-001/002/003.

**Not filed as contradictions** (documented dated on pages): the Centenary data-centre date
(end-2025 → Q1 2026 — **supersession**, same publisher, current value plus one dated prior; the
later piece calls the rebased schedule "on schedule" without acknowledging the earlier commitment —
a rhetorical tell, not a source conflict); the registration-start chronology (1 Jun 2024 → Jul 2024
→ Oct 2024 → **actually 27 May 2025** — a ~12-month slip against a hard Electoral Commission
deadline, each source accurate as of its date); NaPA's **85% population rate (2024)** vs **12.9m
absolute count (2026)** — **different metrics, neither derivable from the other, no trend
inferable**; Wingu's $50m Mbezi phase vs the WCX platform vs a $60m raise, and 99.983% (Mbezi) vs
99.982% (Djibouti TO7) — different objects, different sites; AXIAN's **$63m purchase price** vs its
**$600m capital raise** — different quantities; kit counts 5,680 planned (2024) vs 5,665 deployed
(2026) — rounding; Tanzania's ministry rendered two ways across 2024/2026 — variants recorded, not
normalised.
**Internal inconsistencies carried as reported, not reconciled:** the BoU/UBC report gives national
e-money at **UGX 326tn (+28.6%)** *and* MTN Uganda's at **UGX 319.6tn (+28.6%)** while stating MTN
handles **40%** — two near-identical values incompatible with a 40% share. Do not compute derived
shares from them.

**Flags.** Attribution calls that matter: the **definitive E-Houwiya source is authored by Nizar Ben
Neji, Tunisia's former Minister of Communication Technologies (2021–2024), who led the system's
implementation** — first-hand principal testimony, not neutral trade reporting, flagged wherever
cited. The **DRAA ISER critique** is advocacy analysis of a real judgment the wiki does *not* hold
(GAP-UGA-001). The **Opiyo surveillance piece** establishes the *mechanism* (datasets "easily
accessed by individuals at all levels of law enforcement") but **does not document which ID records
were pulled on him** — the causal link is asserted, not shown, and NIRA's ED refuted database access
on the record. **No "first AI factory in Africa" claim adopted** — three Uganda clips give three
different superlatives against Cassava's competing claim; the label is contested marketing, and the
$1.2bn Aeonian cost is single-sourced. **Currency**: Tunisia's biometric ID is written throughout as
a **dated target, never an accomplished rollout** (GAP-TUN-002), and the 2004 data-protection law is
**historical baseline**, superseded by a 123-article reform bill the wiki already holds.

**Lints clean across the 373 batch-touched files:** 0 dead links, 0 schema violations, 0 vocabulary
violations, 0 stranded queue items (`new/` empty). All three hubs finish under the classify
threshold (TUN 1,728w · TZA 1,656w · UGA 1,963w).

## 2026-07-17 — ISSUE-008 resolved: sweep stores full text

**Curator ruling (2026-07-17):** sweep candidates in `new-queue/` carry the **full clipped article
text** captured at fetch time, not AI summaries — summaries are inadmissible as staged bodies and
capture-at-fetch guards against link rot on African press URLs. Actioned: all 191 Q1-2025 pilot
candidates refilled with full text from their canonical URLs (187 filled; 4 Vanguard/ThisDay URLs
unfetchable after repeated attempts retain flagged summaries — see `sweep/fill-log-batch*.csv`).
`sweep/README.md` staging step amended to bind the rule; ISSUE-008 removed from `reviews/issues.md`.


---

## 2026-07-17 — ZAF · ZMB · ZWE batch (South Africa, Zambia, Zimbabwe)

**Scale.** 57 queue items (53 clips + 4 PDFs) drained to empty. **55 source pages** in `raw/`
(51 clips + 4 artefact companions), **51 new entity pages** (1,038 → 1,089), **2 new intersections**,
3 place hubs rebuilt, 3 indexes updated. Final batch of the seven-batch sweep.

**Ingested.** 51 clips admitted; 4 artefacts date-prefixed with companion pages; **0 leads parked**;
**3 discards**. No AI or second-hand syntheses.

**This was the dedup batch.** These are the wiki's best-covered countries — 206 held sources already
touched them — so the risk was never volume. **Three defects in already-held material surfaced, and
each was a different flavour of the same failure: a secondary source's own date or framing ingested
as fact.**
- **The Google Johannesburg cloud region was mis-dated on the ZAF hub by 14 months.** Held as
  **2025-03-27** — which is the *publication date of a secondary AFRIBIT blog post*. Google's own
  announcement dates the region's opening to **2024-01-31**, and is internally corroborated (its
  "40 regions / 121 zones" count and "$180bn by 2025" projection both fix it to early 2024).
  Corrected on the hub. **No contradiction filed: the vendor's own announcement is dispositive, so
  this is an error correction, not competing values needing research.** The *class* of error is
  raised as **ISSUE-010** — because it is not a one-off (see Microsoft, below).
- **The held four-party digital-ID pact date is probably wrong.** Held material says **April 2024**;
  contemporaneous reporting of the signing says **April 2025**, and says the **2010** date belongs to
  the SARS–DHA *bilateral*, not the four-party deal. Filed as a contradiction rather than fixed,
  since a 2026 held source asserts it.
- **A relevant-duplicate where the INCOMING item wins.** The wiki held an SAnews re-render of the
  DHA's 4m-Smart-IDs statement (2026-01-29); the batch brought **the DHA's own gov.za statement
  (2026-01-28)** — identical payload down to the same Schreiber quote, but **primary and a day
  earlier**, so it takes both rungs (a) and (c) of the lint #7 ladder. Held copy pruned, **4
  citations rewired**.

**Other dedup.** The **two "Regional DPI" clips are the same article** (two capture passes — the
comma in one filename is clipper noise; md5s differ, payload identical) **and both duplicate a held
source** (`2025-08-26 SADC regional DPI initiative…`). Three copies of one article; both incoming
discarded. *Note: the recon flagged the held page as under-tagging Zambia — but Zambia appears only
in a 16-member list, which is a mention, not place-level payload. Tags left as `[XSA, BWA]`,
consistent with how the EGDI "lowest-ranked" list was handled.* Nine further suspected pairs examined
and **kept as complementary** (Teraco JB5 ×2, Africa Data Centres Jul-vs-Nov 2024, the Smart ID
plan→extend→deliver chain, the SASSA enrolment pair, the Zimbabwe deeds pair, the Econet pair, the
Zambian civil-registration pair, the ZILAS event-vs-profile pair, the MOSIP/SmartCare pair).

**Corrections to held material beyond the duplicates.**
- **Zambia's MOSIP thread starts January 2025, not March 2026.** The held `zambia--dpi-id` opened at
  the system-integrator procurement; SMART Zambia developers had **completed MOSIP training by
  2025-01-17**, with a SmartCarePro EHR integration already in flight. The SI hunt was not the start
  — the intersection was **missing its own prehistory**. Section rewritten and re-dated.
- **`[[raw/…]]` link form fixed across 75 files.** A pre-existing defect spanning Algeria, Egypt,
  Djibouti, Ethiopia, Cabo Verde and Sudan entities and intersections, plus `log.md` and `SDN.md`.
  Verified resolving after the fix; tier-1 mechanical.

**Dates.** All 53 clips arrived prefixed `2026-07-17`; true publication dates established, spanning
**2019-03-06 → 2026-02-27**. **The DCD "14 Jul 2026" header trap did not bite** — all three DCD clips
carried intake notes neutralising it, and one rendered a *different* false date ("03 Mar 2026"),
confirming it is a live current-date render rather than a fixed error. The **Microsoft Azure clip is
a genuine 2019 primary** — the T-zero of African hyperscale, seven years old, admitted as historical
baseline with its 2019 forecasts explicitly marked as forecasts. **Two clips could not be dated**:
the ZIMRA/TaRMS page (undated; the year is the clipper's inference from a news-ID sequence — only
"post-Feb-2024" is established, GAP-ZWE-005) and **Digital 2026 Zimbabwe**, whose clipper date of
2025-11-08 **conflicts with house precedent** (every other DataReportal country report held publishes
Feb–Mar of its report year) — filed month-precision proxy, GAP-ZWE-004.

**Scope corrections.** Three clips arrived mis-routed: **"Electronic Transactions A Consumer Right"
is Zimbabwe**, not Zambia (a "Consumer Protection Commission" name collision); **"Land Reform and
Rural Development implements eDRS" is South Africa**, not Zimbabwe (gov.za, and the statutes are
South African — it landed in the ZWE set because the Zimbabwean deeds material cites South Africa as
a model it is copying); the **"Regional DPI" pair is region-level (XSA)**, not Zambia-primary.

**Corrections to my own briefing, caught by the agents.** Two. I told the ZAF agent the DHA plans an
"**Intelligent Population Register**" — **the department's own tabled Strategic Plan says National
Population Register (NPR)** with an "Integrated Identity System" indicator; IPR is the trade press's
term. The department's wording is preferred and the divergence recorded. And I passed on a recon
claim that POTRAZ had launched a "Privacy Responsibility Challenge" — **the ZWE agent found it is not
in `raw/` at all** and correctly invented nothing rather than fill the gap.

**Editorial actions (tier-2, itemised).**
- **Intersections created:** `south-africa--include-divides` (1,461w, 7 sources — the batch's most
  important page) and `zimbabwe--dpi-registry` (1,285w, 5 sources — Zimbabwe's first intersection).
- **Hubs:** ZAF **2,398 → 2,762w**; ZMB **1,383 → 2,335w**; ZWE **743 → 2,163w**. All three finish
  **above the 1,300–1,800 target but under the ~2,500 classify threshold**, and each agent reported
  the residual honestly rather than deleting facts to hit a number. **ZAF is the one to watch**: it is
  not matrix-shaped (one country, thematic), but its Identity and Data-centre sections now carry batch
  detail that belongs in the existing `south-africa--dpi-id` and `south-africa--infra-store` cells —
  a follow-up pass would take it under 1,800 without losing anything. Flagged, not actioned.
- **A bare figure fixed:** the ZMB hub carried internet penetration at "**21 per 100**" unqualified.
  It is now dated and attributed alongside the competing 33.0% and 56.8% readings.
- **`zambia--dpi-id`** re-dated and extended (7 new sources).

**Registers.** **9 contradictions opened** — the most of any batch, and they are real rather than
definitional noise. The sharpest: **`zambia-inris-enrolment`** (a *later* source reporting a *lower*
figure on a register that only accumulates — 1.5m in Sep 2024, ~1.6m implied by the World Bank in Sep
2025, ~1.3m in Dec 2025); **`south-africa-digital-id-sarb-or-sars`** (two DHA primaries — a
ministerial speech and the department's own Strategic Plan — say the digital ID is built with the
**Reserve Bank**, where held material says the **Revenue Service** hosts it; SARB ≠ SARS);
**`africa-tech-funding-2025`** ($1.64bn vs $4.1bn — a 2.5× gap between two trackers reported a day
apart, which nonetheless **agree to within 0.5pp on the big-four share**, strongly suggesting
methodology not error). Plus `zambia-internet-penetration`, `zambia-digital-id-target` (the operating
registrar says 2027; the digital-transformation agency says 2026), `econet-infraco-founding`,
`sassa-biometric-enrolment-scope`, `south-africa-four-party-pact-date`, `microsoft-sa-investment-date`.
**2 issues** — ISSUE-009 (the `econet-wireless` page conflates Group and Zimbabwean opco; *recommend*
split, since InfraCo cannot hang off it as-is) and **ISSUE-010** (secondary re-reports ingested with
their own publication date — *recommend* a standing intake rule, since it has now produced one
confirmed 14-month error and one open contradiction). **ISSUE-004 annotated with a second instance**:
the Zambia energy diagnostic is the same class as the Togo tariff clip and even thinner — testing its
full text found **"digital" appears zero times** and "phone" only as an appliance wattage. Admitted
narrowly per that issue's own recommended rule. **12 gaps** — ZAF-001…004, ZMB-001…003, ZWE-001…005.

**Not filed as contradictions** (documented dated on pages): South Africa's **five digital-ID launch
dates** (2025 missed · 2026 Ramaphosa · 2027/28 the DHA's own APP · 2028/9 the Strategic Plan · 2029
Schreiber) — **this ladder is the finding, not a dispute to adjudicate**, and four of the five are the
department's own; Microsoft claiming "first enterprise-grade datacenters in Africa" in **2019** and
2026 reporting calling the new build "SA's first" — a marketing collision, neither adopted; Vantage's
80 MW (one campus) vs 100 MW (two) — different scopes; the DataReportal "21.1% offline" against the
held "4G reaches 98%" — **coverage is not use**, compatible but not interchangeable; Research and
Markets' ~53 DCs (early 2025) below the held 55 (Feb 2026) and 56 (May 2026) — a consistent growth
series; Zambia's DZAP **$100m IDA + $20m commercial = $120m** — reconciles; TelOne's "home-grown"
traffic AI against held reporting of Chinese-supplied camera systems — **possibly different systems,
insufficient evidence to call; flagged for the reconcile pass**.

**Flags.** **The batch's strongest analytical finding is a collision the state produced itself:**
SASSA's own statement of 2026-01-19 records that of 14,135 COVID-19 SRD applications from permanent
residents, refugees and special-permit holders, **8,368 were approved but only 2,690 paid — 32%**.
Nine days later the state was reported at the Supreme Court of Appeal defending an online-only welfare
system against the charge that it had "**persistently failed to pay hundreds of thousands of approved
beneficiaries**". The government's own dated primary corroborates the claim it is appealing — and the
DHA's record-4-million-Smart-IDs triumph statement was published **the same day** as the SCA
reporting. That chain is now `south-africa--include-divides`, and it is what the wiki previously
lacked: somewhere digital-by-default exclusion is litigated with numbers rather than warned about
rhetorically. The department's argument that **complaints posted on X prove there is no barrier to
online access** is self-refuting on its face — it can only sample the connected.
**Provenance discipline applied:** the DHA's OVS statement is held as the department's **own defence**
of the ~6,500% fee the wiki records as contested — both readings kept. The Zambian ZILAS and
SmartCare Pro accounts are the **implementers' own** (SMART Zambia's portal; IHM, who built the EHR;
Co-Develop, who funds the agenda) — cited for what the systems do, never as evidence they work.
Zimbabwe's Cyber and Data Protection Act rests entirely on a law firm **selling compliance services**,
with the Act text unheld (GAP-ZWE-001). **`colonialism` deliberately not tagged anywhere in the
Zimbabwe material** — the only clip touching it does so in a single euphemistic clause, framed as an
investor-confidence problem by a lawyer with a stake; the observation that the deeds programme is the
natural home for that read and **no source in the batch makes it** is recorded as prose instead.

**Lints clean across the 486 batch-touched files:** 0 dead links, 0 schema violations, 0 vocabulary
violations, 0 stranded queue items (`new/` empty). Whole-corpus entity/intersection dead links now
stand at **1** (`zain-group`, pre-existing, already tracked as GAP-SDN-002).

*(Log entry appended 2026-07-17, out of band: the batch itself committed at `a250c64` without it.
Issue numbers corrected on filing — the drafted 008/009 collided with the sweep pilot ISSUE-008,
so the econet split is **ISSUE-009** and the secondary-re-report dating rule is **ISSUE-010**.)*

---

## 2026-07-17 — Phase-2 sweep: AGO · BDI · BEN · BFA · BWA (first production batch)

**Scope.** The first **full-window** sweep (2025-01-01 → 2026-07-17), against the pilot trio's
2025-Q1 slice. Ten agents — papers + trade journals per country, on disjoint file sets — then
merged per country into one `MANIFEST.md` and one `drop-log-{ISO3}.csv`. **547 candidates staged
from ~1,400 raw hits across 150 queries; 483 dropped, every one logged.** Writes confined to
`new-queue/` and `sweep/`; nothing entered `new/`, `raw/` or `wiki/` beyond this log and the
registers. Promotion remains the human's.

| | queries | found | dropped | staged |
|---|---|---|---|---|
| AGO | 30 | ~360 | 112 | 124 |
| BDI | 30 | ~147 | 51 | 41 |
| BEN | 30 | ~264 | 74 | 141 |
| BFA | 30 | ~356 | 88 | 126 |
| BWA | 30 | ~273 | 158 | 115 |

**The headline result is how little was already held.** Across ~1,400 hits, **fewer than 25 were
`already-held`** — and for three countries the national press was untouched: **not one URL from
Sidwaya, leFaso.net, Fraternité or La Nation appears among the 1,512 held**. Benin has strong wiki
coverage *from journals and international sources* and **zero from its own newspapers**. That is the
sweep's structural finding: the wiki's Francophone and Lusophone coverage has been reaching these
countries only through outsiders' eyes.

**Two staged findings contradict held material.** Neither is filed as a contradiction yet — they
are candidates carried in the manifests, because the rule says contradictions are opened at *ingest*,
against compiled pages, not at staging.
- **WURI is still running in Burkina Faso after the ECOWAS exit.** Held material says the exit drops
  BFA out of WURI. Two independent sources say otherwise: a **WURI enrolment workshop at
  Bobo-Dioulasso (2025-08-21)**, eight months post-exit, with the digital minister fronting it and
  WURI's own jurist stating the data is hosted *in* Burkina Faso; and a **World Bank mid-term review
  (2026-02-09)** showing the Bank still running **PACTDIGITAL and WURI jointly** there. The held line
  needs re-dating and qualifying, not deleting.
- **Benin has a new government.** **Romuald Wadagni** replaced Talon; the digital portfolio passed
  from Aurélie Adam Soulé Zoumarou to **Mahuna Akplogan** (May–June 2026), the ministry renamed and
  re-scoped around AI. Every held Benin page attributing the agenda to the former incumbents is now
  historical. A currency-discipline problem spanning a whole country's holdings.

**The sharpest single item is Angola's.** Censo 2024 definitive results put BI coverage at **52.4%
— 14.9m Angolans undocumented, 63% urban against 30.9% rural** (2025-11-26). Five months later the
BI became the **sole legal identifier**, mandatory for banking, telecoms, school enrolment, property
and contracts (2026-04-29). The state legislated universal ID dependence while half the population
lacks the credential; both figures come from the state's own sources. Alongside it: the **first
forensic confirmation of Predator spyware in Angola** (Amnesty/Novo Jornal, 2026-02-26), **SINSE
named as end user**, landing while the cybersecurity bill sits suspended and the fake-news law
(10-year penalties) has passed.

**Framings the batch complicates.** Angola's ID contest is held as **three-way China/India/UAE**;
the batch adds a **US pole** (Cybastion's $170m into Angola Telecom and the *national cybersecurity
agency*), a **European pole** (Airbus/Société Générale, €225m ANGEO-1) and a **Brazilian pole**
(Serpro inside the Finance Ministry). Understated, not wrong. Burundi's Jan-2026 data-protection law
is held standalone; the batch finds a **National Data Governance Strategy (Nov 2025)** preceding it,
plus a **National AI Strategy 2026–2030** the wiki lacks entirely — and the biometric-ID unveiling
(2026-05-06) **explicitly confirms the causal link the wiki had only inferred**: the law was passed
*before* building the platform. Botswana was near-empty and is now the batch's largest net gain — a
**Data Protection Commissioner** (Feb 2026), a **Cybersecurity Act** (Nov 2025), **data localisation
as declared ministerial policy** ("the data sovereignty of the people"), and a Citizen Wallet.

**Method notes.** **No country needed month-slicing** — all five are low-volume enough that unsliced
queries covered the window; recency-swamping was a large-country problem. The inverse failure
appeared instead: 2024 evergreens recurring across domains. **Exa metadata was unreliable again** —
wrong dates on 10 Benin items, fabricated bylines on TechAfrica News; **body dates and in-page
bylines won throughout**. `techreviewafrica.com` serves no dates for Benin but *does* for Angola.
`techcabal.com` and `connectingafrica.com` yielded nothing for several countries — confirmed thin,
not under-searched. **Iwacu (Burundi) serves no publication dates at all**, and its
"Bigirimana disparu depuis N jours" counter is **live-rendered at fetch — a trap, not an anchor**;
all 4 Iwacu items are `date_source: proxy`.

**Registers.** **ISSUE-011** filed: **Botswana's two papers fetch fine (HTTP 200) but paywall**,
serving a lede and 1–3 paragraphs. The ISSUE-008 full-text rule has two branches — full clipped text,
or a flagged summary if the page *cannot be fetched* — and this fits neither: the capture *is* the
full free-to-read text and is still partial. 16 items flagged `[CLIP]`; *recommend* a third named
state, `body_completeness: paywalled`, with a manual subscriber clip required before promotion only
where the payload depends on the withheld body. Same-event twins across the two halves are
**deliberately kept** throughout — same event, different outlet is never a sweep-stage drop; lint #7
adjudicates at ingest with full text. Angola's Angop/Novo Jornal pairs should be **folded, not
discarded**: Angop is the state agency and carries the government's framing, Novo Jornal the
adversarial reporting.

**Out-of-band repairs to the previous batch (`a250c64`).** Three, all found while filing this one.
The **ZAF/ZMB/ZWE batch committed without its `log.md` entry** — appended above, out of order. The
**two issues that batch recommended had never been filed**, and their drafted numbering had since
collided with the sweep pilot's ISSUE-008; filed as **ISSUE-009** (`econet-wireless` conflates Group
and Zimbabwean opco — InfraCo cannot hang off it as-is) and **ISSUE-010** (secondary re-reports
ingested carrying their own publication date as the event date — the class behind the confirmed
14-month Google Johannesburg error and the open `microsoft-sa-investment-date` contradiction). And
`log.md` recorded **ISSUE-008 as resolved and removed when the removal had not happened**; removed.

**Remaining.** Pilot trio **NGA/SEN/TCD** still carry `window_done: 2025Q1` and need completion
passes (2025-04-01 → run date). 47 countries and the pan-African pass remain `pending`.

---

## 2026-07-17 — Phase-2 sweep: CAF · CIV · CMR · COD · COG (second production batch)

**Scope.** Window 2025-01-01 → 2026-07-17, all five Francophone. Ten agents (papers + journals per
country) plus one completion pass. **505 candidates staged from ~2,280 raw hits across 141 queries;
734 dropped, every one logged.** Writes confined to `new-queue/` and `sweep/`. Two countries ran
non-standard: **CAF has no national papers** (targeted institutional/pan-African searches
substituted), and **COG has one paper**.

| | queries | found | dropped | staged |
|---|---|---|---|---|
| CAF | 22 | ~210 | 86 | 38 |
| CIV | 36 | ~935 | 278 | 187 |
| CMR | 35 | ~214 | 129 | 127 |
| COD | 27 | ~580 | 102 | 90 |
| COG | 21 | ~342 | 139 | 63 |

**The unheld-national-press finding repeats, and hardens.** As with BEN/BFA last batch: **zero
fratmat.info, linfodrome.com, lejour.cm, leconomie.info, actualite.cd or rdc-monde.com URLs were
held.** Côte d'Ivoire's rich hub was built **entirely** from trade press and multilaterals — and the
national press is exactly where the ANSSI, WURI, CAIDP, ANSUT and US-EXIM material lives. This is now
a pattern across two batches and eight countries, not a quirk: **the wiki's Francophone coverage has
been assembled from outsiders' accounts.**

**Two tooling defects found in `sweep/held-urls.txt` — a file CC built — and fixed.**
- **Dedup-unsafe entries.** It carried **bare domains** (`biometricupdate.com`, `techafricanews.com`)
  and stub paths (`itweb.africa/article`). Prefix-matched, those silently drop **every** candidate on
  the domain: the CIV agent's first pass wrongly flagged **64 items as held against a true 6**. The
  entries were not truncation — they came faithfully from `raw/` frontmatter where the source page
  records only a domain (an AfDB report cited to `afdb.org`). **Prior batches were checked and are
  clean**: AGO/BDI/BEN/BFA/BWA staged 26/9/15/28/32 items from those three domains with `already-held`
  drops of only 4–9 — no suppression occurred, because those agents grepped the candidate *against*
  the file (a direction bare domains cannot match). **Fixed:** 163 unsafe entries quarantined to
  `sweep/held-urls-unsafe.txt` with a reason each; the safe file now states the required grep direction.
- **Incompleteness.** 38 `url:` lines in `raw/` never reached the file. **Rebuilt** from every `url:`
  line (1,550 parsed, 0 skipped, 1,471 unique). The rebuild also shows **~79 URLs held twice** across
  different `raw/` files — a lint #7 duplicate-source lead, not actioned here. The header now says
  plainly that held-urls is a **fast pre-filter, not an index of holdings** (54 `raw/` artefact
  companions carry no URL at all).

**Method: recency-swamping returned, exactly where predicted.** Last batch needed **no** month-slicing;
these are the first large countries since the pilot and it was **essential** for CIV and COD. Unsliced,
CIV's Apr–Jul 2026 held 43% of hits while Nov 2025 returned 2 — slicing recovered **+41 items (+28%)**
and filled precisely the thin months. For COD, **three of the top five finds are 2025 items no unsliced
query reached.** CMR did *not* need it despite its size (results came back spread across 2023–26). Also
confirmed: **Exa's `site:` filter leaks badly** — only 145 of CIV's 480 in-window hits were on-domain.

**Date traps: a second live-clock, worse than Burundi's.** `rdc-monde.com` renders its header date live —
**six pages in two fetches returned four different dates**, one showing "June 14" where Exa claimed
April 27. No rdc-monde article carries an in-body date; all six are `date_source: proxy`. Corbeau News
(CAF) does the same. Against that, **actualite.cd encodes the date in its URL** (`/YYYY/MM/DD/`), a
server-assigned anchor that matched the body dateline in **all 54 cases**. Exa's dates were wrong on
**7 of 10** Le Jour items — always *later* than truth, by up to 16 days.

**The sharpest single finding is CAF's, and it inverts the brief.** CC briefed the agents to expect a
thin country. **CAF is not thin — it is under-collected**: 38 staged against **3 held for the whole
window**. And the wiki holds *nothing* on CAR's tokenisation track, where by presidential decree the
**`$CAR` token buys tokenised land concessions — 1,700 ha at Bossongo** — with mineral rights flagged
next: a meme coin wired into the land registry of a state whose land records were destroyed in 2013,
invisible to a page that carries a live `dpi.registry` tag. GI-TOC's *Behind the Blockchain* (Dec 2025)
is the primary counterweight to the promotional copy. Alongside it, a **Starlink arc running acquisition
→ control in six weeks** (US-embassy-brokered agreement Dec 2025 → launch Mar 2026 → roaming deactivated
Apr 2026 citing *user traceability*) — a **US** foothold in a country the wiki frames around Russia.

**Framings the batch complicates.** **CIV's data-centre story is US-financed**, not a private cluster:
US EXIM at **$66m → $100m → $170m**, EXIM's own framing calling it the first data centre it has financed
in sub-Saharan Africa, under the China and Transformational Exports Program, "directly displacing a
Chinese competitor" — with a **smart border surveillance system** latterly attached to a "sovereign"
build. The hub carries **no `geopol.usa` for CIV at all**. Conversely **CMR's backbone turns out to be
Chinese-financed** (China EXIM ¥1.35bn decree of 2026-03-06) and Douala's cadastre is a Huawei MoU —
against a hub whose foreign hand was German/Luxembourgish. And **COD gains its first major Chinese entry**
(Genew, $1.5bn Congo River fibre MoU) in a file otherwise US/Singapore/Gulf.

**Corrections to held material** (candidates, filed at ingest against compiled pages, not here): CMR's
data-protection law is **enacted** (Loi 2024/017 of 23 Dec 2024), not the draft the wiki holds; the
CMR **IMEI block did not take effect** on 25 May 2026 as held material reads — operators refused;
CMR's SNIA was **drafted by Cabinet Danielle Moukouri** on tender, not led by ST Digital; the **COG ICT
minister changed** (Ibombo → Frédéric Malik Nguema Nzé by 2026-05), dating attributions across `COG.md`
and `patn-congo`; the **COG GSMA study re-dates from a proxy 2026-01-01 to 2026-06-22**, cross-confirmed
by three independent items; **COD's government denied DRCPass had launched** (2025-06-26), and Starlink
was **banned in Mar 2024 before being licensed** in May 2025 — the wiki holds a flat "Starlink is live".
COG's national data centre **stalled on a government payment default** at 80% with the AfDB threatening
to walk; the wiki holds only "75% complete".

**Registers.** Three issues filed. **ISSUE-012** — CAF's "no suitable papers exist" note is true of
*newspapers* and misleading as a coverage judgment; targeted search doubled CAR's base but **does not
amortise** and skews ~3:1 to announcements. *Recommend* Radio Ndeke Luka + Oubangui Médias as
paper1/paper2, Corbeau News third, and recognising Agence Ecofin. Not overridden by CC, because the note
records a curator confirmation. **ISSUE-013** — `rca.news-pravda.com`, an unattributed Pravda-network
mirror, was **the most prolific CAR hit in every French query**; verified as a mirror (its AIAL story is
a verbatim copy of Oubangui Médias posted two minutes later). **A naïve French-language run would have
built CAR's record out of it while looking successful.** Three real stories exist *only* there.
*Recommend* a standing drop-list plus an `inadmissible-origin` drop reason — the drop vocabulary
currently forces such items to be mislabelled `off-topic`, as happened to an ExpressVPN affiliate
advertorial in COD. **ISSUE-014** — `geopol.*` has **no Russia slug**, hit independently by two agents;
Russia is CAR's dominant external actor and is financing CARIA via a **Sberbank debt-to-development
swap** in COG. *Recommend* adding `geopol.russia`; hold `geopol.korea` for a second instance.

**Ledger corrections (tier-1, CC's own file).** **COG paper1 was unsweepable**:
`lesdepechesdebrazzaville.fr` serves only whole-edition PDFs via `download.php` with no per-article
HTML — the paper's articles live on its publisher's domain, **`adiac-congo.com`**. Row corrected;
everything was staged from there. **CMR needed a completion pass**: its journals agent hit its fetch
budget and, correctly, **documented 43 residual candidates in the manifest rather than dropping them**;
a completion pass took them from that list without re-searching (42 staged, 1 fetch-failed with a
better twin already held). Residual list now empty.

**Notable.** The **COD/COG name collision is real and large — 45 hits caught and rejected** across the
two agents. Two would have mis-filed on a headline read: "Congo Partners with Trident…" and "Congo
Unveils New Biometric Passport" are both **DRC**. The inverse also fired: a TechAfrica piece opens "DRC
is set to unveil its first National Data Center" while every fact in it is **Congo-Brazzaville** — an
outlet error, staged to COG with the error preserved. **Exa byline fabrication on techafricanews.com is
now measured, and subtler than thought**: it is not a single bad default — "Jennifer Onyeagoro" is a
real byline that Exa over-applies, and it also errs the other way (giving "Editorial Team" where the page
reads Aayushya Ranjan). Never trust Exa bylines on that domain. Two agents independently flagged that
**ARPTC's published communiqués end with a chatbot's closing question left in the copy** — admissible as
first-hand ARPTC speech, but direct evidence its comms are partly AI-drafted, which bears on the weight
its wire copy carries.

**Remaining.** 42 countries plus the pan-African pass are `pending`; the pilot trio NGA/SEN/TCD still
need completion passes (2025-04-01 → run date).

---

## 2026-07-17 — Phase-2 sweep: COM · CPV · DJI · DZA (rolling batch; survived an API incident)

**Scope.** Window 2025-01-01 → 2026-07-17. Four countries spanning three language regimes — the batch
that broke the Francophone run: **Comoros** (FR), **Cape Verde** (PT), **Djibouti** (FR), **Algeria**
(the sweep's **first Arabic** country). **283 candidates staged from ~700 raw hits; 203 dropped, every
one logged.** Writes confined to `new-queue/` and `sweep/`.

| | queries | found | dropped | staged |
|---|---|---|---|---|
| COM | 30 | ~56 | 15 | 41 |
| CPV | 40 | ~85 | 25 | 60 |
| DJI | 30 | ~91 | 22 | 47 |
| DZA | 37 | ~470 | 141 | 135 |

**A platform-wide API incident (529 overload + 401 auth) struck mid-batch and killed six agents** —
Algeria's newspaper half, both Cape Verde halves, Comoros' newspaper half, and Algeria's journal
orchestrator plus several of its fan-out staging workers. **Nothing was lost.** The sweep pipeline is
built for exactly this: a half's `new-queue/` folder *is* its state, so an interrupted run resumes
cleanly. CC (a) checkpointed all staged files to git, (b) **stopped spawning until the incident cleared**
rather than throwing agents at a degraded API, (c) wrote the recovery worklist to disk against context
loss, (d) probed with two canary agents once a timer elapsed, then relaunched the five outstanding halves
**as single sequential agents — no fan-out**, since the orchestrator→worker fan-out was what amplified the
failures. Every country completed. **Method lesson recorded:** during an incident, back off and checkpoint;
recover with flat single agents, not fan-out.

**The recovery completeness-checks earned their keep — they were not just manifest-writing.** Cape Verde's
journal recovery found the crashed run had **drained only the PR-wire vein and missed the government-policy
angle entirely**, adding 9 items including a CRVS/**99%-birth-registration** flagship. Algeria's journal
recovery found **13 missed items — three of them EN-twins the drop log had falsely recorded as staged**,
direct evidence of workers dying mid-write after logging the FR-twin drop. Comoros' and Cape Verde's paper
recoveries re-ran their second papers from scratch. Treating "write the missing manifest" as "re-verify the
half" is why the recovered countries aren't quietly short.

**"Establish thinness, don't assume it" — briefed after last batch's CAR lesson — paid off four times.**
Every country CC or the ledger expected to be thin was **under-collected, not thin**. **Djibouti**: 47
staged against a wiki holding only the flagship events — a submarine-cable hub whose national press
(adi.dj, lanation.dj) was **entirely uncollected**. **Comoros**: "well-covered, not thin," La Gazette
yielding 14 of 22 paper items. **Cape Verde**: the ledger's "trade-press blind spot" note **confirmed for
the journals but its papers are a strong primary instrument** — zero CPV URLs held from either paper.
**Algeria**: 135 staged, the Arabic run working on the first attempt.

**The first Arabic country worked, and its recipe is now recorded.** Arabic N1–N7 (validated on
echoroukonline.com) plus the gotchas are written into `sweep/query-recipes.md` for the six inheriting
states (EGY/LBY/MAR/TUN/SDN/MRT). Key findings: **domain-scoping barely holds on Arabic queries** (~1–3
on-domain hits per 15; the rest government portals, **AI-synthesis blogs that are inadmissible leads**, and
aggregators — budget for heavy hand-filtering); the **country name collides with the capital** (الجزائر =
Algeria *and* Algiers); **private papers (Echorouk) print clean Gregorian dates, state dailies (El
Moudjahid) print none** and must be dated by article-ID interpolation with `date_source: proxy`; no
Hijri/Eastern-numeral datelines appeared but they **remain a live risk for EGY/LBY/SDN/MRT**. Also recorded:
the **fixed-8 journals are carried by four outlets for the Maghreb** (wearetech, techreviewafrica,
techafricanews, telecomreviewafrica); the SSA-four are low-yield supplements — established by probing their
tag pages, not assumed.

**Most significant finds.** **Algeria** is the richest: a **National Data + AI strategy** and **SNTN-2030**,
a **dual sovereign data centre inaugurated 2026-07-08 (Huawei-built)**, **5G live across all wilayas** on
three operators, a **2025–2029 National Cybersecurity Strategy**, the **ANPDP** named (president Samir
Bourehil) under Decree 26-07, and an **Alger–Moscow cybersecurity MoU** — a Russia vector the wiki's
China-centric DZA page lacks. **Djibouti**: the **Horizon Fiber** tripartite corridor (Djibouti–Addis–Port
Sudan, signed 2026-02-04), Wingu Africa's $60m raise, a Startup Act. **Comoros**: both operators' **5G
launches** (May–June 2025), a **Starlink ban** (ANRTIC, June 2025 — a connectivity-sovereignty flashpoint),
the **Semlex→GenKey** biometric handover moving citizens' data from Belgium to domestic hosting, and the
**KomorPay** switch. **Cape Verde**: the **INE statistics-integrity controversy** (technicians alleging GDP
manipulation since 2016; three INE rebuttals) — a live governance fight invisible to the trade press — plus
a state SOC/CSIRT and PJ seeking access to national CCTV.

**Contradictions/re-datings flagged for ingest** (candidates, not opened here): Algeria's data-governance
decree is cited **n°25-320** by two independent papers against the wiki's **25-350**; Djibouti's mobile-ID
forum dates to **2026-02-08** ("hier") against the held 2026-02-09; Djibouti's digital minister re-dates
(Mariam Hamadou Ali → Safia Ali Mohamed Gadileh, delegate, 2026-05-22); Comoros' AfDB PADEC envelope
**€9.51m** (La Gazette) vs held **$10.4m**; Cape Verde's AfDB E-PFMRP phase-2 loan given as **$20.7m** /
**€17.7m** across two outlets.

**Registers.** **GAP-CPV-001** filed: Cape Verde's **foundational-ID architecture (CNI/SNIAC/Chave Móvel
Digital) is unsourced in the national press** — it lives only in government primaries outside the paper
scope; a lead to source those directly as `instrument`/`resource` entities. **ISSUE-014 addendum**: the
Russia-slug gap is now four countries deep (Algeria's Moscow MoU joins CAR, COG), and **a second bilateral
gap recurs — the UK** (Algeria DGSN–UK forensics MoU) alongside Korea (Algeria KOICA, Cameroon) — revised
recommendation is to add `geopol.russia` now and consider a general `geopol.other`/entity-carried convention
for the bilateral long tail rather than a slug per partner. Two data-quality flags left in frontmatter for
ingest, not the registers: an invalid `KOR` place code on one pre-staged Echorouk file, and the 25-320/25-350
decree number.

**Ledger corrections (tier-1, CC's own file).** **COG-style domain fix again**: no — this batch's fix was
recording that Comoros/Djibouti/Cape Verde national press was entirely uncollected (0 held URLs each). The
**held-urls.txt rebuild** from the prior batch (1,471 unique, 163 dedup-unsafe entries quarantined) held up:
every agent this batch grepped candidate→file in the safe direction and reported clean dedup.

**Tooling note for future rolling batches.** Four countries × two halves = eight concurrent agents was within
tolerance on a healthy API but had no margin when the incident hit; the fan-out staging workers under the
Algeria journal orchestrator multiplied the blast radius. Recovery ran flat (one agent per half) and was
robust. For rolling mode, prefer flat agents over orchestrator→worker fan-out.

**Remaining.** 38 countries plus the pan-African pass are `pending`; the pilot trio NGA/SEN/TCD still need
completion passes.

---

## 2026-07-17 — Batch ingest: AGO (Angola) — the first sweep-sourced ingest

**Scale.** The 124-item AGO sweep batch (promoted from `new-queue/AGO/` to `new/` by the curator) drained
to empty. **122 source pages admitted** to `raw/` (2 pruned as exact relevant-duplicates, below), against
41 AGO sources already held. **55 new entity pages** + **14 existing entities updated**; **9 Angola
intersections** (5 created: `angola--dpi-registry`, `angola--infra-connect`, `angola--data-satellite`,
`angola--infra-cybersec`, `angola--dpi-govtech`; 4 updated: `angola--dpi-id`, `angola--infra-store`,
`angola--gov-protect`, `angola--dpi-pay`); ~15 concept pages touched; the **AGO hub rebuilt 730 → 1,424
words**; three faceted indexes updated. Synthesised by a five-agent fan-out on disjoint clusters
(identity/registry, infra/cables/satellite, law/cyber/AI/statistics, payments/e-gov/startups,
hub+regional) with disjoint entity ownership; the orchestrator did dedup, contradictions, gaps, indexes,
the slug reconciliation, and the queue move.

**The analytical finding.** The batch forces a reframing the hub now carries: Angola's DPI sovereignty
contest is **no longer three-way (China/India/UAE)**. The 2026 evidence adds a **US pole** (Cybastion's
$170m building the national cybersecurity agency), a **European pole** (Airbus/Société Générale's €225m
ANGEO-1 satellite; Portugal's ANACOM shaping the *rules* under an EU mission), and a **Brazilian pole**
(Serpro inside the Ministry of Finance's i.Lab). The defining tension is the collision between that
ever-widening supplier field and the base: **the Council of Ministers is making the Bilhete de Identidade
the sole legal ID for banking, schooling, property and contracts at the moment the 2024 census shows only
52.4% of Angolans hold one** (63% urban vs 30.9% rural; 14.9m undocumented). Angop (the state agency)
supplies the advance narrative; Novo Jornal supplies the counter-evidence the official account omits —
four months of ID-system outages across Luanda, procurement opacity, a minister conceding fraudulent BI
issuance "com interferência humana," and the SINSE–Predator surveillance case (first forensic confirmation
of Predator in Angola, Amnesty). Weighted accordingly throughout.

**Dedup (lint #7).** The sweep deliberately kept same-event twins across its two halves for adjudication
here with full text. Assessed by the cluster agents: **almost all are complementary, not exact** — Novo
Jornal consistently adds figures/framing Angop omits, and journal twins add distinct data (the data-centre
event has five accounts, each with unique payload — specs / currency / repatriation framing / broadband
coverage). **Two exact relevant-duplicates pruned**, both with citations already rewired off them:
`2026-03-20-angola-approves-startups-bill-techafricanews` (generic re-report of the general approval; kept
the richer, earlier Novo Jornal `2026-03-19`) and `2026-06-12-namibia-and-angola-strengthen-digital-cooperation-telecomreview`
(exact twin of the earlier TechAfrica `2026-06-11` ministerial-MoU account; earliest-wins per the ladder).

**Slug reconciliation (tier-1 mechanical).** The sweep-staged sources carry best-effort **Portuguese**
entity slugs in frontmatter, which diverge from the wiki's **English-canonical** convention; two cluster
agents created canonical English pages while two matched the Portuguese source slugs, leaving dead
source→entity links. **63 link instances across 44 sources remapped** to canonical slugs (only where the
target page exists), e.g. `banco-nacional-de-angola → bna-angola`, `gabinete-de-gestao-do-programa-espacial-nacional-angola → ggpen`,
`instituto-de-modernizacao-administrativa-angola → ima-angola`, `readiness-assessment-methodology-unesco → unesco-ram-angola`.
**118 residual unresolved source→entity slugs remain** — overwhelmingly single-reference Angolan officials
and bodies that legitimately have no page (left to the periodic dead-link lint per anti-fragmentation), plus
the high-referrer create-candidates now filed as **GAP-AGO-001**.

**Contradictions filed (3).** `angola-cybersecurity-strategy-vs-bill` (a draft Presidential-Decree strategy
vs the parliamentary bill — both stand up a National Cybersecurity Council + Centro, the bill **stalled
2026-07-08**; decree-track vs legislative-track, unresolved); `angola-luanda-population-censo-2024` (the same
paper gives Luanda as 7,961,235 and "mais de 8,6 milhões," both citing Censo 2024 — neither promoted onto a
synthesis page); `angola-national-fibre-length-2025-2026` (14,000 → 22,000 → 28,000 km across seven months —
genuine growth, different measures, or error; written as a dated trajectory, no bare current figure).

**Gaps filed (2).** **GAP-AGO-001** — high-referrer entities not yet paged (the Telecom minister
`mario-oliveira` (12 refs), `marcy-lopes` (10), `assembleia-nacional-angola`, `unita`/`mpla`, the ANGOTIC
conference, the census, the BI-universalisation plan): create the unambiguous ones, confirm the persons
against a primary. **GAP-AGO-002** — a **SITA namespace collision**: the batch's aviation-IT vendor SITA
(Société Internationale de Télécommunications Aéronautiques) is not the held `sita` (South Africa's State IT
Agency); the ingest created `sita-angola` and avoided miscitation — recommend a distinct `sita-aero` vendor
entity.

**Accuracy guard.** The sweep manifest called the $89m Camama data centre "UAE-origin," but the infra agent
found the primary article body does **not** substantiate a UAE financing link — held on the data-centre
entity and `angola--infra-store` as an **attributed, unconfirmed** provenance point (TechAfrica's
`geopol.gulf` framing), never as fact. The genuine UAE tie in the ID stack is the separate G42/Presight MoU
(2021), which is correctly retained.

**Page hygiene.** The rebuilt hub is a bounded synthesis (1,424 w, well under the ~2,500 classify threshold);
detail pushed into the nine intersections (549–871 w each) and cited. No page crossed the refactor line.

**Flags.** First ingest to run entirely from sweep-staged material — the sweep's pre-tagged entities and
pre-clustered manifest made the synthesis fan-out clean, but exposed the Portuguese/English slug-convention
mismatch as a standing reconciliation cost for every future sweep-sourced ingest (worth a normalisation step
at stage or ingest — noted, not actioned as a schema change).

**Amended same day — overnight mode (curator directive).** The runbook must run unattended overnight,
not stop when a session's budget runs low. Execution model rewritten: **one folder per headless CC
invocation**, driven by a new outer loop **`sweep/run-overnight.ps1`** that re-invokes `claude -p` until
`new-queue/` is empty (guards: 200-iteration backstop, 5 consecutive failures, 3-iteration no-progress
stall; all iterations logged to `sweep/overnight-run.log`). Big folders finishing across multiple
invocations via interruption recovery is expected behaviour. Per-folder rules unchanged.

## 2026-07-17 — Batch ingest: ERI (Eritrea) — Phase-2 sweep, smallest folder

**Runbook.** Phase-2 batch ingest per `sweep/ingest-runbook.md`, one folder per invocation.
Interruption recovery: `new/` empty, no folder split across `new-queue/{ISO3}`+`done/` — clean start.
Claimed **ERI** (5 candidates, smallest pending; ledger status `swept`, fair game).

**Screen & promote.** Copied the folder to `new-queue/done/ERI/` (backup/review trail). One candidate —
`2026-04-10-eritrea-teachers-ict-use-education-policy-tpe.md`, a **paywalled** T&F peer-reviewed article
(`body_completeness: paywalled`, `[CLIP]`) — routed to **`new-queue/needs-clip/ERI/`**: its substantive
payload sits behind the paywall (only abstract/metadata captured), so the body is not admissible source
text and needs a manual subscriber clip before promotion. This is exactly the pending **ISSUE-011** scenario
(paywall-truncated body whose payload depends on the withheld text) — action aligns with its recommendation
and the item's own note; no new issue filed. Promoted the other **4** to `new/`.

**Ingested — 4 admitted, 0 leads, 0 discards, 1 needs-clip (= 5 candidates).** All net-new (manifest: zero
held URLs overlap). No dedup collisions, no contradictions. Sources (dates = publication):
- `2025-11-01 Eri-Chat offline AI app` — Shabait (state MoI). Domestically built **offline AI app** (Eri-Chat),
  data stored locally on device; launched Apr 2025, shown at Asmara UN Day Oct 2025. tech.ai, tech.innovate.
  Rare first Eritrean AI/innovation datapoint. Attributed as state voice.
- `2026-05-08 Eritrea strengthens data systems with EPHS 2025 (UNDP)` — UNDP (partner). **EPHS 2025** CAPI
  survey (9,794 households / 405 EAs, 98.4% completion) + 2023/24 national accounts under the D4D Joint
  Programme; NSO responsible, UNDP/UNECA partners. data.statistics, capacity.research.
- `2026-05-19 Eritrea substantial investment in communication service expansion` — Shabait (state). Minister's
  telecom claims: 184 towers, ~90% **geographic** mobile coverage, "4G level", ~1,536 Mbps bandwidth, 35bn+
  Nakfa. infra.connect, include.divides. Attributed as unverifiable state claims; geographic ≠ population
  coverage (held DataReportal 23.7% population penetration is not contradicted).
- `2026-07-02 Eritrea's banking ultimatum - deposit cash by 31 July 2026` — Awate (opposition; embedded Bank
  of Eritrea legal notice as the primary artefact). Cash-deposit-by-31-Jul-2026 order; context for the
  near-absence of mobile money/digital payments. dpi.pay, gov.legislate. Opposition framing attributed.

**Entities.** Created 3: `eritel` (company, state telecom monopoly), `bank-of-eritrea` (government-body),
`eritrea-national-statistics-office` (government-body). Updated `undp` (+ERI place, +data.statistics topic,
+EPHS source and activity note).

**Places/concepts.** `ERI` hub rebuilt and **promoted stub → active** (6 new developments, expanded topic
and entity sections). Concept tags: ERI added to `tech.ai`, `tech.innovate`, `dpi.pay`, `gov.legislate`,
`data.statistics`, `capacity.research` frontmatter (`infra.connect`/`include.divides` already carried it);
`data.statistics` also got a per-country Eritrea entry + source (clean fit; big thematic pages took the
faceted tag only, detail on the ERI hub). Indexes updated: places-index (ERI row + stub→active note),
entities-index (3 new rows + undp), topics-index (4 topic lines).

**Gap filed.** **GAP-ERI-001** — Eritrea's submarine-cable (reportedly only coastal African state with zero
landings) and Starlink-licensing status are load-bearing but sourced only via an inadmissible ts2.tech AI
synthesis (left in drop log, not ingested); lead to source from submarinenetworks.com / on-record reporting.

**Teardown.** `new/` drained to empty. `new-queue/ERI/` reduced to `MANIFEST.md` husk — deleted. Committed.

## 2026-07-18 — Batch ingest: GNB (Guinea-Bissau) — Phase-2 sweep, smallest pending folder

**Run.** Single-folder batch ingest per `sweep/ingest-runbook.md`. Interruption recovery clean (no `new/`,
no half-torn-down folder). Claimed **GNB** — smallest pending folder (13 candidates); ledger row `swept`.
Copied folder to `new-queue/done/GNB/` (backup/review trail) before any moves.

**Screen.** All 13 candidates are full-text clips — **no flagged summaries** (0 needs-clip). All admissible:
ANG state-agency reporting (government voice, capture ≠ endorsement), ARN-TIC regulator + WARDIP project +
Telecel company primaries, Connecting Africa trade journal, O Democrata / Última Hora newspapers. No AI
syntheses, **no discards**.

**Dedup.** Two flagged same-event-as-held items both **admitted as complementary**, not pruned: the ANG
ENTD.GW-launch account (adds PM Barros / Minister Barbeiro quotes + named UNDP rep Casazza + 2025-30 period
vs held UNU-EGOV) and the ANG civil-ID/registry workshop (a distinct domestic two-day workshop under DGICRAN
— EU/UNICEF/CNE detail + the 23.4%→46% birth-registration figure — vs the held Biometric Update ID4Africa
interview). Neither is a relevant-duplicate. The **2,877 km WARDIP-GB backbone supersedes the old ~888 km**
figure — supersession, dated inline, **not** a contradiction (no file opened).

**Sources.** 13 admitted to `raw/` with `YYYY-MM-DD Title` filenames (staged kebab names renamed on ingest,
per AGO/ERI precedent); `ingested: 2026-07-18` added, `entities:` YAML normalised, `retrieved:`/`sweep_batch:`
kept. 3 carry `date_source: proxy` (two 2026 items precision-**year**: Electronic Communications Law, WARDIP
backbone specs; civil-ID workshop precision-**month** 2025-06) — honest, ANG serves no in-body dates.

**Entities.** Created 2: `arn` (government-body — ARN-TIC ICT regulator), `telecel` (company — ex-MTN opco,
STARTOCODE partner). Updated: `wardip` (+GNB place, WARDIP-GB national rollout + 2,877 km backbone + EIASS,
3 sources), `entd-gw` (ANG launch account + the July-2025 three-decree approval, 2 sources), `enbic` (São
Domingos 262-women field issuance), `sirec` (DGICRAN digitization workshop, 23.4%→46%), `starlink` (+GNB
place, licensed 2025-04-10 / live 2025-06-19 bullet, 2 sources).

**Places/concepts/intersections.** `GNB` hub reworked as an index: intro now flags the 2025-26 governance
spine + WARDIP/Starlink connectivity; Recent developments gained the governance-spine and connectivity
events; topics frontmatter +gov.legislate/gov.protect/infra.cybersec/capacity.training; entities +arn/telecel/
wardip/starlink. Created 2 intersections — **`guinea-bissau--gov-policy`** (ENTD.GW; three decrees —
interoperability + data governance/protection + cybersecurity strategy & agency; Electronic Communications
Law; CNT digital-integrity/online-falsehoods law) and **`guinea-bissau--infra-connect`** (WARDIP-GB 2,877 km
backbone; Starlink licence→launch; Electronic Comms Law) — and extended **`guinea-bissau--dpi-id`** (workshop
+ São Domingos issuance). Concept cross-link: `GNB` added to the Places index of 9 concept pages (gov.policy,
gov.legislate, gov.protect, infra.cybersec, dpi.exchange, infra.connect, capacity.training, dpi.id,
gov.regional). Indexes updated: places-index (GNB row rewritten), topics-index (2 new intersection lines +
dpi-id line refreshed), entities-index (arn + telecel rows; wardip + starlink places).

**Gap filed.** **GAP-GNB-001** — the World Bank WARDIP-GB financing agreement (~US$60M grant behind the
backbone, Amílcar Cabral cable, govcloud and data-protection regulator) is referenced but **unsourced**;
lead to capture the PAD/financing agreement as reference material on `wardip`. (Also noted: RNEP-GB; ARN
IDN/.GW accented domains.)

**Teardown.** `new/` drained to empty (13 in = 13 admitted + 0 leads + 0 discards + 0 needs-clip).
`new-queue/GNB/` reduced to `MANIFEST.md` husk — deleted. Committed.

## 2026-07-18 — Batch ingest: MRT (Mauritania) — Phase-2 sweep, smallest pending folder

**Scope.** Drained `new-queue/MRT/` (17 staged candidates, batch MRT-2026-07-17). Interruption recovery clean
(`new/` empty; no folder split across `new-queue/` and `done/`). Copied MRT to `new-queue/done/MRT/` before
any move. **Screen:** all 17 were full-text bodies — **0 flagged summaries / 0 needs-clip**. All 17 admitted;
0 leads, 0 discards. Frontmatter verified against bodies (published dates, precision, provenance flags all
held); added `ingested: 2026-07-18`.

**Sources admitted (17).** Houwiyeti education-certificates service (AMI, 2025-07-24); EllaLink 2nd cable
launch (AMI, 2025-07-28) and phase-1 landing (AMI, 2026-05-04) + connectivity/affordability baseline (Ecofin,
2026-05-05); Chinguitel–Huawei modernisation (2025-11-13); 2026 finance-law 0.1% e-transaction tax
(Invest-Time, 2026-01-17); ARE satellite-internet tender (2026-01-29) and 5G provisional winners (2026-04-15);
US ITA Country Commercial Guide (reference, 2026-02-10); public-digital-services standards framework
(2026-03-27); PAMIF financial-inclusion 21%→55% (AfDB, 2026-04-13); IsDB $50m principle agreement
(2026-04-16); parliamentary état-civil / ID-exclusion debate (La Dépêche, 2026-06-18); Houwiyeti usage
indicators (Tech Rek, 2026-06-21); national cloud launch (Ecofin, 2026-06-30); PAFIID/BCM 10k+ cyber threats
(Elvetach, 2026-07-08); digital consular-services platform (We Are Tech, 2026-07-10).

**Entities.** Created 16 — companies: `chinguitel`, `mauritel`, `mattel`, `rimatel` (new 4th operator), `bmci`,
`alcatel-submarine-networks`; organisations: `eib`, `islamic-development-bank`, `unctad`; government-bodies:
`central-bank-mauritania` (BCM), `apd-mauritania` (data-protection authority, net-new); initiatives: `ellalink`,
`ace-cable`, `pamif`, `pafiid`, `digital-y`. Updated 10 — `houwiyeti` (set needs-review; new dated usage
figures + contradiction flag), `anrpts-mauritania` (register 3.4m→5.1m, 2025 permanent-enrolment reform,
exclusion angle + sovereignty/colonialism lens), `mtnima-mauritania` (national cloud, standards framework,
consular platform, IsDB; +5 sources), `are-mauritania` (satellite tender + 5G; +infra.connect), `huawei`
(+MRT), `african-development-bank` (+MRT, PAMIF), `giz` (+MRT), `world-bank` (+MRT, national cloud), `wardip`
(+MRT, national cloud), `starlink` (+MRT, tender).

**Places/concepts.** `MRT` hub: 16 new dated developments added (13 in 2026, 3 in 2025-H2); frontmatter topics
expanded (+dpi.mis, dpi.exchange, gov.standards, gov.protect, infra.cybersec, finance.new, finance.mou,
include.divides, tech.industry); Active topics + Entities sections rewritten. Added `MRT` to the Places
frontmatter of 16 concept pages (mechanical nav fix — pre-existing gap; MRT holdings existed but weren't
propagated). No intersections created (hub carries the synthesis; anti-fragmentation). Indexes: entities-index
(16 new rows across 4 sections; +MRT on huawei/starlink/wardip rows; removed a duplicate `houwiyeti` row I'd
added), topics-index (+MRT on 7 topic lines: infra.cybersec, finance.mou, gov.standards, dpi.exchange, dpi.mis,
include.divides, tech.industry), places-index (MRT row topic summary refreshed).

**Contradiction filed.** `mauritania-houwiyeti-passport-share-extracts` — held ID4Africa (May 2025) "70% of
passport requests / 622k extracts in a year" vs Tech Rek (June 2026) "35.7% via app / 406,871 cumulative
civil-status extracts". Both kept dated; `houwiyeti` set `needs-review`; paste-ready wiki-agnostic research
brief attached (both source URLs held).

**Gaps filed.** **GAP-MRT-001** — distinct new national digital-ID + PKI system (WARDIP tender, IDA-7445-MR)
unsourced. **GAP-MRT-002** — National AI Strategy 2025–2029 and National Cybersecurity Strategy 2022–2025
referenced without their own pages.

**Teardown.** `new/` drained to empty (17 in = 17 admitted + 0 leads + 0 discards + 0 needs-clip).
`new-queue/MRT/` reduced to `MANIFEST.md` husk — deleted. Committed.

## 2026-07-18 — Batch ingest: SDN (Sudan) — Phase-2 sweep, smallest pending folder

**Run.** Single-folder batch ingest per `sweep/ingest-runbook.md`. Interruption recovery clean (`new/` empty;
no half-torn-down folder — `done/` held only AGO/ERI/GNB/MRT, none pending). Claimed **SDN** — smallest
pending folder (17 candidates); no `in-progress` ledger row. Copied folder to `new-queue/done/SDN/`
(backup/review trail) before any moves.

**Screen.** All 17 candidates are full-text clips — **no flagged summaries** (0 needs-clip). All admissible:
12 SUNA (Sudanese state agency — Port-Sudan government voice, `provenance_flag: state-agency`, capture ≠
endorsement; RSF/"systematic targeting" attributions are the government's framing) + 5 trade-journal
(TechAfrica News ×4, Telecom Review Africa ×1). No AI syntheses, **no discards**.

**Dedup.** The two **Horizon Fiber** items (2026-02-04 SUNA signing-ceremony + 2026-02-10 Telecom Review
Africa binding-deal) are same-event/different-outlet but **complementary, both admitted** — SUNA carries the
~2,700 km wartime-build + Chad/Ethiopia routes; Telecom Review carries the Dec-2024 MoU origin + CEO quotes.
Not relevant-duplicates. **SUDAPASS launch (21 May 2026) supersedes** the held "imminent/preparing" status
(Jan–Feb 2026) — supersession dated inline on [[sudapass]], [[SDN]] and [[dpi.id]], **not** a contradiction
(no file opened). No contradictions filed.

**Sources.** 17 admitted to `raw/` with `YYYY-MM-DD Title` filenames (staged kebab names renamed on ingest,
per GNB/MRT precedent); `ingested: 2026-07-18` added; `retrieved:`/`sweep_batch:` kept. All
`date_source: source`, `date_precision: day` (SUNA serves clean in-body Gregorian datelines; the one
Eastern-numeral dateline — Bankak-fraud ٢/٢٢ — converted at sweep time). Two staged entity-list corrections:
dropped `[[sudan-electricity-holding-company]]` (not named in the energy body) and `[[zain-fintech]]` (Zain
Group sub-brand, folded into [[bede-wallet]]/[[zain-sudan]]).

**Entities.** Created **20**: companies `sudatel`, `sudani-telecom`, `mtn-sudan`, `network-international`,
`saudi-sudanese-bank`, `national-workers-bank-sudan`; initiatives `horizon-fiber`, `bede-wallet`,
`baladna-platform-sudan`, `isali`, `unified-social-registry-sudan`, `afia-platform-sudan`, `bankak`;
government bodies `central-bank-of-sudan`, `national-electronic-certification-authority-sudan`,
`civil-registry-sudan`, `ministry-of-finance-sudan`, `tax-authority-sudan`, `sudan-customs-authority`,
`ministry-of-energy-sudan`, `ministry-of-health-sudan`, `ministry-human-resources-social-welfare-sudan`,
`national-investment-authority-sudan`, `communications-postal-regulatory-authority-sudan`; organisation
`world-health-organization` (XGL); instrument `asycuda` (XGL, UNCTAD). *(26 pages total across the batch.)*
Updated **6**: `sudapass` (**now LIVE** 2026-05-21), `ministry-digital-transformation-sudan` (2026 build-out
— SUDAPASS/Afia/social-registry/USSD/operators), `bank-of-khartoum` (Bankak fraud + Bankak link),
`sudanese-cybersecurity-authority` (SUDAPASS role), `ethio-telecom` + `djibouti-telecom` (Horizon Fiber).

**Places/concepts.** `SDN` hub substantially reworked: intro reframed (Port-Sudan digital-state build +
wartime survival rails); Recent developments rebuilt reverse-chron with the 17 new items folded in (Horizon
and Isali consolidated); topics frontmatter +dpi.registry/dpi.mis/gov.protect/gov.regional/infra.energy/
finance.mou/geopol.gulf/capacity.training/tech.industry/digital.localgov; Active topics + Entities sections
rewritten. Concept updates: `dpi.id` per-place SDN entry updated to **SUDAPASS live** (+source); SDN added to
`places:` frontmatter of 10 concept pages (dpi.registry, dpi.mis, infra.energy, finance.mou, geopol.gulf,
capacity.training, tech.industry, digital.localgov, gov.regional, gov.protect) with `last_reviewed` bumped.
No intersection created — SDN's material is a single-country thematic narrative, correctly on the hub (not
matrix-shaped).

**Indexes.** entities-index (+26 rows across Companies/Organisations/Government bodies/Initiatives/
Instruments), topics-index (+SDN on 8 topic lines: dpi.registry, dpi.mis, infra.energy, finance.mou,
geopol.gulf, capacity.training, tech.industry, digital.localgov), places-index (SDN row topic summary
refreshed).

**Gap filed.** **GAP-SDN-002** — four in-window SDN developments logged `off-source-scope` by the sweep
(CBoS NIPS/EBS national payment switch; CBoS Al-Asjad licence revocation; Baladna "28 digital services";
Khartoum data-centre reopening) need primary/designated sourcing; the national payment switch is a DPI
keystone currently unrepresented against the Bankak-concentration thesis.

**Gap partially resolved.** Creating [[central-bank-of-sudan]] this batch closes the CBoS half of the
pre-existing **GAP-SDN-002** (Zain-Group page + DFS-report date verification remain open); item updated in
`reviews/gaps.md`. My new off-source-scope lead was numbered **GAP-SDN-003** (GAP-SDN-001/002 pre-existed).

**Teardown.** `new/` empty throughout (staged files git-mv'd straight to `raw/`, 17 in = 17 admitted +
0 leads + 0 discards + 0 needs-clip). `new-queue/SDN/` reduced to `MANIFEST.md` husk — deleted (copy
preserved in `new-queue/done/SDN/`). Committed.

## 2026-07-18 — Batch ingest: MLI (Mali) — Phase-2 sweep, smallest pending folder

**Scope.** Per `sweep/ingest-runbook.md`. Interruption recovery clean (`new/` empty, no split
`new-queue`/`done` folder). Claimed **MLI** — the smallest pending folder (18 candidates; ledger `swept`).
Copied folder → `new-queue/done/MLI/` (backup/review trail) before any move. **No flagged summaries** (all
18 bodies full-text) → 0 needs-clip. All 18 admissible primary/first-hand reporting; promoted to `new/`,
`ingested: 2026-07-18` stamped, then git-mv'd to `raw/` keeping staged hyphenated filenames.

**Admitted 18 / leads 0 / discards 0 / needs-clip 0.** Dedup: manifest-flagged already-held items (Tier III
DC, E-AES passport, Sept-2025 platforms, diaspora platform, AES passport, TerraPay-Wave, birth-registration)
were excluded at sweep time; the 18 are net-additive. One URL-collision flag (IFC-Orange-Mali) proved a
false positive — the URL is only a citation row inside the Data Landscapers data-centre dataset, not a held
copy of the press-release event; admitted the IFC primary normally.

**Entities created (10).** Companies: [[orange-mali]], [[intelsat]], [[sotelma]], [[maroc-telecom]].
Government-bodies: [[apdp-mali]] (data-protection authority, Law 2013-015), [[agetic]] (ICT agency),
[[anssi-mali]] (cyber agency, created 10 Jun 2026). Organisation: [[niyel]] (AI-governance advocacy). Deals:
[[ifc-orange-mali-loan]] (€80m social loan), [[sotelma-state-majority-2026]] (state 49%→56%, ~$277m).
**Entities updated (5).** [[ifc]] (+MLI place, Orange loan bullet), [[smart-africa]] (+MLI, MWC-2026
cooperation), [[cib-aes]] (+MLI, Bamako diaspora-enrolment pilot), [[alliance-of-sahel-states]] (+diaspora
pilot, SOTELMA reclaim as AES economic-sovereignty pattern), [[orange]] (+MLI, Orange Mali bullet).

**Place hub.** [[MLI]] Recent developments expanded with the full 2025–2026 arc (14 new dated bullets,
reverse-chron: Niyel AI framework, health portal, SOTELMA reclaim, Moov fibre/MIA, ANSSI, CIB-AES pilot,
cybercrime chamber, Moov card, Smart Africa, justice e-services, AGETIC Intranet/.ml, cyber strategy, APDP
Ségou, IFC loan, APDP files, Orange Money card, Intelsat satellite, TrésorPay); Active topics + Entities
sections rewritten; topics frontmatter +gov.protect, infra.connect, tech.ai, tech.industry, finance.new,
data.satellite, infra.energy, include.divides, dpi.mis, capacity.training.

**Concept updates (net-new thematic only).** `gov.protect` (+MLI place/entity, APDP actively-enforcing-DPA
bullet — partial GAP-003), `tech.ai` (+Niyel Francophone-WA framework bullet, +MLI/BFA/GIN/BEN/XWA places),
`data.satellite` (+MLI Intelsat first-4G-over-satellite bullet, +orange-mali/intelsat entities),
`infra.cybersec` (+MLI institutional-cyber-stack bullet, +anssi-mali/agetic entities). Country-level items in
dpi.pay/dpi.govtech/infra.connect/dpi.id (Mali already active) held on hub + entity pages to avoid concept
bloat.

**Indexes.** entities-index (+10 rows: 4 Companies, 1 Organisation, 3 Government bodies, 2 Deals);
topics-index (+MLI on gov.protect, data.satellite, include.divides, infra.energy, dpi.mis — already listed
on the others); places-index MLI row topic summary refreshed. No intersection created — Mali's material is a
single-country thematic narrative, correctly on the hub (not matrix-shaped).

**Registers.** ISSUE-014 (Russia/Korea geopol slug) already open — the cyber-strategy "Russian
cybercriminals" attribution flagged in-line, not re-filed. Minor ANSSI date nuance (strategy noted 5 Dec 2025
vs report's "adopted February" 2026) recorded as not-a-contradiction, no file. No new gaps/issues/
contradictions filed this batch. techgriot health-portal cites We Are Tech as primary (unavailable to fetch
in batch ingest) — admitted as secondary reporting, noted on source + hub.

**Teardown.** `new/` empty after ingest (18 in = 18 admitted). `new-queue/MLI/` reduced to `MANIFEST.md`
husk — deleted (copy preserved in `new-queue/done/MLI/`). Committed.

## 2026-07-18 — Batch ingest: LBR (Liberia) — Phase-2 sweep

**Screen + dedup.** 20 sweep-sourced items, all `[LBR]`. All admissible primary/first-hand reporting
(national outlets: Liberian Observer, FrontPage Africa; trade: Biometric Update, TechAfrica News) — one
opinion piece (Observer editorial, admitted as dated analysis). Dedup vs existing corpus: three items
overlap events already held but each adds in-scope payload, so complementary, not relevant-duplicates —
2025-04-30 EO147 (Observer) adds PRC-Decree-#65 + LTA/SIM detail over the held IDTechWire/BiometricUpdate
pair; 2025-07-09 Kofi-Woods (Observer) adds the deadline extension + suspension mechanics over the held
IDTechWire steering-committee piece. The four Dec-2025 IIPS items (Observer×2, FPA, TechAfrica) are a
multi-outlet launch cluster with distinct quotes/stats — all admitted. **20 in → 20 admitted.** No leads,
no discards.

**Sources admitted (20).** EO 147 (Observer); DP-bill House review; ID-card security critique (Naymote);
Kofi-Woods steering committee; 4× IIPS launch (CBL agreements, TechAfrica launch, FPA silos, Observer
Orange); CSA LPA platform; 5G/fibre (Observer); 2m-citizen data-breach probe; $1.7m debt (FPA + Biometric
Update); EO 163/OTDI-NDMI; OSD rescue (FPA) + concession restart (Biometric Update); digital-sovereignty
editorial; $125m/WARDIP2 signing; TRANSCO CLSG fibre; LTA telecom reforms / Star Cell revoked.

**Entities created (5).** `naymote` (organisation), `osd-international` (company), `techno-brain`
(company), `otdi-liberia` (initiative — EO 163/OTDI/NDMI), `liberia-data-protection-bill` (initiative).
**Updated (8).** NIR (debt-lock → OSD concession arc), lta-liberia (5G + telecom reforms), CBL (IIPS
launch anchor), pay-na-na (Dec-2025 launch + agreements + partners), great-project-liberia ($2m tranche
frozen), wardip ($50m Liberia signing), starlink (156-school links + LBR place), central-bank (EO-163
independence). world-bank left as-is (already current; per-country tranche would bloat the global page).

**Intersection + place.** `liberia--dpi-id` extended with the debt-lock, OSD concession and sovereignty
editorial (now the fullest ID narrative). `LBR` hub: 6 new Recent-developments entries (reverse-chron),
Active-topics + Entities rewritten, Pay Na-Na re-dated to its **Dec 2025 launch** (was mis-anchored to a
Jul-2026 source), topics frontmatter +gov.standards, dpi.exchange, finance.mou.

**Concept updates (net-new only).** `dpi.pay` (Liberia line → Dec-2025 launch/CBL/mojaloop/NEPS),
`dpi.id` (added missing Liberia entry to the Extracted list → intersection), `dpi.govtech` (+LBR place +
EO-163/OTDI + CSA-LPA bullet), `gov.protect` (+2m-breach / no-law-beneath-mandate bullet), `infra.connect`
(+LBR indexed bullet: TRANSCO redundancy, LTA reforms, Starlink schools), `infra.cybersec` (+2m-breach
bullet), `gov.regional` (+TRANSCO CLSG consortium + $50m signing), `finance.new` (+$50m Liberia WARDIP2
tranche), `gov.legislate` (+LBR place + rule-by-EO bullet). include.access/gov.policy held on hub/entities
(already active, avoid bloat on large pages).

**Indexes.** entities-index +5 rows (2 Companies, 1 Organisation, 2 Initiatives); places-index LBR row
refreshed; topics-index unchanged (LBR already listed under all affected concepts).

**Registers.** No new gaps/issues/contradictions. Note filed in-line, not as a contradiction: Pay Na-Na
launch was previously anchored to a Jul-2026 source but actually launched 16 Dec 2025 — corrected as a
supersession, not a conflict.

**Teardown.** `new/` emptied (20 in = 20 admitted → raw/). Filenames already carried correct `published`
date prefixes; no renames needed.

## 2026-07-18 — Batch ingest: BDI (Burundi) — Phase-2 sweep (large, 41 sources)

**Screen + dedup.** 41 sweep-sourced items (Burundi Times, Iwacu FR, We Are Tech, TechAfrica, Biometric
Update, ITWeb, Connecting Africa), all [BDI] (+ XEA on regional items). All admissible primary/first-hand
reporting. Many multi-outlet clusters — e-KORI (2 new + 1 held), DP law (1 new + 1 held), ABREMA/guichet
unique (2), AI validation (3, distinct from the Nov-2025 diagnostic), BurundiPay (3), ONATEL $5.9m rural
(3), biometric ID unveiling (2), India Stack (3) — each admitted as **complementary** (distinct
quotes/figures per outlet); no exact relevant-duplicates. Overlap with held sources: the new DP-law
(TechAfrica) and e-KORI (BurundiTimes) add payload over the held We-Are-Tech/Ecofin copies. **41 in → 41
admitted.** No leads, no discards. (`MANIFEST.md` travelled into new/ with the promotion — set aside, not
ingested.)

**Date corrections (active `published`).** Three Iwacu proxy files re-dated + renamed at ingest per their
sweep dating notes: AI diagnostic workshop **2025-11-01→2025-11-25** (day/source, corroborated); AI
validation **2026-04-01→2026-04-22** (day/source); PAFEN-80% tour recap **2026-01-01→2026-05-01** (month/
proxy — its content post-dates the 23 Apr BurundiPay launch, so the Jan pad was misleading).

**Slug normalisation (mechanical).** Sweep frontmatter used non-canonical entity slugs; normalised across
sources: `office-burundais-des-recettes`→`obr-burundi`, `pafen`→`pafen-burundi`,
`east-african-community`→`eac`, `banque-de-la-republique-du-burundi`→`bank-of-the-republic-of-burundi`.

**Entities created (10).** Government bodies: `bank-of-the-republic-of-burundi` (BRB),
`ministry-of-finance-budget-and-digital-economy-burundi`, `ministry-of-interior-burundi`, `arct-burundi`
(regulator). Companies: `lumitel` (Viettel), `onatel-burundi` (state), `lyca-mobile`. Initiative:
`burundipay`. Instrument: `india-stack` (exportable DPI reference architecture, XGL). Resource:
`elmis-medexis` (health supply MIS). **Updated (8):** eardip (EAC data-sharing framework + digital-divide),
obr-burundi (Guichet Unique/ABREMA + regional tax), pafen-burundi (rural contracts, 61% mid-term, data
centre, BurundiPay), setic-burundi, ceni-burundi (2027 election), burundi-data-protection-law-2026, eac
(data-sharing + statistics bureau), starlink (BDI). Aadhaar folded into india-stack; IGAD/TradeMark
Africa/opposition parties left as plain-text mentions (no page).

**Intersection + place.** `burundi--dpi-id` extended: biometric ID **"technically ready" but awaiting a
law/decree** (May 2026, ~15bn BIF, EAC-mobility, full re-registration; [[ministry-of-interior-burundi]])
and the June-2026 **India Stack** exploration. `BDI` hub rewritten — reverse-chron Recent developments
grouped by month (2025-01 → 2026-06), Active topics + Entities expanded to the new payments/AI/ID/
connectivity clusters; topics frontmatter +dpi.exchange, digital.rural, gov.legislate, gov.standards,
tech.ai, data.statistics.

**Concept updates (net-new only).** dpi.id (Burundi cell → "technically ready" + India Stack), dpi.pay
(+BurundiPay indexed line), tech.ai (+Burundi six-pillar AI strategy; +place), gov.protect (+DP-law/SNGD
bullet), infra.connect (+Burundi rural-4G/crisis/Starlink line), dpi.govtech (+e-KORI/Guichet Unique),
geopol.india (+India Stack export + Burundi; +entity/place), dpi.mis (+eLMIS Medexis), dpi.exchange
(+EAC data-sharing framework; +place). Land-title-fee, US health MoU, phone-ban held on the hub/entities
to avoid bloating large concept pages.

**Indexes.** entities-index +10 rows (3 Companies, 4 Government bodies, 1 Initiative, 1 Instrument, 1
Resource); topics-index +BDI on dpi.exchange & geopol.india; places-index BDI row rewritten.

**Registers.** No new gaps/issues/contradictions filed. (India Stack talks are exploratory, not a deal;
the biometric ID "awaiting law" is recorded as current state, not a contradiction.)

**Teardown.** `new/` emptied (41 → raw/); MANIFEST.md discarded from new/ (copy preserved in
new-queue/done/BDI/). Three files renamed for corrected publication dates.

## 2026-07-18 — Batch ingest: BEN (Benin) — Phase-2 sweep (LARGE: 141 sources, chunked)

Benin folder promoted with **141 sources** (~3.5× BDI). Per curator direction, processing in **thematic
chunks over multiple turns** (resumable: unprocessed sources stay in new/). The sweep MANIFEST is
unusually rich — thematic clusters, per-source "why-new" notes, dedup + contradiction flags — and is
used to triage. Existing BEN coverage is already substantial (UXP/Cybernetica, WURI "C'est Moi" 7.7m,
APDP-as-working-DPA, SADX, benin--dpi-id).

**★ Cross-cutting finding (regime change).** The 12 Apr 2026 poll returned a **new government under
President Romuald Wadagni** (succeeding Talon); digital minister **Aurélie Adam Soulé Zoumarou** handed
to **Mahuna Akplogan** (27 May 2026), ministry renamed **Transformation Digitale et Innovation** with an
AI mandate. Recorded on the BEN hub now; agenda attributions to Talon/Zoumarou elsewhere are dated and
will be corrected as chunks touch those pages.

### Chunk 1 — Digital Identity & CRVS (27 sources admitted → raw/)

Net-new over held material: (1) **governance-first ID model** — ANIP is presidency-attached, the single
identity authority, holding population + civil + electoral registers as one integrated system, DG also
National Civil Registrar (ID4Africa 2026); (2) **50-in-5** — Benin the 16th African member (via ASIN);
(3) **Law 2025-12** extends the biometric register to foreigners/Afro-descendants (résidents file,
distinct PINs); (4) the **electoral register under ECOWAS + AU scrutiny** before the 12 Apr poll;
(5) **AFIS** wired into ECOWAS SIPAO (Sep 2025) + ECOWAS biometric card since 2020; (6) the honest
**CRVS gap** — 2021–25 ~2.5m births declared but <1m registered, now met by a maternity **guichet
unique** (76.56% in a 10-maternity pilot vs ~22% nationally). No new entities (all folded into
[[anip-benin]] + [[benin--dpi-id]]). Updated: benin--dpi-id intersection (governance + CRVS + electoral +
law-2025-12 sections), anip-benin, BEN hub (regime change + 3 dated devs + topics/entities), dpi.id
(Benin cell), dpi.registry (Benin CRVS gap). Dedup: the La Nation ANIP-2025-stats pair (01-28/01-29)
admitted as origin coverage corroborating figures already held via aggregators — flagged for lint #7.
Regime-change sources 2026-05-27 + 2026-06-01 admitted here (cited on the hub); remaining handover twins
(05-28/05-29) deferred to Chunk 3.

_Chunks 2–6 pending: land/cadastre + APDP · govtech/strategy/regime · payments · cyber+connectivity ·
AI/skills + finalize._

### Chunk 2 — Land/cadastre + Data protection (19 admitted → raw/, 1 discarded)

New entities: **[[apdp-benin]]** (data-protection authority — President Luciano Hounkponou; 2025 bilan
907 files/75 certs/14 sanctions; AI policy; AFAPDP VP, INPDPA exec, Senegal+Mali conventions;
electoral-roll field-stripping enforcement) and **[[andf-benin]]** (Agence Nationale du Domaine et du
Foncier — e-Foncier national cadastre, 445,695 parcels, décret 2025-176 making the CEC mandatory,
Netherlands PMAF/PPMEC, national addressing + GIS urban registries). Updated gov.protect (Benin
working-DPA bullet), dpi.registry (Benin land-cadastre bullet), BEN hub (2 devs + 2 active topics +
entities; APDP promoted out of "mentioned"). **Discard:** 2026-05-16 Biometric Update DPA piece — exact
relevant-duplicate of held [[2026-05-16 World Bank, African DPAs outline formula for trusted digital identity, DPI]].

### Chunk 3 — Govtech / strategy / regime change / open data (21 admitted → raw/, 2 discarded)

New entity **[[benin-digital-strategy-2031]]** (Vision 2060 ALAFIA digital pillar + Deloitte 2031 roadmap
+ the new Wadagni government's AI-first manifesto: data-localisation law, national supercomputers, AI
"Super App"; GovTech Maturity Index top performer). Updated [[asin-benin]] (trust services / National
Root CA; PASI+PDAIE "urbanising" the state IS; service-delivery scale 1000+/210+, Beninnovation,
e-Commune, GEC, 229 Cadre de Vie; ministerial change Zoumarou→Akplogan). BEN hub: strategy-stack,
budget-transparency (OBS 2025 77/100, 5th globally), PASI/trust-services and Cotonou-Declaration devs;
regime entry extended with the handover twins + Akplogan's AI-readiness rise. Concepts: gov.policy
(Benin strategy stack), dpi.govtech (PASI/services), data.open (OBS budget-transparency front-runner),
gov.regional (Cotonou Declaration single digital market). **Discards:** 2025-09-01 (held dup of
[[2025-09-01 Benin boosts digital inclusion, govt service access with cooperation deals]]); 2025-07-18
Telecom Review (thinnest of the 5-outlet ASIN-MoU cluster, lint #7 prune). Deferred to later chunks:
IFC/FONI (→ payments), OIF D-CLIC / SENUM / Law-and-Tech / Benin-Tunisia / Zoumarou interview (→ AI/skills),
Loko cyber-report interview + sovereign-data (→ cyber).

### Chunk 4 — Payments & digital finance (17 admitted → raw/)

New entities **[[pi-spi]]** (BCEAO UEMOA interoperable instant-payment rail — launched 30 Sep 2025 across
all 8 states, banks+MoMo 100% interconnected by May 2026, connection deadlines extended to 2026–27) and
**[[kkiapay]]** (100% Beninese payment aggregator, 13,000+ merchants). Updated [[bceao]] (PI-SPI union
launch; 2024 e-money report — 248.7m accounts; e-CFA CBDC pilot; Dakar crypto conference; +BEN place),
BEN hub (payments dev + dpi.pay topic + payments entities). Concepts: dpi.pay (Benin/UEMOA cell — PI-SPI,
88% MoMo penetration/11.65m accounts/MTN-led, levy+PLFR, Kkiapay, e-CFA), finance.new (Benin IFC $100m/yr
hub + GSMA XOF 1.2tn/300k-jobs case + FONI). Non-contradiction noted: Benin national inclusion 87.7%
(2023, La Nation citing Digital Frontiers/Financial Afrik) vs UEMOA-wide 72.3% (2023, BCEAO) measure
different populations — dated both, no file. IFC/FONI/GSMA pulled forward from Chunk 3 as finance items.

### Chunk 5 — Cybersecurity + Connectivity (27 admitted → raw/, 1 discarded)

New intersection **[[benin--infra-cybersec]]** (cyber stack since 2020 — CSIRT/PKI/forensic lab, CNIN;
the candid first national vulnerability report 2021–24: 878 vulns/23% critical, 832 password breaches,
SSIE 6–87%; Cyber Africa Forum host 2025+2026; Cyber Incub; EBIOS; 300 police; Interpol Carton Rouge;
2033 sovereign-cloud roadmap; "cognitive sovereignty"). Updated arcep-benin (ARCEP-2025 market snapshot —
88% MoMo penetration, 4000→995 FCFA/GB, BEN/SEN/TGO free roaming, Moov 5G, internet-freedom 4th, Starlink),
mtn-benin (Moov as 2nd 5G operator; +Huawei Future Tech Summit / geopol.china), wardip (Benin WARDIP2
targets: 5.2m broadband/5.4m services/9000 trained/140+ startups). Concepts: infra.cybersec (Benin cell),
infra.connect (Benin cell). BEN hub: cyber + connectivity devs + intersection entity. **Discard:**
2026-04-27 SADX techreviewafrica — held dup of [[2026-04-27 Smart Africa drives cross-border data interoperability through SADX Technical Mission]].
Non-contradiction: 2023 internet-user figures ARCEP 7.0m/55.4% vs GSMA 3.8m/28% (different measurement
bases, both attributed) — dated, no file.

### Chunk 6 — AI, innovation, skills + finalize (25 admitted → raw/, 1 discarded)

New entities: **[[fon-language-voice-ai]]** (first voice-to-voice AI in Fon — Gates/IIDiA/ASIN Regional
Innovation Lab, NVIDIA A100/H100, BEN/SEN/CIV; mobile-money-balance + birth-cert use cases; sovereignty
framing), **[[sniam-benin]]** (National AI & Big Data Strategy 2023–27 — AI Olympiad, strict
AI-in-administration frame, six-country francophone AI-governance framework to the UN Global AI Dialogue;
Benin 145th→SSA top-5 Oxford Insights), **[[seme-city]]** (innovation hub — Sorbonne convention, AI
Olympiad host, GDIZ). Updated tech.ai (Benin cell), capacity.training (Benin skills/e-learning cell),
asin-benin (Code du numérique 8 decrees; eServices CoP→Club DSI). BEN hub: AI, e-learning and
customs/trade devs + AI entities. Also folded the deferred govtech/skills stragglers (Zoumarou interview,
SENUM, Law-and-Tech, Benin–Tunisia/EO Africa Cloud, OIF D-CLIC, Webb Fontaine customs, e-waybill).
**Discard:** 2025-02-14 Webb Fontaine (near-identical 2nd outlet, lint #7 prune).

### BEN batch complete — totals

**141 staged → 135 admitted to raw/, 6 discarded** (2 held-dups: 2025-09-01 ASIN, 2026-04-27 SADX,
2026-05-16 DPA; 3 thinnest/near-identical outlet twins: 2025-07-18 ASIN-MoU, 2025-02-14 Webb Fontaine;
plus the 2026-05-16 already counted). No leads. **9 new entities** (apdp-benin, andf-benin,
benin-digital-strategy-2031, pi-spi, kkiapay, fon-language-voice-ai, sniam-benin, seme-city) **+ 1
intersection** (benin--infra-cybersec) + updates to anip-benin, asin-benin, bceao, arcep-benin, mtn-benin,
wardip and ~13 concept pages. **Cross-cutting:** the Wadagni-government / Akplogan-minister regime change
recorded on the hub. Indexes (entities/places/topics) refreshed. **MANIFEST** preserved in
new-queue/done/BEN/ and removed from new/; new/ empty. No new gaps/issues/contradictions (two measurement
"discrepancies" — internet users, financial inclusion — dated in place, not filed as contradictions).

## 2026-07-18 — Batch ingest: BFA (Burkina Faso) — Phase-2 sweep (LARGE: 126 sources, chunked)

Burkina Faso promoted with **126 sources**. Processing in thematic chunks over turns (resumable). Defining
thread: **digital sovereignty** under the Traoré/AES military government — "zero data abroad", national
datacenters, AES biometric ID, sovereign AI-by-language. Existing coverage already substantial (place hub,
burkina-faso--dpi-id, PACTDIGITAL, ONI/CIB-AES/VENEEM, ARCEP, BFIX, Faso Arzêka).

### Chunk 1 — Sovereignty / infra / datacenters / strategy (29 admitted → raw/)

New entity **[[bf-national-datacenters]]** ("zero data abroad" — two mini datacenters commissioned Jan
2026: 3,000 TB / 7,000 VMs / 16bn FCFA / ~30bn 5-yr savings, run by national teams; national Big Data
Centre ~2028; national hosting is a **PM circular** not the platforms decree, health data needs a
derogation — DG Tinto). Updated bf-ministry-digital-transition (Traoré Semaine-du-numérique sovereignty
framing, 12 chantiers, decree on state platforms, IS-procedures manual, 2025 scorecards 43.61%→85–91% with
the eID tender stall), pactdigital ($170m/5 components, budget doubled to 61bn CFA 2026, safeguards
workshops, WB mid-term confirming PACTDIGITAL+WURI still joint post-ECOWAS). BFA hub: datacenter + Traoré
devs, active topics + entity. Concept: infra.store (BFA cell enriched with specs). Cluster twins
(datacenter ×5 outlets, scorecard ×3, 12-chantiers ×3, SN-2025 ×4) admitted as complementary and attached.

### Chunk 2 — ID / AES card / civil registry / WURI (12 admitted → raw/)

Updated cib-aes (Niger 2nd AES adopter Mar 2026 — confirms CIB-AES is a **bloc-wide** credential with
cross-border chip verification + passport-free travel; Libyan vendor Al Itissan for Niger; Dec-2025
launch twins), burkina-faso--dpi-id intersection (Niger; CRVS quantified — SNEC 64.11%/3.39m acts,
121k IDP acts, RSU 362,698 households/2.2m people; and the **key re-dating: WURI still run jointly with
PACTDIGITAL post-ECOWAS per WB Feb-2026 mid-term**, unique eID stalled on a failed tender), veneem (CRVS
baseline). BFA hub: Niger-AES, CRVS/RSU, border-travel devs. Concepts: dpi.id (BFA cell — bloc credential
+ WURI-still-live), dpi.registry (new BFA cell — CRVS/RSU under security crisis). Travel-declaration
platforms filed under place/dpi.govtech (border DPI), not the ID intersection.

### Chunk 3 — Data protection (CIL) + cybersecurity (11 admitted → raw/)

New entity **[[cil-burkina-faso]]** (data-protection authority — President Dr Halguièta Nassa-Trawina;
loi 010-2004 origin / 001-2021 operative; **no repressive powers** without missing decrees, but elevated
by a **PM-led ministry-by-ministry** campaign making DP sign-off mandatory pre-deployment; the one
enforcement act = a body noticed for **offshore data hosting**; protection fused with the "zero data
abroad" / counter-insurgency framing; first national cybercrime week + Galian prize). gov.protect (BFA
cell), BFA hub (CIL dev + entity). Note: CIL founding-law citation (2004 vs 2021) is supersession,
unreconciled in coverage — recorded, not filed.

### Chunk 4 — Payments / fintech / financial inclusion (15 admitted → raw/, 1 discarded)

Extended [[pi-spi]] (BFA rollout: live-test Aug 2025 → 30 Sep launch → 9 institutions authorised Feb 2026;
80 connected union-wide) and [[faso-arzeka]] (Treasury LANAYA + e-BDT, mandatory certified e-invoice from
1 Jul 2026, e-Dimaakia travel-procurement). dpi.pay BFA cell + BFA hub payments dev covering Orange
Money/BSIC, Telecel pharmacies, Wave, YENGA/KREEZUS, PAIF-PME. **Discard:** 2025-07-03 InTouch UEMOA
e-money licence — `fetch_failed` stub (PDF link, no usable body); flagged for manual re-clip.

### Chunk 5 — Connectivity / telecom / white zones (23 admitted → raw/)

Updated arcep-burkina-faso substantially: the FASU/PACTDIGITAL **"zéro zone blanche"** drive (138 covered
2024 → 750/1,000-locality tranches vs ~2,000 uncovered, 10–12%), operators at 80–90% of 2025 commitments
(Omdia Q3-2025: Orange 14.2m/Moov 12.7m/Telecel 2.8m; Telecel 150→300, Moov ZACA HQ), affordability
(~8.8% GNI vs 2% ITU), IPv6/fibre-oversight/WebSIG observatory, Ghana+AES frequency/roaming harmonisation,
and connectivity-in-a-security-crisis (Gassan 4-yr outage recovered; ETC humanitarian). BFA hub +
infra.connect BFA cell. **Contradiction filed:** `reviews/contradictions/open/bfa-white-zones-completion-horizon`
— the programme's completion horizon is stated as **end-2027** (ministry) vs **2030** (a DG), unreconciled.

### Chunk 6 — AI / govtech services / partnerships (34 admitted → raw/, 1 discarded)

New entity **[[bf-ai-roadmap]]** (National AI Roadmap 2026–2030 — the "no strategy 2025 → validated
roadmap 2026" arc; distinctive **sovereign-AI-by-language** LLM corpus in Mooré/Dioula/Fulfuldé/Gulmancema;
CITADEL $1m, Maison de l'IA, SPIVTEN lawmaker + US youth training; Grand Salon de la Data / SIPEN-UEMOA).
BFA hub: AI, e-services (central portal 1,672 sheets / 17 region portals / 600k criminal records / Dèmè
Sira / SYC@D+RAF cadastre) and partner-diversification (US, UAE Presight/G42, Italy, AfDB) devs. Concept:
tech.ai (BFA cell). **Discard:** 2026-03-23 "steps into the future" — dup of held
[[2026-03-23 Burkina Faso steps into the future with digital investment]].

### BFA batch complete — totals

**126 staged → 124 admitted to raw/, 2 discarded** (1 held-dup: 2026-03-23 steps-into-future ITWeb; 1
fetch-failed stub: 2025-07-03 InTouch UEMOA e-money licence, flagged for manual re-clip). Chunk moves:
29 + 12 + 11 + 15 + 23 + 34 = 124. **3 new entities**
(bf-national-datacenters, cil-burkina-faso, bf-ai-roadmap) + updates to bf-ministry-digital-transition,
pactdigital, cib-aes, veneem, faso-arzeka, arcep-burkina-faso, pi-spi, burkina-faso--dpi-id and ~10 concept
pages. **1 contradiction filed** (white-zones completion horizon 2027 vs 2030). Cross-cutting theme
throughout: **digital sovereignty** under the Traoré/AES government. Indexes refreshed; MANIFEST preserved
in new-queue/done/BFA/; new/ empty. Key re-dating: **WURI still run jointly with PACTDIGITAL post-ECOWAS**
(WB Feb-2026 mid-term).

## 2026-07-18 — Batch ingest: BWA (Botswana) — Phase-2 sweep (LARGE: 115 sources, chunked)

Botswana promoted with **115 sources**. Stable-democracy profile (unlike the Sahel batches): many newspaper
bodies are paywall-truncated (Mmegi/Sunday Standard [CLIP] flags), so synthesis leans on the fuller
trade-journal twins + MANIFEST notes. The sweep opens threads the wiki lacked: Digital Services Act +
Authority, PEMANDU Citizen Wallet, Cybersecurity Act, data centres (Digital Delta / Tlou-Kala /
ChillMine), BOTSAT-1 + Artemis Accords, TCIB payments, and an embraced Huawei relationship.

### Chunk 1 — Govtech / Digital Services Act / strategy (13 admitted → raw/)

New entities **[[digital-services-act-botswana]]** (Digital Services Act + Digital Services Authority +
1Gov-1Citizen "digital-by-default"; e-services 33→52, SD-WAN/600 sites, LAN 13,400+ facilities; recovering
from a P500m e-gov fiasco; Estonia/Irembo blueprints; NDP12 P8.8bn) and **[[pemandu-citizen-wallet]]**
(PEMANDU Digital Ecosystem Model — Citizen Wallet + Cryptographic Card, Botswana's clearest DPI programme).
BWA hub: Digital Services Act, Tshere roadmap (ITU IDI 82.1, 6th in Africa; 81.4% penetration), PEMANDU
devs + entities. dpi.govtech BWA cell.

### Chunk 2 — Data centres / infra / satellite / space (22 admitted → raw/)

New entities **[[digital-delta-data-centre]]** (BoFiNet Tier-III national DC, Gaborone; + the Gulf-linked
Kala DC and the Palapye ChillMine/AAAS solar campus — a national + two energy-anchored private builds) and
**[[botsat-1]]** (BIUST hyperspectral satellite, SpaceX-launched 2025; Botswana 68th **Artemis Accords**
signatory 2026; SKA + data commercialisation). Updated bofinet (P100m citizen-owned gateway, SADC-IXP bid,
MTC-Namibia MoU, new CEO Seleka). BWA hub: Artemis/BOTSAT-1, data-centre landscape, Huawei-embraced/Liquid
devs + entities. infra.store BWA cell. Huawei = the geopol.china thread the government publicly endorses.

### Chunk 3 — Cyber / data protection / sovereignty (12 admitted → raw/)

New entity **[[botswana-cybersecurity-act-2025]]** (Cybersecurity Act Nov 2025 + National Cybersecurity
Authority; APT28/Moobot first incident; 2026 Cyber Drill AI/IoT/quantum; TransUnion 0.9% fraud lowest in
Africa). Updated botswana--gov-protect intersection (first Commissioner **Somolekae** enforcing on NBFIs +
cross-border; Tshere's pledge to **amend the DPA to compel in-country data storage** — "data sovereignty
of the people"; data-colonialism columns) and the IDPC entity. BWA hub cyber/data-sovereignty dev; concept
infra.cybersec BWA cell.

### Chunk 4 — Payments / fintech / crypto (19 admitted → raw/)

New entity **[[botswana-virtual-assets]]** (Virtual Asset Act 2022 — 2 licensed VASPs, no legal tender,
ESAAMLG oversight gaps). Updated tcib (BWA corridor live via FCB/PayInc, inbound from SA/Zimbabwe),
smartswitch (fuller: 1,200+ shops, UEPS accredited by NAM/GHA/ZAF central banks). BWA hub: TCIB/payment-
rails + crypto/digital-tax devs (Remote Service VAT 14% from Jun 2026). dpi.pay BWA cell. NDP12 national
payment switch referenced (source held from Chunk 1).

### Chunk 5 — Connectivity / telecom / roaming / rural (19 admitted → raw/)

Updated bocra (BTC data-price cuts; **One Network Area** roaming expanded to 5 more SADC states, cuts
10–98.6%; MNP started Dec 2025; IPv6 training; ITU/CRASA broadband-mapping GIS; national e-waste strategy;
**RRB 2027–30 seat bid** — Basebi Mosinyi). BWA hub connectivity dev (satellite for the last mile: Starlink
"existential threat" yet school-donated; Liquid/Paratus×Eutelsat; BTC 61 villages; Orange–SEZA smart-zone;
Brastorne rural). Penetration measured variously — **~73% (BOCRA)** vs **81.4% (DataReportal)** — dated
both inline as different methodologies (not filed as a contradiction).

### Chunk 6 — Digital ID / stats / registries / AI / innovation (29 admitted → raw/) + finalize

New entity **[[botswana-tech-fund]]** (VC vehicle; **£50m target vs £10m committed** — contradiction filed).
Updated omang-digital-id-botswana (IDS/ADRN **10-country digital-ID study**, Botswana a case study, colonial-
control-tools lens). BWA hub devs: registries/MIS (manual deeds backlog, SMME registration, LMIS, BAITS
animal-disease dashboard, agri data), cautious election-digitisation (EMS, no EVMs), AI (living-lab vs
lowest-adopter, judges/AI), innovation (Scalar/SBIP, UB VR, hackathon, research agenda) and statistics (new
SG Lekobane). Concepts: tech.ai BWA cell.

### BWA batch complete — totals

**115 staged → 115 admitted to raw/, 0 discarded** (no exact dups surfaced this batch; same-event twins kept
as complementary per the conservative rule — paywalled newspaper bodies rarely fully overlap the fuller
trade-journal accounts). **7 new entities** (digital-services-act-botswana, pemandu-citizen-wallet,
digital-delta-data-centre, botsat-1, botswana-cybersecurity-act-2025, botswana-virtual-assets,
botswana-tech-fund) + updates to bofinet, bocra, tcib, smartswitch, omang, IDPC, botswana--gov-protect and
~8 concept pages. **1 contradiction filed** (Botswana Tech Fund size: £50m target vs £10m committed). The
internet-penetration spread (~73% BOCRA vs 81.4% DataReportal) dated inline as different methodologies, not
filed. Cross-cutting: threads the wiki wholly lacked are now open (Digital Services Act, PEMANDU wallet,
Cybersecurity Act, data centres, BOTSAT-1/Artemis, TCIB, Huawei). Indexes refreshed; MANIFEST preserved in
new-queue/done/BWA/; new/ empty.

## 2026-07-18 — Batch ingest: CAF (Central African Republic) — Phase-2 sweep (38 sources, chunked)

CAR promoted with **38 sources** — a special sweep: **no national press exists** online, so it is a
targeted-search + trade-journal run (per `sweep/ledger.csv`), with a documented **"Pravda mirror" hazard**
(a Russian-aligned aggregator that scraped CAR outlets; 7 hits dropped, originals staged instead). The run
roughly doubles CAR's evidence base. Cross-cutting register actions (penetration contradiction,
geopol.russia vocabulary issue, sweep-method + institutional-pass gaps) handled across chunks / at finalize.

### Chunk 1 — Crypto / Sango / land tokenisation (4 admitted → raw/)

New entity **[[car-crypto-tokenisation]]** (Sango Coin sell-off, $CAR meme coin −90%, tokenised land at
Bossongo by decree, July-2023 resource-tokenisation law; **GI-TOC** reads the track as criminal capture
with Russia-linked figures — the largest single gap this run closed). BWA—CAF hub crypto dev + entity.
Gaps filed: GI-TOC full PDF (binary-artefact download), Le Monde meme-coin launch (bot-blocked, manual clip).

### Chunk 2 — Starlink / satellite (10 admitted → raw/)

New entity **[[starlink-car]]** (US-Embassy-brokered convention Dec 2025 → launch Mar 2026, 27th African
market, DEVEA Centrafrique operator, ~136% GNI/month → roaming suspended Apr 2026 on traceability/security
— "acquire-then-control"). CAF added to global [[starlink]]; BWA—no, CAF hub Starlink dev + entity.
**Contradiction filed:** `reviews/contradictions/open/caf-internet-penetration` — four incompatible values
(wiki ~10.6%, DataReportal ~12%, ITU ~14%, ministry ~30%).

### Chunk 3 — 4G sequence + ARCEP/USF + interconnection (10 admitted → raw/)

caf--infra-connect intersection rewritten: **4G sequence now complete** (Orange licence 2024 + launch May
2025; Moov renewal Jan 2025; Telecel licence Dec 2025 + 4G+ May 2026 — all three licensed, coverage still
lags per GSMA "inexistante"); ARCEP QoS kit + **Universal Service Fund** (loi 18.002, CDCE, 2% revenue);
**South Sudan interconnection** with MTN via a new Central African Digital Development Agency; and CAR's
**first free public Wi-Fi installed by Russian cooperation** (Bocaranga) — the US(Starlink)/Russia(Wi-Fi)/
EU(Orange) crosscut. Place connectivity topic updated (penetration disputed → contradiction file).

### Chunk 4 — e-gov / data centres / e-Tax / Dûnîa / MODERO (8 admitted → raw/)

New entities **[[car-national-datacentre]]** (the "no national DC" line is now 3 threads — live **Huawei
Tier III** + 5 microwave sites + **eLTE police radio**, China-backed; unconfirmed AIAL/Kigali MoU; older
AfDB/CAB procurement) and **[[modero-central-african-republic]]** (EU/CIVIPOL CRVS, **400k birth certs by
2028** — dwarfs the held OIF project; puts the EU on CAR's identity stack). CAF hub: data-centre, MODERO,
e-Tax-re-dating (EU-funded, adoption from Jan 2025) devs; Dûnîa detail folded in (EDEN TiiiT prefinancing,
$9bn Casablanca); Warani startup noted. AfDB/CAB datacentre outcome = a gap lead.

### 2026-07-18 · ingest CAF · Chunk 5 (Digital ID / CNI / HCC + Regional)
Filed 6 sources. **Digital-ID** thread on [[caf--dpi-id]]: the "resolved" 2025 CNI price scandal
**re-dated** — extortion moved to an informal, **religiously-targeted** layer (Ndélé/Paoua/Yaloké:
police serve Christians first, charge Muslims 100k–200k FCFA + father's *and* grandfather's birth
certificate) — [[2026-06-16-cni-extortion-discrimination-ndele-corbeaunews]], the sweep's one piece of
adversarial domestic reporting; a **second document rail**, biometric **passports** resumed under
**EDESEC** (payment via only Ecobank/BGFI) — [[2025-01-29-passeports-biometriques-edesec-reprise-corbeaunews]];
and **identity-as-speech-control** — the **HCC** framed AI **deepfakes** of Touadéra as cybercrime and
proposed tighter **SIM-holder ID** — [[2026-06-12-hcc-deepfakes-ai-disinformation-centranews]] (also
tags [[tech.ai]]). **Regional**: new initiative **[[cardip]]** (World Bank Central African Digital
Integration Program, CEMAC-6; CAR in accession talks) — [[2026-03-06-cardip-world-bank-digital-integration-talks-africabusinessinsight]];
**[[beac]]** updated — PAPSS accession **dated** (Afreximbank 9 Jul 2026; CEMAC banks connected end-2026;
PAPSS now 28 countries — [[2026-07-10-beac-joins-papss-cemac-banks-agenceecofin]]) and a **mobile-money-tax
fight** (governor calls member-state MoMo taxes "régulation parallèle," proposes taxing cash —
[[2026-03-11-beac-mobile-money-taxation-centrafriqueinfos]]). Indexes: 5 new CAF entities added to
entities-index (Initiatives); CAF row refreshed in places-index. Gaps GAP-CAF-002/003/004. No new
contradictions (internet-penetration contradiction already open). Issues 012/013/014 already carry the
CAF sweep-method / Pravda-mirror / geopol.russia recommendations.

### 2026-07-18 · ingest CAF · BATCH COMPLETE
**38 admitted, 0 leads, 0 discards.** No national press (targeted-search + trade-journal sweep); the most
prolific "source" on CAR is a Russian-network mirror (rca.news-pravda.com) — held out, flagged as ISSUE-013.
New entities: [[car-crypto-tokenisation]], [[starlink-car]], [[car-national-datacentre]],
[[modero-central-african-republic]], [[cardip]]. Intersections updated: [[caf--infra-connect]],
[[caf--dpi-id]]. [[CAF]] hub substantially expanded (crypto, Starlink, data-centre, MODERO, CNI racket,
HCC, regional). 1 contradiction open (caf-internet-penetration). MANIFEST → new-queue/done/CAF/. All
CAF source links lint clean (184 unique, 0 unresolved).

### 2026-07-18 · ingest CMR · chunk 1/8 — Identity, CRVS & registries
**14 sources admitted.** New entities: [[elecam]], [[impact-palmares]], [[idcam]],
[[ministry-of-external-relations-cameroon]]. Updated [[dgsn-cameroon]] (IDCAM portal + 10,000 FCFA fee,
48h delivery reality, Garoua 2nd production centre ~2,000 cards/day, sectoral IDs), [[augentic]] (Garoua),
[[bunec]] + [[cameroon-civil-registration-law-2024]] (enactment **23 Dec 2024, 130 sections**; councils'
digital birth certs with full legal worth), [[cameroon--dpi-id]] intersection substantially expanded
(priced gateway; ELECAM election-side register + ~12,000 fingerprint-exclusion harm 2024; Impact Palmarès
consular+printing; taxi/student sectoral IDs; MINDCAF chief non-objection letter). CMR hub roll-up deferred
to finalize. All 14 sources moved new→raw. Note: student/taxi ID and e-Visa cross-cited from later chunks.

### 2026-07-18 · ingest CMR · chunk 2/8 — AI strategy (SNIA) chain
**16 sources admitted.** Re-dated the SNIA: origin **CONIA 25–26 Jun 2024** (not 2025), authored on public
tender by **[[cabinet-danielle-moukouri]]** (a digital-law firm — corrects the wiki's implied "ST Digital
leads"; ST Digital is the infra partner). Rewrote [[snia-cameroon]] with the **7 pillars / 2040 roadmap**
(AI Authority + Presidential Council, "GPT Cameroon" LLM, 15 solar edge nodes, 60k specialists/40% women,
12k jobs, +0.8–1.2% GDP) and benchmarks (AFD 30/100 Jan 2025; ITU 46.3/100, 30th of 42, 2025). New entities:
[[conia]], [[cabinet-danielle-moukouri]], [[ministry-of-posts-and-telecommunications-cameroon]]. New
intersection **[[cameroon--tech-ai]]** (policy chain + societal contestation: CENC bishops, Oct-2025
campaign, Camrail, SME framing). Added CMR index line to [[tech.ai]] concept. Provisional re-dating is a
tier-2 action (digest). All 16 moved new→raw. CMR hub roll-up deferred to finalize.

### 2026-07-18 · ingest CMR · chunk 3/8 — Infrastructure sovereignty & connectivity
**34 sources admitted.** New entities: [[camtel]] (now hubbed — market split Camtel 2.67%/Orange 50.08%/
MTN 47.2%, wholesale-profitable gatekeeper), [[art-cameroon]] (ART/TRB, **TRB=ART**, fines + QoS +
2024 Observatory 18% growth), [[cenadi]] (269-page DC study — damning base), [[zamengoe-data-centre]]
(CAMTEL, "largest in C.Africa/Tier III" **unverified**), [[artac]] (Central African **data-residency**
position), [[anthony-same]] (person, ST Digital founder), [[innovendi-data-technologies]],
[[avanti-communications]]. Updated [[st-digital]] (founder + infra-partner-not-author correction),
[[china-eximbank]] (**Phase IV fibre ~$195m / decree 6 Mar 2026**), [[ethio-telecom]] (CAMTEL MSA),
[[beac]] (Zamengoe hosting interest). New intersections [[cameroon--infra-connect]] +
[[cameroon--infra-store]]. **CAMTEL/CBC figures reconciled** (44.884bn FCFA phase-1 syndicated vs $81.2m
facility — tranche-vs-total, both kept dated; not a contradiction — MANIFEST Flag 4). **ARTAC vs CAMTEL-AWS
treated as policy-tension analysis on the infra-store intersection, not a contradiction** (Flag 14).
Filed **ISSUE-015** (unverified Socadel/Eneo rename — held as Eneo). All 34 moved new→raw.

### 2026-07-18 · ingest CMR · chunk 4/8 — Cybersecurity
**8 sources admitted.** Rebuilt [[antic-cameroon]]: **DNS sovereignty** (`.cm` DNSSEC-signed 8 Apr 2025;
validation 56.60% Dec 2025, Orange Cameroun 2.75%; targets 98%→100% DNSSEC + 100% RPKI by 2026; IPv6 push),
CIRT handover dated 20 Jan 2026 (FCFA 735m+, PATNUC/WB — third account of the held event, complementary
not duplicate), >19m threats blocked 2024, fintech cyber workshop. New entity
[[cameroon-cybercrime-law-2010]] (Law 2010/012 — rights critique). New intersection
[[cameroon--infra-cybersec]] holding **both faces**: capability/sovereignty build vs rights counterweight
(Paradigm Initiative/Civic Watch DIPES critique; 23 Oct 2025 election shutdown; XAF39bn urban video-
surveillance loan). All 8 moved new→raw. infra.cybersec concept by-place line deferred to finalize.

### 2026-07-18 · ingest CMR · chunk 5/8 — Payments & fintech
**12 sources admitted.** New entities: [[intouch]] (state-granted online-gaming payment monopoly),
[[kiroo-games]] (the harmed studio — 10+ days no payments), [[flutterwave]] (first BEAC-licensed fintech
entry, via Ecobank), [[afriland-first-bank]] (Visa entry), [[bankcompar]] (CNEF price-transparency),
[[ministry-of-territorial-administration-cameroon]]. Added Blue Money to [[camtel]]. New intersection
[[cameroon--dpi-pay]] (MoMo duopoly + Camtel Blue Money; GIMACPAY 600bn FCFA + BEAC/PAPSS CEMAC;
Visa vs sovereign rails; InTouch monopoly harm). All 12 moved new→raw.

### 2026-07-18 · ingest CMR · chunk 6/8 — E-government & data exchange
**20 sources admitted.** New entities: [[camcis]] (customs/IMEI device-registry regime — **enforcement
did NOT land on 25 May 2026**, operators refused; MANIFEST Flags 12/16, CAMCIS≠CAMCIH), [[digi-cor]]
($163m local-govt digitisation; 68.5% of councils lack networks), [[coleps]] (KOICA $12M e-procurement),
[[proxigab]] (SME platform). New intersection [[cameroon--dpi-govtech]] (customs/device-registry chain;
COLEPS/PROXIGAB/DGI/e-Visa/RF-eTrust; DIGI-CoR + NW councils + Douala×Huawei cadastre; urban-data /
Nigeria-model / Korea-cooperation). Korea partnership rides on existing ISSUE-014 (no geopol.korea slug).
All 20 moved new→raw.

### 2026-07-18 · ingest CMR · chunk 7/8 — Policy, statistics & open data
**5 sources admitted.** **Resolved the data-protection-law question** (MANIFEST Flag 3): the Minpostel's
Apr-2025 National Assembly speech names the enacted **Loi n°2024/017 of 23 Dec 2024** — the Nov-2024 draft
became law; wiki was stale. New entity [[cameroon-data-protection-law-2024]]; updated
[[cameroon-civil-registration-law-2024]] note (paired 23-Dec-2024 statutes, no longer "disputed"). New
entities [[ins-cameroon]] (Open SDG platform Sep 2025 + RGPH 2026 census — 4th since 2005, satellite +
MoMo-paid enumerators), [[psnsn-cameroon]] (digital-health plan ~29bn FCFA, answers held 2025 gap). Filed
**GAP-CMR-001** (gazette texts of Loi 2024/016 & 2024/017) and **GAP-CMR-002** (Biya CNI decree N°2025/059).
Citizen-budget (East) source to be cited on the hub at finalize. All 5 moved new→raw.

### 2026-07-18 · ingest CMR · chunk 8/8 — Skills, innovation & platform economy
**16 sources admitted, 2 pruned (lint #7).** New entities: [[mtn-cameroon]] & [[orange-cameroun]] (local
opcos — market leaders, sectoral-ID/road-safety verticals; Orange Digital Center Maroua), [[yango]]
(Yandex/Russia — rides ISSUE-014 geopol gap), [[university-yaounde-ii]] (ART-funded digital-governance
chair), [[camcih]] (climate hub — **CAMCIH≠CAMCIS**). Added Camtel public-service/skills section
(baccalaureate exams, WTO connectivity, 700 talents/MINESUP). **Pruned**: 2026-04-13 MTN-engage
(relevant-dup of kept 2026-04-16 ART Douala inspections); 2026-01-15 baccalaureate PR-wire (relevant-dup
of kept 2026-01-19 TechAfrica). DIW/AI-youth/SNK/agro-met + chunk-7 citizen-budget to be cited on the hub
at finalize. All 16 moved new→raw. **`new/` now empty of sources — 125 admitted, 2 pruned = 127.**

### 2026-07-18 · ingest CMR · BATCH COMPLETE
**125 sources admitted, 0 leads, 0 discards, 2 pruned (lint #7 relevant-duplicates).** From 127 staged
(55 newspaper + 72 trade-journal, window 2025-01-01→2026-07-17). CMR was the wiki's first substantial
national/trade-press coverage. **~38 new entities** (companies: [[camtel]], [[mtn-cameroon]],
[[orange-cameroun]], [[impact-palmares]], [[cabinet-danielle-moukouri]], [[innovendi-data-technologies]],
[[avanti-communications]], [[intouch]], [[kiroo-games]], [[flutterwave]], [[afriland-first-bank]],
[[yango]]; orgs [[artac]], [[university-yaounde-ii]]; gov-bodies [[elecam]], [[art-cameroon]], [[cenadi]],
[[ins-cameroon]], [[ministry-of-external-relations-cameroon]], [[ministry-of-posts-and-telecommunications-cameroon]], [[ministry-of-territorial-administration-cameroon]]; initiatives [[conia]],
[[zamengoe-data-centre]], [[digi-cor]], [[camcih]], [[bankcompar]]; person [[anthony-same]]; resources
[[idcam]], [[camcis]], [[coleps]], [[proxigab]]; instruments [[cameroon-data-protection-law-2024]],
[[cameroon-cybercrime-law-2010]], [[psnsn-cameroon]]). **7 new intersections**: [[cameroon--tech-ai]],
[[cameroon--infra-connect]], [[cameroon--infra-store]], [[cameroon--infra-cybersec]], [[cameroon--dpi-pay]],
[[cameroon--dpi-govtech]] (+ expanded [[cameroon--dpi-id]]). CMR hub fully rewritten. Provisional
resolutions (tier-2, digest): SNIA re-dated to CONIA Jun 2024 + author = Cabinet Danielle Moukouri;
data-protection law confirmed enacted (Loi 2024/017, 23 Dec 2024); CAMTEL/CBC figures reconciled;
ARTAC-vs-AWS filed as hub analysis not contradiction. New: ISSUE-015 (Socadel/Eneo rename);
GAP-CMR-001/002. Indexes updated (entities/places). MANIFEST → new-queue/done/CMR/. Ingested thematically
in 8 chunks. All 125 source links lint clean (0 unresolved, 0 orphans).

### 2026-07-18 · ingest CIV · chunk 1/9 — Digital ID, CRVS & ONECI
**14 sources admitted.** New intersection [[civ--dpi-id]]; new entity [[beyon-connect]] (Bahraini
OneID/OneBox — 3rd foreign ID vector). Updated [[oneci]] (myONECI+ CNI app, e-stamps, **RNPP sold to
banks as a KYC utility** via SocGen, ID4Africa 2026; **on-time birth registration falling 66.8%→55.4%**
counter-current), [[wuri-programme]] (CIV social-eval restitution, 10 sous-préfectures, CMU linkage),
[[maposte]] (digital post boxes mandatory 1 Mar 2026). IOM MIDAS border (Kalamon CIV-BFA, Japan-funded,
ANSSI/DST). All 14 moved new→raw. Hub roll-up deferred to finalize.

### 2026-07-18 · ingest CIV · chunk 2/9 — GovTech, e-justice & interoperability
**22 sources admitted.** Expanded [[civ--dpi-govtech]]: **e-Justice arc dated end-to-end** (30 Jan 2025
2-court pilot → 39 tribunals 30 Jun 2026; corrects the hub's compression — 18 Jun 2025 was the *decree*,
not the launch); UXP interop corroborated + Estonian lineage (Cybernetica/12 pilots; Estonia DPI study);
GUCE trade single-window ↔ DGI data exchange; **232-service PADCI mapping**; e-mining cadastre, Tradepost,
transport platform. New entities [[emy-101]] (govt AI chatbot), [[guce-ci]] (trade single window). SDSI
re-dated 2025-12-16 (second outlet). All 22 moved new→raw.

### 2026-07-18 · ingest CIV · chunk 3/9 — Data governance & ARTCI
**18 sources admitted.** Rebuilt [[artci]] (was static since 2024): **new Regulatory Council under Roger
Félix Adom** (May 2026), **[[certinum]]** DP-compliance platform (live 2 Jul 2026), operator compliance +
postal data-reporting mandates, ITU **TDAG chair (Bessou)**, WSIS "data-driven regulation" doctrine,
rights outreach, e-transactions law (Ord. 2017 amendment). New entities [[certinum]], [[caidp]]
(access-to-info authority — the data.open anchor). All 18 moved new→raw.

### 2026-07-18 · ingest CIV · chunk 4/9 — Cybersecurity & ANSSI
**10 sources admitted.** New entity [[anssi-cote-divoire]] (the hub's cybersecurity institutional gap):
created by decree 30 Oct 2024, launched Feb 2025, centralises PLCC/CI-CERT/Alertes100; **Ordinance
2024-950 moved the cyber mandate from ARTCI to ANSSI** (ratified Apr–Jun 2025); cybercrime **12,100
dossiers / ~7bn FCFA**, Kaspersky **27m attacks (2024)**; SOC + national RSSI/CISO network (2026);
Togo cooperation. All 10 moved new→raw.

### 2026-07-18 · ingest CIV · chunk 5/9 — AI & national strategy stack
**21 sources admitted.** New intersection [[civ--tech-ai]]; new entities [[ministry-of-digital-transition-cote-divoire]] (MTND — Djibril Ouattara replaced Konaté Jan 2026; 7 priorities), [[civ-ai-strategy]]
(**912bn FCFA, 15 objectives, 109 projects**; UNESCO RAM; 13 Mar 2025 handover), [[civ-data-governance-strategy]] (2030), [[parae]] (~49bn incl. data centre), [[artefact]] (Abidjan francophone AI hub).
US + Gulf ([[g42]]/Presight MoUs) courted side by side; AI university (PND 2026-30); "African AI by
Africans" at UN dialogue. **Yamoussoukro seminar date discrepancy noted** (8 Apr LI vs 12 Apr hub — 4-day,
unresolved, recorded inline not as a formal contradiction). All 21 moved new→raw.

### 2026-07-18 · ingest CIV · chunk 6/9 — Data centres, cloud & US-EXIM sovereignty
**21 sources admitted.** New intersection [[civ--infra-store]] — **the batch's biggest find: US EXIM
anchors Ivorian "digital sovereignty"** ($66m National Data Centre = first EXIM DC in SSA, via Cybastion,
displacing a Chinese bidder; +$47m Commerce; $100m→$170m CTEP; $550m package). Adds **geopol.usa +
geopol.china to CIV** (hub had geopol.eu only). New entities [[exim-bank-usa]], [[national-data-centre-civ]],
[[vitib]], [[cloudoor]], [[digital-city-civ]]; big [[cybastion]] CIV section. Competing VITIB cluster
([[st-digital]] Tier III + OVHcloud + NVIDIA GPU; Raxio MoU; VITIB $311m India). All 21 moved new→raw.

### 2026-07-18 · ingest CIV · chunk 7/9 — Connectivity, Starlink & universal access
**32 sources admitted.** New intersection [[civ--infra-connect]]; new entities [[ansut]] (universal-service
agency), [[civix]] (3rd IXP), [[africa-bb-maps]] (broadband map), [[mtn-cote-divoire]]. **2026 pivot:
Starlink 12-month licence (live Jul 2026) + 5G**; Orange/MTN Eutelsat KONNECT satellite vs Starlink;
ANSUT/PNCR rural fill (smartphone 41%→80% by 2030); ARTCI traffic-localisation (CIVIX/peering/IPv6);
Via Africa + transfrontier fibre + Plateau shared-duct + Moov A2P exclusivity. Figures: 95% coverage,
~130% penetration, 38,000km fibre. All 32 moved new→raw.

### 2026-07-18 · ingest CIV · chunk 8/9 — Payments & digital finance
**10 sources admitted.** New intersection [[civ--dpi-pay]]; new entities [[tresorpay-tresormoney]]
(Treasury G2P/P2G rail), [[cdc-ci]] (state fund taking fintech equity), [[green-pay]] (fintech),
[[djogana-pay]] (4th BCEAO e-money licence EME.CI.025/2025). **UEMOA payment interoperability mandatory
30 Jun 2026** (BCEAO instruction); Visa in discussion; OQSF rating system. All 10 moved new→raw.

### 2026-07-18 · ingest CIV · chunk 9/9 — Skills, innovation, sectoral MIS & investment
**39 sources admitted.** New intersection [[civ--tech-innovate]] (catch-all); new entities
[[ivoire-tech-forum]] (100bn fund, 250bn invested/2,965 jobs), [[geoportail-grand-abidjan]]. **Adds the
`geopol.china` layer** the hub lacked: Huawei ICT competition + China students, Huawei-run Orange GNOC
(10 yrs), govt super-app pitch, Smart Agriculture (cocoa/EU deforestation). Orange×UNDP skills MoU (5
outlets); French Tech education pact; Yango continental HQ; VivaTech/African Digital Week; EMIS/SODECI/
health-MIS; 2026 budget CFA 83.275bn (+37%); digital 6%→15% GDP by 2030. All 39 moved new→raw.
**new/ now empty of sources — 187 admitted, 0 pruned.**

### 2026-07-18 · ingest CIV · BATCH COMPLETE
**187 sources admitted, 0 leads, 0 discards, 0 pruned.** From 187 staged (84 newspaper + 103 trade-journal,
window 2025-01-01→2026-07-17) — CIV's first national-press provenance. **26 new entities** + **7 new
intersections** ([[civ--dpi-id]], [[civ--tech-ai]], [[civ--infra-store]], [[civ--infra-connect]],
[[civ--dpi-pay]], [[civ--tech-innovate]] + expanded [[civ--dpi-govtech]]). CIV hub fully rewritten.
**Headline: US EXIM anchors Ivorian "digital sovereignty"** ($66m→$170m National Data Centre via Cybastion,
first EXIM DC in SSA) — **adds geopol.usa + geopol.china to CIV** (hub had geopol.eu only). Provisional
re-datings/corrections (tier-2, digest): e-Justice arc (18 Jun 2025 = decree not launch; 2→39 courts);
data-protection/ARTCI now dynamic (new Council + CERTINUM); AI strategy costed (912bn). **Counter-current
recorded**: on-time birth registration falling 66.8%→55.4%. **Minor unresolved date discrepancy**:
Yamoussoukro seminar 8 Apr (LI) vs 12 Apr (hub) — noted inline, not a formal contradiction. Indexes updated
(26 entities; CIV places-index row). MANIFEST → new-queue/done/CIV/. Ingested in 9 thematic chunks. All 187
source links lint clean (0 unresolved, 0 orphans).

### 2026-07-18 · ingest COD · chunk 1/8 — Digital ID (Trident/RDC-PASS + ONIP + passports)
**18 sources admitted.** **RDC-PASS launch CONFIRMED (13 Jun 2026, two outlets)** — closes the hub's
"⚠ confirm launch" flag; $97.1m valuation, Trident raised only $2.6m, $800m Ghana JV. Expanded
[[drc--dpi-id]]: full Trident chain dated (Dec 2024→13 Jun 2026); the 2025 DRCPass *denial* clarified as a
different moment; **ONIP physical-card track as a securitised life-course register** (CENI→ONIP file
handover; Shabani rationale; new PPP partner; 2026 ID bill mandating civil-registry/migration/health
interoperability); **IDEMIA re-dated** ($697m→$1.2bn); **ENCORE quantified** ($250m, 118k cards, 26
provinces). New entity [[dermalog]] (passports, $48m, price cut to $75). Updated [[rdc-pass]], [[onip-drc]].
All 18 moved new→raw.

### 2026-07-18 · ingest COD · chunk 2/8 — Data governance, law, policy & census
**8 sources admitted.** Updated [[drc-digital-code]]: **DPO network launched 12 Mar 2026** (first concrete
step under Art. 262; precedes the still-planned DPA), Livre III now governs DP "extensively" (Henrotte),
and the Code **invoked as a repression instrument** (4-tier document classification). New entities
[[rgph2-drc]] (census, first since 1984; enumeration Jul 2027), [[sisag-drc]] (govt MIS + Kibassa's
2035 sovereignty doctrine; $100bn-flows claim flagged unsourced), [[access-to-information-bill-drc]]
(recevable 27 Mar 2026). All 8 moved new→raw.

### 2026-07-18 · ingest COD · chunk 3/8 — Conflict outages & shutdowns
**4 sources admitted.** New intersection [[drc--infra-connect]] (holds all COD connectivity). **AFC/M23 war
as connectivity-destroyer**, mobile money the first casualty: nationwide X/TikTok restriction (Feb 2025,
first shutdown item); Walikale (generator-fuel mechanism); Rutshuru/Masisi month-long blackout;
Rubaya coltan-hub shelling. All 4 moved new→raw.

### 2026-07-18 · ingest COD · chunk 4/8 — Starlink, satellite & universal access
**7 sources admitted.** Appended to [[drc--infra-connect]]. **Starlink licensed May 2025** (ARPTC reversing
its Mar-2024 ban; ACAJ frames it antitrust; 150 kits as Ebola health-data infra); new entities
[[monacosat-drc-satellite]] ($400m sovereign satellite, DRC–Monaco MoU) and [[fdsu-drc]] (universal-service
fund, dormant→first Nkamba sites 30 May 2026). All 7 moved new→raw.

### 2026-07-18 · ingest COD · chunk 5/8 — Towers, fibre, data centres & spectrum
**13 sources admitted.** Completed [[drc--infra-connect]]. New entities [[helios-towers-drc]] (~3,000
towers; 32m→39m self-reported claims flagged), [[genew-technologies]] (**$1.5bn Congo River fibre** — first
big Chinese entry), [[acix-drc]] (first distributed IX, DE-CIX), [[paratus-group]] (Goma-Mombasa G2M).
Gap quantified (30.79% mobile/<0.02% fixed 2023; GSMA 2026 dataset); états généraux; 5G consultation;
Orange-Vodacom rural solar JV; Raxio/OADC compliance. All 13 moved new→raw.

### 2026-07-18 · ingest COD · chunk 6/8 — Payments & digital finance
**14 sources admitted.** Expanded [[drc--dpi-pay]]. New entities [[banque-centrale-du-congo]] (BCC —
**de-dollarisation: no foreign cash from 9 Apr 2027**; 58% access/25-30% bancarisation), [[mainmoney]]
(palm-vein biometric, Visa/Keyo), [[flash-drc]] (Mastercard prepaid cards), [[multipay-drc]] (2015 first
interbank, historical baseline). Bottom-up interoperability (Ecobank Auto-Allocation Airtel+Orange;
FirstMonie; Transforme/Paycode MFI-to-switch). USD rails (FirstBank) vs de-dollarisation tension flagged.
Mobile-money count divergence (24/29/30/35m) noted. All 14 moved new→raw.

### 2026-07-18 · ingest COD · chunk 7/8 — AI, cybersecurity, skills & innovation
**12 sources admitted.** Expanded [[drc-national-ai-strategy]]: **AI already in the classroom** (marked the
2024-25 Examen d'État; e-Diplôme; Malu/ADIS argues endogenous>foreign); **[[bokeli-fogec|Bokeli]]** live AI
state platform (Quantum Vertex); skills ground-truth (Femintech 41 brevets vs 250k goal); **$500m WB/AFD**
transformation + "AI Sphere"; **first DRC–China police accord naming cybercrime** (May 2026). New entities
[[adis-drc]], [[bokeli-fogec]]. Added DRC to [[cybastion]] (Washington MoU, Apr 2026). All 12 moved new→raw.

### 2026-07-18 · ingest COD · chunk 8/8 — E-gov & sectoral / state-function
**14 sources admitted.** New intersection [[drc--dpi-govtech]] (catch-all). Names the **National
e-Government Strategy 2025–2030** (DPI-consultant search; RDC-PASS March target slipped). New entities
[[rsu-drc]] (2nd population register), [[esursi-portal]] (higher-ed portal + digital library),
[[onem-mikuba]] (Enabel skills DB), [[ticef-drc]] (ICT-for-education policy). E-Contrôle, IGF-digital,
Go Pass/TRAFIGO, Kinshasa drones/KIN ALERTE, **WFP biometric cards routing aid around bank closures in
AFC/M23 zones**, SCPT near-insolvency, UNESCO. Six rdc-monde items are date_source:proxy (flagged).
All 14 moved new→raw. **new/ now empty — 90 admitted, 0 pruned.**

### 2026-07-18 · ingest COD · BATCH COMPLETE
**90 sources admitted, 0 leads, 0 discards, 0 pruned.** From 90 staged (60 newspaper + 30 trade-journal,
window 2025-01-01→2026-07-17) — COD's first national-press provenance. **20 new entities** + **3 new
intersections** ([[drc--infra-connect]], [[drc--dpi-govtech]] + expanded [[drc--dpi-id]]/[[drc--dpi-pay]]).
COD hub updated. Highlights: **RDC-PASS launch confirmed (13 Jun 2026)** — closes the hub flag; **AFC/M23
war documented as connectivity-destroyer**; **BCC de-dollarisation** (no foreign cash from 9 Apr 2027);
Genew **$1.5bn Congo River fibre** (first big Chinese entry); ONIP securitised life-course register; DPO
network; RGPH-2 census. Re-datings/corrections (tier-2): IDEMIA $697m→$1.2bn; ENCORE quantified. Figure
caveats recorded inline as dated claims (Helios 32m→39m; $100bn flows; mobile-money 24/29/30/35m). Six
rdc-monde items are `date_source: proxy` (flagged). Indexes updated (20 entities; COD places-index row).
MANIFEST → new-queue/done/COD/. Ingested in 8 thematic chunks. All 90 source links lint clean (0
unresolved, 0 orphans).

### 2026-07-18 · ingest COG · chunk 1/6 — Data centre & digital sovereignty
**5 sources admitted.** Updated [[congo-national-data-centre]]: **timeline superseded** (75%→80% *stalled on
gov non-payment*, AfDB threatened to walk→>90%→inaugurated per minister Jan 2026); Côte-Matève regional DC
(ONG Pratic MoU). **Filed contradiction** `congo-datacentre-afdb-financing` — held **$57m AfDB/$72.8m** vs
Les Dépêches' recurring **$13m AfDB** (plausibly total-project-incl-fibre vs building-only; both held dated).
All 5 moved new→raw.

### 2026-07-18 · ingest COG · chunk 2/6 — CARIA, AI strategy, cybersecurity & ANSSI
**14 sources admitted.** New entities [[caria-congo]] (PATN keystone; **built with China's CAICT AND
Russia's Sberbank debt-swap for phases 3-4** — dual-patron; training platform), [[anssi-congo]] (under
Conseil national de sécurité; $1.3m budget, ARPCE-ANSSI MoU, 13th Cyberdrill, first C.African cyber
conference), [[congo-ai-strategy]] (underway May 2026, UNDP; **lingala/kituba digitisation**). ARPCE
regulation seminars (EU/HEC advisers) asserted DC-inaugurated + 5G-launched (primaries needed).
Russia/CARIA rides open **ISSUE-014** (no geopol.russia slug). All 14 moved new→raw.

### 2026-07-18 · ingest COG · chunk 3/6 — Connectivity & divides
**22 admitted, 1 pruned (lint #7 thin twin).** New intersection [[congo--infra-connect]]; new entities
[[congo-telecom]] (incumbent, ISO cert, transit-hub bid), [[fasuce-congo]] (universal-access fund).
**ARPCE enforces** (mise en demeure MTN/Airtel; elections roaming); **structural cost problem** (backhaul
spectrum 5% vs 0.5% SSA — 10×; ~80% rural no 4G); PATN underdelivery (20/76 sites; EU/EIB FCFA 27bn limb;
66-vs-76 reconciled); WACS single-cable exposure; **satellite = Eutelsat/OneWeb, not Starlink**; China
vectors (Wing Wah private net, BeiDou CFCO). **GSMA report re-dated to 22 Jun 2026** (held source to be
re-dated at finalize). All 22 moved new→raw.

### 2026-07-18 · ingest COG · chunk 4/6 — Digital identity & registries
**5 sources admitted.** Expanded [[congo--dpi-id]]: secure-ID workshop detailed (Thales/Laurent Jutard;
**CARIA the PATN keystone**); **uncollected backlog** (10,506 CNI + 25,549 NIU in Pointe-Noire alone);
**SIM–ID linkage not enforced** (only Kinkala/Djambala compliant; SIMs sold without ID across major towns)
— hard evidence against the NIU/SIM-linkage story. All 5 moved new→raw.

### 2026-07-18 · ingest COG · chunk 5/6 — Payments & financial inclusion
**8 sources admitted.** New intersection [[congo--dpi-pay]]; new entities [[gozem-congo]] ($30m Series B;
**Yango exited Brazzaville**), [[kerry-payments-congo]] (PawaPay VAS aggregator licence — unified API), 
[[digipay-congo]] (Belmoney FR/BE remittance corridor). MoMo duopoly (MTN 74.5%/Airtel 25.5%; fee creep;
bancarisation 17%→7%; 61%-vs-19% metric clash noted); SIM-terminal import tax (1 Jun 2026, framed as
*funding* connectivity — inverts GSMA). All 8 moved new→raw.

### 2026-07-18 · ingest COG · chunk 6/6 — Statistics, open data, governance & ministry
**8 sources admitted.** New entities [[congo-data-governance-strategy]] (**UNECA, 2-9 Jun 2026** — the
instrument GSMA recommended; the batch's most significant governance find), [[ins-congo]] (ILO quarterly
labour survey; BEAC BoP collapse 98%→41.81%), [[cntr-congo]] (fiscal-transparency ECTR platform). Updated
[[congo-digital-strategy-2030]] (**new minister Frédéric Malik Nguema Nzé** supersedes Ibombo; 9-point
roadmap; EGDI 166th, awaiting decree) and [[national-personal-data-protection-commission-congo]] (legal
instruments: Decree 2025-538, Law 29-2019; magistrates enforcement layer). All 8 moved new→raw. **new/
empty — 63 admitted, 1 pruned.**

### 2026-07-18 · ingest COG · BATCH COMPLETE
**62 sources admitted, 0 leads, 0 discards, 1 pruned.** From 63 staged (23 newspaper/ADIAC + 40 trade-
journal). **~17 new entities** + **2 new intersections** ([[congo--infra-connect]], [[congo--dpi-pay]] +
expanded [[congo--dpi-id]]). COG hub updated. Highlights: **new minister Frédéric Malik Nguema Nzé**
(supersedes Ibombo); **National Data Centre stalled on gov non-payment→inaugurated**; **CARIA built with
China (CAICT) AND Russia (Sberbank debt-swap)**; ANSSI/AI-strategy (lingala/kituba); ARPCE enforcement vs
structural rural-cost problem; satellite = Eutelsat/OneWeb not Starlink; UNECA data-governance strategy.
**Mechanical fixes (tier-1):** re-dated + renamed the held GSMA source **2026-01-01(proxy)→2026-06-22**
(links updated). **Filed contradiction** `congo-datacentre-afdb-financing` ($13m vs $57m AfDB). Russia/CARIA
rides open **ISSUE-014** (no geopol.russia slug). Figure caveats recorded inline (66-vs-76 PATN sites;
61%-vs-19% mobile internet). Indexes updated (11 entities; COG places-index row). MANIFEST → new-queue/
done/COG/. Ingested in 6 thematic chunks. All 62 source links lint clean (0 unresolved, 0 orphans).
Note: COG paper's real article domain is **adiac-congo.com** (ledger correction for the human).

### 2026-07-18 · ingest COM · chunk 1/4 — Digital identity & registries
**10 sources admitted.** New intersection [[com--dpi-id]]; new entities [[amecc-comoros]] (civil-registry
+ **PIN** under 27 Jul 2023 law), [[anec-comoros]] (civil-status agency decree), [[rsu-comoros]] (WB social
register, 62k households). Updated [[genkey]] (now COM: **replaced Semlex, repatriated biometric data from
Belgium to domestic storage** — data-sovereignty fact). All 10 moved new→raw.

### 2026-07-18 · ingest COM · chunk 2/4 — Connectivity, ccTLD, 5G & telecom investment
**9 sources admitted.** New intersection [[com--infra-connect]]; new entities [[comores-telecom]]
(incumbent, 5G WTTX), [[comoros-cctld-km]] (**.km ccTLD transferred to ANADEN** — sovereignty). Dual 5G
launch (Yas/Huawei + CT); **Starlink banned pending licence (ANRTIC, 12 Jun 2025)**; foreign-financed
build (AXIAN $82m 4G, Yas €25m IFC, NEXT 2030). All 9 moved new→raw.

### 2026-07-18 · ingest COM · chunk 3/4 — Payments & digital finance
**9 sources admitted.** New intersection [[com--dpi-pay]]; new entities [[komorpay-comoros]] (BCC-branded
stack: KomorPay/Komor Switch/Mali Ya Wakazi, presidential launch May 2026), [[komoralink-comoros]] (private
B2B, Kartapay/CCI). PayLogic switch dated end-to-end (award Feb→go-live Aug 2025; internet 35.7%/mobile
77.6%); BCC×Banque de France seminar; **AXIAN Decentralised Digital Financial Institution licence** (BCC
first) + AXIAN-Mastercard cards. All 9 moved new→raw.

### 2026-07-18 · ingest COM · chunk 4/4 — E-gov, AI, skills, EMIS & census
**13 sources admitted.** New intersection [[com--dpi-govtech]]; new entities [[technopole-numerique-comoros]]
(Huawei-built, $4.09m/2000 youth), [[e-administration-comoros]] (EU/Expertise France — 2nd donor track vs
AfDB PADEC), [[e-msomo-comoros]] (EdTech + student ID), [[rgph5-comoros]] (5th census, launched Jun 2026).
1st national AI Forum; tax téléprocédures; measles ODK. PADEC €9.51m vs held $10.4m = same project dated
differently. All 13 moved new→raw. **new/ empty — 41 admitted, 0 pruned.**

### 2026-07-18 · ingest COM · BATCH COMPLETE
**41 sources admitted, 0 leads, 0 discards, 0 pruned.** From 41 staged (27 newspaper Al-Watwan/La Gazette +
14 trade-journal). **~15 new entities** + **4 new intersections** ([[com--dpi-id]], [[com--infra-connect]],
[[com--dpi-pay]], [[com--dpi-govtech]]). COM hub updated. **Not thin** — Comoros highly productive for its
size. Highlights: **GenKey replaced Semlex and repatriated biometric data from Belgium to domestic storage**
(data-sovereignty event); **.km ccTLD → ANADEN**; dual 5G + **Starlink ban**; PayLogic dated + KomorPay BCC
stack + **AXIAN DFI licence** (regulated-digital-finance first); AMECC civil-registry PIN; Huawei Technopole;
RGPH-5 census. No hard contradictions. PADEC €9.51m vs held $10.4m recorded as same project dated
differently. Ledger note for the human: COM paper domain is **adiac**-style — Al-Watwan (alwatwan.net) +
La Gazette (lagazettedescomores.com). Indexes updated (11 entities; COM places-index row). MANIFEST →
new-queue/done/COM/. Ingested in 4 thematic chunks. All 41 source links lint clean (0 unresolved, 0 orphans).

### 2026-07-18 · ingest CPV · chunk 1/5 — Digital identity, CRVS & data protection
**5 sources admitted.** New intersection [[cabo-verde--dpi-id]]; new entity [[autentika-cabo-verde]]
(CRVS-ID interoperability, **UIN at birth → ~99% birth registration in 5 yrs**, ID4Africa 2026). Updated
[[cnpd-cabo-verde]] (decade review; Convention 108/Malabo; deepfake cases since 2021; **PJ CCTV-access
surveillance debate**). PALOP digital-ID cooperation (CPV among 5). All 5 moved new→raw.

### 2026-07-18 · ingest CPV · chunk 2/5 — e-Gov, DPI & digital state
**13 sources admitted.** Expanded [[cabo-verde--dpi-govtech]]: Gov.cv dated (Porton di Nos Ilha migrates
in); Empresa Online business registry; **Semana do Digital** annual instrument; AfDB E-PFMRP ph2 (**$20.7M
= €17.7M, same event two currencies**); WB support (60/80% online); South Korea; RABIDA; ATU. New entity
[[nosi-angola-setic-mou]] (NOSi govtech export to Angola). All 13 moved new→raw.

### 2026-07-18 · ingest CPV · chunk 3/5 — Cybersecurity & the INE statistics thread
**14 sources admitted.** Expanded [[cabo-verde--gov-protect]]: PJ cybercrime (scams, mule accounts,
sextortion); **NOSi election-night cyber-incident** (2026 legislatives — apology→anomalies→"technical
causes"); SOC/CSIRT (NOSi/WB). New entities [[visionware]] (cyber firm in both TechParks) and
[[ine-cabo-verde]] holding the **INE data-manipulation controversy from both sides** (technicians allege
GDP/VAB manipulation vs INE repudiation/independence/formal complaint + Coimbra protocol; capture-not-
endorsement, no value adjudicated). All 14 moved new→raw.

### 2026-07-18 · ingest CPV · chunk 4/5 — Connectivity, 5G & telecoms
**5 sources admitted.** New intersection [[cabo-verde--infra-connect]]; new entities [[cv-telecom]]
(incumbent), [[cabo-verde-5g-strategy]] (launched Sept 2025, approved Resolution 33/2026; 90% penetration
by 2026; universal digital ID + data strategy bundled). **€37M CVT sovereign guarantee vs UNITEL T+
open-access/neutrality objection**; Starlink at 0.2% market (ARME Q2 2025). All 5 moved new→raw.

### 2026-07-18 · ingest CPV · chunk 5/5 — AI, innovation, TechPark, skills & startups
**23 sources admitted.** New intersection [[cabo-verde--tech-innovate]]; new entities
[[cabo-verde-data-ai-strategy]] (Data + AI strategies, 28 Apr 2026, EU-supported), [[fundo-morabeza]]
(€24M AfDB startup fund), [[skodji-digital]] (youth gig-economy skills). TechPark Praia (**€45.59M =
$51.7M AfDB, same event**) + Mindelo; Web Summit/SikaBaDu; honest AI-divide press debate; Uni-CV Creole
NLP; Digital Africa Corridor (NGA); Tech Ambassador (Olavo Correia). All 23 moved new→raw. **new/ empty —
60 admitted, 0 pruned.**

### 2026-07-18 · ingest CPV · BATCH COMPLETE
**60 sources admitted, 0 leads, 0 discards, 0 pruned.** From 60 staged (36 newspaper A Nação/Expresso das
Ilhas + 24 trade-journal) — CPV was a **genuine prior blind spot** (no held paper URLs). **~15 new
entities** + **3 new intersections** ([[cabo-verde--dpi-id]], [[cabo-verde--infra-connect]],
[[cabo-verde--tech-innovate]]) + expanded [[cabo-verde--dpi-govtech]]/[[cabo-verde--gov-protect]]. CPV hub
updated. Highlights: **Autentika CRVS-ID → ~99% birth registration** (UIN at birth); National 5G Strategy
(Resolution 33/2026); **€37M CVT guarantee vs UNITEL T+ neutrality objection**; TechPark Praia/Mindelo;
NOSi govtech **export to Angola**; new Data + AI strategies. Two controversies held both-sided:
**[[ine-cabo-verde|INE]] data-manipulation** row and a **NOSi election-night cyber-incident** (no formal
contradiction — allegation vs rebuttal, not a wiki-adjudicated value). Figure reconciliations recorded
inline (TechPark €45.59M = $51.7M; AfDB E-PFMRP €17.7M = $20.7M — same events, two currencies). 4 Expresso
items are `body_completeness: paywalled` [CLIP] (canonical URL to verify on any re-use). Indexes updated
(9 entities + NOSi-Angola deal; CPV places-index row). MANIFEST → new-queue/done/CPV/. Ingested in 5
thematic chunks. All 60 source links lint clean (0 unresolved, 0 orphans).

### 2026-07-18 · ingest DJI · chunk 1/4 — Connectivity & regional cables
**15 sources admitted (many multi-outlet twins).** New intersection [[djibouti--infra-connect]]; new entity
[[djibouti-digital-foundation-dfn]] (WB fibre to the interior — Ali-Sabieh hospital, Damerjog school).
Horizon Fiber binding deal (~2,800km/144 pairs/14ms, 5 outlets); DARE1 Kenya-SA extension (36 Tbit/s, 3
twins); Ethio-DJT partnership; Djibouti Telecom monopoly profile (**stale cable figures flagged, not
promoted**); Wingu $60M (AMS-IX IXP). All 15 moved new→raw.

### 2026-07-18 · ingest DJI · chunk 2/4 — Digital ID, payments & GovTech
**11 sources admitted (twins).** Updated [[mobile-id-djibouti]] (forum twins: Somalia CB/Benin ANIP present;
emergency-medical; Guelleh warnings; forum-vs-launch 08/09-Feb ambiguity noted) and [[smart-wallet-djibouti]]
(MDENI/Visa/Tech5 detail; **flagged "Asmara" source error**). New entities [[dpcs-djibouti]] (port community
system, IMO/WB best practice), [[online-company-creation-djibouti]] (8,446 firms), [[limo-djibouti-startup]]
+ [[limo-platform-djibouti]] (**name-collision disambiguated**). All 11 moved new→raw.

### 2026-07-18 · ingest DJI · chunk 3/4 — Cybersecurity, data governance & law
**6 sources admitted.** Updated [[national-cybersecurity-authority-djibouti]] (**DJ-CERT 1st at IGAD cyber
exercise**, Jun 2026; GCI 11.84/20) and [[djibouti-digital-code]] (8-book explainer twins). New entities
[[snds3-djibouti]] (statistics strategy 2025-29, WB) and [[djibouti-open-data]] (IMF SGDD-a / e-GDDS
National Summary Data Page). All 6 moved new→raw.

## 2026-07-18 — ingest(DJI) chunk 4/4: Strategy, AI, skills, startups & diplomacy
15 sources admitted. New intersection `djibouti--tech-innovate` (strategy stack + skills + diplomacy).
Entities created: djibouti-ai-strategy (instrument), pnd-adeeg-djibouti (instrument, 3rd NDP adopted 30 Jun 2026),
digital-houses-djibouti (initiative, E-SKILLS 5 regions/3,000 by 2029/€7M), ecole-42-djibouti (initiative, EU/Expertise France),
startup-act-djibouti (instrument, Loi n°179/AN/25, JO 08/01/2026), federation-entreprises-numeriques-djibouti (organisation).
First national AI Strategy (Jan 2026, UNESCO/ESCWA); China-Exim AI-platform pitch (geopol.china); Romania & Japan bilateral tracks;
WSIS 2026 presence. New Minister Delegate Safia Ali Mohamed Gadileh (appointed May 2026) supersedes Mariam Hamadou Ali — hub to reflect at finalize.
GAP: Startup Act primary text (eJO / journalofficiel.dj) not held.

## 2026-07-18 — ingest(DJI) FINALIZE
Batch total: 47 sources admitted (4 chunks), 0 leads, 0 discards. Hub DJI.md refreshed:
new PND/AI/skills strategy stack up top; minister Mariam Hamadou Ali → Safia Ali Mohamed Gadileh (May 2026);
Entities section expanded (DFN, DPCS, online-company-creation, AI strategy, PND-ADEEG, Startup Act, Digital Houses,
École 42, federation, SNDS-3, open-data, Limo x2); topics frontmatter +tech.innovate/capacity.training/gov.legislate/
data.statistics/data.open/geopol.china. entities-index: +12 rows (1 company, 1 org, 3 initiatives, 4 resources, 3 instruments;
Limo already? no — 12 new). places-index DJI row rewritten. Dead-link lint (touched files) 0 unresolved; orphan lint 0/47.
Stray new/MANIFEST.md removed; new-queue/DJI → new-queue/done/DJI. Filed GAP-DJI-003 (Startup Act primary).

## 2026-07-18 — ingest(DZA) chunk 1/8: Connectivity & operators
28 sources admitted. New intersection `algeria--infra-connect`. Entities created: ooredoo-algeria, djezzy,
mobilis (companies); arpce-algeria, ministry-of-post-and-telecommunications-algeria (govt bodies); sid-ali-zerrouki
(person, Min. Post & Telecoms); algeria-5g (initiative, $492m/DZD 63.9bn three-licence award Dec 2025);
algerie-telecom-sparkle-cable (deal); sparkle, ericsson (vendor companies). Updated algerie-telecom (3m FTTH households
/ 3.4m fibre subs / 7m fixed / 51m mobile 2026-05; 400G, WiFi7, IPv6, Sparkle). FTTH "1st in Africa" (2026-02);
5G nationwide by Djezzy (18 states) & Ooredoo (all wilayas) 2026-03; satellite-ISP NGSO tender (2026-04); Ookla Algiers 48th.

## 2026-07-18 — ingest(DZA) chunk 2/8: Data centres, cloud & sovereignty
8 sources admitted. New intersection `algeria--infra-store`. Entities: national-digital-services-center-algeria
(resource; Algiers/Mohammadia + Blida active-active, Huawei, Tier III, 99.98%, inaugurated 2026-07-05 by Tebboune),
cerist (organisation; cloud/drone/incubator Mar 2025), abdelmadjid-tebboune (person, President), meriem-benmouloud
(person, Min. Digitalization & Statistics). Constantine DC (2023), Oran AI DC (2025-03), Blida under deployment;
200,000+ km fibre; parliament sovereign cloud; one-month admin-interconnection order (2026-07-12). Huawei = geopol.china thread.

## 2026-07-18 — ingest(DZA) chunk 3/8: Cybersecurity & data protection
17 sources admitted (market-supply IS held for chunk 5). New intersection `algeria--infra-cybersec`.
Entities: assi (govt-body, ISS agency under MDN), algeria-national-cybersecurity-strategy-2025-2029 (instrument,
adopted 2026-03-03, Kaspersky 70m attacks 2024, ITU GCI Tier 3), mpt-cert (govt-body, sectoral CERT, KOICA),
algeria-russia-cybersecurity-mou (deal, Positive Technologies × Proxylan/CERIST). Updated anpdcp (also ANPDP;
Law 25-11 amendment; president Samir Bourehil; 2025-12 enforcement push; DGSN study day) and algeria--gov-protect.
Decree 26-07 (7 Jan 2026) institutional framework: ASSI, National Council for ISS, ANPDP, HCD, ICT-crimes authority.
CONTRADICTION filed: data-governance decree number 25-350 (held EN source) vs 25-320 (2 Algerian-press sources) —
reviews/contradictions/open/algeria-data-governance-decree-number; set needs-review on algeria-data-governance-framework
+ algeria--gov-protect. Fixed MPT-CERT echorouk file: stripped invalid KOR place code + geopol.china mis-tag (ISSUE-014
addendum already covers geopol.russia/korea/uk gap).

## 2026-07-18 — ingest(DZA) chunk 4/8: Digital ID, trust services & biometrics
9 sources admitted. New intersection `algeria--dpi-id`. Entities: dgsn-algeria (govt-body, national police, DG Ali
Badaoui; UK Home Office forensics MoU 2025-11), algeria-biometric-id-card (instrument, foundational credential).
Updated algeria-digital-id-trust-law (Council of Ministers 2 Nov 2025 → APN; modernises 2015 e-sig; ARPCE+AGCE
certification base). E-signature/certification launched Jan 2025 (ARPCE = national e-cert authority); remote biometric
passport renewal (diaspora); vehicle registration all-digital 3rd phase (biometric ID required); CNAS e-health card (uninsured).

## 2026-07-18 — ingest(DZA) chunk 5/8: GovTech, registries, sectoral MIS & open data
21 sources admitted. Updated intersection `algeria--dpi-govtech` (platform wave). New entity algeria-apostille
(initiative; live 9 Jul 2026, Hague accession 25 Aug 2025, ~126 states). Updated dzair-services (52 services, UN/UNDP)
and amlak (twin source). Indexed on the govtech intersection (materiality bar — one-source sectoral MIS kept as
index lines, not stubbed): e-commercial register "Sedjilkoum" (173,651 new/125,195 struck-off 2025), export-data
platform, import-tracking, agri MIS (farm/land/livestock registers), health patient-transfer, SME economic IS,
market-supply IS, social cartography portal, lawyers' court portal, 4 higher-ed platforms (Baddari 24 Feb 2026),
CNC qualifications, tax-data integration, notaries MoU.

## 2026-07-18 — ingest(DZA) chunk 6/8: Payments & fintech
13 sources admitted. Updated intersection `algeria--dpi-pay`. Entities: bank-of-algeria (govt-body, central bank,
governor Lebbou; KYC instruction 04-2026; digital-bank/PSP licensing), yassir (company, super-app; Uno acquisition),
vaulfi (company, stablecoin super-app). 22m+ cards end-Mar 2026 (~18m Edahabia); e-payments +46% YoY 2025 to DZD 939bn
(~$7bn); ENIE 1.6m TPE; Posty Mob (Algérie Poste–Sonelgaz); BaridiMob virtual card; online stamp-duty; VOLZ DZD 600m
(first ASF exit); digital-dinar/blockchain track.

## 2026-07-18 — ingest(DZA) chunk 7/8: AI, innovation, startups & skills
14 sources admitted. New intersection `algeria--tech-innovate`. Entities: aventurecloudz (resource, Djezzy sovereign
AI cloud), algeria-digital-empowerment-7-77 (initiative, 64,508 enrollees, AI top choice). Updated algeria--tech-ai
+ algeria-national-ai-strategy (25 May 2026 govt deployment review, 3 levers; New Lines Institute "most likely to lead
AI in N.Africa", 57k students/74 masters/52 unis). AI supercomputing Oran; Huawei AI/GPU cooperation; ethical-AI law
prep; virtual-education AI centre; AI vocational training; IPO-fee waiver to 2028; video-game industry; High Council of Scientists.
