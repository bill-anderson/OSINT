# reviews/acquisitions.md — the acquisition queue (documents to fetch)

A **shopping list**, not a research register. Every item is a *specific, known,
identified document* the wiki wants and does not hold — a gazetted Act, a
regulator's bulletin, a project appraisal document, a PDF behind a 403 or a
cookie wall. Nothing here needs investigating; it needs **fetching**.

Worked by the **acquisition pass** (`run acquisitions`, procedure in
`ACQUIRE.md`), never by reconcile — sending a download through an Exa
research pass wastes it. The pass takes the whole list, one automated attempt
each. What comes back is ingested via `new/` and its line struck; what a single
attempt cannot get — paywall, cookie wall, 403, anything needing a hand-clip — is
**dropped, not parked**, with its absence stated dated on the page it bears on. No
item is carried for a human loop.

Items are marked **[blocked]** (a recorded failure mode: 403, bot-block, cookie
wall, JS shell, fetch-size limit) or **[untried]** (never yet fetched).

---

*(Drained 2026-07-22 by the acquisition pass inside update-wiki: **both AENE items acquired** — Vote 25
chapter directly; Vote 5 via the **FullAENE full volume** (412pp — per-vote filename not exposed by the
index; the full volume also serves future votes). Staged to `new-budget/ZAF/2024/` for budget extract.)*

*(Drained 2026-07-22 by the acquisition pass — the 2 items from the ZAF FY2024/25 domestic finance
sweep, **both acquired** via the browser route after direct fetches failed. **AGSA PFMA GR 2024-25**
(14.7 MB): the legacy `Portals/0` URL bot-guards non-browser fetches, but the browser surfaced AGSA's
new site whose clean `/storage/app/media/reporting/pfma/` path curl then fetched directly. **DCDT
Annual Report 2024/25** (9.3 MB, 279 pp): Phoca Download form POST submitted in-browser
(page-context fetch → blob → manual save by Bill). Both staged to `new-budget/ZAF/` with companions
and manifest rows — outturn + audited stages for FY2024/25 now held.)*

*(Drained 2026-07-21 by the acquisition pass, then re-drained the same day inside update-wiki
iteration 2: of 3 items added by that run's ingest, **1 acquired** (IDS surveillance-spend release —
which corrected the figure the ingest had just compiled) and **2 dropped**: the Unwanted Witness report
(`dead-url`, CRAWL_NOT_FOUND) and the Spaces for Change Nigeria report (gated 74 MB download, page
serves metadata only — created 2024-10-28). Both absences stated dated on `wiki/concepts/gov.protect.md`.)*


### Added 2026-07-21 by reconcile (finance-load contradictions)

*(Drained 2026-07-21 by the acquisition pass: **all 3 items acquired**, 0 dropped, staged in `new/` as
4 clips — PAD5527, the 11 Jan 2024 press release, and the Mozambique pair (restructuring paper RES00782
and the D906-MZ partial-cancellation letter) filed separately as two documents. Nothing outstanding.)*

*(Drained 2026-07-23 by the acquisition pass inside the resumed update-wiki: of the 4 items added by
the 07-23 ingest, **3 acquired**, staged to `new/` — the **World Bank Morocco press release**
(worldbank.org, 2026-06-12: Board approval date to day precision, and the project ID **P513936**
surfaced via the program ESSA on documents.worldbank.org); the **AfCFTA–ADI Foundation communiqué**
(au-afcfta.org copy not surfaced; release text carried verbatim by NewsGhana, 2026-07-21); and the
**IMF blog** (canonical imf.org fetch timed out; full text captured from the investadvocateng.com
IMFBlog carry — the underlying departmental paper "Unlocking the Potential: AI in Sub-Saharan
Africa" remains not held, absence noted in the staged source). **1 dropped**: the Norebase *State of
Expansions in Africa 2026* report document (`not-retrievable`: no direct URL surfaced; guessed blog
URL CRAWL_NOT_FOUND) — absence stated dated on `wiki/concepts/dpi.registry.md`.)*

*(Drained 2026-07-22 by the acquisition pass — the 5 items added by that day's ingest, chunks C1/C2:
**2 acquired** (Smart Africa's own Africa AI Council release, 2025-11-17; Zambia Cyber Crimes Act No. 4
of 2025 gazetted text, parliament.gov.zm PDF) staged to `new/` as 2 clips; **3 dropped** — Kenya draft
AI policy (`not-retrievable`: ict.go.ke notice and press link only to the pre-existing National AI
Strategy 2025–2030, not the draft), PSC SITA report (`js-shell`: psc.gov.za publications gallery exposes
no report PDF), Bloomwit *Navigating Nigeria 2027* (`gated`: resources page serves only a blurb). Dated
not-held lines added to `wiki/places/KEN.md`, `wiki/places/ZAF.md`, `wiki/places/NGA.md`.)*

### Added 2026-07-23 by the domestic finance sweep (Kenya 2024 → FY2024/25)


### Added 2026-07-23 by the domestic finance sweep (Kenya 2025 → FY2025/26)



### Added 2026-07-23 by the domestic finance sweep (Senegal 2024 → FY2024)



*(Drained 2026-07-23 by the acquisition pass inside batch job 3/3 (update wiki): of 8 items,
**1 acquired** — the **OAG Summary Report on National Government 2024/2025** (10.5 MB), via the
DoH-pinned-IP route discovered after the item was queued (oagkenya.go.ke = 41.80.37.54; the page's
own PDF links were exposed once the host resolved) — staged to `new-budget/KEN/2024/` for the next
budget extract; the FY2024/25 audit stage is no longer a vacuum. **7 dropped**: KEN Dev Book Vol I
FY2024/25 original + Supp II PBB FY2024/25 + Mwananchi FY2025/26 (`dead-link` — live only on
oldsite.treasury.go.ke, which is transport-blocked like the SEN hosts; substance already recovered
via Supp-I volume, Supp-III comparator columns, and press respectively); the four Senegal
instruments (`transport` — budget.sec.gouv.sn TLS-fails even IP-pinned; archives.sn/vie-publique
mirrors reachable but their 2024 pages not indexed; verified UUID URLs preserved in this file's
history and the extraction notes for a browser-session retry). Absences are stated dated on the
affected records and run files.)*


### Added 2026-07-23 by ingest (the abolished `_leads/` drain — non-state finance stubs)

*(Drained 2026-07-23 by the acquisition pass: of 25 stub items, **20 acquired** — primary
documents fetched from the recorded URLs (Dropbox direct-download route) and staged to `new/` as
artefact+companion pairs for the finance driver. **5 dropped** (fetch failed once —
dead share-links or non-PDF responses); their deals are dated absences, the row payloads below
remain the capture trail.)*

- **[x] acquired** [CIV] `boc-civ-003` — *Bank of China provides CFA 8.7 billion loan for Phase 1 of Digital Education Project (Linked to Project ID#89413)* (USD 17110127, year 2018). https://www.dropbox.com/s/myashl99hq44wde/Projet%20d%E2%80%99%C3%89ducation%20Num%C3%A9rique_85%25%20English.pdf?dl=0
- **[x] acquired** [CIV] `boc-civ-004` — *Bank of China provides CFA 7.01 billion loan for Phase 1 of Ministry of Interior and Security Unified Communication System Project (Linked to Project ID#89415)* (USD 13765290, year 2018). https://www.dropbox.com/s/kngfvpelrt8jbu4/Projet%20de%20mise%20en%20place%20d%27un%20syst%C3%A8me%20d%E2%80%99information%20int%C3%A9gr%C3%A9%20pour%20les%20forces%20arm%C3%A9es%20de%20C%C3%B4te%20d%E2%80%99Ivoire_15%25%20English.pdf?dl=0
- **[x] acquired** [CIV] `boc-civ-006` — *Bank of China provides CFA 48.3 billion loan for Phase 2 of Video Surveillance Platform Project (Linked to Project ID#53273, ID#92205, and ID#92206)* (USD 93233683, year 2019). https://www.dropbox.com/s/yt7mtohcj8qmxr4/Extension%20du%20projet%20de%20mise%20en%20%C5%93uvre%20de%20la%20plateforme%20unifi%C3%A9e%20et%20ouverte%20de%20la%20vid%C3%A9o%20protection%20_%20Projet%20de%20vid%C3%A9o%20protection_Phase%20II%20_Cr%C3%A9dit%20commercial%20English.pdf?dl=0
- **[x] acquired** [CIV] `boc-civ-007` — *Bank of China provides CFA 7.9 billion loan for Phase 2 of Video Surveillance Platform Project (Linked to Project ID#53273, ID#92204, and ID#92206)* (USD 15338121, year 2019). https://www.dropbox.com/s/yt7mtohcj8qmxr4/Extension%20du%20projet%20de%20mise%20en%20%C5%93uvre%20de%20la%20plateforme%20unifi%C3%A9e%20et%20ouverte%20de%20la%20vid%C3%A9o%20protection%20_%20Projet%20de%20vid%C3%A9o%20protection_Phase%20II%20_Cr%C3%A9dit%20commercial%20English.pdf?dl=0
- **[x] acquired** [CIV] `boc-civ-009` — *Bank of China provides CFA 73.9 billion loan for Phase 2 of Ministry of Interior and Security Unified Communication System Project (Linked to Project ID#89413 and ID#92201)* (USD 143451828, year 2020). https://www.dropbox.com/s/6m41oj8scs7qbxt/Projet%20d%27implantation%20d%27un%20syst%C3%A8me%20de%20d%C3%A9fense_%20Phase%20II%20English%20RECORD%202.pdf?dl=0
- **[x] acquired** [CIV] `boc-civ-010` — *Bank of China provides CFA 72.6 billion loan for Phase 3 of Video Surveillance Platform Project (Linked to Project ID#53273, ID#92204, and ID#92205)* (USD 141020153, year 2020). https://www.dropbox.com/s/tu2cpvqlgbfou9h/%20Projet%20d%27implantation%20d%27une%20plate%20forme%20num%C3%A9rique%20de%20surveillance%20vid%C3%A9o_PHASE%20III%20English.pdf?dl=0
- **[x] acquired** [CMR] `boc-cmr-001` — *Bank of China provides $41.78 million loan for Phase 1 of Intelligent Urban Video Surveillance System Expansion Project (Linked to Project ID#88178)* (USD 45534761, year 2018). https://www.dropbox.com/s/egdf7tb6z74gizq/DAD%20Cameroon%20001034%20Bank%20of%20China.pdf?dl=0
- **[x] acquired** [SEN] `china-mofcom-sen-001` — *Chinese Government provides RMB 200 million grant in 2018 for Phase 1 of Smart Senegal Project (Linked to Project ID#73114)* (USD 32956577, year 2018). https://www.dropbox.com/s/ibz0e6yqyzslzye/PROJET%20SMART%20SENEGAL%20AMP%20May%202022%20Record.pdf?dl=0
- **[dropped — fetch-failed]** [CIV] `eximbank-cn-civ-001` — *China Eximbank provides $57.1 million preferential buyer\u2019s credit for Phase 1 of Video Surveillance Platform Project (Linked to Project ID#92204, ID#92205, and ID#92206)* (USD 67432541, year 2016). https://www.dropbox.com/s/1xu6euanrb5qn0a/February%202018%20Export%20from%20the%20Government%20of%20Ivory%20Coast%27s%20Aid%20Management%20Platform.xlsx?dl=0
- **[x] acquired** [COD] `eximbank-cn-cod-002` — *China Eximbank provides RMB 1.05 billion government concessional loan for Ministry of Finance Information and Communications Technology Modernization Project* (USD 169953457, year 2020). https://www.dropbox.com/s/xedp2o2lbtqxhff/BULLETIN-1eTRIMESTRE-2020.pdf?dl=0
- **[x] acquired** [COG] `eximbank-cn-cog-001` — *China Eximbank provides $160.8 million preferential buyer\u2019s credit for Phase 3 of National Telecommunication Coverage Project (Linked to Project ID#57477, #30497, #57529, and #68940)* (USD 185382932, year 2017). https://www.dropbox.com/s/6jkb87m19ly8d6s/D%20n%C2%AF2015-178%20du%2021%20janvier%202015.pdf?dl=0
- **[x] acquired** [COG] `eximbank-cn-cog-003` — *China Eximbank provides RMB 460 million government concessional loan for Phase 3 of National Telecommunication Coverage Project (Linked to Project ID#57477, #30497, #57529, and #57531)* (USD 78443175, year 2017). https://www.dropbox.com/s/wavikqyk5dpytcn/rapport-dette-v2.pdf?dl=0
- **[x] acquired** [GHA] `eximbank-cn-gha-005` — *China Eximbank provides $218.4 million concessional loan for ICT-Based Distance Learning Project for 5 National Tertiary Education Institutions* (USD 244017717, year 2020). https://www.dropbox.com/s/5d0syphaycniqh8/GHA%3A000814%20ICT-Based%20Distance%20Learning%20Project%20for%205%20National%20Tertiary%20Education_Overview.pdf?dl=0
- **[x] acquired** [GHA] `eximbank-cn-gha-006` — *China Eximbank provides $39 million concessional loan for ICT Enabled Distance Learning Project for the Institute of Local Government Studies* (USD 43556643, year 2020). https://www.dropbox.com/s/qd0jeqawhhktskd/GHA%3A000815%20ICT%20Enabled%20Distance%20Learning%20Project%20for%20the%20Institute%20of%20Local%20Government%20Studies_Financial_Information.pdf?dl=0
- **[x] acquired** [GMB] `eximbank-cn-gmb-001` — *China Eximbank provides $25.9 million concessional loan for Gambia National Broadband Network (GNBN) Project (Linked to Project ID#56893)* (USD 29846103, year 2017). https://www.dropbox.com/s/9yvhtd9i4i0vrs0/cr18197.pdf?dl=0
- **[x] acquired** [KEN] `eximbank-cn-ken-002` — *China Eximbank provides RMB 438 million government concessional loan for Nation Wide Remote Sensing Airborne Geophysical Survey Project* (USD 74691545, year 2017). https://www.dropbox.com/s/daurh7q3or3cgpx/e-ProMIS%20Kenya%20056234%20Full.pdf?dl=0
- **[x] acquired** [MLI] `eximbank-cn-mli-001` — *China Eximbank provides RMB 1.134 billion government concessional loan for Mali Digital 2020 Project* (USD 186863789, year 2018). https://www.dropbox.com/s/d8n8332ztxgv07i/Objectif_Afrique_N136_30-novembre.pdf?dl=0
- **[dropped — fetch-failed]** [MOZ] `eximbank-cn-moz-003` — *China Eximbank provides $132 million concessional loan for TmCel Telecommunications Network Expansion and Modernization Project* (USD 147422484, year 2020). https://www.dropbox.com/s/kwxk7hpv0dyicpi/DRS%20Official%20Commitments%20from%20China%20through%202020.csv?dl=0
- **[x] acquired** [NGA] `eximbank-cn-nga-001` — *China Eximbank and Credit Suisse AG provide $84 million syndicated buyer's credit facility for MTN Nigeria Communications to facilitate acquisition of telecommunication equipment from Huawei* (USD 48398203, year 2017). https://www.dropbox.com/s/vzppkh3n2zfh5wt/MTN%20Nigeria%20Communications%20Limited%20Financial%20Statements.pdf?dl=0
- **[dropped — fetch-failed]** [NGA] `eximbank-cn-nga-002` — *China Eximbank provides RMB 2.3 billion government concessional loan for Phase 2 of Nigeria National Information and Communication Technology Infrastructure Backbone (NICTIB) Project (Linked to Project ID#30340)* (USD 379000630, year 2018). https://www.dropbox.com/s/axafl0lt2lizeko/ChinaLoansToAfrica%C2%A9SAIS-CARI.csv?dl=0
- **[x] acquired** [UGA] `eximbank-cn-uga-001` — *China Eximbank provides RMB 96.9 million government concessional loan for Phase 3 of National Transmission Backbone and e-Government Infrastructure Project (Linked to Project ID#53401 and Project ID#53402)* (USD 17313769, year 2015). https://www.dropbox.com/s/jxzmc5f7z9ud5f4/Aid%20Management%20Platform%20-NATIONAL%20TRANSMISSION%20BACKBONE%20PROJECT.pdf?dl=0
- **[x] acquired** [ZAF] `icbc-zaf-007` — *ICBC contributes to ZAR 2.251 billion syndicated buyer\u2019s credit loan to Telkom SA SOC for the acquisition of Huawei 4G equipment* (USD 76274275, year 2020). https://www.dropbox.com/s/moobb39c9v7d4ec/Infrastructure%20Awards%202021%20-%20Deals%20of%20the%20year%20-%20Global.pdf?dl=0
- **[dropped — fetch-failed]** [CAF] `wb-caf-002` — *CAR Public Sector Digital Governance - Additional Financing* (USD 12800000, year (blank)). https://projects.worldbank.org/en/projects-operations/project-detail/P181682
- **[dropped — fetch-failed]** [CIV] `wb-civ-002` — *Cote d'Ivoire Digital Acceleration Project* (USD 200000000, year (blank)). https://projects.worldbank.org/en/projects-operations/project-detail/P180059
- **[x] acquired** [CMR] `zte-cmr-001` — *ZTE grants $12 million USD for Construction of Data Centers in Cameroon* (USD 13600905, year 2015). https://www.dropbox.com/s/hg0c028x4r50of2/DAD%20Cameroon%20000931.pdf?dl=0

### Added 2026-07-23 by ingest (the `_leads/` drain — husks mined)


*(Drained 2026-07-23, second acquire of the day: **DeepMind acquired** (blog.google canonical, Mar
2026, $4m Google.org/FATE/AIMS detail); **CBN item resolved by identification** — the instrument is
circular PSS/DIR/PUB/CIR/001/004 (2026-06-15, payment-data localisation by 2027-01-01); a detailed
compliance-press account is held, the circular PDF itself is **dropped** (no verified cbn.gov.ng
URL surfaced in one attempt) with the absence dated on `nigeria--gov-protect`; **SUNA Baldna
dropped** (fetch timeout on a page whose earlier capture was already a nav shell) — absence dated
on the SDN hub.)*
