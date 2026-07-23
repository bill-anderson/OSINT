# Domestic budget extraction — accumulated method notes

Working notes on **how to find the digital lines** in state budget documents, by
country and document type. Appended to on every domestic finance run, including
the failures — an approach that didn't work is worth as much as one that did.

*(Curator ruling, 2026-07-22: isolating domestic digital spend is a challenge for
all evidence and won't be solved by a rule. It is learned, and the learning has to
be written down somewhere it compounds. This is that file.)*

Not a source and not a wiki page: it is procedure, read by
`finance-load-domestic-state.md` at the start of a run.

## How to use it

Before capturing a country, read its section. After capturing, append what you
learned: what the digital lines were actually called, which classification codes
carried them, where they hid, what you looked for and didn't find.

## Per-country notes

### Angola — press reporting of despachos and procurement plans (back-swing, 2026-07-22)
- **Digital lines found under:** presidential despachos reported by Novo Jornal/Angop — grep "aprovou a despesa" / "autorizou a despesa" / "manda abrir crédito adicional suplementar no OGE" / "inscrito no Programa de Investimento Público (PIP) do OGE" + a numbered "Despacho Presidencial n.º XX/YY". Richest domestic-state seam in the whole corpus (4 of 23 records).
- **Where they hid:** appropriations surface at the vendor-contract-signing or despacho-report event, never at budget enactment; the despacho's own date and the revenue source are routinely unstated.
- **Language:** amounts often stated in USD or EUR directly, even for OGE-funded lines — record as announced. The mandatory per-ministry PAC (procurement plan, Lei 41/20) on the Portal de Compras Públicas is a recurring annual source worth sweeping.
- **Scale trap:** Novo Jornal's "bilião/biliões" is unreliable — verify 10⁹ vs 10⁶ against an internal equivalence (e.g. a known co-financing figure) before storing; its own USD conversions can be garbled.

### Burkina Faso — executive accountability events (back-swing, 2026-07-22)
- **Digital lines found under:** the PM's report to the Transitional Legislative Assembly (March), inauguration ceremonies via the state daily Sidwaya ("a coûté X milliards F CFA", "financés à hauteur de"), and ministry project launches.
- **Where they hid:** figures attach to works (data centres, RESINA restoration, zones blanches), never to votes; FY and stage are never stated → `budget_stage: unclear` is the norm.
- **Blending:** universal-service spend blends FASU (own-source levy) with World Bank PACTDIGITAL money, parts never separable — record whole, flag the overlap against the held WB deal.
- **False positive:** the ministry's CASEM-approved Annual Work Plan budget (late Dec) is headlined as a "digital projects budget" but is the full ministry envelope including postal activities.

### Kenya — budget-speech sub-programme reporting (back-swing, 2026-07-22)
- **Digital lines found under:** State-Department sub-programme names ("population management services", "migration and citizen services") in tech-press coverage at budget-speech time (June), with source-stated USD conversions.
- **Didn't work:** the reporting never states tabled-vs-enacted → stage lands `unclear`.

### Kenya — Treasury document chain, FY2024/25 (sweep, 2026-07-23)
- **treasury.go.ke is mid-migration (WordPress → Drupal 10) and its own links rot:** live files sit under `/sites/default/files/Budget Books/…`; anything under `/wp-content/uploads/…` or listed only on `/index.php/budget-books` may serve a Drupal 404 soft-page (~50KB HTML, HTTP 200). **Check `head -c 8` for `%PDF` on every fetch** — three of twelve fetches this run were soft-404s (Dev Vol I original, Supp II PBB × two hosts).
- **The budget-books page enumerates cleanly** — one fetch of `/budget-books` yields the whole per-FY directory tree (estimates, supplementaries I–III, per-volume). Vol ranges: Recurrent 1011–1162/1166–2151; Development I 1011–1083 (Interior/Immigration = identity), II 1091, III 1092–2141 (ICT votes 1122/1123).
- **cob.go.ke and oagkenya.go.ke did not resolve from this network** (treasury.go.ke and ca.go.ke fine). Workaround that worked: **Parliament's DSpace library (libraryir.parliament.go.ke) mirrors COB and OAG reports** — item page → `/bitstreams/<uuid>/download`. The COB annual BIRR FY2024/25 (102MB) came through it; the OAG Blue Book FY2024/25 (630MB) is there too.
- **The COB BIRR is the prize:** Art. 228(6) four-monthly implementation reports + annual, with exchequer issues, absorption by MDA and Article-223 spending — released *and* actual stages from one document. Scanned+OCR, noisy but extractable.
- **FY2024/25 had four budget values** (Finance Bill withdrawal): 4.49tn → 4.37tn (Supp I, Aug 2024) → 4.64tn (Supp II) → 4.37tn (Supp III). June-2024 budget-speech reporting (the back-swing's Kenya seam) is all **proposed**-stage; anything citing it needs a stage label and a Supp-I check.
- **SHA Sh104.9bn health-IT system: not an appropriation.** Fully outsourced 10-year user-fee contract (Ndii on the record), unbudgeted and outside the MTEF per the FY2023/24 audit; only the Sh7.02bn installation/training slice is fisc-side. The origin/instrument gates must catch this or the dataset gains a phantom Sh105bn line.
- **Searched, found nothing:** an ODPC budget line in reporting (expect it inside the ICT vote in the PBB — single-mandate carve-out applies); a per-programme eCitizen appropriation (eCitizen is revenue-side, KSh 50 convenience fee).
- **COB and OAG hosts fail only on local DNS** — resolve via DoH (`cloudflare-dns.com/dns-query`) and pin with `curl --resolve host:443:IP`. cob.go.ke = 41.80.37.59 (2026-07-23).
- **COB's JS download-manager is defeatable without a browser:** fetch `/download/<slug>/` (slugs are in the static HTML of `cob.go.ke/publications/national-reports/` and `/reports/national-government-budget-implementation-review-reports/`), read the `?wpdmdl=<id>` from the returned package page, then fetch `/download/<slug>/?wpdmdl=<id>` — serves the PDF directly. In-year BIRRs (3/6/9-month) acquired this way for FY2025/26; both are **native PDFs**, unlike the scanned annual.
- **KIPPRA's repository mirrors Treasury documents behind a DSpace 7 API**: `/server/api/core/items/<uuid>/bundles` → ORIGINAL bundle → `/server/api/core/bitstreams/<uuid>/content`. Used for the FY2025/26 Budget Statement after Treasury's own wp-content copy 404'd.
- **FY2025/26 shape:** only two supplementaries (Supp I April 2026, Supp II June 2026); annual BIRR and audit not yet published as of 2026-07-23 — the re-run next year picks them up.

### Côte d'Ivoire / Benin / Gabon — francophone budget-session reporting (back-swing, 2026-07-22)
- **Pattern:** Oct–Dec committee/assembly-stage reporting (WeAreTech, TechAfrica, Ecofin) gives the digital ministry's total vote with YoY comparator — an envelope, excluded by rule. Only occasionally (Benin: "programme numérique et digitalisation", XOF 12.3bn) does reporting give the programme split that yields a recordable line.
- **The acquirable unit** that would convert envelopes into lines: the loi de finances annexes / the CIV "Lettres d'engagement" issued per budget programme.

### Botswana — development-plan documents (back-swing, 2026-07-22)
- **Digital lines found under:** NDP 12 / PIP coverage — the clean line hides inside a mixed ministry ask, called out as "ICT development projects" with named systems (national payment switch, accounting system); named systems are the scope_basis.

### Egypt — recipient-side accounts (back-swing, 2026-07-22)
- **New pattern:** central-bank incentive schemes (CBE PoS campaign) surface only as income lines in the recipient company's filings (Fawry), quoted in fintech profiles — the state's own cost is never published. Capture from the recipient side, flag the judgment.

### World Bank PADs — the counterpart sliver (back-swing, 2026-07-22)
- **Where it hides:** the PROJECT FINANCING DATA block, "Counterpart Funding / National Government" rows plus a footnote naming which country carries which share; the component-cost table includes it while the IDA Resources table excludes it — a small mismatch between the two tables (60.00 vs 60.50) is the tell.

### South Africa — Treasury document chain, FY2024/25 (sweep, 2026-07-22)

- **Fiscal year:** April–March; "2024" = FY2024/25 (2024-04-01 → 2025-03-31); document label `2024/25`.
- **Document chain confirmed and mostly fetchable by direct URL** (Track B beats search here):
  ENE per-vote chapters at `treasury.gov.za/documents/national budget/{yyyy}/ene/Vote NN Name.pdf`
  (Budget Day, late Feb); AENE per-vote at `/documents/mtbps/{yyyy}/aene/Vote NN Name.pdf` (MTBPS day,
  late Oct); bills at `/legislation/bills/{yyyy}/[BN-yyyy] Name.pdf` — **exact filename matters**
  (B14's real name is `[B14-2024] (Adjustments Appropriation).pdf`; the obvious guess soft-404s);
  monthly s32 statements at `/comm_media/press/monthly/{yymm}/press.pdf` where **{yymm} is the
  publication month, one–two months after the reporting month** (2505 = as at 31 March 2025).
- **Soft-404 trap:** treasury.gov.za serves HTTP-200 HTML for wrong paths — check content-type,
  never trust the status code. Home Affairs' ENE chapter name resisted guessing; use the FullENE
  volume instead of probing.
- **The digital vote is Vote 30 (DCDT)** in 2024: 6 programmes; the recordable lines are programme-level
  (SA Connect under *ICT Infrastructure Development and Support*, R1,922.7m FY2024/25; entity transfers
  under *ICT Enterprise and Public Entity Oversight*, R1,596.9m). Cross-vote digital spend (Home Affairs
  digital ID, SITA via departments, SARS modernisation) needs the FullENE volume.
- **Scale flips between documents in the same chain:** ENE chapter summary in **R million**, AENE in
  **R thousand** — the 1,000× trap sits between the appropriation and its revision.
- **Stage coverage available:** proposed (B5 bill + ENE), revised (AENE + B14: FY2024/25 total unchanged
  at R3,968,611k, virement R2.789m CP→transfers), actual-aggregate (year-end s32; per-vote actuals NOT
  in the 3-page press statement), revised-per-vote (May-2025 Budget statistical annexure, Table 4).
  **Audited/outturn per vote sits in the DCDT Annual Report (Phoca-gated) and AGSA PFMA GR
  (bot-guarded) — both in acquisitions.** AGSA's GR has a dedicated government-ICT-function section.
- **Budget-vote speeches (July, post-GNU-formation in 2024) state programme allocations** the press
  never carries: Malatsi 2024-07-15 gives SA Connect Ph1+2 = **R1.858bn FY2024/25** — the figure that
  should case-5-test the held `zaf-2025-26-dcdt-sa-connect-phase-2` record (>R3bn, stage unclear,
  FY ambiguous): the two may be different FYs of the same programme, to settle at extraction.
- **Didn't work:** AGSA direct PDF (bot-guard HTML even with UA + versioned URL); DCDT Phoca Download
  raw link (no href on page); guessing ENE chapter names other than Vote 30.

**First extraction run (2026-07-22, ZAF/2024 — 8 of 9 documents extracted, FullENE deferred):**
- **The appropriation statement's layout offsets row labels from values** under `pdftotext -layout`
  (labels stack left, figures stack right) — decode by summing to the verified totals; every block in
  this corpus reconciled exactly once the offset was understood.
- **Vote 30 grain settled:** P5 records at subprogramme grain (Broadband = SA Connect carrier; BDM;
  ICT Support), other programmes at programme grain; Administration and P5 Programme Management not
  recorded (admin overhead). P4 recorded partial (SAPO/SABC in the transfers).
- **Treasury's May-2025 "revised estimate" for Vote 30 (R3,854.8m) was far above the audited actual
  (R2,915.2m)** — treat revised estimates as projections, never outturn evidence.
- **The MTEF cliff is a lead-generator:** Broadband 1,894.6 → 267.4 (2025/26 estimate) exposed the
  SA Connect Phase 2 funding question and produced a contradiction against Budget-2026 reporting.

**Cross-vote scan run (2026-07-22, ZAF/2024 FullENE, 42 votes — step 4a's first execution):**
- **10 records from 6 votes outside Vote 30, totalling ~R2.96bn appropriated — 1.4× Vote 30's own
  clean whole-scope total (R2.11bn).** The sector-vote bias was worse than the first scan suggested:
  DHA's Transversal IT Management subprogramme alone is R1,190.1m (eVisa, kiosks, births automation,
  smart-ID rollout named in the narrative), plus Identification Services R184.7m and a narrative-stated
  R208m PNR line.
- **Single-mandate carve-out first applied:** Information Regulator (Justice vote, Table 25.14) —
  R110.9m FY2024/25, ramp R29.9m (2020/21) → R141.0m (2026/27 MTEF). The DPA funding trajectory is a
  single row in the Justice chapter and invisible from the sector vote.
- **Uniform grain rule adopted (logged decision):** an identifiable departmental IT/digital
  subprogramme line records as whole (Correctional IT, StatsSA ICT, DHA Transversal IT) — Bill's own
  scan set the precedent with Correctional's "Information Technology". What stays out: mixed non-IT
  programmes and whole votes.
- **Narrative-stated project allocations are recordable:** the volume itself names amount+year+purpose
  for lines inside mixed subprogrammes (DHA PNR R208m; eVisa R100m within Transversal IT) — the chapter
  narrative is part of the document, not reporting.
- **Extraction failures (one attempt each, logged):** Science & Innovation "Various institutions: ICT"
  transfer line and Treasury's Financial Systems (IFMS) subprogramme — both garbled under
  `pdftotext -layout` column collapse; pdfplumber candidates for a future pass.
- **Looked for, not found / not recorded:** no separately-appropriated national CSIRT line (the
  Cybersecurity Hub is funded inside Vote 30's programmes, not a vote line); CPSI (Vote 42, R47.9m) is
  general public-service innovation, not single-mandate digital; GCIS is communications, not digital
  transformation.

**Re-extract run (2026-07-22, b5-2024 + b14-2024 → cross-vote):**
- **The Appropriation Bill rescues figures the ENE garbles**: the Science ICT transfer (R22,529k) was
  illegible in the ENE's collapsed transfer table but legible in B5's schedule — when an ENE row fails,
  check the bill's transfer detail before reaching for pdfplumber.
- **B5's "Of which" earmarks are the enacted legal grain**: DHA "Information and Modernisation Systems:
  Operations" R736,994k nests inside the ENE's Transversal IT subprogramme (R1,190.1m) — earmark = ops
  share; the projects (~R453m) are not separately earmarked. Annotate, don't double-record.
- **B14 exposes in-year movements the sector view misses**: DHA +R1.6bn (election year), Justice −R545.9m
  hitting the programme that houses Justice Modernisation and the Information Regulator. Per-subprogramme
  impact needs the per-vote AENE chapters — the standing acquirable for any vote with a material B14 move.

**ZAF 2025 sweep (2026-07-22):** the 2025 budget was tabled **three times** (Feb withdrawn, Mar revised,
**May enacted — "Budget 3.0", 2025-05-21**); the enacted chain lives under `/documents/National
Budget/2025May/`. Bills: `[B16-2025] Appropriation.pdf`, `[B27-2025] Adjustments Appropriation Bill.pdf`.
AENE 2025 under `/documents/mtbps/2025/aene/` incl. `FullAENE.pdf`. FullENE 2025 has a page-count
metadata quirk (reports 30pp; actually full volume, 37 vote markers, 4.5M chars). PMG hosts Portfolio
Committee budget-performance reports as dated PDFs (`pmg.org.za/files/…pccommreport.pdf`) — block-7
scrutiny with quarterly execution figures the budget documents never carry. FY2025/26 outturn/audit not
yet published (DCDT AR ~Oct 2026; AGSA GR ~Mar 2027) — stage gaps, not acquisitions.

**ZAF 2026 sweep (2026-07-22):** Budget 2026 (2026-02-25) under `/documents/National Budget/2026/ene/`;
bill filename pattern changed to `B4-2026 (Appropriation).pdf` (no square brackets); a Special
Appropriation Bill (B3-2026) also exists. **Vote 30 restructured** — programme names all change
(Media and Content; Digital Communication, Access and Services; Digital Infrastructure and Technologies;
Digital Society and Economy): join series on function, not name; the Broadband subprogramme persists
inside Digital Infrastructure and Technologies. Budget-vote speeches moved to May (2026-05-12).
AENE 2026 ~Nov 2026; FY2025/26 outturn (DCDT AR) ~Oct 2026 — the year-later re-runs' targets.

### Template for an entry

```markdown
### <Country> — <document type>, <fiscal year>
- **Document:** <title, URL, how obtained>
- **Structure:** <how the classification chain is laid out; is it machine-readable>
- **Digital lines found under:** <vote/programme names and codes that carried them>
- **Language used:** <the terms the document actually uses — "ICT", "automation",
  "e-governance", "digitalisation", a named system>
- **Where they hid:** <lines that were digital but not obviously so>
- **False positives:** <lines that looked digital and weren't>
- **Outturn available?** <yes/no, which document, how far behind>
- **Scope calls made:** <which lines were whole / partial / unclear, and why>
- **Didn't work:** <what was tried and failed>
```

## Cross-cutting observations

*(patterns that hold across several countries — promote them here once seen more
than once, so a country section doesn't have to restate them)*

**From the 2026-07-22 back-swing (894 sources screened, 23 records, ~2.6% hit rate):**

- **Fact 3 (no amount at a budget stage) is the systematic failure point** for domestic items in sweep news. Reporting gives the instrument without the appropriation figure: fund launches with mobilisation targets (CIV F2it, Algeria FNI), guarantee mechanisms, "quote-part" counterpart promises stated qualitatively, Cabinet/strategy approvals with USD price tags but no FY/stage/funding source (Ghana $250m AI centre).
- **Domestic figures hide mid-paragraph inside stories about something else** — an MoU, a donor project, a summit speech. Grep bodies for "allocated|budgeted|also allocated|également alloué|additional|a coûté|financés à hauteur de|aprovou a despesa" rather than trusting headlines. Government top-ups ride donor-project coverage as "the government has also allocated…".
- **"Government invests" headlines are usually external money in state clothing** (Chad PMICE = Eximbank; Cameroon videosurveillance = Chinese banks; Nigeria's 49% BRIDGE SPV stake = capitalised from the IDA credit) or vendor-financed DBFOT deals where no fisc money moves at signature (Gambia–Margins ID). Check the funding source and the delivery-model phrase before crediting the fisc.
- **SOE stories in the sweep are all own-revenue or inbound money** — no state→SOE subvention appeared in 894 sources. Privatisation proceeds and spectrum sales are state *revenue*, not spend. Sovereign guarantees (Cabo Verde aval for CV Telecom) involve no cash outlay.
- **Multi-year plan envelopes (PND, "Digital Nation", Tchad Connexion 2030) always fail** — MTEF-like indicative figures; the capture target is the annual loi de finances line beneath them. Supplementaries (DRC collectif budgétaire) are where deferred figures eventually surface.
- **Ministry-envelope near-misses are the commonest domestic signal** (CIV, BEN, GAB, BFA, SEN, SA Home Affairs). Rule held: envelopes are not records; a source-stated *investment slice* tied to digital priorities (SEN) or a *programme line* (BEN) is.
