---
type: review-research
id: senegal-national-id-breach-volume
generated: 2026-07-20
method: Exa search + fetch
status: DO-NOT-INGEST (quarantined synthesis — never cited from a wiki page; primaries extracted to new/)
---

# Senegal DAF breach (Feb 2026) — exfiltration volume and unit

## Verdict

CONCLUSIVE — both figures are the *same actor's* claim in two places: the Green Blood Group leak site said **139 TB**, its ransom note to the DAF said **139 GB**; Dark Reading (2026-02-12) reports the TB figure as likely a typo, making **139 GB the more credible figure** — but **no volume has been independently verified**, while the *authenticity* of the sample data was independently confirmed.

## What happened

The unit discrepancy is not a disagreement between outlets about a known fact. It is two different renderings of a single unverified criminal claim, and the split maps cleanly onto which artefact each outlet read.

**The 139 TB line** traces to the leak-site posting spotted 2026-02-04. Senegalese and French-language press ran with it — *Libération* via CNM (2026-02-05), Le Soleil (2026-02-05), RFI (2026-02-07, "139 téraoctets, soit une quantité vertigineuse... impossible à vérifier"), inCyber (2026-02-06) — and Biometric Update picked it up from The Gambia Journal (2026-02-10). Every one of these flagged it as unconfirmed at the time of writing.

**The 139 GB line** traces to the ransom note sent directly to the DAF. The English-language security press worked from that: The Record (2026-02-09), Security Affairs (2026-02-10), TechNadu, SC Media, ZATAZ, ThaiCERT.

**Dark Reading (2026-02-12) is the piece that reconciles them**, and it is the only account found that names both artefacts side by side: *"On Feb. 4, analysts spotted the Green Bloods leak site, where it claimed to have stolen 139TB of data. That figure may have been a typo. In its ransom note to the DAF, the group referred to 139GB."* Bright Defense (2026-02-24) independently records the same two-artefact split, sourcing it to trade press of 2026-02-12 — i.e. to Dark Reading.

**On verification.** The *totals* were never verified — Gurucul's threat-intel write-up (2026-02-17) lists "full volume of exfiltrated data unconfirmed" and "no official validation of scope" as standing intelligence gaps. But the *sample* was: French-Senegalese security researcher **Clément Domingo (SaxX)** examined the leaked material and confirmed it contained genuine birth records and national ID cards (Dark Reading, 2026-02-12). So Claim C — "no leak occurred" — does not survive: something real was taken. A 139 TB total is in any case implausible on its face for a card-personalisation and civil-registry dataset; 139 GB is the order of magnitude consistent with the document categories in the published samples.

**On the authorities' position — read the wording carefully.** The DAF communiqué of 2026-02-05 (signed Commissaire de Police Principal Ibrahima Dieng, carried by APS) says only that an "incident" occurred, that CNI production is "momentanément suspendu", that an investigation is open, and that "l'intégrité de leurs données personnelles... demeure intacte". That is an **integrity** claim — the database was not corrupted or altered — and it is **not a denial of exfiltration**. Dark Reading makes the point explicitly: "DAF did not address the most pressing issue at hand: the confidentiality of that data." The brief's Claim C ("no citizen data was confirmed leaked") therefore overstates what the DAF actually said. The DAF repeated the identical integrity formula on 2026-04-07 when announcing production had resumed on 2026-04-01, again without addressing confidentiality or the claimed volume.

**Provenance gap now closed.** Two clean standalone APS URLs for the official communiqués were located and clipped (see below).

## Competing claims → reconciled reading

| Claim | Asserted by | As of | Reconciled reading |
|---|---|---|---|
| ~139 **TB** exfiltrated | Green Blood Group leak-site posting; relayed by Libération/CNM, Le Soleil, RFI, inCyber, Gambia Journal → Biometric Update | leak site spotted 2026-02-04; reported 2026-02-05 → 02-10 | Same claim as below, different artefact. Reported as likely a **typo** by Dark Reading. Never verified. Implausible for the dataset described. |
| ~139 **GB** exfiltrated | Green Blood Group **ransom note to the DAF**; relayed by The Record, Security Affairs, Dark Reading, TechNadu, SC Media, ZATAZ, ThaiCERT | 2026-02-09 → 02-12 | The **more credible of the two**, being the figure the group gave its victim directly. Still an unverified attacker claim, not a forensic finding. |
| No confirmed leak; data intact | DAF (Commissaire Ibrahima Dieng), via APS | 2026-02-05, repeated 2026-04-07 | **Mischaracterised in the brief.** DAF asserted *integrity*, not absence of exfiltration, and never addressed confidentiality or volume. Not a denial. |
| Leaked samples are genuine | Clément Domingo (SaxX), independent researcher, via Dark Reading | 2026-02-12 | **Independently verified at sample level**: real birth records and national ID cards. Settles that a genuine leak occurred; says nothing about total volume. |
| Volume unconfirmed; scope unvalidated | Gurucul threat-intel analysis | 2026-02-17 | Standing intelligence gap. No forensic total has ever been published. |

Ancillary facts corroborated across sources, useful for the place/entity pages: intrusion dated **2026-01-19** (two DAF servers — a domain controller and a "Perso" card-personalisation server), per an IRIS Corporation Berhad internal email of **2026-01-20** that the attackers themselves leaked; DAF public acknowledgement **2026-02-05**, more than two weeks after it was first alerted; CNI production resumed **2026-04-01** (announced 2026-04-07), progressively across enrolment centres. Context: an unresolved payment dispute between the Senegalese state and IRIS, and a separate compromise of Sénégal Numérique SA reported the same week.

## Sources consulted

- **APS — "Piratage informatique : la DAF annonce la suspension provisoire de la production de cartes nationales d'identité"**, 2026-02-05. https://aps.sn/piratage-informatique-la-daf-annonce-la-suspension-provisoire-de-la-production-de-cartes-nationales-didentite/ — **extracted to `new/`**. Closes the provenance gap on the official communiqué.
- **APS — "La DAF annonce la reprise de la confection des cartes nationales d'identité depuis le 1er avril"**, 2026-04-07. https://aps.sn/la-daf-annonce-la-reprise-de-la-confection-des-cartes-nationales-didentite-depuis-le-1er-avril/ — **extracted to `new/`**. Official closing position + resumption date.
- **Dark Reading — "Senegalese Data Breaches Expose Lack of Security Maturity"** (Nate Nelson), 2026-02-12. https://www.darkreading.com/cyberattacks-data-breaches/hackers-breach-senegal-national-biometric-database — **extracted to `new/`**. The reconciling account: names both artefacts, reports the typo, carries Domingo's verification.
- The Record / Recorded Future News (Jonathan Greig), 2026-02-09. https://therecord.media/senegal-breach-national-id-agency — 139 GB; IRIS email detail. Not extracted (payload subsumed by Dark Reading).
- Security Affairs (Pierluigi Paganini), 2026-02-10. https://securityaffairs.com/187811/data-breach/senegal-shuts-national-id-office-after-ransomware-attack.html — already held.
- Biometric Update (Ayang Macdonald), 2026-02-10. https://www.biometricupdate.com/202602/senegal-data-breach-disrupts-national-id-issuance — already held; source of the TB figure in the wiki.
- Bright Defense, 2026-02-24. https://www.brightdefense.com/news/senegal-id-system-breach/ — already held; corroborates the two-artefact split.
- Gurucul (Raghunath Sontakke), 2026-02-17. https://gurucul.com/blog/daf-senegal-data-leak/ — vendor threat-intel; volume unconfirmed.
- RFI, 2026-02-07. https://www.rfi.fr/fr/afrique/20260207-sénégal-le-daf-un-département-du-ministère-de-l-intérieur-touché-par-une-cyberattaque — 139 téraoctets, flagged unverifiable.
- Le Soleil, 2026-02-05. https://lesoleil.sn/actualites/societe-fait-divers/incident-a-la-daf-production-des-cartes-didentite-suspendue-une-enquete-ouverte/ — communiqué text + TB caution.
- CNM (Elhadji Fallou Khouma), 2026-02-05. https://cnm.sn/cyberattaque-contre-la-daf-139-teraoctets-de-donnees-senegalaises-revendiquees-par-des-hackers/ — TB claim via Libération.
- inCyber, 2026-02-06. https://incyber.org/en/article/a-leak-may-have-compromised-the-sensitive-data-of-senegals-entire-population/ — TB claim; Domingo quoted.
- ZATAZ (Damien Bancal), 2026-02-11. https://www.zataz.com/le-senegal-frappe-au-coeur-de-son-fichier-didentite/ — 139 Go.
- allAfrica / Sud Quotidien, 2026-02-06. https://fr.allafrica.com/stories/202602060190.html — communiqué + TB caution.
- Le Journal de Dakar, 2026-02-06. https://lejournaldedakar.info/cyberattaque-a-la-daf-le-systeme-atteint-depuis-20-jours/ — Libération sourcing on 20-day dwell time.
- Seneweb, 2026-04-07. https://www.seneweb.com/fr/news/Societe/cartes-nationales-didentite-la-daf-annonce-la-reprise-de-la-production-depuis-le-1er-avril-2026_n_488846.html — resumption communiqué.
- Socialnetlink, 2026-04-06. https://www.socialnetlink.org/2026/04/06/senegal-une-cyberattaque-paralyse-la-delivrance-des-cartes-didentite-et-expose-des-donnees-sensibles/ — 139 Go in French-language reporting.
- TechNadu, 2026-02-10; SC Media, 2026-02-10; ThaiCERT, 2026-02-12 — all 139 GB, derivative of The Record.

Leak sites and onion addresses were **not** visited; all leak-site detail here is taken from security-research reporting about them.
