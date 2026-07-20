---
type: intersection
title: "Seychelles × Data Protection"
place: SYC
topic: gov.protect
places: [SYC]
topics: [gov.protect, gov.legislate, gov.standards, dpi.exchange, infra.cybersec, data.open]
entities: [[data-protection-act-2023-seychelles], [information-commission-seychelles], [dict-seychelles], [tech-hive-advisory]]
lens: [sovereignty]
status: active
last_reviewed: 2026-07-20
sources: [[2023-12-22-seychelles-data-protection-act-2023-act-24], [2024-03-25 Data Protection Law Now In Force In Seychelles], [2024-06-04 Review of Seychelles DPA], [2025-07-15-bankinfosecurity-scb-data-breach], [2025-07-29-resecurity-seychelles-bank-breach-analysis], [2026-01-28-infocom-data-protection-day-2026], [2025-11-10-infocom-atia-reform-whitepaper]]
---

# Seychelles × Data Protection

Seychelles replaced one of Africa's **earliest** data-protection laws — a 2003 Act that was
"enacted but never implemented in practice" — with a GDPR-aligned statute that, for the first time,
comes with an enforcer. The transitional window has since **elapsed**.

## The framework

- **[[data-protection-act-2023-seychelles]]** — **repeals the Data Protection Act 2003**, which
  TechHive Advisory describes as enacted but never implemented, and as "one of the earliest
  attempts to enact a law in Africa." The 2023 Act is the first Seychelles privacy law with an
  actual authority, an expanded set of data-subject rights and a cross-border transfer regime.
- **Two dates, now settled from the gazette.** The gazetted text — **Act 24 of 2023** — carries
  both: the signature block **"I assent / Wavel Ramkalawan, President, 19th December, 2023"**
  (**assent**) and the gazette enacting date **"[22 December 2023]"** (**coming into operation**).
  They are two events, not a conflict. TechHive Advisory's "enacted 19 December" was the assent
  (following a public consultation [[dict-seychelles]] opened in August 2023); Appleby correctly
  attached the transitional period to the 22 December commencement. The Bill passed the National
  Assembly **5 December 2023**. Source:
  [[2023-12-22-seychelles-data-protection-act-2023-act-24]]; earlier secondaries
  [[2024-06-04 Review of Seychelles DPA]],
  [[2024-03-25 Data Protection Law Now In Force In Seychelles]].
- **[[information-commission-seychelles]] as the authority (s.5).** Designated — not
  purpose-built: the Commission was **created under the Access to Information Act** and then named
  the DPA, a *designate-an-existing-body* model TechHive Advisory compares to **South Africa's**.
  It may conduct audits and investigations, impose penalties, cooperate with foreign supervisory
  authorities, seek preliminary injunctions and issue enforcement notices.
- **GDPR-aligned duties.** Explicit consent; **DPIAs** for high-risk processing; a **DPO** for
  certain organisations; prompt breach reporting — **72 hours** to notify the supervisory authority
  (**ss.43–44**), extension possible but the **timeframe unspecified**, and the
  **subject-notification deadline unspecified**. See [[infra.cybersec]].
- **Exclusions.** Criminal-investigation processing, national security, and purely personal
  activity.

## Currency: the transition has passed

**s.56(1)** gives pre-commencement controllers and processors **18 months from the coming into
operation** to conform; **s.56(2)** makes failure an **offence**. Running from commencement
(**22 December 2023**), that expired **22 June 2025**. As of **2026-07-20** Seychelles controllers
and processors are therefore to be read as **subject to the Act in full** — not as sitting in a
transition. No source held here reports what happened at expiry, nor any investigation, audit,
fine or guidance by the Commission: a coverage gap, not evidence of inactivity. Source:
[[2023-12-22-seychelles-data-protection-act-2023-act-24]].

## The offshore-banking cyber breach (2025)

- **Seychelles Commercial Bank breach.** A hacker ("ByteToBreach") **breached SCB's network on 5 Feb
  2025** and **exfiltrated ~2.2 GB** (3–4 Jul) — names, DOB, phones, addresses, emails, account types and
  **balances**, with multiple entries labelled **"current accounts – government."** Data was advertised on
  the **DarkForums** marketplace; SCB suspended internet banking, apologised and engaged police. The
  attacker claimed an **Oracle WebLogic** vulnerability (Flexcube Private Banking) and decryption using
  **keys accessible in the bank's IT environment**. Resecurity (which engaged the actor) frames it within
  the **targeting of offshore/tax-haven banking jurisdictions** — Seychelles ranked 45th on the Corporate
  Tax Haven Index (as cited by Resecurity, 2025-07). See [[infra.cybersec]]. Sources: [[2025-07-15-bankinfosecurity-scb-data-breach]],
  [[2025-07-29-resecurity-seychelles-bank-breach-analysis]].
- The breach is the first concrete **test of the DPA's breach regime** (ss.43–44) in a jurisdiction whose
  **offshore-finance profile makes it a disproportionate target** — data with real geopolitical value
  (government account records) in a small state's banking system.

## The regulator: enforcement gap & activation (2025-2026)

- **Data Protection Day (Jan 2026).** The **[[information-commission-seychelles]]** marked Data Protection
  Day — noting Seychelles has been a **Convention 108 signatory since 1981** (among the world's earliest)
  — setting out data-subject rights and pushing **"privacy by design."** Source:
  [[2026-01-28-infocom-data-protection-day-2026]].
- **ATIA reform whitepaper (Nov 2025).** InfoCom's updated whitepaper on reforming the **Access to
  Information Act 2018** names its **most urgent weakness: no clear power to enforce its orders** (s.63(1))
  — holders have **ignored directives since 2019** with no recourse — and recommends **aligning s.33(4)
  with the DPA 2023**, human-rights/corruption disclosure overrides, a **centralised Access-to-Information
  Unit**, and **open-reuse licensing** (drafting by the AG toward end-2025). The same body holds both the
  ATI and the DPA mandates — so its enforcement-capacity gap cuts across both. See [[gov.legislate]],
  [[data.open]]. Source: [[2025-11-10-infocom-atia-reform-whitepaper]].

## Analyst criticism (TechHive Advisory, 2024-06 — attributed, not asserted)

- **Scope (s.3) — no clear extraterritorial application**, unlike peer laws: the territorial
  framing suggests the Act may not reach controllers and processors outside Seychelles, and mirrors
  the repealed Act's provision. Note that **Appleby glosses scope more broadly** — entities that
  collect, process or store personal data in Seychelles — so **the two firms read scope
  differently**. See [[dpi.exchange]], [[sovereignty]].
- **Children's data (s.23).** A child is anyone **under 18**, with parental consent required — but
  **no age-verification or consent-validation mechanism** is specified.
- **"Misconduct" undefined** as a ground for processing sensitive personal data.

## Links

Place: [[SYC]] · Concepts: [[gov.protect]] · [[gov.legislate]] · [[gov.standards]]
· Entities: [[data-protection-act-2023-seychelles]] · [[information-commission-seychelles]] · [[seychelles-commercial-bank]]

## Sources

- [[2024-03-25 Data Protection Law Now In Force In Seychelles]]
- [[2024-06-04 Review of Seychelles DPA]]
- [[2025-07-15-bankinfosecurity-scb-data-breach]]
- [[2025-07-29-resecurity-seychelles-bank-breach-analysis]]
- [[2026-01-28-infocom-data-protection-day-2026]]
- [[2025-11-10-infocom-atia-reform-whitepaper]]
