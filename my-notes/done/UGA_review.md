# Uganda (UGA) — dataset→wiki intake review

*Run 2026-07-17 · country-ingest workflow (Phase 1 assessment + Phase 2 A-web fetch). Parent XEA.*

## Counts

- **Total distinct source URLs:** 137
- **Already held (hub):** 0
- **Excluded (pre-2024, by URL date):** 9
- **New & in-window:** 128
- **Buckets:** A-web 36 · A-PDF 9 · B 24 · C 18 · D 41

## Hub coverage

Hub `wiki/places/UGA.md` is **rich** (11.8 KB, ~16 events): MOSIP-based national ID (>28m records migrated), NIRA→OpenCRVS v2.0, Jan-2026 election internet shutdown + BVVK failure, CIPESA AI-strategy submission, Chinese "safe city" surveillance, DIAL cross-border ID, DHIS2 resilience. **0 held at URL level**, but overlaps flagged inline: biometricupdate 202602 (">28m records migrated") is the likely **primary source** for the hub's 2026-05-22 migration fact; IritTech iris kits (biometricupdate 202603) extends the Phase-II registration thread; Technoforte MOSIP+OpenCRVS press underlies the NIRA/OpenCRVS event; NIRA mass-enrolment press statement (Oct 2024) predates and sources the enrolment strand.

## A-web · ingest (non-PDF) — CC fetches in Phase 2  (36)

- [http://digitalrightsalliance.africa/ugandas-digital-id-barrier-worsens-as-court-delivers-blow-to-access](http://digitalrightsalliance.africa/ugandas-digital-id-barrier-worsens-as-court-delivers-blow-to-access)
  - Digital Rights Alliance Uganda ID analysis. yrs 2015,2022,2025 · Digital Id / Enrollment Mandatory Status; Digital Id / Healthcare Access Use — Uganda's general court system exercises judicial oversight over the national ID system, but no ID-specific judicial mechanisms exist. The High Court heard and dismissed (June 2025)
- [http://gltn.net/blog/uganda-moves-digital-certificates-customary-ownership-secure-land-rights-and-improve-land-use](http://gltn.net/blog/uganda-moves-digital-certificates-customary-ownership-secure-land-rights-and-improve-land-use)
  - GLTN Uganda land-certificates blog 2024. yrs 2024 · Registries / Separate cadastral register; Registries / Uptake — Uganda maintains digital parcel/mapping components, including GIS-based initiatives and digitized customary ownership certificate templates (STDM) approved by MLHUD, indicating cad
- [https://africa.businessinsider.com/local/markets/another-first-ai-factory-in-africa-uganda-is-said-to-have-made-its-entry-into-the-ai/n47mrec](https://africa.businessinsider.com/local/markets/another-first-ai-factory-in-africa-uganda-is-said-to-have-made-its-entry-into-the-ai/n47mrec)
  - Business Insider Africa — country AI-DC story. yrs 2026 · Aeonian Project - Karuma Hyperscale AI Data Centre / Kiryandongo — Hybrid Tier-4 Plus off-grid hyperscale; 100MW from Karuma Hydro Plant on River Nile; 10MW USIO supercomputer NVIDIA Blackwell GPU; Phase 1 (15MW AI + 10MW SC) targets H2 2026; full
- [https://blog-pfm.imf.org/en/pfmblog/2025/04/leveraging-digital-public-infrastructure-to-enhance](https://blog-pfm.imf.org/en/pfmblog/2025/04/leveraging-digital-public-infrastructure-to-enhance)
  - IMF PFM blog Uganda DPI 2025-04. yrs 2022,2025 · Registries / Business taxpayer uptake; Registries / Income taxpayer uptake — No direct proportion of all businesses registered for tax was found; IMF PFM blog notes URA registered over 350,000 informal taxpayers by 2022 and EFRIS focuses on VAT-registered b
- [https://citizenshiprightsafrica.org/id4d-country-diagnostic-uganda](https://citizenshiprightsafrica.org/id4d-country-diagnostic-uganda)
  - CitizenshipRightsAfrica country ID analysis (verify date). yrs 2015,2024,2025 · Digital Id / Cost of Credential; Digital Id / Enrollment Eligibility Age — Uganda's ID system is funded through a mix of domestic government budget (GoU) and external financing. The mass enrollment exercise (USh 666.85B) is primarily domestically funded v
- [https://citizenshiprightsafrica.org/the-experience-of-cross-border-travel-using-national-id](https://citizenshiprightsafrica.org/the-experience-of-cross-border-travel-using-national-id)
  - CitizenshipRightsAfrica country ID analysis (verify date). yrs 2017 · Digital Id / Cross-Border Recognition — Uganda's national ID is formally recognised as a travel document for cross-border movement within the East African Community (EAC), specifically between Uganda, Kenya, and Rwanda u
- [https://dial.global/research/integrated-national-data-exchange-uganda-case-study](https://dial.global/research/integrated-national-data-exchange-uganda-case-study)
  - DIAL Uganda data-exchange case study 2024. yrs 2024 · Registries / Data exchange integration — Uganda has an operational national data exchange/integration platform (UGHub) used across MDAs and private entities; while URA is not explicitly named in the sources reviewed, nati
- [https://idtechwire.com/uganda-prepares-large-scale-biometric-registration-for-national-id](https://idtechwire.com/uganda-prepares-large-scale-biometric-registration-for-national-id)
  - IDTechWire country identity reporting. yrs 2024,2026 · Digital Id / Biometric Data Collection; Digital Id / Maintenance — NIRA is the government authority responsible for the NIR, but significant technology components rely on foreign vendors. The original NSIS used Muehlbauer High Tech International e
- [https://liquid.tech/about-us/news/launch-the-first-azure-stack-in-uganda](https://liquid.tech/about-us/news/launch-the-first-azure-stack-in-uganda)
  - Liquid Azure-Stack launch news — verify date. Liquid Intelligent Technologies Kampala / Kampala — Located 6771 Wampewo Avenue Kampala; launched Uganda first Microsoft Azure Stack August 2024; Cassava Technologies parent HQ United Kingdom; Africa Data Centres (sister unit) has n
- [https://nilepost.co.ug/business/301709/ura-announces-historic-shift-from-tin-to-nin](https://nilepost.co.ug/business/301709/ura-announces-historic-shift-from-tin-to-nin)
  - Nile Post national reporting. yrs 2025 · Registries / National Id integration — URA has announced a shift from using TIN to using the National Identification Number (NIN) as tax identifier, indicating active integration between the tax register and national ID
- [https://nilepost.co.ug/news/307494/minister-asamo-calls-for-stronger-financial-inclusion-for-persons-with-disabilities](https://nilepost.co.ug/news/307494/minister-asamo-calls-for-stronger-financial-inclusion-for-persons-with-disabilities)
  - Nile Post national reporting. yrs 2025 · Digital Pay / Accessibility for Persons with Disabilities — Disability access efforts are present but uneven: government and financial-sector stakeholders publicly acknowledge barriers and call for stronger inclusion of persons with disabil
- [https://pctechmag.com/2025/08/centenary-group-affirms-data-centre-will-be-ready-by-late-2025](https://pctechmag.com/2025/08/centenary-group-affirms-data-centre-will-be-ready-by-late-2025)
  - PC Tech Magazine national tech reporting. yrs 2026 · Centenary Group Green Tier III Data Centre (Masaka) / Masaka — First Tier III DC outside Kampala; Masaka city ~130km west of Kampala; 4-storey building; 40% power savings vs conventional DCs through innovative cooling; solar energy; water harv
- [https://pctechmag.com/2025/10/centenary-group-set-to-launch-its-green-tier-3-data-centre-in-2026](https://pctechmag.com/2025/10/centenary-group-set-to-launch-its-green-tier-3-data-centre-in-2026)
  - PC Tech Magazine national tech reporting. yrs 2026 · Centenary Group Green Tier III Data Centre (Masaka) / Masaka — First Tier III DC outside Kampala; Masaka city ~130km west of Kampala; 4-storey building; 40% power savings vs conventional DCs through innovative cooling; solar energy; water harv
- [https://softpower.ug/ura-launches-enhanced-tax-payment-services-on-mtn-momo-to-boost-digital-compliance](https://softpower.ug/ura-launches-enhanced-tax-payment-services-on-mtn-momo-to-boost-digital-compliance)
  - SoftPower national reporting. yrs 2025 · Digital Pay / Person-to-Government (P2G) Payments; Digital Pay / Revenue Collection — Revenue collection via digital channels is active: URA provides tax payment services through MTN MoMo (enabling seamless digital payments and improving collections/compliance), dem
- [https://softpower.ug/ura-launches-tax-filing-season-announces-shift-from-tin-to-nin](https://softpower.ug/ura-launches-tax-filing-season-announces-shift-from-tin-to-nin)
  - SoftPower national reporting. yrs 2025 · Registries / Business register integration — URA’s planned reforms state that businesses will use their URSB registration numbers as TINs, implying integration between business registration and tax identification is under dev
- [https://ubc.go.ug/2025/10/06/bous-new-payment-system-cuts-delays-and-boosts-e-money-by-28-6](https://ubc.go.ug/2025/10/06/bous-new-payment-system-cuts-delays-and-boosts-e-money-by-28-6)
  - Bank of Uganda payment-system news 2025-10. yrs 2025 · Digital Pay / Active Digital Payment Users; Digital Pay / Cross-Border Payment Functionality — Cross-border functionality exists via regional infrastructure such as the East African Payment System (EAPS), with BoU reporting EAPS inflows (UGX 1.3 trillion, +17% in FY2024/25),
- [https://uniph.go.ug/projects/data-4-health-civil-registration-and-vital-statistics-project](https://uniph.go.ug/projects/data-4-health-civil-registration-and-vital-statistics-project)
  - UNIPH Data4Health CRVS project page 2025. yrs 2025 · Digital Id / Civil Registration Integration — NIRA is mandated under ROPA 2015 to register births, deaths, and adoptions and link them to the NIR. The MOSIP-OpenCRVS integration project (2025) aims to link birth registrations 
- [https://www.biometricupdate.com/202406/ugandan-human-rights-lawyers-arrest-exposes-use-of-national-id-for-surveillance](https://www.biometricupdate.com/202406/ugandan-human-rights-lawyers-arrest-exposes-use-of-national-id-for-surveillance)
  - BiometricUpdate country identity reporting. yrs 2019 · Digital Id / Data Sharing Rules — Data sharing rules exist but are only partially defined. The ROPA 2015 (Section 65) specifies permitted uses of NIR data (security, taxation, health, social services, immigration e
- [https://www.biometricupdate.com/202410/uganda-financial-institutions-sign-on-for-digital-kyc-through-national-id](https://www.biometricupdate.com/202410/uganda-financial-institutions-sign-on-for-digital-kyc-through-national-id)
  - BiometricUpdate country identity reporting. yrs 2024,2025 · Digital Id / Banking/Financial Services Use; Digital Id / Digital Authentication Function — Uganda's NID supports digital authentication via the NIRA Third Party Interface (TPI), which allows real-time biometric (fingerprint) and demographic verification against the NIR. 
- [https://www.biometricupdate.com/202602/uganda-migrates-more-than-28m-records-to-new-national-id-system](https://www.biometricupdate.com/202602/uganda-migrates-more-than-28m-records-to-new-national-id-system)
  - BiometricUpdate country identity reporting. yrs 2026 · Registries / Status; Registries / Uptake — Uganda maintains a digital biometric National Identification Register (NIR) managed by NIRA; in Feb 2026 NIRA reported migrating 28M legacy records and the new national register ha
- [https://www.biometricupdate.com/202603/iritech-provides-iris-biometrics-for-ugandas-upgraded-registration-kits](https://www.biometricupdate.com/202603/iritech-provides-iris-biometrics-for-ugandas-upgraded-registration-kits)
  - BiometricUpdate country identity reporting. yrs 2024,2025,2026 · Digital Id / Biometric Data Collection; Digital Id / Electronic Database — NIRA is the government authority responsible for the NIR, but significant technology components rely on foreign vendors. The original NSIS used Muehlbauer High Tech International e
- [https://www.centetech.com/news/cm66394e60w5207w4vkpw14nr](https://www.centetech.com/news/cm66394e60w5207w4vkpw14nr)
  - Centenary Tech news — Masaka DC. yrs 2026 · Centenary Group Green Tier III Data Centre (Masaka) / Masaka — First Tier III DC outside Kampala; Masaka city ~130km west of Kampala; 4-storey building; 40% power savings vs conventional DCs through innovative cooling; solar energy; water harv
- [https://www.datacenterdynamics.com/en/marketwatch/nxtra-airtels-leap-into-africas-growing-data-center-market](https://www.datacenterdynamics.com/en/marketwatch/nxtra-airtels-leap-into-africas-growing-data-center-market)
  - DataCenterDynamics — use on-page byline date. Airtel NXtra Uganda (Edge/Planned) / Kampala — Nxtra lists Kampala as planned location in Africa rollout after Lagos and Nairobi; no Uganda groundbreaking confirmed as of early 2026; Airtel Uganda currently offers NXtra-branded
- [https://www.datacenterdynamics.com/en/news/liquid-intelligent-technologies-launches-azure-stack-in-uganda](https://www.datacenterdynamics.com/en/news/liquid-intelligent-technologies-launches-azure-stack-in-uganda)
  - DataCenterDynamics — use on-page byline date. yrs 2012 · Liquid Intelligent Technologies Kampala / Kampala; MTN Mbuya Data Centre / Kampala — Located Plot 2310 Togo House 12 Port Bell Rd Kampala; MTN Uganda 6 DCs total 972 racks combined across Central/East/West/South regions; MTN Group HQ South Africa; 100Gbps backhaul;
- [https://www.datacenterdynamics.com/en/news/ugandas-centenary-group-plans-data-center-in-masaka](https://www.datacenterdynamics.com/en/news/ugandas-centenary-group-plans-data-center-in-masaka)
  - DataCenterDynamics — use on-page byline date. yrs 2026 · Centenary Group Green Tier III Data Centre (Masaka) / Masaka — First Tier III DC outside Kampala; Masaka city ~130km west of Kampala; 4-storey building; 40% power savings vs conventional DCs through innovative cooling; solar energy; water harv
- [https://www.ecofinagency.com/news-digital/1509-48701-synectics-schneider-to-build-ai-center-in-uganda-starting-2026](https://www.ecofinagency.com/news-digital/1509-48701-synectics-schneider-to-build-ai-center-in-uganda-starting-2026)
  - Ecofin country reporting (verify DDMM date). yrs 2026 · Aeonian Project - Karuma Hyperscale AI Data Centre / Kiryandongo — Hybrid Tier-4 Plus off-grid hyperscale; 100MW from Karuma Hydro Plant on River Nile; 10MW USIO supercomputer NVIDIA Blackwell GPU; Phase 1 (15MW AI + 10MW SC) targets H2 2026; full
- [https://www.independent.co.ug/abq-cloud-launches-ugandan-sovereign-cloud-ecosystem](https://www.independent.co.ug/abq-cloud-launches-ugandan-sovereign-cloud-ecosystem)
  - The Independent national reporting. yrs 2026 · ICT Infrastructure / Commercial Data Center Presence; ICT Infrastructure / Government Data Center / Cloud Strategy — Raxio Tier III, ABQ.Independent
- [https://www.independent.co.ug/yas-completes-63m-acquisition-of-parent-company-of-zuku-and-simbanet](https://www.independent.co.ug/yas-completes-63m-acquisition-of-parent-company-of-zuku-and-simbanet)
  - The Independent national reporting. Simbanet Uganda DC (Edge) / Kampala — Simbanet (U) Ltd founded 2011; acquired by YAS (AXIAN Telecom subsidiary) via $63M Wananchi Group purchase November 2025; SMART DC product offering referenced on website; limited p
- [https://www.monitor.co.ug/uganda/business/technology/why-uganda-is-offline-5376622](https://www.monitor.co.ug/uganda/business/technology/why-uganda-is-offline-5376622)
  - Daily Monitor national reporting. yrs 2023 · ICT Infrastructure / 4G/LTE Population Coverage — 96%.Monitor
- [https://www.monitor.co.ug/uganda/news/national/huge-turnout-as-nira-starts-mass-registration-5059776](https://www.monitor.co.ug/uganda/news/national/huge-turnout-as-nira-starts-mass-registration-5059776)
  - Daily Monitor national reporting. yrs 2024,2025 · Digital Id / Cost of Credential; Digital Id / Ministry of Finance Oversight — NIRA is funded through the national budget under the Ministry of Internal Affairs (Vote 137), with the Ministry of Finance, Planning and Economic Development (MoFPED) overseeing bu
- [https://www.newvision.co.ug/news/1519303/-sponsored-content-mtn-airtel-announce-changes-mobile-money-rates](https://www.newvision.co.ug/news/1519303/-sponsored-content-mtn-airtel-announce-changes-mobile-money-rates)
  - New Vision national reporting — verify date. yrs 2020 · Digital Pay / Person-to-Business (P2B) Merchant Payments; Digital Pay / Person-to-Person (P2P) Payments — P2B (merchant) payments are available via mobile money (e.g., MTN MoMo Pay/Airtel Money Pay referenced as merchant pay transactions).
- [https://www.nira.go.ug/media/2024/10/PRESS-STATEMENT-ON-THE-MASS-ENROLMENT-EXERCISE-15th-October-2024.pdf](https://www.nira.go.ug/media/2024/10/PRESS-STATEMENT-ON-THE-MASS-ENROLMENT-EXERCISE-15th-October-2024.pdf)
  - NIRA official press statement (dated). yrs 2024,2025 · Digital Id / Digital ID System Exists; Digital Id / Enrollment Eligibility Age — Uganda's National Identification and Registration Authority (NIRA) operates a fully deployed nationwide biometric digital ID system (Ndaga Muntu/NID), established under the Registr
- [https://www.parliamentwatch.ug/hot-in-parliament/why-uganda-wants-to-ditch-tree-based-directions-for-digital-addresses](https://www.parliamentwatch.ug/hot-in-parliament/why-uganda-wants-to-ditch-tree-based-directions-for-digital-addresses)
  - Parliament Watch digital-addresses reporting. yrs 2026 · Registries / Status — Evidence indicates Uganda is pursuing a national digital address system (mapping physical locations to unique digital addresses linked to GPS) but sources reviewed did not confirm 
- [https://www.pdpo.go.ug/updates/data-protection-and-privacy-in-ugandas-public-and-private-health-sector](https://www.pdpo.go.ug/updates/data-protection-and-privacy-in-ugandas-public-and-private-health-sector)
  - Uganda PDPO update (dated) — verify. yrs 2019 · Digital Id / Data Protection Authority Oversight — Uganda's Data Protection and Privacy Act 2019 establishes the Personal Data Protection Office (PDPO) under NITA-U, headed by a National Personal Data Protection Director. The PDPO 
- [https://www.raxiogroup.com/raxio-uganda-launches-first-enterprise-grade-tier-iii-certified-carrier-neutral-data-centre](https://www.raxiogroup.com/raxio-uganda-launches-first-enterprise-grade-tier-iii-certified-carrier-neutral-data-centre)
  - Raxio UG1 launch PR — 2021, verify (pre-2024). yrs 2021 · Raxio Uganda UG1 / Kampala — Uganda first Tier III carrier-neutral DC; Namanve Industrial Park Kampala-Jinja Highway 15km from CBD; parent HQ Dubai (UAE); hosts UIXP peering LAN on-site since 2021; 1000 sqm wh
- [https://www.watchdoguganda.com/business/20260128/188116/uganda-to-launch-africas-first-home-grown-ai-supercomputer-center-at-karuma-hydropower-plant.html](https://www.watchdoguganda.com/business/20260128/188116/uganda-to-launch-africas-first-home-grown-ai-supercomputer-center-at-karuma-hydropower-plant.html)
  - Watchdog Uganda national reporting. yrs 2026 · Aeonian Project - Karuma Hyperscale AI Data Centre / Kiryandongo — Hybrid Tier-4 Plus off-grid hyperscale; 100MW from Karuma Hydro Plant on River Nile; 10MW USIO supercomputer NVIDIA Blackwell GPU; Phase 1 (15MW AI + 10MW SC) targets H2 2026; full

## A-PDF · ingest (PDF) — Bill handles by hand  (9)

- [https://apai-crvs.uneca.org/sites/default/files/resourcefiles/CRVS_UgandaSnapshot_e.pdf](https://apai-crvs.uneca.org/sites/default/files/resourcefiles/CRVS_UgandaSnapshot_e.pdf)
  - UNECA Uganda CRVS snapshot PDF. Registry — Rural registry offices (86% of 152 total birth/death registration offices at district level) conduct birth registration using paper-based processes at the point of service. Data is
- [https://crvssystems.ca/sites/default/files/assets/images/CRVS_Webinar_Uganda_e_WEB.pdf](https://crvssystems.ca/sites/default/files/assets/images/CRVS_Webinar_Uganda_e_WEB.pdf)
  - CRVS country snapshot/webinar PDF (CRVS Systems / Bruyas). yrs 2025 · Digital Id / Civil Registration Integration — NIRA is mandated under ROPA 2015 to register births, deaths, and adoptions and link them to the NIR. The MOSIP-OpenCRVS integration project (2025) aims to link birth registrations 
- [https://id4africa.com/2024/ps4/PS4-S2-Uganda-NITA-NIRA-Final.pdf](https://id4africa.com/2024/ps4/PS4-S2-Uganda-NITA-NIRA-Final.pdf)
  - ID4Africa 2024 Uganda NITA/NIRA presentation PDF. yrs 2024 · Registries / Data exchange integration — Uganda’s national data integration platform UGHub is operational and NIRA is identified as a key participating entity in government data sharing; an ID4Africa deck describes UGHub 
- [https://iser-uganda.org/wp-content/uploads/2024/07/Seizing-the-opportunity-to-improve-the-national-digital-ID-system-for-Uganda.pdf](https://iser-uganda.org/wp-content/uploads/2024/07/Seizing-the-opportunity-to-improve-the-national-digital-ID-system-for-Uganda.pdf)
  - ISER Uganda digital-ID report PDF. yrs 2015,2024 · Digital Id / Digital ID Specific Regulation; Digital Id / Security Reviews — The Registration of Persons Act 2015 is a dedicated legal instrument specifically governing Uganda's digital/biometric national ID system, establishing NIRA, the NIR, biometric enr
- [https://ugandabankers.org/wp-content/uploads/2024/01/National-Financial-Inclusion-Strategy-2023-2028-.pdf](https://ugandabankers.org/wp-content/uploads/2024/01/National-Financial-Inclusion-Strategy-2023-2028-.pdf)
  - Uganda National Financial Inclusion Strategy PDF. yrs 2023 · Digital Pay / Pro-Poor Governance Mechanisms — Uganda’s National Financial Inclusion Strategy II (2023–2028) includes governance mechanisms (e.g., Steering Committee and working groups) focused on reducing exclusion/access barr
- [https://www.nita.go.ug/sites/default/files/2025-07/Digital-Strategy.pdf](https://www.nita.go.ug/sites/default/files/2025-07/Digital-Strategy.pdf)
  - NITA-U Digital Strategy / e-GIF 2025 PDF. yrs 2022,2025 · Data Exchange / AI/Analytics Capabilities; Data Exchange / Digital ID Integration — NIRA (National Identification and Registration Authority) manages national ID. MOSIP adoption for digital ID documented in DPG/DPI case studies. UgHub integrates with NIRA for iden
- [https://www.nita.go.ug/sites/default/files/2025-07/e-GIF.pdf](https://www.nita.go.ug/sites/default/files/2025-07/e-GIF.pdf)
  - NITA-U Digital Strategy / e-GIF 2025 PDF. yrs 2022,2024,2025 · Data Exchange / AI/Analytics Capabilities; Data Exchange / Agriculture System Integration — MAAIF (Ministry of Agriculture) has some digital systems. No specific evidence of farmer registry or agricultural input data integration with UgHub or e-GIF data exchange ecosystem
- [https://www.ubos.org/wp-content/uploads/publications/Uganda-Vital-Statistics-Report-2024.pdf](https://www.ubos.org/wp-content/uploads/publications/Uganda-Vital-Statistics-Report-2024.pdf)
  - UBOS Uganda Vital Statistics Report 2024 PDF. yrs 2024 · Registries / Status; Registries / Uptake — Uganda maintains digital civil registration components (MVRS/CRIMS) under NIRA, but completeness remains low and deployment is not fully nationwide; UBOS Vital Statistics Report 20
- [https://www.use.or.ug/uploads/064db276-d537-4cc9-a508-568d2a35e709.pdf](https://www.use.or.ug/uploads/064db276-d537-4cc9-a508-568d2a35e709.pdf)
  - Uganda Securities Exchange audit PDF 2025. yrs 2025 · Digital Pay / Independent Audits and Reviews — Independent audits exist publicly for major payment ecosystem participants: MTN Uganda (a key mobile money provider) publishes financial statements (though the referenced interim r

## B · check first  (24)

- [https://assets.publishing.service.gov.uk/media/5a78d60ced915d07d35b2cde/ev591.pdf](https://assets.publishing.service.gov.uk/media/5a78d60ced915d07d35b2cde/ev591.pdf)
  - old DFID PDF — off-core. Police — Rural police stations in Uganda predominantly use paper-based recording for case files, complaints, and incidents. Standard practice involves manual entry in hard-backed occurrence
- [https://cloud.google.com/blog/products/infrastructure/heita-south-africa-new-cloud-region](https://cloud.google.com/blog/products/infrastructure/heita-south-africa-new-cloud-region)
  - Google Cloud SA region — off-country. yrs 2026 · ICT Infrastructure / Cloud Services Availability — Regional SA zones.Google
- [https://documents1.worldbank.org/curated/en/337501535031584335/pdf/129621-ACS.pdf](https://documents1.worldbank.org/curated/en/337501535031584335/pdf/129621-ACS.pdf)
  - WB 2018 cross-border ID report — old. yrs 2017 · Digital Id / Cross-Border Recognition — Uganda's national ID is formally recognised as a travel document for cross-border movement within the East African Community (EAC), specifically between Uganda, Kenya, and Rwanda u
- [https://education.dhis2.org/routine-data-collection-uganda](https://education.dhis2.org/routine-data-collection-uganda)
  - unmatched domain — human check. School — Rural primary schools in Uganda predominantly use paper-based registers for recording administrative data, attendance, and learning outcomes at the point of service. Head teachers 
- [https://fsduganda.or.ug/our-work/digital-economy/electronic-know-your-customer-project](https://fsduganda.or.ug/our-work/digital-economy/electronic-know-your-customer-project)
  - FSD Uganda e-KYC project page — check. yrs 2024 · Digital Id / Digital Authentication Function; Digital Id / KYC Enablement — Uganda's NID supports digital authentication via the NIRA Third Party Interface (TPI), which allows real-time biometric (fingerprint) and demographic verification against the NIR. 
- [https://gogla.org/wp-content/uploads/2024/11/Uganda-Country-Brief.pdf](https://gogla.org/wp-content/uploads/2024/11/Uganda-Country-Brief.pdf)
  - off-core off-grid country brief. yrs 2024 · ICT Infrastructure / Off-Grid and Distributed Energy Policy — Significant deployment subsidies.GOGLA
- [https://kenyanwallstreet.com/uganda-set-to-host-africas-first-ai-factory](https://kenyanwallstreet.com/uganda-set-to-host-africas-first-ai-factory)
  - regional outlet — country-specific, check. yrs 2026 · Aeonian Project - Karuma Hyperscale AI Data Centre / Kiryandongo — Hybrid Tier-4 Plus off-grid hyperscale; 100MW from Karuma Hydro Plant on River Nile; 10MW USIO supercomputer NVIDIA Blackwell GPU; Phase 1 (15MW AI + 10MW SC) targets H2 2026; full
- [https://menterprise.africa/inside-ugandas-biometric-voter-verification-kit-what-voters-need-to-know-ahead-of-january-15-election](https://menterprise.africa/inside-ugandas-biometric-voter-verification-kit-what-voters-need-to-know-ahead-of-january-15-election)
  - unknown outlet — check. yrs 2026 · Registries / Status — Uganda maintains a digital electoral register (national voters’ register) and uses biometric voter verification kits for elections, indicating nationwide digital register deploymen
- [https://news.trust.org/item/20220513155511-l53t0](https://news.trust.org/item/20220513155511-l53t0)
  - Thomson Reuters Foundation — check date. yrs 2022 · Digital Id / Healthcare Access Use; Digital Id / Social Services Use — The national ID is mandatory for accessing healthcare in Uganda. Pregnant women without NID have been turned away from health centres; citizens without NID are denied access to Nat
- [https://observer.ug/business/power-tariffs-will-umemes-exit-usher-in-cheaper-power](https://observer.ug/business/power-tariffs-will-umemes-exit-usher-in-cheaper-power)
  - off-core power-tariff news. yrs 2025 · ICT Infrastructure / Electricity Affordability — >10% income est.Observer
- [https://openknowledge.worldbank.org/server/api/core/bitstreams/5b661c8d-0ea8-5883-be7c-7a8d0ca56413/content](https://openknowledge.worldbank.org/server/api/core/bitstreams/5b661c8d-0ea8-5883-be7c-7a8d0ca56413/content)
  - unmatched domain — human check. yrs 2018,2021,2024,2026 · Registries / Civil registration integration; Registries / Inclusivity — Uganda maintains digital civil registration components (MVRS/CRIMS) under NIRA, but completeness remains low and deployment is not fully nationwide; UBOS Vital Statistics Report 20
- [https://techreviewafrica.com/news/4057/nita-uganda-concludes-workshop-on-renewal-of-government-enterprise-architecture-and-interoperability-framework](https://techreviewafrica.com/news/4057/nita-uganda-concludes-workshop-on-renewal-of-government-enterprise-architecture-and-interoperability-framework)
  - unknown outlet — country-specific, check. yrs 2025 · Data Exchange / Implementation Roadmap; Data Exchange / Operational Status — Digital Government Strategy includes a 5-year implementation plan with milestones. GEA renewal workshop (Feb 2026) is updating the architecture roadmap. e-GIF v2 includes phased ad
- [https://trademarkafrica.com/why-trade-between-eac-states-is-lagging](https://trademarkafrica.com/why-trade-between-eac-states-is-lagging)
  - regional EAC piece. yrs 2017 · Digital Id / Cross-Border Recognition — Uganda's national ID is formally recognised as a travel document for cross-border movement within the East African Community (EAC), specifically between Uganda, Kenya, and Rwanda u
- [https://upf.go.ug/police-develops-crime-records-management-system](https://upf.go.ug/police-develops-crime-records-management-system)
  - Uganda Police crime-records page — off-core. Police — Rural police stations in Uganda predominantly use paper-based recording for case files, complaints, and incidents. Standard practice involves manual entry in hard-backed occurrence
- [https://worldbusinessjournal.com/centenary-technology-services-expands-ict-infrastructure-with-new-tier-3-data-centre](https://worldbusinessjournal.com/centenary-technology-services-expands-ict-infrastructure-with-new-tier-3-data-centre)
  - unknown outlet — check. yrs 2026 · Centenary Group Green Tier III Data Centre (Masaka) / Masaka — First Tier III DC outside Kampala; Masaka city ~130km west of Kampala; 4-storey building; 40% power savings vs conventional DCs through innovative cooling; solar energy; water harv
- [https://www.afrobarometer.org/publication/ad515-limited-access-to-electricity-and-digital-technologies-a-barrier-to-e-learning-in-uganda](https://www.afrobarometer.org/publication/ad515-limited-access-to-electricity-and-digital-technologies-a-barrier-to-e-learning-in-uganda)
  - Afrobarometer dispatch — check date. yrs 2021 · ICT Infrastructure / Basic Digital Literacy — 26% basic est.Afrobarometer
- [https://www.appsafrica.com/afrilabs-expands-into-45-african-countries](https://www.appsafrica.com/afrilabs-expands-into-45-african-countries)
  - AfriLabs regional expansion. yrs 2019 · ICT Infrastructure / Technology and Innovation Hubs — 10+ hubs.AfriLabs
- [https://www.ceo.co.ug/ursbs-online-business-registration-system-still-slow-despite-ugx-6-5b-investment](https://www.ceo.co.ug/ursbs-online-business-registration-system-still-slow-despite-ugx-6-5b-investment)
  - unmatched domain — human check. yrs 2022 · Registries / Status — Uganda maintains a digital business register via URSB’s Online Business Registration System (OBRS), launched in Dec 2022 to automate business registration services.
- [https://www.geopoll.com/blog/mobile-penetration-uganda](https://www.geopoll.com/blog/mobile-penetration-uganda)
  - GeoPoll mobile-penetration blog. yrs 2021 · ICT Infrastructure / Smartphone Adoption — 46% est.GeoPoll
- [https://www.ictd.ac/blog/panopticon-taxman-digital-surveillance-impacting-tax-compliance-uganda](https://www.ictd.ac/blog/panopticon-taxman-digital-surveillance-impacting-tax-compliance-uganda)
  - ICTD tax-surveillance blog — check. yrs 2025 · Registries / Status — Uganda Revenue Authority (URA) operates digital taxpayer registration and e-services (e-tax portal, EFRIS, and TIN system) as part of an integrated tax administration approach, ind
- [https://www.ictworks.org/african-women-bridge-digital-gender-gap](https://www.ictworks.org/african-women-bridge-digital-gender-gap)
  - ICTWorks regional gender piece. yrs 2021 · ICT Infrastructure / Gender Gap in ICT Access — 20-29% gap.ICTworks
- [https://www.mtn.com/wp-content/uploads/2025/03/MTN-Group-FY-24-Annual-Financial-Statements.pdf](https://www.mtn.com/wp-content/uploads/2025/03/MTN-Group-FY-24-Annual-Financial-Statements.pdf)
  - MTN Group financials PDF — corporate, off country-DPI. yrs 2025 · Digital Pay / Independent Audits and Reviews — Independent audits exist publicly for major payment ecosystem participants: MTN Uganda (a key mobile money provider) publishes financial statements (though the referenced interim r
- [https://www.state.gov/wp-content/uploads/2024/02/528267_UGANDA-2023-HUMAN-RIGHTS-REPORT.pdf](https://www.state.gov/wp-content/uploads/2024/02/528267_UGANDA-2023-HUMAN-RIGHTS-REPORT.pdf)
  - US HR report — off-core. Police — Rural police stations in Uganda predominantly use paper-based recording for case files, complaints, and incidents. Standard practice involves manual entry in hard-backed occurrence
- [https://www.urban.org/sites/default/files/publication/99203/uganda_case_study_report_refugees_private_sector_2.pdf](https://www.urban.org/sites/default/files/publication/99203/uganda_case_study_report_refugees_private_sector_2.pdf)
  - Urban Institute refugee case study — off-core. yrs 2017 · Digital Pay / Refugee and Migrant Access — Refugee access via digital payments is partially enabled through humanitarian mobile money transfers (e.g., agencies using Airtel/mobile money for cash transfers), but KYC/SIM regi

## C · lead only (do not cite)  (18)

- [https://allafrica.com/stories/201907110784.html](https://allafrica.com/stories/201907110784.html)
  - allAfrica aggregator — mine for primary. yrs 2019 · NITA-U Jinja Data Centre / Jinja — Launched July 2019 by President Museveni; UGX 43bn (~USD 12M) investment; government disaster recovery and backup site for Kampala NDC; DCByte records Tier 3; Broadband Blueprint 2
- [https://blog.voveid.com/aml-compliance-in-uganda-a-2025-guide-for-fintechs-and-regulated-businesses](https://blog.voveid.com/aml-compliance-in-uganda-a-2025-guide-for-fintechs-and-regulated-businesses)
  - VoveID vendor KYC marketing. yrs 2024 · Digital Id / KYC Enablement — Uganda has a robust e-KYC system built on the NIRA database. The Bank of Uganda reports 74 financial institutions (commercial banks, MFIs, fintechs, insurance, telecoms) have acces
- [https://btw.media/all/company-stories/simbanet-u-limited-advancing-ugandas-internet-connectivity](https://btw.media/all/company-stories/simbanet-u-limited-advancing-ugandas-internet-connectivity)
  - marketing company-story. Simbanet Uganda DC (Edge) / Kampala — Simbanet (U) Ltd founded 2011; acquired by YAS (AXIAN Telecom subsidiary) via $63M Wananchi Group purchase November 2025; SMART DC product offering referenced on website; limited p
- [https://captaincompliance.com/education/ugandas-data-protection-law](https://captaincompliance.com/education/ugandas-data-protection-law)
  - vendor compliance guide. yrs 2019,2025 · Digital Id / Data Protection Act; Digital Id / Data Protection Authority Oversight — Under the Data Protection and Privacy Act 2019, data subjects have the right to access, rectify, and request erasure of their personal data. NIRA's online self-registration portal 
- [https://direct.mit.edu/dint/article/4/4/882/112748/Information-Streams-in-Health-Facilities-The-Case](https://direct.mit.edu/dint/article/4/4/882/112748/Information-Streams-in-Health-Facilities-The-Case)
  - academic journal host. Clinic — Rural primary clinics (HC II/III) in Uganda predominantly use paper-based registers for patient data recording at point of care, including outpatient/inpatient registers, lab forms
- [https://en.wikipedia.org/wiki/National_Information_Technology_Authority-Uganda](https://en.wikipedia.org/wiki/National_Information_Technology_Authority-Uganda)
  - Wikipedia — tertiary. yrs 2015 · NITA-U National Data Centre (Kampala) / Kampala — Primary government/national DC; Palm Courts Plot 7A Rotary Avenue Kampala (HQ coordinates used); 150 Dual KVA modular UPS; N+1 72hr power; Precision AC cooling; 10+ petabytes stora
- [https://engineeringresearch.org/index.php/GJRE/article/download/101643/16909/34421](https://engineeringresearch.org/index.php/GJRE/article/download/101643/16909/34421)
  - academic paper host. yrs 2020 · ICT Infrastructure / Grid Reliability (Power Outage Frequency) — 84 outages/mo weekly.ERA
- [https://gitista.com/uganda](https://gitista.com/uganda)
  - aggregator listing. yrs 2025 · ICT Infrastructure / Developer and Tech Community — 1-10k devs.Gitista
- [https://law.yale.edu/isp/initiatives/wikimedia-initiative-intermediaries-and-information/wiii-blog/serious-concerns-around-ugandas-national-biometric-id-program](https://law.yale.edu/isp/initiatives/wikimedia-initiative-intermediaries-and-information/wiii-blog/serious-concerns-around-ugandas-national-biometric-id-program)
  - Yale ISP blog — academic, lead only. yrs 2015 · Digital Id / SIM Card Registration Use — SIM card registration requiring a national ID is mandatory in Uganda. The Registration of Persons Act 2015 (Section 66) mandated NID for SIM card registration. This was enforced st
- [https://pmc.ncbi.nlm.nih.gov/articles/PMC12512544](https://pmc.ncbi.nlm.nih.gov/articles/PMC12512544)
  - PubMed academic host — lead only. Clinic — Rural primary clinics (HC II/III) in Uganda predominantly use paper-based registers for patient data recording at point of care, including outpatient/inpatient registers, lab forms
- [https://pmc.ncbi.nlm.nih.gov/articles/PMC12816509](https://pmc.ncbi.nlm.nih.gov/articles/PMC12816509)
  - PubMed academic host — lead only. Clinic — Rural primary clinics (HC II/III) in Uganda predominantly use paper-based registers for patient data recording at point of care, including outpatient/inpatient registers, lab forms
- [https://securiti.ai/uganda-data-protection-and-privacy-act](https://securiti.ai/uganda-data-protection-and-privacy-act)
  - Securiti vendor page. yrs 2019 · ICT Infrastructure / Data Protection Legislation — DPPA enacted + NITA DPA.Securiti
- [https://www.africareers.net/post/how-to-self-register-for-your-national-id-online-in-uganda-a-step-by-step-guide](https://www.africareers.net/post/how-to-self-register-for-your-national-id-online-in-uganda-a-step-by-step-guide)
  - low-authority how-to. yrs 2024,2025 · Digital Id / Cost of Credential; Digital Id / Government Portal Authentication — Uganda's e-government portal (ecitizen.go.ug) and digital services require NIN/NID for authentication. NITA-U's UGPass platform provides digital authentication for government porta
- [https://www.aratek.co/news/uganda-national-id-explained-from-registration-to-renewal](https://www.aratek.co/news/uganda-national-id-explained-from-registration-to-renewal)
  - Aratek vendor explainer. yrs 2015,2024,2025 · Digital Id / Digital ID System Exists; Digital Id / Enrollment Eligibility Age — Uganda has a comprehensive legal framework for its national ID system. The Registration of Persons Act (ROPA) 2015 (Cap. 332) establishes NIRA, the NIR, and mandates compulsory reg
- [https://www.ecoi.net/en/document/2003536.html](https://www.ecoi.net/en/document/2003536.html)
  - ecoi.net aggregator — lead only. yrs 2015 · Digital Id / Non-National Eligibility — Legal alien residents (with valid permits/passes under the Uganda Citizenship and Immigration Control Act) are eligible for Alien Identification Numbers (AIN) and Alien ID cards un
- [https://www.linkedin.com/pulse/positioning-uganda-africas-shifting-7lzof](https://www.linkedin.com/pulse/positioning-uganda-africas-shifting-7lzof)
  - LinkedIn post — lead only. yrs 2024 · ICT Infrastructure / Tech Startup Ecosystem — $19M VC developing.LinkedIn
- [https://www.technoforte.co.in/news/uganda-to-launch-national-id-and-civil-registry-overhaul-with-mosip-and-opencrvs-led-by-technoforte](https://www.technoforte.co.in/news/uganda-to-launch-national-id-and-civil-registry-overhaul-with-mosip-and-opencrvs-led-by-technoforte)
  - Technoforte vendor press — mine for primary. yrs 2024,2025 · Digital Id / Civil Registration Integration; Digital Id / Electronic Database — NIRA is mandated under ROPA 2015 to register births, deaths, and adoptions and link them to the NIR. The MOSIP-OpenCRVS integration project (2025) aims to link birth registrations 
- [https://www.youtube.com/watch?v=w8-ycik0NjQ](https://www.youtube.com/watch?v=w8-ycik0NjQ)
  - YouTube — video, lead only. yrs 2025 · Registries / Uptake — As of Nov 2025, reports cite ~21.68 million registered voters; relative to Uganda’s adult electorate this suggests broad coverage, categorized as 70–89% due to lack of precise elec

## D · resource / entity (not a dated source)  (41)

- [https://bills.parliament.ug/attachments/National%20Payments%20Systems%20Act](https://bills.parliament.ug/attachments/National%20Payments%20Systems%20Act)
  - draft Act text — cite-don't-absorb. yrs 2020,2021,2025 · Digital Pay / Central Bank Involvement in Governance; Digital Pay / Consumer Protection Framework for Payments — The National Payment Systems Act explicitly classifies RTGS and ACH as “payment systems operated by the central bank” and assigns BoU functions to “regulate, supervise and oversee”
- [https://budget.finance.go.ug/sites/default/files/Sector%20Spending%20Agency%20Budgets%20and%20Performance/National%20Identification%20and%20Registration%20Authority.pdf](https://budget.finance.go.ug/sites/default/files/Sector%20Spending%20Agency%20Budgets%20and%20Performance/National%20Identification%20and%20Registration%20Authority.pdf)
  - Uganda budget portal PDF — reference. yrs 2024 · Digital Id / Ministry of Finance Oversight; Digital Id / Sustainability — NIRA is funded through the national budget under the Ministry of Internal Affairs (Vote 137), with the Ministry of Finance, Planning and Economic Development (MoFPED) overseeing bu
- [https://business.roketelkom.co.ug/it-and-data-center-services/co-location-service](https://business.roketelkom.co.ug/it-and-data-center-services/co-location-service)
  - Roke Telkom colocation page. Roke Telkom Data Centre / Kampala — Located 7 Kulubya Close Bugolobi Kampala; Roke Telkom licensed 2006 by UCC; first telco to roll out fibre Uganda-Tanzania; also connectivity provider terminating fibre at Raxio UG1
- [https://cfts.co](https://cfts.co)
  - CFTS company homepage. CFTS Data Centre / Kampala — Located 89 Kira Rd Kampala; Tier 2; 390TB+ storage expandable to 6PB; on-premise POP with direct UIXP access; uses Aberdeen; Zyxel; Molex; Peplink equipment; domestic private compa
- [https://data.worldbank.org/indicator/SP.REG.BRTH.RU.ZS?locations=UG](https://data.worldbank.org/indicator/SP.REG.BRTH.RU.ZS?locations=UG)
  - WB data indicator page. Registry — Rural registry offices (86% of 152 total birth/death registration offices at district level) conduct birth registration using paper-based processes at the point of service. Data is
- [https://development.finance.go.ug/knowledge-centre-reports/uganda-national-land-information-system-nlis-portal](https://development.finance.go.ug/knowledge-centre-reports/uganda-national-land-information-system-nlis-portal)
  - MoFPED knowledge-centre portal. yrs 2025 · Registries / Status — Uganda operates a National Land Information System (NLIS) and an e-land information portal (UgNLIS) providing digital access to land ownership/encumbrance data; evidence indicates 
- [https://inflect.com/building/university-road-kampala/research-and-education-network-for-uganda-renu/datacenter/makerere-university](https://inflect.com/building/university-road-kampala/research-and-education-network-for-uganda-renu/datacenter/makerere-university)
  - Inflect DC directory. RENU Makerere University Data Centre / Kampala — Located The Edge Building Makerere University University Road Kampala; 100 kW power; 100 kVA UPS; 250 kVA generator; 140 tons cooling capacity; academic DC not commercial; provides
- [https://inflect.com/datacenters/africa/uganda/kampala](https://inflect.com/datacenters/africa/uganda/kampala)
  - Inflect DC directory. Roke Telkom Data Centre / Kampala — Located 7 Kulubya Close Bugolobi Kampala; Roke Telkom licensed 2006 by UCC; first telco to roll out fibre Uganda-Tanzania; also connectivity provider terminating fibre at Raxio UG1
- [https://liquid.tech/local-offices/country/uganda](https://liquid.tech/local-offices/country/uganda)
  - Liquid country office page. Liquid Intelligent Technologies Kampala / Kampala — Located 6771 Wampewo Avenue Kampala; launched Uganda first Microsoft Azure Stack August 2024; Cassava Technologies parent HQ United Kingdom; Africa Data Centres (sister unit) has n
- [https://obrs.ursb.go.ug/search](https://obrs.ursb.go.ug/search)
  - URSB business registry portal. yrs 2022 · Registries / Status — Uganda maintains a digital business register via URSB’s Online Business Registration System (OBRS), launched in Dec 2022 to automate business registration services.
- [https://pulse.internetsociety.org/en/ixp-tracker/country/UG](https://pulse.internetsociety.org/en/ixp-tracker/country/UG)
  - ISOC IXP tracker. yrs 2025 · ICT Infrastructure / Internet Exchange Point Presence — UIXP 20 members mature ecosystem.Pulse
- [https://renu.ac.ug/colocation](https://renu.ac.ug/colocation)
  - RENU colocation page. RENU Makerere University Data Centre / Kampala — Located The Edge Building Makerere University University Road Kampala; 100 kW power; 100 kVA UPS; 250 kVA generator; 140 tons cooling capacity; academic DC not commercial; provides
- [https://statbase.org/data/uga-global-cybersecurity-index](https://statbase.org/data/uga-global-cybersecurity-index)
  - Statbase data page. yrs 2024 · ICT Infrastructure / National Cybersecurity Readiness — GCI 83.1.Statbase
- [https://tradingeconomics.com/uganda/access-to-electricity-percent-of-population-wb-data.html](https://tradingeconomics.com/uganda/access-to-electricity-percent-of-population-wb-data.html)
  - TradingEconomics data page. yrs 2023 · ICT Infrastructure / Electricity Access Rate — 51.5% access (50-74%).WB
- [https://tradingeconomics.com/uganda/access-to-electricity-urban-percent-of-urban-population-wb-data.html](https://tradingeconomics.com/uganda/access-to-electricity-urban-percent-of-urban-population-wb-data.html)
  - TradingEconomics data page. yrs 2023 · ICT Infrastructure / Urban-Rural Electrification Gap — 34pp gap (21-40pp).WB urban/rural est
- [https://ugnlis.mlhud.go.ug](https://ugnlis.mlhud.go.ug)
  - Uganda NLIS portal. yrs 2025 · Registries / Status — Uganda operates a National Land Information System (NLIS) and an e-land information portal (UgNLIS) providing digital access to land ownership/encumbrance data; evidence indicates 
- [https://ulii.org/akn/ug/act/2015/4](https://ulii.org/akn/ug/act/2015/4)
  - legal-instrument text (ULII) — cite-don't-absorb. yrs 2015,2019,2024,2025 · Digital Id / Banking/Financial Services Use; Digital Id / Data Sharing Rules — Uganda's general court system exercises judicial oversight over the national ID system, but no ID-specific judicial mechanisms exist. The High Court heard and dismissed (June 2025)
- [https://ulii.org/akn/ug/act/2019/9/eng@2019-05-03/source](https://ulii.org/akn/ug/act/2019/9/eng@2019-05-03/source)
  - legal-instrument text (ULII) — cite-don't-absorb. yrs 2019,2025 · Digital Id / Data Protection Act; Digital Id / Data Sharing Rules — Under the Data Protection and Privacy Act 2019, data subjects have the right to access, rectify, and request erasure of their personal data. NIRA's online self-registration portal 
- [https://www.africadatacentres.com/marketplace/roke-telkom](https://www.africadatacentres.com/marketplace/roke-telkom)
  - ADC marketplace listing. Roke Telkom Data Centre / Kampala — Located 7 Kulubya Close Bugolobi Kampala; Roke Telkom licensed 2006 by UCC; first telco to roll out fibre Uganda-Tanzania; also connectivity provider terminating fibre at Raxio UG1
- [https://www.airtel.africa/data-centers](https://www.airtel.africa/data-centers)
  - Airtel Africa DC page. Airtel NXtra Uganda (Edge/Planned) / Kampala — Nxtra lists Kampala as planned location in Africa rollout after Lagos and Nairobi; no Uganda groundbreaking confirmed as of early 2026; Airtel Uganda currently offers NXtra-branded
- [https://www.airtel.co.ug/airtel-nxtra](https://www.airtel.co.ug/airtel-nxtra)
  - Airtel Uganda product page. Airtel NXtra Uganda (Edge/Planned) / Kampala — Nxtra lists Kampala as planned location in Africa rollout after Lagos and Nairobi; no Uganda groundbreaking confirmed as of early 2026; Airtel Uganda currently offers NXtra-branded
- [https://www.bankofbaroda.ug/corporate-banking/funds-transfer/eft-rtgs](https://www.bankofbaroda.ug/corporate-banking/funds-transfer/eft-rtgs)
  - Bank of Baroda product page. yrs 2026 · Digital Pay / Business-to-Business (B2B) Payments — B2B digital payments are supported through bank EFT services used for bulk payments such as vendor/supplier payments across banks in Uganda, indicating availability of business dig
- [https://www.datacentermap.com/uganda/kampala/cfts-data-center](https://www.datacentermap.com/uganda/kampala/cfts-data-center)
  - DataCenterMap directory. CFTS Data Centre / Kampala — Located 89 Kira Rd Kampala; Tier 2; 390TB+ storage expandable to 6PB; on-premise POP with direct UIXP access; uses Aberdeen; Zyxel; Molex; Peplink equipment; domestic private compa
- [https://www.datacentermap.com/uganda/kampala/mtn-mbuya-data-centre](https://www.datacentermap.com/uganda/kampala/mtn-mbuya-data-centre)
  - DataCenterMap directory. yrs 2012 · MTN Mbuya Data Centre / Kampala — Located Plot 2310 Togo House 12 Port Bell Rd Kampala; MTN Uganda 6 DCs total 972 racks combined across Central/East/West/South regions; MTN Group HQ South Africa; 100Gbps backhaul;
- [https://www.datacentermap.com/uganda/kampala/mtn-mutundwe-data-center](https://www.datacentermap.com/uganda/kampala/mtn-mutundwe-data-center)
  - DataCenterMap directory. yrs 2012 · MTN Mutundwe Data Centre / Kampala — Located Paul Wasswa Rd Mutundwe Kampala; one of MTN Uganda 6 DCs; DCByte records operational since ~2012; GPS approximate for Mutundwe area; part of MTN Group pan-African 100+ DC n
- [https://www.dcbyte.com/facility/jinja-data-centre](https://www.dcbyte.com/facility/jinja-data-centre)
  - DC Byte market directory. yrs 2019 · NITA-U Jinja Data Centre / Jinja — Launched July 2019 by President Museveni; UGX 43bn (~USD 12M) investment; government disaster recovery and backup site for Kampala NDC; DCByte records Tier 3; Broadband Blueprint 2
- [https://www.dcbyte.com/facility/mutundwe-data-center](https://www.dcbyte.com/facility/mutundwe-data-center)
  - DC Byte market directory. yrs 2012 · MTN Mutundwe Data Centre / Kampala — Located Paul Wasswa Rd Mutundwe Kampala; one of MTN Uganda 6 DCs; DCByte records operational since ~2012; GPS approximate for Mutundwe area; part of MTN Group pan-African 100+ DC n
- [https://www.dlapiperdataprotection.com/index.html?t=law&c=UG](https://www.dlapiperdataprotection.com/index.html?t=law&c=UG)
  - DLA Piper DP reference tool. yrs 2021,2024 · Digital Pay / Data Breach Notification Requirements; Digital Pay / Data Privacy Legislation Coverage — Uganda’s Data Protection and Privacy Act/Regulations require breach notification: Section 23 of the Act and Regulation 33 impose a duty to notify the Personal Data Protection Offic
- [https://www.mtn.co.ug/businesssolutions/data-centre](https://www.mtn.co.ug/businesssolutions/data-centre)
  - MTN Uganda DC product page. yrs 2012 · MTN Mbuya Data Centre / Kampala; MTN Mutundwe Data Centre / Kampala — Located Plot 2310 Togo House 12 Port Bell Rd Kampala; MTN Uganda 6 DCs total 972 racks combined across Central/East/West/South regions; MTN Group HQ South Africa; 100Gbps backhaul;
- [https://www.nita.go.ug/services/e-government-services/digital-authentication-and-electronic-signatures-solutions-ugpass](https://www.nita.go.ug/services/e-government-services/digital-authentication-and-electronic-signatures-solutions-ugpass)
  - NITA-U service portal page. yrs 2024 · Digital Id / Digital Authentication Function; Digital Id / Government Portal Authentication — Uganda's NID supports digital authentication via the NIRA Third Party Interface (TPI), which allows real-time biometric (fingerprint) and demographic verification against the NIR. 
- [https://www.nita.go.ug/services/e-government-services/integration-service-ughub](https://www.nita.go.ug/services/e-government-services/integration-service-ughub)
  - NITA-U service portal page. yrs 2024 · Registries / Data exchange integration — Uganda’s national data integration platform UGHub is operational and NIRA is identified as a key participating entity in government data sharing; an ID4Africa deck describes UGHub 
- [https://www.nita.go.ug/services/technical-services/nita-u-national-data-centre](https://www.nita.go.ug/services/technical-services/nita-u-national-data-centre)
  - NITA-U service portal page. yrs 2015 · NITA-U National Data Centre (Kampala) / Kampala — Primary government/national DC; Palm Courts Plot 7A Rotary Avenue Kampala (HQ coordinates used); 150 Dual KVA modular UPS; N+1 72hr power; Precision AC cooling; 10+ petabytes stora
- [https://www.rapdp.org/sites/default/files/2021-12/About%20Uganda](https://www.rapdp.org/sites/default/files/2021-12/About%20Uganda)
  - RAPDP about-Uganda page — reference. yrs 2019 · Digital Id / Data Protection Authority Oversight — Uganda's Data Protection and Privacy Act 2019 establishes the Personal Data Protection Office (PDPO) under NITA-U, headed by a National Personal Data Protection Director. The PDPO 
- [https://www.raxiogroup.com/data-centres/uganda](https://www.raxiogroup.com/data-centres/uganda)
  - Raxio country DC page — standing resource. yrs 2021 · Raxio Uganda UG1 / Kampala — Uganda first Tier III carrier-neutral DC; Namanve Industrial Park Kampala-Jinja Highway 15km from CBD; parent HQ Dubai (UAE); hosts UIXP peering LAN on-site since 2021; 1000 sqm wh
- [https://www.raxiogroup.com/wp-content/uploads/2025/04/RAX016-4-Data-Sheet-SITE-UG1-v2.pdf](https://www.raxiogroup.com/wp-content/uploads/2025/04/RAX016-4-Data-Sheet-SITE-UG1-v2.pdf)
  - Raxio country DC page — standing resource. yrs 2021 · Raxio Uganda UG1 / Kampala — Uganda first Tier III carrier-neutral DC; Namanve Industrial Park Kampala-Jinja Highway 15km from CBD; parent HQ Dubai (UAE); hosts UIXP peering LAN on-site since 2021; 1000 sqm wh
- [https://www.simbanet.net/iot-solutions](https://www.simbanet.net/iot-solutions)
  - Simbanet product page. Simbanet Uganda DC (Edge) / Kampala — Simbanet (U) Ltd founded 2011; acquired by YAS (AXIAN Telecom subsidiary) via $63M Wananchi Group purchase November 2025; SMART DC product offering referenced on website; limited p
- [https://www.theglobaleconomy.com/Uganda/Access_to_electricity](https://www.theglobaleconomy.com/Uganda/Access_to_electricity)
  - TheGlobalEconomy data page. yrs 2021 · ICT Infrastructure / Renewable Energy Share of Generation — ~100% hydro.IEA
- [https://www.theglobaleconomy.com/Uganda/Internet_bandwidth](https://www.theglobaleconomy.com/Uganda/Internet_bandwidth)
  - TheGlobalEconomy data page. yrs 2016 · ICT Infrastructure / International Internet Bandwidth — 4kbit/s per user.ITU
- [https://www.theglobaleconomy.com/Uganda/Internet_users](https://www.theglobaleconomy.com/Uganda/Internet_users)
  - TheGlobalEconomy data page. yrs 2023 · ICT Infrastructure / Internet Usage Rate; ICT Infrastructure / Mobile Phone Penetration — 15.3% individuals using internet.World Bank
- [https://www.ubos.org/uganda-profile](https://www.ubos.org/uganda-profile)
  - UBOS stats portal profile. yrs 2026 · Registries / Uptake — NIRA reported the national register has over 35 million enrollments in Feb 2026; relative to Uganda’s total population (~46M in 2024 census and higher by 2026), this implies roughl
- [https://www.wipo.int/edocs/gii-ranking/2024/ug.pdf](https://www.wipo.int/edocs/gii-ranking/2024/ug.pdf)
  - WIPO GII ranking reference. yrs 2024 · ICT Infrastructure / Global Innovation Index Ranking — Rank 121.WIPO

## Excluded — pre-2024 (by URL date)  (9)

- [https://cipesa.org/2023/10/ugandas-digital-id-system-hinders-citizens-access-to-social-services](https://cipesa.org/2023/10/ugandas-digital-id-system-hinders-citizens-access-to-social-services)
  - CIPESA Uganda digital-ID analysis [URL-date 2023]. yrs 2015,2022,2024,2025,2026 · Digital Id / Banking/Financial Services Use; Digital Id / Biometric Data Collection — Uganda's general court system exercises judicial oversight over the national ID system, but no ID-specific judicial mechanisms exist. The High Court heard and dismissed (June 2025)
- [https://kcl.co.ug/wp-content/uploads/2022/10/Uganda-National-Broadband-Baseline-Survey-Infrastructure-Blueprint-_-April-2022-compressed.pdf](https://kcl.co.ug/wp-content/uploads/2022/10/Uganda-National-Broadband-Baseline-Survey-Infrastructure-Blueprint-_-April-2022-compressed.pdf)
  - broadband baseline survey PDF — 2022, off-core [URL-date 2022]. yrs 2019 · NITA-U Jinja Data Centre / Jinja — Launched July 2019 by President Museveni; UGX 43bn (~USD 12M) investment; government disaster recovery and backup site for Kampala NDC; DCByte records Tier 3; Broadband Blueprint 2
- [https://mglsd.go.ug/launch-of-the-national-single-registry](https://mglsd.go.ug/launch-of-the-national-single-registry)
  - MGLSD Single Registry launch 2021 — pre-2024. yrs 2021 · Registries / Status — Uganda has a digital social protection registry called the National Single Registry (NSR), commissioned on 4 Feb 2021, consolidating beneficiary information across programs and int
- [https://ventureburn.com/2020/12/uganda-data-centre-receives-uptime-institute-tier-iii-certification](https://ventureburn.com/2020/12/uganda-data-centre-receives-uptime-institute-tier-iii-certification)
  - Ventureburn 2020 — pre-2024. yrs 2021 · Raxio Uganda UG1 / Kampala — Uganda first Tier III carrier-neutral DC; Namanve Industrial Park Kampala-Jinja Highway 15km from CBD; parent HQ Dubai (UAE); hosts UIXP peering LAN on-site since 2021; 1000 sqm wh
- [https://webfoundation.org/2018/09/new-data-from-a4ai-looks-at-the-price-of-1gb-of-mobile-data-across-60-countries](https://webfoundation.org/2018/09/new-data-from-a4ai-looks-at-the-price-of-1gb-of-mobile-data-across-60-countries)
  - Web Foundation A4AI regional [URL-date 2018]. yrs 2018 · ICT Infrastructure / Mobile Data Affordability — ~8.76% GNI for 1GB (Africa avg, Uganda similar).A4AI
- [https://www.afrobarometer.org/wp-content/uploads/2022/04/ad515-barriers_to_e-learning_in_uganda-afrobarometer_dispatch-10april22.pdf](https://www.afrobarometer.org/wp-content/uploads/2022/04/ad515-barriers_to_e-learning_in_uganda-afrobarometer_dispatch-10april22.pdf)
  - Afrobarometer dispatch — check date [URL-date 2022]. School — Rural primary schools in Uganda predominantly use paper-based registers for recording administrative data, attendance, and learning outcomes at the point of service. Head teachers 
- [https://www.developmentpathways.co.uk/wp-content/uploads/2022/04/Ugandas-National-Single-Registry_v3-compressed.pdf](https://www.developmentpathways.co.uk/wp-content/uploads/2022/04/Ugandas-National-Single-Registry_v3-compressed.pdf)
  - Development Pathways Uganda Single Registry PDF [URL-date 2022]. yrs 2021,2022 · Registries / Data exchange integration; Registries / National Id integration — Civil registration is institutionally integrated with national ID via NIRA (same authority), and the NSR social protection system uses an API link to NIRA for verification; however
- [https://www.education.go.ug/wp-content/uploads/2019/08/List-of-Recognized-Universities-Other-Tertiary-Institutions-2016.pdf](https://www.education.go.ug/wp-content/uploads/2019/08/List-of-Recognized-Universities-Other-Tertiary-Institutions-2016.pdf)
  - recognized-universities list — off-core [URL-date 2019]. yrs 2016 · ICT Infrastructure / Tertiary ICT/STEM Education — Multiple quality inst.MoES
- <https://www.educationcannotwait.org/sites/default/files/2022-03/Strengthening%20Education%20Management%20Information%20Systems%20(EMIS)%20and%20Data%20for%20Increased%20Resilience%20to%20Crisis_%20country%20case%20study_%20Uganda.pdf>
  - ECW EMIS case study — off-core school [URL-date 2022]. School — Rural primary schools in Uganda predominantly use paper-based registers for recording administrative data, attendance, and learning outcomes at the point of service. Head teachers 

---

## Phase 2 — A-web fetch run summary (2026-07-17)

**24 clips placed** in `new-queue/` · **12 skipped** (3 pre-2024, 1 pdf→Bill, 4 no-body, 4 fetch-fail).

- **Skipped (pre-2024):** citizenshiprightsafrica id4d-diagnostic (WB ID4D, **2019-01-05**); citizenshiprightsafrica cross-border-travel (New Vision reprint, **2017-01-11**); raxiogroup UG1 launch PR (**2021-05-25**).
- **Skipped (pdf→Bill):** nira.go.ug mass-enrolment PRESS-STATEMENT (Oct 2024) — A-PDF, Bill to save the binary.
- **Skipped (no-body / JS-shell / govt-empty — flagged for manual capture):** **pdpo.go.ug** (PDPO on data protection in the health sector) and **parliamentwatch.ug** (digital addresses / plus-codes replacing "tree-based directions") both returned only title/loader chrome — substantive, worth a manual grab; centetech Masaka DC (nav-only, covered by pctechmag); newvision mobile-money (garbled blob + sponsored + likely pre-2024).
- **Skipped (fetch-fail, retried once):** liquid.tech Azure-Stack (same event as the kept DCD clip, 2024-08-12); DCD *"plans data center in Masaka"* (covered by pctechmag ×2); monitor *"why Uganda is offline"* (paywall/timeout — candidate for later retry).
- **PRIORITY FLAG:** **uniph.go.ug Data-4-Health CRVS** project page skipped under the strict pre-2024 rule (page stamp 2022-02-25) but is a **living profile** current to **Apr 2026** (birth reg 32%, death reg ~2%, 30 Apr 2026 CRVS TWG under NIRA+MoH+UBOS) → recommend capturing as an **entity/project profile**, not losing it.
- **Date corrections:** ecofin `1509-48701` = **2025-09-15** (on-page dateline); DCD nxtra = **2024-12-13** and DCD liquid-azure = **2024-08-12** (both DCD headers showed bogus 2026-07-14); gltn CCO blog undated → `published: 2024` (year precision).
- **Merge-clusters (flag at ingest):** (a) **Karuma/Aeonian AI supercomputer DC** — businessinsider (2025-09-11) + ecofin Synectics/Schneider (2025-09-15) + watchdoguganda (2026-01-28) = ONE project (Aeonian, Karuma HPP, NVIDIA Blackwell, ~$1.2bn); kenyanwallstreet (bucket B) is the same story. (b) **Centenary Group Masaka Tier-III DC** — pctechmag ×2 (Aug + Oct 2025) = one facility; treat the Oct clip (Q1-2026 launch) as the update to the Aug clip (late-2025 target). (c) **URA TIN→NIN shift** — nilepost (2025-11-12) + softpower filing-season (2025-11-11) = one #LearnTaxUg announcement, near-duplicate → keep the fuller. (d) **>28m records migrated** — biometricupdate `202602` (2026-02-11) is the likely **PRIMARY SOURCE for the hub's 2026-05-22 migration fact** → flag as source-for-held.
