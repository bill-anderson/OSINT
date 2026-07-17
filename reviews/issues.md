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
