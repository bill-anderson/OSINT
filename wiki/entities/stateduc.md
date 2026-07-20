---
type: entity
entity_type: resource
title: StatEduc
places: [TGO, XGL]
topics: [dpi.mis, data.statistics, dpi.exchange]
status: active
last_reviewed: 2026-07-17
sources: [[2024-11-19 HISP WCA develops DHIS2 EMIS for education data analysis and visualization in Togo], [2024-11-05 Togo - Integrating DHIS2 with existing EMIS systems]]
---

# StatEduc

**An education statistics application used in about 20 countries (as of 2024), and the
data-collection tool of record in Togo's education management information system.** In Togo,
[[stateduc]] holds the collection role while **[[dhis2]]** processes the data and produces
information products — the two operating in interoperability rather than one replacing the
other. See [[TGO]], [[dpi.mis]], [[data.statistics]].

## Activity in this wiki

- **Position in the Togolese chain.** Data from Togo's **16,000 nursery, primary and secondary
  schools** are collected on **paper forms**, forwarded to **education inspectorates** for review
  and entry into StatEduc. **StatEduc has limited analytical tools**, which left sub-national
  levels dependent on central analyses — the specific gap the DHIS2 layer was built to close. See
  [[mepsta-togo]], [[include.divides]]. Source:
  [[2024-11-19 HISP WCA develops DHIS2 EMIS for education data analysis and visualization in Togo]].
- **Interoperability with DHIS2 — division of labour.** **StatEduc continues as the
  data-collection tool, while DHIS2 processes and provides flexible information products.** The
  DHIS2 products in use are recorded as **"Aggregate integration with StatEduc"**. The system also
  **extracts historical data from StatEduc into DHIS2** for trend analysis and comparative
  analysis. See [[dpi.exchange]], [[hisp-wca]]. Sources:
  [[2024-11-05 Togo - Integrating DHIS2 with existing EMIS systems]],
  [[2024-11-19 HISP WCA develops DHIS2 EMIS for education data analysis and visualization in Togo]].

**Contradiction — when the integration began.** The two DHIS2-published accounts disagree. The
**country profile** states **"Since 2019, national scale"**; the **article** states that **"In
2021, DHIS2 was implemented in interoperability with StatEduc"** and calls the deployment
**piloting** / **"under review by the Ministry"** (as of 2024-11-19). **Resolved (2026-07-20): distinct milestones, plus a mis-dated maturity claim.** The French page
`/fr/emis-togo-2022` is a **translation**; its English original was published **2022-12-01**, so "under
review by the Ministry" is an **as-of 2022-12-01** statement, not November 2024 - the wiki was carrying a
two-year-old status as current. **2019** is when DHIS2 education-sector engagement began (year precision,
corroborated only at programme level across six countries); **2021** is the StatEduc interoperability
go-live. On maturity: **not a pilot, not fully embedded** - by 2024 national exam results sat in a national
DHIS2 instance (WhatsApp results service live 2024-06-16), but GPE's ITAP found (2024-04-08) Togo still
lacked a fully operational EMIS, and as of **2026-05-04** HISP reports DHIS2 in operational use, strongest
at regional level and weakest at inspection level, with data latency the binding constraint. **"National
scale" cannot be claimed for DHIS2 as the collection layer**: DHIS2 was added *on top of* CSPro/StatEduc,
which remains the annual school-census tool - DHIS2 is the national **analytical** layer above it.

**Scope note.** The "about 20 countries" figure (as of 2024) is the extent of what these
sources establish about StatEduc beyond Togo; no vendor, steward or country list is asserted.

## Sources

- [[2024-11-19 HISP WCA develops DHIS2 EMIS for education data analysis and visualization in Togo]]
- [[2024-11-05 Togo - Integrating DHIS2 with existing EMIS systems]]
