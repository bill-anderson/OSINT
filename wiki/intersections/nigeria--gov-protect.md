---
type: intersection
title: Nigeria × Data Protection
place: NGA
topic: gov.protect
places: [NGA]
topics: [gov.protect, gov.legislate, gov.policy, infra.store, dpi.pay, dpi.exchange, geopol.usa, capacity.training, infra.cybersec]
entities: [[cbn], [ndpc], [meta], [ndpc-meta-settlement], [nitda], [ncc], [bosun-tijani], [inec], [digital-rights-lawyers-initiative], [fccpc]]
lens: [sovereignty, colonialism]
status: active
last_reviewed: 2026-07-19
sources: [[2026-07-07 CBN's local data order puts Nigeria's data centres to test], [2026-06-09 Meta backs NDPC in landmark privacy initiative], [2026-06-17 Government data silos threaten Nigeria's AI ambitions], [2026-07-08 FG Halts Enforcement of New Regulations on Internet Platforms], [2026-07-10 CBN's Data Localisation Directive Puts Nigerian Fintechs In A Cloud Dilemma], [2026-07-10 FIJ Showed That INEC Broke Data Law. Digital Rights Lawyers Sue the Commission 10 Months Later], [2025-03-24-ndpc-probes-tiktok-truecaller], [2025-04-30-nigeria-joins-global-cbpr-privacy-forum], [2025-05-06-mastercard-ndpc-informal-sector-dpo], [2025-05-07-nigeria-virtual-privacy-academy], [2025-08-25-ndpc-probes-1369-organisations], [2026-02-06-ncc-ndpc-data-protection-mou], [2026-02-16-ndpc-probes-temu-data-protection], [2026-02-23-ndpc-probes-schools-data-privacy], [2026-04-07-ndpc-investigates-remita-sterling-breach], [2026-05-02-ndpc-4000-weekly-cyberattacks-data-localisation]]
---

# Nigeria × Data Protection

Nigeria's data-protection story is turning from *rules on paper* to *infrastructure under
strain*: an enforcement-driven regime plus a hard data-localization deadline that stresses
the physical data-centre estate.

## What we know (as of 2026-07)

- **The mandate.** A **[[cbn]]** circular (2026-06-15) requires **all financial
  institutions** — banks, fintechs, payment companies — to move transactional data off
  overseas hyperscaler clouds (AWS, Azure, Google Cloud, IBM) to **data centres inside
  Nigeria** by **1 January 2027**. Framed by industry as "the single most consequential
  policy signal for Nigeria's digital-infrastructure sector in a decade." A second analysis
  (TechBooky, 2026-07-10) corroborates the ~6-month window and warns domestication ≠
  protection — flagging tension with the [[nigeria-data-protection-act-2023]]'s
  cross-border-transfer rules and urging encryption/key-control/hybrid hosting. Source:
  [[2026-07-10 CBN's Data Localisation Directive Puts Nigerian Fintechs In A Cloud Dilemma]].
- **The stakes.** Electronic-transaction value hit **₦1.07 quadrillion (~$702bn) in 2024**
  (NIBSS, +80% YoY; 11.2bn transactions). Nigeria's ten largest banks spent
  **₦177.9bn (~$116m)** on IT in Q1 2026 (+30.8% YoY).
- **Is the estate ready?** Nigeria has **~26 data-centre facilities** (18 commercial),
  today providing **50–56 MW** live capacity (~124 MW installed incl. built-but-unequipped
  expansion) — **Africa's second-largest DC market after South Africa (~15% of continental
  capacity)**, projected to reach **210–300 MW by 2030**. Operators (OADC/WIOCC, Rack
  Centre, Kasi Cloud, Galaxy Backbone, Equinix) say physical capacity is *not* the
  constraint; the gap is **local cloud-compute and storage platforms** to replace AWS /
  Azure / Google services, plus power reliability and skilled engineers.
- **Concentration risk.** Most commercial DCs sit in **Lagos** (Lekki, Ikeja, Eko
  Atlantic); diversification is emerging (Galaxy Backbone Tier III Abuja / Tier IV Kano;
  Equinix $22m Tier III Port Harcourt).
- **Framing shift.** "This transaction data is becoming security data" (Olubayo Adekanmbi,
  Data Science Nigeria) — localization as national security, not just efficiency.
- **Enforcement arm (2026-06).** The **[[ndpc]]** launched a two-year **M-SIDP** programme
  **funded by [[meta]]** under a 2025 court-approved settlement ([[ndpc-meta-settlement]])
  — an African regulator compelling a US platform to bankroll the local data-protection
  ecosystem, even as the **CLOUD Act** keeps US-parent data reachable and the **$220m FCCPC
  Meta fine** reportedly went unpaid. Source:
  [[2026-06-09 Meta backs NDPC in landmark privacy initiative]].
- **Silos undercut protection.** Eight non-interoperable government databases (NIN, BVN,
  etc.) both hamper AI and complicate lawful, consistent data governance; **[[nitda]]** is
  building data-exchange frameworks. Source:
  [[2026-06-17 Government data silos threaten Nigeria's AI ambitions]].
- **Regulatory harmonisation (2026-07).** Minister **[[bosun-tijani]]** paused enforcement of
  new internet-platform rules pending a **unified national digital-economy policy framework**,
  convening a joint **[[ncc]]**/**[[nitda]]**/**[[ndpc]]** technical committee — an attempt to
  resolve the overlapping-mandate problem (telecoms × platforms × AI × data governance) that
  underlies the fragmentation above. Paired with a Tinubu-ordered **FCCPC** probe of big-tech
  / GenAI over anti-competitive practice and media-content "exploitation." Source:
  [[2026-07-08 FG Halts Enforcement of New Regulations on Internet Platforms]].

- **INEC privacy-policy suit (2026-07).** [[digital-rights-lawyers-initiative]] and lawyer
  Solomon Etisang sued [[inec]] (Federal High Court, Yenagoa) for operating without a website
  privacy policy — an alleged breach of the **[[nigeria-data-protection-act-2023]]** (ss.24/27)
  and Constitution s.37, following FIJ's Oct-2025 exposé and a May-2025 voter-record leak.
  Civil society testing NDPA enforcement against a public body, outside the [[ndpc]]'s own
  (ministerially-controlled) channels. Source:
  [[2026-07-10 FIJ Showed That INEC Broke Data Law. Digital Rights Lawyers Sue the Commission 10 Months Later]].

## NDPC enforcement — the sector-by-sector crackdown (2025-2026)

The **[[ndpc]]** turned the [[nigeria-data-protection-act-2023]] from paper into an active
enforcement regime, lifting compliance from **~4%** of organisations (early) to **55%+**
(Mar 2025), on a remediation-first model (corrective measures monitored 6–12 months before
sanctions).

- **Sector sweeps.** 21-day compliance notices to **1,369 organisations** (Aug 2025 — 795
  banks, 392 insurance brokers, 136 gaming operators, insurers, pension firms) and **1,000+
  educational institutions** (Feb 2026), each demanding 2024 audit returns, a DPO, a
  safeguards summary, and registration as a Data Controller/Processor of Major Importance.
  Sources: [[2025-08-25-ndpc-probes-1369-organisations]], [[2026-02-23-ndpc-probes-schools-data-privacy]].
- **Multinational probes.** **TikTok & Truecaller** (Mar 2025), **Temu** (Feb 2026 —
  ~12.7m Nigerian data subjects; online surveillance, data minimisation, cross-border
  transfer), and a **Remita / Sterling Bank** breach investigation (Apr 2026). Sources:
  [[2025-03-24-ndpc-probes-tiktok-truecaller]], [[2026-02-16-ndpc-probes-temu-data-protection]],
  [[2026-04-07-ndpc-investigates-remita-sterling-breach]].
- **Capacity build-out.** **₦400m (~$250k)** in fines in 2024; the data-protection industry
  created **23,000 jobs** (2024, +127% YoY); the NDPC targets **250,000 certified DPOs/year**
  (Mastercard partnership, aimed at the informal sector — 65% of employment, 58% of GDP), and
  launched a **Virtual Privacy Academy** (May 2025, NADPA Abuja) — 5,000+ compliance
  assessments, 223 investigations to date. See [[capacity.training]]. Sources:
  [[2025-05-06-mastercard-ndpc-informal-sector-dpo]], [[2025-05-07-nigeria-virtual-privacy-academy]].
- **Cross-border & synergy.** Nigeria joined the **Global CBPR Forum** as associate member
  (Apr 2025) to build adequacy/transfer frameworks "safeguarding Nigeria's data sovereignty";
  NDPC signed a data-protection MoU with the **[[ncc]]** for the telecoms sector (Feb 2026).
  A rising threat backdrop — **4,000+ cyberattacks weekly** (NDPC, May 2026) — is cited to
  justify the localisation push (see [[infra.cybersec]]). Sources:
  [[2025-04-30-nigeria-joins-global-cbpr-privacy-forum]], [[2026-02-06-ncc-ndpc-data-protection-mou]],
  [[2026-05-02-ndpc-4000-weekly-cyberattacks-data-localisation]].

## Reads

- `sovereignty`: data repatriation, onshore cloud spend, law-enforcement access, "national
  resilience and sovereignty"; a demand signal to pull hyperscalers into local cloud
  regions.
- `colonialism`: the dependence being unwound is on foreign hyperscalers and jurisdictions
  — but the "smoothest path" operators propose (let AWS/Azure/Google deploy local mirrors)
  keeps the *platforms* foreign while nationalising the *infrastructure layer*. Whether
  that ends dependence or relocates it is the open question.

## Links

Place: [[NGA]] · Concepts: [[gov.protect]] · [[gov.legislate]] · [[infra.store]] ·
[[dpi.pay]] · Entity: [[cbn]]

## Sources

- [[2026-07-07 CBN's local data order puts Nigeria's data centres to test]]
- [[2026-06-09 Meta backs NDPC in landmark privacy initiative]]
- [[2026-06-17 Government data silos threaten Nigeria's AI ambitions]]
- [[2026-07-08 FG Halts Enforcement of New Regulations on Internet Platforms]]
- [[2026-07-10 CBN's Data Localisation Directive Puts Nigerian Fintechs In A Cloud Dilemma]]
- [[2026-07-10 FIJ Showed That INEC Broke Data Law. Digital Rights Lawyers Sue the Commission 10 Months Later]]
- Corroborating primary (parked): the CBN circular of 2026-06-15, reproduced in
  `_leads/The CBN Data Localization Mandate - Cencori.md` — to be obtained directly.
