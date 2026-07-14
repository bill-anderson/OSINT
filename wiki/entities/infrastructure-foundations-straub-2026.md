---
type: entity
entity_type: instrument
title: "Infrastructure Foundations: From Current Assets to Future Growth (Straub et al., 2026)"
places: [XGL, XSS, XAF, NGA, KEN, COD, SLE]
topics: [infra.connect, infra.store, infra.energy, finance.new, capacity.research]
lens: [sovereignty]
status: active
last_reviewed: 2026-07-12
sources: []
---

**Authors:** Stéphane Straub, He He, Yue Li, Xinxin Lyu, Jevgenijs Steinbuks, Estefanía Vergara Cobos, Christopher Dann, Manuel García-Santana, and Harris Selod. **Year:** 2026. **Venue:** World Bank, *Sustainable Infrastructure Series* (book; ISBN 978-1-4648-2311-4; DOI 10.1596/978-1-4648-2311-4). Reproducibility package at reproducibility.worldbank.org/catalog/536. Reference document: `2026-07-12 Infrastructure Foundations From Current Assets to Future Growth.pdf` (204 pp.).

A World Bank flagship **measurement study**, global in scope (~200 countries), covering **energy, transportation, and digital** infrastructure. Captured as a standing reference entity (`instrument`) — its value is its dataset, methodology and findings rather than a normative framework to align to; grouped with the reference shelf alongside normative frameworks like [[world-development-report-2025]]. Standing reference: a dated fact drawn from it becomes a normal source that cites this page.

**Scope note for this wiki.** The book's core is infrastructure economics across all three sectors; only the **digital** strand and the **Sub-Saharan Africa** cuts sit squarely in the Data Landscapers remit. The energy/transport material is out of core scope (`infra.energy` tagged only because the study genuinely measures it and it underpins data-centre siting). Do not treat this as a digital-only work.

## What it does

- Builds a **pioneering geolocated dataset** mapping physical infrastructure assets sector-by-sector, then values them by applying **country-specific unit replacement costs** and depreciation to get capital stocks. Data are for **2024–2025**.
- Derives two diagnostics: the **social rate of return (SRoR)** and the **infrastructure efficiency ratio** (SRoR ÷ cost of financing). Efficiency ratios exceed 1 in the vast majority of countries — worthwhile investment opportunities are far from exhausted even in a high-borrowing-cost environment.
- Digital is decomposed into **five pillars**: data centres, internet exchange points (IXPs), radio access networks (cell towers/sites), terrestrial fibre-optic cable (FOC), and submarine cables. Coverage is ~100% for submarine cables and IXPs, high for core data centres and mobile cells.

## Key in-scope findings (digital + Africa)

- **Digital shows a network effect** — SRoR *rises* with income and connectivity (bigger user base to leverage), the opposite of transport (higher returns where networks are sparse and poor). In SSA, ~half of countries gain most from **transport-weighted** strategies, reflecting the primacy of physical connectivity for integration.
- **Data-centre concentration:** high-income countries host **72%** of global core data-centre facilities; lower-middle-income **7%**; low-income just **0.2%**. North America alone holds ~¼ of facilities and ~⅓ of global capacity (peak concentration 2024).
- **IXP performance gap (not just presence):** Europe & Central Asia leads with ~380 IXPs (~0.41 per million people, ~15× South Asia). But median peak traffic is **>470,000 Mbps in North America** and **>340,000 Mbps in East Asia & Pacific vs just 556 Mbps in Sub-Saharan Africa**. HIC IXPs average ~4 peers vs ~2.5 in non-HICs — thin peering routes local traffic internationally, raising cost and latency.
- **The "fiber divide":** ~half the world's population lives in **60 countries below the median** on fibre coverage (per capita and by land area), including **much of SSA, plus Kenya and Nigeria**; **DR Congo and Sierra Leone** among the severe-gap cases. Denser terrestrial fibre correlates with faster fixed-broadband speeds. Dataset spans ~3.94 million route-km.
- **RAN:** SSA still relies **>80%** on macro-site deployments (vs micro/5G densification), against continued 5G build-out in high-income markets.
- **Submarine cables have surged since 2020**, extending connectivity across new corridors, "especially in Latin America & the Caribbean and Sub-Saharan Africa."
- **Subnational disparity:** Nigeria's power-generation capacity is concentrated in the south, leaving the north underserved (high localized returns) — a flagship example of national averages masking local gaps.

## Unit-cost reference values (2024 US$) — useful for costing pages

- **Cell tower (macro site):** mean ~**US$308,746** (HIC ~US$465k; upper-mid ~US$253k; low ~US$246k; lower-mid ~US$183k). Micro-site benchmark ~US$20,000. Source data: TowerXchange (301 transactions, 75 countries, 2007–2025).
- **Data centre:** mean project cost ~**US$530 million** (2024 terms); most facilities <US$200m, hyperscale builds skew the mean. From 2,259 observed projects (~¼ of the global universe), 2003–2025.
- **IXP replacement cost by capacity tier:** ~US$30k (low) / US$150k (medium) / US$1m (high).
- **Terrestrial FOC:** 128 projects, 37 countries, 2009–28 — ~US$71.8bn total, ~3.10m route-km. Submarine cables costed by decade.

## Related

- [[world-bank]] — publisher
- [[world-development-report-2025]] — companion World Bank flagship (instrument)
- [[cable-wars-abels-babic-2026]], [[equiano-mainone-nwankwo-2025]], [[jagun-sat3-open-access-2008]] — submarine-cable political economy this dataset can be read against
