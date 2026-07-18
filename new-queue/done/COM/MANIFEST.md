# COM — sweep manifest (`COM-2026-07-17`)

**Window:** 2025-01-01 → 2026-07-17 · **Staged:** 41 · **Dropped:** 15 (`sweep/drop-log-COM.csv`)

> Merged from the two half-sweeps (newspapers, trade journals), which ran as
> separate agents writing disjoint files. Same-event twins across the two halves
> are deliberately kept: same event from a different outlet is never a sweep-stage
> drop. Lint #7 adjudicates them at ingest, with full text.

---

## Part 1 — Newspapers

# COM newspaper-half sweep — MANIFEST (papers)

**Recovery completion, 2026-07-17.** The original COM paper sweep died mid-run in a server-overload
storm: it had staged only ~5 Al-Watwan items, never searched the second paper, and wrote no manifest
or drop log. This pass **completes the recovery** — it finished Al-Watwan (alwatwan.net) and ran the
full N1–N7 clusters (in French) against **La Gazette des Comores** (lagazettedescomores.com), which
had not been touched. Window **2025-01-01 → 2026-07-17**.

**Thinness check: FAILED — Comoros is NOT thin.** Both papers were highly productive. Papers now
total **27** (13 Al-Watwan, 14 La Gazette); this pass added **22 new** (8 Al-Watwan + 14 La Gazette)
on top of the 5 pre-staged Al-Watwan items. **La Gazette was very productive** and prints explicit
`dd/mm/yyyy` dates + bylines (every La Gazette `date_source: source`). **Al-Watwan prints no
publication date** — its dates are derived from body datelines/weekday arithmetic (mostly
`date_source: source`; two proxies). Drops: 7 (see `sweep/drop-log-COM-papers.csv`) — 6 out-of-window
(mostly 2024/2021 items Exa surfaced), 1 undatable soft feature.

Source key: **AW** = Al-Watwan (state-owned — staged as capture-not-endorsement). **LG** = La Gazette
des Comores (private). `[pre]` = staged by the interrupted original run (frontmatter re-read, not
restaged).

---

## Digital identity, civil registry & social registry (dpi.id / dpi.registry / dpi.mis)

- `2026-01-01` | dpi.id gov.protect infra.store | AW `[pre]` | Genkey remplacera Semlex à partir d'avril (données domiciliées aux Comores) | Semlex→GenKey handover announced; data repatriation.
- `2026-03-06` | dpi.id gov.protect | AW | Production des documents biométriques suspendue (6–26 mars) | **New**: prestataire-change suspension window, bridges the handover; explicit 2026 dates.
- `2026-03-25` | dpi.id gov.protect infra.store | AW `[pre]` | Semlex remet les données au gouvernement | Data return event.
- `2026-04-01` | dpi.id gov.protect gov.standards | AW `[pre]` | GenKey succède officiellement à Semlex | Handover completed 31 Mar 2026.
- `2025-10-14` | dpi.id dpi.registry gov.protect digital.localgov | LG | AMECC — étude préalable lancée à Mohéli (état civil) | **New**: Oct-2025 launch of civil-registry modernisation study (France/UNICEF); earliest stage of the AMECC thread.
- `2026-03-26` | dpi.id dpi.registry digital.localgov gov.protect | AW `[pre]` | Projet AMECC — atelier de validation (modernisation état-civil) | Validation workshop.
- `2025-11-01` (proxy) | dpi.id dpi.registry gov.legislate | LG | Vers un décret d'application pour l'Agence nationale de l'état civil (ANEC) | **New**: island consultations on the decree creating the ANEC; page carries no date (proxied).
- `2026-07-10` | dpi.registry dpi.mis include.access gov.protect | LG | Registre social unique — 62 000 ménages enregistrés | **New**: social/MIS registry (World Bank); distinct from civil registry; most recent in-window item.

## National statistics & census (data.statistics / data.satellite)

- `2026-04-17` | data.statistics data.satellite capacity.training | LG | RGPH-2027 — INSEED, formation cartographie ArcGIS (STATCAP-KM/ESRI) | **New**: GIS census-cartography training, 13–24 Apr 2026.
- `2026-06-09` | data.statistics data.satellite gov.policy | LG | Lancement officiel du 5e Recensement (RGPH-5) | **New**: RGPH-5 launched 5 Jun 2026; pilot Sept-2026, count Sept-2027.

## E-government & digitalisation (dpi.govtech / gov.legislate)

- `2025-03-20` | dpi.govtech gov.policy infra.connect infra.store | LG | PADEC (digitalisation économie) — validation du PTAB 2025 | **New**: Mar-2025 governance milestone on the AfDB digitisation project (€9.51m); note vs wiki's $10.4m figure.
- `2025-10-16` | dpi.govtech dpi.exchange gov.protect geopol.eu | AW | Lancement officiel du projet e-Administration (UE / Expertise France) | **New**: EU-funded e-gov programme (guichet unique, interopérabilité) — a second, separate donor track from AfDB.
- `2026-04-16` | dpi.govtech gov.legislate gov.policy | LG | Administration fiscale — téléprocédures (télédéclaration/télépaiement), loi de finances 2026 | **New**: tax-administration digitisation legal framework.

## Connectivity, ccTLD sovereignty & 5G (infra.connect / gov.standards)

- `2025-05-08` | infra.connect infra.store gov.standards dpi.govtech | AW `[pre]` | Transfert technique du ccTLD .km (Comores Télécom → ANADEN) | ccTLD transfer, AW account.
- `2025-05-12` | infra.connect gov.standards infra.store dpi.govtech | LG | L'ANADEN devient gestionnaire du ccTLD .km | **New**: second-outlet account; adds arrêté n°24-02 and ICANN re-delegation step.
- `2025-05-20` | infra.connect tech.industry geopol.china | LG | Yas Comores lance officiellement la 5G (Huawei) | **New**: 2nd operator 5G launch, Moroni.
- `2025-06-04` | infra.connect tech.industry include.divides | LG | Comores Télécom lance la 5G (WTTX, 1 Gbit/s) | **New**: incumbent 5G launch 2 Jun 2025 (president; 50th independence anniversary).
- `2025-02-01` (proxy) | infra.connect tech.industry dpi.pay | AW | Comores Télécom — bilan 2024 / perspectives 2025 | **New**: FY2024 results (CA 17.035bn KMF), 5G/WTTx pre-announced; proxy date (early 2025).
- `2025-06-13` | infra.connect gov.legislate include.access geopol.usa | AW | Déploiement de Starlink interdit (ANRTIC), en attente de licence | **New**: Starlink ban, 12 Jun 2025 — connectivity-sovereignty flashpoint.

## Payments & digital finance (dpi.pay / finance.new)

- `2025-02-27` | dpi.pay gov.protect include.access | LG | BCC × Banque de France — séminaire paiements numériques | **New**: early-2025 BCC/BdF payments-modernisation seminar.
- `2026-05-05` | dpi.pay finance.new gov.policy include.access | AW | Lancement présidentiel KomorPay / Komor Switch / Mali Ya Wakazi + marché obligataire | **New**: BCC branded payment stack + interoperability, presidential launch May 2026 (later than / distinct from the Aug-2025 PayLogic go-live).
- `2026-04-29` | tech.industry dpi.pay tech.innovate | LG | KomoraLink — plateforme numérique du commerce (Kartapay, CCI) | **New**: private B2B/e-commerce platform, launched 24 Apr 2026 (distinct from KomorPay).

## AI, innovation & digital skills (tech.ai / tech.innovate / capacity.training)

- `2026-01-24` (proxy) | tech.innovate capacity.training include.divides geopol.china | AW | Technopole numérique — projet (2 000 jeunes, $4.09m, 2025-2028, Huawei) | **New**: preview with project scope; proxy date (bounded 22–28 Jan 2026).
- `2026-01-29` | tech.innovate capacity.training dpi.govtech geopol.china | AW | Technopole numérique — lancement de la phase pilote | **New**: pilot launch ceremony, 29 Jan 2026.
- `2026-04-01` | tech.ai tech.innovate gov.policy include.access | AW | 1er Forum de l'IA aux Comores (+ ERP «Made in Comores» ZynBusiness) | **New**: first national AI forum, 31 Mar 2026.
- `2025-04-15` | tech.ai capacity.training | LG | Formation IA — 2e session (Fondation Hazi Haki) | **New**: AI training session for ~40 lycéens, 11 Apr 2025.

## Education management information systems (dpi.mis)

- `2025-06-09` | dpi.mis dpi.id capacity.literacy include.access | LG | e-Msomo / e-Shiyo — digitalisation de l'enseignement (ANADEN/UNICEF) | **New**: school-management + digital-textbook platforms, launched 5 Jun 2025; adds unique student ID vs the journals-pass wearetech account.

---

## Part 2 — Trade journals

# COM — trade-journal sweep manifest (batch COM-2026-07-17)

Window 2025-01-01 → 2026-07-17. 8 fixed journals, J1–J2 × "Comoros"/"Comores". 12 items staged (this is the journal half; a newspaper agent writes into the same folder — journal files are suffixed with the outlet).

`published | topics | source | title | why-it's-new`

- 2025-02-20 | dpi.pay, include.access, finance.new | wearetech.africa | Comoros Deploys Digital Payment Switch | **Contract-award** stage of the PayLogic switch (announced 16 Feb 2025), predating the held 2025-08-23 go-live — establishes the award timeline the COM hub lacks.
- 2025-04-01 | infra.connect, finance.new, include.divides | techafricanews.com | Axian Telecom Invests $82M to Expand 4G in Madagascar, Comoros & Tanzania | Not held: ITU Partner2Connect $82m 4G pledge (97% coverage / 6m unconnected by 2030) naming Comoros — a connectivity commitment absent from the wiki. PR-wire; primary = ITU P2C pledge. Multi-country (COM/MDG/TZA).
- 2025-06-20 | infra.connect, finance.new, digital.rural | techafricanews.com | Yas Comoros Secures €25M IFC Loan | Not held: IFC €25m loan to Yas Comoros for 5G/FTTH/FTTO — the second telecom operator's major financing, no COM entity for Yas yet. PR-wire; primary = AXIAN/IFC release. Byline corrected to Akim Benamara (Exa erred).
- 2025-06-20 | dpi.mis, dpi.id, capacity.literacy | wearetech.africa | Comoros Launches E-Learning and EdTech Platforms (E-Shiyo/E-Msomo) | Not held: ANADEN/UNICEF EdTech platforms under Comoros Digital 2028; E-Msomo assigns each student a unique ID — a new sectoral MIS thread.
- 2025-08-27 | dpi.pay, include.access, gov.regional | wearetech.africa | Comoros Adopts a National System for Digital Payments | Second-outlet coverage of the held 2025-08-23 switch go-live; adds dated penetration figures (internet 35.7%, mobile 77.6% early-2025) and PayLogic peer list. Complementary, not duplicate.
- 2025-08-27 | dpi.pay, include.access, gov.regional | techafricanews.com | PayLogic Launches National Payment Switch in Comoros | Same go-live event; retained for comparative-footprint detail (Lesotho/Eswatini/CEMAC). PR-wire; primary already held (pay-logic.com).
- 2025-10-06 | dpi.mis, data.statistics, digital.rural | wearetech.africa | Comoros Goes Digital in Measles-Rubella Drive (101,000 children) | Not held: first use of ODK digital data-capture in a national health campaign (real-time dashboards) — a concrete dpi.mis/rural-data data point.
- 2025-11-29 | dpi.pay, finance.mou, include.access | techreviewafrica.com | AXIAN Group & Mastercard partner to expand digital financial inclusion | Not held: AXIAN–Mastercard MoU (Mixx/MVola virtual+physical cards) naming Comoros among 5 markets. PR-wire; primary = AXIAN/Mastercard release. Date from page `Date:` field (banner ~3mo adrift).
- 2026-02-02 | infra.connect, tech.industry, capacity.training | techreviewafrica.com | AXIAN Telecom advances NEXT 2030 vision in Comoros | Not held: confirms 2025 Yas Comoros milestones (5G+FTTx live in Moroni, Programme Sarumaya women-entrepreneur training). PR-wire. Date from page `Date:` field (banner ~4.5mo adrift).
- 2026-02-24 | dpi.pay, gov.legislate, finance.new | itweb.africa | AXIAN gets digital-first financial license in the Comoros | Not held: **Decentralised Digital Financial Institution licence** from BCC — a new regulated nano/micro-loan entity, a governance/licensing first for COM. Better-sourced twin (named byline, staff-written).
- 2026-02-24 | dpi.pay, gov.legislate, finance.new | techafricanews.com | AXIAN Gains Central Bank Approval for Regulated Digital Finance Institution | Same DFI-licence event, second outlet. PR-wire; primary = AXIAN/BCC release. Byline Joyce Onyeagoro (page-verified).
- 2026-03-09 | dpi.id, gov.protect, infra.store | biometricupdate.com | GenKey takes over biometric passport, national ID card production in Comoros | **Second-outlet, higher-detail twin** of the held 2026-02-16 Genkey/Semlex story: adds that Semlex stored all Comorian biometric data **in Belgium** and that GenKey will store domestically — a data-sovereignty fact the held source lacks. Sovereignty/colonialism lens.
- 2026-03-27 | dpi.id, dpi.registry, gov.legislate | wearetech.africa | Comoros Advances Digital Identity Reform with Nationwide Registry Overhaul | Not held: civil-registry digitisation (Amecc, France/UNICEF-funded) introducing a unique **Personal Identification Number** under the 27 Jul 2023 law — the foundational-ID layer distinct from card production.

**Per-domain yield (journal half):**
- wearetech.africa — 5 staged (rich; EN+FR, FR twins dropped as re-crawls). Strongest single source.
- techafricanews.com — 4 staged (rich; all PR-wire, bylines page-verified).
- biometricupdate.com — 1 staged (2 in-window hits; 1 out-of-window AfDB already held). Genuinely covers Comoros.
- itweb.africa — 1 staged (also carried the held AfDB data-centre story, out-of-window). Covers Comoros.
- techreviewafrica.com — 2 staged (dates via page `Date:` field per intel; banner adrift confirmed).
- telecomreviewafrica.com — **0. Thinness ESTABLISHED**: domain-scoped J1/J2 returned only pan-African/other-country features; a named "Telecom Review Africa + Comoros" probe surfaced only off-domain results. No Comoros article found.
- connectingafrica.com — **0. Thinness ESTABLISHED**: domain-scoped J1/J2 and a named probe surfaced only other-country items (the Comoros IFC-loan hit resolved to communicationsafrica.com/CAF, a different outlet). No Comoros article found.
- techcabal.com — **0. Thinness ESTABLISHED (assumed-thin confirmed)**: J1 returned only Nigeria/Côte d'Ivoire/pan-African items, no Comoros. Consistent with prior intel that techcabal skews Nigeria.

**Notes / re-dating against held material:**
- The PayLogic **award (2025-02-20)** predates the held **go-live (2025-08-23)** — gives the COM hub the missing start of the switch timeline.
- The GenKey item **re-dates/enriches** the held 2026-02-16 story with the Belgium-storage → domestic-storage sovereignty detail.
- No hard contradictions with held figures.
