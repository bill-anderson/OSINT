# COD — DR Congo · dataset→wiki intake review

*Run 2026-07-15. Source: `external-datasets/` (africa-dpi, africa-data-centres, african-rural-digitalisation) filtered to COD. Assessed against `wiki/places/COD.md` as the complete record. Phase-1 assessment + Phase-2 A-web fetch in one pass.*

## Counts

- Total distinct source URLs: **77**
- Already held (hub): **1**
- Excluded (pre-2024): **13**
- New & in-window: **63**
  - A-web: **25** · A-PDF: **3** · B: **12** · C: **6** · D: **17**

Dataset rows matched: africa-dpi 147, africa-data-centres 4, african-rural-digitalisation 4.

**Hub note:** the COD hub is heavily developed (RDC-PASS / Trident e-KYC PPP; the $10.4bn 2026–2030 digital blueprint; Q1-2026 digital-government + interbank-payment platforms; Onafriq / Visa Pay / stablecoin pilot; PayServices $400m suit; GSMA DRC report; Starlink). Only **1 dataset URL matches a source the hub cites** — Biometric Update's 'DRC envisages a functional digital government platform by March' (held). The rest are new, but many A-web items are **multi-outlet coverage of events the hub already frames** (RDC-PASS launch, the Trident deal, the digital plan) — kept as A-web and flagged as clusters for merge at ingest, not filed as parallel sources.

## A-web · ingest (non-PDF) — fetched this run  (25)

- [https://7sur7.cd/2024/08/07/rdc-le-gouvernement-appele-operationnaliser-lautorite-de-protection-des-donnees](https://7sur7.cd/2024/08/07/rdc-le-gouvernement-appele-operationnaliser-lautorite-de-protection-des-donnees)
  - 7sur7.cd (Congolese press): government urged to operationalise the data-protection authority under the Digital Code (Aug 2024); country-specific, on-topic.
  - _context:_ dpi · yr 2024 · Digital Id / Data Protection Authority Oversight
- [https://bankable.africa/en/digital/1010-1806-drc-launches-1-5-billion-digital-plan-to-become-regional-tech-hub-by-2030](https://bankable.africa/en/digital/1010-1806-drc-launches-1-5-billion-digital-plan-to-become-regional-tech-hub-by-2030)
  - Bankable.africa on DRC's $1.5bn digital plan (2025); country-specific, on-topic (digital plan).
  - _context:_ dpi · yr 2025 · Data Exchange / AI/Analytics Capabilities; Data Exchange / Civil Registration & Vital Statistics Integration
- [https://bankable.africa/en/digital/2601-2298-drcpass-digital-id-plan-priced-at-97-1m-financing-remains-unclear](https://bankable.africa/en/digital/2601-2298-drcpass-digital-id-plan-priced-at-97-1m-financing-remains-unclear)
  - Bankable.africa on DRCPass priced at $97.1m, financing unclear (2025); country-specific, on-topic.
  - _context:_ dpi · yr 2025 · Digital Id / Maintenance; Digital Id / Ministry of Finance Oversight
- [https://bankable.africa/en/news/1108-1544-drc-may-partner-with-ghanaian-margins-group-for-national-id-project](https://bankable.africa/en/news/1108-1544-drc-may-partner-with-ghanaian-margins-group-for-national-id-project)
  - Bankable.africa on DRC–Margins Group (Ghana) national-ID talks (2024/25); country-specific, on-topic.
  - _context:_ dpi · yr 2024,2025 · Digital Id / Cost of Credential; Digital Id / Digital ID System Exists
- [https://blogs.worldbank.org/en/nasikiliza/in-drc-public-administration-enters-a-new-era-with-a-digital-civil-servant-registry](https://blogs.worldbank.org/en/nasikiliza/in-drc-public-administration-enters-a-new-era-with-a-digital-civil-servant-registry)
  - World Bank blog on DRC's new digital civil-servant registry (2025); country-specific, on-topic (govtech).
  - _context:_ dpi · yr 2025 · Digital Id / Electronic Database; Digital Id / Healthcare Access Use
- [https://cioafrica.co/drcs-first-tier-iii-certified-data-centre](https://cioafrica.co/drcs-first-tier-iii-certified-data-centre)
  - CIO Africa on DRC's first Tier-III certified data centre (2024); country-specific, on-topic (infra.store).
  - _context:_ dc · yr 2024 · OADC Texaf Digital Kinshasa / Kinshasa
- [https://citizenshiprightsafrica.org/controversy-trails-big-money-biometric-id-card-contract-in-dr-congo](https://citizenshiprightsafrica.org/controversy-trails-big-money-biometric-id-card-contract-in-dr-congo)
  - Analysis of the controversy over DRC's big-money biometric ID contract (2025); country-specific, on-topic.
  - _context:_ dpi · yr 2025 · Digital Id / Ministry of Finance Oversight
- [https://communicationsafrica.com/internet/drcs-largest-data-centre-opens](https://communicationsafrica.com/internet/drcs-largest-data-centre-opens)
  - Communications Africa on DRC's largest data centre opening (Raxio, 2024); country-specific, on-topic.
  - _context:_ dc · yr 2024 · Raxio DRC1 / Kinshasa
- [https://datareportal.com/reports/digital-2026-democratic-republic-of-the-congo](https://datareportal.com/reports/digital-2026-democratic-republic-of-the-congo)
  - DataReportal Digital 2026 DR Congo; dated reference report, in-window; standard A-web.
  - _context:_ dpi · yr 2025 · ICT Infrastructure / Internet Usage Rate; ICT Infrastructure / Mobile Phone Penetration
- [https://iafrica.com/drc-unveils-8-7-billion-digital-plan-to-expand-connectivity-and-ai-skills-by-2030](https://iafrica.com/drc-unveils-8-7-billion-digital-plan-to-expand-connectivity-and-ai-skills-by-2030)
  - iAfrica on DRC's $8.7bn digital plan / AI skills by 2030 (2025/26); country-specific, on-topic.
  - _context:_ dpi · yr 2025,2026 · Data Exchange / Civil Registration & Vital Statistics Integration; Data Exchange / Digital ID Integration
- [https://idtechwire.com/congo-cancels-1-2b-biometric-id-contract](https://idtechwire.com/congo-cancels-1-2b-biometric-id-contract)
  - IDTechWire: DRC cancels $1.2bn biometric ID contract (2025); country-specific, on-topic (governance).
  - _context:_ dpi · yr 2025 · Digital Id / Digital ID System Exists; Digital Id / Ministry of Finance Oversight
- [https://idtechwire.com/drc-launches-national-digital-id-system-in-major-tech-transformation-push](https://idtechwire.com/drc-launches-national-digital-id-system-in-major-tech-transformation-push)
  - IDTechWire on RDC-PASS national digital-ID launch (2025); country-specific — multi-outlet RDC-PASS launch, flag overlap.
  - _context:_ dpi · yr 2025 · Digital Id / Biometric Data Collection; Digital Id / Digital Authentication Function
- [https://idtechwire.com/trident-signs-exclusive-deal-to-build-drcpass-digital-id-system-for-democratic-republic-of-congo](https://idtechwire.com/trident-signs-exclusive-deal-to-build-drcpass-digital-id-system-for-democratic-republic-of-congo)
  - IDTechWire on Trident's exclusive DRCPass deal (2025); country-specific — Trident cluster, flag overlap.
  - _context:_ dpi · yr 2025 · Digital Id / Biometric Data Collection; Digital Id / Digital ID System Exists
- [https://reg-tech.co/2025/05/06/drc-e-government-initiative-blockchain](https://reg-tech.co/2025/05/06/drc-e-government-initiative-blockchain)
  - reg-tech.co on DRC's blockchain e-government / DRC Pass (May 2025); country-specific, on-topic.
  - _context:_ dpi · yr 2025 · Data Exchange / Data Sovereignty Provisions; Data Exchange / Digital ID Integration
- [https://visa-inc.africa-newsroom.com/press/visa-pay-launches-to-expand-access-to-digital-payments-across-the-democratic-republic-of-the-congo-drc?lang=en](https://visa-inc.africa-newsroom.com/press/visa-pay-launches-to-expand-access-to-digital-payments-across-the-democratic-republic-of-the-congo-drc?lang=en)
  - Visa press release: Visa Pay launches in DRC; primary announcement — hub mentions Visa Pay via aggregators, this is the primary, flag overlap.
  - _context:_ dpi · yr 2026 · Digital Pay / Person-to-Business (P2B) Merchant Payments
- [https://www.biometricupdate.com/202502/dr-congo-approaches-national-id-rollout-with-trident-implementation-agreement](https://www.biometricupdate.com/202502/dr-congo-approaches-national-id-rollout-with-trident-implementation-agreement)
  - Biometric Update on DRC–Trident implementation agreement (Feb 2025); country-specific — Trident cluster, flag.
  - _context:_ dpi · yr 2023 · Digital Id / Digital ID Specific Regulation
- [https://www.biometricupdate.com/202506/drcpass-digital-id-launches-as-dr-congo-finalizes-contract-with-trident](https://www.biometricupdate.com/202506/drcpass-digital-id-launches-as-dr-congo-finalizes-contract-with-trident)
  - Biometric Update: DRCPass launches as DRC finalizes Trident contract (Jun 2025); country-specific — RDC-PASS cluster, flag.
  - _context:_ dpi · yr 2025 · Digital Id / Digital Authentication Function; Digital Id / Enrollment Eligibility Age
- [https://www.biometricupdate.com/202508/drc-digital-id-phased-deployment-underway-following-contract-do-over](https://www.biometricupdate.com/202508/drc-digital-id-phased-deployment-underway-following-contract-do-over)
  - Biometric Update: DRC digital-ID phased deployment after contract do-over (Aug 2025); country-specific — RDC-PASS cluster, flag.
  - _context:_ dpi · yr 2025 · Digital Id / Biometric Data Collection; Digital Id / Digital ID System Exists
- [https://www.ecofinagency.com/news-digital/0902-52708-drc-steps-up-talks-with-foreign-firms-to-develop-data-centers-and-digital-infrastructure](https://www.ecofinagency.com/news-digital/0902-52708-drc-steps-up-talks-with-foreign-firms-to-develop-data-centers-and-digital-infrastructure)
  - Ecofin: DRC steps up talks with foreign firms on data centres (Ecofin id 52708 => recent/2025-26 despite dataset Year 2023); country-specific — Phase 2 confirms date.
  - _context:_ dpi · yr 2023 · Data Exchange / Agriculture System Integration; Data Exchange / Universal Accessibility
- [https://www.ecofinagency.com/news-digital/1210-49482-drc-launches-1-5b-national-plan-to-build-a-digital-and-ai-economy](https://www.ecofinagency.com/news-digital/1210-49482-drc-launches-1-5b-national-plan-to-build-a-digital-and-ai-economy)
  - Ecofin: DRC launches $1.5bn national plan for a digital & AI economy (2025); country-specific, on-topic.
  - _context:_ dpi · yr 2025 · Data Exchange / AI/Analytics Capabilities; Data Exchange / Strategic Framework
- [https://www.globenewswire.com/news-release/2025/06/25/3105136/0/en/Trident-and-Democratic-Republic-of-Congo-Sign-Final-Digital-Identity-Partnership-and-Launch-Nationwide-DRCPass-Deployment.html](https://www.globenewswire.com/news-release/2025/06/25/3105136/0/en/Trident-and-Democratic-Republic-of-Congo-Sign-Final-Digital-Identity-Partnership-and-Launch-Nationwide-DRCPass-Deployment.html)
  - GlobeNewswire (Jun 2025): Trident and DRC sign final digital-ID partnership, launch DRCPass; primary press release — Trident/RDC-PASS cluster, flag.
  - _context:_ dpi · yr 2025 · Digital Id / Digital Authentication Function; Digital Id / Government Portal Authentication
- [https://www.imf.org/en/news/articles/2025/06/06/pr-25185-democratic-republic-of-congo-dem-repub-of-congo-implements-the-e-gdds](https://www.imf.org/en/news/articles/2025/06/06/pr-25185-democratic-republic-of-congo-dem-repub-of-congo-implements-the-e-gdds)
  - IMF press release (Jun 2025): DRC implements e-GDDS national data page; primary, on-topic (data transparency).
  - _context:_ dpi · yr 2024,2025 · Data Exchange / National Planning & Statistics Integration; Data Exchange / Public Transparency
- [https://www.ntu.edu.sg/cas/news-events/news/detail/drc-congo-gives-singapore-firm-exclusive-rights-to-roll-out-digital-id-system](https://www.ntu.edu.sg/cas/news-events/news/detail/drc-congo-gives-singapore-firm-exclusive-rights-to-roll-out-digital-id-system)
  - NTU (Singapore) news on DRC granting Trident exclusive digital-ID rights (2025); country-specific — Trident cluster, flag.
  - _context:_ dpi · yr 2025 · Digital Id / Data Sharing Rules; Digital Id / Security Reviews
- [https://www.trade.gov/country-commercial-guides/democratic-republic-congo-ecommerce](https://www.trade.gov/country-commercial-guides/democratic-republic-congo-ecommerce)
  - US trade.gov DRC country commercial guide (e-commerce, 2026); dated reference, standard A-web.
  - _context:_ dpi · yr 2026 · Digital Pay / Person-to-Business (P2B) Merchant Payments; Digital Pay / Person-to-Person (P2P) Payments
- [https://www.wearetech.africa/en/fils-uk/news/tech/dr-congo-signs-agreement-to-deploy-national-id-system](https://www.wearetech.africa/en/fils-uk/news/tech/dr-congo-signs-agreement-to-deploy-national-id-system)
  - WeAreTech: DRC signs agreement to deploy national ID system (2025); country-specific — RDC-PASS/Trident cluster, flag.
  - _context:_ dpi · yr 2025 · Digital Id / Social Services Use

## A-PDF · ingest (PDF) — Bill handles by hand  (3)

- [https://apai-crvs.uneca.org/sites/default/files/resourcefiles/CRVS_CongoDRSnapshot_e.pdf](https://apai-crvs.uneca.org/sites/default/files/resourcefiles/CRVS_CongoDRSnapshot_e.pdf)
  - UNECA APAI-CRVS DR Congo snapshot PDF (to 2025); dated CRVS reference, PDF artefact for Bill.
  - _context:_ dpi · yr 2016,2018,2023,2025 · Digital Id / Civil Registration Integration; Digital Id / Electronic Database
- [https://documents1.worldbank.org/curated/en/099720003142231831/pdf/P165747067f7380050ab5b07e59f78c7642.pdf](https://documents1.worldbank.org/curated/en/099720003142231831/pdf/P165747067f7380050ab5b07e59f78c7642.pdf)
  - World Bank PDF (broadband/smartphone data, 2024); primary reference, PDF artefact for Bill.
  - _context:_ dpi · yr 2024 · ICT Infrastructure / Smartphone Adoption
- [https://www.texaf.be/sites/default/files/downloads/OADC%20Texaf%20Kinshasa%20ST%20Digital%20Press%20Release.pdf](https://www.texaf.be/sites/default/files/downloads/OADC%20Texaf%20Kinshasa%20ST%20Digital%20Press%20Release.pdf)
  - Texaf press release PDF: OADC Texaf Digital Kinshasa data centre (2024); primary, PDF artefact for Bill.
  - _context:_ dc · yr 2024 · OADC Texaf Digital Kinshasa / Kinshasa

## B · check first  (12)

- [https://blogs.worldbank.org/en/digital-development/the-importance-of-id-access-in-three-charts--insights-from-sub-s](https://blogs.worldbank.org/en/digital-development/the-importance-of-id-access-in-three-charts--insights-from-sub-s)
  - World Bank blog on ID access in Sub-Saharan Africa; SSA-level, not DRC-specific — check first (2024).
  - _context:_ dpi · yr 2024 · Digital Id / Population Coverage
- [https://droitnumerique.cd/autorite-de-protection-des-donnees](https://droitnumerique.cd/autorite-de-protection-des-donnees)
  - droitnumerique.cd page on the DRC data-protection authority; standing legal-info resource, verify status — check first.
  - _context:_ dpi · yr 2023,2024,2025 · Digital Id / Data Protection Act; Digital Id / Data Protection Authority Oversight
- [https://sovos.com/regulatory-updates/vat/democratic-republic-of-congo-first-phase-of-e-invoicing-launched](https://sovos.com/regulatory-updates/vat/democratic-republic-of-congo-first-phase-of-e-invoicing-launched)
  - Sovos regulatory update on DRC e-invoicing phase 1 (2024); vendor-adjacent factual note — check first.
  - _context:_ dpi · yr 2024 · Registries / Status
- [https://w.media/google-launches-first-cloud-region-in-africa](https://w.media/google-launches-first-cloud-region-in-africa)
  - w.media on Google's first Africa cloud region (Johannesburg, 2024); not DRC-specific — check first.
  - _context:_ dpi · yr 2024 · ICT Infrastructure / Cloud Services Availability
- [https://we.hse.ru/en/irs/cas/passcd](https://we.hse.ru/en/irs/cas/passcd)
  - HSE country-assessment resource page for DRC (to 2025); aggregated standing resource — check first.
  - _context:_ dpi · yr 2021,2022,2023,2024,2025 · Data Exchange / Business Registration & Licensing Integration; Data Exchange / Driver Licensing Integration
- [https://www.ecofinagency.com/telecom/1709-45902-itu-names-7-african-nations-among-top-cybersecurity-models](https://www.ecofinagency.com/telecom/1709-45902-itu-names-7-african-nations-among-top-cybersecurity-models)
  - Ecofin/ITU: 7 African nations named cybersecurity models (2024); continental, DRC not featured — check first.
  - _context:_ dpi · yr 2024 · ICT Infrastructure / National Cybersecurity Readiness
- [https://www.ecoi.net/en/document/2092753.html](https://www.ecoi.net/en/document/2092753.html)
  - ecoi.net country-of-origin reference doc on DRC national ID (to 2025); reference aggregator — check first.
  - _context:_ dpi · yr 2023,2025 · Digital Id / Enrollment Eligibility Age; Digital Id / Legal Proof Status
- [https://www.gogla.org/wp-content/uploads/2024/11/DRC-Country-Brief.pdf](https://www.gogla.org/wp-content/uploads/2024/11/DRC-Country-Brief.pdf)
  - GOGLA DRC country brief PDF (Nov 2024); off-grid energy, tangential — check first.
  - _context:_ dpi · yr 2024 · ICT Infrastructure / Electricity Access Rate; ICT Infrastructure / Off-Grid and Distributed Energy Policy
- [https://www.helpachild.org/actueel/a-good-start-in-life-birth-registration-in-drc](https://www.helpachild.org/actueel/a-good-start-in-life-birth-registration-in-drc)
  - Help a Child NGO story on birth registration in DRC (2023/24); advocacy source — check first.
  - _context:_ dpi · yr 2023,2024 · Digital Id / Civil Registration Integration; Digital Id / Population Coverage
- [https://www.techinafrica.com/dr-congo-8b-digital-infrastructure-plan-opportunities-telecoms-fintech-tech-builders](https://www.techinafrica.com/dr-congo-8b-digital-infrastructure-plan-opportunities-telecoms-fintech-tech-builders)
  - TechInAfrica on DRC's $8bn digital-infrastructure plan (2025); lower-tier outlet, duplicates well-held digital-plan story — check first.
  - _context:_ dpi · yr 2025 · Data Exchange / Data Sovereignty Provisions; Data Exchange / Digital ID Integration
- [https://www.techinafrica.com/dr-congo-8b-digital-plan-telecom-infrastructure-data-centers-benefits](https://www.techinafrica.com/dr-congo-8b-digital-plan-telecom-infrastructure-data-centers-benefits)
  - TechInAfrica on DRC's $8bn digital plan (2025/26); lower-tier outlet, duplicates well-held digital-plan story — check first.
  - _context:_ dpi · yr 2023,2025,2026 · Data Exchange / Digital Payments Integration; Data Exchange / Implementation Roadmap
- [https://www.wvi.org/stories/congo/dr-congo-2400-children-now-registered-civil-registry-thanks-action-world-vision](https://www.wvi.org/stories/congo/dr-congo-2400-children-now-registered-civil-registry-thanks-action-world-vision)
  - World Vision story: 2,400 children registered in DRC civil registry (2025); NGO advocacy — check first.
  - _context:_ dpi · yr 2025 · Digital Id / Cost of Credential

## C · lead only (do not cite)  (6)

- [https://afrisetup.com/drc/services/company-registration-in-the-democratic-republic-of-congo](https://afrisetup.com/drc/services/company-registration-in-the-democratic-republic-of-congo)
  - AfriSetup corporate-services page on DRC company registration (GUCE); commercial agent, tertiary.
  - _context:_ dpi · yr 2013 · Registries / Status
- [https://blog.voveid.com/aml-compliance-in-the-democratic-republic-of-congo-2025-guide-for-fintechs-and-startups](https://blog.voveid.com/aml-compliance-in-the-democratic-republic-of-congo-2025-guide-for-fintechs-and-startups)
  - VoveID vendor AML/KYC guide; tertiary/marketing, lead only.
  - _context:_ dpi · yr 2023,2024,2025 · Digital Id / Banking/Financial Services Use; Digital Id / KYC Enablement
- [https://uqudo.com/dr-congo-kyc-aml-services](https://uqudo.com/dr-congo-kyc-aml-services)
  - Uqudo KYC/AML vendor country page; tertiary/marketing, lead only.
  - _context:_ dpi · yr 2025 · Digital Id / Banking/Financial Services Use; Digital Id / SIM Card Registration Use
- [https://usesmileid.com/countries/the-democratic-republic-of-congo](https://usesmileid.com/countries/the-democratic-republic-of-congo)
  - Smile ID vendor country page; tertiary/marketing, lead only.
  - _context:_ dpi · yr 2023,2025 · Digital Id / Banking/Financial Services Use; Digital Id / KYC Enablement
- [https://www.megamatcher.online/case-studies/dr-congo-voter-registration-project](https://www.megamatcher.online/case-studies/dr-congo-voter-registration-project)
  - MegaMatcher (Neurotechnology) vendor case study on 2018 DRC voter registration; vendor marketing + old, lead only.
  - _context:_ dpi · yr 2018 · Registries / Status; Registries / Uptake
- [https://www.worldremit.com/en/congo-drc/mobile-money](https://www.worldremit.com/en/congo-drc/mobile-money)
  - WorldRemit DRC mobile-money service page; commercial/vendor, lead only.
  - _context:_ dpi · yr 2024 · Digital Pay / Cross-Border Payment Functionality

## D · resource / entity (not a dated source)  (17)

- [https://datacenterplatform.com/data-centers/united-s-a](https://datacenterplatform.com/data-centers/united-s-a)
  - DataCenterPlatform listing (UNITED Kinshasa); standing directory, not a dated source.
  - _context:_ dc · UNITED Kinshasa / Kinshasa
- [https://dig.watch/resource/democratic-republic-of-the-congos-digital-code](https://dig.watch/resource/democratic-republic-of-the-congos-digital-code)
  - dig.watch resource page for DRC Digital Code N°23-010; standing legal-instrument reference, cutoff-exempt.
  - _context:_ dpi · yr 2023 · Digital Id / Data Protection Act; Digital Id / Digital ID Specific Regulation
- [https://drclicences.cami.cd](https://drclicences.cami.cd)
  - CAMI (Cadastre Minier) mining-licences portal; standing portal, cutoff-exempt.
  - _context:_ dpi · yr 2022 · Registries / Status
- [https://genderdata.worldbank.org/en/indicator/sp-reg-brth-zs](https://genderdata.worldbank.org/en/indicator/sp-reg-brth-zs)
  - World Bank Gender Data birth-registration indicator; standing data registry, cutoff-exempt.
  - _context:_ dpi · yr 2018 · Registries / Uptake
- [https://github.com/topics/drc](https://github.com/topics/drc)
  - GitHub topic page for DRC; directory/data, not a dated source.
  - _context:_ dpi · ICT Infrastructure / Developer and Tech Community
- [https://inflect.com/building/769-avenue-de-lequateur-kinshasa/global-broadband-solution/datacenter/global-broadband-solution-gbs-datacenter](https://inflect.com/building/769-avenue-de-lequateur-kinshasa/global-broadband-solution/datacenter/global-broadband-solution-gbs-datacenter)
  - Inflect data-centre building listing (GBS DC Kinshasa); standing directory, not a dated source.
  - _context:_ dc · GBSDC1 (Global Broadband Solution DC) / Kinshasa
- [https://secure.ssa.gov/poms.nsf/lnx/0200312098](https://secure.ssa.gov/poms.nsf/lnx/0200312098)
  - US SSA POMS reference entry on DRC civil documents; standing reference manual, cutoff-exempt.
  - _context:_ dpi · yr 2025 · Digital Id / Electronic Database
- [https://www.broadbandcommission.org/wp-content/uploads/dlm_uploads/2025/09/The-State-of-Broadband-in-Africa.pdf](https://www.broadbandcommission.org/wp-content/uploads/dlm_uploads/2025/09/The-State-of-Broadband-in-Africa.pdf)
  - Broadband Commission 'State of Broadband in Africa' 2025 flagship PDF; multi-country reference study — cite as resource/instrument, don't absorb.
  - _context:_ dpi · yr 2024 · ICT Infrastructure / 4G/LTE Population Coverage
- [https://www.datacentermap.com/dr-congo/kinshasa](https://www.datacentermap.com/dr-congo/kinshasa)
  - DataCenterMap DRC/Kinshasa directory; standing registry, cutoff-exempt.
  - _context:_ dc · yr 2024 · Raxio DRC1 / Kinshasa
- [https://www.datacentermap.com/dr-congo/kinshasa/gbsdc1](https://www.datacentermap.com/dr-congo/kinshasa/gbsdc1)
  - DataCenterMap listing (GBSDC1); standing registry, cutoff-exempt.
  - _context:_ dc · GBSDC1 (Global Broadband Solution DC) / Kinshasa
- [https://www.datacentermap.com/dr-congo/kinshasa/united-kinshasa](https://www.datacentermap.com/dr-congo/kinshasa/united-kinshasa)
  - DataCenterMap listing (UNITED Kinshasa); standing registry, cutoff-exempt.
  - _context:_ dc · UNITED Kinshasa / Kinshasa
- [https://www.dlapiperdataprotection.com/index.html?t=law&c=CD](https://www.dlapiperdataprotection.com/index.html?t=law&c=CD)
  - DLA Piper Data Protection Laws of the World (DRC); standing legal-reference tool, cutoff-exempt.
  - _context:_ dpi · yr 2023,2024,2025 · Digital Id / Biometric Data Collection; Digital Id / Data Protection Act
- [https://www.gsma.com/solutions-and-impact/connectivity-for-good/mobile-for-development/region/east-asia-and-pacific/digital-gender-gap](https://www.gsma.com/solutions-and-impact/connectivity-for-good/mobile-for-development/region/east-asia-and-pacific/digital-gender-gap)
  - GSMA digital-gender-gap thematic page (generic, mis-regioned); standing resource, not DRC-specific.
  - _context:_ dpi · ICT Infrastructure / Gender Gap in ICT Access
- [https://www.helgilibrary.com/indicators/electricity-production-from-renewable-sources-as-of-total/congo-drc](https://www.helgilibrary.com/indicators/electricity-production-from-renewable-sources-as-of-total/congo-drc)
  - Helgi Library renewable-energy indicator page; standing data registry, cutoff-exempt.
  - _context:_ dpi · yr 2012 · ICT Infrastructure / Renewable Energy Share of Generation
- [https://www.investindrc.cd/fr/spip.php?article103](https://www.investindrc.cd/fr/spip.php?article103)
  - Invest in DRC (ANAPI) business-register info page; standing portal, cutoff-exempt.
  - _context:_ dpi · yr 2013 · Registries / Status
- [https://www.peeringdb.com/ix/628](https://www.peeringdb.com/ix/628)
  - PeeringDB record for KINIX IXP; standing registry, cutoff-exempt.
  - _context:_ dpi · yr 2024 · ICT Infrastructure / Internet Exchange Point Presence
- [https://www.raxiogroup.com/data-centres/dr-congo](https://www.raxiogroup.com/data-centres/dr-congo)
  - Raxio Group DRC data-centre page; standing company/entity page (Raxio DRC1).
  - _context:_ dc · yr 2024 · Raxio DRC1 / Kinshasa

## Excluded — produced before 2024  (13)

- [https://a4ai.org/news/mobile-data-cost-have-increased-making-internet-connectivity-unaffordable-for-many](https://a4ai.org/news/mobile-data-cost-have-increased-making-internet-connectivity-unaffordable-for-many)
  - A4AI affordability news (2021); pre-2024.
  - _context:_ dpi · yr 2021 · ICT Infrastructure / Mobile Data Affordability
- [https://documents1.worldbank.org/curated/en/743721586836810203/pdf/Increasing-Access-to-Electricity-in-the-Democratic-Republic-of-Congo-Opportunities-and-Challenges.pdf](https://documents1.worldbank.org/curated/en/743721586836810203/pdf/Increasing-Access-to-Electricity-in-the-Democratic-Republic-of-Congo-Opportunities-and-Challenges.pdf)
  - World Bank electricity-access PDF (2018); pre-2024 and energy-tangential.
  - _context:_ dpi · yr 2018 · ICT Infrastructure / Grid Reliability (Power Outage Frequency)
- [https://documents1.worldbank.org/curated/en/792331626091140846/pdf/Congo-Democratic-Republic-of-Financial-Infrastructure-and-Markets-Projects.pdf](https://documents1.worldbank.org/curated/en/792331626091140846/pdf/Congo-Democratic-Republic-of-Financial-Infrastructure-and-Markets-Projects.pdf)
  - World Bank financial-infrastructure PDF (2021); pre-2024.
  - _context:_ dpi · yr 2021 · Digital Pay / Central Bank Involvement in Governance; Digital Pay / Digital Payment System Exists
- [https://ijisrt.com/assets/upload/files/IJISRT23AUG1743.pdf](https://ijisrt.com/assets/upload/files/IJISRT23AUG1743.pdf)
  - IJISRT journal PDF (Aug 2023 per filename); pre-2024 (and low-quality outlet).
  - _context:_ dpi · yr 2023,2025 · Data Exchange / Enabling Legislation; Data Exchange / Operational Status
- [https://lexing.be/actualites/etudes-et-livres-blancs/protection-des-donnees-en-rdc](https://lexing.be/actualites/etudes-et-livres-blancs/protection-des-donnees-en-rdc)
  - Lexing law-firm study on DRC data protection (2023); pre-2024.
  - _context:_ dpi · yr 2023 · Digital Id / Data Protection Act
- [https://pmnewsnigeria.com/2021/11/04/how-nigerian-built-tax-platform-is-powering-digital-revenue-reform-in-drc](https://pmnewsnigeria.com/2021/11/04/how-nigerian-built-tax-platform-is-powering-digital-revenue-reform-in-drc)
  - PM News Nigeria on a tax platform in DRC (Nov 2021); pre-2024.
  - _context:_ dpi · yr 2021 · Digital Pay / Person-to-Government (P2G) Payments; Digital Pay / Revenue Collection
- [https://reliefweb.int/report/democratic-republic-congo/democratic-republic-congo-unhcr-cash-and-voucher-assistance-2018](https://reliefweb.int/report/democratic-republic-congo/democratic-republic-congo-unhcr-cash-and-voucher-assistance-2018)
  - ReliefWeb/UNHCR cash & voucher assistance (2018); pre-2024.
  - _context:_ dpi · yr 2018 · Digital Pay / Refugee and Migrant Access
- [https://reliefweb.int/report/democratic-republic-congo/la-rdc-adopte-l-utilisation-des-solutions-de-paiement-num-rique](https://reliefweb.int/report/democratic-republic-congo/la-rdc-adopte-l-utilisation-des-solutions-de-paiement-num-rique)
  - ReliefWeb on DRC adopting digital payment solutions (2020); pre-2024.
  - _context:_ dpi · yr 2020 · Digital Pay / Government-to-Person (G2P) Payments
- [https://researchictsolutions.com/home/wp-content/uploads/2021/03/DRC-Bandwith-Tax-FINAL.pdf](https://researchictsolutions.com/home/wp-content/uploads/2021/03/DRC-Bandwith-Tax-FINAL.pdf)
  - Research ICT Solutions DRC bandwidth-tax PDF (Mar 2021); pre-2024.
  - _context:_ dpi · ICT Infrastructure / International Internet Bandwidth
- [https://www.biometricupdate.com/202307/national-id-cards-launched-in-drc-remain-uncollected-in-ghana](https://www.biometricupdate.com/202307/national-id-cards-launched-in-drc-remain-uncollected-in-ghana)
  - Biometric Update (Jul 2023 per URL) on DRC ID cards uncollected in Ghana; pre-2024.
  - _context:_ dpi · yr 2025 · Digital Id / Digital ID System Exists
- [https://www.intrahealth.org/sites/default/files/attachment-files/239-articletext-1025-1-10-202001081.pdf](https://www.intrahealth.org/sites/default/files/attachment-files/239-articletext-1025-1-10-202001081.pdf)
  - IntraHealth DHIS2/health-systems PDF (2023 or earlier); pre-2024.
  - _context:_ dpi · yr 2023 · Data Exchange / Health System Integration
- [https://www.sosmediasburundi.org/en/2023/06/11/drc-congolese-in-process-of-obtaining-national-identity-card](https://www.sosmediasburundi.org/en/2023/06/11/drc-congolese-in-process-of-obtaining-national-identity-card)
  - SOS Médias Burundi on obtaining DRC national ID (Jun 2023); pre-2024.
  - _context:_ dpi · yr 2023,2025 · Digital Id / Civil Registration Integration; Digital Id / System Interoperability
- [https://www.wearetech.africa/en/fils-uk/news/public-management/drc-inks-deal-for-the-digitalization-of-its-cadastre](https://www.wearetech.africa/en/fils-uk/news/public-management/drc-inks-deal-for-the-digitalization-of-its-cadastre)
  - WeAreTech on DRC cadastre-digitalisation deal (2022, e-Foncier); pre-2024.
  - _context:_ dpi · yr 2022 · Registries / Separate cadastral register; Registries / Status

## Already held (in hub, no action)  (1)

- [https://www.biometricupdate.com/202601/drc-envisages-a-functional-digital-government-platform-by-march](https://www.biometricupdate.com/202601/drc-envisages-a-functional-digital-government-platform-by-march)
  - Biometric Update (Jan 2026) — this IS the hub's held source [[2026-01-30 DRC envisages a functional digital government platform by March]]. Already held.
  - _context:_ dpi · yr 2025 · Digital Id / Government Portal Authentication; Digital Id / Sustainability

---

## Phase 2 — fetch run summary (2026-07-15)

**A-web fetched: 25 attempted → 23 clips placed in `/new-queue`, 2 skipped.**

Skipped:
- `citizenshiprightsafrica.org/controversy-trails-big-money-biometric-id-card-contract-in-dr-congo` — fetch-fail (timeout ×2). On-topic (ONIP/Afritech contract controversy); the same ground is covered by the IDTechWire "Congo cancels $1.2B" and NTU CAS clips.
- `www.imf.org/.../pr-25185-...-implements-the-e-gdds` — fetch-fail (timeout ×2). IMF e-GDDS data-page launch (Jun 2025); worth a manual grab.

**Date corrections at fetch (dataset Year was wrong/ambiguous):**
- Ecofin `0902-52708` (dataset Year 2023) is actually **9 Feb 2026** — the high Ecofin id was the tell; in-window, kept.
- IDTechWire "Congo cancels $1.2B" (dataset Year 2025) is actually **4 Sept 2024** — still in-window.
- All 23 fetched items confirmed 2024+; no pre-2024 skips at fetch.

**Flags for Bill at ingest — heavy clustering (the hub already frames all of these):**
- **RDC-PASS / Trident e-KYC cluster (9 clips):** WeAreTech (12 Feb 25), Biometric Update (13 Feb / 26 Jun / 29 Aug 25), IDTechWire (8 Apr / 27 Jun 25), GlobeNewswire/Trident primary (25 Jun 25), NTU CAS analysis (30 Jul 25), Bankable $97.1m (26 Jan 26). These trace one storyline (Dec-2024 framework → Feb-2025 implementation agreement → Jun-2025 final PPP → phased deployment). Build one event/deal page ([[rdc-pass]] / [[trident-digital-tech]]) citing the set, not nine parallel `raw/` sources. The GlobeNewswire/Trident and Visa press releases are the **primaries**; the hub currently leans on aggregators for Visa Pay — swap in the primary.
- **$1.5bn / $8.7bn 2026–2030 digital-plan cluster (4 clips):** Bankable + Ecofin (both ~Oct 2025), iAfrica (Feb 2026), Ecofin data-centres (Feb 2026). Same PNN2 plan the hub's 2026-01-30 item already holds — merge/update, keep the dated figures.
- **ONIP biometric-ID-contract-collapse cluster:** IDTechWire "Congo cancels $1.2B" + Bankable "Margins Group" — the Afritech/Idemia cancellation and the Ghanaian-successor talks; relate to the [[payservices]] governance thread.
- **Data-centre cluster:** CIO Africa (OADC Texaf) + Communications Africa (Raxio DRC1), both Aug 2024 — two distinct facilities, file as separate entities under [[infra.store]].
