# ingested_log.md — what ingest admitted to `raw/` (rolling 7-day view)

## 2026-07-23 14:20

| Place | Source |
|---|---|
| CIV | [Bank of China provides CFA 8.7 billion loan for Phase 1 of Digital Education Project (Linked to Project ID#89413) — primary document](../raw/boc-civ-003-primary-companion.md) |
| CIV | [Bank of China provides CFA 7.01 billion loan for Phase 1 of Ministry of Interior and Security Unified Communication System Project (Linked to Project ID#89415) — primary document](../raw/boc-civ-004-primary-companion.md) |
| CIV | [Bank of China provides CFA 48.3 billion loan for Phase 2 of Video Surveillance Platform Project (Linked to Project ID#53273, ID#92205, and ID#92206) — primary document](../raw/boc-civ-006-primary-companion.md) |
| CIV | [Bank of China provides CFA 7.9 billion loan for Phase 2 of Video Surveillance Platform Project (Linked to Project ID#53273, ID#92204, and ID#92206) — primary document](../raw/boc-civ-007-primary-companion.md) |
| CIV | [Bank of China provides CFA 73.9 billion loan for Phase 2 of Ministry of Interior and Security Unified Communication System Project (Linked to Project ID#89413 and ID#92201) — primary document](../raw/boc-civ-009-primary-companion.md) |
| CIV | [Bank of China provides CFA 72.6 billion loan for Phase 3 of Video Surveillance Platform Project (Linked to Project ID#53273, ID#92204, and ID#92205) — primary document](../raw/boc-civ-010-primary-companion.md) |
| CMR | [Bank of China provides $41.78 million loan for Phase 1 of Intelligent Urban Video Surveillance System Expansion Project (Linked to Project ID#88178) — primary document](../raw/boc-cmr-001-primary-companion.md) |
| SEN | [Chinese Government provides RMB 200 million grant in 2018 for Phase 1 of Smart Senegal Project (Linked to Project ID#73114) — primary document](../raw/china-mofcom-sen-001-primary-companion.md) |
| COD | [China Eximbank provides RMB 1.05 billion government concessional loan for Ministry of Finance Information and Communications Technology Modernization Project — primary document](../raw/eximbank-cn-cod-002-primary-companion.md) |
| COG | [China Eximbank provides $160.8 million preferential buyer's credit for Phase 3 of National Telecommunication Coverage Project (Linked to Project ID#57477, #30497, #57529, and #68940) — primary document](../raw/eximbank-cn-cog-001-primary-companion.md) |
| COG | [China Eximbank provides RMB 460 million government concessional loan for Phase 3 of National Telecommunication Coverage Project (Linked to Project ID#57477, #30497, #57529, and #57531) — primary document](../raw/eximbank-cn-cog-003-primary-companion.md) |
| GHA | [China Eximbank provides $218.4 million concessional loan for ICT-Based Distance Learning Project for 5 National Tertiary Education Institutions — primary document](../raw/eximbank-cn-gha-005-primary-companion.md) |
| GHA | [China Eximbank provides $39 million concessional loan for ICT Enabled Distance Learning Project for the Institute of Local Government Studies — primary document](../raw/eximbank-cn-gha-006-primary-companion.md) |
| GMB | [China Eximbank provides $25.9 million concessional loan for Gambia National Broadband Network (GNBN) Project (Linked to Project ID#56893) — primary document](../raw/eximbank-cn-gmb-001-primary-companion.md) |
| KEN | [China Eximbank provides RMB 438 million government concessional loan for Nation Wide Remote Sensing Airborne Geophysical Survey Project — primary document](../raw/eximbank-cn-ken-002-primary-companion.md) |
| MLI | [China Eximbank provides RMB 1.134 billion government concessional loan for Mali Digital 2020 Project — primary document](../raw/eximbank-cn-mli-001-primary-companion.md) |
| NGA | [China Eximbank and Credit Suisse AG provide $84 million syndicated buyer's credit facility for MTN Nigeria Communications to facilitate acquisition of telecommunication equipment from Huawei — primary document](../raw/eximbank-cn-nga-001-primary-companion.md) |
| UGA | [China Eximbank provides RMB 96.9 million government concessional loan for Phase 3 of National Transmission Backbone and e-Government Infrastructure Project (Linked to Project ID#53401 and Project ID#53402) — primary document](../raw/eximbank-cn-uga-001-primary-companion.md) |
| ZAF | [ICBC contributes to ZAR 2.251 billion syndicated buyer's credit loan to Telkom SA SOC for the acquisition of Huawei 4G equipment — primary document](../raw/icbc-zaf-007-primary-companion.md) |
| CMR | [ZTE grants $12 million USD for Construction of Data Centers in Cameroon — primary document](../raw/zte-cmr-001-primary-companion.md) |
| XSS | [Google DeepMind AI Research Foundations (blog.google)](../raw/2026-03-17-google-deepmind-ai-research-foundations-africa.md) |
| NGA | [CBN data-localisation circular account (COMPLYAN)](../raw/2026-06-24-complyan-cbn-data-localisation-directive.md) |

## 2026-07-23 13:55

| Place | Source |
|---|---|
| NAM | [Namibia - November 2024 - The Global State of Democracy](../raw/2024-11-30-idea-gsod-namibia-november-2024.md) |
| ZAF | [South Africa's operators solved fintech. Digital identity is next](../raw/2026-07-10-techcentral-operators-fintech-digital-identity-next.md) |
| XSS | [How Satellites Are Accelerating Health Tech in Africa's Rural Landscape](../raw/2026-03-12-techafricanews-satellites-health-tech-rural-africa.md) |
| XWW | [What Our Repository Reveals About Data Commons in the AI Era](../raw/2026-07-15-newcommons-repository-data-commons-ai-era.md) |
| MDG | [Technology looks set to transform governance in Madagascar](../raw/2026-07-16-iss-technology-transform-governance-madagascar.md) |
| MDG | [Madagascar 2044: A visionary model for governance](../raw/2026-07-16-iss-african-futures-madagascar-2044.md) |
| XWW | [The global south is being surveilled into compliance and Silicon Valley calls it development](../raw/2026-02-27-siliconcanals-surveilled-into-compliance.md) |

**A temporary view, not a store of record.** Every `run ingest` — manual, or the
automatic sweep hand-off (the daily news sweep stages into `new/` and hands to
ingest) — appends a dated section here listing the sources it admitted to `raw/`
that run, newest at the top. Its only job is to let Bill see what is coming in,
especially from the news sweep, at a glance.

It is **pruned to the last 7 days on every write** — older sections are dropped.
Nothing reads this file and deleting it loses nothing: git holds the full history,
and any audit is a query (`queries/`), not this view.

Format — one `##` section per ingest run, one row per admitted source, place facet
and the source's verbatim title hyperlinked to its `raw/` file:

```
## 2026-07-23 14:32
| Place | Title |
|---|---|
| NGA | [Nigeria data-exchange platform goes live](../raw/2026-07-22-ngdx-platform-live.md) |
| KEN, XEA | [EAC cross-border data rules gazetted](../raw/2026-07-21-eac-data-rules.md) |
```

Only items that reached `raw/` are listed — not contradictions, acquisitions or
deletions. A run that admitted nothing writes no section.

---

<!-- Newest ingest run first. Sections older than 7 days are pruned on each write. -->
