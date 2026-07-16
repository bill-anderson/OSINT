# COM — Comoros · dataset→wiki intake review

Run date: 2026-07-15. Workflow: `country-ingest-workflow.md` (Assess → Fetch, autonomous).

## Header counts

- Total distinct source URLs: **44**
- Already held (from hub `wiki/places/COM.md`): **0** — *no COM hub exists yet; per §1.3 coverage is empty, every candidate treated as new.*
- Excluded (pre-2024): **8**
- New & in-window: **36**
- Bucket tally — A-web **11**, A-PDF **2**, B **3**, C **5**, D **15**

Clusters flagged (for Bill to merge into single event/deal/entity pages): **AfDB $10M digital-gov grant / digitisation project** (biometricupdate 202410 + techpoint.africa; the data-centre completion (telecompaper) is the same AfDB programme); **national interoperable payment switch** (two PayLogic releases — award Jan 2025 + go-live 2025).

## Excluded (pre-2024)

- [https://afi-global.org/news/comoros-lays-the-groundwork-for-its-first-ever-national-financial-inclusion-strategy](https://afi-global.org/news/comoros-lays-the-groundwork-for-its-first-ever-national-financial-inclusion-strategy) — AFI news on Comoros' first national financial inclusion strategy; dataset Year 2023 → produced pre-2024.
  - datasets=dpi; years=2023; supports 1 variable(s): Digital Pay / Pro-Poor Governance Mechanisms
- [https://digitalgovernmentcentral.com/e-government-development-in-comoros](https://digitalgovernmentcentral.com/e-government-development-in-comoros) — Unknown-quality e-gov site; dataset Year 2019 → pre-2024.
  - datasets=dpi; years=2019; supports 1 variable(s): Data Exchange / Strategic Framework
- [https://documents.worldbank.org/curated/en/108051618836340181/pdf/Disclosable-Version-of-the-ISR-Comoros-Social-Safety-Net-Project-P150754-Sequence-No-12.pdf](https://documents.worldbank.org/curated/en/108051618836340181/pdf/Disclosable-Version-of-the-ISR-Comoros-Social-Safety-Net-Project-P150754-Sequence-No-12.pdf) — World Bank Implementation Status Report, Social Safety Net Project; Year 2021 → pre-2024.
  - datasets=dpi; years=2021; supports 1 variable(s): Registries / Status
- [https://documents1.worldbank.org/curated/en/812791592801563444/pdf/Comoros-Payments-and-Settlement-Systems-Oversight-Policy-Framework.pdf](https://documents1.worldbank.org/curated/en/812791592801563444/pdf/Comoros-Payments-and-Settlement-Systems-Oversight-Policy-Framework.pdf) — WB Comoros Payments & Settlement Systems Oversight Policy Framework; most recent Year 2023, no newer signal → pre-2024.
  - datasets=dpi; years=2020,2023; supports 2 variable(s): Digital Pay / Central Bank Involvement in Governance; Digital Pay / Pro-Poor Governance Mechanisms
- [https://internews.org/wp-content/uploads/2023/11/ARISA-IEA-CHAPTER-5-Comoros.pdf](https://internews.org/wp-content/uploads/2023/11/ARISA-IEA-CHAPTER-5-Comoros.pdf) — Internews ARISA IEA Comoros chapter; URL path /2023/11/ → published Nov 2023, pre-2024.
  - datasets=dpi; years=2024; supports 1 variable(s): Data Exchange / Enabling Legislation
- [https://lawgratis.com/blog-detail/privacy-law-at-comoros](https://lawgratis.com/blog-detail/privacy-law-at-comoros) — lawgratis blog on Comoros privacy law; low-authority, dataset Year 2021 → pre-2024.
  - datasets=dpi; years=2021; supports 1 variable(s): Digital Id / Data Protection Act
- [https://migrants-refugees.va/fr/blog/country-profile/comores](https://migrants-refugees.va/fr/blog/country-profile/comores) — Vatican Migrants & Refugees Comoros country profile; Year 2018 → pre-2024 (tertiary profile).
  - datasets=dpi; years=2018; supports 1 variable(s): Digital Id / Electronic Database
- [https://www.uneca.org/stories/comoros-embraces-digital-innovation-to-boost-food-security-and-agricultural-development](https://www.uneca.org/stories/comoros-embraces-digital-innovation-to-boost-food-security-and-agricultural-development) — UNECA story on DIMAKOM digital-agriculture platform; dataset Year 2023, event 2022 → pre-2024.
  - datasets=dpi; years=2023; supports 1 variable(s): Data Exchange / Agriculture System Integration

## A-web · ingest (non-PDF) — fetched in Phase 2

- [https://alwatwan.net/societe/mohamed-ahamed-assoumani](https://alwatwan.net/societe/mohamed-ahamed-assoumani) — Al-Watwan (Comoros national daily), society section, on ID/Semlex vendor context; most recent Year 2024. NOTE: URL slug is a person name — may be a tag/author archive rather than one article; fetch will confirm.
  - datasets=dpi; years=2018,2024; supports 4 variable(s): Digital Id / Maintenance; Digital Id / Sustainability; Digital Id / Biometric Data Collection; Digital Id / Electronic Database
- [https://datareportal.com/reports/digital-2025-comoros](https://datareportal.com/reports/digital-2025-comoros) — DataReportal 'Digital 2025 Comoros' — country-specific dated reference report; Year 2025.
  - datasets=dpi; years=2025; supports 5 variable(s): ICT Infrastructure / Mobile Data Affordability; ICT Infrastructure / Internet Usage Rate; ICT Infrastructure / Mobile Phone Penetration; ICT Infrastructure / Smartphone Adoption; ICT Infrastructure / Basic Digital Literacy
- [https://pay-logic.com/paylogic-announces-the-go-live-of-the-comoross-national-interoperable-payment-switch](https://pay-logic.com/paylogic-announces-the-go-live-of-the-comoross-national-interoperable-payment-switch) — PayLogic press release — go-live of Comoros national interoperable payment switch; Year 2025. Primary vendor announcement of a real milestone. CLUSTER: national payment switch.
  - datasets=dpi; years=2025; supports 1 variable(s): Digital Pay / Digital Payment System Exists
- [https://pay-logic.com/paylogic-awarded-project-for-interoperable-digital-payment-switch-in-the-union-of-comoros](https://pay-logic.com/paylogic-awarded-project-for-interoperable-digital-payment-switch-in-the-union-of-comoros) — PayLogic press release — awarded the Comoros interoperable payment switch project (Jan 2025, under PADSF). Primary. CLUSTER: national payment switch.
  - datasets=dpi; years=2025; supports 1 variable(s): Data Exchange / Digital Payments Integration
- [https://techpoint.africa/news/comoros-gets-funding-from-afdb](https://techpoint.africa/news/comoros-gets-funding-from-afdb) — Techpoint Africa — Comoros gets AfDB funding for digital-gov programme; Years 2024/2025. Country-specific trade reporting. CLUSTER: AfDB $10M digital-gov grant.
  - datasets=datacentre,dpi; years=2024,2025; supports 2 variable(s): Data Exchange / Operational Status; Comoros Government Public Administration Data Centre / Moroni
- [https://www.afreximbank.com/central-bank-of-comoros-commencement-of-activities-for-the-implementation-of-papss-in-comoros](https://www.afreximbank.com/central-bank-of-comoros-commencement-of-activities-for-the-implementation-of-papss-in-comoros) — Afreximbank press release — Central Bank of Comoros begins PAPSS implementation; Year 2024. Primary, country-specific.
  - datasets=dpi; years=2024; supports 1 variable(s): Digital Pay / Cross-Border Payment Functionality
- [https://www.biometricupdate.com/202410/comoros-to-implement-digital-govt-program-with-10m-afdb-grant](https://www.biometricupdate.com/202410/comoros-to-implement-digital-govt-program-with-10m-afdb-grant) — BiometricUpdate (/202410/ = Oct 2024) — Comoros digital-gov programme with $10M AfDB grant. CLUSTER: AfDB $10M digital-gov grant.
  - datasets=datacentre,dpi; years=2024,2025; supports 10 variable(s): Data Exchange / Digital ID Integration; Data Exchange / Digital Payments Integration; Data Exchange / Implementation Roadmap; Data Exchange / AI/Analytics Capabilities; Data Exchange / Operational Status; Data Exchange / Urban-Rural Digital Divide …
- [https://www.comoresinfos.net/fini-les-allers-retours-a-moroni-ndzuani-va-produire-ses-propres-cartes-didentite](https://www.comoresinfos.net/fini-les-allers-retours-a-moroni-ndzuani-va-produire-ses-propres-cartes-didentite) — Comores Infos (local press) — Ndzuani to produce its own ID cards; most recent Year 2024. Country-specific local reporting.
  - datasets=dpi; years=2018,2024; supports 3 variable(s): Digital Id / Maintenance; Digital Id / Biometric Data Collection; Digital Id / Digital ID System Exists
- [https://www.elibrary.imf.org/view/journals/002/2024/005/article-A003-en.xml](https://www.elibrary.imf.org/view/journals/002/2024/005/article-A003-en.xml) — IMF eLibrary 2024 country-report article (Comoros); dated reference report. May be paywalled/thin — fetch will decide.
  - datasets=dpi; years=2024; supports 1 variable(s): ICT Infrastructure / Electricity Affordability
- [https://www.techhiveadvisory.africa/insights/review-of-the-comoros-data-protection-law](https://www.techhiveadvisory.africa/insights/review-of-the-comoros-data-protection-law) — TechHive Advisory analyst review of the Comoros Data Protection Law — analyst review of a specific instrument; Year 2024.
  - datasets=dpi; years=2021,2024; supports 10 variable(s): Data Exchange / Enabling Legislation; Data Exchange / Data Sovereignty Provisions; Digital Id / Individual Data Access; Digital Id / Data Sharing Rules; Digital Id / Data Protection Act; Digital Id / Data Protection Authority Oversight …
- [https://www.telecompaper.com/news/comoros-completes-construction-of-public-administration-data-centre--1536505](https://www.telecompaper.com/news/comoros-completes-construction-of-public-administration-data-centre--1536505) — Telecompaper — Comoros completes public-administration data-centre construction (May 2025). Country-specific trade reporting. CLUSTER: AfDB data centre. NOTE: Telecompaper often paywalled/thin — may skip at fetch.
  - datasets=datacentre; years=2025; supports 1 variable(s): Comoros Government Public Administration Data Centre / Moroni

## A-PDF · ingest (PDF) — Bill handles by hand (Phase 3)

- [https://documents1.worldbank.org/curated/en/099032025022513919/pdf/P177646-f783fd9a-adf4-4fb1-b930-2bfc48056999.pdf](https://documents1.worldbank.org/curated/en/099032025022513919/pdf/P177646-f783fd9a-adf4-4fb1-b930-2bfc48056999.pdf) — World Bank curated PDF (P177646); curated id 0990-3-2025-0225 encodes 2025-02-25 — in-window WB report on electrification/islands data. PDF → Phase-3 (Bill).
  - datasets=dpi; years=2023; supports 1 variable(s): ICT Infrastructure / Urban-Rural Electrification Gap
- [https://www.imf.org/-/media/files/publications/cr/2024/english/1comea2024001.pdf](https://www.imf.org/-/media/files/publications/cr/2024/english/1comea2024001.pdf) — IMF Country Report PDF (cr/2024/) — Comoros 2024 Article IV; in-window dated report. PDF → Phase-3 (Bill).
  - datasets=dpi; years=n/a; supports 1 variable(s): Registries / Status

## B · check first

- [http://comoresdroit.centerblog.net/1082-Les-operations-tout-azimut-de-biometrisation-](http://comoresdroit.centerblog.net/1082-Les-operations-tout-azimut-de-biometrisation-) — Comoros-law blog on a free blog host (centerblog.net); on-topic (biometric enrolment operations) but low-authority platform — human glance before use; dataset Year 2024.
  - datasets=dpi; years=2024; supports 1 variable(s): Digital Id / Civil Registration Integration
- [https://we.hse.ru/en/irs/cas/passkm](https://we.hse.ru/en/irs/cas/passkm) — HSE (Russia) research page cited for several data-exchange variables (DIMAKOM, e-Registre); relevance/quality unclear — human glance first; Years to 2024.
  - datasets=dpi; years=2019,2023,2024; supports 9 variable(s): Data Exchange / Agriculture System Integration; Data Exchange / Business Registration & Licensing Integration; Data Exchange / Civil Registration & Vital Statistics Integration; Data Exchange / Digital ID Integration; Data Exchange / Passport & Immigration Integration; Data Exchange / Tax & Revenue Integration …
- [https://www.comparitech.com/blog/vpn-privacy/sim-card-registration-laws](https://www.comparitech.com/blog/vpn-privacy/sim-card-registration-laws) — Comparitech global SIM-registration-laws survey — not country-specific (global roundup); Year 2024. Check first.
  - datasets=dpi; years=2024; supports 1 variable(s): Digital Id / SIM Card Registration Use

## C · lead only (do not cite)

- [https://connectfinancials.com/pdfs/Connect_Financials_KYC_Policy_.pdf](https://connectfinancials.com/pdfs/Connect_Financials_KYC_Policy_.pdf) — Company KYC policy PDF (Connect Financials); vendor document, not country reporting — lead only.
  - datasets=dpi; years=2024; supports 1 variable(s): Digital Id / Banking/Financial Services Use
- [https://en.wikipedia.org/wiki/List_of_national_identity_card_policies_by_country](https://en.wikipedia.org/wiki/List_of_national_identity_card_policies_by_country) — Wikipedia list article — tertiary, lead only.
  - datasets=dpi; years=2018,2024; supports 3 variable(s): Digital Id / Digital ID System Exists; Digital Id / Enrollment Eligibility Age; Digital Id / Enrollment Mandatory Status
- [https://usesmileid.com/countries/comoros](https://usesmileid.com/countries/comoros) — Smile ID vendor country page — vendor marketing, lead only.
  - datasets=dpi; years=2014,2018,2024; supports 6 variable(s): Digital Id / KYC Enablement; Digital Id / Legal Proof Status; Digital Id / Banking/Financial Services Use; Digital Id / Enrollment Eligibility Age; Digital Id / Enrollment Mandatory Status; Digital Id / Non-National Eligibility
- [https://www.familysearch.org/en/wiki/Comoros_Civil_Registration](https://www.familysearch.org/en/wiki/Comoros_Civil_Registration) — FamilySearch genealogy wiki — tertiary, lead only.
  - datasets=dpi; years=2024; supports 3 variable(s): Digital Id / Civil Registration Integration; Registries / Status; Registries / Scope
- [https://www.globalization-partners.com/globalpedia/comoros/subsidiary](https://www.globalization-partners.com/globalpedia/comoros/subsidiary) — Globalization Partners 'globalpedia' — commercial reference/marketing, lead only.
  - datasets=dpi; years=n/a; supports 1 variable(s): Registries / Status

## D · resource / entity (not a dated source)

- [https://dig.watch/countries/comoros](https://dig.watch/countries/comoros) — dig.watch Comoros country page — standing reference portal (resource entity).
  - datasets=dpi; years=2019,2023,2024,2025; supports 19 variable(s): Data Exchange / Civil Registration & Vital Statistics Integration; Data Exchange / Education System Integration; Data Exchange / Electoral Register Integration; Data Exchange / Employment Services Integration; Data Exchange / Health System Integration; Data Exchange / Justice System Integration …
- [https://dpimap.org/comoros](https://dpimap.org/comoros) — DPI Map Comoros country record — standing registry/database (resource entity).
  - datasets=dpi; years=2024; supports 7 variable(s): Digital Id / Digital Authentication Function; Digital Id / Government Portal Authentication; Digital Id / Individual Data Access; Digital Id / KYC Enablement; Digital Id / Judicial Oversight; Digital Id / Data Sharing Rules …
- [https://justice.gouv.km/texte/code-electoral](https://justice.gouv.km/texte/code-electoral) — Comoros Ministry of Justice — Electoral Code legal text; standing legal instrument (resource entity).
  - datasets=dpi; years=2014,2023; supports 4 variable(s): Digital Id / Legal Proof Status; Digital Id / Legal Framework; Registries / Status; Registries / National Id integration
- [https://justice.gouv.km/texte/decret-n14-137-pr-portant-promulgation-de-la-loi-n14-023-au-instituant-la-carte-didentite-comorienne-numerique](https://justice.gouv.km/texte/decret-n14-137-pr-portant-promulgation-de-la-loi-n14-023-au-instituant-la-carte-didentite-comorienne-numerique) — Comoros MoJ — Décret 14-137 promulgating Law 14-023 (biometric national ID card); standing legal instrument (resource entity).
  - datasets=dpi; years=2014,2024; supports 3 variable(s): Digital Id / Digital ID Specific Regulation; Digital Id / Legal Framework; Digital Id / Digital ID System Exists
- [https://km.ambafrance.org/Carte-Nationale-d-Identite](https://km.ambafrance.org/Carte-Nationale-d-Identite) — French Embassy in Comoros — national ID card info page; standing reference page (exempt from cutoff).
  - datasets=dpi; years=2018; supports 1 variable(s): Digital Id / Cost of Credential
- [https://publicadministration.un.org/egovkb/en-us/Data/Country-Information/id/38](https://publicadministration.un.org/egovkb/en-us/Data/Country-Information/id/38) — UN E-Government Knowledge Base — Comoros country data page; standing database (resource entity).
  - datasets=dpi; years=2024; supports 1 variable(s): ICT Infrastructure / E-Government Development
- [https://statbase.org/data/com-global-cybersecurity-index](https://statbase.org/data/com-global-cybersecurity-index) — Statbase/ITU Global Cybersecurity Index data page — standing data resource.
  - datasets=dpi; years=2024; supports 1 variable(s): ICT Infrastructure / National Cybersecurity Readiness
- [https://taxdo.com/resources/global-tax-id-validation-guide/comoros](https://taxdo.com/resources/global-tax-id-validation-guide/comoros) — taxdo global tax-ID validation guide, Comoros — standing reference resource.
  - datasets=dpi; years=n/a; supports 1 variable(s): Registries / Status
- [https://tradingeconomics.com/comoros/access-to-electricity-percent-of-population-wb-data.html](https://tradingeconomics.com/comoros/access-to-electricity-percent-of-population-wb-data.html) — Trading Economics indicator page (electricity access) — standing data resource.
  - datasets=dpi; years=2023; supports 1 variable(s): ICT Infrastructure / Electricity Access Rate
- [https://tradingeconomics.com/comoros/gni-per-capita-atlas-method-us-dollar-wb-data.html](https://tradingeconomics.com/comoros/gni-per-capita-atlas-method-us-dollar-wb-data.html) — Trading Economics indicator page (GNI per capita) — standing data resource.
  - datasets=dpi; years=2024; supports 1 variable(s): ICT Infrastructure / Electricity Affordability
- [https://www.ceicdata.com/en/comoros/population-and-urbanization-statistics/km-completeness-of-birth-registration](https://www.ceicdata.com/en/comoros/population-and-urbanization-statistics/km-completeness-of-birth-registration) — CEIC data page (birth-registration completeness) — standing data resource.
  - datasets=dpi; years=2012; supports 1 variable(s): Registries / Uptake
- [https://www.idea.int/data-tools/export?type=country_only&countryId=50&themeId=327&year=2017](https://www.idea.int/data-tools/export?type=country_only&countryId=50&themeId=327&year=2017) — International IDEA data-tools export endpoint — standing data resource.
  - datasets=dpi; years=2015,2023; supports 2 variable(s): Registries / Status; Registries / Uptake
- [https://www.mvola.km](https://www.mvola.km) — MVola official site homepage — standing entity homepage (organisation entity).
  - datasets=dpi; years=2025; supports 1 variable(s): Digital Pay / Person-to-Person (P2P) Payments
- [https://www.wipo.int/web-publications/global-innovation-index-2024/en/gii-2024-results.html](https://www.wipo.int/web-publications/global-innovation-index-2024/en/gii-2024-results.html) — WIPO Global Innovation Index 2024 results — multi-country reference flagship (cite, don't absorb) → resource.
  - datasets=dpi; years=n/a; supports 1 variable(s): ICT Infrastructure / Global Innovation Index Ranking
- [https://www.worldometers.info/electricity/comoros-electricity](https://www.worldometers.info/electricity/comoros-electricity) — Worldometers electricity data page — standing data resource.
  - datasets=dpi; years=2016; supports 1 variable(s): ICT Infrastructure / Renewable Energy Share of Generation

---

## Phase 2 run summary (fetch → /new-queue)

Fetched the 11 A-web URLs; **9 clips** placed in `/new-queue`, **2 skipped**.

**Clips placed (9):**
1. DataReportal — Digital 2025: Comoros (pub 2025-03-03)
2. PayLogic — go-live of the national interoperable payment switch (pub 2025-08-23)
3. PayLogic — awarded the Comoros switch project, PADSF tender (pub 2025-01-07)
4. Techpoint Africa — Comoros gets $10.5M AfDB data-centre loan (pub 2024-10-03)
5. BiometricUpdate — Comoros digital-gov programme, $10M AfDB grant (pub 2024-10-06)
6. Afreximbank — BCC begins PAPSS implementation (pub 2024-08-23)
7. Comores Infos — Ndzuani to print its own biometric ID cards; Genkey replaces Semlex from April (pub **2026-02-16**)
8. Tech Hive Advisory — Review of the Comoros Data Protection Law (pub 2025-07-23)
9. Telecompaper — public-administration data-centre construction completed, inauguration 19 May (pub 2025-05-15) — *short paywalled lede; distinct facts (ANADEN, Comores Cable, Tier 3, 44.4 Tb)*

**Skipped (2):**
- `alwatwan.net/societe/mohamed-ahamed-assoumani` — **fetch-fail** (CRAWL_NOT_FOUND on both attempts). Also a suspected tag/author archive rather than a single article.
- `elibrary.imf.org/.../2024/005/article-A003-en.xml` — **no body** (IMF eLibrary returned site navigation only, paywalled). Topic ("Oil & Gas SOEs in Comoros") is only tangential to DPI in any case.

### Date corrections vs dataset Year
- **Comores Infos (Ndzuani ID cards):** dataset Years 2018/2024, **true pub 2026-02-16** — much newer. Reports **Genkey replacing Semlex** as biometric-document producer from April, and decentralised card printing to Ndzuani (Anjouan). New thread not implied by the dataset.
- **PayLogic go-live:** pub 2025-08-23 (award was Jan 2025) — two distinct milestones of the same switch programme.
- **Techpoint / BiometricUpdate:** both Oct 2024, both citing the AfDB board approval of 1 Oct 2024.

### Merge-cluster flags (for Bill)
- **AfDB "Project to Support the Digitisation of the Comorian Economy"** — clips 4, 5 and 9 are the same programme: grant approval (Oct 2024) → data-centre completion (May 2025). The programme also spawns a data-protection authority and a digital payment system. Candidate for one project/event page with the data centre as a facility.
- **National interoperable payment switch** — clips 2 + 3 (PayLogic award Jan 2025 → go-live 2025), under PADSF / World Bank, with the BCC as counterparty. Merge into one deal/event page. Note the PAPSS work (clip 6) is a *separate* cross-border rail, not the domestic switch — keep distinct.

### New hub threads surfaced (no COM hub existed before this run)
Biometric ID (Law 14-023/AU of 2014; Semlex→Genkey transition 2026); domestic interoperable payment switch (PADSF/PayLogic) + PAPSS cross-border rail; AfDB digitisation project + public-administration data centre (ANADEN, Comores Cable); Data Protection Law 2021 + not-yet-operational National Authority; Comores Numérique 2028 strategy.
