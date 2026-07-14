---
type: concept
title: National statistics
slug: data.statistics
places: [XAF, XSS, XGL, ETH, KEN, ZMB, ZAF, MWI, TZA, GHA, MOZ, NGA, UGA, RWA, ZWE, EGY, BEN]
entities: [[development-gateway], [usaid], [bill], [world-development-report-2025], [paris21], [2026-07-11 data-systems-crossroads], [malawi-revenue-authority], [african-development-bank], [nafa], [dhis2], [hisp-centre], [open-data-watch], [africa-cdc], [gsma], [research-ict-africa]]
lens: [sovereignty, colonialism]
status: active
last_reviewed: 2026-07-12
sources: [[2026-05-26 A Year After USAID Reclaiming Control of Data Systems – Development Gateway An IREX Venture – Data and digital solutions for international development], [2026-03-31 Africa we have a data problem], [2021-09-01 2021-data-side-of-lnob], [2024-09-01 2024-digital-compacts-global-ideals-regional-realities], [2026-07-11 data-systems-crossroads.pdf], [2026-06-03 Malawi reaps digital tax gains], [2026-05-26 AfDB says Africa must fund its own growth as aid model frays], [2021-08-04 Health information systems in developing countries case of African countries], [2021-09-13 The burden of recording and reporting health data in primary health care facilities in five low- and lower-middle income countries], [2023-05-11 Data for local decision-making, not a mere reporting requirement development of an index to measure facility-level use of HMIS data  Published in Journal of Global Health Reports], [2023-10-30 A political economy analysis of strengthening health information system in Tanzania], [2025-11-05 New report highlights urgent need to rebuild and sustain health data systems], [2025-04-03 Now is the time to invest in locally-owned health data systems], [2026-03-24 Mobile Money in Africa Strong Growth, but Adoption Still Falls Short], [2026-03-11 The evolving role of National Statistics Offices (NSOs) as data custodians in the digital age]]
---

# National statistics

The systems that produce a country's official data — statistical offices, censuses,
household surveys, SDG-indicator monitoring, and the administrative records (civil
registration, health, education) that should feed them. In this wiki `data.statistics`
is where the **"is the data even being created?"** question lives, upstream of DPI and AI.

## What matters now

- **The 2025 US aid-freeze shock.** A year on, **>2/3 of national statistical offices**
  report funding cuts and **73%** report harm to SDG-monitoring data; the USAID-funded
  **DHS Program** lost ~90% of its contracts, opening multi-year gaps (Ethiopia livestock/
  zoonotic surveillance suspended; Kenya/Zambia health-data access temporarily lost). The
  response is a pivot to **data sovereignty**, regional cooperation and DPI. See [[usaid]],
  [[development-gateway]], [[ETH]], [[KEN]], [[ZMB]].
- **Bottom-up vs survey-driven.** The long-running [[bill]] / Development Initiatives thesis:
  build national data infrastructure **bottom-up** from the administrative systems that
  register people and record services, not top-down from donor household surveys — and
  fix donor **duplication** and the politics of SDG-indicator classification.
- **Creation, not just digitisation.** The Data Landscapers 54-country review argues much
  of Africa's most critical data has **never been created in machine-readable form** —
  "silos assume the data exists." See [[2026-03-31 Africa we have a data problem]]
  (the `digital.rural` framing).
- **Standards as catalyst.** The World Bank [[world-development-report-2025]] frames
  measurement/quality standards as the "quiet catalyst"; the ITU
  [[itu-global-connectivity-report-2025]] supplies the connectivity-divide statistics.
- **Official statistics "at a crossroads" (2026, PARIS21).** [[paris21]] and Open Data Watch's
  discussion paper [[2026-07-11 data-systems-crossroads]] diagnoses converging pressures on national
  statistical offices: **2024–25 donor funding cuts** threatening NSO viability, **AI** both
  disrupting and enhancing production, expanding mandates (disaggregation, citizen engagement), and
  **trust** under strain from political interference and post-COVID credibility gaps. It frames a
  "fork in the road" — optimise existing systems, or transform them — sharpening the aid-shock thesis
  above. See [[capacity.research]], [[data.open]].
- **Administrative data as a fiscal asset (2026-05, Malawi).** [[malawi-revenue-authority]]'s
  Electronic Invoicing System (EIS) now yields **>$1.2m/day** (May collections >$28m), with ~7,500 of
  ~9,000 registered VAT operators migrated — real-time transaction records becoming both tax
  infrastructure and a new administrative dataset, though blackouts and connectivity constrain
  coverage. A concrete instance of the "creation, not just digitisation" argument. See [[MWI]],
  [[dpi.mis]], [[dpi.govtech]].
- **Macro data marshalled for sovereignty (2026-05, AfDB).** The [[african-development-bank]]'s
  African Economic Outlook 2026 supplies the headline figures behind the [[nafa]] financial-
  sovereignty case (SDG financing gap **>$1.3tn/yr**; ~$469bn/yr recoverable via digitised tax
  administration) — analytical data deployed to argue for domestic resource mobilisation. See
  [[finance.new]], [[gov.policy]].
- **Routine HMIS is Africa's largest administrative dataset (2021–25).** Health management
  information systems — mostly built on **[[dhis2]]** ([[hisp-centre]], University of Oslo), the
  national HMIS in **75+ countries** covering **~40% of the world's population** — are where much
  of Africa's most complete, machine-readable administrative data is actually *created*, upstream of
  statistics offices. A 12-country review ([[his-developing-countries-review]]) found all had
  adopted DHIS2 data warehouses but **11 of 12 lacked a national data strategy**, aligning instead
  to donor priorities; and the recording burden is heavy — an average **34 registers / 35 monthly
  forms** per country, consuming ~a third of consultation time ([[rhis-recording-burden-5country]]),
  with data collected largely for upward reporting rather than local use (Ethiopia's facility
  data-use index, [[hmis-data-use-index-ethiopia]]; Tanzania's fragmented 18-system ecosystem,
  [[hmis-tanzania-pea]]). This makes HMIS the health-sector face of the "creation, not just
  digitisation" argument — see [[dpi.mis]], [[TZA]], [[GHA]], [[MOZ]], [[NGA]]. Sources:
  [[2021-08-04 Health information systems in developing countries case of African countries]],
  [[2021-09-13 The burden of recording and reporting health data in primary health care facilities in five low- and lower-middle income countries]],
  [[2023-05-11 Data for local decision-making, not a mere reporting requirement development of an index to measure facility-level use of HMIS data  Published in Journal of Global Health Reports]],
  [[2023-10-30 A political economy analysis of strengthening health information system in Tanzania]].
- **Health data as the sharp edge of the aid shock (2025, Open Data Watch / HISP).** The 2025 US
  funding cuts hit health *data* systems directly — PEPFAR's DATIM switched off, Kenya's MoH briefly
  losing EMR access ([[africa-cdc]]: up to 80% of some programme costs aid-dependent). Yet
  [[hisp-centre]]'s survey found **locally-owned national DHIS2 systems stayed online** while
  donor-run parallel systems collapsed; **[[open-data-watch]]**'s *Rebuilding Global Health Data*
  (Nov 2025) names donor over-reliance, weak domestic financing and thin coordination as the
  structural risks and urges governments to fund permanent HMIS/CRVS roles in recurrent budgets — a
  health-specific sharpening of the aid-shock thesis above. See [[dpi.mis]], [[geopol.usa]],
  [[capacity.research]], [[KEN]], [[ETH]], [[UGA]]. Sources:
  [[2025-04-03 Now is the time to invest in locally-owned health data systems]],
  [[2025-11-05 New report highlights urgent need to rebuild and sustain health data systems]].
- **Mobile money as private administrative data (2026-03, GSMA).** The **[[gsma]]** *State of the
  Industry Report on Mobile Money 2026* is a major continental data source: **~$1.432tn** flowed
  through African mobile money in 2025 (+27%) — Africa ~**66%** of global value, ~**74%** of 125bn
  transactions, ~**1.2bn** accounts (52% of the global total). The same report is also a *statistics*
  input on the divides beneath the totals: SSA smartphone ownership only **33%**, women **14%** less
  likely to use mobile internet. A privately-held transaction dataset that increasingly doubles as
  fiscal and inclusion infrastructure. See [[dpi.pay]], [[include.divides]], [[XAF]], [[NGA]],
  [[ETH]], [[EGY]]. Source:
  [[2026-03-24 Mobile Money in Africa Strong Growth, but Adoption Still Falls Short]].

- **NSOs displaced as primary data producers (2026-03, RIA — note).** A [[research-ict-africa]]
  report examining national statistics offices in **[[ZAF]]**, **[[GHA]]**, **[[KEN]]** and
  **[[BEN]]** argues NSOs are being displaced as primary data producers by platform, satellite
  and private digital data, and calls for legal reform to formalise them as **data custodians**
  who curate rather than solely produce — the gap between perceived responsibility and formal
  mandate framed as an institutional risk. Findings noted as framing (figures stay on the source
  page); the data-custodian argument sharpens the data-deficit thesis above. See [[data.open]],
  [[gov.policy]], [[gov.legislate]]. Source:
  [[2026-03-11 The evolving role of National Statistics Offices (NSOs) as data custodians in the digital age]].

- **Trade-statistics integrity as a leakage signal (2026-01, GFI — note).** [[global-financial-integrity]]'s
  *Trade-Related Illicit Financial Flows in Africa 2013–2022* uses **mirror-trade analysis of the
  UN Comtrade dataset** to flag persistent bilateral "value gaps" as a proxy for trade misinvoicing —
  a reminder that the **quality and reconcilability of official trade statistics** is itself a
  governance surface: gaps reached a series-high $152.9bn (SSA, 2022). Figures stay on the source /
  entity pages (reference-study rule); noted here for the data-integrity angle. See [[data.open]],
  [[gov.regional]]. Source:
  [[2026-01-01 Trade-Related Illicit Financial Flows in Africa 2013-2022 (Global Financial Integrity)]].

## Reads

- `sovereignty` / `colonialism`: who funds, defines and holds a country's statistics is a
  sovereignty question — sharpened when an external donor's budget decision can suspend a
  nation's disease surveillance overnight, or when opaque commodity-export pricing lets value
  leak through the gaps in a nation's own trade data.

## Sources

- [[2026-05-26 A Year After USAID Reclaiming Control of Data Systems – Development Gateway An IREX Venture – Data and digital solutions for international development]] · [[2026-03-31 Africa we have a data problem]] · [[2021-09-01 2021-data-side-of-lnob]] · [[2022-03-01 2022-data-disharmony]] · [[2023-04-01 2023-is-the-sdg-monitoring-framework-broken]] · [[2024-09-01 2024-digital-compacts-global-ideals-regional-realities]] · [[2026-07-11 data-systems-crossroads.pdf]] · [[2026-06-03 Malawi reaps digital tax gains]] · [[2026-05-26 AfDB says Africa must fund its own growth as aid model frays]] · [[2021-08-04 Health information systems in developing countries case of African countries]] · [[2021-09-13 The burden of recording and reporting health data in primary health care facilities in five low- and lower-middle income countries]] · [[2023-05-11 Data for local decision-making, not a mere reporting requirement development of an index to measure facility-level use of HMIS data  Published in Journal of Global Health Reports]] · [[2023-10-30 A political economy analysis of strengthening health information system in Tanzania]] · [[2025-11-05 New report highlights urgent need to rebuild and sustain health data systems]] · [[2025-04-03 Now is the time to invest in locally-owned health data systems]] · [[2026-03-24 Mobile Money in Africa Strong Growth, but Adoption Still Falls Short]] · [[2026-03-11 The evolving role of National Statistics Offices (NSOs) as data custodians in the digital age]] · [[2026-01-01 Trade-Related Illicit Financial Flows in Africa 2013-2022 (Global Financial Integrity)]]
