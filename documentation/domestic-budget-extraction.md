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

### Côte d'Ivoire / Benin / Gabon — francophone budget-session reporting (back-swing, 2026-07-22)
- **Pattern:** Oct–Dec committee/assembly-stage reporting (WeAreTech, TechAfrica, Ecofin) gives the digital ministry's total vote with YoY comparator — an envelope, excluded by rule. Only occasionally (Benin: "programme numérique et digitalisation", XOF 12.3bn) does reporting give the programme split that yields a recordable line.
- **The acquirable unit** that would convert envelopes into lines: the loi de finances annexes / the CIV "Lettres d'engagement" issued per budget programme.

### Botswana — development-plan documents (back-swing, 2026-07-22)
- **Digital lines found under:** NDP 12 / PIP coverage — the clean line hides inside a mixed ministry ask, called out as "ICT development projects" with named systems (national payment switch, accounting system); named systems are the scope_basis.

### Egypt — recipient-side accounts (back-swing, 2026-07-22)
- **New pattern:** central-bank incentive schemes (CBE PoS campaign) surface only as income lines in the recipient company's filings (Fawry), quoted in fintech profiles — the state's own cost is never published. Capture from the recipient side, flag the judgment.

### World Bank PADs — the counterpart sliver (back-swing, 2026-07-22)
- **Where it hides:** the PROJECT FINANCING DATA block, "Counterpart Funding / National Government" rows plus a footnote naming which country carries which share; the component-cost table includes it while the IDA Resources table excludes it — a small mismatch between the two tables (60.00 vs 60.50) is the tell.

### South Africa — pre-run stub (sweep, FY2024/25) — *unverified, replace after the run*

Written ahead of the first sweep run so it starts warm. **Everything here is to be
confirmed against the documents, not trusted** — vote numbering in particular
changes between administrations and must be read off the year's own estimates.

- **Fiscal year:** April–March. "2024" resolves to **FY2024/25, 2024-04-01 to
  2025-03-31**. Label form in the documents: `2024/25`.
- **Expected document chain** — the reason this country is a good pilot: main
  estimates published on budget day (February), an adjusted-estimates volume in
  the second half of the year (the `revised` / `supplementary` case the driver
  needs testing against), an outturn/annual-report layer, and an audit layer. If
  this chain holds, one country-year exercises four of the six `budget_stage`
  values.
- **To establish on the run:** which vote carries communications and digital
  technologies for this year; whether the estimates are published per-vote in a
  machine-readable form alongside the PDF; whether the open-budget portal exposes
  programme-level data directly; and how the state IT agency's own budget is
  presented, since an agency funded by charging departments is a transfer question
  (`is_transfer`) before it is a spending question.
- **Known from the corpus already:** a Home Affairs ministry-envelope near-miss
  (envelopes are not records); and one held record,
  `zaf-2025-26-dcdt-sa-connect-phase-2` at `stage: unclear` with an FY attribution
  ambiguous against budget-speech timing — **a direct test of whether documents
  resolve what reporting could not.** If the FY2024/25 and FY2025/26 estimates
  settle that record's year and stage, case 5 (*reset*) fires and the procedure is
  validated end to end.

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
