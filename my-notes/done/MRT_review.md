# MRT — Mauritania: dataset→wiki intake review

*Run 2026-07-16 (wave MDG/MLI/MOZ/MRT, inline). Phase-1 assessment + Phase-2 fetch, per `country-ingest-workflow.md`.*

## Header counts

- **Total distinct source URLs:** 59
- **Already held (hub):** 0
- **Excluded (pre-2024, by URL/dataset date):** 2
- **New & in-window:** 57
  - A-web 17 · A-PDF 2 · B 2 · C 13 · D 23

**Hub status:** bare `status: stub` (813 bytes) capturing Mauritania only as a submarine-cable landing point → 0 held, whole DPI record NET-NEW. **This run gives enough to expand the stub into a real hub.** Threads to seed: **e-gov portal** (Ijraati 800 procedures + Khdamati remote-transaction layer, MTNIMA, "Digital-Y" €4m/GIZ); **digital ID** (e-ID Mauritania → "Houwiyeti" app, TECH5 + SmartMS + UNDP pilot 2022-24, open-source/MOSIP; ANRPTS/SIGPTS national biometric system, >94% ID coverage; 70% of passport requests via Houwiyeti); **Nouakchott Tier III data centre** (EIB €15m, WARCIP/World Bank, Uptime-certified, operated by IMT/Mauripost + 3 telcos; ACE cable 2010 + Ellalink 2nd cable); **biometric SIM enforcement** (ARE notices to Mattel/Mauritel/Chinguitel, Jan 2026); **connectivity baseline** (DataReportal). Institutions: MTNIMA ministry, High-Level Digital Council (HCN, PM-chaired), ANRPTS, ARE, GIMTEL switch. Name-match "mauritan" guarded against "mauritius"; clean. africa-data-centres.csv had 1 MRT row (Nouakchott Data Hub / Uptime → D).

## A-web · ingest (non-PDF)  (17)

- [2025] [https://africabriefing.com/africa-digital-id-progress](https://africabriefing.com/africa-digital-id-progress) — Africa policy reporting · _Population Coverage_
- [2012] [https://cridem.org/C_Info.php?article=747477](https://cridem.org/C_Info.php?article=747477) — MRT national news portal · _Legal Framework_
- [2023] [https://datareportal.com/reports/digital-2025-mauritania](https://datareportal.com/reports/digital-2025-mauritania) — DataReportal digital profile · _Internet Usage Rate_
- [2023] [https://idtechwire.com/mauritania-launches-digital-id-for-e-services-built-on-tech5-platform](https://idtechwire.com/mauritania-launches-digital-id-for-e-services-built-on-tech5-platform) — ID-tech country reporting · _Digital Authentication Function_
- [2022,2025] [https://policyaccelerator.uncdf.org/whats-new/mauritania-journey-financial-inclusion](https://policyaccelerator.uncdf.org/whats-new/mauritania-journey-financial-inclusion) — UNCDF country work · _KYC Enablement_
- [2018,2021] [https://policyaccelerator.uncdf.org/whats-new/mauritania-regulatory-framework](https://policyaccelerator.uncdf.org/whats-new/mauritania-regulatory-framework) — UNCDF country work · _Consumer Protection Framework for Payments_
- [2022] [https://www.alliance-sahel.org/en/an-inclusive-social-protection-system-in-mauritania](https://www.alliance-sahel.org/en/an-inclusive-social-protection-system-in-mauritania) — AES/Sahel Alliance country programme · _Social Services Use_
- [2024] [https://www.biometricupdate.com/202408/mauritania-launches-digital-id-app-to-boost-access-to-services-and-improve-governance](https://www.biometricupdate.com/202408/mauritania-launches-digital-id-app-to-boost-access-to-services-and-improve-governance) — biometric/ID country reporting · _Digital ID Integration_
- [2020,2023,2025] [https://www.biometricupdate.com/202505/african-nations-making-digital-id-gains-in-the-face-of-common-challenges](https://www.biometricupdate.com/202505/african-nations-making-digital-id-gains-in-the-face-of-common-challenges) — biometric/ID country reporting · _Digital Authentication Function_
- [2025] [https://www.datacenterdynamics.com/en/news/ellalink-to-expand-subsea-cable-to-mauritania](https://www.datacenterdynamics.com/en/news/ellalink-to-expand-subsea-cable-to-mauritania) — DCD data-centre reporting (use on-byline date) · _Nouakchott Data Hub / Nouakchott_
- [2026] [https://www.ecofinagency.com/news-digital/1601-51999-mauritania-steps-up-pressure-on-telecom-operators-over-biometric-identification](https://www.ecofinagency.com/news-digital/1601-51999-mauritania-steps-up-pressure-on-telecom-operators-over-biometric-identification) — Ecofin EN country reporting · _SIM Card Registration Use_
- [2024,2025,2026] [https://www.ecofinagency.com/news-digital/1902-53059-mauritania-puts-800-administrative-procedures-online-in-digital-reform-drive](https://www.ecofinagency.com/news-digital/1902-53059-mauritania-puts-800-administrative-procedures-online-in-digital-reform-drive) — Ecofin EN country reporting · _Business Registration & Licensing Integration_
- [2025] [https://www.eeas.europa.eu/delegations/mauritania/construction-datacenter-nouakchott-mauritania_en](https://www.eeas.europa.eu/delegations/mauritania/construction-datacenter-nouakchott-mauritania_en) — EU delegation country news · _Commercial Data Center Presence_
- [2025] [https://www.eib.org/en/press/all/2025-202-inauguration-du-centre-d-hebergement-de-donnees-numeriques-de-nouakchott](https://www.eib.org/en/press/all/2025-202-inauguration-du-centre-d-hebergement-de-donnees-numeriques-de-nouakchott) — EIB press · _Data Sovereignty Provisions_
- [2023,2024,2026] [https://www.undp.org/blog/mauritania-pilots-digital-id-app](https://www.undp.org/blog/mauritania-pilots-digital-id-app) — UNDP country news · _Civil Registration & Vital Statistics Integration_
- [2024] [https://www.undp.org/fr/mauritania/actualites/undp-helps-accelerate-inclusive-digital-transformation-mauritania](https://www.undp.org/fr/mauritania/actualites/undp-helps-accelerate-inclusive-digital-transformation-mauritania) — UNDP country news · _Health System Integration_
- [2023,2024,2025] [https://www.wearetech.africa/en/fils-uk/news/public-management/mauritania-centralizes-800-administrative-procedures-in-new-digital-portal](https://www.wearetech.africa/en/fils-uk/news/public-management/mauritania-centralizes-800-administrative-procedures-in-new-digital-portal) — WeAreTech country reporting · _Business Registration & Licensing Integration_

## A-PDF · ingest (PDF)  (2)

- [2024] [https://documents1.worldbank.org/curated/en/099031025161532421/pdf/BOSIB-8ecccd7e-e832-4951-9e9b-be98ef43d918.pdf](https://documents1.worldbank.org/curated/en/099031025161532421/pdf/BOSIB-8ecccd7e-e832-4951-9e9b-be98ef43d918.pdf) — WB project/report PDF · _Renewable Energy Share of Generation_
- [2021] [https://documents1.worldbank.org/curated/en/481901627264822850/txt/Mauritania-Second-Private-Sector-Digital-and-Human-Capital-Reform-Development-Policy-Financing.txt](https://documents1.worldbank.org/curated/en/481901627264822850/txt/Mauritania-Second-Private-Sector-Digital-and-Human-Capital-Reform-Development-Policy-Financing.txt) — WB project/report PDF · _Ministry of Finance Oversight_

## B · check first  (2)

- [2024] [https://businessfocus.org.uk/setting-the-agenda-for-digital-transformation](https://businessfocus.org.uk/setting-the-agenda-for-digital-transformation) — unknown-quality outlet · _Agriculture System Integration_
- [2022] [https://www.jdsupra.com/legalnews/recent-developments-in-african-data-9981570](https://www.jdsupra.com/legalnews/recent-developments-in-african-data-9981570) — law-firm repost (verify) · _Data Protection Legislation_

## C · lead only (do not cite)  (13)

- [2024] [https://europeansting.com/2025/05/13/mauritania-nouakchott-data-centre-inaugurated](https://europeansting.com/2025/05/13/mauritania-nouakchott-data-centre-inaugurated) — aggregator · _Sustainability_
- [2017,2021] [https://fr.wikipedia.org/wiki/Autorit%C3%A9_de_protection_des_donn%C3%A9es_%C3%A0_caract%C3%A8re_personnel_en_Mauritanie](https://fr.wikipedia.org/wiki/Autorit%C3%A9_de_protection_des_donn%C3%A9es_%C3%A0_caract%C3%A8re_personnel_en_Mauritanie) — Wikipedia · _Data Protection Authority Oversight_
- [https://github.com/gayanvoice/top-github-users/blob/main/markdown/public_contributions/mauritania.md](https://github.com/gayanvoice/top-github-users/blob/main/markdown/public_contributions/mauritania.md) — code repo · _Developer and Tech Community_
- [2017] [https://lawgratis.com/blog-detail/privacy-law-at-mauritania](https://lawgratis.com/blog-detail/privacy-law-at-mauritania) — law blog · _Data Protection Act_
- [2024] [https://play.google.com/store/apps/details?id=com.tech5.mauritania&hl=en_US](https://play.google.com/store/apps/details?id=com.tech5.mauritania&hl=en_US) — app store listing · _Digital ID Specific Regulation_
- [2023] [https://rimbyreports.org/wp-content/uploads/2025/01/rapport_audit_et_maquette_des_etats_financiers_ifrs_au_31_12_2023_final_17df49d78f.pdf](https://rimbyreports.org/wp-content/uploads/2025/01/rapport_audit_et_maquette_des_etats_financiers_ifrs_au_31_12_2023_final_17df49d78f.pdf) — low-authority reports · _Independent Audits and Reviews_
- [2017,2020,2022,2023,2024] [https://tech5.ai/mauritania-digital-id-undp-funding](https://tech5.ai/mauritania-digital-id-undp-funding) — vendor (flag if primary) · _Digital Authentication Function_
- [2024] [https://www.afribit.co.za/2025/03/27/google-expands-in-africa-how-gcps-new-cloud-region-competes-with-aws](https://www.afribit.co.za/2025/03/27/google-expands-in-africa-how-gcps-new-cloud-region-competes-with-aws) — crypto outlet · _Cloud Services Availability_
- [https://www.africaknows.eu/pdfs/copr31.pdf](https://www.africaknows.eu/pdfs/copr31.pdf) — conference · _Tertiary ICT/STEM Education_
- [2012,2013] [https://www.ecoi.net/en/document/1176967.html](https://www.ecoi.net/en/document/1176967.html) — country-info aggregator · _Cost of Credential_
- [2012,2013,2017,2020,2022,2024] [https://www.ecoi.net/en/document/1187051.html](https://www.ecoi.net/en/document/1187051.html) — country-info aggregator · _Judicial Oversight_
- [2024] [https://www.sofrecom.com/en/news-insights/digitization-of-payments-in-mauritania.html](https://www.sofrecom.com/en/news-insights/digitization-of-payments-in-mauritania.html) — Orange consulting vendor · _Government-to-Person (G2P) Payments_
- [2025] [https://www.transfi.com/blog/mauritanias-payment-rails-how-they-work---national-switch-e-banking-mobile-wallet-expansion](https://www.transfi.com/blog/mauritanias-payment-rails-how-they-work---national-switch-e-banking-mobile-wallet-expansion) — fintech vendor · _Cross-Border Payment Functionality_

## D · resource / entity (not a dated source)  (23)

- [2023] [https://data.worldbank.org/indicator/EG.ELC.ACCS.ZS?locations=MR](https://data.worldbank.org/indicator/EG.ELC.ACCS.ZS?locations=MR) — WB indicators · _Electricity Access Rate_
- [2017,2023,2024,2025] [https://dataprotection.africa/mauritania](https://dataprotection.africa/mauritania) — DP profile · _Enabling Legislation_
- [2022,2024,2025] [https://dig.watch/countries/mauritania](https://dig.watch/countries/mauritania) — digwatch reference · _Electoral Register Integration_
- [2022,2024,2025,2026] [https://dig.watch/resource/mauritanias-national-digital-transformation-agenda-2022-2025](https://dig.watch/resource/mauritanias-national-digital-transformation-agenda-2022-2025) — digwatch reference · _Agriculture System Integration_
- [2022,2024] [https://dig.watch/resource/the-national-strategy-for-open-and-interoperable-data-of-mauritania](https://dig.watch/resource/the-national-strategy-for-open-and-interoperable-data-of-mauritania) — digwatch reference · _National Planning & Statistics Integration_
- [2021,2025] [https://gimtel.mr/fr/missions](https://gimtel.mr/fr/missions) — MRT payment-switch entity · _Central Bank Involvement in Governance_
- [2026] [https://impots.gov.mr/DGI/teleservices.html](https://impots.gov.mr/DGI/teleservices.html) — MRT official portal/entity · _Revenue Collection_
- [2022] [https://jointsdgfund.org/article/integrated-social-protection-model-guidimakha-region-mauritania](https://jointsdgfund.org/article/integrated-social-protection-model-guidimakha-region-mauritania) — UN SDG fund portal · _Healthcare Access Use_
- [2024] [https://publicadministration.un.org/egovkb/en-us/Data/City/id/151-Nouakchott/dataYear/2024](https://publicadministration.un.org/egovkb/en-us/Data/City/id/151-Nouakchott/dataYear/2024) — UN E-Gov Survey · _E-Government Development_
- [https://rise.esmap.org/country/mauritania](https://rise.esmap.org/country/mauritania) — ESMAP RISE indicators · _Off-Grid and Distributed Energy Policy_
- [2024] [https://statbase.org/data/mrt-global-cybersecurity-index](https://statbase.org/data/mrt-global-cybersecurity-index) — stats aggregator · _National Cybersecurity Readiness_
- [2022] [https://upr-info.org/sites/default/files/documents/2015-10/unhcr_upr23_mrt_e_main.pdf](https://upr-info.org/sites/default/files/documents/2015-10/unhcr_upr23_mrt_e_main.pdf) — UPR aggregator/reference · _Biometric Data Collection_
- [2025] [https://uptimeinstitute.com/component/tierachievement/datacenter/nouakchott-data-hub-/1291](https://uptimeinstitute.com/component/tierachievement/datacenter/nouakchott-data-hub-/1291) — Uptime tier-certification registry · _Nouakchott Data Hub / Nouakchott_
- [2019] [https://wuri.ecowas.int/the-west-africa-unique-identification-for-regional-integration-and-inclusion-wuri-programme-to-hold-its-maiden-regional-sensitisation-and-awareness-event](https://wuri.ecowas.int/the-west-africa-unique-identification-for-regional-integration-and-inclusion-wuri-programme-to-hold-its-maiden-regional-sensitisation-and-awareness-event) — WURI regional programme · _Cross-Border Recognition_
- [2024] [https://www.afi-global.org/wp-content/uploads/2024/10/AFI_FDPs_CS_MAURITANIA_FINAL.pdf](https://www.afi-global.org/wp-content/uploads/2024/10/AFI_FDPs_CS_MAURITANIA_FINAL.pdf) — AFI financial-inclusion reference · _Refugee and Migrant Access_
- [2017] [https://www.apd.mr/fr/plan-stragtegique-2023-2026](https://www.apd.mr/fr/plan-stragtegique-2023-2026) — MRT data-protection authority portal · _Data Sharing Rules_
- [2014] [https://www.ceicdata.com/en/mauritania/business-environment/mr-power-outages-in-firms-in-a-typical-month](https://www.ceicdata.com/en/mauritania/business-environment/mr-power-outages-in-firms-in-a-typical-month) — CEIC indicators · _Grid Reliability (Power Outage Frequency)_
- [2024] [https://www.dataguidance.com/jurisdictions/mauritania](https://www.dataguidance.com/jurisdictions/mauritania) — DataGuidance login-walled reference (skip at fetch) · _Enabling Legislation_
- [2021] [https://www.gbm-banque.com/en/actualites/bcm-new-agreement-implementation-interoperable-mobile-payment-project](https://www.gbm-banque.com/en/actualites/bcm-new-agreement-implementation-interoperable-mobile-payment-project) — MRT bank entity · _Central Bank Involvement in Governance_
- [2021,2022] [https://www.itu.int/en/ITU-D/Statistics/Documents/DDD/ddd_MRT.pdf](https://www.itu.int/en/ITU-D/Statistics/Documents/DDD/ddd_MRT.pdf) — ITU reference/MDD · _4G/LTE Population Coverage_
- [2025] [https://www.mauritaniatenders.com/tender/implementation-instant-payment-system-mauritania-enabling-interoperability-financial-services-7034e4b.php](https://www.mauritaniatenders.com/tender/implementation-instant-payment-system-mauritania-enabling-interoperability-financial-services-7034e4b.php) — tenders portal · _Digital Payment System Exists_
- [2022] [https://www.rfilc.org/wp-content/uploads/2022/07/Leveraging-Digital-ID-and-e-KYC-for-the-Financial-Inclusion-of-Forcibly-Displaced-Persons-Risks-and-Opportunities.pdf](https://www.rfilc.org/wp-content/uploads/2022/07/Leveraging-Digital-ID-and-e-KYC-for-the-Financial-Inclusion-of-Forcibly-Displaced-Persons-Risks-and-Opportunities.pdf) — rural finance library (standing resource; date-exempt) · _KYC Enablement_
- [2024] [https://www.wipo.int/edocs/gii-ranking/2024/mr.pdf](https://www.wipo.int/edocs/gii-ranking/2024/mr.pdf) — WIPO GII flagship · _Global Innovation Index Ranking_

## Pre-2024 (excluded at assessment)

- [2019] [https://www.chathamhouse.org/2019/04/mauritanias-unfolding-landscape/2-straddling-maghreb-and-west-africa](https://www.chathamhouse.org/2019/04/mauritanias-unfolding-landscape/2-straddling-maghreb-and-west-africa) — pre-2024 date encoded in URL
- [2012,2020,2022] [https://www.hrw.org/news/2018/03/29/mauritania-administrative-obstacles-keep-kids-school](https://www.hrw.org/news/2018/03/29/mauritania-administrative-obstacles-keep-kids-school) — pre-2024 date encoded in URL

## Phase-2 run summary (fetch → clips)

**17 A-web → 9 clips (8 skipped). MRT was a bare stub → every clip is net-new; seeds a real hub.**
- **Clips (9):** We Are Tech "Ijraati" 800-procedures portal (2026-02-22) [Ecofin 53059 folded as same-author dup]; UNDP e-ID pilot blog (2024-08-01) + Biometric Update 202408 e-ID app (2024-08-02) + ID Tech Wire Houwiyeti/TECH5 (2024-08-15) [digital-ID cluster]; EIB Nouakchott data-centre press (2025-05-08) + EEAS datacenter note (2025-08-20) [same facility]; Biometric Update ID4Africa "94% coverage" (2025-05-20) [Africa Briefing dup folded]; Ecofin 51999 biometric-SIM telecom pressure (2026-01-16); DataReportal Digital-2025.
- **Skipped — pre-2024 (4):** UNDP-fr accelerate-inclusive-transformation (**2022-01-21**, MTNIMA/ANETA/HCN founding — useful background, flagged); Alliance-Sahel social-protection (**2020**, TEKAVOUL/Social Register); UNCDF policyaccelerator journey-financial-inclusion (**2020-09-21**); cridem.org C_Info article 747477 (**2012**, not fetched).
- **Folded dups (2):** Ecofin 53059 (Ijraati, same author Isaac Kassouwi as the We Are Tech clip — folded); Africa Briefing "digital ID progress" (2025-05-22, same ID4Africa Day-1 Mauritania update as the Biometric Update clip — folded).
- **Clusters:** (1) **Digital ID** — UNDP pilot + Biometric Update + ID Tech Wire (e-ID Mauritania → "Houwiyeti"; TECH5 T5-OmniMatch/AirSnap/LDS + SmartMS + UNDP; MOSIP link) + ID4Africa "94% coverage / SIGPTS / ANRPTS / 622k extracts". (2) **Nouakchott Tier III data centre** — EIB + EEAS (€15m EIB, WARCIP, Uptime-certified, IMT/Mauripost + 3 telcos, ACE + Ellalink cables). (3) **e-gov portal** — Ijraati/Khdamati. **Reconcile:** Mauritania "94% ID coverage since 2020" (ID4Africa) vs the 2024 UNDP/TECH5 e-ID app being a NEW digital-ID layer atop the existing SIGPTS biometric base — dated series, not a contradiction. Name-match "mauritan" clean vs Mauritius.
