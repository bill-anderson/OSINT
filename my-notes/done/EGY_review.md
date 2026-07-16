# EGY — Egypt · dataset→wiki intake review

Run date 2026-07-15. Source: `external-datasets/` (africa-dpi 147 rows, africa-data-centres 0 rows, african-rural-digitalisation 4 rows) filtered to EGY / Egypt.

## Header counts

- Total distinct source URLs: **85**
- Already held (hub): **0** — `wiki/places/EGY.md` is `status: active` but thin: it tracks Egypt only as a continental GovTech / submarine-cable / AI-infrastructure comparator, and cites its sources by title (Cassava AI factories; Southwood 2026-05-19 demand survey; Adebowale 2026-06-12 sovereign-stack benchmarking; WB GovTech Maturity Index; national AI strategy; five-cable-hub). **None of those titled sources appear in this candidate set**, so nothing matched as held.
- Excluded (pre-2024): **8**
- New & in-window: **77**
- Buckets: **A-web 30 · A-PDF 2 · B 11 · C 11 · D 23**

Egypt is a large, GovTech-mature DPI country, so the datasets carry a deep record almost none of which the hub holds: the Digital Egypt platform (165+ services) and Vision 2030; the biometric national ID + new digital-ID / financial-ID platform (CBE); the PDPL (Law 151/2020) with its long-delayed executive regulations + enforcement; payments rails (CBE Soft-POS, mobile wallets, FRA digital factoring, instant/G2P); property-ID / real-estate digitisation; submarine-cable & data-hub build-out (Telecom Egypt); and health DPI (DHIS2, universal health insurance). The unusually large A-web (30) reflects that maturity plus heavy multi-outlet coverage.

### Clusters flagged for Phase-2 merge / Bill
- **PDPL (Law 151/2020) — executive regulations & enforcement:** Access Partnership + Baker McKenzie (2026-01) + Access Now + Shehata (court judgment) as the A-web layer over one instrument; CADE Project (B), Chambers / DLA Piper / TrustArc (D/C) are reference/lead layers. Merge into the PDPL instrument thread.
- **Digital Egypt platform / e-government:** SIS (165 services) + Egyptian Streets (shift of services) + see.news (full automation by 2026) + Masaar (critical reading) — one platform, several milestones/angles.
- **Digital / financial ID:** Business Monthly (CBE digital financial-ID) + BiometricUpdate /202511/ (digital-ID platform for financial inclusion) — same digital-ID-for-inclusion push; BiometricUpdate is the stronger primary.
- **Payments (CBE/FRA):** Soft-POS (2026-02-01), FRA digital factoring (2026-02-08), social-insurance platform (2026-02-08), mobile-money/GSMA index — distinct rails, cluster for one payments update.
- **Data-hub / cable:** Telecom Egypt Regional Data Hub 2 (Tier-III) + AWS edge location — infrastructure build-out feeding the hub's cable-node thread.

## A-web · ingest (non-PDF) — fetched in Phase 2  (30)

- [http://businessmonthlyeg.com/egypts-central-bank-launches-plan-for-national-digital-financial-id-system](http://businessmonthlyeg.com/egypts-central-bank-launches-plan-for-national-digital-financial-id-system)
  - Business Monthly Egypt — CBE national digital financial-ID plan; country-specific dated reporting.
  - context: Year 2024 · ds:dpi · Data Exchange / Digital Payments Integration
- [https://accesspartnership.com/opinion/egypt-finalises-executive-regulations-to-the-personal-data-protection-law-pdpl](https://accesspartnership.com/opinion/egypt-finalises-executive-regulations-to-the-personal-data-protection-law-pdpl)
  - Access Partnership opinion — PDPL executive regulations finalised; analyst review of a specific instrument.
  - context: Year 2025 · ds:dpi · Data Exchange / Data Sovereignty Provisions
- [https://aws.amazon.com/about-aws/whats-new/2024/05/new-edge-location-egypt](https://aws.amazon.com/about-aws/whats-new/2024/05/new-edge-location-egypt)
  - AWS press (2024-05) — new edge location in Egypt; company primary, country-specific.
  - context: Year 2024 · ds:dpi · ICT Infrastructure / Cloud Services Availability
- [https://blogs.realestate.gov.eg/civil-registry-machines-in-egypt](https://blogs.realestate.gov.eg/civil-registry-machines-in-egypt)
  - Real Estate ministry blog — civil-registry machines; official dated gov news, on-topic.
  - context: Year 2024/2025 · ds:dpi · Digital Id / Biometric Data Collection; Digital Id / Civil Registration Integration; Digital Id / Cost of Credential; Digital Id / Electronic Database
- [https://dhis2.org/egypt-launches-dhis2-in-health-information-system](https://dhis2.org/egypt-launches-dhis2-in-health-information-system)
  - DHIS2.org (HISP/Oslo) — Egypt DHIS2 health-information deployment; primary country announcement.
  - context: Year 2025 · ds:dpi · Data Exchange / Health System Integration
- [https://egyptianstreets.com/2025/11/13/egypt-to-shift-public-services-to-digital-egypt-platform](https://egyptianstreets.com/2025/11/13/egypt-to-shift-public-services-to-digital-egypt-platform)
  - Egyptian Streets (2025-11-13) — shift of public services to Digital Egypt platform; country-specific.
  - context: Year 2024 · ds:dpi · Data Exchange / Business Registration & Licensing Integration; Data Exchange / Civil Registration & Vital Statistics Integration; Data Exchange / Driver Licensing Integration; Data Exchange / Operational Status
- [https://eipr.org/en/publications/prohibited-identities](https://eipr.org/en/publications/prohibited-identities)
  - EIPR (rights org) — 'Prohibited Identities' report on ID and legal recognition; country-specific (check date at fetch).
  - context: Year 2024 · ds:dpi · Digital Id / Judicial Oversight; Digital Id / Legal Proof Status; Digital Id / Population Coverage
- [https://en.amwalalghad.com/egypt-achieves-100-score-on-global-cybersecurity-index](https://en.amwalalghad.com/egypt-achieves-100-score-on-global-cybersecurity-index)
  - Amwal Al Ghad — Egypt 100 score on Global Cybersecurity Index; national news.
  - context: Year 2024 · ds:dpi · ICT Infrastructure / National Cybersecurity Readiness
- [https://english.ahram.org.eg/News/547276.aspx](https://english.ahram.org.eg/News/547276.aspx)
  - Al-Ahram (national daily) — digital payments/employment integration; country reporting.
  - context: Year 2023/2024 · ds:dpi · Data Exchange / Digital Payments Integration; Data Exchange / Employment Services Integration; Data Exchange / Social Protection Integration; Data Exchange / Sub-National Participation
- [https://english.ahram.org.eg/News/549537.aspx](https://english.ahram.org.eg/News/549537.aspx)
  - Al-Ahram — national-ID registry item (2025); country reporting.
  - context: Year 2025 · ds:dpi · Registries / National Id integration; Registries / Status; Registries / Uptake
- [https://english.ahram.org.eg/News/562383.aspx](https://english.ahram.org.eg/News/562383.aspx)
  - Al-Ahram — biometric/digital-authentication item; country reporting.
  - context: Year 2024 · ds:dpi · Digital Id / Biometric Data Collection; Digital Id / Digital Authentication Function; Digital Id / Digital ID System Exists; Digital Id / Government Portal Authentication
- [https://english.ahram.org.eg/NewsContentP/3/562552/Business/Egypt%E2%80%99s-financial-inclusion-rate-inches-up-to---by.aspx](https://english.ahram.org.eg/NewsContentP/3/562552/Business/Egypt%E2%80%99s-financial-inclusion-rate-inches-up-to---by.aspx)
  - Al-Ahram Business — financial-inclusion rate (2025); country reporting, on-topic.
  - context: Year 2025 · ds:dpi · Digital Pay / Active Digital Payment Users
- [https://invest-gate.me/features/egypt-moves-forward-with-property-id-law-to-digitize-real-estate-sector](https://invest-gate.me/features/egypt-moves-forward-with-property-id-law-to-digitize-real-estate-sector)
  - Invest-Gate — Property-ID law to digitise real estate; country-specific (2025).
  - context: Year 2025 · ds:dpi · Registries / Status
- [https://ir.te.eg/en/CorporateNews/PressRelease/211/Telecom-Egypt-s-Regional-Data-Hub-2-Awarded-Tier-III-Design-Certification](https://ir.te.eg/en/CorporateNews/PressRelease/211/Telecom-Egypt-s-Regional-Data-Hub-2-Awarded-Tier-III-Design-Certification)
  - Telecom Egypt IR press release — Regional Data Hub 2 Tier-III; primary, country-specific.
  - context: Year 2024 · ds:dpi · ICT Infrastructure / Commercial Data Center Presence
- [https://masaar.net/en/a-critical-reading-of-egypts-e-government-experience](https://masaar.net/en/a-critical-reading-of-egypts-e-government-experience)
  - Masaar (digital-rights org) — critical reading of Egypt's e-government; country-specific analysis.
  - context: Year 2024/2025 · ds:dpi · Data Exchange / Business Registration & Licensing Integration; Data Exchange / Civil Registration & Vital Statistics Integration; Data Exchange / Digital ID Integration; Data Exchange / Enabling Legislation
- [https://see.news/egypt-targets-full-government-automation-digital-id-verification-by-2026-says-communications-min](https://see.news/egypt-targets-full-government-automation-digital-id-verification-by-2026-says-communications-min)
  - SEE News — full gov automation & digital-ID verification by 2026 (ICT minister); country-specific.
  - context: Year 2024 · ds:dpi · Digital Id / Digital ID Specific Regulation; Digital Id / Government Portal Authentication; Digital Id / Sustainability; Digital Id / System Interoperability
- [https://shehatalaw.com/law-update/legal-alert-egyptian-court-judgment-tightens-enforcement-of-privacy-and-data-protection-laws](https://shehatalaw.com/law-update/legal-alert-egyptian-court-judgment-tightens-enforcement-of-privacy-and-data-protection-laws)
  - Shehata Law alert — court judgment tightening DP enforcement; law-firm review of a specific development.
  - context: Year 2024 · ds:dpi · Digital Id / Judicial Oversight
- [https://sis.gov.eg/en/media-center/news/digital-egypt-platform-includes-more-than-165-governmental-services](https://sis.gov.eg/en/media-center/news/digital-egypt-platform-includes-more-than-165-governmental-services)
  - SIS news — Digital Egypt platform >165 services; official dated gov article, on-topic.
  - context: Year 2024 · ds:dpi · Data Exchange / Driver Licensing Integration; Data Exchange / Operational Status; Data Exchange / Tax & Revenue Integration
- [https://tpaymobile.com/tpay-secures-license-to-offer-direct-mobile-payments-for-government-services-in-egypt](https://tpaymobile.com/tpay-secures-license-to-offer-direct-mobile-payments-for-government-services-in-egypt)
  - TPay Mobile press — licence for direct mobile payments for government services; primary event.
  - context: Year 2025 · ds:dpi · Digital Pay / Person-to-Government (P2G) Payments
- [https://www.accessnow.org/egypts-new-data-protection-law-data-protection-or-data-control](https://www.accessnow.org/egypts-new-data-protection-law-data-protection-or-data-control)
  - Access Now — critique of Egypt's DP law ('protection or control'); advocacy analysis, country-specific.
  - context: Year 2025 · ds:dpi · Data Exchange / Data Sovereignty Provisions
- [https://www.arabfinance.com/ar/news/newdetails/29811](https://www.arabfinance.com/ar/news/newdetails/29811)
  - Arab Finance (Arabic) — digital-payments performance reporting (2025); national financial news.
  - context: Year 2025 · ds:dpi · Digital Pay / Public Performance Reporting
- [https://www.bakermckenzie.com/en/insight/publications/2026/01/egypt-important-data-protection-update](https://www.bakermckenzie.com/en/insight/publications/2026/01/egypt-important-data-protection-update)
  - Baker McKenzie (2026-01) — Egypt data-protection update; law-firm review of a specific instrument.
  - context: Year 2024 · ds:dpi · Digital Id / Data Protection Act; Digital Id / Legal Framework
- [https://www.biometricupdate.com/202511/egypt-rolls-out-digital-id-platform-to-scale-up-financial-inclusion](https://www.biometricupdate.com/202511/egypt-rolls-out-digital-id-platform-to-scale-up-financial-inclusion)
  - BiometricUpdate /202511/ — Egypt digital-ID platform for financial inclusion; country-specific.
  - context: Year 2024/2025 · ds:dpi · Data Exchange / Digital ID Integration; Digital Id / Banking/Financial Services Use; Digital Id / Digital Authentication Function; Digital Id / Digital ID System Exists
- [https://www.dailynewsegypt.com/2026/02/01/cbe-launches-soft-pos-service-for-contactless-mobile-payments-to-cut-merchant-costs](https://www.dailynewsegypt.com/2026/02/01/cbe-launches-soft-pos-service-for-contactless-mobile-payments-to-cut-merchant-costs)
  - Daily News Egypt (2026-02-01) — CBE Soft-POS contactless service; country-specific.
  - context: Year 2026 · ds:dpi · Digital Pay / Person-to-Business (P2B) Merchant Payments
- [https://www.dailynewsegypt.com/2026/02/08/egypts-fra-launches-digital-factoring-portal-to-curb-financing-risks](https://www.dailynewsegypt.com/2026/02/08/egypts-fra-launches-digital-factoring-portal-to-curb-financing-risks)
  - Daily News Egypt (2026-02-08) — FRA digital factoring portal; country-specific.
  - context: Year 2024 · ds:dpi · Digital Id / Ministry of Finance Oversight
- [https://www.dailynewsegypt.com/2026/02/08/new-digital-platform-to-offer-40-initial-services-for-egyptian-social-insurance](https://www.dailynewsegypt.com/2026/02/08/new-digital-platform-to-offer-40-initial-services-for-egyptian-social-insurance)
  - Daily News Egypt (2026-02-08) — social-insurance digital platform (40 services); country-specific.
  - context: Year 2024 · ds:dpi · Digital Id / Social Services Use
- [https://www.thecairoreview.com/essays/regulating-privacy-and-digital-identities-in-the-age-of-ai-the-view-from-egypt](https://www.thecairoreview.com/essays/regulating-privacy-and-digital-identities-in-the-age-of-ai-the-view-from-egypt)
  - Cairo Review essay — privacy & digital identities in the age of AI (Egypt view); analyst essay, country-specific.
  - context: Year 2024 · ds:dpi · Digital Id / Data Protection Authority Oversight
- [https://www.tra.gov.eg/en/the-gsma-global-system-for-mobile-communications-association-has-released-its-annual-regulatory-index-for-mobile-money-for-2024-egypts-national-telecom-regulatory-authority-ntra-advanced](https://www.tra.gov.eg/en/the-gsma-global-system-for-mobile-communications-association-has-released-its-annual-regulatory-index-for-mobile-money-for-2024-egypts-national-telecom-regulatory-authority-ntra-advanced)
  - Telecom regulator news — Egypt/NTRA advances in GSMA 2024 mobile-money regulatory index; dated official news.
  - context: Year 2025 · ds:dpi · Digital Pay / Active Digital Payment Users
- [https://www.trade.gov/country-commercial-guides/egypt-information-and-communications-technology-and-digital-economy](https://www.trade.gov/country-commercial-guides/egypt-information-and-communications-technology-and-digital-economy)
  - trade.gov Egypt ICT & Digital Economy commercial guide — dated country reference.
  - context: Year 2024 · ds:dpi · Data Exchange / AI/Analytics Capabilities; Data Exchange / Agriculture System Integration; Data Exchange / Implementation Roadmap; Data Exchange / Strategic Framework
- [https://www.undp.org/egypt/stories/5-facts-you-need-know-about-digital-public-infrastructure](https://www.undp.org/egypt/stories/5-facts-you-need-know-about-digital-public-infrastructure)
  - UNDP Egypt story — '5 facts about DPI'; UN country content, dated, on-topic.
  - context: Year 2024 · ds:dpi · Data Exchange / Strategic Framework; Data Exchange / Universal Accessibility; Data Exchange / Urban-Rural Digital Divide

## A-PDF · ingest (PDF) — Bill handles by hand  (2)

- [https://mped.gov.eg/Files/Egypt_Vision_2030_EnglishDigitalUse.pdf](https://mped.gov.eg/Files/Egypt_Vision_2030_EnglishDigitalUse.pdf)
  - Egypt Vision 2030 national strategy PDF (Ministry of Planning) — substantive dated document.
  - context: Year 2024 · ds:dpi · Data Exchange / Implementation Roadmap; Data Exchange / National Planning & Statistics Integration; Data Exchange / Strategic Framework; Data Exchange / Sub-National Participation
- [https://p4h.world/app/uploads/2025/07/Automatic-Health-Insurance-Enrollment-for-Vulnerable-Individuals-Opportunities-for-Egypts-Universal-Health-Insurance-System.x73677.pdf](https://p4h.world/app/uploads/2025/07/Automatic-Health-Insurance-Enrollment-for-Vulnerable-Individuals-Opportunities-for-Egypts-Universal-Health-Insurance-System.x73677.pdf)
  - P4H (2025-07) — automatic health-insurance enrolment for Egypt's UHI; dated report PDF, on-topic.
  - context: Year 2024 · ds:dpi · Digital Id / Healthcare Access Use; Digital Id / Social Services Use

## B · check first  (11)

- [https://cadeproject.org/updates/title-egypt-activates-data-protection-law-with-implementing-regulations-after-five-year-delay](https://cadeproject.org/updates/title-egypt-activates-data-protection-law-with-implementing-regulations-after-five-year-delay)
  - CADE Project update — DP-law activation; unknown-quality outlet, check-first.
  - context: Year 2025 · ds:dpi · Data Exchange / Data Sovereignty Provisions; Data Exchange / Enabling Legislation
- [https://english.ahram.org.eg/NewsContent/1/2/537864/Egypt/Society/Egypt-population-surpassed--mln-by-end-of-.aspx](https://english.ahram.org.eg/NewsContent/1/2/537864/Egypt/Society/Egypt-population-surpassed--mln-by-end-of-.aspx)
  - Al-Ahram — population milestone; marginal demographic, check-first.
  - context: Year 2024 · ds:dpi · Digital Id / Population Coverage
- [https://english.ahram.org.eg/NewsContent/1/2/539535/Egypt/Society/Egypt-birth-rate-falls-below--mln-threshold-for-st.aspx](https://english.ahram.org.eg/NewsContent/1/2/539535/Egypt/Society/Egypt-birth-rate-falls-below--mln-threshold-for-st.aspx)
  - Al-Ahram — birth-rate; marginal demographic (civil-reg uptake), check-first.
  - context: Year 2024 · ds:dpi · Registries / Uptake
- [https://english.ahram.org.eg/NewsContent/50/1201/526564/AlAhram-Weekly/Egypt/Foreign-residents-status-regulated.aspx](https://english.ahram.org.eg/NewsContent/50/1201/526564/AlAhram-Weekly/Egypt/Foreign-residents-status-regulated.aspx)
  - Al-Ahram Weekly — foreign-residents status; marginal to digital ID, check-first.
  - context: Year 2024 · ds:dpi · Digital Id / Non-National Eligibility
- [https://metropolitiques.eu/Securing-Land-Tenure-in-Egypt-Who-Needs-Registered-Titles.html](https://metropolitiques.eu/Securing-Land-Tenure-in-Egypt-Who-Needs-Registered-Titles.html)
  - Metropolitiques academic essay — land tenure; marginal to DPI, check-first.
  - context: Year 2025 · ds:dpi · Registries / Separate cadastral register; Registries / Uptake
- [https://pmc.ncbi.nlm.nih.gov/articles/PMC7364774](https://pmc.ncbi.nlm.nih.gov/articles/PMC7364774)
  - PubMed Central article — academic, check-first.
  - context: Year 2024 · ds:dpi · Registries / Uptake
- [https://we.hse.ru/en/irs/cas/passeg](https://we.hse.ru/en/irs/cas/passeg)
  - HSE (we.hse.ru) page — low-authority academic host, check-first.
  - context: Year 2024 · ds:dpi · Data Exchange / Electoral Register Integration; Data Exchange / Operational Status; Data Exchange / Sub-National Participation
- [https://www.abacademies.org/articles/g2g-adoption-in-egypt-16285.html](https://www.abacademies.org/articles/g2g-adoption-in-egypt-16285.html)
  - Allied Business Academies article — low-tier academic, check-first.
  - context: Year 2025 · ds:dpi · Data Exchange / Enabling Legislation
- [https://www.bavariaworldwide.de/en/egypt/news-1/details/aegypten-zaehlt-im-zeitraum-2023-2024-zu-den-elite-cybersicherheitsnationen](https://www.bavariaworldwide.de/en/egypt/news-1/details/aegypten-zaehlt-im-zeitraum-2023-2024-zu-den-elite-cybersicherheitsnationen)
  - Bavaria Worldwide — Egypt cybersecurity ranking; low-authority/promotional, check-first.
  - context: Year 2024 · ds:dpi · Digital Id / Security Reviews
- [https://www.biometricupdate.com/202601/undp-launches-framework-for-arab-countries-to-boost-digital-inclusion](https://www.biometricupdate.com/202601/undp-launches-framework-for-arab-countries-to-boost-digital-inclusion)
  - BiometricUpdate /202601/ — UNDP Arab-region framework; regional not country-specific, check-first.
  - context: Year 2024 · ds:dpi · Digital Id / Cross-Border Recognition
- [https://www.dfat.gov.au/sites/default/files/country-information-report-egypt.pdf](https://www.dfat.gov.au/sites/default/files/country-information-report-egypt.pdf)
  - Australia DFAT country-information report PDF — general country report, marginal to DPI, check-first.
  - context: Year 2024 · ds:dpi · Digital Id / Healthcare Access Use

## C · lead only (do not cite)  (11)

- [https://appinventiv.com/blog/digital-egypt-ai-healthcare-enterprise-solutions](https://appinventiv.com/blog/digital-egypt-ai-healthcare-enterprise-solutions)
  - Appinventiv dev-vendor blog — marketing, lead-only.
  - context: Year 2025 · ds:dpi · Data Exchange / Health System Integration
- [https://dig.watch/updates/egypt-institutes-new-digital-id-checks-on-certain-fintech-transactions](https://dig.watch/updates/egypt-institutes-new-digital-id-checks-on-certain-fintech-transactions)
  - dig.watch update — secondary summary, mine for primary; lead-only.
  - context: Year 2024 · ds:dpi · Digital Id / Biometric Data Collection; Digital Id / Digital ID Specific Regulation; Digital Id / KYC Enablement; Digital Id / Ministry of Finance Oversight
- [https://en.wikipedia.org/wiki/Egyptian_National_Identity_Card](https://en.wikipedia.org/wiki/Egyptian_National_Identity_Card)
  - Wikipedia — tertiary, lead-only.
  - context: Year 2024 · ds:dpi · Digital Id / Civil Registration Integration; Digital Id / Digital ID System Exists; Digital Id / Electronic Database; Digital Id / Enrollment Eligibility Age
- [https://github.com/Everything-Open-Source/open-source-communities-in-africa](https://github.com/Everything-Open-Source/open-source-communities-in-africa)
  - GitHub list — tertiary, lead-only.
  - context: Year 2024 · ds:dpi · ICT Infrastructure / Developer and Tech Community
- [https://regulaforensics.com/blog/egyptian-id-processing](https://regulaforensics.com/blog/egyptian-id-processing)
  - Regula vendor blog — marketing, lead-only.
  - context: Year 2024 · ds:dpi · Digital Id / Cross-Border Recognition
- [https://trustarc.com/regulations/egypt-pdpl](https://trustarc.com/regulations/egypt-pdpl)
  - TrustArc vendor compliance reference — lead-only.
  - context: Year 2024 · ds:dpi · Digital Id / Data Protection Act; Digital Id / Data Sharing Rules; Digital Id / Individual Data Access
- [https://usesmileid.com/countries/egypt](https://usesmileid.com/countries/egypt)
  - SmileID vendor country page — marketing, lead-only.
  - context: Year 2024 · ds:dpi · Digital Id / KYC Enablement
- [https://www.facebook.com/MENAEnglish/posts/egypt-reports-continued-decline-in-births-through-2025-health-ministry-saysthe-h/1349372063901225](https://www.facebook.com/MENAEnglish/posts/egypt-reports-continued-decline-in-births-through-2025-health-ministry-saysthe-h/1349372063901225)
  - Facebook post — tertiary, lead-only.
  - context: Year 2025 · ds:dpi · Registries / Status
- [https://www.familysearch.org/en/wiki/Egypt_Civil_Registration](https://www.familysearch.org/en/wiki/Egypt_Civil_Registration)
  - FamilySearch wiki — tertiary, lead-only.
  - context: Year 2025 · ds:dpi · Registries / Scope; Registries / Status
- [https://www.instagram.com/p/DJzM132NhF9](https://www.instagram.com/p/DJzM132NhF9)
  - Instagram post — tertiary, lead-only.
  - context: Year 2024 · ds:dpi · Digital Id / Cost of Credential; Digital Id / Enrollment Mandatory Status; Digital Id / Sustainability
- [https://www.linkedin.com/posts/digitalhealth-africa_dhainsights-activity-7396525650695753728-esl6](https://www.linkedin.com/posts/digitalhealth-africa_dhainsights-activity-7396525650695753728-esl6)
  - LinkedIn post — tertiary, lead-only.
  - context: Year 2025 · ds:dpi · Data Exchange / Health System Integration

## D · resource / entity (not a dated source)  (23)

- [https://dig.watch/resource/the-cloud-first-policy-of-egypt-2024](https://dig.watch/resource/the-cloud-first-policy-of-egypt-2024)
  - dig.watch resource page — reference.
  - context: Year 2024 · ds:dpi · ICT Infrastructure / Government Data Center / Cloud Strategy
- [https://digitalpolicyalert.org/change/12346](https://digitalpolicyalert.org/change/12346)
  - Digital Policy Alert change record — tracker/registry.
  - context: Year 2024 · ds:dpi · ICT Infrastructure / Data Localisation Requirements
- [https://lowcarbonpower.org/region/Egypt](https://lowcarbonpower.org/region/Egypt)
  - LowCarbonPower data page — registry/data.
  - context: Year 2023 · ds:dpi · ICT Infrastructure / Renewable Energy Share of Generation
- [https://partechpartners.com/africa-reports/2024-africa-tech-venture-capital-report](https://partechpartners.com/africa-reports/2024-africa-tech-venture-capital-report)
  - Partech 2024 Africa VC report — multi-country flagship (cite-don't-absorb).
  - context: Year 2024 · ds:dpi · ICT Infrastructure / Tech Startup Ecosystem
- [https://practiceguides.chambers.com/practice-guides/data-protection-privacy-2025/egypt](https://practiceguides.chambers.com/practice-guides/data-protection-privacy-2025/egypt)
  - Chambers DP practice guide 2025 (Egypt) — standing legal reference (cite-don't-absorb).
  - context: Year 2024 · ds:dpi · Digital Id / Data Protection Authority Oversight; Digital Id / Data Sharing Rules; Digital Id / Individual Data Access; Digital Id / Legal Framework
- [https://realestate.gov.eg](https://realestate.gov.eg)
  - Real Estate ministry homepage — standing portal.
  - context: Year 2025 · ds:dpi · Registries / Status
- [https://rise.esmap.org/country/egypt-arab-rep](https://rise.esmap.org/country/egypt-arab-rep)
  - RISE/ESMAP energy country page — registry/reference.
  - context: Year 2020 · ds:dpi · ICT Infrastructure / Off-Grid and Distributed Energy Policy
- [https://sis.gov.eg/en/media-center/files/ict-sector](https://sis.gov.eg/en/media-center/files/ict-sector)
  - State Information Service ICT-sector reference file — standing gov page.
  - context: Year 2024 · ds:dpi · Data Exchange / AI/Analytics Capabilities; Data Exchange / Education System Integration; Data Exchange / Justice System Integration; Data Exchange / Public Transparency
- [https://tradingeconomics.com/egypt/access-to-electricity-percent-of-population-wb-data.html](https://tradingeconomics.com/egypt/access-to-electricity-percent-of-population-wb-data.html)
  - TradingEconomics indicator page — registry/data.
  - context: Year 2023 · ds:dpi · ICT Infrastructure / Electricity Access Rate
- [https://www.africanenda.org/uploads/files/siips2025/siips_2025_IPN-Egypt_CaseStudy_en.pdf](https://www.africanenda.org/uploads/files/siips2025/siips_2025_IPN-Egypt_CaseStudy_en.pdf)
  - AfricaNenda SIIPS 2025 IPN-Egypt case study — multi-country flagship (cite-don't-absorb).
  - context: Year 2024/2025/2026 · ds:dpi · Digital Pay / Business-to-Business (B2B) Payments; Digital Pay / Central Bank Involvement in Governance; Digital Pay / Cross-Border Payment Functionality; Digital Pay / Digital Payment System Exists
- [https://www.ceicdata.com/en/egypt/energy-production-and-consumption/eg-access-to-electricity-rural--of-population](https://www.ceicdata.com/en/egypt/energy-production-and-consumption/eg-access-to-electricity-rural--of-population)
  - CEIC data page — registry/data.
  - context: Year 2016 · ds:dpi · ICT Infrastructure / Urban-Rural Electrification Gap
- [https://www.citc.com.eg/National%20ID%20SYSTEM.html](https://www.citc.com.eg/National%20ID%20SYSTEM.html)
  - CITC standing 'National ID System' reference page — resource.
  - context: Year 2025 · ds:dpi · Registries / National Id integration
- [https://www.datacentermap.com/ixp/egypt-internet-exchange](https://www.datacentermap.com/ixp/egypt-internet-exchange)
  - DataCenterMap IXP page — registry/directory.
  - context: Year 2024 · ds:dpi · ICT Infrastructure / Internet Exchange Point Presence
- [https://www.dlapiperdataprotection.com/?t=law&c=EG](https://www.dlapiperdataprotection.com/?t=law&c=EG)
  - DLA Piper Data Protection Laws tool — reference/directory.
  - context: Year 2020/2024 · ds:dpi · Digital Pay / Data Breach Notification Requirements; Digital Pay / Data Privacy Legislation Coverage; ICT Infrastructure / Data Protection Legislation
- [https://www.enterprisesurveys.org/content/dam/enterprisesurveys/documents/country/Egypt-2020.pdf](https://www.enterprisesurveys.org/content/dam/enterprisesurveys/documents/country/Egypt-2020.pdf)
  - World Bank Enterprise Surveys Egypt 2020 — flagship reference series (cite-don't-absorb).
  - context: Year 2020 · ds:dpi · ICT Infrastructure / Grid Reliability (Power Outage Frequency)
- [https://www.eta.gov.eg/en/home](https://www.eta.gov.eg/en/home)
  - Egyptian Tax Authority homepage — standing portal.
  - context: Year 2025 · ds:dpi · Registries / Business register integration; Registries / Business taxpayer uptake; Registries / Income taxpayer uptake; Registries / National Id integration
- [https://www.gafi.gov.eg](https://www.gafi.gov.eg)
  - GAFI (investment authority) homepage — standing entity.
  - context: Year 2025 · ds:dpi · Registries / Uptake
- [https://www.gafi.gov.eg/English/eServices/Pages/eservicesInfograph.aspx](https://www.gafi.gov.eg/English/eServices/Pages/eservicesInfograph.aspx)
  - GAFI e-services infographic page — standing portal page.
  - context: Year 2025 · ds:dpi · Registries / Status
- [https://www.itu.int/dms_pub/itu-d/opb/ind/d-ind-ict_mdd-2024-3-pdf-e.pdf](https://www.itu.int/dms_pub/itu-d/opb/ind/d-ind-ict_mdd-2024-3-pdf-e.pdf)
  - ITU Measuring Digital Development 2024 — multi-country flagship (cite-don't-absorb).
  - context: Year 2024 · ds:dpi · ICT Infrastructure / 4G/LTE Population Coverage; ICT Infrastructure / Internet Usage Rate; ICT Infrastructure / Mobile Data Affordability; ICT Infrastructure / Mobile Phone Penetration
- [https://www.tra.gov.eg/en/mobile-sim-cards-sales-regulations-for-individuals](https://www.tra.gov.eg/en/mobile-sim-cards-sales-regulations-for-individuals)
  - Telecom regulator standing SIM-registration rules page — resource.
  - context: Year 2024 · ds:dpi · Digital Id / Non-National Eligibility; Digital Id / SIM Card Registration Use
- [https://www.tra.gov.eg/en/mobile-wallets-regulatory-rules](https://www.tra.gov.eg/en/mobile-wallets-regulatory-rules)
  - Telecom regulator standing mobile-wallet rules page — resource.
  - context: Year 2024 · ds:dpi · Digital Id / Banking/Financial Services Use
- [https://www.tra.gov.eg/en/regulations/consumer-manuals-and-tips/mobile-wallet-services](https://www.tra.gov.eg/en/regulations/consumer-manuals-and-tips/mobile-wallet-services)
  - Telecom regulator standing consumer-manual page — resource.
  - context: Year 2025 · ds:dpi · Digital Pay / Person-to-Person (P2P) Payments
- [https://www.wipo.int/edocs/gii-ranking/2024/eg.pdf](https://www.wipo.int/edocs/gii-ranking/2024/eg.pdf)
  - WIPO GII 2024 Egypt ranking PDF — multi-country flagship (cite-don't-absorb).
  - context: Year 2024 · ds:dpi · ICT Infrastructure / Global Innovation Index Ranking

## Excluded — pre-2024 (dropped at assessment)  (8)

- [https://documents1.worldbank.org/curated/en/533491624466169827/pdf/G2P-Payment-Arrangements-in-Egypt-and-COVID-19.pdf](https://documents1.worldbank.org/curated/en/533491624466169827/pdf/G2P-Payment-Arrangements-in-Egypt-and-COVID-19.pdf)
  - World Bank G2P/COVID-19 PDF (~2021) — pre-2024.
  - context: Year 2021/2025 · ds:dpi · Digital Pay / Government-to-Person (G2P) Payments; Digital Pay / Revenue Collection
- [https://egyptianstreets.com/2022/07/20/egypt-to-lower-national-id-age-requirement-from-16-to-15](https://egyptianstreets.com/2022/07/20/egypt-to-lower-national-id-age-requirement-from-16-to-15)
  - Egyptian Streets URL date 2022-07 — pre-2024.
  - context: Year 2024 · ds:dpi · Digital Id / Enrollment Eligibility Age
- [https://oecd-opsi.org/wp-content/uploads/2019/07/Takaful-Karama-Program_Egypt_2015.pdf](https://oecd-opsi.org/wp-content/uploads/2019/07/Takaful-Karama-Program_Egypt_2015.pdf)
  - OECD-OPSI uploads/2019/07 (Takaful-Karama 2015) — pre-2024.
  - context: Year 2024 · ds:dpi · Data Exchange / Civil Registration & Vital Statistics Integration; Data Exchange / Passport & Immigration Integration; Data Exchange / Social Protection Integration
- [https://online.flippingbook.com/view/574977573](https://online.flippingbook.com/view/574977573)
  - FlippingBook viewer, dataset Year 2019 — pre-2024.
  - context: Year 2019 · ds:dpi · ICT Infrastructure / Technology and Innovation Hubs
- [https://riad-riad.com/new-egyptian-consumer-protection-law](https://riad-riad.com/new-egyptian-consumer-protection-law)
  - Riad & Riad note on 2018 Consumer Protection Law, dataset Year 2018 — pre-2024.
  - context: Year 2018 · ds:dpi · Digital Pay / Consumer Protection Framework for Payments
- [https://www.afi-global.org/sites/default/files/publications/2018-08/AFI_Egypt_Report_AW_digital.pdf](https://www.afi-global.org/sites/default/files/publications/2018-08/AFI_Egypt_Report_AW_digital.pdf)
  - AFI Egypt report, publications/2018-08 — pre-2024.
  - context: Year 2018 · ds:dpi · Digital Pay / Consumer Protection Framework for Payments
- [https://www.globalcompliancenews.com/2023/08/29/https-insightplus-bakermckenzie-com-bm-banking-finance_1-egypt-new-regulations-on-the-licensing-and-regulatory-framework-of-fintech-services_08162023](https://www.globalcompliancenews.com/2023/08/29/https-insightplus-bakermckenzie-com-bm-banking-finance_1-egypt-new-regulations-on-the-licensing-and-regulatory-framework-of-fintech-services_08162023)
  - Global Compliance News URL date 2023-08 — pre-2024.
  - context: Year 2024 · ds:dpi · Digital Id / Legal Framework
- [https://www.worldbank.org/en/results/2020/11/17/takaful-and-karama-a-social-safety-net-project-that-promotes-egyptian-women-empowerment-and-human-capital](https://www.worldbank.org/en/results/2020/11/17/takaful-and-karama-a-social-safety-net-project-that-promotes-egyptian-women-empowerment-and-human-capital)
  - World Bank results story URL date 2020-11 — pre-2024.
  - context: Year 2021/2024/2025 · ds:dpi · Data Exchange / Digital ID Integration; Data Exchange / Social Protection Integration; Registries / National Id integration; Registries / Status

---

## Phase-2 run summary (fetch → /new-queue)

**25 clips placed** in `/new-queue` (of 30 A-web candidates). **5 skipped:**
- EIPR — *Prohibited Identities* — true pub **2007-11-01** → **skipped (pre-2024)**. (Substantive report on religious identity and national-ID access for Baha'i/converts; historic, useful background but out of window.)
- Access Now — *Egypt's new data protection law: data protection or data control?* — true pub **2020-09-24** (Law 151/2020 ratification) → **skipped (pre-2024)**. Current PDPL developments are covered by the Access Partnership / Baker McKenzie / Shehata clips.
- SIS — *Digital Egypt platform >165 services* — **skipped (fetch-fail)**: CRAWL_LIVECRAWL_TIMEOUT ×2. Same platform covered by the Egyptian Streets (175 services), UNDP (170+) and see.news clips.
- Telecom regulator (tra.gov.eg) — *GSMA 2024 mobile-money index / NTRA* — **skipped (fetch-fail)**: CRAWL_LIVECRAWL_TIMEOUT then HTTP 403.
- Arab Finance — *Egypt's IPN transactions jump to EGP 1.2T in Q1 2025* — **skipped (no body)**: page returned only EGX stock-ticker chrome on two attempts (AR and EN). The InstaPay/IPN and financial-inclusion figures are carried by the Business Monthly and Ahram clips.

**Date corrections at fetch (dataset Year was misleading):**
- Access Partnership PDPL exec-regs → **2026-02-11**; the Regulations themselves = **Decree/Reg No. 816 of 2025**, issued 1 Nov 2025, enforcement from 1 Nov 2026.
- Masaar e-gov critique — Exa metadata said 2021-04-25 but the page's own date is **2025-07-14** (cites 2024 EGDI) → clipped as 2025-07-14.
- trade.gov Egypt ICT — Exa said 2020-09-15 but "last published" = **2025-11-21** (cites June-2025 5G launch) → clipped as 2025-11-21.
- AWS edge location → **2024-05-22**; Telecom Egypt RDH2 → **2024-11-18**; Business Monthly CBE ID → **2025-11-30**; BiometricUpdate Haweya → **2025-11-13**.

**Merge clusters flagged (for ingest):**
- **PDPL (Law 151/2020) — Executive Regulations (Decree 816/2025) & enforcement:** Access Partnership (2026-02) + Baker McKenzie (2026-01) are the exec-regs primaries; Shehata (2025-09, Alexandria Economic Court EGP 10m judgment vs Orange, custodian's-liability tort) is the enforcement precursor — one PDPL instrument thread. Reference layers (Chambers/DLA Piper/TrustArc/CADE) stay B/C/D.
- **Digital / financial ID (CBE):** Business Monthly (national digital financial-ID / eKYC) + BiometricUpdate (**Haweya** app, face+fingerprint, 37 banks, integrator Raya IT) — same push; Haweya is the named platform. Interior Ministry's **MOIEG-PASS** biometric app (Ahram 2026-02-14) is a *separate* gov-services ID rail — keep distinct.
- **Digital Egypt platform / e-gov automation:** Egyptian Streets (175 services) + see.news (full automation + digital ID card by 2026, Min. Talaat) + UNDP (170+ services, Global DPI Summit Oct-2024) + Masaar (rights-based critique) — one platform, several milestones.
- **Payments rails (distinct, cluster):** CBE SoftPOS (2026-02-01) · FRA digital factoring w/ e-finance (2026-02-08) · National Social Insurance digital platform (2026-02-08) · tpay NTRA Direct-Carrier-Billing licence for P2G (2025-12-11) · InstaPay/Meeza/mobile-wallet baselines (Business Monthly, Ahram FI 77.6%).
- **Infrastructure / cable-hub:** Telecom Egypt RDH2 Tier-III (13→18 submarine cables) + AWS Cairo edge location — build-out feeding the hub's cable-node thread.
- **Health DPI:** DHIS2 launch (MoHP/UNICEF/Oslo, National Digital Health Strategic Priorities 2025–2029).

**Left for Bill:** A-PDF 2 (Egypt Vision 2030 strategy PDF; P4H universal-health-insurance enrolment PDF) · B 11 · C 11 · D 23. Strong D entity-page candidates: CBE, Personal Data Protection Center (PDPC), MCIT/NTRA/ITIDA, Telecom Egypt, GAFI, Egyptian Tax Authority (ETA), Egypt Post, the Digital Egypt / realestate.gov.eg portals.
