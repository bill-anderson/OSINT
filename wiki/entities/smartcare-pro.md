---
type: entity
lens: []
entity_type: initiative
title: SmartCare Pro
places: [ZMB]
topics: [dpi.mis, dpi.id, dpi.exchange, digital.rural, include.access]
status: active
last_reviewed: 2026-07-20
sources: [[2026-01-15 How Digital Public Infrastructure Is Transforming Health and Identity in Rural Zambia], [2025-01-17 Zambia Advances Digital ID System with MOSIP Training for Healthcare Integration], [2026-07-17-zambia-govlink-private-4g], [2026-04-28-zambia-smartcare-2-0-ndola-pilot], [2014-01-01-moh-zambia-ict-standards-and-guidelines], [2025-03-01-smartcare-pro-programme-managers-presentation]]
---

# SmartCare Pro

**Zambia's centralised national Electronic Health Record (EHR)** — built by
**[[ihm-southern-africa]]**'s technology division **TuSo Business Dynamics** in partnership
with the Government of Zambia. It **uses Zambia's National Digital ID service** to create
and store unique individual patient records portable across any public hospital in the
country, with **fingerprints serving as the patient's digital identity** — access without a
physical ID or paper record. It is the first live consumer of the foundational-ID layer in
this wiki's Zambia material: where [[inris]] and [[mosip]] are the identity substrate,
SmartCare Pro is what sits on top. *(Spelling drift: **SmartCarePro** in ID Tech's account,
**SmartCare Pro** in dpi.africa's — same system.)*

## Version lineage — and what "Care 2.0" is (resolved 2026-07-20)

**SmartCare is a twenty-year lineage, not a single build.** SmartCare was approved as the
Ministry of Health's patient-level health information system in **2005** (US Government
partnership; a Permanent Secretary's circular of 5 April 2006 made it the standard), and
has been re-versioned since: **SmartCare Legacy** → **SmartCare Plus (2017)** →
**SmartCare Pro**, nationally launched at **Chongwe District on 2023-11-21** by Health
Minister Sylvia Masebo. Legacy and Plus were together running in roughly **1,800
facilities across 10 provinces (2023)** at the point of transition.

**The approval date is now primary-sourced — and contested by the programme itself
(2026-07-20).** The Ministry's own *ICT Standards and Guidelines* (**January 2014**) is the
first held primary: "SmartCare is the approved patient level health care information system,
in accordance to the circular of **5th April, 2006** from the office of the Permanent
Secretary." Against that, the **SmartCare Pro programme-managers deck** (**2025-03**, proxy
date) carries an EHR evolution timeline dating "SmartCare approved as MoH standard" to
**2009**, and places **2005** against a *CCPTS ANC-module pilot* and **2003** against
*conceptualisation of SmartCare Legacy* — so it disagrees with this page's "approved 2005"
as well. **Three candidate dates (2005, 2006, 2009), recorded not resolved**; the 2006
circular is the only one with a primary document behind it. The deck's remaining milestones —
Plus **2017**, SC+ v1.6 scaled to **350 facilities (2019)**, re-engineering for integration
and interoperability **(2022)**, **Pro launched 2023** — are consistent with what the page
already holds. Sources: [[2014-01-01-moh-zambia-ict-standards-and-guidelines]],
[[2025-03-01-smartcare-pro-programme-managers-presentation]].

**What the 2014 standards document adds beyond the date.** It is the earliest held statement
of SmartCare's operating rules: patient data "shall be entered into SmartCare daily in all
facilities", and all patients entered "shall be issued with care cards" — a card-based
patient identity predating the [[inris]]/[[mosip]] biometric layer by roughly a decade.

**"Care 2.0" is not a second platform — it is SmartCare 2.0, and the two coexist by tier.**
The GovLink launch coverage renders it "Care 2.0"; ITWeb Africa renders the same object
"SmartCare 2.0" and states the relationship directly: "**SmartCare Pro and SmartCare 2.0
are the latest versions of Zambia's electronic health record systems**, developed by the
Ministry of Health and the Smart Zambia Institute" (2026-07-16). The three named pilot
sites are identical in both accounts, which is the confirming fingerprint. So the wiki's
"unexplained second platform" was a **truncated name**, and the underlying object is:

- **SmartCare 2.0 – Hospital Edition**, a **tertiary/specialised-hospital tier** of the
  same national EHR — *not* a rename of SmartCare Pro and *not* its replacement.
- **Pilot launched 2026-04-27** at **Ndola Teaching Hospital**, run by
  [[smart-zambia-institute]] with the [[ministry-of-health-zambia|Ministry of Health]] and
  [[ihm-southern-africa]], and extending to **Arthur Davison Children's Hospital** and
  **Kitwe Teaching Hospital**. Its design goal is a single patient record moving across
  hospital *departments*. SZI's Percy Chinyama called it "the result of years of
  development"; Government CTO **Kasali Musenge** called the platform "**locally developed
  and owned**" — the same vendor-independence framing the wiki reads across
  [[zambia--dpi-id]]. Source: [[2026-04-28-zambia-smartcare-2-0-ndola-pilot]].

So as of **2026-07**: **SmartCare Pro** is the deployed facility-tier national record
(**2,000+ facilities**), while **SmartCare 2.0** is a **three-hospital pilot** at the
tertiary tier. Reporting them side by side is correct; reading them as rival systems is not.

**One question stays open.** SmartCare Pro has its own biometric enrolment — the programme
portal states it "has recently implemented biometric functionality, allowing the capture of
fingerprint impressions during patient registration", used at reception and pharmacy.
**Whether SmartCare 2.0 shares that enrolment, or the MOSIP/[[inris]] identifier, is not
established by anything held** — a real gap, not an omission of this page.

## Activity in this wiki

- **MOSIP integration in training (2025-01-17).** [[smart-zambia-institute]] e-government
  developers completed **[[mosip]]** training delivered by [[ihm-southern-africa]]'s software
  team, **concentrated on integrating MOSIP with the SmartCarePro EHR** — for **e-KYC**, a
  **"central source of truth"**, identity verification against NRC data, elimination of
  duplicate records and better client-profile management. Financed via [[dzap]]'s $100m
  [[world-bank]] grant. At this date the integration was **in development, not live**.
  Source: [[2025-01-17 Zambia Advances Digital ID System with MOSIP Training for Healthcare Integration]].
- **ID-to-EHR link reported live (2026-01-15).** The implementers describe SmartCare Pro as
  launched and in use in rural **Kafulafuta** (a village of just over 5,000), with a
  patient's **fingerprints as his digital identity** granting access to his records at any
  public hospital, biometrics securely stored. **This is the value of the source: it dates
  the ID-to-EHR link going live**, where the January-2025 account had only developers in
  training. Source:
  [[2026-01-15 How Digital Public Infrastructure Is Transforming Health and Identity in Rural Zambia]].

- **Rollout figures, dated (SZI/operator claims).** **400 facilities (2024-08-15)**, with a
  stated target of 600 by end-2024 and "1,250 sites within the next few months"; **750+ sites
  during 2024**. By **2026-04-14** Chinyama told the World Internet Conference in Hong Kong
  that **12 million patient records** had been consolidated, across **2,000+ facilities**, with
  **14,000+ health workers trained**, replacing **1,600+ facilities** that had run on
  incompatible legacy databases. All are operator statements; none is independently verified.
- **Migrating onto GovLink; 2,000+ facilities (2026-07).** SmartCare Pro is among the first systems
  moving onto **[[govlink|GovLink Private 4G]]**, the government-owned network launched 15 Jul 2026,
  and is reported deployed in **more than 2,000 health facilities (2026-07)** — alongside **Care
  2.0** (i.e. **SmartCare 2.0**, see *Version lineage* above), piloted at Ndola Teaching Hospital,
  Arthur Davison Children's Hospital and Kitwe Teaching Hospital. *(Compare **~80% of health
  facilities**, SZI, 2026-07-08 — a share, not a count; the two
  are not necessarily in conflict.)* Clinicians at Ndola reported electronic access to records,
  radiology and diagnostics at launch — an operator statement, not an evaluation. See
  [[infra.connect]]. Source: [[2026-07-17-zambia-govlink-private-4g]].

## Provenance — read the 2026-01 account as vendor framing

**The 2026-01-15 piece is written by the implementers themselves** ([[ihm-southern-africa]]
built the system; **[[co-develop]]** publishes dpi.africa and funds the DPI agenda) and it
is **promotional**: one 90-year-old's testimony (Isaac Makonko), **zero figures, no
baseline, no evaluation, no dissenting voice**. **Capture is not endorsement.** Cite it for
**what the system does** and for **the vendor's framing** — *never* as evidence that it
works. The wiki holds **no independent assessment** of SmartCare Pro: no uptake numbers, no
error/exclusion rates, no failure-mode account for the biometrically unreadable. Biometric
identity as the sole key to health records is precisely the design whose exclusion risks
the held [[gov.protect]] material would want measured, and nothing in what we hold measures
them. That absence is the finding.

## Related

[[ihm-southern-africa]] · [[inris]] · [[mosip]] · [[smart-zambia-institute]] ·
[[co-develop]] · [[dzap]] · [[ZMB]] · [[dpi.mis]] · [[dpi.id]]

## Sources

- [[2025-01-17 Zambia Advances Digital ID System with MOSIP Training for Healthcare Integration]]
- [[2026-01-15 How Digital Public Infrastructure Is Transforming Health and Identity in Rural Zambia]]
- [[2026-07-17-zambia-govlink-private-4g]]
- [[2026-04-28-zambia-smartcare-2-0-ndola-pilot]]
- [[2014-01-01-moh-zambia-ict-standards-and-guidelines]]
- [[2025-03-01-smartcare-pro-programme-managers-presentation]]
