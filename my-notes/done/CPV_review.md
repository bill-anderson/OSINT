# CPV — Cabo Verde · dataset→wiki intake review

Run date: 2026-07-15. Workflow: `country-ingest-workflow.md` (Assess → Fetch, autonomous).

## Header counts

- Total distinct source URLs: **64**
- Already held (from hub `wiki/places/CPV.md`): **0** — *no CPV hub exists yet; per §1.3 coverage is empty, every candidate treated as new.*
- Excluded (pre-2024): **9**
- New & in-window: **55**
- Bucket tally — A-web **10**, A-PDF **4**, B **8**, C **9**, D **24**

Note: Cabo Verde is a digital-government frontrunner, so the D bucket is unusually large — many entries are standing **gov.cv** portals and NOSi/BCV/SISP/consular pages (Autentika SSO, CMDCV mobile key, CNI pages, PDEX, NOSi e-gov catalogue) that become **resource/organisation entities**, not dated sources. Several are strong candidates for entity pages (NOSi, BCV, SISP, CNI, Autentika/CMDCV, CNPD + Data Protection Law 133).

Clusters flagged: **TechPark / 'tech islands' expansion** (African Business $50M + LaunchBase $58M, both May 2025 — one initiative/deal page; the Mindelo DR data centre inaugurated May 2025 is part of the same TechPark story, see B-bucket developingtelecoms/weareinnovation).

## Excluded (pre-2024)

- [https://backend-ugpe.gov.cv/wp-content/uploads/2023/06/2023-07-10ToR_BlockChainPlatform-NOSI_FINAL.pdf](https://backend-ugpe.gov.cv/wp-content/uploads/2023/06/2023-07-10ToR_BlockChainPlatform-NOSI_FINAL.pdf) — UGPE (gov.cv) Terms of Reference — NOSI blockchain platform; filename 2023-07-10 → pre-2024.
  - datasets=dpi; years=2023,2024; supports 2 variable(s): Data Exchange / AI/Analytics Capabilities; Data Exchange / Data Sovereignty Provisions
- [https://dataprotection.africa/wp-content/uploads/2020/03/Cape-Verde-Factsheet-updated-20200331.pdf](https://dataprotection.africa/wp-content/uploads/2020/03/Cape-Verde-Factsheet-updated-20200331.pdf) — Data Protection Africa Cape Verde factsheet; filename updated 2020-03-31 → pre-2024.
  - datasets=dpi; years=2024; supports 2 variable(s): Digital Id / Data Protection Act; Digital Id / Data Protection Authority Oversight
- [https://documents1.worldbank.org/curated/en/099040723102029990/pdf/P1694820269f8a044087b1012089ee857d6.pdf](https://documents1.worldbank.org/curated/en/099040723102029990/pdf/P1694820269f8a044087b1012089ee857d6.pdf) — World Bank curated PDF (P16948, PDEX); curated id/dataset resolve to 2023 → pre-2024.
  - datasets=dpi; years=2023; supports 2 variable(s): Data Exchange / Operational Status; Data Exchange / Sub-National Participation
- [https://e.huawei.com/at/case-studies/global/2018/201807051343](https://e.huawei.com/at/case-studies/global/2018/201807051343) — Huawei case study (NOSi data centre), path /2018/ → pre-2024 (also vendor).
  - datasets=datacentre; years=2014; supports 1 variable(s): NOSi National Data Centre (TechPark CV Praia Campus) / Praia
- [https://mitgovlab.org/wp-content/uploads/2023/11/Gangamreddypalli_FinalReport.pdf](https://mitgovlab.org/wp-content/uploads/2023/11/Gangamreddypalli_FinalReport.pdf) — MIT GOV/LAB final report (CV digital ID/civil reg); upload path /2023/11/ → pre-2024.
  - datasets=dpi; years=2024; supports 5 variable(s): Digital Id / Civil Registration Integration; Digital Id / Maintenance; Digital Id / Biometric Data Collection; Digital Id / Electronic Database; Digital Id / Population Coverage
- [https://theconversation.com/cape-verdes-goal-is-100-renewable-energy-by-2025-why-it-may-just-do-it-85759](https://theconversation.com/cape-verdes-goal-is-100-renewable-energy-by-2025-why-it-may-just-do-it-85759) — The Conversation (article id 85759, 'by 2025') — Year 2017 → pre-2024.
  - datasets=dpi; years=2017; supports 1 variable(s): ICT Infrastructure / Off-Grid and Distributed Energy Policy
- [https://www.africanlawbusiness.com/expert-views/16871-cape-verde-makes-significant-changes-to-its-data-protection-law](https://www.africanlawbusiness.com/expert-views/16871-cape-verde-makes-significant-changes-to-its-data-protection-law) — African Law & Business expert view on the 2021 DP-law amendments; Year 2021 → pre-2024.
  - datasets=dpi; years=2021; supports 1 variable(s): ICT Infrastructure / Data Protection Legislation
- [https://www.mf.gov.cv/documents/20126/0/ToR_SIMple_Territory_Management.pdf/fe03f815-0452-ffd6-e948-2b00d5623dc3](https://www.mf.gov.cv/documents/20126/0/ToR_SIMple_Territory_Management.pdf/fe03f815-0452-ffd6-e948-2b00d5623dc3) — Ministry of Finance ToR — SIMple Territory Management; dataset Year 2023, no newer signal → pre-2024.
  - datasets=dpi; years=2023; supports 1 variable(s): Data Exchange / Operational Status
- [https://www.sisp.cv/docs/SISP%20ANNUAL%20REPORT%202020.pdf](https://www.sisp.cv/docs/SISP%20ANNUAL%20REPORT%202020.pdf) — SISP Annual Report 2020 — pre-2024.
  - datasets=dpi; years=2024; supports 2 variable(s): Digital Pay / Central Bank Involvement in Governance; Digital Pay / Public Performance Reporting

## A-web · ingest (non-PDF) — fetched in Phase 2

- [https://african.business/2025/05/technology-information/cabo-verdes-tech-islands-vision-backed-by-50m](https://african.business/2025/05/technology-information/cabo-verdes-tech-islands-vision-backed-by-50m) — African Business (May 2025) — Cabo Verde 'tech islands' vision backed by $50M. Country-specific reporting. CLUSTER: TechPark/tech-islands.
  - datasets=dpi; years=2025; supports 1 variable(s): ICT Infrastructure / Technology and Innovation Hubs
- [https://datareportal.com/reports/digital-2025-cabo-verde](https://datareportal.com/reports/digital-2025-cabo-verde) — DataReportal 'Digital 2025: Cabo Verde' — country-specific dated reference report; Year 2025.
  - datasets=dpi; years=2025; supports 2 variable(s): ICT Infrastructure / 4G/LTE Population Coverage; ICT Infrastructure / Mobile Phone Penetration
- [https://govinsider.asia/intl-en/article/60percent-of-vital-public-services-to-go-online-by-2026-cabo-verdes-digital-government-chief](https://govinsider.asia/intl-en/article/60percent-of-vital-public-services-to-go-online-by-2026-cabo-verdes-digital-government-chief) — GovInsider interview — Cabo Verde's digital-government chief on taking 60% of services online by 2026; country-specific reporting (recent, 'by 2026').
  - datasets=dpi; years=2016,2023,2024; supports 9 variable(s): Data Exchange / Digital ID Integration; Data Exchange / Justice System Integration; Data Exchange / Passport & Immigration Integration; Data Exchange / Strategic Framework; Data Exchange / AI/Analytics Capabilities; Data Exchange / Universal Accessibility …
- [https://launchbaseafrica.com/2025/05/16/cape-verdes-58m-tech-park-a-quiet-backdoor-into-african-and-eu-markets-with-zero-tax-and-fast-visas](https://launchbaseafrica.com/2025/05/16/cape-verdes-58m-tech-park-a-quiet-backdoor-into-african-and-eu-markets-with-zero-tax-and-fast-visas) — LaunchBase Africa (16 May 2025) — Cape Verde's $58M TechPark. Country-specific reporting. CLUSTER: TechPark/tech-islands.
  - datasets=datacentre; years=2025; supports 1 variable(s): NOSi Disaster Recovery Data Centre (TechPark CV Mindelo Campus) / Mindelo
- [https://mirandalawfirm.com/en/insights-knowledge/publications/alerts/new-legal-regime-applicable-to-the-cape-verdean-payment-system](https://mirandalawfirm.com/en/insights-knowledge/publications/alerts/new-legal-regime-applicable-to-the-cape-verdean-payment-system) — Miranda & Associados legal alert — new legal regime for the Cape Verdean payment system; law-firm analyst review of a specific instrument; Year 2024.
  - datasets=dpi; years=2024; supports 1 variable(s): Digital Pay / Central Bank Involvement in Governance
- [https://www.biometricupdate.com/202603/cabo-verde-central-african-republic-launch-digital-govt-platforms-to-streamline-service-access](https://www.biometricupdate.com/202603/cabo-verde-central-african-republic-launch-digital-govt-platforms-to-streamline-service-access) — BiometricUpdate (/202603/ = Mar 2026) — Cabo Verde (and CAR) launch digital-government platforms; CV-specific, fresh development.
  - datasets=dpi; years=2024; supports 1 variable(s): Digital Id / Government Portal Authentication
- [https://www.ecofinagency.com/news-digital/3110-50013-cape-verde-steps-up-cybersecurity-efforts-with-national-soc-incident-response-team](https://www.ecofinagency.com/news-digital/3110-50013-cape-verde-steps-up-cybersecurity-efforts-with-national-soc-incident-response-team) — Ecofin Agency — Cape Verde stands up a national SOC / CIRT; Ecofin id 50013 → ~late-2025 (beats stale dataset Year 2024). Country-specific reporting.
  - datasets=dpi; years=2024; supports 2 variable(s): ICT Infrastructure / National Cybersecurity Readiness; ICT Infrastructure / E-Government Development
- [https://www.ibanet.org/document?id=Digital-Regulations-in-the-Metaverse-Era-Cabo-Verde](https://www.ibanet.org/document?id=Digital-Regulations-in-the-Metaverse-Era-Cabo-Verde) — International Bar Association article — 'Digital Regulations in the Metaverse Era: Cabo Verde'; analyst piece on CV; Year 2024. May be members-only — fetch decides.
  - datasets=dpi; years=2024; supports 7 variable(s): Digital Id / Individual Data Access; Digital Id / KYC Enablement; Digital Id / Civil Registration Integration; Digital Id / Digital ID Specific Regulation; Digital Id / Legal Framework; Digital Id / Electronic Database …
- [https://www.inforpress.cv/en/article-6732](https://www.inforpress.cv/en/article-6732) — Inforpress (Cabo Verde national news agency) article — country-specific official reporting; Year 2024.
  - datasets=dpi; years=2024; supports 1 variable(s): Digital Id / Healthcare Access Use
- [https://www.worldbank.org/en/news/feature/2024/10/23/afw-digital-transformation-in-cabo-verde-the-new-horizon](https://www.worldbank.org/en/news/feature/2024/10/23/afw-digital-transformation-in-cabo-verde-the-new-horizon) — World Bank feature (23 Oct 2024) — 'Digital transformation in Cabo Verde: the new horizon'; country-specific WB reporting.
  - datasets=dpi; years=2024; supports 1 variable(s): Data Exchange / Public Transparency

## A-PDF · ingest (PDF) — Bill handles by hand (Phase 3)

- [https://backend-ugpe.gov.cv/wp-content/uploads/2025/12/109-ToR-National-Governance-Framework.pdf](https://backend-ugpe.gov.cv/wp-content/uploads/2025/12/109-ToR-National-Governance-Framework.pdf) — UGPE (gov.cv) Terms of Reference — National (digital) Governance Framework; upload path /2025/12/ → in-window. Official primary PDF → Phase-3 (Bill).
  - datasets=dpi; years=2023,2024; supports 4 variable(s): Data Exchange / Implementation Roadmap; Data Exchange / Strategic Framework; Data Exchange / Sub-National Participation; Digital Id / Ministry of Finance Oversight
- [https://documents1.worldbank.org/curated/en/099051325153531205/pdf/BOSIB-41bfcb95-dc83-4a0d-a467-a80e1e350f11.pdf](https://documents1.worldbank.org/curated/en/099051325153531205/pdf/BOSIB-41bfcb95-dc83-4a0d-a467-a80e1e350f11.pdf) — World Bank curated PDF (BOSIB); curated id 0990-051325 → 2025-05-13, in-window WB report (13 DPI variables). PDF → Phase-3 (Bill).
  - datasets=dpi; years=2021,2023,2024; supports 13 variable(s): Data Exchange / Digital Payments Integration; Data Exchange / Tax & Revenue Integration; Data Exchange / Enabling Legislation; Data Exchange / Implementation Roadmap; Data Exchange / Strategic Framework; Data Exchange / Operational Status …
- [https://www.mf.gov.cv/documents/20126/0/Financial+Audit+TOR+Digital+Project+Statistics+Projet+and+Health+Program+for+2025+2026+AND+2027.pdf/7f76e433-46ee-5ec8-7e9f-91fcc6a86051](https://www.mf.gov.cv/documents/20126/0/Financial+Audit+TOR+Digital+Project+Statistics+Projet+and+Health+Program+for+2025+2026+AND+2027.pdf/7f76e433-46ee-5ec8-7e9f-91fcc6a86051) — Ministry of Finance (gov.cv) financial-audit Terms of Reference for the Digital/Statistics/Health projects 2025-2027; in-window official PDF → Phase-3 (Bill).
  - datasets=dpi; years=2024; supports 1 variable(s): Digital Id / Security Reviews
- [https://www.sisp.cv/docs/SISP%20-%20ANNUAL%20REPORT2024.pdf](https://www.sisp.cv/docs/SISP%20-%20ANNUAL%20REPORT2024.pdf) — SISP (interbank operator) Annual Report 2024 — primary company report PDF, in-window → Phase-3 (Bill).
  - datasets=dpi; years=2024; supports 2 variable(s): Digital Pay / Central Bank Involvement in Governance; Digital Pay / Public Performance Reporting

## B · check first

- [https://afripoli.org/building-pandemic-resilience-in-ecowas-integrating-vaccine-certification-with-foundational-identity-systems](https://afripoli.org/building-pandemic-resilience-in-ecowas-integrating-vaccine-certification-with-foundational-identity-systems) — AfriPoli — ECOWAS-level vaccine-cert × foundational-ID piece; regional, not CV-specific. Check first; Year 2024.
  - datasets=dpi; years=2024; supports 1 variable(s): Digital Id / Cross-Border Recognition
- [https://developingtelecoms.com/telecom-business/telecom-investment-mergers/18446-tech-park-cape-verde-is-officially-launched.html](https://developingtelecoms.com/telecom-business/telecom-investment-mergers/18446-tech-park-cape-verde-is-officially-launched.html) — Developing Telecoms 'Tech Park Cape Verde officially launched' — title points to the original ~2013/14 launch (possibly pre-2024) but dataset also tags 2025; date can't be pinned at assessment → check first.
  - datasets=datacentre; years=2014,2025; supports 2 variable(s): NOSi National Data Centre (TechPark CV Praia Campus) / Praia; NOSi Disaster Recovery Data Centre (TechPark CV Mindelo Campus) / Mindelo
- [https://lbc-global.com/en/transformacao-do-ensino-em-cabo-verde-via-as-tic](https://lbc-global.com/en/transformacao-do-ensino-em-cabo-verde-via-as-tic) — LBC Global — ICT transformation of CV education; unknown-quality outlet, no clear date → check first.
  - datasets=dpi; years=n/a; supports 1 variable(s): ICT Infrastructure / Tertiary ICT/STEM Education
- [https://www.biometricupdate.com/202508/stakeholders-validate-strategy-on-digital-id-interoperability-in-west-africa](https://www.biometricupdate.com/202508/stakeholders-validate-strategy-on-digital-id-interoperability-in-west-africa) — BiometricUpdate (Aug 2025) — West Africa digital-ID interoperability strategy validation; regional/ECOWAS, not CV-specific. Check first.
  - datasets=dpi; years=2024; supports 1 variable(s): Digital Id / Cross-Border Recognition
- [https://www.caboverdeexpert.com/cabo-verde-digital-data-centers](https://www.caboverdeexpert.com/cabo-verde-digital-data-centers) — caboverdeexpert.com data-centres reference page — niche/unknown-quality site; check first (Years 2014/2025/2026).
  - datasets=datacentre,dpi; years=2014,2025,2026; supports 5 variable(s): ICT Infrastructure / Cloud Services Availability; ICT Infrastructure / Commercial Data Center Presence; ICT Infrastructure / Government Data Center / Cloud Strategy; NOSi National Data Centre (TechPark CV Praia Campus) / Praia; NOSi Disaster Recovery Data Centre (TechPark CV Mindelo Campus) / Mindelo
- [https://www.caboverdeexpert.com/cabo-verde-digital-operational-nucleus-for-the-information-society-nosi](https://www.caboverdeexpert.com/cabo-verde-digital-operational-nucleus-for-the-information-society-nosi) — caboverdeexpert.com NOSi profile page — niche/unknown-quality site; check first; Year 2024.
  - datasets=dpi; years=2024; supports 4 variable(s): Digital Id / Maintenance; Digital Id / Ministry of Finance Oversight; Digital Id / Sustainability; Digital Id / Security Reviews
- [https://www.comparitech.com/blog/vpn-privacy/sim-card-registration-laws](https://www.comparitech.com/blog/vpn-privacy/sim-card-registration-laws) — Comparitech global SIM-registration-laws roundup — not country-specific; Year 2024. Check first.
  - datasets=dpi; years=2024; supports 1 variable(s): Digital Id / SIM Card Registration Use
- [https://www.weareinnovation.global/is-cape-verde-africas-most-overlooked-tech-hub](https://www.weareinnovation.global/is-cape-verde-africas-most-overlooked-tech-hub) — We Are Innovation advocacy piece — 'is Cape Verde Africa's most overlooked tech hub'; opinion/advocacy outlet, country-specific but check first; Years 2024/2025.
  - datasets=dpi; years=2024,2025; supports 3 variable(s): Data Exchange / Urban-Rural Digital Divide; ICT Infrastructure / Tech Startup Ecosystem; ICT Infrastructure / Developer and Tech Community

## C · lead only (do not cite)

- [https://2interact.us/staging/independence-inclusion-cabo-verdes-social-security-journey](https://2interact.us/staging/independence-inclusion-cabo-verdes-social-security-journey) — 2Interact vendor case study on Cabo Verde social security (INPS); vendor marketing — lead only.
  - datasets=dpi; years=2024; supports 1 variable(s): Digital Id / Social Services Use
- [https://atlanticconvergence.app.swapcard.com/event/atlantic-convergence/exhibitor/RXhoaWJpdG9yXzE5NTExMTY=](https://atlanticconvergence.app.swapcard.com/event/atlantic-convergence/exhibitor/RXhoaWJpdG9yXzE5NTExMTY=) — Swapcard event exhibitor listing (Atlantic Convergence) for CV Telecom data centre — event marketing page, lead only.
  - datasets=datacentre; years=n/a; supports 1 variable(s): CV Telecom Carrier-Neutral Datacenter / Praia
- <https://en.wikipedia.org/wiki/Cart%C3%A3o_Nacional_de_Identifica%C3%A7%C3%A3o_(Cape_Verde> — Wikipedia — Cartão Nacional de Identificação (Cape Verde); tertiary, lead only.
  - datasets=dpi; years=2024; supports 3 variable(s): Digital Id / Digital Authentication Function; Digital Id / Biometric Data Collection; Digital Id / Digital ID System Exists
- [https://en.wikipedia.org/wiki/List_of_national_identity_card_policies_by_country](https://en.wikipedia.org/wiki/List_of_national_identity_card_policies_by_country) — Wikipedia list article — tertiary, lead only.
  - datasets=dpi; years=2024; supports 1 variable(s): Digital Id / Enrollment Mandatory Status
- [https://usesmileid.com/countries/cape](https://usesmileid.com/countries/cape) — Smile ID vendor country page (Cape Verde) — vendor marketing, lead only.
  - datasets=dpi; years=2024; supports 3 variable(s): Digital Id / KYC Enablement; Digital Id / Data Protection Authority Oversight; Digital Id / Banking/Financial Services Use
- [https://www.linkedin.com/pulse/cabo-verde-telecom-interconnects-de-cix-fostering-xnade](https://www.linkedin.com/pulse/cabo-verde-telecom-interconnects-de-cix-fostering-xnade) — LinkedIn Pulse self-published post (CV Telecom × DE-CIX) — low-authority, lead only.
  - datasets=datacentre; years=n/a; supports 1 variable(s): CV Telecom Carrier-Neutral Datacenter / Praia
- [https://www.transfi.com/blog/cape-verdes-payment-rails-how-they-work---sociedade-interbancaria-card-systems-digital-banking](https://www.transfi.com/blog/cape-verdes-payment-rails-how-they-work---sociedade-interbancaria-card-systems-digital-banking) — TransFi vendor blog on CV payment rails — vendor marketing, lead only.
  - datasets=dpi; years=2025; supports 1 variable(s): Digital Pay / Digital Payment System Exists
- [https://www.youtube.com/watch?v=OMxBRtxowPQ](https://www.youtube.com/watch?v=OMxBRtxowPQ) — YouTube video — tertiary, lead only.
  - datasets=dpi; years=2025; supports 1 variable(s): Digital Pay / Digital Payment System Exists
- [https://x.com/BusInsiderSSA/status/1771139441999884406](https://x.com/BusInsiderSSA/status/1771139441999884406) — X/Twitter post — tertiary, lead only.
  - datasets=dpi; years=2024; supports 1 variable(s): ICT Infrastructure / Electricity Affordability

## D · resource / entity (not a dated source)

- [https://a4ai.org/mobile-broadband-pricing-data](https://a4ai.org/mobile-broadband-pricing-data) — A4AI mobile-broadband pricing dataset — standing data resource (exempt from cutoff).
  - datasets=dpi; years=2017; supports 1 variable(s): ICT Infrastructure / Mobile Data Affordability
- [https://data.worldbank.org/indicator/EG.ELC.RNEW.ZS?locations=CV](https://data.worldbank.org/indicator/EG.ELC.RNEW.ZS?locations=CV) — World Bank indicator page (renewable electricity share) — standing data resource.
  - datasets=dpi; years=2021; supports 1 variable(s): ICT Infrastructure / Renewable Energy Share of Generation
- [https://espanol.enterprisesurveys.org/content/dam/enterprisesurveys/documents/country/Cabo-Verde-2024.pdf](https://espanol.enterprisesurveys.org/content/dam/enterprisesurveys/documents/country/Cabo-Verde-2024.pdf) — World Bank Enterprise Surveys Cabo Verde 2024 — reference dataset/flagship (cite, don't absorb) → resource.
  - datasets=dpi; years=2024; supports 1 variable(s): ICT Infrastructure / Grid Reliability (Power Outage Frequency)
- [https://fred.stlouisfed.org/series/ITNETUSERP2CPV](https://fred.stlouisfed.org/series/ITNETUSERP2CPV) — FRED (St Louis Fed) internet-usage series — standing data resource.
  - datasets=dpi; years=2023; supports 1 variable(s): ICT Infrastructure / Internet Usage Rate
- [https://nosi.cv/en/e-gov](https://nosi.cv/en/e-gov) — NOSi official e-gov page — standing government-entity portal (resource/organisation entity).
  - datasets=datacentre; years=2014; supports 1 variable(s): NOSi National Data Centre (TechPark CV Praia Campus) / Praia
- [https://portal-autentika.gov.cv/en/autentika](https://portal-autentika.gov.cv/en/autentika) — Autentika (national SSO) official page — standing government portal (resource entity).
  - datasets=dpi; years=2024; supports 5 variable(s): Digital Id / Digital Authentication Function; Digital Id / Government Portal Authentication; Digital Id / Individual Data Access; Digital Id / KYC Enablement; Digital Id / Non-National Eligibility
- [https://portal-autentika.gov.cv/en/cabo-verde-mobile-digital-key](https://portal-autentika.gov.cv/en/cabo-verde-mobile-digital-key) — Cabo Verde Mobile Digital Key (CMDCV) official page — standing government portal (resource entity).
  - datasets=dpi; years=2021,2023,2024; supports 6 variable(s): Data Exchange / Digital ID Integration; Data Exchange / Enabling Legislation; Digital Id / Digital Authentication Function; Digital Id / Government Portal Authentication; Digital Id / Digital ID Specific Regulation; Digital Id / Legal Framework
- [https://portalconsular.mnec.gov.cv/en/cartao-nacional-de-identificacao](https://portalconsular.mnec.gov.cv/en/cartao-nacional-de-identificacao) — MNEC consular portal — CNI (national ID) page; standing government portal (resource entity).
  - datasets=dpi; years=2024; supports 7 variable(s): Digital Id / Legal Proof Status; Digital Id / Legal Framework; Digital Id / Digital ID System Exists; Digital Id / Cost of Credential; Digital Id / Enrollment Eligibility Age; Digital Id / Enrollment Mandatory Status …
- [https://portalconsular.mnec.gov.cv/en/cni](https://portalconsular.mnec.gov.cv/en/cni) — MNEC consular portal — CNI page; standing government portal (resource entity).
  - datasets=dpi; years=2024; supports 1 variable(s): Digital Id / Cost of Credential
- [https://portalconsular.mnec.gov.cv/en/perguntas-frequentes](https://portalconsular.mnec.gov.cv/en/perguntas-frequentes) — MNEC consular portal — FAQ page; standing government portal (resource entity).
  - datasets=dpi; years=2024; supports 3 variable(s): Digital Id / Legal Proof Status; Digital Id / Enrollment Eligibility Age; Digital Id / Non-National Eligibility
- [https://tradingeconomics.com/cape-verde/access-to-electricity-rural-percent-of-rural-population-wb-data.html](https://tradingeconomics.com/cape-verde/access-to-electricity-rural-percent-of-rural-population-wb-data.html) — Trading Economics indicator page (rural electricity access) — standing data resource.
  - datasets=dpi; years=2023; supports 1 variable(s): ICT Infrastructure / Urban-Rural Electrification Gap
- [https://ugpe.gov.cv/en/projeto/projeto-de-informatizacao-xyz](https://ugpe.gov.cv/en/projeto/projeto-de-informatizacao-xyz) — UGPE (gov.cv) project page — standing government portal/project page (resource entity); URL slug looks like a placeholder.
  - datasets=dpi; years=2024; supports 3 variable(s): Digital Id / Ministry of Finance Oversight; Digital Id / Sustainability; Digital Id / Healthcare Access Use
- [https://www.bcv.cv/pt/SistemadePagamentos/Paginas/SistemadePagamentos.aspx](https://www.bcv.cv/pt/SistemadePagamentos/Paginas/SistemadePagamentos.aspx) — Banco de Cabo Verde (BCV) payment-systems page — standing central-bank portal (resource entity).
  - datasets=dpi; years=2024,2025; supports 3 variable(s): Digital Pay / Person-to-Business (P2B) Merchant Payments; Digital Pay / Central Bank Involvement in Governance; Digital Pay / Digital Payment System Exists
- [https://www.cnpd.cv/wp-content/uploads/2025/03/DATA-PROTECTION-Law-133.pdf](https://www.cnpd.cv/wp-content/uploads/2025/03/DATA-PROTECTION-Law-133.pdf) — CNPD-hosted PDF of the Data Protection Law (Law 133) — reference legal instrument (instrument entity).
  - datasets=dpi; years=2024; supports 3 variable(s): Digital Id / Data Sharing Rules; Digital Id / Data Protection Act; Digital Id / Data Protection Authority Oversight
- [https://www.datacentermap.com/c/nosi](https://www.datacentermap.com/c/nosi) — Data Center Map — NOSi facility record; standing registry (resource entity).
  - datasets=dpi; years=2023; supports 1 variable(s): Data Exchange / Data Sovereignty Provisions
- [https://www.datacentermap.com/ixp/cabo-verde-internet-exchange-point](https://www.datacentermap.com/ixp/cabo-verde-internet-exchange-point) — Data Center Map — Cabo Verde IXP (CVIXP) record; standing registry (resource entity).
  - datasets=dpi; years=2024; supports 1 variable(s): ICT Infrastructure / Internet Exchange Point Presence
- [https://www.dlapiperdataprotection.com/?t=law&c=CV](https://www.dlapiperdataprotection.com/?t=law&c=CV) — DLA Piper Data Protection Laws of the World — CV entry; standing reference tool (resource entity).
  - datasets=dpi; years=2001,2021,2023,2024; supports 5 variable(s): Data Exchange / Enabling Legislation; Data Exchange / Data Sovereignty Provisions; Digital Id / Data Sharing Rules; Digital Id / Data Protection Act; Digital Pay / Data Privacy Legislation Coverage
- [https://www.identity-cards.net/record/cabo-verde.html](https://www.identity-cards.net/record/cabo-verde.html) — identity-cards.net catalogue record for the CV ID card — standing reference directory (resource entity).
  - datasets=dpi; years=2024; supports 5 variable(s): Digital Id / Legal Proof Status; Digital Id / Biometric Data Collection; Digital Id / Cost of Credential; Digital Id / Enrollment Mandatory Status; Digital Id / Population Coverage
- [https://www.nosi.cv/en/solu%C3%A7%C3%B5es-egov](https://www.nosi.cv/en/solu%C3%A7%C3%B5es-egov) — NOSi e-gov solutions catalogue page — standing government-entity portal (resource entity); 26 dataset variables lean on it.
  - datasets=dpi; years=2016,2022,2023,2024; supports 26 variable(s): Data Exchange / Agriculture System Integration; Data Exchange / Business Registration & Licensing Integration; Data Exchange / Civil Registration & Vital Statistics Integration; Data Exchange / Digital ID Integration; Data Exchange / Education System Integration; Data Exchange / Electoral Register Integration …
- [https://www.opengovpartnership.org/members/cabo-verde/commitments/CV0004](https://www.opengovpartnership.org/members/cabo-verde/commitments/CV0004) — Open Government Partnership — Cabo Verde commitment CV0004; standing registry (resource entity).
  - datasets=dpi; years=2024; supports 1 variable(s): Data Exchange / Public Transparency
- [https://www.peeringdb.com/fac/13574](https://www.peeringdb.com/fac/13574) — PeeringDB facility record — standing registry (resource entity).
  - datasets=datacentre; years=n/a; supports 1 variable(s): CV Telecom Carrier-Neutral Datacenter / Praia
- [https://www.theglobaleconomy.com/Cape-Verde/Access_to_electricity](https://www.theglobaleconomy.com/Cape-Verde/Access_to_electricity) — TheGlobalEconomy indicator page (electricity access) — standing data resource.
  - datasets=dpi; years=2023; supports 1 variable(s): ICT Infrastructure / Electricity Access Rate
- [https://www.theglobaleconomy.com/Cape-Verde/Internet_bandwidth](https://www.theglobaleconomy.com/Cape-Verde/Internet_bandwidth) — TheGlobalEconomy indicator page (internet bandwidth) — standing data resource.
  - datasets=dpi; years=2016; supports 1 variable(s): ICT Infrastructure / International Internet Bandwidth
- [https://www.wipo.int/edocs/gii-ranking/2024/cv.pdf](https://www.wipo.int/edocs/gii-ranking/2024/cv.pdf) — WIPO Global Innovation Index 2024 — CV ranking sheet; multi-country flagship (cite, don't absorb) → resource.
  - datasets=dpi; years=2024; supports 1 variable(s): ICT Infrastructure / Global Innovation Index Ranking

---

## Phase 2 run summary (fetch → /new-queue)

Fetched the 10 A-web URLs; **9 clips** placed in `/new-queue`, **1 skipped**.

**Clips placed (9):**
1. African Business — Cabo Verde's 'tech islands' backed with $50m / TechPark CV (pub 2025-05-14)
2. DataReportal — Digital 2025: Cabo Verde (pub 2025-03-03)
3. GovInsider — NOSi chief: 60% of vital services online by 2026; three pillars, IGRP, WebLab (pub **2024**, year precision — no date on page)
4. LaunchBase Africa — Mindelo Technology Park opening, $58M/€51.85M (pub 2025-05-16)
5. BiometricUpdate — Cabo Verde launches **Gov.CV** unified portal (and CAR Dûnîa) (pub **2026-03-03**)
6. Ecofin Agency — Cape Verde stands up national SOC + CSIRT within RTPE (pub 2025-10-31)
7. IBA — Digital Regulations in the Metaverse Era: Cabo Verde (data-protection reference chapter) (pub **2024**, year precision — no date on page)
8. Inforpress — Health minister on SNS digitalisation: unique patient ID, e-prescriptions, 24 telemedicine units (pub **2025-12-18**)
9. World Bank — Digital Transformation in Cabo Verde: The New Horizon; Consular Portal success story (pub 2024-10-23)

**Skipped (1):**
- `mirandalawfirm.com/.../new-legal-regime-applicable-to-the-cape-verdean-payment-system` — **skipped (pre-2024)**. Page is dated **2018-12-26** (Legislative Decree 7/2018, in force 28 Dec 2018); the dataset's Year 2024 was wrong. True date is out of window.

### Date corrections vs dataset Year (all dataset Year 2024 unless noted)
- **Miranda payment-system alert:** → true **2018-12-26** (skipped pre-2024).
- **Inforpress health article-6732:** → true **2025-12-18** (unique patient ID / e-prescriptions / telemedicine).
- **BiometricUpdate Gov.CV:** → true **2026-03-03** (Gov.CV unified portal launch — fresh; distinct from the older Consular Portal).
- **Ecofin SOC/CSIRT:** → true **2025-10-31** (confirms Ecofin id 50013 ≈ late-2025, beats stale Year 2024).
- **GovInsider, IBA metaverse:** no on-page date → assigned year precision **2024**.

### Merge-cluster flags (for Bill)
- **TechPark CV / 'tech islands'** — clips 1 (African Business, $50M framing, Praia + São Vicente, unveiled ~13 May 2025), 4 (LaunchBase, **Mindelo** campus opening 6 May 2025, $58M) and the TechPark mentions in clip 9 (WB). One initiative/deal page. **Figure reconciliation:** AfDB grant **€45.5–45.59m** is consistent across sources; the "$50m" vs "$58m" gap is AfDB-portion vs **total project cost €51.85m** — not a contradiction, but worth stating dated ("AfDB €45.5m of a €51.85m total"). GDP-share ambition also stated two ways (digital economy 7%→25% in clip 4; ~5% now in clip 6 Ecofin) — date each.
- **Gov.CV unified portal (2026)** vs **Consular Portal (2019, mobile app 2023)** — related but DISTINCT milestones; don't conflate. Gov.CV is the new single gateway; the Consular Portal is the diaspora-services predecessor.

### New hub threads surfaced (no CPV hub existed before this run)
NOSi (state digital-gov agency, exports hosting to other African states) + IGRP open-source framework; CNI biometric national ID (Decree-Law 19/2014, launched 2018) + SNIAC + Autentika SSO + CMDCV mobile digital key; Data Protection Law 133/V/2001 (GDPR-mirroring, Africa's DP pioneer) + CNPD; TechPark CV / Special Economic Zone for Technologies + AfDB funding + Mindelo & Praia data centres; BCV/SISP payments (SICIL, SIGMA, Vinti4) + new payment-system legal regime; SNS health digitalisation (2025); national SOC/CSIRT (2025); Consular Portal / Digital Diaspora. Strong candidate **entity** pages: NOSi, BCV, SISP, CNPD, CNI, Autentika/CMDCV, TechPark CV.

### D-bucket note
CPV's D bucket is unusually large (24) because Cabo Verde runs many standing official portals — gov.cv (NOSi e-gov, Autentika, CMDCV, consular CNI pages, UGPE), BCV, CNPD (Data Protection Law 133 PDF), plus registries (PeeringDB, Data Center Map, OGP, DLA Piper, WIPO GII, Enterprise Surveys). These become resource/organisation/instrument entities at ingest, not dated sources.
