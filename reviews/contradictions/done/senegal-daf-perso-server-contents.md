# Contradiction: what did the compromised "Perso" server at Senegal's DAF actually hold — citizens' civil-identity records, or card-personalisation data?

**Opened:** 2026-07-20 (SEN ingest chunk)

## The dispute

On 19 January 2026 a ransomware crew calling itself the Green Blood Group compromised **two servers** at
Senegal's Directorate of File Automation (DAF), the government body that issues national ID cards and
passports. The intrusion became public through a **leaked internal email** sent the following day by an
employee of IRIS Corporation Berhad, the Malaysian contractor that built and supplies the ID system, to
staff at Senegal's Ministry of Interior and Public Security.

Every account agrees the two compromised machines were (1) a **domain controller** and (2) a server the email
called **"Perso."** They disagree on what "Perso" was:

- **Claim A — "Perso" is card-personalisation infrastructure; what was stolen was card-personalisation data.**
  - Asserted by: Security Affairs (Pierluigi Paganini), 2026-02-10.
    URL held: https://securityaffairs.com/187811/data-breach/senegal-shuts-national-id-office-after-ransomware-attack.html
  - Also asserted by: Bright Defense, 2026-02-24 (a secondary aggregator compiling named primaries).
    URL held: https://www.brightdefense.com/news/senegal-id-system-breach/
  - Per the briefing note that prompted this item, ZATAZ (2026-02-11) renders it more narrowly still, as
    *"données de personnalisation de cartes bancaires"* (**bank**-card personalisation data), and The Record
    (2026-02-09) also renders it as card-personalisation material. **No clean source URL is held for either
    the ZATAZ or The Record article** — that is itself a provenance gap on this side of the dispute.
- **Claim B — "Perso" is the database where citizens' personal information is stored.**
  - Asserted by: Dark Reading (Nate Nelson), 2026-02-12 — but **hedged by the outlet itself**, which writes
    that the name is *"likely referring to"* that database. This is the reporter's inference, not a quotation
    from the leaked email.
    URL held: https://www.darkreading.com/cyberattacks-data-breaches/hackers-breach-senegal-national-biometric-database

## Why it matters

The two readings imply materially different severity. Card-personalisation data is the payload written to a
card during manufacture — serious, but bounded, and potentially limited to cards in the production queue.
A citizens' personal-information database implies exposure of the population register itself.

**Note what is *not* in dispute:** an exfiltration of civil-identity material is independently established.
Researcher Clément Domingo examined the samples the group published and confirmed genuine **birth records and
national ID cards** among them. So Claim A being correct would not mean civil-identity data was safe — it
would only mean the "Perso" server was not the route by which it left. The authority whose system it was has
never denied an exfiltration: its public communiqués (2026-02-05 and 2026-04-07) assert only that the
**integrity** of personal data remains intact, and are silent on confidentiality and on volume.

Separately, the group's claimed volume appears in two figures — **139 TB** on its leak-site posting and
**139 GB** in its ransom note. These are the same actor's claim in two artefacts rather than two independent
estimates, so the GB figure is the more credible and the TB figure likely a typo. No volume has been
independently verified. That sub-question is treated as settled-enough and is not what this item asks about.

## Likely reconciliation to test

The decisive artefact is the **leaked IRIS email itself**, which no account quotes in full. Establish, with
an as-of date: (1) the email's actual wording describing the second server; (2) what a server named "Perso"
does in the IRIS card-issuance architecture as deployed at the DAF — in card-production systems "perso"
conventionally denotes personalisation, which favours Claim A and suggests Dark Reading's hedged gloss is a
misreading; (3) whether the personalisation system nonetheless holds or caches civil-identity records, in
which case both claims are partly true; and (4) by what route the birth records and ID cards Domingo verified
were actually obtained, given a domain controller was also compromised.

## Instruction

These sources give different accounts of what the compromised "Perso" server at Senegal's Directorate of File
Automation held — card-personalisation data, or a database of citizens' personal information. One account
explicitly flags its reading as an inference. Investigate the discrepancy, seek the underlying leaked email
and any statement from the contractor or the ministry, and suggest a resolution, recording an as-of date for
each claim.
