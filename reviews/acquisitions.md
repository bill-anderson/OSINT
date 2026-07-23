# reviews/acquisitions.md — the acquisition queue (documents to fetch)

A **shopping list**, not a research register. Every item is a *specific, known,
identified document* the wiki wants and does not hold — a gazetted Act, a
regulator's bulletin, a project appraisal document, a PDF behind a 403 or a
cookie wall. Nothing here needs investigating; it needs **fetching**.

Worked by the **acquisition pass** (`run acquisitions`, procedure in
`reviews/ACQUIRE.md`), never by reconcile — sending a download through an Exa
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

- **[blocked]** (dead-link) Kenya National Treasury — *FY2024/25 Estimates of Development
  Expenditure, Volume I (Votes D1011–D1083)* (original June-2024 edition; the identity votes'
  project-level lines at **proposed** stage). All three URL paths on treasury.go.ke serve a Drupal
  404 as of 2026-07-23 (`/sites/default/files/...`, `/index.php/sites/...`, legacy
  `/wp-content/uploads/2024/07/...`). The revised-stage substitute (Supp I Vol. I) is held at
  `new-budget/KEN/2024/`.
- **[blocked]** (dead-link) Kenya National Treasury — *FY2024/25 Approved Supplementary II PBB
  (1011–2151)* (the KSh 4.64tn mid-year expansion, tabled Feb 2025). Listed on
  treasury.go.ke/index.php/budget-books but the file URL
  (`/wp-content/uploads/2025/05/FY24-25-Approved-Supplementary-II-PBB-1011-2151.pdf`) serves a
  Drupal 404 on both hosts as of 2026-07-23. Aggregates recoverable from the held BIRR; Supp III
  supersedes it as final revised.
- **[blocked]** (host-unresolvable) Office of the Auditor-General (Kenya) — *Auditor-General's
  Summary Report on National Government 2024/2025* (audit stage, cross-cutting findings).
  oagkenya.go.ke does not resolve from this network and the direct PDF URL never surfaced in
  search; the FY2023/24 edition follows
  `/wp-content/uploads/2025/04/Auditor-Generals-summary-Report-on-National-Government-2023-2024.pdf`.
  **Note, not queued:** the full FY2024/25 Blue Book (630.03 MB) *is* fetchable at
  `https://libraryir.parliament.go.ke/items/3ad33490-54b9-49f0-b434-048b549121be` — not staged on
  size (decision logged 2026-07-23); pull it if per-vote audit opinions are needed at extraction.

### Added 2026-07-23 by the domestic finance sweep (Kenya 2025 → FY2025/26)

- **[blocked]** (dead-link) Kenya National Treasury — *Budget Highlights: The Mwananchi Guide for
  the FY 2025/26 Budget* (the citizen guide with the digital thematic table; the FY2024/25 and
  FY2026/27 editions are both live, this one 404s at the pattern path
  `/sites/default/files/Mwananchi/Budget-Highlights-The-Mwananchi-Guide-for-the-FY-2025-26-Budget.pdf`
  as of 2026-07-23). Payload substitute held: Eastleigh Voice per-line budget-day breakdown.


### Added 2026-07-23 by the domestic finance sweep (Senegal 2024 → FY2024)

- **[blocked]** (transport) Sénégal DGB — **Loi n°2023-18 du 15 décembre 2023 portant loi de
  finances pour l'année 2024** (LFI 2024).
  `https://budget.sec.gouv.sn/documents/public_download/65a7055d-e038-4c83-a5f2-46870a2a028a/telechargement`
- **[blocked]** (transport) Sénégal DGB — **Annexe au projet de loi de finances pour l'année 2024**
  (the per-programme annexe — the envelope-solver document).
  `https://budget.sec.gouv.sn/documents/public_download/65298af8-7928-47a8-9250-ccc20a2a028a/telechargement`
- **[blocked]** (transport) Sénégal DGB — **Loi de finances rectificative (LFR) 2024** (Loi
  n°2024-16 du 31 décembre 2024).
  `https://budget.sec.gouv.sn/telecharger-le-document/67850be9-0084-4e0a-92da-48350a2a028a/telechargement`
- **[blocked]** (not-located) Sénégal MFB — **Rapport trimestriel d'exécution budgétaire (RTEB), 4e
  trimestre 2024** (actuals: 6,506.16 mds dépenses / 103.7%). budget.sec.gouv.sn is
  transport-blocked; the vie-publique.sn and archives.sn mirrors are reachable but their 2024 RTEB
  page did not surface in one search — try their document indexes directly.
  *(All four: budget.sec.gouv.sn TLS handshake fails from this network even with DoH-pinned IP
  (160.0.176.81) — Exa crawls it fine, so a browser session or another network gets them.)*
