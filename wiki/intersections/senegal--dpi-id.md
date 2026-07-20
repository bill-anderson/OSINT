---
type: intersection
title: Senegal × Digital Identity & CRVS
place: SEN
topic: dpi.id
places: [SEN]
topics: [dpi.id, dpi.registry, gov.protect, infra.cybersec, gov.regional]
entities: [[daf-senegal], [iris-corporation], [anec-senegal], [nekkal-programme], [senegal-numerique], [cdp-senegal], [new-deal-technologique], [green-blood-group], [clement-domingo], [civipol], [enabel], [european-union]]
status: active
last_reviewed: 2026-07-20
sources: [[2026-02-10 Senegal data breach disrupts national ID issuance], [2026-02-10 Senegal shuts National ID office after ransomware attack], [2026-02-24 Senegal ID System Breach – 139TB Hack Claim], [2026-02-05-aps-daf-suspension-cni-communique], [2026-02-05-senegal7-daf-perso-server-email], [2026-02-11-zataz-senegal-frappe-fichier-identite], [2026-02-12-darkreading-senegal-breach-security-maturity], [2026-04-07-aps-daf-reprise-production-cni], [2025-02-18 Senegal targets 3M ECOWAS biometric ID holders for voter registration], [2024-06-27 Senegal digitizes millions of civil records under the Nekkal program], [2024-06-26-lequotidien-fofana-19-millions-actes-etat-civil], [2026-06-29-aps-nekkal-avancees-modernisation-etat-civil], [2026-07-13-apa-anec-15-million-birth-records], [2026-01-28 Senegal plans digital overhaul of civil status system (ANEC)], [2023-05-01 Children's Right to Identity in Senegal (CHIP CRC submission)], [2025-08-01-anec-senegal-digitalisation-etat-civil-aliou-sall]]
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
credible** and the TB figure likely a typo. **ZATAZ independently reports the claim as 139 Go** (11 Feb
2026), reaching the GB reading without relying on Dark Reading — a second outlet on the same side of the
split, which is what makes the TB figure look like the outlier. **No volume has been independently
verified**, by ZATAZ or anyone else: both outlets are reporting the *attacker's* number. Sources:
[[2026-02-12-darkreading-senegal-breach-security-maturity]],
[[2026-02-11-zataz-senegal-frappe-fichier-identite]].

**Exfiltration is established; the DAF never denied it.** Researcher **[[clement-domingo|Clément Domingo]]**
examined the published samples and confirmed **genuine birth records and national ID cards** among them
(Feb 2026). The DAF's own communiqués assert only that the **integrity** of personal data "demeure intacte"
(5 Feb 2026) / "est strictement préservée" (7 Apr 2026) — they are **silent on confidentiality and on
volume**, and at no point deny an exfiltration. This page therefore does **not** record an official denial of
a leak; it records an unrebutted leak alongside an integrity assurance. ZATAZ reaches the same reading
independently (11 Feb 2026): a senior police official said systems were being restored and citizens' data
integrity *"restait préservée"*, which ZATAZ notes is *"classique en gestion de crise"* and collides with
the exfiltration claim — *"une administration peut rétablir un service sans avoir encore consolidé, preuve
à l'appui, ce qui a été consulté, copié ou sorti du périmètre."* The foreign ministry did not respond.
Sources: [[2026-02-05-aps-daf-suspension-cni-communique]], [[2026-04-07-aps-daf-reprise-production-cni]],
[[2026-02-12-darkreading-senegal-breach-security-maturity]],
[[2026-02-11-zataz-senegal-frappe-fichier-identite]].

**The "Perso" server was card-personalisation infrastructure, not the citizen database** *(resolved
2026-07-20)*. Two French accounts of the same leaked IRIS email read it that way, and the earlier of them
gives the gloss directly: Senegal7 (**5 Feb 2026**) reports the leaked email flagging a *"intrusion de
sécurité suspectée"* on the **"serveur de personnalisation (Perso Server)"** and the **"serveur de domaine
(Domain Server)"**; ZATAZ (**11 Feb 2026**) has Quik Saw Choo saying personalisation data was taken from one
of the two systems. Dark Reading's reading of "Perso" as the citizens' personal-information store
(**12 Feb 2026**) is the outlet's own inference — it hedges it as *"likely referring to"* — and post-dates
both. In card-issuance architecture "perso" denotes **personalisation**, the stage at which a blank card is
written with its holder's data, which is precisely what the card producer's engineer would be reporting on.
*ZATAZ narrows it further to* **bank**-*card personalisation data, in both its French and English editions;
that specification is single-sourced, sits oddly with a national-ID contract, and is not carried here.*
Sources: [[2026-02-05-senegal7-daf-perso-server-email]], [[2026-02-11-zataz-senegal-frappe-fichier-identite]],
[[2026-02-12-darkreading-senegal-breach-security-maturity]].

**This narrows the route, not the exposure.** A personalisation server holds the civil-identity payload
written to each card, and the **domain controller was compromised too**, giving domain-wide lateral movement.
Domingo's verification of genuine birth records and ID cards stands independently of which machine they left
by. The **full text of the leaked IRIS email is quoted by no account**, and neither the DAF nor IRIS answered
requests for comment (ZATAZ, 11 Feb 2026) — so the server's function rests on two press readings, with no
official confirmation.

**Context.** **[[senegal-numerique|SENUM SA]]** reported *attempted* cyberattacks in the same fortnight —
press called it a compromise, the company did not (see [[senegal--infra-cybersec]]) — and reporting tied the
DAF incident to an **unpaid-invoices dispute** between Iris and the state. **No authority, court filing or
party to the contract has linked the dispute to the intrusion** *(checked 2026-07-20)*; the DSC's line of
enquiry concerns Iris's **maintained access** under the 2016 contract, not non-payment as a motive, and ZATAZ
states the position plainly — *"sans conclure au lien de causalité"*. What is defensible is structural, not
causal: critical dependence on a single foreign contractor, in commercial dispute, at the moment the state
most needed it. Source: [[2026-02-11-zataz-senegal-frappe-fichier-identite]]. Foresiet assessed Green Blood as a technically competent crew running a Golang locker and
double-extortion model, with prior victims in Colombia and India. **The crew is new and its victim list is
reported inconsistently**: it surfaced in **January 2026**, ZATAZ counts **four other victims besides the
DAF** (11 Feb 2026), and Senegal7 describes its activity as **Africa-limited — Egypt, then Senegal**
(5 Feb 2026). Three accounts, three victim sets, none reconciled; treat any "known victims" count as
unsettled. Senegal7 also names the Malaysian team due in Dakar on 22 Jan as **NetAssist Cybersecurity
Provider Malaysia** (ZATAZ says only "experts malaisiens"), and cites **Libération** on a provisional
suspension of *all* identity-document production. The event is one of a run of state
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
  **19m+ acts numerised and indexed as of Jun 2024**, rising to **20m as of Aug 2025** on ANEC's own account,
  against a **30m** universe — the agency puts the **remainder at 10 million** acts still to be digitised and
  indexed across civil-status centres and consular posts. The programme's closing report (Jun 2026) splits
  the two operations differently — **10m acts digitised, 20m indexed** (see the discrepancy note below).
- **Live database load (RNEC).** The **15.3m records (13 Jul 2026)** ANEC reports are those **loaded into the
  live national civil-registration database (RNEC)** — a **subset** of the archive stock, not a replacement
  figure.

**The distinction is ANEC's own, in an ANEC-authored document.** Director-general **Aliou Ousmane Sall**'s
presentation deck (**Aug 2025**) sets out the two bases side by side: the digitalisation process yields
*"20 000 000 d'actes d'état civil numérisés et indexés"* out of the archives, while the *"déclarations
enregistrées via le RNEC"* — the live registration flow — are counted separately and are far smaller:
**112,881 in 2024** and **108,233 from 1 Jan to 3 Jul 2025**. Archive stock and RNEC load are different
quantities measured on different bases, from the agency itself, not an inference the wiki has imposed on the
figures. This deck is the **primary behind the counts**, which previously reached the wiki only through APA's
report of an ANEC Facebook post. Minister **Moussa Bala Fofana** had drawn the same line in Jun 2024:
*"Plus de 19 millions d'actes d'état civil sont numérisés et indexés. **Une bonne partie** accessible à
partir du Registre national de l'état civil."* The later, smaller number therefore reflects a narrower
counting base, not lost ground. *(Resolved 2026-07-20; primary-sourced 2026-07-20.)* Source:
[[2025-08-01-anec-senegal-digitalisation-etat-civil-aliou-sall]].

**Discrepancy, unresolved and dated.** ANEC's DG (**Aug 2025**) reports **20m acts "numérisés *et* indexés"**
with **10m remaining**; the Nékkal closing report (**Jun 2026**) reports **10m digitised and 20m indexed** as
two distinct totals. Both are held sources and they do not reconcile: on the first reading 20m acts have
completed both operations, on the second only 10m have been scanned at all. The likeliest explanation is
that the Jun-2026 figure counts **Nékkal's own** contribution rather than the national total, but no held
document says so. **Carry both dated; do not merge them into a single number** (as of 2026-07-20).

**Wording caution.** APA and downstream English coverage headline the 15.3m as **"birth records"**; ANEC's own
framing is **actes d'état civil** — **all** civil-status events (births, marriages, deaths). Carry the broader
wording.

**Programme outputs (as of Jun 2026).** 26 modern civil-status centres; **400 centres interconnected**; 1,200
computers and 1,000 printers deployed; 65 motorcycles to communes; 32 communal coordination plans; a services
platform; a births/deaths notification tool for health facilities; and a consular civil-status application for
Senegalese abroad. Legally, Nékkal produced a validated **bill on computerising civil-status management**
plus implementing and register-conservation decrees, and the **Stratégie nationale de l'état civil**
(budgeted CFA68bn). *"Validated" is not "enacted":* ANEC's own deck (**Aug 2025**) lists among **perspectives**
— i.e. still outstanding — *"validation en Conseil des Ministres et adoption à l'Assemblée nationale du
projet de loi sur l'informatisation de la gestion de l'état civil et signature de son projet de décret
d'application"*, plus signature of the register-reconstitution decree. **As of Aug 2025 neither text was
adopted**, and no held source records their adoption since (as of 2026-07-20).

**ANEC's own build figures (Aug 2025).** **400 centres** running the civil-status management application;
**383 centres installed** with network equipment by **[[senegal-numerique|SENUM SA]]**; **235 centres in
service** — connected and operational, i.e. **a little over half the installed base was live**;
**1,200 agents** trained on the RNEC platform and **2,800 agents, 631 officers, 631 archivists** trained on
their trades; **6 servers totalling 1,000 TB** across **3 hosting sites**. Interoperability is built around a
**numéro unique (NU)** linking civil status to **[[daf-senegal|DAF]]** identity and biometrics, the courts
(electronic transmission of judgments, criminal record), health (patient file, electronic birth/death
notification), tax, the electoral roll, passports/residence cards, payroll and social security, and the
statistics office. Produced alongside: a civil-status **information-system security policy (PSSI-EC)** and a
**[[cdp-senegal|CDP]]** personal-data-protection strategy for civil status. Source:
[[2025-08-01-anec-senegal-digitalisation-etat-civil-aliou-sall]].

Training reached **30 trainers and 4,000+ civil-status actors**; ANEC separately reports
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
