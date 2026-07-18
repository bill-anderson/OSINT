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

- **ISSUE-009 · `econet-wireless` conflates the Group and the Zimbabwean opco — split?** The single
  entity page carries both **Econet Wireless Global/Group** and **Econet Wireless Zimbabwe**, which are
  distinct legal persons with different owners, footprints and regulators. This was tolerable while the
  page was descriptive, but **[[econet-infraco]] cannot hang off it as-is**: InfraCo is a carve-out of the
  *Zimbabwean* opco specifically, and attaching it to a page that is also the Group misstates the
  corporate tree. *Recommend:* **split into `econet-wireless-group` and `econet-wireless-zimbabwe`**,
  rewire referrers, and hang InfraCo off the Zimbabwean entity. Deferred rather than actioned because it
  touches a well-referenced page and the rules don't determine how to apportion the existing sources
  between the two. *Decision:* (awaiting). (Surfaced ZAF/ZMB/ZWE ingest, 2026-07-17.)

- **ISSUE-010 · Secondary re-reports ingested carrying their own publication date as the event date.**
  A confirmed, repeating defect rather than a one-off. The Google Johannesburg cloud region sat on the ZAF
  hub dated **2025-03-27** — the publication date of a secondary AFRIBIT blog post — when Google's own
  announcement dates the opening to **2024-01-31**: a **14-month error** in held material. The same class
  produced the open `microsoft-sa-investment-date` contradiction. The mechanism: a secondary outlet
  re-reports an older event, and its own `published` date silently becomes the event date on the synthesis
  page. *Recommend:* a **standing intake rule** — when a source is a secondary account of an event it does
  not itself break, the **event date must be established from the primary** (or explicitly marked unknown),
  and the source's `published` date is never promoted to an event date on a synthesis page. This is close
  to a schema/rule addition, which is why it is raised rather than adopted (see the schema-change-control
  invariant). *Decision:* (awaiting). (Surfaced ZAF/ZMB/ZWE ingest, 2026-07-17.)

- **ISSUE-011 · Paywalled papers stage partial bodies — does that satisfy the full-text rule?** The
  ISSUE-008 ruling binds sweep bodies to **the full clipped article text captured at fetch**, with one
  written escape: a page that *cannot be fetched* may stage a flagged summary. **Botswana's two papers fit
  neither branch.** `mmegi.bw` and `sundaystandard.info` fetch fine (HTTP 200) but **paywall**, serving
  only a lede and 1–3 paragraphs to non-subscribers — so the "full clipped article text" *is* what was
  captured, and it is still partial. **16 BWA items are flagged `[CLIP]`.** The rules don't settle whether
  a paywall-truncated body is an admissible staged form, and this is a standing property of these outlets,
  not an incident. *Recommend:* **treat paywall truncation as a third, named state** — stage it, mark it
  `body_completeness: paywalled` with the free-to-read text (which is genuine first-hand text, not a
  summary, so it does not offend the AI-synthesis invariant), and require a **manual subscriber clip before
  promotion to `new/`** for any item whose payload depends on the withheld body. Items whose full payload
  sits in the free lede promote normally. *Decision:* (awaiting). (Surfaced Phase-2 sweep, 2026-07-17.)

- **ISSUE-012 · CAF has no newspapers — but it does have standing outlets. Revise the ledger?** The
  ledger records *"no suitable online national papers exist (confirmed 2026-07-17)"* for the Central
  African Republic, so its sweep ran journals + targeted institutional searches instead. That pass
  reports the note is **true of newspapers and misleading as a coverage judgment**: CAR has no online
  newspaper of record, but it does have usable dated, bylined domestic outlets, and targeted search
  roughly doubled CAR's evidence base. The catch is that targeted search **does not amortise** — it was
  an investigation across ~15 unfamiliar outlets, not a re-runnable recipe — and what it finds skews to
  announcements: government/vendor/donor items outran independent reporting ~3:1. The one piece of real
  domestic accountability journalism surfaced by luck of phrasing. **Because the note records a curator
  confirmation, CC has not overridden it.** *Recommend:* set **paper1 = Radio Ndeke Luka**
  (`radiondekeluka.org` — UN/Hirondelle-backed, French + Sango, dated, bylined, independent of both
  Bangui and Moscow; caveat: it is a *radio station*, so web items are stubs that reliably say *that*
  something happened and fail to say *what was said*) and **paper2 = Oubangui Médias** (domestic,
  reliable, repeatedly the *original* that vendors and the Pravda mirror copy), with **Corbeau News
  Centrafrique** as a standing third for the identity beat (the only adversarial reporting on the ID
  system — but diaspora-run, committed opposition line, and it renders a live "today" date). Also
  **recognise Agence Ecofin as CAF's de facto trade paper of record** — already the most-cited CAF source
  in `raw/`, and the ledger names CAF nothing at all. *Decision:* (awaiting). (Surfaced Phase-2 sweep,
  2026-07-17.)

- **ISSUE-013 · A Russian-network mirror is the most prolific "source" on CAR — add a standing
  drop-list?** `rca.news-pravda.com` was the **single most prolific CAR digital-news hit in every French
  query** of the CAF sweep. It is an unattributed mirror in the Pravda network. This was **verified, not
  assumed**: its AIAL data-centre story is a verbatim copy of Oubangui Médias, posted two minutes later.
  All 7 hits were dropped and the originals staged instead. Two things make this more than one country's
  problem. First, **a naïve French-language run would have built CAR's record out of this mirror while
  looking successful** — it is high-volume, on-topic, correctly dated and superficially clean. Second,
  **three real stories exist only there** (the April-2025 digital-identity/état-civil strategic report
  validation, the SOS Télécoms licence, and "Pata Polélé"), so it cannot simply be treated as noise: it
  is laundering real reporting whose originals CC could not locate. The sweep's drop vocabulary has no
  reason code for "inadmissible origin" either — the DRC agent hit the same gap dropping an ExpressVPN
  affiliate advertorial as `off-topic` because nothing better existed. *Recommend:* (a) add a **standing
  drop-list** to `sweep/` for known mirrors/influence-network domains, `rca.news-pravda.com` first, with
  the rule that a mirror is never staged and its **original is sought instead**; (b) add
  `inadmissible-origin` to the drop-log reason vocabulary so these stop being mislabelled `off-topic`;
  (c) file the three mirror-only stories as **gap leads**, not sources. *Decision:* (awaiting).
  (Surfaced Phase-2 sweep, 2026-07-17.)

- **ISSUE-014 · `geopol.*` has no slug for Russia (or Korea) — extend the taxonomy?** Two agents hit this
  independently. `taxonomy.md` offers `geopol.usa`, `geopol.china`, `geopol.eu`, `geopol.india`,
  `geopol.gulf` — and **no `geopol.russia`**. This is not a marginal omission: **Russia is the dominant
  external actor in CAR**, where it installed the country's first free public Wi-Fi (2026-04-24, staged),
  and in Congo-Brazzaville it is financing CARIA phases 3–4 via a **Sberbank debt-to-development swap**.
  Those items currently have nowhere correct to file and are riding on `finance.new` / the `sovereignty`
  lens, which loses the geopolitical dimension the vocabulary exists to capture. Separately, Cameroon
  surfaced a **Korea–Africa digital-cooperation** item with the same problem. Vocabulary changes are the
  human's call, so CC has tagged around it rather than extending the controlled list. *Recommend:* **add
  `geopol.russia`** (the evidence is already multi-country and load-bearing) and **hold `geopol.korea`**
  until a second instance appears — one item doesn't warrant a slug, and `finance.mou` + `tech.industry`
  carries it adequately for now. If adopted, the affected staged items should be retagged at ingest
  rather than back-filled across `raw/`. *Decision:* (awaiting). (Surfaced Phase-2 sweep, 2026-07-17.)
  **Addendum (batch COM/CPV/DJI/DZA, 2026-07-17):** the evidence for `geopol.russia` is now stronger —
  Algeria staged an **Alger–Moscow cybersecurity MoU** (Positive Technologies × CERIST/Proxylan), a third
  country after CAR and COG. And a **second bilateral gap** now recurs: **the UK** (Algeria's DGSN–UK
  Home Office digital-forensics MoU; the earlier Cameroon Korea item, plus an Algeria KOICA cyber track,
  make Korea the second). So the pattern is broader than Russia alone. *Revised recommend:* add
  **`geopol.russia`** now (four countries, load-bearing), and consider either **`geopol.uk`**/**`geopol.korea`**
  or a general **`geopol.other`** + entity-carried convention for the long tail of bilaterals — a cleaner
  fix than minting a slug per partner state. Still the human's call; CC continues tagging around it.

- **ISSUE-015 · Unverified national-utility rename "Socadel (formerly Eneo)" — record or correct?**
  The staged smart-meters item ([[2026-05-29-rollout-20000-smart-meters-ami-world-bank-wearetech]],
  We Are Tech Africa) calls Cameroon's national electricity company **"Socadel (formerly Eneo)."** The
  wiki carries **Eneo**, and **no other staged CMR source mentions Socadel** — so this is a single-source
  claim that is either a real (undated) rename or an outlet error. Per the currency-honesty invariant CC
  has **not** recorded the rename: the smart-meter development and `cameroon--infra-store` name the utility
  as Eneo, with the Socadel claim flagged in-text and no `socadel` entity created. *Recommend:* leave as
  Eneo pending a second source; if the rename is confirmed, record it with an effective date and add a
  redirect note on the Eneo entity. *Decision:* (awaiting). (Surfaced ingest CMR chunk 3, 2026-07-18.)
