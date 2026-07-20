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
attempt → strike the line here and record the absence **on the page it bears on, dated** —
a document that cannot be got is a horizon, not a queue entry.

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
- **Gabon — full official text of *Loi n°025/2023*** (personal data protection), the current governing
  statute, with **Décret n°166/PR du 12 juillet 2023** (promulgation), as published in *JO* n°218 *Bis*
  of 15 July 2023. The law's identity, dates and authority-creating article are now established and on
  `apdpvp-gabon`, but the **final and transitional articles — entry into force and any compliance grace
  period — were not reached** on fetch (the JO web record is very long and truncated inside art. 6), so
  entry into force rests on a secondary reading only. Two clean routes, both APDPVP/JO-hosted PDFs:
  `https://www.apdpvp.ga/wp-content/uploads/2025/01/Gabon-Loi-025-2023-du-12-juillet-2023-portant-modification-de-la-loi-001-2011-du-25-septembre-relative-a-la-protection-des-donnees-a-caractere-personnel.pdf`
  (includes the promulgation decree at p.49) or `https://journal-officiel.ga/20085-025-2023-/`.
  **[blocked — fetch-size truncation]** *(reconcile 2026-07-20, ex-GAP-GAB-001)*
- **Gabon — *Ordonnance n°00002/PR/2020* du 31 janvier 2020** amending loi n°001/2011 (creates the
  **RPPVP** funding levy and the **DPD** role). Held only via JO search highlights, never fetched in
  full. `https://journal-officiel.ga/4803-00002-pr-` **[untried]** *(reconcile 2026-07-20)*

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
- **Gabon — DGDI / Interior Ministry publication of the CNIE enrolment figures** given by Minister
  **Adrien Nguema Mba** to the National Assembly on **2 June 2026** (335,384 enrolled; 164,944 produced;
  147,224 collected; 92,614 in processing; 78,500 litigious). The figures now on `gabon--dpi-id` rest on
  **press accounts of a spoken answer**: the Assembly's own communiqué
  (`assemblee-nationale.ga`) and the AGP state news agency both cover the session but **publish no
  numbers**. A directorate publication — or the Assembly's *compte rendu intégral* — would upgrade the
  provenance. Related and still entirely unheld: **any dated NIP-coverage figure** against the World Bank
  "% of population 16+ with a NIP" indicator, still at its zero baseline (Dec 2024). dgdi.ga /
  interieur.gouv.ga. **[untried]** *(reconcile 2026-07-20, ex-GAP-GAB-002)*
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
- **Mauritania satellite-licence award** — Agence Ecofin, 2026-07-07, *"Mauritanie : trois entreprises
  sélectionnées pour fournir des services télécoms par satellite"*: the ARE outcome of the January-2026
  tender the wiki already holds (BRAINSAT, VDM, Mattel; 9 bids/13 dossiers; match-the-best-offer condition).
  The underlying **ARE communiqué** is the better target if it can be found on are.mr.
  `https://www.agenceecofin.com/actualites-numerique/0707-139950-mauritanie-trois-entreprises-selectionnees-pour-fournir-des-services-telecoms-par-satellite`
  **[untried]** *(surfaced by reconcile, 2026-07-20)*
- **Mauritania WARDIP AP-01 award notice**, once issued — proposals close **21 Jul 2026**; the Notification
  d'Attribution will carry the winner(s), contract value and beneficial-ownership disclosure, none of which
  the wiki can have yet. Watch mtnima.gov.mr and beta.mr. **[not yet published]**
  *(surfaced by reconcile, 2026-07-20)*
- **Senegal draft data-protection law** (the bill replacing Law No. 2008-12, and its implementing decree) —
  cleared the Cour Suprême in 2022, repeatedly "finalised" in CDP workshops, never published. Also useful:
  the undated Le Quotidien report of the Saly finalisation workshop, which carries CDP president Ousmane
  Thiongane's account but **no publication date**, so it could not be clipped:
  `https://lequotidien.sn/mbour-gouvernance-des-donnees-et-intelligence-artificielle-vers-un-nouveau-dispositif-normatif/`
  cdp.sn. **[untried]** *(surfaced by reconcile, 2026-07-20)*
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
- **Somalia — NIRA data-centre colocation award, ref 4500377** (USD 179,220, published 2026-02-25),
  *"Data Center colocation service for the National Identification and Registration Authority (NIRA)
  of Somalia"*. Behind a **tender-service subscriber wall**; a companion award at USD 238,960 also
  appears. The award record would **name the colocation facility** and so settle directly where SNID
  data physically sits — the one open question left by the Somalia hosting reconcile, which cannot be
  closed by research because no other public document states it. **[blocked — subscriber wall]**
  *(ex-contradiction somalia-national-id-data-hosting)*
- **Burkina Faso — ARCEP / MTDPCE primary on white-zone counting definitions.** The whole
  "zéro zone blanche" corpus is press; no regulator or ministry document is held stating whether the
  programme counts **telecom sites** or **localities served**, or what the **2019 vs 2020** baseline
  is. The ministry publishes substantively via **Facebook**, which is not a sweep target, so this
  will not arrive through the existing route. Wanted: an ARCEP annual report or FASU/PACTDIGITAL
  programme document with the counting basis. **[untried — publisher off sweep (Facebook)]**
  *(ex-contradiction burkina-faso-white-zones-coverage-to-date)*
- **AVCA — *Venture Capital in Africa Report* (Feb 2026), RESEARCH METHODOLOGY section, p. 41.**
  https://www.avca.africa/media/umlh132j/avca25-15-vc-annual-report_4.pdf — the report body is now
  held as a verbatim excerpt ([[2026-02-01-avca-venture-capital-in-africa-report-2025]]), but the
  retrieval truncated before **§4–9 and the methodology page**. That page is the document stating
  AVCA's deal-inclusion rules (size floor, stage range, geography test, treatment of undisclosed
  rounds) — the one open question left by the CY2025 equity-direction reconciliation, where AVCA's
  −21% and Partech's +8% are reconciled only down to a residual hypothesis. Needs a **manual capture
  of the full PDF**. **[partial — extractor truncation]** *(reconcile 2026-07-20,
  africa-vc-equity-2025-direction)*
- **Algeria — JORADP 2026 index sweep for a *décision du haut commissaire à la numérisation***
  publishing the two Art. 8 *référentiels* (data classification; data-source cataloguing) under
  Presidential Decree 25-320. https://www.joradp.dz/ — **Art. 19 makes the decree's classification
  and cataloguing obligations commence only from that publication**, so this is the single most
  consequential open fact on Algerian data governance. A French-language press and gazette search on
  2026-07-20 traced **no such décision**, but a *décision* can be gazetted in the JO's *arrêtés,
  décisions et avis* section without press notice; only an index sweep of the 2026 issues settles it.
  **[untried — needs issue-by-issue sweep]** *(reconcile 2026-07-20,
  algeria-feb-2026-data-governance-launch)*
- **Algeria — Presidential Decree n° 26-07 of 7 Jan 2026** (mandatory cybersecurity units in public
  institutions), reportedly *JO* of 21 Jan 2026. https://www.joradp.dz/ — surfaced only via
  `algeriatech.news`, an AI-generated content farm; **the instrument is currently unestablished** and
  needs its gazette issue before any wiki page carries it. **[untried]** *(reconcile 2026-07-20)*
- **Chad — gazetted legal texts, none held.** Surfaced by the 2026-07-20 reconcile pass; all are
  cited in reporting the wiki holds, but no text is on file:
  - **Ordonnance n°011/PR/2025 du 5 août 2025** amending art. 18 of Loi n°013/PR/2014 (mobile-operator
    licence conditions). **[untried — no URL found]**
  - **Loi n°013/PR/2014 du 21 mars 2014** portant régulation des communications électroniques et des
    activités postales — **URL held**:
    https://www.africa-laws.org/Chad/Comercial%20law/Loi%20N%C2%B0%202014%20portant%20r%C3%A9gulation%20des%20communications%20%C3%A9lectroniques%20et%20des%20activit%C3%A9s%20postales.pdf
    **[untried — fetchable now]**
  - **Ordonnance n°001/PR/2026 du 22 janvier 2026** on the ANSICE reform (Senate ratified 2026-03-13,
    58–3–0). **[untried — no URL found]**
  - **Décret n°280/PR/PM/2026 du 1er avril 2026** portant remaniement du gouvernement. **[untried]**
  - The **2023 World Bank document** that is the wiki's route to the "$180m / Eximbank" PMICE figure,
    and the **China Eximbank loan agreement** itself. **[untried]**
- **Chad — loi sur les données biométriques judiciaires**, adopted by the National Assembly
  **2026-04-10, 138 for / 1 against**: collection, processing, retention, use and destruction of
  biometric data in judicial and judicial-police procedures. **New to the wiki** and directly
  material to `chad--dpi-id` and `chad--gov-protect`. Reporting URL held:
  https://tchadinfos.com/2026/04/11/tchad-les-deputes-adoptent-a-une-large-majorite-la-loi-encadrant-les-donnees-biometriques-judiciaires/
  **[untried — fetchable now]**
- **Central African Republic — World Bank P174620 project documents, none held.** Surfaced by the
  2026-07-20 reconcile pass (CAR batch). P174620 is the **CAR Public Sector Digital Governance
  Project (PGNSP)** — the funder behind the "Gouvernemental Centralisé" portal, Law 24.001, and the
  April 2025 état-civil diagnostic. It is **not CARDIP**, and it contains **no data-centre component**.
  Both documents are fetchable now:
  - **PAD4661, Project Appraisal Document (2022-03-07)** —
    https://documents1.worldbank.org/curated/en/283361648600399938/pdf/Central-African-Republic-Public-Sector-Digital-Governance-Project.pdf
    **[untried — fetchable now]**
  - **Project Paper, Additional Financing (2025-05-21)**, +US$6.4m mining-governance component —
    https://documents1.worldbank.org/curated/en/099052925135520222/pdf/BOSIB-50d33b34-4918-409e-92f7-070a1773ac56.pdf
    **[untried — fetchable now]**
- **Central African Republic — AfDB inauguration release, national fibre backbone (event 2023-02-06).**
  The announcer-of-record scope statement (935 km fibre, University of Bangui incubator, cybersecurity
  and e-certification platform, Agence centrafricaine de développement du digital) that establishes the
  CAB project delivered **no data centre**. Carried on Agence Ecofin under an AfDB byline; the AfDB's own
  posting was not located. URL held:
  https://www.agenceecofin.com/infrastructures/0802-105283-inauguration-de-la-dorsale-optique-nationale-de-la-republique-centrafricaine-et-de-l-interconnexion-avec-le-congo
  **[untried — fetchable now]**
- **Central African Republic — Système national d'identité numérique (SNID), launched 2025-11-28.**
  **New to the wiki** and the successor step to the April 2025 état-civil diagnostic: ~US$13m, a unique
  identification number (NUI), a new **Office national d'identification (ONI)**, implementation window
  **2027–2032**, resting on a **2021 AfDB-commissioned, EU-co-financed feasibility study**. Directly
  material to `caf--dpi-id`. The only account found is Ambition Journal (undated on page, Bangui dateline
  2025-11-28) — an **official communiqué or ministry posting is wanted** before the wiki asserts it:
  https://ambition-journal.org/fr/economie/systeme-national-d-identite-numerique-moderniser-l-administration
  **[untried]**

## Reconcile pass 2026-07-20 — TUN / LBY

- **ACQ-TUN — Tunisia's *plan de développement 2026-2030* (text), and its digital chapter.** The current
  national digital framing is the "vision nationale unifiée pour la transformation digitale" carried
  **inside** this development plan (per the Head of Government, 2026-02-13) — but **the plan document
  itself is not held**, and whether the Council of Ministers formally adopted it is unestablished (as of
  2026-01-06 it was still a *projet*). Wanted: the adopted plan, or its ICT/digital chapter, from the
  Ministry of Economy and Planning or mtc.gov.tn. Also wanted: a **standalone national AI strategy**
  document, referenced repeatedly through 2026 but never located. **[untried]**
- **ACQ-TUN — EBRD project summary document, Tunisie Telecom (project 54140).** The press release is now
  held; the structured PSD fields (signing date, board approval date, ESG category) did **not** render on
  fetch — the page resolves to a navigation shell.
  https://www.ebrd.com/home/work-with-us/projects/psd/54140.html **[tried, fetch returned shell]**
- **ACQ-TUN — the EU CEF-Digital grant to Orange Tunisia for the Bizerte MEDUSA landing station**
  (€10m, ~30% of costs, signed Dec 2022). Established in reconcile research but **no primary is on file**;
  the EU HaDEA / CEF-Digital project record is wanted. **[untried]**
- **ACQ-LBY — GTI's own suspension statement of 2025-08-17** (General Authority for Telecommunications and
  Informatics, GNU). The 2025-08-20 *reinstatement* is now held via LANA, which recaps the grounds, but the
  original statement exists only through outlet re-reports. Wanted from the GTI or LANA archive. **[untried]**
- **ACQ-LBY — Data Center Dynamics, 2026-06-24, "Trans-Saharan and Tatweer to deploy Libyan data center."**
  The only account of the Huawei FusionModule1000A Tripoli facility (early 2027, private cloud, PCI DSS
  sought); carries direct quotes from Trans-Sahara's data-centre unit manager.
  https://www.datacenterdynamics.com/en/news/trans-saharan-and-tatweer-deploy-libyan-data-center/ **[untried]**
- **ACQ-LBY — Libya Review, 2025-05-13, Ozon unified telecoms licence.** Establishes the HoR-side licence
  (effective 4 Mar 2025) that the Huawei eastern-network contract sits under.
  https://libyareview.com/55614/ozon-company-to-operate-national-telecom-network-in-libya/ **[untried]**
- **ACQ-LBY — a second source for the USD 700m Huawei eastern-network contract and the USD 198m CBL letter
  of credit.** Currently **single-outlet** (Libya Security Monitor, 2025-08-17; network name "Barqa 217"
  from Arab Weekly, 2025-08-18). The wiki records these as *reported, not established*; a corroborating
  or primary account would let them be asserted. **[untried]**
- **Zambia — World Bank ZRHCP project documents (P503941), none held.** Surfaced by the 2026-07-20
  reconcile pass (Zambia batch). The ZRHCP brief resolved off the PAD's disclosed text, but the
  documents themselves are not in `raw/`, and the identity limb (Subcomponent 1.2) is detailed
  enough to be worth holding whole — it contains the **UNHCR ProGres → MoHAIS database transfer**,
  the three-district rollout, and the **20 million card** national procurement figure.
  - **Project Appraisal Document, Report No. PADHI00410 (2024-09-05)** —
    https://documents1.worldbank.org/curated/en/099090924120535793/txt/BOSIB12c22668f0f51a0d117949b7b8fe34.txt
    (PDF mirror: https://www.gtai.de/resource/blob/1874392/01d58a99528214209320f90e963f5d4e/PRO202408081809770.pdf)
    **[untried — fetchable now]**
  - **Environmental and Social Management Framework (P503941)** — gives Subcomponent 1.2 at
    US$6.5m and ~100,000 cards, against the PAD's US$6m and ~150,000; the discrepancy is worth
    holding both sides of —
    https://documents1.worldbank.org/curated/en/099121924211538677/pdf/P5039411b2fdc103f1ad10144419f4a87d5.pdf
    **[untried — fetchable now]**
  - **Implementation Status Report (ISR), Sequence No. 2** — would give current disbursement and
    whether the biometric registration has actually started —
    https://documents.worldbank.org/en/publication/documents-reports/documentdetail/099062425070539436
    **[untried]**
- **Zambia — SmartCare programme portal (smartcarezambia.io), not held.** The MoH/implementer
  programme site is the authority on the **SmartCare version lineage** (Legacy → Plus 2017 → Pro)
  that settled the "Care 2.0" question, and additionally documents SmartCare Pro's architecture,
  its **biometric fingerprint enrolment**, the HIE integrations (DISA, eLMIS, DHIS2, CBS; FHIR/HL7),
  and the "Zambia 360" National Health Data Warehouse / Data Access Portal. Undated pages, so a
  candidate **`resource` entity** rather than a dated source. https://smartcarezambia.io/
  Also worth holding: the **SmartCare Pro Programme Managers presentation** carrying the dated
  evolution timeline —
  https://smartcarezambia.io/wp-content/uploads/2025/03/Smart-CarePro-Program-Managers-Presentation-final_kpp_mkm_2.pdf
  **[untried — fetchable now]**
- **Zambia — MoH SmartCare Health Information System Standards, not held.** The Ministry of Health
  standards document containing section 17.0 "SmartCare Health Information System Standards" and
  citing the **Permanent Secretary's circular of 5 April 2006** that made SmartCare the approved
  patient-level system. Establishes the legal/administrative basis of the national EHR, which the
  wiki asserts only through trade press. Hosted on the UNZA repository:
  https://dspace.unza.zm/server/api/core/bitstreams/d584c52e-dcba-4dec-bd58-910fe11976cb/content
  **[untried — fetchable now]**
- **ACQ-TGO — the Secrétariat permanent's *rapport de mise en œuvre des réformes, 2e semestre 2025*.**
  This is the **government body of record behind Togo's "6m+ NIU at end-December 2025"** figure, which
  the wiki currently holds only through Togo First's reporting of it (2026-04-23). Acquiring the report
  itself would give a first-hand coverage statistic, and likely a breakdown by prefecture that would
  settle whether enrolled / NIU-issued / card-delivered are in fact one counter (the reporting says they
  are). Issuer: Secrétariat permanent pour le suivi des politiques de réformes et des programmes
  financiers (Togo). No direct URL located. **[untried]**
- **ACQ-TGO — the ANID/ATD or Kazakh-side record of the three June-2024 ATD↔NITEC licensing agreements.**
  Established via Kazakh business press (Kursiv 2024-06-20) and Togolese trade press; **neither
  government's own announcement was located**, and no implementation record exists at all. Wanted from
  digitalgouv.tg, nitec.kz, or the Kazakh Ministry of Digital Development. Would also settle whether
  anything was ever deployed. **[untried]**
- **ACQ-BDI — a Burundian-side announcement of the 19 Nov 2024 Vietnam telecom MoU.** Every account
  located is Vietnamese-side (Vietnam MIC, Nhan Dan, VietnamNet) or third-party; the Ministry of
  Communication, ICT and Media's own record did not surface. The asymmetry is noted on `BDI.md`; a
  Burundian primary would confirm the ministry's own framing and any commitments not in the Vietnamese
  readout. **[untried]**
- **ACQ-DJI — Djibouti Telecom / D-Money's own release on the 10 Dec 2023 payment-gateway launch,
  and the list of conventions signed at it.** La Nation's account (now held) names ministries, public
  companies and banks signing use commitments but does not enumerate them. The operator record would
  give the signatory list — useful for the govtech and payments threads. d-money.dj / djiboutitelecom.dj.
  **[untried]**
- **ACQ-SWZ — the Sunday Observer's own GIYH security investigation (mid-2025).** The reporter's
  finding that public data was locatable on the Government In Your Hand system — *"a glaring security
  risk"* — is the origin of Eswatini's data-privacy criticism, and the wiki reaches it only via
  Biometric Update's 2025-07-04 second-hand account (now held). The original carries the method, the
  scope of the exposure and any government reply in full. No direct URL located; likely
  observer.org.sz / Eswatini Observer Sunday edition. **[untried]**
- **ACQ-SWZ — an Eswatini-side primary on the minister's Senate answers about the Google MoU
  (April 2025).** Maziya answered Senator Fezeka Dlamini on data sovereignty in the FY2025/26 Senate
  Portfolio Committee budget debate — NDA signed, "need-to-know" access "deactivated post
  implementation." The wiki reaches this only through Africa-Press syndication
  (`africa-press.net/eswatini/all-news/eswatini-google-deal-wont-affect-compromise-national-data`,
  2025-04-02); the underlying Eswatini Observer / Times of Eswatini original, or the Senate Hansard,
  would be the record. This is the best accountability trail on a deal whose value and term neither
  party has published. **[untried]**
- **ACQ-UGA — the Monitor's 2017-07-07 "Government gives printing deal to German firm."**
  `monitor.co.ug/uganda/news/national/government-gives-printing-deal-to-german-firm-1709514` — the
  2016–17 UPPC/Veridos security-printing award: Kasaija's letter of 3 July 2017, the disqualification
  of De La Rue and Mühlbauer, and Governor Mutebile's objection that Veridos was not a banknote
  printer. This is the origin document for the vendor spine now recorded on `veridos.md`; the wiki
  holds the story only through 2022+ retrospectives. **[blocked — paywall]**
- **ACQ-UGA — the COSASE record of NIRA's UGX 18.3bn payment to USPC (July 2024).** Reached via Nexus
  Media 2024-07-22 (`nexusmedia.ug/parliament-probes-nira-over-ugx-18-billion-payment-to-uspc-amid-concerns-of-transparency/`);
  the committee's own record, or Parliament of Uganda's report, would establish the contract terms
  behind the projected **UGX 61bn** card cost — the money side of the card-collection constraint
  (10,152,559 printed / 2,581,457 collected). Also wanted: Parliament of Uganda, "Finance officials on
  the spot over UPPC-Veridos contract" (`parliament.go.ug/news/2285/...`, undated on page). **[untried]**
- **ACQ-AGO — INACOM *Relatório Anual Estatístico do Sector das Telecomunicações e Tecnologias de
  Informação*, 2024 edition.** Presented **2025-06-13** at ANGOTIC 2025 (Centro de Convenções do
  Talatona), minister Mário Oliveira presiding; **bilingual PT/EN** from this edition; new chapters
  *Inclusão Digital* and *Panorama Regulatório*. Listed at
  `observatoriotic.gov.ao/documents?documentType=&page=1&perPage=10&search=&type=report&year=`
  (also `inacom.gov.ao`). **The authoritative Angolan telecoms series, and the only thing that can
  settle the national fibre-length question** — five official statements from MINTTICS and its
  secretary of state run non-monotonic across 2023–2026 (22,000 → 20,000 → 30,000 → 22,000 →
  28,000 km). Third parties demonstrably hold the PDF (Forbes África Lusófona quotes it in detail,
  2025-06-19). **Caveat: it is not established that the series reports a fibre-km total at all** —
  only the fixed-line and penetration chapters are confirmed, so this may not settle it.
  **[blocked — portal is a client-side app serving no server HTML; three automated fetch routes have
  returned nothing. Needs a browser session or manual download. Do not retry automated fetch.]**
- **ACQ-ZWE — Econet InfraCo Pre-Listing Statement dated 2026-02-04 (the *original*).** The wiki holds
  only the **supplementary** PLS of 2026-03-26
  (`econetinfracoinvestor.com` / `ewzinvestor.com/econet-infraco-supplementary-pre-listing-statement-to-the-pre-listing-statement-dated-wednesday-04-february-2026/`).
  The original — and the circular to EWZL shareholders of the same date — would carry the
  **definitive group structure**, which is the one thing still unheld on the resolved DPA-identity
  question (REV-DPA-001): no companies-registry extract or structure chart is held for any of the
  three DPA entities. **[untried]**
- **ACQ-SSD — UN Commission on Human Rights in South Sudan, *Plundering a Nation: How Rampant Corruption
  Unleashed a Human Rights Crisis in South Sudan*, A/HRC/60/CRP.5, 16 September 2025 (101pp).**
  `https://www.ohchr.org/sites/default/files/documents/hrbodies/hrcouncil/cohrsouthsudan/a-hrc-60-crp-5.pdf`
  (low-file-size variant: same path with `-low-file-size.pdf`; easy-read summary:
  `a-hrc-60-crp.5-easy-to-read.pdf`; mirrored on ReliefWeb at
  `reliefweb.int/attachments/89ac2789-fbca-4254-9a7d-9875316b7999/a-hrc-60-crp-5.pdf`).
  The **primary of record on Crawford Capital Ltd**, with a titled section "Collections outsourced to
  Crawford Capital Ltd." at **p.48**. The wiki holds the OHCHR press release (clipped 2026-07-20) but not
  the report. **What only the full report settles:** the **documented on-paper corporate ownership
  structure** of Crawford — which is the single outstanding question on the resolved SSD revenue-platform
  item. The Commission's published summary says the company is "owned and run by family members of
  national political elites" but **does not name Adut Salva Kiir Mayardit**, the attribution the wiki
  previously carried from secondary reporting; the full report would confirm or retire it. Also holds the
  contract terms, the SSRA retention-account findings and the 54 recommendations. **[untried — direct PDF
  fetch not attempted this pass]**
- **ACQ-UGA-GEA — Uganda's renewed Government Enterprise Architecture and e-Government
  Interoperability Framework (delivered by 2026-05-27).** NITA-U with the e-Governance Academy,
  World Bank-supported. Publisher of record: NITA-U (`nita.go.ug`); the eGA project pages
  (`ega.ee/uganda-renewal-government-enterprise-architecture-interoperability-framework/`,
  `ega.ee/uganda-renewed-digital-government-frameworks/`) announce the work but **publish neither
  document**. The wiki holds the **2021 originals** (`2021-05-06 Uganda e-Government
  Interoperability Framework (e-GIF)`) and both eGA announcements, but nothing of the renewed
  content. **What only the documents settle:** what actually changed against the 2021 e-GIF, the
  technical standards MDAs must now build to, and any compliance or rollout schedule — the wiki
  can currently say the frameworks were renewed and **nothing about what they now require**.
  Related: no rollout or adoption figure is published as of 2026-07-20. **[untried]**
- **ACQ-UGA-USPC — the Uganda Security Printing Company (USPC) constitutive and contract record.**
  Wanted: the **Government/Veridos joint-venture instrument** establishing USPC (reported 2018, on
  the expiry of Mühlbauer's card-production contract) and the **2017 security-printing award**.
  Candidate primaries: Uganda Gazette notices; PPDA records; Auditor General reports on NIRA card
  production; Companies-registry (URSB) filings for USPC. **Why it matters:** `wiki/entities/veridos.md`
  and `wiki/intersections/uganda--dpi-id.md` carry a **€64.2m March-2010 Mühlbauer contract, a
  UGX 59.952bn Kololo plant, a 2016-06-11 UPPC joint venture, a 2017-07-03 award by Finance Minister
  Matia Kasaija over De La Rue, and a 15-year JV split Government 51% / Veridos 49%** — all of which
  entered from reconcile-pass research and are **in no source held in `raw/`**. They are flagged
  unverified on both pages. This is the acquisition that either confirms or retires them. Also
  unheld: **any unit or programme cost for USPC card production**. **[untried]**
