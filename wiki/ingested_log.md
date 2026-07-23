# ingested_log.md — what ingest admitted to `raw/` (rolling 7-day view)

## 2026-07-23 14:20

| Place | Source |
|---|---|
| CIV | [boc-civ-003 primary + record](../raw/boc-civ-003-primary-companion.md) |
| CIV | [boc-civ-004 primary + record](../raw/boc-civ-004-primary-companion.md) |
| CIV | [boc-civ-006 primary + record](../raw/boc-civ-006-primary-companion.md) |
| CIV | [boc-civ-007 primary + record](../raw/boc-civ-007-primary-companion.md) |
| CIV | [boc-civ-009 primary + record](../raw/boc-civ-009-primary-companion.md) |
| CIV | [boc-civ-010 primary + record](../raw/boc-civ-010-primary-companion.md) |
| CMR | [boc-cmr-001 primary + record](../raw/boc-cmr-001-primary-companion.md) |
| MOFCOM | [china-mofcom-sen-001 primary + record](../raw/china-mofcom-sen-001-primary-companion.md) |
| CN | [eximbank-cn-cod-002 primary + record](../raw/eximbank-cn-cod-002-primary-companion.md) |
| CN | [eximbank-cn-cog-001 primary + record](../raw/eximbank-cn-cog-001-primary-companion.md) |
| CN | [eximbank-cn-cog-003 primary + record](../raw/eximbank-cn-cog-003-primary-companion.md) |
| CN | [eximbank-cn-gha-005 primary + record](../raw/eximbank-cn-gha-005-primary-companion.md) |
| CN | [eximbank-cn-gha-006 primary + record](../raw/eximbank-cn-gha-006-primary-companion.md) |
| CN | [eximbank-cn-gmb-001 primary + record](../raw/eximbank-cn-gmb-001-primary-companion.md) |
| CN | [eximbank-cn-ken-002 primary + record](../raw/eximbank-cn-ken-002-primary-companion.md) |
| CN | [eximbank-cn-mli-001 primary + record](../raw/eximbank-cn-mli-001-primary-companion.md) |
| CN | [eximbank-cn-nga-001 primary + record](../raw/eximbank-cn-nga-001-primary-companion.md) |
| CN | [eximbank-cn-uga-001 primary + record](../raw/eximbank-cn-uga-001-primary-companion.md) |
| ZAF | [icbc-zaf-007 primary + record](../raw/icbc-zaf-007-primary-companion.md) |
| CMR | [zte-cmr-001 primary + record](../raw/zte-cmr-001-primary-companion.md) |
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
