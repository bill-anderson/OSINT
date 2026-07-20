---
type: concept
title: National statistics
slug: data.statistics
places: [XAF, XSS, XGL, ETH, KEN, ZMB, ZAF, MWI, TZA, GHA, MOZ, NGA, UGA, RWA, ZWE, EGY, BEN, AGO, ERI]
entities: [[development-gateway], [usaid], [bill], [world-development-report-2025], [paris21], [2026-07-11 data-systems-crossroads], [malawi-revenue-authority], [african-development-bank], [nafa], [dhis2], [hisp-centre], [open-data-watch], [africa-cdc], [gsma], [research-ict-africa]]
lens: [sovereignty, colonialism]
status: active
last_reviewed: 2026-07-20
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
  Electronic Invoicing System (EIS) was yielding **>US$1.2m/day** (**May 2026** collections >US$28m)
  as reported 2026-06-03, with ~7,500 of
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

- **[[AGO]] Angola — NSO digitisation and open access (2026 H1).** The **[[ine-angola]]** (Instituto
  Nacional de Estatística) is modernising in-house: it launched a **Censo 2024 open portal + "INE Angola"
  mobile app (2026-07-02)**, and its field practice with **ArcGIS/Esri Field Maps** cut data-collection
  time **from 6–8 months to ~2** (Benguela, 2026-02). A new **[[ende-angola]]** (National Statistics
  Development Strategy 2026–2032) and a **statistics-law revision** are heading to the Conselho Nacional de
  Estatística. A concrete case of a Lusophone NSO building open, machine-readable official data at source.
  See [[data.open]], [[dpi.govtech]], [[data.satellite]]. Sources:
  [[2026-07-02-ine-lanca-portal-do-censo-2024-e-aplicacao-movel]],
  [[2026-06-12-nova-estrategia-de-desenvolvimento-da-estatistica-2026-2032]],
  [[2026-02-10-tecnologias-digitais-dados-estatisticos-em-benguela]].

- **[[ERI]] Eritrea — CAPI survey under a thin data base (2026-05).** The
  **[[eritrea-national-statistics-office]]**, with **[[undp]]**/UNECA under the Joint Programme on
  Data for Development (D4D), completed the **Fourth Round Eritrea Population and Health Survey
  (EPHS 2025)** — 9,794 households across 405 EAs at **98.4% completion**, using **CAPI** to replace
  paper — plus 2023/24 national accounts. Eritrea's most concrete data-systems development on record,
  in one of the continent's thinnest reporting environments. See [[capacity.research]], [[XEA]].
  Source: [[2026-05-08 Eritrea strengthens data systems with EPHS 2025 (UNDP)]].
- **Reading DataReportal editions — two dating traps.** The series **changed its publication cycle** with
  *Digital 2026*: those editions were published **2025-11-08** carrying **October-2025** data, where *Digital
  2025* was published 2025-03-03 with January-2025 data. **An edition year is not an as-of year.** The
  publisher also **rebases values between editions without notice** and warns readers against computing
  change across them — confirmed in **Chad** (22.5% → ~13.2% restated Jan-2024 base) and **CAR** (15.5%
  Jan-2025 withdrawn; its 2026 edition reports *fewer* users against a *larger* population). See
  [[datareportal]].
- **[[TGO]] Togo — data production and data use are separable failures.** GPE's ITAP rated Togo's
  *data and evidence* enabling factor **MEDIUM** priority (2024-04-08): high output — statistical yearbooks
  within three months of year-end — but weak linkage, so the volume does not convert into planning or
  effectiveness monitoring. See **[[togo--dpi-mis]]**.
- **[[AGO]] Angola — Censo 2024, the first fully digital census.** INE published definitive national results
  **2025-11-20**: **36,604,681** residents at reference date **2024-09-19**, density 29/km², median age 23,
  9m households, collected via **CAPI/CATI with GIS cartographic updating**. The Luanda provincial report
  closed the exercise **2026-02-24**. *INE's two reports differ on Luanda's population by **150,787**
  (8,816,297 national vs 8,665,510 provincial) with no published reconciliation.*
- **[[NGA]] Nigeria — NGX's Domestic & Foreign Portfolio Investment Report** is a monthly official market
  series compiled by NGX Regulation from returns polled from **100% of Active Trading Licence Holders**,
  splitting equity turnover domestic/foreign and retail/institutional, publishing its own NAFEM conversion
  rate, with a back-series to 2007. A worked case for holding the primary: trade-press accounts circulated
  its **year-to-date** figures without stating they were cumulative, and carried a naira figure unconverted
  into a dollar column. Source: [[2026-05-31-ngx-domestic-foreign-portfolio-investment-report-may-2026]].
- **[[ZMB]] Zambia (2022, ZICTA).** Mobile revenue **ZMW7.8bn (~US$386m), +18% YoY**, data at **36.9% of
  revenue** (from 30.5%); domestic outgoing traffic **+17% to 28.5bn minutes**; international outgoing
  **−15% to 14.9m minutes**, which ZICTA attributes to VoIP substitution. Source:
  [[2023-03-13-zicta-2022-annual-market-report-subscriptions]].
- **[[AGO]] Angola — INE's own synthesis, and what it does not say.** The *Relatório Síntese dos
  Resultados Definitivos* (RGPH 2024, published **2025-11-20**) gives national **36,604,681** and Luanda
  **8,816,297** at reference date **2024-09-19**, with Icolo e Bengo tabulated separately at
  **1,372,670** (the two sum to 10,188,967 — the pre-2025-boundary equivalent, now arithmetically
  sourced rather than inferred). **The Síntese states no reconciliation of the 150,787 gap** against
  INE's Luanda provincial report and **carries no coverage-adjustment methodology at all**, so the
  adjusted-versus-raw explanation the wiki carried is downgraded to an **inference** (as of 2026-07-20).
- **[[ZWE]] Zimbabwe is the clean worked example of the penetration divergence** — 84.55% subscriptions
  against 38.4% users, same country, same period, both now cited to their own publishers.

## Reads

- `sovereignty` / `colonialism`: who funds, defines and holds a country's statistics is a
  sovereignty question — sharpened when an external donor's budget decision can suspend a
  nation's disease surveillance overnight, or when opaque commodity-export pricing lets value
  leak through the gaps in a nation's own trade data.

## Sources

- [[2026-05-26 A Year After USAID Reclaiming Control of Data Systems – Development Gateway An IREX Venture – Data and digital solutions for international development]] · [[2026-03-31 Africa we have a data problem]] · [[2021-09-01 2021-data-side-of-lnob]] · [[2022-03-01 2022-data-disharmony]] · [[2023-04-01 2023-is-the-sdg-monitoring-framework-broken]] · [[2024-09-01 2024-digital-compacts-global-ideals-regional-realities]] · [[2026-07-11 data-systems-crossroads.pdf]] · [[2026-06-03 Malawi reaps digital tax gains]] · [[2026-05-26 AfDB says Africa must fund its own growth as aid model frays]] · [[2021-08-04 Health information systems in developing countries case of African countries]] · [[2021-09-13 The burden of recording and reporting health data in primary health care facilities in five low- and lower-middle income countries]] · [[2023-05-11 Data for local decision-making, not a mere reporting requirement development of an index to measure facility-level use of HMIS data  Published in Journal of Global Health Reports]] · [[2023-10-30 A political economy analysis of strengthening health information system in Tanzania]] · [[2025-11-05 New report highlights urgent need to rebuild and sustain health data systems]] · [[2025-04-03 Now is the time to invest in locally-owned health data systems]] · [[2026-03-24 Mobile Money in Africa Strong Growth, but Adoption Still Falls Short]] · [[2026-03-11 The evolving role of National Statistics Offices (NSOs) as data custodians in the digital age]] · [[2026-01-01 Trade-Related Illicit Financial Flows in Africa 2013-2022 (Global Financial Integrity)]] · [[2026-07-02-ine-lanca-portal-do-censo-2024-e-aplicacao-movel]] · [[2026-06-12-nova-estrategia-de-desenvolvimento-da-estatistica-2026-2032]] · [[2026-02-10-tecnologias-digitais-dados-estatisticos-em-benguela]] · [[2026-05-08 Eritrea strengthens data systems with EPHS 2025 (UNDP)]]
