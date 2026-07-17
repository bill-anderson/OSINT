# Tunisia (TUN) — dataset→wiki intake review

*Run 2026-07-17 · country-ingest workflow (Phase 1 assessment + Phase 2 A-web fetch). Parent XNA.*

## Counts

- **Total distinct source URLs:** 85
- **Already held (hub):** 0
- **Excluded (pre-2024, by URL date):** 6
- **New & in-window:** 79
- **Buckets:** A-web 12 · A-PDF 3 · B 19 · C 16 · D 29

## Hub coverage

Hub `wiki/places/TUN.md` is a **thin one-event stub** (2.6 KB): only the 2026-01-19 EBRD €190m / Tunisie Telecom digital-infrastructure loan (5G/FTTH/MEDUSA cable). None of the dataset candidates overlaps it → **0 held**; the whole DPI record (digital ID / e-Houwiya, e-payments, CRVS, data protection) is new. Tunisia sits under **XNA** (North-African comparator, outside the SSA core), so the corpus skews toward identity and payments with heavy portal/reference bulk.

## A-web · ingest (non-PDF) — CC fetches in Phase 2  (12)

- [https://cyber.ee/resources/news/UXP-tunisia-2024](https://cyber.ee/resources/news/UXP-tunisia-2024)
  - Cybernetica UXP Tunisia 2024 deployment news. yrs 2022,2023,2024 · Data Exchange / AI/Analytics Capabilities; Data Exchange / Agriculture System Integration — Ministry of Agriculture has some digital services. No specific evidence of agriculture/farmer registry integration with UXP interoperability platform.
- [https://idtechwire.com/e-houwiya-a-milestone-in-tunisias-digital-transformation-roadmap-2025](https://idtechwire.com/e-houwiya-a-milestone-in-tunisias-digital-transformation-roadmap-2025)
  - IDTechWire country identity reporting. yrs 2022,2024,2025 · Digital Id / Banking/Financial Services Use; Digital Id / Cost of Credential — E-Houwiya provides full digital authentication functionality: two-factor authentication (login/password + SMS OTP), X.509 PKI certificates and cryptographic keys, qualified digital
- [https://idtechwire.com/tunisia-to-get-biometric-ids-in-h1-of-2025](https://idtechwire.com/tunisia-to-get-biometric-ids-in-h1-of-2025)
  - IDTechWire country identity reporting. yrs 2024 · Digital Id / Cross-Border Recognition; Digital Id / Ministry of Finance Oversight — The Ministry of Finance participates in the biometric ID steering committee (noted in April 2024 ministerial session chaired by PM Hachani, attended by Minister of Finance Sihem Ne
- [https://mobileidworld.com/e-houwiya-a-milestone-in-tunisias-digital-transformation-roadmap-2025](https://mobileidworld.com/e-houwiya-a-milestone-in-tunisias-digital-transformation-roadmap-2025)
  - MobileIDWorld country identity reporting. yrs 2020,2022 · Digital Id / Government Portal Authentication; Digital Id / Population Coverage — E-Houwiya serves as the centralized SSO for Tunisian government portals including E-Bawaba (official e-government portal), E-CNAM (national health insurance), E-People, E-CNSS (soc
- [https://www.accessnow.org/press-release/tunisia-biometric-id-passport-bills-passed](https://www.accessnow.org/press-release/tunisia-biometric-id-passport-bills-passed)
  - Access Now Tunisia digital-ID analysis. yrs 2022 · Digital Id / Digital ID System Exists — Tunisia operates two foundational digital ID systems fully deployed nationwide: the CIN (Carte d'Identité Nationale, paper card with digital database, mandatory for citizens 18+) a
- [https://www.accessnow.org/tunisia-must-open-mobile-id-black-box](https://www.accessnow.org/tunisia-must-open-mobile-id-black-box)
  - Access Now Tunisia digital-ID analysis. yrs 2007,2022,2024 · Digital Id / Data Protection Authority Oversight; Digital Id / Data Sharing Rules — E-Houwiya serves as the centralized SSO for Tunisian government portals including E-Bawaba (official e-government portal), E-CNAM (national health insurance), E-People, E-CNSS (soc
- [https://www.accessnow.org/tunisias-digitization-programs-threaten-the-privacy-of-millions](https://www.accessnow.org/tunisias-digitization-programs-threaten-the-privacy-of-millions)
  - Access Now Tunisia digital-ID analysis. yrs 2023 · Digital Pay / Data Breach Notification Requirements — Breach notification obligations exist in general privacy/cyber frameworks: sources describe notification to authorities (INPDP/public prosecutor) for certain incidents, and Decree-
- [https://www.biometricupdate.com/202503/tunisia-drives-digitization-agenda-forward-while-navigating-risks](https://www.biometricupdate.com/202503/tunisia-drives-digitization-agenda-forward-while-navigating-risks)
  - BiometricUpdate country identity reporting. yrs 2022,2023,2025 · Digital Id / KYC Enablement; Digital Id / Maintenance — E-Houwiya is integrated with the banking sector for remote onboarding and KYC compliance, following Central Bank of Tunisia KYC regulations published February 28, 2025. The CIN is 
- [https://www.ecofinagency.com/telecom/2309-45916-south-africa-mauritius-and-tunisia-lead-e-government-progress-in-africa](https://www.ecofinagency.com/telecom/2309-45916-south-africa-mauritius-and-tunisia-lead-e-government-progress-in-africa)
  - Ecofin country reporting (verify DDMM date). yrs 2024 · ICT Infrastructure / E-Government Development — EGDI 0.6935
- [https://www.wearetech.africa/en/fils-uk/news/public-management/tunisia-unveils-digital-platform-to-boost-education-transparency-equity](https://www.wearetech.africa/en/fils-uk/news/public-management/tunisia-unveils-digital-platform-to-boost-education-transparency-equity)
  - WeAreTech country reporting. School — Tunisia has implemented national digital platforms like Tarbia.tn (launched under World Bank-supported PREFAT project targeting lagging/rural regions), enabling parents to track re
- [https://www.worldbank.org/en/news/feature/2024/11/14/tunisians-share-how-their-life-changed-through-the-amen-program](https://www.worldbank.org/en/news/feature/2024/11/14/tunisians-share-how-their-life-changed-through-the-amen-program)
  - WB Tunisia Amen social-registry feature 2024-11. yrs 2019,2023 · Registries / Status; Registries / Uptake — AMEN social registry digital, covers poor households.
- [https://www.zawya.com/en/economy/north-africa/tunisia-biometric-id-card-and-passport-usage-to-begin-in-h1-2025-bn9vuol5](https://www.zawya.com/en/economy/north-africa/tunisia-biometric-id-card-and-passport-usage-to-begin-in-h1-2025-bn9vuol5)
  - Zawya country reporting. yrs 2024 · Digital Id / Cross-Border Recognition; Digital Id / Ministry of Finance Oversight — The Ministry of Finance participates in the biometric ID steering committee (noted in April 2024 ministerial session chaired by PM Hachani, attended by Minister of Finance Sihem Ne

## A-PDF · ingest (PDF) — Bill handles by hand  (3)

- [https://crvssystems.ca/sites/default/files/assets/files/SocialProtection_5_Tunisia_e_WEB.pdf](https://crvssystems.ca/sites/default/files/assets/files/SocialProtection_5_Tunisia_e_WEB.pdf)
  - CRVS country snapshot/webinar PDF (CRVS Systems / Bruyas). yrs 2005,2015,2020,2024 · Digital Id / Biometric Data Collection; Digital Id / Civil Registration Integration — Civil registration (Madania system) is partially integrated with the national ID system. The RIUC was initialized from Madania + CIN data and permanent links for real-time birth/de
- [https://paradigmhq.org/wp-content/uploads/2024/06/Tunisia-Country-Report.pdf](https://paradigmhq.org/wp-content/uploads/2024/06/Tunisia-Country-Report.pdf)
  - Paradigm Initiative Tunisia country report PDF. yrs 2023 · Digital Id / Security Reviews — Decree-Law 2023-17 on cybersecurity mandates annual IT security audits for entities processing personal data, with reporting to the National Cybersecurity Agency (ANCS). The Minist
- [https://www.webdesign.tn/wp-content/uploads/2025/02/Bulletin_des_paiements_011_fr.pdf](https://www.webdesign.tn/wp-content/uploads/2025/02/Bulletin_des_paiements_011_fr.pdf)
  - BCT Bulletin des paiements 2025 PDF. yrs 2025 · Digital Pay / Business-to-Business (B2B) Payments; Digital Pay / Digital Payment System Exists — Business-to-business (B2B) electronic transfers are supported through bank payment rails/RTGS; BCT payment bulletin evidence indicates strong usage of electronic transfers (viremen

## B · check first  (19)

- [https://adaimpact.lu/en/blog-news-ada/ada-promotes-development-inclusive-finance-tunisia](https://adaimpact.lu/en/blog-news-ada/ada-promotes-development-inclusive-finance-tunisia)
  - ADA inclusive-finance blog — old. yrs 2018 · Digital Pay / Pro-Poor Governance Mechanisms — Tunisia adopted a National Financial Inclusion Strategy (NFIS) 2018–2022 (validated by the Ministerial Council) that includes digital finance/digital payments as an inclusion lever
- [https://carthagemagazine.com/tunisia-rolls-out-online-car-tax-payment-platform-in-2026](https://carthagemagazine.com/tunisia-rolls-out-online-car-tax-payment-platform-in-2026)
  - unknown outlet — country-specific, check. yrs 2026 · Digital Pay / Person-to-Government (P2G) Payments — Person-to-government (P2G) digital payments are evidenced: the BCT/IFC Paysmart platform supports bill payments (utilities and other fees); additional evidence indicates online pay
- [https://datareportal.com/reports/digital-2026-tunisia](https://datareportal.com/reports/digital-2026-tunisia)
  - unmatched domain — human check. yrs 2025 · ICT Infrastructure / Mobile Phone Penetration; ICT Infrastructure / Smartphone Adoption — 125% connections
- [https://dispatchrisk.com/african-payment-system-to-facilitate-cross-border-payments](https://dispatchrisk.com/african-payment-system-to-facilitate-cross-border-payments)
  - regional payments piece — unknown outlet. yrs 2024 · Digital Pay / Cross-Border Payment Functionality — Cross-border interoperability is developing: Tunisia (via BCT) joined PAPSS (Pan-African Payment and Settlement System) in Feb 2024, enabling regional cross-border payments integra
- [https://documents1.worldbank.org/curated/en/368931596533672339/pdf/Diagnostic-of-ID-Systems-in-Tunisia.pdf](https://documents1.worldbank.org/curated/en/368931596533672339/pdf/Diagnostic-of-ID-Systems-in-Tunisia.pdf)
  - WB Tunisia ID diagnostic — likely pre-2024, verify. yrs 2005,2007,2020,2022,2024 · Digital Id / Biometric Data Collection; Digital Id / Civil Registration Integration — Civil registration (Madania system) is partially integrated with the national ID system. The RIUC was initialized from Madania + CIN data and permanent links for real-time birth/de
- [https://energypedia.info/wiki/Tunisia_Energy_Situation](https://energypedia.info/wiki/Tunisia_Energy_Situation)
  - off-core energy wiki. yrs 2015 · ICT Infrastructure / Electricity Affordability — Household <1-2% income low tariffs subsidized
- [https://ggim.un.org/meetings/2013-Seminar/documents/Tunisia%20ESCWA.pdf](https://ggim.un.org/meetings/2013-Seminar/documents/Tunisia%20ESCWA.pdf)
  - UN-GGIM 2013 seminar PDF — old. yrs 2013 · Registries / Separate cadastral register — Separate cadastral database exists (Cadastral BD) with GIS.
- [https://iafrica.com/tunisia-advances-digital-health-reform-with-ai-and-national-cloud-strategy](https://iafrica.com/tunisia-advances-digital-health-reform-with-ai-and-national-cloud-strategy)
  - unknown outlet — check. yrs 2026 · ICT Infrastructure / Government Data Center / Cloud Strategy — National cloud strategy for health data, operational
- [https://openknowledge.worldbank.org/entities/publication/797bdac9-6606-5dfd-a577-62f6fa336e94](https://openknowledge.worldbank.org/entities/publication/797bdac9-6606-5dfd-a577-62f6fa336e94)
  - off-core electrification report. yrs 2023 · ICT Infrastructure / Urban-Rural Electrification Gap — Gap <10pp assumed from overall 100%
- [https://partechpartners.com/africa-reports/2024-africa-tech-venture-capital-report](https://partechpartners.com/africa-reports/2024-africa-tech-venture-capital-report)
  - Partech regional VC report. yrs 2024 · ICT Infrastructure / Tech Startup Ecosystem — Limited funding, no major VC reported for Tunisia
- [https://trendsnafrica.com/central-bank-of-tunisia-reports-81-surge-in-mobile-payments-as-tunisia-accelerates-its-digital-transformation-in-2025](https://trendsnafrica.com/central-bank-of-tunisia-reports-81-surge-in-mobile-payments-as-tunisia-accelerates-its-digital-transformation-in-2025)
  - unknown outlet — check. yrs 2025 · Digital Pay / Active Digital Payment Users; Digital Pay / Digital Payment System Exists — P2B/merchant payments exist via mobile wallets/QR: BCT-reported mobile-payment composition includes merchant payments at 17.8% of transactions in 2025; QNBpay describes merchant pa
- [https://tunisia.unfpa.org/sites/default/files/pub-pdf/knowledge_brief_on_birth_registration_in_tunisia.pdf](https://tunisia.unfpa.org/sites/default/files/pub-pdf/knowledge_brief_on_birth_registration_in_tunisia.pdf)
  - UNFPA birth-reg brief — likely old. yrs 2005,2018 · Registries / Status; Registries / Uptake — Digital civil register (Madania system) fully deployed nationwide since 2005, central database hosted by CNI, interconnected 350+ offices.
- [https://www.africanenda.org/uploads/files/EN_SIIPS_Report_web.pdf](https://www.africanenda.org/uploads/files/EN_SIIPS_Report_web.pdf)
  - AfricaNenda SIIPS regional report. yrs 2025 · Digital Pay / Digital Payment System Exists — Tunisia has a live mobile money instant payment infrastructure since 2018 per AfricaNenda SIIPS (fully deployed domestic system governed by the Central Bank). Evidence of interoper
- [https://www.entreprises-magazine.com/banque-centrale-de-tunisie-quelles-sont-les-conditions-dadhesion-au-systeme-de-reglement-elyssa-rtgs](https://www.entreprises-magazine.com/banque-centrale-de-tunisie-quelles-sont-les-conditions-dadhesion-au-systeme-de-reglement-elyssa-rtgs)
  - unknown outlet — check. yrs 2022 · Digital Pay / Scheme Rules Publicly Available — Scheme/system rules are publicly accessible: BCT publishes Elyssa-RTGS adhesion conditions/rules (operational requirements and participant obligations) online; media also reference
- [https://www.esmap.org/setting-tunisia-on-an-ambitious-pathway-for-a-sustainable-e](https://www.esmap.org/setting-tunisia-on-an-ambitious-pathway-for-a-sustainable-e)
  - off-core energy project page. ICT Infrastructure / Off-Grid and Distributed Energy Policy — Renewables policy includes PV for isolated
- [https://www.eumedbridge.eu/news/tunisia-eu-supports-digitisation-justice-system-part-support-programme](https://www.eumedbridge.eu/news/tunisia-eu-supports-digitisation-justice-system-part-support-programme)
  - EU-Med project news (undated). Police — No evidence found of digital case management systems at rural police stations or gendarmerie posts in Tunisia. Extensive searches reveal digital efforts in cybercrime investigation
- [https://www.samenacouncil.org/samena_daily_news?news=102086](https://www.samenacouncil.org/samena_daily_news?news=102086)
  - SAMENA regional telecom council. yrs 2024 · Digital Id / SIM Card Registration Use — SIM card registration in Tunisia requires a national ID (CIN) or passport, and is mandatory under telecommunications legislation. In September 2024, the Ministry of Communication T
- [https://www.worldbank.org/en/news/feature/2026/01/29/transforming-early-education-in-tunisia-prefat-s-impact-on-access-quality-and-innovation](https://www.worldbank.org/en/news/feature/2026/01/29/transforming-early-education-in-tunisia-prefat-s-impact-on-access-quality-and-innovation)
  - WB Tunisia early-education feature — off-core. School — Tunisia has implemented national digital platforms like Tarbia.tn (launched under World Bank-supported PREFAT project targeting lagging/rural regions), enabling parents to track re
- [https://www.worldbank.org/en/news/press-release/2025/05/28/new-project-to-boost-tunisia-s-health-system-and-pandemic-response](https://www.worldbank.org/en/news/press-release/2025/05/28/new-project-to-boost-tunisia-s-health-system-and-pandemic-response)
  - WB Tunisia health PR — off DPI-core. Clinic — Rural primary healthcare clinics in Tunisia predominantly use paper-based recording for patient data, including nursing documentation, which remains largely manual across public fa

## C · lead only (do not cite)  (16)

- [https://apps.apple.com/mt/app/e-houwiya/id6503291164](https://apps.apple.com/mt/app/e-houwiya/id6503291164)
  - app-store listing. yrs 2023 · Digital Id / Non-National Eligibility — Non-Tunisian residents are required to carry a residence card (carte de résidence) issued by the Ministry of Interior, usable for KYC purposes. The CIN is for Tunisian nationals on
- [https://blog.voveid.com/kyc-compliance-in-tunisia-a-2025-guide-for-digital-businesses](https://blog.voveid.com/kyc-compliance-in-tunisia-a-2025-guide-for-digital-businesses)
  - VoveID vendor KYC marketing. yrs 2025 · Digital Id / Banking/Financial Services Use; Digital Id / KYC Enablement — E-Houwiya is integrated with the banking sector for remote onboarding and KYC compliance, following Central Bank of Tunisia KYC regulations published February 28, 2025. The CIN is 
- [https://caseguard.com/articles/act-no-2004-63-tunisian-privacy-protection](https://caseguard.com/articles/act-no-2004-63-tunisian-privacy-protection)
  - CaseGuard vendor guide. yrs 2004 · Digital Pay / Data Privacy Legislation Coverage — Tunisia has a general data protection law (Organic Law 2004-63) and discussion of GDPR-aligned updates (e.g., draft 2019-36) but no payment-system-specific privacy regime was evide
- [https://edicomgroup.com/blog/status-electronic-invoicing-tunisia](https://edicomgroup.com/blog/status-electronic-invoicing-tunisia)
  - e-invoicing vendor blog. yrs 2026 · Digital Pay / Revenue Collection — Government revenue digitization initiatives exist: sources describe electronic invoicing requirements and expansion under the 2026 finance law (supporting tax compliance and revenu
- [https://github.com/yassineyahyaoui/top-tunisian-github-users](https://github.com/yassineyahyaoui/top-tunisian-github-users)
  - GitHub — lead only. yrs 2022 · ICT Infrastructure / Developer and Tech Community — 1000+ GitHub users in Tunisia developing community
- [https://lucapacioli.com.tn/blog/tunisia-e-tax-filing-investor-guide](https://lucapacioli.com.tn/blog/tunisia-e-tax-filing-investor-guide)
  - advisory vendor blog. yrs 2025,2026 · Digital Pay / Person-to-Government (P2G) Payments; Digital Pay / Tax Portal — A national tax declaration/settlement portal is evidenced (impots.finances.gov.tn referenced in guidance) enabling online filing/payment for taxes; additional evidence includes onl
- [https://online.flippingbook.com/view/574977573](https://online.flippingbook.com/view/574977573)
  - unattributed flipbook. yrs 2019 · ICT Infrastructure / Technology and Innovation Hubs — 36 hubs
- [https://pikasim.com/esim-tunisia](https://pikasim.com/esim-tunisia)
  - eSIM retailer. yrs 2024 · Digital Id / SIM Card Registration Use — SIM card registration in Tunisia requires a national ID (CIN) or passport, and is mandatory under telecommunications legislation. In September 2024, the Ministry of Communication T
- [https://pmc.ncbi.nlm.nih.gov/articles/PMC11583327](https://pmc.ncbi.nlm.nih.gov/articles/PMC11583327)
  - PubMed academic host — lead only. Clinic — Rural primary healthcare clinics in Tunisia predominantly use paper-based recording for patient data, including nursing documentation, which remains largely manual across public fa
- [https://taxdo.com/resources/global-tax-id-validation-guide/tunisia](https://taxdo.com/resources/global-tax-id-validation-guide/tunisia)
  - tax-ID validation vendor guide. yrs 2025 · Digital Pay / Tax Portal; Registries / National Id integration — A national tax declaration/settlement portal is evidenced (impots.finances.gov.tn referenced in guidance) enabling online filing/payment for taxes; additional evidence includes onl
- [https://usesmileid.com/countries/tunisia](https://usesmileid.com/countries/tunisia)
  - SmileID vendor page. yrs 2023,2025 · Digital Id / Banking/Financial Services Use; Digital Id / Non-National Eligibility — The CIN is the primary accepted KYC document for banking (Organic Law 2015-26; Central Bank circulars). E-Houwiya is accepted (not mandatory) for remote banking onboarding and KYC 
- [https://vatabout.com/tunisias-2026-finance-law-expands-e-invoicing-rules](https://vatabout.com/tunisias-2026-finance-law-expands-e-invoicing-rules)
  - tax vendor blog. yrs 2026 · Digital Pay / Revenue Collection — Government revenue digitization initiatives exist: sources describe electronic invoicing requirements and expansion under the 2026 finance law (supporting tax compliance and revenu
- [https://www.horus-df.com/assignments/financial-inclusion/support-reform-process-framework-national-financial-inclusion](https://www.horus-df.com/assignments/financial-inclusion/support-reform-process-framework-national-financial-inclusion)
  - consultancy assignment page. yrs 2018 · Digital Pay / Pro-Poor Governance Mechanisms — Tunisia adopted a National Financial Inclusion Strategy (NFIS) 2018–2022 (validated by the Ministerial Council) that includes digital finance/digital payments as an inclusion lever
- [https://www.linkedin.com/pulse/tunisias-financial-revolution-navigating-digital-2025-manel-harrathi-gux8e](https://www.linkedin.com/pulse/tunisias-financial-revolution-navigating-digital-2025-manel-harrathi-gux8e)
  - LinkedIn post — lead only. yrs 2025 · Digital Pay / Consumer Protection Framework for Payments; Digital Pay / Digital Payment System Exists — Evidence of consumer protection specific to digital payments was limited; available sources emphasize BCT-led digital transformation/financial inclusion and general protections in 
- [https://www.reddit.com/r/Tunisia/comments/1nhyqeo/when_will_tunisias_new_biometric_id_cards_start](https://www.reddit.com/r/Tunisia/comments/1nhyqeo/when_will_tunisias_new_biometric_id_cards_start)
  - Reddit thread — lead only. yrs 2024 · Digital Id / Enrollment Eligibility Age — Under Organic Law 2024-22 (March 2024), the CIN is mandatory for Tunisian nationals aged 15 and over. Exceptionally, it can be issued to those aged 12-15 with parental consent. The
- [https://www.uniranks.com/ranking/verified-universities/tunisia](https://www.uniranks.com/ranking/verified-universities/tunisia)
  - ranking aggregator. yrs 2026 · ICT Infrastructure / Tertiary ICT/STEM Education — Multiple universities with engineering/ICT programs e.g. Tunis El Manar

## D · resource / entity (not a dated source)  (29)

- [https://cloudscene.com/market/data-centers-in-tunisia/tunis](https://cloudscene.com/market/data-centers-in-tunisia/tunis)
  - Cloudscene DC directory. yrs 2025 · ICT Infrastructure / Commercial Data Center Presence — 2 colocation data centers in Tunis, Tier I-II small scale
- [https://data.worldbank.org/indicator/SP.REG.BRTH.ZS?locations=TN](https://data.worldbank.org/indicator/SP.REG.BRTH.ZS?locations=TN)
  - WB data indicator page. yrs 2018 · Registries / Uptake — Birth registration 99.9-100% complete since 2001; death >95%; proxy for population coverage.
- [https://home.registre-entreprises.tn](https://home.registre-entreprises.tn)
  - Tunisia business registry portal. yrs 2025 · Registries / Status — Registre National des Entreprises (RNE) fully digital, online registration, public portal.
- [https://home.registre-entreprises.tn/echange_des_donnees](https://home.registre-entreprises.tn/echange_des_donnees)
  - Tunisia business registry portal. yrs 2026 · Registries / Data exchange integration — RNE has policy for instant electronic data exchange (web services).
- [https://inflect.com/datacenters/africa/tunisia](https://inflect.com/datacenters/africa/tunisia)
  - Inflect DC directory. yrs 2025 · ICT Infrastructure / Cloud Services Availability — No local hyperscale, distant regions Marseille
- [https://legislation-securite.tn/latest-laws/loi-organique-n-2004-63-du-27-juillet-2004-portant-sur-la-protection-des-donnees-a-caractere-personnel](https://legislation-securite.tn/latest-laws/loi-organique-n-2004-63-du-27-juillet-2004-portant-sur-la-protection-des-donnees-a-caractere-personnel)
  - legal-instrument text — cite-don't-absorb. yrs 2004,2024 · Digital Id / Data Protection Act; Digital Id / Individual Data Access — Tunisian law provides individuals the right to access their personal data. Organic Law 2004-63 (Art. 32) grants the right to consult, correct, rectify, update, or erase personal da
- [https://legislation-securite.tn/latest-laws/loi-organique-n-2024-22-du-11-mars-2024-modifiant-et-completant-la-loi-n-93-27-du-22-mars-1993-relative-a-la-carte-nationale-didentite](https://legislation-securite.tn/latest-laws/loi-organique-n-2024-22-du-11-mars-2024-modifiant-et-completant-la-loi-n-93-27-du-22-mars-1993-relative-a-la-carte-nationale-didentite)
  - legal-instrument text — cite-don't-absorb. yrs 2007,2022,2024 · Digital Id / Biometric Data Collection; Digital Id / Data Sharing Rules — E-Houwiya provides full digital authentication functionality: two-factor authentication (login/password + SMS OTP), X.509 PKI certificates and cryptographic keys, qualified digital
- [https://statbase.org/data/tun-global-cybersecurity-index](https://statbase.org/data/tun-global-cybersecurity-index)
  - Statbase data page. yrs 2024 · ICT Infrastructure / National Cybersecurity Readiness — GCI 81.93
- [https://statranker.org/digital-innovation/top-100-countries-by-price-of-1gb-mobile-data-usd-2025](https://statranker.org/digital-innovation/top-100-countries-by-price-of-1gb-mobile-data-usd-2025)
  - Statranker data page. yrs 2025 · ICT Infrastructure / Mobile Data Affordability — 0.24% GNIpc for 1GB (from table position)
- [https://taxsummaries.pwc.com/tunisia](https://taxsummaries.pwc.com/tunisia)
  - PwC tax summaries reference. Registries / Scope — Covers income tax and business taxes (TVA/VAT).
- [https://teledecgo.finances.gov.tn/pls/webdeclar/identification](https://teledecgo.finances.gov.tn/pls/webdeclar/identification)
  - Tunisia e-tax portal. Registries / Status — Digital tax registers via DGI portal, online TIN registration, e-declaration system.
- [https://www.dlapiperdataprotection.com/?t=law&c=TN](https://www.dlapiperdataprotection.com/?t=law&c=TN)
  - DLA Piper DP reference tool. yrs 2004,2007,2022,2023,2024 · Digital Id / Data Protection Act; Digital Id / Data Protection Authority Oversight — Judicial oversight of the ID system is indirect. INPDP decisions can be appealed to the Tunis Court of Appeal and further to the Court of Cassation (per Organic Law 2004-63). There
- [https://www.electionguide.org/countries/id/217](https://www.electionguide.org/countries/id/217)
  - IFES ElectionGuide reference. yrs 2024 · Registries / Status; Registries / Uptake — Digital electoral register managed by ISIE; recent elections with registered voters lists.
- [https://www.emro.who.int/images/stories/ehealth/documents/tunisia-ehealth-country-profile.pdf](https://www.emro.who.int/images/stories/ehealth/documents/tunisia-ehealth-country-profile.pdf)
  - WHO e-health country profile (undated reference). Clinic — Rural primary healthcare clinics in Tunisia predominantly use paper-based recording for patient data, including nursing documentation, which remains largely manual across public fa
- [https://www.enterprisesurveys.org/content/dam/enterprisesurveys/documents/country/Tunisia-2024.pdf](https://www.enterprisesurveys.org/content/dam/enterprisesurveys/documents/country/Tunisia-2024.pdf)
  - WB Enterprise Surveys reference. yrs 2024 · ICT Infrastructure / Grid Reliability (Power Outage Frequency) — 0.4 outages/month ~5/year good
- [https://www.interieur.gov.tn](https://www.interieur.gov.tn)
  - Interior Ministry homepage. Police — No evidence found of digital case management systems at rural police stations or gendarmerie posts in Tunisia. Extensive searches reveal digital efforts in cybercrime investigation
- [https://www.opengovpartnership.org/members/tunisia/commitments/TN0047](https://www.opengovpartnership.org/members/tunisia/commitments/TN0047)
  - OGP membership/commitment page. yrs 2025 · Registries / Status — Digital land registry exists with online services (view titles, certificates); full digitization launched 2025.
- [https://www.orange.tn/services-pratiques/mobimoney](https://www.orange.tn/services-pratiques/mobimoney)
  - Orange Tunisia product page. yrs 2025 · Digital Pay / Person-to-Person (P2P) Payments — P2P transfers are a core wallet function and appear significant in Tunisia: BCT-reported mobile-payment composition includes P2P at 50.7% of mobile transactions in 2025; wallet off
- [https://www.peeringdb.com/ix/1105](https://www.peeringdb.com/ix/1105)
  - PeeringDB directory. yrs 2026 · ICT Infrastructure / Internet Exchange Point Presence — TunIXP active with 4 peers moderate participation
- [https://www.qnb.com.tn/sites/qnb/qnbtunisia/page/en/enqnbpay.html](https://www.qnb.com.tn/sites/qnb/qnbtunisia/page/en/enqnbpay.html)
  - QNB product page. yrs 2025 · Digital Pay / Person-to-Business (P2B) Merchant Payments — P2B/merchant payments exist via mobile wallets/QR: BCT-reported mobile-payment composition includes merchant payments at 17.8% of transactions in 2025; QNBpay describes merchant pa
- [https://www.registre-entreprises.tn/rne-public](https://www.registre-entreprises.tn/rne-public)
  - Tunisia business registry portal. yrs 2025 · Registries / Status — Registre National des Entreprises (RNE) fully digital, online registration, public portal.
- [https://www.social.gov.tn/en/attributing-free-health-care-cards-and-low-cost-treatement](https://www.social.gov.tn/en/attributing-free-health-care-cards-and-low-cost-treatement)
  - social-affairs portal page. yrs 2020 · Digital Id / Healthcare Access Use; Digital Id / Social Services Use — The CIN is required for healthcare access in Tunisia. Free care cards and reduced-price healthcare cards require CIN copies from all family members over 18. The CNAM (national heal
- [https://www.statista.com/statistics/1014717/tunisia-renewable-energy-in-total-power-generation-capacity](https://www.statista.com/statistics/1014717/tunisia-renewable-energy-in-total-power-generation-capacity)
  - Statista data page. yrs 2023 · ICT Infrastructure / Renewable Energy Share of Generation — ~12% renewables capacity
- [https://www.statista.com/topics/9265/companies-in-tunisia](https://www.statista.com/topics/9265/companies-in-tunisia)
  - Statista data page. yrs 2020 · Registries / Uptake — ~800k registered companies; informal sector significant, estimate 50-69% formal coverage.
- [https://www.tarbia.tn/ar](https://www.tarbia.tn/ar)
  - education portal. School — Tunisia has implemented national digital platforms like Tarbia.tn (launched under World Bank-supported PREFAT project targeting lagging/rural regions), enabling parents to track re
- [https://www.theglobaleconomy.com/Tunisia/Access_to_electricity](https://www.theglobaleconomy.com/Tunisia/Access_to_electricity)
  - TheGlobalEconomy data page. yrs 2023 · ICT Infrastructure / Electricity Access Rate — 100% population
- [https://www.theglobaleconomy.com/Tunisia/Mobile_network_coverage](https://www.theglobaleconomy.com/Tunisia/Mobile_network_coverage)
  - TheGlobalEconomy data page. yrs 2016 · ICT Infrastructure / 4G/LTE Population Coverage — 99% mobile coverage high 4G
- [https://www.theglobaleconomy.com/Tunisia/internet_users](https://www.theglobaleconomy.com/Tunisia/internet_users)
  - TheGlobalEconomy data page. yrs 2023 · ICT Infrastructure / Internet Usage Rate — 72.4% individuals using internet
- [https://www.wipo.int/edocs/gii-ranking/2024/tn.pdf](https://www.wipo.int/edocs/gii-ranking/2024/tn.pdf)
  - WIPO GII ranking reference. yrs 2024 · ICT Infrastructure / Global Innovation Index Ranking — Rank 81

## Excluded — pre-2024 (by URL date)  (6)

- [http://ubmonline.org/wp-content/uploads/2017/04/2017-Pr%C3%A9sentation-Retour-dexp%C3%A9rience.pdf](http://ubmonline.org/wp-content/uploads/2017/04/2017-Pr%C3%A9sentation-Retour-dexp%C3%A9rience.pdf)
  - old presentation PDF [URL-date 2017]. yrs 2022 · Digital Pay / Central Bank Involvement in Governance — The Central Bank of Tunisia (BCT) directly operates core payment infrastructure: Elyssa-RTGS (RTGS) with published adhesion conditions/rules and participant obligations. Interbank 
- [https://unstats.un.org/unsd/demographic-social/meetings/2017/new-york--egm-on-management-and-evaluation-of-crvs-systems/Session19-Tunisia.pdf](https://unstats.un.org/unsd/demographic-social/meetings/2017/new-york--egm-on-management-and-evaluation-of-crvs-systems/Session19-Tunisia.pdf)
  - UNSD CRVS meeting PDF — old reference [URL-date 2017]. Registry — Rural registry offices in Tunisia (municipal civil status bureaus, including subsidiary offices, annexes, and mobile units covering rural areas) primarily record births and other c
- [https://upr-info.org/sites/default/files/documents/2017-04/pi_upr27_tun_e_main_rev.pdf](https://upr-info.org/sites/default/files/documents/2017-04/pi_upr27_tun_e_main_rev.pdf)
  - UPR submission PDF — old [URL-date 2017]. yrs 2024 · Digital Id / SIM Card Registration Use — SIM card registration in Tunisia requires a national ID (CIN) or passport, and is mandatory under telecommunications legislation. In September 2024, the Ministry of Communication T
- [https://www.cbf.org.tn/wp-content/uploads/2023/01/05-Note-de-la-Banque-Centrale-de-Tunisie-n%C2%B02022-05-du-15-Fevrier-2022.pdf](https://www.cbf.org.tn/wp-content/uploads/2023/01/05-Note-de-la-Banque-Centrale-de-Tunisie-n%C2%B02022-05-du-15-Fevrier-2022.pdf)
  - BCT note PDF — 2022 [URL-date 2023]. yrs 2022 · Digital Pay / Central Bank Involvement in Governance; Digital Pay / Scheme Rules Publicly Available — The Central Bank of Tunisia (BCT) directly operates core payment infrastructure: Elyssa-RTGS (RTGS) with published adhesion conditions/rules and participant obligations. Interbank 
- [https://www.ifc.org/en/pressroom/2022/ifc-and-central-bank-of-tunisia-announce-launch-of-digital-platform-to-ease-bill-payments](https://www.ifc.org/en/pressroom/2022/ifc-and-central-bank-of-tunisia-announce-launch-of-digital-platform-to-ease-bill-payments)
  - IFC-BCT 2022 launch — pre-2024. yrs 2022,2026 · Digital Pay / Government Payment Digitization; Digital Pay / Person-to-Government (P2G) Payments — Person-to-government (P2G) digital payments are evidenced: the BCT/IFC Paysmart platform supports bill payments (utilities and other fees); additional evidence indicates online pay
- [https://www.unodc.org/romena/en/Stories/2019/May/tunisia_-strengthening-crime-scene-investigation-and-forensic-chain-of-custody.html](https://www.unodc.org/romena/en/Stories/2019/May/tunisia_-strengthening-crime-scene-investigation-and-forensic-chain-of-custody.html)
  - unmatched domain [URL-date 2019]. Police — No evidence found of digital case management systems at rural police stations or gendarmerie posts in Tunisia. Extensive searches reveal digital efforts in cybercrime investigation

---

## Phase 2 — A-web fetch run summary (2026-07-17)

**10 clips placed** in `new-queue/` · **2 skipped** (both pre-2024).

- **Skipped (pre-2024 on fetch):** accessnow *"must open mobile ID black box"* (2023-02); accessnow *"digitization programs threaten privacy"* (2023-04).
- **Kept after date-check:** accessnow *"biometric ID/passport bills passed"* — country-note guessed 2022 but the true date is **2024-03-07** (6 Mar 2024 parliamentary adoption) → **in-window, kept**.
- **Date corrections:** ecofin `2309-45916` = **2024-09-23** (verified on-page); idtechwire + mobileidworld e-Houwiya = **2025-03-19** (byline); biometricupdate = **2025-03** (month precision, day not on page); WB AMEN = **2024-11-14** (Exa metadata's 2025-03-06 is wrong); zawya + idtechwire biometric-rollout = **2024-04-23**.
- **Merge-clusters (flag at ingest):** (a) **e-Houwiya milestone** — idtechwire and mobileidworld are *identical reposts* of Dr Nizar Ben Neji's authored piece, and biometricupdate covers the same 200k-subscriber Mar-2025 milestone independently → one spine event, three clips. (b) **Biometric ID/passport H1-2025 rollout** (Apr-2024 Kasbah ministerial session; Organic Laws 2024-22/23) — idtechwire + zawya = same event.
- **Notes:** idtechwire timed out once, succeeded on retry. cyber.ee UXP author left blank (corporate news item). All sources rendered to English.
