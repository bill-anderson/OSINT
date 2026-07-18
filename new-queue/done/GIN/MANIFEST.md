# GIN — sweep manifest (`GIN-2026-07-17`)

**Window:** 2025-01-01 → 2026-07-17 · **Staged:** 37 · **Dropped:** 39 logged (`sweep/drop-log-GIN.csv`)

Whole-country worker (newspaper + trade-journal halves in one pass).
Format: `published | topics | source | title | why it's new`

## Sources & queries

- **Newspapers (FR, N1–N7):** **Aminata.com** (`aminata.com`) · **Mediaguinee** (`mediaguinee.com`). All clusters run in French only (EN skipped per recipe). GIN/GNB/GNQ name-collision verified on every hit — Guinea-Bissau and Equatorial-Guinea items dropped (see drop log, e.g. biometricupdate GNB birth-registration).
- **Trade journals (J1–J2):** all 8 fixed journals queried by country name; wearetech FR+EN. Plus one un-scoped generic pass.
- **Month-slicing:** not needed — GIN volume was heavy but the FR newspaper clusters and journal recipes surfaced in-window items without recency-swamping. Two mediaguinee clusters (e-gov, payments) over-flowed Exa's output cap and were mined in full via a sub-reader.

## Per-domain yield (thinness established, not assumed)

- **mediaguinee.com** — very high yield; the single richest GIN source (RAVEC/electoral thread, cables, MTN, fintech, e-gov). ~20 staged.
- **aminata.com** — high yield (biometric ID decree, RAVEC verification platform, N'Zérékoré hub, cyber law, vehicle-attestation). ~6 staged; also a heavy tail of pre-2025 Orange/telecom pieces (out-of-window) and named-author op-eds (dropped).
- **Trade journals** — GIN is **well-covered**, not thin: connectingafrica, telecomreviewafrica, techafricanews, wearetech, techcabal, techreviewafrica, ecofinagency all carried Guinea-specific in-window items. **biometricupdate** — thin for 2025-26 GIN (recent hits are vendor/global or Guinea-Bissau); **itweb.africa** — thin (only the MTN sale + pre-2025). Held corpus already had the ecofin/wearetech/biometricupdate/idtechwire/smartafrica/techafricanews GIN items, so most journal value this pass came from *new events* (cables, data-governance strategy, digital-services tax, TELEMO, CORIS, Cauridor).

## Most significant finds vs held material

The wiki held ~15 GIN sources concentrated on the Transform Africa Summit, the Tier-III data centre, FUGAS, birth certificates and instant payments. This sweep back-fills **entirely unheld threads**: (1) the **PN-RAVEC / RNPP biometric national-recensement → permanent biometric electoral file** underpinning the Sept-2025 referendum and 2026 coupled elections; (2) the **second/third submarine cables** (MEDUSA C&MA, Via Africa, Amílcar Cabral); (3) the **State acquisition of MTN Guinée** (telecom nationalisation); (4) the **National Data Governance Strategy** (June 2026); (5) the **3% foreign-digital-services tax + Digital Sovereignty Fund** decree (May 2026); (6) fintech (**CORIS Money, Cauridor, KS-Wallet, Orange Money–BNG, Visa**); (7) a wave of **govtech** (nine projects/GUSP, GovStack/WARDIP, DouIA2 AI, TELEMO national launch, LANDAYA, ASAN guichet-unique, eCNSS, digital Journal Officiel).

## Same-event twins kept / noted (never sweep-drops)

MEDUSA C&MA (staged mediaguinee 2026-05-06; twins at aminata, TechAfrica 05-12, Connecting Africa 05-11, Telecom Review 05-11 — noted in file). RNPP stats 18-19 Jul 2025 (staged mediaguinee; aminata twins noted). CORIS Money (staged techafricanews; mediaguinee 02-18 twin noted). MTN sale (staged Connecting Africa; ITWeb twin noted).

## Date caveats / re-datings

- All Exa `published` values re-verified against fetched bodies. Exa timestamps were broadly reliable for aminata/mediaguinee (ISO in-body dates matched).
- **techreviewafrica** (3 items: Visa, DouIA2, GovStack) carry no Exa date; dated from the on-page `Date:` field (2026-04-12 / 2026-04-03 / 2026-04-08). Flagged `provenance_flag: pr-wire` — lead-net announcement records, verify primaries at ingest.
- No proxy dates needed; all staged items are `date_source: source`, `date_precision: day`.

---

## Digital identity, civil registry & biometric electoral file (dpi.id / dpi.registry)

2025-02-02 | dpi.id, gov.legislate, include.access | Aminata | Doumbouya décrète la gratuité de la carte nationale d'identité biométrique | Presidential decree makes the biometric national ID card free for all first applications — anchors the free-ID campaign.
2025-04-25 | dpi.id, dpi.registry, dpi.govtech | Mediaguinee | PN-RAVEC : numéro 105 24/7 ; recensement biométrique lancé le 15 avril 2025 | Fixes the operational start date of the biometric administrative census (RAVEC) feeding the RNPP.
2025-07-19 | dpi.id, dpi.registry, data.statistics | Mediaguinee | RNPP + fichier électoral biométrique : statistiques provisoires (MATD) | First figures: 9,121,500 recensed → 9,010,191 on the RNPP, 6,748,923 biometric electors — the new permanent electoral file.
2025-08-03 | dpi.govtech, dpi.id | Aminata | DGE lance verification.dge.gov.gn (vérification en ligne du PN-RAVEC) | Online voter-data verification portal (32-char code / QR) — a live e-gov service on the ID stack.
2025-08-28 | dpi.id, dpi.registry, data.statistics | Mediaguinee | Chiffres définitifs : 6 768 458 électeurs (fichier biométrique permanent) | Consolidated final electoral roll + regional/gender breakdown ahead of the 21 Sept 2025 referendum.
2026-01-22 | dpi.id, dpi.registry, dpi.exchange | Mediaguinee | Convention DGE–ONECI : le RNPP source unique du fichier électoral | Institutionalises RNPP-to-electoral-file data-sharing — a permanent, civil-registry-fed voter roll.
2026-03-03 | dpi.registry, dpi.id, data.statistics | Mediaguinee | PN-RAVEC dote les 13 communes de Conakry d'intrants d'état civil sécurisés | Secured civil-registry documents rollout; carries the RGPH-4 result — resident population 17,521,167 (Conakry 3,407,327).
2026-04-25 | dpi.id, dpi.registry, data.statistics | Mediaguinee | Fichier électoral : 6 948 894 électeurs, 23 681 bureaux (élections couplées 31 mai) | Updated roll and polling-station count for the 31 May 2026 legislative/communal elections.

## Connectivity, cables & telecom sovereignty (infra.connect / infra.store)

2025-01-06 | infra.connect, tech.industry, finance.new | Connecting Africa | MTN vend Guinée-Conakry à l'État de Guinée | Telecom nationalisation — MTN exits, the State takes over (later stated as 87.5%); ~3M subscribers.
2025-05-21 | infra.connect, infra.store, infra.cybersec, gov.policy | Mediaguinee | Bilan JMTSI 2025 (Rose Pricemou) : MTN 87,5 %, câble Amílcar Cabral, Technopark, CERT/SOC, PKI | Consolidated sovereignty scorecard naming the 2nd cable, Technopark Sonfonia, national CERT/SOC and PKI.
2025-06-23 | infra.connect, gov.regional, dpi.exchange | Telecom Review Africa | Interconnexion fibre Guinée–Sierra Leone (SOGEB–Leoncom, Pamelap) | Cross-border backbone link (42.5→100 Gbps) under the Guinea–Sierra Leone Digital Pact 2024.
2025-07-10 | infra.connect, gov.regional | Mediaguinee | Atelier sous-régional : étude d'opportunités 2e câble sous-marin (GUILAB/SONATEL, 7 pays) | Regional workshop launching the second-cable feasibility work (2Africa/Medusa options).
2025-12-26 | infra.connect, capacity.research, include.access | Mediaguinee | Univ Connect : connexion de 17 universités et instituts (ANSUTEN) | National higher-ed fibre-connectivity project; 13 of 17 already connected.
2026-05-06 | infra.connect, infra.store, geopol.eu | Mediaguinee | Signature de l'accord C&MA MEDUSA AFRICA (2e câble sous-marin) | Guinea's second submarine cable formally contracted — GUILAB landing party; diversifies beyond ACE.
2026-05-21 | infra.connect, gov.legislate, include.access | Mediaguinee | FESATEL : restriction FTTH/Wifi-Zones, Starlink « non reconnu », menace de grève | Surfaces FTTH licensing dispute, Wifi-Zone regime and Guinea's non-recognition of Starlink.
2026-06-17 | infra.connect, gov.regional | Mediaguinee | 3e câble via le consortium Via Africa (GUILAB, Paris) | Guinea co-investing in a third cable (Europe–South Africa) weeks after MEDUSA — "co-invest, co-decide, co-operate".
2026-07-10 | infra.connect, include.access | Connecting Africa | Guinea urges Orange to improve network quality | Minister Soumah presses Orange Guinée on quality/coverage/cost — most recent in-window item.

## Data governance, sovereignty & cybersecurity (gov.* / infra.cybersec)

2025-07-26 | infra.cybersec, gov.legislate | Aminata | Loi sur la cybersécurité : la HAC précise son application aux web-médias | Clarifies that the cybercrime/cybersecurity law (not the press law) governs web-media offences.
2026-05-26 | gov.legislate, infra.store, geopol.usa, finance.new | Ecofin Agency | Taxe de 3 % sur les services numériques étrangers + Fonds de souveraineté numérique (décret 21 mai) | Digital Compliance Fee (RCN) on streaming/cloud/SaaS/ads/e-commerce; creates the FSN fund + PARN monitoring platform.
2026-06-26 | gov.policy, gov.protect, dpi.exchange, tech.ai | Ecofin Agency | Lancement de la Stratégie nationale de gouvernance des données (19 juin) | DNTIEN-led national data-governance strategy (companion: UNECA/GIZ engagements 16-19 June, AU Data Policy Framework).

## GovTech & e-government (dpi.govtech / dpi.exchange)

2025-06-27 | dpi.govtech, data.open, gov.legislate | Mediaguinee | Le Journal Officiel passe au numérique (journal-officiel.ssg.gov.gn) | Free online legal gazette — 1,100+ journals / 6,000+ texts, targeting 30,000; open access to law.
2025-07-09 | dpi.govtech, dpi.pay, dpi.mis | Mediaguinee | La CNSS lance eCNSS (téléprocédure sociale) | Online social-contribution declaration/payment; 60% of receipts already flow through it via all banks + BCRG.
2025-08-01 | dpi.govtech, tech.industry | Aminata | Plateforme nationale des attestations automobiles (SIIN + DIGITECH, CIV) | Ivorian startups win tender to digitise vehicle-insurance attestations — South-South govtech transfer.
2026-01-12 | dpi.govtech | Mediaguinee | Lancement de LANDAYA (permis industriels dématérialisés, successeur de PLAGED) | Industry ministry's e-permit platform; 72h processing target.
2026-02-06 | dpi.govtech, gov.policy | Mediaguinee | Mourana Soumah prend fonction à la tête du MCENI (ministère fusionné) | Establishes the merged Communication/Digital-Economy/Innovation ministry + new minister (recurs across later items).
2026-03-17 | dpi.govtech, gov.policy | Mediaguinee | Guinée–Azerbaïdjan : Guichet Unique des Services Publics (modèle ASAN) | Partnership to build a one-stop public-services portal on Azerbaijan's ASAN model.
2026-05-18 | dpi.govtech, gov.policy, capacity.training | We Are Tech | Neuf projets numériques pour moderniser l'administration (GUSP, Gouv-Lab, eTax, ANDE) | Nine-project public-admin digitisation package under Simandou 2040.
2026-05-26 | dpi.govtech, gov.standards | TechAfrica News | Lancement national de TELEMO (marchés publics dématérialisés, 22 mai) | National rollout of the Guinea-Rwanda e-procurement platform (procurement = 11–15% of GDP).
2026-04-08 | dpi.govtech, dpi.exchange, gov.standards | Tech Review Africa | GovStack Workshop (projet WARDIP, Banque mondiale) `[pr-wire]` | Interoperability/GovStack foundation for citizen-centric e-services.

## Inclusion, access & digital divides (include.* / capacity.*)

2025-02-09 | include.divides, capacity.training, digital.localgov | Aminata | Inauguration du Hub numérique de N'Zérékoré | Digital training/innovation hub in the forest region — inclusion beyond Conakry.
2025-07-22 | include.divides, include.access, infra.connect | Mediaguinee | ANSUTEN : objectif 90 % de couverture rurale d'ici 2030 (étude zones blanches, SIG) | Universal-service white/grey-zone feasibility study + national GIS, ahead of an international tender.

## AI & innovation (tech.ai)

2026-04-03 | tech.ai, gov.policy, data.open | Tech Review Africa | Lancement de DouIA2 + « Manifeste de Conakry » `[pr-wire]` | National AI-and-data initiative (phase 2), Cité des Sciences; AI as a development pillar.

## Payments & digital finance (dpi.pay / finance.*)

2026-02-19 | dpi.pay, finance.new, include.access | TechAfrica News | Lancement de CORIS MONEY (Coris Bank International, 16 fév) | New bank-issued e-money for the unbanked (mediaguinee twin: 150 distributors).
2026-03-13 | dpi.pay, include.access | Mediaguinee | Orange Money « Accès à ma banque » avec la BNG | Bank-account↔wallet interoperability (24/7), following an Oct-2025 partnership.
2026-04-01 | dpi.pay, finance.new, include.access | Mediaguinee | BGB Solutions lance KS-WALLET (monnaie électronique) | Independent e-wallet: QR pay, fee-free transfers, 200+ country remittance, EDG/TV bills.
2026-04-12 | dpi.pay, finance.mou | Tech Review Africa | Visa engage la Guinée sur les paiements numériques `[pr-wire]` | Visa–MoF talks toward a Central-Bank MoU to shift Guinea off cash.
2026-04-14 | dpi.pay, finance.new, tech.industry | TechCabal | Cauridor (fintech fondée en Guinée) nomme une ex-Flutterwave COO | Profiles a Guinea-founded cross-border-payments company (36 countries, $13M raised).
