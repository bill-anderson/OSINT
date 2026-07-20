---
type: review-research
id: senegal-daf-perso-server-contents
generated: 2026-07-20
method: Exa search + fetch (English and French)
status: DO-NOT-INGEST (quarantined synthesis — never cited from a wiki page)
---

# Research: what the compromised "Perso" server at Senegal's DAF held

## Verdict: RESOLVED in favour of Claim A (card personalisation). Dark Reading's gloss is a misreading.

Two independent French-language accounts of the **same leaked IRIS email** render the second server
as a **personalisation server**, and one of them gives the email's own descriptive wording:

1. **Senegal7, 2026-02-05** (published the same day as the DAF communiqué, before the English trade
   press picked the story up) —
   *"Parmi les éléments divulgués figure un email daté de janvier 2026, signalant une « intrusion de
   sécurité suspectée » sur le **serveur de personnalisation (Perso Server)** et le **serveur de
   domaine (Domain Server)**, survenue le 19 janvier."*
   This is decisive on the naming question: the outlet reading the leaked email glosses "Perso
   Server" as *serveur de personnalisation*, not as a citizen database.
   URL: https://senegal7.com/cyberattaque-massive-contre-la-daf-139-to-de-donnees-biometriques-des-senegalais-exposees-sur-le-darkweb/

2. **ZATAZ (Damien Bancal), 2026-02-11** — *"Dans le courriel daté du 20 janvier, Choo explique qu'un
   piratage s'est produit le 19 janvier sur deux serveurs de la DAF. Il précise que des **données de
   personnalisation de cartes bancaires** auraient été dérobées sur l'un des deux systèmes."*
   ZATAZ's English edition of the same day renders it identically ("bank card personalization data
   was stolen from one of them"), so the "bank card" narrowing is consistent within ZATAZ, not a
   translation artefact.
   URL (FR): https://www.zataz.com/le-senegal-frappe-au-coeur-de-son-fichier-didentite/
   URL (EN): https://www.zataz.com/senegal-confirms-identity-system-breach-after-ransomware-attacks/

3. **Dark Reading (Nate Nelson), 2026-02-12** — *"Second, a 'Perso' server, **likely referring to** the
   database where citizens' personal information is stored."* The hedge is the outlet's own. It is an
   inference from the string "Perso", made a day after ZATAZ and a week after Senegal7, both of which
   read it the other way.

## Assessment

- The convention holds: in card-issuance architecture "perso" denotes **personalisation** — the stage
  at which a blank card is written with its holder's data. IRIS Corporation Berhad is the card
  producer; a personalisation server is exactly what its engineer would be reporting on.
- Dark Reading appears to have read "Perso" as an abbreviation of "personal" rather than
  "personalisation." Its own hedge ("likely referring to") marks it as unverified.
- **The "bank card" narrowing (ZATAZ) is single-sourced and sits oddly** with a national-ID contract.
  IRIS does produce payment cards as well as ID documents, so it is not impossible, but no other
  account repeats it and Senegal7 does not. Treat the server as **card-personalisation
  infrastructure** without committing to the bank-card specification.
- **This does not narrow the breach.** A personalisation server necessarily holds or caches the
  civil-identity payload written to each card, and — decisively — the **domain controller was also
  compromised**, giving domain-wide lateral movement. Clément Domingo's verification of genuine birth
  records and national ID cards in the published samples stands independently of which server they
  came from. Claim A being right narrows the *route*, not the *exposure*.

## Not established

- The **full verbatim text of the leaked IRIS email** is quoted by no account. Neither the DAF nor
  IRIS answered requests for comment (ZATAZ, 2026-02-11). No official confirmation of the server's
  function exists.
- Whether the personalisation server itself held a bulk citizen dataset, or only a production queue.

## Clips extracted to new/
- `2026-02-05-senegal7-daf-perso-server-email.md`
- `2026-02-11-zataz-senegal-frappe-fichier-identite.md`
