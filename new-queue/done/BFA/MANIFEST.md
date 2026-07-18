# BFA — sweep manifest (`BFA-2026-07-17`)

**Window:** 2025-01-01 → 2026-07-17 · **Staged:** 126 · **Dropped:** 88 (`sweep/drop-log-BFA.csv`)

> Merged from the two half-sweeps (newspapers, trade journals), which ran as
> separate agents writing disjoint files. Same-event twins across the two halves
> are deliberately kept: same event from a different outlet is never a sweep-stage
> drop. Lint #7 adjudicates them at ingest, with full text.

---

## Part 1 — Newspapers

# BFA — newspaper half, Phase-2 sweep manifest

**Batch:** `BFA-2026-07-17` · **Window:** 2025-01-01 → 2026-07-17
**Papers:** Sidwaya (`sidwaya.info`) · leFaso.net (`lefaso.net`) — French-only queries
**Staged:** 76 (Sidwaya 56, leFaso.net 20) · **Dropped:** 40 (see `sweep/drop-log-BFA-papers.csv`)
**Drop reasons:** out-of-window 19 · off-topic 17 · same-outlet-recrawl 2 · fetch-failed 2 · already-held 0
**Dedup:** zero `already-held` collisions — no Sidwaya or leFaso URL appears in `sweep/held-urls.txt`.

Bodies are full clipped article text (ISSUE-008). Two exceptions flagged inline below.
This manifest covers the **papers** half only; the journals half writes its own items to this folder.

| published | topics | source | title | why it's new |
|---|---|---|---|---|
| 2025-03-19 | gov.protect, gov.legislate | Sidwaya | Journée nationale de protection des données : la CIL sollicite l'accompagnement du Premier ministre | CIL pleads for the missing *décrets d'application* — it has no repressive powers; hands over a 2022 activity report in 2025 |
| 2025-03-23 | dpi.registry, dpi.govtech, gov.policy, digital.localgov | Sidwaya | Foncier au Burkina : SYC@D pour une meilleure gestion des terres | DGI's cloud cadastre platform live at sif.bf, with published service-time targets |
| 2025-04-01 | gov.protect, capacity.training, capacity.literacy | Sidwaya | Protection des données : bien utiliser les réseaux sociaux dans la reconquête du territoire | Data-protection sensitisation folded into the counter-insurgency effort; ~500 troops at Kaya |
| 2025-04-16 | tech.ai, capacity.research, capacity.training, finance.new, data.open, tech.innovate | leFaso.net | CITADEL remporte un financement de 1 million de dollars pour la recherche en IA | IDRC-funded Mooré–French MT research; states flatly BF had **no** national AI strategy at this date |
| 2025-06-05 | dpi.pay, include.access, digital.rural, finance.mou | leFaso.net | Orange Money et la BSIC interconnectent comptes bancaires et portefeuilles mobiles | Bank↔wallet interconnection via *144#; 11m Orange Money clients |
| 2025-06-19 | dpi.registry, dpi.id, gov.policy, include.access, data.statistics | Sidwaya | Stratégie nationale de l'Etat civil : taux d'exécution physique de 64,11% en 2024 | Hard CRVS baseline: 3,391,907 acts digitised across 54 communes; 145,655 birth certificates issued |
| 2025-07-01 | gov.protect, gov.legislate, capacity.training, infra.cybersec | Sidwaya | Protection des données : le Premier ministre sonne la mobilisation au sein de l'Administration | PM personally launches the ministry-by-ministry CIL campaign — raises its political standing |
| 2025-07-03 | dpi.pay, finance.new | Sidwaya | Le Groupe InTouch acquiert des licences de Paiement et de Monnaie Électronique (UEMOA) | New UEMOA-wide e-money licensee. **`fetch_failed: true`** — page is a stub linking a PDF; needs manual clip |
| 2025-07-21 | dpi.govtech, infra.connect, digital.localgov, capacity.training, finance.new, digital.rural | Sidwaya | PACTDIGITAL outille les parties prenantes de la région de Tannounyan | World Bank PACTDIGITAL safeguards workshop; 96bn FCFA envelope |
| 2025-07-25 | infra.connect, digital.rural, include.divides, include.access | Sidwaya | Couverture des « zones blanches » : la ministre inspecte des sites de télécommunications | 138 white zones covered in 2024; "zéro zone blanche" dated to end-2027 |
| 2025-07-28 | gov.protect, gov.legislate, capacity.training, digital.localgov | Sidwaya | Protection des données : des cadres du ministère de l'Administration territoriale outillés | **The one concrete enforcement act on record** — a body formally noticed for hosting citizens' data offshore |
| 2025-08-03 | dpi.pay, gov.regional, include.access, gov.standards | leFaso.net | PI-SPI de l'UEMOA : une phase de test lancée | BCEAO instant-payment platform enters live test; launch set 2025-09-30 |
| 2025-08-07 | gov.protect, capacity.training, infra.cybersec | Sidwaya | Protection des données personnelles : des diplomates burkinabè sensibilisés | Data protection framed against transfer to foreign powers |
| 2025-08-11 | gov.protect, gov.legislate, capacity.training, dpi.govtech | Sidwaya | Protection des données : le cabinet du ministre de la Fonction publique outillé | Second CIL session at this ministry |
| 2025-08-18 | gov.policy, infra.connect, infra.store, dpi.govtech, digital.rural | Sidwaya | Transition digitale : 43,61% de taux de performances au premier semestre | Mid-2025 baseline: 302 km fibre backbone studies, 38 structures on RESINA |
| 2025-08-20 | tech.ai, capacity.research, tech.innovate, infra.cybersec | Sidwaya | Dr Olivier Lompo (EPFL) : « Les Etats qui intègrent l'IA dans leurs politiques publiques… » | Maison de l'IA launched July 2025. *Body truncated by extractor at final answer — noted in file* |
| 2025-08-21 | dpi.id, gov.protect, infra.store, include.access, gov.legislate | Sidwaya | Identification électronique : le programme WURI sensibilise à Bobo-Dioulasso | **WURI still running in BFA post-ECOWAS-exit**, and its data is hosted *in* Burkina Faso — complicates the held WURI/ECOWAS thesis |
| 2025-08-26 | gov.policy, dpi.govtech, tech.ai, infra.store, infra.connect, dpi.id, dpi.pay, infra.cybersec, capacity.literacy, include.access | Sidwaya | Séminaire gouvernemental : les enjeux de la transformation digitale | Cabinet seminar enumerates the twelve national digital chantiers |
| 2025-09-17 | dpi.id, gov.regional, gov.policy, include.access | Sidwaya | Journée internationale de l'identité : trois jours de réflexion | Theme is **AES ID and travel-document harmonisation** — the post-ECOWAS identity architecture |
| 2025-09-23 | dpi.mis, gov.standards, dpi.govtech, infra.cybersec, gov.policy | Sidwaya | Un manuel de procédures de gestion des systèmes d'information validé | IS-management procedures manual for all ministry DSIs |
| 2025-09-30 | gov.protect, capacity.training, dpi.govtech | Sidwaya | Protection des données : le cabinet du ministère des Infrastructures | Geolocation and procurement data in scope |
| 2025-09-30 | infra.connect, digital.rural, include.divides, include.access, gov.policy, finance.new | Sidwaya | Services de communications électroniques : 750 zones bientôt couvertes | **~2,000 villages still with no coverage at all**; 223 sites subsidised since 2020; 37.5bn FCFA envelope |
| 2025-10-01 | dpi.pay, include.access, gov.regional | Sidwaya | Espace UEMOA : le système PI-SPI de la BCEAO opérationnel | PI-SPI goes live |
| 2025-10-14 | gov.protect, capacity.training, capacity.literacy, dpi.mis | Sidwaya | Protection des données : la CIL et le ministère de l'alphabétisation | DPO urged; FIUE-BF and Gr@ine education platforms named |
| 2025-10-26 | infra.connect, gov.policy, data.open, data.statistics, gov.standards | Sidwaya | L'Observatoire de l'aménagement numérique lancé | New WebSIG observatory — a standing data asset for coverage mapping |
| 2025-10-28 | tech.ai, capacity.training, gov.policy | Sidwaya | Contribution de l'IA au développement : une conférence inaugurale nationale | Opens the national AI debate under a sovereignty theme |
| 2025-10-30 | gov.protect, gov.legislate, capacity.training, dpi.mis | Sidwaya | Protection des données : le cabinet de l'Enseignement supérieur outillé | CampusFaso and FONER platforms named |
| 2025-11-04 | infra.cybersec, gov.policy, capacity.literacy | Sidwaya | Semaine nationale de lutte contre la cybercriminalité : clôture | First national cybercrime week; Galian prize created |
| 2025-11-10 | dpi.govtech, capacity.training, tech.industry, include.access | Sidwaya | Dématérialisation des services : le secteur privé s'approprie les procédures | CCI-BF pushes dematerialised procedures to SMEs |
| 2025-11-11 | gov.policy, dpi.govtech, infra.store, infra.connect, dpi.id, dpi.pay, infra.cybersec, tech.ai, capacity.literacy, include.divides, finance.new | Sidwaya | Transformation digitale : le Burkina Faso trace sa voie vers un avenir inclusif | Government chronicle framing the twelve chantiers as the sovereignty backbone |
| 2025-11-18 | gov.policy, tech.ai, gov.regional, infra.store | Sidwaya | 20e Semaine du numérique : le président du Faso donne le coup d'envoi | Fullest report: theme, Ghana as guest of honour, Mali/Niger special guests |
| 2025-11-18 | gov.policy, tech.ai, infra.store, capacity.training | Sidwaya | 20e Semaine du numérique : la souveraineté numérique, un impératif national | **Presidency communiqué** — datacenters "en cours d'acquisition", new polytechnic academy |
| 2025-11-18 | gov.policy, tech.ai, infra.store, dpi.govtech | Sidwaya | SN-2025 : le Capitaine Traoré rassure les acteurs du numérique | Adds the *maisons du citoyen* commitment. Thinnest of the three SN-2025 items — prune candidate |
| 2025-11-18 | infra.store, gov.policy, tech.ai, dpi.govtech, capacity.training, tech.innovate | Sidwaya | Traoré : « La question de souveraineté intègre impérativement celle du numérique » | Full speech. Sharpest framing on file: paying for software "chez ceux-là qui sont en train de nous combattre" |
| 2025-11-23 | gov.regional, infra.connect, gov.standards, infra.cybersec | Sidwaya | Le Burkina, le Ghana, le Mali et le Niger harmonisent leurs fréquences | **AES states + Ghana** sign free roaming and border spectrum coordination — regional integration cutting across the ECOWAS split |
| 2025-12-01 | dpi.id, gov.regional, gov.standards, include.access | leFaso.net | Espace AES : Le Président du Faso a désormais sa carte d'identité biométrique | Same event as the Sidwaya CIB-AES item, different outlet; carries the card specs (polycarbonate, age 5/13, 10 yrs, 3 500 FCFA) |
| 2025-12-02 | dpi.id, gov.regional, infra.cybersec | Sidwaya | Carte d'identité biométrique AES : le capitaine Ibrahim Traoré pour commencer | CIB-AES formally launched; ONI mass production from January 2026 |
| 2025-12-09 | infra.connect, digital.rural, include.divides, include.access, gov.policy, digital.localgov | Sidwaya | Le projet de couverture de 750 zones blanches présenté aux acteurs de Nando | 104 of the 750 sites go to Nando; DG dates full coverage to **2030** (conflicts with the 2027 target) |
| 2026-01-06 | dpi.govtech, dpi.pay, gov.standards, dpi.exchange, tech.industry | Sidwaya | La facture électronique certifiée officiellement lancée | Mandatory from 2026-07-01; replaces the 2017 normalised paper invoice |
| 2026-01-06 | dpi.registry, dpi.id, gov.protect, include.access, dpi.exchange | Sidwaya | Registre social unique : le Burkina Faso renforce la protection sociale | RSU at 362,698 households / 2,217,518 people across 99 communes; interoperating with the unique ID |
| 2026-01-22 | digital.localgov, dpi.govtech, capacity.training, gov.policy | Sidwaya | Guichet appui technique des collectivités territoriales : la banque d'outils | ADCT tool bank for local authorities |
| 2026-01-25 | infra.store, gov.policy, dpi.govtech, infra.cybersec, finance.new | Sidwaya | Souveraineté numérique : le gouvernement inaugure deux datacenters | **15bn FCFA, 3,000 TB, government cloud**; "zéro donnée de l'administration publique à l'extérieur". No vendor named |
| 2026-01-27 | infra.store, gov.policy, dpi.govtech, infra.cybersec, finance.new | Sidwaya | Nos données rentrent à la maison | `genre: editorial`. Carries figures found nowhere else: 85–95bn FCFA savings over ten years; national datacentre due 2028 |
| 2026-02-02 | dpi.registry, dpi.id, include.access, gov.policy, digital.localgov | leFaso.net | Contrat d'objectifs 2025 : 121 000 actes d'Etat civil délivrés aux personnes déplacées internes | **30 communes now hold fully digitised civil registers**; IDP acts nearly double the 65,000 target |
| 2026-02-03 | infra.connect, infra.store, dpi.govtech, dpi.id, gov.policy, include.divides, digital.rural | leFaso.net | Le ministère de la Transition digitale franchit le cap des 91 % | 370 localities connected in 2025; 272 platforms initiated, 146 live; "accélérer l'identification unique électronique" in 2026 |
| 2026-02-19 | dpi.govtech, gov.legislate, gov.standards, gov.protect, infra.cybersec, dpi.exchange | leFaso.net | Un décret encadre l'exploitation des plateformes numériques publiques | The governing instrument for state platforms. **Backfill**: decree signed 2024-05-08, only reported 2026 — not a Feb-2026 development |
| 2026-02-19 | infra.connect, include.divides, include.access, digital.rural, digital.localgov | leFaso.net | 66 localités des Tannounyan ciblées par le chantier « Zéro zone blanche » | FASU/PACTDIGITAL financing; 138 sites already built |
| 2026-03-03 | dpi.govtech, infra.store, gov.protect, gov.standards, dpi.exchange, infra.cybersec, dpi.pay | leFaso.net | Tinto : « Le crédo actuellement, c'est l'hébergement national pour des questions de souveraineté » | **The key doctrinal source**: national-hosting is a *PM circular*, not the decree; health data needs a derogation to leave; CIL declaration is a precondition; interoperability referential dates to 2018 and is unrevised |
| 2026-03-05 | gov.legislate, gov.policy, dpi.registry, dpi.govtech, digital.localgov, data.satellite | Sidwaya | Des innovations pour mieux gérer le foncier (Conseil des ministres) | RAF implementing decree; satellite verification of land use |
| 2026-03-08 | dpi.pay, gov.regional, include.access, finance.new | leFaso.net | PI-SPI : neuf banques et institutions désormais autorisées au Burkina Faso | Per-country authorised-institution counts across UEMOA (as of 2026-02-24) |
| 2026-03-23 | infra.connect, infra.store, infra.cybersec, dpi.id, dpi.govtech, dpi.pay, gov.policy, gov.regional, gov.legislate, include.divides, digital.rural, tech.ai, capacity.training | leFaso.net | CASEM 2026 sous le signe de la souveraineté numérique | **Starlink entry being finalised**; data repatriation to the new national datacenters; unique-ID implementation |
| 2026-03-24 | infra.connect, digital.rural, include.access | Sidwaya | Gassan à nouveau connecté au réseau après 4 ans d'interruption | Insecurity-driven connectivity loss and recovery — rare datable instance. *Column truncated on the web edition; print-only in full* |
| 2026-03-24 | dpi.govtech, infra.connect, infra.store, dpi.id, include.divides, digital.rural, gov.policy | Sidwaya | Transformation digitale : un résultat de plus de 85% pour 2025 | **The unique electronic ID stalled in 2025 on a failed tender**, vendor procurement under way — directly qualifies the WURI/ONI thread |
| 2026-03-27 | dpi.pay, tech.innovate, include.access, tech.industry | leFaso.net | YENGA : L'application burkinabè qui simplifie le quotidien | KREEZUS fintech aggregating 3 operators / 5 wallets. **Reads as advertorial** — unbylined, promotional, vendor-supplied metrics. Admissibility call at ingest |
| 2026-03-30 | data.statistics, gov.policy, dpi.mis | Sidwaya | Système de collecte de données statistiques : le ministère de la communication | CASEM on central/deconcentrated statistical collection |
| 2026-04-03 | dpi.govtech, dpi.pay, gov.policy, tech.innovate, infra.cybersec | leFaso.net | LANAYA et e-BDT, deux plateformes digitales pour les services bancaires | Treasury teleprocedures + online bank, "œuvres nationales" built in-country |
| 2026-04-06 | dpi.govtech, dpi.pay, include.access, gov.policy, finance.new | Sidwaya | Trésor public : Lanaya et e-BDT pour simplifier les démarches | Same event, different outlet; adds the World Bank backing |
| 2026-04-09 | dpi.govtech, dpi.exchange, dpi.registry, gov.policy | Sidwaya | Formalités à l'aéroport : la fiche de police se remplit désormais en ligne | Border data centralised for intelligence use — a security-facing DPI case |
| 2026-06-01 | data.open, gov.policy, tech.ai, capacity.training | leFaso.net | Grand salon de la data en Afrique : Ouagadougou accueille la première édition | Announcement of the GSDA (update pair with the 07-16 opening) |
| 2026-06-02 | dpi.govtech, gov.policy, dpi.mis, capacity.training | Sidwaya | Dématérialisation des procédures : un atelier pour faire le bilan | Bobo-Dioulasso stocktake of dematerialisation since 2023 |
| 2026-06-02 | dpi.govtech, dpi.mis, include.access, data.statistics, gov.protect, infra.store | Sidwaya | Solidarité nationale : la plateforme digitale « Dèmè Sira » lancée | New social-solidarity platform, ANPTIC-hosted |
| 2026-06-04 | infra.connect, include.divides, include.access, digital.rural, digital.localgov | leFaso.net | Le Wifi fibre de Moov Africa à Tougan | 34 localities covered by Moov fibre Wi-Fi as of 2026-06-01 |
| 2026-06-16 | dpi.govtech, digital.localgov, gov.policy, include.access, data.open | Sidwaya | Portails des Régions du Burkina Faso : un pas décisif | Web portals for all 17 regions — the local-government digital layer |
| 2026-06-17 | tech.ai, gov.policy, capacity.research | Sidwaya | IA : vers la validation d'une feuille de route nationale | **National AI roadmap 2026-2030 still in draft** at this date, pending recommendations — bridges the "no strategy" (2025) → "has strategy" (2026-07) claims |
| 2026-06-18 | tech.ai, tech.industry, dpi.pay, gov.regional, gov.policy, finance.new | Sidwaya | Economie numérique UEMOA : 1000 professionnels attendus à Ouagadougou | SIPEN-UEMOA announcement |
| 2026-06-21 | infra.connect, gov.policy, gov.standards, include.access, infra.energy | Sidwaya | Télécommunications : un taux d'exécution des engagements de 80 à 90 % | Operators met 2025 site commitments in full (Orange 200, Moov 200, Telecel 150); 2600 MHz freed |
| 2026-06-24 | dpi.pay, include.access, finance.new, dpi.govtech, capacity.literacy | Sidwaya | Inclusion financière et financement des PME : le bilan d'un projet structurant | PAIF-PME seven-year World Bank project results |
| 2026-06-29 | gov.legislate, dpi.registry, dpi.govtech, digital.localgov, digital.rural, data.satellite | Sidwaya | Réorganisation agraire et foncière : la nouvelle loi, un rempart contre les dérives | Long-form on RAF 2025: state land ownership and the e-cadastre |
| 2026-07-03 | infra.connect, infra.capacity, infra.cybersec, gov.standards, gov.policy, capacity.training, tech.ai | leFaso.net | L'ABDI relance l'offensive en faveur de l'adoption de l'IPv6 | IPv6 Forum 3rd edition; ARCEP and Moov migration roadmap, sovereignty-framed |
| 2026-07-07 | dpi.pay, gov.regional, include.access, finance.new | leFaso.net | La BCEAO prolonge les délais de connexion à PI-SPI | **Current PI-SPI state**: deadlines to 2026-09-30 / 2027-06-30; 80 institutions connected at 2026-06-24 |
| 2026-07-14 | tech.ai, dpi.pay, gov.regional, gov.policy, tech.industry, include.access, finance.new | Sidwaya | Transformation numérique UEMOA : l'avenir de l'IA, des fintechs et de la finance inclusive | BCEAO/UEMOA inclusion figures |
| 2026-07-14 | tech.ai, gov.regional, gov.policy, dpi.pay, include.access, finance.new | leFaso.net | La refondation par l'IA au cœur de la 4ᵉ édition du SIPEN-UEMOA | Reports BFA as one of four UEMOA states already holding a national AI strategy; UEMOA AI strategy coming |
| 2026-07-15 | tech.ai, capacity.training, gov.legislate | Sidwaya | Intelligence artificielle : les députés formés | SPIVTEN trains ALP deputies — legislature capacity on AI |
| 2026-07-15 | tech.ai, data.open, infra.store, infra.connect, infra.energy, include.divides, gov.standards, capacity.research | leFaso.net | IA dans l'espace UEMOA : le défi de l'inclusion, des infrastructures et de la souveraineté des données | Panel substance: local-language voice AI, open data as the fuel, sovereign datacentres, regulatory sandboxes |
| 2026-07-16 | data.open, gov.policy, tech.ai, infra.store, capacity.training | leFaso.net | Le premier Grand salon de la data en Afrique veut promouvoir une gouvernance responsable de la donnée | GSDA opens: data "produced, protected and hosted" in Burkina |
| 2026-07-16 | gov.policy, gov.protect, tech.ai, infra.store, capacity.training, tech.industry, infra.connect | Sidwaya | Grand salon de la data en Afrique : un rendez-vous de promotion de la souveraineté numérique | Same event, different outlet; CIL and data-governance angle |

## Flags for the review gate

- **Contradiction — localities connected in 2025.** `2026-02-03` (leFaso) says **370** new localities; `2026-03-23` (leFaso, CASEM) says **plus de 400** — same ministry, same period.
- **Contradiction — "zéro zone blanche" horizon.** Dated **end-2027** (2025-07-25, 2025-09-30) but **2030** (2025-12-09, DG speaking). Same programme, two horizons.
- **Not contradictions (supersession / different measures):** the PI-SPI chain (test → 9 authorised → 80 connected); civil-register "54 communes" (acts digitised, 2024) vs "30 communes" (registers fully digitised, 2025) measure different things; PACTDIGITAL 96bn vs 96.7bn FCFA is rounding.
- **Provenance gap:** no vendor, builder or financier is named for the two modular datacentres in any of the three pieces covering them — only unnamed "partenaires financiers" and "prestataires privés".
- **Possible law conflict:** the CIL's founding is cited as loi n°010-2004/AN (2004) in one item and the operative law as n°001-2021/AN elsewhere; probably supersession, but never reconciled in the coverage.
- **Admissibility calls:** `2026-03-27` YENGA reads as advertorial; `2026-01-27` "Nos données rentrent à la maison" is an unsigned editorial (tagged `genre: editorial`).
- **Needs manual clip before promotion:** `2025-07-03` InTouch (`fetch_failed: true`, stub linking a PDF). Partial bodies noted in-file: `2025-08-20` Lompo (extractor truncation), `2026-03-24` Gassan (print-only column).
- **Cross-outlet pairs left standing** (conservative dedup — for the lint #7 ladder post-ingest, not for this stage): CIB-AES (Sidwaya 12-02 / leFaso 12-01); LANAYA-e-BDT (leFaso 04-03 / Sidwaya 04-06); GSDA opening (leFaso / Sidwaya, both 07-16); SIPEN-UEMOA (leFaso / Sidwaya, both 07-14). The three 2025-11-18 Semaine du numérique items are **same outlet, same day** but carry distinct payloads (newsroom report / Presidency communiqué / flash) — kept per the "payloads differ at all" rule; the flash is the prune candidate if the curator wants the tail cut.

---

## Part 2 — Trade journals

# BFA — Phase-2 sweep, trade-journal half

**Batch:** `BFA-2026-07-17` · **Window:** 2025-01-01 → 2026-07-17 · **Staged:** 50
**Journals searched (8, country-name only, no taxonomy filter):** wearetech.africa · biometricupdate.com · telecomreviewafrica.com · connectingafrica.com · itweb.africa · techafricanews.com · techcabal.com · techreviewafrica.com
**Drops:** `sweep/drop-log-BFA-journals.csv` (48 logged — 8 already-held, 20 out-of-window, 20 off-topic)

Newspaper half staged separately into this folder — see `MANIFEST-papers.md`. Same-event twins across the two halves are flagged at the foot of this file; the dedup call belongs at ingest, not here.

---

## Staged items

`published | topics | source | title | why it's new`

2025-01-10 | include.access, include.divides, infra.connect, capacity.literacy | ITWeb Africa | Luxembourg pledges to reduce Sahel's digital gap | ETC humanitarian-connectivity project launch; BFA + NER first beneficiaries, 3,650 users
2025-03-06 | dpi.pay, tech.industry, include.access | We Are Tech Africa | Burkina Faso: Orange Money Enhances Services with New Platform | Orange Money BF migrates to Comviva Mobiquity Pay X — vendor-level detail on the mobile-money stack
2025-03-17 | finance.new, infra.store, infra.connect, dpi.govtech | We Are Tech Africa | Burkina Faso Invests $30 Million in Digital Infrastructure Amid Challenges | PM's $30M figure to the Legislative Assembly; RESINA at 2,947 buildings; two mini data centres begun
2025-06-02 | infra.connect, include.access, digital.rural | Telecom Review Africa | Burkina Faso Plans 800 New Telecom Sites to Close Coverage Gaps | 800-site 2025 plan broken out by funder (250 PACTDIGITAL / 500+50 FASU); 2027 coverage target
2025-06-05 | dpi.pay, include.access, finance.mou | Tech Review Africa | Telecel Money and Pharmacists partner to rollout digital payment in Burkina Faso | Telecel Money–GIEPHAB deal across 2,500+ pharmacies; cites 75%-by-2026 financial-inclusion target — **PR wire, source the primary at ingest**
2025-07-08 | geopol.usa, finance.mou, infra.cybersec, infra.store | We Are Tech Africa | Burkina Faso Explores Digital Partnership with the United States | Zerbo/Sabane–Lockard meeting; first US digital-cooperation opening; $150M PACTDIGITAL sized
2025-07-25 | dpi.pay, include.access, finance.mou, capacity.literacy | TechAfrica News | Burkina Faso Ministry Explores Strategic Partnership with Wave Money | First Wave–BFA item in the queue; Wave at 1m+ users across 5 regions
2025-08-21 | infra.connect, gov.regional, gov.standards | Connecting Africa | Ghana, Burkina Faso tackle cross-border signal interference | NCA–ARCEP frequency coordination agreement finalised; ECOWAS roaming talks persisting despite BFA's AES turn
2025-08-26 | gov.policy, tech.ai, dpi.id, capacity.literacy | TechAfrica News | Burkina Faso Outlines 12 Key Projects for a Digitally Transformed Nation | PM seminar naming the 12 flagship projects behind the 2030 vision
2025-08-28 | gov.policy, infra.connect, dpi.id, infra.cybersec | We Are Tech Africa | Burkina Faso outlines 12 digital reforms to drive transformation by 2030 | The "zero data abroad" sovereignty doctrine in full; ARCEP SIM/internet baselines
2025-09-04 | gov.protect, gov.policy, dpi.govtech, tech.ai | TechAfrica News | Burkina Faso Strengthens Data Protection in Digital Transition Drive | MTDPCE–CIL session making DP compliance mandatory pre-deployment; names CIL president
2025-09-22 | finance.mou, geopol.gulf, tech.ai, infra.cybersec | Connecting Africa | Burkina Faso, UAE's Presight partner to accelerate digital transformation | Presight/G42 MoU — Gulf vendor entry into BFA AI, e-gov, cybersecurity
2025-09-24 | gov.standards, dpi.govtech, gov.policy | TechAfrica News | Burkina Faso Adopts Harmonized Framework to Strengthen Digital Governance | Manual of Procedures for IS Management validated — closes a 20-year-old regulatory gap
2025-11-05 | infra.connect, dpi.pay, include.access, digital.rural | TechAfrica News | Moov Africa Burkina Faso Aligns with Government Vision | New Moov DG meets Minister; "citizen operator" framing; names board chair Tiemtoré
2025-12-06 | gov.legislate, include.access, infra.connect | We Are Tech Africa | Burkina Faso Tightens Telecom Regulations, but Affordability Concerns Persist | ARCEP's 2023 consumer rules enforceable after court ruling; 8.8% GNI affordability vs 2% ITU benchmark
2025-12-11 | infra.connect, digital.rural, include.divides | Connecting Africa | Telecel deploys 300 telecom sites in Burkina Faso | Telecel doubles 150→300 sites; Omdia Q3-2025 market shares (Orange 14.2m, Moov 12.7m, Telecel 2.8m)
2025-12-11 | infra.connect, include.divides, digital.rural | TechAfrica News | Burkina Faso Moves Closer to Universal Digital Access with Telecel Faso Deployment | Same event, ministry-side framing — complementary to the Connecting Africa account
2025-12-18 | infra.connect, digital.rural, include.divides, digital.localgov | TechAfrica News | Burkina Faso Targets Zero Telecom White Zones by 2027 as 61 Nakambe Towns Get Connected | Nakambe leg of the 750-locality programme; names DGCE chief Zongo
2025-12-30 | finance.new, infra.connect, gov.policy, infra.store | We Are Tech Africa | Burkina Faso Earmarks $109.4Mln for Digital Projects in 2026 | 61bn CFA 2026 budget approved 29 Dec — doubles 2025; 156-activity work plan
2026-01-20 | infra.store, infra.cybersec, infra.connect | TechAfrica News | Burkina Faso Kicks Off Construction of Digital Infrastructure Monitoring Center | Construction start on R+5 backbone/cyberspace centre; 3.048bn CFA; delivery Oct 2026
2026-01-23 | infra.store, gov.policy, infra.capacity, finance.new | TechAfrica News | Burkina Faso Asserts Digital Sovereignty with Launch of National Mini Data Centres | Full specs: 3,000 TB, 7,000 VMs, 16bn FCFA cost / 30bn five-year savings
2026-01-26 | infra.store, infra.capacity, gov.policy | Connecting Africa | Burkina Faso launches two mini data centers | Adds the "zero external data" initiative framing and USD conversions
2026-01-27 | infra.store, infra.capacity, gov.policy | Telecom Review Africa | Burkina Faso Strengthens Data Sovereignty with Two Mini Data Centers | Adds PM's commissioning and the national Big Data Center repatriation plan
2026-01-28 | geopol.usa, capacity.training, tech.ai | ITWeb Africa | US, Burkina Faso alliance to offer AI training to youths | US ambassador confirms 2026 AI training across Ouaga, Bobo-Dioulasso, Koudougou
2026-02-04 | infra.connect, finance.new, tech.industry | TechAfrica News | Moov Africa Burkina Breaks Ground on New Headquarters | 9bn CFA HQ at ZACA; local-HQ mandate via ONATEL registration
2026-02-05 | dpi.govtech, infra.store, infra.connect, dpi.id | TechAfrica News | Burkina Faso's Digital Ministry Hits 91% of 2025 Targets, Sets 2026 Agenda | 91.06% scorecard; 2026 targets incl. 7m eID enrolments
2026-02-05 | infra.connect, dpi.govtech, dpi.id, include.divides | We Are Tech Africa | Burkina Faso Expands Digital Access to 370 Localities, Hits 91% of 2025 Goals | Same review, adds DataReportal 22.4% penetration / 5.42m users end-2025
2026-02-09 | infra.connect, dpi.id, finance.new, infra.store | TechAfrica News | World Bank Backs Burkina Faso's Nationwide Digital Infrastructure Expansion | **WURI still live**: World Bank mid-term review pairs PACTDIGITAL + WURI; 750 white zones covered; four 2026 priorities
2026-03-19 | dpi.govtech, gov.standards, tech.industry | TechAfrica News | Burkina Faso Advances Digital Transformation with Online IT Certification System | Service note 2026-056 mandating online-only ATI certification from 1 Apr 2026
2026-03-23 | gov.policy, infra.store, finance.new, infra.connect | ITWeb Africa | Burkina Faso steps into the future with digital investment | PACTDIGITAL-BF profile: ~$170m IDA-funded, five components, in force since Sept 2024
2026-03-23 | include.divides, dpi.govtech, infra.connect, finance.new | TechAfrica News | Burkina Faso Unveils PACTDIGITAL to Drive Digital Inclusion | Companion PACTDIGITAL profile; >96bn CFA IDA loan + state counterpart
2026-03-25 | dpi.govtech, gov.policy, data.open | TechAfrica News | Burkina Faso Introduces Digital System to Enhance Transparency in Public Spending | e-Dimaakia mandates digital official-travel procurement
2026-03-25 | tech.ai, include.divides, capacity.research, gov.policy | ITWeb Africa | Burkina Faso leads the way in culturally inspired AI | LLM corpus build for Mooré, Dioula, Fulfuldé, Gulmancema — sovereign-AI-by-language, pillar 11
2026-03-26 | dpi.govtech, gov.policy, tech.industry | Telecom Review Africa | Burkina Faso Launches e-Dimaakia to Modernize Public Administration | Same launch; adds DG of Public Procurement on competitive-offer automation
2026-03-30 | dpi.id, gov.regional, infra.store | Biometric Update | Focus on Sahel digital sovereignty gets clearer with Niger's new biometric ID card | **AES**: Niger is 2nd AES state to adopt the regional biometric ID after BFA; passport-free AES travel; Libyan vendor Al Itissan Al-Jadeed
2026-04-09 | dpi.govtech, dpi.id, infra.cybersec | TechAfrica News | Burkina Faso Launches Digital Travel Declaration Platform | Security Ministry border platform; 72-hour advance declaration
2026-04-13 | dpi.govtech, dpi.registry, gov.protect | We Are Tech Africa | Burkina Faso Moves Travel Declarations Online in Security Push | Same platform; centralised real-time migration data, traceability framing
2026-04-21 | dpi.id, gov.regional, gov.protect, include.divides | Connecting Africa | Niger's rollout of biometric IDs gets a thumbs up | **AES**: critical framing — surveillance/exclusion risk, vendor dependence; AES cross-border chip verification
2026-04-23 | geopol.eu, finance.new, dpi.id, digital.rural | TechAfrica News | Burkina Faso Deepens Digital Transformation Ties with Italian Investors | Italian delegation; PPP interest in digital ID, health digitalisation, drones
2026-04-24 | geopol.eu, finance.new, infra.energy, digital.rural | We Are Tech Africa | Burkina Faso Prioritizes Tech Sovereignty in Talks with Italian Investors | Same meeting; sovereignty-conditioned PPPs and solar-powered rural telecom
2026-05-07 | dpi.govtech, gov.policy, dpi.registry | We Are Tech Africa | Burkina Faso Launches Central Portal to Streamline E-Services | service-public.gov.bf (5 May): 1,672 sheets / 95 procedures / 183 institutions; citizen petition platform
2026-05-07 | finance.mou, gov.regional, gov.policy, capacity.training | We Are Tech Africa | Burkina Faso Expands Digital Partnerships as AfDB Eyes Strategic Projects | Explicit partner diversification — Russia, UAE, Niger, Mali; AfDB DSP-i extended to 2026
2026-06-03 | dpi.govtech, include.divides, digital.rural, dpi.registry | We Are Tech Africa | Burkina Faso Issues 600,000 Criminal Records Online, but Rural Gap Persists | Justice digitalisation forum: 72% urban vs 27% rural internet access
2026-06-15 | infra.connect, include.access, finance.new, capacity.training | ITWeb Africa | Ericsson, Luxembourg, Sweden support boosts Sahel digital connectivity | ETC 2021–2026 project report; $1.2m Luxembourg contribution
2026-06-17 | tech.ai, gov.policy, tech.innovate | TechAfrica News | Burkina Faso Validates National AI Roadmap 2026–2030 | Roadmap validation; ties to RELANCE Plan 2026-2030 and "AI for All"
2026-06-19 | infra.connect, infra.capacity, gov.standards | TechAfrica News | Burkina Faso Strengthens Oversight of National Fibre Optic Infrastructure | Fibre Monitoring Committee mission, 15–24 June 2026
2026-07-01 | infra.connect, digital.localgov, include.access, gov.standards | TechAfrica News | Burkina Faso's ARCEP Launches National Drive to Expand Digital Infrastructure | Tower rollout blocked by local opposition/misinformation; FASU role; "digital ambassadors"
2026-07-04 | capacity.training, capacity.literacy, include.access | Tech Review Africa | Orange Digital Center Burkina Faso showcases youth digital skills programmes | ODC five-year mark; AWS re/Start and device-repair training — **PR wire, source the primary at ingest**
2026-07-13 | infra.connect, digital.rural, include.divides, gov.standards | TechAfrica News | Burkina Faso Targets 1,000 White Zones in 2026 Connectivity Drive | ~2,000 localities (10-12% of territory) still uncovered; 1.5–2m beneficiaries planned
2026-07-16 | tech.ai, capacity.training, gov.legislate | TechAfrica News | Burkina Faso Trains Lawmakers on AI to Support Digital Governance | SPIVTEN trains ~30 ALP lawmakers ahead of an AI regulatory framework

---

## Flags for the ingest pass

**AES / ECOWAS-exit items (highest value — extend the held `burkina-faso--dpi-id` material):**
- `2026-03-30-niger-biometric-id-aes-sahel-sovereignty.md` and `2026-04-21-niger-rollout-biometric-ids-aes-connectingafrica.md` — Niger becomes the **second** AES state to launch the regional biometric ID, BFA first, Traoré the first enrollee. Confirms the CIB-AES is a **bloc-wide credential with cross-border chip verification and passport-free AES travel**, not a national card. Tagged `[NER, BFA]`.
- `2026-02-09-world-bank-backs-burkina-faso-digital-infrastructure-expansion.md` — **updates the held WURI position.** The wiki holds that BFA's ECOWAS exit drops it out of WURI; this Feb-2026 World Bank mid-term review has the Bank still running **PACTDIGITAL + WURI jointly in BFA**. Not a contradiction of the ECOWAS-passport loss, but the WURI-participation claim needs re-dating at ingest.
- `2026-05-07-burkina-faso-afdb-digital-partnerships.md` — BFA diversifying to Russia, UAE, Niger, Mali as ECOWAS/Western channels narrow.

**Same-event twins across outlets (deliberately kept — lint #7 adjudicates with full text):**
- mini data centres: `2026-01-23` (TechAfrica) · `2026-01-26` (Connecting Africa) · `2026-01-27` (Telecom Review) + newspaper-half `2026-01-25-gouvernement-inaugure-deux-datacenters.md`
- 91% 2025 review: `2026-02-05` ×2 + newspaper-half `2026-02-03-contrats-objectifs-transition-digitale-91-pourcent.md`
- 12 flagship projects seminar: `2025-08-26` (TechAfrica) · `2025-08-28` (We Are Tech) + newspaper-half `2025-08-26-seminaire-gouvernemental-transformation-digitale.md`
- e-Dimaakia: `2026-03-25` (TechAfrica) · `2026-03-26` (Telecom Review)
- travel declarations: `2026-04-09` (TechAfrica) · `2026-04-13` (We Are Tech) + newspaper-half `2026-04-09-fiche-de-police-aeroport-en-ligne.md`
- Italian investors: `2026-04-23` (TechAfrica) · `2026-04-24` (We Are Tech)
- Telecel 300 sites: `2025-12-11` ×2
- AI roadmap: `2026-06-17` (TechAfrica) + newspaper-half `2026-06-17-ia-feuille-de-route-nationale-validation.md`
- lawmakers AI training: `2026-07-16` (TechAfrica) + newspaper-half `2026-07-15-ia-deputes-formes.md`
- PACTDIGITAL profile: `2026-03-23` ×2 (ITWeb · TechAfrica)

**Currency note:** the 2025-12-30 item cites ITU internet penetration at 17% (2023); the 2026-02-05 items cite DataReportal at 22.4% (end-2025). Different sources and periods — supersession, not contradiction.

**Byline note:** on several TechAfrica News items Exa's metadata author ("Jennifer Onyeagoro") contradicted the in-page byline ("Editorial Team", "Kay-Lyne Wolfenden", "Joyce Onyeagoro"). The in-page byline was used throughout.

**PR wire:** the two Tech Review Africa items (`2025-06-05`, `2026-07-04`) carry `note: byline-free PR wire — verify against primary at ingest`. Both did serve an explicit in-body date, so neither needed proxy dating.
