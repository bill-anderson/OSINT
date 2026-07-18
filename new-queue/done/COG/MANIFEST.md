# COG — sweep manifest (`COG-2026-07-17`)

**Window:** 2025-01-01 → 2026-07-17 · **Staged:** 63 · **Dropped:** 139 (`sweep/drop-log-COG.csv`)

> Merged from the two half-sweeps, which ran as separate agents writing disjoint
> files. Same-event twins across the halves are deliberately kept: same event from
> a different outlet is never a sweep-stage drop. Lint #7 adjudicates at ingest,
> with full text in hand.

---

## Part 1 — Newspapers

# MANIFEST — COG newspapers half (Phase-2 sweep)

**Run:** 2026-07-17 · **Batch:** `COG-2026-07-17` · **Window:** 2025-01-01 → 2026-07-17
**Outlet:** Les Dépêches de Brazzaville — staged from **adiac-congo.com**, its online edition (see *Outlet note*).
**Staged:** 23 · **Language of query:** French · **Trade-journal half:** separate agent, separate files.

All filenames carry the `-ldb` outlet suffix to avoid collision with the journals agent writing into this same folder.

---

## Outlet note — read this first

**`lesdepechesdebrazzaville.fr` serves almost no indexable article HTML.** What it exposes is a
`_zbhfiles/download.php` endpoint returning **whole-edition PDFs** (dropped as `fetch-failed`: an
edition PDF cannot carry per-article frontmatter). The paper's articles live on **`adiac-congo.com`**
— ADIAC, *Agence d'Information d'Afrique Centrale*, the paper's publisher — which carries the bylines,
the "Édition Quotidienne (DB)" tag, and the paper's own editorials signed "Les Dépêches de Brazzaville".
Everything here is staged from adiac-congo.com and attributed to Les Dépêches de Brazzaville (ADIAC).
**Recommend the curator update the COG ledger row to name `adiac-congo.com` as the paper's domain.**

**Editorial stance.** Les Dépêches/ADIAC is close to the Congolese state and reads that way: ministers'
claims are relayed without challenge and "souveraineté numérique" is the house frame. Staged on
capture-is-not-endorsement; all items carry `provenance_flag: state-aligned-outlet`. The **2025-05-29
AfDB/datacentre piece is the notable exception** — it reports a government payment default plainly.

**Dedup.** `sweep/held-urls.txt` contains **zero** adiac-congo.com or lesdepechesdebrazzaville.fr URLs —
the outlet is entirely unheld, so no exact-URL drops. Two allAfrica syndications of items staged here
were dropped as `same-outlet-recrawl`.

**Dates.** Every `published` was read from the article body's French dateline (e.g. "Jeudi 29 Mai 2025 - 14:06"),
never from Exa metadata — which returned `N/A` or wrong values for most adiac hits. **No proxy dates, no
padded precision: all 23 items are `date_source: source` / `date_precision: day`.** No paywall
encountered — **no `[CLIP]` items**. No live-rendered date traps observed on this domain.

---

## Data centres & digital sovereignty

- `2025-05-29` | `infra.store` `finance.new` `geopol.china` | Les Dépêches de Brazzaville | **Construction du Datacenter : la BAD s'indigne du ralentissement des travaux** — works **stopped dead at 80%** because the government failed to pay its counterpart share; AfDB threatens to walk and leave a "white elephant". **Conflicts with held material**: puts AfDB co-financing at **$13m** vs the wiki's **$57m of $72.8m**. Chinese contractor.
- `2025-08-06` | `infra.store` `finance.new` `geopol.china` | Les Dépêches de Brazzaville | **Le Datacenter national sera inauguré en novembre** — unblocked; **>90%**, inauguration set before 28 Nov 2025 by Sassou N'Guesso; "techniciens chinois" confirm timeline. Supersedes the wiki's "75% (2025-03)".
- `2026-06-02` | `infra.store` `infra.energy` `finance.mou` | Les Dépêches de Brazzaville | **Le CEO et l'ONG Pratic s'accordent pour la souveraineté numérique** — MoU (signed 2026-05-29) on the energy–digital nexus; feasibility study for a **regional data centre on the Côte-Matève gas plant, Pointe-Noire**. A third DC thread beyond the two the wiki holds.

## AI, regulation & cybersecurity

- `2026-05-06` | `tech.ai` `gov.policy` `capacity.literacy` | Les Dépêches de Brazzaville | **IA et langues nationales : le Congo lance les travaux de sa stratégie nationale avec l'appui du Pnud** — the national AI strategy GSMA recommended is **now underway**: technical committee, 6 months, 11 deliverables, FCFA 150–200m; digitising **lingala and kituba** against "extinction numérique". **New minister Frédéric Nzé appears.**
- `2026-01-13` | `tech.ai` `gov.legislate` `gov.protect` | Les Dépêches de Brazzaville | **Le Congo s'engage à encadrer l'utilisation de l'IA** — ARPCE opens 5-day digital-regulation seminar; Sakala: "les technologies évoluent plus vite que notre capacité à les réguler". **Last sighting of Ibombo as minister.**
- `2026-01-19` | `tech.ai` `gov.legislate` `infra.store` | Les Dépêches de Brazzaville | **Le Congo pose les jalons d'une régulation** — closing session. **Contains two facts new to the wiki**, stated in passing by the minister: the **Data Center national was inaugurated**, and **5G launched in Brazzaville**.
- `2026-05-02` | `infra.cybersec` `gov.regional` `finance.mou` | Les Dépêches de Brazzaville | **Brazzaville abritera en juin la première conférence sur la cybersécurité** — ANSSI × Osiane accord (30 Apr); first regional conference of Central African cyber agencies, 2–5 June 2026. **Establishes ANSSI**, which the wiki lacks entirely.
- `2025-07-01` | `infra.cybersec` `gov.regional` `infra.capacity` | Les Dépêches de Brazzaville | **Des experts de la sous-région renforcent les stratégies de riposte** — Congo hosts the **13th regional Cyberdrill** (Kintélé, 1–4 Jul 2025), opened by the PM. Places **ANSSI under the Conseil national de sécurité**, not the ICT ministry.

## Connectivity & divides

- `2026-04-09` | `infra.connect` `gov.legislate` `digital.rural` | Les Dépêches de Brazzaville | **L'ARPCE monte la pression sur MTN et Airtel** — **formal mise en demeure** to both operators after Feb 2026 drive tests in 20 interior localities; granular per-department scores; Airtel absent from 4G in 5 localities; Airtel blames Congo Télécom backbone outages. Hard enforcement — rare in the corpus.
- `2025-10-20` | `infra.connect` `digital.rural` `include.divides` | Les Dépêches de Brazzaville | **Connectivité** *(editorial — analysis, not reporting)* — PATN **mid-term review "peu satisfaisant"**: only **20 of 76** broadband sites operational after two years.
- `2025-10-04` | `infra.connect` `geopol.eu` `data.satellite` | Les Dépêches de Brazzaville | **L'ARPCE renforce son expertise sur les satellites de télécommunications** — LEO/HAPS training in France; strategic meeting with **Eutelsat/OneWeb**. The window's only satellite thread — and it runs to the EU, **not Starlink**.
- `2025-03-31` | `infra.connect` `gov.standards` `infra.energy` | Les Dépêches de Brazzaville | **Vers une urbanisation maîtrisée des réseaux** — ARPCE orders fibre-cable mutualisation and undergrounding; co-regulation with the energy regulator. Introduces **GVA (CanalBox)** and **Silicon Connect**.
- `2026-06-26` | `infra.connect` `dpi.pay` `include.divides` | Les Dépêches de Brazzaville | **La GSMA publie son rapport sur le Congo** — **re-dates a held source**: the wiki's GSMA study is filed `2026-01-01` `date_precision: year` `date_source: proxy`; this dates its launch to **22 June 2026** at the GSMA Digital Africa Summit, Brazzaville. Figures: 86% 4G coverage, 19% mobile-internet use, 26/100 Digital Nations index, 33/100 policy index.

## Digital identity & registries

- `2025-07-18` | `dpi.id` `dpi.registry` `gov.protect` | Les Dépêches de Brazzaville | **Le Congo veut se doter d'une identité numérique sécurisée** — **same event as a held source** (`raw/2025-07-17…`, from aci.cg), different outlet → attach, don't spawn. Adds the Thales rep (**Laurent Jutard**), the document list, and CARIA as PATN "clé de voûte".
- `2025-09-09` | `dpi.id` `dpi.registry` `include.access` | Les Dépêches de Brazzaville | **Campagne de distribution de proximité des CNI et NIU** — **uncollected backlog**: 10,506 CNI (2016–24) + 25,549 NIU cards (2020–24) unclaimed in Pointe-Noire alone. Campaign framed around **electoral-roll revision**; NIU supervised locally by a police commander.

## Payments & financial inclusion

- `2025-02-24` | `dpi.pay` `include.access` `infra.connect` | Les Dépêches de Brazzaville | **Que nous apporte le Mobile Money ?** *(signed tribune — expert analysis, not primary)* — densest COG payments dataset found: MTN 74.5%/Airtel 25.5% of 3.431m subs (2023); MMC (MTN×Ecobank) and MCC (Airtel×BGFI); fees 2.5%→3.5% since 2019. **Two figures to reconcile**: banking penetration **17%→7% (2023)**, and mobile internet at **61% (2023)** vs GSMA's 19% — likely a metric-definition clash, not a contradiction.
- `2026-07-17` | `gov.legislate` `tech.industry` `dpi.pay` | Les Dépêches de Brazzaville | **Taxe sur les nouveaux terminaux numériques à cartes Sim** — Aden presents to the National Assembly a levy in force since **1 June 2026** on newly **imported** SIM-equipped terminals. Government frames it as *funding* connectivity — the inverse of GSMA's "taxes are the brake". Reconcile against the wiki's "FCFA 10,000 SIM tax".

## Ministry & sector governance

- `2026-07-14` | `gov.policy` `dpi.govtech` `infra.connect` | Les Dépêches de Brazzaville | **Frédéric Malik Nguema Nzé fait de l'ARPCE son fer de lance** — the **new ICT minister** ("fraîchement installé") spends five hours auditing ARPCE and sets out a **nine-point roadmap**: digital revenue mobilisation across ministries, a **citizen portal** and DPI with Aden, Sopéco turnaround, postal addressing, joint work on the 2027 finance bill. **Confirms the ministerial change the wiki has not registered.**

## Statistics, open data & governance

- `2026-07-11` | `data.statistics` `gov.standards` | Les Dépêches de Brazzaville | **Des données régulières pour mieux mesurer le marché du travail** — ILO-backed **quarterly** labour-force survey, a national first; INS harmonising to ICLS standards.
- `2026-04-22` | `data.statistics` `gov.regional` | Les Dépêches de Brazzaville | **Balance des paiements 2026 : la collecte des données lancée** — BEAC collection rate **98% (2024, 136 declarants)** but only **41.81% for 2025** so far: an officially-admitted collapse in statistical production.
- `2026-07-16` | `data.open` `gov.policy` `dpi.govtech` | Les Dépêches de Brazzaville | **Recommandations pour booster l'application du Code sur la transparence** — CNTR building a **digital platform** for online fiscal-transparency (ECTR) assessment covering 2023–25; focal points ask for laptops and rechargeable routers, which sets the base level.
- `2025-05-15` | `capacity.training` `tech.ai` | Les Dépêches de Brazzaville | **Une plateforme pour former des milliers de jeunes dans le numérique** — **CARIA** launches a free platform (~3,000 courses; 10,000-youth target).
- `2025-03-11` | `capacity.training` `infra.cybersec` | Les Dépêches de Brazzaville | **Congo-Pnud : formation en IA destinée aux jeunes** — UNDP 25,000-youth cyber training across 24 countries; earliest in-window marker of the UNDP–Congo partnership that later funds the AI strategy.

---

## Flags for the human

1. **Ledger correction.** The COG paper's real article domain is **adiac-congo.com**, not lesdepechesdebrazzaville.fr.
2. **Contradiction candidate — datacentre financing.** $13m AfDB (LDB, 2025-05-29 and consistent with the 2024 piece) vs **$57m AfDB / $72.8m total** on `congo-national-data-centre`. Both cannot be right; the LDB figure recurs, so the wiki's may conflate the total project (incl. 600 km fibre) with the building.
3. **Re-dating — GSMA study.** Held as `2026-01-01` (proxy/year); actually launched **2026-06-22**.
4. **Stale state — datacentre.** Wiki: "75% complete (2025-03)". Reality: 80% and stalled (2025-05), >90% (2025-08), **inaugurated** (per minister, 2026-01).
5. **Stale state — minister.** Wiki has **Léon Juste Ibombo**. He is out by 2026-05; **Frédéric Malik Nguema Nzé** is in post (2026-05 → 2026-07).
6. **Entity gaps (no wiki page).** **CARIA** (most-cited absent entity), **ANSSI**, **Aden**, **INS**, **CNTR**, **BEAC**, **Osiane**, **ONG Pratic**, **Congo Télécom**, **GVA/CanalBox**, **Silicon Connect**, **Sopéco**.
7. **Unsourced claims needing primaries.** 5G launch in Brazzaville; datacentre inauguration date — both asserted only in passing in the 2026-01-19 piece.
8. **Strong non-paper lead (dropped, logged `off-topic`).** `finances.gouv.cg` reports **SIFEC validation on 2026-02-18** — the civil-status system the wiki holds only as a 2025 aspiration. Government site, so outside the papers half; worth a targeted ingest.
9. **No Starlink story exists** for COG in this window on this outlet — the satellite thread is Eutelsat/OneWeb.

---

## Part 2 — Trade journals

# COG — trade-journal sweep manifest

**Batch:** `COG-2026-07-17` · **Window:** 2025-01-01 → 2026-07-17 · **Half:** trade journals (8 fixed domains)
**Staged:** 40 · **Dropped:** 72 (see `sweep/drop-log-COG-journals.csv`)

*(The 23 `*-ldb.md` files in this folder are the concurrent newspaper half — Les Dépêches de Brazzaville — and are covered by that half's manifest, not this one. All journal files here carry an outlet suffix.)*

> **COD/COG collision warning.** Congo-Brazzaville (COG) is *not* DR Congo (COD). Every item below was verified
> against Brazzaville / Pointe-Noire / ARPCE / Ibombo / Sassou Nguesso markers. **28 DR Congo items were rejected**,
> including two whose headlines say only "Congo" and would have mis-filed on a title read. One staged item
> (`2025-08-07` data centre) is genuine COG *despite* the outlet's own body text saying "DRC" — see its sweep note.
> The newspaper half writes into this same folder; all filenames here are outlet-suffixed.

## Read first — two items that touch held material

- **RE-DATE:** the wiki holds the GSMA Republic of Congo report as `raw/2026-01-01 …` (`date_precision: year`,
  `date_source: proxy`). **Two independent outlets date it to 2026-06-22** (TechAfrica News 2026-06-22 "Unveiled at
  the GSMA's Digital Africa Summit in Congo"; We Are Tech 2026-06-24 "published on Monday, June 22"). Recommend
  re-dating + renaming the held source at ingest. This also moves the wiki's newest COG datapoint ~6 months later.
- **FIGURE CONFLICT:** PATN rural sites — TechAfrica News (2025-10-15) and Telecom Review Africa (2025-10-17) both say
  "66 sites constructed and equipped"; Connecting Africa (2025-10-20) quotes Ibombo saying "seventy-six … built and
  equipped". 20 + 56 = 76, so 66 may be a transcription error propagated between two outlets. Adjudicate at ingest.

## Staged items

| published | topics | source | title | why it's new |
|---|---|---|---|---|
| 2025-01-23 | gov.policy, infra.connect, include.divides, capacity.training, dpi.govtech | We Are Tech | Congo Recommits to Digital Transformation Goals for 2025 | First dated 2025 roadmap; names SOPECO, ADEN, Congo Telecom mobile launch, PATN's "186 rural localities / 1,200 trained" targets — none held. |
| 2025-03-04 | infra.store, gov.policy, infra.connect, dpi.govtech | We Are Tech | Congo's National Data Center 80% Complete, Set for November Launch | Fills the gap between the held 2024-05 build story and the DC's Nov-2025 launch. Adds EGDI 166/193 and telecom-infrastructure index 0.2776 (2024). **Exa served no date; dated from page byline.** |
| 2025-04-04 | infra.cybersec, gov.policy | Telecom Review Africa | Republic of Congo Invests $1.3 Million to Strengthen Cybersecurity Efforts | ANSSI's 2025 budget line (FCFA 800m) — wiki holds no ANSSI page or funding figure. |
| 2025-04-29 | infra.cybersec, gov.standards, finance.mou | We Are Tech | Congo Strengthens Cybersecurity Through Dual-Agency Collaboration | ARPCE–ANSSI MoU (25 Apr 2025), unheld. Adds ITU 2024 Global Cybersecurity Index Tier-4 placement and sub-scores. |
| 2025-06-23 | gov.policy, finance.new, geopol.eu, dpi.govtech, infra.cybersec, gov.protect | TechAfrica News | Congo Unveils European-Backed Plan to Accelerate Digital Transformation | The **EU/EIB** limb of PATN — wiki holds only the World Bank $100m limb. FCFA 27bn (10bn EU grant + 17bn EIB loan); names the three binding instruments. Global Gateway framing. |
| 2025-06-25 | infra.cybersec, gov.regional, gov.policy, tech.ai | TechAfrica News | Congo to Host Regional Cyberdrill as Part of Digital Transformation Agenda | Announces the ITU/Interpol/ANSSI Cyberdrill. Carries a metric the wiki lacks: digital economy from <2% to ~6% of GDP over a decade. |
| 2025-07-07 | infra.cybersec, gov.regional, tech.ai, gov.policy, tech.innovate | TechAfrica News | Cyberdrill 2025 Closes in Kintele, Boosts Central Africa's Cyber Readiness | 13th Regional Cyberdrill outcome. **CARIA's regulatory framework adopted in Council of Ministers, 2 July 2025** — the founding date for an entity the wiki does not yet hub. |
| 2025-07-21 | dpi.id, gov.policy, gov.protect, dpi.govtech | TechAfrica News | Congo Launches National Drive for Secure Digital Identity System | Second-outlet account of the held 2025-07-17 workshop; adds the Thales quote and names **CARIA as implementing lead** under PATN. |
| 2025-08-07 | infra.store, gov.policy, infra.connect, dpi.govtech | TechAfrica News | Congo Nears Completion of Landmark National Data Center | DC at >90%; AfDB inspection (Léandre Bassolé); inauguration pinned to **28 Nov 2025**, Sassou Nguesso's State of the Nation address. ⚠ Outlet writes "DRC" in body — verified COG. |
| 2025-08-18 | infra.connect, geopol.china, finance.mou, tech.industry | Connecting Africa | Airtel Congo, Wing Wah to deploy private telecom network | Congo's **first private industrial network** (Banga Kayo oil field, Kouilou), 5-yr contract with a Southernpec subsidiary — a China-linked infrastructure vector the wiki has nothing on. |
| 2025-09-18 | tech.ai, geopol.china, gov.regional, infra.store, capacity.research | TechAfrica News | Congo Showcases Digital Infrastructure Gains and AI Ambitions in Xiamen | CARIA built **with China's CAICT**; Sassou Nguesso is FOCAC African co-chair. Direct China–AI–sovereignty material; wiki's `tech.ai` COG coverage is thin. |
| 2025-10-03 | infra.connect, gov.legislate, infra.capacity | TechAfrica News | ARPCE Advances Technical and Regulatory Expertise in Satellite Communications | ARPCE building LEO/HAPS regulatory capacity; met Eutelsat/OneWeb. Precursor to any satellite-licensing move. |
| 2025-10-15 | infra.connect, include.divides, digital.rural, gov.policy, finance.new | TechAfrica News | Congo Expands High-Speed Internet Access with 20 Operational Connectivity Sites | PATN mid-term World Bank evaluation; 76-site target, $3m 4G top-up. ⚠ "66 sites" — see figure conflict above. |
| 2025-10-16 | infra.connect, include.divides, digital.rural, include.access | TechAfrica News | Congo Expands 3G Connectivity to Rural Areas Under PATN | Names the 16 specific rural localities commissioned (Niari, Bouenza, Pool, Plateaux, Cuvette, Likouala); >30,000 people. Granular `digital.rural` evidence. |
| 2025-10-16 | gov.policy, infra.connect, dpi.govtech, tech.ai, infra.cybersec | We Are Tech | Congo Nears Adoption of 2030 Digital Strategy | Strategy at general-secretariat review, awaiting decree — a status the wiki's `congo-digital-strategy-2030` lacks. **EGDI 166th (down from 161st in 2022), 0.3391; IDI 49.6 vs African avg 56.** |
| 2025-10-17 | infra.connect, include.divides, digital.rural, gov.policy, dpi.govtech | Telecom Review Africa | Congo Expands Rural Broadband, Accelerating Digital Inclusion Nationwide | Third-outlet account of the PATN rural milestone; ties it explicitly to Digital Strategy 2030. |
| 2025-10-17 | infra.connect, include.divides, digital.rural, gov.policy | We Are Tech | Congo expands rural broadband to boost digital inclusion | Fourth-outlet twin. ⚠ **Thin capture** — URL served only chrome; prefer the Connecting Africa / Telecom Review twins. Flagged for lint #7. |
| 2025-10-20 | infra.connect, include.divides, digital.rural, gov.policy, finance.new, gov.regional | Connecting Africa | Congo boosts Internet access in rural areas | The fullest account: Ibombo's "seventy-six … built and equipped" quote, DataReportal 2.46m users / 38.4% (Jan 2025), population 6.4m, and the **ARPCE–INACOM (Angola) spectrum agreement, Aug 2025** — a regional item the wiki lacks. |
| 2025-10-23 | gov.legislate, dpi.id, infra.connect, gov.standards | Connecting Africa | Congo sets 2-month deadline for SIM registration | **Enforcement failure, named:** only Kinkala and Djambala 100% compliant; in Brazzaville, Pointe-Noire and 10 other named towns "all SIM cards are sold without presentation of identity documents". Hard evidence against the NIU/SIM-linkage story the wiki carries. |
| 2025-10-24 | gov.legislate, dpi.id, gov.standards, infra.cybersec | TechAfrica News | ARPCE Convenes Meeting with MTN and Airtel on SIM Registration Compliance | Second-outlet account; adds the mission dates (25 Jul – 29 Aug 2025) and 18-locality scope. |
| 2025-11-07 | dpi.pay, finance.new, tech.innovate, tech.industry | We Are Tech | Gozem Launches in Congo-Brazzaville After $30 Million Fundraise | Private-sector digital entry; $30m Series B (MSC Group's SAS Shipping, Al Mada Ventures). **Yango has exited Brazzaville** — a market-structure fact worth holding. |
| 2025-11-13 | gov.legislate, gov.protect, infra.cybersec, capacity.training | TechAfrica News | Congo's ARPCE and Judiciary Strengthen Collaboration on Digital Governance | 2nd Magistrates Open Days (Pointe-Noire). Judicial capacity to *apply* digital law — the enforcement layer under the DP commission. |
| 2026-01-09 | tech.ai, gov.legislate, gov.policy, dpi.pay, data.satellite | TechAfrica News | Congo Hosts Strategic Seminar on Digital Regulation and AI Governance | ARPCE 5-day seminar toward a national digital-regulation roadmap; EU AI-committee expert (Lewkowicz) and HEC Paris (Restrepo Amariles) advising. AI-governance direction of travel. |
| 2026-01-20 | infra.connect, gov.legislate, include.access | Connecting Africa | Congo wants to connect to new cable amidst WACS failures | **Single-cable dependence exposed:** Congo has relied on WACS since 2012; weeks of outages; ARPCE looking to switch cable within three weeks; Dow Africa delayed. Nothing held on COG's subsea position. |
| 2026-01-22 | gov.protect, gov.legislate, gov.standards, dpi.govtech | TechAfrica News | Congo Launches Commission to Strengthen Personal Data Protection | Second-outlet twin of held ITWeb piece — but adds the **two legal instruments the held source lacks: Decree No. 2025-538 (31 Dec 2025) and Law No. 29-2019 (10 Oct 2019)**, plus election of President/VP/Rapporteur. |
| 2026-01-28 | infra.connect, include.divides, digital.rural, include.access | TechAfrica News | Congo Advances Digital Inclusion with New Connections in Miaba and Ehota | First sighting of **FASUCE** (universal-access fund) as an operating actor, with its committee chair named (Luc Missidimbazi). Wiki has no universal-access-fund entity. |
| 2026-02-19 | infra.connect, gov.legislate, gov.standards, include.access | TechAfrica News | ARPCE Demands Flawless Network Performance Ahead of March Elections | **Elections + networks:** parliamentary/local polls 12 & 15 Mar 2026; ARPCE orders national roaming activation, surprise field checks, penalties. Directly relevant to the shutdown/QoS lens; wiki holds nothing on COG elections and connectivity. |
| 2026-03-04 | geopol.china, data.satellite, infra.connect, digital.rural, infra.cybersec | TechAfrica News | Congo Modernizes CFCO with Satellite Technology in Partnership with China | **BeiDou** proposed for the Congo-Ocean Railway — Chinese satellite navigation entering critical national transport infrastructure. Sharp `geopol.china` + `data.satellite` item; wiki has neither for COG. |
| 2026-03-29 | gov.standards, tech.industry, infra.connect | Tech Review Africa | Congo Telecom becomes first operator in Republic of Congo to receive ISO 9001:2015 | 🅿 PR-wire. Minor, but the first standards-certification datapoint for the incumbent. Primary: Congo Telecom / Bureau Veritas announcement. |
| 2026-04-21 | tech.ai, finance.new, finance.mou, capacity.training, capacity.research | TechAfrica News | Congo and Russia Strengthen Digital and AI Cooperation | **Russia funding CARIA phases 3–4 via a Sberbank debt-to-development swap**; "School 21" programme; HSE MoU; CARIA joins the AI Alliance. A wholly unheld geopolitical vector — note the wiki has no `geopol.*` slug for Russia (see report). |
| 2026-04-23 | dpi.pay, dpi.mis, include.access, tech.innovate | Tech Review Africa | Airtel Money supports digitalisation of education sector in Republic of Congo | 🅿 PR-wire. School-management platform + Airtel Money fees (E-SCHOOL ACADEMY 4th ed.). Thin `dpi.mis`/EMIS evidence. Primary: YABISOSOFT / Airtel Congo B release. |
| 2026-05-16 | dpi.mis, include.access, infra.connect, tech.innovate | Tech Review Africa | MTN Congo launches digital obstetric reference project | 🅿 PR-wire. HMIS-adjacent: obstetric referral system, Moukondo → 50 maternities; ~6 maternal deaths weekly. Primary: MTN Congo / WHO Congo country office. |
| 2026-05-28 | dpi.pay, finance.mou, include.access, geopol.eu | Connecting Africa | Belmoney, DigiPay enable Congolese remittances from France and Belgium | DigiTransfer corridor (FR/BE → COG + COD). RaaS model; DigiPay founded in Congo-B. Covers **both** Congos by design — not a mis-file. |
| 2026-05-28 | dpi.pay, finance.mou, include.access, geopol.eu, tech.industry | We Are Tech | Belmoney, DigiPay launch instant transfer app for Congo and DRC | Second-outlet twin; adds that Belmoney is licensed by the **National Bank of Belgium** and the SDG 3% cost-target framing. |
| 2026-06-12 | gov.policy, gov.standards, gov.regional, data.open, data.statistics, gov.protect | Tech Review Africa | ECA supports Republic of the Congo in developing National Data Governance Strategy | 🅿 PR-wire — **but arguably the single most significant find.** UNECA ran Brazzaville consultations 2–9 June 2026 on a **National Data Governance Strategy**. The wiki's COG page has no national data strategy at all, and GSMA (Jan-dated proxy) *recommended* exactly this. Primary: UNECA Data Governance in Africa release. |
| 2026-06-16 | dpi.pay, gov.legislate, dpi.exchange, include.access | TechAfrica News | PawaPay Subsidiary Kerry Payments Secures VAS Payment Aggregator Licence in Congo | **ARPCE licensing a payment aggregator** (Kerry Payments Brazzaville SARLU) — concrete evidence on the ARPCE/BEAC mobile-money co-regulation question GSMA flagged. Unified API across MNOs, banks, MFIs. |
| 2026-06-21 | infra.connect, gov.regional, finance.new, tech.industry, dpi.exchange | Tech Review Africa | Congo Telecom reiterates ambition to lead digital transit and technology hub in Central Africa | 🅿 PR-wire. Congo Telecom courting FAGACE/Africa50 at the **AfDB Annual Meetings in Brazzaville**; Kinshasa delegation (3 Jun 2026) to Orange DRC/Airtel/Vodacom on interconnection + roaming. The COG-as-transit-hub claim, sourced. Primary: Congo Telecom release / AfDB session record. |
| 2026-06-22 | infra.connect, dpi.pay, gov.policy, include.divides, gov.legislate | TechAfrica News | Policy Reforms Could Unlock FCFA 870 Billion and 144,000 Jobs by 2030 (GSMA) | ⚠ **RE-DATES held material** — see top of manifest. Also: 86% 4G coverage vs **19% mobile-internet use**; GSMA Digital Nations index 26/100, policy sub-index 33/100. |
| 2026-06-24 | infra.connect, dpi.pay, gov.policy, include.divides, capacity.training | We Are Tech | Congo's Digital Economy Could Add $1.5 Billion and Create 144,000 Jobs by 2030 (GSMA) | Corroborates the 2026-06-22 report date independently. Adds the fiscal projections (net CFA93bn in 2030; CFA174bn cumulative) and the 2.2m-users-by-2030 target. |
| 2026-07-16 | infra.connect, include.divides, digital.rural, gov.legislate, gov.policy | TechAfrica News | Why Connecting Rural Congo Costs Three Times More Than It Should | **Sharpest single finding of the sweep.** Backhaul spectrum fees = ~5% of operator revenue vs 0.5% SSA median — 10×. Rural coverage 33% 3G / 21% 4G; ~80% of rural Congolese have no 4G, half no coverage at all. Also names delayed spectrum assignments, DRC cross-border interference, and technology-neutrality restrictions. |

🅿 = `provenance_flag: pr-wire` — primary named in the file's sweep note.
