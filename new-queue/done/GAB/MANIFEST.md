# Sweep manifest — GAB (Gabon)

- **Batch:** GAB-2026-07-17
- **Window:** 2025-01-01 → 2026-07-17
- **Sources swept:** Newspapers — GabonReview (gabonreview.com), L'Union / Sonapresse (union.sonapresse.com), run in **French** (N1–N7). Trade journals (J1–J2, country-led): wearetech.africa, biometricupdate.com, telecomreviewafrica.com, connectingafrica.com, itweb.africa, techafricanews.com, techcabal.com, techreviewafrica.com.
- **Staged:** 39 · **Dropped:** 21 (see `sweep/drop-log-GAB.csv`) · **Out-of-window skipped:** 3 (L'Union CNIE/NIP 2024) + techcabal SING 2023, logged.
- **Month-slicing:** not needed — Gabon is medium-volume and did not recency-swamp; single passes returned good in-window recall across 2025–2026.
- **Date notes:** GabonReview & Biometric Update print clean datelines (all `source`). L'Union (union.sonapresse.com) is a **state daily with no in-body dates on some items** — 2 staged L'Union items dated `proxy` (`gabix`… no: `digital-subregional-reference` month-proxy; `gimacpay-dysfunction` day-proxy), rest carried a "Soumis…le" submission dateline. Tech Review Africa is a **PR-wire** (flagged `provenance_flag: pr-wire`); its explicit page `Date:` field was used for all 5.
- **Thinness:** ESTABLISHED, not assumed. GabonReview is a **rich, high-frequency** digital-governance beat (23 staged). L'Union thinner and often undated (6 staged; 3 of its ID items were 2024/out-of-window). Journals: the **datacenter inauguration is the dominant, already-held event** — heavily duplicated across all 8 journals; kept 2 complementary journal versions (hard figures + technical spec), dropped the rest as same-event. techreviewafrica (PR-wire) yielded the most **new** journal intelligence (ANINF MoUs). biometricupdate strong on the ID/voter thread. techcabal/connectingafrica/telecomreviewafrica thin on Gabon-specific in-window news.

## Digital identity, registries & civil registration
- 2025-01-15 | dpi.id | Biometric Update | Biometric voter registration underway in Gabon ahead of presidential vote | 2025 presidential-election biometric voter enrolment (adds to the 850k register); previously-unheld election-DPI thread.
- 2025-01-31 | dpi.id | Biometric Update | Cameroon, Gabon, Uganda tackle biometric voter registers' integrity | Gabon enrolment closes 31 Jan, ~300k new voters, 12 Apr election convened (multi-country piece, GAB section).
- 2025-06-23 | dpi.id · dpi.registry · gov.policy | GabonReview | Identification légale et digitale : trois projets stratégiques | Launches the three legal-ID pillars — RBPP extension, SNID, CNEC — under Gabon Digital component 2; **extends the held IN Groupe/Thales CNIE story** into registry + civil-registration architecture.
- 2025-09-16 | dpi.id · gov.policy | GabonReview | Identité digitale : le Gabon franchit un cap vers une gouvernance inclusive | Sept-2025 digital-ID governance milestone.
- 2025-12-01 | dpi.registry | GabonReview | «Un Gabonais, un titre foncier» : 1 200 décisions de cession en 2025 | Land-registry hard figures (1,200 cession decisions in 2025; 14bn FCFA arrears).
- 2025-12-02 | dpi.registry | GabonReview | Modernisation foncière : la digitalisation au service d'un titre foncier | Cadastre-digitalisation drive; **updates the held ign-fi cadastre engagement**.

## E-government, govtech & data exchange
- 2025-07-29 | dpi.mis | GabonReview | eGabon-SIS : un don d'équipements pour la numérisation des structures sanitaires | Health-MIS equipment donation to digitise health facilities (eGabon-SIS).
- 2025-10-07 | dpi.govtech · gov.legislate · gov.policy | GabonReview | E-gouvernement : le Gabon se dote d'un cadre juridique | New legal framework (ordinance, JO 7 Sept 2025) to accelerate administration digitalisation.
- 2026-02-20 | dpi.govtech · dpi.exchange | GabonReview | «Gabon Connect» : le futur guichet unique numérique de l'État | New flagship "Gabon Connect" single digital window, presented to Oligui Nguema.
- 2026-02-22 | gov.policy · dpi.govtech | GabonReview | eGabon / Gabon Digital : bilan du 5e Copil | 5th steering-committee bilan (companion/same-event to the held ecofin execution-speedup item; adds bilan detail).
- 2026-06-22 | gov.policy | Tech Review Africa (pr-wire) | ANINF & World Bank review e-Gabon and Gabon Digital progress | WB mission reviews e-Gabon closure + Gabon Digital execution milestones.
- 2026-06-24 | digital.localgov · dpi.govtech | Tech Review Africa (pr-wire) | ANINF opens first provincial office in Franceville | ANINF's first regional office since its 2011 creation — subnational digital reach.
- 2025-07-01 (proxy, month) | gov.policy · dpi.govtech | L'Union | Numérique : le Gabon comme référence dans la sous-région ? | State-daily framing of Gabon as a sub-regional digital reference (proxy date).

## Data protection & governance
- 2026-01-20 | gov.protect | GabonReview | Marchés publics : les données personnelles des soumissionnaires de 2022 détruites | Concrete data-protection **enforcement** overseen by the APDPVP (the renamed CNPDCP data-protection authority) — a governance datapoint the wiki lacks.

## Connectivity & network infrastructure
- 2025-01-07 | infra.connect | GabonReview | Airtel Gabon s'engage à révolutionner les services fixes | Airtel Gabon fixed-services revamp.
- 2025-01-29 | infra.connect | GabonReview | Moov Africa Gabon Telecom : leader de la couverture FTTH en 2025 | Moov Africa Gabon Telecom FTTH coverage leader, 2025.
- 2026-05-13 | infra.connect | GabonReview | Le Gabon relance GABIX, son point d'échange Internet local | GABIX national internet-exchange-point relaunch — local peering / digital sovereignty.

## Data centres, cloud & sovereignty
- 2025-02-14 | infra.store | GabonReview | À la ZIS de Nkok, ST Digital annonce un Datacenter écoresponsable | Feb-2025 **origin** of the Nkok datacenter story (project announcement); predates the held July-2026 inauguration.
- 2025-06-29 | infra.store | L'Union | Souveraineté numérique : le Gabon se dote d'un Data Center national | State-daily account of the national datacenter (mid-2025).
- 2025-07-16 | infra.store · infra.cybersec | Tech Review Africa (pr-wire) | Gabon drives digital sovereignty through ANINF–ST partnership | ANINF–ST Digital MoU (cloud, cyber, digital-ID, e-gov, capacity) — new partnership.
- 2025-08-08 | infra.store | TechAfrica News | Gabon breaks ground on landmark data center in Nkok SEZ | Nkok datacenter **groundbreaking** (in-source, unheld; predates held inauguration).
- 2025-07-01 | geopol.china · finance.mou | GabonReview | Le Gabon explore un partenariat technologique renforcé avec Huawei | July-2025 Huawei exploration — **predates the held Dec-2025 Huawei MoU** (shows the trajectory).
- 2026-05-28 | infra.store | GabonReview | Un Data Center «made in Gabon» sera lancé en juin à Nkok | June-2026 launch date set.
- 2026-06-10 | infra.store · gov.protect | GabonReview | Le Gabon met fin à sa dépendance aux serveurs étrangers | Pre-inauguration readiness + **APDPVP data-localisation compliance MoU** (95% of Gabon data hosted abroad).
- 2026-07-07 | infra.store | We Are Tech Africa | Gabon launches $14M Tier III data center | Inauguration **hard figures** ($14M/8bn CFA, 92 racks, 3,000 m², 1 MW, 95% abroad) — complements the held techafricanews inauguration item.
- 2026-07-08 | infra.store | ITWeb Africa | Gabon launches sovereign data centre | Inauguration **technical spec** (dual 15 kV + N+1 150/100 kVA, 22% PV, 65 m² colo, ACE + SAT-3/WACS peering) — complements held inauguration item.

## Digital payments & fintech
- 2025-06-17 | dpi.pay | GabonReview | Paiements électroniques : l'interopérabilité vue par le gouvernement et le Gimac | Govt + GIMAC payment-interoperability vision (June 2025); predates the held Dec Madigipaie launch.
- 2025-06-17 | dpi.pay · tech.innovate | L'Union | Comment dynamiser l'écosystème numérique via les paiements ? | State-daily payments-ecosystem framing.
- 2026-03-01 | dpi.pay | GabonReview | Madigipaie fait de TaxiGab le fer de lance du paiement numérique | Madigipaie applied to TaxiGab — transport digital-payments use case.
- 2026-03-03 | dpi.pay | L'Union | Transport : Madigipaie propulse TaxiGab dans l'ère du digital | L'Union account of the same TaxiGab/Madigipaie rollout (different outlet, same event).
- 2026-06-28 (proxy, day) | dpi.pay | L'Union | GimacPay : dysfonctionnement ou arnaque à la clientèle ? | **Critical adoption angle** — GimacPay malfunction/scam complaints; rare critical coverage of the payments push (proxy date).
- 2026-07-07 | dpi.pay | L'Union | La mairie de Libreville accompagne le déploiement de Madigipaie | Libreville municipality backs Madigipaie deployment.

## Cybersecurity, AI & skills
- 2025-06-01 | infra.cybersec | GabonReview | L'ANINF renforce la cybersécurité nationale avec SecBOM | ANINF deploys SecBOM to strengthen national cybersecurity.
- 2025-08-26 | infra.cybersec | GabonReview | Cybercriminalité : coopération avec Interpol, 55 milliards de FCFA récupérés | Interpol cooperation; 55bn FCFA recovered — concrete cybercrime enforcement.
- 2025-11-20 | infra.cybersec | GabonReview | 2e Forum de la cybersécurité du Gabon | 2nd national cybersecurity forum.
- 2026-01-25 | tech.ai · infra.cybersec | GabonReview | Cybersécurité, IA, souveraineté : faire du Gabon un « hub du soft power numérique » | Strategy framing Gabon as a digital soft-power hub (cyber / AI / sovereignty).
- 2026-05-10 | dpi.mis · infra.cybersec | Tech Review Africa (pr-wire) | CNAMGS and ANINF partner to modernise public services | CNAMGS–ANINF MoU (signed 8 May 2026): ANINF audits the health-insurance information systems.
- 2026-06-23 | infra.cybersec · geopol.usa | Tech Review Africa (pr-wire) | Gabon advances cybersecurity architecture through ANINF–MITRE cooperation | ANINF–MITRE (US) critical-infrastructure cyber-mapping, 12 priority sectors — **previously-unheld US cooperation thread**.
