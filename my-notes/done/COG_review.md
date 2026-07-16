# COG — Rep. of Congo (Brazzaville) · dataset→wiki intake review

*Run 2026-07-15. Source: `external-datasets/` (africa-dpi, africa-data-centres, african-rural-digitalisation) filtered to COG. Assessed against `wiki/places/COG.md` as the complete record. Phase-1 assessment + Phase-2 A-web fetch in one pass.*

## Counts

- Total distinct source URLs: **76**
- Already held (hub): **1**
- Excluded (pre-2024): **12**
- New & in-window: **63**
  - A-web: **14** · A-PDF: **1** · B: **6** · C: **19** · D: **23**

Dataset rows matched: africa-dpi 147, africa-data-centres 4, african-rural-digitalisation 4.

**Hub note:** the COG hub is thin — two developments only (the Jan-2026 national data-protection commission; the 2026 GSMA digital-economy study). **1 dataset URL matches a held source**: ITWeb Africa's 'Congo-Brazzaville intros data protection commission'. Several A-web items are the **same data-protection-commission event** via other outlets (CyberSecurity Mag, ACI, Telecompaper) — kept + flagged for merge. Genuine new threads the thin hub does **not** yet cover: the **NIU** (Numéro d'Identification Unique) / national digital-ID programme, and the **Brazzaville national data centre** + Pointe-Noire 2Africa data centre.

**Data caveat — DRC cross-contamination:** 12 URLs in COG dataset rows are actually about **DR Congo** (the coders pulled DRC sources for some COG variables). They are bucketed **C** and clearly marked 'mis-attached — not COG-relevant'; ignore them for COG (they belong to the COD run).

## A-web · ingest (non-PDF) — fetched this run  (14)

- [https://cybersecuritymag.africa/creation-dune-commission-nationale-de-protection-des-donnees-au-congo](https://cybersecuritymag.africa/creation-dune-commission-nationale-de-protection-des-donnees-au-congo)
  - CyberSecurity Mag Africa on creation of the national data-protection commission (2026); country-specific — same event as hub's held source, flag merge.
  - _context:_ dpi · yr 2026 · Digital Id / Data Protection Authority Oversight
- [https://empowerafrica.com/congo-to-build-central-africas-first-fibre-data-center-for-72-8-million](https://empowerafrica.com/congo-to-build-central-africas-first-fibre-data-center-for-72-8-million)
  - Empower Africa: Congo to build Central Africa's first fibre data centre ($72.8m, Brazzaville AfDB/CAB); country-specific — data-centre cluster, verify date.
  - _context:_ dc · Congo National Data Center Brazzaville (AfDB/CAB) / Brazzaville
- [https://energycapitalpower.com/congos-national-data-center-in-brazzaville-reaches-75-completion](https://energycapitalpower.com/congos-national-data-center-in-brazzaville-reaches-75-completion)
  - Energy Capital Power: Congo's national data centre in Brazzaville reaches 75% completion; country-specific — data-centre cluster.
  - _context:_ dc · Congo National Data Center Brazzaville (AfDB/CAB) / Brazzaville
- [https://postetelecom.gouv.cg/congo-vers-une-identite-numerique-inclusive-et-securisee](https://postetelecom.gouv.cg/congo-vers-une-identite-numerique-inclusive-et-securisee)
  - Ministry of Posts & Telecom (official): Congo toward an inclusive, secure digital identity (2025); country-specific, on-topic.
  - _context:_ dpi · yr 2023,2025 · Digital Id / Digital Authentication Function; Digital Id / Digital ID Specific Regulation
- [https://reliefweb.int/report/congo/republic-congo-expands-access-social-protection-services-refugees-and-host-communities](https://reliefweb.int/report/congo/republic-congo-expands-access-social-protection-services-refugees-and-host-communities)
  - ReliefWeb: Republic of Congo expands social-protection access for refugees (biometric identity, 2025); country-specific, on-topic.
  - _context:_ dpi · yr 2025 · Digital Id / Social Services Use
- [https://techpoint.africa/news/congo-central-africas-first-fibre-data-centre](https://techpoint.africa/news/congo-central-africas-first-fibre-data-centre)
  - Techpoint Africa: Congo's Central-Africa-first fibre data centre; country-specific — data-centre cluster (Brazzaville national DC).
  - _context:_ dc · Congo National Data Center Brazzaville (AfDB/CAB) / Brazzaville
- [https://www.aci.cg/congo-numerique-mise-en-place-dun-systeme-didentite-numerique-pour-securiser-les-donnees-personnelles](https://www.aci.cg/congo-numerique-mise-en-place-dun-systeme-didentite-numerique-pour-securiser-les-donnees-personnelles)
  - ACI (state news agency): setting up a digital-identity system to secure personal data (2025); country-specific, on-topic.
  - _context:_ dpi · yr 2025 · Digital Id / Digital Authentication Function; Digital Id / Digital ID Specific Regulation
- [https://www.aci.cg/congo-numerique-vers-la-protection-des-donnees-a-caractere-personnel](https://www.aci.cg/congo-numerique-vers-la-protection-des-donnees-a-caractere-personnel)
  - ACI (state news agency): toward personal-data protection (2026); country-specific — data-protection-commission cluster, flag merge.
  - _context:_ dpi · yr 2026 · Digital Id / Data Protection Authority Oversight
- [https://www.dac-presse.com/la-production-de-passeports-et-de-cartes-nationales-didentite-sinstallera-a-pointe-noire](https://www.dac-presse.com/la-production-de-passeports-et-de-cartes-nationales-didentite-sinstallera-a-pointe-noire)
  - DAC Presse: passport & national-ID production to be set up in Pointe-Noire (2025); country-specific, on-topic.
  - _context:_ dpi · yr 2023,2025 · Digital Id / Maintenance; Digital Id / Population Coverage
- [https://www.datacenterdynamics.com/en/news/republic-of-congo-launches-data-center-in-pointe-noire-for-2africa-cable](https://www.datacenterdynamics.com/en/news/republic-of-congo-launches-data-center-in-pointe-noire-for-2africa-cable)
  - Data Center Dynamics: Republic of Congo launches Pointe-Noire data centre for 2Africa cable (2024); country-specific, on-topic.
  - _context:_ dc · yr 2021,2024 · ARPCE Data Center Brazzaville (2021) / Brazzaville; ARPCE Data Center Pointe-Noire (2Africa) / Pointe-Noire
- [https://www.ecofinagency.com/telecom/3105-45575-congo-allocates-63-9mln-to-boost-digital-transformation-in-2024](https://www.ecofinagency.com/telecom/3105-45575-congo-allocates-63-9mln-to-boost-digital-transformation-in-2024)
  - Ecofin: Congo allocates $63.9m to digital transformation in 2024; country-specific — verify pub date at fetch (Ecofin id 45575 ~ early 2024).
  - _context:_ dpi · yr 2023,2024 · Data Exchange / Implementation Roadmap; Data Exchange / Operational Status
- [https://www.finances.gouv.cg/en/articles/unique-identification-number-niu](https://www.finances.gouv.cg/en/articles/unique-identification-number-niu)
  - Ministry of Finance (official) on the Unique Identification Number (NIU) (to 2025); country-specific, on-topic.
  - _context:_ dpi · yr 2022,2023,2025 · Digital Id / Banking/Financial Services Use; Digital Id / Electronic Database
- [https://www.finances.gouv.cg/fr/articles/relance-des-op%C3%A9rations-de-production-de-la-carte-niu](https://www.finances.gouv.cg/fr/articles/relance-des-op%C3%A9rations-de-production-de-la-carte-niu)
  - Ministry of Finance (official): relaunch of NIU card production (2025); country-specific, on-topic.
  - _context:_ dpi · yr 2023,2025 · Digital Id / Ministry of Finance Oversight; Digital Id / Population Coverage
- [https://www.telecompaper.com/news/congo-republic-establishes-data-protection-commission--1560076](https://www.telecompaper.com/news/congo-republic-establishes-data-protection-commission--1560076)
  - Telecompaper: Congo Republic establishes data-protection commission (dataset Year 2024); country-specific — data-protection cluster, verify pub date at fetch.
  - _context:_ dpi · yr 2024 · Data Exchange / Data Sovereignty Provisions; Data Exchange / Enabling Legislation

## A-PDF · ingest (PDF) — Bill handles by hand  (1)

- [https://documents1.worldbank.org/curated/en/099063025115539514/pdf/P175592-6921d01e-6c0d-4e80-ac5a-746d4f697d53.pdf](https://documents1.worldbank.org/curated/en/099063025115539514/pdf/P175592-6921d01e-6c0d-4e80-ac5a-746d4f697d53.pdf)
  - World Bank PDF (P175592) on COG digital ID/authentication (2025); primary reference, PDF artefact for Bill.
  - _context:_ dpi · yr 2025 · Digital Id / Digital Authentication Function; Digital Id / Digital ID Specific Regulation

## B · check first  (6)

- [https://developingtelecoms.com/telecom-business/operator-news/19785-mtn-congo-taps-2africa-cable-to-strengthen-network-resilience.html](https://developingtelecoms.com/telecom-business/operator-news/19785-mtn-congo-taps-2africa-cable-to-strengthen-network-resilience.html)
  - Developing Telecoms: MTN Congo taps 2Africa cable; verify pub date (comment says 2021 but 2Africa landings are 2023+) — check first.
  - _context:_ dc · MTN Congo Data Center Brazzaville / Brazzaville
- [https://www.congodefense.com/2025/07/identite-numerique-bouclier-ou-pass-vip](https://www.congodefense.com/2025/07/identite-numerique-bouclier-ou-pass-vip)
  - congodefense.com opinion on digital identity ('shield or VIP pass', Jul 2025); low-authority blog — check first.
  - _context:_ dpi · yr 2023 · Digital Id / Biometric Data Collection
- [https://www.congodurable.com/identite-numerique-brazzaville-securise-lavenir](https://www.congodurable.com/identite-numerique-brazzaville-securise-lavenir)
  - congodurable.com on Brazzaville digital identity (2025); low-authority outlet — check first.
  - _context:_ dpi · yr 2025 · Digital Id / Digital ID Specific Regulation
- [https://www.gsma.com/newsroom/press-release/pioneering-affordable-access-in-africa-gsma-and-handset-affordability-coalition-members-identify-six-african-countries-to-pilot-affordable-40-smartphones](https://www.gsma.com/newsroom/press-release/pioneering-affordable-access-in-africa-gsma-and-handset-affordability-coalition-members-identify-six-african-countries-to-pilot-affordable-40-smartphones)
  - GSMA press release on six countries piloting $40 smartphones (2024); regional/continental — check whether COG is in scope.
  - _context:_ dpi · yr 2024 · ICT Infrastructure / Smartphone Adoption
- [https://www.itweb.co.za/article/afrilabs-opens-18-new-tech-hubs-across-africa/LPp6V7rBaBQ7DKQz](https://www.itweb.co.za/article/afrilabs-opens-18-new-tech-hubs-across-africa/LPp6V7rBaBQ7DKQz)
  - ITWeb: AfriLabs opens 18 tech hubs across Africa (2024); continental, COG only partially featured — check first.
  - _context:_ dpi · yr 2024 · ICT Infrastructure / Developer and Tech Community; ICT Infrastructure / Technology and Innovation Hubs
- [https://www.sofrecom.com/news-insights/numerique-le-congo-bientot-dote-dun-systeme-national-didentification-digitale.html](https://www.sofrecom.com/news-insights/numerique-le-congo-bientot-dote-dun-systeme-national-didentification-digitale.html)
  - Sofrecom (Orange consulting) FR piece on Congo's national digital-ID system (2025/26); consultancy content — check first, mine for primaries.
  - _context:_ dpi · yr 2025,2026 · Digital Id / Civil Registration Integration; Digital Id / Digital ID System Exists

## C · lead only (do not cite)  (19)

- [https://bankable.africa/en/news/2101-2276-drc-to-roll-out-national-interbank-payments-platform-by-end-march-2026](https://bankable.africa/en/news/2101-2276-drc-to-roll-out-national-interbank-payments-platform-by-end-march-2026)
  - About DRC's interbank platform — mis-attached to a COG dataset row; not COG-relevant (handle under COD).
  - _context:_ dpi · yr 2023,2024,2026 · Digital Pay / Digital Payment System Exists; Digital Pay / Person-to-Business (P2B) Merchant Payments
- [https://data.worldbank.org/country/congo-dem-rep](https://data.worldbank.org/country/congo-dem-rep)
  - World Bank DRC country page — mis-attached to a COG row; not COG-relevant.
  - _context:_ dpi · yr 2023 · ICT Infrastructure / Electricity Access Rate; ICT Infrastructure / Internet Usage Rate
- [https://dataprotection.africa/democratic-republic-of-the-congo](https://dataprotection.africa/democratic-republic-of-the-congo)
  - Data Protection Africa DRC page — mis-attached to a COG row; not COG-relevant.
  - _context:_ dpi · ICT Infrastructure / Data Protection Legislation
- [https://developmentreimagined.com/wp-content/uploads/2024/03/DRC.pdf](https://developmentreimagined.com/wp-content/uploads/2024/03/DRC.pdf)
  - Development Reimagined DRC brief — mis-attached to a COG row; not COG-relevant.
  - _context:_ dpi · yr 2022 · ICT Infrastructure / Renewable Energy Share of Generation
- [https://documents1.worldbank.org/curated/en/792331626091140846/pdf/Congo-Democratic-Republic-of-Financial-Infrastructure-and-Markets-Projects.pdf](https://documents1.worldbank.org/curated/en/792331626091140846/pdf/Congo-Democratic-Republic-of-Financial-Infrastructure-and-Markets-Projects.pdf)
  - World Bank DRC financial-infrastructure PDF — mis-attached to a COG row; not COG-relevant.
  - _context:_ dpi · yr 2024 · Digital Pay / Central Bank Involvement in Governance; Digital Pay / Cross-Border Payment Functionality
- [https://en.wikipedia.org/wiki/List_of_countries_by_GNI_nominal](https://en.wikipedia.org/wiki/List_of_countries_by_GNI_nominal)
  - Wikipedia GNI list; tertiary, lead only.
  - _context:_ dpi · yr 2025 · ICT Infrastructure / Electricity Affordability
- [https://en.wikipedia.org/wiki/List_of_countries_by_GNI_nominal_per_capita](https://en.wikipedia.org/wiki/List_of_countries_by_GNI_nominal_per_capita)
  - Wikipedia GNI-per-capita list; tertiary, lead only.
  - _context:_ dpi · yr 2025 · ICT Infrastructure / Electricity Affordability
- [https://ibsintelligence.com/ibsi-news/visa-launches-mobile-payments-platform-in-drc](https://ibsintelligence.com/ibsi-news/visa-launches-mobile-payments-platform-in-drc)
  - IBS Intelligence on Visa Pay in DRC — mis-attached to a COG row; not COG-relevant.
  - _context:_ dpi · yr 2026 · Digital Pay / Person-to-Business (P2B) Merchant Payments
- [https://migrantmoney.uncdf.org/wp-content/uploads/2025/05/Payment-Infrastructure-Assessment-DRC-April2025.pdf](https://migrantmoney.uncdf.org/wp-content/uploads/2025/05/Payment-Infrastructure-Assessment-DRC-April2025.pdf)
  - UNCDF DRC payment-infrastructure assessment — mis-attached to a COG row; not COG-relevant.
  - _context:_ dpi · yr 2025 · Digital Pay / Scheme Rules Publicly Available
- [https://onafriq.com/press/article/onafriq-and-visa-partner-to-launch-visa-pay-unlocking-interoperability-between-card-and-mobile-money-in-the-drc](https://onafriq.com/press/article/onafriq-and-visa-partner-to-launch-visa-pay-unlocking-interoperability-between-card-and-mobile-money-in-the-drc)
  - Onafriq/Visa Pay DRC press release — mis-attached to a COG row; not COG-relevant.
  - _context:_ dpi · yr 2026 · Digital Pay / Person-to-Person (P2P) Payments
- [https://pikasim.com/esim-republic-of-the-congo](https://pikasim.com/esim-republic-of-the-congo)
  - PikaSim eSIM commercial page; tertiary/vendor, lead only.
  - _context:_ dpi · yr 2023 · Digital Id / SIM Card Registration Use
- [https://usesmileid.com/countries/republic-of-congo](https://usesmileid.com/countries/republic-of-congo)
  - Smile ID vendor country page; tertiary/marketing, lead only.
  - _context:_ dpi · yr 2020,2021,2022 · Digital Id / Banking/Financial Services Use; Digital Id / KYC Enablement
- [https://www.dlapiperdataprotection.com/index.html?t=law&c=CD](https://www.dlapiperdataprotection.com/index.html?t=law&c=CD)
  - DLA Piper DP reference for DRC (c=CD) — mis-attached to a COG row; not COG-relevant.
  - _context:_ dpi · yr 2023 · Digital Pay / Data Breach Notification Requirements; Digital Pay / Data Privacy Legislation Coverage
- [https://www.ecofinagency.com/news-digital/1602-52931-drc-seeks-to-connect-68-million-through-infrastructure-sharing](https://www.ecofinagency.com/news-digital/1602-52931-drc-seeks-to-connect-68-million-through-infrastructure-sharing)
  - Ecofin DRC infrastructure-sharing piece — mis-attached to a COG row; not COG-relevant.
  - _context:_ dpi · yr 2024,2025 · ICT Infrastructure / 4G/LTE Population Coverage; ICT Infrastructure / Mobile Phone Penetration
- [https://www.globalpetrolprices.com/Democratic-Republic-of-the-Congo/electricity_prices](https://www.globalpetrolprices.com/Democratic-Republic-of-the-Congo/electricity_prices)
  - GlobalPetrolPrices DRC electricity page — mis-attached to a COG row; not COG-relevant.
  - _context:_ dpi · yr 2025 · ICT Infrastructure / Electricity Affordability
- [https://www.gogla.org/wp-content/uploads/2024/11/DRC-Country-Brief.pdf](https://www.gogla.org/wp-content/uploads/2024/11/DRC-Country-Brief.pdf)
  - GOGLA DRC country brief — mis-attached to a COG row; not COG-relevant.
  - _context:_ dpi · yr 2024 · ICT Infrastructure / Off-Grid and Distributed Energy Policy
- [https://www.innovatrics.com/wp-content/uploads/2025/09/CS_Multi-Tenant-Biometric-ID-Platform-Transforms-Healthcare-in-Congo_Innovatrics.pdf](https://www.innovatrics.com/wp-content/uploads/2025/09/CS_Multi-Tenant-Biometric-ID-Platform-Transforms-Healthcare-in-Congo_Innovatrics.pdf)
  - Innovatrics vendor case study on a biometric ID platform in Congo healthcare; vendor marketing, lead only.
  - _context:_ dpi · yr 2023,2025,2026 · Digital Id / Biometric Data Collection; Digital Id / Civil Registration Integration
- [https://www.scirp.org/journal/paperinformation?paperid=133671](https://www.scirp.org/journal/paperinformation?paperid=133671)
  - SCIRP journal paper on Congo data governance (2024); low-authority/predatory publisher — lead only, mine for primaries.
  - _context:_ dpi · yr 2024 · Data Exchange / Data Sovereignty Provisions; Data Exchange / Enabling Legislation
- [https://www.youtube.com/watch?v=kchC49WUmnk](https://www.youtube.com/watch?v=kchC49WUmnk)
  - YouTube video on civil registration (2026); low-authority/tertiary, lead only.
  - _context:_ dpi · yr 2026 · Digital Id / Civil Registration Integration

## D · resource / entity (not a dated source)  (23)

- [http://www.ambacongo-us.org/en/embassy-services/consular/passport](http://www.ambacongo-us.org/en/embassy-services/consular/passport)
  - Congo embassy consular/passport info page; standing reference, cutoff-exempt.
  - _context:_ dpi · yr 2017 · Digital Id / Cross-Border Recognition
- [https://acpce.cg](https://acpce.cg)
  - ACPCE (Agence Congolaise pour la Création des Entreprises) business-registration portal; standing portal.
  - _context:_ dpi · Registries / Status
- [https://data.worldbank.org/indicator/SP.REG.BRTH.ZS?locations=CG](https://data.worldbank.org/indicator/SP.REG.BRTH.ZS?locations=CG)
  - World Bank birth-registration indicator for CG; standing data registry, cutoff-exempt.
  - _context:_ dpi · yr 2020 · Registries / Uptake
- [https://desapublications.un.org/sites/default/files/publications/2024-09/Web%20version](https://desapublications.un.org/sites/default/files/publications/2024-09/Web%20version)
  - UN E-Government Survey 2024 (web version); global reference report — cite as instrument, don't absorb.
  - _context:_ dpi · ICT Infrastructure / E-Government Development
- [https://desapublications.un.org/sites/default/files/publications/2024-09/Web%20version%20E-Government%20Survey%202024%201392024.pdf](https://desapublications.un.org/sites/default/files/publications/2024-09/Web%20version%20E-Government%20Survey%202024%201392024.pdf)
  - UN E-Government Survey 2024 PDF; global reference report — cite as instrument, don't absorb.
  - _context:_ dpi · ICT Infrastructure / E-Government Development
- [https://documents1.worldbank.org/curated/en/804131654274496053/pdf/Congo-Republic-of-Congo-Digital-Acceleration-Project.pdf](https://documents1.worldbank.org/curated/en/804131654274496053/pdf/Congo-Republic-of-Congo-Digital-Acceleration-Project.pdf)
  - World Bank Project Appraisal Document for the Congo Digital Acceleration Project / PATN (2022); foundational project instrument — capture as reference, not a dated development.
  - _context:_ dpi · yr 2022,2023,2024 · Data Exchange / AI/Analytics Capabilities; Data Exchange / Agriculture System Integration
- [https://documents1.worldbank.org/curated/en/804131654274496053/txt/Congo-Republic-of-Congo-Digital-Acceleration-Project.txt](https://documents1.worldbank.org/curated/en/804131654274496053/txt/Congo-Republic-of-Congo-Digital-Acceleration-Project.txt)
  - Text mirror of the WB PATN Project Appraisal Document; same standing instrument as the PDF.
  - _context:_ dpi · yr 2022 · Digital Id / Sustainability
- [https://ewsdata.rightsindevelopment.org/projects/20200039-congo-digital-transformation](https://ewsdata.rightsindevelopment.org/projects/20200039-congo-digital-transformation)
  - Early Warning System project-tracker entry for the Congo digital-transformation project; standing project registry.
  - _context:_ dpi · yr 2023 · Data Exchange / Education System Integration; Data Exchange / Health System Integration
- [https://extranet.who.int/cpcd/sites/default/files/public_file_repository/COG_Congo_Decret-No-2009-57-modifiant-le-decret-n__-2007-207-du-2-avril-2007-portant-creation-de-la-carte-nationale-d_identite-informatisee-et-securisee_2009.pdf](https://extranet.who.int/cpcd/sites/default/files/public_file_repository/COG_Congo_Decret-No-2009-57-modifiant-le-decret-n__-2007-207-du-2-avril-2007-portant-creation-de-la-carte-nationale-d_identite-informatisee-et-securisee_2009.pdf)
  - Décret 2009-57 (amending 2007-207) on the computerised secure national ID card; standing legal-instrument text, cutoff-exempt.
  - _context:_ dpi · yr 2023 · Digital Id / Cost of Credential
- [https://id4d.worldbank.org/global-dataset](https://id4d.worldbank.org/global-dataset)
  - World Bank ID4D global dataset; standing resource, cutoff-exempt.
  - _context:_ dpi · Registries / Status
- [https://ins-congo.cg/recensement](https://ins-congo.cg/recensement)
  - INS Congo (national statistics institute) census portal page; standing official portal.
  - _context:_ dpi · yr 2025 · Digital Id / Population Coverage; Registries / Status
- [https://interieur.gouv.cg/carte-nationale-didentite](https://interieur.gouv.cg/carte-nationale-didentite)
  - Ministry of Interior national-ID (CNI) portal page; standing official portal.
  - _context:_ dpi · yr 2019,2023,2025,2026 · Digital Id / Biometric Data Collection; Digital Id / Civil Registration Integration
- [https://interieur.gouv.cg/decret-n-2007-207-du-02-avril-2007-portant-creation-de-la-carte-didentite-informatisee-et-securisee](https://interieur.gouv.cg/decret-n-2007-207-du-02-avril-2007-portant-creation-de-la-carte-didentite-informatisee-et-securisee)
  - Décret 2007-207 creating the computerised secure ID card, on the official site; standing legal instrument.
  - _context:_ dpi · yr 2025 · Digital Id / Legal Framework
- [https://travel.state.gov/content/travel/en/us-visas/Visa-Reciprocity-and-Civil-Documents-by-Country/Congo.html](https://travel.state.gov/content/travel/en/us-visas/Visa-Reciprocity-and-Civil-Documents-by-Country/Congo.html)
  - US State Dept visa-reciprocity & civil-documents reference for Congo; standing reference, cutoff-exempt.
  - _context:_ dpi · yr 2023 · Digital Id / Cost of Credential; Digital Id / Legal Proof Status
- [https://www.aeroport-brazzaville.com/en/visa_on_arrival_congo.php](https://www.aeroport-brazzaville.com/en/visa_on_arrival_congo.php)
  - Brazzaville airport visa-on-arrival info page; standing reference, cutoff-exempt.
  - _context:_ dpi · yr 2017 · Digital Id / Cross-Border Recognition
- [https://www.dlapiperdataprotection.com/?t=law&c=CG](https://www.dlapiperdataprotection.com/?t=law&c=CG)
  - DLA Piper Data Protection Laws of the World (Congo, c=CG); standing legal-reference tool, cutoff-exempt.
  - _context:_ dpi · yr 2020,2024,2025,2026 · Data Exchange / Data Sovereignty Provisions; Data Exchange / Enabling Legislation
- [https://www.eib.org/en/projects/all/20200039](https://www.eib.org/en/projects/all/20200039)
  - EIB project registry entry (20200039, Congo digital transformation); standing project registry.
  - _context:_ dpi · yr 2023 · Data Exchange / AI/Analytics Capabilities; Data Exchange / Civil Registration & Vital Statistics Integration
- [https://www.gsma.com/solutions-and-impact/connectivity-for-good/mobile-for-development/region/east-asia-and-pacific/digital-gender-gap](https://www.gsma.com/solutions-and-impact/connectivity-for-good/mobile-for-development/region/east-asia-and-pacific/digital-gender-gap)
  - GSMA digital-gender-gap thematic page (generic, 2015); standing resource, not COG-specific.
  - _context:_ dpi · yr 2015 · ICT Infrastructure / Gender Gap in ICT Access
- [https://www.impots.gouv.cg](https://www.impots.gouv.cg)
  - DGI Congo tax portal (impots.gouv.cg); standing official portal.
  - _context:_ dpi · Registries / Status
- [https://www.interpol.int/en/How-we-work/Border-management/Projects/Project-I-CEMAC](https://www.interpol.int/en/How-we-work/Border-management/Projects/Project-I-CEMAC)
  - INTERPOL Project I-CEMAC border-management page; standing regional project page.
  - _context:_ dpi · yr 2017 · Digital Id / Cross-Border Recognition
- [https://www.itu.int/dms_pub/itu-d/opb/ind/d-ind-ict_mdd-2024-3-pdf-e.pdf](https://www.itu.int/dms_pub/itu-d/opb/ind/d-ind-ict_mdd-2024-3-pdf-e.pdf)
  - ITU Measuring Digital Development 2024 PDF; global reference report — cite as instrument, don't absorb.
  - _context:_ dpi · yr 2024 · ICT Infrastructure / National Cybersecurity Readiness
- [https://www.justice.gov/file/cog104973fepdf/dl](https://www.justice.gov/file/cog104973fepdf/dl)
  - US DOJ/EOIR country-conditions reference file for Congo; standing reference document.
  - _context:_ dpi · yr 2022,2023,2025 · Digital Id / Banking/Financial Services Use; Digital Id / Electronic Database
- [https://www.sgg.cg/JO/2019/congo-jo-2019-45.pdf](https://www.sgg.cg/JO/2019/congo-jo-2019-45.pdf)
  - Journal Officiel 2019-45 (carries Loi 29-2019 on data protection); standing legal-instrument text, cutoff-exempt.
  - _context:_ dpi · yr 2019,2020,2025 · Digital Id / Data Protection Act; Digital Id / Data Sharing Rules

## Excluded — produced before 2024  (12)

- [https://cemac-eco.finance/congo-and-world-bank-review-patn-project](https://cemac-eco.finance/congo-and-world-bank-review-patn-project)
  - CEMAC Eco on Congo–World Bank PATN review (2022); pre-2024.
  - _context:_ dpi · yr 2022 · Digital Id / Sustainability
- [https://developingtelecoms.com/telecom-technology/data-centres-networks/16726-new-brazzaville-data-centre-due-by-end-of-year-says-adb.html](https://developingtelecoms.com/telecom-technology/data-centres-networks/16726-new-brazzaville-data-centre-due-by-end-of-year-says-adb.html)
  - Developing Telecoms: new Brazzaville data centre due end-of-year (2021); pre-2024.
  - _context:_ dc · yr 2021 · ARPCE Data Center Brazzaville (2021) / Brazzaville; MTN Congo Data Center Brazzaville / Brazzaville
- [https://identityweek.net/republic-of-the-congo-launches-biometric-tax-id-solution-2](https://identityweek.net/republic-of-the-congo-launches-biometric-tax-id-solution-2)
  - Identity Week: Republic of Congo biometric tax-ID solution (to 2023); pre-2024.
  - _context:_ dpi · yr 2020,2022,2023 · Digital Id / Biometric Data Collection; Digital Id / Data Sharing Rules
- [https://www.afrobarometer.org/articles/energy-gaps-slight-uneven-progress-still-leaves-many-africans-without-electricity-afrobarometer-survey-shows](https://www.afrobarometer.org/articles/energy-gaps-slight-uneven-progress-still-leaves-many-africans-without-electricity-afrobarometer-survey-shows)
  - Afrobarometer energy-gaps article (2023); pre-2024 and energy-tangential.
  - _context:_ dpi · yr 2023 · ICT Infrastructure / Grid Reliability (Power Outage Frequency)
- [https://www.businessincameroon.com/cooperation/2510-7505-congo-joined-the-3-countries-which-formalized-free-movement-within-cemac](https://www.businessincameroon.com/cooperation/2510-7505-congo-joined-the-3-countries-which-formalized-free-movement-within-cemac)
  - Business in Cameroon on CEMAC free movement (2017); pre-2024 and regional.
  - _context:_ dpi · yr 2017 · Digital Id / Cross-Border Recognition
- [https://www.cullen-international.com/news/2023/10/SIM-card-registration-in-sub-Saharan-Africa.html](https://www.cullen-international.com/news/2023/10/SIM-card-registration-in-sub-Saharan-Africa.html)
  - Cullen International SIM-registration SSA note (Oct 2023); pre-2024 and regional.
  - _context:_ dpi · yr 2023 · Digital Id / SIM Card Registration Use
- [https://www.ecoi.net/en/document/1200540.html](https://www.ecoi.net/en/document/1200540.html)
  - ecoi.net country-of-origin document (2020); pre-2024.
  - _context:_ dpi · yr 2020 · Digital Id / Non-National Eligibility
- [https://www.eib.org/en/press/all/2023-222-together-towards-digitalization-in-the-republic-of-congo-89-4-billion-cfa-francs-mobilized-for-the-acceleration-of-digital-transformation-in-congo](https://www.eib.org/en/press/all/2023-222-together-towards-digitalization-in-the-republic-of-congo-89-4-billion-cfa-francs-mobilized-for-the-acceleration-of-digital-transformation-in-congo)
  - EIB press release (ref 2023-222) on €89.4bn CFA for Congo digital transformation; published 2023 — pre-2024.
  - _context:_ dpi · yr 2022,2024 · Data Exchange / Public Transparency; Data Exchange / Strategic Framework
- [https://www.finances.gouv.cg/en/articles/deployment-new-unique-identification-number-niu](https://www.finances.gouv.cg/en/articles/deployment-new-unique-identification-number-niu)
  - Ministry of Finance article on NIU deployment (2020); pre-2024.
  - _context:_ dpi · yr 2020 · Digital Id / Non-National Eligibility
- [https://www.sofrecom.com/en/news-insights/congo-will-soon-boast-a-national-digital-identification-system.html](https://www.sofrecom.com/en/news-insights/congo-will-soon-boast-a-national-digital-identification-system.html)
  - Sofrecom (Orange consulting) on Congo's coming national digital ID (2021); pre-2024.
  - _context:_ dpi · yr 2021 · Registries / Status
- [https://www.undp.org/fr/congo/blog/era-digital-republic-congo-starting-block](https://www.undp.org/fr/congo/blog/era-digital-republic-congo-starting-block)
  - UNDP Congo blog on the digital era (2022/23); pre-2024.
  - _context:_ dpi · yr 2022,2023 · Data Exchange / Business Registration & Licensing Integration; Data Exchange / Strategic Framework
- [https://www.worldbank.org/en/news/press-release/2019/02/08/republic-of-congo-expands-access-to-social-protection-services-for-refugees-and-host-communities-in-the-likouala-region](https://www.worldbank.org/en/news/press-release/2019/02/08/republic-of-congo-expands-access-to-social-protection-services-for-refugees-and-host-communities-in-the-likouala-region)
  - World Bank press release on the Lisungi social registry (2019); pre-2024 (historical baseline).
  - _context:_ dpi · yr 2019 · Registries / Status; Registries / Uptake

## Already held (in hub, no action)  (1)

- [https://itweb.africa/article/congo-brazzaville-intros-data-protection-commission/nWJadvbNzxkvbjO1](https://itweb.africa/article/congo-brazzaville-intros-data-protection-commission/nWJadvbNzxkvbjO1)
  - ITWeb Africa — this IS the hub's held source [[2026-01-22 Congo-Brazzaville intros data protection commission]]. Already held.
  - _context:_ dpi · yr 2025,2026 · Digital Id / Data Protection Authority Oversight; Digital Id / Security Reviews

---

## Phase 2 — fetch run summary (2026-07-15)

**A-web fetched: 14 attempted → 10 clips placed in `/new-queue`, 4 skipped.**

Skipped:
- `reliefweb.int/.../republic-congo-expands-access-social-protection...refugees` — fetched as a **2019** World Bank press release (Lisungi social registry), dataset Year 2025 was wrong → pre-2024, skipped.
- `finances.gouv.cg/en/articles/unique-identification-number-niu` — the /en/ page is a **20 June 2023** article (NIU centre inaugurations) → pre-2024, skipped. (The /fr/ "relance" page is Oct 2025 and was kept.)
- `telecompaper.com/.../congo-republic-establishes-data-protection-commission` — thin/paywalled stub (Jan 2026) that merely rehashes the held ITWeb source; no added body → skipped.
- `postetelecom.gouv.cg/congo-vers-une-identite-numerique-inclusive-et-securisee` — fetch-fail (timeout, then unknown error ×2). Same July-2025 digital-identity workshop as the ACI clip (kept), so covered.

**Date corrections at fetch (important):**
- The two **data-protection-commission** items dated 2025/2026 in the dataset are actually **5 July 2024** — they report the *Conseil des ministres approving the draft law*, a **distinct earlier milestone** from the hub's held Jan-2026 *installation of members*. Kept both (Africa Cybersecurity Mag + ACI); flag: they give the hub the 2024 origin date, not a duplicate of the Jan-2026 event.
- `datacenterdynamics` Pointe-Noire piece: page metadata shows 2026 but the article is **11 March 2024** (2Africa activation 28 Feb 2024) → in-window.

**Flags for Bill at ingest:**
- **Data-protection-commission timeline:** July-2024 draft-law approval (2 clips) → Jan-2026 installation of members (hub's held ITWeb source). Build the [[national-personal-data-protection-commission-congo]] entity timeline from both.
- **NIU / national digital-ID thread (new to the hub):** the Oct-2025 NIU relaunch (Min. Finance), the July-2025 national digital-identity workshop (ACI/PATN/Thales/SIFEC), and the Pointe-Noire passport/CNI production centre (Mar 2025) are a coherent digital-identity storyline the thin hub doesn't yet carry.
- **Data-centre cluster:** Brazzaville National Data Centre (AfDB/CAB) — May-2024 announcement (Techpoint + Empower Africa, near-identical, merge) and the Mar-2025 75%-completion milestone (Energy Capital Power); plus the separate ARPCE Pointe-Noire 2Africa data centre (Feb-2024). File as distinct facilities under [[infra.store]].
