# AGO — sweep manifest (`AGO-2026-07-17`)

**Window:** 2025-01-01 → 2026-07-17 · **Staged:** 124 · **Dropped:** 112 (`sweep/drop-log-AGO.csv`)

> Merged from the two half-sweeps (newspapers, trade journals), which ran as
> separate agents writing disjoint files. Same-event twins across the two halves
> are deliberately kept: same event from a different outlet is never a sweep-stage
> drop. Lint #7 adjudicates them at ingest, with full text.

---

## Part 1 — Newspapers

# AGO — newspaper half, sweep batch AGO-2026-07-17

Sources: **Angop** (angop.ao) and **Novo Jornal** (novojornal.co.ao). Window 2025-01-01 → 2026-07-17.
14 queries (7 clusters × 2 domains), all Portuguese. Drop log: `sweep/drop-log-AGO-papers.csv`.
**72 items staged.** Journal-half items in the same folder carry `MANIFEST-journals.md`.

Format: `published | topics | source | title | why it's new`

## Digital identity, civil registration & the 2027 electoral registry

`2025-11-26 | dpi.id dpi.registry data.statistics include.divides | Novo Jornal | Quase metade dos angolanos sem Bilhete de Identidade` — **Headline exclusion figure from the Censo 2024 definitive results: only 52.4% hold a BI (63% urban vs 30.9% rural); 14.9m people undocumented, birth registration at 63%.** The hard baseline for every ID claim below.
`2026-03-17 | dpi.id dpi.registry data.statistics | Novo Jornal | Governo fixa BI original como exigência para registo de óbitos` — Death registration now requires the deceased's original BI; carries the 15m-BI-by-2027 target and a Censo total of 36,604,681.
`2026-04-29 | dpi.id gov.legislate dpi.registry | Angop | BI passará a ser documento único válido para identificação` — **Council of Ministers bill makes the BI the sole valid ID for banking, telecoms, school enrolment, property registration and contracts**; QR + barcode + microchip; first issue free, second copy 4,500–8,000 Kz.
`2026-06-12 | dpi.id dpi.registry dpi.govtech | Angop | Justiça reforça emissão do BI para apoiar actualização do registo eleitoral` — Municipalisation plan; BUAPs to double as BI data-capture points; 100k+ BIs uncollected, 2,300 in the diaspora.
`2026-06-19 | dpi.id digital.localgov | Angop | Província do Bengo dá início à impressão local do BI` — Provincial decentralisation in practice: 310 BIs in 72h, 350/day capacity, 18k issued Jan–Jun in Bengo.
`2026-06-24 | dpi.id dpi.registry digital.rural | Angop | Governo pretende reduzir tempo de emissão do BI para até 48 horas` — 24–48h issuance target; only Cabinda and Moxico still lacked local printing.
`2026-07-01 | dpi.id dpi.exchange digital.rural | Angop | Impressão do BI abrange todas as províncias do país` — All 21 provinces now print locally; three-phase universalisation incl. **BI-at-birth in maternity wards**; states BI derives from birth registration "através da interoperabilidade entre os respectivos sistemas informáticos".
`2026-07-01 | dpi.id dpi.govtech | Angop | Bilhete de Identidade pode ser tratado ao domicílio` — Paid home-delivery ID service: mobile biometric capture + print in ~10 minutes.
`2026-07-02 | dpi.id gov.protect | Novo Jornal | BI ao domicílio mediante pagamento de uma taxa` — Same event, sharper detail: tiered fees, **online criminal-record certificate within six months**, minister concedes fraudulent BI issuance "com interferência humana".
`2026-07-15 | dpi.id dpi.registry digital.rural | Angop | Mais de 120 mil BI aguardam levantamento em todo o país` — Latest uncollected-document figure; civic campaign enlists churches and traditional authorities.
`2026-03-04 | dpi.id dpi.registry geopol.eu | Angop | Zaire inicia registo de recém-nascidos a partir da maternidade` — "Nascer com Registo" — **EU-funded, UNICEF-supported** CRVS-in-maternity rollout.
`2026-04-06 | dpi.id dpi.registry digital.localgov finance.new | Angop | Projecto "Njila" reabilita postos de registo no Bié e Huambo` — **World Bank $250m local-governance project** with a birth-registration/BI component across 8 provinces, 53 municipalities.
`2026-05-05 | dpi.id infra.connect include.access | Novo Jornal | MINJUSDH: falhas do sistema nos postos de identificação devem-se às quebras de telecomunicações` — **Four months of ID-system outages across Luanda** — the connectivity dependency of the ID stack, from the other side.
`2026-06-08 | dpi.registry dpi.exchange infra.energy | Novo Jornal | PR cria comissão para actualizar dados dos cidadãos maiores com prova de vida` — Presidential decree: biometric BDCM, **interoperability between the civil-ID database (BDIC) and the BDCM**, biometric de-duplication, BUAP power/connectivity hardening.
`2026-06-15 | dpi.registry dpi.id digital.localgov | Novo Jornal | Arranca a "prova de vida" para actualização do registo eleitoral` — Operational numbers: 254 BUAPs live of 634 planned, 10,747 brigadistas, **target universe 16,707,455 citizens**, runs to 2027-03-31.
`2026-02-26 | dpi.registry finance.new | Novo Jornal | Crédito suplementar de 275 milhões USD no OGE2026 para o MAT` — MAT's budget more than doubles to fund the BDCM proof-of-life plan — the price tag on the registry push.
`2026-06-20 | infra.connect include.divides digital.rural | Novo Jornal | Fraca cobertura de internet pode afectar registo eleitoral` — Government concedes coverage gaps threaten registration in remote areas.
`2026-03-13 | dpi.id dpi.govtech | Novo Jornal | Passaporte electrónico começa a ser emitido em todo o País` — Biometric e-passport from March 2026; first two issued to the President and First Lady; diaspora from May.
`2026-04-17 | dpi.registry dpi.exchange | Novo Jornal | Executivo promete legalizar 40 mil imóveis até ao final de 2026` — **Land/property registry digital platform linking IGCA, AGT, cadastro matricial and the Conservatória do Registo Predial.**

## Data protection, digital-government law & cybersecurity legislation

`2026-06-17 | gov.protect gov.legislate gov.regional | Angop | Nova Lei de Protecção de Dados pode vigorar no próximo ano legislativo` — **APD says the Lei 22/11 revision has cleared public consultation**; adds DPO role, stronger sanctions, fines re-denominated in Kwanza; announced at a UNESCO/Smart Africa PALOP data-governance workshop.
`2026-04-13 | gov.protect gov.legislate data.open | Angop | AN aprova na generalidade alteração à Lei de Protecção de Dados Pessoais` — UNITA bill to open electoral data (BDCM/FICM) passes committee 10–0–12.
`2026-06-25 | gov.protect gov.legislate | Angop | Parlamento rejeita proposta sobre protecção de dados pessoais` — **Same bill rejected in plenary** ten weeks later — a clean transparency-vs-privacy reversal worth pairing with the item above.
`2026-05-06 | gov.legislate dpi.govtech gov.protect | Angop | Consulta pública da Proposta de Lei do Governo Digital` — IMA's diagnosis of "dispersão legislativa" since 1997; explicit aim to keep the digital law and the data-protection law in step.
`2026-01-23 | infra.cybersec gov.legislate | Novo Jornal | Proposta de Lei de cibersegurança aprovada na generalidade (105–1–75)` — **UNITA abstains, citing shutdown precedents in Tanzania, Kenya and Uganda**; bill creates the Conselho Nacional and Centro Nacional de Cibersegurança; text concedes Angola ranks near the bottom of the ITU GCI.
`2026-07-07 | infra.cybersec gov.legislate | Angop | Divergências ditam adiamento da discussão da Lei sobre Cibersegurança` — Committee stage suspended over the preamble and chapters 1–2.
`2026-07-08 | infra.cybersec gov.legislate | Novo Jornal | Deputados suspendem discussão da Lei da Cibersegurança` — **Same suspension, unanimously agreed** — "inconformidades na redacção, na forma e no conteúdo". The cybersecurity law is stalled as of the window's close.
`2026-05-21 | gov.legislate infra.cybersec | Novo Jornal | Lei contra "fake news" aprovada definitivamente` — **Passed 105 votes (MPLA/PRS/PHA), UNITA against; 1–5 years base, up to 10 for compromising electoral integrity.**
`2026-02-26 | infra.cybersec gov.protect | Novo Jornal | SINSE adquiriu spyware Predator, usado para espiar jornalista` — **First forensic confirmation of Predator use in Angola** (Amnesty Security Lab); Expresso ties the 2021 contract to SINSE via an Intellexa reseller; journalist Teixeira Cândido has filed a criminal complaint.
`2026-03-03 | infra.cybersec tech.ai gov.regional | Angop | João Lourenço considera cybercrime um dos grandes desafios da Justiça` — **Angola has signed the UN Convention against Cybercrime**; ~$20m in cybercrime-related assets seized in 2025.

## AI, statistics & the space programme

`2026-06-30 | tech.ai gov.policy gov.standards | Angop | Angola está preparada em mais de 80% para uso ético de IA` — **UNESCO RAM final report: 83%+ readiness (50.9% ready, 32.7% partial, 16% not)**; cites 28,000 km of fibre; gaps in human capital and interministerial coordination.
`2026-07-13 | tech.ai gov.policy tech.innovate | Angop | IA encarada como instrumento para acelerar desenvolvimento de Angola` — MINTTICS confirms the RAM output will feed **a National AI Strategy**.
`2026-07-02 | data.statistics data.open dpi.govtech | Angop | INE lança Portal do Censo 2024 e aplicação móvel` — Open-access census portal + "INE Angola" app, built in-house.
`2026-06-12 | data.statistics gov.policy gov.legislate | Angop | Angola prevê aprovar nova Estratégia de Desenvolvimento da Estatística até 2032` — **ENDE 2026–2032 plus a statistics-law revision heading to the Conselho Nacional de Estatística.**
`2026-02-10 | data.statistics data.satellite | Angop | Tecnologias digitais reforçam precisão dos dados estatísticos em Benguela` — INE field practice: ArcGIS + Field Maps cut collection from 6–8 months to ~2.
`2026-03-16 | data.satellite geopol.eu finance.new | Angop | Ministro enaltece início do projecto ANGEO-1` — **Airbus Defence and Space (Toulouse) to build Angola's first Earth-observation satellite** on the S250 platform; framed as sovereign access to high-resolution imagery.
`2026-06-11 | data.satellite include.divides capacity.research | Angop | Angola pretende consolidar-se como referência africana em tecnologias espaciais` — Claims a top-5 African space programme (Space in Africa 2026); **Conecta Angola has 32 free public access points and six connected universities.**
`2026-06-12 | data.satellite finance.mou digital.rural | Angop | GGPEN e Africell fortalecem parceria para expandir serviços do Angosat` — MoU + GEDAE geodata centre; Africell plans 7–8 new sites and expansion to 7+ provinces by mid-2027.
`2025-02-06 | data.satellite infra.connect geopol.china | Novo Jornal | PAC2025: MINTTICS — quase metade do valor para o Angosat-3` — **Procurement-plan scrutiny: Angosat-3 and the national broadband network, the latter on a $248m China Eximbank loan with Sinohydro.**

## Data centre, cloud & digital sovereignty

`2026-04-27 | infra.store gov.protect dpi.id | Angop | Angola alcança autonomia no armazenamento de documentos com novo Data Center` — **Explicit repatriation framing: citizens' passports and certificates leave foreign custody.** Notes Raxio's carrier-neutral Tier III opened six months earlier.
`2026-04-28 | infra.store dpi.exchange gov.protect | Angop | PR inaugura novo Centro de Dados do Governo` — Facts: 6,225 m², ~10 months, $89m, Tier III, 208 racks/1,040 kW, 12 modules; **migration of public services to the Nuvem Nacional will be progressive and mandatory.**
`2026-04-28 | infra.store infra.connect gov.regional | Angop | Centro de Dados do Governo representa soberania digital` — Adds the currency figures: **~17.5m fixed+mobile broadband subscribers, ~75% penetration, 5.5pp above the SADC broadband target.**
`2026-04-28 | infra.store dpi.govtech | Novo Jornal | PR inaugura novo Data Center` — Independent account of the same launch (~$90m).
`2025-06-24 | finance.new geopol.usa infra.cybersec | Angop | Cybastion e Angola Telecom rubricam acordo de 170 milhões USD` — Signed at the US-Africa Business Summit in Luanda; "Digital Fast Track" cyber-skills component.
`2025-10-02 | geopol.china tech.industry capacity.training | Angop | Huawei pretende instalar centro de I&D em Angola até 2027` — Decision taken, value undefined; **7,000 talents to be trained with Angolan universities by 2027.**
`2026-01-26 | dpi.mis geopol.china tech.ai | Angop | Angola e Huawei assinam memorando para reforço da saúde digital` — Signed in Shenzhen: 38,000 health workers trained, **500,000 remote consultations over four years**, hospital digitisation, AI in health.
`2026-02-14 | dpi.mis dpi.exchange tech.ai | Angop | Angola reafirma compromisso com a inovação digital no sistema de saúde` — **The health-data stack named: ReDIV (immunisation registry), IOTA (stock), interoperability with a DHIS2-based national HMIS**; robotic surgery commanded from Orlando at ANGOTIC 2025.
`2026-02-17 | dpi.govtech gov.protect finance.new | Novo Jornal | Ministério da Indústria e Comércio requalifica rede informática por 80 milhões USD` — Sole-source award; note the procurement pattern.

## E-government, interoperability & administrative modernisation

`2026-06-17 | dpi.exchange dpi.id infra.cybersec finance.new | Angop | IMA e TIS formalizam contrato do projecto "Digitais Públicas"` — **$150m DPI project (Despacho Presidencial 38/26), 12-month execution**: interoperability platform, digital identity, PKI-based e-signatures. The concrete DPI build.
`2026-03-05 | dpi.govtech gov.policy finance.mou | Angop | Governo aposta na reorganização da Administração Pública` — **Governo Digital 2027 agenda now counts 218 projects**; calls for a Lei-Quadro do Governo Digital; three MoUs signed (broadband, digital inclusion, **national digital identity system**).
`2025-03-19 | dpi.govtech dpi.id dpi.pay | Angop | Agenda de transição digital de Angola apresentada nos EUA` — At the World Bank Digital Summit: 214 projects; **World Bank PADA underwrites the Identidade Digital Única and the Infra-estrutura Nacional de Dados**; +18 EGDI places in a decade. Useful 2025 baseline against the 218-project figure above.
`2026-05-23 | dpi.govtech gov.standards dpi.pay | Angop | AGT prevê eliminação gradual de documentos em papel` — E-signature and time-stamping as the trust layer; all e-invoices auto-reported to AGT with a verification code.
`2025-06-30 | dpi.govtech gov.standards | Angop | Ministro anuncia criação de infra-estrutura das chaves públicas e do carimbo do tempo` — The PKI announcement that the 2026 items build on; ~17m mobile users (~70%) as of mid-2025.
`2025-12-09 | dpi.govtech gov.legislate dpi.pay | Novo Jornal | AGT começa a aplicar facturação electrónica em 1 de Janeiro de 2026` — Mandatory for large taxpayers and state suppliers; 500+ software registered, 21 certified.
`2025-11-26 | dpi.govtech dpi.mis gov.legislate | Angop | Angola avança para digitalização da Segurança Social` — INSS e-procedures bill; physical channel retained where technology is lacking.
`2025-12-18 | digital.localgov dpi.govtech infra.energy | Angop | Cubango prepara transição da administração analógica para digital` — SIGDA document-management system from Jan 2026; explicitly budgets around weak internet and power in municipalities like Mavengue.
`2025-11-06 | dpi.govtech include.access capacity.literacy | Novo Jornal | Entrada dos serviços digitais no SME e na DTSER acaba com enchentes e "mixeiros"` — **Rare user-side evidence: digitisation killed the informal fixer economy, but the DTSER portal is hard to use and delivery is still slow.**
`2026-06-08 | dpi.exchange geopol.usa gov.protect | Novo Jornal | AGT: licença de software de combate à evasão fiscal no âmbito do acordo com EUA` — €552k FATCA licence — **a standing cross-border financial-data flow to the US IRS.**
`2026-03-19 | tech.innovate gov.legislate finance.new | Novo Jornal | Proposta de Lei das Startups aprovada na generalidade` — Unanimous (181); $3.5m turnover ceiling, provisional seal, **75% tax reduction for startup investors.**

## Connectivity & submarine cable

`2025-12-13 | infra.connect finance.new | Angop | UNITEL investe mais de USD 40 milhões em fibra óptica` — **$43m for the 2Africa branch; 23.6 Tbps allocated to Angola**; landing station at Cacuaco; consortium incl. Meta, Vodafone, China Mobile, MTN, Orange; national fibre at 14,000 km.
`2025-12-13 | infra.connect infra.store | Angop | Cabo submarino da Unitel reforça soberania digital de Angola` — Minister's framing: **SAT-3 at end of life after 25 years, WACS at capacity** — why 2Africa matters now.
`2025-11-07 | infra.connect include.divides | Angop | MINTTICS trabalha para expandir rede de fibra óptica submarina` — 2Africa landed, Equiano pending, domestic submarine cable planned; "Tudo Nosso Fibra" FTTH launch.
`2026-03-26 | infra.connect data.satellite gov.policy | Angop | MINTTICS implementa projectos estruturantes` — **Domestic submarine cable to link the Lobito Corridor to Equiano**; 28m mobile subscribers, 17m broadband users (2026-03).
`2026-06-12 | infra.connect finance.mou geopol.eu | Angop | Mercury reforça oferta de conectividade com novo acordo com a Eutelsat` — **Eutelsat is the only LEO operator licensed in Angola**, with a local gateway and PoP.
`2026-07-02 | infra.connect tech.innovate digital.rural | Angop | Startup do Moxico recebe licença para fornecer Internet via ANGOSAT-2` — INACOM licenses a **local** startup (NomaTech) as a satellite ISP — market opening at the edge.
`2026-06-11 | infra.connect digital.rural infra.energy | Angop | "Ilumina Angola" garante conectividade digital no Lago Dilolo` — National roaming + infrastructure sharing + Angosat-2 backhaul + solar power; census puts Lago Dilolo at 40,882 residents.
`2026-05-27 | infra.connect geopol.usa finance.mou | Angop | Angola Cables e Uniti Wholesale estabelecem parceria` — SACS/MONET/WACS meet Uniti's 386,000 km US fibre footprint.

## Payments & digital finance

`2026-05-27 | dpi.pay gov.regional gov.standards | Angop | Kwanza vai integrar sistema de pagamento da SADC a partir do II semestre` — **Kwanza joins SADC-RTGS in H2 2026**, framed as monetary sovereignty; BNA also flags Open Banking and an AI-usage diagnostic ahead of regulation.
`2026-07-16 | dpi.pay gov.standards | Angop | BNA conclui migração para padrão internacional ISO 20022` — Completed 2026-07-10 across EMIS, BODIVA and SPTR participants. **The most recent item in the batch.**
`2026-07-08 | dpi.pay gov.regional finance.mou | Angop | BNA e Banco Central da RDC assinam memorando de entendimento` — Payment-system interoperability and cross-border payments with the DRC.
`2026-01-29 | dpi.pay gov.policy | Angop | Operações no KWiK registam crescimento acima dos 100%` — **35m transfers / 590bn Kz in 2025, +100% YoY; 22 institutions in the ecosystem.**
`2026-03-05 | dpi.pay include.access data.statistics | Angop | Paypay ultrapassa 1,6 milhões de transferências mensais no KWiK` — Market structure: **Paypay 52.2%, BAI 21.9%, Unitel Money 12.6%**; 12.3m registered accounts; 66.4% of transfers under 10,000 Kz.
`2026-07-09 | dpi.pay gov.policy include.access | Angop | Governo anuncia nova etapa na Estratégia Nacional de Inclusão Financeira` — **Financial inclusion 51.7% (Q1 2026) against a 65% target for 2027; banking rate 32% (5.7m people)**; mobile/digital payments +56% YoY; PSPs to be allowed to extend credit.

## Notes for review

- **Same-event pairs across the two papers** are deliberately kept (data centre ×4, BI-ao-domicílio ×2, cybersecurity suspension ×2) — Novo Jornal consistently adds critical framing and figures Angop omits. Ingest dedup should fold, not discard.
- **A census discrepancy to watch:** the 2025-11-26 Novo Jornal piece reports Luanda at 7,961,235 counted, while its own 2026-03-17 piece says "mais de 8,6 milhões / 24,1%". Both cite the Censo 2024. Worth a contradiction check at ingest.
- **Angop is a state agency** — its framing is the government's. Novo Jornal supplies the adversarial reporting (Predator, procurement opacity, ID-system outages, fake-news law). Weight accordingly.

---

## Part 2 — Trade journals

# AGO — trade-journal sweep manifest

**Batch:** `AGO-2026-07-17` · **Window:** 2025-01-01 → 2026-07-17
**Queries:** 16 (8 journals × J1/J2, country-name only)
**Staged:** 52 · **Dropped:** 59 (4 already-held · 2 same-outlet-recrawl · 8 pr-wire-better-twin · 32 out-of-window · 13 off-topic)
**Drop log:** `sweep/drop-log-AGO-journals.csv`

Format: `published | topics | source | title | why it's new`

## Highest value — the three-way DPI sovereignty contest

- 2025-05-05 | dpi.id, dpi.pay, dpi.govtech, geopol.india, finance.mou, gov.policy | We Are Tech Africa | Angola Adopts India's Digital Model for E-Governance Push | Second outlet on the India $200m DPI credit line (Biometric Update twin already held) — adds the **UN EGDI datapoint: Angola 156th/193, score 0.4149 (2024)**, below both the African (0.4247) and global (0.6382) averages. Quantifies the low base the `angola--dpi-id` intersection asserts.
- 2026-04-29 | infra.store, infra.connect, gov.policy, dpi.govtech, geopol.gulf | TechAfrica News | Angola Launches Government Data Center and Cloud to Boost Digital Economy | **The $89m UAE-origin national cloud finally inaugurated** (late April 2026) and framed by the minister explicitly as "an affirmation of Angola's digital sovereignty". Carries fresh dated figures: >85% broadband population coverage, 17.7m subscribers, ~75% mobile penetration, 22,000km national fibre, 2Africa in service. Closes the loop on the held 2025-11-14 Ecofin "nears completion" item.
- 2025-12-09 | infra.cybersec, gov.policy, gov.legislate, gov.protect, capacity.literacy | TechAfrica News | Angola Unveils National Cybersecurity Strategy to Strengthen Digital Resilience | Draft Presidential Decree creating a National Cybersecurity Council and CERTs — the state-side counterpart to the US Cybastion deal. Note the tension with the newspaper half's reporting of the cybersecurity bill stalling in parliament (Jul 2026).
- 2025-06-25 / 2025-06-30 | infra.cybersec, geopol.usa, finance.new, capacity.training | TechAfrica News / We Are Tech Africa | Cybastion–Angola Telecom $170M investment; $25m first phase | **A fourth pole in the sovereignty contest the wiki reads as three-way (China/India/UAE): a US vendor**, announced at the US–Africa Business Summit in Luanda, funding a *national cybersecurity agency*, Cisco-run training, and a Luanda–Lobito subsea cable — i.e. US capital inside Angola's institution-building, tied to the Lobito Corridor. Dated ITU GCI baseline: Angola Tier 4 (2024).
- 2025-10-06 | geopol.china, tech.ai, capacity.training, capacity.research | Connecting Africa | Huawei to build R&D center in Angola | **China's move in the same window**: R&D centre by 2027 plus 7,000 specialists trained with Angolan universities by 2027, agreed direct with President Lourenço. Complicates the CEIEC-only reading of China's role.

## Digital ID / DPI / e-gov

- 2025-12-16 | dpi.id, dpi.exchange, infra.store, gov.protect | Biometric Update | SITA passenger data system rolls out in Angola | API/PNR gateway at Luanda's Agostinho Neto airport + a **Passenger Information Monitoring and Management Center and dedicated data centre** — a working state data-exchange capability built for border surveillance, ahead of the civil ID system. Sovereignty-relevant: aligns Angola to UNSC/ICAO/EU requirements.
- 2026-03-30 | dpi.govtech, gov.policy, tech.innovate, gov.standards, finance.mou | We Are Tech Africa | Angola Pushes Digital Reform With New Public Finance Innovation Hub | Ministry of Finance i.Lab + qualified digital signatures in SIGD. Notes **a new Angola–Cape Verde digital-governance agreement (early March 2026)** and strengthened ties with Brazil — two partners absent from the wiki's contest map.
- 2026-03-30 | dpi.govtech, gov.standards, tech.innovate | TechAfrica News | Angola Launches i.Lab to Accelerate Digital Transformation of Public Finance | Same event, but carries the quotes the We Are Tech version drops — including **Serpro (Brazil) president Wilton Mota**: "Innovation in the public sector is not just about technology, it is about sovereignty… the State needs to own its own digital destiny". Brazil's Serpro is at the table.
- 2026-05-14 | capacity.research, infra.connect, dpi.mis, gov.policy | TechAfrica News | Angola Unveils AngoREN Network | National research and education network + higher-ed digital transformation roadmap under the World Bank-adjacent TEST project.

## Space / satellite as a sovereignty stack

- 2026-03-17 | data.satellite, geopol.eu, finance.new, gov.policy | We Are Tech Africa | Angola Launches $259 Million Earth Observation Satellite Project | **ANGEO-1 kick-off with Airbus, €225m/$259m** — a European pole. Also records the **Angolan Space Agency announced October 2025**. Explicitly framed as sovereign access to critical data.
- 2025-01-23 | data.satellite, finance.new, geopol.eu | Telecom Review Africa | Angola and France Secure €225 Million for Satellite Projects | The financing side of ANGEO-1 — **Société Générale, €225,257,201, signed at the Angola–France Economic Forum** during Lourenço's state visit. Pairs with the item above.
- 2026-05-14 | data.satellite, geopol.eu | Tech Review Africa | ANGEO-1 Airbus System Key Point milestone validated | Progress marker; first EO ground infrastructure delivery from June 2026. *PR wire — prefer the GGPEN/Airbus primary.*
- 2026-03-17 | data.satellite, geopol.eu | Tech Review Africa | Zolana Joao on ANGEO-1 strategic vision | GGPEN's own sovereignty framing of ANGEO-1. *PR wire; twin of the We Are Tech item, which has the money.*
- 2025-12-23 | infra.connect, include.divides, digital.rural | Telecom Review Africa | Angola Launches Commercial Access to ANGOSAT-2 | ANGOSAT-2 opened from government-only to commercial ISPs via the Funda hub — "reduce dependence on foreign providers".
- 2026-04-10 | infra.connect, include.divides, digital.rural | TechAfrica News | 37 firms enter Conecta Angola Comercial | Quantifies private uptake of the satellite play.
- 2026-05-04 | infra.connect, digital.rural, dpi.govtech | Tech Review Africa | ANGOSAT-2 connectivity to border areas (Luvo Border Post VSAT) | Satellite wired into **border management and tax administration (AGT)** — state-capacity use, not just access. *PR wire.*
- 2026-07-14 | infra.connect, include.access, capacity.literacy | Tech Review Africa | ANGOSAT-2 + TV White Space connects 3,972 students, Ramiros | Newest item in the window; TVWS as a domestic last-mile answer. *PR wire.*
- 2026-06-03 | infra.connect, capacity.training, infra.capacity | Tech Review Africa | 5,600 University of Namibe students on ANGOSAT-2 | Space-skills pipeline with Unitel, Africell, Airbus, ST Engineering. *PR wire.*
- 2026-06-07 | data.satellite, tech.ai, dpi.registry | Tech Review Africa | Secretary of State for Budget visits GGPEN | GGPEN selling **AI + EO geospatial products for land-use mapping and asset registers** into public finance. Thin but it is the registry/satellite crossover. *PR wire.*
- 2026-02-20 | infra.connect, tech.innovate | Tech Review Africa | GGPEN and UNITEL partner to expand connectivity | Precursor to the June ANGOTIC Unitel–GGPN MoU. *PR wire.*

## Regional cooperation — Angola as exporter, not just recipient

- 2026-06-23 | gov.regional, finance.mou, data.satellite | Tech Review Africa | Angola and Mozambique sign space and digital cooperation MoUs | **Boane Earth Station (Maputo) already integrated with ANGOSAT-2 and receiving signal.** Angola exporting space infrastructure to a fellow Lusophone state. *PR wire.*
- 2026-06-13 | gov.regional, finance.mou, data.satellite | Tech Review Africa | Nigeria and Angola sign space cooperation at ANGOTIC 2026 | NASRDA–GGPEN agreement; African Space Agency, SANSA and Portuguese Space Agency present. *PR wire.*
- 2025-10-14 | infra.connect, gov.regional, digital.rural | Connecting Africa | Namibia taps Angosat-2 to boost connectivity | Namibia PoC on Angolan satellite capacity; also records an **INACOM–ARPCE (Congo-Brazzaville) border frequency-coordination agreement**.
- 2026-06-12 | infra.connect, gov.regional, finance.mou | ITWeb Africa | Namibia, Angola ink satellite deal for regional connectivity | Telecom Namibia–GGPEN **pilot commercial agreement** — PoC to real-network trial, plus the concurrent ministerial ICT MoU.
- 2026-06-12 | gov.regional, finance.mou, infra.cybersec | Telecom Review Africa | Namibia and Angola Strengthen Digital Cooperation | The ministerial MoU itself; cybersecurity prominent.
- 2026-06-11 | gov.regional, finance.mou, infra.cybersec | TechAfrica News | Namibia and Angola Join Forces to Accelerate Digital Transformation | Same MoU, ANGOTIC 2026 context.
- 2026-06-16 | infra.store, gov.regional, dpi.govtech | TechAfrica News | Namibia ICT Minister visits Angola's National Data Centre | **Angola's Camama data centre being studied as a model by a neighbour** — the sovereignty play acquiring regional prestige. (ITWeb twin already held; this one names the site and date.)
- 2025-11-03 | gov.regional, finance.mou, infra.connect | Connecting Africa | Angola, Kenya partner to strengthen ICT | Kenya–Angola ICT MoU at the **Luanda Financing Summit** — satellite networks, rural connectivity, cybersecurity, digital literacy.
- 2025-10-31 | gov.regional, finance.mou | ITWeb Africa | Angola, Kenya sign MoU to strengthen ICT | Same MoU; *note the article's opening line mis-states "Kenya and Uganda" — an error in the original, flagged in the file.*
- 2025-11-04 | gov.regional, finance.mou, infra.store, dpi.pay | TechAfrica News | Kenya and Angola Strengthen Digital Ties | Fullest account of the Luanda Summit: AUDA-NEPAD, AfDB, World Bank; data centres, fibre, IXPs; new Nairobi–Luanda direct flights.
- 2026-03-16 | gov.legislate, gov.standards, geopol.eu | Tech Review Africa | ANACOM cooperation mission in Angola | **Portugal's regulator + EU Delegation training INACOM on ICT policy and regulation** — the ex-metropole shaping the regulatory layer. Tagged `colonialism`. *PR wire.*

## Connectivity, cables and the telecom market

- 2026-06-15 | infra.connect, gov.regional, finance.mou | TechAfrica News | Telecom Namibia, Angola Telecom and SATCAB sign SARSSy MSA | **1.0 Tbps initial dedicated capacity on Equiano**; Angola Telecom may assume ownership of its infrastructure components over time. The concrete terms behind the held developingtelecoms item.
- 2026-06-15 | infra.connect, gov.regional | Connecting Africa | Telecom Namibia, Angola Telecom integrate Sarssy with Equiano | Same MSA, independent write-up.
- 2026-04-24 | infra.connect, gov.regional, finance.mou | ITWeb Africa | Angola, Namibia's dynamic connectivity partnership | The April Swakopmund MoU/CTA that SARSSy builds on.
- 2026-06-12 | infra.connect, finance.mou, tech.ai | TechAfrica News | Unitel agreements at ANGOTIC | Unitel–GGPN MoU (AI-driven geospatial) **plus a Unitel–Angola Telecom infrastructure-sharing deal** covering underserved border regions.
- 2026-06-12 | infra.connect, infra.store, geopol.usa | Connecting Africa | Angola Cables, Uniti partnership to benefit African enterprises | Longest treatment; Angola Cables claims **>70% of Africa's internet/data traffic flows**. Carvalho on "distributed, sovereign-compliant infrastructure" and keeping sensitive data in-jurisdiction — a carrier articulating data localisation as product.
- 2026-05-21 | infra.connect, infra.store, geopol.usa | ITWeb Africa | Angola Cables, Uniti expand connectivity | Same deal, terser; 386,000km US fibre, 300+ metro markets.
- 2025-06-23 | infra.connect, infra.store, geopol.eu | ITWeb Africa | Angola Cables inks deal with MEO Wholesale (Portugal) | Atlantic "super corridor" Portugal–Brazil–Africa–US via AngoNAP Fortaleza.
- 2025-03-20 | infra.connect, infra.store, tech.industry | TechAfrica News | Angola Cables and Megaport expand global reach | 930 data centres / 300 cloud nodes via NaaS on-ramps at New York, Miami, London.
- 2025-12-03 | infra.store, tech.innovate | TechAfrica News | Angola Cables unveils Accelera Cloud Program | Free credits + migration onto **Clouds2Africa, billed as the continent's largest cloud**, priced in local currency — a domestic-cloud demand play.
- 2025-03-11 | infra.connect, tech.industry, geopol.eu | Connecting Africa | Ericsson modernizes Unitel's network | Dual-mode 5G core. Dated market shares (end-2024): **Unitel 20.8m, Africell ~5m, Movicel 941,000**; flags the coming privatisation.
- 2025-06-30 | infra.connect, gov.legislate, geopol.eu | TechAfrica News | Eutelsat secures 15-year OneWeb licence in Angola | **First LEO operator licensed in Angola**, Luanda ground station — the LEO layer of the same contest.
- 2025-08-21 | infra.connect, finance.new, include.access | ITWeb Africa | Angola gets $10m from Japan for DTT project | Japan/JICA. Notable: **~70% of the population speaks national languages other than Portuguese**, driving multilingual broadcast requirements.

## Economy, startups, capital

- 2026-07-07 | tech.industry, finance.new, gov.policy | ITWeb Africa | Unitel opens Angola share offering | **The IPO with the numbers**: 15% stake, ~294bn kwanza (~$320m), 7.5m shares at 36,036–40,040 kz, offer 6–24 July, allocation 27 July, trading ~29 July 2026; 21m+ customers. Traces back to the 2022 seizure of Vidatel's stake from Isabel dos Santos.
- 2026-07-08 | tech.industry, finance.new | TechAfrica News | UNITEL launches IPO, opens 15% stake | Same event; adds **IGAPE as offeror under PROPRIV** and Capital Market Commission supervision.
- 2026-03-23 | tech.innovate, gov.legislate, finance.new | ITWeb Africa | Angola passes landmark start-up law | Unanimous passage; $3.5m revenue cap, no floor. **Fewer than 2% of identified Angolan startups have secured venture funding** (Launch Base Africa); $125m AfDB Crescer project.
- 2026-03-20 | tech.innovate, gov.legislate | TechAfrica News | Angola approves Startups Bill (general approval) | The earlier reading — dates the legislative sequence.
- 2026-03-30 | finance.new, tech.innovate, dpi.pay | TechCabal | BFA Asset Management's Kimbo Fund | Rare inside view of Angolan capital formation: **$600m AUM, FSDEA anchored Kimbo with $5m (2024)**, $1.2m into mobility startup Anda after a **three-year** diligence; BFA parent's $239m IPO was Angola's largest ever, 5× oversubscribed.
- 2026-06-29 | tech.innovate, capacity.research, finance.new | ITWeb Africa | Angola launches Luanda technology park | AfDB $100m STDP: 54 school labs, 1,500+ staff trained, 73 research projects, 161 international scholarships, 1,204 girls funded into science.
- 2025-03-18 | tech.innovate, finance.mou, capacity.training | We Are Tech Africa | INAPEM–INFOSI MoU on DIGITAL.AO | IFC baseline (Nov 2023): **~125 startups, no exits yet**; IFC recommended exactly the startup law passed in 2026.
- 2025-02-03 | tech.ai, tech.industry, capacity.training, geopol.usa | We Are Tech Africa | SLB opens Africa Performance Center in Luanda | AI/analytics hub anchored in oil and gas — where Angola's actual AI capacity is landing.

## Flags for the human

- **PR-wire items (11 staged from `techreviewafrica.com`)** each carry a header note naming the primary (GGPEN / MINTTICS / Airbus / NASRDA / ANACOM) that should be sourced at ingest if the detail is load-bearing. Contrary to the sweep note, the site *does* serve in-body `Date:` and bylines — every one was dated from content, none proxy.
- **8 further Tech Review Africa items dropped as `pr-wire-better-twin`** where a better outlet's account of the same event was staged or already held. This is a non-standard drop reason; if the curator prefers strict conservatism, they are all recoverable from the drop log.
- **`connectingafrica.com` Raxio funding item (2026-07-13)** dropped as off-topic (Angola only in a country list) — borderline, since Raxio Angola is the country's only Tier III commercial DC and hosts the national IXP. The Raxio Angola opening press release is already held.
- **techafricanews Raxio Angola piece dropped as already-held**: it is a verbatim syndication of the `raxiogroup.com` press release the wiki already holds (canonical preferred).
- **No recency-swamping** on any of the 16 queries — Angola is low-volume enough on all 8 domains that unsliced J1/J2 surfaced the full window. No month-slicing needed.
- **`techcabal.com` is near-empty for Angola**: one in-window Angola item (BFA) across both recipes. Its other Angola hits are all 2022–24.
- **Possible contradiction with the newspaper half**: this manifest's 2025-12-09 National Cybersecurity Strategy (draft Presidential Decree, National Cybersecurity Council) sits against the Portuguese-language items staged by the other agent showing the cybersecurity *bill* suspended/adjourned in parliament in July 2026. Decree track vs. legislative track — worth reconciling at ingest rather than assuming one supersedes the other.
- **Second contradiction candidate**: the wiki reads Angola's ID as a three-way China/India/UAE contest. This batch adds a **US pole (Cybastion, $170m, building the national cybersecurity agency)**, a **European pole (Airbus/Société Générale, €225m ANGEO-1; ANACOM/EU shaping regulation)**, and a **Brazilian pole (Serpro inside the Ministry of Finance's i.Lab)**. The three-way framing may now understate the field.
