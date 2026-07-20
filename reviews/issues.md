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
