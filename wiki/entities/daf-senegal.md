---
type: entity
entity_type: government-body
title: DAF — Directorate of File Automation (Senegal)
places: [SEN]
topics: [dpi.id, dpi.registry, infra.cybersec, gov.protect]
lens: []
status: active
last_reviewed: 2026-07-16
sources: [[2026-02-10 Senegal data breach disrupts national ID issuance], [2026-02-10 Senegal shuts National ID office after ransomware attack], [2026-02-24 Senegal ID System Breach – 139TB Hack Claim]]
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
  compromise of **2 DAF servers on 2026-01-19** and theft of card-personalisation data; reporting also linked
  the incident to an **unpaid-invoices commercial dispute** between the state and Iris. DAF communiqué signed
  by Commissioner Ibrahima Dieng.
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
