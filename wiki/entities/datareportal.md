---
type: entity
entity_type: resource
title: DataReportal
url: https://datareportal.com/
places: [XGL]
topics: [include.divides, infra.connect, data.statistics]
status: active
last_reviewed: 2026-07-20
sources: [[2025-03-03-datareportal-digital-2025-chad], [2025-11-08-datareportal-digital-2026-chad], [2025-03-03-datareportal-digital-2025-central-african-republic], [2025-11-08-datareportal-digital-2026-central-african-republic], [2025-11-08-digital-2026-zambia-datareportal], [2023-03-13-zicta-2022-annual-market-report-subscriptions]]
---

# DataReportal

A standing open resource publishing the annual **"Digital {year} — {country}"** and global
digital-adoption reports, produced by **[[kepios]]** (Simon Kemp) in partnership with **We Are
Social** and **Meltwater**. Each country edition compiles population, mobile-connection, internet-user
and social-media-user counts and penetration rates, largely from GSMA Intelligence, ITU, Kepios
analysis and platform self-reported audiences.

## How the wiki uses it

A **reference resource, cited not absorbed** (per Currency discipline). DataReportal figures give a
**dated connectivity/adoption baseline** for a country's hub and the `infra.connect` / `include.divides`
concepts — always written with the report's as-of date (e.g. "20.7% internet penetration (Jan 2025,
DataReportal)"). Its numbers are **not** promoted to authoritative current state, and methodology shifts
between editions (e.g. GSMA's broadband-share revisions) are recorded as dated reconciliations, not
contradictions.

## Two dating traps (both confirmed in the corpus)

**1. An edition year is not an as-of year.** DataReportal **changed its publication cycle with the
2026 series**: *Digital 2026* editions were published **2025-11-08** carrying data as of **October
2025** — where *Digital 2025* was published **2025-03-03** with data as of **January 2025**. Never
read "Digital 2026" as a 2026 figure. Date every figure by its **stated as-of month**, and the
source page by its **publication date**.

**2. Values are rebased between editions without notice, and the publisher says not to compute
change across editions.** Two confirmed cases (resolved 2026-07-20): Chad's **22.5% (Jan 2024)** was
silently restated to a ~13.2% base — the 2025 edition's "+4.3% users, adoption rate unchanged" is
self-consistent only against the restated base — so the 22.5% is **superseded, not a fall in
access**; and CAR's **15.5% (Jan 2025)** was withdrawn, the 2026 edition reporting **fewer** users
(670k) against a **larger** population, which cannot be real change. Treat a cross-edition delta as
a **methodology artefact until proven otherwise**, and prefer the ITU series as the citable
authority for usage.

## Related

- [[kepios]] · [[gsma]] · [[include.divides]] · [[infra.connect]] · [[data.statistics]]
