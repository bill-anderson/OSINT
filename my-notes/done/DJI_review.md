# DJI — Djibouti · dataset→wiki intake review

Run date: 2026-07-15. Workflow: `country-ingest-workflow.md` (Assess → Fetch, autonomous).

## Header counts

- Total distinct source URLs: **74**
- Already held (from hub `wiki/places/DJI.md`): **0** — *a DJI hub exists and is fairly developed (cable/data-residency hub + AI/Smart-Nation), but it cites its sources by wiki-link TITLE (its one titled source is the 2026-07-13 WSIS piece, not in this candidate set). No candidate URL is an exact source the hub cites.*
- Excluded (pre-2024): **12**
- New & in-window: **62**
- Bucket tally — A-web **21**, A-PDF **2**, B **5**, C **7**, D **27**

**Hub-overlap flags (not held, but relate to existing hub threads):**
- `techafricanews` (29 Jan 2026, national AI strategy with UN support) is a **source for the hub's held Jan-2026 AI-strategy event** — attach to that thread rather than spawning a parallel one.
- `datareportal digital-2026-djibouti` is an **update** to the hub's DataReportal end-2025 connectivity baseline (~772k users, 65%) — revise the baseline, keep the prior 'as of' dated.

**Clusters flagged (multiple outlets / one event — merge into single event/deal/entity pages):**
- **Digital Code / digital-services law (2025):** Jones Day (Assembly approves, Jul 2025) + Ecofin (introduces Digital Code) + DataGuidance (law adopted). Jones Day + the code text are the primaries.
- **National / mobile digital ID (2025–26):** BiometricUpdate (biometric mobile ID, Feb 2026) + Ecofin (mobile-ID platform, ~Feb 2026) + WeAreTech (mobile-ID launch) + Tech Review Africa (national digital-ID project).
- **PAIX carrier-neutral data centre (2026):** SubTel Forum + W.Media (PAIX × Djibouti sovereign fund) + SubmarineNetworks. One facility/deal.
- **Wingu Tier-3 data centre (2024):** Data Center Dynamics + Wingu press release (presidential inauguration).
- **Visa national digital wallet:** IDTechWire + Ecofin (Visa signing — verify date; may be the 2023 signing).
- **Cybersecurity (2024–25):** WeAreTech (2024–2030 national strategy) + Ecofin (bill for a national cybersecurity authority).

## Excluded (pre-2024)

- [https://citizenshiprightsafrica.org/crc-combined-third-to-fifth-periodic-reports-submitted-by-djibouti](https://citizenshiprightsafrica.org/crc-combined-third-to-fifth-periodic-reports-submitted-by-djibouti) — CRC periodic reports (Djibouti); Year 2019 → pre-2024.
  - datasets=dpi; years=2019; supports 1 variable(s): Digital Id / Civil Registration Integration
- [https://ieg.worldbankgroup.org/sites/default/files/Data/clrr_djiboutify1418.pdf](https://ieg.worldbankgroup.org/sites/default/files/Data/clrr_djiboutify1418.pdf) — World Bank IEG country review FY14-18; Year 2019 → pre-2024.
  - datasets=dpi; years=2019; supports 1 variable(s): Digital Id / Social Services Use
- [https://lawgratis.com/blog-detail/consumer-law-djibouti](https://lawgratis.com/blog-detail/consumer-law-djibouti) — lawgratis blog on Djibouti consumer law; Year 2015 → pre-2024.
  - datasets=dpi; years=2015; supports 1 variable(s): Digital Pay / Consumer Protection Framework for Payments
- [https://migrantmoney.uncdf.org/wp-content/uploads/2023/05/Djibouti-Diagnostic-Report-ENG.pdf](https://migrantmoney.uncdf.org/wp-content/uploads/2023/05/Djibouti-Diagnostic-Report-ENG.pdf) — UNCDF MigrantMoney Djibouti Diagnostic Report; upload /2023/05/ → pre-2024.
  - datasets=dpi; years=2023; supports 3 variable(s): Digital Id / KYC Enablement; Digital Id / System Interoperability; Digital Id / Banking/Financial Services Use
- [https://migrantmoney.uncdf.org/wp-content/uploads/2023/05/Djibouti-Infrastructure-Assessment-Report-ENG.pdf](https://migrantmoney.uncdf.org/wp-content/uploads/2023/05/Djibouti-Infrastructure-Assessment-Report-ENG.pdf) — UNCDF MigrantMoney Djibouti Infrastructure Assessment; upload /2023/05/ → pre-2024.
  - datasets=dpi; years=2023; supports 2 variable(s): Digital Pay / Business-to-Business (B2B) Payments; Digital Pay / Refugee and Migrant Access
- [https://sociales.gouv.dj/uploads/Categorie/9b486a2fb64f519b7cbf155e82bf1c67.pdf](https://sociales.gouv.dj/uploads/Categorie/9b486a2fb64f519b7cbf155e82bf1c67.pdf) — Djibouti Ministry of Social Affairs PDF; upload path Year 2022 → pre-2024.
  - datasets=dpi; years=2022; supports 1 variable(s): Registries / Status
- [https://www.africanews.com/2016/04/06/djibouti-slashes-electricity-prices-in-a-bid-to-power-growth](https://www.africanews.com/2016/04/06/djibouti-slashes-electricity-prices-in-a-bid-to-power-growth) — Africanews — Djibouti slashes electricity prices; /2016/ → pre-2024.
  - datasets=dpi; years=2016; supports 1 variable(s): ICT Infrastructure / Electricity Affordability
- [https://www.ecoi.net/de/dokument/1393395.html](https://www.ecoi.net/de/dokument/1393395.html) — ecoi.net country-of-origin document (German); Year 2014 → pre-2024.
  - datasets=dpi; years=2014; supports 1 variable(s): Digital Id / Enrollment Mandatory Status
- [https://www.infoq.com/news/2022/09/aws-azure-middle-east](https://www.infoq.com/news/2022/09/aws-azure-middle-east) — InfoQ — AWS/Azure Middle East; /2022/09/ → pre-2024 (and not Djibouti-specific).
  - datasets=dpi; years=2024; supports 1 variable(s): ICT Infrastructure / Cloud Services Availability
- [https://www.itu.int/en/ITU-D/LDCs/Documents/2017/Country%20Profiles/Country%20Profile_Djibouti.pdf](https://www.itu.int/en/ITU-D/LDCs/Documents/2017/Country%20Profiles/Country%20Profile_Djibouti.pdf) — ITU LDC country profile (Djibouti), 2017/2016 data → pre-2024.
  - datasets=dpi; years=2016; supports 1 variable(s): ICT Infrastructure / International Internet Bandwidth
- [https://www.ppiaf.org/documents/3532](https://www.ppiaf.org/documents/3532) — PPIAF document 3532; Year 2017 → pre-2024.
  - datasets=dpi; years=2017; supports 1 variable(s): ICT Infrastructure / Off-Grid and Distributed Energy Policy
- [https://www.worldbank.org/en/news/press-release/2018/04/25/djibouti-launches-digital-transformation-to-improve-services-to-citizens](https://www.worldbank.org/en/news/press-release/2018/04/25/djibouti-launches-digital-transformation-to-improve-services-to-citizens) — World Bank press release; /2018/04/25/ → pre-2024 (dataset Year 2025 is wrong).
  - datasets=dpi; years=2025; supports 1 variable(s): Digital Id / Ministry of Finance Oversight

## A-web · ingest (non-PDF) — fetched in Phase 2

- [https://africanmediaagency.com/new-project-will-help-djibouti-enhance-public-ownership-and-develop-digital-services](https://africanmediaagency.com/new-project-will-help-djibouti-enhance-public-ownership-and-develop-digital-services) — African Media Agency wire — press release on a project to enhance public ownership and develop digital services; Year 2025. Primary announcement via PR wire.
  - datasets=dpi; years=2025; supports 2 variable(s): Digital Id / Ministry of Finance Oversight; Digital Id / Sustainability
- [https://datareportal.com/reports/digital-2026-djibouti](https://datareportal.com/reports/digital-2026-djibouti) — DataReportal 'Digital 2026: Djibouti' — country-specific dated report; UPDATE to the hub's DataReportal end-2025 baseline (~772k users, 65%).
  - datasets=dpi; years=2025; supports 2 variable(s): ICT Infrastructure / Internet Usage Rate; ICT Infrastructure / Mobile Phone Penetration
- [https://idtechwire.com/djibouti-partners-with-visa-to-develop-national-digital-wallet](https://idtechwire.com/djibouti-partners-with-visa-to-develop-national-digital-wallet) — IDTechWire — Djibouti partners with Visa on a national digital wallet; country-specific reporting. CLUSTER: Visa national wallet.
  - datasets=dpi; years=2024,2025; supports 4 variable(s): Data Exchange / Digital ID Integration; Data Exchange / Digital Payments Integration; Data Exchange / Universal Accessibility; Digital Id / Biometric Data Collection
- [https://subtelforum.com/paix-to-open-data-centre-in-djibouti](https://subtelforum.com/paix-to-open-data-centre-in-djibouti) — SubTel Forum — PAIX to open a data centre in Djibouti; Year 2026. CLUSTER: PAIX carrier-neutral data centre.
  - datasets=datacentre; years=2026; supports 1 variable(s): PAIX Djibouti Data Center / Djibouti City
- [https://techafricanews.com/2026/01/29/djibouti-develops-national-ai-strategy-with-un-support](https://techafricanews.com/2026/01/29/djibouti-develops-national-ai-strategy-with-un-support) — TechAfricaNews (29 Jan 2026) — Djibouti develops national AI strategy with UN support (ESCWA/UNESCO). RELATES TO HUB thread (AI strategy) — flag as source for the held Jan-2026 AI-strategy event.
  - datasets=dpi; years=2026; supports 1 variable(s): Data Exchange / AI/Analytics Capabilities
- [https://techreviewafrica.com/news/3953/djibouti-launches-national-digital-identity-project](https://techreviewafrica.com/news/3953/djibouti-launches-national-digital-identity-project) — Tech Review Africa — Djibouti launches national digital-identity project; Years 2025/2026. CLUSTER: national/mobile digital ID.
  - datasets=dpi; years=2025,2026; supports 4 variable(s): Digital Id / Digital Authentication Function; Digital Id / Legal Framework; Digital Id / Digital ID System Exists; Digital Id / Security Reviews
- [https://w.media/paix-partners-with-djiboutis-sovereign-fund-to-build-data-centers](https://w.media/paix-partners-with-djiboutis-sovereign-fund-to-build-data-centers) — W.Media (2026) — PAIX partners with Djibouti's sovereign fund to build data centres. CLUSTER: PAIX carrier-neutral data centre.
  - datasets=datacentre; years=2026; supports 1 variable(s): PAIX Djibouti Data Center / Djibouti City
- [https://www.biometricupdate.com/202602/djibouti-unveils-biometric-mobile-id-to-enhance-access-to-public-services](https://www.biometricupdate.com/202602/djibouti-unveils-biometric-mobile-id-to-enhance-access-to-public-services) — BiometricUpdate (/202602/ = Feb 2026) — Djibouti unveils biometric mobile ID. CLUSTER: national/mobile digital ID.
  - datasets=dpi; years=2026; supports 1 variable(s): Digital Id / Government Portal Authentication
- [https://www.datacenterdynamics.com/en/news/wingu-group-launches-data-center-and-cls-in-djibouti-tech-park](https://www.datacenterdynamics.com/en/news/wingu-group-launches-data-center-and-cls-in-djibouti-tech-park) — Data Center Dynamics — Wingu launches data centre + cable-landing station in Djibouti tech park; ~2024. CLUSTER: Wingu data centre.
  - datasets=datacentre,dpi; years=2012,2013,2024; supports 4 variable(s): ICT Infrastructure / Commercial Data Center Presence; Djibouti Data Center (DDC) / Djibouti City; Wingu Africa Data Center Djibouti (DJI01) / Djibouti City; TO7 Technology Park Wingu Tier III Data Center (DJI02) / Djibouti City
- [https://www.dataguidance.com/news/djibouti-innovative-digital-services-law-adopted](https://www.dataguidance.com/news/djibouti-innovative-digital-services-law-adopted) — DataGuidance (OneTrust) — Djibouti innovative digital-services law adopted; Year 2025. CLUSTER: Digital Code / digital-services law.
  - datasets=dpi; years=2025; supports 1 variable(s): Digital Id / Healthcare Access Use
- [https://www.ecofinagency.com/news-digital/0107-47508-djibouti-introduces-digital-code-to-structure-its-digital-ecosystem](https://www.ecofinagency.com/news-digital/0107-47508-djibouti-introduces-digital-code-to-structure-its-digital-ecosystem) — Ecofin — Djibouti introduces a Digital Code (id 47508, ~mid-2025). CLUSTER: Digital Code.
  - datasets=dpi; years=2025; supports 1 variable(s): Digital Pay / Data Privacy Legislation Coverage
- [https://www.ecofinagency.com/news-digital/1102-52796-djibouti-launches-mobile-id-platform-to-streamline-public-services](https://www.ecofinagency.com/news-digital/1102-52796-djibouti-launches-mobile-id-platform-to-streamline-public-services) — Ecofin — Djibouti launches mobile-ID platform (id 52796 → ~11 Feb 2026, beats stale dataset Year 2023). CLUSTER: national/mobile digital ID.
  - datasets=dpi; years=2023,2025,2026; supports 7 variable(s): Digital Id / Government Portal Authentication; Digital Id / KYC Enablement; Digital Id / Data Sharing Rules; Digital Id / Digital ID Specific Regulation; Digital Id / Maintenance; Digital Id / System Interoperability …
- [https://www.ecofinagency.com/news-digital/1211-50395-djibouti-advances-bill-to-create-national-cybersecurity-authority](https://www.ecofinagency.com/news-digital/1211-50395-djibouti-advances-bill-to-create-national-cybersecurity-authority) — Ecofin — Djibouti advances a bill to create a national cybersecurity authority (id 50395, ~late-2025). CLUSTER: cybersecurity.
  - datasets=dpi; years=2025; supports 1 variable(s): Data Exchange / Data Sovereignty Provisions
- [https://www.ecofinagency.com/news-digital/1812-51503-djibouti-begins-work-on-one-stop-digital-platform-to-modernize-relationship-with-businesses](https://www.ecofinagency.com/news-digital/1812-51503-djibouti-begins-work-on-one-stop-digital-platform-to-modernize-relationship-with-businesses) — Ecofin — Djibouti begins a one-stop digital platform for businesses (id 51503, ~Dec 2025). Country-specific reporting.
  - datasets=dpi; years=2025; supports 1 variable(s): Data Exchange / Business Registration & Licensing Integration
- [https://www.ecofinagency.com/news-digital/1909-48816-djibouti-signs-with-visa-on-plan-for-a-national-digital-wallet](https://www.ecofinagency.com/news-digital/1909-48816-djibouti-signs-with-visa-on-plan-for-a-national-digital-wallet) — Ecofin — Djibouti signs with Visa on a national digital wallet (id 48816; DDMM 1909; dataset Year 2023 — could be the original Sept-2023 signing). CLUSTER: Visa national wallet. VERIFY true date at fetch; skip if pre-2024.
  - datasets=dpi; years=2023; supports 1 variable(s): Digital Id / Banking/Financial Services Use
- [https://www.jonesday.com/en/insights/2025/07/national-assembly-of-the-republic-of-djibouti-approves-digital-code](https://www.jonesday.com/en/insights/2025/07/national-assembly-of-the-republic-of-djibouti-approves-digital-code) — Jones Day legal insight (Jul 2025) — Djibouti National Assembly approves the Digital Code; law-firm analyst review of a specific instrument. CLUSTER: Digital Code.
  - datasets=dpi; years=2025; supports 7 variable(s): Data Exchange / Enabling Legislation; Data Exchange / Data Sovereignty Provisions; Digital Id / Digital ID Specific Regulation; Digital Id / Data Protection Act; Digital Id / Legal Framework; Digital Id / Security Reviews …
- [https://www.submarinenetworks.com/en/stations/africa/djibouti/paix-to-construct-carrier-neutral-data-center-in-djibouti](https://www.submarinenetworks.com/en/stations/africa/djibouti/paix-to-construct-carrier-neutral-data-center-in-djibouti) — SubmarineNetworks — PAIX to construct a carrier-neutral data centre in Djibouti; Year 2026. CLUSTER: PAIX carrier-neutral data centre.
  - datasets=datacentre; years=2026; supports 1 variable(s): PAIX Djibouti Data Center / Djibouti City
- [https://www.techhiveadvisory.africa/insights/review-of-djiboutis-data-protection-law](https://www.techhiveadvisory.africa/insights/review-of-djiboutis-data-protection-law) — Tech Hive Advisory — review of Djibouti's data-protection law; analyst review of a specific instrument; Year 2025.
  - datasets=dpi; years=2025; supports 7 variable(s): Data Exchange / Data Sovereignty Provisions; Digital Id / Individual Data Access; Digital Id / Judicial Oversight; Digital Id / Data Sharing Rules; Digital Id / Data Protection Act; Digital Id / Data Protection Authority Oversight …
- [https://www.wearetech.africa/en/fils-uk/news/public-management/djibouti-unveils-2024-2030-national-cybersecurity-strategy](https://www.wearetech.africa/en/fils-uk/news/public-management/djibouti-unveils-2024-2030-national-cybersecurity-strategy) — WeAreTech — Djibouti unveils 2024–2030 national cybersecurity strategy; Year 2024. CLUSTER: cybersecurity.
  - datasets=dpi; years=2024; supports 1 variable(s): ICT Infrastructure / National Cybersecurity Readiness
- [https://www.wearetech.africa/en/fils-uk/news/tech/djibouti-officially-launches-mobile-id-digital-identity-platform](https://www.wearetech.africa/en/fils-uk/news/tech/djibouti-officially-launches-mobile-id-digital-identity-platform) — WeAreTech — Djibouti officially launches mobile-ID digital-identity platform; Years 2025/2026. CLUSTER: national/mobile digital ID.
  - datasets=dpi; years=2025,2026; supports 3 variable(s): Digital Id / Digital Authentication Function; Digital Id / Sustainability; Digital Id / Digital ID System Exists
- [https://www.wingu.africa/latest-news/djibouti-president-inaugurates-wingu-tier-3-carrier-neutral-data-centre](https://www.wingu.africa/latest-news/djibouti-president-inaugurates-wingu-tier-3-carrier-neutral-data-centre) — Wingu Africa press release — President inaugurates Wingu Tier-3 carrier-neutral data centre; Year 2024. Primary. CLUSTER: Wingu data centre.
  - datasets=datacentre; years=2024; supports 1 variable(s): TO7 Technology Park Wingu Tier III Data Center (DJI02) / Djibouti City

## A-PDF · ingest (PDF) — Bill handles by hand (Phase 3)

- [https://documents1.worldbank.org/curated/en/099020224094541999/pdf/P169482159291d0c91bc431aa3a05eaf578.pdf](https://documents1.worldbank.org/curated/en/099020224094541999/pdf/P169482159291d0c91bc431aa3a05eaf578.pdf) — World Bank curated PDF (P169482); curated id ~0990-020224 → ~2024-02, in-window WB project doc. PDF → Phase-3 (Bill).
  - datasets=dpi; years=2022,2025; supports 4 variable(s): Data Exchange / Digital Payments Integration; Data Exchange / Tax & Revenue Integration; Data Exchange / Enabling Legislation; Data Exchange / Operational Status
- [https://openknowledge.worldbank.org/bitstreams/29d0cd73-90f4-4866-b5fd-ad77373df646/download](https://openknowledge.worldbank.org/bitstreams/29d0cd73-90f4-4866-b5fd-ad77373df646/download) — World Bank Open Knowledge report (bitstream; 13 DPI variables); in-window (dataset to 2025). PDF → Phase-3 (Bill).
  - datasets=dpi; years=2022,2023,2024,2025; supports 13 variable(s): Data Exchange / Business Registration & Licensing Integration; Data Exchange / Digital ID Integration; Data Exchange / Electoral Register Integration; Data Exchange / Employment Services Integration; Data Exchange / Health System Integration; Data Exchange / Driver Licensing Integration …

## B · check first

- [https://african.business/2025/04/long-reads/djiboutis-energy-autonomy-is-a-realistic-and-achievable-goal](https://african.business/2025/04/long-reads/djiboutis-energy-autonomy-is-a-realistic-and-achievable-goal) — African Business (Apr 2025) long-read on Djibouti energy autonomy — quality outlet but topic is energy policy, marginal to digital governance; check relevance.
  - datasets=dpi; years=2025; supports 1 variable(s): ICT Infrastructure / Renewable Energy Share of Generation
- [https://coingeek.com/libya-expands-digital-payments-djibouti-launches-e-wallet](https://coingeek.com/libya-expands-digital-payments-djibouti-launches-e-wallet) — CoinGeek (crypto press) covering Libya + Djibouti e-wallet; low-authority, dual-country, redundant with better Visa-wallet sources; check first.
  - datasets=dpi; years=2025; supports 1 variable(s): Digital Pay / Person-to-Government (P2G) Payments
- [https://developingtelecoms.com/telecom-technology/financial-services/15938-digital-money-transfer-system-comes-to-djibouti-s-ports.html](https://developingtelecoms.com/telecom-technology/financial-services/15938-digital-money-transfer-system-comes-to-djibouti-s-ports.html) — Developing Telecoms — digital money-transfer at Djibouti ports; article id 15938 (low → likely older), date can't be pinned; check first.
  - datasets=dpi; years=2023,2025; supports 4 variable(s): Digital Pay / Revenue Collection; Digital Pay / Person-to-Business (P2B) Merchant Payments; Digital Pay / Person-to-Government (P2G) Payments; Digital Pay / Person-to-Person (P2P) Payments
- [https://projects.worldbank.org/en/results/2025/03/26/illuminating-lives-bringing-light-and-hope-to-djibouti-and-yemen](https://projects.worldbank.org/en/results/2025/03/26/illuminating-lives-bringing-light-and-hope-to-djibouti-and-yemen) — World Bank results story (Mar 2025) — off-grid electrification for Djibouti & Yemen; energy-access topic, marginal to digital; check relevance.
  - datasets=dpi; years=2022,2023; supports 2 variable(s): ICT Infrastructure / Electricity Access Rate; ICT Infrastructure / Urban-Rural Electrification Gap
- [https://www.operatorwatch.com/2024/08/djibouti-to-start-experimenting-with-5g.html](https://www.operatorwatch.com/2024/08/djibouti-to-start-experimenting-with-5g.html) — OperatorWatch blog (/2024/08/) — Djibouti to experiment with 5G; niche telecom blog, unknown quality; check first.
  - datasets=dpi; years=2021; supports 1 variable(s): ICT Infrastructure / 4G/LTE Population Coverage

## C · lead only (do not cite)

- [https://d4daccess.eu/en/podcast-making-interoperability-a-reality-in-djibouti](https://d4daccess.eu/en/podcast-making-interoperability-a-reality-in-djibouti) — D4D (EU) podcast episode page — multimedia, no article body; mine for leads.
  - datasets=dpi; years=2022,2025; supports 2 variable(s): Data Exchange / Civil Registration & Vital Statistics Integration; Data Exchange / Digital ID Integration
- [https://prepaid-data-sim-card.fandom.com/wiki/Registration_Policies_Per_Country](https://prepaid-data-sim-card.fandom.com/wiki/Registration_Policies_Per_Country) — Fandom wiki (SIM registration policies) — tertiary, lead only.
  - datasets=dpi; years=2023; supports 1 variable(s): Digital Id / SIM Card Registration Use
- [https://www.csm.tech/blog-details/navigating-the-digital-frontier-an-analysis-of-djiboutis-e-government-initiatives-and-obstacles](https://www.csm.tech/blog-details/navigating-the-digital-frontier-an-analysis-of-djiboutis-e-government-initiatives-and-obstacles) — CSM Tech vendor blog on Djibouti e-government — vendor marketing, lead only.
  - datasets=dpi; years=2022,2023,2024; supports 4 variable(s): Data Exchange / Tax & Revenue Integration; Data Exchange / Universal Accessibility; Data Exchange / Sub-National Participation; Data Exchange / Urban-Rural Digital Divide
- [https://www.ecoi.net/en/document/1394009.html](https://www.ecoi.net/en/document/1394009.html) — ecoi.net — reproduces a primary country-of-origin report; aggregator, mine for the underlying primary (date unclear, likely older).
  - datasets=dpi; years=2014,2016,2019,2026; supports 7 variable(s): Digital Id / Legal Proof Status; Digital Id / Maintenance; Digital Id / Electronic Database; Digital Id / Cost of Credential; Digital Id / Enrollment Eligibility Age; Digital Id / Non-National Eligibility …
- [https://www.hsb.nl/our-solutions/civil-id/social-register-djibouti](https://www.hsb.nl/our-solutions/civil-id/social-register-djibouti) — HSB (vendor) civil-ID / social-register Djibouti solution page — vendor marketing, lead only.
  - datasets=dpi; years=2019,2025; supports 3 variable(s): Digital Id / Biometric Data Collection; Digital Id / Electronic Database; Digital Id / Social Services Use
- [https://www.linkedin.com/pulse/bimonthly-update-privacy-africa-september-october-ul6yf](https://www.linkedin.com/pulse/bimonthly-update-privacy-africa-september-october-ul6yf) — LinkedIn Pulse privacy-Africa update — low-authority self-published, lead only.
  - datasets=dpi; years=2025; supports 1 variable(s): Digital Id / Data Protection Authority Oversight
- [https://www.wingu.africa/blogs/data-location-architecture-a-1tn-opportunity-from-djibouti](https://www.wingu.africa/blogs/data-location-architecture-a-1tn-opportunity-from-djibouti) — Wingu Africa company blog (data-location thought-leadership) — vendor blog, lead only.
  - datasets=dpi; years=2025; supports 1 variable(s): ICT Infrastructure / Data Localisation Requirements

## D · resource / entity (not a dated source)

- [http://www.djiboutidatacenter.com](http://www.djiboutidatacenter.com) — Djibouti Data Center homepage — standing entity site (organisation/resource entity).
  - datasets=datacentre; years=2013; supports 1 variable(s): Djibouti Data Center (DDC) / Djibouti City
- [https://aceproject.org/electoral-advice/CDCountry?set_language=en&topic=VR&country=DJ](https://aceproject.org/electoral-advice/CDCountry?set_language=en&topic=VR&country=DJ) — ACE Electoral Knowledge Network — Djibouti voter-registration country page; standing reference resource.
  - datasets=dpi; years=2025; supports 1 variable(s): Registries / Status
- [https://banque-centrale.dj](https://banque-centrale.dj) — Central Bank of Djibouti homepage — standing central-bank portal (organisation entity).
  - datasets=dpi; years=2024; supports 1 variable(s): Digital Pay / Independent Audits and Reviews
- [https://baxtel.com/data-center/wingu-africa-djibouti-2](https://baxtel.com/data-center/wingu-africa-djibouti-2) — Baxtel data-centre directory (Wingu Djibouti) — standing registry (resource entity).
  - datasets=datacentre; years=2024; supports 1 variable(s): TO7 Technology Park Wingu Tier III Data Center (DJI02) / Djibouti City
- [https://dco.org/council/djibouti](https://dco.org/council/djibouti) — Digital Cooperation Organization — Djibouti member page; standing org page (resource entity).
  - datasets=dpi; years=2022; supports 2 variable(s): Data Exchange / Education System Integration; Data Exchange / Strategic Framework
- [https://dig.watch/resource/djiboutis-digital-transformation-strategy](https://dig.watch/resource/djiboutis-digital-transformation-strategy) — dig.watch resource page — Djibouti digital-transformation strategy; standing reference (resource entity).
  - datasets=dpi; years=2022,2024,2026; supports 10 variable(s): Data Exchange / Agriculture System Integration; Data Exchange / Education System Integration; Data Exchange / Health System Integration; Data Exchange / Justice System Integration; Data Exchange / National Planning & Statistics Integration; Data Exchange / Social Protection Integration …
- [https://ega.ee/interoperability-djibouti](https://ega.ee/interoperability-djibouti) — e-Governance Academy (Estonia) — Djibouti interoperability project page; standing org/project page (resource entity).
  - datasets=dpi; years=2022; supports 2 variable(s): Data Exchange / Civil Registration & Vital Statistics Integration; Data Exchange / Operational Status
- [https://ega.ee/project/public-administration-modernisation-djibouti](https://ega.ee/project/public-administration-modernisation-djibouti) — e-Governance Academy — public-administration modernisation Djibouti project page; standing (resource entity).
  - datasets=dpi; years=2022,2023; supports 2 variable(s): Data Exchange / Passport & Immigration Integration; Data Exchange / Operational Status
- [https://en.ichei.org/en/partner/colleges/dyz/56.html](https://en.ichei.org/en/partner/colleges/dyz/56.html) — ICHEI (UNESCO higher-ed institute) partner-college directory page — standing directory; marginal.
  - datasets=dpi; years=2024; supports 1 variable(s): ICT Infrastructure / Tertiary ICT/STEM Education
- [https://govstack.global/showcase/digital-leaders-spotlight-djibouti](https://govstack.global/showcase/digital-leaders-spotlight-djibouti) — GovStack showcase — 'Digital Leaders Spotlight: Djibouti'; standing showcase page (resource entity).
  - datasets=dpi; years=2022,2024; supports 3 variable(s): Data Exchange / Justice System Integration; Data Exchange / Implementation Roadmap; Data Exchange / Strategic Framework
- [https://interieur.gouv.dj/direction-de-la-population-et-de-la-famille](https://interieur.gouv.dj/direction-de-la-population-et-de-la-famille) — Djibouti Ministry of Interior — Population & Family directorate page; standing government portal (resource entity).
  - datasets=dpi; years=2025; supports 3 variable(s): Registries / Status; Registries / Scope
- [https://new.afrilabs.com/index.php/hub_country/djibouti](https://new.afrilabs.com/index.php/hub_country/djibouti) — AfriLabs hub-country directory (Djibouti) — standing directory (resource entity).
  - datasets=dpi; years=2019; supports 1 variable(s): ICT Infrastructure / Technology and Innovation Hubs
- [https://numerique.gouv.dj/Articles/detailArticleAvancee/15](https://numerique.gouv.dj/Articles/detailArticleAvancee/15) — Djibouti Digital Economy ministry article (id 15) — cited across 2019–2026 dataset variables → standing strategy/reference page, not a dated news item; standing gov portal (resource entity).
  - datasets=dpi; years=2019,2023,2025,2026; supports 10 variable(s): Digital Id / Civil Registration Integration; Digital Id / Data Sharing Rules; Digital Id / Legal Framework; Digital Id / Biometric Data Collection; Digital Id / Electronic Database; Digital Id / Digital ID System Exists …
- [https://odpic.dj/presentation-du-registre-de-commerce-et-des-societes-rcs](https://odpic.dj/presentation-du-registre-de-commerce-et-des-societes-rcs) — ODPIC (Djibouti) — presentation of the Commercial & Companies Registry (RCS); standing government portal (resource entity).
  - datasets=dpi; years=2025; supports 1 variable(s): Registries / Status
- [https://partechpartners.com/news/2025-partech-africa-tech-vc-report-african-tech-funding-rebounds-to-us41b-driven-by-record-debt-activity-and-disciplined-equity-growth](https://partechpartners.com/news/2025-partech-africa-tech-vc-report-african-tech-funding-rebounds-to-us41b-driven-by-record-debt-activity-and-disciplined-equity-growth) — Partech 2025 Africa Tech VC report — continental funding flagship (multi-country, cite-don't-absorb) → resource.
  - datasets=dpi; years=2024; supports 1 variable(s): ICT Infrastructure / Tech Startup Ecosystem
- [https://publicadministration.un.org/egovkb/en-us/Data/Country-Information/id/49](https://publicadministration.un.org/egovkb/en-us/Data/Country-Information/id/49) — UN E-Government Knowledge Base — Djibouti country data page; standing database (resource entity).
  - datasets=dpi; years=2024; supports 1 variable(s): ICT Infrastructure / E-Government Development
- [https://tradingeconomics.com/djibouti/access-to-electricity-percent-of-population-wb-data.html](https://tradingeconomics.com/djibouti/access-to-electricity-percent-of-population-wb-data.html) — Trading Economics indicator page (electricity access) — standing data resource.
  - datasets=dpi; years=2023; supports 1 variable(s): ICT Infrastructure / Electricity Access Rate
- [https://www.africanenda.org/uploads/files/EN_SIIPS_Report_web.pdf](https://www.africanenda.org/uploads/files/EN_SIIPS_Report_web.pdf) — AfricaNenda SIIPS report (State of Inclusive Instant Payment Systems) — multi-country flagship (cite-don't-absorb) → resource.
  - datasets=dpi; years=2022,2024; supports 3 variable(s): Digital Pay / Central Bank Involvement in Governance; Digital Pay / Pro-Poor Governance Mechanisms; Digital Pay / Digital Payment System Exists
- [https://www.africanenda.org/uploads/files/siips_2024_executive_summary_en-2.pdf](https://www.africanenda.org/uploads/files/siips_2024_executive_summary_en-2.pdf) — AfricaNenda SIIPS 2024 executive summary — multi-country flagship → resource.
  - datasets=dpi; years=2024; supports 1 variable(s): Digital Pay / Digital Payment System Exists
- [https://www.ceicdata.com/en/djibouti/business-environment/dj-power-outages-in-firms-in-a-typical-month](https://www.ceicdata.com/en/djibouti/business-environment/dj-power-outages-in-firms-in-a-typical-month) — CEIC data page (power outages) — standing data resource.
  - datasets=dpi; years=2013; supports 1 variable(s): ICT Infrastructure / Grid Reliability (Power Outage Frequency)
- [https://www.datacentermap.com/djibouti/djibouti-city/djibouti-data-center-ddc](https://www.datacentermap.com/djibouti/djibouti-city/djibouti-data-center-ddc) — Data Center Map — Djibouti Data Center (DDC) record; standing registry (resource entity).
  - datasets=datacentre; years=2013; supports 1 variable(s): Djibouti Data Center (DDC) / Djibouti City
- [https://www.datacentermap.com/djibouti/djibouti-city/wingu-data-center-djibouti](https://www.datacentermap.com/djibouti/djibouti-city/wingu-data-center-djibouti) — Data Center Map — Wingu Djibouti record; standing registry (resource entity).
  - datasets=datacentre; years=2012; supports 1 variable(s): Wingu Africa Data Center Djibouti (DJI01) / Djibouti City
- [https://www.egouv.dj/sousmenu/sousmenu_selected_article/138/11/1](https://www.egouv.dj/sousmenu/sousmenu_selected_article/138/11/1) — Djibouti e-Gouv portal article page — standing government portal (resource entity).
  - datasets=dpi; years=2025; supports 1 variable(s): Registries / Status
- [https://www.identity-cards.net/record/djibouti.html](https://www.identity-cards.net/record/djibouti.html) — identity-cards.net catalogue record (Djibouti ID) — standing reference directory (resource entity).
  - datasets=dpi; years=2014,2016,2026; supports 3 variable(s): Digital Id / Legal Proof Status; Digital Id / Enrollment Mandatory Status; Digital Id / Population Coverage
- [https://www.newby-ventures.com/research/db/internet-exchange/967/9027](https://www.newby-ventures.com/research/db/internet-exchange/967/9027) — Newby Ventures IXP research database entry — standing registry (resource entity).
  - datasets=dpi; years=2024; supports 1 variable(s): ICT Infrastructure / Internet Exchange Point Presence
- [https://www.wingu.africa/markets/djibouti](https://www.wingu.africa/markets/djibouti) — Wingu Africa — Djibouti market page; standing entity page (resource/organisation entity).
  - datasets=datacentre; years=2012; supports 1 variable(s): Wingu Africa Data Center Djibouti (DJI01) / Djibouti City
- [https://www.wipo.int/web-publications/global-innovation-index-2024/en/gii-2024-results.html](https://www.wipo.int/web-publications/global-innovation-index-2024/en/gii-2024-results.html) — WIPO Global Innovation Index 2024 results — multi-country flagship (cite-don't-absorb) → resource.
  - datasets=dpi; years=2024; supports 1 variable(s): ICT Infrastructure / Global Innovation Index Ranking

---

## Phase 2 run summary (fetch → /new-queue)

Fetched the 21 A-web URLs; **18 clips** placed in `/new-queue`, **3 skipped**.

**Clips placed (18):**
- **Digital Code (2025):** Jones Day (Assembly approves, pub 2025-07-09) · Ecofin (introduces Digital Code, 2025-07-01)
- **Data-protection law:** Tech Hive Advisory (review, 2025-11-05) — 156-article DP law inside the Digital Code, CNDP authority
- **National / mobile digital ID (Feb 2026):** BiometricUpdate (2026-02-10) · Ecofin (2026-02-11) · WeAreTech (2026-02-10) · Tech Review Africa (2026-02-10) — Mobile ID launched 9 Feb 2026
- **Visa "Smart Wallet":** Ecofin (MoU signed 16 Sep 2025; pub 2025-09-19) · IDTechWire (2025-09-23; TECH5 biometric layer, Sep-2025 Visa mission)
- **PAIX carrier-neutral data centre:** SubTel Forum (2024-05-17) · W.Media (2024-05-15) · Submarine Networks (2024-05-16) — JV with Fonds Souverain de Djibouti, $50M, 50k sqft/5MW
- **Wingu Tier-3 data centre:** Wingu press release (2024-11-25) — TO7 Technology Park inauguration by President Guelleh
- **Cybersecurity:** Ecofin (bill for National Cybersecurity Authority, 2025-11-12) · WeAreTech (2024–2030 National Cybersecurity Strategy, 2024-12-02)
- **Other:** DataReportal Digital 2026 (2025-11-08) · TechAfricaNews national AI strategy (2026-01-29) · Ecofin G2B one-stop platform (2025-12-18)

**Skipped (3):**
- `dataguidance.com/.../djibouti-innovative-digital-services-law-adopted` — **no body** (login-walled; returned title only).
- `datacenterdynamics.com/.../wingu-group-launches-data-center-and-cls-in-djibouti-tech-park` — **fetch-fail** (CRAWL_LIVECRAWL_TIMEOUT ×2). Same Wingu event is covered by the Wingu press-release clip.
- `africanmediaagency.com/new-project-will-help-djibouti-...` — **fetch-fail** (CRAWL_NOT_FOUND ×2).

### Date corrections vs dataset Year
- **PAIX cluster:** dataset Year **2026** → true **May 2024** (the JV *announcement*; "first phase to open 2026" is a forward projection, not a completion). All three clips are May-2024 news.
- **Visa "Smart Wallet":** dataset Year **2023** → true **September 2025** (MoU signed 16 Sep 2025). Not a 2023 event.
- **Ecofin mobile-ID (id 52796):** dataset Year 2023 → true **11 Feb 2026** (id-based dating confirmed).
- Mobile-ID launch itself: **9 Feb 2026**; Digital Code adopted **30 June 2025**.

### Merge-cluster flags (for Bill)
- **Digital Code (Jun 2025):** Jones Day + Ecofin — Jones Day *drafted* the Code (and Benin's 2017 Code); the DP-law review (Tech Hive) treats the DP chapter. Make one instrument page (Digital Code) with the DP law + CNDP as linked sub-instrument/entity.
- **Mobile ID (Feb 2026):** 4 outlets, one launch event (9 Feb 2026, National Digital Identity Forum). One event/entity page; note biometric data stored solely by the Interior Ministry (data-sovereignty design). Ties to Visa Smart Wallet + TECH5.
- **Visa Smart Wallet (Sep 2025):** Ecofin + IDTechWire — one deal/entity (Visa + TECH5 MoU; USSD/inclusion caveats; 60% cash-reduction target).
- **PAIX data centre (May 2024):** 3 outlets, one JV (PAIX × Fonds Souverain de Djibouti, JIB1, $50M).
- **Wingu Tier-3 / TO7 Technology Park (Nov 2024):** Wingu PR (DCD skipped).
- **Cybersecurity:** 2024–2030 Strategy (Nov 2024, by "ANCS") vs the Nov-2025 bill creating the statutory "National Cybersecurity Authority (ANC)". **Reconcile ANCS vs ANC** — likely administrative precursor → statutory authority; date each.

### Hub relationship (a DJI hub already exists)
- **0 held** — the hub cites its sources by wiki-link title (its one titled source is the 2026-07-13 WSIS piece, not in this candidate set).
- **techafricanews AI strategy (29 Jan 2026)** is a **source for the hub's held Jan-2026 AI-strategy event** — note the lead ministry here is MENIDjib with UNESCO + UN-ESCWA (hub says ESCWA + UNESCO); attach to that thread.
- **datareportal digital-2026** is the actual source behind the hub's "DataReportal end-2025" baseline (616k mobile / 772k users / 65%) — it confirms rather than conflicts; keep as the cited source.
- New threads the hub does NOT yet cover: **Digital Code + DP law/CNDP**, **Mobile ID**, **Visa Smart Wallet + TECH5**, **PAIX & Wingu data centres** (the hub mentions "three data centres" generically), **National Cybersecurity Authority + 2024–2030 strategy**, **G2B one-stop platform**. Strong entity/instrument-page candidates: Digital Code, CNDP, Mobile ID, Smart Wallet (Visa/TECH5), PAIX Djibouti (JIB1), Wingu/TO7 Tech Park, ANC/ANCS.
