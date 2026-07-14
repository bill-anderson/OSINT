# Review worklist

Standing **research agenda** of items held for human decision (see CLAUDE.md → Autonomy and
review). Not just an error list — it carries two item types, each with an ID and (where a git repo
exists) a commit ref:

- **Contradiction** — competing claims the base can't reconcile. Each carries a **paste-ready,
  wiki-agnostic external-research brief** (below the item): the claim in dispute, each competing
  value, who asserts each, and the source URL(s) CC *holds* for each assertion (read from source-page
  frontmatter). CC lists **only links it actually holds** — it suggests no external or primary
  sources of its own; where a value has no clean source URL on file, that is flagged as a provenance
  gap. Reconciling a contradiction is **external research the human runs in their own tool**, not a
  query against the base — so no brief is placed in `queries/`.
- **Gap** — a high-confidence *structural* absence (an entity referenced with no page; a claim with
  no supporting source). A research lead for the human to *consider sourcing*, never actioned
  autonomously. See Gaps section below.

**Self-citation policy (curator directive, 2026-07-13).** The author's own *published* work
(data-landscapers.com) is treated **as if written by an expert third party** — the same standing as
any other named analyst (Kariuki, Munyua, Adebowale, …) — and **his framing, biases and opinions
may influence the wiki's synthesis wherever relevant.** Such self-citations are therefore **not
held here**. Only ordinary analytical hygiene still applies, exactly as for any analyst: attribute
plainly ("as Data Landscapers has argued") and don't use a piece to corroborate a wiki claim that
was itself drawn from that same piece. His *unpublished* notes and AI-generated assets (e.g.
[[data-landscapers-cable-factsheet]], Perplexity-sourced) remain do-not-cite on their own pages —
not covered by this directive.

General `status: needs-review` provenance/editor holds are not here either — they live on their own
pages and surface via lint check #9.

> Note: not a git repo, so items carry a `log.md` date / page ref instead of a commit ref.
> Seeded 2026-07-13. When an item is resolved, remove it here and append a resolution line to `log.md`.

---

## Contradictions (unresolved / provisionally-resolved)

Each item has an internal line (**Affects** — wiki pages CC updates once resolved) and a
**Brief** — the wiki-agnostic block the human copies into an external research tool.

---

### REV-002 · Nigeria PAPSS cross-border flows −53% (contradiction-watch)
**Affects (wiki):** [[dpi.pay]], [[papss]], [[afreximbank]], [[NGA]], [[nigeria--dpi-pay]].

**Brief (paste-ready):**
**Are Nigeria's PAPSS (Pan-African Payment and Settlement System) cross-border flows contracting or scaling?**
- **Contraction:** PAPSS transaction value fell **53% to ₦5.6bn** in H1 2025 — Vanguard, "Nigeria's PAPSS cross-border payments falls 53% to N5.6bn," 27 Jan 2026, reporting the Central Bank of Nigeria Financial Stability Report — https://www.vanguardngr.com/2026/01/nigerias-papss-cross-border-payments-falls-53-to-n5-6bn/
- **The countervailing "continental payment rail is scaling" reading has no single source on file** — it is a synthesised narrative, not one dated figure.

*Provenance gap:* only the contraction figure is sourced, and even that is a news write-up of the CBN report, not the CBN report itself.

*Task:* the one hard figure I hold shows a 53% H1'25 decline — check whether later PAPSS / CBN data confirm contraction or a rebound, and whether the naira fall is a real volume drop or an FX/denomination effect. Record an as-of date.

---

### REV-003 · AMSP Afreximbank guarantee figure, + Masiyiwa/Econet dates
**Affects (wiki):** [[africa-medical-supplies-platform]], [[strive-masiyiwa]].

**Brief (paste-ready):**
Two loosely-related facts.

(a) **What is the size of the Afreximbank facility (PATIMFA) backing the Africa Medical Supplies Platform — $3bn or $3.8bn?** The wiki carries ~$3bn (with $200m reserved); "one source" gives $3.8bn but is not pinned. Sources on file discussing the AMSP guarantee:
- Milken Institute interview with Strive Masiyiwa, Jun 2020 — https://milkeninstitute.org/content-hub/collections/articles/interview-au-special-envoy-strive-masiyiwa-launch-africa-medical-supplies-platform
- Strive Masiyiwa, "Best practices from Africa: collaboration in the time of COVID-19," Commonwealth Security Research Group, 1 Jul 2020 — https://www.cwsrg.org/post/strive-masiyiwa-best-practices-from-africa-collaboration-in-the-time-of-covid-19
- "Strive Masiyiwa on Tools and Weapons with Brad Smith" (transcript), 2023 — https://tools-and-weapons-with-brad-smith.simplecast.com/episodes/strive-masiyiwa-entrepreneurship-education-and-impatience/transcript

*Provenance gap:* the $3.8bn figure is not attributed to a specific source in my records — it must be traced across these three.

(b) **When was Econet founded — licensed 1997 or incorporated 1998?** The wiki already reads this as a licence-vs-incorporation distinction, not a true conflict.
- **Licensed 1997:** NYU School of Law, 4 Apr 2017 — https://www.law.nyu.edu/news/Strive-Masiyiwa-Bernstein-Institute-leadership-business-human-rights-philanthropy-Econet-Zimbabwe ; Stanford GSB, 2023 — https://www.gsb.stanford.edu/insights/rebel-behind-africas-telecom-revolution ; African Leadership Magazine, 20 Jan 2014 — https://www.africanleadershipmagazine.co.uk/five-lessons-from-zimbabwes-richest-man-strive-masiyiwa/
- **Incorporated/established 1998:** the wiki attributes this to "The Guardian (2014)," but **no matching Guardian source is on file** — the only Guardian page I hold is a 2021 COVID-vaccines piece unrelated to Econet's incorporation. (Provenance gap.)

*Task:* reconcile the AMSP facility figure ($3bn vs $3.8bn) against a primary Afreximbank record, and confirm the Econet licence vs incorporation dates. Record an as-of date for each.

---

### REV-004 · Zimbabwe–US health MoU amount
*Recorded, not reconciled.*
**Affects (wiki):** [[zimbabwe-us-health-mou]].

**Brief (paste-ready):**
**What was the headline value of the US health-funding package Zimbabwe rejected in February 2026 — $350m or $367m?**
- **$350m:** Business Insider Africa, "Zimbabwe rejects $350 million US health funding deal, warns it threatens national sovereignty," 24 Feb 2026 — https://africa.businessinsider.com/local/markets/zimbabwe-rejects-dollar350-million-us-health-funding-deal/
- **$367m:** Ecofin Agency, "Zimbabwe Turns Down U.S. Health Funding, Citing Sovereignty Concerns," 25 Feb 2026 — https://www.ecofinagency.com/news/2602-53296-zimbabwe-turns-down-u-s-health-funding-citing-sovereignty-concerns

Related coverage on file (the parallel Zambia deal, useful context): Africanews, 26 Feb 2026 — https://www.africanews.com/2026/02/26/zambia-rejects-us-health-aid-over-mining-partnership-ties/ ; The Guardian, 25 Feb 2026 — https://www.theguardian.com/global-development/2026/feb/25/zambia-us-health-aid-deal-exploitation-mining-concessions-data-sharing-targets ; Channel Africa / Reuters, 5 Mar 2026 — **only the publisher homepage is on file** (https://www.channelafrica.co.za/), no clean article URL (provenance gap).

*Task:* two figures ($350m vs $367m) for the same rejected deal — investigate which is correct against a primary US or Zimbabwe announcement, recording an as-of date.

---

### REV-005 · Mozambique Cyber Security Law implementation cost
**Affects (wiki):** [[mozambique-cyber-security-law]], [[MOZ]].

**Brief (paste-ready):**
**What is the implementation cost stated for Mozambique's Cyber Security Law (approved April 2026)?** A single source gives two irreconcilable figures — **~160m MZN (~US$2.5m)** vs **167,257.94m MZN** — a ~1,000× gap that reads like a units error (full-MZN vs millions, or a thousands/millions slip).
- Only source on file: Club of Mozambique (via O País), "Mozambique parliament unanimously approves Cyber Security Law," 17 Apr 2026 — https://clubofmozambique.com/news/mozambique-parliament-unanimously-approves-cyber-security-law/

*Provenance gap:* one secondary source only; no primary gazette (*Boletim da República*) or budget text held.

*Task:* the single source I hold states two costs ~1,000× apart — resolve against the primary law text / budget line which figure and unit is correct, recording an as-of date.

---

### REV-006 · DR Congo USD-stablecoin pilot — provisionally held (weak provenance)
**Affects (wiki):** [[drc--dpi-pay]], [[visa-mpesa-onafriq-drc-stablecoin-pilot]], [[visa]] (visa entity provisionally moved to `active` on the corroborated Visa Pay leg, 2026-07-13).

**Brief (paste-ready):**
**Have Visa, M-Pesa (Safaricom) and Onafriq actually launched a USD-stablecoin pilot in the DR Congo?**
- **Stablecoin-pilot claim — single low-authority source:** Streamline Feed, "Visa and M-Pesa Launch Blockchain Stablecoin Pilot in DR Congo," 10 Jul 2026 — https://streamlinefeed.co.ke/news/visa-and-m-pesa-launch-blockchain-stablecoin-pilot-in-dr-congo
- **Related Visa Pay / Onafriq DRC activity (NOT the stablecoin leg), independently reported:** Connecting Africa, "How Onafriq is growing digital finance amid uncertainty in DRC," 26 Jan 2026 — https://www.connectingafrica.com/financial-inclusion/how-onafriq-is-growing-digital-finance-amid-uncertainty-in-drc

*Provenance gap:* the stablecoin leg rests on one weak aggregator only; no Visa / Safaricom / Onafriq primary on file corroborates it.

*Task:* verify the USD-stablecoin pilot against a Visa, Safaricom or Onafriq primary; if none confirms it, treat the stablecoin claim as unverified and downgrade. Record an as-of date.

---

## Gaps (structural absences — research leads, not tasks CC actions)

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
  prose): **Angola’s** data-protection agency (APD) and its AI-provisions revision; **Ghana** Data
  Protection Commission (+ 2025 Bill / data-as-property); **Botswana** Information & Data Protection
  Commission (2024 Act); **Mauritius** Data Protection Office (+ 2017 Act amendment, National Data
  Strategy 2025–2029); **Seychelles** Information Commission (2023 Act); plus the new **Burundi**
  (Jan 2026), **Djibouti** (Digital Code) and **Gambia** laws. *Lead: consider sourcing primaries and
  creating the highest-recurrence DPA/instrument pages to anchor the [[gov.protect]] / [[gov.legislate]]
  threads — created here only for the entities the batch actually leaned on.* (Recorded Batch A,
  2026-07-14.)
