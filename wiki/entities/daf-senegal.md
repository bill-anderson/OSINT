---
type: entity
entity_type: government-body
title: DAF — Directorate of File Automation (Senegal)
places: [SEN]
topics: [dpi.id, dpi.registry, infra.cybersec, gov.protect]
lens: []
status: active
last_reviewed: 2026-07-20
sources: [[2026-02-10 Senegal data breach disrupts national ID issuance], [2026-02-10 Senegal shuts National ID office after ransomware attack], [2026-02-24 Senegal ID System Breach – 139TB Hack Claim], [2026-02-05-aps-daf-suspension-cni-communique], [2026-02-05-senegal7-daf-perso-server-email], [2026-02-11-zataz-senegal-frappe-fichier-identite], [2026-02-12-darkreading-senegal-breach-security-maturity], [2026-04-07-aps-daf-reprise-production-cni], [2025-08-01-anec-senegal-digitalisation-etat-civil-aliou-sall]]
---

# DAF — Directorate of File Automation (Senegal)

Senegal's **Direction de l'Automatisation des Fichiers (DAF)**, under the **Ministry of Interior and
Public Security**, manages the **biometric population register** and issues **national ID cards,
passports and residency documents**. The core state body for foundational identity issuance,
distinct from civil-registration ([[anec-senegal]]) and digital-transformation ([[senegal-numerique]]).

## Activity in this wiki

- **National ID production suspended after cyberattack (Feb 2026).** DAF announced an "incident" in its
  information system on **2026-02-05** and momentarily suspended national ID-card production (services also
  affecting passports/biometric documents), opening an investigation and stating citizens' personal data
  "remain fully intact." A newly emerged ransomware group, **Green Blood Group**, claimed theft of the DAF
  database — competing figures of **139TB** and **139GB** circulated and were never officially confirmed. A
  leaked email attributed to **[[iris-corporation]]** (Malaysia, Senegal's ID-card supplier) described the
  compromise of **2 DAF servers on 2026-01-19** and theft of card-personalisation data; reporting also noted an
  **unpaid-invoices commercial dispute** between the state and Iris. DAF communiqué signed
  by Commissioner Ibrahima Dieng.
- **The two compromised servers (resolved 2026-07-20).** The leaked IRIS email named a **domain controller**
  and a server called **"Perso"** — **card-personalisation infrastructure**, not the citizen database.
  Senegal7 (**5 Feb 2026**) renders the email's own wording as *"serveur de personnalisation (Perso Server)"*
  and *"serveur de domaine (Domain Server)"*; ZATAZ (**11 Feb 2026**) has Quik Saw Choo reporting
  personalisation data taken from one of the two. Dark Reading's reading of "Perso" as the citizens'
  personal-information store (**12 Feb 2026**) is its own hedged inference and post-dates both. This narrows
  the **route**, not the exposure: the domain controller was also taken, and Domingo's verification of genuine
  civil-identity records stands independently. No official confirmation of either server's function exists;
  neither the DAF nor IRIS answered requests for comment. Detail: [[senegal--dpi-id]]. Sources:
  [[2026-02-05-senegal7-daf-perso-server-email]], [[2026-02-11-zataz-senegal-frappe-fichier-identite]].
- **The Iris-dispute link is unestablished (checked 2026-07-20).** No authority, court filing or party has
  put the unpaid-invoices dispute and the intrusion in a causal relation on the record. The DSC's enquiry
  concerns Iris's **maintained access** under the 2016 contract; the causal framing is press juxtaposition.
  What holds is the structural point — single-contractor dependence, in dispute, at the moment of crisis.
- **The volume, and what the DAF actually said (resolved 2026-07-20).** The 139TB/139GB split is not a
  disagreement between outlets but **the same actor's claim in two artefacts**: the Green Blood Group's
  leak-site posting (spotted 2026-02-04) said **139 TB**, while its ransom note to the DAF said **139 GB**.
  Dark Reading (2026-02-12) reports both and treats the terabyte figure as a likely typo, making **~139 GB
  the more credible claim** — though **no volume has been independently verified**. A real exfiltration *is*
  established: independent researcher **Clément Domingo** examined the published samples and confirmed
  genuine birth records and national ID cards (2026-02-12). **Critically, the DAF never denied
  exfiltration:** its communiqués of **2026-02-05** and **2026-04-07** assert only that the *integrity* of
  personal data "demeure intacte" — an integrity claim, silent on confidentiality and volume. The wiki must
  not carry this as an official denial of a leak. CNI production resumed **2026-04-01**. See [[SEN]], [[infra.cybersec]], [[gov.protect]], [[dpi.id]]. Sources:
  [[2026-02-10 Senegal data breach disrupts national ID issuance]],
  [[2026-02-10 Senegal shuts National ID office after ransomware attack]],
  [[2026-02-24 Senegal ID System Breach – 139TB Hack Claim]].

## Related

- [[SEN]] · [[iris-corporation]] · [[senegal-numerique]] · [[new-deal-technologique]] · [[cdp-senegal]]
