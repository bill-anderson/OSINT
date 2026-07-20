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

- **ISSUE-034 · Is the energy / towerco decarbonisation thread in scope?** The **Science Based
  Targets initiative (SBTi)** is referenced in six `raw/` items with no page: it validates the
  corporate climate targets that [[gsma-mobile-net-zero-2026|GSMA's Mobile Net Zero]] uses as its
  adoption metric (**46 of 50** operator net-zero commitments validated as of the 2026 edition;
  **fewer than a quarter** of the largest towercos), and it recurs whenever network energy or
  towerco decarbonisation comes up, including for African towercos. It sits at the edge of this
  wiki's data-governance scope, so the question is not "create the page?" but "does the wiki carry
  this thread at all?" — which the rules do not settle. *Recommend:* carry it, narrowly — network
  energy is where data-centre and connectivity build-out meets national infrastructure policy, and
  the thread already arrives uninvited via GSMA. Create SBTi as an **`organisation`** (it is the
  validator), not an instrument. If the answer is no, drop the six references rather than leaving
  them dangling. *Decision:* (awaiting). (Migrated from `gaps.md` GAP-XGL-002, surfaced ingest
  daily-2026-07-19; refiled as an issue 2026-07-20.)

- **ISSUE-035 · Should the wiki carry Africa-focused VC funds as a set?** Held golden-visa
  reporting names **Antler, Capria Ventures, Delta40 and Enza Capital** as maintaining Kenyan
  regional offices — the concrete evidence behind the "Nairobi is East Africa's investment hub"
  claim, and the constituency a residency-by-investment programme would serve. Each is too thin to
  profile from a bare list mention, but with **Kenyan startups raising $984m in 2025** (~a third of
  all African startup investment) and Kenya leading again in H1 2026, the funder side of the
  ecosystem being entirely unmapped is a real structural absence. The `≥3 sources` bar decides
  individual pages; it does not decide whether to map a *category*. *Recommend:* map them as a set
  in one pass rather than one at a time — a funder layer sourced piecemeal will always look
  arbitrary — but gate it on `tech.innovate` being a thread the wiki intends to carry
  analytically, not just record. *Decision:* (awaiting). (Migrated from `gaps.md` GAP-KEN-003,
  surfaced ingest daily-2026-07-19; refiled as an issue 2026-07-20.)

- **ISSUE-036 · Ratify the register split in `CLAUDE.md`.** The 2026-07-20 triage split
  `reviews/gaps.md` (102 items, unclosable by construction) into four registers —
  `entity-backlog.md`, `acquisitions.md`, `contradictions/queued/`, `watch.md` — leaving `gaps.md`
  for the narrow case where pursuing an absence is Bill's judgment call. The **work is done and is
  git-reversible**, but `CLAUDE.md` still describes the old single register, and under the
  schema-change-control invariant CC does not edit that file silently or as a side effect. So the
  proposed amendment is held here for explicit ratification. *Proposed changes:* (a) in *Autonomy
  and review*, replace the two-register description with the five-register one and add the
  disposal rule — *an item unresolved after two reconcile attempts closes to `watch.md` with a
  re-check trigger*; (b) in *Filing rules* step 8, redirect the structural-gap check to route by
  kind (entity → `entity-backlog.md`, known document → `acquisitions.md`, unconfirmed claim →
  `contradictions/queued/`, not-yet-knowable → `watch.md`, judgment call → `gaps.md`); (c) change
  the standing status line to `issues - NN ; contradictions - NN ; gaps - NN ; acquisitions - NN`,
  dropping nothing but making the acquisition queue visible, since it is now the largest real
  backlog; (d) note that `contradictions/queued/` is promoted to `open/` **in tranches**, so one
  reconcile pass is never handed the whole queue. *Recommend:* ratify as drafted. *Decision:*
  (awaiting). (Surfaced register triage, 2026-07-20.)


- **ISSUE-022 · Should DataReportal country reports be admitted as sources, or held as a `resource`
  entity and cited?** The reconcile pass clipped several *Digital 20XX: <country>* editions as sources.
  They are country-level, dated, first-hand and methodologically explicit — distinct from the multi-country
  reference works the "cite, don't absorb" rule targets. But this pass also found the publisher **silently
  rebasing** its own series between editions (Chad ~2x, CAR, Zambia), and warning readers in its own text
  against computing change across editions. *Recommend:* **admit them as sources** (they are the primary
  for their own figures), but add a standing note that DataReportal figures are **never comparable across
  editions** and that an edition-year is not an as-of year — *Digital 2026* was published 2025-11-08 with
  October-2025 data. *Decision:* (awaiting). (Surfaced reconcile, 2026-07-20.)

- **ISSUE-023 · A publisher-wide DataReportal rebase may have contaminated other place pages.** The Chad
  resolution established that the rebase between the *Digital 2024* and *Digital 2025* editions was not a
  Chad correction but a **publisher-wide revision**. Any *Digital 2024* penetration figure held elsewhere in
  `raw/` or promoted onto a place page likely carries the same overstatement — in Chad's case roughly 2x.
  *Recommend:* run a targeted sweep of every held *Digital 2024* figure against the 2025/2026 editions, as a
  one-off lint. Potentially many countries affected. *Decision:* (awaiting). (Surfaced reconcile,
  2026-07-20.)

- **ISSUE-024 · Translated pages carrying the translation date.** The Togo contradiction was *caused* by a
  French DHIS2 page (`/fr/emis-togo-2022`) carrying its **translation** date (2024-11-19) while its English
  original was published 2022-12-01 — so the wiki ran a two-year-old status claim as current. At least two
  DHIS2 French pages in the corpus are affected. *Recommend:* add to ingest — where a URL carries a language
  prefix (`/fr/`, `/es/`, …), look for the original-language page and take `published` from it; and run a
  lint sweep for existing cases. *Decision:* (awaiting). (Surfaced reconcile, 2026-07-20.)

- **ISSUE-025 · Prefer local currency over USD for investment amounts?** The Microsoft South Africa case
  produced three "different" dollar values ($296.8m, $298.6m, $329m) for one R5.4bn commitment, purely from
  exchange-rate drift between reports — and the apparent $1.1bn-vs-$1.2bn discrepancy dissolved the same
  way. *Recommend:* adopt a standing rule that investment amounts are carried in the **announcing party's
  stated currency**, with any USD figure written as a dated conversion. *Decision:* (awaiting). (Surfaced
  reconcile, 2026-07-20.)

- **ISSUE-026 · How should a debunked-but-unexplained figure be recorded?** Mauritania's "70% of passport
  requests" is demonstrably not a share of national passport requests, but what it *is* cannot be
  established. The Houwiyeti page currently names it and sets it aside. *Recommend:* keep that treatment —
  naming and discounting a circulating figure is more useful to a future reader than silently dropping it,
  since the claim will resurface. But the rules leave this open. *Decision:* (awaiting). (Surfaced
  reconcile, 2026-07-20.)

- **ISSUE-027 · Is a dated, named-institution donor case study admissible as expert analysis?** The
  Tanzania "Jamii" PDF now has an established origin (Co-Develop, 2024-10-01) — so the ISSUE-007 grounds
  for parking it (undated, unattributed) have fallen away. But it remains a **secondary synthesis** and
  carries at least three verifiable factual errors. *Recommend:* **it stays in `_leads/`** and is never
  promoted to `raw/` — origin alone does not cure secondariness, and the ISSUE-001 thesis ruling turned on
  a thesis being *first-hand* work, which a case study is not. *Decision:* (awaiting). (Surfaced reconcile,
  2026-07-20.)

- **ISSUE-028 · Source-reliability annotations.** Two held `raw/` items are now demonstrated to carry
  factual errors on matters the wiki relies on: the ID Tech Wire Malawi SIM-registration piece (2025-05-21)
  on the data-protection law's status, and the TechCabal South Sudan piece (2025-02-07) headlining a
  project launch as a system launch. Both remain admissible for their other reporting, and `raw/` is
  immutable. *Recommend:* the wiki has no mechanism for annotating a source page's reliability without
  editing it — either accept that such corrections live only on synthesis pages (current practice), or
  create a `reviews/source-notes.md` register. CC's preference is the former, for simplicity. *Decision:*
  (awaiting). (Surfaced reconcile, 2026-07-20.)

- **ISSUE-029 · Reporting date vs release date for recurring monthly primaries.** The NGX Domestic & Foreign
  Portfolio Investment Report is dated by its own "as at" date (2026-05-31), which is how NGX titles the
  series, but public release was ~2026-07-03 — a five-week gap. This is a recurring monthly series, so the
  convention should be set once, before more editions land. *Recommend:* keep `published` = the **reporting
  date** (the publisher's own date; it sorts the series correctly and is what any citation will name) and
  record the release date in the capture note. The event-date rule still governs regardless: a figure from
  this report is "as at 31 May 2026", never "as of July". *Decision:* (awaiting). (Surfaced ingest,
  2026-07-20.)

- **ISSUE-030 · Two deviations taken in the DZAP verbatim re-captures.** Both held World Bank files stored
  curator paraphrases rather than the documents' words, so they were overwritten under the ISSUE-016 bounded
  exception — which paid for itself immediately by exposing a mis-attributed figure. But two things went
  beyond the letter of that rule: (a) `url:` was completed from `unknown` / a bare domain to the canonical
  deep link, where the rule says frontmatter beyond `body_completeness` is kept; (b) `body_completeness` was
  set to `excerpt`, not `full`, because the verbatim capture is itself partial. *Recommend:* ratify both —
  (a) is a link fix, not a reinterpretation, and refusing it would leave a source of record unciteable;
  (b) is the honest value and the rule's `full` assumes a complete capture. Consider amending the exception
  to say so explicitly. *Decision:* (awaiting). (Surfaced ingest, 2026-07-20.)

- **ISSUE-031 · A filename that asserts a false claim, inside immutable `raw/`.** `raw/2025-02-07 South
  Sudan launches first national instant payment system (NIPS).md` headlines a **project launch** as a system
  launch; the primaries show NIPS never went live. Immutability protects the body against retroactive
  reinterpretation, but a filename is wiki-authored metadata, not the source's words, and this one actively
  misleads anyone grepping `raw/`. The same question covers wiki-authored **ingest notes** inside `raw/`
  files — one in `2026-02-27 SA powers Africa's $1.64bn` states the exact false parallel this batch refutes.
  *Recommend:* treat wiki-authored metadata in `raw/` (filenames, ingest notes) as **correctable**, distinct
  from the source body, which stays immutable. *Decision:* (awaiting). (Surfaced ingest, 2026-07-20.)

- **ISSUE-032 · MACRA is a dual-mandate regulator being deliberately split.** Malawi's MACRA is both the
  communications regulator and, by s.4 of the Data Protection Act 2024, the statutory Data Protection
  Authority — and the World Bank ToR is explicitly engineering the DPA unit to become an **independent
  institution**. One page or two is a judgement call worth making **before** it spins out, since a later
  split means rewiring citations. *Recommend:* one page now with a clearly separated DPA section; split when
  the DPA is legally independent. *Decision:* (awaiting). (Surfaced ingest, 2026-07-20.)

- **ISSUE-033 · Is `econet-group` the parent of the Zimbabwe opco?** `econet-group.md` states that
  `econet-wireless-zimbabwe` "sits under the Group". Three EWZL corporate filings ingested this batch — the
  documents where a parent would appear if there were one — contain **zero** occurrences of "Econet Group"
  or "Econet Global", and EWZL consistently self-describes as "the Group". Absence in three filings is not
  proof of absence (a shareholding can sit above a listed entity without appearing in a stakeholder notice),
  but the claim is now weaker than when written. *Recommend:* soften to founder-lineage phrasing pending a
  shareholding document, rather than assert or delete. *Decision:* (awaiting). (Surfaced ingest, 2026-07-20.)
