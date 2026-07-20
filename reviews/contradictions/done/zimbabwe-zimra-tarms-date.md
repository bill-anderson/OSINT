# Provenance hunt: when was the ZIMRA / TaRMS item published?

**Queued:** 2026-07-20 (migrated from gaps.md)

## The undated item

- **The ZIMRA / TaRMS page carries no establishable date.** Only **"post-February 2024"** is established.
  The year on file is **the clipper's inference from a news-ID sequence**, so the item is held at
  year-precision proxy and its filename prefix is padding rather than a real publication date.

## Sources held

The clip itself is held. **No dated publisher page, in-body date or announcement establishing the date is on
file** — that is the gap.

## Instruction

Establish the publication date of this item, or bound it as tightly as the evidence allows, using the
publisher's own dated listing or the events it describes. If the date genuinely cannot be fixed, say so
explicitly and state the narrowest defensible range, so the record can carry the uncertainty openly rather
than an inferred year.

Migrated from reviews/gaps.md (GAP-ZWE-005), 2026-07-20.

---

## RESOLVED — 2026-07-20

**Published January 2026** (month precision). Hard outer bound **2 December 2025 –
30 January 2026**. The bare "2025" on file was **wrong by about twelve months**.

The page genuinely carries no dateline (confirmed by two independent re-fetches — ZIMRA's
news CMS renders none on any article). But the clipper's *method* was sound; only its
**anchor** was bad. It bracketed news ID 2346 against ID 2294 (29 Feb 2024), 52 IDs and
~23 months distant. Fetching the **immediate** neighbours collapses the range to ~8 weeks:

- ID 2343 — "published on 25/112025"
- ID 2344 — AGM held **2 December 2025**
- ID 2345 — previews the 26 Jan 2026 Customs Day **prospectively**
- **ID 2346 — target**
- ID 2347 — Data Privacy Week (26–30 Jan 2026)
- IDs 2348/2349 — the same Customs Day **retrospectively** ("On January 26, 2026…")

Twelve dated anchors from 2313 to 2355 confirm the ID sequence is strictly monotonic in
publication date, with no inversions. (The `/news` listing's *display* order is not
chronological — a CMS quirk; only the IDs are ordered.)

Applied to `wiki/entities/zimra.md`, `wiki/entities/tarms-zimbabwe.md`,
`wiki/intersections/zimbabwe--dpi-registry.md`. Method quarantined at
`reviews/contradictions/research/zimbabwe-zimra-tarms-date.md`.

**Outstanding for the orchestrator (this worker may not write to `raw/`):** rename
`raw/2025-01-01 ZIMRA Taxpayer Registration.md` → `2026-01-01` prefix, set
`published: 2026-01-01`, `date_precision: month` (keep `date_source: proxy` — the date is
bracketed, not published), strike the "DATE COULD NOT BE ESTABLISHED" note, and rewire the
five `2025-01-01 ZIMRA Taxpayer Registration` links.

**Transferable lesson:** the ID-bracketing method works, and *anchor distance* is the
variable that decides whether it yields a year or a fortnight. Worth trying on any other
undated CMS-sequence source before it is written off as unknowable.
