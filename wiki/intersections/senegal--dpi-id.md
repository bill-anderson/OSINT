---
type: intersection
title: Senegal × Digital Identity & CRVS
place: SEN
topic: dpi.id
places: [SEN]
topics: [dpi.id, dpi.registry, gov.protect, infra.cybersec, gov.regional]
entities: [[daf-senegal], [iris-corporation], [anec-senegal], [nekkal-programme], [senegal-numerique], [cdp-senegal], [new-deal-technologique], [green-blood-group], [clement-domingo], [civipol], [enabel], [european-union]]
status: needs-review
last_reviewed: 2026-07-20
sources: [[2026-02-10 Senegal data breach disrupts national ID issuance], [2026-02-10 Senegal shuts National ID office after ransomware attack], [2026-02-24 Senegal ID System Breach – 139TB Hack Claim], [2026-02-05-aps-daf-suspension-cni-communique], [2026-02-12-darkreading-senegal-breach-security-maturity], [2026-04-07-aps-daf-reprise-production-cni], [2025-02-18 Senegal targets 3M ECOWAS biometric ID holders for voter registration], [2024-06-27 Senegal digitizes millions of civil records under the Nekkal program], [2024-06-26-lequotidien-fofana-19-millions-actes-etat-civil], [2026-06-29-aps-nekkal-avancees-modernisation-etat-civil], [2026-07-13-apa-anec-15-million-birth-records], [2026-01-28 Senegal plans digital overhaul of civil status system (ANEC)], [2023-05-01 Children's Right to Identity in Senegal (CHIP CRC submission)]]
---

# Senegal × Digital Identity & CRVS

Senegal's identity stack spans a **biometric national ID** (the ECOWAS CNI, produced by
**[[iris-corporation]]** and issued by the **[[daf-senegal|DAF]]**), a modernising **civil-registration
(CRVS)** layer (**[[anec-senegal|ANEC]]** / the **[[nekkal-programme|Nékkal programme]]**), and a planned
**universal digital identity** under the **[[new-deal-technologique|New Deal Technologique]]** (with $10m
Gates Foundation support). Data protection sits under **[[senegal-data-protection-law|Law No. 2008-12]]** and
the **[[cdp-senegal|CDP]]**.

## National ID breach (Jan–Apr 2026)

**Timeline.** The **[[green-blood-group|"Green Blood Group"]]** ransomware crew breached **two servers** at
the **[[daf-senegal|DAF]]** (the biometric population register / ID-passport issuer) on **19 Jan 2026** — a
**domain controller** and a server referred to as **"Perso"** — per a leaked **[[iris-corporation]]** email
(Quik Saw Choo) to the **Ministry of Interior and Public Security** the following day. The crew's leak site
went up **4 Feb 2026**; the DAF publicly acknowledged the incident and **suspended national ID-card
production on 5 Feb 2026** (communiqué signed by Commissioner **Ibrahima Dieng**). **Production resumed
1 Apr 2026**, with enrolment restarting progressively across centres and overseas missions. Sources:
[[2026-02-05-aps-daf-suspension-cni-communique]], [[2026-04-07-aps-daf-reprise-production-cni]],
[[2026-02-12-darkreading-senegal-breach-security-maturity]].

**Volume: one actor, two numbers — ~139 GB the more credible.** The **139 TB** and **139 GB** figures are
**the same actor's claim in two artefacts** — the Green Blood Group's leak-site posting (139 TB) versus its
ransom note to the DAF (139 GB) — not two independent estimates, which makes the **GB figure the more
credible** and the TB figure likely a typo. **No volume has been independently verified.** Source:
[[2026-02-12-darkreading-senegal-breach-security-maturity]].

**Exfiltration is established; the DAF never denied it.** Researcher **[[clement-domingo|Clément Domingo]]**
examined the published samples and confirmed **genuine birth records and national ID cards** among them
(Feb 2026). The DAF's own communiqués assert only that the **integrity** of personal data "demeure intacte"
(5 Feb 2026) / "est strictement préservée" (7 Apr 2026) — they are **silent on confidentiality and on
volume**, and at no point deny an exfiltration. This page therefore does **not** record an official denial of
a leak; it records an unrebutted leak alongside an integrity assurance. Sources:
[[2026-02-05-aps-daf-suspension-cni-communique]], [[2026-04-07-aps-daf-reprise-production-cni]],
[[2026-02-12-darkreading-senegal-breach-security-maturity]].

**What the "Perso" server held is disputed.** Reporting on the same leaked IRIS email splits: Security
Affairs and Bright Defense render the stolen material as **card-personalisation data**, while Dark Reading
reads "Perso" as **the store of citizens' personal information** — an inference the outlet itself flags as
"likely referring to." The distinction is material to severity and is unresolved; open item:
`reviews/contradictions/open/senegal-daf-perso-server-contents.md`. Note that it does not bear on *whether*
civil-identity data leaked — Domingo's sample review establishes that independently.

**Context.** **[[senegal-numerique|SENUM SA]]** was reportedly compromised around the same time (possible
coordination), and reporting tied the DAF incident to an **unpaid-invoices dispute** between Iris and the
state. Foresiet assessed Green Blood as a technically competent crew running a Golang locker and
double-extortion model, with prior victims in Colombia and India. The event is one of a run of state
cyberattacks (tax authority Oct 2025, Public Treasury May 2026) — full wave: [[senegal--infra-cybersec]].
Sources: [[2026-02-10 Senegal data breach disrupts national ID issuance]],
[[2026-02-10 Senegal shuts National ID office after ransomware attack]],
[[2026-02-24 Senegal ID System Breach – 139TB Hack Claim]].

## ECOWAS biometric ID & voter registration (2025)

From **1 Feb 2025**, a voter-registration exercise targeted nearly **3 million ECOWAS-biometric-ID holders**
absent from the electoral roll; the **ECOWAS biometric CNI became the sole accepted proof of identity** for
registration (replacing birth-certificate extracts). Ran to 31 Jul 2025 via ~568 commissions. Source:
[[2025-02-18 Senegal targets 3M ECOWAS biometric ID holders for voter registration]].

## Civil registration (CRVS)

The EU-funded **[[nekkal-programme|Nékkal programme]]** ran to a **final steering committee on 29 Jun 2026**,
executed by **[[civipol]]** and **[[enabel]]** with **[[anec-senegal|ANEC]]** as implementing agency.

**Two counts, two bases — not a regression.** The headline figures measure different things, and the
distinction is the minister's own:

- **Archive stock (scanned and indexed).** Nékkal digitised legacy **paper** acts out of communal archives:
  **19m+ acts numerised and indexed as of Jun 2024**, rising to roughly **20m by Mar 2025** against a **30m**
  target. The programme's closing report (Jun 2026) splits the two operations explicitly — **10m acts
  digitised, 20m indexed**.
- **Live database load (RNEC).** The **15.3m records (13 Jul 2026)** ANEC reports are those **loaded into the
  live national civil-registration database (RNEC)** — a **subset** of the archive stock, not a replacement
  figure.

Minister **Moussa Bala Fofana** drew the line himself in Jun 2024: *"Plus de 19 millions d'actes d'état civil
sont numérisés et indexés. **Une bonne partie** accessible à partir du Registre national de l'état civil."*
The later, smaller number therefore reflects a narrower counting base, not lost ground. *(Resolved
2026-07-20.)*

**Wording caution.** APA and downstream English coverage headline the 15.3m as **"birth records"**; ANEC's own
framing is **actes d'état civil** — **all** civil-status events (births, marriages, deaths). Carry the broader
wording.

**Programme outputs (as of Jun 2026).** 26 modern civil-status centres; **400 centres interconnected**; 1,200
computers and 1,000 printers deployed; 65 motorcycles to communes; 32 communal coordination plans; a services
platform; a births/deaths notification tool for health facilities; and a consular civil-status application for
Senegalese abroad. Legally, Nékkal produced a validated **bill on computerising civil-status management**
plus implementing and register-conservation decrees, and the **Stratégie nationale de l'état civil**
(budgeted CFA68bn). Training reached **30 trainers and 4,000+ civil-status actors**; ANEC separately reports
**3,695 officers trained** and **629 centres networked** (Jul 2026), with **67%** of centres on the **LGEC**
software and **27%** on the **Sama État Civil** online-request platform. A **data-verification campaign ran
13–29 Jul 2026** in Fatick, Louga and Diourbel.

ANEC director-general **Matar Ndao** cautioned (Jun 2026) that the system still faces **governance,
reliability, accessibility and document-conservation** challenges. In Jan 2026 ANEC began rolling out
**pre-declaration software in health facilities** to capture births/deaths at source. Foundational gaps
persist: **22.3% of under-fives unregistered (2019)**, worse in rural regions. Sources:
[[2024-06-26-lequotidien-fofana-19-millions-actes-etat-civil]],
[[2026-06-29-aps-nekkal-avancees-modernisation-etat-civil]],
[[2026-07-13-apa-anec-15-million-birth-records]],
[[2024-06-27 Senegal digitizes millions of civil records under the Nekkal program]],
[[2026-01-28 Senegal plans digital overhaul of civil status system (ANEC)]],
[[2023-05-01 Children's Right to Identity in Senegal (CHIP CRC submission)]].

## See also

- [[SEN]] · [[dpi.id]] · [[dpi.registry]] · [[gov.protect]] · [[infra.cybersec]]
- Entities: [[daf-senegal]] · [[iris-corporation]] · [[anec-senegal]] · [[nekkal-programme]] ·
  [[senegal-numerique]] · [[cdp-senegal]] · [[new-deal-technologique]] · [[green-blood-group]] ·
  [[clement-domingo]] · [[civipol]] · [[enabel]] · [[european-union]]
