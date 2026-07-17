# MOZ — Mozambique: dataset→wiki intake review

*Run 2026-07-16 (wave MDG/MLI/MOZ/MRT, inline). Phase-1 assessment + Phase-2 fetch, per `country-ingest-workflow.md`.*

## Header counts

- **Total distinct source URLs:** 98
- **Already held (hub):** 0
- **Excluded (pre-2024, by URL/dataset date):** 8
- **New & in-window:** 90
  - A-web 25 · A-PDF 7 · B 4 · C 18 · D 36

**Hub status:** LARGE, richly-developed `active` hub reviewed to 2026-07-16, holding ~12 events (cyber law, Ethiopia DPI MoU, biometric IAM/SIMO, Zambia-Moz fibre, Chapo digital-gov overhaul 2026-02-21, INTIC data-breach platform, Starlink, UNECA data sovereignty, surveillance cameras, health-data burden). It cites its news stream by title → **0 exact-held**; the dataset URLs are the underlying foundational/primary sources (free-ID/EDGE campaign 2023-24, biometric SIM/NUTEL 2024, data-centre market 2024-25, PDP-law draft 2025, DataReportal baselines) that the hub does NOT yet carry → mostly NET-NEW, filling the hub's pre-2026 history. **One overlap:** We Are Tech "drafting of National Digital Transformation Strategy" (2026-02-12 conference) appears to be the SAME Maputo National Conference on Digital Transformation as the hub's 2026-02-21 "digital-government overhaul" entry — flag to reconcile dates/events. **Key gap filled:** the draft Personal Data Protection Law (TechHive review, CNPD/ANPD, Malabo-aligned) — the hub has the 2026 Cyber Security law but not the PDP bill. Name-match "mozambiqu"/"mocambiqu" clean. africa-data-centres.csv had 13 MOZ rows (Maputo/Matola market — Vodacom, Raxio, iColo, BCX; several clipped, rest D-registry).

## A-web · ingest (non-PDF)  (25)

- [2023,2024] [https://360mozambique.com/development/mozambique-to-require-biometric-card-registration-for-cellphone-users](https://360mozambique.com/development/mozambique-to-require-biometric-card-registration-for-cellphone-users) — MOZ national outlet · _Biometric Data Collection_
- [2022] [https://360mozambique.com/economy/tax-authority-launches-taxpayers-portal](https://360mozambique.com/economy/tax-authority-launches-taxpayers-portal) — MOZ national outlet · _Revenue Collection_
- [2024] [https://360mozambique.com/economy/world-bank-provides-150m-for-governance-and-digital-economy-project](https://360mozambique.com/economy/world-bank-provides-150m-for-governance-and-digital-economy-project) — MOZ national outlet · _Sustainability_
- [2025] [https://360mozambique.com/innovation/vodacom-business-data-centre-a-strategic-step-towards-business-digitalisation-in-mozambique](https://360mozambique.com/innovation/vodacom-business-data-centre-a-strategic-step-towards-business-digitalisation-in-mozambique) — MOZ national outlet · _Vodacom Business Data Centre (Matola) / Matola_
- [2023,2024] [https://aimnews.org/2024/06/12/only-34-per-cent-of-mozambicans-have-an-identity-card](https://aimnews.org/2024/06/12/only-34-per-cent-of-mozambicans-have-an-identity-card) — MOZ national news agency (AIM) · _Enrollment Mandatory Status_
- [2023] [https://blogs.worldbank.org/en/africacan/identification-and-civil-registration-lifeline-displaced-people-mozambique](https://blogs.worldbank.org/en/africacan/identification-and-civil-registration-lifeline-displaced-people-mozambique) — WB country blog · _Healthcare Access Use_
- [2025] [https://blogs.worldbank.org/en/nasikiliza/from-coins-to-clicks-what-i-have-learned-from-small-merchants-in-mozambique](https://blogs.worldbank.org/en/nasikiliza/from-coins-to-clicks-what-i-have-learned-from-small-merchants-in-mozambique) — WB country blog · _Government Payment Digitization_
- [2024] [https://cioafrica.co/raxio-launches-a-new-data-centre-in-mozambique](https://cioafrica.co/raxio-launches-a-new-data-centre-in-mozambique) — CIO Africa reporting · _Raxio Mozambique MZ1 / Matola_
- [2024] [https://datareportal.com/reports/digital-2024-mozambique](https://datareportal.com/reports/digital-2024-mozambique) — DataReportal digital profile · _Mobile Phone Penetration_
- [2024] [https://developingtelecoms.com/telecom-business/telecom-regulation/14902-mozambique-implements-biometric-sim-registration-in-major-overhaul.html](https://developingtelecoms.com/telecom-business/telecom-regulation/14902-mozambique-implements-biometric-sim-registration-in-major-overhaul.html) — trade telecom reporting · _SIM Card Registration Use_
- [2023] [https://totaltele.com/2africa-cable-lands-in-mozambique](https://totaltele.com/2africa-cable-lands-in-mozambique) — trade telecom reporting · _Vodacom Nacala Cable Landing Station / Nacala_
- [2023] [https://www.biometricupdate.com/202407/world-bank-supports-mozambique-to-scale-up-free-issuance-of-national-id-cards](https://www.biometricupdate.com/202407/world-bank-supports-mozambique-to-scale-up-free-issuance-of-national-id-cards) — biometric/ID country reporting · _Cost of Credential_
- [2005] [https://www.datacenterdynamics.com/en/news/bcx-brings-alibaba-cloud-to-mozambique](https://www.datacenterdynamics.com/en/news/bcx-brings-alibaba-cloud-to-mozambique) — DCD data-centre reporting (use on-byline date) · _BCX Maputo Data Centre / Maputo_
- [2023] [https://www.datacenterdynamics.com/en/news/east-africa-portion-of-2africa-cable-goes-live-in-mozambique-and-tanzania](https://www.datacenterdynamics.com/en/news/east-africa-portion-of-2africa-cable-goes-live-in-mozambique-and-tanzania) — DCD data-centre reporting (use on-byline date) · _Master Power Technologies Nacala Data Centre / Nacala_
- [2024] [https://www.datacenterdynamics.com/en/news/raxio-launches-data-center-in-mozambique](https://www.datacenterdynamics.com/en/news/raxio-launches-data-center-in-mozambique) — DCD data-centre reporting (use on-byline date) · _Raxio Mozambique MZ1 / Matola_
- [2014] [https://www.datacenterdynamics.com/en/news/vodacom-mozambique-invests-25m-in-data-center](https://www.datacenterdynamics.com/en/news/vodacom-mozambique-invests-25m-in-data-center) — DCD data-centre reporting (use on-byline date) · _Vodacom Modular Data Centre (legacy Matola) / Matola_
- [2025] [https://www.datacenterdynamics.com/en/news/vodacom-opens-data-center-in-maputo-mozambique](https://www.datacenterdynamics.com/en/news/vodacom-opens-data-center-in-maputo-mozambique) — DCD data-centre reporting (use on-byline date) · _Vodacom Business Data Centre (Matola) / Matola_
- [2019] [https://www.gsma.com/mobilefordevelopment/blog/618-active-tech-hubs-the-backbone-of-africas-tech-ecosystem](https://www.gsma.com/mobilefordevelopment/blog/618-active-tech-hubs-the-backbone-of-africas-tech-ecosystem) — GSMA (country report=A; regional=flag) · _Technology and Innovation Hubs_
- [2024,2025] [https://www.techhiveadvisory.africa/insights/review-of-mozambiques-proposed-personal-data-protection-law](https://www.techhiveadvisory.africa/insights/review-of-mozambiques-proposed-personal-data-protection-law) — analyst review of instrument · _Data Protection Act_
- [2023] [https://www.trade.gov/market-intelligence/mozambique-digital-governance](https://www.trade.gov/market-intelligence/mozambique-digital-governance) — US CCG country page (check date) · _Digital Authentication Function_
- [2024,2025] [https://www.trade.gov/market-intelligence/mozambique-digital-transformation-strategy](https://www.trade.gov/market-intelligence/mozambique-digital-transformation-strategy) — US CCG country page (check date) · _Agriculture System Integration_
- [2023] [https://www.uneca.org/eca-events/sites/default/files/resources/documents/TICID/data-governance-framework-mozambique/en_project_inception_report_mozambique_data_governance_framework.pdf](https://www.uneca.org/eca-events/sites/default/files/resources/documents/TICID/data-governance-framework-mozambique/en_project_inception_report_mozambique_data_governance_framework.pdf) — UNECA country event/report · _Individual Data Access_
- [2024,2025,2026] [https://www.wearetech.africa/en/fils-uk/news/public-management/mozambique-launches-drafting-of-national-digital-transformation-strategy](https://www.wearetech.africa/en/fils-uk/news/public-management/mozambique-launches-drafting-of-national-digital-transformation-strategy) — WeAreTech country reporting · _Implementation Roadmap_
- [2023,2024,2025] [https://www.worldbank.org/en/news/feature/2024/07/03/unlocking-opportunities-for-millions-in-mozambique-afe-with-free-ids](https://www.worldbank.org/en/news/feature/2024/07/03/unlocking-opportunities-for-millions-in-mozambique-afe-with-free-ids) — WB country feature/PR · _Digital ID Integration_
- [2024] [https://www.worldbank.org/en/news/press-release/2025/03/21/mozambique-afe-new-energy-project-to-bring-electricity-access-to-nearly-one-million-people](https://www.worldbank.org/en/news/press-release/2025/03/21/mozambique-afe-new-energy-project-to-bring-electricity-access-to-nearly-one-million-people) — WB country feature/PR · _Electricity Access Rate_

## A-PDF · ingest (PDF)  (7)

- [2018,2023] [https://apai-crvs.uneca.org/sites/default/files/resourcefiles/CRVS_MozambiqueSnapshot_e.pdf](https://apai-crvs.uneca.org/sites/default/files/resourcefiles/CRVS_MozambiqueSnapshot_e.pdf) — UNECA CRVS country PDF · _Civil Registration Integration_
- [2021,2023,2024] [https://documents1.worldbank.org/curated/en/566401624978714983/pdf/Project-Information-Document-Mozambique-Digital-Governance-Economy-P172350.pdf](https://documents1.worldbank.org/curated/en/566401624978714983/pdf/Project-Information-Document-Mozambique-Digital-Governance-Economy-P172350.pdf) — WB project/report PDF · _Ministry of Finance Oversight_
- [2023] [https://evaluationreports.unicef.org/GetDocument?documentID=16474](https://evaluationreports.unicef.org/GetDocument?documentID=16474) — UNICEF evaluation PDF · _Status_
- [2023] [https://evaluationreports.unicef.org/GetDocument?documentID=16474&fileID=45640](https://evaluationreports.unicef.org/GetDocument?documentID=16474&fileID=45640) — UNICEF evaluation PDF · _Civil Registration Integration_
- [2024,2025,2026] [https://intic.gov.mz/wp-content/uploads/2025/04/Draft-Mozambique-Data-Diagnostic-April-2025-for-Government-2.pdf](https://intic.gov.mz/wp-content/uploads/2025/04/Draft-Mozambique-Data-Diagnostic-April-2025-for-Government-2.pdf) — MOZ INTIC official draft-policy/diagnostic PDF · _Agriculture System Integration_
- [2024,2025] [https://intic.gov.mz/wp-content/uploads/2025/11/Mozambique-Zero-Draft-2-Data-Governance-Policy-1.pdf](https://intic.gov.mz/wp-content/uploads/2025/11/Mozambique-Zero-Draft-2-Data-Governance-Policy-1.pdf) — MOZ INTIC official draft-policy/diagnostic PDF · _Strategic Framework_
- [https://openknowledge.worldbank.org/bitstreams/2fe28454-cdb1-5991-9f1e-7c8312d75bd0/download](https://openknowledge.worldbank.org/bitstreams/2fe28454-cdb1-5991-9f1e-7c8312d75bd0/download) — WB knowledge PDF · _Uptake_

## B · check first  (4)

- [2023] [https://www.accommodationmozambique.co.za/mozambique-travel-information/documents-required-at-mozambiques-border-posts](https://www.accommodationmozambique.co.za/mozambique-travel-information/documents-required-at-mozambiques-border-posts) — unclassified — needs human glance · _Cross-Border Recognition_
- [2005] [https://www.bcx.co.za/our-offices/mozambique](https://www.bcx.co.za/our-offices/mozambique) — unclassified — needs human glance · _BCX Maputo Data Centre / Maputo_
- [https://www.cgdev.org/sites/default/files/what-can-we-learn-about-energy-access-and-demand-mobile-phone-surveys.pdf](https://www.cgdev.org/sites/default/files/what-can-we-learn-about-energy-access-and-demand-mobile-phone-surveys.pdf) — CGD analysis · _Grid Reliability (Power Outage Frequency)_
- [2021] [https://www.ohchr.org/sites/default/files/lib-docs/HRBodies/UPR/Documents/Session10/MZ/UNHCR_UNHigh_Commissioner_for_Refugees_eng.pdf](https://www.ohchr.org/sites/default/files/lib-docs/HRBodies/UPR/Documents/Session10/MZ/UNHCR_UNHigh_Commissioner_for_Refugees_eng.pdf) — UN human-rights doc · _Non-National Eligibility_

## C · lead only (do not cite)  (18)

- [2022] [https://africa-digital.com/2024/e-government-for-africa](https://africa-digital.com/2024/e-government-for-africa) — low-authority aggregator · _E-Government Development_
- [https://bayobab.africa/bayobab-and-tmcel-announce-strategic-partnership-to-enhance-connectivity-in-mozambique](https://bayobab.africa/bayobab-and-tmcel-announce-strategic-partnership-to-enhance-connectivity-in-mozambique) — infra brand marketing · _Tmcel Captive Data Centre (Maputo HQ) / Maputo_
- [2024] [https://blog.voveid.com/kyc-compliance-in-mozambique-a-2025-guide-for-fintechs-and-digital-platforms](https://blog.voveid.com/kyc-compliance-in-mozambique-a-2025-guide-for-fintechs-and-digital-platforms) — KYC vendor guide · _KYC Enablement_
- [2023] <https://en.wikipedia.org/wiki/Bilhete_de_identidade_(Mozambique> — Wikipedia · _Biometric Data Collection_
- [2024] [https://en.wikipedia.org/wiki/List_of_countries_by_number_of_Internet_users](https://en.wikipedia.org/wiki/List_of_countries_by_number_of_Internet_users) — Wikipedia · _Internet Usage Rate_
- [2023] [https://en.wikipedia.org/wiki/List_of_national_identity_card_policies_by_country](https://en.wikipedia.org/wiki/List_of_national_identity_card_policies_by_country) — Wikipedia · _Enrollment Mandatory Status_
- [https://github.com/mozdevz](https://github.com/mozdevz) — code repo · _Developer and Tech Community_
- [2017] [https://paratus.africa/mozambique](https://paratus.africa/mozambique) — ISP/DC operator marketing · _Paratus Mozambique Data Centre (Maputo) / Maputo_
- [2017] [https://paratus.africa/services/data-center-services](https://paratus.africa/services/data-center-services) — ISP/DC operator marketing · _Paratus Mozambique Data Centre (Maputo) / Maputo_
- [2021,2023] [https://reliefweb.int/report/mozambique/briefing-note-civil-documentation-idps-mozambique-august-2021-enpt](https://reliefweb.int/report/mozambique/briefing-note-civil-documentation-idps-mozambique-august-2021-enpt) — humanitarian aggregator · _Legal Proof Status_
- [2024] [https://uqudo.com/mozambique-kyc-aml-services](https://uqudo.com/mozambique-kyc-aml-services) — vendor · _KYC Enablement_
- [2024] [https://usesmileid.com/countries/mozambique](https://usesmileid.com/countries/mozambique) — vendor marketing · _KYC Enablement_
- [https://www.afribit.co.za/2025/03/27/google-expands-in-africa-how-gcps-new-cloud-region-competes-with-aws](https://www.afribit.co.za/2025/03/27/google-expands-in-africa-how-gcps-new-cloud-region-competes-with-aws) — crypto outlet · _Cloud Services Availability_
- [2023] [https://www.icolo.io/location/mpm1](https://www.icolo.io/location/mpm1) — DC operator marketing · _iColo Maputo One (MPM1) / Maputo_
- [2023] [https://www.icolo.io/news/icolo-announces-opening-of-mpm1-data-center-in-maputo](https://www.icolo.io/news/icolo-announces-opening-of-mpm1-data-center-in-maputo) — DC operator marketing · _iColo Maputo One (MPM1) / Maputo_
- [2024] [https://www.laxton.com/case-studies/mozambiques-elections-2024](https://www.laxton.com/case-studies/mozambiques-elections-2024) — vendor · _Status_
- [2024] [https://www.raxiogroup.com/data-centres/mozambique](https://www.raxiogroup.com/data-centres/mozambique) — DC operator marketing · _Raxio Mozambique MZ1 / Matola_
- [2025] [https://www.tandfonline.com/doi/full/10.1080/2157930X.2025.2514919](https://www.tandfonline.com/doi/full/10.1080/2157930X.2025.2514919) — academic journal · _Off-Grid and Distributed Energy Policy_

## D · resource / entity (not a dated source)  (36)

- [2019] [https://adi.a4ai.org/wp-content/uploads/2019/02/A4AI_Mozambique_Country_Report.pdf](https://adi.a4ai.org/wp-content/uploads/2019/02/A4AI_Mozambique_Country_Report.pdf) — A4AI affordability index (standing resource; date-exempt) · _Mobile Data Affordability_
- [2023] [https://africadca.org/en/master-power-technologies-becomes-first-african-data-centre-builder-to-achieve-european-certification](https://africadca.org/en/master-power-technologies-becomes-first-african-data-centre-builder-to-achieve-european-certification) — data-centre association · _Master Power Technologies Nacala Data Centre / Nacala_
- [2023] [https://civil.registos.gov.mz/crvs](https://civil.registos.gov.mz/crvs) — MOZ civil registry portal · _Status_
- [2025] [https://cloudscene.com/market/data-centers-in-mozambique/maputo](https://cloudscene.com/market/data-centers-in-mozambique/maputo) — DC/network registry · _Commercial Data Center Presence_
- [2011] [https://data.worldbank.org/indicator/SP.REG.BRTH.ZS?locations=MZ](https://data.worldbank.org/indicator/SP.REG.BRTH.ZS?locations=MZ) — WB indicators · _Uptake_
- [https://datacenterplatform.com/data-centers/eduardo-mondlane-university](https://datacenterplatform.com/data-centers/eduardo-mondlane-university) — DC registry/directory · _Eduardo Mondlane University Data Centre (CIUEM) / Maputo_
- [https://datacenterplatform.com/data-centers/teledata-mozambique](https://datacenterplatform.com/data-centers/teledata-mozambique) — DC registry/directory · _Teledata Mozambique Data Centre / Maputo_
- [2024,2025] [https://digitalid.design/RIA%20docs/CIS_DigitalID_RIA_Mozambique_31.10.21.pdf](https://digitalid.design/RIA%20docs/CIS_DigitalID_RIA_Mozambique_31.10.21.pdf) — DPI/ID reference · _Civil Registration & Vital Statistics Integration_
- [2023] [https://geospatial.com/country_profiles/mozambique](https://geospatial.com/country_profiles/mozambique) — geospatial reference · _Separate cadastral register_
- [2018,2021,2023] [https://globalprotectioncluster.org/sites/default/files/2022-07/210817_briefing_note_civil_registration_eng_final.pdf](https://globalprotectioncluster.org/sites/default/files/2022-07/210817_briefing_note_civil_registration_eng_final.pdf) — protection-cluster reference · _Legal Proof Status_
- [2009] [https://inflect.com/building/av-marginal-percela-141-5c-maputo/seacom/datacenter/seacom-maputo-cls](https://inflect.com/building/av-marginal-percela-141-5c-maputo/seacom/datacenter/seacom-maputo-cls) — DC/network registry · _SEACOM Maputo Cable Landing Station / Maputo_
- [2021] [https://ipcid.org/sites/default/files/pub/en/OP518_Registration_and_payments_in_the_INAS_IP.pdf](https://ipcid.org/sites/default/files/pub/en/OP518_Registration_and_payments_in_the_INAS_IP.pdf) — ID reference org · _Status_
- [2025] [https://partechpartners.com/news/2025-partech-africa-tech-vc-report-african-tech-funding-rebounds-to-us41b-driven-by-record-debt-activity-and-disciplined-equity-growth](https://partechpartners.com/news/2025-partech-africa-tech-vc-report-african-tech-funding-rebounds-to-us41b-driven-by-record-debt-activity-and-disciplined-equity-growth) — Partech VC flagship · _Tech Startup Ecosystem_
- [https://pulse.internetsociety.org/en/ixp-tracker/ixp/260](https://pulse.internetsociety.org/en/ixp-tracker/ixp/260) — ISOC internet indicators · _Eduardo Mondlane University Data Centre (CIUEM) / Maputo_
- [2023] [https://subnational.doingbusiness.org/en/data/exploretopics/registering-property/mozambique](https://subnational.doingbusiness.org/en/data/exploretopics/registering-property/mozambique) — Doing Business archive · _Status_
- [2024] [https://utente.srn.gov.mz](https://utente.srn.gov.mz) — MOZ registry portal · _Status_
- [2015] [https://webapps.ilo.org/ievaldiscovery/files/file/206220](https://webapps.ilo.org/ievaldiscovery/files/file/206220) — ILO reference · _Uptake_
- [2022,2024,2025,2026] [https://www.africanenda.org/uploads/files/siips2025/siips_2025_SIMO-Mozambique_CaseStudy_en.pdf](https://www.africanenda.org/uploads/files/siips2025/siips_2025_SIMO-Mozambique_CaseStudy_en.pdf) — AfricaNenda SIIPS flagship · _Business-to-Business (B2B) Payments_
- [2010] [https://www.aler-renovaveis.org/contents/lerpublication/IRENA_2010_Mozambique_Renewable_Energy_Country_Profile.pdf](https://www.aler-renovaveis.org/contents/lerpublication/IRENA_2010_Mozambique_Renewable_Energy_Country_Profile.pdf) — renewable-energy reference · _Renewable Energy Share of Generation_
- [2024] [https://www.at.gov.mz/eng/Internacional-Trade/FAQ-s/NUIT](https://www.at.gov.mz/eng/Internacional-Trade/FAQ-s/NUIT) — MOZ tax authority portal · _Status_
- [2026] [https://www.bancomoc.mz/en/media/highlights/notice-no-1-gbm-2026-establishes-the-mozambique-instant-payment-system-and-approves-its-regulation](https://www.bancomoc.mz/en/media/highlights/notice-no-1-gbm-2026-establishes-the-mozambique-instant-payment-system-and-approves-its-regulation) — MOZ central bank · _Digital Payment System Exists_
- [https://www.ciuem.mz](https://www.ciuem.mz) — university/IXP org · _Eduardo Mondlane University Data Centre (CIUEM) / Maputo_
- [2025] [https://www.datacentermap.com/ixp/moz-ix](https://www.datacentermap.com/ixp/moz-ix) — DC registry/directory · _Internet Exchange Point Presence_
- [2005] [https://www.datacentermap.com/mozambique/maputo/bcx-maputo](https://www.datacentermap.com/mozambique/maputo/bcx-maputo) — DC registry/directory · _BCX Maputo Data Centre / Maputo_
- [2009] [https://www.datacentermap.com/mozambique/maputo/seacom-maputo-cls](https://www.datacentermap.com/mozambique/maputo/seacom-maputo-cls) — DC registry/directory · _SEACOM Maputo Cable Landing Station / Maputo_
- [https://www.datacentermap.com/mozambique/maputo/teledata-data-center](https://www.datacentermap.com/mozambique/maputo/teledata-data-center) — DC registry/directory · _Teledata Mozambique Data Centre / Maputo_
- [2025] [https://www.datacentermap.com/mozambique/maputo/vodacom-matola-data-center](https://www.datacentermap.com/mozambique/maputo/vodacom-matola-data-center) — DC registry/directory · _Vodacom Business Data Centre (Matola) / Matola_
- [2019] [https://www.dlapiperdataprotection.com/?t=law&amp](https://www.dlapiperdataprotection.com/?t=law&amp) — DLA Piper DP tool · _Data Localisation Requirements_
- [2018,2023,2024,2025] [https://www.dlapiperdataprotection.com/index.html?t=law&c=MZ](https://www.dlapiperdataprotection.com/index.html?t=law&c=MZ) — DLA Piper DP tool · _Enabling Legislation_
- [2024] [https://www.ibanet.org/document?id=Digital-Regulations-in-the-Metaverse-Era-Mozambique](https://www.ibanet.org/document?id=Digital-Regulations-in-the-Metaverse-Era-Mozambique) — IBA reference · _Enabling Legislation_
- [https://www.iicba.unesco.org/en/mozambique](https://www.iicba.unesco.org/en/mozambique) — UNESCO reference · _Tertiary ICT/STEM Education_
- [2023] [https://www.submarinenetworks.com/en/stations/africa/mozambique/maputo-mpm1](https://www.submarinenetworks.com/en/stations/africa/mozambique/maputo-mpm1) — cable reference DB · _iColo Maputo One (MPM1) / Maputo_
- [https://www.submarinenetworks.com/en/systems/asia-europe-africa/2africa/wiocc-and-tmcel-partner-to-boost-2africa-connectivity-in-mozambique](https://www.submarinenetworks.com/en/systems/asia-europe-africa/2africa/wiocc-and-tmcel-partner-to-boost-2africa-connectivity-in-mozambique) — cable reference DB · _Tmcel Captive Data Centre (Maputo HQ) / Maputo_
- [2025] [https://www.thedatasphere.org/news/governing-africa-digital-public-infrastructure](https://www.thedatasphere.org/news/governing-africa-digital-public-infrastructure) — Datasphere reference · _Civil Registration & Vital Statistics Integration_
- [2016] [https://www.theglobaleconomy.com/Mozambique/Internet_bandwidth](https://www.theglobaleconomy.com/Mozambique/Internet_bandwidth) — indicator aggregator · _International Internet Bandwidth_
- [2024] [https://www.wipo.int/edocs/gii-ranking/2024/mz.pdf](https://www.wipo.int/edocs/gii-ranking/2024/mz.pdf) — WIPO GII flagship · _Global Innovation Index Ranking_

## Pre-2024 (excluded at assessment)

- [2023] [https://cipesa.org/2022/12/towards-an-effective-biometrics-and-digital-identity-system-in-africa](https://cipesa.org/2022/12/towards-an-effective-biometrics-and-digital-identity-system-in-africa) — pre-2024 date encoded in URL
- [2023,2024] [https://greaterinternetfreedom.org/wp-content/uploads/2023/10/Mozambique_BDI-Research.pdf](https://greaterinternetfreedom.org/wp-content/uploads/2023/10/Mozambique_BDI-Research.pdf) — pre-2024 date encoded in URL
- [2014] [https://it-online.co.za/2013/09/18/vodacom-mozambique-orders-ecentre](https://it-online.co.za/2013/09/18/vodacom-mozambique-orders-ecentre) — pre-2024 date encoded in URL
- [2019,2023] [https://silicontrust.org/2019/03/12/muhlbauer-provides-government-solutions-for-the-republic-of-mozambique](https://silicontrust.org/2019/03/12/muhlbauer-provides-government-solutions-for-the-republic-of-mozambique) — pre-2024 date encoded in URL
- [2024] [https://www.biometricupdate.com/202304/biometric-sim-registration-soon-in-mozambique-ghana-orders-block-of-unlinked-lines](https://www.biometricupdate.com/202304/biometric-sim-registration-soon-in-mozambique-ghana-orders-block-of-unlinked-lines) — pre-2024 date encoded in URL
- [2023] [https://www.icolo.io/wp-content/uploads/2023/03/MPM1_Technical-Specification-Sheet.pdf](https://www.icolo.io/wp-content/uploads/2023/03/MPM1_Technical-Specification-Sheet.pdf) — pre-2024 date encoded in URL
- [2019,2021,2023] [https://www.muehlbauer.de/company/press/press-releases/2020/mozambique-id-secure-document-news](https://www.muehlbauer.de/company/press/press-releases/2020/mozambique-id-secure-document-news) — pre-2024 date encoded in URL
- [2021] [https://www.worldbank.org/en/news/press-release/2021/12/14/world-bank-supports-greater-access-to-energy-and-broadband-services-in-rural-mozambique](https://www.worldbank.org/en/news/press-release/2021/12/14/world-bank-supports-greater-access-to-energy-and-broadband-services-in-rural-mozambique) — pre-2024 date encoded in URL

## Phase-2 run summary (fetch → clips)

**25 A-web → 14 clips (11 skipped).**
- **Clips (14):** trade.gov digital-transformation-strategy (2025-07-16); World Bank free-IDs feature (2024-07-03) + Biometric Update 202407 free-ID (Mühlbauer/DNIC/EDGE) + AIM 34%-ID (2024-06-12, fetched on retry) [free-ID/legal-identity cluster]; We Are Tech NDTS drafting (2026-02-16) [hub-overlap]; TechHive PDP-law review (2025-09-23) [gap]; 360mozambique biometric-SIM/NUTEL (2024-01-18); blogs.worldbank small-merchants digital-payments (2025-10-28); DataReportal Digital-2024; DCD BCX-Alibaba-Cloud (on-byline 2024-06-10); DCD Vodacom-Maputo DC (2025-03-31) + 360moz Vodacom Business DC (2025-04-23) [same facility]; DCD Raxio-MZ1 (2024-05-28) + CIO Africa Raxio (2024-05-28) [same launch].
- **Skipped — pre-2024 (6):** trade.gov digital-governance (on-page **2023-02-06**); 360moz WB-$150m-EDGE (**2021-10-28**); blogs.worldbank displaced-people ID/CR (**2023-01-04**); developingtelecoms biometric-SIM (**2023-04-25**); 360moz taxpayer-portal (**2022-03-22**); DCD 2Africa-goes-live (on-byline **2023-08-15**) & totaltele 2Africa-lands (**2023-08-15**, login-walled).
- **Skipped — marginal/regional (3):** worldbank AFE-energy PR (2025-03-21, electricity-access, off-core → B); GSMA "618 active tech hubs" (2019, continental → B); DCD Vodacom-$25m (CRAWL_LIVECRAWL_TIMEOUT + dup of the Vodacom-Maputo clip).
- **DCD date trap handled:** every DCD facility page shows a bogus "14 Jul 2026" header — used the on-page bylines (BCX 2024-06-10, Vodacom 2025-03-31, Raxio 2024-05-28, 2Africa 2023-08-15).
- **Overlap flag:** We Are Tech NDTS-drafting (11-12 Feb 2026 National Conference on Digital Transformation, INTIC/Chemane) vs hub's 2026-02-21 "digital-government overhaul" (Chapo, "first national digital-transformation conference") — **very likely the same event; reconcile date (12 vs 21 Feb) and merge.**
- **Clusters:** free-ID/legal-identity (WB + BU + AIM; DNIC/DNRN, 140k IDs, nationwide free campaign 13 Nov 2023); Maputo/Matola data-centre market (Vodacom ×2 = one facility; Raxio ×2 = one launch; BCX-Alibaba distinct). **Gap filled:** draft Personal Data Protection Law (CNPD/ANPD) not on hub. africa-data-centres.csv 13 rows.
