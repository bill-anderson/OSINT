# GNB — Guinea-Bissau · dataset→wiki intake review

_Run 2026-07-16. Workflow: `country-ingest-workflow.md`. Phase 1 (assess) + Phase 2 (fetch A-web → `/new-queue`) complete._

## Header counts

- **Total distinct source URLs:** 56
- **Already held (hub):** 0 — **NO hub file exists** in `wiki/places/` → 0 held, whole DPI record new. This run gives Bill enough to **seed a new GNB hub**.
- **Excluded (pre-2024):** 7
- **New & in-window:** 49
- **Per-bucket:** A-web 10 · A-PDF 6 · B 3 · C 12 · D 18


## A-web · ingest (non-PDF) (10)

- [http://www.cne.gw/noticias/165-cne-apresenta-novo-cartao-biometrico](http://www.cne.gw/noticias/165-cne-apresenta-novo-cartao-biometrico) — 2025 CNE Guinea-Bissau presents new biometric card (official, PT)
- [https://www.biometricupdate.com/202506/guinea-bissau-deploys-efforts-to-digitize-birth-registration-national-id-systems](https://www.biometricupdate.com/202506/guinea-bissau-deploys-efforts-to-digitize-birth-registration-national-id-systems) — 2025-06 GNB digitizing birth registration & national ID
- [https://www.semlex.com/en/2026/02/11/semlex-guinee-bissau-renforce-lacces-a-lidentification-biometrique](https://www.semlex.com/en/2026/02/11/semlex-guinee-bissau-renforce-lacces-a-lidentification-biometrique) — 2026-02-11 Semlex GNB biometric ID (VENDOR-primary; mine/verify)
- [https://datareportal.com/reports/digital-2025-guinea-bissau](https://datareportal.com/reports/digital-2025-guinea-bissau) — DataReportal Digital 2025 Guinea-Bissau
- [https://dhis2.org/guinea-bissau-covid-surveillance](https://dhis2.org/guinea-bissau-covid-surveillance) — DHIS2 GNB COVID surveillance deployment (check date)
- [https://www.agenceecofin.com/actualites-numerique/2908-131059-deploiement-de-la-fibre-optique-la-guinee-bissau-veut-apprendre-du-tchad](https://www.agenceecofin.com/actualites-numerique/2908-131059-deploiement-de-la-fibre-optique-la-guinee-bissau-veut-apprendre-du-tchad) — Ecofin(FR) ~2025-08-29: GNB fibre-optic deployment, learning from Chad
- [https://www.undp.org/guinea-bissau/blog/e-justice-guinea-bissau-going-digital-can-improve-access-justice](https://www.undp.org/guinea-bissau/blog/e-justice-guinea-bissau-going-digital-can-improve-access-justice) — UNDP blog: e-justice in Guinea-Bissau (check date)
- [https://www.undp.org/guinea-bissau/projects/building-national-identification-system-supporting-ministry-justice-scanning-and-digitizing-civil-registry-books-guinea-bissau](https://www.undp.org/guinea-bissau/projects/building-national-identification-system-supporting-ministry-justice-scanning-and-digitizing-civil-registry-books-guinea-bissau) — UNDP: building national ID system, digitizing civil registry (check date)
- [https://unu.edu/egov/project/national-strategy-digital-transformation-guinea-bissau](https://unu.edu/egov/project/national-strategy-digital-transformation-guinea-bissau) — UNU-eGov national digital-transformation strategy project (check date)
- [https://unu.edu/egov/news/digital-transformation-project-guinea-bissau-egov-undp](https://unu.edu/egov/news/digital-transformation-project-guinea-bissau-egov-undp) — UNU-eGov/UNDP digital-transformation project news (~2025)

## A-PDF · ingest (PDF) (6)

- [https://www.imf.org/-/media/files/publications/hls/2024/english/hlsea2024015.pdf](https://www.imf.org/-/media/files/publications/hls/2024/english/hlsea2024015.pdf) — IMF 2024 high-level summary PDF
- [https://erc.undp.org/api/download?filePath=%2Fdocuments%2F12274%2Fmgmtresponse%2Fkeyaction%2Fdoc_149377668407782123PPM_NationalIdentificationSystem-FINAL.pdf](https://erc.undp.org/api/download?filePath=%2Fdocuments%2F12274%2Fmgmtresponse%2Fkeyaction%2Fdoc_149377668407782123PPM_NationalIdentificationSystem-FINAL.pdf) — UNDP ERC national ID system eval PDF (check date)
- [https://documents1.worldbank.org/curated/en/099111225204528049/pdf/P500567-9ae3b6c5-90fc-41aa-86c8-11caaadbdf26.pdf](https://documents1.worldbank.org/curated/en/099111225204528049/pdf/P500567-9ae3b6c5-90fc-41aa-86c8-11caaadbdf26.pdf) — WB curated PDF P500567 (~2025-11-12)
- [https://documents1.worldbank.org/curated/en/099021524143518031/pdf/P16067811d42bd0401beaf17918a568ea80.pdf](https://documents1.worldbank.org/curated/en/099021524143518031/pdf/P16067811d42bd0401beaf17918a568ea80.pdf) — WB curated PDF ~2024-02-15 (education)
- [https://thedocs.worldbank.org/en/doc/61714f214ed04bcd6e9623ad0e215897-0400012021/related/P177016084979202b08dd501a5690c82506.pdf](https://thedocs.worldbank.org/en/doc/61714f214ed04bcd6e9623ad0e215897-0400012021/related/P177016084979202b08dd501a5690c82506.pdf) — WB doc (financial/payments; check date)
- [https://openknowledge.worldbank.org/entities/publication/78c86ec6-a816-53dc-bd85-d99987515dcf](https://openknowledge.worldbank.org/entities/publication/78c86ec6-a816-53dc-bd85-d99987515dcf) — WB publication (DPI diagnostic; check date)

## B · check first (3)

- [https://bramston.associates/guinea-bissau-connects-to-west-african-power-grid-to-end-chronic-blackouts](https://bramston.associates/guinea-bissau-connects-to-west-african-power-grid-to-end-chronic-blackouts) — 2025 GNB connects to WAPP grid (off-core energy)
- [https://www.thecable.ng/to-boost-regional-integration-security-nigeria-launches-ecowas-biometric-id-card](https://www.thecable.ng/to-boost-regional-integration-security-nigeria-launches-ecowas-biometric-id-card) — ECOWAS biometric ID card (Nigeria-centric, regional) 2025
- [https://coingeek.com/digital-id-revolution-guinea-bissau-liberia-png-make-strides](https://coingeek.com/digital-id-revolution-guinea-bissau-liberia-png-make-strides) — Low-authority multi-country digital-ID roundup (GNB/LBR/PNG) 2025

## C · lead only (do not cite) (12)

- [https://remotepeople.com/countries/guinea-bissau/doing-business-in-guinea-bissau](https://remotepeople.com/countries/guinea-bissau/doing-business-in-guinea-bissau) — Business-guide aggregator
- [https://apif.finances.gouv.ci/images/blog/352/liste-des-participants-autorises-a-ouvrir-les-services-au-public.pdf](https://apif.finances.gouv.ci/images/blog/352/liste-des-participants-autorises-a-ouvrir-les-services-au-public.pdf) — Cote d Ivoire APIF payment-participants list (mis-attached)
- [https://www.blog.emurgo.africa/digital-id-and-did-projects-in-africa-i-telecom-companies](https://www.blog.emurgo.africa/digital-id-and-did-projects-in-africa-i-telecom-companies) — Emurgo blog on telecom digital-ID (2023)
- [https://online.flippingbook.com/view/574977573](https://online.flippingbook.com/view/574977573) — Flippingbook doc (innovation hubs, 2019)
- [https://techweez.com/2019/11/11/kenya-software-developer-communities-github](https://techweez.com/2019/11/11/kenya-software-developer-communities-github) — Kenya GitHub piece mis-attached to GNB row (2019)
- [https://www.occrp.org/en/investigation/multimillion-passport-deal-under-investigation-in-kyrgyzstan](https://www.occrp.org/en/investigation/multimillion-passport-deal-under-investigation-in-kyrgyzstan) — OCCRP Kyrgyzstan passport (not GNB; mis-attached)
- [https://usesmileid.com/countries/Guinea-Bissau](https://usesmileid.com/countries/Guinea-Bissau) — SmileID vendor country page
- [https://kolaking.substack.com/p/fg-launches-ecowas-biometric-id-card](https://kolaking.substack.com/p/fg-launches-ecowas-biometric-id-card) — Substack ECOWAS ID card
- [https://www.un.org/peacebuilding/content/Improving-community-trust-and-security-guinea-bissau%E2%80%99s-gabu-model-police-station](https://www.un.org/peacebuilding/content/Improving-community-trust-and-security-guinea-bissau%E2%80%99s-gabu-model-police-station) — UN peacebuilding story (Gabu police, off-core)
- [https://gocase.unodc.org/gocase/events/news141211.html](https://gocase.unodc.org/gocase/events/news141211.html) — UNODC event news
- [https://innovatetax.com/blog/guinea-bissaus-transition-to-vat-reform](https://innovatetax.com/blog/guinea-bissaus-transition-to-vat-reform) — Vendor blog on VAT reform (marginal)
- [https://en.wikipedia.org/wiki/List_of_national_identity_card_policies_by_country](https://en.wikipedia.org/wiki/List_of_national_identity_card_policies_by_country) — Wikipedia national-ID list

## D · resource / entity (not a dated source) (18)

- [https://www.bceao.int/sites/default/files/inline-files/List-of-electronic-money-issuing-institutions-as-of-september-30-2024.pdf](https://www.bceao.int/sites/default/files/inline-files/List-of-electronic-money-issuing-institutions-as-of-september-30-2024.pdf) — BCEAO/WAEMU regional central-bank pages
- [https://www.bceao.int/en/content/payment-systems-management](https://www.bceao.int/en/content/payment-systems-management) — BCEAO/WAEMU regional central-bank pages
- [https://www.bceao.int/fr/communique-presse/liste-des-participants-autorises-ouvrir-les-services-de-pi-spi-au-public-30-sept-2025](https://www.bceao.int/fr/communique-presse/liste-des-participants-autorises-ouvrir-les-services-de-pi-spi-au-public-30-sept-2025) — BCEAO/WAEMU regional central-bank pages
- [https://dataprotection.africa/guinea-bissau](https://dataprotection.africa/guinea-bissau) — Data Protection Africa country profile
- [https://archive.doingbusiness.org/content/dam/doingBusiness/country/g/guinea-bissau/GNB.pdf](https://archive.doingbusiness.org/content/dam/doingBusiness/country/g/guinea-bissau/GNB.pdf) — Doing Business archive
- [https://kontaktu.mef.gw](https://kontaktu.mef.gw) — GNB Ministry of Economy/Finance portal
- [https://pj.gw](https://pj.gw) — Policia Judiciaria GNB homepage
- [https://sirec.web.ua.pt](https://sirec.web.ua.pt) — SIREC research/registry portal
- [https://www.statista.com/statistics/1272954/price-for-mobile-data-in-guinea-bissau](https://www.statista.com/statistics/1272954/price-for-mobile-data-in-guinea-bissau) — Statista indicator
- [https://www.theglobaleconomy.com/Guinea-Bissau/Electricity_from_renewable_sources_kWh](https://www.theglobaleconomy.com/Guinea-Bissau/Electricity_from_renewable_sources_kWh) — TheGlobalEconomy indicator
- [https://tradingeconomics.com/guinea-bissau/access-to-electricity-percent-of-population-wb-data.html](https://tradingeconomics.com/guinea-bissau/access-to-electricity-percent-of-population-wb-data.html) — TradingEconomics indicator
- [https://publicadministration.un.org/egovkb/en-us/Data/Country-Information/id/71](https://publicadministration.un.org/egovkb/en-us/Data/Country-Information/id/71) — UN EGOV KB
- [https://www.iicba.unesco.org/en/guinea-bissau](https://www.iicba.unesco.org/en/guinea-bissau) — UNESCO IICBA country page
- [https://data.unicef.org/crvs/guinea-bissau](https://data.unicef.org/crvs/guinea-bissau) — UNICEF CRVS data
- [https://watra.org/guinea-bissau](https://watra.org/guinea-bissau) — WATRA country page
- [https://www.wipo.int/edocs/gii-ranking/2025/gn.pdf](https://www.wipo.int/edocs/gii-ranking/2025/gn.pdf) — WIPO GII ranking
- [https://data.worldbank.org/indicator/EG.ELC.ACCS.RU.ZS](https://data.worldbank.org/indicator/EG.ELC.ACCS.RU.ZS) — World Bank indicator
- [https://data.worldbank.org/indicator/SP.REG.BRTH.RU.ZS?locations=GW](https://data.worldbank.org/indicator/SP.REG.BRTH.RU.ZS?locations=GW) — World Bank indicator

## Excluded (pre-2024) (7)

- [https://id4africa.com/2015/presentations/22_Wayne_Fletcher.pdf](https://id4africa.com/2015/presentations/22_Wayne_Fletcher.pdf) — 2015 ID4Africa presentation
- [https://p4h.world/app/uploads/2023/02/GNB20-20Health20Sector20Diagnostic2020162020FINAL.x73677.pdf](https://p4h.world/app/uploads/2023/02/GNB20-20Health20Sector20Diagnostic2020162020FINAL.x73677.pdf) — 2016/2023 health sector diagnostic PDF
- [https://www.epdc.org/sites/default/files/documents/EPDC_NEP_2018_Guinea-Bissau.pdf](https://www.epdc.org/sites/default/files/documents/EPDC_NEP_2018_Guinea-Bissau.pdf) — 2018 EPDC education profile
- [https://www.se4allnetwork.org/news/living-transformation-guinea-bissau-attracts-investment-20-mw-solar-pv-power-station-and-mini](https://www.se4allnetwork.org/news/living-transformation-guinea-bissau-attracts-investment-20-mw-solar-pv-power-station-and-mini) — 2018 solar PV (off-core)
- [https://lawgratis.com/blog-detail/privacy-law-at-guinea-bissau](https://lawgratis.com/blog-detail/privacy-law-at-guinea-bissau) — 2023 lawgratis blog on privacy law
- [https://documents1.worldbank.org/curated/en/099061523115010183/pdf/P179627-b7cacceb-3c50-4061-8f7e-c52e69bb90e7.pdf](https://documents1.worldbank.org/curated/en/099061523115010183/pdf/P179627-b7cacceb-3c50-4061-8f7e-c52e69bb90e7.pdf) — WB curated PDF ~2023-06-15
- [https://documents1.worldbank.org/curated/en/294721561652896187/pdf/Guinea-Bissau-Service-Delivery-Indicators-Report-Health.pdf](https://documents1.worldbank.org/curated/en/294721561652896187/pdf/Guinea-Bissau-Service-Delivery-Indicators-Report-Health.pdf) — WB service-delivery-indicators health (~2019)

---

## Phase 2 run summary (fetch → `/new-queue`)

**7 clips placed** · 3 skipped.

**Skipped (all pre-2024 on fetch):**
- `cne.gw/noticias/165-cne-apresenta-novo-cartao-biometrico` — dataset Year 2025 but page is a **2018** article (biometric voter card for the 18 Nov **2018** legislative elections; PM Aristides Gomes) → pre-2024.
- `dhis2.org/guinea-bissau-covid-surveillance` — **2020-12** COVID surveillance deployment → pre-2024 (DHIS2 in GNB since 2011; note for hub background).
- `undp.org/guinea-bissau/blog/e-justice...` — **2023-03-03** → pre-2024 (SIGDAJ justice system; NOSI/Cape-Verde learning mission; note for hub background).

**Date corrections / notes:**
- UNU-EGOV news = **2025-02-04**: **ENTD.GW** (National Digital Transformation Strategy 2025-2030) launched **29 Jan 2025**; six strategic objectives / 55 interventions / ten pillars; PM Rui Duarte Barros; UNDP-funded; consultant Beatriz Lanza.
- Ecofin (FR) fibre = **2025-08-29** (folded, EN rendering): GNB seeks Chad's fibre experience; ACE submarine cable landed **Mar 2023**; Starlink approved **Apr 2025**; internet penetration 32.5% (2023, ITU); no national backbone yet.
- Biometric Update = **2025-06-10** (ID4Africa 2025 AGM): **SIREC** civil-registry system; ~46% under-5 birth reg; UNDP + UNICEF + Univ. of Aveiro; functional biometric national ID; ECOWAS **ENBIC** card operational.
- Semlex = **2026-02-11** (VENDOR-primary — flagged): Safim biometric ID production centre inaugurated **30 Jan 2026** (3rd in Biombo; 18 centres nationally). Mine/verify before ingest.
- DataReportal Digital 2025 GNB = 2025-03-03 (2.23m pop, 32.5% internet).

**Name-match guard:** positive on "bissau"; 0 cross-contamination in the A-web set. C-bucket contains items mis-attached or off-country (techweez=**Kenya** GitHub piece 2019; occrp=**Kyrgyzstan** passport; apif.finances.gouv.ci=**Côte d'Ivoire** BCEAO/WAEMU list) — flagged, not GNB-relevant.
**Seed a NEW hub** (`wiki/places/GNB.md`), threads: **ENTD.GW 2025-2030** (UNU-EGOV/UNDP); **civil registry / national ID** (SIREC, UNDP "Building National ID" + Swiss Confederation, Semlex biometric card centres, ECOWAS ENBIC); **connectivity** (ACE cable, Starlink, no national backbone; learning from Chad); **data protection** (D-bucket dataprotection.africa profile + lawgratis); **WARDIP** (GNB is phase-1 alongside Gambia + Mauritania — cross-link to the GMB/XWA hubs); **DHIS2 health** (since 2011); **e-justice** (SIGDAJ). A-PDF: WB P500567 (~2025-11), IMF 2024 HLS.
