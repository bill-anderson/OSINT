# CPV — sweep manifest (`CPV-2026-07-17`)

**Window:** 2025-01-01 → 2026-07-17 · **Staged:** 60 · **Dropped:** 25 (`sweep/drop-log-CPV.csv`)

> Merged from the two half-sweeps (newspapers, trade journals), which ran as
> separate agents writing disjoint files. Same-event twins across the two halves
> are deliberately kept: same event from a different outlet is never a sweep-stage
> drop. Lint #7 adjudicates them at ingest, with full text.

---

## Part 1 — Newspapers

# CPV newspaper-half sweep — MANIFEST (papers)

**Recovery completion, 2026-07-17.** The original CPV papers agent staged ~10 items then died in a server-overload storm before writing this manifest. This run completed the recovery from `sweep/_recovery-CPV-seed-urls.txt` (anacao.cv + expressodasilhas.cv) plus targeted Portuguese gap queries, and wrote this manifest covering **both** the newly staged items and the ~10 staged before the crash.

- **Papers:** A Nação (anacao.cv) + Expresso das Ilhas (expressodasilhas.cv). Window 2025-01-01 → 2026-07-17.
- **On disk (papers half): 36 candidates** — 26 staged this run + 10 pre-crash. (Trade-journal candidates in this folder belong to the journals agent — see `MANIFEST-journals.md`; not covered here.)
- **Drops this run (see `sweep/drop-log-CPV-papers.csv`):** 2 — 1 `same-outlet-recrawl` (Digital Awards gala, dup of the finalists piece), 1 `fetch-failed` (TechPark conference 2026-02-14, returned compressed/garbled bytes on two attempts).
- **Flag — 4 Expresso items (2026-05-27, 06-01, 06-02, 06-09):** headline+date confirmed via Expresso topic pages, but the canonical numeric article ID could not be resolved by Exa. Staged with reconstructed section/date/slug URLs and `body_completeness: paywalled`; each body carries a `[CLIP]` note with a working syndication mirror. **Verify/clip the Expresso canonical URL on promotion.**
- Dedup: no expressodasilhas/anacao URLs held in `sweep/held-urls.txt` (CPV is a genuine blind spot). Gap queries (identidade digital/CNI, NOSi/Porton di Nos Ilha, SISP/Vinti4, cabos submarinos, registo civil, TechPark) surfaced only entity/reference pages and non-paper outlets — no additional in-window paper articles beyond the seed list.

Line format: `published | topics | source | title | why-it's-new`. `(pre-crash)` = staged before the storm.

## Statistics integrity — the INE data-manipulation thread
- 2025-08-10 | data.statistics | A Nação | Estatísticos alertam: cabo-verdianos "enganados" pelo INE | **Origin of the thread** — INE technicians (anonymised) allege GDP/VAB methodology manipulation from 2016 under João de Pina Cardoso.
- 2025-09-17 | data.statistics | Expresso | INE repudia acusações de manipulação de dados | INE's first public rebuttal (Pina Cardoso) to A Nação n.º936 and PAICV; invokes Eurostat/IMF/World Bank/ILO.
- 2026-03-29 | data.statistics, data.open, capacity.research, gov.protect | Expresso | INE e Universidade de Coimbra reforçam cooperação estatística | Protocol on microdata/metadata access with data-protection + statistical-secrecy safeguards.
- 2026-06-01 | data.statistics, data.open | Expresso | INE rejeita acusações e reafirma independência técnica | Detailed rebuttal — IDRF 2023, SWIFT methodology (World Bank), ERETES for GDP; new fully-digital IDRF July 2026. [URL id unresolved]
- 2026-06-02 | data.statistics, infra.cybersec | Expresso | INE apresenta denúncia às autoridades | INE files formal complaint over anonymous accusations and "misuse of INE digital platforms". [URL id unresolved]

## Data protection, privacy & surveillance
- 2025-02-02 | gov.protect, gov.legislate, tech.ai, gov.regional | Expresso | CNPD (Faustino Varela): "A IA/Big Data não podem pôr em causa os direitos" | Decade-review interview of the DPA; Convention 108 + Malabo accession; deepfake cases since 2021.
- 2025-03-19 | gov.protect, tech.ai, gov.legislate | Expresso | CNPD defende diálogo sobre governança de dados e regulação da IA | CNPD 10th-anniversary international conference; PM on AI harms and constitutional rights.
- 2026-05-13 | gov.protect, dpi.govtech, infra.cybersec | A Nação | PJ defende acesso ao sistema de videovigilância | Surveillance-governance: PJ seeks inter-institutional access to national CCTV; Justice Minister backs; system expanding across islands.

## Cybersecurity & cybercrime
- 2025-02-07 | infra.cybersec, dpi.pay, capacity.literacy | Expresso | PJ alerta para novos esquemas de burla | PJ Cybercrime Brigade warns of impersonation/loan-scam and mule-account fraud; SISP codes.
- 2025-02-16 | infra.cybersec, capacity.literacy, gov.protect | Expresso | Burlas online: navegando num sítio de embustes | Feature/interview mapping CV's online-fraud landscape; public-figure impersonation; digital-literacy angle.
- 2025-05-31 | infra.cybersec, tech.industry, capacity.training, geopol.eu | Expresso | Bruno Castro (VisionWare): atacar nos EUA ou em CV é o mesmo | Portuguese cyber firm, first in both TechParks; NOSi Akademia recruitment; hub-digital strategy.
- 2025-10-30 | infra.cybersec, dpi.govtech, gov.protect | Expresso | Governo lança SOC e CSIRT da RTPE (NOSi) | **State cyber-defence build-out** — SOC + CSIRT for the state network, developed by NOSi, World Bank support.
- 2026-05-27 | infra.cybersec, gov.protect | Expresso | PJ investiga esquema de extorsão sexual online (sextortion) | PJ Cybercrime Brigade warns of rising sextortion via fake profiles. [URL id unresolved]
- 2026-06-09 | infra.cybersec, tech.industry, capacity.training, tech.ai | Expresso | Cibersegurança essencial para CV ser hub digital — CEO VisionWare | VisionWare conference at TechPark; cybersecurity as precondition for the hub-digital strategy; AI threat. [URL id unresolved]
- 2026-05-18 | infra.cybersec, dpi.govtech, infra.connect | A Nação | Legislativas 2026: presidente do NOSi pede desculpas por alegado ciber-ataque na divulgação dos resultados | (pre-crash) NOSi election-night cyber-incident.
- 2026-05-25 | infra.cybersec, dpi.govtech | A Nação | Legislativas 2026: NOSi ainda não divulgou conclusões sobre anomalias | (pre-crash) Follow-up.
- 2026-05-27 | infra.cybersec, dpi.govtech | A Nação | Legislativas 2026: NOSi diz que relatório preliminar aponta causas de ordem técnica | (pre-crash) Preliminary NOSi finding.

## e-Government, DPI & the digital state
- 2025-10-15 | dpi.govtech, dpi.exchange, include.access, infra.energy | Expresso | Governo prepara portal digital para modernizar a burocracia | (pre-crash) Precursor to Gov.cv.
- 2026-02-13 | gov.policy, dpi.govtech, dpi.id, include.divides | Expresso | Cabo Verde institui Semana do Digital anual (Resolução) | Policy instrument; names electronic identity/residence/signature, interoperability, Portal do Governo.
- 2026-02-24 | dpi.govtech, dpi.exchange, dpi.registry, include.access | Expresso | Governo lança portal Gov.cv | (pre-crash) Single portal; "Porton di Nos Ilha" migrates in; interoperability.
- 2026-03-06 | dpi.govtech, finance.mou, infra.cybersec, infra.store, gov.regional | Expresso | NOSi e SETIC FP Angola assinam memorando | (pre-crash) CV→Angola govtech export MoU (deal entity).
- 2026-03-09 | gov.policy, dpi.govtech, tech.innovate | Expresso | Começa a Semana do Digital 2026 | Event execution of the Resolution; funded by Morabeza Innovation Project.
- 2026-03-18 | dpi.govtech, gov.policy, finance.new, tech.innovate | Expresso | BAD financia 2.ª fase da reforma electrónica (€17,7M) | (pre-crash) AfDB e-gov/public-management financing.
- 2026-03-20 | dpi.govtech, dpi.exchange, dpi.registry, data.open | Expresso | Plataforma Empresa Online reforça digitalização | (pre-crash) Business-registry digitalisation (Prime Solutions).

## Connectivity & telecoms
- 2025-09-18 | infra.connect, include.access, geopol.usa, gov.legislate | Expresso | Starlink conquista 0,2% do mercado da internet | (pre-crash) ARME market data; Starlink entry.
- 2026-04-21 | infra.connect, finance.new, geopol.eu, gov.policy | Expresso | Estado concede aval de €37M à CV Telecom | (pre-crash) Sovereign guarantee for telecom infra incl. inter-island submarine cable.
- 2026-05-02 | infra.connect, gov.legislate, gov.policy, finance.new | A Nação | UNITEL T+ reclama neutralidade e concorrência justa | **Competitor's regulatory objection** to the €37M CVT guarantee; open-access / infra-service separation.

## AI, innovation ecosystem, skills & startups
- 2025-01-15 | tech.innovate, tech.industry, dpi.govtech | Expresso | Digital Awards Cabo Verde anuncia finalistas | Innovation-ecosystem awards; public-innovation nominees (SNIAC, IGRPWeb, INPS).
- 2025-04-07 | gov.policy, tech.ai, gov.protect, gov.legislate | Expresso | Revolução Tecnológica (opinião) | Analysis: accelerate EEDCV; revise data-protection law; AI base-law; algorithmic-oversight mechanisms.
- 2025-04-19 | capacity.research, tech.ai | Expresso | Uni-CV: ciclo de palestras sobre IA e Química Computacional | Research capacity; AI/NLP for Cape Verdean Creole (health).
- 2025-05-17 | tech.ai, include.divides, capacity.training | Expresso | IA entre produtividade e o gap tecnológico | CV voices (Hélio Varela, Antão Chantre) on the "AI divide"; "sem dados não treinamos algoritmos".
- 2025-05-26 | capacity.training, capacity.literacy, tech.ai, include.access | Expresso | Preparar a juventude para o trabalho global (opinião) | Analysis: AI in schools, teacher training, digital literacy.
- 2025-09-02 | tech.ai, gov.regional, tech.innovate, capacity.training | A Nação | CV no "Government Leadership and AI Summit" na Nigéria | Pedro Lopes mission; Digital Africa Corridor; She Code.ai; GITEX; complements the NGA–CV corridor journal item.
- 2025-10-06 | finance.new, tech.innovate, tech.industry | Expresso | Apresentado Fundo Morabeza (€24M) para startups | AfDB-financed startup fund; digital-nomad attraction.
- 2025-11-12 | tech.innovate, finance.new, capacity.training | Expresso | Web Summit 2025 / SikaBaDu Summit (diáspora) | Largest-ever CV delegation; 25 startups; Pró-Empresa × CV Airlines protocol.
- 2026-03-21 | include.divides, capacity.literacy, data.statistics | A Nação | A geração digital cabo-verdiana (opinião) | Analysis with 2021 census data (483k pop, 88% literacy, 72% urban); Gen-Z / education.

---

## Part 2 — Trade journals

# CPV — Trade-journal sweep manifest (RECOVERY COMPLETION)

**Recovery note.** The original CPV trade-journal-half sweep (`sweep_batch: CPV-2026-07-17`)
staged 15 journal items and logged 22 drops, then was interrupted in a server-overload
storm **before writing this manifest**. This file is the recovery completion, written
2026-07-17. A light J1–J2 re-run across the 8 fixed journals confirmed the prior 15 were
sound and surfaced **9 genuinely-new in-window items the interrupted run had missed** —
mostly the government/policy (J1) angle on techafricanews + biometricupdate, plus the
TechCabal feature that the drop log named as a kept-twin but was never actually staged.
Total staged JOURNAL items now: **24** (15 original + 9 recovery-added). One drop appended
to `sweep/drop-log-CPV-journals.csv` (now 23). Newspaper items (`-anacao`,
`-expressodasilhas`) are covered by `MANIFEST-papers.md`, not here.

`published | topics | source | title | why-it's-new` — `*` = recovery-added this pass.

- 2025-05-05 | tech.innovate, tech.industry, finance.new, infra.store | TechAfrica News | Cape Verde Unveils €45M Tech Hub to Drive Digital Growth | TechPark CV Praia inauguration; €45.59M AfDB investment (~2% of GDP), ZEET special economic zone.
- 2025-05-06 | tech.innovate, tech.industry, infra.store, finance.new | We Are Tech Africa | Cape Verde Inaugurates $51.7M TechPark with AfDB Backing | Same inauguration, USD framing + AfDB financing detail.
- 2025-05-07 | tech.innovate, tech.industry, finance.new, capacity.training | TechAfrica News | Cabo Verde Unveils TechPark CV, Aiming to Become Africa's Digital Hub | Fuller launch account: 23 firms/7 countries, 311 jobs, 2,769 upskilled, revenue +4,300%.
- 2025-05-16 | tech.innovate, tech.industry, infra.store, finance.new | TechAfrica News | Cabo Verde Unveils Mindelo Tech Park, Boosting Digital Economy Ambitions | Second (Mindelo/São Vicente) campus opened; data centre; GDP-share-to-25% target.
- 2025-05-29* | tech.innovate, tech.industry, infra.connect | TechCabal | Can Cape Verde rival Nigeria and Ghana in tech? | Analytical feature (Pedro Lopes interview); $100M+ infra spend, 14,530 km fibre, ZET sandbox, brain-drain reversal. Kept-twin logged in drop log but never staged pre-interruption.
- 2025-07-09 | gov.policy, dpi.govtech, infra.cybersec | We Are Tech Africa | Digital Transformation: Cape Verde Moves Closer to South Korea | Bilateral digital-cooperation mission (data governance, e-services, cybersecurity).
- 2025-07-31 | tech.innovate, tech.industry, capacity.training, finance.new | We Are Tech Africa | Cape Verde Ramps Up Digital Start-up Ecosystem to Boost Economy | Startup-ecosystem acceleration measures.
- 2025-08-08* | capacity.training, capacity.literacy, include.divides | TechAfrica News | Cape Verde Eyes GDP Boost Through Stronger Digital Skills | National skills & digital-readiness strategy (Digital Cabo Verde / WB); 90 accesses/100 inhabitants; usage-divide focus.
- 2025-09-09 | gov.regional, capacity.training, tech.innovate | We Are Tech Africa | Nigeria, Cape Verde Launch African Digital Corridor to Boost Tech and Trade Cooperation | Bilateral NGA–CPV digital corridor.
- 2025-09-11* | infra.connect, gov.policy | TechAfrica News | Cabo Verde Launches National 5G Strategy to Become Digital Hub by 2030 | 5G-strategy launch milestone (WB-funded, DGTED); 90% internet penetration by 2026 target. Cf. 2026-02-16 formal-approval item.
- 2025-09-29* | dpi.govtech, gov.policy, finance.new | TechAfrica News | Cape Verde Accelerates Digital Transformation with World Bank Support | Cabo Verde Digital (WB) support mission; 60% services online by 2026, 80% by 2030.
- 2025-12-05* | dpi.govtech, finance.new, gov.policy | ITWeb Africa | Cabo Verde's public sector bags $20.7m to digitise | AfDB $20.7M loan, E-PFMRP phase 2 (e-justice, digital-nomads). Same event as the 2025-12-06 wearetech item below (€17.7M), different outlet — complementary, figures to reconcile at ingest.
- 2025-12-06 | dpi.govtech, finance.new, gov.policy | We Are Tech Africa | Cape Verde Gets €17.7 Million AfDB Support for E-Governance Upgrade | AfDB e-governance loan (€17.7M framing of the same E-PFMRP support).
- 2026-01-30 | capacity.training, include.access, tech.industry, finance.new | Tech Review Africa | Cabo Verde launches SKODJI DIGITAL programme to expand youth access to global digital economy | Youth digital-economy skills programme (PR-wire).
- 2026-02-02 | capacity.training, tech.industry, include.divides | We Are Tech Africa | Cabo Verde Bets on Digital Skills to Tackle Youth Unemployment | Digital-skills-vs-youth-unemployment framing.
- 2026-02-16* | infra.connect, gov.policy | TechAfrica News | Cape Verde Launches National 5G Strategy to Accelerate Digital Nation Vision | Formal unveiling of National 5G Implementation Strategy (presented 11 Feb, approved by Resolution 33/2026 of 20 Feb); universal digital ID + data strategy components.
- 2026-03-18 | gov.policy, gov.regional, finance.mou | Tech Review Africa | Cabo Verde appoints Tech Ambassador, signs membership protocol with Global Institute | Tech-diplomacy protocol; Olavo Correia named Tech Ambassador (PR-wire).
- 2026-03-24 | tech.innovate, gov.policy, include.access | Tech Review Africa | Cabo Verde unveils RABIDA initiative to strengthen diaspora engagement in digital economy | Diaspora-engagement digital initiative (PR-wire).
- 2026-03-31* | dpi.id, gov.regional | Biometric Update | PALOP countries collaborate to enhance digital identity and public services | Lusophone-Africa (PALOP) digital-ID webinar (Digital Governance Dialogues, 26 Mar); CPV named among 5. Multi-place tagged; reviewer may re-home to XAF.
- 2026-04-30 | gov.regional, gov.policy, gov.standards | Tech Review Africa | ATU engages Cabo Verde to strengthen participation in global ICT processes | African Telecommunications Union engagement (PR-wire).
- 2026-05-02 | tech.innovate, dpi.govtech, capacity.training | Tech Review Africa | Cabo Verde showcases growing innovation ecosystem at Re!nventa Hackathon | Innovation-ecosystem hackathon showcase (PR-wire).
- 2026-05-03 | capacity.training, include.access, tech.industry | Tech Review Africa | Skodji Digital programme launches in Cabo Verde to prepare youth for global gig economy | Gig-economy angle on Skodji rollout (PR-wire).
- 2026-05-04* | gov.policy, tech.ai, dpi.exchange | TechAfrica News | Cape Verde Launches National Data and AI Strategies to Modernize Public Administration | Kick-off (28 Apr) of a Data Strategy for Public Administration + national AI Strategy; interoperability / de-siloing push, EU-supported.
- 2026-05-19* | dpi.id, dpi.registry, dpi.exchange | Biometric Update | Cabo Verde's CRVS-ID reforms drive near-universal birth registration | CRVS–ID linkage to 99% birth registration in 5 yrs via Autentika interoperability platform; UIN at birth; showcased at ID4Africa 2026. Strong dpi.id evidence.
