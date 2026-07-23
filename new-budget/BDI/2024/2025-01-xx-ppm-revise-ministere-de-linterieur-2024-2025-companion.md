---
type: source
title: "Plan Prévisionnel de Passation des Marchés Publics du Ministère de l'Intérieur, du Développement Communautaire et de la Sécurité Publique (Révisé), exercice 2024-2025"
url: https://armp.gov.bi/wp-content/uploads/2025/01/MININTER-PPM-Revise-1.pdf
publisher: Ministère de l'Intérieur, du Développement Communautaire et de la Sécurité Publique (Burundi) / Autorité de Régulation des Marchés Publics
published: 2025-01-01
date_precision: month
date_source: proxy
places: [BDI]
topics: [finance.budget, dpi.id]
entities: [[ministere-de-linterieur-du-developpement-communautaire-et-de-la-securite-publique-burundi], [autorite-de-regulation-des-marches-publics-burundi]]
lens: []
retrieved: 2026-07-23
sweep_batch: domestic-finance-BDI-2024-2026-07-23
fiscal_years_covered: ["2024/25"]
doc_type: procurement-plan
source_tier: budget-document
artefact: 2025-01-xx-ppm-revise-ministere-de-linterieur-2024-2025.pdf
body_completeness: excerpt
---

# PPM révisé du Ministère de l'Intérieur, exercice 2024-2025

Held awaiting the budget extraction pass; **not an admitted source**. Staged because
it is the **cross-vote (block 4b) instrument for Burundi**: the interior ministry runs
état civil, national identity and migration, and its plan carries fisc-funded IT lines
against budget classification codes.

## Citation

| Field | Value |
|---|---|
| Portal page | `https://armp.gov.bi/archives/6531` |
| Retrieved | 2026-07-23 |
| Date | The portal exposes only the upload path `/2025/01/`; `published` is padded to the month, hence `date_precision: month`, `date_source: proxy`. |

## Artefact

| Property | Value |
|---|---|
| File | `2025-01-xx-ppm-revise-ministere-de-linterieur-2024-2025.pdf` |
| Size | 495,495 bytes |
| Pages | ~4 |
| Text layer | **Yes — native PDF**, extractable with `pdftotext -layout`. |
| Currency | BIF, full units (no scale multiplier) |
| Columns | N° · Objet du marché · Mode de passation · **Budget prévu** · **Source de financement** · dates (confection DAO → réception du marché) |

## Structure and the classification key

The plan is sectioned by spending unit, each headed with a **LITERA** budget
classification string and the funding basis, e.g.

> `IV. EQUIPEMENT POUR LA POLICE NATIONALE: FINANCE SUR LE BUDGET DE L'ETAT EXERCICE 2024-2025: LITERA: 11 00 002 00 4 21450 11 000 0311 01`

**That LITERA string is the join key** between this plan and the PTBA volume — it is
how a procurement line is tied back to a programme. Capture it with every line.

## Digital lines visible in the text layer (indicative, verify at extraction)

| Objet | Budget prévu (BIF) | Mode | Unit / LITERA head |
|---|---|---|---|
| Acheter un **logiciel de biométrie pour la gestion de carrière** | 791 990 000 | Avis d'appel d'offre ouvert national | Équipement pour la Police Nationale — `…4 21450 11 000 0311 01` |
| Achat un lot de **matériel et équipements informatiques** | 721 245 000 | Avis d'appel d'offre ouvert national | **Commissariat Général Migrations** — `…7 66110 11 000 0311 02` |
| Achat un lot d'équipements électroniques et électriques | 180 000 000 | Avis d'appel d'offre ouvert national | Commissariat Général Migrations |
| **Former 10 policiers en réseaux avancés** | 50 169 500 | Avis d'appel d'offre ouvert national | Frais de fonctionnement de l'IGPNB |

All are marked **« Budget de l'Etat »** — domestic fisc, FY2024/25. Note what is
**absent**: no line for the CNI biométrique or the état-civil platform, consistent
with those being carried by the World-Bank-financed PAFEN in FY2024/25 and only
reaching the fisc in the FY2026/27 bill (16 milliards BIF).
