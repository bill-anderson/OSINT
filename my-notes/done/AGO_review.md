# AGO (Angola) — dataset intake review

*Phase 1 assessment — autonomous, read-only. Nothing has been fetched or written to the wiki. Awaiting your Phase-2 approval/trim of **Category A** before any fetch.*

**Run date:** 2026-07-15  ·  **ISO-3:** AGO  ·  **Datasets:** africa-dpi (147 AGO rows), africa-data-centres (13), african-rural-digitalisation (4) = 164 rows

## Counts

| Metric | Count |
|---|---|
| Total distinct source URLs (AGO rows) | 122 |
| Already held in `raw/` (no action) | 12 |
| New (not yet held) | 110 |
| — **A · ingest** | 33  (24 non-PDF for fetch · 9 PDF, you handle) |
| — **B · check first** | 31  (7 PDF) |
| — **C · lead only** | 18  (1 PDF) |
| — **D · resource/entity** | 28  (1 PDF) |

**Phase-3 fetch scope (on approval): the 24 Category A non-PDF URLs.** The 9 Category A PDFs (World Bank docs, Afrobarometer / Paradigm / WIPO / USAID reports) are excluded from the auto-fetch — they need the binary-artefact + companion-source-page treatment you do by hand.

## Existing AGO coverage in the wiki (for context)

`wiki/places/AGO.md` is a live hub (parent XSA; topics: infra.store, infra.connect, infra.capacity, gov.regional) but currently holds only the **June 2026 ANGOTIC story**: the $89m Luanda sovereign national data centre (INFOSI) and the Telecom Namibia–Angola satellite/subsea connectivity deals (entity `telecom-namibia-angola-deals`). None of the dataset URLs below duplicate that — the datasets open up Angola's **payments (EMIS / Multicaixa / RUPE), digital ID (BI / PGIBI), registries (tax / land / civil / business), the data-centre estate, and connectivity / energy baselines**, almost none of which the wiki yet covers. This is a large genuine gap.

### Already held (dropped as already-ingested)

These 12 dataset URLs already appear in `raw/` (domain+path match) — no action:

- [https://360mozambique.com/tenders/angola-evaluation-of-the-civil-registration-and-vital-statistics-system-crvs/](https://360mozambique.com/tenders/angola-evaluation-of-the-civil-registration-and-vital-statistics-system-crvs/)  — in *2026-03-31 Africa we have a data problem.md*
- [https://www.afro.who.int/sites/default/files/2025-03/WHO%20Angola%20Annual%20Report%202024.pdf](https://www.afro.who.int/sites/default/files/2025-03/WHO%20Angola%20Annual%20Report%202024.pdf)  — in *2026-03-31 Africa we have a data problem.md*
- [https://angolacables.co.ao](https://angolacables.co.ao)  — in *2026-06-11 Can Africa supply it's own digital infrastructure.md*
- [https://apai-crvs.uneca.org/sites/default/files/resourcefiles/Digitalization%20of%20Civil%20Registration%20and%20Vital%20Statistics%20in%20Africa.pdf](https://apai-crvs.uneca.org/sites/default/files/resourcefiles/Digitalization%20of%20Civil%20Registration%20and%20Vital%20Statistics%20in%20Africa.pdf)  — in *2026-03-31 Africa we have a data problem.md*
- [https://www.datacenterdynamics.com/en/news/angola-cables-to-build-second-data-center-in-fortaleza-brazil/](https://www.datacenterdynamics.com/en/news/angola-cables-to-build-second-data-center-in-fortaleza-brazil/)  — in *2026-06-10 Sub-Saharan Africa's data centre landscape who owns the infrastructure (v2).md*
- [https://education-profiles.org/sub-saharan-africa/angola/~technology](https://education-profiles.org/sub-saharan-africa/angola/~technology)  — in *2026-03-31 Africa we have a data problem.md*
- [https://openknowledge.worldbank.org/bitstreams/dc9e8776-b7b1-5c30-a70d-4f999387d815/download](https://openknowledge.worldbank.org/bitstreams/dc9e8776-b7b1-5c30-a70d-4f999387d815/download)  — in *2026-03-31 Africa we have a data problem.md*
- [https://pmc.ncbi.nlm.nih.gov/articles/PMC9009439/](https://pmc.ncbi.nlm.nih.gov/articles/PMC9009439/)  — in *2026-03-31 Africa we have a data problem.md*
- [https://smj.rs/en/volume-6-no-2/the-role-of-health-information-systems-in-transforming-and-enhancing-the-efficiency-of-angolas-health-system-challenges-and-opportunities](https://smj.rs/en/volume-6-no-2/the-role-of-health-information-systems-in-transforming-and-enhancing-the-efficiency-of-angolas-health-system-challenges-and-opportunities)  — in *2026-03-31 Africa we have a data problem.md*
- [https://www.submarinenetworks.com/en/systems/brazil-africa/sacs](https://www.submarinenetworks.com/en/systems/brazil-africa/sacs)  — in *2024-03-15 Undersea cables for Africa's internet retrace history and leave digital gaps as they connect continents.md*
- [https://www.undp.org/angola/blog/digital-justice-foundation-inclusive-development](https://www.undp.org/angola/blog/digital-justice-foundation-inclusive-development)  — in *2026-03-31 Africa we have a data problem.md*
- [https://untalent.org/jobs/partnership-compact-for-the-implementation-of-the-global-partnership-for-education-gpe-initiative-in-angola-from-16-09-30-12-45-days-nationals-and-internationals-can-apply-portuguese](https://untalent.org/jobs/partnership-compact-for-the-implementation-of-the-global-partnership-for-education-gpe-initiative-in-angola-from-16-09-30-12-45-days-nationals-and-internationals-can-apply-portuguese)  — in *2026-03-31 Africa we have a data problem.md*

## A · ingest (primary / first-hand, country-specific, on-topic) — 33

- Africell operator announcement of its Luanda enterprise DC (2021) — primary company statement.
  - [https://www.africell.com/news/africell-opens-high-tech-data-center-in-angola/](https://www.africell.com/news/africell-opens-high-tech-data-center-in-angola/)
  - *data-centres · yr 2021 · Africell Angola Data Centre (Luanda); status=Operational; type=Enterprise*
- Afrobarometer dispatch AD664 on rural electricity/connectivity — dated, country-specific reference.
  - [https://www.afrobarometer.org/publication/ad664-lack-of-access-connection-to-the-electric-grid-still-plagues-most-rural-residents-in-angola/](https://www.afrobarometer.org/publication/ad664-lack-of-access-connection-to-the-electric-grid-still-plagues-most-rural-residents-in-angola/)
  - *dpi · yr 2023 · ICT Infrastructure / Energy / Grid Reliability (Power Outage Frequency)=Poor (weekly outages, intermittent load shedding)*
- Afrobarometer policy paper PP66 on the digital divide (2020) — dated reference report. **[PDF]**
  - [https://www.afrobarometer.org/wp-content/uploads/2022/02/pp66-africas_digital_divide_and_the_promise_of_e-learning-afrobarometer_policy_paper-14june20.pdf](https://www.afrobarometer.org/wp-content/uploads/2022/02/pp66-africas_digital_divide_and_the_promise_of_e-learning-afrobarometer_policy_paper-14june20.pdf)
  - *dpi · yr 2020 · ICT Infrastructure / Technical Capacity / Basic Digital Literacy=10-24%*
- Biometric Update trade press — Angola begins newborn ID issuance; dated, on-topic.
  - [https://www.biometricupdate.com/202511/angola-begins-issuance-of-id-cards-to-newborns](https://www.biometricupdate.com/202511/angola-begins-issuance-of-id-cards-to-newborns)
  - *dpi · yr 2021; 2024 · Digital Id / Uptake / Enrollment Eligibility Age= 6-10*
- Biometric Update — India $200m credit line for Angola DPI/digital ID; dated trade report.
  - [https://www.biometricupdate.com/202505/india-helps-angola-with-dpi-digital-id-as-part-of-200m-credit-line](https://www.biometricupdate.com/202505/india-helps-angola-with-dpi-digital-id-as-part-of-200m-credit-line)
  - *dpi · yr 2024 · Digital Id / Ownership / Ministry of Finance Oversight= Partial oversight*
- DatacenterDynamics — Raxio Luanda DC launch (2025); dated trade report.
  - [https://www.datacenterdynamics.com/en/news/raxio-launches-data-center-in-luanda-angola/](https://www.datacenterdynamics.com/en/news/raxio-launches-data-center-in-luanda-angola/)
  - *data-centres · yr 2025 · Raxio Angola AG1 (Cacuaco); status=Operational; type=Colocation/carrier-neutral*
- DatacenterDynamics — Paratus $31m Angola DC financing; dated.
  - [https://www.datacenterdynamics.com/en/news/paratus-secures-31-million-credit-facility-to-build-angolan-data-center/](https://www.datacenterdynamics.com/en/news/paratus-secures-31-million-credit-facility-to-build-angolan-data-center/)
  - *data-centres · yr 2019 · Paratus Angola DC2 (Luanda); status=Operational; type=Colocation/carrier-neutral*
- DatacenterDynamics — Paratus third Angola DC; dated trade report.
  - [https://www.datacenterdynamics.com/en/news/paratus-group-to-build-third-angola-data-center/](https://www.datacenterdynamics.com/en/news/paratus-group-to-build-third-angola-data-center/)
  - *data-centres · yr — · Paratus Angola DC3 (planned Tier IV) (Luanda); status=Planned; type=Colocation/carrier-neutral*
- DatacenterDynamics — Africell Luanda DC (2021); dated.
  - [https://www.datacenterdynamics.com/en/news/africell-opens-data-center-in-luanda-angola/](https://www.datacenterdynamics.com/en/news/africell-opens-data-center-in-luanda-angola/)
  - *data-centres · yr 2021 · Africell Angola Data Centre (Luanda); status=Operational; type=Enterprise*
- DataCentres Africa news — Angola national DC (INFOSI) nearing completion; dated trade report.
  - [https://datacentresafrica.com/news-details?itemid=7284&post=angolas-new-national-data-centre-to-be-operational-by-mid-2026-189675](https://datacentresafrica.com/news-details?itemid=7284&post=angolas-new-national-data-centre-to-be-operational-by-mid-2026-189675)
  - *data-centres · yr — · Angola National Data Centre (INFOSI) (Luanda); status=Under construction; type=Government*
- World Bank Angola CCDR (2022) — reference report. **[PDF]**
  - [https://documents1.worldbank.org/curated/en/099150012022242096/pdf/P1769171f457c3010198d31b375aaddd937.pdf](https://documents1.worldbank.org/curated/en/099150012022242096/pdf/P1769171f457c3010198d31b375aaddd937.pdf)
  - *dpi · yr 2020 · ICT Infrastructure / Energy / Renewable Energy Share of Generation=75%+*
- World Bank Angola DPI/interoperability project doc — reference. **[PDF]**
  - [https://documents1.worldbank.org/curated/en/099021406262319882/pdf/IDU0cfa535a90914f043630bb860ddc79fa75def.pdf](https://documents1.worldbank.org/curated/en/099021406262319882/pdf/IDU0cfa535a90914f043630bb860ddc79fa75def.pdf)
  - *dpi · yr 2022; 2023; 2024 · Data Exchange / Functionality / Business Registration & Licensing Integration= Partially integrated*
- World Bank Angola Social Protection System project (2019) — reference. **[PDF]**
  - [https://documents1.worldbank.org/curated/en/609711563588128020/pdf/Angola-Strengthening-the-National-Social-Protection-System-Project.pdf](https://documents1.worldbank.org/curated/en/609711563588128020/pdf/Angola-Strengthening-the-National-Social-Protection-System-Project.pdf)
  - *dpi · yr 2019 · Registries / Social Protection / Status=Under development*
- World Bank Angola payments project doc (2025) — reference. **[PDF]**
  - [https://documents1.worldbank.org/curated/en/099062425124033726/pdf/P166564-d9f6cb90-2c8e-400b-95b5-562e367be0a1.pdf](https://documents1.worldbank.org/curated/en/099062425124033726/pdf/P166564-d9f6cb90-2c8e-400b-95b5-562e367be0a1.pdf)
  - *dpi · yr 2025 · Digital Pay / Governance / Central Bank Involvement in Governance=Regulatory Only*
- Ecofin Agency — Angola national DC nears 2026 launch; dated trade report.
  - [https://www.ecofinagency.com/news-digital/1411-50505-angola-nears-completion-of-national-data-center-set-for-2026-launch](https://www.ecofinagency.com/news-digital/1411-50505-angola-nears-completion-of-national-data-center-set-for-2026-launch)
  - *data-centres · yr — · Angola National Data Centre (INFOSI) (Luanda); status=Under construction; type=Government*
- Ecofin Agency — Africell opens Luanda DC (2021); dated.
  - [https://www.ecofinagency.com/telecom/2210-43114-angola-africell-opens-data-center-in-luanda](https://www.ecofinagency.com/telecom/2210-43114-angola-africell-opens-data-center-in-luanda)
  - *data-centres · yr 2021 · Africell Angola Data Centre (Luanda); status=Operational; type=Enterprise*
- Ecofin Agency — Raxio $30m Tier III DC opens (2025); dated.
  - [https://www.ecofinagency.com/news/0310-49253-raxio-group-opens-30-million-tier-iii-data-center-in-angola-boosting-digital-economy](https://www.ecofinagency.com/news/0310-49253-raxio-group-opens-30-million-tier-iii-data-center-in-angola-boosting-digital-economy)
  - *data-centres · yr 2025 · Raxio Angola AG1 (Cacuaco); status=Operational; type=Colocation/carrier-neutral*
- Ecofin Agency — Angola adopts India e-governance model (2024); dated trade report.
  - [https://www.ecofinagency.com/news/1105-46744-angola-adopts-indias-digital-model-for-e-governance-push](https://www.ecofinagency.com/news/1105-46744-angola-adopts-indias-digital-model-for-e-governance-push)
  - *dpi · yr 2024 · Data Exchange / Uptake / Universal Accessibility=Limited accessibility*
- Ericsson press release — Unitel Angola network modernization; primary company statement.
  - [https://www.ericsson.com/en/press-releases/1/2025/unitel-and-ericsson-strengthen-angolas-connectivity-with-network-modernization](https://www.ericsson.com/en/press-releases/1/2025/unitel-and-ericsson-strengthen-angolas-connectivity-with-network-modernization)
  - *data-centres · yr 2005 · Unitel Luanda Sul (Luanda); status=Operational; type=Enterprise*
- USAID/Internews Greater Internet Freedom Angola baseline (2023) — country-specific reference. **[PDF]**
  - [https://greaterinternetfreedom.org/wp-content/uploads/2023/08/BDI_ANGOLA-FINAL-APPROVED-27.06.2023.pdf](https://greaterinternetfreedom.org/wp-content/uploads/2023/08/BDI_ANGOLA-FINAL-APPROVED-27.06.2023.pdf)
  - *dpi · yr 2021; 2022; 2024 · Data Exchange / Uptake / Universal Accessibility=Limited accessibility*
- GSMA Mobile for Development case study — Afrimoney in Angola; reputable, dated, on-topic.
  - [https://www.gsma.com/solutions-and-impact/connectivity-for-good/mobile-for-development/programme/mobile-money/mobile-money-in-angola-how-afrimoney-is-paving-the-way/](https://www.gsma.com/solutions-and-impact/connectivity-for-good/mobile-for-development/programme/mobile-money/mobile-money-in-angola-how-afrimoney-is-paving-the-way/)
  - *dpi · yr 2025 · Digital Pay / Uptake / Active Digital Payment Users=<20%*
- Hunton privacy-law blog — Angola passes Law 22/11 data protection; analyst reference on the instrument.
  - [https://www.hunton.com/privacy-and-cybersecurity-law-blog/angola-passes-personal-data-protection-law](https://www.hunton.com/privacy-and-cybersecurity-law-blog/angola-passes-personal-data-protection-law)
  - *dpi · yr 2011; 2024 · Digital Id / Governance / Data Protection Act= Yes*
- KPMG TaxNewsFlash — Angola mandatory e-invoicing postponed (2025); reputable dated tax reference.
  - [https://kpmg.com/us/en/taxnewsflash/news/2025/10/angola-mandatory-e-invoicing-implementation-postponed.html](https://kpmg.com/us/en/taxnewsflash/news/2025/10/angola-mandatory-e-invoicing-implementation-postponed.html)
  - *dpi · yr 2025 · Digital Pay / Functionality / Tax Portal=Yes*
- World Bank Open Knowledge ID4D/DPI diagnostic — reference report. **[PDF]**
  - [https://openknowledge.worldbank.org/bitstreams/d1c06154-9015-4e69-9112-ccf5b7092b4a/download](https://openknowledge.worldbank.org/bitstreams/d1c06154-9015-4e69-9112-ccf5b7092b4a/download)
  - *dpi · yr 2021; 2022; 2024 · Data Exchange / Functionality / Digital ID Integration= Partially integrated*
- Paradigm Initiative report (data protection, Angola) — reputable CSO reference. **[PDF]**
  - [https://paradigmhq.org/?sdm_process_download=1&download_id=24773](https://paradigmhq.org/?sdm_process_download=1&download_id=24773)
  - *dpi · yr 2011; 2019; 2021; 2022; 2024 · Data Exchange / Functionality / Digital ID Integration= Partially integrated*
- Paratus operator announcement — largest Angola DC project (DC3); primary company statement.
  - [https://paratus.africa/blog/paratus-announces-its-biggest-data-center-project-yet/](https://paratus.africa/blog/paratus-announces-its-biggest-data-center-project-yet/)
  - *data-centres · yr — · Paratus Angola DC3 (planned Tier IV) (Luanda); status=Planned; type=Colocation/carrier-neutral*
- PLMJ law-firm briefing on Angola data protection & cybersecurity (2019); analyst reference on the instrument.
  - [https://www.plmj.com/pt/conhecimento/notas-informativas/Angola-Dados-Pessoais-e-Ciber-seguranca-em-Angola/33477/](https://www.plmj.com/pt/conhecimento/notas-informativas/Angola-Dados-Pessoais-e-Ciber-seguranca-em-Angola/33477/)
  - *dpi · yr 2019 · Digital Id / Governance / Data Protection Authority Oversight= Yes*
- Presight (G42) announcement — MoU with Govt of Angola for Digital Angola programme; primary company/deal statement.
  - [https://www.presight.ai/news/the-government-of-angola-and-presight-signed-mou-to-develop-a-transformation-program-for-digital-angola-2024/](https://www.presight.ai/news/the-government-of-angola-and-presight-signed-mou-to-develop-a-transformation-program-for-digital-angola-2024/)
  - *dpi · yr 2025 · Data Exchange / System / AI/Analytics Capabilities= Planned*
- Raxio operator press release — opening of Angola's largest DC, $30m expansion (2025); primary company statement.
  - [https://www.raxiogroup.com/raxio-opens-angolas-largest-data-centre-in-landmark-30-million-expansion/](https://www.raxiogroup.com/raxio-opens-angolas-largest-data-centre-in-landmark-30-million-expansion/)
  - *data-centres · yr 2025 · Raxio Angola AG1 (Cacuaco); status=Operational; type=Colocation/carrier-neutral*
- TechHive Advisory review of Angola's proposed AI law (2024); analyst review of a specific instrument.
  - [https://www.techhiveadvisory.africa/insights/review-of-angolas-proposed-law-on-artificial-intelligence](https://www.techhiveadvisory.africa/insights/review-of-angolas-proposed-law-on-artificial-intelligence)
  - *dpi · yr 2024 · Digital Id / Governance / Digital ID Specific Regulation= No*
- WIPO Global Innovation Index 2025 Angola profile — dated reference. **[PDF]**
  - [https://www.wipo.int/edocs/gii-ranking/2025/ao.pdf](https://www.wipo.int/edocs/gii-ranking/2025/ao.pdf)
  - *dpi · yr 2025 · ICT Infrastructure / Innovation / Global Innovation Index Ranking=GII rank 121+ or bottom quartile*
- World Bank Angola brief — Kwenda G2P/COVID response; country-specific reference.
  - [https://www.worldbank.org/en/country/angola/brief/q-a-how-is-angola-is-reaching-the-poor-and-vulnerable-during-covid-19](https://www.worldbank.org/en/country/angola/brief/q-a-how-is-angola-is-reaching-the-poor-and-vulnerable-during-covid-19)
  - *dpi · yr 2022; 2025 · Digital Pay / Functionality / Government-to-Person (G2P) Payments=Yes - Active Use*
- World Bank factsheet — Inclusive Digitalization (IDEA) Angola (2024); country-specific reference.
  - [https://www.worldbank.org/en/news/factsheet/2024/06/27/inclusive-digitalization-in-eastern-and-southern-africa-program-afe-angola](https://www.worldbank.org/en/news/factsheet/2024/06/27/inclusive-digitalization-in-eastern-and-southern-africa-program-afe-angola)
  - *dpi · yr 2024 · Data Exchange / Functionality / Social Protection Integration= Under development*

## B · check first (needs a human glance) — 31

- Regional outlet (360Mozambique) on AGT suspending 72% of company NIFs — concrete tax-ID development; verify outlet/primary.
  - [https://360mozambique.com/world/angola/angola-agt-suspends-tax-identification-numbers-of-72-of-companies-for-tax-noncompliance/](https://360mozambique.com/world/angola/angola-agt-suspends-tax-identification-numbers-of-72-of-companies-for-tax-noncompliance/)
  - *dpi · yr 2026 · Registries / Tax / Business taxpayer uptake=70-89%*
- 360Mozambique — Multicaixa processed 41bn kwanzas in 2025; verify outlet/primary.
  - [https://360mozambique.com/world/angola/angola-multicaixa-network-processed-41-billion-kwanzas-in-2025/](https://360mozambique.com/world/angola/angola-multicaixa-network-processed-41-billion-kwanzas-in-2025/)
  - *dpi · yr 2025 · Digital Pay / Functionality / Person-to-Business (P2B) Merchant Payments=Yes*
- 360Mozambique — AGT e-invoicing rollout alert; verify outlet/primary.
  - [https://360mozambique.com/world/angola/angola-agt-reinforces-alert-on-tax-registry-with-start-of-electronic-invoicing/](https://360mozambique.com/world/angola/angola-agt-reinforces-alert-on-tax-registry-with-start-of-electronic-invoicing/)
  - *dpi · yr 2025 · Digital Pay / Functionality / Tax Portal=Yes*
- 360Mozambique — KWiK transfer available at PayPay; verify outlet/primary.
  - [https://360mozambique.com/world/angola/angola-kwik-kwanza-transfer-and-payment-system-available-at-paypay/](https://360mozambique.com/world/angola/angola-kwik-kwanza-transfer-and-payment-system-available-at-paypay/)
  - *dpi · yr 2025 · Digital Pay / Functionality / Person-to-Business (P2B) Merchant Payments=Yes*
- 360Mozambique — Angola advances digital transformation (Presight); verify outlet/primary.
  - [https://360mozambique.com/world/africa/angola-advances-technological-development-for-digital-transformation/](https://360mozambique.com/world/africa/angola-advances-technological-development-for-digital-transformation/)
  - *dpi · yr 2025 · Data Exchange / System / AI/Analytics Capabilities= Planned*
- UK FCDO Luanda prisoner pack (2022) — primary gov doc but off-core-topic (negative evidence); glance. **[PDF]**
  - [https://assets.publishing.service.gov.uk/media/61e8c4e68fa8f5058d5a772c/Angola_-_Prisoner_Pack_Luanda_2022.pdf](https://assets.publishing.service.gov.uk/media/61e8c4e68fa8f5058d5a772c/Angola_-_Prisoner_Pack_Luanda_2022.pdf)
  - *rural · yr — · rural digitalisation: Police (score 1)*
- African Union CRVS status report — regional, not Angola-specific; check. **[PDF]**
  - [https://au.int/sites/default/files/newsevents/workingdocuments/33070-wd-en_-_report_on_the_status_of_civil_registration_and_vital_statistics_in_africa_25sept.pdf](https://au.int/sites/default/files/newsevents/workingdocuments/33070-wd-en_-_report_on_the_status_of_civil_registration_and_vital_statistics_in_africa_25sept.pdf)
  - *rural · yr — · rural digitalisation: Registry (score 2)*
- BRITACOM tax-forum presentation on Angola tax digitization; reference deck — check. **[PDF]**
  - [https://www.britacom.org/news/HighLevelConference/HighLevelConference_sy/Presentations/202012/P020201222571498747085.pdf](https://www.britacom.org/news/HighLevelConference/HighLevelConference_sy/Presentations/202012/P020201222571498747085.pdf)
  - *dpi · yr 2025 · Digital Pay / Functionality / Revenue Collection=Yes*
- BRITACOM online-meeting presentation (P2G/RUPE); reference deck — check. **[PDF]**
  - [https://www.britacom.org/news/4thOnlineMeeting/prens/202401/P020240117574912060745.pdf](https://www.britacom.org/news/4thOnlineMeeting/prens/202401/P020240117574912060745.pdf)
  - *dpi · yr 2025 · Digital Pay / Functionality / Person-to-Government (P2G) Payments=Yes - Active Use*
- BTW Media trade profile of EMIS payment infrastructure; unknown-quality outlet — check.
  - [https://btw.media/all/company-stories/profiles/emis-powers-angolas-interoperable-payment-infrastructure/](https://btw.media/all/company-stories/profiles/emis-powers-angolas-interoperable-payment-infrastructure/)
  - *dpi · yr 2025 · Digital Pay / System / Digital Payment System Exists=Partially deployed*
- CMS law-firm expert guide (Angola data protection); reputable standing reference — check currency.
  - [https://cms.law/en/int/expert-guides/cms-expert-guide-to-data-protection-and-cyber-security-laws/angola](https://cms.law/en/int/expert-guides/cms-expert-guide-to-data-protection-and-cyber-security-laws/angola)
  - *dpi · yr 2011; 2019; 2024; 2025 · Data Exchange / Governance / Enabling Legislation= Yes*
- Comarch vendor note on Angola e-invoicing mandate; verify vs primary decree.
  - [https://www.comarch.com/trade-and-services/data-management/legal-regulation-changes/angola-moves-toward-mandatory-electronic-invoicing/](https://www.comarch.com/trade-and-services/data-management/legal-regulation-changes/angola-moves-toward-mandatory-electronic-invoicing/)
  - *dpi · yr 2025 · Digital Pay / Functionality / Business-to-Business (B2B) Payments=Yes*
- Comarch vendor note on Angola e-invoicing technical blueprint; verify vs primary.
  - [https://www.comarch.com/trade-and-services/data-management/legal-regulation-changes/angola-publishes-technical-blueprint-for-e-invoicing-mandate/](https://www.comarch.com/trade-and-services/data-management/legal-regulation-changes/angola-publishes-technical-blueprint-for-e-invoicing-mandate/)
  - *dpi · yr 2025 · Digital Pay / Functionality / Tax Portal=Yes*
- Developing Telecoms — Unitel nationalized (2012); trade report but old; check.
  - [https://developingtelecoms.com/telecom-business/operator-news/14149-unitel-now-owned-by-the-angolan-state.html](https://developingtelecoms.com/telecom-business/operator-news/14149-unitel-now-owned-by-the-angolan-state.html)
  - *data-centres · yr 2012 · AngoNAP Luanda (Luanda); status=Operational; type=Colocation/carrier-neutral*
- EDICOM vendor blog on Angola e-invoicing mandate; verify vs primary.
  - [https://edicomgroup.com/blog/angola-mandated-electronic-invoicing](https://edicomgroup.com/blog/angola-mandated-electronic-invoicing)
  - *dpi · yr 2025 · Digital Pay / Functionality / Business-to-Business (B2B) Payments=Yes*
- Forum Macau (China–PLP) economic note on Angola; semi-official secondary — check.
  - [https://www.forumchinaplp.org.mo/en/economic_trade/view/5231](https://www.forumchinaplp.org.mo/en/economic_trade/view/5231)
  - *dpi · yr 2024 · Digital Id / Governance / Civil Registration Integration= Partial integration*
- FurtherAfrica outlet — Angola digital transformation (2025); verify outlet quality.
  - [https://furtherafrica.com/2025/09/10/angola-digital-transformation/](https://furtherafrica.com/2025/09/10/angola-digital-transformation/)
  - *dpi · yr 2025 · Data Exchange / Uptake / Data Sovereignty Provisions=Limited controls*
- Kieto Economia (Angolan outlet) — BNA clarifies Kwanza in SADC settlement; verify outlet quality.
  - [https://kietoeconomia.ao/en/central-bank-clarifies-that-national-currency-the-kwanza-will-not-circulate-physically-in-the-sadc-settlement-system](https://kietoeconomia.ao/en/central-bank-clarifies-that-national-currency-the-kwanza-will-not-circulate-physically-in-the-sadc-settlement-system)
  - *dpi · yr 2024 · Digital Pay / Functionality / Cross-Border Payment Functionality=Under development*
- Mondaq-republished law-firm note on Angola ICT White Paper (LBTIC 2023–2027); mine for the primary strategy — check.
  - [https://www.mondaq.com/telecoms-mobile-cable-communications/1585472/white-paper-on-information-and-communication-technologies-2023-2027-strategic-vision-for-icts-in-angola](https://www.mondaq.com/telecoms-mobile-cable-communications/1585472/white-paper-on-information-and-communication-technologies-2023-2027-strategic-vision-for-icts-in-angola)
  - *dpi · yr 2024; 2025 · Data Exchange / Governance / Enabling Legislation= Yes*
- Renewables Rising newsletter — TotalEnergies Angola solar; energy-adjacent, unknown outlet — check relevance.
  - [https://www.renewables-rising.com/p/totalenergies-kicks-off-major-solar-project-in-angola](https://www.renewables-rising.com/p/totalenergies-kicks-off-major-solar-project-in-angola)
  - *dpi · yr 2025 · ICT Infrastructure / Energy / Electricity Affordability=Very Affordable (<1%)*
- SADC official news — regional financial-inclusion tech; not Angola-specific — check.
  - [https://www.sadc.int/latest-news/sadc-adopts-technology-drive-financial-inclusion-initiatives-within-region](https://www.sadc.int/latest-news/sadc-adopts-technology-drive-financial-inclusion-initiatives-within-region)
  - *dpi · yr 2024; 2025 · Digital Pay / Functionality / Cross-Border Payment Functionality=Under development*
- SADC-CCBG payment-system progress report — regional/old — check. **[PDF]**
  - [https://www.sadcbankers.org/subcommittees/PaySystem/Documents/Progress%20Reports/Apr05-Mar06_ADDENDUM%5B1%5D.pdf](https://www.sadcbankers.org/subcommittees/PaySystem/Documents/Progress%20Reports/Apr05-Mar06_ADDENDUM%5B1%5D.pdf)
  - *dpi · yr 2025 · Digital Pay / Governance / Scheme Rules Publicly Available=No - Confidential*
- SADC bankers Angola newsletter (2011) — old — check. **[PDF]**
  - [https://www.sadcbankers.org/subcommittees/PaySystem/media/Documents/Newsletters/Vulindlela%20-%20October%202011/Angola.pdf](https://www.sadcbankers.org/subcommittees/PaySystem/media/Documents/Newsletters/Vulindlela%20-%20October%202011/Angola.pdf)
  - *dpi · yr 2025 · Digital Pay / Governance / Scheme Rules Publicly Available=No - Confidential*
- SAMENA Council news — 4G coverage stat; industry-body outlet — check.
  - [https://www.samenacouncil.org/samena_daily_news?news=97265](https://www.samenacouncil.org/samena_daily_news?news=97265)
  - *dpi · yr 2023 · ICT Infrastructure / Connectivity / 4G/LTE Population Coverage=50-74%*
- ScienceDirect journal article (2015–16 DHS birth registration) — paywalled abstract; check access/currency.
  - [https://www.sciencedirect.com/science/article/abs/pii/S0033350623002664](https://www.sciencedirect.com/science/article/abs/pii/S0033350623002664)
  - *dpi · yr 2016 · Registries / Civil / Uptake=<20%*
- US State Dept Angola 2024 Human Rights Report — primary gov doc, off-core-topic; glance. **[PDF]**
  - [https://www.state.gov/wp-content/uploads/2025/07/62451_ANGOLA-2024-HUMAN-RIGHTS-REPORT.pdf](https://www.state.gov/wp-content/uploads/2025/07/62451_ANGOLA-2024-HUMAN-RIGHTS-REPORT.pdf)
  - *rural · yr — · rural digitalisation: Police (score 1)*
- Technology Magazine company report on Multipla DC (2013) — trade profile, old; check.
  - [https://technologymagazine.com/company-reports/multipla-revolutionising-africas-data-centre-industry](https://technologymagazine.com/company-reports/multipla-revolutionising-africas-data-centre-industry)
  - *data-centres · yr 2013 · Multipla Data Center (Luanda); status=Operational; type=Colocation/carrier-neutral*
- VerAngola (Angolan outlet) — KWiK launched (2023); national reporting, republisher — verify.
  - [https://www.verangola.net/va/en/072023/BankingInsurance/36464/Kwik-instant-transfer-tool-has-already-been-launched.htm](https://www.verangola.net/va/en/072023/BankingInsurance/36464/Kwik-instant-transfer-tool-has-already-been-launched.htm)
  - *dpi · yr 2025 · Digital Pay / Governance / Central Bank Involvement in Governance=Regulatory Only*
- HSE (Russia) research-centre country page on Angola; academic monitor — check.
  - [https://we.hse.ru/en/irs/cas/passao](https://we.hse.ru/en/irs/cas/passao)
  - *dpi · yr 2023; 2024 · Data Exchange / Functionality / Agriculture System Integration= Planned*
- World Bank video page (Angola G2P) — likely multimedia with no article body; check (may yield no clip).
  - [https://www.worldbank.org/en/news/video/2022/03/15/government-to-person-g2p-payments-how-is-angola-reaching-the-poor-and-vulnerable-during-covid-19](https://www.worldbank.org/en/news/video/2022/03/15/government-to-person-g2p-payments-how-is-angola-reaching-the-poor-and-vulnerable-during-covid-19)
  - *dpi · yr 2025 · Digital Pay / Functionality / Government-to-Person (G2P) Payments=Yes - Active Use*
- Xalam Analytics blog (2012) on Angola Cables; analyst piece, old — check.
  - [https://xalamanalytics.com/connectivity-and-wholesale/the-fabulous-rise-of-angola-cables/](https://xalamanalytics.com/connectivity-and-wholesale/the-fabulous-rise-of-angola-cables/)
  - *data-centres · yr 2012 · AngoNAP Luanda (Luanda); status=Operational; type=Colocation/carrier-neutral*

## C · lead only — do NOT cite (mine for primaries) — 18

- Africa-Press wire aggregator (BNA instant transfer, 2022); mine for the BNA primary.
  - [https://www.africa-press.net/angola/all-news/bna-launches-real-time-instant-transfer-system](https://www.africa-press.net/angola/all-news/bna-launches-real-time-instant-transfer-system)
  - *dpi · yr 2022 · Digital Pay / Uptake / Accessibility for Persons with Disabilities=Partial*
- AllAfrica syndication; trace to the originating outlet.
  - [https://allafrica.com/stories/202602030336.html](https://allafrica.com/stories/202602030336.html)
  - *dpi · yr 2025 · Digital Pay / Functionality / Person-to-Business (P2B) Merchant Payments=Yes*
- AllAfrica syndication; trace to the originating outlet.
  - [https://allafrica.com/stories/202405020031.html](https://allafrica.com/stories/202405020031.html)
  - *dpi · yr 2024; 2025 · Digital Pay / Functionality / Cross-Border Payment Functionality=Under development*
- Vove ID vendor KYC guide; mine for primary (BI law, BNA KYC rules).
  - [https://blog.voveid.com/kyc-compliance-in-angola-2025-guide-for-regulated-businesses/](https://blog.voveid.com/kyc-compliance-in-angola-2025-guide-for-regulated-businesses/)
  - *dpi · yr 2024 · Digital Id / Functionality / KYC Enablement= Yes*
- CaseGuard software-vendor blog summarising Angola DP law; mine for the primary law.
  - [https://caseguard.com/articles/data-protection-and-privacy-legislation-in-angola/](https://caseguard.com/articles/data-protection-and-privacy-legislation-in-angola/)
  - *dpi · yr 2011 · Digital Pay / Governance / Data Breach Notification Requirements=Mandatory*
- Wikipedia; tertiary — mine for primaries.
  - [https://en.wikipedia.org/wiki/Angola_Telecom](https://en.wikipedia.org/wiki/Angola_Telecom)
  - *data-centres · yr 2012 · AngoNAP Luanda (Luanda); status=Operational; type=Colocation/carrier-neutral*
- Esri customer case study (marketing) on IGCA cadastre; mine for the IGCA/land-admin primary.
  - [https://www.esri.com/en-us/lg/industry/government/stories/angola-modernizes-land-administration-gis-cadastre-management](https://www.esri.com/en-us/lg/industry/government/stories/angola-modernizes-land-administration-gis-cadastre-management)
  - *dpi · yr 2024 · Registries / Land / Separate cadastral register=Fully deployed nationwide*
- GitHub 'awesome-made-by-angolans' list; tertiary, not a source.
  - [https://github.com/joaroque/awesome-made-by-angolans](https://github.com/joaroque/awesome-made-by-angolans)
  - *dpi · yr 2024 · ICT Infrastructure / Technical Capacity / Developer and Tech Community=Emerging (small but growing community, <1,000 active developers)*
- IDG consultancy news/marketing on financial inclusion; mine for the partnership primary.
  - [https://www.internationaldevelopmentgroup.com/about/news/increasing-financial-inclusion-in-angola-a-partnership-for-progress/](https://www.internationaldevelopmentgroup.com/about/news/increasing-financial-inclusion-in-angola-a-partnership-for-progress/)
  - *dpi · yr 2025 · Digital Pay / Governance / Pro-Poor Governance Mechanisms=Partial*
- Re-hosted universities handbook on a low-authority site; lead only. **[PDF]**
  - [https://www.iqytechnicalcollege.com/INTERNATIONAL-HANDBOOK-OF-UNIVERSITIES.pdf](https://www.iqytechnicalcollege.com/INTERNATIONAL-HANDBOOK-OF-UNIVERSITIES.pdf)
  - *dpi · yr 2024 · ICT Infrastructure / Technical Capacity / Tertiary ICT/STEM Education=Limited (few institutions, low enrolment)*
- LinkedIn article on Multicaixa Express; tertiary.
  - [https://www.linkedin.com/pulse/multicaixa-express-superb-app-eduardo-bettencourt-6ifsf](https://www.linkedin.com/pulse/multicaixa-express-superb-app-eduardo-bettencourt-6ifsf)
  - *dpi · yr 2025 · Digital Pay / Functionality / Person-to-Person (P2P) Payments=Yes*
- LinkedIn post (AFI); tertiary.
  - [https://www.linkedin.com/posts/alliance-for-financial-inclusion_mobilebanking-financialinclusion-digitalfinance-activity-7404089956694032384--AOJ](https://www.linkedin.com/posts/alliance-for-financial-inclusion_mobilebanking-financialinclusion-digitalfinance-activity-7404089956694032384--AOJ)
  - *dpi · yr 2025 · Digital Pay / Governance / Pro-Poor Governance Mechanisms=Partial*
- LinkedIn post on Angola fintech; tertiary.
  - [https://www.linkedin.com/posts/ripal-bhavsar_fintech-africa-angola-activity-7389909449043390464-mhO5](https://www.linkedin.com/posts/ripal-bhavsar_fintech-africa-angola-activity-7389909449043390464-mhO5)
  - *dpi · yr 2024 · ICT Infrastructure / Innovation / Tech Startup Ecosystem=Emerging (some startups, limited funding, 1-2 hubs)*
- AfriLabs hubs press item (2018) — regional, old; lead.
  - [https://nef.org/afrilabs-admits-40-new-tech-hubs-on-the-african-continent/](https://nef.org/afrilabs-admits-40-new-tech-hubs-on-the-african-continent/)
  - *dpi · yr 2018 · ICT Infrastructure / Innovation / Technology and Innovation Hubs=1-2 hubs with limited activity*
- OpenWay payments-vendor blog; mine for primary.
  - [https://openwaygroup.com/new-blog/driving-angolas-digital-payment-momentum-together](https://openwaygroup.com/new-blog/driving-angolas-digital-payment-momentum-together)
  - *dpi · yr 2025 · Digital Pay / System / Digital Payment System Exists=Partially deployed*
- PaymentComponents vendor blog, pan-Africa (not Angola-specific); lead.
  - [https://www.paymentcomponents.com/all-about-payments-in-africa/](https://www.paymentcomponents.com/all-about-payments-in-africa/)
  - *dpi · yr 2024 · Digital Pay / Functionality / Cross-Border Payment Functionality=Under development*
- Taxdo vendor tax-ID guide; mine for primary (NIF rules).
  - [https://taxdo.com/resources/global-tax-id-validation-guide/angola](https://taxdo.com/resources/global-tax-id-validation-guide/angola)
  - *dpi · yr 2025 · Registries / Tax / National Id integration=Partially integrated*
- TransFi payments-vendor blog on Angola rails; mine for primary.
  - [https://www.transfi.com/blog/angolas-payment-rails-how-they-work---emis-multicaixa-digital-banking-adoption](https://www.transfi.com/blog/angolas-payment-rails-how-they-work---emis-multicaixa-digital-banking-adoption)
  - *dpi · yr 2025 · Digital Pay / Governance / Central Bank Involvement in Governance=Regulatory Only*

## D · resource / entity (standing asset, not a dated source) — 28

- Cloudscene data-centre directory; standing resource.
  - [https://cloudscene.com/market/data-centers-in-angola/luanda](https://cloudscene.com/market/data-centers-in-angola/luanda)
  - *dpi · yr 2024 · ICT Infrastructure / Data Storage / Commercial Data Center Presence=Small-scale facilities only (Tier I-II)*
- DataCenterMap Luanda index; standing resource.
  - [https://www.datacentermap.com/angola/luanda/](https://www.datacentermap.com/angola/luanda/)
  - *data-centres · yr 2019 · Paratus Angola DC2 (Luanda); status=Operational; type=Colocation/carrier-neutral*
- DataCenterMap listing — MSTelcom TCC; standing resource.
  - [https://www.datacentermap.com/angola/luanda/mstelcom-tcc/](https://www.datacentermap.com/angola/luanda/mstelcom-tcc/)
  - *data-centres · yr — · MSTelcom TCC (Telecom Command Centre) (Luanda); status=Operational; type=Colocation/carrier-neutral*
- DataCenterMap listing — Africell Angola; standing resource.
  - [https://www.datacentermap.com/angola/luanda/africell-angola/](https://www.datacentermap.com/angola/luanda/africell-angola/)
  - *data-centres · yr 2021 · Africell Angola Data Centre (Luanda); status=Operational; type=Enterprise*
- DataCenterMap listing — MSTelcom ZEE; standing resource.
  - [https://www.datacentermap.com/angola/luanda/mstelcom-zee-dc/](https://www.datacentermap.com/angola/luanda/mstelcom-zee-dc/)
  - *data-centres · yr — · MSTelcom ZEE DC (Luanda); status=Operational; type=Colocation/carrier-neutral*
- DataCenterMap listing — ITA/Paratus DC1; standing resource.
  - [https://www.datacentermap.com/angola/luanda/ita-luanda/](https://www.datacentermap.com/angola/luanda/ita-luanda/)
  - *data-centres · yr 2017 · Paratus Angola DC1 (Luanda); status=Operational; type=Colocation/carrier-neutral*
- DataCenterMap listing — AngoNAP; standing resource.
  - [https://www.datacentermap.com/angola/luanda/angonap/](https://www.datacentermap.com/angola/luanda/angonap/)
  - *data-centres · yr 2012 · AngoNAP Luanda (Luanda); status=Operational; type=Colocation/carrier-neutral*
- DataCenterMap listing — MSTelcom Benfica; standing resource.
  - [https://www.datacentermap.com/angola/luanda/mstelecon-benfica/](https://www.datacentermap.com/angola/luanda/mstelecon-benfica/)
  - *data-centres · yr — · MSTelcom Benfica DC (Luanda); status=Operational; type=Colocation/carrier-neutral*
- DataCenterMap listing — Multipla; standing resource.
  - [https://www.datacentermap.com/angola/luanda/multipla/](https://www.datacentermap.com/angola/luanda/multipla/)
  - *data-centres · yr 2013 · Multipla Data Center (Luanda); status=Operational; type=Colocation/carrier-neutral*
- DataCenterMap listing — Unitel Luanda Sul; standing resource.
  - [https://www.datacentermap.com/angola/luanda/unitel-luanda-sul/specs/](https://www.datacentermap.com/angola/luanda/unitel-luanda-sul/specs/)
  - *data-centres · yr 2005 · Unitel Luanda Sul (Luanda); status=Operational; type=Enterprise*
- EMIS corporate homepage; capture as company/resource entity (payments operator).
  - [https://emis.ao](https://emis.ao)
  - *dpi · yr 2025 · Digital Pay / Functionality / Revenue Collection=Yes*
- Inflect data-centre marketplace listing (Unitel FILDA); standing resource.
  - [https://inflect.com/building/rua-das-flores-luanda/unitel-sa/datacenter/filda](https://inflect.com/building/rua-das-flores-luanda/unitel-sa/datacenter/filda)
  - *data-centres · yr — · Unitel FILDA (Luanda); status=Operational; type=Enterprise*
- Invest in Angola government business portal (company single window); standing gov resource.
  - [https://investinangola.ao/starting-a-business/](https://investinangola.ao/starting-a-business/)
  - *dpi · yr 2020 · Registries / Business / Status=Partially deployed*
- Angola Cables commercial catalogue; operator collateral → company/resource entity. **[PDF]**
  - [https://pages.angolacables.com/wp-content/uploads/2022/11/Catalogue-Commercial-2022.pdf](https://pages.angolacables.com/wp-content/uploads/2022/11/Catalogue-Commercial-2022.pdf)
  - *data-centres · yr 2012 · AngoNAP Luanda (Luanda); status=Operational; type=Colocation/carrier-neutral*
- Paratus data-centre services page; standing resource/homepage → entity.
  - [https://paratus.africa/services/data-center-services/](https://paratus.africa/services/data-center-services/)
  - *data-centres · yr 2017; 2019 · Paratus Angola DC1 (Luanda); status=Operational; type=Colocation/carrier-neutral*
- Paratus Angola DC services page; standing resource → entity.
  - [https://www.paratus.ao/en/datacenter-ita-paratus/](https://www.paratus.ao/en/datacenter-ita-paratus/)
  - *data-centres · yr 2017; 2019 · Paratus Angola DC1 (Luanda); status=Operational; type=Colocation/carrier-neutral*
- PeeringDB IXP record (AngoNAP/AngonIX); standing resource entity.
  - [https://www.peeringdb.com/ix/421](https://www.peeringdb.com/ix/421)
  - *dpi · yr 2024 · ICT Infrastructure / Connectivity / Internet Exchange Point Presence=Active IXP(s) with moderate participation*
- Internet Society Pulse Angola country dashboard; standing resource.
  - [https://pulse.internetsociety.org/en/reports/AO](https://pulse.internetsociety.org/en/reports/AO)
  - *dpi · yr 2024 · ICT Infrastructure / Connectivity / Smartphone Adoption=40-59%*
- Raxio Angola operator country page; standing resource/homepage → entity.
  - [https://www.raxiogroup.com/data-centres/angola/](https://www.raxiogroup.com/data-centres/angola/)
  - *data-centres · yr 2025 · Raxio Angola AG1 (Cacuaco); status=Operational; type=Colocation/carrier-neutral*
- RISE ESMAP Angola energy-regulatory indicators; standing data portal.
  - [https://rise.esmap.org/country/angola](https://rise.esmap.org/country/angola)
  - *dpi · yr 2024 · ICT Infrastructure / Data Storage / Government Data Center / Cloud Strategy=Basic government data center operational*
- SEPE government services portal; standing gov resource/entity.
  - [https://sepe.gov.ao](https://sepe.gov.ao)
  - *dpi · yr 2024 · Digital Id / Functionality / Government Portal Authentication= Yes*
- Statbase Global Cybersecurity Index data page; standing data portal.
  - [https://statbase.org/data/ago-global-cybersecurity-index/](https://statbase.org/data/ago-global-cybersecurity-index/)
  - *dpi · yr 2024 · ICT Infrastructure / Data Storage / National Cybersecurity Readiness=GCI score 20-39 (Evolving)*
- TheGlobalEconomy indicator page (ITU bandwidth); standing data portal.
  - [https://www.theglobaleconomy.com/Angola/Internet_bandwidth/](https://www.theglobaleconomy.com/Angola/Internet_bandwidth/)
  - *dpi · yr 2015 · ICT Infrastructure / Connectivity / International Internet Bandwidth=Very Low (<5 kbit/s per user)*
- TheGlobalEconomy indicator page (internet users); standing data portal.
  - [https://www.theglobaleconomy.com/Angola/Internet_users/](https://www.theglobaleconomy.com/Angola/Internet_users/)
  - *dpi · yr 2023 · ICT Infrastructure / Connectivity / Internet Usage Rate=50-69%*
- Trading Economics indicator page (electricity access); standing data portal.
  - [https://tradingeconomics.com/angola/access-to-electricity-percent-of-population-wb-data.html](https://tradingeconomics.com/angola/access-to-electricity-percent-of-population-wb-data.html)
  - *dpi · yr 2023 · ICT Infrastructure / Energy / Electricity Access Rate=50-74%*
- US State visa reciprocity / civil-documents reference page; standing reference resource.
  - [https://travel.state.gov/content/travel/en/us-visas/Visa-Reciprocity-and-Civil-Documents-by-Country/Angola.html](https://travel.state.gov/content/travel/en/us-visas/Visa-Reciprocity-and-Civil-Documents-by-Country/Angola.html)
  - *dpi · yr 2024 · Digital Id / Uptake / Cost of Credential= Yes*
- Uptime Institute award listing (MSTelcom); standing registry/resource.
  - [https://uptimeinstitute.com/uptime-institute-awards/list/datacenter/asa-mstelcom-data-centre/330](https://uptimeinstitute.com/uptime-institute-awards/list/datacenter/asa-mstelcom-data-centre/330)
  - *data-centres · yr — · MSTelcom TCC (Telecom Command Centre) (Luanda); status=Operational; type=Colocation/carrier-neutral*
- WIPO Lex record — Angola Consumer Protection Law 15/03; reference instrument entity.
  - [https://www.wipo.int/wipolex/en/legislation/details/11008](https://www.wipo.int/wipolex/en/legislation/details/11008)
  - *dpi · yr 2003 · Digital Pay / Governance / Consumer Protection Framework for Payments=Yes*

---

### Next step
Approve or trim **Category A** (or tell me to proceed with all 24 non-PDF A items). On your go, Phase 3 fetches those via Exa, builds marksnip clips (date-prefixed 2026-07-15), and places them in `/new-queue` for you to move into `/new`. B / C / D and all PDFs stay with you (Phase 4). Gap-filling web search is deferred until every country is staged.