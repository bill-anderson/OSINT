# CIV — sweep manifest (`CIV-2026-07-17`)

**Window:** 2025-01-01 → 2026-07-17 · **Staged:** 187 · **Dropped:** 278 (`sweep/drop-log-CIV.csv`)

> Merged from the two half-sweeps, which ran as separate agents writing disjoint
> files. Same-event twins across the halves are deliberately kept: same event from
> a different outlet is never a sweep-stage drop. Lint #7 adjudicates at ingest,
> with full text in hand.

---

## Part 1 — Newspapers

# CIV sweep — national press manifest

**Batch:** `CIV-2026-07-17` · **Window:** 2025-01-01 → 2026-07-17
**Outlets:** Fraternité Matin (`fratmat.info`, FM) · Linfodrome (`linfodrome.com`, LI)
**Staged:** 84 candidates · **Dropped:** 213 (see `sweep/drop-log-CIV-papers.csv`)
**Language:** all queries run in French (FR-only papers; no EN passes spent).

Baseline: **zero** fratmat/linfodrome URLs were held before this run — the CIV hub was built
entirely from trade-press and multilateral sources. Every line below is therefore new *national-press*
provenance, even where the underlying event is already known.

Legend: `[PR]` = advertorial/PR-wire (`provenance_flag: pr-wire`) · `[PROXY]` = no publication stamp in
body, date from triage (`date_source: proxy`) · No `[CLIP]` items — nothing paywalled; all 84 bodies are full text.

---

## Digital ID, civil registry & CRVS

| published | src | topics | title | why it's new |
|---|---|---|---|---|
| 2025-04-26 | LI | dpi.id, dpi.registry | Côte d'Ivoire : L'ONECI lance une application pour digitaliser la carte nationale d'identité | ONECI CNI mobile app — predates the [[maposte]] super-app (2026-01) the hub opens on; earlier step in the same ONECI digitisation arc. |
| 2025-06-17 | FM | dpi.id, dpi.registry | État civil : Vagondo Diomandé veut bâtir un système sécurisé | Interior ministry's own framing of civil-registry security; hub has no Interior-side voice on `dpi.id`. |
| 2025-07-01 | FM | dpi.id, dpi.registry, data.statistics | Annuaire statistique d'état civil 2024: Le taux d'enregistrement des naissances dans les délais en nette régression | **Birth registration *declining*.** Hard, dated counter-evidence to the hub's uniformly positive ONECI arc. Priority read. |
| 2025-10-15 | LI | dpi.id, dpi.pay, dpi.govtech | Etablissement de la CNI : Comment acheter en ligne les nouveaux timbres électroniques ? | e-stamp payment rail attached to CNI issuance — ID×payments link absent from hub. |
| 2025-11-17 | FM | dpi.id, dpi.pay | Banque : Société générale Côte d'Ivoire et l'Oneci désormais ensemble pour un secteur financier sécurisé | ONECI identity authentication sold to a commercial bank — RNPP as a KYC utility. New use-class for hub. |
| 2026-02-27 | LI | dpi.id, dpi.registry, digital.rural | Projet WURI : les recommandations restituées aux sous-préfets et leaders communautaires de 10 sous-préfectures | **World Bank WURI programme in CIV — entirely absent from the hub.** Ties CIV into the regional unique-ID push. Priority. |
| 2026-05-13 | LI | dpi.id, dpi.registry | ID4Africa 2026 : L'ONECI présente les avancées du système ivoirien d'identification numérique | ONECI's own 2026 state-of-play, presented internationally. |
| 2026-06-09 | LI | dpi.id, capacity.literacy, digital.rural | Etat civil, identification : L'ONECI renforce les capacités des speakers en langues locales | Local-language registration outreach — inclusion mechanics behind the coverage gap. |
| 2026-06-16 | LI | dpi.id, dpi.registry, digital.rural | Déclaration des naissances et des décès : L'ONECI engage les leaders communautaires du Tonkpi | Rural CRVS push; pairs with the 2025-07-01 regression figure. |

## GovTech, e-justice & interoperability

| published | src | topics | title | why it's new |
|---|---|---|---|---|
| 2025-01-30 | FM | dpi.govtech, dpi.id, dpi.registry | Sécurisation et digitalisation des actes de justice : Le ministre Sansan Kambilé lance une plateforme | **Re-dates the hub.** Hub dates e-Justice to "launched 30 Jan 2025" — this is the primary, and shows it began as a *two-court pilot* (Dabou, Yopougon), nationality certificate only. |
| 2025-01-31 | FM | dpi.govtech, dpi.id | Certificat de nationalité : la demande et l'obtention se font sur www.e-justice.ci | **Re-dates the hub's 2025-06-18 "digital nationality certificate".** Online nationality certificate was live in *January* 2025; June was the decree, not the launch. |
| 2025-06-18 | FM | gov.legislate, dpi.govtech, dpi.id, data.statistics | Communiqué du Conseil des ministres du 18 juin 2025 | **The primary decree itself** for the Certificat de Nationalité Numérique + Attestation Recognitive. Also carries **three unflagged Système Statistique National decrees** (statistical visa, tariffing, communication of administrative files w/ personal-data protection) — new `data.statistics` material. |
| 2025-06-27 | FM | dpi.govtech, dpi.id | Tribunal de 1re instance d'Abidjan : Sansan Kambilé lance la plateforme e-justice.ci | Abidjan rollout stage between pilot and national. |
| 2025-09-25 | FM | dpi.exchange, dpi.govtech | Kalil Konaté met en place la plateforme d'interopérabilité de l'administration | National-press account of the UXP layer the hub holds at 2025-09-25 via trade press. Corroborates date. |
| 2025-12-16 | LI | dpi.govtech, gov.policy, infra.cybersec | Le ministère de l'Economie fait la mise à jour de son système d'information 2026-2030 | Second outlet on the SDSI (hub: 2025-12-19). Dates it **2025-12-16** — earlier than held. |
| 2025-12-23 | FM | dpi.exchange, dpi.govtech | GUCE-CI et la Direction générale des impôts prêts à échanger leurs données | Concrete inter-agency data exchange (trade window ↔ tax) — the interoperability layer in actual use. |
| 2026-04-15 | FM | dpi.govtech | Fluidité des transports : Une nouvelle plateforme | Sectoral govtech platform. |
| 2026-04-17 | FM | dpi.govtech | La plateforme e-justice.ci au cœur d'un atelier de sensibilisation | Adoption/change-management stage. |
| 2026-04-20 | FM | dpi.govtech | e-Justice.ci : La Côte d'Ivoire connecte 16 nouvelles juridictions | Rollout metric. |
| 2026-05-12 | LI | dpi.govtech, dpi.exchange | Digitalisation du commerce extérieur : première édition du GUCE CONNECT | Trade single-window ecosystem event. |
| 2026-06-30 | FM | dpi.govtech | E-Justice : Les 39 tribunaux de première instance désormais connectés | **Completion of the arc** begun 2025-01-30: 2 pilot courts → all 39 first-instance tribunals in 17 months. Clean trajectory for the hub. |

## Data governance, protection & the regulator (ARTCI)

| published | src | topics | title | why it's new |
|---|---|---|---|---|
| 2025-03-29 | FM | dpi.pay, gov.protect | Paiements numériques : Une adoption croissante sous haute vigilance | Data-protection framing of payments growth. |
| 2025-04-24 | FM | gov.legislate, dpi.exchange | Echanges électroniques : projet de loi ratifiant l'ordonnance n°2017 du 2 août 2017 (art. 3 et 17 modifiés), adopté à l'Assemblée nationale | **Legislative primary** — e-transactions law amendment through parliament. Hub has no CIV legislative instrument on `dpi.exchange`. |
| 2025-07-25 | FM | data.open, gov.policy | ACCESS CAIDP : Un tournant pour la transparence et l'accès à l'information | CAIDP (access-to-information authority) — an institution absent from the hub; `data.open` currently rests only on the Data Governance Strategy. |
| 2026-01-29 | FM | gov.protect, capacity.literacy | L'Artci rappelle leurs droits et devoirs à des milliers de jeunes | ARTCI as DPA doing public education. |
| 2026-03-13 | FM | gov.protect, capacity.literacy | JIF 2026 : L'Artci sensibilise les lycéennes à leurs droits | Gendered data-rights outreach. |
| 2026-04-08 | FM | gov.legislate, data.statistics | Régulation postale : L'Artci renforce les obligations de transmission des données | Regulator mandating operator data reporting. |
| 2026-04-27 | LI | gov.legislate, gov.standards | l'ARTCI et les opérateurs renforcent le cadre de conformité | Compliance regime. |
| 2026-05-07 | FM | gov.legislate | Conseil de régulation de l'Artci : Les nouveaux membres prêtent serment | **New ARTCI regulatory council seated (2026).** Hub treats ARTCI as static since 2024; leadership turnover is live. |
| 2026-05-08 | LI | gov.legislate | ARTCI : Les nouveaux membres du Conseil de régulation prêtent serment | Second outlet, same event — kept per rule (ingest lint adjudicates). |
| 2026-05-12 | LI | gov.legislate | ARTCI : Les nouveaux régulateurs officiellement installés | Installation stage (distinct from swearing-in). |
| 2026-05-18 | FM | gov.protect | Djibril Ouattara présente les progrès réalisés par la Côte d'Ivoire | Ministerial data-protection stocktake. |
| 2026-05-18 | FM | gov.protect, gov.regional | La Côte d'Ivoire appelle à une action collective pour renforcer la protection des données | CIV pushing regional DP coordination. |
| 2026-06-24 | FM | gov.protect, gov.standards | L'ARTCI lancera la plateforme CERTINUM le 2 juillet 2026 `[PROXY]` | Launch-date notice (moved from 25 June to 2 July). |
| 2026-07-02 | FM | gov.protect, gov.standards | Certinum entre en service pour accélérer la conformité numérique `[PROXY]` | **CERTINUM live — newest item in the sweep.** A DP-compliance certification platform; nothing comparable in the hub. |

## Cybersecurity

| published | src | topics | title | why it's new |
|---|---|---|---|---|
| 2025-02-11 | FM | infra.cybersec, gov.legislate | Cybersécurité : L'ANSSI officiellement lancée | **ANSSI's launch — absent from the hub.** Created by decree of the 30 Oct 2024 Conseil des ministres; centralises PLCC, CI-CERT, Alertes100. Fills the hub's institutional gap under "National Cybersecurity Strategy". Priority. |
| 2025-05-22 | FM | infra.cybersec | Cybercriminalité : 12 100 dossiers traités pour un préjudice de 7 milliards de FCFA | **Dated enforcement figures** — hub has no CIV cybercrime magnitudes. |
| 2025-06-11 | FM | infra.cybersec | Kaspersky : Plus de 27 millions de tentatives d'attaques détectées en CIV en 2024 | Dated threat-volume figure (vendor-sourced — attribute accordingly). |
| 2026-05-19 | FM | infra.cybersec | Un centre intelligent pour traquer les cybermenaces en temps réel | New SOC-type capability. |
| 2026-06-10 | FM | infra.cybersec, infra.capacity | Djibril Ouattara lance le réseau national des RSSI | National CISO network — institutional build-out. |
| 2026-06-11 | LI | infra.cybersec, infra.capacity | Le ministre lance les travaux du premier atelier du Réseau national des RSSI | Second outlet, same event. |
| 2026-07-11 | FM | infra.cybersec | Cybersécurité : La gouvernance et la responsabilité au cœur d'une lutte efficace | Governance framing. |

## AI & national strategy stack

| published | src | topics | title | why it's new |
|---|---|---|---|---|
| 2025-02-11 | FM | tech.ai, gov.policy, geopol.eu | Sommet sur l'IA à Paris : Une opportunité stratégique | CIV at the Paris AI Summit; Déclaration de Paris. |
| 2025-02-12 | FM | tech.ai, gov.policy | Sommet d'action sur l'IA : Kalil Konaté présente le plan de la Côte d'Ivoire | **UNESCO RAM readiness methodology** adopted; lettre d'intention HABG/ministry/UNESCO signed 30 Sept 2024. Governance scaffolding the hub lacks. |
| 2025-02-19 | FM | tech.ai, data.satellite, infra.cybersec | IA et défense : Les enjeux du Siade 2025 | **AI Strategy costed: 912bn FCFA, 15 objectives, 109 projects over 5 yrs.** Hub names the strategy but carries no figures. Priority. |
| 2025-03-14 | FM | gov.policy, tech.ai, finance.new, infra.store | Stratégies nationales de gouvernance des données et de l'IA : La Bad continuera à soutenir | **Official handover of both strategies (13 Mar 2025) + PARAE launch, 49bn FCFA incl. a data centre.** Hub lists PARAE only as an unhubbed donor programme. Priority. |
| 2025-05-15 | FM | tech.ai, gov.policy, data.open | Les deux outils présentés au secteur privé | Private-sector rollout of the strategy pair. |
| 2025-05-19 | FM | tech.ai, gov.policy | Le gouvernement veut faire de l'IA un moteur de développement | Policy framing. |
| 2026-03-12 | FM | tech.ai, infra.store, gov.regional | Souveraineté technologique : Le SIADE ouvre la réflexion `lens: sovereignty` | Sovereignty framing, continental scope. |
| 2026-04-08 | LI | gov.policy, tech.ai, infra.cybersec, data.open | Transformation numérique : Yamoussoukro au centre de l'alignement stratégique | **Second outlet on the hub's 2026-04-12 Yamoussoukro seminar — and dates it 2026-04-08.** See contradiction note below. |
| 2026-04-30 | FM | tech.ai, gov.policy | FEMUA 18 : hub africain de l'intelligence artificielle `[PROXY]` | Ministerial AI-hub ambition. |
| 2026-06-26 | FM | tech.ai, gov.legislate | Journées du Droit du Numérique 2026 : bâtir une IA souveraine `[PROXY]` `lens: sovereignty` | Digital-law profession + sovereign-AI framing. |
| 2026-07-08 | FM | tech.ai, gov.regional | Gouvernance mondiale de l'IA : la Côte d'Ivoire à Genève grâce à l'ARTCI | CIV in global AI governance fora. |

## Data centres, cloud & sovereignty

| published | src | topics | title | why it's new |
|---|---|---|---|---|
| 2025-03-24 | LI | infra.store, tech.industry | Door : Le Cloud Souverain Africain `[PR]` `places: [CIV, SEN]` | Sovereign-cloud vendor positioning (Cloudoor/GOS). Advertorial — primaries named in file. |
| 2025-08-26 | FM | infra.store, geopol.usa, finance.new | **Premier Centre national de données : Les Etats-Unis appuient la CIV à hauteur de 39,6 milliards de FCFA** | **Biggest find. US EXIM Bank $66m for CIV's National Data Centre — the first EXIM-backed data centre in Sub-Saharan Africa** — implemented by Cybastion (Washington DC). Plus a *second* EXIM approval on 14 Aug 2025: **$47m to digitise the Ministry of Commerce & Industry**. US ambassador frames it explicitly as backing "la souveraineté numérique de la Côte d'Ivoire". **The hub carries no `geopol.usa` for CIV at all** — it tags CIV `geopol.eu` only. Top priority. |
| 2025-10-01 | FM | infra.store | ST Digital inaugure un data center de nouvelle génération à Grand-Bassam `[PR]` `[PROXY]` | Advertorial twin of the item below — not a duplicate; see note. |
| 2025-10-03 | FM | infra.store | Un data center de pointe officiellement inauguré à Vitib | Independent bylined coverage of the same ST Digital inauguration the hub holds via trade press. Adds ministry/VITIB presence. |

## Connectivity, spectrum & universal access

| published | src | topics | title | why it's new |
|---|---|---|---|---|
| 2025-07-10 | FM | infra.connect, tech.industry | Déploiement de la 5G en Côte d'Ivoire : Bientôt la connectivité | **5G rollout** — hub says only "early 5G pilots" (2026-01). Dated national-press evidence. |
| 2025-07-24 | FM | digital.rural, include.access, include.divides, infra.connect | « Nos villages connectés » : inclusion numérique sans frontières | Named rural-connectivity programme absent from hub. |
| 2025-07-31 | FM | infra.connect, gov.standards | L'ARTCI impulse l'adoption de l'IPv6 | Technical-standards governance — new axis. |
| 2025-08-05 | FM | infra.connect, gov.standards | Forum sur le Peering : l'Artci impulse l'interconnexion locale | **Local peering/IXP push** — traffic-localisation policy; hub silent on CIV peering. |
| 2025-08-05 | FM | include.access, include.divides, infra.connect | Service universel des télécommunications grâce à l'Ansut | ANSUT universal-service fund — "mentioned, not hubbed" in hub. |
| 2025-08-16 | LI | infra.connect, gov.regional | Afrique de l'Ouest : infrastructures de fibre optique transfrontalières `places: [XWA]` | Genuinely regional (Abidjan–Monrovia–Accra–Lagos backbone); tagged XWA, no CIV payload. |
| 2025-08-18 | FM | infra.connect, data.open, data.satellite | Africa-BB-Maps : cartographie nationale des réseaux de télécommunications | **National broadband infrastructure mapping** — a dataset/registry asset; candidate `resource` entity. |
| 2025-12-17 | FM | infra.connect, gov.legislate | Infrastructures des réseaux : les acteurs à la recherche d'une protection durable | Infrastructure-protection legal debate. |
| 2026-02-15 | FM | include.access, infra.connect | Ansut : intensifier la marche vers le service universel | ANSUT progress. |
| 2026-05-14 | LI | infra.connect, digital.localgov | Plateau : la mairie lance un réseau souterrain unique pour tous les opérateurs | Municipal shared-duct infrastructure — unusual local-gov × telecom item. |
| 2026-05-15 | FM | infra.connect, geopol.eu, finance.mou | Via Africa : nouveau projet de câble sous-marin `[PR]` `places: [CIV, XWA]` | National-press account of the Via Africa cable the hub holds at 2026-05-23. Advertorial. |
| 2026-06-15 | FM | infra.connect, gov.standards | Peeringday 2026 : L'Artci mobilise l'écosystème | Peering push continues into 2026. |

## Payments & digital finance

| published | src | topics | title | why it's new |
|---|---|---|---|---|
| 2025-08-15 | FM | dpi.pay, dpi.govtech | Le Trésor Public accélère la digitalisation des dépenses publiques avec TrésorPay–TrésorMoney | Government payment rail — G2P/P2G; absent from hub. |
| 2025-09-26 | FM | dpi.pay, gov.legislate | Monnaie électronique : la Côte d'Ivoire enregistre un 4e établissement | **BCEAO e-money licensing** — file carries licence no. `EME.CI.025/2025` (Djogana Pay), a citable primary. |
| 2025-12-06 | FM | dpi.pay | Mobile Money : Un tournant majeur pour la digitalisation financière | Mobile-money inflection. |
| 2026-01-06 | FM | dpi.pay, finance.new | Inclusion financière : La CDC-CI entre au capital de la fintech Green-Pay | State investment vehicle taking fintech equity — deal-entity candidate. |
| 2026-01-22 | FM | dpi.pay, finance.mou, gov.regional | Flutterwave s'associe à Turnkey pour les paiements transfrontaliers `[PR]` `places: [XAF]` | Continental, no CIV payload — retagged XAF. Press release. |
| 2026-05-06 | FM | dpi.pay, gov.regional, gov.legislate | **UEMOA : L'interopérabilité des paiements devient obligatoire dès le 30 juin 2026** `places: [CIV, XWA]` | **BCEAO instruction making payment interoperability mandatory UEMOA-wide.** Regional regulatory hard deadline; strong `gov.regional` × `dpi.pay` material. Priority. |

## Sectoral MIS, local government & skills

| published | src | topics | title | why it's new |
|---|---|---|---|---|
| 2025-02-26 | FM | tech.industry, gov.policy, capacity.training, geopol.eu | Industrie 4.0 : La stratégie nationale remise au gouvernement | UNIDO + German-funded Industry 4.0 strategy — another instrument in the strategy stack. |
| 2025-05-28 | FM | capacity.training, geopol.china | Huawei ICT Competition 2024-2025 : champions du monde ivoiriens | **Huawei skills pipeline** — hub has no `geopol.china` for CIV. |
| 2025-05-07 | FM | gov.policy, tech.innovate | Communiqué du Conseil des ministres du 7 mai 2025 | Primary: Ivoire Tech Forum 2025 announcement (Section C/3). |
| 2025-07-13 | FM | finance.new, tech.industry, tech.innovate | Ivoire Tech 2025 : Plus de 250 milliards de FCfa investis pour 2 965 emplois directs | **Dated sector investment + jobs figures.** |
| 2025-12-05 | FM | dpi.mis, capacity.training | Digitalisation de l'Éducation : validation technique des outils de l'étude de référence | EMIS baseline work — `dpi.mis` thin in hub. |
| 2026-03-27 | FM | digital.localgov, dpi.govtech | Collectivités territoriales : Clotchor Secongo développe un système `[PR]` | Self-asserted figures; TresorPay/collectivités angle. Primaries named in file. |
| 2026-05-19 | FM | capacity.training, geopol.china | Concours mondial pour les jeunes talents : étudiants ivoiriens en Chine | China skills pipeline continues. |
| 2026-06-11 | FM | data.satellite, dpi.registry, digital.localgov, data.open | **Ville intelligente : Le Géoportail du Grand Abidjan lancé** | Geospatial/address-registry asset for Greater Abidjan — `data.satellite` + `dpi.registry`; candidate `resource` entity. |
| 2026-06-24 | FM | digital.rural, dpi.mis, include.access, infra.connect | Forum INTECH Santé 2026 : L'ANSUT présente sa feuille de route pour connecter les zones rurales `[PROXY]` | Health-MIS × rural connectivity. |

---

## Notes for ingest

**Contradiction / re-dating candidates (flagged, not resolved):**
1. **Yamoussoukro strategic seminar** — hub records **2026-04-12**; Linfodrome reports it **2026-04-08**. Same event (Djibril Ouattara, alignment of the National Digital Development / Cybersecurity / Data Governance 2030 / AI strategies, PADCI + PARAE review). One of the two dates is wrong.
2. **e-Justice / digital nationality certificate** — hub's "2025-06-18 digital nationality certificate decree, building on e-Justice (launched 30 Jan 2025)" is broadly right but compresses three distinct events now separately sourced: **30 Jan 2025** two-court pilot launch; **31 Jan 2025** nationality certificate live online; **18 Jun 2025** the decree formalising it. The June item is the *decree*, not the launch.
3. **SDSI 2026-30** — hub dates 2025-12-19; Linfodrome dates **2025-12-16**. Likely same adoption, different reporting date.
4. **Birth registration** — the 2024 statistical yearbook reports on-time birth registration **in marked decline**, cutting against the hub's uniformly positive ONECI/RNPP narrative. Real tension, worth a contradiction item if the hub asserts otherwise.
5. **Two in-body date inconsistencies (outlet errors, publication dates unaffected)** — CDC-CI/Green-Pay lede says "mardi 6 janvier 2025" but the stamp is 06/01/26 and the protocol is dated 31 Dec 2025 (outlet year typo); WURI chapô says 23 February 2026 but body says "vendredi 23 janvier 2026". Both noted in-file, unresolved.

**Same-event pairs deliberately kept (not sweep-time drops — lint #7 adjudicates with full text):**
- ARTCI council swearing-in: FM 2026-05-07 + LI 2026-05-08 + LI 2026-05-12 (installation may be a distinct third event).
- RSSI network launch: FM 2026-06-10 + LI 2026-06-11.
- ST Digital inauguration: FM 2025-10-01 `[PR]` + FM 2025-10-03 (bylined newsroom). Same outlet, but **not** a re-crawl — one is advertorial, the other independent reporting that adds the event, ministry representation and VITIB comment. Keep both; the advertorial is not the better copy.

**Entities new to the vocabulary** (no page yet; will need creation or reconciliation at ingest):
`anssi-cote-divoire` · `ci-cert` · `plcc` · `caidp` · `anstat` · `civix` · `vitib` · `cybastion` · `exim-bank-usa` · `tresorpay-tresormoney` · `guce-ci` · `djogana-pay` · `green-pay` · `cdc-ci` · `wuri` · `parae` · `padci` · `sah-analytics` · `cloudoor` · `geoportail-grand-abidjan` · `africa-bb-maps`.
Two are candidate **`resource`** entities (standing data assets, not events): **Africa-BB-Maps** (national telecom infrastructure map) and the **Géoportail du Grand Abidjan**.

**Date discipline:** 78/84 `date_source: source` (established from fratmat `Le DD/MM/YY` stamps and linfodrome `Publié le :` lines in the fetched body — never from Exa metadata, which was not trusted at any point). 6 `[PROXY]` items carry no publication stamp in the body; all 6 have an in-body *event* date consistent with the assigned date, but that is corroboration, not a stamp, and they are flagged honestly. No live-rendered/relative-date traps encountered on either domain. `date_precision: day` throughout.

**Not staged, worth knowing:** a 2025-01-22 fratmat "publi-info" on digitalisation of public services is **1xbet gambling advertorial** with the promo link embedded mid-article — dropped as off-topic spam, not staged. A 2025-07-18 "Paris Sécurisés : Comment les Apps Protègent Vos Données" is the same genre (betting SEO) and was likewise dropped.

---

## Part 2 — Trade journals

# Sweep manifest - CIV trade journals

**Batch:** `CIV-2026-07-17` | **Window:** 2025-01-01 -> 2026-07-17 | **Retrieved:** 2026-07-17
**Source set:** the 8 fixed trade journals, recipes J1-J2 (`sweep/query-recipes.md`).
**Staged:** 103 candidates | **Dropped:** 65 (`sweep/drop-log-CIV-journals.csv`).

Every `published` was read from the fetched page body, not from Exa metadata. **No proxy dates in this batch** -
all 103 are `date_source: source`, `date_precision: day`. Bodies are full clipped article text (ISSUE-008).

Items marked **[pr-wire]** carry `provenance_flag: pr-wire` and name a `primary_to_source` for the ingest pass.
Same-event/different-outlet twins are staged deliberately - sweep dedup is conservative; the lint #7 ladder
adjudicates them at ingest with full text in hand.

| published | topics | source | title | why it's new |
|---|---|---|---|---|
| 2025-02-03 | dpi.govtech, dpi.id, gov.policy | We Are Tech Africa | Côte d'Ivoire Digitizes Judicial Services with e-Justice Platform | First judicial-sector digitisation; nationality certificates online, authenticated via ONECI VERIF app. |
| 2025-02-10 | gov.regional, infra.cybersec, gov.policy, infra.connect | We Are Tech Africa | Togo, Côte d'Ivoire Explore Deeper Digital Cooperation | Bilateral Lawson-Konate talks on regulation, cybersecurity and critical-infrastructure protection. |
| 2025-02-12 | tech.ai, infra.store, infra.capacity | ITWeb Africa | ST Digital launches AI hosting solution in Cameroon, Cote d'Ivoire | First sovereign NVIDIA-GPU AI hosting platform for Douala + Abidjan. |
| 2025-02-26 | infra.connect, digital.rural, gov.policy, include.access | Telecom Review Africa | Boosting Connectivity: Côte d'Ivoire Advances Telecom Expansion | 240 radio sites funded by converting 2021 QoS fines into network investment. |
| 2025-03-14 | tech.ai, gov.policy, infra.store, dpi.exchange, gov.standards | We Are Tech Africa | Côte d'Ivoire Unveils AI and Data Governance Strategy | National AI + data governance strategy handed to PM; sovereign cloud, Safe AI label, National Committee. |
| 2025-04-28 | infra.cybersec, gov.legislate, gov.standards, dpi.govtech | We Are Tech Africa | Côte d'Ivoire Approves New Digital Security Framework | Assembly ratifies Ordinance 2024-950: cybersecurity mandate moves from ARTCI to ANSSI. |
| 2025-04-28 | tech.industry, finance.new, geopol.india, infra.store, infra.connect | We Are Tech Africa | Côte d'Ivoire : VITIB Seeks $311 Mln to Accelerate Its Development | Grand-Bassam tech park courts Indian investors/Exim Bank of India for a 311M 2028 plan. |
| 2025-05-09 | tech.ai, tech.industry | ITWeb Africa | Artefact broadens AI footprint into Côte d'Ivoire | AI consultancy Artefact opens Abidjan office as its Francophone Africa hub. |
| 2025-05-16 | geopol.usa, finance.mou, infra.cybersec, capacity.training, tech.ai, infra.store | We Are Tech Africa | Côte d'Ivoire Secures $550M U.S. Backing for Digital Sovereignty, Tech Talent | 550M US trade package; George Mason/Cybastion/Ministry MoU on AI and cyber talent. |
| 2025-06-17 | gov.legislate, infra.cybersec, dpi.govtech | Tech Review Africa **[pr-wire]** | Ivory Coast senate unanimously approves cybersecurity and e-government bill | Ratifies Ordinance 2024-950, repeals parts of the 2013 e-transactions law - a hard legislative event. |
| 2025-06-17 | infra.store, finance.mou, dpi.govtech | Connecting Africa | Raxio to strengthen Côte d'Ivoire's data sovereignty plan | Ministry-Raxio MoU puts government workloads in the Tier III Abidjan colo. |
| 2025-06-30 | finance.new, tech.innovate, tech.industry, gov.policy | We Are Tech Africa | Côte d'Ivoire Calls For $178M Fund to Boost Tech Startups | Minister asks private sector for a CFA100bn startup fund; ~300 active startups. |
| 2025-06-30 | infra.connect, infra.store, finance.mou, gov.policy | TechAfrica News **[pr-wire]** | Raxio Côte d'Ivoire and ARTCI Sign MoU to Host the Nation's Third Internet Exchange Point | CIVIX, the third national IXP, colocates in Raxio Tier III Grand-Bassam facility. |
| 2025-07-01 | gov.policy, tech.ai, dpi.id, dpi.exchange, dpi.govtech, tech.innovate, digital.rural, infra.store | TechCabal | \"Our dream is zero paper\": Côte d'Ivoire's digital transformation chief on the country's tech ambitions | On-record ministry interview: 2026-2030 strategy, national AI agency, startup law. |
| 2025-07-04 | finance.new, tech.innovate, gov.policy | TechAfrica News | Ivory Coast Launches FCFA 100 Billion Technological Innovation Fund | New FCFA 100bn innovation fund announced at the inaugural IvoryTech Forum. |
| 2025-07-11 | tech.innovate, gov.policy, include.divides | Tech Review Africa **[pr-wire]** | Ivorian government launches Ivoire Tech Forum in Abidjan | First major tech gathering after the National Digital Strategy 2025; digitally-sovereign framing. |
| 2025-07-15 | finance.mou, dpi.govtech, tech.ai, geopol.gulf, gov.policy | TechAfrica News | Côte d'Ivoire Partners with UAE's G42 Presight to Modernize Public Services | Two UAE MoUs on admin modernisation and the national digital strategy - Gulf entry alongside the US push. |
| 2025-07-15 | tech.ai, finance.mou, geopol.gulf, dpi.govtech, gov.policy | We Are Tech Africa | Côte d'Ivoire Signs AI Partnership to Modernize Public Services | Two non-binding MoUs with UAE G42 Presight as the SNDN expires; Abu Dhabi to help write the next strategy. |
| 2025-07-21 | infra.connect, digital.rural, include.divides, include.access | Tech Review Africa **[pr-wire]** | Côte d'Ivoire expands digital access with new rural connectivity push | PNCR named sites/dates + 575-locality / 825,675-resident target by Dec 2025. |
| 2025-07-21 | infra.store, dpi.govtech, capacity.training, geopol.usa, tech.innovate | TechAfrica News | Côte d'Ivoire's Digital Sovereignty Takes Shape with New Data Center | Digital City construction began May 2025 with a sovereign data centre at its core. |
| 2025-07-28 | tech.industry, capacity.training, tech.innovate | ITWeb Africa | Yango Group opens continental headquarters in Côte d'Ivoire | Dubai-based Yango makes Abidjan its largest African office. |
| 2025-08-12 | infra.store, infra.energy, tech.ai, gov.policy, gov.standards, finance.new | TechAfrica News | ST Digital to Launch Côte d'Ivoire's First Sovereign Tier III Data Center | A competing francophone sovereign-cloud play at the same VITIB site. |
| 2025-08-15 | finance.new, dpi.govtech, geopol.usa, geopol.china, infra.store | TechAfrica News **[pr-wire]** | EXIM Greenlights Digital Transformation Project in Côte d'Ivoire with U.S. Tech Giants | EXIM board approves ministry digitisation export explicitly framed as countering the PRC. |
| 2025-08-20 | geopol.usa, geopol.china, finance.new, dpi.govtech, infra.cybersec, infra.store | We Are Tech Africa | Côte d'Ivoire Gets $47Mln US Commitment to Digitize Ministry of Industry | US EXIM approves 47M under the China and Transformational Exports Program. |
| 2025-08-25 | finance.new, infra.store, geopol.usa, geopol.china, infra.cybersec | TechAfrica News **[pr-wire]** | US EXIM Bank approves $66M for Côte d'Ivoire Data Center | First data centre EXIM has ever backed in sub-Saharan Africa; displaces a Chinese competitor. |
| 2025-09-02 | infra.connect, dpi.pay, include.access | ITWeb Africa | MTN Côte d'Ivoire turns 20, eyes major digital future growth | MTN CI at 20: 16m subscribers, 4.9m MoMo users, 93% coverage (2025). |
| 2025-09-05 | dpi.govtech, dpi.registry, dpi.mis, geopol.usa, gov.policy | TechAfrica News | Côte d'Ivoire Partners with Cybastion to Drive E-Government Reforms Through Digital Solutions | ERP + GUCII business-registration systems begin at the Ministry of Commerce. |
| 2025-09-12 | infra.connect, digital.rural, include.divides, include.access | We Are Tech Africa | Côte d'Ivoire to extend broadband to 30 rural towns by end September | PNCR Phase II; ITU urban/rural internet split 52.7% vs 24.6%. |
| 2025-09-19 | capacity.training, capacity.literacy, include.divides, infra.store, tech.ai, geopol.usa, dpi.govtech | TechAfrica News | Cybastion Drives Côte d'Ivoire's Digital Transformation with Ambitious Tech Initiatives | DigiEmpower targets 200k trained in 5 yrs against a projected 5m digital jobs by 2030. |
| 2025-09-22 | finance.new, infra.store, dpi.govtech, geopol.usa, geopol.china | TechAfrica News | U.S. EXIM Approves $100 Million Guarantee for Côte d'Ivoire Digital Transformation | Consolidates 66m + 47m into a 100m-plus CTEP package with Cisco, HPE, Schneider. |
| 2025-09-23 | dpi.registry, dpi.govtech, data.open, gov.standards, infra.store | We Are Tech Africa | Côte d'Ivoire launches e-mining portal to improve transparency and investment | e-mining cadastre on Landfolio; full mining-title lifecycle, EITI alignment. |
| 2025-09-29 | dpi.exchange, dpi.govtech, dpi.registry, gov.policy, gov.standards, geopol.eu | TechAfrica News | Ivory Coast Launches Interoperability Platform to Modernize Public Administration | X-Road-derived UXP goes live with 12 pilot institutions; Zero Paper by 2030. |
| 2025-09-29 | dpi.exchange, dpi.govtech, geopol.eu, gov.standards, dpi.registry | We Are Tech Africa | La Côte d'Ivoire lance une plateforme d'interopérabilité pour fluidifier l'administration | FR-only: Cybernetica UXP live across 12 pilot bodies incl. ONECI, DGI, CNPS; zero-papier by 2030. |
| 2025-10-02 | dpi.exchange, dpi.govtech, gov.standards | Biometric Update | Cybernetica to provide interoperability layer for digital government in Côte d'Ivoire | SNDI contracts Estonian UXP data-exchange layer; 20-month build. |
| 2025-10-02 | dpi.govtech, gov.policy, dpi.registry | Tech Review Africa **[pr-wire]** | Ivory Coast unveils digital roadmap with 232 public services identified | OKTO/IT6 mapping under World Bank-cofinanced PADCI; 4 service categories, 5 priority sectors. |
| 2025-10-03 | infra.store, gov.policy | ITWeb Africa | Ivory Coast inaugurates sovereign data centre | ST Digital + OVHcloud Tier III facility opens at VITIB, Grand-Bassam. |
| 2025-10-20 | dpi.govtech, finance.new, geopol.usa, gov.policy, capacity.training | TechAfrica News | Cybastion Partners with Ivorian Ministry of Commerce to Drive Digital Efficiency and Growth | Scoping workshops with 70+ regional officials; confirms the 47m EXIM tranche is for Commerce. |
| 2025-11-12 | infra.connect, digital.rural, include.access | ITWeb Africa | Côte d'Ivoire's network sites get an upgrade | AMN/SES upgrade 200+ rural sites; 360 sites targeted by end-2025. |
| 2025-11-15 | gov.regional, infra.connect, gov.policy, tech.industry | We Are Tech Africa | Côte d'Ivoire Explores Tech Partnership with Algeria to Boost Digital Economy | Abidjan seeks Algerian postal/telecom expertise; no concrete projects yet. |
| 2025-11-25 | gov.policy, gov.legislate, finance.new, infra.connect, include.access | TechAfrica News | Côte d'Ivoire Approves FCFA 83 Billion Budget for Digital Transition in 2026 | National Assembly committee unanimously approves FCFA 83,275,503,595 for 2026. |
| 2025-11-27 | finance.mou, dpi.id, dpi.govtech, include.access, geopol.gulf | TechAfrica News **[pr-wire]** | Beyon Connect and La Poste de Côte d'Ivoire Sign MoU to Drive National Digital Transformation | Bahraini OneID/OneBox PoC via the postal operator - a third foreign digital-ID vector. |
| 2025-11-27 | gov.policy, digital.rural, include.divides, infra.connect, data.satellite, finance.new | TechAfrica News | Côte d'Ivoire Unveils Ambitious Digital Transformation Plan at Africa Investment Forum 2025 | Bahraini OneID/OneBox PoC via the postal operator - a third foreign digital-ID vector. |
| 2025-11-28 | dpi.id, dpi.govtech, finance.mou | ITWeb Africa | Côte d'Ivoire takes step to digitise postal services | La Poste MoU with Beyon Connect/Post Connect for a OneBox + OneID PoC. |
| 2025-12-03 | dpi.exchange, gov.regional, tech.industry, dpi.govtech | ITWeb Africa | Côte d'Ivoire unveils Tradepost to push e-commerce | Tradepost digital trade platform launched at ECOWAS e-commerce workshop. |
| 2025-12-17 | dpi.govtech, gov.policy, infra.cybersec, dpi.exchange, infra.connect, finance.new | We Are Tech Africa | Ivorian Economy Ministry Sets 2026–2030 Roadmap for IT Modernization | CFA10.156bn (18M), 44 projects; diagnostic names weak IT governance and non-interconnected platforms. |
| 2026-01-15 | dpi.pay, finance.new, include.access, tech.innovate | TechAfrica News | CDC-CI and GREEN-PAY Partner to Accelerate Digital Payment Innovation in Côte d'Ivoire | State fund CDC-CI takes equity in a fintech alongside Orange. |
| 2026-01-19 | dpi.id, dpi.registry, dpi.govtech, gov.protect, include.access | TechAfrica News | Côte d'Ivoire Launches MaPoste App to Digitize Postal and Administrative Services | RNPP/NNI-backed digital mailbox and CNI home delivery via 200+ post offices. |
| 2026-01-20 | dpi.id, dpi.govtech, dpi.registry, gov.protect | Biometric Update | Cote d'Ivoire digitizes postal services with mobile app launch | MaPoste app links to biometric RNPP; digital post boxes mandatory from 1 Mar. |
| 2026-01-22 | infra.connect, digital.rural, include.access | Connecting Africa | Orange Côte d'Ivoire, Eutelsat launch satellite broadband services | Same launch; adds Orange-Eutelsat deal history and MEA scale figures. |
| 2026-01-22 | infra.connect, digital.rural, include.access, include.divides | Telecom Review Africa | Orange Côte d'Ivoire Launches Satellite Broadband to Connect Rural Areas | Orange Sat via Eutelsat KONNECT; 50 Mbps + prepaid Wi-Fi village. |
| 2026-01-26 | gov.policy, dpi.govtech, infra.connect, infra.cybersec, gov.protect | We Are Tech Africa | Côte d'Ivoire Appoints Djibril Ouattara as Minister of Digital Transition | Ex-MTN CI CEO replaces Konate; portfolio renamed Digital Transition and Technological Innovation. |
| 2026-02-06 | digital.rural, include.divides, include.access, tech.ai, dpi.pay | TechCabal | Brastorne, the startup bringing rural Africans online, is expanding to Ivory Coast | Botswana agritech Brastorne enters CIV via Orange; AI advisory for feature phones. |
| 2026-03-17 | infra.connect, data.satellite, digital.rural, include.divides, geopol.usa, tech.innovate | TechAfrica News | Ivory Coast and US Strengthen Digital Cooperation with Focus on Starlink and Tech Hub Development | US Embassy talks flag Starlink entry; new minister Ouattara on rural gaps. |
| 2026-03-19 | finance.new, gov.policy, infra.cybersec, include.divides | Tech Review Africa **[pr-wire]** | Côte d'Ivoire allocates 83.2 billion CFA francs to drive digital transformation in 2026 | Hard budget figure: 83.2bn CFA, +37% YoY, five priority areas. |
| 2026-03-19 | gov.policy, finance.new, infra.connect, infra.cybersec, include.divides, tech.innovate | TechAfrica News | Côte d'Ivoire Unveils 83.275bn FCFA Digital Budget with 37% Increase for 2026 | Same budget as Nov 2025, now with the 37% YoY delta and five priority pillars. |
| 2026-03-19 | gov.policy, infra.connect, infra.cybersec, dpi.pay, include.divides, tech.innovate, finance.new | We Are Tech Africa | Côte d'Ivoire Targets Internet Expansion and Cybersecurity in 2026 Plan | Five 2026 priorities; budget CFA83.2bn (+37% on CFA68.6bn). |
| 2026-03-19 | tech.ai, dpi.govtech, include.access | We Are Tech Africa | Côte d'Ivoire Launches EMY 101 AI Chatbot for Public Services | Government AI assistant on WhatsApp/Messenger + toll-free 101 for civil status and tax info. |
| 2026-03-20 | tech.ai, dpi.govtech, include.access, data.open | TechAfrica News | Côte d'Ivoire Launches EMY 101 AI Chatbot to Transform Public Service Access | Government AI chatbot on WhatsApp/Messenger for admin guidance and citizen reporting. |
| 2026-03-27 | infra.connect, include.access, tech.industry | TechAfrica News **[pr-wire]** | Orange Côte d'Ivoire Unveils New Self-Service App "Ma Box" to Improve Home Connectivity | Orange fibre/4G Home self-service app launched at Orange Village. |
| 2026-03-31 | include.divides, gov.policy | Tech Review Africa **[pr-wire]** | Côte d'Ivoire strengthens digital inclusion agenda as ARTCI delegation meets Digital Transition Minister | Bessou elected Chair of ITU TDAG - an Ivorian in a global ITU seat. |
| 2026-04-10 | infra.connect, dpi.pay, tech.industry, finance.new, digital.rural | Tech Review Africa **[pr-wire]** | MTN Côte d'Ivoire outlines network improvements and digital service innovations | ~200bn CFA by 2028 commitment; MTN Satellite; MoMo Soutra overdraft. |
| 2026-04-15 | dpi.pay, include.access, gov.policy, data.statistics, data.open | TechAfrica News | Mobile App Coming Soon as Côte d'Ivoire Rolls Out Nationwide Financial Service Rating System | OQSF-CI logs 2,234 evaluations by 31 Mar 2026; 60% satisfactory / 40% not. |
| 2026-04-22 | dpi.govtech, dpi.registry, include.access, digital.localgov, gov.policy | TechAfrica News | Ivory Coast Expands E-Justice Platform to 28 Courts Nationwide | 16 courts added on 20 Apr 2026, taking connected jurisdictions to 28. |
| 2026-04-24 | dpi.govtech, dpi.pay, tech.innovate, gov.policy | TechAfrica News | Côte d'Ivoire Advances Digital Tourism Strategy as Cybastion Presents eTourism Platform Roadmap | Cybastion eTourism action plan under its Digital Fast Track sovereignty programme. |
| 2026-04-24 | infra.connect, data.satellite, digital.rural, include.divides, include.access, tech.industry | TechAfrica News **[pr-wire]** | MTN Côte d'Ivoire Partners Eutelsat to Boost Broadband Coverage with KONNECT Satellite Capacity | Cybastion eTourism action plan under its Digital Fast Track sovereignty programme. |
| 2026-04-24 | infra.connect, digital.rural, include.access | ITWeb Africa | MTN, Eutelsat partner for Ivorian broadband rollout | MTN hybrid GEO+LEO play framed as defensive vs Starlink. |
| 2026-04-30 | infra.connect, geopol.china, tech.industry, infra.capacity | TechAfrica News **[pr-wire]** | Telecom Giant Orange Côte d'Ivoire Highlights 10 Years of Network Partnership with Huawei | Huawei GNOC runs Orange network ops across 12+ subsidiaries, 100m+ customers. |
| 2026-04-30 | tech.ai, data.satellite, infra.connect, digital.rural, dpi.govtech | Tech Review Africa **[pr-wire]** | Côte d'Ivoire links AI ambitions to satellite-driven public service transformation | Explicit AI-to-satellite-connectivity dependency in ministerial framing. |
| 2026-05-02 | gov.policy, infra.cybersec, tech.ai, dpi.pay, capacity.training | Tech Review Africa **[pr-wire]** | Côte d'Ivoire's Digital Minister marks first 100 days in office | First full articulation of the seven priority areas; technological sovereignty. |
| 2026-05-09 | dpi.pay, finance.mou, infra.cybersec, tech.innovate | Tech Review Africa **[pr-wire]** | Côte d'Ivoire holds discussions with Visa on strengthening digital partnership | Visa engaged on postal financial services + startup financing. |
| 2026-05-10 | dpi.govtech, geopol.china, gov.policy | Tech Review Africa **[pr-wire]** | Côte d'Ivoire engages Huawei on digital transformation strategy for public administration | Huawei govt super-app model pitched; SNDI/PARAE/PADCI technical follow-up. |
| 2026-05-12 | gov.policy, gov.standards | Tech Review Africa **[pr-wire]** | Côte d'Ivoire pushes for stronger digital regulation as ARTCI Council presents roadmap | New ARTCI Regulatory Council under Roger Felix Adom sets mandate priorities. |
| 2026-05-15 | gov.policy, finance.new, infra.connect, include.divides | Tech Review Africa **[pr-wire]** | Côte d'Ivoire outlines digital growth strategy at Africa CEO Forum in Kigali | NDP 2026-2030 target: digital 6 to 15 percent of GDP by 2030. |
| 2026-05-21 | geopol.china, tech.ai, digital.rural, data.satellite, tech.industry, geopol.eu | We Are Tech Africa | Ivory Coast Eyes Huawei Partnership to Digitize Agriculture Sector | Preliminary nod to Huawei Smart Agriculture plot-mapping - cocoa traceability under EU deforestation rules. |
| 2026-05-22 | finance.mou, include.divides, tech.innovate, include.access | Tech Review Africa **[pr-wire]** | Orange Côte d'Ivoire and UNDP partner to promote digital transformation and inclusion | Operator-UN development partnership; youth/women focus. |
| 2026-05-25 | capacity.training, capacity.literacy, include.divides, digital.rural, finance.mou, tech.innovate | TechAfrica News | UNDP Partners with Orange Côte d'Ivoire to Expand Digital Skills and Entrepreneurship in Côte d'Ivoire | UNDP-Orange MoU (21 May 2026) on skills and entrepreneurship beyond Abidjan. |
| 2026-05-25 | capacity.training, include.divides, digital.rural, capacity.literacy, finance.mou, tech.innovate | We Are Tech Africa | Orange Côte d'Ivoire and UNDP Launch Digital Training Initiative for Youth | MoU on skills/entrepreneurship for young women and rural areas; digital ~6% of GDP now, 15% target. |
| 2026-05-26 | capacity.training, capacity.literacy, include.divides, tech.innovate, finance.mou | Telecom Review Africa | UNDP and Orange Côte d'Ivoire Boost Digital Skills and Youth Entrepreneurship | UNDP-Orange youth digital skills/entrepreneurship pact. |
| 2026-05-26 | include.divides, capacity.training, tech.innovate, finance.mou | Connecting Africa | Orange Côte d'Ivoire, UNDP partner toward digital inclusion | Same pact; adds Orange transformation-agenda context. |
| 2026-05-28 | capacity.training, gov.policy, tech.ai, infra.cybersec, dpi.govtech, gov.legislate | We Are Tech Africa | Côte d'Ivoire seeks experts in AI, cybersecurity and digital governance | Ministry recruits six senior roles incl. CIO and Director of Digital Transformation of Public Administration. |
| 2026-05-30 | dpi.exchange, gov.regional, geopol.eu, dpi.govtech | Tech Review Africa **[pr-wire]** | Côte d'Ivoire reaffirms commitment to accelerate digital cooperation at Europe–East Africa DPI session in Estonia | Estonia DPI model study; interoperability across WAEMU/ECOWAS/Smart Africa. |
| 2026-06-02 | capacity.training, capacity.research, tech.ai, gov.policy, infra.store, finance.new | We Are Tech Africa | Côte d'Ivoire Plans AI University to Address Digital Skills Shortage | Public AI university under PND 2026-2030; AI centres of excellence. |
| 2026-06-02 | gov.policy, tech.innovate, capacity.training | Tech Review Africa **[pr-wire]** | Côte d'Ivoire targets digital economy growth at African Digital Week 2026 | Roadmap quantified: seven pillars, 40 priority projects. |
| 2026-06-09 | tech.innovate, geopol.eu, dpi.govtech, tech.ai | Tech Review Africa **[pr-wire]** | Côte d'Ivoire mobilises startups ahead of VivaTech 2026, eyes stronger global innovation partnerships | 20 startups + 10 tech SMEs to VivaTech; GovTech ecosystem ambition. |
| 2026-06-14 | dpi.govtech, tech.industry, gov.policy | Tech Review Africa **[pr-wire]** | Côte d'Ivoire's Digital Transition Minister pledges support for SODECI's technological transformation | Digitalisation extending into the water-utility sector (SODECI). |
| 2026-06-15 | dpi.govtech, tech.innovate, gov.policy | TechAfrica News | Cybastion and Côte d'Ivoire Collaborate on 'Sublime Côte d'Ivoire' E-Tourism Platform | Starlink gets a 12-month provisional licence; 5G from July 2026. |
| 2026-06-15 | infra.connect, data.satellite, digital.rural, include.divides, include.access, gov.legislate, gov.policy, tech.ai, infra.cybersec, geopol.usa | TechAfrica News | Côte d'Ivoire Accelerates Digital Push with Starlink Licence and 5G Launch | Starlink gets a 12-month provisional licence; 5G from July 2026. |
| 2026-06-16 | infra.connect, gov.policy, include.access, digital.rural, tech.ai, infra.cybersec | Telecom Review Africa | Côte d'Ivoire Unveils Next Phase of Digital Growth with Starlink and 5G Expansion | Minister: Starlink July 2026 + 5G; 95% coverage vs 40% smartphone adoption. |
| 2026-06-17 | infra.connect, gov.policy, gov.legislate, digital.rural, tech.ai | Connecting Africa | Starlink to go live in Côte d'Ivoire in July | Same announcement; adds 7-pillar roadmap + pan-African Starlink licensing map. |
| 2026-06-18 | tech.innovate, geopol.eu, finance.new | Tech Review Africa **[pr-wire]** | Côte d'Ivoire showcases digital innovation at VivaTech 2026 in Paris | Execution of the VivaTech delegation plan in Paris. |
| 2026-06-25 | infra.connect, include.access, dpi.pay, include.divides | Tech Review Africa **[pr-wire]** | ANSUT highlights connectivity as foundation for digital and financial inclusion at APIDE 2026 | ANSUT: smartphone adoption 41 to 80 percent by 2030 target. |
| 2026-06-29 | capacity.training, tech.innovate, tech.industry, include.divides, finance.mou | We Are Tech Africa | Côte d'Ivoire Partners With Startups to Modernize Technical Education | PIETP pact with French Tech Abidjan (75 firms) puts startups into TVET curriculum design. |
| 2026-07-04 | capacity.literacy, infra.connect, capacity.training, dpi.govtech | Tech Review Africa **[pr-wire]** | Côte d'Ivoire Education Minister discusses education digitalization project with partners | ARTCI launches CERTINUM - data-protection authorisations go paperless. |
| 2026-07-04 | gov.protect, dpi.govtech, gov.standards | Tech Review Africa **[pr-wire]** | Côte d'Ivoire launches CERTINUM platform to digitize personal data compliance and regulation | ARTCI launches CERTINUM - data-protection authorisations go paperless. |
| 2026-07-04 | gov.regional, tech.ai, gov.protect, gov.standards | Tech Review Africa **[pr-wire]** | ARTCI participates in 2nd Francophone Forum on Digital Governance and Artificial Intelligence in Geneva | ARTCI launches CERTINUM - data-protection authorisations go paperless. |
| 2026-07-06 | dpi.id, dpi.exchange, gov.regional, gov.standards, data.statistics | Biometric Update | IOM digital migration platform helps Côte d'Ivoire modernize border management | IOM MIDAS at the Kalamon CIV-BFA crossing; Japan-funded, ANSSI/DST review. |
| 2026-07-06 | gov.regional, data.statistics, capacity.training, infra.energy | Tech Review Africa **[pr-wire]** | Côte d'Ivoire and ITU strengthen cooperation on digital development priorities | ITU cooperation: e-waste, emergency telecoms, ICT statistics workstreams. |
| 2026-07-07 | tech.ai, gov.regional, gov.standards, capacity.training | Tech Review Africa **[pr-wire]** | Côte d'Ivoire calls for African-led approach to artificial intelligence development at UN AI Governance Dialogue | An African AI, by Africans, for Africans; Regional African School of AI proposed. |
| 2026-07-08 | gov.policy, gov.regional, infra.connect, tech.innovate | Tech Review Africa **[pr-wire]** | Côte d'Ivoire presents digital transformation roadmap to ITU leadership | Roadmap pitched to ITU DSG; West Africa digital-hub ambition. |
| 2026-07-10 | gov.policy, gov.standards, gov.regional, data.statistics | Tech Review Africa **[pr-wire]** | Côte d'Ivoire urges for data-driven digital regulation at WSIS Forum 2026 | ARTCI anticipatory/evidence-based regulatory doctrine at WSIS 2026. |
| 2026-07-13 | gov.policy, infra.connect, finance.new, tech.ai, infra.cybersec, include.access | Tech Review Africa **[pr-wire]** | Côte d'Ivoire positions digital technology as key driver of economic transformation | Dense figures: 130% penetration, 95% coverage, ~15m users, 38,000km fibre. |
| 2026-07-15 | infra.cybersec, infra.connect, tech.industry, finance.new | TechAfrica News **[pr-wire]** | Omobio and Moov Africa Côte d'Ivoire Partner to Secure and Monetise International A2P Messaging | Exclusive SMS firewall/aggregation deal - operator control over inbound international A2P. |
| 2026-07-17 | infra.store, infra.connect, data.satellite, dpi.govtech, dpi.id, finance.new, geopol.usa, digital.rural, tech.industry | TechAfrica News **[pr-wire]** | US Expands Côte d'Ivoire Tech Footprint with Starlink Approval and $170m Data Centre Project | Starlink final approval + Cybastion EXIM project now 170m, scoped to add smart border surveillance. |
