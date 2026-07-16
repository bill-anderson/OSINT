# CIV (Côte d'Ivoire) — dataset ingest review

**Run date:** 2026-07-15 · **Country:** Côte d'Ivoire (CIV) · **Hub:** `wiki/places/CIV.md`

*Autonomous Assess→Fetch pass per `country-ingest-workflow.md`. This review is a record of the run, not an approval gate; Phase 2 (fetch A-web → `/new-queue`) follows immediately.*

## Counts

- **Dataset rows (CIV):** 147 africa-dpi + 9 africa-data-centres + 4 african-rural-digitalisation
- **Total distinct source URLs:** 107
- **Already held / covered by hub (no action):** 0
- **Excluded (pre-2024):** 22
- **New & in-window:** 85
  - **A-web** (fetch this pass): 19
  - **A-PDF** (Bill, by hand): 2
  - **B** (check first): 11
  - **C** (lead only): 15
  - **D** (resource/entity): 38

*The CIV hub is substantial (Via Africa cable, MaPoste, Orange Sat, the strategy-alignment seminar, the Data Governance 2030 / AI / Cybersecurity strategy stack), but its source clips are distinct pieces that none of the dataset candidate URLs duplicate — so no candidate is dropped as already-held. Topical overlap with hub coverage is flagged per-item below where relevant.*

## Excluded — source produced before 2024-01-01

- [https://archive.doingbusiness.org/content/dam/doingBusiness/country/c/cote-divoire/CIV.pdf](https://archive.doingbusiness.org/content/dam/doingBusiness/country/c/cote-divoire/CIV.pdf) — Doing Business CIV, 2020.
- [https://cipit.strathmore.edu/wp-content/uploads/2021/04/InclusionExclusionWestAfrica.pdf](https://cipit.strathmore.edu/wp-content/uploads/2021/04/InclusionExclusionWestAfrica.pdf) — CIPIT report, 2021-04.
- [https://communicationsafrica.com/internet/orange-selects-engie-for-operations-and-maintenance-of-west-african-datacentre](https://communicationsafrica.com/internet/orange-selects-engie-for-operations-and-maintenance-of-west-african-datacentre) — Communications Africa, 2016.
- [https://dataprotection.africa/wp-content/uploads/2020/03/Ivory-Coast-Factsheet-updated-20200331.pdf](https://dataprotection.africa/wp-content/uploads/2020/03/Ivory-Coast-Factsheet-updated-20200331.pdf) — DP Africa factsheet, 2020-03.
- [https://documents1.worldbank.org/curated/en/903901513579161990/pdf/122088-WP-PUBLIC-Regulatory-Framework-for-DFS-in-Cote-d-Ivoire-Nov-2017.pdf](https://documents1.worldbank.org/curated/en/903901513579161990/pdf/122088-WP-PUBLIC-Regulatory-Framework-for-DFS-in-Cote-d-Ivoire-Nov-2017.pdf) — World Bank DFS regulatory framework, 2017-11.
- [https://espanol.enterprisesurveys.org/content/dam/enterprisesurveys/documents/country/Cote-Divoire-2023.pdf](https://espanol.enterprisesurveys.org/content/dam/enterprisesurveys/documents/country/Cote-Divoire-2023.pdf) — Enterprise Surveys CIV, 2023.
- [https://gffklportal.org/wp-content/uploads/2020/01/5.5.-Cote-dIvore-CRVS-country-profile.pdf](https://gffklportal.org/wp-content/uploads/2020/01/5.5.-Cote-dIvore-CRVS-country-profile.pdf) — CRVS country profile, 2016/2020.
- [https://id4d.worldbank.org/sites/default/files/2018-04/Cote%20d'Ivoire_ID4D_Diagnostic_Web040618.pdf](https://id4d.worldbank.org/sites/default/files/2018-04/Cote%20d'Ivoire_ID4D_Diagnostic_Web040618.pdf) — World Bank ID4D Diagnostic, 2018-04.
- [https://marcopolis.net/overview-of-sndi-it-development-company-in-cote-d-ivoire.htm](https://marcopolis.net/overview-of-sndi-it-development-company-in-cote-d-ivoire.htm) — Marcopolis SNDI overview, 2012.
- [https://orange.africa-newsroom.com/press/orange-and-engie-join-forces-to-convert-the-gos-oranges-main-data-center-in-africa-to-solar-power-helping-to-reduce-the-carbon-footprint-in-cote-divoire](https://orange.africa-newsroom.com/press/orange-and-engie-join-forces-to-convert-the-gos-oranges-main-data-center-in-africa-to-solar-power-helping-to-reduce-the-carbon-footprint-in-cote-divoire) — Orange/Engie press, 2016.
- [https://www.cgap.org/blog/beyond-regulations-whats-driving-mobile-money-in-cote-divoire](https://www.cgap.org/blog/beyond-regulations-whats-driving-mobile-money-in-cote-divoire) — CGAP blog, 2019.
- [https://www.cullen-international.com/news/2023/10/SIM-card-registration-in-sub-Saharan-Africa.html](https://www.cullen-international.com/news/2023/10/SIM-card-registration-in-sub-Saharan-Africa.html) — Cullen International, 2023-10 (regional).
- [https://www.datacenterdynamics.com/en/news/orange-deploys-solar-panels-at-ivory-coast-data-center](https://www.datacenterdynamics.com/en/news/orange-deploys-solar-panels-at-ivory-coast-data-center) — DCD, 2016.
- [https://www.economie-ivoirienne.ci/en/node/176](https://www.economie-ivoirienne.ci/en/node/176) — economie-ivoirienne.ci node, 2023.
- [https://www.gogla.org/wp-content/uploads/2024/11/Cote-dIvoire-Country-Brief.pdf](https://www.gogla.org/wp-content/uploads/2024/11/Cote-dIvoire-Country-Brief.pdf) — GOGLA country brief, 2020 (dataset).
- [https://www.ifc.org/content/dam/ifc/doc/mgrt/ifc-mcf-field-note-11-digital-social-payments-in-cote-d-ivoire.pdf](https://www.ifc.org/content/dam/ifc/doc/mgrt/ifc-mcf-field-note-11-digital-social-payments-in-cote-d-ivoire.pdf) — IFC field note, 2020.
- [https://www.imf.org/-/media/files/publications/cr/2023/english/1civea2023004.pdf](https://www.imf.org/-/media/files/publications/cr/2023/english/1civea2023004.pdf) — IMF country report, 2023.
- [https://www.itu.int/en/ITU-D/Statistics/Documents/DDD/ddd_CIV.pdf](https://www.itu.int/en/ITU-D/Statistics/Documents/DDD/ddd_CIV.pdf) — ITU DDD statistics, 2022.
- [https://www.submarinenetworks.com/en/systems/euro-africa/mainone/mainone-cable-branch-to-cote-d-ivoire-ready-for-service](https://www.submarinenetworks.com/en/systems/euro-africa/mainone/mainone-cable-branch-to-cote-d-ivoire-ready-for-service) — SubmarineNetworks MainOne, 2019.
- [https://www.telecoms.com/public-cloud/mtn-buys-datacentre-for-ivory-coast](https://www.telecoms.com/public-cloud/mtn-buys-datacentre-for-ivory-coast) — Telecoms.com, 2014.
- [https://www.uschamber.com/international/driving-digital-transformation-with-c%C3%B4te-divoire](https://www.uschamber.com/international/driving-digital-transformation-with-c%C3%B4te-divoire) — US Chamber, 2022.
- [https://www.youtube.com/watch?v=7NzZ_lBEK6I](https://www.youtube.com/watch?v=7NzZ_lBEK6I) — YouTube video, 2014.

## A-web · ingest (non-PDF) — fetched this pass → `/new-queue`

- [https://citizenshiprightsafrica.org/cote-divoire-biometric-card-validity-extended-amid-ongoing-politicization-of-id](https://citizenshiprightsafrica.org/cote-divoire-biometric-card-validity-extended-amid-ongoing-politicization-of-id) — 2024 — biometric card validity extended amid ID politicisation.  
  <sub>dpi · yr 2024 · Digital Id / Digital ID Specific Regulation; Digital Id / Enrollment Eligibility Age</sub>
- [https://datareportal.com/reports/digital-2025-cote-divoire](https://datareportal.com/reports/digital-2025-cote-divoire) — DataReportal Digital 2025 Côte d'Ivoire (reference report).  
  <sub>dpi · yr 2025 · ICT Infrastructure / Smartphone Adoption</sub>
- [https://filetsociaux-ci.org/operationnalisation-du-registre-social-unique-rsu-des-menages-pauvres-et-vulnerables-plus-de-200-000-menages-en-cours-denregistrement](https://filetsociaux-ci.org/operationnalisation-du-registre-social-unique-rsu-des-menages-pauvres-et-vulnerables-plus-de-200-000-menages-en-cours-denregistrement) — Filets Sociaux (2025) — RSU social-registry operationalisation.  
  <sub>dpi · yr 2025 · Registries / Status</sub>
- [https://identityweek.net/ivory-coast-introduces-biometric-residence-cards-2](https://identityweek.net/ivory-coast-introduces-biometric-residence-cards-2) — 2024 — biometric residence cards introduced.  
  <sub>dpi · yr 2024 · Digital Id / Biometric Data Collection; Digital Id / Cross-Border Recognition</sub>
- [https://lexing.network/is-cote-divoire-moving-towards-standard-regulations-for-the-use-of-biometrics](https://lexing.network/is-cote-divoire-moving-towards-standard-regulations-for-the-use-of-biometrics) — Lexing (2024/25) — analyst review of biometrics regulation.  
  <sub>dpi · yr 2024,2025 · Data Exchange / Data Sovereignty Provisions; Digital Id / Data Protection Authority Oversight</sub>
- [https://secureidentityalliance.org/news-events/news/ivory-coast-national-agency-for-civil-registration-and-identity-office-national-de-l-etat-civil-et-de-l-identification-oneci-joins-secure-identity-alliance-as-an-advisory-observer](https://secureidentityalliance.org/news-events/news/ivory-coast-national-agency-for-civil-registration-and-identity-office-national-de-l-etat-civil-et-de-l-identification-oneci-joins-secure-identity-alliance-as-an-advisory-observer) — Secure Identity Alliance (2024) — ONECI joins as advisory observer.  
  <sub>dpi · yr 2024 · Digital Id / System Interoperability</sub>
- [https://techafricanews.com/2025/10/03/st-digital-unveils-eco-responsible-tier-3-datacenter-in-cote-divoire](https://techafricanews.com/2025/10/03/st-digital-unveils-eco-responsible-tier-3-datacenter-in-cote-divoire) — TechAfrica (2025-10) — ST Digital eco-responsible Tier 3 data centre.  
  <sub>datacentre · yr 2025 · facility: ST Digital Grand Bassam (STD Abidjan) (Grand Bassam)</sub>
- [https://trendsnafrica.com/ivory-coast-launches-the-digitalisation-of-its-judicial-services-with-e-justice](https://trendsnafrica.com/ivory-coast-launches-the-digitalisation-of-its-judicial-services-with-e-justice) — TrendsnAfrica (2024/25) — e-Justice judicial digitalisation.  
  <sub>dpi · yr 2024,2025 · Digital Id / Government Portal Authentication; Digital Id / Judicial Oversight</sub>
- [https://www.biometricupdate.com/202510/cybernetica-to-provide-interoperability-layer-for-digital-government-in-cote-divoire](https://www.biometricupdate.com/202510/cybernetica-to-provide-interoperability-layer-for-digital-government-in-cote-divoire) — Biometric Update (2025-10) — Cybernetica UXP interoperability layer.  
  <sub>dpi · Data Exchange / AI/Analytics Capabilities</sub>
- [https://www.datacenterdynamics.com/en/news/cameroons-st-digital-opens-data-center-in-c%C3%B4te-divoire](https://www.datacenterdynamics.com/en/news/cameroons-st-digital-opens-data-center-in-c%C3%B4te-divoire) — DCD (2025) — Cameroon's ST Digital opens CIV data centre.  
  <sub>datacentre · yr 2025 · facility: ST Digital Grand Bassam (STD Abidjan) (Grand Bassam)</sub>
- [https://www.datacenterdynamics.com/en/news/raxio-launches-data-center-in-the-ivory-coast](https://www.datacenterdynamics.com/en/news/raxio-launches-data-center-in-the-ivory-coast) — DCD (2024) — Raxio launches CIV data centre.  
  <sub>datacentre · yr 2024 · facility: Raxio CIV1 (Grand Bassam)</sub>
- [https://www.ecofinagency.com/news-digital/2411-50753-cote-d-ivoire-approves-146-9-million-plan-to-accelerate-digitalisation](https://www.ecofinagency.com/news-digital/2411-50753-cote-d-ivoire-approves-146-9-million-plan-to-accelerate-digitalisation) — Ecofin (2024-11) — $146.9m plan to accelerate digitalisation.  
  <sub>dpi · yr 2024 · Digital Id / Ministry of Finance Oversight; Digital Id / Security Reviews</sub>
- [https://www.ecofinagency.com/news/1912-51548-cote-d-ivoire-economy-ministry-launches-2026-30-digital-strategy](https://www.ecofinagency.com/news/1912-51548-cote-d-ivoire-economy-ministry-launches-2026-30-digital-strategy) — Ecofin (2025) — economy ministry launches 2026-30 digital strategy.  
  <sub>dpi · yr 2024,2025 · Data Exchange / Implementation Roadmap; Data Exchange / National Planning & Statistics Integration</sub>
- [https://www.financialafrik.com/en/2025/09/30/ivory-coast-st-digital-inaugurates-a-state-of-the-art-data-center-in-grand-bassam](https://www.financialafrik.com/en/2025/09/30/ivory-coast-st-digital-inaugurates-a-state-of-the-art-data-center-in-grand-bassam) — Financial Afrik (2025-09) — ST Digital data centre, Grand-Bassam.  
  <sub>datacentre · yr 2025 · facility: ST Digital Grand Bassam (STD Abidjan) (Grand Bassam)</sub>
- [https://www.trade.gov/country-commercial-guides/cote-divoire-digital-economy](https://www.trade.gov/country-commercial-guides/cote-divoire-digital-economy) — US ITA Country Commercial Guide — CIV digital economy (2024/25 reference).  
  <sub>dpi · yr 2022,2024,2025 · Data Exchange / AI/Analytics Capabilities; Data Exchange / Agriculture System Integration</sub>
- [https://www.wearetech.africa/en/fils-uk/news/cote-d-ivoire-budgets-96-8mln-for-2025-digital-agenda](https://www.wearetech.africa/en/fils-uk/news/cote-d-ivoire-budgets-96-8mln-for-2025-digital-agenda) — WeAreTech (2024) — CFA 96.8bn 2025 digital agenda budget.  
  <sub>dpi · yr 2024 · Digital Id / Ministry of Finance Oversight</sub>
- [https://www.wearetech.africa/en/fils-uk/news/public-management/cote-d-ivoire-launches-construction-of-national-tier-3-data-center](https://www.wearetech.africa/en/fils-uk/news/public-management/cote-d-ivoire-launches-construction-of-national-tier-3-data-center) — WeAreTech — national Tier 3 data-centre construction; verify date.  
  <sub>datacentre · facility: National Data Centre Cote d'Ivoire (Digital City Grand Bassam) (Grand Bassam)</sub>
- [https://www.wearetech.africa/en/fils-uk/news/tech/cote-d-ivoire-unveils-uxp-platform-for-secure-government-data-sharing](https://www.wearetech.africa/en/fils-uk/news/tech/cote-d-ivoire-unveils-uxp-platform-for-secure-government-data-sharing) — WeAreTech (2024/25) — UXP secure government data-sharing platform.  
  <sub>dpi · yr 2024,2025 · Data Exchange / Business Registration & Licensing Integration; Data Exchange / Civil Registration & Vital Statistics Int</sub>
- [https://www.wearetech.africa/en/fils-uk/news/tech/ivory-coast-strengthens-e-services-with-digital-nationality-certificate](https://www.wearetech.africa/en/fils-uk/news/tech/ivory-coast-strengthens-e-services-with-digital-nationality-certificate) — WeAreTech (2025) — digital nationality certificate e-service.  
  <sub>dpi · yr 2025 · Digital Id / Government Portal Authentication</sub>

## A-PDF · ingest (PDF) — Bill handles by hand (Phase 3)

- [http://africadca.org/wp-content/uploads/2024/05/ADCA-Report-2024_with-PPT.pdf](http://africadca.org/wp-content/uploads/2024/05/ADCA-Report-2024_with-PPT.pdf) — Africa Data Centres Association Report 2024 (2024-05).  
  <sub>datacentre · yr 2021 · facility: PAIX Abidjan ABJ-1 (Abidjan)</sub>
- [https://www.wipo.int/edocs/gii-ranking/2024/ci.pdf](https://www.wipo.int/edocs/gii-ranking/2024/ci.pdf) — WIPO Global Innovation Index 2024 country profile.  
  <sub>dpi · yr 2024 · ICT Infrastructure / Global Innovation Index Ranking</sub>

## B · check first

- [https://africanlegalfactory.com/2024/01/30/understanding-personal-data-protection-in-cote-divoire/?lang=en](https://africanlegalfactory.com/2024/01/30/understanding-personal-data-protection-in-cote-divoire/?lang=en) — 2024-01 legal blog, unknown-quality outlet — verify.  
  <sub>dpi · yr 2024 · Digital Id / Data Protection Act; Digital Id / Data Protection Authority Oversight</sub>
- [https://ansut.ci/transition-numerique-la-cote-divoire-abritera-le-plus-grand-data-center-dafrique-de-louest-catalyseur-de-la-transformation-digitale](https://ansut.ci/transition-numerique-la-cote-divoire-abritera-le-plus-grand-data-center-dafrique-de-louest-catalyseur-de-la-transformation-digitale) — ANSUT page (largest WA data centre) — undated, verify pub date.  
  <sub>datacentre · facility: National Data Centre Cote d'Ivoire (Digital City Grand Bassam) (Grand Bassam)</sub>
- [https://apnews.com/article/ivory-coast-health-universal-coverage-7eb3ae329c9143aad392c62df1c77981](https://apnews.com/article/ivory-coast-health-universal-coverage-7eb3ae329c9143aad392c62df1c77981) — AP (2024) — universal health coverage, marginal to DPI.  
  <sub>dpi · yr 2024 · Digital Id / Healthcare Access Use</sub>
- [https://r4d.org/projects/increasing-health-insurance-coverage-for-low-income-populations-in-cote-divoire](https://r4d.org/projects/increasing-health-insurance-coverage-for-low-income-populations-in-cote-divoire) — R4D project page (2024) — health insurance, marginal to DPI.  
  <sub>dpi · yr 2024 · Digital Id / Healthcare Access Use</sub>
- [https://sata.smartafrica.org/wp-content/uploads/2025/02/SATA-Creating-Foundations-for-Africas-Digital-Future-1-1.pdf](https://sata.smartafrica.org/wp-content/uploads/2025/02/SATA-Creating-Foundations-for-Africas-Digital-Future-1-1.pdf) — Smart Africa SATA report (2025, PDF) — continental, not CIV-specific.  
  <sub>dpi · yr 2025 · Data Exchange / Digital ID Integration</sub>
- [https://wuri.ecowas.int/the-west-africa-unique-identification-for-regional-integration-and-inclusion-wuri-programme-to-hold-its-maiden-regional-sensitisation-and-awareness-event](https://wuri.ecowas.int/the-west-africa-unique-identification-for-regional-integration-and-inclusion-wuri-programme-to-hold-its-maiden-regional-sensitisation-and-awareness-event) — WURI/ECOWAS (2024) — regional programme event, not CIV-specific.  
  <sub>dpi · yr 2024 · Digital Id / Cross-Border Recognition</sub>
- [https://www.africanwirelesscomms.com/news-details?itemid=9653](https://www.africanwirelesscomms.com/news-details?itemid=9653) — African Wireless Comms (2025) — verify topic/relevance.  
  <sub>dpi · yr 2025 · Data Exchange / Civil Registration & Vital Statistics Integration; Data Exchange / Implementation Roadmap</sub>
- [https://www.bceao.int/sites/default/files/2025-04/Quaterly%20Statistical%20Bulletin%20-%204Q2024.pdf](https://www.bceao.int/sites/default/files/2025-04/Quaterly%20Statistical%20Bulletin%20-%204Q2024.pdf) — BCEAO quarterly bulletin (2025-04, PDF) — regional statistics.  
  <sub>dpi · yr 2024 · Digital Pay / Public Performance Reporting</sub>
- [https://www.ecofinagency.com/news-finances/0110-49183-waemus-instant-payment-system-launches-but-key-banks-stay-on-the-sidelines](https://www.ecofinagency.com/news-finances/0110-49183-waemus-instant-payment-system-launches-but-key-banks-stay-on-the-sidelines) — Ecofin (2025) — regional WAEMU instant-payment launch, not CIV-specific.  
  <sub>dpi · yr 2025 · Digital Pay / Digital Payment System Exists</sub>
- [https://www.economie-ivoirienne.ci/en/actualites/uemoa-bceao-undertaking-major-digital-transformation-regional-financial-landscape.html](https://www.economie-ivoirienne.ci/en/actualites/uemoa-bceao-undertaking-major-digital-transformation-regional-financial-landscape.html) — Official econ site (2025) — regional UEMOA/BCEAO focus.  
  <sub>dpi · yr 2025 · Digital Pay / Digital Payment System Exists</sub>
- [https://www.gtai.de/resource/blob/1940962/af44a7ef33e2a41fe918603328d7c77b/PRO202510281940950.pdf](https://www.gtai.de/resource/blob/1940962/af44a7ef33e2a41fe918603328d7c77b/PRO202510281940950.pdf) — GTAI market report (2025, PDF, German trade) — verify relevance.  
  <sub>dpi · yr 2024 · Digital Id / Digital ID System Exists; Digital Id / Population Coverage</sub>

## C · lead only (do not cite)

- [https://africa-digital.com/2024/e-government-for-africa](https://africa-digital.com/2024/e-government-for-africa) — africa-digital.com aggregator.
- [https://blog.voveid.com/kyc-compliance-in-cote-divoire-2025-guide-for-regulated-businesses](https://blog.voveid.com/kyc-compliance-in-cote-divoire-2025-guide-for-regulated-businesses) — VoveID vendor KYC guide.
- [https://cyber.ee/resources/news/cybernetica-to-support-cote-d-ivoire-s-digital-transformation](https://cyber.ee/resources/news/cybernetica-to-support-cote-d-ivoire-s-digital-transformation) — Cybernetica vendor news; primary is Biometric Update.
- [https://firmusadvisory.com/online-business-registration-cote-divoire](https://firmusadvisory.com/online-business-registration-cote-divoire) — Firmus vendor advisory.
- [https://firmusadvisory.com/residence-card-cote-divoire-oneci](https://firmusadvisory.com/residence-card-cote-divoire-oneci) — Firmus vendor advisory.
- [https://prepaid-data-sim-card.fandom.com/wiki/C%C3%B4te_d'Ivoire](https://prepaid-data-sim-card.fandom.com/wiki/C%C3%B4te_d'Ivoire) — Fandom wiki.
- [https://we.hse.ru/en/irs/cas/passcd](https://we.hse.ru/en/irs/cas/passcd) — HSE research listing (unclear).
- [https://www.cybastiontech.com/media-coverage-of-ivorian-ministers-site-visit-to-assess-progress-of-national-data-center](https://www.cybastiontech.com/media-coverage-of-ivorian-ministers-site-visit-to-assess-progress-of-national-data-center) — Cybastion vendor page; mine for primary.
- [https://www.cybastiontech.com/project-milestone-construction-begins-on-data-center-in-cote-divoire](https://www.cybastiontech.com/project-milestone-construction-begins-on-data-center-in-cote-divoire) — Cybastion vendor page; mine for primary.
- [https://www.raxiogroup.com/ivory-coast-gains-significant-boost-to-digital-economy-with-launch-of-raxio-data-centre](https://www.raxiogroup.com/ivory-coast-gains-significant-boost-to-digital-economy-with-launch-of-raxio-data-centre) — Raxio vendor press release; DCD is the A-web primary.
- [https://www.semlex.com/en/2022/08/03/presentation-of-the-identity-verification-terminal-in-ivory-coast](https://www.semlex.com/en/2022/08/03/presentation-of-the-identity-verification-terminal-in-ivory-coast) — Semlex vendor page (2022).
- [https://www.semlex.com/en/2024/02/12/la-modernisation-de-letat-civil-en-cote-divoire](https://www.semlex.com/en/2024/02/12/la-modernisation-de-letat-civil-en-cote-divoire) — Semlex vendor page; mine for primary.
- [https://www.semlex.com/en/2024/04/16/numerisation-des-registres-detat-civil](https://www.semlex.com/en/2024/04/16/numerisation-des-registres-detat-civil) — Semlex vendor page; mine for primary.
- [https://www.semlex.com/en/2025/05/06/lancement-de-lapplication-myoneci](https://www.semlex.com/en/2025/05/06/lancement-de-lapplication-myoneci) — Semlex vendor page (MyONECI); mine for primary.
- [https://youverify.co/blog/how-to-verify-identity-in-cote-divoire](https://youverify.co/blog/how-to-verify-identity-in-cote-divoire) — Youverify vendor blog.

## D · resource / entity (not a dated source)

- [http://econsultation.dgi.gouv.ci](http://econsultation.dgi.gouv.ci) — DGI tax e-consultation portal.
- [https://africatechfestival.com/africacom/sponsors/stellarix-data-centres-meeting-room-host-2024](https://africatechfestival.com/africacom/sponsors/stellarix-data-centres-meeting-room-host-2024) — AfricaCom event sponsor page.
- [https://cei.ci/liste-electorale-provisoire-2025](https://cei.ci/liste-electorale-provisoire-2025) — CEI provisional electoral-list portal.
- [https://cloudscene.com/market/data-centers-in-cote-divoire/abidjan](https://cloudscene.com/market/data-centers-in-cote-divoire/abidjan) — Cloudscene data-centre directory.
- [https://data.worldbank.org/indicator/EG.ELC.ACCS.ZS?locations=CI](https://data.worldbank.org/indicator/EG.ELC.ACCS.ZS?locations=CI) — World Bank indicator page (electricity).
- [https://data.worldbank.org/indicator/FX.OWN.TOTL.ZS?locations=CI](https://data.worldbank.org/indicator/FX.OWN.TOTL.ZS?locations=CI) — World Bank indicator page (account ownership).
- [https://dataprotection.africa/cote-divoire](https://dataprotection.africa/cote-divoire) — Data Protection Africa country landing page.
- [https://e-impots.gouv.ci](https://e-impots.gouv.ci) — DGI e-impots tax portal.
- [https://electionguide.org/elections/id/4575](https://electionguide.org/elections/id/4575) — ElectionGuide database entry.
- [https://fred.stlouisfed.org/series/ITNETUSERP2CIV](https://fred.stlouisfed.org/series/ITNETUSERP2CIV) — FRED data series page.
- [https://identite.ci](https://identite.ci) — ONECI identity portal.
- [https://idufci.construction.gouv.ci](https://idufci.construction.gouv.ci) — IDU construction portal.
- [https://monacte.informaticien.ci](https://monacte.informaticien.ci) — Civil-status acts portal.
- [https://ncsi.ega.ee/country/ci_2022](https://ncsi.ega.ee/country/ci_2022) — National Cyber Security Index country page.
- [https://pulse.internetsociety.org/en/ixp-tracker/country/CI](https://pulse.internetsociety.org/en/ixp-tracker/country/CI) — ISOC Pulse IXP tracker.
- [https://rise.esmap.org/country/cote-divoire](https://rise.esmap.org/country/cote-divoire) — ESMAP RISE country page.
- [https://statbase.org/data/civ-global-cybersecurity-index](https://statbase.org/data/civ-global-cybersecurity-index) — Statbase cybersecurity-index data page.
- [https://stellar-ix.com/en/a-propos-de-stellarix](https://stellar-ix.com/en/a-propos-de-stellarix) — Stellarix about page.
- [https://taxdo.com/resources/faq/post/verify-ivory-coast-idu-ncc-rccm-tax-id](https://taxdo.com/resources/faq/post/verify-ivory-coast-idu-ncc-rccm-tax-id) — Tax-ID verification FAQ.
- [https://tribunalcommerceabidjan.ci/rc](https://tribunalcommerceabidjan.ci/rc) — Abidjan commercial-court RCCM portal.
- [https://uptimeinstitute.com/uptime-institute-awards/client/groupement-orange-services-gos-/817](https://uptimeinstitute.com/uptime-institute-awards/client/groupement-orange-services-gos-/817) — Uptime Institute award page (2016).
- [https://web.sndi.ci/nos-realisations/projets/data-center-de-ladministration-de-cote-divoire](https://web.sndi.ci/nos-realisations/projets/data-center-de-ladministration-de-cote-divoire) — SNDI project page (2012).
- [https://what3words.com/partner/cote-divoire](https://what3words.com/partner/cote-divoire) — what3words partner page.
- [https://www.artci.ci/images/stories/pdf-english/lois_english/loi_2013_450_english.pdf](https://www.artci.ci/images/stories/pdf-english/lois_english/loi_2013_450_english.pdf) — Law 2013-450 cybercrime text (standing instrument).
- [https://www.bceao.int/en/content/payment-systems-management](https://www.bceao.int/en/content/payment-systems-management) — BCEAO payment-systems reference page.
- [https://www.cepici.gouv.ci](https://www.cepici.gouv.ci) — CEPICI investment-promotion homepage.
- [https://www.datacentermap.com/ivory-coast/abidjan/mdxi-cote-divoire-data-center](https://www.datacentermap.com/ivory-coast/abidjan/mdxi-cote-divoire-data-center) — Data Center Map MDXi entry.
- [https://www.datacentermap.com/ivory-coast/abidjan/mtn-abidjan-data-centre](https://www.datacentermap.com/ivory-coast/abidjan/mtn-abidjan-data-centre) — Data Center Map MTN entry.
- [https://www.datacentermap.com/ivory-coast/abidjan/paix-abidjan](https://www.datacentermap.com/ivory-coast/abidjan/paix-abidjan) — Data Center Map PAIX entry.
- [https://www.datacentermap.com/ivory-coast/abidjan/std-abidjan](https://www.datacentermap.com/ivory-coast/abidjan/std-abidjan) — Data Center Map STD entry.
- [https://www.datacentermap.com/ivory-coast/abidjan/stellarix-abidjan](https://www.datacentermap.com/ivory-coast/abidjan/stellarix-abidjan) — Data Center Map Stellarix entry.
- [https://www.equinix.com/data-centers/europe-colocation/cote-divoire-colocation/abidjan-data-centers/ab1](https://www.equinix.com/data-centers/europe-colocation/cote-divoire-colocation/abidjan-data-centers/ab1) — Equinix AB1 product page.
- [https://www.globalpetrolprices.com/Ivory-Coast/electricity_prices](https://www.globalpetrolprices.com/Ivory-Coast/electricity_prices) — GlobalPetrolPrices data page.
- [https://www.ocolo.io/colocation/stellarix/abidjan](https://www.ocolo.io/colocation/stellarix/abidjan) — oColo colocation directory.
- [https://www.oqsf.ci/yheejeed/2020/10/loi_relative_a_la_consommation.pdf](https://www.oqsf.ci/yheejeed/2020/10/loi_relative_a_la_consommation.pdf) — Consumer law text (standing instrument).
- [https://www.peeringdb.com/fac/12168](https://www.peeringdb.com/fac/12168) — PeeringDB facility entry.
- [https://www.peeringdb.com/fac/15642](https://www.peeringdb.com/fac/15642) — PeeringDB facility entry.
- [https://www.raxiogroup.com/data-centres/cote-divoire](https://www.raxiogroup.com/data-centres/cote-divoire) — Raxio data-centre product page.
