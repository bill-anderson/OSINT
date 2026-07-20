---
type: intersection
title: Gabon × Digital Identity
place: GAB
topic: dpi.id
places: [GAB]
topics: [dpi.id, dpi.registry]
entities: [[digital-gabon-project], [in-groupe], [thales], [semlex], [aninf-gabon]]
lens: [sovereignty, colonialism]
status: active
last_reviewed: 2026-07-20
sources: [[2024-06-26-gabon-launches-electronic-national-id-card], [2024-06-28-gabon-national-id-card-goes-digital], [2024-07-02-gabon-electronic-id-11-year-hiatus], [2024-09-25-gabon-digital-id-forefront-transformation], [2025-01-01-gabon-electoral-roll-verification-platform], [2012-09-20-gemalto-gabon-biometric-national-registry], [2015-11-25-in-groupe-gabon-dgdi-secure-titles-partnership], [2026-06-03-gabon-cnie-enrolment-figures-assembly]]
---

# Gabon × Digital Identity

Gabon's legal-identity relaunch is the flagship component of the World Bank–financed
[[digital-gabon-project]] and the anchor of its wider DPI ambitions.

## The CNIE relaunch (June 2024)

After an **~11-year gap in ID-card renewals**, President of the Transition Brice Clotaire Oligui
Nguema announced on **24 June 2024** that citizens could apply for the new **Carte Nationale
d'Identité Électronique (CNIE)** — a chip card storing a digital identity and a unique **14-digit
Personal Identification Number (NIP)**. The **NIP certificate**, issued after biometric capture, is
the prerequisite document for the CNIE. Issuance began in Libreville with planned extension to police
stations nationwide, following a **May 2024 civil-registry / NIP enrolment campaign** in the Libreville
region. The launch is corroborated across five outlets (WeAreTech, Powers of Africa, Innovation
Village, Techpoint, Biometric Update).

## Vendors — and the sovereignty/colonialism read

The two French vendors hold **genuinely distinct layers**, and the accounts blurred them for a reason
the wiki had not spotted: **neither won its Gabon mandate under the name now used**. Both roles arrived
by acquisition, and the two companies traded identity assets **in both directions** — IN Groupe bought
Thales's Identity & Biometrics arm (effective **9 May 2017**), and Thales bought Gemalto (**2019**).
A search on either name therefore returns the other's work.

- **Registry layer — [[thales]], inherited from Gemalto.** **Gemalto** won Gabon's national biometric
  civil registry (IBOGA) by **international tender, announced 20 September 2012** — Coesys biometric
  enrolment (fixed and mobile stations), fingerprint deduplication, Coesys Issuance for document
  personalisation, and a PKI, plus training and maintenance
  ([[2012-09-20-gemalto-gabon-biometric-national-registry]]). Thales holds this thread today **because
  it acquired Gemalto in 2019**, not because Thales itself held and resumed a contract — the wiki's
  earlier "Thales awarded in 2012" framing was wrong. Thales presented IBOGA jointly with Gabon at
  **ID4Africa (June 2023)**, setting out the RBPP, CNEC and the NIP format.
- **Credential layer — [[in-groupe]].** Imprimerie Nationale delivered its **ID Platform** secure-title
  issuance system to the Gabonese state in **2013**, after first contacts in **2010**; in **November
  2015** it signed a **five-year partnership with the DGDI** covering **maintenance of that platform and
  extension of the main secure-titles supply contract**, signed by Interior Minister Pacôme Moubelet
  Boubeya and IN Groupe CEO Didier Trutt
  ([[2015-11-25-in-groupe-gabon-dgdi-secure-titles-partnership]]). Published scope was **e-passports,
  visas, residence permits and refugee cards** — **the national identity card was not named**.
- **[[semlex]]** (Belgian) sat on the credential side between the IN Groupe threads; its contract was
  **terminated (~2015)**, the cited cause of the ~11-year card-renewal gap. Gabon has now cycled through
  **three** credential arrangements.

**Still unsourced: the 2024 CNIE award itself.** No procurement notice, award publication or vendor
press release naming a 2023/24 Gabon CNIE contract has been found for either company (checked
2026-07-20). The claim that IN Groupe supplies the CNIE card and software (EVP **Yann Haguet**) rests on
**secondary coverage only**. Note a live tension: Digital Business Africa reported (2024-06-27) that
**the DGDI itself produces the CNIE** — consistent with IN Groupe's stated 2015 **technology-transfer**
aim, but not with a flat "IN Groupe supplies the card". *Platform supplier* and *producer of record* are
different claims and the sources do not settle which applies.

A sovereign national-ID build delivered on **French vendor stacks** is the textbook [[colonialism]]
tension set against the government's explicit [[sovereignty]] framing — sharpened by the fact that the
vendor itself named the risk: Thales's own ID4Africa deck (2023-06) lists **"risk of vendor lock-in"**
as an external challenge and **"foster competitiveness and technology interoperability"** as a guiding
principle.

## DPI ecosystem and downstream uses

- Gabon frames the digital-ID number as the **keystone of a DPI ecosystem** (consultancy **ID30**,
  CEO Jaume Dubois, advising) resting on three pillars: enabling environment, modernised legal
  identity, and digital transformation of public administration
  ([[2024-09-25-gabon-digital-id-forefront-transformation]]).
- **Electoral roll keyed on the NIP.** The Interior Ministry / **[[aninf-gabon]]** online
  electoral-roll verification platform (`consultation.listelectorale.ga`, 2025) looks citizens up by
  **NIP**, directly linking the voter register to the national ID system
  ([[2025-01-01-gabon-electoral-roll-verification-platform]]).
- **Regional ambition:** the government intends the CNIE to serve as a **CEMAC travel document** (the
  region has permitted visa-free travel for biometric-passport holders since 2008, with patchy
  implementation).
- **Social targeting:** the [[registre-social-unique-gabon]] social registry is designed to sit
  downstream of the ID layer.

## 2025 build-out — registers, civil status & the vote

- **Three legal-ID pillars ([[gabon-legal-id-projects]]).** WB-financed workshops (23 Jun 2025) launched the
  **RBPP** (biometric population register extension), **SNID** (national digital-identity system) and **CNEC**
  (national civil-registration centre) under Gabon Digital component 2 — the registry/civil-status layer beneath
  the CNIE. ID Day 2025 (Sept, ANINF as ID4Africa ambassador) marked the governance milestone.
  Sources: [[2025-06-23-gabon-legal-digital-id-three-projects]], [[2025-09-16-gabon-digital-identity-governance-milestone]].
- **Biometric voter registration (2025 election).** A nationwide biometric enrolment (2 Jan → 31 Jan 2025) added
  **~300,000 voters** to the **850,000** existing register ahead of the **12 April 2025** presidential vote,
  keyed on the NIP. Sources: [[2025-01-15-gabon-biometric-voter-registration-underway]],
  [[2025-01-31-gabon-biometric-voter-register-integrity]].
- **Land registry — "Un Gabonais, un titre foncier."** ANUTTC signed **~1,200 cession decisions in 2025**, but
  ~3,000 people owe **~14bn FCFA** in arrears; a parallel **cadastre-digitalisation** drive aims to formalise
  untitled land (unlocking credit and cutting disputes). Sources:
  [[2025-12-01-gabon-land-registry-cession-figures]], [[2025-12-02-gabon-cadastre-digitalisation-land-title]].

## Enrolment and coverage

Interior Minister **Adrien Nguema Mba** gave the first detailed public figures to the National Assembly
on **2 June 2026**, answering oral questions
([[2026-06-03-gabon-cnie-enrolment-figures-assembly]]):

| Measure (as of 2026-06-02) | Value |
|---|---|
| Persons **enrolled** since the 2024 launch | **335,384** |
| Cards **produced** | **164,944** |
| Cards **collected** by holders | **147,224** |
| Cards produced but **uncollected** | **17,720** |
| Files **in processing** | **92,614** |
| Files classed **litigious** | **78,500** |

**These three counts measure different things and must not be conflated:** 335,384 is *enrolment events*,
164,944 is *credentials personalised*, 147,224 is *credentials delivered*. None is stated as **unique NIPs
issued** — and because citizens already on the biometric electoral roll (2013 onward) receive a NIP
attestation **without re-enrolling**, the NIP-holder population is larger than the CNIE enrolment count.
**335,384 is a floor for NIP coverage, not a measure of it.**

Trajectory: **0 (baseline, Dec 2024**, World Bank results framework,
[[2024-12-19-world-bank-digital-gabon-isr-seq7]]) → **~120,000 enrolled / ~50,000 produced (2025-02-25**,
then-minister Hermann Immongault on Gabon 24) → **335,384 (2026-06-02)**. Enrolment roughly tripled
across 2025–26. Against a population of ~2.57m (early 2025), 335,384 enrolments is on the order of
**13% of total population**; the World Bank indicator's 16+ denominator would give a higher figure, not
derivable from these numbers. For scale, legacy IBOGA voter registration held **~690,000 unique records,
52% of the over-18 population** (World Bank PAD, P175987) — the seed data for the RBPP.

**The 78,500 litigious files are ~23% of all enrolments** — a material data-quality problem in the build,
not merely an administrative backlog.

## Open items

- **No NIP-coverage figure.** The World Bank indicator ("% of population 16+ with a NIP") still has no
  dated value above its Dec-2024 baseline. The June-2026 figures are CNIE enrolments, not NIP holders.
- **No primary for the 2024 CNIE contract award** — see Vendors above.
- **Figures rest on press accounts of a spoken answer.** The Assembly's own communiqué and the AGP state
  news agency both cover the 2 June 2026 session but **neither publishes the numbers**. A DGDI or
  Interior Ministry publication would be stronger provenance (routed to `reviews/acquisitions.md`).
- **Visa digital-ID element** (from the May 2025 [[gabon-visa-partnership-deal]]) is reported
  second-hand and needs a primary source.

## Record not held (as of 2026-07-20)

**No directorate publication of the CNIE enrolment figures exists.** The figures on this page from
Minister **Adrien Nguema Mba**'s 2 June 2026 answer to the National Assembly (335,384 enrolled;
164,944 produced; 147,224 collected; 17,720 produced-but-uncollected; 92,614 in processing; 78,500
litigious) rest on **press accounts of a spoken answer**, and an acquisition attempt on 2026-07-20
found no upgrade available: neither **DGDI** nor the **Interior Ministry** has published the figures,
the Assembly's own communiqué and the AGP state agency cover the session without numbers, and no
*compte rendu intégral* is published. The provenance stands at press-report level and should be
attributed as such.

Also still unheld: **any dated NIP-coverage figure** against the World Bank "% of population 16+ with
a NIP" indicator, which remains at its zero baseline (Dec 2024).

## Sources

- [[2024-06-26-gabon-launches-electronic-national-id-card]]
- [[2024-06-28-gabon-national-id-card-goes-digital]]
- [[2024-07-02-gabon-electronic-id-11-year-hiatus]]
- [[2024-09-25-gabon-digital-id-forefront-transformation]]
- [[2025-01-01-gabon-electoral-roll-verification-platform]]
- [[2012-09-20-gemalto-gabon-biometric-national-registry]]
- [[2015-11-25-in-groupe-gabon-dgdi-secure-titles-partnership]]
- [[2026-06-03-gabon-cnie-enrolment-figures-assembly]]
