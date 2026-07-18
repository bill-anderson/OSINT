# Sweep manifest — GNB (Guinea-Bissau / Guiné-Bissau)

- **Batch:** GNB-2026-07-17
- **Window:** 2025-01-01 → 2026-07-17
- **Staged:** 13 candidates · **Dropped:** 22 logged (`sweep/drop-log-GNB.csv`)
- **Assigned newspapers:** ang.gw — Agência de Notícias da Guiné (ANG), **state news agency / government voice**; gnbissau.com — Gazeta de Notícias (both Portuguese).
- **Language:** all queries run in Portuguese (PT variants of N1–N7). English used only for the fixed-8 journal probes.

## How the blind spot was established (probed, not assumed)

- **gnbissau.com is opaque to Exa.** Its homepage returns only JS theme scaffolding (`spectr_main_posts` shortcodes, no article list); two domain-scoped semantic passes surfaced **zero** datable gnbissau.com articles. It contributed nothing — **ang.gw is effectively the sole functional newspaper instrument for GNB via Exa.** (Flag for the human: gnbissau.com may need a manual/RSS clip route.)
- **ang.gw serves NO in-body publication dates** (state-agency WordPress). Dates were established by event-anchoring against corroborating dated sources (ANG blogspot mirrors, RTP África, O Democrata, Africa-Press, ECOWAS.int, NRD/CYBERS3C consultant records); items that could not be pinned to a day carry `date_source: proxy` with honest `date_precision`.
- **Fixed-8 trade journals — probed per domain, GNB confirmed near-absent:**
  - biometricupdate.com — /tag/guinea-bissau holds only the **already-held** SIREC item (2025-06) plus the ECOWAS-ENBIC story (captured via ang.gw A7). Real but thin.
  - connectingafrica.com — **1 in-window hit staged** (Starlink launch, 2025-06-19).
  - techafricanews.com — 1 in-window (Starlink license, 2025-04-16) = same event as ARN primary (dropped-as-twin).
  - techreviewafrica.com (PR-wire lead-net) — several GNB items; 1 in-window staged (Telecel STARTOCODE); others out-of-window/low-relevance (dropped).
  - itweb.africa — GNB items exist but **all pre-2025** (MTN→Telecel 2024-08, Orange Digital Center 2024-07). None in-window.
  - techcabal.com, wearetech.africa, telecomreviewafrica.com — **no GNB-specific in-window items** (wearetech's telecom feed carries GNQ/GIN, not GNB — name-collision confirmed and screened).
  - **Verdict: confirmed thin, not under-searched.** GNB is a genuine trade-press blind spot; the two newspapers (in practice, ang.gw alone) + primary/regulator/company sites carried the material.
- **GNB / GIN / GNQ name-collision:** actively screened. Dropped/avoided GNQ ("Guiné Equatorial", SEGESA fibre) and GIN ("Guinée", Amílcar Cabral Conakry meetings, backbone-doubling) hits; every staged item verified as Guinea-**Bissau**.

## Most significant finds vs held material

The wiki held ~11 GNB sources (mostly 2024 donor/reference + a few 2025 items). This sweep adds a **governance/legislative spine that was entirely missing**: the three-decree Council of Ministers approval (interoperability + data-governance/protection policy + cybersecurity strategy, 2025-07-10), the cybersecurity-studies presentation announcing a National Cybersecurity & Data Protection Agency (2025-01-22), a new Electronic Communications Law (transition-era), and a **Digital Integrity / online-falsehoods Law** passed by the post-coup CNT (2026-05-23). Plus firm connectivity anchors: ARN's Starlink authorization (2025-04-10) and launch (2025-06-19) — filling the previously **unsourced** "Starlink Apr 2025" line on the GNB place page — and the WARDIP national fibre backbone (2,877 km, superseding the old 888 km figure). Connectivity/ID baseline is now well-sourced.

## Staged items

| published | topics | source | title | why-it's-new |
|---|---|---|---|---|
| 2025-01-22 | infra.cybersec, gov.protect, gov.policy, infra.connect | ang.gw (ANG, state) | Govt presents Cybersecurity Studies; commits to create National Cybersecurity & Data Protection Agency | First evidence of the cyber/data-protection institutional push (WARDIP/NRD study); not held |
| 2025-01-29 | gov.policy, dpi.govtech | ang.gw (ANG, state) | ENTD.GW national digital strategy launch | Domestic ANG account of the Jan-2025 launch — **SAME EVENT as held UNU-EGOV source**; adds PM/minister quotes |
| 2025-04-02 | gov.policy, infra.connect, gov.regional, dpi.govtech, finance.new | ang.gw (ANG, state) | President Embaló launches WARDIP | Head-of-state framing of WARDIP-GB launch; WARDIP entity had no GNB-launch source |
| 2025-04-10 | infra.connect, include.access, geopol.usa | arn.gw (regulator, primary) | ARN-TIC grants Starlink provisional authorization | Sources the unsourced "Starlink Apr 2025" line on GNB page |
| 2025-06-19 | infra.connect, include.access, geopol.usa, data.statistics | connectingafrica.com (journal) | Starlink launches in Guinea-Bissau (pricing, 32.5% penetration) | Commercial launch (distinct from license); only fixed-8 launch coverage |
| 2025-06 (proxy, month) | dpi.id, dpi.registry, dpi.govtech | ang.gw (ANG, state) | Civil ID / Registry / Notary digitization workshop (23.4%→46%) | Domestic account; **likely SAME EVENT as held Biometric Update 2025-06-10** |
| 2025-07-10 | dpi.exchange, gov.protect, gov.policy, gov.legislate, infra.cybersec | ang.gw (ANG, state) | Council of Ministers approves 3 draft decrees (interoperability + data governance/protection + cybersecurity strategy) | **Major governance instruments** — none held |
| 2026-03-16 | dpi.id, gov.regional, include.access | ang.gw (ANG, state) | 262 women traders receive ECOWAS biometric ID (ENBIC), São Domingos | Dated field-deployment of the operationalised ENBIC card |
| 2026-05-07 (pr-wire) | capacity.training, capacity.literacy, tech.innovate, finance.mou | telecelgroup.com (company PR) | Telecel + Govt launch STARTOCODE skills committee (joint decree; 1,000 youth/yr × 4yr) | Public-private digital-skills program; not held |
| 2026-05-21 | infra.connect, gov.policy | odemocratagb.com (newspaper) | WARDIP-GB fibre backbone EIASS (environmental/social safeguards) | Backbone moving to implementation; dated |
| 2026-05-23 | gov.legislate, infra.cybersec, gov.protect | ultimahoragb.com (newspaper) | CNT passes Digital Integrity / online-falsehoods Law | Digital-speech law under post-coup transition — politically significant |
| 2026 (proxy, year) | infra.connect, gov.policy, finance.new | wardip.gw (project, primary) | National Fibre Backbone specs (2,877 km, 56 nodes, 4 phases, >99% pop) | Supersedes old 888 km figure; wholesale-operator tender |
| 2026 (proxy, year) | gov.legislate, infra.connect, gov.policy | ang.gw (ANG, state) | Council of Ministers approves new Electronic Communications Law (transition presidency) | Revises the outdated 2010 telecom law; not held |

## Flags for the human

- **Proxy dates (3):** the two 2026-01-01 items (Electronic Communications Law; WARDIP backbone specs) are precision-**year**; the civil-ID workshop is precision-**month** (2025-06). Tighten at ingest.
- **Same-event-as-held (2):** ENTD.GW launch (A ANG vs held UNU-EGOV) and the civil-ID workshop (vs held Biometric Update) — reject at ingest if no added value wanted.
- **State-agency provenance:** all ang.gw items are a government voice (capture ≠ endorsement).
- **pr-wire:** Telecel STARTOCODE (company release) — verify primary at ingest.
- **New entities referenced, no wiki page yet:** `arn` (ARN-TIC regulator), `telecel`. Existing entities reused: wardip, world-bank, undp, ecowas, enbic, sirec, entd-gw, starlink.
- **Not staged, noted as leads:** World Bank WARDIP-GB financing agreement (US$60M grant; Amílcar Cabral cable + backbone + govcloud + data-protection regulator — good `instrument`/reference material for the WARDIP entity); WARDIP-GB "Final Report" (RNEP-GB national research & education network, 2025-04); ARN IDN/.GW accented-domains announcement (low-relevance digital-sovereignty item); the 2025-07 Liberia/ECOWAS "Second Submarine Cable" (Amílcar Cabral) — regional (XWA), names GNB as participant.
