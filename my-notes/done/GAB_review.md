# Gabon (GAB) — dataset→wiki intake review

*Run: 2026-07-15. Workflow: `country-ingest-workflow.md` Phase 1 (assessment).*

## Header counts

- **Total distinct source URLs:** 84
- **Already held (hub):** 0 — `wiki/places/GAB.md` is a **bare stub** (~1.3 KB on disk, comparable to the GIN/GNQ stubs). A stub hub behaves like no hub: nothing is meaningfully held, so every in-window candidate is treated as **new**. (Assessed with the device bridge's read/stage tools briefly offline; to be re-confirmed against the hub text — no candidate is an obvious match to a stub in any case.)
- **Excluded (pre-2024):** 6 — dropped on publication date (see list).
- **New & in-window:** 78

| Bucket | Count |
|---|---|
| Aweb | 24 |
| Apdf | 2 |
| B | 14 |
| C | 9 |
| D | 29 |
| **excluded (pre-2024)** | 6 |
| **held** | 0 |

### Context

Francophone Central Africa (CEMAC/BEAC/GIMAC; parent XAF→XCA). Post-2023-coup government under a heavy 2024-26 digital-transformation push. `africa-data-centres.csv` had 3 GAB rows; `african-rural-digitalisation.csv` 4.

### Clusters / merge flags

- **CNIe electronic ID-card relaunch (2024):** Powers of Africa + Techpoint + BiometricUpdate 202409 + WeAreTech + Innovation Village (resumes after 11-yr break) + Interior Ministry /559 (official CNIe) — one event/entity. (Older Gemalto biometric-registry deal, Secure Tech Alliance, sits in C, ~2013.)
- **2026 public-finance / e-gov digitalization:** TechAfricaNews (2026-01-14) + Ecofin 52022 (integrated public-finance platform) + Ecofin 53229 (speed up reforms) + WeAreTech (2026 digital budget +156%) + Ecofin 48682 (revenue-digitalization budget) — one policy thread.
- **Revenue / e-tax (DGI):** gouvernement.ga e-Tax (2025-08-18) + Ecofin 48682. (e-tax.dgi.ga, dgi.ga = D portals.)
- **MADIGIPAIE digital payments:** Ecofin 51310 (~Dec 2025).
- **UNCDF financial-inclusion deal:** BiometricUpdate 202512.
- **Registre Social Unique (RSU):** gouvernement.ga (2025-08-28) + famille.gouv.ga — one social-registry event.
- **Cadastre modernization (IGN FI):** gouvernement.ga (2025-11-24).
- **Data centres:** *Cybastion 20MW national sovereign DC* = DCD (B) + Cybastion PR (C, primary) + Porteo groundbreaking PR (C, primary); *ST Digital DC (Nkok SEZ)* = DCD (B) + Developing Telecoms (B). **Mis-attached:** the st.digital blog URL is about **Côte d'Ivoire**, not Gabon (bucketed C, flagged).
- **Data-protection Law 025/2023:** Clym (C) + DLA Piper (D) + dataprotection.africa (D).

### Date-check / caveats

- Ecofin ids decoded at assessment (DDMM prefix + id): 53229→~2026-02-24, 52022→~2026-01-18, 51310→~2025-12-11, 50115→~2025-11-04, 48682→~2025-09-15 — Phase 2 confirms on fetch.
- WB Digital Gabon Project docs (D) are ~2021 PADs; the two P175987 PDFs (A-PDF) decode to 2024-06 and 2024-12.
- `africanwirelesscomms.com/news-details?itemid=` is a known title-only outlet (both GAB URLs in B, likely no body).
- DatacenterDynamics fetches unreliably (livecrawl timeouts) — the two DC news items sit in B.

## A-web · ingest (non-PDF) — CC fetches in Phase 2  (24)

- [https://techafricanews.com/2026/01/14/gabon-accelerates-digital-transformation-with-new-public-finance-and-e-government-initiatives](https://techafricanews.com/2026/01/14/gabon-accelerates-digital-transformation-with-new-public-finance-and-e-government-initiatives)
  - TechAfricaNews, 2026-01-14 — Gabon accelerates digital transformation, new public-finance & e-gov initiatives. CLUSTER: 2026 public-finance/e-gov.
  - _Year 2024/2026 · ds:dpi — Data Exchange / Business Registration & Licensing Integration; Data Exchange / Digital Payments Integration; Data Exchange / Tax & Revenue Integration_
- [https://powersofafrica.com/article/698/gabon-national-identity-card-goes-digital](https://powersofafrica.com/article/698/gabon-national-identity-card-goes-digital)
  - Powers of Africa — Gabon national ID card goes digital (CNIe). CLUSTER: CNIe electronic-ID relaunch 2024. Lower-authority outlet.
  - _Year 2024 · ds:dpi — Data Exchange / Digital ID Integration_
- [https://techpoint.africa/news/gabon-launches-electronic-id-card](https://techpoint.africa/news/gabon-launches-electronic-id-card)
  - Techpoint Africa — Gabon launches electronic ID card. CLUSTER: CNIe electronic-ID relaunch 2024.
  - _Year 2024 · ds:dpi — Data Exchange / Digital ID Integration; Data Exchange / Passport & Immigration Integration; Digital Id / Banking/Financial Services Use (+6 more)_
- [https://www.biometricupdate.com/202409/gabon-puts-digital-id-at-forefront-of-its-digital-transformation-journey](https://www.biometricupdate.com/202409/gabon-puts-digital-id-at-forefront-of-its-digital-transformation-journey)
  - BiometricUpdate 202409 — Gabon puts digital ID at forefront. CLUSTER: CNIe/digital-ID 2024.
  - _Year 2024 · ds:dpi — Data Exchange / Digital ID Integration; Data Exchange / Strategic Framework; Digital Id / Digital ID System Exists (+2 more)_
- [https://www.worldbank.org/en/news/press-release/2024/01/02/gabon-the-world-bank-boost-its-support-to-accelerate-digital-transformation](https://www.worldbank.org/en/news/press-release/2024/01/02/gabon-the-world-bank-boost-its-support-to-accelerate-digital-transformation)
  - World Bank press release, 2024-01-02 — WB boosts support to accelerate Gabon's digital transformation.
  - _Year 2024 · ds:dpi — Data Exchange / AI/Analytics Capabilities; Data Exchange / Operational Status; Data Exchange / Social Protection Integration (+1 more)_
- [https://www.ecofinagency.com/news-digital/2402-53229-gabon-pushes-to-speed-up-execution-of-digital-reform-programs](https://www.ecofinagency.com/news-digital/2402-53229-gabon-pushes-to-speed-up-execution-of-digital-reform-programs)
  - Ecofin (id→~Feb 2026) — Gabon pushes to speed up execution of digital-reform programs.
  - _Year 2024/2026 · ds:dpi — Data Exchange / Implementation Roadmap; Data Exchange / Operational Status; Data Exchange / Public Transparency_
- [https://www.wearetech.africa/en/fils-uk/news/tech/gabon-launches-electronic-national-identity-card](https://www.wearetech.africa/en/fils-uk/news/tech/gabon-launches-electronic-national-identity-card)
  - WeAreTech Africa — Gabon launches electronic national ID card. CLUSTER: CNIe 2024.
  - _Year 2024 · ds:dpi — Digital Id / Digital Authentication Function_
- [https://www.biometricupdate.com/202512/gabon-pens-deal-with-uncdf-to-accelerate-financial-inclusion](https://www.biometricupdate.com/202512/gabon-pens-deal-with-uncdf-to-accelerate-financial-inclusion)
  - BiometricUpdate 202512 — Gabon signs deal with UNCDF to accelerate financial inclusion.
  - _Year 2024 · ds:dpi — Digital Id / Banking/Financial Services Use; Digital Id / KYC Enablement_
- [https://www.interieur.gouv.ga/9-actualites/559-carte-nationale-didentite-electronique-cnie-](https://www.interieur.gouv.ga/9-actualites/559-carte-nationale-didentite-electronique-cnie-)
  - Gabon Interior Ministry (official) — Carte Nationale d'Identité Électronique (CNIe). Primary official ID announcement. CLUSTER: CNIe 2024.
  - _Year 2024 · ds:dpi — Digital Id / Biometric Data Collection; Digital Id / Cost of Credential; Digital Id / Digital ID Specific Regulation (+6 more)_
- [https://www.wearetech.africa/en/fils-uk/news/public-management/gabon-s-2026-digital-budget-soars-by-156-to-fund-tech-overhaul](https://www.wearetech.africa/en/fils-uk/news/public-management/gabon-s-2026-digital-budget-soars-by-156-to-fund-tech-overhaul)
  - WeAreTech Africa — Gabon's 2026 digital budget soars 156% to fund tech overhaul. CLUSTER: 2026 digital budget/public-finance.
  - _Year 2024 · ds:dpi — Digital Id / Security Reviews; Digital Id / Sustainability_
- [https://innovation-village.com/gabon-resumes-issuance-of-electronic-id-cards-following-11-year-break](https://innovation-village.com/gabon-resumes-issuance-of-electronic-id-cards-following-11-year-break)
  - Innovation Village — Gabon resumes electronic ID cards after 11-year break. CLUSTER: CNIe relaunch 2024.
  - _Year 2024 · ds:dpi — Digital Id / Cross-Border Recognition_
- [https://www.ecofinagency.com/news-digital/1509-48682-gabon-targets-13-billion-2026-budget-with-revenue-digitalization-push](https://www.ecofinagency.com/news-digital/1509-48682-gabon-targets-13-billion-2026-budget-with-revenue-digitalization-push)
  - Ecofin (id→~Sep 2025) — Gabon targets 1.3bn 2026 budget with revenue-digitalization push. CLUSTER: revenue digitalization / 2026 budget.
  - _Year 2025 · ds:dpi — Digital Pay / Revenue Collection_
- [http://gouvernement.ga/2025/08/18/etax-direction-generale-des-impots](http://gouvernement.ga/2025/08/18/etax-direction-generale-des-impots)
  - Gabon government (official), 2025-08-18 — e-Tax / Direction Générale des Impôts. CLUSTER: e-tax/DGI revenue digitalization.
  - _Year 2025 · ds:dpi — Digital Pay / Person-to-Government (P2G) Payments; Digital Pay / Tax Portal_
- [https://www.ecofinagency.com/news-digital/1112-51310-gabon-speeds-up-digital-payments-rollout-with-madigipaie-program](https://www.ecofinagency.com/news-digital/1112-51310-gabon-speeds-up-digital-payments-rollout-with-madigipaie-program)
  - Ecofin (id→~Dec 2025) — Gabon speeds up digital payments with MADIGIPAIE program.
  - _Year 2024/2025/2026 · ds:dpi — Digital Pay / Active Digital Payment Users; Digital Pay / Government Payment Digitization; Digital Pay / Government-to-Person (G2P) Payments (+1 more)_
- [https://www.ecofinagency.com/news/1801-52022-gabon-launches-integrated-digital-platform-for-public-finance-management](https://www.ecofinagency.com/news/1801-52022-gabon-launches-integrated-digital-platform-for-public-finance-management)
  - Ecofin (id→~Jan 2026) — Gabon launches integrated digital platform for public finance management. CLUSTER: 2026 public-finance platform.
  - _Year 2026 · ds:dpi — Digital Pay / Government Payment Digitization_
- [https://datareportal.com/reports/digital-2025-gabon](https://datareportal.com/reports/digital-2025-gabon)
  - DataReportal Digital 2025 Gabon — dated country reference baseline.
  - _Year 2025 · ds:dpi — ICT Infrastructure / Mobile Phone Penetration_
- [https://www.interieur.gouv.ga/9-actualites/601-verifiez-votre-inscription-et-consultez-votre-centre-de-vote-en-](https://www.interieur.gouv.ga/9-actualites/601-verifiez-votre-inscription-et-consultez-votre-centre-de-vote-en-)
  - Gabon Interior Ministry (official), 2025 — electoral-roll check / voter-centre lookup (national-ID-linked). Official news; marginal (electoral).
  - _Year 2025 · ds:dpi — Registries / National Id integration; Registries / Status_
- [http://gouvernement.ga/2025/11/24/foncier-et-numerique-le-gabon-engage-la-modernisation-de-son-cadastre-avec-lign-fi](http://gouvernement.ga/2025/11/24/foncier-et-numerique-le-gabon-engage-la-modernisation-de-son-cadastre-avec-lign-fi)
  - Gabon government (official), 2025-11-24 — land & digital: cadastre modernization with IGN FI. On-topic registries.
  - _Year 2025 · ds:dpi — Registries / Separate cadastral register; Registries / Status_
- [http://gouvernement.ga/2025/08/28/registre-social-unique-gabon-modernisation-de-la-protection-sociale](http://gouvernement.ga/2025/08/28/registre-social-unique-gabon-modernisation-de-la-protection-sociale)
  - Gabon government (official), 2025-08-28 — Registre Social Unique (social registry) modernizing social protection. CLUSTER: RSU.
  - _Year 2025 · ds:dpi — Registries / Status_
- [https://www.famille.gouv.ga/273-presse/274-actualites/1889-affaires-sociales-et-de-linclusion-mise-en-place-du-registre-social-unique](https://www.famille.gouv.ga/273-presse/274-actualites/1889-affaires-sociales-et-de-linclusion-mise-en-place-du-registre-social-unique)
  - Gabon Ministry of Family (official) — establishment of the Registre Social Unique. CLUSTER: RSU.
  - _Year 2025 · ds:dpi — Registries / Status_
- [https://gabonmediatime.com/gabon-integration-de-la-sante-scolaire-dans-le-systeme-de-gestion-educative](https://gabonmediatime.com/gabon-integration-de-la-sante-scolaire-dans-le-systeme-de-gestion-educative)
  - Gabon Media Time — integration of school health into the education management system (EMIS). National media, on-topic; verify date.
  - _ds:rural — School_
- [https://pointnoirtv.com/2025/03/11/gabon-renforcement-de-la-collecte-des-donnees-scolaires-une-priorite-pour-le-ministere-de-leducation-nationale](https://pointnoirtv.com/2025/03/11/gabon-renforcement-de-la-collecte-des-donnees-scolaires-une-priorite-pour-le-ministere-de-leducation-nationale)
  - PointNoirTV, 2025-03-11 — Gabon strengthens school-data collection (Education Ministry priority). Content is about Gabon (outlet is Congo-Brazzaville — not cross-contamination).
  - _ds:rural — School_
- [https://www.interieur.gouv.ga/9-actualites/804-forces-de-police-nationale-la-digitalisation-en-marche-](https://www.interieur.gouv.ga/9-actualites/804-forces-de-police-nationale-la-digitalisation-en-marche-)
  - Gabon Interior Ministry (official) — National Police digitalization underway. Official news, on-topic (govtech/policing).
  - _ds:rural — Police_
- [https://www.apt.ch/news/gabon-moves-strengthen-judicial-safeguards-standardised-custody-registers](https://www.apt.ch/news/gabon-moves-strengthen-judicial-safeguards-standardised-custody-registers)
  - APT (Assoc. for the Prevention of Torture) — Gabon strengthens judicial safeguards via standardised custody registers. Dated analysis of a specific reform; verify date.
  - _ds:rural — Police_

## A-PDF · ingest (PDF) — Bill handles by hand  (2)

- [https://documents1.worldbank.org/curated/en/099062924095532581/pdf/P175987-7396b60b-a6b3-49cf-a69b-e72494700267.pdf](https://documents1.worldbank.org/curated/en/099062924095532581/pdf/P175987-7396b60b-a6b3-49cf-a69b-e72494700267.pdf)
  - World Bank curated PDF (P175987, id →2024-06-29) — Digital Gabon / digital-ID project doc (CRVS integration).
  - _Year 2020/2023/2024/2026 · ds:dpi — Data Exchange / Civil Registration & Vital Statistics Integration; Data Exchange / Data Sovereignty Provisions; Data Exchange / Digital ID Integration (+5 more)_
- [https://documents1.worldbank.org/curated/en/099121924052032986/pdf/P175987-0914ff29-7941-4230-8202-16cca6789388.pdf](https://documents1.worldbank.org/curated/en/099121924052032986/pdf/P175987-0914ff29-7941-4230-8202-16cca6789388.pdf)
  - World Bank curated PDF (P175987, id →2024-12-19) — Digital Gabon / digital-ID project doc (civil-reg / electronic database).
  - _Year 2024 · ds:dpi — Digital Id / Civil Registration Integration; Digital Id / Electronic Database; Digital Id / Healthcare Access Use (+4 more)_

## B · check first  (14)

- [https://www.africanwirelesscomms.com/news-details?itemid=10017&post=gabon-advances-digital-transformation-agenda-with-key-public-administration-reforms-634175](https://www.africanwirelesscomms.com/news-details?itemid=10017&post=gabon-advances-digital-transformation-agenda-with-key-public-administration-reforms-634175)
  - African Wireless Comms — Gabon public-administration reforms. Known title-only outlet (likely no body); human glance.
  - _Year 2024/2026 · ds:dpi — Data Exchange / Digital Payments Integration; Digital Id / Ministry of Finance Oversight_
- [https://pmc.ncbi.nlm.nih.gov/articles/PMC3646350](https://pmc.ncbi.nlm.nih.gov/articles/PMC3646350)
  - PMC academic article — healthcare-access/digital-ID use. Academic; human glance.
  - _Year 2024 · ds:dpi — Digital Id / Healthcare Access Use_
- [https://openknowledge.worldbank.org/bitstreams/0e849f44-621b-5304-a359-0ea027029132/download](https://openknowledge.worldbank.org/bitstreams/0e849f44-621b-5304-a359-0ea027029132/download)
  - World Bank Open Knowledge document (digital-ID healthcare/social-services) — verify date/scope; human glance.
  - _Year 2024 · ds:dpi — Digital Id / Healthcare Access Use; Digital Id / Social Services Use_
- [https://www.banque-france.fr/en/news/it-audit-bank-central-african-states-beac](https://www.banque-france.fr/en/news/it-audit-bank-central-african-states-beac)
  - Banque de France news — IT audit of BEAC (regional CEMAC central bank, not Gabon-specific). Human glance.
  - _Year 2025 · ds:dpi — Digital Pay / Independent Audits and Reviews_
- [https://www.africanwirelesscomms.com/news-details?itemid=9415&amp](https://www.africanwirelesscomms.com/news-details?itemid=9415&amp)
  - African Wireless Comms — government data-centre / cloud strategy. Known title-only outlet (likely no body); human glance.
  - _Year 2025 · ds:dpi — ICT Infrastructure / Government Data Center / Cloud Strategy_
- [https://www.ecofinagency.com/news-industry/0411-50115-public-anger-grows-in-gabon-s-capital-over-ongoing-power-outages](https://www.ecofinagency.com/news-industry/0411-50115-public-anger-grows-in-gabon-s-capital-over-ongoing-power-outages)
  - Ecofin (id→~Nov 2025) — power outages in Gabon's capital. Marginal (grid reliability, not core digital); human glance.
  - _Year 2025 · ds:dpi — ICT Infrastructure / Grid Reliability (Power Outage Frequency)_
- [https://developingtelecoms.com/telecom-technology/enterprise-ecosystems/18813-afrilabs-and-atu-to-unite-digital-innovation-hubs-across-africa.html](https://developingtelecoms.com/telecom-technology/enterprise-ecosystems/18813-afrilabs-and-atu-to-unite-digital-innovation-hubs-across-africa.html)
  - Developing Telecoms — AfriLabs & ATU unite innovation hubs across Africa (continental, not Gabon-specific). Human glance.
  - _Year 2025 · ds:dpi — ICT Infrastructure / Technology and Innovation Hubs_
- [https://www.datacenterdynamics.com/en/news/gabon-breaks-ground-for-data-center-near-capital](https://www.datacenterdynamics.com/en/news/gabon-breaks-ground-for-data-center-near-capital)
  - DatacenterDynamics — Gabon breaks ground for data centre (ST Digital, Nkok SEZ). DATE-CHECK (undated; DCD fetch unreliable). CLUSTER: ST Digital DC.
  - _ds:dc — ST Digital Datacenter Gabon (Nkok SEZ) / Libreville_
- [https://developingtelecoms.com/telecom-technology/data-centres-networks/18901-gabon-plans-new-data-centre-with-help-from-st-digital.html](https://developingtelecoms.com/telecom-technology/data-centres-networks/18901-gabon-plans-new-data-centre-with-help-from-st-digital.html)
  - Developing Telecoms — Gabon plans new data centre with ST Digital. DATE-CHECK; human glance. CLUSTER: ST Digital DC.
  - _ds:dc — ST Digital Datacenter Gabon (Nkok SEZ) / Libreville_
- [https://www.datacenterdynamics.com/en/news/cybastion-to-build-20mw-data-center-in-gabon](https://www.datacenterdynamics.com/en/news/cybastion-to-build-20mw-data-center-in-gabon)
  - DatacenterDynamics — Cybastion to build 20MW data centre in Gabon. DATE-CHECK (undated; DCD unreliable). CLUSTER: Cybastion sovereign DC.
  - _ds:dc — Cybastion National Sovereign Data Center / Libreville_
- [https://pmc.ncbi.nlm.nih.gov/articles/PMC9587495](https://pmc.ncbi.nlm.nih.gov/articles/PMC9587495)
  - PMC academic article — rural clinic/health. Academic; human glance.
  - _ds:rural — Clinic_
- [https://pmc.ncbi.nlm.nih.gov/articles/PMC7444076](https://pmc.ncbi.nlm.nih.gov/articles/PMC7444076)
  - PMC academic article — rural clinic/health. Academic; human glance.
  - _ds:rural — Clinic_
- [https://www.jelsciences.com/articles/jbres1593.pdf](https://www.jelsciences.com/articles/jbres1593.pdf)
  - JELSciences academic article PDF — health/clinic. Academic; human glance.
  - _ds:rural — Clinic_
- [https://openknowledge.worldbank.org/entities/publication/51e6f0b5-1de7-55f8-96d1-fa8d898c8552](https://openknowledge.worldbank.org/entities/publication/51e6f0b5-1de7-55f8-96d1-fa8d898c8552)
  - World Bank Open Knowledge publication landing (registry/CRVS) — verify date/scope; human glance.
  - _ds:rural — Registry_

## C · lead only (do not cite)  (9)

- [https://www.clym.io/regulations/law-no-0252023-gabon](https://www.clym.io/regulations/law-no-0252023-gabon)
  - Clym compliance-vendor regulation summary of Law 025/2023 (data protection) — vendor DP-law summary, lead-only.
  - _Year 2023/2024 · ds:dpi — Data Exchange / Data Sovereignty Provisions; Data Exchange / Enabling Legislation; Digital Id / Data Protection Act (+3 more)_
- [https://www.securetechalliance.org/gemalto-selected-to-build-secure-and-reliable-biometric-national-registry-in-gabon](https://www.securetechalliance.org/gemalto-selected-to-build-secure-and-reliable-biometric-national-registry-in-gabon)
  - Secure Technology Alliance / Gemalto — biometric national registry in Gabon (Gemalto deal likely dates ~2013). Vendor/industry-body profile, lead-only.
  - _Year 2024 · ds:dpi — Digital Id / Biometric Data Collection; Digital Id / Digital Authentication Function_
- [https://fr.scribd.com/document/989563957/W-19756083](https://fr.scribd.com/document/989563957/W-19756083)
  - Scribd document — tertiary host, lead-only.
  - _Year 2024 · ds:dpi — Digital Id / Digital ID Specific Regulation; Digital Id / Enrollment Mandatory Status_
- [https://www.facebook.com/groups/552425261889249/posts/2170046513460441](https://www.facebook.com/groups/552425261889249/posts/2170046513460441)
  - Facebook group post — social, lead-only.
  - _Year 2024 · ds:dpi — Digital Id / Non-National Eligibility; Digital Id / SIM Card Registration Use_
- [https://www.ictworks.org/national-biometric-data-collection](https://www.ictworks.org/national-biometric-data-collection)
  - ICTWorks blog — national biometric data collection (not clearly Gabon-specific). Blog, lead-only.
  - _Year 2024 · ds:dpi — Digital Id / SIM Card Registration Use_
- [https://www.traveltomtom.net/destinations/africa/gabon/sim-card-gabon](https://www.traveltomtom.net/destinations/africa/gabon/sim-card-gabon)
  - Travel blog — SIM card in Gabon. Tertiary, lead-only.
  - _Year 2024 · ds:dpi — Digital Id / SIM Card Registration Use_
- [https://st.digital/en/blog/std-s-blog-presse-3/cote-divoire-st-digital-inaugure-un-data-center-pour-renforcer-la-souverainete-numerique-africaine-515](https://st.digital/en/blog/std-s-blog-presse-3/cote-divoire-st-digital-inaugure-un-data-center-pour-renforcer-la-souverainete-numerique-africaine-515)
  - ST Digital vendor blog — this post is about **Côte d'Ivoire**, not Gabon (dataset mis-attached). Not GAB-relevant; vendor PR.
  - _ds:dc — ST Digital Datacenter Gabon (Nkok SEZ) / Libreville_
- [https://www.cybastiontech.com/cybastion-government-of-gabon-and-aninf-sign-historic-digital-infrastructure-agreement](https://www.cybastiontech.com/cybastion-government-of-gabon-and-aninf-sign-historic-digital-infrastructure-agreement)
  - Cybastion vendor PR — Cybastion/Government of Gabon/ANINF digital-infrastructure agreement. Vendor press (primary for the Cybastion DC deal); lead.
  - _ds:dc — Cybastion National Sovereign Data Center / Libreville_
- [https://porteo-group.com/en/porteo-lays-the-foundation-stone-for-gabons-national-data-center](https://porteo-group.com/en/porteo-lays-the-foundation-stone-for-gabons-national-data-center)
  - Porteo Group (construction) vendor PR — foundation stone for Gabon national data centre. Vendor press (primary for groundbreaking); lead. CLUSTER: national DC.
  - _ds:dc — Cybastion National Sovereign Data Center / Libreville_

## D · resource / entity (not a dated source)  (29)

- [https://thedocs.worldbank.org/en/doc/61714f214ed04bcd6e9623ad0e215897-0400012021/related/P17016008155bc0570b002059059dfec929.pdf](https://thedocs.worldbank.org/en/doc/61714f214ed04bcd6e9623ad0e215897-0400012021/related/P17016008155bc0570b002059059dfec929.pdf)
  - World Bank curated project PDF (P170160, doc id →2021) — older WB project reference (cite-don't-absorb).
  - _Year 2020/2024/2026 · ds:dpi — Data Exchange / Agriculture System Integration; Data Exchange / Digital Payments Integration; Data Exchange / Education System Integration (+3 more)_
- [https://documents1.worldbank.org/curated/en/301741627956043619/pdf/Gabon-Digital-Gabon-Project.pdf](https://documents1.worldbank.org/curated/en/301741627956043619/pdf/Gabon-Digital-Gabon-Project.pdf)
  - World Bank 'Digital Gabon Project' appraisal document (~2021) — WB PAD reference (cite-don't-absorb).
  - _Year 2021/2024/2026 · ds:dpi — Data Exchange / AI/Analytics Capabilities; Data Exchange / Business Registration & Licensing Integration; Data Exchange / Civil Registration & Vital Statistics Integration (+12 more)_
- [https://www.dlapiperdataprotection.com/index.html?t=law&c=GA](https://www.dlapiperdataprotection.com/index.html?t=law&c=GA)
  - DLA Piper Data Protection Laws of the World — Gabon country entry. Reference tool.
  - _Year 2023/2024 · ds:dpi — Data Exchange / Data Sovereignty Provisions; Data Exchange / Enabling Legislation; Digital Id / Data Protection Act (+5 more)_
- [https://publicadministration.un.org/egovkb/en-us/Data/Country-Information/id/62-Gabon](https://publicadministration.un.org/egovkb/en-us/Data/Country-Information/id/62-Gabon)
  - UN E-Government Knowledgebase (EGOVKB) Gabon country page — reference registry.
  - _Year 2024 · ds:dpi — Data Exchange / Universal Accessibility_
- [https://documents1.worldbank.org/curated/en/301741627956043619/txt/Gabon-Digital-Gabon-Project.txt](https://documents1.worldbank.org/curated/en/301741627956043619/txt/Gabon-Digital-Gabon-Project.txt)
  - Text version of the WB Digital Gabon Project doc — duplicate of the PDF PAD; reference.
  - _Year 2023/2024 · ds:dpi,rural — Data Exchange / Sub-National Participation; Digital Id / Civil Registration Integration; Digital Id / Data Sharing Rules (+7 more)_
- [https://dataprotection.africa/gabon](https://dataprotection.africa/gabon)
  - dataprotection.africa Gabon country profile — standing reference portal.
  - _Year 2023 · ds:dpi — Digital Id / Data Protection Authority Oversight; Digital Id / Individual Data Access_
- [https://www.africanenda.org/uploads/files/SIIPS2023_CaseStudy_CEMAC.pdf](https://www.africanenda.org/uploads/files/SIIPS2023_CaseStudy_CEMAC.pdf)
  - AfricaNenda SIIPS-2023 CEMAC case study PDF — regional (CEMAC) reference flagship.
  - _Year 2023 · ds:dpi — Digital Pay / Business-to-Business (B2B) Payments; Digital Pay / Central Bank Involvement in Governance; Digital Pay / Cross-Border Payment Functionality (+4 more)_
- [https://www.beac.int/wp-content/uploads/2016/10/Rapport-annuel-de-la-COBAC-2024-PDF-14.8-Mo_compressed-1.pdf](https://www.beac.int/wp-content/uploads/2016/10/Rapport-annuel-de-la-COBAC-2024-PDF-14.8-Mo_compressed-1.pdf)
  - BEAC/COBAC 2024 annual report (regional CEMAC) — reference flagship (cite-don't-absorb).
  - _Year 2024 · ds:dpi — Digital Pay / Public Performance Reporting_
- [https://www.ceicdata.com/en/gabon/telecommunication/ga-internet-users-individuals--of-population](https://www.ceicdata.com/en/gabon/telecommunication/ga-internet-users-individuals--of-population)
  - CEIC data page (internet users) — reference indicator.
  - _Year 2016 · ds:dpi — ICT Infrastructure / Internet Usage Rate_
- [https://www.peeringdb.com/org/17265](https://www.peeringdb.com/org/17265)
  - PeeringDB org page — registry.
  - _Year 2025 · ds:dpi — ICT Infrastructure / Internet Exchange Point Presence_
- [https://pulse.internetsociety.org/en/ixp-tracker/country/GA](https://pulse.internetsociety.org/en/ixp-tracker/country/GA)
  - Internet Society IXP tracker (Gabon) — registry/data page.
  - _Year 2014/2025 · ds:dc,dpi — GABIX Internet Exchange Node (Gabon Telecom DC) / Libreville; ICT Infrastructure / Internet Exchange Point Presence_
- [https://cloudscene.com/region/datacenters-in-emea](https://cloudscene.com/region/datacenters-in-emea)
  - Cloudscene EMEA data-centre directory — registry.
  - _ds:dpi — ICT Infrastructure / Commercial Data Center Presence_
- [https://tradingeconomics.com/gabon/access-to-electricity-percent-of-population-wb-data.html](https://tradingeconomics.com/gabon/access-to-electricity-percent-of-population-wb-data.html)
  - Trading Economics data page (electricity access) — reference indicator.
  - _Year 2023 · ds:dpi — ICT Infrastructure / Electricity Access Rate_
- [https://energypedia.info/wiki/Gabon_Energy_Situation](https://energypedia.info/wiki/Gabon_Energy_Situation)
  - Energypedia wiki (Gabon energy situation) — reference wiki (marginal energy topic).
  - _Year 2015/2023 · ds:dpi — ICT Infrastructure / Renewable Energy Share of Generation; ICT Infrastructure / Urban-Rural Electrification Gap_
- [https://tradingeconomics.com/gabon/access-to-electricity-rural-percent-of-rural-population-wb-data.html](https://tradingeconomics.com/gabon/access-to-electricity-rural-percent-of-rural-population-wb-data.html)
  - Trading Economics data page (rural electrification) — reference indicator.
  - _Year 2023 · ds:dpi — ICT Infrastructure / Urban-Rural Electrification Gap_
- [https://www.wipo.int/web-publications/global-innovation-index-2024/en/gii-2024-at-a-glance.html](https://www.wipo.int/web-publications/global-innovation-index-2024/en/gii-2024-at-a-glance.html)
  - WIPO Global Innovation Index 2024 at-a-glance — reference flagship (not Gabon-specific).
  - _ds:dpi — ICT Infrastructure / Global Innovation Index Ranking_
- [https://en.m.youbianku.com/Gabon](https://en.m.youbianku.com/Gabon)
  - Youbianku postal-code directory (Gabon) — low-value directory/registry.
  - _Year 2026 · ds:dpi — Registries / Status_
- [https://www.gni-anpigabon.com](https://www.gni-anpigabon.com)
  - ANPI-Gabon (National Investment Promotion Agency) / GNI homepage — standing portal/entity.
  - _Year 2025 · ds:dpi — Registries / Status_
- [https://www.ceicdata.com/en/gabon/population-and-urbanization-statistics/ga-completeness-of-birth-registration-rural](https://www.ceicdata.com/en/gabon/population-and-urbanization-statistics/ga-completeness-of-birth-registration-rural)
  - CEIC data page (birth-registration completeness) — reference indicator.
  - _Year 2012 · ds:dpi — Registries / Uptake_
- [https://data.worldbank.org/indicator/SP.POP.TOTL?locations=GA](https://data.worldbank.org/indicator/SP.POP.TOTL?locations=GA)
  - World Bank population data page — reference indicator.
  - _Year 2026 · ds:dpi — Registries / Status_
- [https://instatgabon.org/en/projections-demographiques](https://instatgabon.org/en/projections-demographiques)
  - INSTAT Gabon (national statistics office) demographic projections — standing stats portal.
  - _Year 2026 · ds:dpi — Registries / Status_
- [https://taxdo.com/resources/faq/post/verify-gabon-nif-rccm-tax-id](https://taxdo.com/resources/faq/post/verify-gabon-nif-rccm-tax-id)
  - TaxDo verification FAQ/tool (Gabon NIF/RCCM) — reference tool.
  - _Year 2026 · ds:dpi — Registries / Business register integration; Registries / Scope_
- [https://e-tax.dgi.ga](https://e-tax.dgi.ga)
  - Gabon DGI e-Tax portal — standing portal.
  - _Year 2025 · ds:dpi — Registries / Status_
- [https://dgi.ga](https://dgi.ga)
  - Gabon Direction Générale des Impôts homepage — standing portal/entity.
  - _Year 2025/2026 · ds:dpi — Registries / Scope; Registries / Status_
- [https://www.pch.net/ixp/details/1887](https://www.pch.net/ixp/details/1887)
  - PCH IXP directory (GABIX) — registry.
  - _Year 2014 · ds:dc — GABIX Internet Exchange Node (Gabon Telecom DC) / Libreville_
- [https://www.datacentermap.com/ixp/gabon-internet-exchange](https://www.datacentermap.com/ixp/gabon-internet-exchange)
  - DataCenterMap IXP directory (GABIX) — registry.
  - _Year 2014 · ds:dc — GABIX Internet Exchange Node (Gabon Telecom DC) / Libreville_
- [https://download.uis.unesco.org/SDG4/SDG4-Profile-Gabon.pdf](https://download.uis.unesco.org/SDG4/SDG4-Profile-Gabon.pdf)
  - UNESCO UIS SDG4 education profile (Gabon) — reference indicator.
  - _ds:rural — School_
- [https://fpn.ga/infos-aux-usagers/plaintes-depositions](https://fpn.ga/infos-aux-usagers/plaintes-depositions)
  - Gabon Police Nationale (FPN) user-services page (complaints/depositions) — standing portal.
  - _ds:rural — Police_
- [https://apai-crvs.uneca.org/sites/default/files/resourcefiles/report_on_the_status_of_civil_registration_and_vital_statistics_in_africa.pdf](https://apai-crvs.uneca.org/sites/default/files/resourcefiles/report_on_the_status_of_civil_registration_and_vital_statistics_in_africa.pdf)
  - UNECA APAI-CRVS continental CRVS-status report — multi-country reference flagship.
  - _ds:rural — Registry_

## Excluded — pre-2024  (6)

- [https://connectathon.ihe-europe.net/sites/ihe-cat2014.org/files/210616_14.00_eGabon%20CI-SIS_BerangerNsa-eGabon.pdf](https://connectathon.ihe-europe.net/sites/ihe-cat2014.org/files/210616_14.00_eGabon%20CI-SIS_BerangerNsa-eGabon.pdf) — eGabon CI-SIS health-interoperability connectathon presentation (~2014-2016) — before cutoff.
- [https://silicontrust.org/2012/10/06/gabons-national-biometric-identification-initiative](https://silicontrust.org/2012/10/06/gabons-national-biometric-identification-initiative) — Silicon Trust blog, 2012 — Gabon biometric ID initiative. Before cutoff.
- [https://ecofinances.net/2023/09/07/gimacpay-ecosystem-7-5-million-transactions-processed-by-gimac-for-a-cumulative-amount-of-377-billion-fcfa-from-january-to-august-2023](https://ecofinances.net/2023/09/07/gimacpay-ecosystem-7-5-million-transactions-processed-by-gimac-for-a-cumulative-amount-of-377-billion-fcfa-from-january-to-august-2023) — Ecofinances, 2023-09-07 (regional GIMACPAY/GIMAC stats) — before cutoff and regional.
- [https://dataprotection.africa/wp-content/uploads/2019/10/Gabon-Factsheet.pdf](https://dataprotection.africa/wp-content/uploads/2019/10/Gabon-Factsheet.pdf) — dataprotection.africa Gabon factsheet (2011 content, 2019 upload) — before cutoff.
- [https://www.fern.org/fileadmin/uploads/fern/Documents/Gabon%20summary.pdf](https://www.fern.org/fileadmin/uploads/fern/Documents/Gabon%20summary.pdf) — Fern forest-governance Gabon summary (2011) — before cutoff and off-topic.
- [https://mptf.undp.org/sites/default/files/documents/2023-05/gabon_final_report.pdf](https://mptf.undp.org/sites/default/files/documents/2023-05/gabon_final_report.pdf) — UNDP MPTF Gabon final report, 2023-05 — before cutoff.

---

## Phase 2 — Fetch run summary (2026-07-15)

**A-web fetched:** 24 URLs → **21 clips** placed in `/new-queue`, **3 skipped**.

**Skips (all fetch-fail, 2 tries each):**
- `interieur.gouv.ga/559` (CNIe official page) — CRAWL_HTTP_403 ×2. CNIe is amply covered by 5 other clips (Powers of Africa, Techpoint, BiometricUpdate, WeAreTech, Innovation Village) → no loss.
- `famille.gouv.ga/…1889` (RSU) — CRAWL_LIVECRAWL_TIMEOUT ×2. Duplicate of the RSU event captured from `gouvernement.ga/2025/08/28` → no loss.
- `interieur.gouv.ga/804` (National Police digitalization) — CRAWL_HTTP_403 ×2. **Unique content not captured** — flag for Bill (the police-digitalization "actualité"). `interieur.gouv.ga` fetches intermittently (its /601 electoral-roll page succeeded).

**Dates confirmed on fetch (Ecofin ids resolved exactly):** 53229 → **2026-02-24** (5th eGabon/Gabon-Digital steering committee); 48682 → **2025-09-15** (Digitax Gabon, DGI 80% collection, 18% overshoot); 51310 → **2025-12-11** (MADIGIPAIE launched 9 Dec, BEAC/GIMAC/GIMACPAY QR); 52022 → **2026-01-18** (SIGFIP launched 15 Jan 2026). Two undated pages assigned **year-precision 2025**: the electoral-roll platform (`interieur/601`) and the APT custody-registers roundtable (18-19 Feb, builds on Nov-2024 NPM designation).

**Vendor / entity facts surfaced (for hub seeding):** CNIe/digital-ID card vendor = **IN Groupe** (France; launched 25 Jun 2024); biometric **registry** = **Thales** (took over after **Semlex** contract terminated 2015; original 2012–2013 rollout); DPI advisor = **ID30 / Jaume Dubois**. **Digital Gabon** = $68.5M World Bank loan (Project P175987, signed 2 Jan 2024). **Huawei** smart-cities MoU (~$234M). **Visa** financial-inclusion partnership (Africa CEO Forum, May 2025). Key agency: **ANINF** (National Agency for Digital Infrastructure and Frequencies). 54% of adults unbanked (Findex 2025). Gabon EGDI **121st/193 (0.5741, 2024)**; ITU GCI 2024 **Tier 4 (39.86)**.

**Clusters flagged for ingest merge:**
- **CNIe electronic ID relaunch (Jun–Jul 2024):** 5 clips (Powers of Africa 28 Jun, WeAreTech 26 Jun, BiometricUpdate 25 Sep, Techpoint 2 Jul, Innovation Village 2 Jul) — one event/entity. Note earlier 2012–2015 Thales/Semlex history.
- **2026 public-finance / e-gov platform:** TechAfricaNews (SIGFIP+MADIGIPAIE, 14 Jan 2026) + Ecofin 52022 (SIGFIP launch 15 Jan) + Ecofin 53229 (accelerate reforms) + WeAreTech (2026 budget +156%, 24 Oct 2025) — one thread; SIGFIP is the anchor.
- **Revenue digitalization / e-tax:** Ecofin 48682 (Digitax Gabon) + gouvernement.ga e-Tax portal (18 Aug 2025).
- **Digital payments (MADIGIPAIE):** Ecofin 51310 — GIMACPAY QR, 4.5M mobile-money accounts (1.6M active, end-2024).
- **Financial inclusion (UNCDF):** BiometricUpdate 202512 — PNCD 2026-2030, UNDP facilitator, Visa follow-on.
- **Registre Social Unique (RSU):** gouvernement.ga (28 Aug 2025) — ANINF + World Bank (famille.gouv.ga duplicate skipped).
- **Cadastre modernization:** gouvernement.ga (24 Nov 2025) — IGN FI, integrated land system (SIG).
- **Education data (EMIS/SIGE):** Gabon Media Time (school health in SIGE) + PointNoirTV (school-data collection, WB tablets + UNESCO).

**Left for Bill:** A-PDF 2 (WB P175987 project PDFs, 2024-06 & 2024-12) · B 14 · C 9 · D 29. Data-centre items in B (DCD, unreliable) + C (Cybastion/Porteo vendor PRs — primaries for the Cybastion 20MW national sovereign DC; ST Digital Nkok DC). **Mis-attached (dataset error):** the `st.digital` blog URL is a **Côte d'Ivoire** data-centre inauguration, not Gabon (bucketed C, flagged). Strong D entity candidates: ANINF, DGI (dgi.ga / e-tax.dgi.ga), ANPI-Gabon, GABIX/IXP, INSTAT Gabon.

**Hub note:** `wiki/places/GAB.md` was assessed as a bare stub (0 held) with the device-bridge read tools briefly offline; the assessment does not depend on the hub text (no candidate matches a stub), but confirm against the hub on the next pass and seed the threads above (CNIe/IN Groupe/Thales digital ID; Digital Gabon WB project; SIGFIP/Digitax/MADIGIPAIE public-finance & payments; RSU; cadastre; data-protection Law 025/2023; Cybastion/ST Digital data centres; ANINF).
