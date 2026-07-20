# reviews/acquisitions.md — the acquisition queue (documents to fetch)

A **shopping list**, not a research register. Every item is a *specific, known,
identified document* the wiki wants and does not hold — a gazetted Act, a
regulator's bulletin, a project appraisal document, a PDF behind a 403 or a
cookie wall. Nothing here needs investigating; it needs **fetching**.

This is why it is separate from `contradictions/`. The reconcile pass is an Exa
research pass: it is the right instrument for *"which of these two values is
right"* and the wrong one for *"download this PDF."* Sending 40 acquisitions
through reconcile would burn a research pass on work a fetch or a hand-clip
does better.

**How items leave.** Acquired → ingest via `new/` in the normal way, then strike
the line here and note it in `log.md`. Confirmed unobtainable after a real
attempt → move to `watch.md` (a document that cannot be got is a standing watch,
not a live queue entry).

**Routes.** Most of these failed an automated fetch, so they need one of: a
manual browser capture, a subscriber clip, or a hand-download. Items marked
**[blocked]** have a recorded failure mode (403, bot-block, cookie wall, JS
shell, fetch-size limit); items marked **[untried]** were simply never fetched.

> Migrated out of `reviews/gaps.md` on 2026-07-20 (register triage — see
> `log.md`). Original wording and provenance are in git history of `gaps.md`.

---

## Statutes, decrees and gazetted instruments

- **Seychelles Data Protection Act 2023, as gazetted** — load-bearing: the two law-firm
  analyses held give 19 Dec 2023 (enactment) and 22 Dec 2023 (transition start), and only the
  primary settles which date attaches to what. **[untried]** *(ex-GAP-SYC-001)*
- **Zimbabwe Cyber and Data Protection Act** text, plus the **Licensing of Data Controllers and
  Appointment of DPOs Regulations 2024**. Two held sources already rely on the Act; the
  AI-Strategy critique cites s.164C directly. **[untried]** *(ex-GAP-ZWE-001)*
- **Togo** data protection law of September 2019 and the **IPDCP**'s establishing instrument —
  `ipdcp-togo` currently stands on a one-line mention in a World Bank ISR. **[untried]**
  *(ex-GAP-TGO-001)*
- **Cameroon** gazette/PRC texts of **Loi n°2024/017** (personal data protection) and
  **Loi n°2024/016** (civil registration), both enacted 23 Dec 2024 — only secondary reporting
  held. prc.cm / official gazette. **[untried]** *(ex-GAP-CMR-001)*
- **Cameroon** decree **N°2025/059** (28 Feb 2025) fixing the CNI's characteristics and
  distribution — the legal hinge before 3 Mar 2025 issuance. prc.cm. **[untried]**
  *(ex-GAP-CMR-002)*
- **Djibouti Startup Act**, **Loi n°179/AN/25** (JO 08/01/2026) — only trade-press held.
  eJO / journalofficiel.dj. **[untried]** *(ex-GAP-DJI-003)*
- **Malawi** — **Government Notice 40 of 2024** (the commencement instrument) and the two 2025
  implementing regulations (Registration; Complaints & Investigations), behind file downloads at
  dpa.mw. **Also:** the held Data Protection Act 2024 clip is partial — **s.53, the transitional
  provision, is outside the captured range**, so the grace period (controllers exempt to
  2026-06-02) is sourced only by report. Under the ISSUE-016 exception the `excerpt` file can be
  completed in place. **[blocked — download-gated]** *(ex-GAP-MWI-00X)*
- **Angola** — Presidential Decree **263/25** (Centro Nacional de Cibersegurança) in full;
  preamble and Arts. 1–3 verified, but the Estatuto Orgânico annex truncated on fetch and was
  not clipped rather than admit a partial body. Official PDF via LEX.AO.
  **[blocked — truncation]** *(ex-GAP-AGO-00X)*
- **Uganda** — **Statutory Instrument No. 67 of 2024**, the instrument holding the KYC gate open.
  **[untried]** *(ex-GAP-UGA-00X)*

## Court records

- **ISER & 2 Others v Attorney General & NIRA**, HCT-00-CV-MC-0066-2022, High Court of Uganda,
  dismissed 10 June 2025 — the most consequential legal event in Uganda's digital-ID story, and
  the wiki reads it only through a campaigning party's summary. **[untried]** *(ex-GAP-UGA-001)*
- **South Africa** — the January 2025 high court ruling finding several SRD regulations unlawful,
  and the state's SCA appeal papers. GroundUp's account of the filed arguments is held; the
  judgment is not. **[untried]** *(ex-GAP-ZAF-004)*

## Official statistics, bulletins and annual reports

- **INACOM *Relatório Anual Estatístico*** (AGO) — the authoritative Angolan telecoms series
  (bilingual since 2024); would settle the national fibre-length question and several other
  Angolan infrastructure figures. Not retrievable from observatoriotic.gov.ao or inacom.gov.ao.
  **[blocked]** *(ex-GAP-AGO-00X)*
- **INE Censo 2024 PDFs** (AGO) — the national definitive-results report and the Luanda
  provincial report; would settle the unexplained **150,787** discrepancy between INE's own two
  reports directly. ine.gov.ao. **[blocked]** *(ex-GAP-AGO-00X)*
- **Central Bank of Tunisia payments bulletin** — Tunisia's 2025 mobile-payments figures (81%
  growth, 8.4m transactions / TND 1,769m, 815,000 active wallets) reach the wiki only via an
  aggregator's repackaging. **[untried]** *(ex-GAP-TUN-001)*
- **NGX Domestic & Foreign Portfolio Investment Report** (monthly) and the **NGX weekly market
  report** — the recurring primaries behind the Nigerian market series (₦2.86tn traded Jan–May
  2026, +138.76% y/y; 36.22% of activity; the 19-year domestic/foreign breakdown), all reaching
  the wiki through one trade-press account. Holding the report would also settle two of the three
  dollar-conversion inconsistencies in
  `contradictions/open/nigeria-2008-crash-loss-and-ngx-market-cap.md`. **[untried]**
  *(ex-GAP-NGA-002, GAP-NGA-00X)*
- **CBN Statistical Bulletin Table D.3.4.c** — monthly official ₦/US$ end-period rates; the 2008
  rates currently used rest on secondary aggregators. **[untried]** *(ex-GAP-NGA-00X)*
- **Auditor General's NIRA report FY2024/25** (UGA) — load-bearing for the finding that the NSIS
  cannot register deaths, which is what makes the 35m register a cumulative, un-deregistered
  count. oag.go.ug. **[untried]** *(ex-GAP-UGA-00X)*
- **UBOS Census 2024 Final Report** (UGA) — 45.9m total, 23,154,716 adults 18+ (2024-05-09);
  the denominator under every Uganda coverage-rate claim, held only second-hand via NIRA.
  **The highest-value single acquisition for Uganda.** Also unheld: NIRA's own 2024-07-01 COSASE
  submission. **[untried]** *(ex-GAP-UGA-00X)*
- **ANEC civil-registration statistics** (SEN) — the 15.3m RNEC figure reaches the wiki via APA's
  report of an ANEC Facebook post. DG Aliou Ousmane Sall's August-2025 deck (20m acts, RNEC in
  400 centres, 235 in service, annual declaration volumes) is a candidate for separate ingest.
  anec.sn. **[untried]** *(ex-GAP-SEN-00X)*
- **POTRAZ Q4-2025 abridged report** (ZWE) — the definitional anchor for the whole subscriptions
  series, held only via a TechnoMag rehost with partial text extraction; Q1-2026 not yet posted.
  potraz.gov.zw. **[blocked — partial]** *(ex-GAP-ZWE-00X)*
- **ITU `datahub.itu.int` page for CAR** — the 13.8% (2024) figure currently comes via World Bank,
  CEIC and FRED; the ITU page is a JS data explorer returning an empty shell to text fetch, so it
  needs a **browser capture**. ARCEP-CAR publishes no penetration statistics at all, so there is
  no fourth independent measurer. **[blocked — JS shell]** *(ex-GAP-CAF-00X)*
- **DataReportal *Digital 2025: Chad*** — Chad's 13.2% start-of-2025 penetration figure reaches
  the wiki only by second-hand relay; this is the primary needed to settle
  `contradictions/open/chad-internet-penetration-2024-2025`. **[untried]** *(ex-GAP-TCD-001)*

## Corporate and project documents

- **Orange *Rapport RSE 2025*** (published 2026-07-10) — a dozen circular-economy figures now on
  `orange`, `XAF`, `MAR`, `BFA` and `EGY` (164,000 boxes refurbished, +43%; 209t e-waste;
  354,000 devices recovered; €13m saved; Morocco 6,000 boxes/€1.5m; Burkina Faso 33t) all trace
  to it, through one trade-press account of a document the wiki has not read, every figure
  operator-self-reported. A recurring annual worth holding as an instrument. **[untried]**
  *(ex-GAP-XAF-00X)*
- **World Bank WARDIP-GB Project Appraisal Document / financing agreement** (GNB) — the US$60M
  grant funding the Amílcar Cabral cable, the 2,877 km backbone, a govcloud and a data-protection
  regulator; the whole GNB spine rests on it with no source or instrument page. Also lower
  priority: **RNEP-GB** (WARDIP-GB Final Report, 2025-04) and ARN's **IDN/.GW accented-domains**
  announcement. **[untried]** *(ex-GAP-GNB-001)*
- **InfraCo Pre-Listing Statement (2026-02-04)** and the **EWZL shareholder circular** of the same
  date (ZWE) — would probably settle **both** the Distributed Power Africa identity question and
  the Econet Group parentage question (ISSUE-033). The single highest-value acquisition from the
  Zimbabwe material. **[untried]** *(ex-GAP-ZWE-00X)*
- **DHA Annual Performance Plan 2026/27 PDF** (ZAF) — the companion source page is filed with five
  verbatim extracts but no artefact sits behind it:
  `https://pmg.org.za/files/2/DHA_APP_2026-27_Final_26_Mar_2026.pdf`. **[untried]**
  *(ex-GAP-ZAF-00X)*
- **Unitel–Ericsson** network-modernisation partnership (AGO, 2025) — an Ericsson press-release
  URL sits in the source datasets but was never fetched, so `unitel` carries the claim with no
  dated source page. **[untried]** *(ex-GAP-AGO-001)*
- **PwC** African workplace AI-adoption survey and the **KPMG** West African CEO survey — the
  wiki's only continental adoption figures (64% of African workers using AI at work by end-2025
  vs 54% global; 65% of West African CEOs expecting AI efficiency gains in 2026), reaching it
  through one trade-press paragraph with no study title, sample size, country coverage or
  methodology on file — the last mattering most, since "used AI at work" can carry almost any
  number. Per the reference-studies rule their figures stay **cited, not absorbed**. **[untried]**
  *(ex-GAP-NGA-004)*
- **Disrupt Africa 11th-edition report PDF** and the **AVCA *Venture Capital in Africa* Report** —
  the by-count/by-value figures and methodology quotes on `disrupt-africa.md` trace to a secondary
  and to reconcile research; the AVCA report is one side of the equity-direction contradiction.
  Both are free downloads. **[untried]** *(ex-GAP-XAF-00X)*
- **GI-TOC *Behind the Blockchain* full PDF** (CAF) — the staged source captured only front matter
  and Summary of a ~20-page report; the analytical chapters (named intermediaries, token accounts
  annex) are not held. Store as a dated binary artefact with a companion source page.
  **[untried]** *(ex-GAP-CAF-002)*
- **Togo 2025 joint education-sector review** (education.gouv.tg, June 2025) — carries DHIS2
  phase-2 financing (71,305,244 FCFA to HISP WCA) and StatEduc modernisation detail; body exceeds
  fetch limits. **[blocked — size]** *(ex-GAP-TGO-00X)*

## Blocked fetches needing a manual clip

- **Equatorial Guinea — guineaecuatorialpress.com** (cookie-walled, no body/date via sweep):
  the **Huawei e-Government MoU**; the **e-government law**; **BEAC joining PAPSS**; the
  **Starlink Guinea Ecuatorial** entity creation; the **Jul–Dec 2026 connectivity plan** (2G/4G to
  85%, Roaming Cero, 34 towers in Annobón); the **unique person/entity ID code** (likely 2023);
  and the **full text of Ley 7/2024**. Each is a real, currently-unheld GNQ development. The sweep
  also recommends adding **realequatorialguinea.com** and **GITGE/IDENTIC** as standing GNQ
  sources. **[blocked — cookie wall]** *(ex-GAP-GNQ-002)*
- **Sierra Leone — portal 403s**: the **NCPC launch** (Nov 2024), the **NCRA–SLRSA data-sharing
  agreement**, and **NACSA PWD mass-registration**. **[blocked — 403]** *(ex-GAP-SLE-001)*
- **Somalia** — the **MOIFAR CRVS-launch primary** (moifar.gov.so) and the **NIRA Act (Law 009)**
  PDF, both Phase-1 fetch-fails; the wiki holds the secondary reporting only.
  **[blocked]** *(ex-GAP-SOM-001)*
- **Seychelles** — the Seychelles News Agency cheque-phase-out article (~600,000 cheques in 2023;
  card + SEFT transactions over 10 million) returned **HTTP 403 on two attempts**; the body on file
  was reconstructed from a same-day syndicated copy and is filed `date_source: proxy`. Re-fetch the
  SNA original, or source the CBS primary directive, before these figures are leaned on.
  **[blocked — 403]** *(ex-GAP-SYC-002)*
- **CAR** — Le Monde (2025-02-11) *"La Centrafrique lance une nouvelle cryptomonnaie"*, the only
  dated news source for the $CAR launch, bot-blocked at fetch; the wiki relies on a TechCabal
  digest plus GI-TOC analysis. **[blocked — bot]** *(ex-GAP-CAF-003)*
- **Libya — gia.gov.ly**, the richest Libya-DPI source and entirely unmined: **LY-DNID** national
  digital identity (Level-2 pilot 2025-11-20; Level-3 biometric eKYC with CBL 2026-04-19);
  **LY-NDEX** National Data Distributor (>300m transactions/yr, 2026-07-01); the **Open Government
  Data Platform** (opendata.gia.gov.ly, 2025-11-27; 91-dataset milestone 2026-02-11); a **National
  Cloud Computing Policy** with ESCWA (2025-12-30); and the **AI Ethics Charter + National AI
  Strategy 2026–2030** adopted by PM Dbeibeh (2026-06-01) alongside a new Minister of State for
  Digital Economy & AI. **[untried — off assigned source list]** *(ex-GAP-LBY-001)*
- **Lesotho — gov.ls / lesotho.co.ls / CIPESA / lena.gov.ls**: the **National Data Value Creation
  Blueprint** workshop (Smart Africa + GIZ + AU, 14–15 Jul 2026; Lesotho selected with Senegal and
  Kenya); **AUDPF domestication / data-governance workshops** (Jul & Oct 2025,
  AUDA-NEPAD/GIZ/CIPESA); a **digital service-ID pilot** (10,000 participants, biometric, from
  2 Apr 2026); and the **National AI Policy/Strategy** text. **[untried — off assigned source
  list]** *(ex-GAP-LSO-001)*
- **Cabo Verde government primaries** — gov.cv, sniac.cv, NOSi/IGRP. The CPV papers sweep covered
  the politics of digital transformation well but found **no in-window newspaper article on the
  foundational digital-ID system itself** (CNI, SNIAC, Chave Móvel Digital). That record exists only
  in government sources outside the two-paper scope, and the papers will not supply it.
  **[untried — off assigned source list]** *(ex-GAP-CPV-001)*
