# Ghana (GHA) — dataset→wiki intake review

*Run: 2026-07-15. Workflow: `country-ingest-workflow.md` Phase 1 (assessment).*

## Header counts

- **Total distinct source URLs:** 144
- **Already held (hub):** 0 — `wiki/places/GHA.md` is a LARGE, `status: active` hub (Ghana Card, MTN $1.1bn, National AI Strategy, PAPSS–Onafriq, MoMo interoperability, Margins ID, .GH domain, etc.). As with ETH, it cites its **news stream by wiki-link title** (TechCabal, BiometricUpdate, RIA, Ecofin…), whereas this dataset's URLs are the underlying **primary/official/reference** sources (nia.gov.gh, bog.gov.gh, gra.gov.gh, GhIPSS, data-centre facility pages). No exact source match → **0 held**. Many candidates are the **source-behind** or an **earlier-milestone/update** of a held thread — kept and flagged `OVERLAP`/`CLUSTER` below (Bill dedupes at ingest).
- **Excluded (pre-2024):** 8
- **New & in-window:** 136

| Bucket | Count |
|---|---|
| Aweb | 22 |
| Apdf | 6 |
| B | 19 |
| C | 24 |
| D | 65 |
| **excluded (pre-2024)** | 8 |
| **held** | 0 |

### Context

GovTech-mature West Africa (parent XWA). Very large **D bucket (65)** — dozens of standing official portals (NIA/BoG/GRA/GhIPSS/BDR/NITA/Lands/EC/ORC), data-centre facility pages, and reference/registry sources. `africa-data-centres.csv` had 12 GHA rows (Accra is a dense data-centre market). `african-rural-digitalisation.csv` 4.

### Key new instrument to flag for the hub

- **Data Protection Act 2025** — a NEW law with a **data-localisation requirement**, replacing the Data Protection Act 2012 (Act 843). Only surfaced here via a DigitalPolicyAlert change-record (bucket D) + a related DPA event on local data-centre hosting; there is no dedicated A-web source in the dataset, so **flag it for a gap-fill search**. The hub does not yet carry the 2025 Act.

### Clusters / merge flags

- **Ghana-Card financial mandate:** BoG official (use of Ghana Card for all financial transactions) + Radio Tamale (mandatory for banking/digital) [+ BoG 2022 supervisory guidance, D]. One policy thread.
- **NIA registration/expansion:** BiometricUpdate 202505 (first-time requests online) + BiometricUpdate 202505 (new NIA board) + GBC (backlog cleared, instant card) + dpi.africa (7m under-15s + 3m diaspora). Ghana-Card/NIA operational thread. OVERLAP with held Ghana-Card items.
- **SIM–Ghana-Card linkage:** WeAreTech (SIM registration fully online Jun-2025) + BiometricUpdate 202509 (new SIM–digital-ID framework) + Ecofin 48548 (mandate biometric SIM links vs MoMo fraud). One thread.
- **Health–ID integration:** GhanaWeb (Ghana Card to replace NHIS card) + NHIA (Ghana Card the only card for healthcare). OVERLAP.
- **PAPSS–Onafriq:** FinTech Global (Jun-2025 launch) + trade.gov PAPSS update — OVERLAP with the held 2026-02 PAPSS–Onafriq naira rail; likely the earlier launch milestone.
- **Digital Realty ACR2 (Accra, Oct-2025):** Ministry of Communications (31 Oct 2025) + Ecofin 50093 [+ digitalrealty.com facility page, D]. One facility launch.
- **Data-centre buildout (Accra):** large D/C set — Digital Realty ACR2 (in-window, above), plus ADC ACC1 (vendor PR, C), PAIX 12MW (vendor PRs, C), Equinix AC1, MTN, NTT, Onix, K-Net, Agility Tema campus. Most facility news is pre-2024 or vendor PR; Surfline shutdown sits in B (DCD/GhanaWeb, date-check).
- **National Data Strategy:** Smart Africa + Team Europe (A-web). Distinct from the National AI Strategy (held).

### Date-check / caveats

- trade.gov CCG + PAPSS pages: use on-page 'last published' date (may be stale).
- MoGCSP LEAP '99th cycle' — cycle number implies recent (2024-25); confirm on fetch.
- Ecofin ids: 48548→~2025-09-09, 50093→~2025-11-04 (confirm on fetch).
- DatacenterDynamics fetches unreliably (Surfline, Agility items in B).
- Many BoG/GhIPSS payment PDFs (strategy plans, guidelines) are 2019-2022 instruments → bucketed D (standing), not dated news.

## A-web · ingest (non-PDF) — CC fetches in Phase 2  (22)

- [https://dpi.africa/national-id-system-yet-to-realize-full-potential](https://dpi.africa/national-id-system-yet-to-realize-full-potential)
  - dpi.africa analysis — Ghana national-ID system yet to realize full potential. Country-specific DPI analysis. OVERLAP with held Ghana-Card thread.
  - _Year 2024 · ds:dpi — Data Exchange / Business Registration & Licensing Integration; Data Exchange / Digital ID Integration; Data Exchange / Driver Licensing Integration (+7 more)_
- [https://www.trade.gov/country-commercial-guides/ghana-digital-economy](https://www.trade.gov/country-commercial-guides/ghana-digital-economy)
  - trade.gov Country Commercial Guide — Ghana digital economy. DATE-CHECK on-page 'last published' (CCG pages update).
  - _Year 2024 · ds:dpi — Data Exchange / Digital Payments Integration; Data Exchange / National Planning & Statistics Integration; Data Exchange / Public Transparency (+2 more)_
- [https://smartafrica.org/ghana-develops-its-national-data-strategy-in-collaboration-with-smart-africa-and-team-europe](https://smartafrica.org/ghana-develops-its-national-data-strategy-in-collaboration-with-smart-africa-and-team-europe)
  - Smart Africa — Ghana develops its National Data Strategy with Smart Africa + Team Europe. Country-specific, dated (2024).
  - _Year 2024 · ds:dpi — Data Exchange / Enabling Legislation; Data Exchange / Implementation Roadmap; Data Exchange / Strategic Framework_
- [https://radiotamaleonline.com/blog/2026/01/11/ghana-card-mandatory-for-banking-and-digital-transactions-bog](https://radiotamaleonline.com/blog/2026/01/11/ghana-card-mandatory-for-banking-and-digital-transactions-bog)
  - Radio Tamale, 2026-01-11 — Ghana Card mandatory for banking/digital transactions (BoG). CLUSTER: Ghana-Card financial mandate.
  - _Year 2025 · ds:dpi — Digital Id / Banking/Financial Services Use; Digital Id / Digital Authentication Function; Digital Id / KYC Enablement_
- [https://www.ghanaweb.com/GhanaHomePage/NewsArchive/Ghana-Card-to-replace-NHIS-Card-following-integration-of-the-digital-platforms-1104598](https://www.ghanaweb.com/GhanaHomePage/NewsArchive/Ghana-Card-to-replace-NHIS-Card-following-integration-of-the-digital-platforms-1104598)
  - GhanaWeb — Ghana Card to replace NHIS card after platform integration. Country-specific. OVERLAP health-ID.
  - _Year 2025 · ds:dpi — Digital Id / Civil Registration Integration; Digital Id / Government Portal Authentication; Digital Id / Healthcare Access Use (+1 more)_
- [https://www.biometricupdate.com/202505/ghana-takes-first-time-national-id-card-requests-online](https://www.biometricupdate.com/202505/ghana-takes-first-time-national-id-card-requests-online)
  - BiometricUpdate 202505 — Ghana takes first-time national-ID card requests online. CLUSTER: NIA online registration.
  - _Year 2025 · ds:dpi — Digital Id / Government Portal Authentication_
- [https://dpi.africa/nia-to-capture-7million-under-15-years-and-3-million-ghanaians-abroad-for-ghana-card](https://dpi.africa/nia-to-capture-7million-under-15-years-and-3-million-ghanaians-abroad-for-ghana-card)
  - dpi.africa — NIA to capture 7m under-15s + 3m diaspora Ghanaians for Ghana Card. Country-specific, dated. CLUSTER: NIA enrollment expansion.
  - _Year 2025 · ds:dpi — Digital Id / Civil Registration Integration; Digital Id / Enrollment Eligibility Age; Digital Id / Population Coverage (+1 more)_
- [https://www.biometricupdate.com/202505/ghanas-new-identification-authority-board-to-focus-on-public-trust-inclusive-service-delivery](https://www.biometricupdate.com/202505/ghanas-new-identification-authority-board-to-focus-on-public-trust-inclusive-service-delivery)
  - BiometricUpdate 202505 — Ghana's new NIA board to focus on public trust / inclusive delivery. Dated country news.
  - _Year 2025 · ds:dpi — Digital Id / Maintenance; Digital Id / Ministry of Finance Oversight_
- [https://www.gbcghanaonline.com/general/nia-clears-ghana-card-backlog-issues-instant-card-nationwide/2025](https://www.gbcghanaonline.com/general/nia-clears-ghana-card-backlog-issues-instant-card-nationwide/2025)
  - GBC Ghana Online, 2025 — NIA clears Ghana-Card backlog, issues instant card nationwide. National broadcaster.
  - _Year 2025 · ds:dpi — Digital Id / Banking/Financial Services Use; Digital Id / Digital ID System Exists; Digital Id / Population Coverage (+1 more)_
- [https://www.bog.gov.gh/news/use-of-ghana-card-for-all-financial-transactions](https://www.bog.gov.gh/news/use-of-ghana-card-for-all-financial-transactions)
  - Bank of Ghana (official) — use of Ghana Card for all financial transactions. CLUSTER: Ghana-Card financial mandate.
  - _Year 2025 · ds:dpi — Digital Id / Banking/Financial Services Use_
- [https://www.bbc.com/pidgin/articles/c3gxmx4yvjlo](https://www.bbc.com/pidgin/articles/c3gxmx4yvjlo)
  - BBC Pidgin — Ghana Card as travel document / cross-border recognition. Dated news.
  - _Year 2025 · ds:dpi — Digital Id / Cross-Border Recognition_
- [https://nhis.gov.gh/News/ghana-card-to-be-the-only-card-used-for-accessing-healthcare----nhia-chief-executive-5428](https://nhis.gov.gh/News/ghana-card-to-be-the-only-card-used-for-accessing-healthcare----nhia-chief-executive-5428)
  - NHIA (official) — Ghana Card to be the only card for accessing healthcare. Dated. OVERLAP health-ID.
  - _Year 2025 · ds:dpi — Digital Id / Healthcare Access Use_
- [https://www.wearetech.africa/en/fils-uk/news/public-management/ghana-s-sim-registration-goes-fully-online-from-june-2025](https://www.wearetech.africa/en/fils-uk/news/public-management/ghana-s-sim-registration-goes-fully-online-from-june-2025)
  - WeAreTech — Ghana SIM registration goes fully online from June 2025. CLUSTER: SIM–Ghana-Card linkage.
  - _Year 2025 · ds:dpi — Digital Id / SIM Card Registration Use_
- [https://www.biometricupdate.com/202509/ghana-plans-new-framework-for-sim-card-digital-id-linkage](https://www.biometricupdate.com/202509/ghana-plans-new-framework-for-sim-card-digital-id-linkage)
  - BiometricUpdate 202509 — Ghana plans new framework for SIM–digital-ID linkage. CLUSTER: SIM linkage.
  - _Year 2025 · ds:dpi — Digital Id / SIM Card Registration Use_
- [https://www.ecofinagency.com/news-digital/0909-48548-ghana-to-mandate-biometric-sim-links-in-bid-to-curb-mobile-money-fraud](https://www.ecofinagency.com/news-digital/0909-48548-ghana-to-mandate-biometric-sim-links-in-bid-to-curb-mobile-money-fraud)
  - Ecofin (id→~2025-09-09) — Ghana to mandate biometric SIM links to curb mobile-money fraud. CLUSTER: SIM linkage.
  - _Year 2025 · ds:dpi — Digital Id / SIM Card Registration Use_
- [https://www.trade.gov/market-intelligence/ghana-pan-african-payments-settlement-system-papss-update](https://www.trade.gov/market-intelligence/ghana-pan-african-payments-settlement-system-papss-update)
  - trade.gov market intelligence — Ghana PAPSS update. DATE-CHECK on-page date. OVERLAP PAPSS.
  - _Year 2023 · ds:dpi — Digital Pay / Cross-Border Payment Functionality_
- [https://fintech.global/2025/06/23/onafriq-and-papss-launch-cross-border-payments-in-ghana](https://fintech.global/2025/06/23/onafriq-and-papss-launch-cross-border-payments-in-ghana)
  - FinTech Global, 2025-06-23 — Onafriq & PAPSS launch cross-border payments in Ghana. OVERLAP with held PAPSS-Onafriq (Feb-2026) — likely earlier milestone.
  - _Year 2023 · ds:dpi — Digital Pay / Cross-Border Payment Functionality_
- [https://www.mogcsp.gov.gh/government-begins-99th-cycle-of-leap-cash-grant-payments](https://www.mogcsp.gov.gh/government-begins-99th-cycle-of-leap-cash-grant-payments)
  - MoGCSP (official) — govt begins 99th cycle of LEAP cash-grant payments. G2P digitization. DATE-CHECK (cycle number implies recent).
  - _Year 2023 · ds:dpi — Digital Pay / Government Payment Digitization; Digital Pay / Government-to-Person (G2P) Payments_
- [https://www.gsma.com/newsroom/press-release/new-gsma-report-launches-at-digital-africa-summit-ghana-revealing-digital-transformation-could-add-20-billion-to-the-country](https://www.gsma.com/newsroom/press-release/new-gsma-report-launches-at-digital-africa-summit-ghana-revealing-digital-transformation-could-add-20-billion-to-the-country)
  - GSMA press release (Digital Africa Summit Ghana) — digital transformation could add $20bn. Dated country report launch (2024).
  - _Year 2024 · ds:dpi — ICT Infrastructure / Smartphone Adoption_
- [https://www.unesco.org/en/articles/unesco-signs-agreement-ghana-new-international-centre-excellence-engineering-innovation](https://www.unesco.org/en/articles/unesco-signs-agreement-ghana-new-international-centre-excellence-engineering-innovation)
  - UNESCO — signs agreement with Ghana for International Centre of Excellence for Engineering/Innovation. Dated, country-specific (2024).
  - _Year 2024 · ds:dpi — ICT Infrastructure / Tertiary ICT/STEM Education_
- [https://moc.gov.gh/2025/10/31/digital-realty-opens-state-of-the-art-acr2-data-centre-in-accra](https://moc.gov.gh/2025/10/31/digital-realty-opens-state-of-the-art-acr2-data-centre-in-accra)
  - Ministry of Communications (official), 2025-10-31 — Digital Realty opens ACR2 data centre in Accra. CLUSTER: ACR2.
  - _Year 2025 · ds:dc — Digital Realty ACR2 / Accra_
- [https://www.ecofinagency.com/news-digital/0411-50093-digital-realty-expands-african-footprint-with-new-data-center-in-ghana](https://www.ecofinagency.com/news-digital/0411-50093-digital-realty-expands-african-footprint-with-new-data-center-in-ghana)
  - Ecofin (id→~2025-11-04) — Digital Realty expands African footprint with new Ghana data centre. CLUSTER: ACR2.
  - _Year 2025 · ds:dc — Digital Realty ACR2 / Accra_

## A-PDF · ingest (PDF) — Bill handles by hand  (6)

- [https://dial.global/wp-content/uploads/2024/08/Ghana-final.pdf](https://dial.global/wp-content/uploads/2024/08/Ghana-final.pdf)
  - DIAL Ghana DPI country assessment PDF (2024-08) — dated country report.
  - _Year 2024 · ds:dpi — Data Exchange / AI/Analytics Capabilities; Data Exchange / Agriculture System Integration; Data Exchange / Business Registration & Licensing Integration (+15 more)_
- [https://www.hsrcgh.org/wp-content/uploads/2024/09/Integration-and-Interoperability-of-National-Identification-Systems.pdf](https://www.hsrcgh.org/wp-content/uploads/2024/09/Integration-and-Interoperability-of-National-Identification-Systems.pdf)
  - HSRC Ghana research PDF (2024-09) — integration/interoperability of national ID systems. Dated country research.
  - _Year 2024/2025 · ds:dpi — Data Exchange / Data Sovereignty Provisions; Data Exchange / Digital ID Integration; Data Exchange / Electoral Register Integration (+3 more)_
- [https://www.bog.gov.gh/wp-content/uploads/2024/09/Payment-Systems-Oversight-Annual-Report-2023.pdf](https://www.bog.gov.gh/wp-content/uploads/2024/09/Payment-Systems-Oversight-Annual-Report-2023.pdf)
  - Bank of Ghana Payment Systems Oversight Annual Report 2023 (uploaded 2024-09) — official stats (PDF).
  - _Year 2015/2018/2023 · ds:dpi — Digital Pay / Active Digital Payment Users; Digital Pay / Business-to-Business (B2B) Payments; Digital Pay / Central Bank Involvement in Governance (+5 more)_
- [https://nca.org.gh/wp-content/uploads/2025/05/Q2-2024-Quarterly-Statistical-Bulletin-Ver5.1.pdf](https://nca.org.gh/wp-content/uploads/2025/05/Q2-2024-Quarterly-Statistical-Bulletin-Ver5.1.pdf)
  - National Communications Authority Q2-2024 Quarterly Statistical Bulletin (uploaded 2025-05) — official telecom stats (PDF).
  - _Year 2024 · ds:dpi — ICT Infrastructure / Mobile Phone Penetration_
- [https://lc.gov.gh/landconference/materials/NLC-Fit-for-purpose%20cadastral.pdf](https://lc.gov.gh/landconference/materials/NLC-Fit-for-purpose%20cadastral.pdf)
  - Lands Commission / National Land Conference 'fit-for-purpose cadastral' material (2025) — dated country material (PDF).
  - _Year 2025 · ds:dpi — Registries / Separate cadastral register; Registries / Status_
- [https://extranet.who.int/cpcd/sites/default/files/public_file_repository/gha_ghana_policy-and-strategy-on-digital-health_2023-2027.pdf](https://extranet.who.int/cpcd/sites/default/files/public_file_repository/gha_ghana_policy-and-strategy-on-digital-health_2023-2027.pdf)
  - Ghana Policy & Strategy on Digital Health 2023-2027 (WHO repository) — national strategy instrument (PDF).
  - _ds:rural — Clinic_

## B · check first  (19)

- [https://www.eaglebadger.com/post/digital-id-systems-lessons-from-ghana-s-success-story-with-comparative-insights-from-nigeria](https://www.eaglebadger.com/post/digital-id-systems-lessons-from-ghana-s-success-story-with-comparative-insights-from-nigeria)
  - EagleBadger blog — digital-ID lessons from Ghana (vs Nigeria). Unknown-authority blog; human glance.
  - _Year 2024/2025 · ds:dpi — Data Exchange / Health System Integration; Data Exchange / Social Protection Integration; Digital Id / Population Coverage (+1 more)_
- [https://desmondisrael.legal/securing-trust-enabling-access-a-data-privacy-framework-for-nia-user-agency-partnerships-in-ghana](https://desmondisrael.legal/securing-trust-enabling-access-a-data-privacy-framework-for-nia-user-agency-partnerships-in-ghana)
  - Desmond Israel (law blog) — data-privacy framework for NIA user-agency partnerships. Analyst blog; human glance.
  - _Year 2025 · ds:dpi — Digital Id / Data Sharing Rules; Digital Id / Digital ID Specific Regulation; Digital Id / Judicial Oversight (+2 more)_
- [https://www.ceditalk.com/2024/08/govt-rakes-gh%C2%A2810m-from-e-levy-in-1st-half-of-2024](https://www.ceditalk.com/2024/08/govt-rakes-gh%C2%A2810m-from-e-levy-in-1st-half-of-2024)
  - CediTalk, 2024-08 — govt raises GH¢810m from e-levy H1-2024. Fintech blog; human glance.
  - _Year 2022 · ds:dpi — Digital Pay / Revenue Collection_
- [https://oxfordbusinessgroup.com/reports/ghana/2024-report/tax/electronic-reforms-rollout-of-digital-services-transforming-the-national-tax-system-analysis](https://oxfordbusinessgroup.com/reports/ghana/2024-report/tax/electronic-reforms-rollout-of-digital-services-transforming-the-national-tax-system-analysis)
  - Oxford Business Group 2024 Ghana report — digital tax reforms analysis. Analyst report; human glance.
  - _Year 2022 · ds:dpi — Digital Pay / Person-to-Government (P2G) Payments; Digital Pay / Revenue Collection; Digital Pay / Tax Portal_
- [https://www.ensafrica.com/news/detail/5204/dispute-resolution-under-ghanas-payment-syste](https://www.ensafrica.com/news/detail/5204/dispute-resolution-under-ghanas-payment-syste)
  - ENSafrica — dispute resolution under Ghana's payment systems law. Law-firm analysis; human glance.
  - _Year 2019 · ds:dpi — Digital Pay / Consumer Protection Framework for Payments_
- [https://www.gsma.com/solutions-and-impact/connectivity-for-good/public-policy/the-e-levy-in-ghana-measuring-the-impacts-on-financial-inclusion-and-the-digital-economy](https://www.gsma.com/solutions-and-impact/connectivity-for-good/public-policy/the-e-levy-in-ghana-measuring-the-impacts-on-financial-inclusion-and-the-digital-economy)
  - GSMA public-policy study — the e-levy in Ghana (financial-inclusion impacts). Country-specific report; human glance.
  - _Year 2023 · ds:dpi — Digital Pay / Active Digital Payment Users_
- [https://www.gsma.com/solutions-and-impact/connectivity-for-good/mobile-for-development/blog/mobile-money-can-drive-the-financial-inclusion-of-persons-with-disabilities-in-ghana](https://www.gsma.com/solutions-and-impact/connectivity-for-good/mobile-for-development/blog/mobile-money-can-drive-the-financial-inclusion-of-persons-with-disabilities-in-ghana)
  - GSMA M4D blog — mobile money & financial inclusion of persons with disabilities in Ghana (2024). Human glance.
  - _Year 2024 · ds:dpi — Digital Pay / Accessibility for Persons with Disabilities_
- [https://gogla.org/wp-content/uploads/2024/11/Ghana-Country-Brief.pdf](https://gogla.org/wp-content/uploads/2024/11/Ghana-Country-Brief.pdf)
  - GOGLA off-grid energy Ghana brief (2024-11) — marginal (energy). Human glance.
  - _Year 2024 · ds:dpi — ICT Infrastructure / Off-Grid and Distributed Energy Policy_
- [https://www.cgdev.org/sites/default/files/what-can-we-learn-about-energy-access-and-demand-mobile-phone-surveys.pdf](https://www.cgdev.org/sites/default/files/what-can-we-learn-about-energy-access-and-demand-mobile-phone-surveys.pdf)
  - CGD working paper — energy access via mobile-phone surveys (marginal, not clearly Ghana-only). Human glance.
  - _ds:dpi — ICT Infrastructure / Grid Reliability (Power Outage Frequency)_
- [https://www.datacenterdynamics.com/en/news/ghana-telco-surfline-forced-to-shut-down-data-center-after-financial-issues](https://www.datacenterdynamics.com/en/news/ghana-telco-surfline-forced-to-shut-down-data-center-after-financial-issues)
  - DatacenterDynamics — Surfline forced to shut its data centre (financial issues). DATE-CHECK (undated; DCD unreliable).
  - _ds:dc — Surfline Communications Data Centre / Accra_
- [https://www.ghanaweb.com/GhanaHomePage/business/Operational-costs-and-financial-issues-force-Surfline-to-shut-down-data-centre-1764872](https://www.ghanaweb.com/GhanaHomePage/business/Operational-costs-and-financial-issues-force-Surfline-to-shut-down-data-centre-1764872)
  - GhanaWeb — operational costs force Surfline to shut its data centre. DATE-CHECK; pairs with the DCD item.
  - _ds:dc — Surfline Communications Data Centre / Accra_
- [https://www.datacenterdynamics.com/en/news/logistics-real-estate-firm-agility-announces-plans-for-data-center-campuses-in-saudi-arabia-egypt-kuwait-and-ghana](https://www.datacenterdynamics.com/en/news/logistics-real-estate-firm-agility-announces-plans-for-data-center-campuses-in-saudi-arabia-egypt-kuwait-and-ghana)
  - DatacenterDynamics — Agility DC campuses (incl. Ghana). Regional, DATE-CHECK; human glance.
  - _ds:dc — Agility Logistics Park Ghana (Tema DC Campus) / Tema_
- [https://pmc.ncbi.nlm.nih.gov/articles/PMC12758792](https://pmc.ncbi.nlm.nih.gov/articles/PMC12758792)
  - PMC academic article — rural clinic/health. Academic; human glance.
  - _ds:rural — Clinic_
- [https://pmc.ncbi.nlm.nih.gov/articles/PMC12576109](https://pmc.ncbi.nlm.nih.gov/articles/PMC12576109)
  - PMC academic article — rural clinic/health. Academic; human glance.
  - _ds:rural — Clinic_
- [https://gsconlinepress.com/journals/gscarr/sites/default/files/GSCARR-2025-0350.pdf](https://gsconlinepress.com/journals/gscarr/sites/default/files/GSCARR-2025-0350.pdf)
  - GSC journals academic PDF (2025) — school/education records. Academic; human glance.
  - _ds:rural — School_
- [https://researchonline.jcu.edu.au/79959/1/79959.pdf](https://researchonline.jcu.edu.au/79959/1/79959.pdf)
  - JCU research-online academic PDF — police/records. Academic; human glance.
  - _ds:rural — Police_
- [https://journals.sagepub.com/doi/10.1177/17488958231161429](https://journals.sagepub.com/doi/10.1177/17488958231161429)
  - SAGE journal article (policing/data) — academic; human glance.
  - _ds:rural — Police_
- [https://pmc.ncbi.nlm.nih.gov/articles/PMC5345480](https://pmc.ncbi.nlm.nih.gov/articles/PMC5345480)
  - PMC academic article — CRVS/registry. Academic; human glance.
  - _ds:rural — Registry_
- [https://pmc.ncbi.nlm.nih.gov/articles/PMC12614733](https://pmc.ncbi.nlm.nih.gov/articles/PMC12614733)
  - PMC academic article — CRVS/registry. Academic; human glance.
  - _ds:rural — Registry_

## C · lead only (do not cite)  (24)

- [https://www.openfn.org/digital-public-infrastructure](https://www.openfn.org/digital-public-infrastructure)
  - OpenFn generic DPI explainer page (vendor/org, not Ghana-specific) — lead only.
  - _Year 2024 · ds:dpi — Data Exchange / Civil Registration & Vital Statistics Integration; Data Exchange / Digital ID Integration; Data Exchange / Health System Integration_
- [https://en.wikipedia.org/wiki/Ghana_Card](https://en.wikipedia.org/wiki/Ghana_Card)
  - Wikipedia Ghana Card — tertiary, lead only.
  - _Year 2025 · ds:dpi — Digital Id / Biometric Data Collection; Digital Id / Digital ID Specific Regulation; Digital Id / Electronic Database (+3 more)_
- [https://www.ecoi.net/en/document/2135917.html](https://www.ecoi.net/en/document/2135917.html)
  - ecoi.net aggregated document (Ghana Card) — aggregator, lead only.
  - _Year 2025 · ds:dpi — Digital Id / Biometric Data Collection; Digital Id / Digital ID System Exists; Digital Id / Electronic Database_
- [https://www.lightspark.com/knowledge/ghana-instant-payments](https://www.lightspark.com/knowledge/ghana-instant-payments)
  - Lightspark vendor knowledge page — Ghana instant payments. Lead only.
  - _Year 2015/2018 · ds:dpi — Digital Pay / Business-to-Business (B2B) Payments; Digital Pay / Person-to-Person (P2P) Payments_
- [https://www.paycode.com/post/ghipss-ghana-interbank-payment-and-settlement-system](https://www.paycode.com/post/ghipss-ghana-interbank-payment-and-settlement-system)
  - Paycode vendor blog on GhIPSS — lead only.
  - _Year 2018/2020/2023 · ds:dpi — Digital Pay / Government-to-Person (G2P) Payments; Digital Pay / Person-to-Person (P2P) Payments; Digital Pay / Pro-Poor Governance Mechanisms_
- [https://www.hps-worldwide.com/news-and-media/ghipss-launches-universal-qr-code-payment-solution-partnership-hps](https://www.hps-worldwide.com/news-and-media/ghipss-launches-universal-qr-code-payment-solution-partnership-hps)
  - HPS Worldwide vendor PR — GhIPSS universal QR (2020). Vendor press, lead only.
  - _Year 2020 · ds:dpi — Digital Pay / Person-to-Business (P2B) Merchant Payments_
- [https://en.wikipedia.org/wiki/Ghana_Interbank_Payment_and_Settlement_Systems](https://en.wikipedia.org/wiki/Ghana_Interbank_Payment_and_Settlement_Systems)
  - Wikipedia GhIPSS — tertiary, lead only.
  - _Year 2023 · ds:dpi — Digital Pay / Central Bank Involvement in Governance_
- [https://www.linkedin.com/posts/atwere-obour-stephen-97a70725a_registerwiththedpc-privacymatters-startyourcompliancejourneynow-activity-7402491122901520384-CeSr](https://www.linkedin.com/posts/atwere-obour-stephen-97a70725a_registerwiththedpc-privacymatters-startyourcompliancejourneynow-activity-7402491122901520384-CeSr)
  - LinkedIn post (DPC compliance) — social, lead only.
  - _Year 2012 · ds:dpi — Digital Pay / Data Breach Notification Requirements_
- [https://www.facebook.com/thebankofghana/photos/payment-systems-oversight-annual-report-2023httpswwwboggovghwp-contentuploads202/957555353077194](https://www.facebook.com/thebankofghana/photos/payment-systems-oversight-annual-report-2023httpswwwboggovghwp-contentuploads202/957555353077194)
  - Facebook (Bank of Ghana) post linking the 2023 oversight report — social; use the PDF (A-PDF) instead.
  - _Year 2023 · ds:dpi — Digital Pay / Public Performance Reporting_
- [https://www.scribd.com/document/964494899/En-Siips-Casestudy-Ghipss-Hq](https://www.scribd.com/document/964494899/En-Siips-Casestudy-Ghipss-Hq)
  - Scribd — AfricaNenda SIIPS GhIPSS case study. Tertiary host, lead only.
  - _Year 2022 · ds:dpi — Digital Pay / Scheme Rules Publicly Available_
- [https://jumo.world/financial-inclusion-ghana-fintech](https://jumo.world/financial-inclusion-ghana-fintech)
  - JUMO (fintech vendor) — financial inclusion Ghana page. Marketing, lead only.
  - _Year 2023 · ds:dpi — Digital Pay / Active Digital Payment Users; Digital Pay / Digital Payment System Exists_
- [https://www.scribd.com/document/818713512/Bank-of-Ghana-Exposure-Draft-Financial-Inclusion-for-Persons-with-Disabilities-Directive-October-2024](https://www.scribd.com/document/818713512/Bank-of-Ghana-Exposure-Draft-Financial-Inclusion-for-Persons-with-Disabilities-Directive-October-2024)
  - Scribd copy of BoG Financial-Inclusion-for-Disabilities directive exposure draft (Oct 2024) — mine the primary from BoG; lead only.
  - _Year 2024 · ds:dpi — Digital Pay / Accessibility for Persons with Disabilities_
- [https://www.reddit.com/r/ghana/comments/1mie5jz/can_a_foreigner_register_for_mobile_money_in_ghana](https://www.reddit.com/r/ghana/comments/1mie5jz/can_a_foreigner_register_for_mobile_money_in_ghana)
  - Reddit thread — foreigner mobile-money registration. Social, lead only.
  - _Year 2022 · ds:dpi — Digital Pay / Refugee and Migrant Access_
- [https://yen.com.gh/politics/300389-ghanaian-mobile-users-register-sims-government-begins-process](https://yen.com.gh/politics/300389-ghanaian-mobile-users-register-sims-government-begins-process)
  - Yen.com.gh — SIM registration begins (low-authority tabloid, ~2021-22). Lead only.
  - _Year 2022 · ds:dpi — Digital Pay / Refugee and Migrant Access_
- [https://www.youtube.com/watch?v=1wqb-cdoTfg](https://www.youtube.com/watch?v=1wqb-cdoTfg)
  - YouTube video (mobile-money/refugee access) — tertiary, lead only.
  - _Year 2022 · ds:dpi — Digital Pay / Refugee and Migrant Access_
- [https://allafrica.com/stories/202409170820.html](https://allafrica.com/stories/202409170820.html)
  - AllAfrica aggregated story (cybersecurity readiness) — aggregator, lead only.
  - _Year 2024 · ds:dpi — ICT Infrastructure / National Cybersecurity Readiness_
- [https://www.facebook.com/UNinGhana/posts/ghanas-electricity-access-rate-per-world-banks-2021-data-stands-at-8663-percent-/777805334380215](https://www.facebook.com/UNinGhana/posts/ghanas-electricity-access-rate-per-world-banks-2021-data-stands-at-8663-percent-/777805334380215)
  - Facebook (UN in Ghana) post on electricity-access stat — social, lead only.
  - _Year 2021 · ds:dpi — ICT Infrastructure / Urban-Rural Electrification Gap_
- [https://github.com/aberba/awesome-Ghana](https://github.com/aberba/awesome-Ghana)
  - GitHub 'awesome-Ghana' list — dev community list, lead only.
  - _Year 2024 · ds:dpi — ICT Infrastructure / Developer and Tech Community_
- [https://africa-digital.com/2024/e-government-for-africa](https://africa-digital.com/2024/e-government-for-africa)
  - africa-digital.com generic e-government-for-Africa page — not country-specific, unknown authority; lead only.
  - _Year 2022 · ds:dpi — ICT Infrastructure / E-Government Development_
- [https://www.youtube.com/watch?v=FurBE6pJjHU](https://www.youtube.com/watch?v=FurBE6pJjHU)
  - YouTube video (Onix data centre) — tertiary, lead only.
  - _Year 2021 · ds:dc — Onix Data Centre Ghana / Accra_
- [https://www.africadatacentres.com/africa-data-centres-announces-that-it-will-start-construction-on-a-new-facility-in-accra-ghana](https://www.africadatacentres.com/africa-data-centres-announces-that-it-will-start-construction-on-a-new-facility-in-accra-ghana)
  - Africa Data Centres vendor PR — ACC1 Accra construction announcement. Vendor press (date uncertain); lead. CLUSTER: data-centre buildout.
  - _ds:dc — Africa Data Centres (ADC) Accra ACC1 / Accra_
- [https://www.africa-newsroom.com/press/paix-data-centres-expands-capacity-in-ghana-to-12-mw-to-boost-africas-digital-economy?lang=en](https://www.africa-newsroom.com/press/paix-data-centres-expands-capacity-in-ghana-to-12-mw-to-boost-africas-digital-economy?lang=en)
  - Africa-Newsroom press wire — PAIX expands Ghana capacity to 12 MW. Vendor press (date uncertain); lead.
  - _Year 2013 · ds:dc — PAIX Accra (ACC-1) / Accra_
- [https://www.africa50.com/media/news/article/paix-data-centres-expands-capacity-in-ghana-to-12-mw](https://www.africa50.com/media/news/article/paix-data-centres-expands-capacity-in-ghana-to-12-mw)
  - Africa50 news — PAIX expands Ghana capacity to 12 MW (investor PR). Lead; pairs with the Africa-Newsroom wire.
  - _Year 2013 · ds:dc — PAIX Accra (ACC-1) / Accra_
- [https://ir.uew.edu.gh/bitstream/handle/123456789/4484/Record%20keeping%20practices%20of%20primary%20school%20teachers%20in%20Sagnarigu%20district%20of%20northern%20region%20of%20Ghana.pdf?sequence=1&amp](https://ir.uew.edu.gh/bitstream/handle/123456789/4484/Record%20keeping%20practices%20of%20primary%20school%20teachers%20in%20Sagnarigu%20district%20of%20northern%20region%20of%20Ghana.pdf?sequence=1&amp)
  - UEW institutional-repository thesis — record-keeping practices. Lead only.
  - _ds:rural — School_

## D · resource / entity (not a dated source)  (65)

- [http://www.gnhr.mogcsp.gov.gh/data_sharing.php](http://www.gnhr.mogcsp.gov.gh/data_sharing.php)
  - Ghana National Household Registry (GNHR) data-sharing page — standing portal.
  - _Year 2024 · ds:dpi — Data Exchange / Operational Status; Data Exchange / Social Protection Integration_
- [https://nita.gov.gh/theevooc/2022/02/Ghana-eGovernment-Interoperability-Framework-eGIF-Version2.0_v.Draft-for-Stakeholder-Review-1.pdf](https://nita.gov.gh/theevooc/2022/02/Ghana-eGovernment-Interoperability-Framework-eGIF-Version2.0_v.Draft-for-Stakeholder-Review-1.pdf)
  - Ghana e-Gov Interoperability Framework (eGIF) v2.0 draft (2022) — standing framework instrument.
  - _Year 2024 · ds:dpi — Data Exchange / Strategic Framework_
- [https://nita.gov.gh/dpii](https://nita.gov.gh/dpii)
  - NITA DPI programme page — standing portal.
  - _Year 2024 · ds:dpi — Data Exchange / AI/Analytics Capabilities; Data Exchange / Operational Status_
- [https://nia.gov.gh/service/verification-services](https://nia.gov.gh/service/verification-services)
  - NIA Ghana-Card verification-services page — standing portal.
  - _Year 2025 · ds:dpi — Digital Id / Data Sharing Rules; Digital Id / Digital Authentication Function; Digital Id / Digital ID Specific Regulation (+2 more)_
- [https://www.bog.gov.gh/wp-content/uploads/2022/07/SUPERVISORY-GUIDANCE-NOTE-ON-THE-USE-OF-THE-GHANA-CARD-05-07-2022.pdf](https://www.bog.gov.gh/wp-content/uploads/2022/07/SUPERVISORY-GUIDANCE-NOTE-ON-THE-USE-OF-THE-GHANA-CARD-05-07-2022.pdf)
  - Bank of Ghana supervisory guidance note on Ghana-Card use (2022) — regulatory instrument.
  - _Year 2025 · ds:dpi — Digital Id / Digital Authentication Function; Digital Id / KYC Enablement_
- [https://nita.gov.gh/wp-content/uploads/2017/12/Data-Protection-Act-2012-Act-843.pdf](https://nita.gov.gh/wp-content/uploads/2017/12/Data-Protection-Act-2012-Act-843.pdf)
  - Data Protection Act 2012 (Act 843) full text — legal-instrument text (now superseded by DP Act 2025).
  - _Year 2012/2019/2025 · ds:dpi — Digital Id / Data Protection Act; Digital Id / Data Protection Authority Oversight; Digital Id / Individual Data Access (+3 more)_
- [https://nia.gov.gh/faqs](https://nia.gov.gh/faqs)
  - NIA FAQs — standing portal.
  - _Year 2025 · ds:dpi — Digital Id / Biometric Data Collection; Digital Id / Cost of Credential; Digital Id / Cross-Border Recognition (+9 more)_
- [https://nia.gov.gh/service/registration-of-citizens-in-ghana](https://nia.gov.gh/service/registration-of-citizens-in-ghana)
  - NIA citizen-registration service page — standing portal.
  - _Year 2025 · ds:dpi — Digital Id / Cost of Credential; Digital Id / Enrollment Eligibility Age; Digital Id / Enrollment Mandatory Status (+6 more)_
- [https://digitalpolicyalert.org/digest/dpa-digital-digest-ghana](https://digitalpolicyalert.org/digest/dpa-digital-digest-ghana)
  - DigitalPolicyAlert Ghana digest — reference/monitor page.
  - _Year 2025 · ds:dpi — Digital Id / Data Protection Act; Digital Id / Data Protection Authority Oversight; Digital Id / Security Reviews_
- [https://nia.gov.gh](https://nia.gov.gh)
  - NIA homepage — standing portal/entity.
  - _Year 2025/2026 · ds:dpi — Digital Id / Digital ID System Exists; Digital Id / Maintenance; Registries / Uptake_
- [https://nia.gov.gh/cost-of-ghana-card-project](https://nia.gov.gh/cost-of-ghana-card-project)
  - NIA Ghana-Card project cost page — standing portal.
  - _Year 2025 · ds:dpi — Digital Id / Maintenance; Digital Id / Ministry of Finance Oversight; Digital Id / Security Reviews (+1 more)_
- [https://nia.gov.gh/service/foreigner-identification-management-systems](https://nia.gov.gh/service/foreigner-identification-management-systems)
  - NIA Foreigner Identification Management System page — standing portal.
  - _Year 2025 · ds:dpi — Digital Id / Cost of Credential; Digital Id / Non-National Eligibility_
- [https://brussels.mfa.gov.gh/use-of-ghana-card-as-a-travel-document](https://brussels.mfa.gov.gh/use-of-ghana-card-as-a-travel-document)
  - Ghana Embassy Brussels — Ghana Card as travel document (standing info page).
  - _Year 2025 · ds:dpi — Digital Id / Cross-Border Recognition_
- [https://www.vfsglobal.com/nia/ghana/faqs.html](https://www.vfsglobal.com/nia/ghana/faqs.html)
  - VFS Global NIA-Ghana FAQ (visa-services vendor) — service page.
  - _Year 2025 · ds:dpi — Digital Id / Enrollment Mandatory Status; Digital Id / Non-National Eligibility_
- [https://transfer.cpc.unc.edu/countries/ghana](https://transfer.cpc.unc.edu/countries/ghana)
  - UNC Transfer Project Ghana country page (LEAP social-protection evaluation) — reference/data page.
  - _Year 2025 · ds:dpi — Digital Id / Social Services Use_
- [https://gra.gov.gh/taxpayers-portal-app](https://gra.gov.gh/taxpayers-portal-app)
  - Ghana Revenue Authority taxpayer-portal page — standing portal.
  - _Year 2022 · ds:dpi — Digital Pay / Person-to-Government (P2G) Payments; Digital Pay / Revenue Collection; Digital Pay / Tax Portal_
- [https://gra.gov.gh](https://gra.gov.gh)
  - Ghana Revenue Authority homepage — standing portal/entity.
  - _Year 2022 · ds:dpi — Digital Pay / Tax Portal_
- [https://www.bog.gov.gh/wp-content/uploads/2022/01/National-Payment-Systems-Strategic-Plan-2019-to-2024-2.pdf](https://www.bog.gov.gh/wp-content/uploads/2022/01/National-Payment-Systems-Strategic-Plan-2019-to-2024-2.pdf)
  - BoG National Payment Systems Strategic Plan 2019-2024 — strategy instrument (now expired).
  - _Year 2020/2023 · ds:dpi — Digital Pay / Government Payment Digitization; Digital Pay / Government-to-Person (G2P) Payments; Digital Pay / Person-to-Business (P2B) Merchant Payments (+1 more)_
- [https://www.mofep.gov.gh/sites/default/files/acts/Ghana_DFS_Policy.pdf](https://www.mofep.gov.gh/sites/default/files/acts/Ghana_DFS_Policy.pdf)
  - Ghana Digital Financial Services (DFS) Policy text — policy instrument.
  - _Year 2020/2022/2023 · ds:dpi — Digital Pay / Government Payment Digitization; Digital Pay / Person-to-Government (P2G) Payments; Digital Pay / Pro-Poor Governance Mechanisms_
- [https://www.ghipss.net/about/ghipss](https://www.ghipss.net/about/ghipss)
  - GhIPSS 'about' page — standing entity/portal.
  - _Year 2022/2023 · ds:dpi — Digital Pay / Central Bank Involvement in Governance; Digital Pay / Digital Payment System Exists; Digital Pay / Independent Audits and Reviews (+1 more)_
- [https://digitalpolicyalert.org/event/26830-payment-systems-and-services-act-2019-act-987-including-operational-license-requirement-was-signed-by-the-president](https://digitalpolicyalert.org/event/26830-payment-systems-and-services-act-2019-act-987-including-operational-license-requirement-was-signed-by-the-president)
  - DigitalPolicyAlert event (Payment Systems & Services Act 2019, Act 987) — reference registry.
  - _Year 2019 · ds:dpi — Digital Pay / Consumer Protection Framework for Payments_
- [https://www.bog.gov.gh/wp-content/uploads/2022/09/Payment-Service-Providers-Disclosure-and-Transparency-Guidelines-for-D....pdf](https://www.bog.gov.gh/wp-content/uploads/2022/09/Payment-Service-Providers-Disclosure-and-Transparency-Guidelines-for-D....pdf)
  - BoG PSP Disclosure & Transparency Guidelines (2022) — regulatory instrument.
  - _Year 2019/2022 · ds:dpi — Digital Pay / Consumer Protection Framework for Payments; Digital Pay / Data Privacy Legislation Coverage; Digital Pay / Scheme Rules Publicly Available_
- [https://www.dlapiperdataprotection.com/index.html?t=about&c=GH](https://www.dlapiperdataprotection.com/index.html?t=about&c=GH)
  - DLA Piper Data Protection Laws of the World — Ghana entry. Reference tool.
  - _Year 2012/2019 · ds:dpi — Digital Pay / Data Breach Notification Requirements; Digital Pay / Data Privacy Legislation Coverage_
- [https://www.cto.int/member-countries-1/republic-of-ghana](https://www.cto.int/member-countries-1/republic-of-ghana)
  - Commonwealth Telecommunications Organisation Ghana member page — reference.
  - _Year 2024 · ds:dpi — ICT Infrastructure / 4G/LTE Population Coverage_
- [https://bestbroadbanddeals.co.uk/mobiles/worldwide-data-pricing](https://bestbroadbanddeals.co.uk/mobiles/worldwide-data-pricing)
  - Broadband-deals worldwide data-pricing table — reference/directory.
  - _Year 2024 · ds:dpi — ICT Infrastructure / Mobile Data Affordability_
- [https://fred.stlouisfed.org/series/ITNETUSERP2GHA](https://fred.stlouisfed.org/series/ITNETUSERP2GHA)
  - FRED internet-users series (Ghana) — reference data.
  - _Year 2023 · ds:dpi — ICT Infrastructure / Internet Usage Rate_
- [https://cloud.google.com/about/locations](https://cloud.google.com/about/locations)
  - Google Cloud locations page — reference/directory.
  - _Year 2026 · ds:dpi — ICT Infrastructure / Cloud Services Availability_
- [https://digitalpolicyalert.org/change/16682-data-localisation-requirement-in-data-protection-act-2025](https://digitalpolicyalert.org/change/16682-data-localisation-requirement-in-data-protection-act-2025)
  - DigitalPolicyAlert change record — **data-localisation requirement in the new Data Protection Act 2025** (key new instrument; flag for hub). Reference registry.
  - _Year 2025 · ds:dpi — ICT Infrastructure / Data Localisation Requirements_
- [https://www.datacentermap.com/ghana/accra](https://www.datacentermap.com/ghana/accra)
  - DataCenterMap Accra directory — registry.
  - _Year 2024 · ds:dpi — ICT Infrastructure / Commercial Data Center Presence_
- [https://digitalpolicyalert.org/event/26939-minister-for-communications-and-digitalisation-announced-that-the-government-is-working-towards-hosting-all-data-centres-locally](https://digitalpolicyalert.org/event/26939-minister-for-communications-and-digitalisation-announced-that-the-government-is-working-towards-hosting-all-data-centres-locally)
  - DigitalPolicyAlert event — minister on hosting all data centres locally (data-localisation policy). Reference registry.
  - _Year 2025 · ds:dpi — ICT Infrastructure / Government Data Center / Cloud Strategy_
- [https://tradingeconomics.com/ghana/access-to-electricity-percent-of-population-wb-data.html](https://tradingeconomics.com/ghana/access-to-electricity-percent-of-population-wb-data.html)
  - Trading Economics electricity-access data page — reference.
  - _Year 2023 · ds:dpi — ICT Infrastructure / Electricity Access Rate_
- [https://data.worldbank.org/country/ghana](https://data.worldbank.org/country/ghana)
  - World Bank Ghana country data page — reference.
  - _Year 2021 · ds:dpi — ICT Infrastructure / Renewable Energy Share of Generation_
- [https://www.wipo.int/edocs/gii-ranking/2025/gh.pdf](https://www.wipo.int/edocs/gii-ranking/2025/gh.pdf)
  - WIPO Global Innovation Index 2025 Ghana ranking PDF — reference flagship.
  - _Year 2025 · ds:dpi — ICT Infrastructure / Global Innovation Index Ranking_
- [https://partechpartners.com/africa-reports/2024-africa-tech-venture-capital-report](https://partechpartners.com/africa-reports/2024-africa-tech-venture-capital-report)
  - Partech 2024 Africa Tech VC report — multi-country reference flagship.
  - _Year 2024 · ds:dpi — ICT Infrastructure / Tech Startup Ecosystem_
- [https://www.ghanapostgps.com](https://www.ghanapostgps.com)
  - GhanaPostGPS national digital address system — standing portal/entity.
  - _Year 2025 · ds:dpi — Registries / Status_
- [https://orc.gov.gh/services](https://orc.gov.gh/services)
  - Office of the Registrar of Companies (ORC) services — standing portal.
  - _Year 2025 · ds:dpi — Registries / Address register integration; Registries / Status_
- [https://egovonline.gegov.gov.gh/RGDPortalWeb/portal/RGDHome/eghana.portal?_nfpb=true&_st=&_pageLabel=home](https://egovonline.gegov.gov.gh/RGDPortalWeb/portal/RGDHome/eghana.portal?_nfpb=true&_st=&_pageLabel=home)
  - e-Ghana / RGD e-services portal — standing portal.
  - _Year 2025 · ds:dpi — Registries / Status_
- [https://bdr.gov.gh](https://bdr.gov.gh)
  - Births & Deaths Registry homepage — standing portal/entity.
  - _Year 2023 · ds:dpi — Registries / Scope; Registries / Status_
- [https://bdr.gov.gh/births-registration](https://bdr.gov.gh/births-registration)
  - BDR births-registration page — standing portal.
  - _Year 2023 · ds:dpi — Registries / Scope; Registries / Status_
- [https://bdr.gov.gh/storage/formidable/7/STATISTICAL-REPORT-ON-BIRTH-REGISTRATION-2022.pdf](https://bdr.gov.gh/storage/formidable/7/STATISTICAL-REPORT-ON-BIRTH-REGISTRATION-2022.pdf)
  - BDR birth-registration statistical report 2022 — reference stats.
  - _Year 2022 · ds:dpi — Registries / Inclusivity; Registries / Uptake_
- [https://ec.gov.gh/registration](https://ec.gov.gh/registration)
  - Electoral Commission voter-registration page — standing portal.
  - _Year 2025 · ds:dpi — Registries / National Id integration; Registries / Status_
- [https://www.electionguide.org/countries/id/83](https://www.electionguide.org/countries/id/83)
  - ElectionGuide Ghana country page — reference.
  - _Year 2024 · ds:dpi — Registries / Uptake_
- [https://onlineservices.lc.gov.gh](https://onlineservices.lc.gov.gh)
  - Lands Commission online-services portal — standing portal.
  - _Year 2025 · ds:dpi — Registries / Status_
- [http://gnhr.mogcsp.gov.gh](http://gnhr.mogcsp.gov.gh)
  - Ghana National Household Registry homepage — standing portal/entity.
  - _Year 2024 · ds:dpi — Registries / Status_
- [https://gra.gov.gh/tin](https://gra.gov.gh/tin)
  - GRA TIN (taxpayer identification) page — standing portal.
  - _Year 2021 · ds:dpi — Registries / Business register integration; Registries / National Id integration; Registries / Scope (+1 more)_
- [https://gra.gov.gh/domestic-tax/tax-registration](https://gra.gov.gh/domestic-tax/tax-registration)
  - GRA tax-registration page — standing portal.
  - _Year 2021 · ds:dpi — Registries / Scope; Registries / Status_
- [https://www.equinix.com/data-centers/europe-colocation/ghana-colocation/accra-data-centers/ac1](https://www.equinix.com/data-centers/europe-colocation/ghana-colocation/accra-data-centers/ac1)
  - Equinix AC1 (ex-MDXi Appolonia) facility page — standing entity/resource.
  - _Year 2021 · ds:dc — Equinix AC1 (formerly MDXi Appolonia) / Accra_
- [https://www.datacentermap.com/ghana/accra/mdxi-appolonia-data-center](https://www.datacentermap.com/ghana/accra/mdxi-appolonia-data-center)
  - DataCenterMap MDXi Appolonia entry — registry.
  - _Year 2021 · ds:dc — Equinix AC1 (formerly MDXi Appolonia) / Accra_
- [https://www.digitalrealty.com/data-centers/emea/accra/acr2](https://www.digitalrealty.com/data-centers/emea/accra/acr2)
  - Digital Realty ACR2 (Accra) facility page — standing entity. CLUSTER: ACR2.
  - _Year 2025 · ds:dc — Digital Realty ACR2 / Accra_
- [https://onixdatacentres.com](https://onixdatacentres.com)
  - Onix Data Centres homepage — standing entity.
  - _Year 2021 · ds:dc — Onix Data Centre Ghana / Accra_
- [https://www.peeringdb.com/fac/10468](https://www.peeringdb.com/fac/10468)
  - PeeringDB facility entry (Onix) — registry.
  - _Year 2021 · ds:dc — Onix Data Centre Ghana / Accra_
- [https://www.datacentermap.com/ghana/accra/mtn-south-legon-data-centre](https://www.datacentermap.com/ghana/accra/mtn-south-legon-data-centre)
  - DataCenterMap MTN South Legon entry — registry.
  - _Year 2010 · ds:dc — MTN South Legon Data Centre / Accra_
- [https://mtn.com.gh/businesssolutions/data-centre-co-location](https://mtn.com.gh/businesssolutions/data-centre-co-location)
  - MTN Ghana data-centre colocation page — standing entity.
  - _Year 2010 · ds:dc — MTN Sakaman Data Centre / Accra; MTN South Legon Data Centre / Accra_
- [https://www.datacentermap.com/ghana/accra/mtn-sakaman-data-centre](https://www.datacentermap.com/ghana/accra/mtn-sakaman-data-centre)
  - DataCenterMap MTN Sakaman entry — registry.
  - _Year 2010 · ds:dc — MTN Sakaman Data Centre / Accra_
- [https://www.datacentermap.com/ghana/accra/is-gh-data-center](https://www.datacentermap.com/ghana/accra/is-gh-data-center)
  - DataCenterMap Internet Solutions (NTT) entry — registry.
  - _Year 2010 · ds:dc — Internet Solutions Accra (NTT DATA) / Accra_
- [https://inflect.com/building/premier-towers-pension-road-accra/ntt/datacenter/ghana](https://inflect.com/building/premier-towers-pension-road-accra/ntt/datacenter/ghana)
  - Inflect NTT Accra facility entry — registry.
  - _Year 2010 · ds:dc — Internet Solutions Accra (NTT DATA) / Accra_
- [https://www.datacentermap.com/ghana/accra/rackafrica](https://www.datacentermap.com/ghana/accra/rackafrica)
  - DataCenterMap RackAfrica/PAIX entry — registry.
  - _Year 2013 · ds:dc — PAIX Accra (ACC-1) / Accra_
- [https://www.datacentermap.com/ghana/accra/national-dc-nita](https://www.datacentermap.com/ghana/accra/national-dc-nita)
  - DataCenterMap NITA National Data Centre entry — registry.
  - _Year 2014 · ds:dc — NITA National Data Centre / Accra_
- [https://nita.gov.gh](https://nita.gov.gh)
  - NITA homepage — standing portal/entity (also the National Data Centre operator).
  - _Year 2014 · ds:dc — NITA National Data Centre / Accra_
- [https://www.peeringdb.com/api/fac?country=GH](https://www.peeringdb.com/api/fac?country=GH)
  - PeeringDB facility API (Ghana) — registry.
  - _ds:dc — K-Net Ghana (Roman Ridge) / Accra_
- [https://www.knetgh.com](https://www.knetgh.com)
  - K-Net Ghana homepage — standing entity.
  - _ds:dc — K-Net Ghana (Roman Ridge) / Accra_
- [https://www.connectbase.com/provider/k-net-ghana](https://www.connectbase.com/provider/k-net-ghana)
  - Connectbase K-Net provider entry — registry.
  - _ds:dc — K-Net Ghana (Roman Ridge) / Accra_
- [https://agilitylogisticsparks.com/data-center-campuses](https://agilitylogisticsparks.com/data-center-campuses)
  - Agility Logistics Parks data-centre-campuses page — standing entity.
  - _ds:dc — Agility Logistics Park Ghana (Tema DC Campus) / Tema_
- [https://police.gov.gh/en/index.php/criminal-data-service-bureau-cdsb](https://police.gov.gh/en/index.php/criminal-data-service-bureau-cdsb)
  - Ghana Police Criminal Data Service Bureau (CDSB) page — standing portal.
  - _ds:rural — Police_
- [https://apai-crvs.uneca.org/sites/default/files/resourcefiles/Digitalization%20of%20Civil%20Registration%20and%20Vital%20Statistics%20in%20Africa.pdf](https://apai-crvs.uneca.org/sites/default/files/resourcefiles/Digitalization%20of%20Civil%20Registration%20and%20Vital%20Statistics%20in%20Africa.pdf)
  - UNECA APAI-CRVS continental CRVS-digitalisation report — multi-country reference flagship.
  - _ds:rural — Registry_

## Excluded — pre-2024  (8)

- [http://www.crvs-dgb.org/wp-content/uploads/2017/08/CRVS-User-Stories_FINAL.pdf](http://www.crvs-dgb.org/wp-content/uploads/2017/08/CRVS-User-Stories_FINAL.pdf) — CRVS Digital Guidebook user-stories PDF (2017) — before cutoff.
- [https://www.templars-law.com/app/uploads/2023/05/Data-Protection-Compliance-in-Ghana_final.pdf](https://www.templars-law.com/app/uploads/2023/05/Data-Protection-Compliance-in-Ghana_final.pdf) — Templars law-firm Data Protection Compliance guide (2023-05) — before cutoff.
- [https://www.gsma.com/solutions-and-impact/connectivity-for-good/mobile-for-development/blog/618-active-tech-hubs-the-backbone-of-africas-tech-ecosystem](https://www.gsma.com/solutions-and-impact/connectivity-for-good/mobile-for-development/blog/618-active-tech-hubs-the-backbone-of-africas-tech-ecosystem) — GSMA blog — 618 active tech hubs (2019). Before cutoff and continental.
- [https://www.gsma.com/solutions-and-impact/connectivity-for-good/mobile-for-development/blog/exploring-womens-and-entrepreneurs-use-of-mobile-money-in-ghana](https://www.gsma.com/solutions-and-impact/connectivity-for-good/mobile-for-development/blog/exploring-womens-and-entrepreneurs-use-of-mobile-money-in-ghana) — GSMA M4D blog — women's/entrepreneurs' mobile-money use in Ghana (2022). Before cutoff.
- [https://subtelforum.com/mainone-expands-data-center-footprint-in-ghana](https://subtelforum.com/mainone-expands-data-center-footprint-in-ghana) — SubTel Forum — MainOne expands Ghana data-centre footprint (2021). Before cutoff.
- [https://www.datacenterdynamics.com/en/news/africa-data-centres-and-onix-partner-for-data-center-build-in-accra-ghana](https://www.datacenterdynamics.com/en/news/africa-data-centres-and-onix-partner-for-data-center-build-in-accra-ghana) — DatacenterDynamics — ADC & Onix partner for Accra build (2021). Before cutoff (DCD unreliable anyway).
- [https://nca.org.gh/2023/05/31/surfline-sims-removed-from-central-sim-database](https://nca.org.gh/2023/05/31/surfline-sims-removed-from-central-sim-database) — NCA — Surfline SIMs removed from central SIM database (2023-05). Before cutoff.
- [https://documents1.worldbank.org/curated/en/133081468031776923/pdf/466190NWP0Box310Case0Study0Ghana111.pdf](https://documents1.worldbank.org/curated/en/133081468031776923/pdf/466190NWP0Box310Case0Study0Ghana111.pdf) — World Bank working-paper Ghana case study (old, ~2008 doc id) — before cutoff.

---

## Phase 2 — Fetch run summary (2026-07-15)

**A-web fetched:** 22 URLs → **15 clips** placed in `/new-queue`, **7 skipped**.

**Skips:**
- **Pre-2024 (5):** GhanaWeb "Ghana Card to replace NHIS card" true pub **2020-11-09** (Bawumia NHIS-linkage launch); BBC Pidgin "Ghana Card as ECOWAS travel document" **2022-07-01** (effective 1 Mar 2022); trade.gov PAPSS update on-page **2023-11/12** (confirms trade.gov date-check rule); UNESCO KNUST engineering centre **signed 7 Apr 2022** (last-update 2023-04-20); nhis.gov.gh "Ghana Card only card for healthcare" — undated but quotes **Dr. Bernard Okoe-Boye as NHIA CE** (tenure Mar-2023→Feb-2024) → dates to 2023 = pre-2024. Health-ID 'one card' thread is amply held in the hub, so no loss.
- **Fetch-fail (2):** bog.gov.gh/news/use-of-ghana-card-for-all-financial-transactions = CRAWL_LIVECRAWL_TIMEOUT ×2 (same BoG revised Ghana-Card guidance is captured from Radio Tamale); moc.gov.gh ACR2 = CRAWL_HTTP_403 ×2 (ACR2 captured from Ecofin). `bog.gov.gh` and `moc.gov.gh` fetch unreliably.

**Dates confirmed on fetch:** dpi.africa national-ID analysis → **2025-03-20**; dpi.africa NIA-enrolment → **2025-05-01**; Smart Africa data-strategy → **2024-07-02** (National Validation Workshop); BiometricUpdate online-ID → 2025-05-06, NIA-board → 2025-05-12; GBC backlog-cleared → 2025-09-13; WeAreTech SIM-online → 2025-04-15; BiometricUpdate SIM-ID → 2025-09-08; Ecofin 48548 → **2025-09-09**; FinTech Global Onafriq-PAPSS → 2025-06-23; MoGCSP LEAP 99th cycle → **2025-12-22**; GSMA report → 2025-09-03; Ecofin 50093 (ACR2) → **2025-11-04**.

**Figure correction:** the GSMA Digital-Africa-Summit report is **$3.4bn by 2030** (the URL slug '20-billion' is wrong/old; on-page headline says $3.4bn). Mobile industry = 8% of GDP (GHS 94bn); 99% 4G coverage but 62% usage gap; e-levy removed.

**Enrolment figures (reconcile at ingest — different as-of dates):** dpi.africa (Oct-2024) ~18m; NIA/Daily Graphic (as of 31 Oct 2023) 17.56m registered; GBC (Sep-2025) **18,950,942 enrolled / 18.85m printed / 17.75m issued, 292 centres, 95 institutions integrated**. The hub's held figure was 19.2m/262 institutions — GBC's 95 'integrated for real-time authentication' is a narrower measure than the hub's 262 'integrated institutions'; flag reconcile.

**Clusters flagged for ingest merge:**
- **NIA / Ghana-Card operations:** dpi.africa (full-potential analysis) + dpi.africa (7m under-15 + 3m diaspora enrolment) + BiometricUpdate (online-only requests + chip passport) + BiometricUpdate (new NIA board) + GBC (backlog cleared / instant card). OVERLAP with held Ghana-Card thread.
- **Ghana-Card financial mandate:** Radio Tamale (BoG revised Supervisory Guidance Note replacing June-2022) — the BoG official page was a fetch-fail but is the same event.
- **SIM–Ghana-Card linkage:** WeAreTech (SIM online Jun-2025) + BiometricUpdate 202509 (new framework/bill, CEIR+NIA) + Ecofin 48548 (biometric SIM mandate; MoMo 200% penetration, 66m accounts) — one legislative thread (Minister S.N. George; bill due Oct-2025).
- **PAPSS–Onafriq:** FinTech Global (Jun-2025 six-month BoG-approved pilot) = the earlier milestone of the held 2026-02 Nigeria→Ghana naira rail.
- **National Data Strategy:** Smart Africa + Team Europe (Jul-2024 validation workshop; DPC Adusei-Poku; AU Continental Data Policy Framework) — distinct from the held National AI Strategy.
- **Digital Realty ACR2 (Accra, end-Oct 2025):** Ecofin 50093 (1.7MW, 500 racks, 2Africa) [+ MoC page fetch-fail + digitalrealty.com facility page, D].

**Key gap to fill (not in dataset as A-web):** the **Data Protection Act 2025** (with data-localisation) — only a DigitalPolicyAlert change-record (D). The hub carries the 2012 Act (843) but not the 2025 Act. Flag for the deferred gap-fill search.

**Left for Bill:** A-PDF 6 (DIAL Ghana assessment; HSRC ID-interoperability; BoG Payment-Systems Oversight 2023; NCA Q2-2024 bulletin; Lands Commission cadastral; Ghana Digital Health Policy 2023-2027) · B 19 · C 24 · D 65. Huge D bucket = official portals (NIA/BoG/GRA/GhIPSS/BDR/NITA/Lands/EC/ORC) + a dense Accra data-centre market (Equinix AC1, MTN, NTT, Onix, K-Net, PAIX, ADC, Agility Tema, NITA National DC — most facility pages/PRs pre-2024). Surfline data-centre shutdown sits in B (DCD/GhanaWeb, date-check).
