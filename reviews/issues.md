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

- **ISSUE-019 · Should TechCabal Daily newsletter editions be captured as a running record?**
  The sweep dropped *"TechCabal Daily — Uber takeover"* (2026-07-17) as a second-hand digest: its payload
  is a roundup of wire coverage plus items already held separately. By the letter of Source admissibility
  that call is right — a digest is a synthesis of others' reporting. But TC Daily is *human-edited original
  editorial* by a publication whose standalone pieces the wiki admits freely, and it sometimes carries
  framing and small scoops that appear nowhere else. It will recur every single weekday, so a standing rule
  beats a per-run judgment. *Recommend:* **keep dropping it as a source**, but treat it as a **lead** — skim
  it at sweep time for primaries it points to and stage *those*, exactly as `_leads/` handling works for AI
  syntheses. This preserves the audit trail (no laundering of others' reporting into the base) while not
  losing the scoops. If you'd rather have the record, the alternative is to stage TC Daily to `_leads/`
  rather than discard it. *Decision:* (awaiting). (Surfaced sweep daily-2026-07-19b, 2026-07-19.)

- **ISSUE-021 · No standing rule for advertorial / sponsored trade-press content.**
  Three agents independently hit this class in one run and dropped all four items — ITWeb's sponsored
  "Companies in the news" award PR (Paratus Namibia), an undated SPONSORED vendor opinion, a vendor
  thought-leadership column, and Telecom Review Africa's promo for **its own** August webinar (registration
  link + sponsorship contact). The calls were consistent and CC judges them right, but they were made ad hoc
  against no written rule, so a later run could easily decide otherwise. Source admissibility covers
  second-hand synthesis and AI output; it does not name paid placement or a publisher's own marketing, which
  are first-hand and dated yet report no development. *Recommend:* add a line to Source admissibility —
  **paid/sponsored placement, awards PR, vendor thought-leadership and a publisher's own event marketing are
  not admissible as sources**, on the existing "reports no development" logic; but if such an item *names a
  standing object of OSINT value* (a new data centre, an operator, a regulator), tag the entity and discard
  the item, per *Entities: tag always, page when material*. **This would be a CLAUDE.md edit, so it needs
  your explicit ratification** — CC has not made it. **Concrete case now pending on this ruling:**
  `_leads/2026-07-17-iron-capital-euromoney-nigeria-investment-bank-award.md` — a TechCabal
  "Partner / Press Room" placement announcing a Euromoney award, by-lined "By Partner", with no
  digital-governance content; parked at ingest rather than admitted or discarded. If you accept the
  recommendation it should be **deleted**; if you reject it, it is a one-line move back to `new/`.
  *Decision:* (awaiting). (Surfaced sweep daily-2026-07-19b, 2026-07-19.)

- **ISSUE-022 · Where do admissible-but-out-of-scope items go? (EV charging as the test case.)**
  Ingest parked `_leads/2026-07-17-kcb-epuremotion-nairobi-psv-ev-charging-station.md` — KCB Bank Kenya,
  the Matatu Owners Association and ePureMotion opening a PSV **EV charging station** in Buruburu, with
  asset and insurance-premium financing for matatu Saccos. It is impeccably sourced and first-hand, so
  admissibility is not the problem; **scope** is. Checked against practice before parking: [[infra.energy]]
  is used exclusively for **power serving digital infrastructure** (data-centre siting, grid constraints,
  network energy), and `raw/` holds **no EV/e-mobility precedent**. It is distinguishable from the Yango
  items the wiki does admit, where the actor is itself a digital platform. The wider problem is that the
  pipeline has **no bucket for "admissible, well-sourced, but off-topic"** — `_leads/` is defined for
  second-hand/AI syntheses, and Discard is defined narrowly for config and failed captures, so out-of-scope
  items land in `_leads/` by default and slightly stretch its meaning. *Recommend:* **(a)** confirm
  transport electrification is out of scope unless it carries a real data/platform layer, and **delete**
  this item; **(b)** if you want the boundary recorded rather than left to per-run judgment, either widen
  `_leads/` explicitly to mean "parked, not compiled — synthesis *or* out-of-scope," or add a one-line
  scope note to CLAUDE.md. (b) would be a CLAUDE.md edit needing your ratification; (a) alone does not.
  *Decision:* (awaiting). (Surfaced ingest daily-2026-07-19b, 2026-07-19.)
