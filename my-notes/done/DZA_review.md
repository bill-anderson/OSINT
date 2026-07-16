# DZA — Algeria · dataset→wiki intake review

Run date 2026-07-15. Source: `external-datasets/` (africa-dpi 147 rows, africa-data-centres 0 rows, african-rural-digitalisation 4 rows) filtered to DZA / Algeria.

## Header counts

- Total distinct source URLs: **82**
- Already held (hub): **0** — `wiki/places/DZA.md` is a stub (North-Africa, outside SSA core scope). It cites its sources by title (smart-city surveillance IDS 2026; Africa Forward Summit May 2026; Algiers Declaration ATU, pub 2026-07-12); **none of those titled sources appear in this candidate set**, so nothing matched as held.
- Excluded (pre-2024): **9**
- New & in-window: **73**
- Buckets: **A-web 20 · A-PDF 1 · B 6 · C 18 · D 28**

The DZA hub is a stub with three narrow threads (Chinese AI surveillance, continental AI cooperation, Algiers Declaration on OTT rules). The datasets, by contrast, carry a substantial DPI record: biometric national ID / draft digital-ID & trust-services law (Nov 2025), Data Protection Law 18-07 + the ANPDP authority, instant/mobile payments (DZ-MOB-PAY, PAPSS), AMLAK e-land system, DZair public-services portal, and a national public-data governance framework. Effectively the whole substantive DPI picture is new to the wiki.

### Clusters flagged for Phase-2 merge / Bill
- **Digital-ID & trust-services draft law (Nov 2025):** BiometricUpdate /202511/, Mobile ID World, and Ecofin (id 50150, "updates digital-services & online-identity law") likely report the *same* legislative event — merge into one event page; BiometricUpdate/Mobile ID World are the primaries.
- **Data Protection Law 18-07 + ANPDP authority:** Gide (law-firm, ANPDP set-up) is the primary A-web; AlgeriaTech guide is secondary; dataprotection.africa / DLA Piper / cookieyes / cookie-script are reference/lead layers on the same instrument.
- **Instant / mobile payments:** WeAreTech (instant-payment system), AL24 (DZ-MOB-PAY, Jan 2025) and Afreximbank (Bank of Algeria joins PAPSS, 2025) — distinct rails (domestic instant switch vs mobile-pay app vs cross-border PAPSS); keep separate but note they cluster.
- **Public-data governance:** WeAreTech "national framework to govern public data" + the LinkedIn flag of **JO-87 national data-governance / cyber strategy** (C, lead) point at one instrument — mine the LinkedIn lead for the JO reference.

## A-web · ingest (non-PDF) — fetched in Phase 2  (20)

- [https://al24news.dz/en/algeria-set-to-launch-mobile-payment-system-dz-mob-pay-in-january-2025](https://al24news.dz/en/algeria-set-to-launch-mobile-payment-system-dz-mob-pay-in-january-2025)
  - National news (AL24) on DZ-MOB-PAY mobile-payment launch (Jan 2025) — country-specific dated reporting.
  - context: Year 2024 · ds:dpi · Digital Pay / Person-to-Business (P2B) Merchant Payments; Digital Pay / Person-to-Person (P2P) Payments
- [https://algeriainvest.com/premium-news/une-plateforme-numerique-pour-le-paiement-des-droits-de-timbres-fiscaux](https://algeriainvest.com/premium-news/une-plateforme-numerique-pour-le-paiement-des-droits-de-timbres-fiscaux)
  - AlgeriaInvest news — digital platform for fiscal-stamp payment; country-specific (premium, may paywall).
  - context: Year 2024 · ds:dpi · Digital Id / Ministry of Finance Oversight
- [https://algeriatech.news/ai-government-algeria-digital-transformation](https://algeriatech.news/ai-government-algeria-digital-transformation)
  - AlgeriaTech News — AI in government / digital transformation; country-specific tech reporting (2025).
  - context: Year 2025 · ds:dpi · Data Exchange / AI/Analytics Capabilities; Data Exchange / Implementation Roadmap
- [https://algeriatech.news/algeria-cloud-market-450-million-2035](https://algeriatech.news/algeria-cloud-market-450-million-2035)
  - AlgeriaTech News — cloud-market outlook; country-specific tech reporting (2026).
  - context: Year 2026 · ds:dpi · ICT Infrastructure / Cloud Services Availability; ICT Infrastructure / Government Data Center / Cloud Strategy
- [https://algeriatech.news/data-protection-law-18-07-business-guide](https://algeriatech.news/data-protection-law-18-07-business-guide)
  - AlgeriaTech News — guide to Data Protection Law 18-07; explainer of a specific instrument.
  - context: Year 2023/2024/2025 · ds:dpi · Digital Id / Data Protection Act; Digital Id / Data Protection Authority Oversight; Digital Id / Individual Data Access
- [https://datareportal.com/reports/digital-2025-algeria](https://datareportal.com/reports/digital-2025-algeria)
  - DataReportal Digital 2025 Algeria — dated country reference report (A-web per spec).
  - context: Year 2025 · ds:dpi · ICT Infrastructure / Gender Gap in ICT Access; ICT Infrastructure / Internet Usage Rate; ICT Infrastructure / Mobile Phone Penetration
- [https://mobileidworld.com/algeria-approves-draft-law-for-national-digital-identity-and-trust-services](https://mobileidworld.com/algeria-approves-draft-law-for-national-digital-identity-and-trust-services)
  - Mobile ID World — Algeria draft digital-ID & trust-services law; country-specific dated reporting.
  - context: Year 2023/2025 · ds:dpi · Data Exchange / Digital ID Integration; Data Exchange / Passport & Immigration Integration; Digital Id / Government Portal Authentication; Digital Id / System Interoperability
- [https://weetracker.com/2025/10/27/algeria-goes-continental-with-usd-1-b-to-support-african-startups](https://weetracker.com/2025/10/27/algeria-goes-continental-with-usd-1-b-to-support-african-startups)
  - WeeTracker (URL date 2025-10-27) — Algeria $1B startup fund; country-specific dated reporting.
  - context: Year 2025 · ds:dpi · ICT Infrastructure / Tech Startup Ecosystem
- [https://www.afreximbank.com/bank-of-algeria-joins-papss-network-accelerating-financial-integration-in-africa-as-algeria-prepares-to-host-iatf-2025](https://www.afreximbank.com/bank-of-algeria-joins-papss-network-accelerating-financial-integration-in-africa-as-algeria-prepares-to-host-iatf-2025)
  - Afreximbank press release — Bank of Algeria joins PAPSS (2025); primary.
  - context: Year 2025 · ds:dpi · Digital Pay / Cross-Border Payment Functionality
- [https://www.africanwirelesscomms.com/news-details?itemid=8015](https://www.africanwirelesscomms.com/news-details?itemid=8015)
  - African Wireless Communications — Algeria strategic framework (2025); trade press.
  - context: Year 2025 · ds:dpi · Data Exchange / Strategic Framework
- [https://www.biometricupdate.com/202511/algeria-approves-draft-legislation-on-digital-id-trust-services](https://www.biometricupdate.com/202511/algeria-approves-draft-legislation-on-digital-id-trust-services)
  - BiometricUpdate /202511/ — Algeria digital-ID & trust-services draft law; country-specific dated.
  - context: Year 2024/2025 · ds:dpi · Data Exchange / Driver Licensing Integration; Data Exchange / Enabling Legislation; Digital Id / Digital ID Specific Regulation
- [https://www.ecofinagency.com/news-digital/0511-50150-algeria-updates-digital-services-and-online-identity-law](https://www.ecofinagency.com/news-digital/0511-50150-algeria-updates-digital-services-and-online-identity-law)
  - Ecofin (id 50150 ~Nov 2025) — Algeria updates digital-services & online-identity law; country-specific.
  - context: Year 2025 · ds:dpi · Data Exchange / Digital ID Integration; Digital Id / Digital ID Specific Regulation; Digital Id / Government Portal Authentication; Digital Id / Legal Proof Status
- [https://www.ecofinagency.com/news-digital/1301-51891-algeria-launches-nationwide-rollout-of-amlak-electronic-land-system](https://www.ecofinagency.com/news-digital/1301-51891-algeria-launches-nationwide-rollout-of-amlak-electronic-land-system)
  - Ecofin (id 51891 ~Jan 2026) — nationwide AMLAK electronic land-system rollout; country-specific.
  - context: Year 2026 · ds:dpi · Registries / Status
- [https://www.ecofinagency.com/news-digital/1802-53004-algeria-s-state-owned-telecom-plans-345-new-4g-stations-nationwide](https://www.ecofinagency.com/news-digital/1802-53004-algeria-s-state-owned-telecom-plans-345-new-4g-stations-nationwide)
  - Ecofin (id 53004 ~Feb 2026) — Algerie Telecom 345 new 4G stations; country-specific.
  - context: Year 2024 · ds:dpi · ICT Infrastructure / 4G/LTE Population Coverage; ICT Infrastructure / Smartphone Adoption
- [https://www.financialafrik.com/en/2026/01/23/social-protection-algeria-launches-an-electronic-card-for-the-benefit-of-the-most-vulnerable](https://www.financialafrik.com/en/2026/01/23/social-protection-algeria-launches-an-electronic-card-for-the-benefit-of-the-most-vulnerable)
  - Financial Afrik (URL date 2026-01-23) — electronic social-protection card; country-specific dated.
  - context: Year 2026 · ds:dpi · Registries / Status
- [https://www.gide.com/en/news-insights/setting-up-of-the-national-authority-for-the-protection-of-personal-data-anpdp](https://www.gide.com/en/news-insights/setting-up-of-the-national-authority-for-the-protection-of-personal-data-anpdp)
  - Gide law-firm insight — setting up the ANPDP data-protection authority; analyst review of a specific instrument.
  - context: Year 2023/2025 · ds:dpi · Digital Id / Data Protection Act; Digital Id / Data Protection Authority Oversight; Digital Id / Data Sharing Rules
- [https://www.trade.gov/country-commercial-guides/algeria-digital-economy](https://www.trade.gov/country-commercial-guides/algeria-digital-economy)
  - trade.gov Algeria Digital Economy commercial guide — dated country reference (A-web per spec).
  - context: Year 2024/2025 · ds:dpi · Data Exchange / Digital Payments Integration; Data Exchange / Employment Services Integration; Data Exchange / Tax & Revenue Integration; Data Exchange / Universal Accessibility
- [https://www.wearetech.africa/en/fils-uk/news/tech/algeria-launches-dzair-services-to-centralize-public-digital-platforms](https://www.wearetech.africa/en/fils-uk/news/tech/algeria-launches-dzair-services-to-centralize-public-digital-platforms)
  - WeAreTech — Algeria launches DZair Services (public digital-platform hub); country-specific.
  - context: Year 2022/2025/2026 · ds:dpi · Data Exchange / AI/Analytics Capabilities; Data Exchange / Business Registration & Licensing Integration; Data Exchange / Operational Status; Data Exchange / Strategic Framework
- [https://www.wearetech.africa/en/fils-uk/news/tech/algeria-launches-national-framework-to-govern-public-data](https://www.wearetech.africa/en/fils-uk/news/tech/algeria-launches-national-framework-to-govern-public-data)
  - WeAreTech — Algeria national framework to govern public data; country-specific.
  - context: Year 2025/2026 · ds:dpi · Data Exchange / Data Sovereignty Provisions; Data Exchange / Enabling Legislation; Data Exchange / Implementation Roadmap; Data Exchange / National Planning & Statistics Integration
- [https://www.wearetech.africa/en/fils-uk/news/tech/algeria-to-launch-instant-payment-system-for-faster-more-efficient-transactions](https://www.wearetech.africa/en/fils-uk/news/tech/algeria-to-launch-instant-payment-system-for-faster-more-efficient-transactions)
  - WeAreTech — Algeria instant-payment system; country-specific.
  - context: Year 2024 · ds:dpi · Digital Pay / Digital Payment System Exists; Digital Pay / Pro-Poor Governance Mechanisms

## A-PDF · ingest (PDF) — Bill handles by hand  (1)

- [https://rm.coe.int/algeria-en/1680aef823](https://rm.coe.int/algeria-en/1680aef823)
  - Council of Europe Algeria document (PDF) — dated reference on data-protection/judicial oversight.
  - context: Year 2024 · ds:dpi · Digital Id / Judicial Oversight

## B · check first  (6)

- [https://asjp.cerist.dz/en/downArticle/196/11/3/278914](https://asjp.cerist.dz/en/downArticle/196/11/3/278914)
  - ASJP (Algerian scientific-journal platform) article, 2024/25 — academic, check-first / uncertain fetchability.
  - context: Year 2024/2025 · ds:dpi · Data Exchange / Agriculture System Integration; Data Exchange / Public Transparency; Data Exchange / Social Protection Integration; Data Exchange / Strategic Framework
- [https://imcra-az.org/uploads/public_files/2025-10/81246.pdf](https://imcra-az.org/uploads/public_files/2025-10/81246.pdf)
  - IMCRA journal PDF (2025-10) — academic, check-first / uncertain authority.
  - context: Year 2014/2017/2023/2024/2025 · ds:dpi · Data Exchange / Civil Registration & Vital Statistics Integration; Data Exchange / Digital ID Integration; Data Exchange / Sub-National Participation; Digital Id / Civil Registration Integration
- [https://tribetechie.com/algeria-launches-new-payment-system](https://tribetechie.com/algeria-launches-new-payment-system)
  - TribeTechie — unknown-quality outlet; payment-system news (2024), check-first.
  - context: Year 2024 · ds:dpi · Digital Pay / Digital Payment System Exists
- [https://we.hse.ru/en/irs/cas/passdz](https://we.hse.ru/en/irs/cas/passdz)
  - HSE (we.hse.ru) page — low-authority academic host, check-first.
  - context: Year 2022/2023/2024 · ds:dpi · Data Exchange / Business Registration & Licensing Integration; Data Exchange / Digital Payments Integration; Data Exchange / Driver Licensing Integration; Data Exchange / Education System Integration
- [https://www.ijisae.org/index.php/IJISAE/article/download/7737/6756/13153](https://www.ijisae.org/index.php/IJISAE/article/download/7737/6756/13153)
  - IJISAE journal article download (2026) — low-tier academic, check-first.
  - context: Year 2026 · ds:dpi · Registries / National Id integration
- [https://www.samenacouncil.org/samena_daily_news?news=109466](https://www.samenacouncil.org/samena_daily_news?news=109466)
  - SAMENA Council daily-news item (2026) — regional trade body, check-first.
  - context: Year 2026 · ds:dpi · Data Exchange / Operational Status

## C · lead only (do not cite)  (18)

- [https://blog.voveid.com/kyc-compliance-in-algeria-2025-guide-to-identity-verification-aml](https://blog.voveid.com/kyc-compliance-in-algeria-2025-guide-to-identity-verification-aml)
  - VoveID vendor KYC blog — marketing, lead-only.
  - context: Year 2024 · ds:dpi · Digital Id / KYC Enablement
- [https://cookie-script.com/privacy-laws/algeria-data-protection-law-18-07-and-amendments](https://cookie-script.com/privacy-laws/algeria-data-protection-law-18-07-and-amendments)
  - Cookie-Script cookie-consent vendor law summary — low-authority aggregator, lead-only.
  - context: Year 2025 · ds:dpi · ICT Infrastructure / Data Localisation Requirements; ICT Infrastructure / Data Protection Legislation
- <https://en.wikipedia.org/wiki/Draft:National_identity_card_(Algeria>
  - Wikipedia draft article — tertiary, lead-only.
  - context: Year 2017/2021/2024 · ds:dpi · Digital Id / Banking/Financial Services Use; Digital Id / Cost of Credential; Digital Id / Cross-Border Recognition; Digital Id / Digital ID System Exists
- [https://en.wikipedia.org/wiki/List_of_Internet_exchange_points](https://en.wikipedia.org/wiki/List_of_Internet_exchange_points)
  - Wikipedia list — tertiary, lead-only.
  - context: ds:dpi · ICT Infrastructure / Internet Exchange Point Presence
- [https://en.wikipedia.org/wiki/List_of_national_identity_card_policies_by_country](https://en.wikipedia.org/wiki/List_of_national_identity_card_policies_by_country)
  - Wikipedia list — tertiary, lead-only.
  - context: Year 2017 · ds:dpi · Digital Id / Enrollment Mandatory Status
- [https://github.com/GDGAlgiers/GDGAlgiers](https://github.com/GDGAlgiers/GDGAlgiers)
  - GitHub org (Google Dev Group Algiers) — community page, lead-only.
  - context: Year 2024 · ds:dpi · ICT Infrastructure / Developer and Tech Community
- [https://pikasim.com/esim-algeria](https://pikasim.com/esim-algeria)
  - PikaSIM eSIM vendor page — marketing, lead-only.
  - context: Year 2024 · ds:dpi · Digital Id / SIM Card Registration Use
- [https://prepaid-data-sim-card.fandom.com/wiki/Algeria](https://prepaid-data-sim-card.fandom.com/wiki/Algeria)
  - Fandom wiki — tertiary, lead-only.
  - context: Year 2024 · ds:dpi · Digital Id / SIM Card Registration Use
- [https://sahara-overland.com/algeria-3](https://sahara-overland.com/algeria-3)
  - Sahara Overland travel site — low-authority, lead-only.
  - context: Year 2024 · ds:dpi · Digital Id / Cross-Border Recognition
- [https://sofizpay.com/en/data-protection](https://sofizpay.com/en/data-protection)
  - SofizPay payment-vendor page — marketing, lead-only.
  - context: Year 2025 · ds:dpi · Digital Pay / Data Privacy Legislation Coverage
- [https://thegpcgroup.com/projects/algeria-national-cadastre-overview-assessment](https://thegpcgroup.com/projects/algeria-national-cadastre-overview-assessment)
  - GPC Group consultancy project page — marketing/case study, lead-only.
  - context: Year 1993 · ds:dpi · Registries / Separate cadastral register
- [https://uqudo.com/algeria-kyc-aml-services](https://uqudo.com/algeria-kyc-aml-services)
  - Uqudo vendor KYC/AML page — marketing, lead-only.
  - context: Year 2024 · ds:dpi · Digital Id / Banking/Financial Services Use
- [https://www.cookieyes.com/blog/algeria-data-protection-law](https://www.cookieyes.com/blog/algeria-data-protection-law)
  - CookieYes vendor blog — marketing, lead-only.
  - context: Year 2025 · ds:dpi · Digital Id / Data Protection Act
- [https://www.kaspersky.com/about/press-releases/2024](https://www.kaspersky.com/about/press-releases/2024)
  - Kaspersky press-release index (not country-specific) — vendor, lead-only.
  - context: ds:dpi · Digital Id / Security Reviews
- [https://www.linkedin.com/posts/amine-zerarka-b21760135_jo-87-national-data-governance-cyber-strategy-activity-7413695580285198336-0mK4](https://www.linkedin.com/posts/amine-zerarka-b21760135_jo-87-national-data-governance-cyber-strategy-activity-7413695580285198336-0mK4)
  - LinkedIn post — tertiary, lead-only (but flags JO-87 national data-governance/cyber strategy).
  - context: Year 2025 · ds:dpi · Data Exchange / Data Sovereignty Provisions
- [https://www.roafly.com/blog/how-to-get-internet-in-algeria](https://www.roafly.com/blog/how-to-get-internet-in-algeria)
  - Roafly travel blog — low-authority, lead-only.
  - context: Year 2024 · ds:dpi · Digital Id / SIM Card Registration Use
- [https://www.scribd.com/document/462996200/Gov-New-EID-Algeria](https://www.scribd.com/document/462996200/Gov-New-EID-Algeria)
  - Scribd document host — tertiary, lead-only.
  - context: Year 2017/2024 · ds:dpi · Digital Id / Biometric Data Collection; Digital Id / Digital Authentication Function; Digital Id / Maintenance
- [https://www.signzy.com/blogs/kyc-in-algeria-key-regulations-and-compliance-requirements](https://www.signzy.com/blogs/kyc-in-algeria-key-regulations-and-compliance-requirements)
  - Signzy vendor KYC blog — marketing, lead-only.
  - context: Year 2024 · ds:dpi · Digital Id / Banking/Financial Services Use; Digital Id / KYC Enablement

## D · resource / entity (not a dated source)  (28)

- [http://services.interieur.gov.dz/en](http://services.interieur.gov.dz/en)
  - Ministry of Interior services portal — standing gov resource/entity.
  - context: Year 2026 · ds:dpi · Registries / Scope; Registries / Status
- [https://aapi.dz/en/creation-dentreprise-en](https://aapi.dz/en/creation-dentreprise-en)
  - AAPI investment-promotion agency business-creation portal — standing entity.
  - context: Year 2026 · ds:dpi · Registries / Business register integration
- [https://algerianembassy.gr/index.php/en/consular-affairs/national-biometric-identity](https://algerianembassy.gr/index.php/en/consular-affairs/national-biometric-identity)
  - Algerian embassy (Athens) consular info page — standing resource.
  - context: Year 2017/2024 · ds:dpi · Digital Id / Cost of Credential; Digital Id / Sustainability
- [https://cgmilan.mfa.gov.dz/consular-services/the-national-identity-card](https://cgmilan.mfa.gov.dz/consular-services/the-national-identity-card)
  - Algerian consulate (Milan) consular page — standing resource.
  - context: Year 2024 · ds:dpi · Digital Id / Non-National Eligibility
- [https://cloudscene.com/service-provider/issal](https://cloudscene.com/service-provider/issal)
  - Cloudscene provider directory (ISSAL) — registry/directory.
  - context: Year 2026 · ds:dpi · ICT Infrastructure / Commercial Data Center Presence
- [https://consulat-paris-algerie.fr/les-principales-missions-dun-consulat/carte-nationale-didentite](https://consulat-paris-algerie.fr/les-principales-missions-dun-consulat/carte-nationale-didentite)
  - Algerian consulate (Paris) consular page — standing resource.
  - context: Year 2017 · ds:dpi · Digital Id / Cost of Credential
- [https://data.ipu.org/parliament/DZ/DZ-LC01](https://data.ipu.org/parliament/DZ/DZ-LC01)
  - IPU Parline parliament data page — registry/data reference.
  - context: Year 2026 · ds:dpi · Registries / Status
- [https://data.worldbank.org/indicator/SP.REG.BRTH.ZS?locations=DZ](https://data.worldbank.org/indicator/SP.REG.BRTH.ZS?locations=DZ)
  - World Bank indicator data page — registry/data reference.
  - context: Year 2019 · ds:dpi · Registries / Uptake
- [https://dataprotection.africa/algeria](https://dataprotection.africa/algeria)
  - Data Protection Africa country profile — standing reference page (cite-don't-absorb).
  - context: Year 2023 · ds:dpi · Digital Id / Data Protection Authority Oversight
- [https://dpimap.org/algeria](https://dpimap.org/algeria)
  - DPI Map country page — registry/reference.
  - context: Year 2017/2024/2025 · ds:dpi · Digital Id / Data Sharing Rules; Digital Id / Digital Authentication Function; Digital Id / Digital ID Specific Regulation; Digital Id / Digital ID System Exists
- [https://ec.europa.eu/eurostat/statistics-explained/index.php?title=Living_conditions_in_European_Neighbourhood_South_countries](https://ec.europa.eu/eurostat/statistics-explained/index.php?title=Living_conditions_in_European_Neighbourhood_South_countries)
  - Eurostat statistics-explained page — standing multi-country stats reference.
  - context: Year 2021 · ds:dpi · ICT Infrastructure / Electricity Affordability
- [https://embwashington.mfa.gov.dz/consular-services/national-identity-card](https://embwashington.mfa.gov.dz/consular-services/national-identity-card)
  - Algerian embassy (Washington) consular page — standing resource.
  - context: Year 2017/2024 · ds:dpi · Digital Id / Biometric Data Collection; Digital Id / Enrollment Eligibility Age; Digital Id / Non-National Eligibility; Digital Id / Sustainability
- [https://id4d.worldbank.org](https://id4d.worldbank.org)
  - World Bank ID4D homepage — standing resource/entity.
  - context: Year 2024 · ds:dpi · Digital Id / Sustainability
- [https://jibayatic.mfdgi.gov.dz](https://jibayatic.mfdgi.gov.dz)
  - Jibaya'tic DGI tax e-service portal — standing gov portal.
  - context: Year 2026 · ds:dpi · Registries / Status
- [https://macnibe.interieur.gov.dz](https://macnibe.interieur.gov.dz)
  - MACNIBE Interior-ministry biometric-ID portal — standing gov portal.
  - context: Year 2024 · ds:dpi · Digital Id / Digital ID System Exists
- [https://rise.esmap.org/country/algeria](https://rise.esmap.org/country/algeria)
  - RISE/ESMAP energy country page — registry/reference.
  - context: Year 2025 · ds:dpi · ICT Infrastructure / Off-Grid and Distributed Energy Policy
- [https://sidjilcom.cnrc.dz/en](https://sidjilcom.cnrc.dz/en)
  - CNRC Sidjilcom business-registry portal — standing registry.
  - context: Year 2026 · ds:dpi · Registries / Status
- [https://statbase.org/data/dza-global-cybersecurity-index](https://statbase.org/data/dza-global-cybersecurity-index)
  - Statbase data page (Global Cybersecurity Index) — registry/data.
  - context: Year 2024 · ds:dpi · ICT Infrastructure / National Cybersecurity Readiness
- [https://tradingeconomics.com/algeria/access-to-electricity-percent-of-population-wb-data.html](https://tradingeconomics.com/algeria/access-to-electricity-percent-of-population-wb-data.html)
  - TradingEconomics indicator page — registry/data.
  - context: Year 2023 · ds:dpi · ICT Infrastructure / Electricity Access Rate
- [https://www.africanenda.org/uploads/files/SIIPS2024_Consumer_Research_Algeria.pdf](https://www.africanenda.org/uploads/files/SIIPS2024_Consumer_Research_Algeria.pdf)
  - AfricaNenda SIIPS 2024 consumer-research (Algeria) — multi-country flagship (cite-don't-absorb).
  - context: Year 2021/2024 · ds:dpi · Digital Pay / Active Digital Payment Users; Digital Pay / Business-to-Business (B2B) Payments; Digital Pay / Government-to-Person (G2P) Payments
- [https://www.bank-of-algeria.dz/role-et-mission](https://www.bank-of-algeria.dz/role-et-mission)
  - Bank of Algeria role/mission page — standing entity.
  - context: Year 2023 · ds:dpi · Digital Pay / Central Bank Involvement in Governance
- [https://www.britacom.org/zt/BRPolicies/Algeria](https://www.britacom.org/zt/BRPolicies/Algeria)
  - BRITACOM (Belt&Road tax) policy page — standing policy reference.
  - context: Year 2020 · ds:dpi · Digital Pay / Person-to-Government (P2G) Payments; Digital Pay / Revenue Collection; Digital Pay / Tax Portal
- [https://www.ceicdata.com/en/algeria/population-and-urbanization-statistics/dz-completeness-of-birth-registration](https://www.ceicdata.com/en/algeria/population-and-urbanization-statistics/dz-completeness-of-birth-registration)
  - CEIC data page — registry/data.
  - context: Year 2019 · ds:dpi · Registries / Uptake
- [https://www.dlapiperdataprotection.com/?t=law&c=DZ](https://www.dlapiperdataprotection.com/?t=law&c=DZ)
  - DLA Piper Data Protection Laws tool — reference/directory.
  - context: Year 2025 · ds:dpi · Data Exchange / Data Sovereignty Provisions; Data Exchange / Enabling Legislation
- [https://www.joradp.dz](https://www.joradp.dz)
  - Journal Officiel (JORADP) official-gazette portal — standing legal-instrument resource.
  - context: ds:dpi · Digital Id / Security Reviews
- [https://www.mfdgi.gov.dz/fr](https://www.mfdgi.gov.dz/fr)
  - DGI (tax directorate) homepage — standing entity.
  - context: Year 2026 · ds:dpi · Registries / Scope; Registries / Status
- [https://www.mjustice.gov.dz/en/obtaining-the-algerian-certificate-of-nationality-by-presenting-the-biometric-national-identity-card-or-the-biometric-national-passport](https://www.mjustice.gov.dz/en/obtaining-the-algerian-certificate-of-nationality-by-presenting-the-biometric-national-identity-card-or-the-biometric-national-passport)
  - Ministry of Justice standing procedural page — resource.
  - context: ds:dpi · Digital Id / Legal Proof Status
- [https://www.wipo.int/edocs/gii-ranking/2024/dz.pdf](https://www.wipo.int/edocs/gii-ranking/2024/dz.pdf)
  - WIPO Global Innovation Index 2024 Algeria ranking PDF — multi-country flagship (cite-don't-absorb).
  - context: Year 2024 · ds:dpi · ICT Infrastructure / Global Innovation Index Ranking

## Excluded — pre-2024 (dropped at assessment)  (9)

- [http://www.xinhuanet.com/english/2019-11/21/c_138570720.htm](http://www.xinhuanet.com/english/2019-11/21/c_138570720.htm)
  - URL date 2019-11 — pre-2024.
  - context: Year 2019 · ds:dpi · Registries / Uptake
- [https://asjp.cerist.dz/en/downArticle/76/12/2/272965](https://asjp.cerist.dz/en/downArticle/76/12/2/272965)
  - ASJP article, dataset Year 2014 — pre-2024.
  - context: Year 2014 · ds:dpi · Digital Id / Civil Registration Integration; Digital Id / Electronic Database
- [https://documents1.worldbank.org/curated/en/901031468191953083/pdf/464130BRI0Box31ia010ICTed0Survey111.pdf](https://documents1.worldbank.org/curated/en/901031468191953083/pdf/464130BRI0Box31ia010ICTed0Survey111.pdf)
  - World Bank ICT-education survey PDF — legacy curated doc (~2008), pre-2024.
  - context: ds:dpi · ICT Infrastructure / Tertiary ICT/STEM Education
- [https://id4d.worldbank.org/sites/id4d.worldbank.org/files/2018_ID4D_Annual_Report.pdf](https://id4d.worldbank.org/sites/id4d.worldbank.org/files/2018_ID4D_Annual_Report.pdf)
  - ID4D 2018 Annual Report — pre-2024.
  - context: Year 2021 · ds:dpi · Digital Id / Population Coverage
- [https://ojs.journalsdg.org/jlss/article/view/4261](https://ojs.journalsdg.org/jlss/article/view/4261)
  - JLSS journal article, dataset Year 2018 — pre-2024.
  - context: Year 2018 · ds:dpi · Digital Pay / Consumer Protection Framework for Payments
- [https://securitytoday.com/articles/2008/03/31/algeria-uses-technology.aspx](https://securitytoday.com/articles/2008/03/31/algeria-uses-technology.aspx)
  - URL date 2008-03 — pre-2024.
  - context: Year 2024 · ds:dpi · Digital Id / Healthcare Access Use
- [https://www.bank-of-algeria.dz/wp-content/uploads/2023/11/Bulletin-n%C2%B061-English.pdf](https://www.bank-of-algeria.dz/wp-content/uploads/2023/11/Bulletin-n%C2%B061-English.pdf)
  - Bank of Algeria bulletin, uploads/2023/11 — pre-2024.
  - context: Year 2023 · ds:dpi · Digital Pay / Public Performance Reporting
- [https://www.biometricupdate.com/201909/id4d-digital-identity-projects](https://www.biometricupdate.com/201909/id4d-digital-identity-projects)
  - BiometricUpdate /201909/ — pre-2024.
  - context: Year 2017/2021 · ds:dpi · Digital Id / Biometric Data Collection; Digital Id / Maintenance; Digital Id / Population Coverage
- [https://www.cnn.com/2023/11/11/africa/afrilabs-powering-africa-tech-revolution-intl](https://www.cnn.com/2023/11/11/africa/afrilabs-powering-africa-tech-revolution-intl)
  - CNN URL date 2023-11 (continental AfriLabs) — pre-2024.
  - context: Year 2023 · ds:dpi · ICT Infrastructure / Technology and Innovation Hubs

---

## Phase-2 run summary (fetch → /new-queue)

**16 clips placed** in `/new-queue` (of 20 A-web candidates). **4 skipped:**
- Gide — *Setting up of the ANPDP* — true pub **2023-07-25** → **skipped (pre-2024)**. (A newer Gide piece, "Personal Data Protection: An Overview of Algerian Regulations", dated **1 July 2026**, is referenced on the page — better A-web lead for Bill to chase.)
- AlgeriaTech — *Data Protection Law 18-07 business guide* (pub 2025-12-06) — **skipped (no body)**: page is sign-in-gated, returned header only on two attempts. Secondary anyway (Gide 2026 + trade.gov cover the same instrument).
- Financial Afrik — *electronic social-protection card* (pub 2026-01-23) — **skipped (no body)**: fetch returned site chrome only on two attempts. Distinct event (e-social card for vulnerable groups) — worth a manual grab.
- African Wireless Communications — *Algeria prepares for digital transformation* (itemid=8015) — **skipped (no body/thin)**: title only, no article body. Same "strategic framework" thread is covered by the WeAreTech public-data-governance clip.

**Date notes / corrections at fetch:**
- AL24 DZ-MOB-PAY: no on-page date → `published: 2024` (year precision); late-2024 preview of the Jan-2025 launch (cites Oct-2024 data, Switch Mobile Jun-2024).
- Ecofin ids decoded to true dates: 50150 → **2025-11-05**, 51891 → **2026-01-13**, 53004 → **2026-02-18** (all confirmed on-page).
- BiometricUpdate /202511/ → **2025-11-10**; Mobile ID World → **2025-11-11** (same event).

**Merge clusters flagged (for ingest):**
- **Nov-2025 digital-ID & trust-services draft law** — 3 clips (BiometricUpdate 2025-11-10, Mobile ID World 2025-11-11, Ecofin 2025-11-05). One event page; BiometricUpdate / Mobile ID World are primaries, Ecofin secondary. Updates the 2015 e-signature law; links to biometric ID card; part of Digital Algeria 2030.
- **Payments — three distinct rails, keep separate but cluster:** DZ MOB PAY mobile-pay app (QR, BNA/Al Salam/Algeria Post, Jan 2025) · domestic instant-payment switch (Bank of Algeria/CPI, from Oct 2024) · PAPSS cross-border (Bank of Algeria = 18th member, Aug 2025).
- **Public-data governance** — WeAreTech national data-governance framework = **Presidential Decree 25-350 of 30 Dec 2025**; reconcile against the LinkedIn "JO-87 national data-governance / cyber strategy" C-lead.
- **Digital Algeria 2030 / HCN** — recurring backbone across AI-in-gov, cloud-market, Dzair Services and data-framework clips (HCN est. by Presidential Decree 23-314, 6 Sep 2023; strategy unveiled May 2025; 500+ projects 2025–26; El Mohammedia + Blida + five regional data centres; Oran AI supercomputing centre, ground broken 16 Mar 2025).

**Left for Bill:** A-PDF 1 (Council of Europe Algeria doc) · B 6 · C 18 · D 28. Strong entity-page candidates in D: HCN/High Commission for Digitalisation, ANPDP (anpdp.dz), Bank of Algeria, DGI (Jibaya'tic/Tabioucom), CNRC Sidjilcom, JORADP, Algérie Télécom.
