# ERI — Eritrea · dataset→wiki intake review

Run date 2026-07-15. Source: `external-datasets/` (africa-dpi 147 rows, africa-data-centres 0 rows, african-rural-digitalisation 4 rows) filtered to ERI / Eritrea.

## Header counts

- Total distinct source URLs: **36**
- Already held (hub): **0** — **no `wiki/places/ERI.md` hub exists**, so nothing is held; every in-window candidate is new.
- Excluded (pre-2024): **5**
- New & in-window: **31**
- Buckets: **A-web 3 · A-PDF 1 · B 2 · C 7 · D 18**

Eritrea is one of the least-connected, most closed states on the continent, and it shows in the corpus: of 36 distinct URLs the overwhelming majority (18) are standing indices, data pages and reference profiles (D), with a long tail of tertiary/low-authority sources (C) and old material (5 pre-2024). There is almost no dated primary reporting on Eritrean DPI. Only **three A-web** items carry genuine dated country content — the two DataReportal editions (Digital 2025 / 2026 Eritrea) and one real event: **UNDP's report of Eritrea's landmark digital customs system**. One A-PDF (an Eritrean AML/CFT policy, 2024) is left for Bill.

### Notes
- **DataReportal cluster:** Digital 2025 and Digital 2026 Eritrea are two editions of the same annual series — keep both but treat 2026 as the current baseline and 2025 as the prior-year comparator.
- **Digital customs system (UNDP):** the one substantive DPI event in the set — likely an ASYCUDA-style trade/customs modernisation; the strongest candidate for a wiki event page and the seed for an ERI hub.
- **No hub yet:** this run should seed a new `wiki/places/ERI.md`. Threads visible from the corpus: national biometric ID (embassy national-ID page), near-absent data-protection / privacy law (dataprotection.africa, lawgratis leads), extremely low connectivity/e-gov (DataReportal, UN e-gov rank 190/193), digital customs (UNDP), and minimal digital payments (no domestic switch; GSMA/AfricaNenda/Novalnet/XD-Africa leads).

## A-web · ingest (non-PDF) — fetched in Phase 2  (3)

- [https://datareportal.com/reports/digital-2025-eritrea](https://datareportal.com/reports/digital-2025-eritrea)
  - DataReportal Digital 2025 Eritrea — dated country reference report (A-web per spec).
  - context: ds:dpi · Digital Pay / Active Digital Payment Users
- [https://datareportal.com/reports/digital-2026-eritrea](https://datareportal.com/reports/digital-2026-eritrea)
  - DataReportal Digital 2026 Eritrea — dated country reference report (A-web); newer edition.
  - context: Year 2024/2025 · ds:dpi · Data Exchange / Sub-National Participation; ICT Infrastructure / Mobile Phone Penetration
- [https://www.undp.org/eritrea/news/eritrea-launches-landmark-digital-customs-system-modernizing-trade](https://www.undp.org/eritrea/news/eritrea-launches-landmark-digital-customs-system-modernizing-trade)
  - UNDP Eritrea news — landmark digital customs system launch; UN country news, dated, on-topic (a genuine DPI event).
  - context: Year 2026 · ds:dpi · Data Exchange / Tax & Revenue Integration

## A-PDF · ingest (PDF) — Bill handles by hand  (1)

- [https://erhcb.com/pdf/HCBE_AML_CFT_Policy_2024.pdf](https://erhcb.com/pdf/HCBE_AML_CFT_Policy_2024.pdf)
  - HCBE (Eritrea) AML/CFT Policy 2024 PDF — dated institutional policy document, on-topic (payments).
  - context: ds:dpi · Digital Pay / Independent Audits and Reviews

## B · check first  (2)

- [https://digitalidentityindex.com/eritreas-population-digital-identity-challenges-ahead](https://digitalidentityindex.com/eritreas-population-digital-identity-challenges-ahead)
  - Digital Identity Index blog — Eritrea digital-ID challenges; unknown-quality outlet, check-first.
  - context: Year 2024 · ds:dpi · Data Exchange / Digital ID Integration
- [https://www.xdafrica.com/article/payment-methods-in-eritrea](https://www.xdafrica.com/article/payment-methods-in-eritrea)
  - XD Africa 'payment methods in Eritrea' — unknown-quality outlet, check-first.
  - context: ds:dpi · Digital Pay / Digital Payment System Exists

## C · lead only (do not cite)  (7)

- [https://en.wikipedia.org/wiki/List_of_national_identity_card_policies_by_country](https://en.wikipedia.org/wiki/List_of_national_identity_card_policies_by_country)
  - Wikipedia list — tertiary, lead-only.
  - context: Year 2018 · ds:dpi · Digital Id / Enrollment Mandatory Status
- [https://github.com/search?q=eritrea&type=repositories](https://github.com/search?q=eritrea&type=repositories)
  - GitHub search results — tertiary, lead-only.
  - context: Year 2026 · ds:dpi · ICT Infrastructure / Developer and Tech Community
- [https://lawgratis.com/blog-detail/finance-law-in-eritrea](https://lawgratis.com/blog-detail/finance-law-in-eritrea)
  - Lawgratis legal-services blog — low-authority, lead-only.
  - context: ds:dpi · Digital Pay / Consumer Protection Framework for Payments
- [https://lawgratis.com/blog-detail/privacy-law-at-eritrea](https://lawgratis.com/blog-detail/privacy-law-at-eritrea)
  - Lawgratis legal-services blog — low-authority, lead-only.
  - context: ds:dpi · Digital Pay / Data Privacy Legislation Coverage
- [https://www.ecoi.net/en/document/1343821.html](https://www.ecoi.net/en/document/1343821.html)
  - ecoi.net aggregator document — tertiary/second-hand, lead-only.
  - context: Year 2016/2018 · ds:dpi · Digital Id / Population Coverage; Digital Id / Social Services Use
- [https://www.ecoi.net/en/document/2011310.html](https://www.ecoi.net/en/document/2011310.html)
  - ecoi.net aggregator document — tertiary/second-hand, lead-only.
  - context: Year 1992/2015/2016/2018 · ds:dpi · Digital Id / Biometric Data Collection; Digital Id / Civil Registration Integration; Digital Id / Cost of Credential; Digital Id / Digital ID System Exists
- [https://www.novalnet.com/payment-countries/eritrea](https://www.novalnet.com/payment-countries/eritrea)
  - Novalnet payment-vendor country page — marketing, lead-only.
  - context: ds:dpi · Digital Pay / Digital Payment System Exists

## D · resource / entity (not a dated source)  (18)

- [https://bti-project.org/en/reports/country-report/ERI](https://bti-project.org/en/reports/country-report/ERI)
  - Bertelsmann Transformation Index country report — standing index/reference (cite-don't-absorb).
  - context: Year 2018 · ds:dpi · Digital Id / Social Services Use
- [https://chartingtheglobe.com/region/eritrea/energy/electricity-generation-combined?indicator=aggregate-fuel-renewables-percent](https://chartingtheglobe.com/region/eritrea/energy/electricity-generation-combined?indicator=aggregate-fuel-renewables-percent)
  - ChartingTheGlobe energy data page — registry/data.
  - context: Year 2023 · ds:dpi · ICT Infrastructure / Renewable Energy Share of Generation
- [https://dataprotection.africa/eritrea](https://dataprotection.africa/eritrea)
  - Data Protection Africa country profile — standing reference page (cite-don't-absorb).
  - context: Year 2026 · ds:dpi · ICT Infrastructure / Data Localisation Requirements; ICT Infrastructure / Data Protection Legislation
- [https://datatopics.worldbank.org/g20fidata/country/eritrea](https://datatopics.worldbank.org/g20fidata/country/eritrea)
  - World Bank G20 financial-inclusion data page — registry/data.
  - context: ds:dpi · Digital Pay / Active Digital Payment Users; Digital Pay / Digital Payment System Exists
- [https://dig.watch/countries/eritrea](https://dig.watch/countries/eritrea)
  - dig.watch country page — reference.
  - context: Year 2024 · ds:dpi · Data Exchange / AI/Analytics Capabilities; Data Exchange / Data Sovereignty Provisions; Data Exchange / Operational Status; Data Exchange / Strategic Framework
- [https://digitaldevelopmentcompass.undp.org/country/ERI](https://digitaldevelopmentcompass.undp.org/country/ERI)
  - UNDP Digital Development Compass country page — index/data.
  - context: Year 2024 · ds:dpi · Data Exchange / AI/Analytics Capabilities; Data Exchange / Business Registration & Licensing Integration; Data Exchange / Civil Registration & Vital Statistics Integration; Data Exchange / Data Sovereignty Provisions
- [https://education-profiles.org/sub-saharan-africa/eritrea/~technology](https://education-profiles.org/sub-saharan-africa/eritrea/~technology)
  - GEM/UNESCO education-profiles technology page — standing reference profile.
  - context: Year 2024 · ds:dpi · Data Exchange / Data Sovereignty Provisions; Data Exchange / Education System Integration; Data Exchange / Enabling Legislation; Data Exchange / Urban-Rural Digital Divide
- [https://tradingeconomics.com/eritrea/access-to-electricity-percent-of-population-wb-data.html](https://tradingeconomics.com/eritrea/access-to-electricity-percent-of-population-wb-data.html)
  - TradingEconomics indicator page — registry/data.
  - context: Year 2023 · ds:dpi · ICT Infrastructure / Electricity Access Rate
- [https://tradingeconomics.com/eritrea/access-to-electricity-rural-percent-of-rural-population-wb-data.html](https://tradingeconomics.com/eritrea/access-to-electricity-rural-percent-of-rural-population-wb-data.html)
  - TradingEconomics indicator page — registry/data.
  - context: Year 2022 · ds:dpi · ICT Infrastructure / Urban-Rural Electrification Gap
- [https://tradingeconomics.com/eritrea/individuals-using-the-internet-percent-of-population-wb-data.html](https://tradingeconomics.com/eritrea/individuals-using-the-internet-percent-of-population-wb-data.html)
  - TradingEconomics indicator page — registry/data.
  - context: Year 2023 · ds:dpi · ICT Infrastructure / Internet Usage Rate
- [https://travel.state.gov/content/travel/en/us-visas/Visa-Reciprocity-and-Civil-Documents-by-Country/Eritrea.html](https://travel.state.gov/content/travel/en/us-visas/Visa-Reciprocity-and-Civil-Documents-by-Country/Eritrea.html)
  - US State Dept civil-documents/reciprocity page — standing reference.
  - context: Year 2018 · ds:dpi · Digital Id / Biometric Data Collection; Digital Id / Digital ID System Exists
- [https://us.embassyeritrea.org/national-id](https://us.embassyeritrea.org/national-id)
  - Eritrean embassy (US) national-ID consular page — standing resource.
  - context: Year 2018/2024 · ds:dpi · Digital Id / Cost of Credential; Digital Id / Digital ID System Exists; Digital Id / Enrollment Eligibility Age; Digital Id / Enrollment Mandatory Status
- [https://www.africanenda.org/en/siips](https://www.africanenda.org/en/siips)
  - AfricaNenda SIIPS landing — multi-country flagship (cite-don't-absorb).
  - context: ds:dpi · Digital Pay / Digital Payment System Exists
- [https://www.ceicdata.com/en/eritrea/business-environment/er-power-outages-in-firms-in-a-typical-month](https://www.ceicdata.com/en/eritrea/business-environment/er-power-outages-in-firms-in-a-typical-month)
  - CEIC data page — registry/data.
  - context: Year 2009 · ds:dpi · ICT Infrastructure / Grid Reliability (Power Outage Frequency)
- [https://www.gov.uk/government/publications/eritrea-knowledge-base-profile/eritrea-knowledge-base-profile](https://www.gov.uk/government/publications/eritrea-knowledge-base-profile/eritrea-knowledge-base-profile)
  - UK gov Eritrea knowledge-base country profile — standing reference.
  - context: Year 2018 · ds:dpi · Digital Id / Legal Proof Status
- [https://www.gsma.com/wp-content/uploads/2025/07/Global_Mobile_Money_Dataset_2024.xlsx](https://www.gsma.com/wp-content/uploads/2025/07/Global_Mobile_Money_Dataset_2024.xlsx)
  - GSMA Global Mobile Money Dataset 2024 (xlsx) — multi-country flagship dataset.
  - context: ds:dpi · Digital Pay / Digital Payment System Exists
- [https://www.unirank.org/er/uni/eritrea-institute-of-technology](https://www.unirank.org/er/uni/eritrea-institute-of-technology)
  - uniRank directory page — directory/reference.
  - context: Year 2003 · ds:dpi · ICT Infrastructure / Tertiary ICT/STEM Education
- [https://www.wipo.int/web-publications/global-innovation-index-2024/en/gii-2024-results.html](https://www.wipo.int/web-publications/global-innovation-index-2024/en/gii-2024-results.html)
  - WIPO Global Innovation Index 2024 results — multi-country flagship (cite-don't-absorb).
  - context: ds:dpi · ICT Infrastructure / Global Innovation Index Ranking

## Excluded — pre-2024 (dropped at assessment)  (5)

- [https://archive.assenna.com/eritrea-ranked-190-out-of-193-on-the-united-nations-e-government-development-database](https://archive.assenna.com/eritrea-ranked-190-out-of-193-on-the-united-nations-e-government-development-database)
  - Assenna (diaspora) archive on 2016 UN e-gov ranking, dataset Year 2016 — pre-2024.
  - context: Year 2016 · ds:dpi · ICT Infrastructure / E-Government Development
- [https://online.flippingbook.com/view/574977573](https://online.flippingbook.com/view/574977573)
  - FlippingBook viewer, dataset Year 2019 — pre-2024.
  - context: Year 2019 · ds:dpi · ICT Infrastructure / Technology and Innovation Hubs
- [https://sas-space.sas.ac.uk/9673/1/RLC%20BP%20No.%201.pdf](https://sas-space.sas.ac.uk/9673/1/RLC%20BP%20No.%201.pdf)
  - SAS (London) briefing-paper PDF, dataset Year 1992/2018 — pre-2024.
  - context: Year 1992/2018 · ds:dpi · Digital Id / Legal Framework; Digital Id / Maintenance
- [https://shabait.com/2019/02/23/oag-eritrea-its-principles-and-efforts](https://shabait.com/2019/02/23/oag-eritrea-its-principles-and-efforts)
  - Shabait (Ministry of Information) URL date 2019-02-23 — pre-2024.
  - context: ds:dpi · Digital Pay / Independent Audits and Reviews
- [https://www.justice.gov/eoir/page/file/982601/dl?inline=](https://www.justice.gov/eoir/page/file/982601/dl?inline=)
  - US DOJ EOIR country document, dataset Year 2015 — pre-2024.
  - context: Year 2015 · ds:dpi · Digital Id / Civil Registration Integration; Digital Id / Electronic Database

---

## Phase-2 run summary (fetch → /new-queue)

**3 clips placed** in `/new-queue` (all 3 A-web candidates fetched cleanly — **0 skipped**).

**Confirmed dates at fetch:**
- UNDP digital customs → **2026-01-08** (ASYCUDA World inauguration in Asmara).
- DataReportal Digital 2026 Eritrea → **2025-11-08**; Digital 2025 Eritrea → **2025-03-03**.

**Substance:**
- **UNDP — ASYCUDA World digital customs (Jan 2026):** replaced a 2007 legacy system; UNCTAD platform with full source-code transfer to the Eritrean government (national ownership); deployed as an **intranet-based** system (no reliance on continuous internet) with **solar-powered** central servers to work around Eritrea's poor connectivity and power; 10-month capacity-building for 100 (customs officers, IT specialists, clearing agents); awareness campaign from Dec 2024. The one real DPI event in the corpus.
- **DataReportal 2025 → 2026:** mobile connections 793k (22.2%) → 859k (23.7%); internet users 714k → 726k (penetration flat at 20.0% — ~80% offline); social-media identities 14.3k (0.4%) → 21.2k (0.6%); population 3.57m → 3.63m. Among the least-connected states globally.

**Seed a new hub:** there is no `wiki/places/ERI.md`. This run's threads for a stub: digital customs (ASYCUDA World / UNDP); near-zero connectivity & e-gov (DataReportal, UN e-gov rank 190/193); biometric national ID (embassy national-ID page, A-PDF/D leads); absent/embryonic data-protection & privacy law (dataprotection.africa, lawgratis leads); minimal digital payments (no domestic switch; GSMA/AfricaNenda/Novalnet/XD-Africa leads).

**Left for Bill:** A-PDF 1 (HCBE Eritrea AML/CFT Policy 2024) · B 2 (Digital Identity Index blog; XD Africa payment-methods) · C 7 · D 18. Note: 18 of 36 URLs are standing indices/data pages/reference profiles — cite-don't-absorb.
