---
type: review-research
id: gabon-id-vendor-roles-in-groupe-vs-thales
generated: 2026-07-20
method: Exa search + fetch
status: DO-NOT-INGEST (quarantined synthesis — never cited from a wiki page)
---

# Research: IN Groupe vs Thales in Gabon's ID stack

## Verdict

**Resolved for the historical mandates; still open for the 2024 CNIE award.** The two roles are real,
distinct, and now sourced — and the reason the accounts blur them is a **corporate-history artefact**
the wiki had not spotted.

## The finding that unlocks it

Neither vendor "won" its Gabon mandate under the name the wiki uses. **Both roles arrived by
acquisition**, and the two companies have swapped identity assets with each other:

- **Gemalto** won the Gabon registry in 2012 → **Thales acquired Gemalto (2019)** → Thales now presents
  the IBOGA registry as its own.
- **Thales** owned an Identity & Biometrics arm → **IN Groupe bought it, effective 9 May 2017** → some
  "Thales" identity work in Gabon became IN Groupe work.

So a search on "Thales Gabon identity" returns hits from **both sides of a transaction that ran in both
directions**. That is the conflation. It is not that the sources disagree; it is that the corporate
names moved.

## Role split — established

### Registry layer (population / biometric) — Gemalto → Thales

- **2012-09-20** — **Gemalto selected by the State of Gabon following an international tender** to build
  the national biometric civil registry, to replace paper ID with electronic documents and generate a
  secure electoral register ahead of the 2013 local elections. Scope: **Coesys** biometric enrolment
  (fixed + mobile stations), fingerprint matching for uniqueness, **Coesys Issuance** for personalising
  official documents, and a **PKI**; plus consulting, training, technical assistance, maintenance.
  Quoted: **Jean-François Ndongou**, Interior Minister ("a matter of sovereignty and national security");
  **Ari Bouzbib**, Gemalto SVP (noting the 2009 National Health Insurance enrolment as the precursor).
  Gemalto had a **Libreville bureau**.
  URL: https://www.securetechalliance.org/gemalto-selected-to-build-secure-and-reliable-biometric-national-registry-in-gabon/
- **2013-02-12** — **Délibération n°004/2013** of the CNPDCP gives the formal data-protection opinion on
  IBOGA (referred by the Interior Ministry on 13 Dec 2012), under art. 56 of loi n°001/2011. Confirms
  scope: ten fingerprints, digitised photo, written signature, and extensive civil data; the Commission
  pushed back on centralised storage of the **eight additional fingerprints** as possibly excessive
  relative to the electoral-list purpose. URL: https://journal-officiel.ga/1695-004-2013/
- **Undated (post-2013)** — Gemalto presented **IBOGA phase 2** (civil-registry reliability) to Interior
  Minister **Guy Bertrand Mapangou**; Gemalto's **Eric Goerres** (operations director) and
  **Chabane Degdag** (programmes director) spoke. URL: http://news.alibreville.com/h/10706.html
- **2023-06** — **ID4Africa AGM: a joint Gabon–Thales presentation on IBOGA** ("Building a performant
  digital public infrastructure for Gabon's digital transformation journey"), authored Massamba /
  Gueremy / **Thales**. Sets out IBOGA's arc (2008 inception → 2023), the **RBPP**, **CNEC**, the NIP
  format `XX-NNNN-YYYYMMDD`, and an **ABIS Identity Management System**. Notably lists
  **"risk of vendor lock-in"** as an explicit external challenge and **"foster competitiveness and
  technology interoperability"** as a guiding principle — the vendor itself naming the lock-in problem.
  URL: https://id4africa.com/wp-content/uploads/2023/06/PS3-6-Massamba-Gueremy-Gabon-Thales.pdf

**Conclusion:** Thales holds the **registry** thread, inherited from Gemalto's 2012 tender win. Claim B
in the brief is **correct in substance** — but "resuming its historical registry contract" is loose: the
contract was **Gemalto's**, and Thales holds it because it bought Gemalto in 2019, not because Thales
itself held and then resumed it.

### Credential layer (secure documents) — IN Groupe

- **2010** — first contacts between Imprimerie Nationale and the Gabonese government (Interior Ministry
  seeking secure titles).
- **2013** — IN Groupe delivers the **ID Platform** secure-title issuance and management system to the
  Gabonese state.
- **2015-11 (published 25-11-2015)** — **IN Groupe signs a five-year partnership with the DGDI**
  (Direction générale de la documentation et de l'immigration) for **maintenance of the ID Platform**
  plus **extension of the main contract** for supply of Gabon's secure titles: **e-passports, visas,
  residence permits (cartes de séjour) and refugee cards**. Signed by **Pacôme Moubelet Boubeya**
  (Interior Minister) and **Didier Trutt** (IN Groupe CEO). Stated aim: **technology transfer** so Gabon
  becomes a secure-title production platform itself.
  URL: https://www.graphiline.com/article/21883/l-imprimerie-nationale-signe-un-partenariat-gabon

**Conclusion:** IN Groupe holds the **credential/secure-document issuance** thread, from 2013, extended
2015. Claim A in the brief is **correct in substance**.

Note the scope of the 2015 contract as published: passports, visas, residence and refugee cards — it
**does not name the national identity card**. The CNIE was not in production then (last old-style card
printed 2015; ~9–11 year gap).

## The corporate-history evidence

From IN Groupe's own 2016 annual report
(https://ingroupe.com/app/uploads/2022/09/rapport-dactivite-2016.pdf):

- "**Octobre/Novembre : Entrée en négociations avec le Groupe Thales pour le rachat de Thales Identité
  et Biométrie**"
- "**En 2017, le Groupe intègre les technologies et les savoir-faire de l'activité Identité et
  Biométrie de Thales (intégration effective depuis le 9 mai 2017)**"

Graphiline's own related-article rail carries the same event: *"Thales cède son activité de gestion
d'identité au groupe Imprimerie Nationale."*

And Thales acquired Gemalto in 2019 (widely documented; not separately fetched here).

## Semlex

Semlex (Belgian) is referenced in Gabonese coverage as the provider whose contract was **ruptured in
2015**, cited as the cause of the decade-long ID-card gap ("une décennie sans renouvellement des cartes
d'identité en raison de la rupture de contrat avec un prestataire belge en 2015" — Digital Business
Africa, 2024-06-27). The wiki already has a `semlex` entity page. Semlex sits on the **credential**
side, between the IN Groupe threads — worth noting that Gabon has now cycled through three credential
arrangements.

## What is STILL open

**No primary contract award for the 2024 CNIE relaunch was found for either vendor.** Searches surfaced
no procurement notice, no award publication, and no IN Groupe or Thales press release naming a 2023/24
Gabon CNIE contract. The wiki's claim that IN Groupe supplies the CNIE card and software (attributed to
EVP **Yann Haguet**) still rests on **secondary coverage only**.

Also note: **Digital Business Africa (2024-06-27) reports the CNIE is produced by the DGDI itself** —
"La CNIE est produite par la direction générale de Documentation et de l'Immigration" — which is
consistent with IN Groupe's stated 2015 **technology-transfer** aim (Gabon producing its own titles on a
supplied platform), but sits awkwardly with a flat "IN Groupe supplies the card" claim. This nuance —
**platform supplier vs. producer of record** — should be reflected on the page rather than smoothed over.

## Sources consulted

- https://www.securetechalliance.org/gemalto-selected-to-build-secure-and-reliable-biometric-national-registry-in-gabon/ (fetched; **clipped**)
- https://www.graphiline.com/article/21883/l-imprimerie-nationale-signe-un-partenariat-gabon (fetched; **clipped**)
- https://id4africa.com/wp-content/uploads/2023/06/PS3-6-Massamba-Gueremy-Gabon-Thales.pdf (fetched)
- https://ingroupe.com/app/uploads/2022/09/rapport-dactivite-2016.pdf (search highlights)
- https://journal-officiel.ga/1695-004-2013/ (CNPDCP délibération 004/2013 on IBOGA)
- http://news.alibreville.com/h/10706.html (Gemalto IBOGA phase 2)
- https://www.digitalbusiness.africa/gabon-les-cni-electroniques-gratuites-produites-par-la-dgdi/
- https://www.gabonreview.com/carte-nationale-didentite-electronique-hermann-immongault-obtient-lacces-au-systeme-iboga/ (Conseil des ministres 2023-12-28, decree on IBOGA data access for CNIE)
