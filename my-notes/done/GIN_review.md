# Guinea (GIN) — dataset→wiki intake review

*Run: 2026-07-15. Workflow: `country-ingest-workflow.md` Phase 1 (assessment).*

## Header counts

- **Total distinct source URLs:** 76
- **Already held (hub):** 0 — `wiki/places/GIN.md` is a **bare `status: stub`** hub: it captures Guinea only as a submarine-cable landing point (one line, [[infra.connect]]). Behaves like no hub → nothing held, every in-window candidate is **new**. The whole substantive DPI record for Guinea is fresh; this run gives Bill enough to **expand the stub into a real hub**.
- **Excluded (pre-2024):** 8
- **New & in-window:** 68

| Bucket | Count |
|---|---|
| Aweb | 19 |
| Apdf | 3 |
| B | 11 |
| C | 9 |
| D | 26 |
| **excluded (pre-2024)** | 8 |
| **held** | 0 |

### Context & name-match

Guinea (Conakry), Francophone West Africa (parent XWA); post-2021-coup transition government. **Name-match guard applied:** GIN name fallback excluded Guinea-Bissau (GNB) and Equatorial Guinea (GNQ) — no cross-contamination found. NB `osiris.sn` is a Senegalese ICT observatory but its item is *about Guinea* (content-about-GIN, not mis-attribution). `africa-data-centres.csv` had 2 GIN rows; `african-rural-digitalisation.csv` 4.

### Clusters / merge flags (all NEW — seed the hub)

- **Transform Africa Summit 2025 (Conakry):** Smart Africa ×3 (Guinea-at-the-heart / TAS-2025-wrap FR / Conakry-epicentre) — one event; consolidate. Guinea hosted Smart Africa's flagship summit — a major DPI milestone.
- **National Tier III data centre + .gn domain (Sep 2025):** Ecofin 48427 + TechAfricaNews (5 Sep, .gn launch) [+ Smart Africa TAS-2025]. (Directly extends the hub's existing cable-landing/infra.connect thread.)
- **Instant / mobile payment system (BCRG, late-2025):** Agence Ecofin (interoperable IPS) + Ecofin 51590 (instant payment) + WeAreTech (BCRG starts work) + Ecofin 50255 (mobile payment vs cash shortage) + WeAreTech Trésor-Pay (public payments) [+ osiris.sn republish, B]. Sub-distinctions to keep: **Trésor Pay** (public/G2P gateway) vs the **BCRG national instant payment system** vs mobile-payment-for-cash-shortage — likely one programme, reconcile.
- **Biometric workforce audit (ghost workers, late-2025):** Ecofin 50979 (€26.9m saved since 2024) + BiometricUpdate 202512 — one event.
- **Civil-registry modernization:** IDTechWire (biometric birth certificates, Sanoyah, 2026) + gouvernement.gov.gn (PM receives biometric enrolment kits) [+ citizenshiprightsafrica analysis, B]. Health-information-system interoperability (Guinéenews, 27 Nov 2025) is a related but distinct SIS thread.
- **Cadastre digitalization:** Vision Guinée (2026, Urbanism Minister, full land-cadastre digitalization).
- **RSU (Registre Social Unique):** FDSI presentation 2025-01 (A-PDF).
- **Legal base (D, standing):** e-transactions Law L035/2016 + cybersecurity/data-protection Law L037/2016 (ANSSI hosts the texts).

### Date-check / caveats

- Ecofin ids: 48427→~2025-09-04, 50249/50255→~2025-11-07, 50979→~2025-11-30, 51590→~2025-12-21; agenceecofin 134495→~2025-12-21 (confirm on fetch).
- gouvernement.gov.gn enrolment-kits + citizenshiprightsafrica + APAI-CRVS snapshot: verify true date on fetch.
- Much of the 2020-2022 biometric-ID history (MOSIP/TECH5, IDEMIA/OSIA, Datasonic) is **pre-2024** → excluded; but it is the BACKSTORY for the current civil-registry/ID push — Bill may cite it as context when seeding the hub.

## A-web · ingest (non-PDF) — CC fetches in Phase 2  (19)

- [https://www.wearetech.africa/en/fils-uk/news/tech/guinea-reviews-2025-digital-sector-gains-targets-faster-rollout-in-2026](https://www.wearetech.africa/en/fils-uk/news/tech/guinea-reviews-2025-digital-sector-gains-targets-faster-rollout-in-2026)
  - WeAreTech — Guinea reviews 2025 digital-sector gains, targets faster 2026 rollout. Country-specific, dated.
  - _Year 2025 · ds:dpi — Data Exchange / AI/Analytics Capabilities; Data Exchange / Business Registration & Licensing Integration; Data Exchange / Data Sovereignty Provisions (+8 more)_
- [https://smartafrica.org/guinea-at-the-heart-of-africas-digital-transformation-smart-africa-and-the-guinean-government-align-vision-and-action-at-the-transform-africa-summit-2025](https://smartafrica.org/guinea-at-the-heart-of-africas-digital-transformation-smart-africa-and-the-guinean-government-align-vision-and-action-at-the-transform-africa-summit-2025)
  - Smart Africa — Guinea at the heart of Africa's digital transformation (TAS 2025). CLUSTER: Transform Africa Summit 2025 (Conakry).
  - _Year 2025 · ds:dpi — Data Exchange / Business Registration & Licensing Integration; Data Exchange / Operational Status; Data Exchange / Tax & Revenue Integration_
- [https://guineenews.org/2025/11/27/interoperabilite-tenue-dun-atelier-cle-pour-la-modernisation-du-systeme-dinformation-sanitaire-en-guinee](https://guineenews.org/2025/11/27/interoperabilite-tenue-dun-atelier-cle-pour-la-modernisation-du-systeme-dinformation-sanitaire-en-guinee)
  - Guinéenews, 2025-11-27 — interoperability workshop to modernize the health information system (SIS). National news, on-topic.
  - _Year 2025 · ds:dpi — Data Exchange / Civil Registration & Vital Statistics Integration; Data Exchange / Health System Integration_
- [https://www.agenceecofin.com/actualites-finance/2112-134495-la-guinee-prepare-la-mise-en-place-d-un-systeme-de-paiement-instantane-et-interoperable](https://www.agenceecofin.com/actualites-finance/2112-134495-la-guinee-prepare-la-mise-en-place-d-un-systeme-de-paiement-instantane-et-interoperable)
  - Agence Ecofin (FR), ~2025-12-21 — Guinea prepares an instant, interoperable payment system. CLUSTER: instant payment / BCRG.
  - _Year 2025 · ds:dpi — Data Exchange / Digital Payments Integration; Data Exchange / Implementation Roadmap_
- [https://smartafrica.org/fr/le-transform-africa-summit-2025-confirme-la-dynamique-continentale-pour-une-afrique-digitale-unie-et-souveraine-depuis-la-guinee](https://smartafrica.org/fr/le-transform-africa-summit-2025-confirme-la-dynamique-continentale-pour-une-afrique-digitale-unie-et-souveraine-depuis-la-guinee)
  - Smart Africa (FR) — TAS 2025 wrap-up from Guinea. CLUSTER: Transform Africa Summit 2025.
  - _Year 2025 · ds:dpi — Data Exchange / Data Sovereignty Provisions; Data Exchange / Enabling Legislation_
- [https://www.ecofinagency.com/news-digital/3011-50979-guinea-claims-26-9m-saved-since-2024-with-biometric-audit-of-public-workforce](https://www.ecofinagency.com/news-digital/3011-50979-guinea-claims-26-9m-saved-since-2024-with-biometric-audit-of-public-workforce)
  - Ecofin (id→~2025-11-30) — Guinea claims €26.9m saved with biometric audit of public workforce. CLUSTER: ghost-worker biometric audit.
  - _Year 2008/2021/2024 · ds:dpi — Digital Id / Electronic Database; Digital Id / Ministry of Finance Oversight; Digital Id / Sustainability_
- [https://www.biometricupdate.com/202512/guinea-launches-biometric-system-to-weed-out-ghost-public-workers](https://www.biometricupdate.com/202512/guinea-launches-biometric-system-to-weed-out-ghost-public-workers)
  - BiometricUpdate 202512 — Guinea launches biometric system to weed out ghost public workers. CLUSTER: ghost-worker audit.
  - _Year 2021 · ds:dpi — Digital Id / Digital ID System Exists_
- [https://www.wearetech.africa/en/fils-uk/news/finance/guinea-rolls-out-tresor-pay-as-digital-gateway-for-public-payments](https://www.wearetech.africa/en/fils-uk/news/finance/guinea-rolls-out-tresor-pay-as-digital-gateway-for-public-payments)
  - WeAreTech — Guinea rolls out Trésor Pay as digital gateway for public payments. CLUSTER: public payments / instant payment.
  - _Year 2025 · ds:dpi — Digital Pay / Revenue Collection_
- [https://www.ecofinagency.com/news-finances/2112-51590-guinea-readies-instant-payment-system-to-speed-transactions-and-cut-cash-use](https://www.ecofinagency.com/news-finances/2112-51590-guinea-readies-instant-payment-system-to-speed-transactions-and-cut-cash-use)
  - Ecofin (id→~2025-12-21) — Guinea readies instant payment system to speed transactions and cut cash use. CLUSTER: instant payment.
  - _Year 2025 · ds:dpi — Digital Pay / Cross-Border Payment Functionality_
- [https://www.wearetech.africa/en/fils-uk/news/tech/guinea-central-bank-starts-work-on-instant-payment-system](https://www.wearetech.africa/en/fils-uk/news/tech/guinea-central-bank-starts-work-on-instant-payment-system)
  - WeAreTech — Guinea central bank (BCRG) starts work on instant payment system. CLUSTER: instant payment.
  - _Year 2025 · ds:dpi — Digital Pay / Digital Payment System Exists; Digital Pay / Person-to-Business (P2B) Merchant Payments; Digital Pay / Person-to-Person (P2P) Payments_
- [https://www.ecofinagency.com/news-finances/0711-50255-guinea-plans-mobile-payment-system-to-ease-cash-shortage](https://www.ecofinagency.com/news-finances/0711-50255-guinea-plans-mobile-payment-system-to-ease-cash-shortage)
  - Ecofin (id→~2025-11-07) — Guinea plans mobile payment system to ease cash shortage. CLUSTER: instant/mobile payment.
  - _Year 2025 · ds:dpi — Digital Pay / Active Digital Payment Users_
- [https://datareportal.com/reports/digital-2025-guinea](https://datareportal.com/reports/digital-2025-guinea)
  - DataReportal Digital 2025 Guinea — dated country reference baseline.
  - _Year 2025 · ds:dpi — ICT Infrastructure / Internet Usage Rate; ICT Infrastructure / Mobile Phone Penetration_
- [https://idtechwire.com/guinea-launches-biometric-birth-certificates-in-sanoyah-in-civil-registry-modernization-push](https://idtechwire.com/guinea-launches-biometric-birth-certificates-in-sanoyah-in-civil-registry-modernization-push)
  - IDTechWire (2026) — Guinea launches biometric birth certificates in Sanoyah (civil-registry modernization). CLUSTER: civil registry.
  - _Year 2026 · ds:dpi — Registries / National Id integration; Registries / Status_
- [https://gouvernement.gov.gn/le-premier-ministre-receptionne-les-kits-denrolement-biometrique](https://gouvernement.gov.gn/le-premier-ministre-receptionne-les-kits-denrolement-biometrique)
  - Guinea government (official) — PM receives biometric enrolment kits. CLUSTER: biometric ID / civil registry. Verify date (~2025).
  - _Year 2025 · ds:dpi — Registries / Status; Registries / Uptake_
- [https://www.visionguinee.info/le-ministre-de-lurbanisme-annonce-la-digitalisation-integrale-du-cadastre-foncier-pour-garantir-la-transparence-dans-la-gestion-des-titres-fonciers](https://www.visionguinee.info/le-ministre-de-lurbanisme-annonce-la-digitalisation-integrale-du-cadastre-foncier-pour-garantir-la-transparence-dans-la-gestion-des-titres-fonciers)
  - Vision Guinée (2026) — Urbanism Minister announces full digitalization of the land cadastre for title transparency. CLUSTER: cadastre.
  - _Year 2026 · ds:dpi — Registries / Separate cadastral register; Registries / Status_
- [https://www.ecofinagency.com/news-digital/0409-48427-guinea-opens-tier-3-national-data-center-to-strengthen-digital-transition](https://www.ecofinagency.com/news-digital/0409-48427-guinea-opens-tier-3-national-data-center-to-strengthen-digital-transition)
  - Ecofin (id→~2025-09-04) — Guinea opens Tier-III national data centre. CLUSTER: National Tier III DC + .gn domain.
  - _Year 2025 · ds:dc — Guinea National Tier III Data Centre / Conakry_
- [https://techafricanews.com/2025/09/05/guinea-launches-national-domain-gn-and-unveils-first-tier-iii-data-center](https://techafricanews.com/2025/09/05/guinea-launches-national-domain-gn-and-unveils-first-tier-iii-data-center)
  - TechAfricaNews, 2025-09-05 — Guinea launches national .gn domain and unveils first Tier-III data centre. CLUSTER: DC/.gn.
  - _Year 2025 · ds:dc — Guinea National Tier III Data Centre / Conakry_
- [https://smartafrica.org/transform-africa-summit-2025-conakry-becomes-the-epicenter-of-digital-cooperation-in-africa](https://smartafrica.org/transform-africa-summit-2025-conakry-becomes-the-epicenter-of-digital-cooperation-in-africa)
  - Smart Africa — TAS 2025, Conakry epicentre of digital cooperation. CLUSTER: Transform Africa Summit 2025.
  - _Year 2025 · ds:dc — Guinea National Tier III Data Centre / Conakry_
- [https://www.ecofinagency.com/news-digital/0711-50249-guinea-kicks-off-plan-to-bring-internet-to-2-200-schools](https://www.ecofinagency.com/news-digital/0711-50249-guinea-kicks-off-plan-to-bring-internet-to-2-200-schools)
  - Ecofin (id→~2025-11-07) — Guinea kicks off plan to bring internet to 2,200 schools. Country-specific, dated.
  - _ds:rural — School_

## A-PDF · ingest (PDF) — Bill handles by hand  (3)

- [https://documents1.worldbank.org/curated/en/099050225110559061/pdf/P161329-f64eac6f-ea4d-4447-bde2-e38454971325.pdf](https://documents1.worldbank.org/curated/en/099050225110559061/pdf/P161329-f64eac6f-ea4d-4447-bde2-e38454971325.pdf)
  - World Bank curated PDF (P161329, id →2025-05-02) — Guinea statistics/ID project doc (civil-reg integration).
  - _Year 2020/2021/2023/2024 · ds:dpi — Digital Id / Civil Registration Integration; Digital Id / Digital ID Specific Regulation; Digital Id / Digital ID System Exists (+4 more)_
- [https://fdsi.gov.gn/wp-content/uploads/2025/01/Presentation-RSU_FDSI_2025.pdf](https://fdsi.gov.gn/wp-content/uploads/2025/01/Presentation-RSU_FDSI_2025.pdf)
  - FDSI (social investment fund) — Registre Social Unique (RSU) presentation, 2025-01 (PDF). Official, dated.
  - _Year 2023 · ds:dpi — Registries / Status; Registries / Uptake_
- [https://documents1.worldbank.org/curated/en/099021025115512289/pdf/BOSIB-e98530da-4262-4114-a3b8-9e4daa06717a.pdf](https://documents1.worldbank.org/curated/en/099021025115512289/pdf/BOSIB-e98530da-4262-4114-a3b8-9e4daa06717a.pdf)
  - World Bank curated PDF (id →2025-02-10) — Guinea education project doc (school). Dated (PDF).
  - _ds:rural — School_

## B · check first  (11)

- [https://smartafrica.org/get-to-know-the-republic-of-guinea-home-of-transform-africa-summit-2025](https://smartafrica.org/get-to-know-the-republic-of-guinea-home-of-transform-africa-summit-2025)
  - Smart Africa — 'get to know Guinea' TAS-2025 host profile. Promotional country profile; human glance.
  - _Year 2025 · ds:dpi — Data Exchange / AI/Analytics Capabilities; Data Exchange / Digital ID Integration; Data Exchange / Education System Integration (+4 more)_
- [https://citizenshiprightsafrica.org/the-modernisation-of-guineas-civil-registry-inspired-by-belgiums-experience](https://citizenshiprightsafrica.org/the-modernisation-of-guineas-civil-registry-inspired-by-belgiums-experience)
  - CitizenshipRightsAfrica — modernisation of Guinea's civil registry (Belgium-inspired). Rights-org analysis; DATE-CHECK; human glance.
  - _Year 2014/2022/2023/2026 · ds:dpi,rural — Digital Id / Civil Registration Integration; Digital Id / Judicial Oversight; Registries / Scope (+3 more)_
- [https://www.zawya.com/en/press-release/africa-press-releases/west-africa-unique-identification-for-regional-integration-and-inclusion-wuri-pilot-countries-adopt-governance-wgrmb9qc](https://www.zawya.com/en/press-release/africa-press-releases/west-africa-unique-identification-for-regional-integration-and-inclusion-wuri-pilot-countries-adopt-governance-wgrmb9qc)
  - Zawya press release — WURI pilot countries adopt governance (regional ECOWAS ID). Regional; DATE-CHECK; human glance.
  - _Year 2023 · ds:dpi — Digital Id / Cross-Border Recognition; Digital Id / Data Sharing Rules_
- [https://www.osiris.sn/guinee-vers-la-mise-en-oeuvre-d-un-systeme-de-paiement-instantane.html](https://www.osiris.sn/guinee-vers-la-mise-en-oeuvre-d-un-systeme-de-paiement-instantane.html)
  - OSIRIS (Senegal ICT observatory) — Guinea toward an instant payment system. Republish/aggregator (likely dup of the Ecofin/WeAreTech instant-payment items); human glance.
  - _Year 2025 · ds:dpi — Digital Pay / Digital Payment System Exists_
- [https://reg-tech.co/2024/10/09/2024-un-e-government-survey-review](https://reg-tech.co/2024/10/09/2024-un-e-government-survey-review)
  - reg-tech.co — 2024 UN E-Government Survey review (not Guinea-specific). Human glance.
  - _Year 2024 · ds:dpi — ICT Infrastructure / E-Government Development_
- [https://pmc.ncbi.nlm.nih.gov/articles/PMC8811041](https://pmc.ncbi.nlm.nih.gov/articles/PMC8811041)
  - PMC academic article — rural clinic/health. Academic; human glance.
  - _ds:rural — Clinic_
- [https://www.swissrefoundation.org/what-we-do/projects/access-to-health/Clinic-O--Strengthening-community-based-primary-healthcare-in-rural-Guinea.html](https://www.swissrefoundation.org/what-we-do/projects/access-to-health/Clinic-O--Strengthening-community-based-primary-healthcare-in-rural-Guinea.html)
  - Swiss Re Foundation project page — Clinic-O community PHC in rural Guinea. Org project page; human glance.
  - _ds:rural — Clinic_
- [https://pmc.ncbi.nlm.nih.gov/articles/PMC11932417](https://pmc.ncbi.nlm.nih.gov/articles/PMC11932417)
  - PMC academic article — rural clinic/health. Academic; human glance.
  - _ds:rural — Clinic_
- [https://www.state.gov/wp-content/uploads/2025/07/624521_GUINEA-2024-HUMAN-RIGHTS-REPORT.pdf](https://www.state.gov/wp-content/uploads/2025/07/624521_GUINEA-2024-HUMAN-RIGHTS-REPORT.pdf)
  - US State Dept Guinea 2024 Human Rights Report (pub 2025-07) — general country report, marginal to DPI. Human glance.
  - _ds:rural — Police_
- [https://fln.dk/media/0n3fpx2w/guin205.pdf](https://fln.dk/media/0n3fpx2w/guin205.pdf)
  - Danish Immigration Service (fln.dk) Guinea country report (ID/registration) — general country report; human glance.
  - _ds:rural — Registry_
- [https://apai-crvs.uneca.org/sites/default/files/resourcefiles/CRVS_GuineeSnapshot_e.pdf](https://apai-crvs.uneca.org/sites/default/files/resourcefiles/CRVS_GuineeSnapshot_e.pdf)
  - UNECA APAI-CRVS Guinea CRVS snapshot PDF — country CRVS reference; DATE-CHECK; human glance.
  - _ds:rural — Registry_

## C · lead only (do not cite)  (9)

- [https://secureidentityalliance.org/news-events/news/guinea-adopts-osia-based-identity-management-system-to-drive-major-economic-and-social-inclusion-programs-across-the-country](https://secureidentityalliance.org/news-events/news/guinea-adopts-osia-based-identity-management-system-to-drive-major-economic-and-social-inclusion-programs-across-the-country)
  - Secure Identity Alliance news — Guinea adopts OSIA-based identity system (~2021). Industry-body/vendor profile, lead only.
  - _Year 2018/2021/2023 · ds:dpi — Digital Id / KYC Enablement; Digital Id / Maintenance; Digital Id / Social Services Use (+1 more)_
- [https://lawgratis.com/blog-detail/privacy-law-at-guinea](https://lawgratis.com/blog-detail/privacy-law-at-guinea)
  - Lawgratis blog — privacy law in Guinea. Low-authority blog, lead only.
  - _Year 2016 · ds:dpi — Digital Id / Data Protection Act_
- [https://www.ecoi.net/en/document/1146298.html](https://www.ecoi.net/en/document/1146298.html)
  - ecoi.net aggregated document (ID/registration) — aggregator, lead only.
  - _Year 1995/2008/2020/2021/2023 · ds:dpi — Digital Id / Cost of Credential; Digital Id / Electronic Database; Digital Id / Enrollment Eligibility Age (+5 more)_
- [https://en.wikipedia.org/wiki/List_of_national_identity_card_policies_by_country](https://en.wikipedia.org/wiki/List_of_national_identity_card_policies_by_country)
  - Wikipedia list of national ID-card policies — tertiary, lead only.
  - _Year 1995 · ds:dpi — Digital Id / Enrollment Eligibility Age; Digital Id / Enrollment Mandatory Status; Digital Id / Legal Proof Status_
- [https://identityreview.com/guinea-to-adopt-its-first-national-digital-identity-card](https://identityreview.com/guinea-to-adopt-its-first-national-digital-identity-card)
  - IdentityReview — Guinea to adopt its first national digital ID (~2021). Secondary, likely pre-2024; lead only.
  - _Year 2021 · ds:dpi — Digital Id / Banking/Financial Services Use_
- [https://m2mgroup.com/biometric-identification-program-guinea](https://m2mgroup.com/biometric-identification-program-guinea)
  - M2M Group vendor page — Guinea biometric identification program (2018). Vendor, lead only.
  - _Year 2018 · ds:dpi — Digital Id / Social Services Use_
- [https://www.transfi.com/blog/guineas-payment-rails-how-they-work---gim-uemoa-mobile-money-cross-border-transfers](https://www.transfi.com/blog/guineas-payment-rails-how-they-work---gim-uemoa-mobile-money-cross-border-transfers)
  - TransFi vendor blog — Guinea's payment rails (GIM-UEMOA/mobile money). Marketing, lead only.
  - _Year 2025 · ds:dpi — Digital Pay / Cross-Border Payment Functionality; Digital Pay / Person-to-Business (P2B) Merchant Payments; Digital Pay / Person-to-Person (P2P) Payments_
- [https://www.startbutton.africa/blog/how-to-register-business-guinea-conakry](https://www.startbutton.africa/blog/how-to-register-business-guinea-conakry)
  - StartButton vendor how-to (business registration Guinea) — marketing, lead only.
  - _Year 2026 · ds:dpi — Registries / Business register integration; Registries / Status_
- [https://www.innovatrics.com/resources/digitalization-of-police-investigation-in-west-africa](https://www.innovatrics.com/resources/digitalization-of-police-investigation-in-west-africa)
  - Innovatrics vendor case study — digitalization of police investigation in West Africa (regional). Vendor, lead only.
  - _ds:rural — Police_

## D · resource / entity (not a dated source)  (26)

- [https://www.dlapiperdataprotection.com/?t=law&c=GN](https://www.dlapiperdataprotection.com/?t=law&c=GN)
  - DLA Piper Data Protection Laws of the World — Guinea entry. Reference tool.
  - _Year 2016/2023 · ds:dpi — Digital Id / Data Protection Act; Digital Id / Data Sharing Rules; Digital Id / Legal Framework (+1 more)_
- [https://wuri.ecowas.int/about-us/wuri-programme](https://wuri.ecowas.int/about-us/wuri-programme)
  - WURI (West Africa Unique Identification) programme page — regional reference/portal.
  - _Year 2021/2023 · ds:dpi — Digital Id / Cross-Border Recognition; Digital Id / Digital ID Specific Regulation; Digital Id / System Interoperability_
- [https://dataprotection.africa/guinea](https://dataprotection.africa/guinea)
  - dataprotection.africa Guinea country profile — standing reference portal.
  - _Year 2016 · ds:dpi — Digital Id / Data Protection Act_
- [https://au.int/sites/default/files/documents/43393-doc-AU_Interoperability_framework_for_D_ID_English.pdf](https://au.int/sites/default/files/documents/43393-doc-AU_Interoperability_framework_for_D_ID_English.pdf)
  - African Union Interoperability Framework for Digital ID — multi-country reference flagship.
  - _Year 2021 · ds:dpi — Digital Id / Cost of Credential; Digital Id / Non-National Eligibility_
- [https://www.bcrg-guinee.org/les-systemes-et-moyens-de-paiement-en-republique-de-guinee](https://www.bcrg-guinee.org/les-systemes-et-moyens-de-paiement-en-republique-de-guinee)
  - BCRG (central bank) payment-systems page — standing portal.
  - _Year 2025 · ds:dpi — Digital Pay / Business-to-Business (B2B) Payments_
- [https://www.bcrg-guinee.org/role-et-mission-de-la-dsmp](https://www.bcrg-guinee.org/role-et-mission-de-la-dsmp)
  - BCRG DSMP (payment-systems directorate) role page — standing portal.
  - _Year 2025 · ds:dpi — Digital Pay / Central Bank Involvement in Governance_
- [https://anssi.gov.gn/?nproject=loi-l035-2016-relative-aux-transactions-electroniques](https://anssi.gov.gn/?nproject=loi-l035-2016-relative-aux-transactions-electroniques)
  - ANSSI Guinea — Law L035/2016 on electronic transactions (legal-instrument text).
  - _Year 2016 · ds:dpi — Digital Pay / Consumer Protection Framework for Payments_
- [https://anssi.gov.gn/?nproject=loi-l037-2016-relative-a-la-cybersecurite-et-la-protection-des-donnees-a-caractere-personnel](https://anssi.gov.gn/?nproject=loi-l037-2016-relative-a-la-cybersecurite-et-la-protection-des-donnees-a-caractere-personnel)
  - ANSSI Guinea — Law L037/2016 on cybersecurity & personal-data protection (legal-instrument text).
  - _Year 2016 · ds:dpi — Digital Pay / Data Privacy Legislation Coverage_
- [https://dig.watch/countries/guinea](https://dig.watch/countries/guinea)
  - Digital Watch Guinea country page — reference/monitor.
  - _Year 2023 · ds:dpi — ICT Infrastructure / 4G/LTE Population Coverage_
- [https://www.theglobaleconomy.com/Guinea/Internet_bandwidth](https://www.theglobaleconomy.com/Guinea/Internet_bandwidth)
  - TheGlobalEconomy internet-bandwidth data page — reference indicator.
  - _Year 2016 · ds:dpi — ICT Infrastructure / International Internet Bandwidth_
- [https://www.datacentermap.com/ixp/internet-exchange-point-of-guinea](https://www.datacentermap.com/ixp/internet-exchange-point-of-guinea)
  - DataCenterMap IXP entry (Guinea) — registry.
  - _Year 2018 · ds:dpi — ICT Infrastructure / Internet Exchange Point Presence_
- [https://statbase.org/data/gin-global-cybersecurity-index](https://statbase.org/data/gin-global-cybersecurity-index)
  - Statbase Global Cybersecurity Index (Guinea) data page — reference indicator.
  - _Year 2024 · ds:dpi — ICT Infrastructure / National Cybersecurity Readiness_
- [https://www.datacentermap.com/guinea](https://www.datacentermap.com/guinea)
  - DataCenterMap Guinea directory — registry.
  - _ds:dpi — ICT Infrastructure / Commercial Data Center Presence_
- [https://tradingeconomics.com/guinea/access-to-electricity-percent-of-population-wb-data.html](https://tradingeconomics.com/guinea/access-to-electricity-percent-of-population-wb-data.html)
  - Trading Economics electricity-access data page — reference.
  - _Year 2023 · ds:dpi — ICT Infrastructure / Electricity Access Rate_
- [https://www.enterprisesurveys.org/content/dam/enterprisesurveys/documents/country-profiles/Guinea-2016.pdf](https://www.enterprisesurveys.org/content/dam/enterprisesurveys/documents/country-profiles/Guinea-2016.pdf)
  - World Bank Enterprise Surveys Guinea 2016 profile — reference flagship (cite-don't-absorb).
  - _Year 2016 · ds:dpi — ICT Infrastructure / Grid Reliability (Power Outage Frequency)_
- [https://tradingeconomics.com/guinea/access-to-electricity-rural-percent-of-rural-population-wb-data.html](https://tradingeconomics.com/guinea/access-to-electricity-rural-percent-of-rural-population-wb-data.html)
  - Trading Economics rural-electrification data page — reference.
  - _Year 2023 · ds:dpi — ICT Infrastructure / Urban-Rural Electrification Gap_
- [https://tradingeconomics.com/guinea/access-to-electricity-urban-percent-of-urban-population-wb-data.html](https://tradingeconomics.com/guinea/access-to-electricity-urban-percent-of-urban-population-wb-data.html)
  - Trading Economics urban-electrification data page — reference.
  - _Year 2023 · ds:dpi — ICT Infrastructure / Urban-Rural Electrification Gap_
- [https://www.wipo.int/edocs/gii-ranking/2025/gn.pdf](https://www.wipo.int/edocs/gii-ranking/2025/gn.pdf)
  - WIPO Global Innovation Index 2025 Guinea ranking PDF — reference flagship.
  - _Year 2025 · ds:dpi — ICT Infrastructure / Global Innovation Index Ranking_
- [https://rccm.ohada.org](https://rccm.ohada.org)
  - OHADA regional business registry (RCCM) — regional registry/portal.
  - _Year 2026 · ds:dpi — Registries / Status; Registries / Uptake_
- [https://guinee.cadastreminier.org](https://guinee.cadastreminier.org)
  - Guinea mining-cadastre portal — standing portal.
  - _Year 2026 · ds:dpi — Registries / Status_
- [https://etax.gov.gn](https://etax.gov.gn)
  - Guinea e-Tax portal — standing portal.
  - _Year 2026 · ds:dpi — Registries / Scope; Registries / Status_
- [https://www.datacentermap.com/guinea/conakry/guilab-data-center](https://www.datacentermap.com/guinea/conakry/guilab-data-center)
  - DataCenterMap GUILAB data-centre entry — registry.
  - _Year 2016 · ds:dc — GUILAB Data Centre / Conakry_
- [https://datacenterplatform.com/countries/guinea](https://datacenterplatform.com/countries/guinea)
  - DataCenterPlatform Guinea directory — registry.
  - _Year 2016 · ds:dc — GUILAB Data Centre / Conakry_
- [https://www.colocationm.com/guinea/conakry-dc-1](https://www.colocationm.com/guinea/conakry-dc-1)
  - ColocationM Guinea/Conakry directory — registry.
  - _Year 2016 · ds:dc — GUILAB Data Centre / Conakry_
- [https://www.iicba.unesco.org/en/guinea](https://www.iicba.unesco.org/en/guinea)
  - UNESCO IICBA Guinea page — org reference page.
  - _ds:rural — School_
- [https://www.stat-guinee.org/images/Documents/Publications/SSN/mspc/MSPC_ANNUAIRE_2018.pdf](https://www.stat-guinee.org/images/Documents/Publications/SSN/mspc/MSPC_ANNUAIRE_2018.pdf)
  - National Statistics Institute (Guinea) MSPC 2018 yearbook — reference stats.
  - _ds:rural — Police_

## Excluded — pre-2024  (8)

- [https://thedocs.worldbank.org/en/doc/1f27e46f67848dbf244c2e7a523ef521-0200022021/original/Guinea-DE4A-Final-French-CLEAN-07042021.pdf](https://thedocs.worldbank.org/en/doc/1f27e46f67848dbf244c2e7a523ef521-0200022021/original/Guinea-DE4A-Final-French-CLEAN-07042021.pdf) — World Bank Digital Economy for Africa (DE4A) Guinea diagnostic, dated 07-04-2021 — before cutoff.
- [https://www.biometricupdate.com/202011/guineas-biometrics-backed-foundational-identity-pilot-shows-open-source-benefits](https://www.biometricupdate.com/202011/guineas-biometrics-backed-foundational-identity-pilot-shows-open-source-benefits) — BiometricUpdate 202011 — Guinea foundational-ID pilot (MOSIP). Before cutoff.
- [https://idtechwire.com/guinea-uses-mosip-tech5-technology-new-national-id-program-062207](https://idtechwire.com/guinea-uses-mosip-tech5-technology-new-national-id-program-062207) — IDTechWire — Guinea uses MOSIP/TECH5 for national ID (2021). Before cutoff.
- [https://www.biometricupdate.com/202106/guinea-selects-idemia-for-osia-digital-identity-system-to-drive-inclusion](https://www.biometricupdate.com/202106/guinea-selects-idemia-for-osia-digital-identity-system-to-drive-inclusion) — BiometricUpdate 202106 — Guinea selects IDEMIA for OSIA digital identity. Before cutoff.
- [https://www.gsma.com/solutions-and-impact/connectivity-for-good/mobile-for-development/programme/mobile-money/making-debut-p2g-payments-orange-money-collaborates-government-ease-vehicle-tax-collections-guinea](https://www.gsma.com/solutions-and-impact/connectivity-for-good/mobile-for-development/programme/mobile-money/making-debut-p2g-payments-orange-money-collaborates-government-ease-vehicle-tax-collections-guinea) — GSMA — Orange Money P2G vehicle-tax collections in Guinea (2017). Before cutoff.
- [https://documents.worldbank.org/curated/en/869041550631657109/pdf/Guinea-Electricity-Access-Scale-Up-Project.pdf](https://documents.worldbank.org/curated/en/869041550631657109/pdf/Guinea-Electricity-Access-Scale-Up-Project.pdf) — World Bank Guinea Electricity Access Scale-Up Project (2019). Before cutoff (and marginal, energy).
- [https://documents.worldbank.org/curated/en/630611472120072748/pdf/107993-WP-P156810-PUBLIC-Guinea-ID4D-Web.pdf](https://documents.worldbank.org/curated/en/630611472120072748/pdf/107993-WP-P156810-PUBLIC-Guinea-ID4D-Web.pdf) — World Bank Guinea ID4D diagnostic (P156810, ~2016). Before cutoff.
- [https://www.biometricupdate.com/202212/guinea-to-introduce-biometric-land-management-with-datasonic](https://www.biometricupdate.com/202212/guinea-to-introduce-biometric-land-management-with-datasonic) — BiometricUpdate 202212 — Guinea biometric land management with Datasonic (2022). Before cutoff.

---

## Phase 2 — Fetch run summary (2026-07-15)

**A-web fetched:** 19 URLs → **16 clips** placed in `/new-queue`. **1 skip** (fetch-fail); 3 near-duplicates consolidated.

**Skip:**
- `gouvernement.gov.gn/le-premier-ministre-receptionne-les-kits-denrolement-biometrique` — CRAWL_LIVECRAWL_TIMEOUT then HTTP_403 (2 tries). Unique-ish, but the biometric-ID/enrolment thread is covered by the FUGAS clips + Sanoyah biometric-birth-certificate clip. `gouvernement.gov.gn` fetches unreliably.

**Consolidations (clips < A-web count):**
- **BCRG instant payment system (SPI, workshop 18 Dec 2025):** the French Agence Ecofin item is a **translation-duplicate** of the English Ecofin item — folded (not clipped). Kept the English Ecofin clip + the WeAreTech clip (distinct outlet, adds inclusion stats: 23% adults banked). One event, flagged.
- **Transform Africa Summit 2025 (Conakry, 12-19 Nov):** three Smart Africa pages (opening 13 Nov / day-2 17 Nov / wrap 19 Nov) → **2 clips** (opening+overview; day-2 Simandou-Pillar-3/TELEMO/SANIA/SADX + closing wrap).

**Dates confirmed on fetch (all in-window 2025-26):** WeAreTech sector-review → 2026-01-14; Guinéenews SNIS → 2025-11-27; Ecofin/WeAreTech SPI → 18 Dec 2025 (reported 21-22 Dec); WeAreTech Trésor Pay → 2025-12-23 (launched 22 Dec); Ecofin mobile-payment → 2025-11-07; Ecofin FUGAS → 2025-11-30 + BiometricUpdate → 2025-12-03; DataReportal → 2025-03-03; IDTechWire Sanoyah birth-certs → 2026-03-04 (launch 2 Mar); Vision Guinée cadastre → 2026-02-08; Ecofin Tier-III DC → 2025-09-04 + TechAfricaNews .gn/DC → 2025-09-05; Smart Africa TAS opening → 2025-11-13; Ecofin schools → 2025-11-07. Ecofin id-ladder confirmed: 48427→2025-09-04, 50249/50255→2025-11-07, 50979→2025-11-30, 51590→2025-12-21.

**This run seeds a real hub** (the stub only had cable-landing). Threads for `wiki/places/GIN.md`:
- **Simandou 2040 strategy** — the overarching frame; its **digital pillar (Pillar 3)** launched at TAS 2025. Ties together FUGAS, TELEMO, the data centre, connectivity and the Simandou Academy.
- **Transform Africa Summit 2025 (Conakry, 12-14/19 Nov)** — Guinea hosted Smart Africa's flagship (first Francophone West African host); Doumbouya + Kagame; theme "AI for Africa"; 7,000+ participants, 14 MoUs; SANIA/SADX/Visa MoUs.
- **National Tier III data centre + .gn domain (4-5 Sep 2025)** — digital-sovereignty milestone; extends the hub's existing cable-landing thread. (2nd submarine cable landing underway; interconnected with Mali/CIV/Sierra Leone, soon Senegal/Gambia/Guinea-Bissau.)
- **FUGAS biometric civil-service audit** — €26.9m/233bn GNF saved; 277k→130k confirmed; anti-ghost-worker.
- **Instant/mobile payments (BCRG)** — national SPI on **Mojaloop** (Dec-2025 workshop); **Trésor Pay** public-payments gateway (22 Dec); mobile-payment strategy vs cash shortage (11 EMIs, 26% e-money accounts, PAPSS/ECOWAS ambition).
- **Civil registry / national ID** — ONECI biometric birth certificates (Sanoyah, Mar 2026); MOSIP/TECH5 + IDEMIA/OSIA base (2021 backstory, pre-2024); RAVEC voter registry; "one citizen, one identity."
- **Cadastre digitalization** (Urbanism Ministry, Feb 2026); **RSU** social registry (FDSI, A-PDF).
- **Governance/institutions:** new data-protection law + **ANSSI** (cybersecurity, hosts Laws L035/2016 e-transactions & L037/2016 cyber/data-protection) + **ANDE** (Agence Nationale de Digitalisation de l'État); **ANSUTEN** (universal service); **ARPT** (regulator); EGDI 0.4006 (2024, 29th in Africa).
- **Connectivity/education:** backbone 50→200 Gbps, 12,000km fibre, GIGA schools (600→2,200 by 2026), Univ Connect, 20 digital hubs.

**Left for Bill:** A-PDF 3 (WB P161329 stats/ID 2025, WB BOSIB education 2025, FDSI RSU presentation 2025) · B 11 · C 9 · D 26. The **2020-2022 biometric-ID history** (MOSIP/TECH5, IDEMIA/OSIA, Datasonic land) is pre-2024 (excluded) but is the backstory Bill can cite when seeding the hub.
