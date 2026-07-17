# MDG — Madagascar: dataset→wiki intake review

*Run 2026-07-16 (wave MDG/MLI/MOZ/MRT, inline). Phase-1 assessment + Phase-2 fetch, per `country-ingest-workflow.md`.*

## Header counts

- **Total distinct source URLs:** 98
- **Already held (hub):** 0
- **Excluded (pre-2024, by URL/dataset date):** 5
- **New & in-window:** 93
  - A-web 19 · A-PDF 4 · B 4 · C 23 · D 43

**Hub status:** thin `active` hub holding ONE event (2026-01-27 national biometric-ID pilot launch), cited by title → 0 exact-held; the two Jan-2026 pilot clips (Biometric Update 202601, ID Tech Wire) are the SOURCES/updates for that held event (President Randrianirina named; IriTech IriAegis-BK hardware; ONI; 2m urban Apr-Jun 2026 + ~8m rural later 2026) — ingest as source-swaps, not duplicates. Whole remaining PRODIGY/civil-registry/payments record is net-new. Name-match "madagascar"/"malagasy" clean; no cross-contamination. africa-data-centres.csv had 4 MDG rows (all D/registry-style).

## A-web · ingest (non-PDF)  (19)

- [2022,2024,2025] [https://blogs.worldbank.org/en/governance/madagascars-digital-transformation-helping-deliver-better-and-faster-services](https://blogs.worldbank.org/en/governance/madagascars-digital-transformation-helping-deliver-better-and-faster-services) — WB country blog · _Business Registration & Licensing Integration_
- [2026] [https://blogs.worldbank.org/en/nasikiliza/legal-identity-all-what-can-madagascar-learn-namibia](https://blogs.worldbank.org/en/nasikiliza/legal-identity-all-what-can-madagascar-learn-namibia) — WB country blog · _Population Coverage_
- [2023,2024,2025] [https://blogs.worldbank.org/en/psd/digital-financial-services-and-fintech-can-play-valuable-role-madagascars-post-covid-recovery](https://blogs.worldbank.org/en/psd/digital-financial-services-and-fintech-can-play-valuable-role-madagascars-post-covid-recovery) — WB country blog · _Revenue Collection_
- [2025] [https://cioafrica.co/new-siips-report-shows-rapid-growth-in-instant-payments](https://cioafrica.co/new-siips-report-shows-rapid-growth-in-instant-payments) — CIO Africa reporting · _Digital Payment System Exists_
- [2025] [https://datareportal.com/reports/digital-2026-madagascar](https://datareportal.com/reports/digital-2026-madagascar) — DataReportal digital profile · _Mobile Phone Penetration_
- [2026] [https://identityweek.net/madagascar-accelerates-unique-identifier-delivery-for-citizens](https://identityweek.net/madagascar-accelerates-unique-identifier-delivery-for-citizens) — ID country reporting · _Social Services Use_
- [2026] [https://idtechwire.com/madagascar-begins-pilot-biometric-enrollment-for-national-digital-id-program](https://idtechwire.com/madagascar-begins-pilot-biometric-enrollment-for-national-digital-id-program) — ID-tech country reporting · _Biometric Data Collection_
- [2025] [https://midi-madagasikara.mg/registre-social-unique-pres-de-deux-millions-de-menages-inscrits](https://midi-madagasikara.mg/registre-social-unique-pres-de-deux-millions-de-menages-inscrits) — MDG national newspaper · _Status_
- [2025,2026] [https://www.biometricupdate.com/202507/madagascar-codifies-civil-registry-reform-readies-biometric-id-card-tender](https://www.biometricupdate.com/202507/madagascar-codifies-civil-registry-reform-readies-biometric-id-card-tender) — biometric/ID country reporting · _Civil Registration Integration_
- [2024,2025] [https://www.biometricupdate.com/202508/madagascar-seeks-firm-to-expand-digital-interoperability-platform](https://www.biometricupdate.com/202508/madagascar-seeks-firm-to-expand-digital-interoperability-platform) — biometric/ID country reporting · _Civil Registration & Vital Statistics Integration_
- [2026] [https://www.biometricupdate.com/202508/madagascars-digital-governance-id-project-timeline-extended-to-2026](https://www.biometricupdate.com/202508/madagascars-digital-governance-id-project-timeline-extended-to-2026) — biometric/ID country reporting · _Sustainability_
- [2025,2026] [https://www.biometricupdate.com/202601/madagascar-digital-id-pilot-kicks-off-testing-infrastructure-ahead-of-nationwide-rollout](https://www.biometricupdate.com/202601/madagascar-digital-id-pilot-kicks-off-testing-infrastructure-ahead-of-nationwide-rollout) — biometric/ID country reporting · _Digital Authentication Function_
- [2024,2025] [https://www.gsma.com/newsroom/press-release/gsma-announces-launch-of-national-interoperable-mobile-money-service-across-madagascar](https://www.gsma.com/newsroom/press-release/gsma-announces-launch-of-national-interoperable-mobile-money-service-across-madagascar) — GSMA (country report=A; regional=flag) · _Person-to-Person (P2P) Payments_
- [2023,2025] [https://www.gsma.com/solutions-and-impact/connectivity-for-good/mobile-for-development/programme/mobile-for-development/mvola-madagascar-a-case-study-for-the-gsma-mobile-money-api-and-open-platforms](https://www.gsma.com/solutions-and-impact/connectivity-for-good/mobile-for-development/programme/mobile-for-development/mvola-madagascar-a-case-study-for-the-gsma-mobile-money-api-and-open-platforms) — GSMA (country report=A; regional=flag) · _Cross-Border Payment Functionality_
- [2023] [https://www.trade.gov/country-commercial-guides/madagascar-digital-economy](https://www.trade.gov/country-commercial-guides/madagascar-digital-economy) — US CCG country page (check date) · _Agriculture System Integration_
- [2023,2024,2025] [https://www.wearetech.africa/en/fils-uk/news/finance/madagascar-tests-e-ariary-its-central-bank-digital-currency-to-modernize-payments](https://www.wearetech.africa/en/fils-uk/news/finance/madagascar-tests-e-ariary-its-central-bank-digital-currency-to-modernize-payments) — WeAreTech country reporting · _Government-to-Person (G2P) Payments_
- [2026] [https://www.wearetech.africa/en/fils-uk/news/public-management/madagascar-tests-digital-civil-registration-and-identity-system-in-toamasina](https://www.wearetech.africa/en/fils-uk/news/public-management/madagascar-tests-digital-civil-registration-and-identity-system-in-toamasina) — WeAreTech country reporting · _Civil Registration Integration_
- [2023,2025] [https://www.wearetech.africa/en/fils-uk/news/tech/madagascar-launches-digital-readiness-assessment-to-tackle-hurdles](https://www.wearetech.africa/en/fils-uk/news/tech/madagascar-launches-digital-readiness-assessment-to-tackle-hurdles) — WeAreTech country reporting · _Strategic Framework_
- [2025] [https://www.wearetech.africa/en/fils-uk/solutions/madagascar-orange-launches-mobile-app-for-business-transactions](https://www.wearetech.africa/en/fils-uk/solutions/madagascar-orange-launches-mobile-app-for-business-transactions) — WeAreTech country reporting · _Business-to-Business (B2B) Payments_

## A-PDF · ingest (PDF)  (4)

- [2023,2024] [https://documents1.worldbank.org/curated/en/167961634141464690/pdf/Disclosable-Restructuring-Paper-Madagascar-Financial-Inclusion-Project-P161491.pdf](https://documents1.worldbank.org/curated/en/167961634141464690/pdf/Disclosable-Restructuring-Paper-Madagascar-Financial-Inclusion-Project-P161491.pdf) — WB project/report PDF · _Government-to-Person (G2P) Payments_
- [2026] [https://documents1.worldbank.org/curated/en/434621601690509534/pdf/Madagascar-Digital-Governance-and-Identification-Management-System-Project.pdf](https://documents1.worldbank.org/curated/en/434621601690509534/pdf/Madagascar-Digital-Governance-and-Identification-Management-System-Project.pdf) — WB project/report PDF · _Ministry of Finance Oversight_
- [2026] [https://documents1.worldbank.org/curated/en/809191510763351833/pdf/ID4D-Country-Diagnostic-Madagascar.pdf](https://documents1.worldbank.org/curated/en/809191510763351833/pdf/ID4D-Country-Diagnostic-Madagascar.pdf) — WB project/report PDF · _Judicial Oversight_
- [2025] [https://finmark.org.za/system/documents/files/000/000/191/original/Madagascar_FI_Strategy_English_Nov2018_web.pdf?1601970124](https://finmark.org.za/system/documents/files/000/000/191/original/Madagascar_FI_Strategy_English_Nov2018_web.pdf?1601970124) — FinMark research PDF · _Consumer Protection Framework for Payments_

## B · check first  (4)

- [2022] [https://futures.issafrica.org/blog/2024/Madagascar-2044-A-visionary-model-for-governance](https://futures.issafrica.org/blog/2024/Madagascar-2044-A-visionary-model-for-governance) — ISS analysis (verify country focus) · _Digital Payments Integration_
- [2024] [https://idi.no/wp-content/uploads/resource_files/tantana-performance-report-sep2024.pdf](https://idi.no/wp-content/uploads/resource_files/tantana-performance-report-sep2024.pdf) — research institute · _Independent Audits and Reviews_
- [2025] [https://issafrica.org/iss-today/technology-looks-set-to-transform-governance-in-madagascar](https://issafrica.org/iss-today/technology-looks-set-to-transform-governance-in-madagascar) — ISS analysis (verify country focus) · _Urban-Rural Digital Divide_
- [2023] [https://www.africanwirelesscomms.com/news-details?itemid=9785&amp](https://www.africanwirelesscomms.com/news-details?itemid=9785&amp) — title-only thin (per prior runs) · _Mobile Data Affordability_

## C · lead only (do not cite)  (23)

- [2022] [https://africa-digital.com/2024/e-government-for-africa](https://africa-digital.com/2024/e-government-for-africa) — low-authority aggregator · _E-Government Development_
- [2015,2024] [https://caseguard.com/articles/the-advent-of-data-privacy-and-protection-in-madagascar](https://caseguard.com/articles/the-advent-of-data-privacy-and-protection-in-madagascar) — vendor blog · _Data Protection Act_
- [https://e-governancehub.ru/publications-2](https://e-governancehub.ru/publications-2) — low-authority repost · _Justice System Integration_
- [2024,2025] [https://edicomgroup.com/blog/madagascar-implementation-mandatory-electronic-invoicing](https://edicomgroup.com/blog/madagascar-implementation-mandatory-electronic-invoicing) — vendor · _Revenue Collection_
- [2026] [https://en.wikipedia.org/wiki/List_of_national_identity_card_policies_by_country](https://en.wikipedia.org/wiki/List_of_national_identity_card_policies_by_country) — Wikipedia · _Enrollment Mandatory Status_
- [2025] [https://github.com/gayanvoice/top-github-users/blob/main/markdown/followers/madagascar.md](https://github.com/gayanvoice/top-github-users/blob/main/markdown/followers/madagascar.md) — code repo · _Developer and Tech Community_
- [2025,2026] [https://guide.za-malagasy.com/en/demarches-et-documents-administratifs/comment-faire-une-carte-d-identite-nationale-cin-1.html](https://guide.za-malagasy.com/en/demarches-et-documents-administratifs/comment-faire-une-carte-d-identite-nationale-cin-1.html) — travel guide · _Cost of Credential_
- [2026] [https://madagascarinvest.com/company-registration](https://madagascarinvest.com/company-registration) — investment promo · _Status_
- [2024] [https://nikulipe.com/countries/madagascar](https://nikulipe.com/countries/madagascar) — fintech vendor · _Active Digital Payment Users_
- [2019] [https://online.flippingbook.com/view/574977573](https://online.flippingbook.com/view/574977573) — flipbook host · _Technology and Innovation Hubs_
- [2026] [https://pikasim.com/esim-madagascar](https://pikasim.com/esim-madagascar) — SIM info site · _SIM Card Registration Use_
- [2023] [https://pmc.ncbi.nlm.nih.gov/articles/PMC11892416](https://pmc.ncbi.nlm.nih.gov/articles/PMC11892416) — academic · _Government-to-Person (G2P) Payments_
- [2026] [https://prepaid-data-sim-card.fandom.com/wiki/Registration_Policies_Per_Country](https://prepaid-data-sim-card.fandom.com/wiki/Registration_Policies_Per_Country) — SIM wiki · _SIM Card Registration Use_
- [2023,2024,2025] [https://public.digital/pd-insights/client-stories/madagascar-advancing-digital-transformation](https://public.digital/pd-insights/client-stories/madagascar-advancing-digital-transformation) — consultancy client story · _Health System Integration_
- [2026] [https://usesmileid.com/countries/madagascar](https://usesmileid.com/countries/madagascar) — vendor marketing · _KYC Enablement_
- [2025] [https://www.africatechschools.com/country/madagascar/university](https://www.africatechschools.com/country/madagascar/university) — directory · _Tertiary ICT/STEM Education_
- [2024] [https://www.clym.io/regulations/law-no-2014-038-on-the-protection-of-personal-data-madagascar](https://www.clym.io/regulations/law-no-2014-038-on-the-protection-of-personal-data-madagascar) — DP-summary vendor · _Data Privacy Legislation Coverage_
- [2025] [https://www.comarch.com/trade-and-services/data-management/legal-regulation-changes/madagascar-moves-to-implement-comprehensive-e-invoicing-mandate](https://www.comarch.com/trade-and-services/data-management/legal-regulation-changes/madagascar-moves-to-implement-comprehensive-e-invoicing-mandate) — vendor · _Tax Portal_
- [2025] [https://www.facebook.com/groups/456791208159172/posts/2028835037621440](https://www.facebook.com/groups/456791208159172/posts/2028835037621440) — social · _Cost of Credential_
- [https://www.ocolo.io/colocation/stellarix/antananarivo-tnr02](https://www.ocolo.io/colocation/stellarix/antananarivo-tnr02) — unknown low-authority · _STELLARIX Antananarivo TNR01 / Antananarivo_
- [2022] [https://www.thestateofthemind.com/dispatches/2728183_madagascar-when-the-lights-go-out](https://www.thestateofthemind.com/dispatches/2728183_madagascar-when-the-lights-go-out) — blog · _Grid Reliability (Power Outage Frequency)_
- [2025] [https://www.transfi.com/blog/madagascars-payment-rails-how-they-work---mobile-money-bank-transfers-cashless-growth](https://www.transfi.com/blog/madagascars-payment-rails-how-they-work---mobile-money-bank-transfers-cashless-growth) — fintech vendor · _Cross-Border Payment Functionality_
- [2025] [https://www.vatupdate.com/2025/10/24/madagascar-moves-forward-with-mandatory-electronic-invoicing-implementation](https://www.vatupdate.com/2025/10/24/madagascar-moves-forward-with-mandatory-electronic-invoicing-implementation) — tax aggregator · _Business-to-Business (B2B) Payments_

## D · resource / entity (not a dated source)  (43)

- [2025] [https://addistaxinitiative.net/profile/madagascar](https://addistaxinitiative.net/profile/madagascar) — tax initiative reference · _Data exchange integration_
- [2025] [https://afi-global.org/news/new-regulations-pave-the-way-for-wider-access-to-finance-in-madagascar](https://afi-global.org/news/new-regulations-pave-the-way-for-wider-access-to-finance-in-madagascar) — AFI financial-inclusion reference · _Central Bank Involvement in Governance_
- [2020,2026] [https://archive.doingbusiness.org/content/dam/doingBusiness/country/m/madagascar/MDG.pdf](https://archive.doingbusiness.org/content/dam/doingBusiness/country/m/madagascar/MDG.pdf) — Doing Business archive · _Status_
- [2013] [https://data.worldbank.org/indicator/SP.REG.BRTH.ZS?locations=MG](https://data.worldbank.org/indicator/SP.REG.BRTH.ZS?locations=MG) — WB indicators · _Uptake_
- [2026] [https://digital.gov.mg/prodigy](https://digital.gov.mg/prodigy) — MDG gov portal · _Status_
- [2024,2025,2026] [https://dpimap.org/madagascar](https://dpimap.org/madagascar) — DPI map reference · _Digital ID Integration_
- [2024,2025] [https://e-hetra.impots.mg](https://e-hetra.impots.mg) — MDG tax portal · _Revenue Collection_
- [2022,2024,2025] [https://ega.ee/project/implementation-xroad-madagascar](https://ega.ee/project/implementation-xroad-madagascar) — e-Governance Academy org · _Business Registration & Licensing Integration_
- [2024] [https://fred.stlouisfed.org/series/MDGFCMAANUM](https://fred.stlouisfed.org/series/MDGFCMAANUM) — FRED indicators · _Active Digital Payment Users_
- [2020] [https://gogla.org/wp-content/uploads/2024/11/Madagascar-Country-Brief.pdf](https://gogla.org/wp-content/uploads/2024/11/Madagascar-Country-Brief.pdf) — GOGLA off-grid reference · _Off-Grid and Distributed Energy Policy_
- [2016] [https://inflect.com/datacenters/africa/madagascar/antananarivo](https://inflect.com/datacenters/africa/madagascar/antananarivo) — DC/network registry · _Madagascar Global Internet eXchange (MGIX) Data Centre / Antananarivo_
- [2016] [https://inflect.com/ix/mgix](https://inflect.com/ix/mgix) — DC/network registry · _Madagascar Global Internet eXchange (MGIX) Data Centre / Antananarivo_
- [2023] [https://mptf.undp.org/sites/default/files/documents/2023-05/madagascar_final_report.pdf](https://mptf.undp.org/sites/default/files/documents/2023-05/madagascar_final_report.pdf) — UN MPTF fund portal · _Accessibility for Persons with Disabilities_
- [2025] [https://pulse.internetsociety.org/en/ixp-tracker/country/MG](https://pulse.internetsociety.org/en/ixp-tracker/country/MG) — ISOC internet indicators · _Internet Exchange Point Presence_
- [2025] [https://taxsummaries.pwc.com/madagascar/individual/taxes-on-personal-income](https://taxsummaries.pwc.com/madagascar/individual/taxes-on-personal-income) — PwC tax summaries · _Scope_
- [2026] [https://travel.state.gov/content/travel/en/us-visas/Visa-Reciprocity-and-Civil-Documents-by-Country/Madagascar.html](https://travel.state.gov/content/travel/en/us-visas/Visa-Reciprocity-and-Civil-Documents-by-Country/Madagascar.html) — US reference page · _Banking/Financial Services Use_
- [2016] [https://ubuntunet.net/services/madagascar-launches-first-internet-exchange-point](https://ubuntunet.net/services/madagascar-launches-first-internet-exchange-point) — regional research network · _Madagascar Global Internet eXchange (MGIX) Data Centre / Antananarivo_
- [2024] [https://www.africanenda.org/uploads/files/siips2025/Consumer-Deck_Madagascar_SIIPS-2025.pdf](https://www.africanenda.org/uploads/files/siips2025/Consumer-Deck_Madagascar_SIIPS-2025.pdf) — AfricaNenda SIIPS flagship · _Active Digital Payment Users_
- [2024,2025] [https://www.africanenda.org/uploads/files/siips_2024_executive_summary_en.pdf](https://www.africanenda.org/uploads/files/siips_2024_executive_summary_en.pdf) — AfricaNenda SIIPS flagship · _Cross-Border Payment Functionality_
- [2023,2025] [https://www.banky-foibe.mg/admin/wp-content/uploads/2021/08/BFM_e-Ariary_RFI-RFQ_VF-BFM.pdf](https://www.banky-foibe.mg/admin/wp-content/uploads/2021/08/BFM_e-Ariary_RFI-RFQ_VF-BFM.pdf) — MDG central bank (standing resource; date-exempt) · _Cross-Border Payment Functionality_
- [2013] [https://www.ceicdata.com/en/madagascar/population-and-urbanization-statistics/mg-completeness-of-birth-registration](https://www.ceicdata.com/en/madagascar/population-and-urbanization-statistics/mg-completeness-of-birth-registration) — CEIC indicators · _Uptake_
- [2025] [https://www.ceni-madagascar.mg/projet-de-liste-electorale-biometrique-la-ceni-a-consulte-veridos](https://www.ceni-madagascar.mg/projet-de-liste-electorale-biometrique-la-ceni-a-consulte-veridos) — MDG electoral commission · _Status_
- [2025] [https://www.datacentermap.com/cloud/g/madagascar](https://www.datacentermap.com/cloud/g/madagascar) — DC registry/directory · _Cloud Services Availability_
- [2025] [https://www.datacentermap.com/madagascar](https://www.datacentermap.com/madagascar) — DC registry/directory · _Commercial Data Center Presence_
- [https://www.datacentermap.com/madagascar/antananarivo/tnr01](https://www.datacentermap.com/madagascar/antananarivo/tnr01) — DC registry/directory · _STELLARIX Antananarivo TNR02 / Antananarivo_
- [https://www.datacentermap.com/madagascar/antananarivo/tnr011](https://www.datacentermap.com/madagascar/antananarivo/tnr011) — DC registry/directory · _STELLARIX Antananarivo TNR01 / Antananarivo_
- [https://www.datacentermap.com/madagascar/toliara/yas-toliary-data-center](https://www.datacentermap.com/madagascar/toliara/yas-toliary-data-center) — DC registry/directory · _Yas Toliara Data Center / Toliara_
- [2024] [https://www.dlapiperdataprotection.com/guide.pdf?c=MG](https://www.dlapiperdataprotection.com/guide.pdf?c=MG) — DLA Piper DP tool · _Data Breach Notification Requirements_
- [2023] [https://www.dlapiperdataprotection.com/index.html?t=law&amp](https://www.dlapiperdataprotection.com/index.html?t=law&amp) — DLA Piper DP tool · _Data Protection Legislation_
- [2015,2023,2024,2026] [https://www.dlapiperdataprotection.com/index.html?t=law&c=MG](https://www.dlapiperdataprotection.com/index.html?t=law&c=MG) — DLA Piper DP tool · _Enabling Legislation_
- [2024] [https://www.elibrary.imf.org/view/journals/002/2025/060/article-A001-en.xml](https://www.elibrary.imf.org/view/journals/002/2025/060/article-A001-en.xml) — IMF elibrary nav/paywalled · _Public Performance Reporting_
- [2019] [https://www.familysearch.org/en/wiki/Madagascar_Civil_Registration](https://www.familysearch.org/en/wiki/Madagascar_Civil_Registration) — genealogy/CRVS reference · _Scope_
- [2024] [https://www.imf.org/external/pubs/ft/scr/2016/cr16377.pdf](https://www.imf.org/external/pubs/ft/scr/2016/cr16377.pdf) — IMF reference (standing resource; date-exempt) · _Scheme Rules Publicly Available_
- [2025] [https://www.itu.int/en/ITU-D/LDCs/Documents/2017/Country%20Profiles/Country%20Profile_Madagascar.pdf](https://www.itu.int/en/ITU-D/LDCs/Documents/2017/Country%20Profiles/Country%20Profile_Madagascar.pdf) — ITU reference/MDD (standing resource; date-exempt) · _Internet Exchange Point Presence_
- [2018] [https://www.lightingglobal.org/country/madagascar](https://www.lightingglobal.org/country/madagascar) — Lighting Global reference · _Urban-Rural Electrification Gap_
- [2025] [https://www.operatorwatch.com/2025/10/madagascars-operators-push-ahead-in.html](https://www.operatorwatch.com/2025/10/madagascars-operators-push-ahead-in.html) — operator reference · _4G/LTE Population Coverage_
- [https://www.privacyshield.gov/ps/article?id=Madagascar-protection-of-property-rights](https://www.privacyshield.gov/ps/article?id=Madagascar-protection-of-property-rights) — privacy framework reference · _Uptake_
- [2025] [https://www.sadcbankers.org/subcommittees/PaySystem/media/Documents/Newsletters/Vulindlela_Sep2008/Madagascar.pdf](https://www.sadcbankers.org/subcommittees/PaySystem/media/Documents/Newsletters/Vulindlela_Sep2008/Madagascar.pdf) — SADC regional body · _Central Bank Involvement in Governance_
- [2025] [https://www.startupblink.com/startup-ecosystem/madagascar](https://www.startupblink.com/startup-ecosystem/madagascar) — ecosystem index · _Tech Startup Ecosystem_
- [2024,2025] [https://www.taxcompact.net/profile/madagascar](https://www.taxcompact.net/profile/madagascar) — tax compact reference · _Revenue Collection_
- [2023] [https://www.theglobaleconomy.com/Madagascar/Access_to_electricity](https://www.theglobaleconomy.com/Madagascar/Access_to_electricity) — indicator aggregator · _Electricity Access Rate_
- [2023] [https://www.theglobaleconomy.com/Madagascar/Internet_users](https://www.theglobaleconomy.com/Madagascar/Internet_users) — indicator aggregator · _Internet Usage Rate_
- [2024] [https://www.wipo.int/edocs/gii-ranking/2024/mg.pdf](https://www.wipo.int/edocs/gii-ranking/2024/mg.pdf) — WIPO GII flagship · _Global Innovation Index Ranking_

## Pre-2024 (excluded at assessment)

- [2024] [https://www.ifc.org/en/pressroom/2023/ifc-and-central-bank-of-madagascar-partner-to-strengthen-credit-reporting-financial-inclusion](https://www.ifc.org/en/pressroom/2023/ifc-and-central-bank-of-madagascar-partner-to-strengthen-credit-reporting-financial-inclusion) — pre-2024 date encoded in URL
- [2023,2024,2025] [https://www.ifc.org/en/stories/2023/madagascars-mobile-money-boom](https://www.ifc.org/en/stories/2023/madagascars-mobile-money-boom) — pre-2024 date encoded in URL
- [2026] [https://www.worldbank.org/en/news/loans-credits/2020/09/29/madagascar-digital-governance-and-identification-management-system-project](https://www.worldbank.org/en/news/loans-credits/2020/09/29/madagascar-digital-governance-and-identification-management-system-project) — pre-2024 date encoded in URL
- [2026] [https://www.worldbank.org/en/news/press-release/2020/09/30/world-bank-supports-madagascars-digital-transformation-and-identity-management-system-upgrades](https://www.worldbank.org/en/news/press-release/2020/09/30/world-bank-supports-madagascars-digital-transformation-and-identity-management-system-upgrades) — pre-2024 date encoded in URL
- [2025] [https://www.worldbank.org/en/news/press-release/2023/02/06/madagascar-to-expand-access-to-social-protection-for-extremely-poor-households-thanks-to-250-million-in-world-bank-finan](https://www.worldbank.org/en/news/press-release/2023/02/06/madagascar-to-expand-access-to-social-protection-for-extremely-poor-households-thanks-to-250-million-in-world-bank-finan) — pre-2024 date encoded in URL

## Phase-2 run summary (fetch → clips)

**19 A-web → 12 clips (7 skipped).**
- **Clips (12):** trade.gov digital-economy (date-fix: on-page last-published 2025-08-04, not Exa's 2025-06-02); Biometric Update ×4 (interoperability EOI 2025-08-28, digital-ID pilot 2026-01-28 [hub-overlap], civil-registry reform/ID-card tender 2025-07-07, timeline-extended 2025-08-19); ID Tech Wire pilot enrollment 2026-01-28 [hub-overlap]; Identity Week unique-identifier 2024-07-25 (fetched on 2nd retry); We Are Tech ×3 (Digital Readiness Assessment 2025-03-04, Orange Money Pro 2025-03-19, e-Ariary CBDC 2025-05-28); GSMA MVola case study 2025-03-31; DataReportal Digital-2026 (pub 2025-11-08).
- **Skipped — pre-2024 on fetch (5):** blogs.worldbank Orinasa digital-transformation (**2022-06-01**); We Are Tech Toamasina civil-registration (**2023-06-20**); blogs.worldbank "learn from Namibia" (**2023-10-10**); blogs.worldbank PSD fintech (**2022-02-10**); GSMA newsroom national-interoperable-mobile-money (**2016-09-12**).
- **Skipped — regional/fetch (2):** CIO Africa SIIPS-2025 (continental AfricaNenda report, only passing MDG mention → reclassified B/cite-don't-absorb, not clipped); midi-madagasikara.mg RSU "~2M households" (CRAWL_LIVECRAWL_TIMEOUT ×2 → skip; RSU thread is corroborated in the interoperability/social-registry context and flagged as a hub gap to fill).
- **Merge clusters flagged:** (1) **National biometric digital-ID pilot** — Biometric Update 202601 + ID Tech Wire (same 27 Jan 2026 launch; President Randrianirina; IriTech IriAegis-BK; ONI/UGD; 2m urban Apr-Jun + ~8m rural later 2026) = the hub's held 2026-01-27 event → merge as sources. (2) **PRODIGY procurement arc** — interoperability-EOI + civil-registry-tender + timeline-extended (World Bank ~$143m, X-Road, IN Groupe + Laxton, closing 30 Jun 2026). (3) **Payments** — e-Ariary CBDC pilot / Orange Money Pro / MVola GSMA-API (keep distinct rails). Name-match clean.
