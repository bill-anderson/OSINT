# Domestic budget extraction — accumulated method notes

Working notes on **how to find the digital lines** in state budget documents, by
country and document type. Appended to on every domestic finance run, including
the failures — an approach that didn't work is worth as much as one that did.

*(Curator ruling, 2026-07-22: isolating domestic digital spend is a challenge for
all evidence and won't be solved by a rule. It is learned, and the learning has to
be written down somewhere it compounds. This is that file.)*

Not a source and not a wiki page: it is procedure, read by
`wiki/finance-load-domestic-state.md` at the start of a run.

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

### Senegal — DGB document library behind a transport wall (sweep, 2026-07-23)
- **budget.sec.gouv.sn is the model Track-B target**: one listing page enumerates LFI/LFR/PLF/annexes for every year as UUID download links (`/documents/public_download/<uuid>/telechargement`). But **TLS fails from this network even IP-pinned** — Exa crawls it; curl cannot. Verified UUIDs go to acquisitions for a browser session.
- **Mirrors that ARE reachable:** vie-publique.sn (dashboards + document pages per year) and archives.sn/docs/budget. Their per-year indexes are the entry point when DGB is walled.
- **RTEB (rapport trimestriel d'exécution budgétaire)** is Senegal's execution series — quarterly, actuals vs LFR. Q4-2024: dépenses 6,506.16 mds (103.7%), >500 mds arrears folded in.
- **The MCTN envelope splits into three sectors** (Communication / Économie Numérique / Postal) and the split surfaces in Assembly finance-committee reporting each December — the digital slice is recordable per the SEN slice rule; the per-programme annexe converts it to lines.
- **Trap: finances.ml is Mali.** Its RTEB format is near-identical to Senegal's and surfaces in Senegal-phrased searches.

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
- **FY2026/27 restructured Vote 1122** — programme codes are NOT stable across years: 0210020 renamed (BPO/Konza transfers gone), 0217000 split into four function-named sub-programmes, new 0222000 ICT Security & Data Protection Services (incl. the first visible data-protection line, 917.27m). Series built on programme codes need a mapping row at every restructure.
- **The PBB baseline column carries the prior year's latest revised at print time** — FY2026/27 baselines equal FY2025/26 Supp I exactly, which is how a missing or ambiguous supplementary's values get recovered or corroborated a year later.
- **Statement + Mwananchi live under `/Latest updates/` and `/Budget summary/` for the newest year**, then migrate or die - fetch them in the budget-day-adjacent sweep, not later.
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

### Angola — OGE package via minfin CMS, FY2024 (sweep, 2026-07-23)
- **minfin CMS is IP-pinnable, not locally resolvable.** `cms.minfin.gov.ao` fails on local DNS
  (curl exit 6); DoH→`20.87.80.66` + `curl --resolve cms.minfin.gov.ao:443:20.87.80.66` fetches the
  OGE-package PDFs directly. Assets are UUID-keyed `/api/assets/portal-minfin/<uuid>/` (also
  `portal-sncp` for the procurement portal). This is the Track-B entry for every AGO year — the
  portal exposes Fundamentação, Mapas Orçamentais, and the **Relatório de Execução Trimestral**
  (quarterly; the **IV Trimestre = full-year outturn**, the prize, SIGFE-sourced).
- **Scale trap confirmed at source:** Portuguese **`bilião` = 10¹²**, `mil milhões` = 10⁹; tables use
  full values with **decimal comma + space thousands** (`24 715 263 134 196,00`). Novo Jornal's
  "bilião" is unreliable (back-swing note) — but the *ministry's own* documents are consistent 10¹².
- **Digital lines are NOT in the Fundamentação** (functional envelope only: dívida 57,8%, social
  20,1%, …). They live in the **Mapas Orçamentais** (Dotações por Órgãos × programa × projecto — in
  acquisitions) and the outturn's **ANEXO 13 (por projecto)** / **ANEXO 12/16 (por UO)** — extract
  there for named systems (Angosat, redes, plataformas, identificação) under MINTTICS / MAT /
  Interior / Justiça.
- **In-year appropriation surfaces via decretos, not a revised volume:** créditos adicionais
  suplementares + **DP 278/24** contrapartidas intersectoriais (saldos ociosos). The Assembly does
  not re-vote a *revisão* — reconcile revised vs initial through the trimestral execução reports.
- **Procurement portal (SNCP):** the **RACPA** (Relatório Anual da Contratação Pública Angolana,
  `portal-sncp/…`) gives per-ministry PCP counts (2024: MINTTICS 41 procedures, 80,3 mil M Kz); the
  per-EPC **PAC** (mandatory under Lei 41/20, art. 442) carries the project-level digital lines —
  MINTTICS PAC is the recurring annual seam (2025 PAC: Angosat-3 278 bi, banda larga, centro de
  dados — heavily reported by pti.ao / Novo Jornal; the *actualização* corrects wild scale swings).

### Angola — OGE 2025 package, FY2025 (sweep, 2026-07-23)
- **Same Track-B route holds:** DoH `cms.minfin.gov.ao`→20.87.80.66, UUID-keyed
  `/api/assets/portal-minfin/<uuid>/`. **Exa surfaces the asset UUIDs directly** — one search
  returned the whole 2025 execução-trimestral series: I `df341d44-…`, II `37498c08-…`, III
  `b5aa3d45-…`, **IV `6fb282a3-…` (the full-year outturn, finalised 12-Mar-2026)**. The 2025
  Fundamentação minfin canonical UUID did NOT surface (2024 was `b95da7f3-…`); the reachable copy
  is the **CABRI BIA mirror** (`cabri-sbo.org/uploads/bia/Angola_2025_Formulation_…4db698.pdf`,
  ~6 MB) — MINFIN's own document, fetchable by plain curl+UA.
- **The IV-Trimestre report is NARRATIVE ONLY (57pp).** ANEXO 13 (por projecto) and ANEXO 16 (por
  UO) are **TOC-listed but not printed** in it — a *separate anexos volume*. So the outturn PDF gives
  aggregate + functional/sector taxas de execução, but **no per-project/UO digital lines**. Same
  almost certainly true of the 2024 IV-Trim already staged: to get executed digital lines you need
  the anexos volume, not the report. **This changes the acquisition target** — queue the anexos, not
  just the Mapas.
- **The digital envelope is in reporting, not the Fundamentação:** pti.ao read the OGE 2025 MINFIN
  document and gives the **Comunicações e Tecnologias de Informação sector = Kz 226,4 mil milhões
  (~7× OGE 2024)** and the programme **"Expansão e Modernização das Comunicações" Kz 229,3 mil
  milhões**. The Fundamentação carries only the functional envelope (confirmed again). Grep pti.ao by
  programme/rubrica name for the appropriated split before the Mapas land.
- **PAC scale-trap realised at source:** the first MINTTICS PAC 2025 (21-Jan) totalled Kz 616,7
  *biliões* — larger than the whole OGE (34 bi). The **actualização (27-Fev, pub. 05-Mar)** corrected
  it to Kz 225,6 *mil milhões*; satellite Kz 298,7 bi → 712,7 M, earth-obs 10,4 bi → 77,7 M. **Always
  take the actualização, never the first PAC** — the held Angosat-3 278 bn record is a first-PAC
  artefact (contradiction filed 2026-07-23).
- **Identity money surfaces as a despacho, not a vote:** **DP 169/25 (19-Set-2025)** opened a
  crédito adicional suplementar of **USD 218,5 M** for the Bilhete de Identidade universalisation,
  afecto ao **Min. Justiça** — stated in USD, in OGE 2025. lex.ao reproduces DR text verbatim (good
  Block-5 source). Grep lex.ao / DR by "Crédito Adicional Suplementar" + programme name for the
  in-year DPI appropriations the vote structure hides.

### Angola — OGE 2026 package, FY2026 in-year (sweep, 2026-07-23)
- **Same Track-B route holds:** DoH `cms.minfin.gov.ao`→20.87.80.66, UUID-keyed
  `/api/assets/portal-minfin/<uuid>/`. **Exa surfaced the Fundamentação OGE 2026 UUID directly**
  (`8983392b-8784-45d7-a23d-1aa35cf938b4`; native PDF, 75pp). But the **I-Trimestre 2026 execução
  UUID did NOT surface** (Exa returns only the prior-year 2025 quarterly series — I `df341d44`, II
  `37498c08`, III `b5aa3d45`, IV `6fb282a3`); the current-year execution report lags the search
  index → queued, not fetched. Lesson: for an in-year run, the appropriation doc is Exa-findable but
  the just-published quarterly execution is not — expect to queue it.
- **The 2026 Fundamentação embeds the full Lei articulado** (ARTIGO 1-33 + fiscal measures + DR
  summary + media note), unlike the 2024/2025 Fundamentações (fiscal-strategy narrative only). One
  fetch gives both the exposição de motivos AND the OGE-2026 law text. Still **no programme/project
  digital lines** — functional envelope only; the Mapas remain the acquirable for per-organ detail.
- **OGE 2026 total FELL:** Kz 33,24 biliões, −4% vs OGE 2025 (34,63 bi) — first drop in the series
  (24,72 → 34,63 → 33,24). Enacted 15-Dez-2025 as **Lei 01/V/4.ª/2026-2027** (proposta total held).
- **The digital communications programme was cut, not grown:** "Expansão e Modernização das
  Comunicações" **159,2 mil milhões** (−30,5% vs 229,3 in 2025); 4G 62,7 (−42%); cyber-index
  programme 32,3 (−54%); "Cobertura 3G" line removed. The 2025 ~7× spike partly reversed —
  reporting reads the OGE "Despesa por Programa Detalhado" rubric (pti.ao by programme name).
- **In-year appropriations surface as January despachos, well before the execution-rules decree:**
  **DP 12/26 (7-Jan, Kz 9,2 mM telecoms/hosting MINFIN)** and **DP 11/26 (13-Jan, Kz 8,6 mM Microsoft
  licences whole admin via IMA)** were both signed *before* the OGE-2026 execution rules (DP 74/26,
  23-Abr) existed, so they cite the *prior year's* rules (DP 42/25). angolex.com reproduces despacho
  text verbatim (as lex.ao does) — grep angolex/lex.ao by "É autorizada a despesa" + January of the
  FY year for the earliest in-year digital appropriations. The Microsoft one is a **cross-government**
  e-gov line (via IMA), invisible from the MINTTICS vote.
- **The Q1 execution report is newly per-organ:** for FY2026 MINFIN published, "for the first time",
  a *quadro detalhado de Execução Financeira por Órgão do Governo* — the per-ministry Q1 execution
  (MINTTICS 3%; 20/50 programmes <5%), reported by Diário dos Negócios / Expansão. This is the
  per-organ executed-digital route in-year, ahead of the IV-Trim anexos — worth acquiring the report
  (`ago-execucao-i-2026`) for the MINTTICS/Justiça/Interior rows.
- **DPI legislation catching up with the money:** the **Lei da Identificação Civil e Criminal**
  (Conselho de Ministros → Assembly, Apr-2026) sets the legal regime for BI + criminal-record data —
  the framework arriving a year after DP 169/25's USD 218,5 M ID crédito. Pair them on the AGO hub.

### Angola — PAC procurement estimates track the OGE vote (ingest, 2026-07-23)

- **The corrected MINTTICS PAC 2025 appears to be re-based on the enacted OGE, with different line
  names.** Two lines match the OGE 2025 programme figures *exactly*: "Implementação da Rede Nacional
  de Banda Larga" **Kz 107,8 mil milhões** = the OGE "Expansão da rede 4G" line, and "Plataforma
  Analítica, Centro de Dados Principal, Back Up e Plataforma Nacional de Nuvens" **Kz 70,5 mil
  milhões** = the OGE "melhoria da posição no Índice Global de Cibersegurança" line. The PAC total
  (Kz 225,6 mil milhões) also near-matches the OGE digital sector envelope (Kz 226,4 mil milhões).
  **Practical consequence: never build finance records from both the PAC and the OGE programme
  table for the same fiscal year — they are the same money under two naming systems.** Prefer the
  OGE line (it carries a budget stage); treat the PAC as procurement detail and as the vendor route.
- **Corollary for scope:** the *cybersecurity-index* programme name is a policy target
  ("improve the country's ranking on the Global Cybersecurity Index"), not a description of what is
  bought. If the PAC equivalence holds, the money behind it is a **data centre / analytics / cloud**
  procurement. Do not infer the object from a programme title alone.
- **Parent/child double-count trap in the OGE programme table.** pti.ao reports both the programme
  total ("Expansão e Modernização das Comunicações") and its named sub-lines (4G, 3G, cyber-index).
  Recording both inflates the domestic total. Capture the **parent once**, hold the sub-lines in the
  record body — until the Mapas give a clean per-project table.
- **Origin risk to carry forward:** the OGE 4G line may be the China Eximbank-financed RNBL wearing
  a domestic label. No source on file states the funding source of any OGE digital line, so the
  origin gate defaults them to `domestic-state`, flagged. The Mapas (`ago-oge2025-mapas`,
  `ago-oge2026-mapas`) are the arbiter — this is the single highest-value AGO acquisition.

### Angola — enacted OGE volumes come from mirrors, not the ministry (acquisition, 2026-07-23)

- **Three sweep passes failed to surface a minfin CMS UUID for any enacted OGE volume. Two mirrors
  delivered them on one attempt each** — and both use plain, unguarded, directly `curl`-able paths:
  - **CABRI Budget Information Archive** — `cabri-sbo.org/uploads/bia/<Country>_<year>_<stage>_…pdf`.
    Gave **Lei n.º 18/24 (OGE 2025), 671 pp, 68.1 MB**, and previously the OGE 2025 Fundamentação.
    The country profile (`/en/countries/angola`) is the index; **for Angola it holds 2025 only** — no
    2024 or 2026. Try CABRI **first** for any African enacted budget before fighting a ministry CMS.
  - **Development Workshop Angola** — `dw.angonet.org/wp-content/uploads/<YYYYMMDD>-Lei-…pdf`. Gave
    **Lei n.º 15/23 (OGE 2024), 94.5 MB** as a gazette scan. A civil-society document library is a
    live route for Angolan gazette PDFs.
- **Both enacted volumes are scanned — no text layer at all.** `pdftotext` returns form-feeds only
  across sampled pages. The budget tables are legible to a reader and useless to the current
  toolchain (`pdftotext`, no `pdfplumber`, no OCR). **Extraction of Angolan enacted budgets needs an
  OCR step that does not yet exist**; acquiring the document is no longer the bottleneck.
  Contrast the Fundamentação reports and quarterly execution reports, which are **native PDFs** with
  clean text — which is why the narrative side of Angola is well covered and the tabular side is not.
- **Naming correction:** the OGE 2026 appropriation act is **Lei n.º 14/25** (aprovada 15-Dez-2025,
  Kz 33 240 843 683 427,00). The string "Lei 01/V/4.ª/2026-2027" recorded by the AGO 2026 sweep is
  the **Assembly's *diário* reference** (DIÁRIO II SÉRIE N.º 01-V-4.ª-2025-2026), not a law number.
  Angolan budget laws run `15/23` → `18/24` → `14/25`; take the number from angolex/lex.ao, not from
  the parliamentary diário filename.
- **Still closed after one attempt:** `compraspublicas.minfin.gov.ao` (the PAC portal) times out —
  no Angolan Plano Anual de Contratação is held for any year; and the minfin CMS exposes the 2025
  quarterly execution reports by UUID but **no anexos volume and no 2026 series at all**.

### Burundi — the whole chain is a scan, and the digital line is donor-side (sweep, 2026-07-23)

- **Fiscal year is July–June**; documents label it `2024/2025`. Programme budget since the
  **loi organique n°1/20 du 20 juin 2022**: credits are voted by *programme* (≈5 per ministry,
  one transversal) or, for Présidence/Primature/Ombudsman, by simple *dotation*.
- **`finances.gov.bi` is a clean WordPress document library behind the same local-DNS wall as
  Kenya, Senegal and Angola.** DoH (`cloudflare-dns.com/dns-query`) → **41.79.224.90**, then
  `curl --resolve finances.gov.bi:443:41.79.224.90`. Categories `/index.php/category/lois/`,
  `/index.php/budget/`, `/index.php/ptba/`; each post carries exactly one
  `wp-content/uploads/YYYY/MM/<Name>.pdf` link. One category fetch = the whole per-year chain.
- **The estimates volume is called the PTBA** (*Plan de Travail et Budget Annuel*), published as
  *"Ventilation des dépenses par programme ou dotation sur les ressources nationales"*. It is
  the per-programme volume and the only route to a cross-vote scan — **but it covers domestic
  resources only** (*sur les ressources nationales*), so donor-financed digital spend is out of
  it by construction. An initial and a *modifié* volume are published per year, the second after
  the loi de finances rectificative; they are **differently produced scans** (265 MB vs 44 MB at
  more page objects) — do not assume shared layout or scale.
- **OCR is a hard precondition for Burundi.** Of nine FY2024/25 documents captured, only the
  **Exposé des motifs** (12 pp) and the two **ministry procurement plans** are native PDFs. The
  appropriation act (462 MB), the rectificative (246 MB), both PTBA volumes, the FSU plan and
  the Cour des comptes RPGA are image-only — `pdftotext` returns a few hundred bytes across
  hundreds of pages. Same wall as the enacted Angolan OGE volumes, but here it covers the
  *entire* chain rather than just the gazette scans.
- **Verify every large fetch against `Content-Length`.** The first PTBA download silently
  truncated at 41.5 MB of 265.4 MB and still began `%PDF` — size-check, don't magic-byte-check.
- **The procurement portal is the richest fisc-side seam, and it is the Angola-PAC analogue.**
  `armp.bi` 403s to curl ("This website has been deactivated"); the live host is
  **`armp.gov.bi`**. Its *Plan de Passation des Marchés <FY>* section paginates over 8 pages of
  `/archives/<id>` posts, one per spending unit, each linking one PDF. The ministry plans are
  **native text**, give **Budget prévu in full BIF units**, name the **Source de financement**
  (`Budget de l'Etat` vs project), and — the key — section themselves under a **LITERA budget
  classification string**, e.g. `LITERA: 11 00 002 00 4 21450 11 000 0311 01`. *That string is
  the join key from a procurement line back to a PTBA programme.* Capture it with every line.
  Successive revisions of the same year's plan are published (`révisé 3`, `révisé 6`); take the
  highest.
- **What the fisc actually buys (FY2024/25):** MININTER — *logiciel de biométrie pour la gestion
  de carrière* 791 990 000 BIF, *matériel et équipements informatiques* for the **Commissariat
  Général Migrations** 721 245 000, police network training 50 169 500. MFBPE — ordinateurs
  489 500 000, *maintenance du réseau informatique* 356 506 000, équipements informatiques
  226 200 000, entretien/réparation 435 884 000 (**gré à gré**). All `Budget de l'Etat`.
  Hardware and maintenance, not systems.
- **The systems are donor money and they are not in the budget documents at all.** PAFEN
  (World Bank P176396, IDA US$50m + US$42m AF) carries the IFMIS **SIGFP_BI** (~US$30m), the
  tax platform **e-KORI**, the e-government strategy, the identity diagnostic and the SETIC
  site — procured on `pafen.gov.bi`, not through ARMP. A BDI domestic-state total that does not
  state this reads as near-zero digital spending. **The CNI biométrique crosses to the fisc only
  in FY2026/27** (16 milliards BIF in the budget bill; ~15 mds stated as whole-project cost).
- **Own-source:** the **Fonds de Service Universel des TIC** (décret n°100/186 du 16 octobre
  2017, restructured by **décret n°100/054 du 29 mars 2024** — own directorate, `fsu.gov.bi`)
  levies **1% of operators' turnover**. Its FY2024/25 procurement plan is on ARMP but is a scan.
  Watch the origin phrasing: an FSU tender states *« financé à 100% Par le Fonds de Service
  Universel sur le budget général de l'exercice 2024-2025 »* — own-source fund, *sur le budget
  général*, in one sentence.
- **Audit: the fiscal-year instrument is the PLR, and it has stopped.** Cour des comptes
  publishes `courdescomptes.bi/assets/images/PLR<YYYY>_<YYYY>.pdf` (report on the projet de loi
  de règlement). The series ends at **PLR2022_2023**; PLR2023_2024 and PLR2024_2025 both 404 as
  at 2026-07-23 — so Parliament adopted the FY2024/25 règlement law with no published audit of
  it. The **RPGA** (`rpga<YYYY>.pdf`, latest rpga2024) is a *calendar-labelled* annual report
  against a July–June fisc: never assume which fiscal year an RPGA edition covers.
- **Reporting route (ingest, 2026-07-24).** Of the FY2024/25 *reporting* sources swept, the
  **loi de règlement** as reported (Le Renouveau, 13 May 2026) gives **whole-budget aggregates
  only** — resources realised 3 234bn BIF = **76.79%** of the 4 211bn revised target — with **no
  per-ministry or per-programme actuals**, so it cannot settle any digital line's execution; the
  **PTBA S2 implementation report** (7 Oct 2025) establishes crédits were **moved between
  programmes at will** (2.7% overrun), qualifying any appropriated-vs-actual comparison. The **only
  recordable digital line from this batch** was the **FY2026/27 CNI 16bn BIF** from the minister's
  11 Jun 2026 statement (`proposed`, `official-statement`) — every FY2024/25 budget figure either
  failed scope (ministry envelope, e.g. MINCOTIM 131.7bn) or was a whole-budget aggregate.
- **Searched, found nothing:** a data protection authority budget line (the law is **Loi n°1/03
  du 10 mars 2026** — no DPA existed in FY2024/25, and no supervisory authority is publicly
  identified even now); any national CSIRT/cybersecurity agency appropriation; a MINCOTIM
  FY2024/25 procurement plan (absent from ARMP though other ministries' are there); the PAP /
  DPBEP / PIP / CDMT instrument set named in the exposé des motifs.
- **Trap:** `arct.bi` does not resolve — the regulator is `arct.gov.bi`, and its annual-report
  series stops at 2021-2022.

### Burundi — FY2025/26: the execution side goes machine-readable (sweep, 2026-07-24)

- **Law chain established (via Exa, not the scans):** appropriation act **Loi n°1/12 du 24 juin
  2025**; rectificative **Loi n°1/09 du 31 décembre 2025** (modifying 1/12), adopted Assembly
  24 Dec / Senate 27 Dec 2025. Numbers came from the finances.gov.bi post title and the **OBR
  `lois et règlements` page** (`obr.bi/index.php/en/lois-et-reglements`) — a second Burundi
  budget-law index worth grepping, and it also lists a *Tableau des dispositions révisées de la
  Loi des Finances 2025-2026 Modifiée* (a summary table, likely native — not yet fetched).
- **The scanned volumes shrank but are still image-only.** Loi 14.9 MB/~214 pp, PTBA 53 MB/~437
  pp, modifiée 40 MB/249 pp — vs FY2024/25's 462/265/246 MB. `pdftotext` returns 200–450 bytes
  each. Lower DPI, no text layer: **OCR still required for the appropriation act and PTBA.**
- **NEW and high-value: the T3 canevas execution reports are native XLSX.** finances.gov.bi
  publishes, per institution, `CANEVAS-RAPPORT_<INST>_2025-2026_T3.xlsx` (found via `?s=canevas`;
  ~24 institutions, dated 2026-07-04). Each is a 64-column programme→action→**PAP activity**
  spreadsheet carrying `BUDGET ANNUEL REVISE`, quarterly revised budgets, and
  `ENG BUDGETAIRE / ENG JURIDIQUE / LIQUIDATION / ORDONNANCEMENT / PAIEMENT / DECAISSEMENT` at T3
  with `Taux de liquidation` / `Taux de réalisation physique`, plus a LITERA-equivalent
  `CODE NOMENCLATURE`. This is **the first machine-readable BDI budget artefact** — it yields a
  cross-vote *revised + in-year-executed* scan with no OCR, and **substitutes for the missing
  standalone PTBA modifié** (revised figures are the `BUDGET ANNUEL REVISE` column). The blank
  `canevas-annuel-<inst>` posts (dated 2025-07-02) are the *template* versions; the filled reports
  are the `canevas-rapport_…_t3` posts.
- **Ministry acronyms churn between the annual templates and the T3 reports** (June-2025 reshuffle):
  the économie-numérique portfolio sits with **MFBEN** (finance); ICT/télécoms/médias with **MCM**
  (Ministère de la Communication et des Médias) which carries "PRG01: Programme de digitalisation
  de l'administration publique"; identity/état-civil/migrations with **MIDCSP** (interior). Decode
  each acronym from the sheet's `INTITULE MINISTERE/INSTITUTION` cell — do NOT guess (MRMEICT
  looked digital but is Mines/Énergie/Industrie/Commerce/Tourisme).
- **Digital lines found under (native XLSX):** MFBEN — Programme de digitalisation des services
  publics, comité de pilotage/technique de la digitalisation, 40 licences sécurité des données,
  serveur d'archivage/gestion des données SPP. MIDCSP — logiciel permis de conduire, logiciel de
  digitalisation, **30 communes digitalisées en recettes communales**, sites CGM internet IP
  dédié. MCM — the PRG01 digitalisation programme. SETIC (PPM) — équipements de sécurité
  218,100,000 BIF and fibre/bande passante IP 213,033,569 BIF on BGE 2025-2026.
- **armp FY2025/26:** listing at `/passation-des-marches-2025-2026/` (18 pages, `/archives/<id>`
  per unit); MFBEN reaches **Révisé 6**, FSU has two revisés (take `/8946`), and **SETIC** files a
  plan (the e-gov body, not in the T3 ministry set). Native text + LITERA throughout.
- **Searched, found nothing / nil:** no exposé des motifs 2025-2026 (the one readable narrative —
  unpublished this year → acquisition); no standalone PTBA modifié 2025-2026 → acquisition; no
  audit (PLR series ends FY2022/23, structurally absent). Donor systems (SIGFP_BI, e-KORI) remain
  off-budget via PAFEN — the ressources-nationales PTBA understates digital by construction.
