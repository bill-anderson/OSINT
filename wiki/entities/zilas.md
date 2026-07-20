---
type: entity
entity_type: initiative
title: Zambia Integrated Land Administration System (ZILAS)
places: [ZMB]
topics: [dpi.registry, dpi.govtech, dpi.exchange, dpi.pay, digital.localgov]
status: active
last_reviewed: 2026-07-20
sources: [[2024-09-13 ZILAS - Your Gateway to Modern Land Administration (SMART Zambia)], [2024-09-13 Ministry of Lands and Natural Resources Goes Digital (SMART Zambia)], [2023-06-16-zambia-zilas-ministerial-statement-parliament], [2023-09-19-zambia-zilas-digital-clearance-corpus-legal]]
---

# Zambia Integrated Land Administration System (ZILAS)

**Zambia's national land-administration platform** — deployed by the **Electronic
Government Division of [[smart-zambia-institute]]** for the
**[[ministry-of-lands-zambia]]**, and accessed through the **Government Service Bus at
gsb.gov.zm**. It is the land registry limb of Zambia's DPI stack, sitting alongside
**[[inris]]** (population) in [[dpi.registry]]: applications, title deeds and ground rent
move through it rather than through paper. **ZILAS went live on 17 May 2023**, replacing the
2013-vintage **ZILMIS**.

**Provenance, corrected 2026-07-20.** This page previously rested only on SMART Zambia's own
portal pages, dated 2024-09-13. Two operator-independent accounts have since been added — the
**parliamentary record** and a **Zambian law firm's practitioner note** — and they materially
change the picture, including the system's actual go-live date, which predates the SZI pages
by sixteen months. Where a claim below is still only the implementer's, it is marked as such.

## Chronology (established from the parliamentary record, 2023-06-16)

Minister of Lands and Natural Resources **Elijah Muchima** gave a ministerial statement to the
National Assembly on **16 June 2023**. It is the primary that dates the system:

- **Cabinet approved the development and deployment of ZILAS in 2020.**
- **Data migrated from ZILMIS on Saturday 13 May 2023**; **ZILAS went live 17 May 2023**.
- **Sixty e-services** activated on the Government Service Bus — though the minister closed by
  tabling "a list of the sixty services… we have indicated the ones which are working and those
  which are **work in progress**", so sixty is the count *placed online*, not the count working.
- A **Zampass account on Zamportal is required to access the services** — a broader condition
  than the ground-rent-specific one previously held here.
- **Cut-off of 17 June 2023** for clients who had filed before migration.

Source: [[2023-06-16-zambia-zilas-ministerial-statement-parliament]].

## What the predecessor's failure says about procurement

The same statement is unusually candid about **ZILMIS**, and the admission is the finding:
ZILMIS ran **nine years, 2014–2023**; its **maintenance contract with the developer expired on
31 March 2022**, after which the ministry kept running it **with no contract at all** — "we were
at risk in the event of system challenges." Muchima states ZILMIS ran those nine years "**without
enhancements and inclusion of online payment platforms thereby creating a conduit for
corruption**." A national land register operating unsupported for over a year is a governance
fact about how these systems are sustained, not just a technical one. See [[gov.policy]].

ZILAS's stated improvements over ZILMIS: mandatory identity fields (gender, DOB, NRC, phone,
email); payment rails plugged in (**mobile money, internet banking, Visa, ZANACO Bill Muster**);
a **staff performance-tracking mechanism** that flags red past the ministry's service charter;
**role-based security** and an **audit trail**; **GSB integration to MoHAIS for NRC verification
and to PACRA for company profiles**; 90-day expiry on Invitations to Treat; documents scanned
**while the physical file is still kept**; and an **electronic cashbook disaggregated by
province**. Source: [[2023-06-16-zambia-zilas-ministerial-statement-parliament]].

## The independent account: a bottleneck, not an eliminated queue

**Corpus Legal Practitioners**, a Zambian firm, published a client note on **19 September 2023**
describing ZILAS as conveyancers actually meet it. ZILAS introduced a mandatory preliminary step,
**"Digital Clearance"** — the ministry digitally verifying the details on a certificate of title,
including the registered holder's name — and **"no land transaction can take place until this
process is completed."** Submitting takes **30 minutes to 1 day "depending on the functionality of
the system"**, but **"the timeframe of approval of the Digital Clearance is currently uncertain.
In practice, it takes approximately three (3) to four (4) weeks for the Ministry to approve"**
(2023-09).

Set that against SZI's "**eliminating queues and paper trails**" (2024-09-13): the queue was not
eliminated, it was **relocated** — from a counter to an opaque three-to-four-week approval, and
made a **precondition of every land transaction in the country**. This is precisely the kind of
claim the implementer's own account could never have surfaced.

Muchima had already conceded the friction a year earlier, answering public complaint on the
floor: "*there is an assertion by the members of the general public that the ZILAS has crushed
[crashed]. To the contrary, the system is currently operational*" — while acknowledging
"**teething challenges**", a **team deployed offsite to work on the backlog**, and public
**apprehension at the mandatory data-cleaning requirement** gating access to services.
Sources: [[2023-09-19-zambia-zilas-digital-clearance-corpus-legal]],
[[2023-06-16-zambia-zilas-ministerial-statement-parliament]].

## Activity in this wiki

- **System profile (SZI, 2024-09-13).** *Implementer's own account.* SZI describes ZILAS as having "revolutionized land
  administration in Zambia," eliminating queues and paper trails: a **100% digital** approach
  with **web-based and mobile interfaces**, letting users apply for land-related matters from
  anywhere. Accessed via the **Government Service Bus (gsb.gov.zm)**. This is agency
  self-description, not measured outcome. Source:
  [[2024-09-13 ZILAS - Your Gateway to Modern Land Administration (SMART Zambia)]].
- **Cosmopolitan Mall exhibition, Lusaka (10–13 September 2024).** The
  [[ministry-of-lands-zambia]] concluded a **four-day exhibition** that **attended to over
  250 clients**. ICT Officer **Ms. Gwendoline Hamabele** set out the operative changes: the
  government has adopted the **Government Service Bus**, which hosts ZILAS; a **Zamportal
  account is now a prerequisite to pay ground rent**; and **title deeds are now digitally
  issued**. Source:
  [[2024-09-13 Ministry of Lands and Natural Resources Goes Digital (SMART Zambia)]].

## Still unestablished (as of 2026-07-20)

The independent hunt found accounts, not numbers. **None of the following is on file, and none
should be inferred:**

- **No count of parcels or titles held in ZILAS**, and no district-level coverage figure.
- **No cost figure and no named funder** for the build.
- **No audit or evaluation** — no Auditor-General report on ZILAS was located.
- **The developer is not identified.** The parliamentary record refers to "**dot.gov (the
  developer of the system)**" being in the country to support the transition. Whether that is
  [[dot-com-zambia]] or a distinct firm is **not stated**, and a Hansard rendering of a spoken
  name will not settle it. Do not infer the link.

*Historical baselines on the **predecessor** ZILMIS — never to be presented as ZILAS state:*
ZILMIS held roughly **600,000 documents**, of which at most **200,000–250,000** were estimated
to be complete titles (2017); **141,625** titled records existed in 2013; and it served about
**200 users** nationally, mostly at provincial headquarters (2018). Against that, **under 10%
of Zambian households held title (2018 Labour Force Survey)**. The scale of what land
digitisation in Zambia is actually administering is small relative to the country's tenure.

## Reads

`sovereignty` is not claimed here by the sources and is not asserted. The analytically
live point is the **Zamportal-account prerequisite for paying ground rent** — a digital
credential made a condition of a statutory land obligation, in a country whose internet
penetration is **33.0% of the population using the internet (7.29m people, October 2025**, per
[[datareportal]]/Kepios; ZICTA's much higher "penetration" figures count subscriptions, not people).
Whether that gates or eases
access is unevidenced in what the wiki holds. See [[include.access]], [[include.divides]].

The independent material sharpens this. The Zampass prerequisite is not an isolated condition
but one link in a chain: a digital account is required to reach the services, **Digital Clearance
is required before any land transaction**, and clearance in practice takes **three to four weeks
(2023-09)**. In a country where **33.0% of the population used the internet (7.29m people,
October 2025**, per [[datareportal]]/Kepios; ZICTA's much higher "penetration" figures count
subscriptions, not people), a statutory land obligation now runs through a stack most people are
not on. Whether that gates or eases access is still unevidenced — but the evidence that the
process is *slower* than the paper it replaced now exists, and it comes from practitioners, not
the operator.

## Related

[[ministry-of-lands-zambia]] · [[smart-zambia-institute]] · [[inris]] · [[zamportal]] · [[ZMB]] ·
[[dpi.registry]] · [[dpi.govtech]]

## Sources

- [[2023-06-16-zambia-zilas-ministerial-statement-parliament]]
- [[2023-09-19-zambia-zilas-digital-clearance-corpus-legal]]
- [[2024-09-13 ZILAS - Your Gateway to Modern Land Administration (SMART Zambia)]]
- [[2024-09-13 Ministry of Lands and Natural Resources Goes Digital (SMART Zambia)]]
