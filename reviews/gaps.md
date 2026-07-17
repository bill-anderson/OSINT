# reviews/gaps.md — structural-gap leads (human-owned)

Standing register of **gaps**: high-confidence *structural* absences surfaced
during ingest — an entity referenced with no page, a claim with no supporting
source. Each is a **research lead for the human to consider sourcing**, never a
task actioned autonomously (see CLAUDE.md → Autonomy and review). **The reconcile
pass never reads this file.** When a gap is sourced, remove it here and append a
resolution line to `log.md`.

> Items carry an ID and — now the vault is under git — a commit ref alongside
> the `log.md` date / page ref. Seeded 2026-07-13; migrated into `reviews/` 2026-07-16.

---

- **GAP-001 · NADPA has no entity page.** The **Network of African Data Protection Authorities**
  (NADPA / RAPDP) is referenced as a standing pan-African body — it admitted **Somalia and Tanzania**
  as members in 2025 ([[2026-01-11 The Year of the Teeth Data Protection in Africa Roundup, 2025, Projections for 2026]])
  — but has no `organisation` entity page, so the reference is a dead link. A profile would anchor the
  DPA-coordination thread that recurs across [[gov.protect]] and [[gov.regional]]. *Lead: consider
  sourcing a NADPA primary (membership list, statute) and creating the entity.*

*(GAP-002 — GSMA SA smartphone-tax report — resolved 2026-07-14: the primary GSMA report arrived
in the same batch and is now held; instrument upgraded stub→active. See log.md.)*

- **GAP-003 · National DPA entity pages missing for the 2026 enforcement wave.** The H1-2026
  data-protection batch surfaced several national data-protection authorities and their statutes as now
  central to the continental enforcement/reform story, but with **no entity page** (referenced only in
  prose): **Angola's** data-protection agency (APD) and its AI-provisions revision; **Ghana** Data
  Protection Commission (+ 2025 Bill / data-as-property) *(DPC entity created — Ghana batch, 2026-07-16;
  the 2025 Bill / data-as-property primary still to source)*; **Botswana** Information & Data Protection
  Commission (2024 Act); **Mauritius** Data Protection Office (+ 2017 Act amendment, National Data
  Strategy 2025–2029); **Seychelles** Information Commission (2023 Act); plus the new **Burundi**
  (Jan 2026), **Djibouti** (Digital Code) and **Gambia** laws. *Lead: consider sourcing primaries and
  creating the highest-recurrence DPA/instrument pages to anchor the [[gov.protect]] / [[gov.legislate]]
  threads — created here only for the entities the batch actually leaned on.* (Recorded Batch A,
  2026-07-14.)

- **GAP-CMR-001 · Cameroon personal-data-protection bill — enactment status unconfirmed.** Cameroon
  introduced two bills to parliament in late 2024 — a civil-registration reform (enacted as **Law 2024/016**,
  now being implemented by BUNEC) and a **personal data protection** bill. The wiki holds no source confirming
  whether the data-protection bill was enacted, and Cameroon's rapid biometric-ID + CRVS rollout is proceeding
  without a confirmed operative DP law / authority. *Lead: consider sourcing the status of Cameroon's
  data-protection law and any supervisory authority.* See [[cameroon--dpi-id]]. (Recorded CMR/CIV batch, 2026-07-15.)

- **GAP-BFA-001 · Burkina Faso CIB-AES biometric ID — vendor/technology unconfirmed.** The AES biometric
  card ([[cib-aes]], [[oni-burkina-faso]]) rollout is well-documented, but no source in hand confirms the
  **vendor or technical platform** — "Emptech" appears only in a source's keyword list, not its body. *Lead:
  consider sourcing a government/vendor primary on the CIB-AES production contract and platform (and whether it
  shares the AES common-passport vendor).* See [[burkina-faso--dpi-id]]. (Recorded BFA/BWA batch, 2026-07-15.)

- **GAP-BDI-001 · Burundi biometric national ID — no confirmed vendor, technology or firm launch date.**
  The rollout has slipped repeatedly (2023: "before 2025"; May 2024: not ready for the 2025 voter enrolment;
  Jan 2026: "pilot testing in ~a dozen communes"), but no source names the **vendor/platform** (e.g. MOSIP or
  other) or a firm national-launch date. *Lead: consider sourcing a government/vendor primary on the biometric-
  ID system's technology and timeline.* See [[burundi--dpi-id]]. (Recorded BEN/BDI batch, 2026-07-15.)

- **GAP-BDI-002 · Burundi–Vietnam digital-cooperation MoU referenced, not sourced.** The IFC piece notes
  Burundi "concluded a Memorandum of Understanding with Vietnam to sharpen collaboration on digital projects"
  (~late 2024), but the wiki holds no source or detail on it. *Lead: consider sourcing the Burundi–Vietnam
  digital MoU (scope, date) — a geopol. thread worth anchoring if it recurs.* (Recorded BEN/BDI batch, 2026-07-15.)

- **GAP-AGO-001 · Unitel–Ericsson network-modernisation deal unsourced.** A 2025 Unitel–Ericsson mobile
  network-modernisation partnership appears in the source datasets (Ericsson press-release URL) but was not
  fetched into this batch, so [[unitel]] carries the claim without a dated source page. *Lead: consider
  sourcing the Ericsson/Unitel primary and adding a source page.* (Recorded AGO batch, 2026-07-15.)

- **GAP-AGO-002 · Angola's foundational digital-ID stack — whose technology?** Sources describe two
  different foreign stacks without reconciling them: a **Chinese-devised civil-registration system** (state-
  owned CEIEC won the contract Nov 2019; live in Luanda 2020) and a **2025 India pivot** to model the digital
  ID on **Aadhaar** under the $200m DPI credit ([[angola-india-dpi-credit-line]]; MOSIP context). These may be
  complementary (China = civil registration/CRVS; India = future foundational digital ID) or a hand-off — no
  single source clarifies which stack underpins the **Bilhete de Identidade (BI)** / planned digital ID.
  *Lead: consider sourcing a primary (INFOSI / Ministry / vendor) that states the current and planned digital-ID
  platform; watch for a China↔India stack contradiction as it develops.* See [[angola--dpi-id]]. (Recorded AGO
  batch, 2026-07-15.)

- **GAP-DZA-001 · Algeria data-governance framework — "JO-87" vs Presidential Decree 25-350.** The
  We Are Tech Africa report anchors the national data-governance framework in **Presidential Decree
  No. 25-350 (30 Dec 2025)**, but an earlier LinkedIn lead referenced a **"JO-87" national
  data-governance / cyber strategy** — not held as a source. *Lead: confirm whether JO-87 (an
  Official-Journal issue?) and Decree 25-350 denote the same instrument or two distinct texts, and
  source the primary if they differ.* See [[algeria-data-governance-framework]]. (Recorded DZA batch,
  2026-07-15.)

- **GAP-DJI-001 · Djibouti D-Money port-payment launch — publication year unconfirmed.** The
  Developing Telecoms report of Djibouti Telecom extending **D-Money** to port workers (launched by
  PM Abdoulkader Kamil Mohamed "on 11 December") carries **no year** in the clip; the source page is
  dated **2021-12-11** with `date_source: proxy` on an inferred year. *Lead: confirm the true
  publication/launch year from the Developing Telecoms article (id 15938) or a Djibouti Telecom /
  DPCS primary, and correct the source date if wrong.* See [[djibouti-telecom]], [[djibouti--dpi-pay]].
  (Recorded DJI/CPV batch, 2026-07-15.)

- **GAP-CAF-001 · SOCATEL "National Digital Hub" (planned Tier III data centre) unsourced.** The
  CAF dataset lists a planned **SOCATEL National Digital Hub** (Tier III DC, Bangui) — noted on
  [[socatel]] — but no dated primary confirms it; CAR currently has **no national data centre** (per the
  2022 [[greater-internet-freedom]] baseline). *Lead: consider sourcing a SOCATEL / ministry primary on
  the planned Bangui data centre; until then the claim stays flagged, not asserted.* (Recorded CAF batch,
  2026-07-15.)

- **GAP-GAB-001 · Gabon data-protection law/authority — asserted but unsourced.** The WB
  [[digital-gabon-project]] is explicitly building "data protection and cybersecurity foundations,"
  and Gabon is tagged [[gov.protect]], but the wiki holds **no primary on Gabon's actual
  data-protection law or supervisory authority** — the fast-moving CNIE/NIP, RSU and SIGFIP builds are
  proceeding without a confirmed operative DP regime on file. *Lead: consider sourcing Gabon's
  data-protection statute and any authority (e.g. CNPDCP-equivalent).* See [[GAB]], [[gabon--dpi-id]].
  (Recorded GAB batch, 2026-07-15.)

- **GAP-GAB-002 · Gabon CNIE/NIP enrolment coverage — no published figure.** The digital-ID relaunch
  is the flagship DPI component, and the WB results framework targets a "% of population 16+ with a
  NIP," but that indicator was at **baseline (0) as of Dec 2024** and no source in hand gives a current
  enrolment/coverage number. *Lead: consider sourcing a dated NIP/CNIE coverage figure (DGDI / ANINF /
  WB ISR).* See [[gabon--dpi-id]]. (Recorded GAB batch, 2026-07-15.)

- **GAP-GAB-003 · Gabon ID stack — vendor roles under-disambiguated + Visa digital-ID leg unsourced.**
  Secondary coverage credits card/software supply to **[[in-groupe]]** (French) while reporting
  **[[thales]]** (French) is resuming its **historical registry** contract (post-Semlex) — the two
  roles (credential vs registry) are distinct but never cleanly separated, and no primary award is on
  file. Separately, the **[[gabon-visa-partnership-deal]]** "secure digital-identity system" element is
  reported only second-hand. *Lead: consider sourcing the primary CNIE contract award(s) to pin who
  supplies what, and a Visa/Gabon primary for the ID element.* See [[gabon--dpi-id]]. (Recorded GAB
  batch, 2026-07-15.)

- **GAP-DJI-002 · ANSIE has no entity page.** The **Agence Nationale des Systèmes d'Information de l'État
  (ANSIE)** — Djibouti's state IT agency (created by Loi n°100/AN/15) — is now central to the
  cybersecurity-institution story: its **DSSI** directorate is the statutory **nucleus of the new
  [[national-cybersecurity-authority-djibouti|ANC]]** (Loi n° 195/AN/25, Art. 24), and ANSIE also runs the
  state's Tier-3 data centre and e-gov platforms. Referenced only in prose (plain text, no page). *Lead:
  consider sourcing an ANSIE primary (its enabling law n°100/AN/15 or official site ansie.dj) and creating
  the `government-body` entity.* See [[DJI]], [[national-cybersecurity-authority-djibouti]]. (Surfaced
  reconcile REV-DJI-001, 2026-07-16.)

- **GAP-GHA-001 · GhIPSS has no entity page.** **GhIPSS** (Ghana Interbank Payment and Settlement
  Systems) — operator of the national switch, **GhIPSS Instant Pay (GIP)** and mobile-money
  interoperability — is referenced repeatedly across [[dpi.pay]], [[bank-of-ghana]] and the Payment
  Systems Oversight Report 2023 (GIP GH¢120.1bn in 2023) but has **no page** (plain-text/"mentioned"
  only). It is the central rail behind Ghana's interoperability story and the natural anchor for
  [[ghana--dpi-pay]]. *Lead: consider sourcing a GhIPSS primary (BoG/GhIPSS site or annual report) and
  creating the `government-body`/`resource` entity.* (Recorded Ghana batch, 2026-07-16.)

- **GAP-GHA-002 · NIA statutory basis single-sourced / date conflict.** The
  [[national-identification-authority-ghana|NIA]]'s enabling statute is cited inconsistently across
  sources — an admissible clip gives the **"National Identification Act 2009"** (used on the entity
  page), while other (parked, inadmissible) material cites the **NIA Act 2006 (Act 707)** + **National
  Identity Register Act 2008 (Act 750)**. No clean primary (the Acts themselves) is on file. *Lead:
  consider sourcing the primary Ghanaian statutes to pin the NIA's legal basis before it is cited as
  settled.* See [[national-identification-authority-ghana]]. (Recorded Ghana batch, 2026-07-16.)

- **GAP-GHA-003 · MoCD agency cluster under-hubbed.** The US Country Commercial Guide names several
  central Ghanaian digital agencies with **no entity page** — **NITA** (ICT security/standards),
  **Cyber Security Authority (CSA)** and **GIFEC** (universal-access fund). Referenced in prose on
  [[GHA]] only. *Lead: consider sourcing primaries and creating the highest-recurrence of these
  (CSA and NITA anchor [[infra.cybersec]] / [[gov.standards]]).* (Recorded Ghana batch, 2026-07-16.)

- **GAP-GIN-001 · Guinea's digital-agency architecture under-hubbed.** Guinea's newly structured
  delivery agencies — **ANDE** (Agence Nationale de Digitalisation de l'État), **ANSSI** (cybersecurity)
  and **ANSUTEN** (universal service/inclusion) — recur across the batch as the institutional backbone of
  the [[simandou-2040]] digital push but have **no entity pages** (prose-only on [[GIN]]). *Lead: consider
  sourcing agency primaries (enabling decrees / official sites) and creating the highest-recurrence pages
  — ANSSI and ANDE anchor [[infra.cybersec]] / [[gov.policy]].* (Recorded Guinea batch, 2026-07-16.)

- **GAP-GIN-002 · SNIS (Guinea health information system) has no entity page.** The **Système National
  d'Information Sanitaire (SNIS)** is the target of a 2025 interoperability/data-governance modernization
  drive (Terre des Hommes / Enabel / Wehubit; REC maternité register) but is referenced only in prose on
  [[GIN]] and [[dpi.mis]]. *Lead: consider sourcing an MSHP/SNIS primary and creating the entity to anchor
  Guinea's [[dpi.mis]] thread.* (Recorded Guinea batch, 2026-07-16.)

- **GAP-GNQ-001 · GITGE has no entity page.** **GITGE** (Gestión de Infraestructuras de Telecomunicaciones
  de Guinea Ecuatorial) — Equatorial Guinea's state telecom-infrastructure manager operating the Ceiba-1/
  Ceiba-2 and ACE subsea cables — is referenced only in prose on [[GNQ]]. *Lead: consider sourcing a GITGE
  primary and creating the `government-body`/`company` entity to anchor [[GNQ]] connectivity.* (Recorded
  four-country batch, 2026-07-16.)

- **GAP-GMB-001 · Central Bank of The Gambia / GRA under-hubbed.** The **Central Bank of The Gambia** (which
  launched the BANTABA 2.0 instant switch) and the **Gambia Revenue Authority** (e-invoicing) are central to
  the Gambian DPI story but have no entity pages ([[gamswitch]] covers the switch, not the regulator).
  *Lead: consider sourcing CBG/GRA primaries and creating the `government-body` entities.* (Recorded
  four-country batch, 2026-07-16.)

- **GAP-KEN-001 · IPRS / Kenyan govtech systems under-hubbed.** Kenya's **Integrated Population Registration
  System (IPRS)** — the identity-data backbone behind eCitizen, voter registration (IEBC) and Maisha Namba —
  plus **NPSIMS** (police) and **DIIMS** (diaspora) are referenced only in prose. IPRS especially recurs as
  the interoperability spine. *Lead: consider sourcing an IPRS primary and creating the `resource`/
  `government-body` entity.* See [[maisha-namba]]. (Recorded four-country batch, 2026-07-16.)

- **GAP-LBR-001 · Liberia has no data-protection authority or law.** Liberia mandates biometric ID (EO 147)
  and SIM-ID linkage but has **no dedicated data-protection law and no National Data Authority**, despite being
  an ECOWAS Data Protection Act signatory. A live data-sovereignty risk. *Lead: watch for the drafted policy to
  implement the ECOWAS Act; consider sourcing the primary when it lands.* See [[liberia--dpi-id]],
  [[national-identification-registry-liberia]]. (Recorded four-country batch, 2026-07-16.)

- **GAP-LBY-001 · Libyan digital-government bodies under-hubbed.** The **HNEC** (electoral commission, biometric
  voter verification), the **Libyan Tax Authority** (Unified Tax System) and the **Commercial Registry Authority**
  (One-Stop Shop) recur on [[LBY]] but have no entity pages. *Lead: consider sourcing primaries and creating the
  highest-recurrence pages.* (Recorded four-country batch, 2026-07-16.)

- **GAP-LSO-001 · Central Bank of Lesotho / Revenue Services Lesotho under-hubbed.** The **Central Bank of
  Lesotho** (which leads LeSwitch) and **Revenue Services Lesotho** (tax e-payment) are central to Lesotho's
  digital-payments story but have no entity pages ([[leswitch]] covers the switch, not the regulator). *Lead:
  consider sourcing CBL/RSL primaries and creating the `government-body` entities.* (Recorded four-country
  batch, 2026-07-16.)

- **GAP-MAR-001 · Morocco data-governance / registry bodies under-hubbed.** The **CNDP** (personal-data-protection
  commission, Law 09-08), **ANCFCC** (land/cadastre) and **CNSS** (social security) are central to Morocco's
  digital-ID and data-governance ecosystem (Idarati X.0, cyberattack targets) but have no entity pages. *Lead:
  consider sourcing primaries and creating the CNDP page first (anchors [[gov.protect]]).* See [[morocco--dpi-id]].
  (Recorded four-country batch, 2026-07-16.)

- **GAP-NGA-001 · NDPC enforcement primary missing.** The **NDPC ₦766.2m MultiChoice Nigeria fine (2025)**
  is asserted only in an inadmissible vendor compliance guide (parked as a lead); no admissible NDPC/press
  primary is held. *Lead: source an NDPC or on-the-record report to strengthen [[ndpc]] / [[gov.protect]]
  enforcement record.* (Recorded NGA·RWA·SDN·SEN batch, 2026-07-16.)

- **GAP-RWA-001 · Rwanda DPI actors under-hubbed.** Recurring but page-less: **Josephine Mukesha** (NIDA
  Director-General), **RDAP** (Rwanda Digital Acceleration Project — the ID funding envelope), **WiredIn**
  (Rwandan Mojaloop systems integrator on eKash), and the **Rwanda Space Agency / GeoHub**. *Lead: consider
  sourcing primaries and creating the highest-recurrence pages (NIDA DG, RDAP).* (Recorded batch, 2026-07-16.)

- **GAP-SEN-001 · Senegal data-protection revision + breach linkage unconfirmed.** (a) A **revision of Law
  No. 2008-12** is reported "underway" (2025) but no source confirms an enacted update; (b) a possible link
  between the **Iris Corp unpaid-invoices dispute** and the Feb-2026 DAF breach is unconfirmed by authorities.
  *Leads: source the DP-law revision status; treat the Iris↔breach link as an open research lead.* (Recorded
  batch, 2026-07-16.)

- **GAP-SDN-001 · Sudan AML / data-protection legal framework unsourced.** Sudan's **AML/CTF Act 2014** and
  **CBOS/FIU** directives are referenced (via a parked KYC lead) but no admissible primary is held for Sudan's
  AML or data-protection legal framework. *Lead: source the primaries to anchor [[gov.legislate]] /
  [[gov.protect]] for SDN.* (Recorded batch, 2026-07-16.)

- **GAP-SDN-002 · Sudan payments/telecom parents page-less.** **Central Bank of Sudan (CBOS)** (payments/AML
  authority) and **Zain Group** (parent of [[zain-sudan]]) recur but have no entity pages; and the artefact
  `2026-07-16 Building Resilience through Digital Financial Services in Sudan` carries an **unverified
  publication date** (filed `date_source: proxy`). *Leads: create CBOS/Zain-Group pages; verify and re-prefix
  the DFS report date.* (Recorded batch, 2026-07-16.)

- **GAP-SSD-001 · South Sudan's de-facto tax/revenue DPI unsourced.** A privately-owned national tax/revenue
  platform (associated with Adut Salva Kiir Mayardit) is described as load-bearing fiscal DPI in South Sudan,
  but the only account held is the Sudans Post synthesis — no primary source and no standing entity page.
  *Lead: source a primary on the platform's ownership, mandate and operator to anchor SSD [[dpi.pay]] /
  [[dpi.govtech]].* (Surfaced ingest, 2026-07-16.)

- **GAP-SLE-001 · Sierra Leone gov-portal items behind 403s (hand-source).** Three SLE developments flagged in
  Phase-1 could not be clipped (portal 403s): **NCPC launch** (Nov 2024), the **NCRA–SLRSA data-sharing
  agreement**, and **NACSA PWD mass-registration**. *Lead: hand-source these primaries; they are real coverage
  currently absent from the SLE hub.* (Surfaced ingest, 2026-07-16.)

- **GAP-STP-001 · São Tomé national-ID/registry owning bodies page-less.** The national digital-ID pilot's
  owning body is referenced only as the **Justice Ministry / DGRN** (civil-registration authority), and
  **INIC** (Institute for Innovation and Knowledge) is named on the STP hub — neither has an entity page.
  *Lead: create STP government-body pages once more sourced.* (Surfaced ingest, 2026-07-16.)

- **GAP-SOM-001 · Somalia CRVS and NIRA-Act primaries missing.** The **MOIFAR CRVS-launch primary**
  (moifar.gov.so) and the **NIRA Act (Law 009)** PDF were noted in Phase-1 as fetch-fails; the wiki holds the
  secondary reporting but not these primaries. *Lead: hand-source the MOIFAR CRVS primary and the NIRA Act to
  anchor [[somalia-crvs]] and [[nira-somalia]] / [[snid]].* (Surfaced ingest, 2026-07-16.)

- **GAP-SWZ-001 · Eswatini–Google partnership rests on a single secondary outlet.** The January-2025
  Eswatini–Google partnership (Google tools into "Government in Your Hand", announced by ICT Minister
  Savannah Maziya) is held only via **Techpoint Africa**. No Google statement and no Government of
  Eswatini primary is on file, and no MoU value, term or scope was disclosed — so the deal entity rests
  entirely on one trade re-report. *Lead: source a Google or GoE primary to anchor
  [[eswatini-google-partnership]].* (Surfaced ingest, 2026-07-17.)

- **GAP-SWZ-002 · Eswatini's GIYH App launch and its privacy criticism are unsourced.** Biometric Update
  (2025-08-05) records that Eswatini launched the **GIYH App in May 2025** and that the launch "faced
  criticism over data privacy issues". No source in the corpus covers that launch or the criticism
  directly — a conspicuous hole given [[government-in-your-hand]] is the spine of Eswatini's strategy.
  *Lead: source the GIYH App launch and the privacy critique.* (Surfaced ingest, 2026-07-17.)

- **GAP-SYC-001 · The Seychelles Data Protection Act 2023 primary is not held.** The wiki holds two
  law-firm/advisory analyses of the Act but not the Act as gazetted. This is load-bearing: the two
  analyses give **19 December 2023** (enactment) and **22 December 2023** (start of the 18-month
  transition) and only the primary settles which date attaches to what. *Lead: source the gazetted Act.*
  (Surfaced ingest, 2026-07-17. Related: `reviews/contradictions/` is not opened for this — the two dates
  are probably distinct events, not competing values.)

- **GAP-SYC-002 · Seychelles cheque phase-out figures rest on a 403'd canonical URL.** The Central Bank
  of Seychelles cheque phase-out schedule and its figures (~600,000 cheques in 2023; card + SEFT
  transactions exceeding 10 million) come from a Seychelles News Agency article whose canonical URL
  returned **HTTP 403 on two fetch attempts**; the body on file was reconstructed from a same-day
  syndicated copy and is filed `date_source: proxy`. *Lead: re-fetch the SNA original, or source the CBS
  primary directive, before these figures are leaned on.* (Surfaced ingest, 2026-07-17.)

- **GAP-TCD-001 · DataReportal *Digital 2025: Chad* is cited but not held.** Chad's 13.2% start-of-2025
  internet-penetration figure reaches the wiki only via a second-hand relay; the underlying report is not
  on file. It is the primary needed to settle
  `reviews/contradictions/open/chad-internet-penetration-2024-2025`. *Lead: source the Digital 2025 Chad
  report.* (Surfaced ingest, 2026-07-17.)

- **GAP-TCD-002 · Chad's new digital law has no text and no enactment date.** Minister Boukar Michel
  announced (2025-12-09) that Chad was "finalizing" a digital law covering cybersecurity, data protection
  and internet governance. No text, no enactment date and no gazette reference is held — so the wiki
  carries a prospective instrument it cannot cite. A related **22 October 2025** ordinance amending the
  2014 electronic-communications law is likewise held only via reporting. *Lead: source both instruments
  and follow up on enactment.* (Surfaced ingest, 2026-07-17.)

- **GAP-TCD-003 · The Eximbank financing Chad's PMICE is unidentified.** A 2023 World Bank document (via
  Data Center Dynamics, 2026-01-06) records that PMICE — originally costed at **$180 million**, now
  **€175.1m / $204.7m** — is financed by "Eximbank", **with no country of origin stated**. On a project of
  that size the lender's identity is a material provenance gap with obvious geopolitical salience.
  *Lead: identify the lender.* (Surfaced ingest, 2026-07-17.)

- **GAP-TCD-004 · Chad–Azerbaijan digital MoU agreed but not held.** Chad and Azerbaijan agreed
  (reported 2025-12-02) to formalise a digital partnership covering a national data centre, infrastructure
  modernisation and e-government, **with no timeline announced**. No signed instrument is held.
  *Lead: watch for and source the MoU.* (Surfaced ingest, 2026-07-17.)

- **GAP-TGO-001 · Togo's data-protection law and the IPDCP's establishing act are not held.** The World
  Bank WURI ISR (2023-12-21) records a Togolese **data protection law of September 2019** and the creation
  of the **IPDCP** as the data protection authority, but neither instrument's text is on file — so
  [[ipdcp-togo]] stands on a one-line mention in an implementation report plus a December-2025 cooperation
  accord. *Lead: source the 2019 law and the IPDCP's establishing instrument.* (Surfaced ingest, 2026-07-17.)

- **GAP-TGO-002 · Togo's e-ID programme has no cumulative enrolment figure at any recent date.** The
  November-2025 Maritime-region rollout reports a new enrolment phase but **no count of people registered
  to date**; the only figures held are the WURI ISR's *goal* of 8 million by June 2024 (as of Dec 2023) and
  a May-2026 Biometric Update explainer's **6 million unique numbers issued**, which the wiki cannot tie to
  a stated as-of date from ANID itself. *Lead: source an ANID enrolment figure with an as-of date.*
  (Surfaced ingest, 2026-07-17.)

- **GAP-TGO-003 · Togo–Kazakhstan DPI partnership referenced with no detail.** Named in passing by
  Biometric Update (2025-11-03) among bilateral DPI partnerships, with no date, scope, instrument or
  participants. *Lead: source it or drop the reference.* (Surfaced ingest, 2026-07-17.)

- **GAP-TCD-005 · Chad's telecoms/digital minister may have changed, unrecorded.** Every 2025–26 clip in
  this batch names **Boukar Michel** as Minister of Telecommunications/Digital Economy (in five different
  title renderings), but the 2026-07-01 US-partnership source names **Haliki Choua Mahamat** in what
  appears to be the same portfolio. No source held reports a handover, so the wiki cannot say who holds
  the post or since when. *Lead: establish the current officeholder and the date of any change.*
  (Surfaced ingest, 2026-07-17.)

- **GAP-UGA-001 · The ISER judgment itself is not held.** The wiki now holds an advocacy account of
  *Initiative for Social and Economic Rights (ISER) & 2 Others v Attorney General & NIRA*
  (**HCT-00-CV-MC-0066-2022**, High Court of Uganda, dismissed **10 June 2025**) but not the judgment. This
  is the most consequential legal event in Uganda's digital-ID story, and the wiki reads it only through a
  campaigning party's summary. *Lead: source the judgment.* (Surfaced ingest, 2026-07-17.)

- **GAP-UGA-002 · The Bloomberg / Lighthouse Reports ID-surveillance investigation is not held.** The
  wiki's account of Uganda's national ID being used in a surveillance dragnet (and of lawyer Nick Opiyo's
  December 2020 detention) comes via Biometric Update reporting *on* that investigation. The original is
  the primary and would materially strengthen the thread. *Lead: source the Bloomberg/Lighthouse feature.*
  (Surfaced ingest, 2026-07-17.)

- **GAP-UGA-003 · The Veridos / Muehlbauer card-production dispute is single-sourced.** An unresolved
  contract controversy over Uganda's national ID card production — with Muehlbauer High Tech International
  named as the prior NSIS supplier and described as having been "embroiled in a scandal concerning
  overcharging" — appears in exactly one clip (2024-08-19) and nowhere else in the corpus. Analytically
  live and currently unverifiable. *Lead: source the procurement record and the outcome.* (Surfaced ingest,
  2026-07-17.)

- **GAP-UGA-004 · The NITA-U GEA/e-GIF workshop item has no establishable date.** The clip carries an empty
  `published:` field, no date in the body and no date in the URL path; it is filed `date_source: proxy` at
  the ingest date, which is not a publication date and makes its sort position meaningless. *Lead: fetch
  the page or the publisher's `/news/4057/` index to establish the true date, then re-prefix.* (Surfaced
  ingest, 2026-07-17.)

- **GAP-TZA-001 · The Bank of Tanzania is page-less despite anchoring three threads.** BOT now underpins
  the TIPS national payment switch (453.7m transactions worth TZS 29.9tn in 2024), the Financial Consumer
  Protection Regulations (GN 298 of 2025), and the mobile-money regime — but has no entity page and is
  referenced on the TZA hub only via a TIPS official. *Lead: create the page from the material now held.*
  (Surfaced ingest, 2026-07-17.)

- **GAP-TZA-002 · Wananchi Group is page-less while three held pages assert its acquisition.** `yas.md`,
  `axian-telecom.md` and a 2026-07 EBRD source all assert AXIAN's 2025 acquisition of Wananchi (parent of
  Zuku and Simbanet); none carried a date, price or stake until this batch supplied them ($63m for 99.63%,
  completed 2025-11-10). Wananchi still has no page. *Lead: create the company page and the deal entity.*
  (Surfaced ingest, 2026-07-17.)

- **GAP-TUN-001 · The Central Bank of Tunisia's own payments bulletin is not held.** Tunisia's 2025
  mobile-payments figures (81% growth, 8.4m transactions worth TND 1,769m, 815,000 active wallets) reach the
  wiki only via an aggregator's repackaging of a CBT bulletin. *Lead: source the bulletin.* (Surfaced
  ingest, 2026-07-17.)

- **GAP-TUN-002 · Tunisia's biometric ID rollout has no confirmed outcome.** Organic Laws 22 and 23 of 2024
  were adopted 2024-03-06 and usage was targeted for H1 2025 against an ICAO 2026 recommendation — but the
  freshest evidence held (2025-03) still describes the biometric card as *proposed*. The wiki therefore
  carries a target with no confirmation it was met. *Lead: establish whether issuance actually began, and
  when.* (Surfaced ingest, 2026-07-17.)

- **GAP-TUN-003 · Tunisia's current national digital strategy is unidentified.** The wiki holds
  **Digital Tunisia 2020-2025** as the framing strategy for the Cybernetica/UXP interoperability work,
  but **its window has now closed**, and the 2026-01-19 EBRD source refers to a "National Digital
  Strategy" without establishing whether that is the same document, a successor, or something else. No
  successor plan is sourced. The wiki therefore risks citing an expired strategy as current framing.
  *Lead: establish what strategy currently governs, and from when.* (Surfaced ingest, 2026-07-17.)

- **GAP-UGA-005 · A held Uganda artefact has no companion source page.** `raw/2026-07-11
  Data-Center-Market-Briefs-Uganda-2026.pdf` sits in `raw/` with **no companion markdown source
  page**, so it carries no frontmatter and cannot be `[[linked]]` — pages that need it must reference
  it as unlinked text. This breaches the Filenames rule that binary artefacts get a companion source
  page. Pre-existing, not from this batch; surfaced while building [[uganda--infra-store]]. *Lead:
  mint the companion page (or confirm the artefact should be dropped).* (Surfaced ingest, 2026-07-17.)
