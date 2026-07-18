# COD — sweep manifest (`COD-2026-07-17`)

**Window:** 2025-01-01 → 2026-07-17 · **Staged:** 90 · **Dropped:** 102 (`sweep/drop-log-COD.csv`)

> Merged from the two half-sweeps, which ran as separate agents writing disjoint
> files. Same-event twins across the halves are deliberately kept: same event from
> a different outlet is never a sweep-stage drop. Lint #7 adjudicates at ingest,
> with full text in hand.

---

## Part 1 — Newspapers

# COD — newspaper sweep manifest (Phase 2)

**Sweep batch:** `COD-2026-07-17` · **Window:** 2025-01-01 → 2026-07-17
**Outlets:** ACTUALITE.CD (`actualite.cd`, 54 items) · Magazine RD CONGO-MONDE (`rdc-monde.com`, 6 items)
**Staged:** 60 · **Dropped:** 74 (66 out-of-window, 8 off-topic) → `sweep/drop-log-COD-papers.csv`
**Queries:** 12 (N1–N7 × both domains, French, plus 2025 quarter-slices and gap passes)

All bodies are full clipped article text captured at fetch (ISSUE-008). No item is an AI summary.
Filenames carry an outlet suffix (`-actualite` / `-rdcmonde`) — the trade-journal agent writes to this same folder.

**Read the date caveats at the foot before promoting any `rdc-monde` item.**

Format: `published | topics | source | title | why it's new`

---

## Digital identity — the Trident / RDC-PASS track

- `2025-03-15 | dpi.id, gov.policy, infra.store, finance.mou, tech.innovate | ACTUALITE.CD | RDC : le ministre Kibassa lance les travaux de validation du projet PPP avec Trident sur l'identification digitale des congolais` — Dates the validation phase to 15 Mar 2025 and reveals a **prior Feb-2025 Singapore MoU** the wiki does not hold; names Tridentity as the product and Trident CEO William Lim.
- `2025-03-22 | dpi.id, gov.policy, dpi.govtech, tech.innovate | ACTUALITE.CD | Identification numérique en RDC : « le temps est venu de connecter chaque congolais à une identification numérique fiable, sécurisée et souveraine » (Augustin Kibassa)` — Closes the validation workshop (3 days), bounding the phase the wiki records only as "Mar 2025".
- `2025-06-26 | dpi.id, gov.policy, gov.standards, dpi.govtech | ACTUALITE.CD | RDC: le ministère des PTN dément le lancement officiel du système d'identité numérique "DRCPass"` — **Government formally denies DRCPass was launched**: the 19 June 2025 ceremony was PPP signature only; technical audit still under way, pilots restricted.

## Digital identity — the ONIP / physical-card track

- `2025-11-16 | dpi.id, dpi.registry, gov.policy, dpi.exchange, data.statistics | ACTUALITE.CD | RDC : après plusieurs tentatives ratées, le gouvernement veut une nouvelle fois relancer le processus de délivrance de la carte d'identité` — First dated ONIP relaunch timeline: Council of Ministers 14 Nov 2025, funds from early 2026, CENI data transfer, Kinshasa pilot.
- `2026-02-19 | dpi.id, dpi.registry, dpi.exchange, data.statistics, gov.policy | ACTUALITE.CD | Identification de la population en RDC: la CENI transmet officiellement le fichier électoral à l'ONIP` — The **CENI→ONIP electoral-file handover the wiki lacks entirely**; Kadima warns the 2022 file needs deduplication (deceased, moves, new adults).
- `2026-02-21 | dpi.id, dpi.registry, dpi.exchange, gov.policy | ACTUALITE.CD | RDC : "l'ONIP ne va pas se contenter de délivrer une carte d'identité mais de construire une nation moderne où chaque citoyen est identifié dès sa naissance à son dernier jour" (Richard Ilunga)` — Names ONIP's DG and his framing of ONIP as a life-course civil register, not a card scheme.
- `2026-02-22 | dpi.id, dpi.registry, gov.policy, dpi.exchange, gov.protect | ACTUALITE.CD | RDC : "l'identification des citoyens et la maîtrise de population constituent des éléments majeurs…" (Jacquemain Shabani)` — The clearest **securitised rationale** for the population file (migration control, counter-terrorism, "impératif régalien") + formal instruction to ONIP to process CENI data "sans délai".
- `2026-05-29 | dpi.id, dpi.registry, gov.policy, finance.new, dpi.govtech | ACTUALITE.CD | Identification nationale de la population en RDC: l'ONIP annonce le démarrage des opérations en s'appuyant sur un partenariat public privé` — ONIP confirms a **new, unnamed PPP partner** for the card track and that its 2026 budget fell short; Ebuteli frames identification as a possible "levier du glissement".
- `2026-06-12 | gov.legislate, dpi.id, dpi.registry, dpi.exchange, gov.protect, gov.standards | ACTUALITE.CD | Assemblée nationale : Venance Eyanga et Patrick Namazihana déposent une proposition de loi pour doter le pays d'un système national d'identification fiable` — The 2026 identification bill: single legal framework, **mandated interoperability across civil registry / migration / health databases**, personal-data rules.

## Data governance, law and policy

- `2026-03-28 | gov.legislate, data.open, gov.policy | ACTUALITE.CD | Assemblée nationale : la proposition de loi sur l'accès à l'information et la transparence de la vie publique déclarée recevable` — DRC's access-to-information bill, declared recevable 27 Mar 2026 (sponsor Jacques Djoli); wiki holds nothing on it.
- `2026-03-20 | gov.policy, gov.standards, gov.legislate, infra.cybersec | ACTUALITE.CD | RDC : vers l'institutionnalisation d'un régime de classification et de protection des documents officiels de l'État` — Four-tier state document classification (Justice Minister Ngefa, 82nd Council of Ministers) — and it **invokes the Digital Code as a repression instrument**, a use the wiki has not recorded.
- `2026-04-21 | gov.protect, gov.legislate, capacity.research | ACTUALITE.CD | RDC : un nouvel ouvrage sur la protection des données personnelles porté sur les fonts baptismaux` — Henrotte dates the shift: the 2020 telecom law was "embryonnaire", Livre III of the Digital Code now governs data protection "de façon très extensive". Closest live status check on the enforcement gap (Apr 2026).
- `[pr-wire] 2026-05-28 | gov.policy, dpi.exchange, infra.store, infra.cybersec, dpi.pay, dpi.govtech | ACTUALITE.CD | Souveraineté numérique · gouvernance économique · horizon 2035: La RDC amorce la reprise structurée de ses flux économiques` — Kibassa's sovereignty doctrine first-hand: DGI/DGDA/DGRAD/BCC interoperability, sovereign cloud, 30M active mobile-money users, **$100bn annual digital flows (unsourced)**, 2035 hub target.
- `2025-05-30 | dpi.mis, dpi.govtech, gov.policy, data.statistics | ACTUALITE.CD | RDC : le gouvernement lance les travaux de vulgarisation du PNSD 2024-2028` — Introduces **SISAG**, a government-wide programme-tracking MIS absent from the wiki; planning-side counterpart to PNN2.
- `2026-07-11 | data.statistics, gov.policy, capacity.training | ACTUALITE.CD | Journée mondiale de la population: le RGPH-2 au cœur de la stratégie du gouvernement` — Hard dates on the census the wiki lacks: enumeration July 2027, cartography recruitment from 1 Jun 2026, **first census since 1984**.

## E-government and sectoral digitalisation

- `2025-07-13 | capacity.training, dpi.govtech, tech.ai, gov.policy, include.divides | ACTUALITE.CD | RDC : intégration des TIC dans les services publics au centre d'un atelier de l'Unesco à Kinshasa` — UNESCO capacity-building on digital governance and AI.
- `2025-07-27 | dpi.registry, dpi.mis, gov.legislate, gov.policy, include.access | ACTUALITE.CD | RDC : adoption du projet de décret portant création, organisation et fonctionnement du registre social unique (RSU)` — **A second population register** alongside ONIP (decree 25 Jul 2025), targeting poor/vulnerable households.
- `2026-04-03 | dpi.mis, finance.mou, infra.connect, include.divides, digital.rural, capacity.literacy, dpi.exchange | ACTUALITE.CD | RDC : un mémorandum signé pour renforcer la digitalisation du système éducatif` — MINEDU-NC/FDSU MoU to connect schools and build an interoperable education data ecosystem.
- `2026-06-15 | gov.policy, gov.standards, capacity.literacy, capacity.training, dpi.mis, dpi.exchange, capacity.research | ACTUALITE.CD | RDC : le gouvernement se dote d'une politique nationale des TIC pour l'éducation et la formation` — TICEF policy (12 Jun 2026): 19 principles, explicitly to make the sector's scattered digital initiatives interoperable.
- `2026-06-26 | dpi.govtech, capacity.training, gov.policy, infra.cybersec | ACTUALITE.CD | RDC : le ministère de l'Économie nationale mise sur le numérique pour renforcer la transparence du contrôle` — E-Contrôle platform: document authentication against forgery for economic inspections.

## Connectivity — shutdowns and conflict-caused outages

- `2025-02-03 | infra.connect, include.access, gov.policy | ACTUALITE.CD | RDC : accès restreint à certains réseaux sociaux depuis deux jours` — **First shutdown item in the wiki**: X and TikTok restricted nationally; CSAC disclaims knowledge, PTNTIC sources call it a "technical fault", users route around via VPN.
- `2025-03-28 | infra.connect, include.access, infra.energy | ACTUALITE.CD | Walikale-centre : tous les réseaux de téléphonie cessent de fonctionner` — Outage *mechanism*, not battle: generator fuel could not reach tower sites under AFC/M23 control; Airtel had abandoned Walikale ~2023.
- `2026-02-18 | infra.connect, include.access, dpi.pay | ACTUALITE.CD | Les territoires de Rutshuru et Masisi de nouveau connectés aux réseaux Airtel et Orange après près d'un mois de coupure` — Month-long total blackout (19 Jan – 17 Feb 2026); residents forced onto neighbouring countries' networks; mobile money paralysed.
- `2026-02-26 | infra.connect, include.access, dpi.pay | ACTUALITE.CD | Guerre de l'AFC/M23 : les réseaux de télécommunication rétablis à Rubaya après 24 heures de coupure` — Shelling damaged all three operators' masts at the Rubaya coltan hub; mobile money the first-order casualty.

## Connectivity — Starlink, satellite and universal access

- `2025-05-02 | infra.connect, gov.policy, geopol.usa | ACTUALITE.CD | RDC : Starlink obtient une licence officielle pour opérer comme fournisseur d'accès à internet` — **The actual DRC licence award** (ARPTC → Starlink DRC S.A.), and it records the reversal of the regulator's March-2024 position that Starlink held no title and its terminals were illegal.
- `2025-05-05 | infra.connect, gov.policy, geopol.usa | ACTUALITE.CD | ACAJ salue l'homologation de la firme américaine Starlink "pour mettre fin aux abus de monopole des opérateurs actuels"` — Civil-society framing of the licence as an **antitrust corrective** against incumbents.
- `2025-08-31 | infra.connect, finance.mou, include.divides, digital.rural | ACTUALITE.CD | La RDC se lance dans un projet d'acquisition d'un satellite, coût estimé à 400 millions de dollars` — **Entirely new**: a sovereign satellite programme under a Nov-2024 DRC–Monaco MoU with Monacosat; $400m said already mobilised.
- `2026-04-03 | infra.connect, include.access, digital.rural | ACTUALITE.CD | Maniema : Somaf Group ouvre un bureau à Kindu et mise sur Starlink pour résorber le déficit de connectivité` — Downstream retail channel for Starlink kits into an under-served province.
- `2026-06-04 | infra.connect, include.access, data.statistics | ACTUALITE.CD | Ebola: Starlink livre 150 kits de connexion satellite pour appuyer la riposte en Ituri` — Africa CDC–Starlink deployment; connectivity as **health-data infrastructure** (lab results, contact tracing).
- `2025-02-19 | infra.connect, include.divides, digital.rural, capacity.literacy | ACTUALITE.CD | A Kinshasa, des jeunes et membres de Internet Society outillés sur le bien-fondé du fonds de développement du service universel` — Establishes the **FDSU**'s legal base (loi n° 20/17, 5 Nov 2020) and funding model — and records that as of Feb 2025 the fund "n'est toujours pas disponible".
- `[pr-wire] 2026-06-02 | infra.connect, digital.rural, include.divides, capacity.training | ACTUALITE.CD | Kongo Central : le FDSU lance ses premiers sites pilotes de connectivité et pose les bases de l'inclusion numérique à Nkamba` — The fund finally operational (30 May 2026): first state-financed rural telecom build. Closes the arc opened above.

## Connectivity — spectrum, regulation, investment

- `[CLIP] [pr-wire] 2025-03-18 | infra.connect, gov.policy, gov.standards | ACTUALITE.CD | L'ARPTC lance une consultation publique sur l'introduction de la 5G en RDC (Communiqué)` — **First evidence of any DRC 5G consultation.** Body is published as an embedded image; only the headline/dateline are recoverable. `body_completeness: headline-only` — ARPTC text needs manual recovery before promotion.
- `2025-06-22 | include.divides, infra.connect, gov.policy, digital.rural | ACTUALITE.CD | RDC : le gouvernement appelé à redoubler d'efforts pour réduire la fracture numérique` — Tshisekedi Council-of-Ministers directive with ARPTC figures: **30.79% mobile internet access, <0.02% fixed (2023)**, ~50m km fibre shortfall; names Monaco-Sat and Starlink as PNN instruments.
- `2025-10-27 | gov.policy, infra.connect, finance.new, include.divides | ACTUALITE.CD | RDC : vers l'organisation des états généraux des secteurs des postes et des télécommunications` — Sector reset (64th Council of Ministers, 24 Oct 2025). Telecoms named the state's **second-largest revenue source**; SCPT asset spoliation named as a problem to fix.
- `2026-03-31 | finance.new, infra.connect, gov.policy | ACTUALITE.CD | RDC : Signature d'un investissement de plus de 100 millions USD entre l'Anapi et Helios Towers` — Helios Towers' DRC investment convention (a wiki gap). Also surfaces "DRC Digital 2030" and a "Plan national du numérique et de l'inclusion 2025".
- `[pr-wire] 2026-05-08 | infra.connect, gov.standards, gov.regional, infra.energy | ACTUALITE.CD | Helios Towers engage la réflexion sur le partage d'infrastructures … séminaire FRATEL RDC 2026` — Infrastructure-sharing regulation with ARPTC/francophone regulators; ~3,000 towers covering 32m people (May 2026).
- `[pr-wire] 2026-06-25 | infra.connect, tech.industry, infra.energy, finance.new | ACTUALITE.CD | Helios Towers : catalyser la croissance du secteur minier grâce à la connectivité en RDC` — ~3,000 sites, >50 in mining zones, covering >39m people (Jun 2026); >$0.7bn invested since 2011. **Note the 32m→39m jump in seven weeks on a static tower count — see caveats.**
- `[pr-wire] 2025-10-31 | infra.store, tech.industry | ACTUALITE.CD | Infrastructures : La RDC franchit un cap décisif dans sa transformation numérique grâce à MBTP SA` — Advertorial, but carries hard **Raxio Kinshasa specs**: $30m, Uptime Tier III, 400 racks, 1,542 m², 1.5 MW, delivered June 2025.

## Payments and digital finance

- `2026-05-04 | dpi.pay, include.access, gov.policy, data.statistics, finance.new | ACTUALITE.CD | Inclusion financière en RDC: 58 % d'accès contre 25 à 30 % de bancarisation, la BCC parie sur la digitalisation et la jeunesse` — **Freshest BCC figures on record** (Wameso, 28 Apr 2026) + a hard de-dollarisation deadline: from **9 Apr 2027 no foreign-cash transactions at all, any amount — scriptural only**. Policy rate 15% → 13.5%.
- `2026-04-16 | dpi.pay, dpi.exchange, dpi.id, include.access, digital.rural, finance.mou, gov.standards | ACTUALITE.CD | RDC: le Projet Transforme appuie la digitalisation des IMF et Coopec` — World Bank/Paycode deal: corebanking + 10,000 biometric POS + EMV "Mosolo" cards + **connection of MFIs to the BCC national switch** across 145 territories. Reads as operational, vs the wiki's "planned Q1 2026".
- `[pr-wire] 2026-04-30 | dpi.pay, dpi.id, include.access, tech.innovate, finance.new | ACTUALITE.CD | RDC: Lancement de "MainMoney", une technologie monétaire pour éviter à la population le poids du cash` — Palm-vein biometric payment terminal, Visa-backed; CEO still cites 29m mobile-money accounts in Apr 2026.
- `[pr-wire] 2026-01-29 | dpi.pay, dpi.exchange, include.access, finance.new | ACTUALITE.CD | RDC : FirstBank lance FirstMonie, un portefeuille électronique interopérable pour accélérer l'inclusion financière` — Claims to be the only DRC wallet sending to all other mobile-money services instantly — a direct data point on the interoperability gap.
- `[pr-wire] 2025-10-31 | dpi.pay, finance.new, include.access, digital.rural | ACTUALITE.CD | FirstBank DRC consolide son positionnement avec une nouvelle expérience digitale` — First USSD **dollar** account, First Bot, prepaid Visa card — USD-denominated rails just as the BCC pushes de-dollarisation.
- `2025-11-11 | dpi.pay, dpi.exchange, include.access, finance.new | ACTUALITE.CD | Kinshasa : Ecobank lance "Auto-Allocation", un service automatisé de recharge de monnaie électronique` — Ecobank+Airtel automate e-money creation for super-agents; wiki holds nothing on DRC agent-liquidity infrastructure.
- `2026-01-21 | dpi.pay, dpi.exchange, include.access, finance.mou | ACTUALITE.CD | Kinshasa : Ecobank s'associe à Orange Money autour d'Auto-Allocation` — Second MNO onto the same rail 10 weeks later: a **bank-operated interoperability layer** forming beneath the Visa/Onafriq story.

## AI, cybersecurity, skills and innovation

- `2025-11-27 | dpi.govtech, tech.ai, capacity.training, capacity.literacy, include.access | ACTUALITE.CD | ADIS 2025: Raïssa Malu présente l'évolution de la transformation numérique du système éducatif congolais` — **AI used to mark the 2024-25 Examen d'État**; e-Diplôme live; EAD consecrated by arrêté; Malu argues for endogenous platforms over foreign ones.
- `2026-02-04 | dpi.govtech, tech.ai, finance.new, tech.innovate | ACTUALITE.CD | Entrepreneuriat en RDC : « Bokeli », la plateforme digitale intelligente du FOGEC` — A **live AI-assisted state platform** (3 Feb 2026) generating bankable business plans; built by Congolese firm Quantum Vertex.
- `2025-11-05 | capacity.training, capacity.literacy, include.divides, tech.ai | ACTUALITE.CD | Formation numérique en RDC : Femintech octroie 41 brevets aux nouveaux formés en informatique et intelligence artificielle` — Ground-truth on the 250,000-youth goal's real scale: Femintech has trained ~1,000 girls total; this cohort was 41.
- `2025-07-18 | tech.ai, capacity.literacy, gov.legislate | ACTUALITE.CD | RDC: un cadre juridique recommandé pour protéger les jeunes face aux dérives numériques` — Practitioners calling for African-adapted AI regulation ahead of the National AI Strategy.
- `2025-06-26 | tech.innovate, gov.policy, gov.regional, finance.new | ACTUALITE.CD | Africa Tech Invest 2025 : la RDC s'apprête à jouer le rôle de leader régional dans la gouvernance numérique africaine` — Explicit ministerial claim to **regional digital-governance leadership**.
- `2025-10-24 | tech.innovate, tech.industry, dpi.pay | ACTUALITE.CD | RDC : Lancement de la 4ème édition de l'Africa Digital Innovation Summit` — Establishes the ADIS circuit: rebranded from Africa Digital Expo (previously with Morocco's One Africa) to a wholly Congolese-run event under ANDIS.
- `2025-05-21 | gov.policy, include.access, digital.rural, capacity.training, tech.innovate | ACTUALITE.CD | En RDC, la jeunesse veut être considérée à sa juste valeur dans la mise en œuvre des politiques publiques` — Kibassa ties Starlink to the rural-access policy line; **30% internet access (May 2025)**; ARPTC DG Christian Katende named. `body_completeness: partial` (extraction cut mid-word).
- `[pr-wire] 2025-05-20 | tech.innovate, gov.regional, tech.industry | ACTUALITE.CD | La RDC présente ses solutions numériques à la 9ᵉ édition du Salon OSIANE` — ARPTC communiqué: three-year ARPTC–OSIANE partnership (Apr 2025); cites **"Plan National du Numérique Horizon 2025"**, the PNN2 predecessor. Contains a leaked AI-drafting artefact — see caveats.
- `2026-05-27 | infra.cybersec, infra.capacity, geopol.china | ACTUALITE.CD | La RDC signe un accord de coopération policière avec la Chine pour renforcer les capacités opérationnelles de la PNC` — First DRC–China law-enforcement accord (Beijing, 26 May 2026) **naming cybercrime as an explicit PNC capacity-building target**, with a standing joint working group.

## State-function digitalisation — Magazine RD CONGO-MONDE

*All six rdc-monde items are `date_source: proxy`. See caveats.*

- `[proxy/day] 2026-07-16 | dpi.govtech, dpi.mis, gov.policy, gov.standards, data.open | Magazine RD CONGO-MONDE | RDC – Finis les circuits lents : l'IGF passe en mode numérique pour traquer la fraude` — IGF 2026-2028 strategic plan makes digitalisation the backbone of state-portfolio control; wiki holds nothing on the IGF (which found the IDEMIA overbilling).
- `[proxy/month] 2026-07-01 | dpi.govtech, dpi.registry, dpi.mis, data.statistics, capacity.training, geopol.eu | Magazine RD CONGO-MONDE | ONEM : lancement d'une application numérique "MIKUBA"` — **Belgian-funded (Enabel) national skills/labour-market database** — a new state registry and an EU-cooperation footprint the wiki doesn't hold.
- `[proxy/day] 2026-06-11 | dpi.pay, dpi.govtech, digital.localgov, gov.policy | Magazine RD CONGO-MONDE | Aéroport de N'djili : le paiement électronique du Go Pass annoncé dès juillet` — Provincial tax digitalisation via **TRAFIGO SARL**, a private partner holding a Kinshasa revenue rail.
- `[proxy/month] 2026-04-01 | dpi.pay, dpi.id, include.access, digital.rural, data.statistics | Magazine RD CONGO-MONDE | Est de la RDC : invention d'un système de paiement par carte biométrique pour maintenir l'aide` — WFP "Chakula sokoni" biometric cards (~30,000 people, Masisi) built to **route around Kinshasa's closure of banks in AFC/M23 zones**; WFP delivered <$39m of $75m planned 2025 cash transfers.
- `[pr-wire] [proxy/month] 2026-06-01 | infra.connect, gov.policy | Magazine RD CONGO-MONDE | SCPT : Ce que l'on ne dit pas sur les efforts de redressement en cours` — First SCPT turnaround claim — and it undercuts itself: management concedes finances would only support salaries **every four months**, "improved" to 2–2.5. Undated management communiqué; thin standing, but the state operator conceding near-insolvency in its own words.
- `[proxy/month] 2026-01-01 | dpi.govtech, digital.localgov, gov.protect, tech.innovate | Magazine RD CONGO-MONDE | Kinshasa investit dans les drones : entre l'espoir et le doute` — Drone surveillance + KIN ALERTE citizen-reporting app via **Call for Trading DRC Sarl**; the outlet itself raises privacy/operator-integrity concerns.

---

## Caveats for review

### Dates
- **All 54 actualite.cd items are `date_source: source`, `date_precision: day`.** The site prints absolute datelines ("Vendredi 2 mai 2025 - 20:44") which matched the URL `/YYYY/MM/DD/` segment in **every single case** — a clean double-anchor. Exa's metadata agreed too, but was not relied on.
- **rdc-monde.com renders a live-clock date trap — confirmed, and worse than the Burundi counter.** Every page shows a `<weekday>, <month> <day>, <year>` header plus a Kinshasa temperature. Fetching six pages in two calls returned **four different header dates**; the biometric-card page showed a "June 14" header while Exa claimed April 27. These are crawl-time snapshots, not publication dates. **No rdc-monde article carries an in-body publication date**, so all six are `date_source: proxy`, each with an HTML comment recording exactly how its date was reached:
  - `2026-07-16` IGF and `2026-06-11` Go Pass keep **day** precision — both have independent in-body weekday anchors ("mercredi 15 juillet dernier"; "officialisée mercredi" + "dès juillet") that corroborate the date without Exa.
  - `2026-07-01` ONEM, `2026-06-01` SCPT, `2026-04-01` biometric card, `2026-01-01` drones are **month** precision and rest on Exa's date alone. Treat the month itself as uncertain; the drones item is the least corroborated.
- Sidebars on both sites are live-rendered (2026 dates appear on 2025 articles). All agents stripped site chrome and used the article dateline only.

### Body completeness
- `[CLIP] 2025-03-18` **ARPTC 5G consultation** — `body_completeness: headline-only`. The communiqué is published as an embedded **image**; the page fetches 200 but carries no body text in HTML. Fetched twice, identical. Staged because the headline alone is the payload (ARPTC opened a 5G consultation on that date) and it is not a fetch failure. **Nothing was summarised or reconstructed.** Needs a manual clip of the ARPTC image before promotion.
- `2025-05-21` **Forum jeunesse** — `body_completeness: partial`; Exa's extraction cut mid-word after the ARPTC quote. Not paywalled; dateline and substance intact.
- **No paywalls encountered on either outlet.** No fetch failures.

### PR-wire (11 items flagged `provenance_flag: pr-wire`)
Four Helios Towers/MBTP/FDSU items, four bank/fintech announcements (FirstBank ×2, MainMoney, and the SCPT communiqué), the ARPTC 5G and OSIANE communiqués, and the Kibassa sovereignty piece. Facts usable; framing is not. Two worth singling out:
- **MainMoney** carries an explicit sponsorship disclosure ("Cet événement a été soutenu par Visa et Silikin Village").
- **OSIANE (ARPTC communiqué)** ends, *in the published article*: "Souhaitez-vous aussi une version plus concise ou adaptée à un format spécifique (article web, brochure, discours, etc.) ?" — a chatbot's closing question left in the wire copy, reproduced verbatim per the no-summary rule. It stays admissible (first-hand for what ARPTC says), but it is direct evidence that **ARPTC comms output is partly AI-drafted** — relevant to how much weight ARPTC wire copy carries elsewhere.

### Figures to treat as claims, not facts
- **Helios Towers coverage moves 32m → 39m in seven weeks** on a static ~3,000 tower count (both self-reported). Not a real-world change — two differently-constructed company claims. Write both dated if used.
- **$100bn annual digital flows** (Kibassa, May 2026) is unsourced and strikingly large — same family as the unverified $8.7bn/$10.4bn PNN2 totals already held (REV-COD-001).
- **29m mobile-money accounts** is cited again in Apr 2026 (MainMoney CEO) — identical to the held Q4-2024 figure. Either recycled or genuine stagnation.
- Internet access: **30.79% mobile / <0.02% fixed (2023, ARPTC)** and **30% (May 2025, Kibassa)** — the two staged figures. A dropped advertorial claimed "nearly 40% in 2024"; it was inadmissible and its figure should not enter the wiki.

### Name / institution corrections to fold in at ingest
- **Ministry renamed mid-window:** Kibassa Maliba is "Ministre des PTNTIC" in May 2025 items and "Ministre de l'Économie Numérique" by Nov 2025 / May 2026. The entity page needs this transition dated.
- The ADIS 2025 article calls him **"Frédéric** Kibassa Maliba"; the May 2026 piece says **Augustin**. Tagged `augustin-kibassa-maliba` in both; likely an outlet error, not a second person.
- One photo caption identifies José Mpanda Kabangu as "ministre de la Recherche Scientifique" while the body and two other items have him at PTNTIC — probably a stale caption; verify before any entity fix.

### Same-event cluster for the post-ingest duplicate lint (#7)
The three 19–22 Feb 2026 items (`2026-02-19`, `2026-02-21`, `2026-02-22`) all cover the **same CENI→ONIP handover ceremony** and share a large boilerplate tail. They are **not** relevant-duplicates — each carries a distinct principal's quote (Kadima / Ilunga / Shabani) the others lack. Flagged so the lint doesn't mistake the shared tail for redundancy.

---

## Part 2 — Trade journals

# COD — trade-journal sweep manifest

**Batch:** `COD-2026-07-17` · **Window:** 2025-01-01 → 2026-07-17 · **Retrieved:** 2026-07-17
**Scope:** the 8 fixed trade journals, recipes J1–J2 (× EN "DR Congo"/"DRC" and FR "RDC"/"République démocratique du Congo" phrasings).
**Sibling:** the newspaper half writes to this same folder with an `-actualite` suffix; journal items here are suffixed with the **outlet name**.

**Counts:** 30 staged · 28 dropped (7 already-held · 2 same-outlet-recrawl · 5 off-topic · 14 out-of-window) · drops logged in `sweep/drop-log-COD-journals.csv`.

**Per-domain yield:** biometricupdate 7 · techafricanews 9 · wearetech 4 · connectingafrica 2 · itweb 2 · techcabal 2 · techreviewafrica 2 · telecomreviewafrica 1.

---

## Staged items

| published | topics | source | title | why it's new |
|---|---|---|---|---|
| 2026-07-14 | dpi.pay, finance.mou, include.access, geopol.usa | TechAfrica News | Mastercard and Flash Partner to Expand Digital Financial Inclusion in DRC | **New deal + new entity.** Flash (3m customers, 4,000 agents, 160 agencies across DRC+Congo-B) issues Mastercard prepaid cards. Wiki holds no Flash or Mastercard-DRC material; card↔wallet rails beyond the Visa/Onafriq story. |
| 2026-07-06 | dpi.pay, finance.new, geopol.usa | TechAfrica News | Visa, M-PESA Africa and Onafriq Launch Stablecoin Pilot in DR Congo | **Evidence for REV-006, not against it.** Runs the exact "joint pilot launch" framing REV-006 called trade-press gloss, sourcing it to nobody. Documents *how* the story spread. Flagged in-file; must not out-rank the Visa-exec primary. |
| 2026-07-03 | infra.connect, finance.new, finance.mou, geopol.china | Connecting Africa | DRC plans $1.5B fiber-optic project along Congo River | **Major new development, absent from the wiki.** MoU with China's Genew Technologies: 2,100km (1,700km riverine Muanda–Kisangani + ~400km terrestrial), $1.5bn total, $400m phase 1. First significant Chinese digital-infrastructure entry in the COD file. |
| 2026-05-19 | infra.connect, infra.store, dpi.exchange | ITWeb Africa | Distributed exchange boosts DRC connectivity | ACIX (DE-CIX × Internet pour Tous × United SA) becomes DRC's **first distributed IX**, adding OADC Texaf FIH1. Wiki holds an ACIX data-centre line but not the IX/data-localisation angle. |
| 2026-05-13 | infra.connect, infra.energy, include.divides, gov.policy | Connecting Africa | DRC connectivity improves but usage, power supply gaps linger | **Richest fresh dataset in the batch** (GSMA/DataReportal): 3G 68% / 4G 57% coverage; ~65m mobile subs; smartphones ~40% of connections (2025); internet penetration 30.5% / ~35m users; entry smartphone median $305; Helios $110m; EAIF $30m→Eastcastle; EIB €135m. **⚠ Re-asserts the disputed "$8.7bn" plan figure — see REV-COD-001.** |
| 2026-05-11 | dpi.pay, dpi.id, include.access | Biometric Update | MainMoney palm biometrics platform to support DRC's financial inclusion drive | **New entity + new policy anchor.** Palm-biometric payments (AI.Tech/Keyo) integrated into national payments infrastructure; names the **2023–2028 National Financial Inclusion Strategy** and its ~70%-by-2028 target — neither held. |
| 2026-05-06 | dpi.govtech, dpi.id, dpi.exchange, gov.policy | Biometric Update | DRC seeks consultant for ambitious digital transformation, DPI project | **Re-dates RDC-PASS and names a new strategy.** "Targeted a March rollout, but no launch or delay has been announced" — i.e. the March target slipped. Names the **National e-Government Strategy 2025–2030** (not held) and itemises the DPI stack. Confirms $400m WB + €100m AFD split. |
| 2026-04-22 | infra.cybersec, geopol.usa, finance.mou | Biometric Update | Cybastion to support digital infrastructure development in DRC | **New US entity/deal.** Cybastion MoU signed in Washington. Adds to the DRC–Washington courtship thread beside PayServices and Pax Silica. |
| 2026-04-17 | infra.cybersec, finance.mou, geopol.usa, tech.ai | TechAfrica News | Cybastion Partners with DRC to Expand Digital Infrastructure and Cybersecurity | Different-outlet twin of the above; **dates and locates the signing** — Washington DC, sidelines of the IMF–World Bank Spring Meetings. |
| 2026-04-16 | dpi.pay, finance.mou, geopol.usa | TechAfrica News | New Visa and BCC Agreement Targets Financial Inclusion and Payment Modernization in Congo | **New MoU: Visa × Banque Centrale du Congo**, signed Kinshasa (Wameso André / Aminata Kane), tied to the **BCC 2026–2030 Strategic Plan** (not held). Material context for the stablecoin/de-dollarisation tension. *(COD not COG — see file note.)* |
| 2026-04-07 | gov.legislate, gov.policy | Tech Review Africa | DRC improves digital economy framework with new regulatory measures | Reports new fintech/cloud/platform regulatory frameworks. **⚠ Thin PR-wire: names no instrument, date or regulator.** Recommend treating as a lead until the underlying decree/arrêté is found. Date recovered from page body. |
| 2026-04-03 | dpi.pay, include.access | Tech Review Africa | Vodacom Congo calls for integrated financial ecosystem to enhance inclusion in DRC | Vodacom Congo CEO with hard figures: ~$120m microloans @94.5% repayment; ~$88m wallet-to-bank; ~35m mobile-money users; ~10m active VodaCash. **Flags the mobile-money count divergence** (24m/29m/30m/35m across sources). Date recovered from page body. |
| 2026-04-02 | dpi.mis, dpi.govtech, data.open, capacity.research | We Are Tech Africa | RDC : le nouveau portail numérique universitaire (ESURSI) | **Whole new sector, unheld.** ESURSI higher-education portal + first national digital library live 30 Mar 2026 (WB/AFD-backed); student ID, transcripts, equivalences; DRC joins UNESCO/UNICEF **"Gateways"**. Dates internet users at 34.7m / 30.5% (end-2025). |
| 2026-03-17 | gov.protect, gov.legislate, infra.cybersec | TechAfrica News | DRC Launches Data Protection Officers Network to Strengthen Digital Governance | **Moves the wiki's standing DP-authority gap.** First concrete step under Digital Code Art. 262 since the 2024 "still on paper" finding; names a **National Data Governance Strategy** (not held) and a DPA still only "planned". |
| 2026-03-16 | gov.protect, gov.legislate, capacity.training | We Are Tech Africa | Numérique : la RDC met en place un réseau de responsables de la protection des données | Different-outlet twin of the above; **dates the launch precisely (Thu 12 Mar 2026, Kinshasa)** and states the DPO network **precedes** creation of the national DPA. FR-phrasing-only find. |
| 2026-02-20 | gov.policy, finance.new, infra.cybersec, tech.ai | TechAfrica News | DRC Launches $500 Million Digital Transformation with World Bank and AFD Support | EN different-outlet twin of the held We Are Tech FR report. Adds **state-data migration, a government cybersecurity centre, and an "AI Sphere"** for students. |
| 2026-02-09 | infra.connect, gov.regional | ITWeb Africa | Paratus lights up new East Africa fibre highway linking Goma to Mombasa | **Eastern-DRC connectivity, unheld.** 2,000km protected G2M route Goma→Kigali→Kampala→Nairobi→Mombasa, live. Ties COD to the East African corridor. *PR-wire (issued by Paratus).* |
| 2025-12-17 | dpi.pay, finance.new | TechCabal | A decade of payments evolution: How MultiPay strengthened DRC's digital economy | **Historical baseline.** Dates the DRC's first local interbank payment service (MultiPay, 2015; BCDC/Equity/FirstBank/Rawbank) + Interswitch backend; BCC mobile-banking rules 2012. *Sponsored "Partner" content — flagged; not independent assessment.* |
| 2025-11-21 | dpi.pay, finance.new, include.divides | TechCabal | Nomba bets on cash-heavy DRC, starts with remittance to crack the market | **Best independent market-structure reporting in the batch.** >80% never held a bank account; 18 banks / $15bn deposits; >90% USD-denominated; Rawbank $4.7bn deposits, $514m revenue (2024); >24m MMO wallets; MMO revenue $174.2m (2024); China/Dubai corridors. Contradicts the "techcabal = Nigeria-only" prior. |
| 2025-08-29 | dpi.id, gov.protect, capacity.training | Biometric Update | DRC digital ID phased deployment underway following contract do-over | **Re-dates/refines the Idemia cancellation the wiki asserts.** Cancelled contract was **$697m** (held by **Afritech**, Idemia as supplier) that **ballooned to $1.2bn** — the wiki records a flat "$1.2bn Idemia/Afritech contract". Adds Afritech's $593m contribution question, the WB's no-competitive-tender refusal, the USF, and NTU-SBF's transparency warning. |
| 2025-07-21 | dpi.registry, dpi.mis, dpi.id | Biometric Update | DR Congo fights public service waste with biometric ID registry | **Puts numbers on ENCORE**, which the wiki holds without figures: WB-approved 2021, **$250m**, runs to **31 Dec 2026**; **118,000+** biometric cards across all **26 provinces**; ~40% of public spending is payroll. Dates the launch to **January** (PM Suminwa). |
| 2025-06-02 | dpi.id, dpi.registry, gov.standards | Biometric Update | DRC cuts biometric passport price, adds online enrollment with new supplier Dermalog | **Entirely new track — no passport material in the wiki.** Dermalog **$48m** contract (2022); price cut to **$75** (from Semlex's $185, then $99 in 2019); 50 fixed/mobile stations + 50 at missions; ICAO ISO/IEC 39794; 2,400 passports/day. |
| 2025-04-08 | dpi.id, infra.store, tech.innovate | TechAfrica News | Trident Digital Tech to Power DRC's National Digital Identity System | **Dates the validation phase precisely: 15 Mar 2025, Kinshasa** — the missing step between the Dec 2024 framework and the Jun 2025 PPP. *PR-wire (Trident copy).* |
| 2025-02-14 | dpi.id, dpi.govtech, gov.protect | We Are Tech Africa | DR Congo Signs Agreement to Deploy National ID System | Dates the **February 2025 signing** and records that **Trident's statement did not detail its actual roles** — an early provenance gap in the wiki's most externalised ID build. |
| 2025-02-12 | dpi.id, gov.policy | We Are Tech Africa | DRC Moves Closer to Launching National Digital Identification System | **Dates the December 2024 preliminary agreement** and the Singapore meeting preceding it — the first link in the framework→validation→PPP→launch chain. |
| 2025-06-27 | dpi.id, dpi.govtech, dpi.pay | TechAfrica News | Congo Partners with Trident to Roll Out National Digital ID and e-KYC System | Different-outlet twin of the held Biometric Update report (26 Jun 2025) on the **definitive 20-yr PPP**. Sets out the four e-KYC use cases in the vendor's own words — incl. SIM biometric-blockchain binding to kill "ghost" lines, and one-click e-KYC that "auto-scores risk and unlocks instant credit". *PR-wire (Trident copy); "Congo" here = COD.* |
| 2025-01-14 | infra.connect, infra.energy, digital.rural, include.divides | Telecom Review Africa | Orange, Vodacom Bolster DRC Rural Network Coverage | **Puts terms on the JV the hub mentions bare.** First-of-its-kind rural towerco: up to **2,000** solar 2G/4G base stations over **six years** (initial 1,000 + option on 1,000), reaching up to **19m people**; 20-year anchor-tenancy; open to other MNOs; subject to regulatory approval. Dates mobile internet penetration at **32.3%** (Jan 2025). |
| 2025-02-03 | infra.store, infra.cybersec, gov.standards | TechAfrica News | OADC Texaf – Kinshasa Achieves ISO and PCI DSS Certifications | ISO 27001 + ISO 22301 + PCI DSS for the DRC's first Tier-III DC — the compliance layer under the payments story. *PR-wire; verify against certification registries.* |
| 2026-06-19 | dpi.id, dpi.govtech, gov.protect | TechAfrica News | Trident Launches RDC-PASS, DR Congo's Sovereign Digital Identity Ecosystem | **Confirms the launch the hub flags "⚠ confirm launch occurred"** — state ceremony **13 June 2026**, Kinshasa, under Tshisekedi. *PR-wire (Trident/TDTH copy); "sovereign" is the vendor's framing of a 20-yr exclusive foreign concession.* |
| 2026-06-15 | dpi.id, dpi.govtech, infra.store | Biometric Update | DRC launches RDC-Pass digital ID platform under 20-year PPP with Trident | **Independent confirmation of the same launch** — resolves the hub's open flag. Adds: Ministry of Planning valuation $97.1m; Trident raised **$2.6m** for rollout; phased plan starts with **technical audits and pilot testing**; Trident also has an **$800m Ghana JV**. |

---

## Notes for the reviewer

- **RDC-PASS launch is confirmed** by two independent outlets (Biometric Update 15 Jun; TechAfrica 19 Jun) as a **13 June 2026** state ceremony in Kinshasa. The COD hub's `⚠ confirm launch occurred` can be closed on ingest. **But** note the newspaper half has staged `2025-06-26-ptn-dement-lancement-drcpass-actualite.md` (ministry *denying* a DRCPass launch, June 2025) — the two refer to different moments (2025 contract signature vs 2026 activation) and should be read together, not merged.
- **Two items touch resolved contradictions.** Connecting Africa (2026-05-13) re-asserts **$8.7bn** for the National Digital Plan and dates it **2025-2030**; TechAfrica (2026-07-06) re-runs the **joint stablecoin pilot** framing. Both are flagged in-file as evidence of circulation, not as grounds to reopen REV-COD-001 / REV-006.
- **One figure genuinely needs adjudicating:** the Idemia/Afritech contract value. The wiki says **$1.2bn cancelled**; Biometric Update (2025-08-29) says a **$697m** contract that **ballooned to $1.2bn**. These are reconcilable but the hub's wording is imprecise.
- **Mobile-money counts do not reconcile** across sources: 24m wallets (Nov 2025) · 29m accounts (Q4 2024, held) · ~30m accounts (May 2026) · ~35m users (Apr 2026). Likely different metrics; date and attribute individually.
- **PR-wire items needing a primary at ingest:** Trident RDC-PASS launch (→ TDTH GlobeNewswire release, 18 Jun 2026, and/or ACP's report of the 13 Jun ceremony); Trident Apr-2025 validation (→ TDTH announcement); OADC Texaf certifications (→ certification registries); Paratus G2M (→ Paratus corporate announcement); MultiPay (→ MultiPay/Interswitch statements; BCC 2012 rules); Tech Review Africa regulatory piece (→ the actual decree/arrêté — **treat as lead until found**).
- **New entities with no wiki page:** genew-technologies, cybastion, mastercard, flash-drc, mainmoney, ai-tech-drc, keyo, nomba, multipay-drc, interswitch, rawbank, acix, de-cix, paratus-group, banque-centrale-du-congo, dermalog, rudi-international, droit-numerique-cd.
