# reviews/issues.md — decision register (human-owned)

Standing register of **issues**: judgment calls the written rules in `CLAUDE.md`
do **not** determine, which need Bill's ruling — an admissibility call CC can't
make, a proposed schema tweak, a taxonomy/vocabulary question, an invariant edge
case, a genuinely uncertain classification. This is the sibling of `gaps.md`:
gaps say *"consider sourcing this,"* issues say *"make this call."*

**CC appends here instead of asking at the prompt** (see CLAUDE.md → Autonomy and
review). CC never works this file as a to-do list and never resolves an issue on
its own — it only *adds* one, always with a **recommended** resolution so Bill
can rubber-stamp in bulk ("take your recommendations on the open issues") rather
than adjudicate each cold. **Only** genuinely under-determined decisions belong
here — if a rule already settles it, that's a tier-1/2 action CC just does, not
an issue.

When Bill rules, CC actions it, appends a resolution line to `log.md`, and
removes the item here. A short `issues.md` means you're caught up.

**Item format:**

> - **ISSUE-NNN · short title.** One or two lines: what came up, and why the
>   rules don't settle it. *Recommend:* CC's suggested call. *Decision:*
>   (awaiting). (Surfaced &lt;ingest | reconcile | lint | …&gt;, YYYY-MM-DD.)

---

- **ISSUE-001 · Admissibility of a single-author MSc thesis as a source.** The RWA batch surfaced
  *SYLVERE MUGUMYA, "E-Government Systems Interoperability Challenges"* (MSc dissertation, University
  of Rwanda, Oct 2019). It is original first-hand academic work (not an AI/second-hand synthesis), but
  a single-author student thesis sits below the usual institutional-reference bar, so the rules don't
  cleanly settle whether it's an admissible source. Parked in `_leads/` pending this call.
  *Recommend:* admit as a **low-authority, dated (2019) historical-baseline reference** tagged
  `dpi.exchange`/`dpi.govtech`/`gov.standards`/RWA, cited for its 2019 snapshot only, never as
  corroboration of a current claim. *Decision:* (awaiting). (Surfaced ingest, 2026-07-16.)

- **ISSUE-002 · Sudan's parent region (XEA vs North Africa).** `countries.csv` places **SDN** under
  **XEA** (East Africa); Sudan is arguably North / North-East Africa, which changes roll-ups. A
  vocabulary/parent-tree question the rules leave open. *Recommend:* **leave SDN under XEA for now**
  (matches UN M49's placement of Sudan in Eastern Africa and avoids a vocabulary migration mid-batch);
  revisit only if the regional roll-ups start to mislead. *Decision:* (awaiting). (Surfaced ingest,
  2026-07-16.)

- **ISSUE-003 · Social Registries duplicate — companion prune implicates a second PDF copy.** The lint's
  #7 pass confirmed `2024-01-01 Global Insights on Social Registries - Coverage and Beyond.md` and
  `2024-01-01 Social Registries - Global Insights on Coverage and Beyond (World Bank).md` are exact
  relevant-duplicates (same World Bank study, same authors, both explicitly hold no country figures —
  "cite don't absorb"). The keeper by the ladder is the **"(World Bank)"** one (cited by
  `[[gambia-social-registry]]`; points to the better-identified `P177331 Social Registries…pdf`); the other
  is uncited. But each `.md` is a companion to a **separate PDF copy** of the same report, so pruning the
  redundant `.md` leaves an orphaned `2024-01-01 Global Insights on Social Registries - Coverage and
  Beyond.pdf`. Deleting a binary artefact copy I can't byte-diff to confirm it's identical is a judgment
  call, so it's held rather than auto-pruned. *Recommend:* keep the "(World Bank)" companion + `P177331`
  PDF; **delete both** the uncited `Global Insights…Coverage and Beyond.md` and its `…Coverage and
  Beyond.pdf` (git-reversible; no rewire needed since the pruned page is uncited). *Decision:* (awaiting).
  (Surfaced lint, 2026-07-16.)

- **ISSUE-004 · Scope of utility-tariff reporting (Togo electricity prices).** The TGO batch surfaced
  *"Togo Increases Electricity Prices to Boost Utility's Finances"* (Togo First, 2025-05-16): a CEET tariff
  schedule — 12.5% average rise from 5 May 2025, per-kWh rates by customer class, a CFA40bn BOAD facility.
  It is admissible and `infra.energy` is a real taxonomy facet, so no rule excludes it; but its entire
  payload is electricity prices, with no data, digital system or governance-of-information content. The
  rules don't settle how thin an on-facet item may be before it stops being intelligence — and the
  precedent matters, because admitting it invites African utility tariff schedules generally, turning
  `infra.energy` into a channel for general macroeconomic reporting. *Recommend:* **admit narrowly, as
  filed** — tagged `infra.energy` + `TGO` only, no digital topics, tariff figures confined to the source
  page and not promoted to the TGO hub. The durable value is the CEET/AT2ER/ARSE entity payload, which the
  civil-registry item already establishes with a genuine digital hook. Adopt "on-facet but no
  data/digital payload → admit narrowly, don't promote" as the general rule for this class.
  *Decision:* (awaiting). (Surfaced ingest, 2026-07-17.)
  **Second instance, 2026-07-17 (ZAF·ZMB·ZWE batch):** the *Zambia — Beyond Connections Energy
  Access Diagnostic* (World Bank MTF, 2019) is the same class and even thinner — testing its full
  text found **"digital" appears zero times**, "mobile" twice (both "mobile phone charger" in an
  appliance list), and "phone" eleven times, every one an appliance wattage benchmark. Filed per
  this issue's recommended rule: **admitted narrowly**, tagged `infra.energy` + ZMB only, figures
  confined to the source page. Two instances in two batches suggests the rule is worth ratifying
  rather than re-deciding each time.

- **ISSUE-005 · Merge `eswatini-digital-transformation-project` into `digital-eswatini-project`?** The
  wiki holds two entity pages that are probably one project. `[[eswatini-digital-transformation-project]]`
  rests on a thin 2026-05 secondary report of Eswatini "moving closer to securing funding" through World
  Bank negotiations, with no figure — and carried a standing "⚠ verify against a WB project record" flag.
  This batch supplied the candidate record: **Digital Eswatini, P508948** (concept-stage PID, 2025-06-28,
  US$65.16m proposed). They match on country, financier, implementing ministry
  ([[ministry-of-ict-eswatini]]) and delivery platform ([[government-in-your-hand]]). The chronology
  objection has **dissolved on inspection**: the PID's appraisal (1 Aug 2025) and approval (1 Sep 2025)
  dates are printed as *Estimated* — planned dates in a concept-stage document, not a record of approval —
  so a May-2026 report of live negotiations is consistent with a project whose estimated dates slipped,
  not evidence of a second project. But **no source states they are the same project**, and merging two
  entity pages on inference is a judgment the rules don't determine. *Recommend:* **merge** —
  `digital-eswatini-project` (the World Bank's own project name and ID) as keeper, rewire the four
  referrers, retain the press rendering "Eswatini Digital Transformation Project" as an alias, and note
  on the merged page that approval remains unconfirmed in the corpus. Pending a ruling, both pages stand,
  cross-linked, with the identification marked probable-not-established. *Decision:* (awaiting).
  (Surfaced ingest, 2026-07-17.)

- **ISSUE-006 · Tunisie Telecom's chief executive: one person or two?** The 2026-02-13 digital-health item
  names **"Assad bin Dyab, president and general manager of Tunisie Telecom"**; the held 2026-01-19 EBRD
  source names **"Lassaad Ben Dhiab (Tunisie Telecom CEO)"** — one month apart. These are near-certainly
  the same person under different transliterations from Arabic, but **no source held states that**, and
  merging two named individuals on the strength of a phonetic resemblance is not a call the rules
  determine. *Recommend:* treat as **one person, canonical form "Lassaad Ben Dhiab"**, with "Assad bin
  Dyab" recorded as a rendering variant on the entity page, and re-check against a primary Tunisie Telecom
  source at the next opportunity. If they turn out to be two people (e.g. a chair and a CEO), the fix is a
  one-line split. *Decision:* (awaiting). (Surfaced ingest, 2026-07-17.)

- **ISSUE-007 · Two batch PDFs are undated AND unattributed — admit or hold?** Two artefacts arrived with
  no printed date, no recoverable PDF metadata, and **no named publisher anywhere in the document**:
  (a) *Seizing the opportunity to improve the national digital ID system for Uganda* — evidently a joint
  civil-society submission (written in a collective "we recommend / we call upon NIRA" voice), whose content
  brackets it to June–July 2024; it carries a striking claim, that **1 million people in the National
  Identity Register have fingerprints that cannot be matched**, attributed to NIRA's Executive Director.
  (b) *Tanzania_case_study.pdf* — a third-person analyst account of Tanzania's "Jamii" DPI stack
  (Jamii Namba / Jamii Malipo / Jamii X-Change), post-dating 29 July 2024. Both are plainly genuine
  documents, not AI syntheses — but source admissibility asks for a **dated, attributable origin**, and
  neither has one as held. Both are **parked in `_leads/`** pending this call rather than admitted on a
  guess. *Recommend:* **hold as leads and hand-source the original web postings** to establish publisher
  and date, then admit properly — for (a) especially, since its fingerprint-failure claim is independently
  corroborated by the IriTech account (>1m Ugandans unable to register fingerprints) and would be
  load-bearing if admitted. Failing that, admit each with `date_source: proxy`, an explicit
  publisher-unknown note, and never as corroboration for a claim it uniquely carries. *Decision:*
  (awaiting). (Surfaced ingest, 2026-07-17.)

- **ISSUE-008 · `econet-wireless.md` conflates Econet Group with Econet Wireless Zimbabwe.** The held page
  profiles the **Group** (it records the HQ move to South Africa in 2000 and lists 15–18 markets) while
  being the wiki's only Econet entity — so Zimbabwean opco facts land on a page about a multinational.
  The ZWE batch forces the question: **Econet InfraCo is a subsidiary of Econet Wireless *Zimbabwe***, per
  both sources, and cannot be attached to the Group page without inheriting the conflation. The sources
  themselves are loose — ITWeb calls Douglas Mboweni "Econet CEO", Developing Telecoms calls him "Econet
  Group chief executive" — so the wiki cannot resolve it by citation alone. *Recommend:* **split** —
  keep `econet-wireless.md` as the **Group / Econet Global** page, create a distinct
  `econet-wireless-zimbabwe` page for the listed Zimbabwean operator, and hang `[[econet-infraco]]`
  (created this batch) off the latter. Also refresh Mboweni, whom the held page still dates to 2014 and
  who is confirmed still serving in Dec 2025. Not actioned: splitting an entity with existing referrers on
  my own reading of loose trade copy is a judgment call, not a rule-determined fix. *Decision:*
  (awaiting). (Surfaced ingest, 2026-07-17.)

- **ISSUE-009 · Secondary re-reports ingested with their own publication date — a class of error, not a
  one-off.** This batch found the ZAF hub dating **Google's Johannesburg cloud region to 2025-03-27**,
  which is the publication date of a secondary AFRIBIT blog post; Google's own announcement dates the
  opening to **2024-01-31** — a **14-month** error sitting on a country hub, now corrected. In the same
  batch, held sources date **Microsoft's R5.4bn SA investment to 2026-04-17** while a 2026-02-09 Daily
  Maverick piece treats it as already announced — the same shape, unresolved (see
  `reviews/contradictions/open/microsoft-sa-investment-date`). Both involve a **corporate announcement**
  reaching the wiki through a **secondary outlet**, whose own date gets ingested as the event date.
  *Recommend:* adopt a standing intake rule — **for any corporate or institutional announcement arriving
  via a secondary outlet, the event date must be taken from the primary (the company/government release)
  or explicitly marked `date_source: proxy` and flagged.** Cheap to apply at ingest, expensive to find
  later: the Google error survived at least one prior batch. *Decision:* (awaiting). (Surfaced ingest,
  2026-07-17.)
