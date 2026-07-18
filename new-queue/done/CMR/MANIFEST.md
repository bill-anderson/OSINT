# CMR — sweep manifest (`CMR-2026-07-17`)

**Window:** 2025-01-01 → 2026-07-17 · **Staged:** 127 · **Dropped:** 129 (`sweep/drop-log-CMR.csv`)

> Merged from the two half-sweeps, which ran as separate agents writing disjoint
> files. Same-event twins across the halves are deliberately kept: same event from
> a different outlet is never a sweep-stage drop. Lint #7 adjudicates at ingest,
> with full text in hand.

---

## Part 1 — Newspapers

# CMR — newspaper half, sweep batch `CMR-2026-07-17`

Sources: **Le Jour** (`lejour.cm`, 22) · **Le quotidien L'Economie** (`leconomie.info`, 33). Window 2025-01-01 → 2026-07-17.
Queries: 18 (N1–N7 FR × 2 domains, + 2 targeted EN passes, + 2 month-sliced recall probes). Raw on-domain hits **94** → staged **55**, dropped **49** (`sweep/drop-log-CMR-papers.csv`).
Format: `published | topics | source | title | why it's new`

**Baseline:** the wiki held **no source from either paper** — CMR holdings were trade-journal (Biometric Update, WeAreTech) plus World Bank/Southwood reference works. Every line below is first national-press coverage of its event.

**Date health:** Exa's metadata was wrong on **7 of 10** Le Jour items (always *later* than truth, by 1–16 days); dates here come from body evidence. **16 of 55** are `date_source: proxy` — flagged inline with `[P]`. No paywalls, no fetch failures.

---

## Identity, CRVS & registries

- `2025-03-04` | `dpi.id, include.access` | Le Jour | Yaoundé : Les premières CNI produites en 48h remises | **First hand-over of 48h-issued biometric CNIs** (3 Mar 2025, Bastos, Yaoundé) — the wiki holds the Augentic go-live and the MPs' cost critique, but not the delivery reality: XAF10,000 paid online, decree on CNI characteristics promulgated days earlier, citizens contrasting it with cards uncollected since 2020.
- `2025-05-08` | `dpi.id, dpi.registry` | Le Jour | Listes électorales : Elecam acquiert 1000 nouveaux kits d'enrôlement | **Elecam biometric voter-enrolment kits** — a second, election-side biometric register entirely absent from the wiki, which tracks only DGSN/CNI and BUNEC/CRVS.
- `2025-04-23` | `dpi.registry` | L'Economie | Gouvernance foncière : chefs traditionnels dans l'immatriculation des terres | **MINDCAF makes a traditional-chief non-objection letter mandatory from 1 Jul 2025** — land-registry procedure reform; the wiki has no land-registry material for CMR at all.
- `2025-12-08` | `dpi.id, dpi.govtech, infra.store` | L'Economie | Sécurisation des documents diplomatiques confiée à Impact Palmarès | **Ivorian vendor takes consular/biometric-visa documents + pledges a Yaoundé data centre** — extends the wiki's "foreign-vendor-built identity" thesis to a *third* vendor and a new document class. Twins the held `2025-12-10` Biometric Update item; kept (different outlet).
- `2026-05-07` | `dpi.registry, digital.localgov, geopol.china` | L'Economie | Douala : digitaliser le cadastre, certificat de possession numérique | **★ CUD × Huawei MoU (28 Apr 2026): 200,000 land files to be digitised + a digital possession certificate.** First Huawei-Cameroon item in the wiki, and the first `geopol.china` CMR tag.

## Connectivity & sovereignty of infrastructure

- `2026-03-11` | `infra.connect, geopol.china, finance.new` | L'Economie | Extension fibre optique : 108 milliards FCFA empruntés à la Chine | **★ Decree n°2026/084 of 6 Mar 2026 — 1.35bn yuan (~108.4bn FCFA) China Exim Bank loan for Phase IV of the national fibre backbone.** The wiki's connectivity story is World-Bank-funded PATNUC; this shows the backbone itself is Chinese-financed, amid IMF high-risk-of-debt-distress warnings.
- `2025-10-24` | `infra.connect` | Le Jour | Télécommunication : Le réseau internet perturbé au Cameroun | **WACS submarine-cable incident (23 Oct 2025)**, post-electoral context; piece invokes the 2017 Anglophone shutdown. Wiki holds no CMR outage/shutdown material.
- `2025-05-16` | `infra.connect, gov.regional` | Le Jour | Sotel Tchad renégocie sa dette envers Camtel | **Chad's incumbent renegotiating debt to Camtel** — direct evidence for the wiki's held "Camtel as landlocked-neighbour gatekeeper" (Southwood) claim, from the Chadian side. `places: [CMR, TCD]`.
- `2026-06-12` | `infra.store` | Le Jour | Stratégie : Le Cameroun mise sur la souveraineté numérique | **Camtel's Zamengoe Tier III data centre** presented at SAGO 2026 by DG Judith Yah Sunday. The wiki's sovereign-cloud story is ST Digital/Douala only — this is a *state-owned* second pole.
- `2025-05-27` | `infra.store, infra.energy` | L'Economie | High tech : Les problèmes auxquels font face les Datacenters | CENADI data-centre study restitution — power/cooling constraints behind the sovereign-cloud ambition.
- `2026-06-15` | `infra.store, tech.innovate` | L'Economie | KMR Start-up HUB lance « Pyramid » | Local browser/mail/streaming suite hosted on Camtel + ST Digital, pitched against "<3% of world data stored in Africa". Grassroots counterpart to the state sovereignty push.
- `2026-03-04` | `finance.new, infra.store, tech.industry` | L'Economie | Douala Smart Port : la CNPS entre au capital d'Innovendi Data Technologies | State pension fund taking equity in a port-data company — new financing pattern for CMR digital infrastructure.

## AI strategy (SNIA) — a full documentary chain the wiki lacks

The wiki holds a single SNIA line (*"2025-07-16 — govt taps ST Digital"*). These nine items reconstruct the actual policy sequence and **re-date its origin to CONIA of 25–26 June 2024**:

- `2025-03-11` | `tech.ai, gov.policy` | L'Economie | Cabinet Danielle Moukouri retenu pour élaborer la SNIA | **★ The SNIA's actual author: a digital-law firm won it on public tender** — the wiki implies ST Digital leads the strategy. Different role, different date. See "contradicts/re-dates" below.
- `2025-06-26` | `tech.ai, gov.policy` | L'Economie | CONIA 2025 : une plateforme souveraine pour structurer l'écosystème IA | Pre-CONIA framing of a *sovereign* AI platform.
- `2025-07-07` | `tech.ai, gov.policy` | L'Economie | CONIA 2025 s'ouvre ce jour | CONIA 2nd edition opens (7–8 Jul 2025).
- `2025-07-09` | `tech.ai, gov.legislate` | Le Jour | Le défi d'une utilisation encadrée de l'IA | CONIA close-out; regulation framing. *(Exa dated this 2025-07-25 — 16 days late, the run's worst miss.)*
- `2025-07-17` | `infra.store, tech.ai` | L'Economie | Le Minpostel visite le Datacenter de ST Digital | **The underlying event behind the wiki's held "taps ST Digital" line** (visit 14 Jul 2025, Africa Digital Expo). Also carries ST Digital × ANINF **Gabon** MoU of 9 Jul 2025 → `places: [CMR, GAB]`; may warrant a deal entity.
- `2025-07-23` | `tech.ai, gov.policy` | L'Economie | SNIA : un cadre clair pour le futur numérique | The strategy's content, set out.
- `2026-02-18` | `tech.ai, gov.policy, gov.legislate` | Le Jour | Le Cameroun intensifie sa stratégie de gouvernance numérique | **Public-administration AI workshop with the ITU** (Cosmas Zavazava present); theme "IA responsable… bâtir la confiance numérique"; feeds recommendations into SNIA implementation. Newest state of the SNIA — wiki's is 18 months stale.
- `2025-02-18` | `tech.ai, tech.industry` | L'Economie | IA : quelles applications réelles pour des PME ? | Post-Paris-summit SME framing.
- `2026-06-10` | `tech.ai` | Le Jour | Plénière des évêques : l'Eglise catholique se préoccupe de l'IA | 51st CENC plenary — societal/religious contestation of AI, an actor class absent from the wiki.
- `2025-10-08` | `tech.ai` | Le Jour | Quand l'IA entre en campagne | `[P]` AI in the Oct 2025 presidential campaign.
- `2025-06-07` | `tech.ai, include.divides` | Le Jour | Pourquoi il faut démocratiser l'IA | `[P]` Opinion; access framing.
- `2025-11-24` | `tech.ai, tech.industry` | L'Economie | Camrail place l'IA au cœur de la sûreté et de la logistique | `[P]` Rail operator AI deployment (DIBIE, Digitrack).

## Cybersecurity

- `2025-12-09` | `infra.cybersec, gov.standards` | L'Economie | **★** DNSSEC et RPKI : l'ANTIC muscle la défense du cyberespace | **`.cm` zone cryptographically signed 8 Apr 2025**; national DNSSEC validation **56.60%**, Orange Cameroun **2.75%**, most operators **0%**; targets 98% DNSSEC / 100% RPKI by H1 2026; ICANN + AFRINIC present. Operator-level figures the held wire copies lack. Wiki's ANTIC entry is CIRT procurement only.
- `2026-06-16` | `infra.cybersec, gov.legislate` | Le Jour | Quand les lois sur la cybercriminalité menacent les libertés | **★ Civil-society critique (Paradigm Initiative et al.) that the 2010 cybercrime law is used against speech**; references the Oct 2025 election shutdown. The wiki treats cybersecurity purely as capability-building — this is the rights-side counterweight.
- `2025-02-13` | `infra.cybersec` | Le Jour | Plus de 19 millions de menaces identifiées et bloquées en 2024 | `[P]` ANTIC 2024 threat figures — a dated prior to the wiki's held "32,500 complaints in 2025".
- `2025-11-17` | `infra.cybersec, dpi.pay` | L'Economie | L'ANTIC et The Change Engine préparent la Fintech aux cyber-risques | `[P]` ANTIC × private fintech cyber-readiness.
- `2025-12-23` | `dpi.govtech, finance.new, infra.cybersec` | Le Jour | Un emprunt de plus de 39 milliards FCFA pour la Vidéosurveillance Urbaine | **XAF39bn borrowed for urban video-surveillance** (decree 17 Dec 2025) — state surveillance infrastructure, wholly absent from the wiki.

## Payments & fintech

- `2025-05-02` | `dpi.pay` | Le Jour | Mobile money : le lancement de "Blue Money" annoncé | **Camtel enters mobile money** (announced 1 May 2025) — state operator into a duopoly market.
- `2025-12-23` | `dpi.pay, finance.mou` | Le Jour | Camtel – Ethio Telecom : alliance stratégique pour Blue Money | **MSA with Ethio Telecom (signed 4 Dec 2025)**; "African solutions to African problems" framing. Twins a held Biometric Update item; kept (different outlet, richer detail). *See date caveat below.*
- `2026-03-30` | `dpi.pay, dpi.govtech` | L'Economie | Le Cameroun se dote d'un outil de paiement douanier digital | Digital customs-payment tool.
- `2025-10-20` | `dpi.pay, gov.regional` | Le Jour | Gimacpay franchit 600 milliards FCFA de transactions | `[P]` **CEMAC regional switch volumes** — the wiki has no GIMACPAY material.
- `2025-02-21` | `dpi.pay, finance.new, tech.innovate` | L'Economie | Digital Africa investit dans la fintech camerounaise Futa | French seed fund into a Cameroonian fintech.
- `2025-10-17` | `dpi.pay, tech.industry` | L'Economie | Trade Finance : bataille entre banques et fintechs locales | Trade-finance market survey (AccessTrade, REasy, Ovamba). Thin-ish digital angle — flagged for the human's promotion call.
- `2026-03-12` | `dpi.pay, tech.ai, dpi.id` | L'Economie | L'IA pilote 70 % des fraudes biométriques en Afrique | `[P]` Smile ID data (9 Mar 2026) — AI-driven biometric fraud; bears on the CNI/KYC stack.
- `2026-06-23` | `dpi.pay, tech.innovate` | Le Jour | Momo Helep pour révolutionner la trésorerie des PME | `[P]` SME treasury product.

## E-government & data exchange

- `2026-05-13` | `dpi.govtech` | L'Economie | Digitalisation fiscale : la DGI opère sa mue | `[P]` Tax-administration digitisation; closes on "souveraineté financière".
- `2026-05-08` | `dpi.govtech` | Le Jour | Prestations consulaires : plus de 540 mille visas délivrés en trois ans | **e-Visa volumes since the 30 Apr 2023 launch** — pairs with the Impact Palmarès contract above.
- `2025-04-10` | `dpi.govtech, capacity.training` | L'Economie | Garoua : des responsables du Mintp formés à RF-Etrust | Road-fund e-trust platform rollout (workshop 8–9 Apr 2025).
- `2025-07-07` | `dpi.govtech, capacity.training` | L'Economie | Mintp : responsables outillés à la plateforme RF-eTrust | Same programme, Douala — distinct event, will cluster at lint #7.
- `2025-12-19` | `dpi.exchange, digital.localgov, data.statistics` | L'Economie | Gérer les données sur l'urbanisation : gestion et interopérabilité | `[P]` **Urban-data interoperability for inclusive cities** (MINHDU/UN-Habitat framing) — a `dpi.exchange` thread the wiki lacks for CMR.
- `2026-05-11` | `gov.legislate, infra.connect` | L'Economie | Le Cameroun veut s'inspirer du modèle nigérian pour moderniser sa régulation | `[P]` Regulatory borrowing from Nigeria. `places: [CMR, NGA]`.
- `2026-06-09` | `finance.mou, tech.industry` | L'Economie | Yaoundé plaide pour un partenariat technologique à Séoul | `[P]` Korea–Africa ministerial. *(No `geopol.*` slug exists for Korea — see issue below.)*

## Policy, statistics & open data

- `2025-04-08` | `gov.policy, include.divides` | L'Economie | Minette Libom Li Likeng : « un numérique au service de tous » | `[P]` **★ Full National Assembly speech by the Minpostel.** Content-rich: **Loi n°2024/017 of 23 Dec 2024 on personal data protection**, Loi n°2023/009 online child-protection charter, PATNUC ($100m WB), 87% mobile / ~46% internet penetration, 12,000 km backbone. The wiki records only *draft* data-protection bills (Nov 2024) — this names the enacted law.
- `2026-03-11` | `data.statistics, data.satellite, digital.rural, dpi.pay` | L'Economie | Recensement 2026 : outils numériques et satellitaires | **★ 4th RGPH, first since 2005**: 24 Apr–29 May 2026, 32,059 enumerators, smartphones + satellite imagery + sampling, coupled with the agricultural census; budget cut to 13.28bn FCFA (from 64bn); MTN/Orange mobile money to pay enumerators (deal 4 Mar 2026). Feeds electoral maps and budget allocation.
- `2025-09-19` | `data.open, data.statistics` | L'Economie | Open SDG : une plateforme pour le suivi des ODD | **INS Open SDG platform launched 17 Sep 2025** with UNECA — the wiki has no `data.open` material for CMR.
- `2026-03-10` | `dpi.mis, gov.policy, dpi.exchange` | L'Economie | Un plan stratégique pour la santé numérique 2026–2030 | **★ PSNSN: ~29bn FCFA / $51.3m, 8 axes, prior plan scored 1.8/5.** Directly answers the wiki's held "digital health gap (2025 study)" — this is the state's response.
- `2026-04-16` | `data.open` | L'Economie | La société civile de l'Est mobilisée pour le budget citoyen 2026 | `[P]` Fiscal-transparency/open-budget angle. Borderline — flagged for the human.

## Connectivity divides & skills

- `2025-10-01` | `data.satellite, digital.rural` | Le Jour | Les données météorologiques peuvent booster la production agricole | `[P]` Agro-meteorological data for farmers — rural data capture.
- `2026-05-08` | `capacity.training` | Le Jour | Télécommunications : plus de 700 jeunes talents intégrés | Camtel youth intake (1 May 2026).
- `2025-05-28` | `tech.ai, tech.innovate` | Le Jour | L'IA au cœur de la semaine de l'innovation numérique | Digital Innovation Week launch (27 May 2025).
- `2025-06-30` | `tech.innovate` | L'Economie | Semaine de l'innovation numérique : les meilleurs projets primés | Awards (27 Jun 2025).
- `2025-07-02` | `capacity.training, tech.ai` | Le Jour | Région de l'Ouest : 20 jeunes formés à l'IA | `[P]`
- `2025-07-23` | `capacity.training, tech.ai` | L'Economie | SNK IA Challenge 2025 : 100 jeunes formés | Training ran 16 Jun–18 Jul 2025.

---

## Caveats for the human

- **`[P]` = `date_source: proxy` (16 items).** Body gave no publication anchor; the page date was retained only where body evidence was consistent with it. Not presented as precise.
- **Camtel–Ethio Telecom (`2025-12-23`)** — the only genuine date doubt. Body's hard anchor is the signing on **4 Dec 2025**, ~19 days before the page date. The author's adjacent pieces are AFCON items (from 21 Dec), which corroborates late December. Kept as page date; worth a check at ingest.
- **ANTIC threat count (`2025-02-13`)** — inferred next-day edition from the paper's demonstrated pattern rather than Exa's 2025-02-18, given Exa's established lateness bias. Marked proxy; true date lies in 12–18 Feb 2025.
- **No PR-wire/advertorial** found on either domain — both ran staff bylines. No `provenance_flag: pr-wire` set.
- **Same-event twins deliberately kept** (never a sweep-stage drop): ANTIC DNSSEC and Impact Palmarès each twin a held/staged trade-journal item; the L'Economie versions carry figures the wires lack. Lint #7 adjudicates with full text.
- **`leconomie.info` is NOT thin** — it out-produced Le Jour on digital governance 33:22 and supplied most of the highest-value finds. The volume note's expectation does not hold.

---

## Part 2 — Trade journals

# CMR — Phase-2 sweep, trade-journal half

`sweep_batch: CMR-2026-07-17` · window **2025-01-01 → 2026-07-17** · 8 fixed journals, recipes J1–J2
(wearetech.africa run in both EN and FR). Drop log: `sweep/drop-log-CMR-journals.csv`.

Filenames are outlet-suffixed to avoid collision with the concurrent newspaper half.

**Date/byline discipline:** every `published` and byline below was established from the **fetched page**,
never from Exa metadata. Exa's bylines on **techafricanews.com** were wrong on **5 of 5** items checked
in the first run; the completion pass checked 13 more and refined the picture (see Flags 1 and 9).
All staged items across both runs are `date_source: source`, `date_precision: day` — **no proxy dates
were needed for this country**.

**Status: COMPLETE.** Two runs, **72 items staged** (30 + 42). The first run's residual list is cleared —
see "Identified in-window, NOT staged this run" at the foot, which is now empty but for one logged
`fetch-failed`.

---

## Staged — first run (30)

| published | topics | source | title | why it's new |
|---|---|---|---|---|
| 2025-01-27 | dpi.id, dpi.registry, gov.legislate, include.access, digital.localgov | Biometric Update | New civil registration law refocuses Cameroon's push for SDG 16.9 legal ID target | **Dates Law 2024/016 precisely: Biya enacted it 23 Dec 2024, 130 sections.** Wiki holds the Nov-2024 *draft* stage only; this is the enactment plus the IDP re-issuance mechanism. |
| 2025-03-05 | dpi.id, gov.legislate, include.access | Biometric Update | Cameroonians ecstatic as issuance of new national ID card takes off | Supplies the **missing legal step**: issuance began 3 Mar 2025 only after a 28 Feb 2025 Biya decree; decree also covers residence, refugee and disability cards. |
| 2025-05-26 | infra.store, infra.energy, infra.connect, gov.policy, gov.standards, infra.capacity, data.statistics | ITWeb Africa | Cameroon pursues digital independence via data centres | **CENADI** is an entirely new actor for the wiki. Its 3-year data-centre study is the evidentiary base under the sovereignty rhetoric — and it is damning (uncertified small facilities, weak power, thin bandwidth). |
| 2025-06-23 | dpi.pay, gov.legislate, tech.industry, include.access, gov.regional | Connecting Africa | Flutterwave expands further with license in Cameroon | First BEAC-licensed fintech entry in wiki's CMR holdings; licence obtained *via Ecobank technical partnership* — a regional regulatory-access pattern. |
| 2025-06-30 | dpi.govtech, dpi.exchange, gov.policy, finance.new, data.open | Biometric Update | Cameroon unveils upgraded digital procurement system with $12M Korean grant | **COLEPS + KOICA** — a wholly unheld govtech track. Korea is a donor the wiki does not yet carry for CMR; further $12.5m due 2026 for interoperability. |
| 2025-07-08 | tech.ai, gov.policy, gov.legislate, gov.standards, data.open, dpi.exchange, infra.store, infra.energy, capacity.training, capacity.research, tech.innovate, gov.regional | TechAfrica News | Cameroon Unveils 2040 AI Roadmap Anchored on Seven Strategic Pillars | **The SNIA's actual contents.** Wiki has only "SNIA exists, ST Digital helping". This gives 7 pillars: AI Authority, Presidential Council, government Data Lake, Open Data policy, sovereign LLM "GPT Cameroon", 15 solar-powered edge nodes, Central Africa AI network. |
| 2025-07-08 | digital.localgov, dpi.govtech, dpi.exchange, dpi.registry, dpi.id, gov.policy, capacity.training | Biometric Update | Cameroon unveils plan to modernize local digital govt services | Digital Master Plan for the 394 decentralised authorities; interoperability + territorial information systems. Predecessor context for DIGI-CoR below. |
| 2025-07-10 | tech.ai, capacity.training, capacity.research, gov.policy, gov.protect, include.divides, infra.store, infra.connect, digital.rural | We Are Tech Africa | Cameroon Eyes 60,000 AI Experts Trained by 2040, But Digital Barriers Remain | SNIA targets quantified (60k specialists, 40% women, 12k jobs, 0.8–1.2% GDP) **plus a dated ITU benchmark: 46.3/100, 30th of 42 African states, below the 56 average.** Also asserts a data-protection law was *adopted* — see Flags. |
| 2025-07-11 | gov.legislate, gov.standards, infra.connect, include.access, tech.industry | Telecom Review Africa | Cameroon Fines Orange and MTN USD 4.6 Million for Poor Service and Regulatory Breaches | First evidence of **ART actually enforcing**: CFA2.6bn total (Orange 1.5bn + 217m VAS; MTN 1.1bn) off Apr–May 2024 inspections. Wiki lists ART as "mentioned, not hubbed". |
| 2025-08-07 | dpi.id, include.access, include.divides, digital.rural | Biometric Update | New biometric ID card center opens for citizens in northern Cameroon | Garoua = **second** Augentic production centre (after Douala, Mar 2025); ~2,000 cards/day; 15 security features. Adds IOM data collection and a CMR–UNHCR refugee biometric ID track. |
| 2025-11-28 | infra.connect, infra.store, infra.cybersec, tech.industry, finance.new, dpi.govtech | ITWeb Africa | Cameroon's Douala Port seals 5G agreement | Private 4G/5G + IoT + **edge-cloud** at Cameroon's busiest port, vendor-financed (INNOVENDI pays PAD, not vice versa). A sovereignty-relevant inversion of the usual vendor model. |
| 2025-12-03 | finance.new, infra.connect, tech.industry, infra.energy | ITWeb Africa | Cameroon gets AfDB funding to boost telecoms sector | $29m AfDB trade-finance facility via CCA-Bank, part earmarked for telecom equipment imports. Notes CMR has **some of the slowest internet speeds on the continent**. |
| 2025-12-08 | infra.connect, infra.store, dpi.pay, tech.industry, finance.mou, include.access, gov.regional | Biometric Update | Ethio Telecom to boost Cameroon's digital connectivity, inclusion drive | **South–south vendor substitution.** Camtel takes its playbook from Ethio Telecom, not a Western/Chinese vendor — incl. building a **national cloud to digitize government services**. Yah Sunday: "Africa does not need to import all its models." |
| 2025-12-10 | infra.cybersec, infra.connect, gov.standards, infra.capacity | TechAfrica News | Cameroon Aims for 98% DNSSEC Validation Across National Internet by 2026 | Wholly new track. **.cm DNSSEC-signed; validation at 56.60% (Dec 2025)**; targets 98% + full RPKI by mid-2026. ICANN/AFRINIC technical support. |
| 2025-12-10 | dpi.id, dpi.govtech, gov.standards, finance.mou, tech.industry | Biometric Update | Impact Palmarès revises digital visa deal with Cameroon, gets secure document printing contract | **A second foreign ID-vendor lock-in the wiki misses entirely** — Ivorian firm on a 10-yr (Apr 2022) consular contract, now also the national printing press. **411,439 visas / FCFA46.8bn (~$82.9m) to 30 Sep 2025.** |
| 2026-01-12 | dpi.registry, dpi.id, digital.localgov, include.access, gov.legislate | Biometric Update | Cameroon councils begin issuance of digital birth certificates | Second-outlet account of the UNDP/Denmark rollout the wiki holds; adds that **digital birth certificates carry the same legal worth as physical ones** under the 2024 law. |
| 2026-01-22 | infra.connect, finance.new, tech.industry, include.divides, include.access | TechAfrica News | CAMTEL and CBC Secure 44.884 Billion FCFA Financing for Cameroon Mobile Network Expansion | Names the deal the wiki has as a bare "Jan 2026 US$81.2m CBC package": signed 21 Jan 2026, **44.884bn FCFA**, phase 1 of the Mobile Network Expansion project. See Flags — the figures need reconciling. |
| 2026-01-27 | dpi.govtech, tech.innovate, finance.new, include.access, gov.protect | TechAfrica News | Cameroon Launches PROXIGAB: National Digital Platform to Support SMEs and Youth Entrepreneurs | New national platform (launched 22 Jan 2026) linking SMEs to finance; a govtech/innovation strand absent from the hub. |
| 2026-03-09 | infra.connect, geopol.china, finance.new, include.divides, gov.policy | ITWeb Africa | Cameroon seeks $195 million to expand optic fibre backbone | **The largest single China exposure in CMR holdings.** Biya decree 6 Mar 2026; China EXIMBANK ¥1.35bn (~$195m) for fibre Phase IV, +4,000km on an existing 12,000km Camtel network; Huawei-linked. |
| 2026-03-23 | dpi.govtech, dpi.registry, dpi.exchange, gov.legislate, infra.connect, include.access | We Are Tech Africa | Cameroon Launches Digital Customs Platform for Mobile Devices | Names the platform (**CAMCIS**) and quantifies the collapse it answers: device customs revenue fell from ~CFA2bn/month in the 2000s to **CFA100m in 2025**. |
| 2026-03-30 | infra.connect, tech.industry, include.access, dpi.govtech | ITWeb Africa | Camtel launches tender for 2.3 million SIMs | **Dated market-share split: Camtel 2.67%, Orange 50.08%, MTN 47.2%.** Sharpens the wiki's Southwood framing — Camtel's profitability is wholesale/landing-station, not retail mobile, where it is negligible. |
| 2026-05-22 | dpi.registry, dpi.exchange, gov.legislate, infra.connect, include.access, dpi.govtech | ITWeb Africa | Cameroon blocks undeclared mobile devices | IMEI-gated network access enforced from 25 May 2026. **51,000+ devices declared, >CFA200m raised; projection CFA25bn/yr vs CFA1.3bn before.** A device-registry layer the wiki has no trace of. |
| 2026-05-25 | dpi.registry, dpi.exchange, gov.legislate, infra.connect, include.access, dpi.govtech | Connecting Africa | Cameroon orders telcos to block unregistered mobile devices | Same event, different outlet — **not a duplicate**: adds the 1 Apr 2026 order date, operator liability for unpaid duties, and Motazé's ~700,000 uncleared connections in Apr 2026. |
| 2026-06-04 | digital.localgov, dpi.govtech, dpi.exchange, infra.connect, include.divides, gov.policy, capacity.training, finance.new, infra.cybersec | We Are Tech Africa | Cameroon Launches $163 Million Push to Digitize Local Governments | **DIGI-CoR — a CFA92bn ($163m) programme absent from the wiki**, distinct from PATNUC. Hard baseline: **68.5% of local authorities lack structured computer networks; 57.8% have no digitally trained staff.** |
| 2026-06-11 | dpi.id, dpi.mis, dpi.pay, include.access, finance.mou | Biometric Update | Cameroon expands education digitalization with student digital ID program | Sectoral ID vertical: MTN × Ministry of Secondary Education, student ID tied to academic/financial/disciplinary records **and to MoMo school-fee payments**. Identity-as-payment-rail, privately operated. |
| 2026-06-12 | infra.store, gov.protect, dpi.govtech, tech.industry | Tech Review Africa | CAMTEL highlights digital sovereignty and data protection at Government Action Fair in Yaoundé | **PR-wire — flagged.** Value is the claim itself: CAMTEL positions the **Zamengoe Data Centre** ("largest in Central Africa", Tier III) as the government-data sovereignty asset. Primary needed at ingest. |
| 2026-06-19 | infra.cybersec, infra.connect, gov.standards, infra.capacity, tech.industry | TechAfrica News | ANTIC Drives Push for Secure and Sovereign Internet at National DNS Forum in Cameroon | 6th National DNS Forum (17–19 Jun 2026): target **raised to 100% DNSSEC validation by end-2026**, plus an explicit **IPv4→IPv6** push framed as traceability + cybersecurity. |
| 2026-07-01 | dpi.id, dpi.registry, digital.localgov, include.access, geopol.eu | Biometric Update | Cameroon introduces digital ID system for taxi owners, drivers | Mandatory Yaoundé taxi digital ID (3 Jul–5 Oct 2026), QR-coded, keyed to the national ID card, **GIZ-supported**. Sectoral ID spreading to municipal level. |
| 2026-07-08 | infra.store, geopol.usa, tech.ai, infra.connect, finance.mou, tech.industry | TechAfrica News | CAMTEL Explores Digital Transformation Partnership with Amazon Web Services | **First US-hyperscaler contact in CMR holdings** — AWS Africa + US Embassy ICT rep at the table, on satellite, cloud and AI. Sits in direct tension with the Zamengoe/Ethio Telecom sovereign-cloud line. |
| 2026-07-16 | digital.localgov, dpi.govtech, dpi.registry, capacity.training, include.divides, data.statistics | TechAfrica News | Cameroon Urges North West Councils to Accelerate Digital Transformation | Freshest item in the window. **Only 48.6% of North West councils have functional websites; ANTIC has reached 230 councils (~64% nationally).** Ground-truth against the DIGI-CoR ambition. |

---

## Staged — completion pass (42)

Second run, `sweep_batch: CMR-2026-07-17`, same window. Clears the residual list below: **43 candidates
→ 42 staged, 1 dropped** (`fetch-failed`). Total for CMR journals: **72 staged**. All URLs re-checked
against `sweep/held-urls.txt` (`grep -F`) before staging — **0 hits, 0 already-held**.
**No proxy dates were needed in this pass either**: every `published` is `date_source: source`,
`date_precision: day`, established from the fetched page body.

| published | topics | source | title | why it's new |
|---|---|---|---|---|
| 2025-01-22 | tech.ai, gov.policy, gov.protect, infra.cybersec, capacity.training, tech.innovate, finance.new, data.statistics | We Are Tech Africa | Cameroon Unveils Plans for National Artificial Intelligence Strategy | **Earliest point on the SNIA timeline in the corpus** — six months before the July consultations, strategy only "under development", no targets yet. Adds a dated benchmark: **AFD AI Investment Potential Index 30/100 (Jan 2025)**, level with Angola, Guinea, Ethiopia, Burkina Faso. |
| 2025-01-31 | dpi.id, dpi.registry, gov.legislate, include.access, include.divides, data.statistics, capacity.training | Biometric Update | Cameroon, Gabon, Uganda tackle biometric voter registers' integrity, engagement | **The hardest inclusion-harm evidence in the CMR sweep.** ~**12,000 voters struck** from the register in a Dec-2024 clean-up over **rejected fingerprints**; Kamto alleges exclusion by design; kits **in use since 2012** blamed for poor capture. Antecedent of the held May-2025 ELECAM kit purchase. CMR+GAB+UGA. |
| 2025-02-20 | dpi.id, dpi.govtech, dpi.pay, include.access, include.divides | We Are Tech Africa (FR) | Le Cameroun numérise la procédure d'obtention de la carte d'identité nationale | **Distinct from the EN piece, and better.** Names the platform (**www.idcam.cm**), the **fee (10,000 FCFA / ~$16)** and regional enrolment from **24 Feb 2025**. The fee is what the held 2025-06-24 lawmakers'-criticism item is objecting to. |
| 2025-02-21 | dpi.id, dpi.registry, dpi.pay, dpi.govtech, gov.protect, gov.legislate, include.access, data.statistics | We Are Tech Africa | Cameroon: New National ID Paves Way for Digital Identity System | Dates **online pre-enrolment from 17 Feb 2025**, filling the gap between Feb go-live and 3 Mar issuance. Mostly prospective analysis — flagged in-file. Error at source: cites "ISO/IEC 9303" for what is an **ICAO** standard. |
| 2025-02-27 | dpi.pay, gov.legislate, tech.industry, tech.innovate, include.access, finance.new, gov.policy | We Are Tech Africa | Kiro'o Games CEO: Payment Agregation Monopoly Threatens Cameroon's Digital Economy | **The sharpest critical voice in the whole CMR sweep** — the only item showing a CMR digital-policy decision harming a CMR firm. State grants **InTouch an exclusive** over online-gaming payment aggregation; "online games" sweeps in video-game studios; Kiro'o given **3 weeks** to switch and loses **10+ days of all revenue**. |
| 2025-04-10 | gov.legislate, tech.industry, finance.new, infra.connect, include.divides, include.access, dpi.pay, capacity.literacy | Tech Review Africa | MTN Cameroon presents 2025 strategic investment plan to telecom regulator | **PR-wire — flagged.** Thin. Value is cadence: dates the start of the annual MTN–ART engagement ritual that recurs in Apr 2026. |
| 2025-05-16 | infra.connect, gov.regional, finance.mou, dpi.exchange, include.access, include.divides, digital.rural | Tech Review Africa | Cameroon and Chad forge digital alliance through cooperation agreement | **Origin of the Chad–Cameroon fibre thread**, 9 months before the Feb-2026 item. Nana-Mbéré section promised "within fourteen days"; >100 Gbps pricing revised; CEMAC free roaming. **The 14-day claim did not hold** — read against 2026-02-09. |
| 2025-05-26 | infra.store, gov.policy, tech.ai, infra.energy, infra.connect, gov.standards, data.statistics | TechAfrica News | Cameroon Unveils Key Study on Data Center Ecosystem and Digital Sovereignty | Third CENADI account. Uniquely gives the report's length (**269 pages**), CENADI's Director (Chantal Marguerite Mveh) and Motazé as chair. Thin otherwise — ITWeb has the findings. Possible lint #7 call. |
| 2025-06-17 | infra.connect, infra.energy, tech.industry, finance.new, finance.mou, include.access | ITWeb Africa | MTN Cameroon works with Camusat to expand network | Carries the capex figure the hub lacks: **MTN pledged $225m over three years**, fintech singled out. Substitutes for the unfetchable TechAfrica Camusat item. |
| 2025-06-23 | dpi.pay, dpi.govtech, data.open, capacity.literacy, include.access, tech.innovate, gov.legislate | ITWeb Africa | Cameroon boosts financial literacy with new digital platform | **BankCompar** (launched 20 Jun 2025 by CNEF) — a state **price-transparency platform aimed at banks**, a different govtech shape from the rest of the CMR holdings. |
| 2025-07-08 | tech.ai, gov.policy, gov.legislate, capacity.training, capacity.research, tech.innovate, gov.protect, include.divides | ITWeb Africa | Cameroon discusses national AI strategy | Third SNIA account; **corroborates** the 60k/40%-women/12k-jobs/0.8–1.2% GDP targets independently and adds **5 AI centres of excellence, 4,000 trained/yr, a dozen local AI solutions, an AI focal point per ministry**. Frames SNIA as a **draft under consultation** — qualifies "Unveils". |
| 2025-07-24 | dpi.pay, tech.industry, tech.innovate, include.access, infra.connect, finance.mou | ITWeb Africa | MTN, Yango partner on dedicated SIM offering to drivers | States plainly that **Yango operates under Russian company Yandex** — the only such attribution in the CMR corpus. Taxonomy has no Russia `geopol.*` slug; flagged, not forced. |
| 2025-09-02 | infra.connect, tech.industry, include.access, include.divides, dpi.pay, digital.rural, tech.ai | TechAfrica News | Cameroon's Camtel Expands Fiber Network and Fixed Telephony Services | **180,000 fiber ports deployed, target 230,000 by end-2025**; 4G/LTE in 160+ municipalities. Calls the payment product "Bluepony" — see Flags. |
| 2025-10-09 | tech.innovate, capacity.research, capacity.training, infra.energy, data.statistics | We Are Tech Africa | Cameroon Launches Climate Innovation Hub to Advance Green Tech | Thinnest item staged. Durable payload is a GCA reference figure (**4–10% of GDP by 2050**). **CAMCIH ≠ CAMCIS** — acronym collision flagged in-file. Reasonable reject at the gate. |
| 2025-11-10 | gov.standards, gov.legislate, infra.cybersec, include.access, tech.industry, dpi.registry | TechAfrica News | Cameroon Strengthens Digital Safety Campaign with Device Certification Guidelines | **Pre-enforcement baseline for the IMEI thread**: at this date the regulator is exhorting consumers, not blocking devices. |
| 2025-12-05 | infra.connect, infra.store, dpi.pay, tech.industry, finance.mou, gov.regional, dpi.govtech, include.access | Telecom Review Africa | Ethio telecom and CAMTEL Sign Deal to Drive Cameroon's Digital Transformation | **The agreement behind the held Biometric Update item, and more specific**: names the instrument (**MSA**) and four workstreams — Blue Money fintech, **Sovereign Government Cloud architecture**, 4G/5G, digital culture. PM frames it South–South. Settles the Blue Money / "Bluepony" naming. |
| 2025-12-09 | data.statistics, infra.connect, tech.industry, dpi.pay, gov.legislate, finance.new, include.access, infra.store | TechAfrica News | Cameroon's Telecom Sector Grows 18% in 2024, Driven by Mobile and Digital Services | Secondary account of **ART's 2024 Annual Observatory** (capture the Observatory as a `resource`). Corroborates Orange>MTN market share and Camtel's ~12,000 km fibre. 2024: revenue CFA1,022bn (+18%), investment CFA194.5bn (+35%), **3.16% of GDP**, 31.5m mobile subs, MFS revenue **+146%**. |
| 2025-12-16 | infra.connect, infra.store, tech.industry, finance.mou, gov.regional, capacity.training | Telecom Review Africa | Ethio telecom Team Concludes Strategic Visit to CAMTEL | **Update**, not duplicate — MSA moves to execution. Independently corroborates **Zamengoe as a real, tourable facility**; does *not* corroborate the "largest in Central Africa"/Tier III claims (Flag 6 stands). |
| 2025-12-17 | infra.store, gov.protect, dpi.govtech, infra.energy, tech.industry, infra.cybersec | Tech Review Africa | BEAC National Director visits CAMTEL Data Center | **PR-wire — flagged.** Small item, real significance: **the CEMAC central bank is inspecting Zamengoe with a view to hosting**. Would be a six-state data-sovereignty development, not just CMR's. Dec 2025 is when the Zamengoe pitch goes to institutional buyers. |
| 2026-01-07 | gov.legislate, gov.standards, infra.connect, infra.capacity, include.access, gov.policy | TechAfrica News | Cameroon Strengthens Telecom Oversight as TRB Receives QoS Monitoring Platforms | World Bank/PATNUC hands the regulator **QoS monitoring platforms** — the instrumentation behind the enforcement the wiki holds as the Jul-2025 fines. Establishes **TRB = ART** (same DG, Zoo Zame) — do not spawn two regulator entities. |
| 2026-01-15 | dpi.mis, dpi.govtech, infra.store, infra.connect, gov.protect, finance.mou | Tech Review Africa | CAMTEL, Baccalaureate Office partner to digitalise and secure Cameroon's national examinations | **PR-wire — flagged.** Twin of the TechAfrica item below, 4 days earlier, dated to the signing. Likely lint #7 relevant-duplicate — recommend keeping the TechAfrica copy (non-wire, bylined) over this one. |
| 2026-01-19 | dpi.mis, dpi.govtech, infra.store, infra.connect, gov.protect, finance.mou | TechAfrica News | CAMTEL Partners with Cameroon Baccalaureate Office to Digitize National Exams | Exam data into the **sovereign national cloud** — an EMIS-shaped vertical the hub lacks. CAMTEL as technology partner to public administration. |
| 2026-01-21 | infra.cybersec, infra.capacity, dpi.govtech, gov.policy, finance.new, data.statistics | TechAfrica News | Cameroon Strengthens Cybersecurity with Advanced Systems at National CIRT | Twin of the held 2026-01-27 ANTIC CIRT item, **earlier and harder**: dates the handover (**20 Jan 2026**), values it (**FCFA 735m+**), names **PATNUC/World Bank** as funder, and adds CIRT workload stats (200 GB/day; **32,500 legal requisitions in 2025, +30%**; 8,502 vulnerabilities since Jan 2024; 6,416 fake accounts removed). |
| 2026-01-22 | finance.new, infra.connect, tech.industry, include.access, include.divides, dpi.govtech | Tech Review Africa | CAMTEL and CBC secure FCFA 44.88 billion financing for Mobile Network Expansion | **PR-wire — flagged. Bears on Flag 4 and probably resolves it**: the package is **syndicated**, with CBC as **Lead Underwriter / Lead Arranger / Collateral Agent** — so CFA44.884bn (phase 1, arranged) and the hub's "$81.2m CBC package" are plausibly different quantities, not a conflict. Still needs a primary. |
| 2026-02-09 | infra.connect, gov.regional, gov.legislate, finance.mou, include.divides, data.statistics | Connecting Africa | Chad tells operators to fast-track fiber link to Cameroon | **Digital sovereignty used to suspend an infrastructure MoU**: ARCEP Chad blocked the Apr-2025 Sotel–Airtel MoU over clauses "contrary to the principles of national digital sovereignty". Cameroon is Chad's **only** submarine-cable entry point. TCD internet penetration **13.2% (end-2025)**. |
| 2026-02-11 | capacity.research, capacity.training, gov.legislate, gov.policy, tech.industry, finance.mou | TechAfrica News | Cameroon Strengthens Digital Transformation with University and ART Partnership | **Academic Chair in Digital Governance** at Université de Yaoundé II — four years in negotiation. Regulator funding its own critical research base, with a steering committee explicitly preserving academic freedom. |
| 2026-02-24 | gov.regional, gov.legislate, gov.standards, infra.connect, dpi.pay, gov.protect, include.divides, digital.rural, data.satellite, data.statistics | Tech Review Africa | Cameroon's TRB participates in ARTAC's 10th Ordinary Session in Kinshasa | **The most consequential find of this pass.** A Central African **data-residency position in writing**: NGSO providers (**Starlink, OneWeb, Amazon Kuiper** named) to site **gateways inside ARTAC's jurisdiction**, meet operator-equivalent obligations, and **keep citizens' data on the continent**. Directly counterpoints the staged CAMTEL–AWS and CAMTEL–Avanti talks. Also: **free roaming mandated by 30 Jun 2026**; mobile internet **<30%** across much of Central Africa. |
| 2026-03-12 | dpi.pay, tech.industry, finance.mou, include.access, geopol.usa, infra.cybersec | Tech Review Africa | Visa and Afriland First Bank partner to expand digital payments in Cameroon | **PR-wire — flagged. First Visa entry in CMR holdings.** A US card network expanding card issuance and merchant acceptance, against holdings otherwise dominated by domestic/regional rails (MoMo, Blue Money, GIMACPAY, PAPSS). The tension is the point. |
| 2026-03-28 | infra.connect, tech.industry, infra.cybersec | Tech Review Africa | Camtel provides connectivity infrastructure for WTO Ministerial Conference in Yaoundé | **PR-wire — flagged.** Very thin. Durable payload: Cameroon hosted the **WTO's 14th Ministerial Conference** (Yaoundé, Mar 2026) with CAMTEL as connectivity provider. Reasonable reject at the gate. |
| 2026-03-31 | dpi.registry, dpi.exchange, dpi.govtech, gov.legislate, gov.protect, infra.connect, include.access | ITWeb Africa | Cameroon to unlock stalled mobile phone tax revenue | Supplies the **history** the IMEI thread lacks: a **2022 attempt collapsed under public resistance** when the burden fell on end users and operator-side collection proved unworkable. The 2026 design is a direct response. Analyst caveat: acceptance hinges on data-protection safeguards. |
| 2026-04-01 | dpi.registry, dpi.exchange, dpi.govtech, gov.legislate, infra.connect, include.access, infra.cybersec | TechCabal | Cameroon rolls out IMEI-based system to enforce import duties on mobile devices | Fullest account of the regime's **mechanics and legal basis**: **Article 6 of the 2023 Finance Law**, explicitly **not a new tax**. Adds **~$21.5m/yr** estimated leakage, **fiscal amnesty** pre-1 Apr 2026, roaming/temporary-admission exemptions, a **two-month** stock-regularisation window, vendor liability, and the officials' **"digital border"** framing. |
| 2026-04-02 | tech.industry, tech.innovate, dpi.pay, include.access, infra.connect | ITWeb Africa | Yango deepens Cameroon footprint | Platform-economy strand largely absent from the hub. Four years in-country, **~150 local fleet partners**, expanding into delivery, e-commerce and **fintech** — the fintech ambition is what matters against the held MoMo/GIMACPAY material. |
| 2026-04-09 | infra.connect, include.divides, digital.rural, tech.industry, finance.mou | TechAfrica News | CAMTEL Explores Satellite Partnership to Strengthen Connectivity in Cameroon | **CAMTEL × Avanti Communications** (8 Apr 2026), with the **UK High Commissioner** present. Second foreign satellite/cloud approach in 2026 alongside AWS — and squarely in the frame ARTAC wants regulated. |
| 2026-04-13 | gov.legislate, tech.industry, finance.new, infra.connect, include.divides | Tech Review Africa | MTN Cameroon engages regulator on strategy, investment and sector priorities | **PR-wire — flagged.** Same engagement as the ART Douala inspections below, with nothing that item lacks. **Likely lint #7 relevant-duplicate — recommend pruning** in favour of the TechAfrica account. |
| 2026-04-16 | gov.legislate, gov.standards, infra.connect, infra.energy, tech.industry, finance.new | TechAfrica News | Telecom regulator pushes for improved QoS and nationwide network coverage in Cameroon | ART field inspections, Douala, **13–14 Apr 2026**: Orange, MTN (IMS/VoLTE, 5G prep) and **IHS Cameroon — CFA9.3bn invested in 2025** on passive infrastructure, with energy named as the resilience constraint. |
| 2026-05-02 | tech.ai, tech.industry, tech.innovate, gov.protect, dpi.mis, data.statistics | Tech Review Africa | MTN Cameroon showcases AI-driven road safety solution at National Forum | **PR-wire — flagged.** A private operator building **AI driver-behaviour surveillance** (with Camtrack), reported with no safeguards regime stated. Third 2026 instance of a **privately-operated sectoral identity/monitoring vertical** (cf. student ID, taxi ID). The pattern is the finding. |
| 2026-05-10 | capacity.training, tech.innovate, include.divides, digital.rural, tech.industry, capacity.research | Tech Review Africa | Orange Cameroon launches sixth digital center in Maroua | **PR-wire — flagged.** The **Far North** is the point: state ID apparatus (Garoua) and a private operator's CSR arm are both extending north in 2025–26. Company-reported 481 trained, 50 certifications. |
| 2026-05-13 | infra.store, infra.cybersec, tech.industry, gov.protect, capacity.training, dpi.govtech | We Are Tech Africa | Anthony Same Expands African Datacenter Network to Drive Digital Transformation | **Profile, not a development** — route to the `st-digital` entity + a new `anthony-same` person, don't compile as a source. ST Digital: founded 2017, CMR/GAB/COG/CIV, **500+ clients, 3 certified datacenters** (unspecified certification — do not harden). The African-owned counterweight to state and hyperscaler; note the founder's Microsoft/SAP career. |
| 2026-05-29 | infra.energy, infra.store, dpi.mis, dpi.govtech, finance.new, data.statistics, include.access | We Are Tech Africa | Cameroon begins rollout of 20,000 smart meters | In scope as **data infrastructure**: AMI is population-scale automated capture, and a **data centre is under construction in Douala** to hold the meter data. PRSEC 2024–26 ~**CFA400bn ($710m)**; WB CFA180bn + AfDB CFA48bn. **Unverified: calls the utility "Socadel (formerly Eneo)"** — check before recording a rename. |
| 2026-06-04 | capacity.training, tech.industry, finance.mou, capacity.research | TechAfrica News | Cameroon: CAMTEL and Government Launch Initiative to Strengthen Youth Skills in Telecoms | CAMTEL × Ministry of Higher Education MoU (3 Jun 2026). Likely the same programme as the held Le Jour "700 young talents" item — treat as an update on that thread. |
| 2026-06-09 | dpi.registry, dpi.exchange, gov.legislate, dpi.govtech, infra.connect, include.access, tech.industry | Connecting Africa | Cameroon warns telcos to block illicit devices or face tax penalties | **Materially qualifies the held 2026-05-22 ITWeb account.** The 25 May blocking deadline was **not met**: Motazé wrote to MTN/Orange over their **inaction**; operators had objected jointly that technical, operational and legal prerequisites were unmet and warned of competitive distortion. Motazé clarifies blocking targets **IMEIs, not SIMs**. |
| 2026-07-09 | dpi.pay, dpi.exchange, gov.regional, finance.mou, include.access, tech.industry | TechAfrica News | BEAC Joins PAPSS to Strengthen Cross-Border Payments in Central Africa | **BEAC (Yaoundé-HQ'd) joins PAPSS** — PAPSS's entry into Francophone Africa via a regional central bank serving all six CEMAC states (72m people). PAPSS now **28 countries, 190+ banks/fintechs, 16 switches**; BCEAO pilot to follow. Operationalisation runs to end-2026. CMR + XCA. |

---

## Flags for the ingest pass

1. **Exa byline fabrication on techafricanews.com — confirmed, 5/5 wrong.** Exa attributed items to
   "Jennifer Onyeagoro"/"Joyce Onyeagoro"; the fetched pages read **Joyce Onyeagoro** (DNS forum,
   DNSSEC), **Editorial Team** (AI roadmap, PROXIGAB), **Kay-Lyne Wolfenden** (CAMTEL–AWS),
   **Akim Benamara** (CAMTEL–CBC). One page (North West councils) served no byline at all, so none is
   asserted. Every staged file carries an HTML comment recording the discrepancy. **Do not trust Exa
   bylines for this domain.**
2. **Re-dates held material — Law 2024/016.** The wiki dates the civil-registration law only to the
   Nov-2024 *draft*. The 2025-01-27 item fixes enactment at **23 Dec 2024**, 130 sections.
3. **Possible contradiction — data-protection law status.** The 2025-07-10 We Are Tech item refers to
   "the recent adoption of a data protection law" (as of Jul 2025). The wiki holds the data-protection
   bill as a **draft** laid before parliament in Nov 2024, and `CMR.md` does not record adoption.
   Either the wiki is stale or We Are Tech is loose. **Worth a contradiction item** —
   no staged source independently confirms adoption.
4. **Figures to reconcile — CAMTEL/CBC.** `CMR.md` records a "**Jan 2026 US$81.2m** CBC package";
   the 2026-01-22 item reports **44.884bn FCFA** (~$74m) signed 21 Jan 2026 for MNE phase 1. Same
   period, same counterparties, different magnitude — may be phase-1 vs total facility rather than a
   true conflict. Reconcile at ingest rather than overwriting.
5. **DNSSEC target moved.** 98% by mid-2026 (Dec 2025) → 100% by end-2026 (Jun 2026). Supersession,
   not contradiction: keep both dated.
6. **PR-wire needing a primary.** `2026-06-12 CAMTEL Zamengoe / SAGO` (Tech Review Africa) — byline-free
   wire carrying CAMTEL corporate claims. Primary to source: CAMTEL's SAGO 2026 release, plus
   independent verification of "largest in Central Africa" / "Tier III certified" (e.g. an Uptime
   Institute record). Capture is not endorsement.
7. **Headline error in an outlet.** TechAfrica News titled the fibre loan "**$108 Billion CFA**" —
   conflating $195m with CFA108.4bn. The ITWeb account (staged) has it right. Prefer ITWeb's figures.
8. **Entities with no page yet** (candidate gaps): CENADI, Impact Palmarès, COLEPS/KOICA, DIGI-CoR,
   CAMCIS, Cameroon Customs, INNOVENDI/Port Authority of Douala, Zamengoe Data Centre, CBC/CCA-Bank,
   China EXIMBANK, Ethio Telecom, Flutterwave/Ecobank/BEAC, ART, PROXIGAB, MTN Mobile Money Corporation.
   **Added by the completion pass:** ARTAC, PAPSS, InTouch, Kiro'o Games, Yango, Camusat/Aktivco, IHS
   Cameroon, Visa, Afriland First Bank, CNEF/BankCompar, Avanti Communications, Cameroon Baccalaureate
   Office, Camtrack, Orange Digital Center, IDCAM, Anthony Same (person), Université de Yaoundé II,
   MINEE/Socadel, CAMCIH, ELECAM, Ministry of Territorial Administration.

---

### Added by the completion pass (2026-07-17)

9. **Exa byline failure is bidirectional, not a single bad default.** The first run concluded Exa
   over-attributes techafricanews.com to "Jennifer Onyeagoro". The completion pass checked 13 more items
   and found the fuller picture: Exa said "Jennifer Onyeagoro" on 12 of 13, but the page agreed on
   **4** of those (CIRT, baccalaureate, Camtel fibre, device certification) and disagreed on 8 (real
   bylines: Joyce Onyeagoro ×3, Editorial Team ×2, Kay-Lyne Wolfenden, Akim Benamara, Aayushya Ranjan).
   Critically, on the CENADI item Exa said **"Editorial Team"** while the page read **"Aayushya Ranjan"**
   — i.e. the error runs **both ways**, so "Jennifer Onyeagoro" is a real byline on this outlet and not
   merely Exa's filler. **Conclusion unchanged and reinforced: never take a byline from Exa on this
   domain.** Every completion-pass file records the comparison in an HTML comment.
10. **Two outlets serve no date metadata; both were recovered from the body.** techreviewafrica.com
    carries in-body `Date:`/`By:` lines (as the first run found) — all 11 items recovered cleanly.
    **telecomreviewafrica.com is different and weaker**: it serves no in-body date line *and* returns
    HTTP 403 to direct fetch, so the two Ethio–CAMTEL items rest on the **outlet's own published
    metadata**. Recorded as `date_source: source` per the first run's convention for this outlet, but
    **flagged in-file** with the corroboration used (article-ID ordering 13523 < 13547; the held
    Biometric Update account dated 2025-12-08). Not silently trusted.
11. **Three of the residual list's We Are Tech URLs were truncated and 404'd.** Recovered by targeted
    search; live slugs recorded in-file. Worth noting for future sweeps: a wearetech.africa URL that
    404s is more likely a clipped slug than a dead page.
12. **The IMEI enforcement date needs correcting, not just dating.** The held 2026-05-22 ITWeb item reads
    as though blocking took effect 25 May 2026. The completion pass's 2026-06-09 Connecting Africa item
    shows it **did not**: the operators refused, citing unmet prerequisites, and the Finance Minister was
    still demanding compliance two weeks later. **Do not let the May item stand as evidence the block
    landed on schedule.**
13. **The Chad–Cameroon fibre promise slipped by ≥9 months.** May 2025: ministers say the Nana-Mbéré
    section completes "within fourteen days". Feb 2026: not built; the enabling MoU is suspended by
    ARCEP Chad on sovereignty grounds. File the 2025 targets as dated intent, never as achievement.
14. **A live contradiction candidate the wiki should hold: ARTAC vs the hyperscaler talks.** ARTAC's
    Feb-2026 session (CMR's regulator participating) recommends NGSO providers keep **citizens' data on
    the continent** and site gateways inside ARTAC's jurisdiction. CAMTEL is meanwhile in talks with
    **AWS** (2026-07-08) on cloud/satellite/AI and **Avanti** (2026-04-09) on satellite. Not a factual
    contradiction — a **policy tension**, and exactly the sovereignty material the hub is for. Recommend
    treating as analysis on the place hub rather than a `reviews/contradictions/` item.
15. **`geopol.*` has no slug for Russia.** The 2025-07-24 ITWeb item states Yango operates under Yandex.
    Vocabulary covers usa/china/eu/india/gulf only. Nothing forced; raising as a possible taxonomy gap
    for the human, not acting on it.
16. **Name and acronym traps for ingest** (each flagged in-file): **TRB = ART**, same regulator, same DG
    — do not create two. **CAMCIH ≠ CAMCIS** — a climate NGO and the customs platform, one letter apart.
    **"Bluepony" = Blue Money**, per the Ethio MSA item. **"Socadel (formerly Eneo)"** — unverified
    single-source rename, check before recording. **Pierre Emmanuel Nkoa Ayissi** appears as both BEAC
    National Director and CNEF secretary general — plausibly one person, not asserted.

---

## Identified in-window, NOT staged this run

**CLEARED — completion pass, 2026-07-17.** Every candidate on this list has been fetched and staged
(see "Staged — completion pass" above), with one exception, now in the drop log:

- `techafricanews.com/2025/06/11/camusat-and-mtn-cameroon-fortify-strategic-partnership-to-accelerate-network/`
  — **`fetch-failed`**, CRAWL_NOT_FOUND on three attempts across two batches. Not staged with a summary
  body (ISSUE-008 requires a real clip). Logged to `sweep/drop-log-CMR-journals.csv`. The same
  MTN×Camusat partnership is staged from ITWeb (2025-06-17), which carries more than the lost item would
  have — including MTN's $225m/3yr commitment. Promotion of the TechAfrica copy would need a manual clip;
  there is no evident reason to bother.

**The residual list is now empty. The CMR trade-journal half is complete.**
