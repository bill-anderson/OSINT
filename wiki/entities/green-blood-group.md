---
type: entity
entity_type: organisation
title: Green Blood Group
places: [SEN]
topics: [infra.cybersec, gov.protect, dpi.id]
status: active
last_reviewed: 2026-07-20
sources: [[2026-02-05-aps-daf-suspension-cni-communique], [2026-04-07-aps-daf-reprise-production-cni], [2026-02-12-darkreading-senegal-breach-security-maturity], [2026-02-11-zataz-senegal-frappe-fichier-identite]]
---

# Green Blood Group

**The ransomware crew that breached Senegal's biometric population register in January 2026 and halted national ID-card production for over two months.** The wiki holds it as the actor in the single most consequential African identity-system breach it records.

*Capture is not endorsement; profiling this actor implies no view of it. Everything below is attributable claim or documented effect — no held source establishes the crew's composition, location or wider campaign.*

## The breach

- **Intrusion (2026-01-19).** Two servers at the **[[daf-senegal|DAF]]** — the biometric population register and ID/passport issuer — were breached: a **domain controller** and a server referred to as **"Perso"**. This is known from a leaked **[[iris-corporation]]** email (Quik Saw Choo) to the **Ministry of Interior and Public Security** the following day.
- **Leak site (2026-02-04); acknowledgement and suspension (2026-02-05).** The crew's leak site went up; the DAF publicly acknowledged the incident and **suspended national ID-card production**, in a communiqué signed by Commissioner **Ibrahima Dieng**. Source: [[2026-02-05-aps-daf-suspension-cni-communique]].
- **Production resumed (2026-04-01).** Enrolment restarted progressively across centres and overseas missions. Source: [[2026-04-07-aps-daf-reprise-production-cni]].

## Volume — one actor, two numbers

The **139 TB** and **139 GB** figures are **the same actor's claim in two artefacts** — the leak-site posting (TB) versus the ransom note to the DAF (GB) — not two independent estimates. That makes **~139 GB the more credible** reading and the TB figure likely a typo. **ZATAZ independently reports the claim as 139 Go** (2026-02-11), reaching the GB reading without relying on Dark Reading. **No volume has been independently verified** (as of **2026-07-20**): both outlets are reporting the *attacker's* number. Sources: [[2026-02-12-darkreading-senegal-breach-security-maturity]], [[2026-02-11-zataz-senegal-frappe-fichier-identite]].

## Exfiltration is established

Researcher **[[clement-domingo]]** examined the published samples and confirmed **genuine birth records and national ID cards** among them (Feb 2026). The DAF's communiqués assert only that data **integrity** "demeure intacte" (5 Feb 2026) / "est strictement préservée" (7 Apr 2026) — **silent on confidentiality and on volume**, and at no point denying an exfiltration. The wiki therefore records **an unrebutted leak alongside an integrity assurance**, not an official denial.

## Reads

- `sovereignty`: the crew's leverage came not from encrypting a system but from holding the *population register itself* — the state could restore service in ten weeks but cannot un-leak a citizen's biometric enrolment. Availability recovered; confidentiality did not, and the state's own communiqués addressed only the former.

## Related

Place: [[SEN]] · Target: [[daf-senegal]] · Supplier context: [[iris-corporation]] ·
Verifier: [[clement-domingo]] · Intersections: [[senegal--dpi-id]] · [[senegal--infra-cybersec]] ·
Concepts: [[infra.cybersec]] · [[gov.protect]] · [[dpi.id]]
