# SSD — sweep manifest (`SSD-2026-07-17`)

**Window:** 2025-01-01 → 2026-07-17 · **Staged:** 37 · **Dropped:** 31 (`sweep/drop-log-SSD.csv`)

Sources — Newspapers (ledger): **One Citizen Daily** (`onecitizendaily.com`, 18) · **The Dawn** (`thedawn.com.ss`, **0 — unindexed**). Journals (fixed 8): TechAfrica News (5), ITWeb Africa (2), Telecom Review Africa (1), Tech Review Africa (1). Targeted SSD-outlet passes (thin-country / CAF-ERI precedent): Radio Tamazuj (3), Eye Radio (3), Standard Zone News (1), Citizen Digital (1), CAJ News Africa (1), CPJ (1).

Queries: **16** (onecitizendaily N1–N7 EN; thedawn ×2; journals ×8; targeted). English-language throughout.

**Baseline / coverage note.** Contrary to the "likely thin" prior, SSD is **richly indexed** by Exa via One Citizen Daily and the trade press — *not* under-collected. The wiki already holds ~15 SSD sources (NIPS, Huawei-reconnect, gateway/data-centre committee, passport-digital-payment, Jan-2026 ID resumption, DPI features). This sweep adds first designated-paper coverage plus distinct journal/outlet events. **The Dawn (`thedawn.com.ss`) is effectively invisible to Exa** — only its homepage and a single 2024 (out-of-window) article surfaced across two query passes; it contributed **zero** staged items.

**Date health:** all `date_source: source`, `date_precision: day`. Tech Review Africa serves no dates via Exa; its one item (`2026-03-04`) dated from the fetched page. No fetch failures. Bodies are verbatim article text captured via Exa 2026-07-17 (partial clips where elided); Tech Review Africa item fully fetched.

Format: `published | topics | source | title | why it's new`

---

## Identity, CRVS & biometric registration

- `2026-01-16` | `dpi.id, dpi.mis, dpi.pay, gov.protect` | One Citizen Daily | $15M Biometric Drive: SSD Lays DPI Foundations to Purge 'Ghost' Workers | **★ $15m World-Bank-backed civil-service biometric payroll** framed explicitly as SSD's first DPI building block; three-phase rollout, data-protection gap flagged.
- `2026-06-24` | `dpi.id, dpi.mis, dpi.pay` | One Citizen Daily | Biometric registration exercise for organised forces | Extends the biometric payroll drive to the **organised forces** (army/police), single verified database, PFMIS/World Bank support.
- `2026-05-08` | `dpi.id, dpi.registry, include.access` | One Citizen Daily | Govt procures 5 advanced machine systems for ID/passport production | **5 production machines + 100 mobile enrolment kits + 100,000 nationality cards** delivered to CRNPI; passport/ID fee schedule.
- `2026-07-13` | `dpi.id, include.access` | One Citizen Daily | Thousand begin collecting national IDs in greater Yei | Ground-level ID **distribution** reaching a specific region (Yei, 4,000+ cards) — the rollout in practice, most recent item in window.
- `2025-06-18` | `dpi.registry, gov.policy` | One Citizen Daily | Digital land register, key in fighting fraud - expert | Expert push for a **digital land registry**; only land-registry item for SSD in window.

## E-government, digitization & revenue

- `2026-02-13` | `dpi.govtech, dpi.pay, gov.policy` | One Citizen Daily | SSD Digitizes Regulation to Strengthen Revenue Collection | **NCA e-Services Platform launch** ("Digital Transformation for Transparency and Accountability"); MTN/Zain/Liquid participation.
- `2026-03-10` | `dpi.govtech, dpi.pay, infra.capacity` | One Citizen Daily | SSD Tax: 'Digital First' Strategy to Combat Revenue Leakages | **SSRA digital-first** e-tax/e-visa/e-work-permit; 7 of state offices digitized; ICT-infrastructure/skills constraints.
- `2026-05-15` | `dpi.govtech, finance.mou, gov.policy` | Citizen Digital | SSD confirms digital services partnership with Crawford Capital Ltd | **Candidate deal/entity:** MICT&PS + SSRA engage Crawford Capital for e-services & revenue digitalisation, amid governance scrutiny.

## Data protection, cybersecurity & digital rights

- `2026-02-19` | `infra.cybersec, gov.legislate, gov.protect` | Radio Tamazuj | Minister Ateny defends cybercrime law (Kiir signs Cyber Crimes & Computer Abuse Act 2026) | **★ President Kiir signs the cybercrime Act (18 Feb 2026)** — the enactment event; full text withheld from journalists.
- `2026-02-20` | `infra.cybersec, gov.legislate` | One Citizen Daily | ICT Ministry vows effective operation of Cyber crime Act 2026 | Designated-paper coverage of the Act's **operationalization** plan (NCA + Justice coordination, awareness campaigns).
- `2025-11-26` | `infra.cybersec, gov.legislate, gov.protect` | TechAfrica News | SSD Takes Major Step Against Cybercrime with New Bill | **RNLA passes** the Cybersecurity & Computer Misuse Bill (25 Nov 2025); minister urges a Data Protection law.
- `2025-11-20` | `gov.protect, gov.legislate, capacity.literacy` | Radio Tamazuj | Feature: Digital rights ignorance puts South Sudanese at risk | Data-protection **gap feature**; first Data Protection Policy Bill drafted Oct 2025 (Koneta + Paradigm + NCA); would create a Data Protection Commission.

## Connectivity, fibre & satellite

- `2025-10-09` | `infra.connect, finance.new, gov.regional` | TechAfrica News | SSD Announces 2,400km Fiber-Optic Network | **★ 2,400km cable** to the Indian Ocean via Kenya; Dec-2025 construction target announced in Lusaka.
- `2025-08-08` | `infra.connect, gov.regional` | ITWeb Africa | SSD to lay fibre from Kenya | Cross-border **Kenya fibre** plan (feasibility/EIA phase); notes single existing 200km Uganda-Juba line.
- `2025-11-25` | `infra.connect, tech.industry, finance.new, gov.regional` | TechAfrica News | MTN/Bayobab secures 15-yr licence to expand fibre | **★ Bayobab Infra Solutions 15-yr NCA licence** (eff. 16 Oct 2025); part of Project East 2 West corridor.
- `2026-03-04` | `infra.connect, finance.new, gov.regional` | Tech Review Africa | NCT South Sudan & Bayobab national backbone fiber project | Bayobab backbone moves to **execution** (Juba–Nadapal eastern segment); PR-wire, treat as announcement record.
- `2025-06-30` | `infra.connect, finance.new` | One Citizen Daily | Govt approves $9 million for fiber optic design | **$9m design-phase budget** approved; contracts slated July 2025; World Bank $67m (2023) context.
- `2025-04-07` | `infra.connect, tech.ai, dpi.pay, finance.new` | One Citizen Daily | Govt targets fibre optics to boost AI development | First fibre network targeted for Sept 2025; ties fibre to AI/data-centre ambitions (Kigali AI summit).
- `2025-04-05` | `tech.ai, infra.store, infra.capacity` | One Citizen Daily | SSD identifies key pillars for AI development | Three AI pillars (infrastructure, data centre, skills) at Kigali summit; World Bank $3m/5yr portfolio.
- `2025-01-24` | `infra.connect, gov.legislate, include.access` | CPJ | SSD blocks social media access amid unrest | **★ Jan-2025 NCA social-media shutdown** (Facebook/TikTok, 22–27 Jan) — significant in-window event absent from holdings.
- `2026-06-25` | `infra.connect, gov.policy, include.access` | Radio Tamazuj | NCA adjusts telecom tariff exchange rate to avert network collapse | **Tariff/FX crisis**: regulated 4,526 vs market ~27,000 SSP/$; +70 SSP/min adjustment; operators mulling infra cutbacks.
- `2025-12-12` | `infra.connect, include.access, gov.legislate` | TechAfrica News | ICT Ministry commends MTN for 25% tariff reduction | **MTN 25% tariff cut**; cybercrime bill awaiting assent; Data Protection Bill work announced.
- `2025-11-27` | `infra.connect, include.access` | One Citizen Daily | Editorial: high cost of mobile calls and data | Datable figure: **~US$23.70/GB** (Nov 2025), among Africa's most expensive; editorial/opinion.
- `2025-07-03` | `infra.connect, include.access, dpi.pay` | Eye Radio | NCA reports huge internet growth | Time-varying figures: **1.3m→1.9m users; 12%→15.7% penetration** (2024→2025); NIPS + $9m fibre context.
- `2025-04-14` | `infra.connect, tech.industry` | TechAfrica News | MTN secures 15-yr mobile operator licence | MTN South Sudan's new **15-yr mobile operator licence** (distinct from Bayobab infra licence).
- `2025-01-22` | `infra.connect, tech.industry` | Telecom Review Africa | MTN South Sudan pioneers eSIM technology | First **eSIM** in SSD; launched with NCA.
- `2026-01-05` | `infra.connect, include.divides, infra.cybersec, gov.policy` | One Citizen Daily | SSD Targets Rural Connectivity, Child Online Safety in 2026 | NCA's **2026 agenda**: rural connectivity, Child Online Protection, regulatory reform; ITU/EAC cooperation.

## Data centres, cloud & geopolitics

- `2025-09-29` | `geopol.china, infra.store, infra.connect, infra.energy` | ITWeb Africa | Huawei expresses interest in SSD's digital future | **Huawei re-engagement** at China-Africa summit; national data hub in Juba nearing completion; electricity as the binding constraint. (Distinct from held Feb-2026 Huawei-reconnect item.)
- `2026-04-30` | `gov.policy, infra.store, infra.connect, gov.protect, gov.legislate` | Eye Radio | Ateny outlines SSD digital transformation at Nairobi summit | Consolidated update: **national data centre halfway built; 2,700km fibre; ICT Authority; Data Protection Act pending** (Connected Africa Summit).
- `2026-05-21` | `gov.legislate, gov.policy, gov.protect` | Standard Zone News | SSD to establish ICT authority | **ICT Authority legal framework signed into law by Kiir**; Data Protection Act to take effect alongside it.

## Payments & digital finance

- `2025-02-04` | `dpi.pay, dpi.exchange` | One Citizen Daily | SSD launches National Instant Payment System (NIPS) | Designated-paper coverage of the **NIPS launch** with AfricaNenda (same event as held techcabal 2025-02-07; ingest lint #7 to adjudicate).
- `2025-07-19` | `dpi.pay, gov.legislate` | One Citizen Daily | Central Bank affirms mobile money as legal tender | **★ BoSS declares mobile money legal tender**; strategic-plan target 30% adult usage by 2027; penalties for refusal.
- `2025-07-22` | `dpi.pay, include.access, gov.protect` | One Citizen Daily | Mobile-money legal-tender push triggers mixed reactions | Economist critique (90% cash economy; cybersecurity/data-protection risk); pilot-first advice — useful contra-view.
- `2025-08-15` | `dpi.pay, include.access` | One Citizen Daily | Mobile Money providers pledge nationwide expansion | MTN & Digitel pledge nationwide **agent expansion** with BoSS toward a cash-light economy.
- `2025-08-29` | `dpi.pay, tech.industry` | One Citizen Daily | BoSS vows to safeguard robust payment system | **MTN MoMo 'Mata fekir' campaign** launch; BoSS payment-system safeguards commitment.
- `2026-03-17` | `dpi.pay, infra.cybersec, infra.capacity` | Eye Radio | SSD boosts mobile payment security with ITU DFS lab training | **NCA DFS Security Lab** (ITU Phase-3 knowledge transfer) with BoSS — mobile-payment app security testing.
- `2026-05-20` | `dpi.pay, dpi.exchange, dpi.govtech` | CAJ News Africa | SSD platform to digitise economy pays off (RTGS uptake) | **RTGS system** (launched Oct 2025) uptake review by BoSS + Finance Ministry.
