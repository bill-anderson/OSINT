# Sweep manifest — MOZ (Mozambique)

- **Batch:** MOZ-2026-07-17
- **Window:** 2025-01-01 → 2026-07-17
- **Staged:** 39 candidate source files · **Dropped:** 28 (see `sweep/drop-log-MOZ.csv`)
- **Sources run:**
  - Newspapers: **Club of Mozambique** (clubofmozambique.com, EN) — heavy yield; **Jornal Notícias** (jornalnoticias.co.mz, PT) — **established near-invisible to Exa** (only its homepage surfaced across two domain-scoped PT probes; Portuguese coverage flows through non-scope .mz outlets — 360mozambique, mznews, aimnews, cartamz, etc. — which are out of assigned source scope and not staged).
  - Journals (fixed 8): real per-domain yield established — **biometricupdate, techafricanews, connectingafrica, itweb.africa, wearetech.africa, telecomreviewafrica** all carry MOZ-specific coverage; **techcabal** thin (mostly regional/other-country); **techreviewafrica** carries MOZ items but is PR-wire (better twins preferred, logged as drops).
- **Month-slicing:** not required — single semantic queries per cluster returned ample in-window hits; Exa did not recency-swamp on MOZ.
- **Queries run:** Club of Moz N1–N7 (EN); Jornal Notícias N1/N-mixed (PT probes ×2); J1/J2 per journal for all 8 domains.
- **Date discipline:** all 39 dated `date_source: source` from fetched body; every worker confirmed in-body dates matched (incl. techafricanews, whose Exa bylines are unreliable — bodies checked). No proxies, no fetch-failures, no re-datings.

Format: `published | topics | source | title | why-it's-new`

## Digital identity & civil registry
- 2026-01-05 | dpi.id, dpi.registry, include.access | Biometric Update | Mozambique seeks expert services to support mass birth, ID registration | procurement kickoff for the mass registration drive — not previously held
- 2026-03-31 | dpi.id, dpi.registry, include.access | Club of Mozambique | Government launches free birth registration | launch of the nationwide free civil-registration/BI campaign (7M target, 500 mobile brigades, $9m WB) — major new EDGE-backed drive
- 2026-04-27 | dpi.id, gov.regional, dpi.exchange | Club of Mozambique | Mozambique and Ethiopia sign MoU to boost digital identity | in-scope newspaper account of the ATDI–FaydaVerse MoU (held only via Biometric Update)
- 2026-05-21 | dpi.registry, dpi.id, include.access | Club of Mozambique | Chapo calls on population to join free civil registration campaign | presidential push / progress update on the March campaign
- 2026-05-25 | dpi.id, dpi.govtech, dpi.exchange | Club of Mozambique | Tender for consultancy on mobile digital identity and signature system | national mobile digital-ID + e-signature infrastructure tendered (X-Road, DNIC population register) — new DPI foundation
- 2026-05-26 | dpi.id, dpi.govtech | Biometric Update | Mozambique seeks partner for mobile digital ID, e-signature rollout | journal twin with technical detail (SIM/eSIM/Java Card, X-Road integration)
- 2026-06-03 | dpi.id, gov.legislate, dpi.registry | Club of Mozambique | Cabinet approves new ID card regulations | new BI regime regulating Lei 6/2022 (data collection/processing/retention) — new instrument

## E-government & digital-transformation institutions
- 2026-03-16 | dpi.govtech, gov.policy | Biometric Update | Mozambique sets up agency to spearhead digital transformation | dedicated source for ATDI stand-up (held page had no source for the setup)
- 2026-03-27 | dpi.govtech, gov.policy, tech.ai | We Are Tech | Mozambique Builds Institutional Framework for Digital Transformation | consolidates ATDI + CNIA + CTD creation, Gomes appointment, EGDI 177/193 and coverage targets
- 2026-06-08 | dpi.govtech, gov.legislate, tech.industry | TechAfrica News | Mozambique Issues First Licenses to Digital Operators | first Electronic Transactions Law licences (19 of ~170), fee regime — new govtech milestone
- 2026-06-29 | dpi.govtech, dpi.registry | Club of Mozambique | 74% of legal entity registration applications now submitted electronically | quantified e-gov adoption data point

## Data governance, cybersecurity & AI
- 2025-12-05 | gov.policy, gov.protect, data.open | TechAfrica News | Mozambique Prioritizes Data Governance as Cornerstone of Digital Sovereignty | National Data Governance Policy/Strategy validation (AU-aligned, EU/GIZ/UNECA-backed) — new instrument
- 2025-12-16 | infra.cybersec, gov.legislate, gov.protect | Club of Mozambique | Minister Muchanga on ending impunity in cybercrime/data protection | pre-law ministerial framing of the cyber/data-protection push
- 2026-04-16 | infra.cybersec | Club of Mozambique | Mozambique records 173,000 cyberattacks and 1,061 cybercrime cases in 2024 | new threat-scale statistic underpinning the cyber laws
- 2026-05-06 | tech.ai, gov.policy | Club of Mozambique | Commission begins advising Government on AI (CNIA) | National AI Commission operational — new AI-governance body
- 2026-05-25 | tech.ai, gov.policy, gov.regional | TechAfrica News | Mozambique Presents Draft National AI Strategy at ITU Workshop | draft National AI Strategy (final by June 2026) — new policy
- 2026-06-22 | tech.ai, infra.cybersec, gov.policy | ITWeb Africa | Mozambique fast-tracks AI, cyber strategy | consolidated status on AI + cyber strategy progress

## Digital payments & fintech
- 2025-08-06 | dpi.pay, gov.policy, include.access | Club of Mozambique | E-money accounts grown to 109.8% of adult population; NFIS 2025-2031 launched | major inclusion stat + new National Financial Inclusion Strategy
- 2025-08-25 | dpi.pay, finance.new | Club of Mozambique | IRPS code revised to tax M-Pesa, e-Mola, M-kesh agent commissions | taxation of the mobile-money economy — new fiscal angle
- 2026-02-18 | dpi.pay, gov.legislate, gov.policy | Club of Mozambique | New National Payments System bill on its way to Parliament | cabinet approval of the SNP law revision
- 2026-03-02 | dpi.pay, gov.legislate | Club of Mozambique | Banks unveil Instant Payment System (SPIM) | central-bank instant payments established (Notice 1/GBM/2026) — major new DPI rail
- 2026-03-16 | dpi.pay | Club of Mozambique | Central Bank launches METIX instant payment system | formal launch; free interbank P2P, USSD access, SIMO-operated
- 2026-04-15 | dpi.pay, gov.legislate, tech.ai | Club of Mozambique | National Payments System law unanimously approved by parliament | parliamentary passage; BdM powers, AI/tech provisions
- 2026-06-13 | infra.cybersec, gov.legislate, gov.protect, dpi.pay | Club of Mozambique | Cybercrime, Cybersecurity + National Payments System laws signed into force | Chapo promulgation — update to held 2026-04-17 approval; ties cyber + payments laws
- 2026-06-16 | dpi.pay, infra.cybersec, gov.legislate | Club of Mozambique | Financial institutions have 60 minutes to report failures | National Switch connection rules (Notice 2/GBM/2026) — new operational-resilience regime

## Connectivity, 5G & satellite
- 2025-08-26 | digital.rural, include.divides, infra.connect | TechAfrica News | Rural Connectivity Project seeks bids from telecom operators | FSAU rural project (30 sites) tendered — new digital-divide programme
- 2025-10-20 | digital.rural, include.divides, infra.connect | TechAfrica News | 60 new mobile stations to boost rural connectivity | Vodacom awarded expanded FSAU rural build across 9 provinces
- 2026-02-19 | infra.connect, data.satellite | Club of Mozambique | Starlink, Vodacom bring hope to flood-hit Mozambique | LEO/emergency connectivity in disaster response
- 2026-02-25 | infra.connect, gov.protect | Club of Mozambique | Telecoms block by government unconstitutional - Anamola Party | post-election internet-restriction controversy (shutdown angle)
- 2026-03-13 | infra.connect, gov.protect | Club of Mozambique | Minister denies attempt to restrict use of internet | government response on internet-restriction claims
- 2026-04-20 | infra.connect | TechAfrica News | INCM opens 5G spectrum bids from major operators | 5G spectrum process opens (700MHz/2.6/3.5GHz; administrative consignment) — major new
- 2026-04-21 | infra.connect | Connecting Africa | Mozambique opens bids for 5G spectrum | operator-share detail (Vodacom 11.8m, Movitel 4m, Tmcel 1.6m end-2025)
- 2026-06-22 | infra.connect, gov.policy | Club of Mozambique | President pledges 5G for district capitals, tourist zones in 2027 | Chapo 5G roadmap at 5th National Communications Conference
- 2026-06-22 | infra.connect, gov.policy, infra.store | TechAfrica News | 5G rollout; vision to become Southern Africa's digital hub | phased 5G plan + regional-hub ambition
- 2026-06-26 | infra.connect | ITWeb Africa | Mozambique clears path for 5G services | 5G/4G licences awarded to the three operators (~710k subsidised phones, schools) — milestone
- 2026-07-06 | infra.connect, geopol.usa, finance.mou | TechAfrica News | Mozambique explores strategic partnership with SpaceX | Ministry of Economy–SpaceX talks — new geopolitics/investment angle

## Data centres & cloud
- 2025-03-21 | infra.store, gov.legislate | Club of Mozambique | Regulation for data centres and cloud computing services includes sanctions | early data-centre/cloud regulatory move (precursor to Decrees 71/72/2025)
- 2025-03-29 | infra.store, infra.connect | Club of Mozambique | Prime Minister opens Vodacom data centre | in-scope newspaper source for the Vodacom DC (PM cites "17 data centres"; cyber-reg drafting)
- 2025-12-04 | infra.store, gov.legislate, dpi.pay | TechAfrica News | Mozambique to build local data centres, new cloud regulations | 5-year domestic-DC plan + data-localisation regulatory framework (Muchanga)
