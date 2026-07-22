---
type: contradiction
id: 2026-07-21-wardip-sop1-which-countries
opened: 2026-07-21
closed: 2026-07-21
shape: dispute
status: resolved
attempt: 1
---

# WARDIP SOP1 (P176932): which West African countries does it actually finance?

## RESOLUTION (2026-07-21) — RESOLVED

**P176932 finances The Gambia, Guinea, Guinea-Bissau and Mauritania**, plus the African
Union, ECOWAS and the Smart Africa Alliance as regional borrowers. The deal record's list
(Benin, Burkina Faso, Côte d'Ivoire, Guinea, Niger, Senegal, Togo) is **wrong**; only Guinea
overlaps, and six of its seven countries receive nothing from this operation.

Two independent confirmations:

- **PAD4756 datasheet**, held at `raw/2023-11-07-worldbank-dtfa-wardip-sop1-pad4756.md`:
  "Project Beneficiary(ies) **Gambia, The, Guinea, Guinea-Bissau, Mauritania** — Operation ID
  P176932". Borrower row: Republic of The Gambia, Republic of Guinea, African Union, Smart
  Africa Alliance, Republic of Guinea-Bissau, ECOWAS, Islamic Republic of Mauritania. The
  IDA Resources table allocates per borrower: Guinea-Bissau 60.00 grant, The Gambia 50.00
  grant, Guinea 60.00 credit, Mauritania 60.00 credit — total 266.50.
- **World Bank projects API for P176932**, retrieved 2026-07-21
  (`https://search.worldbank.org/api/v2/projects?format=json&id=P176932`): `impagency` lists
  the digital-transformation ministries of Mauritania and Guinea-Bissau, the Ministry of
  Communications and Digital Economy (The Gambia), Smart Africa Alliance, African Union
  Commission and ECOWAS. Commitment 266,500,000; board approval 2023-11-30.

The commitment amount was never in dispute and remains US$266.5m.

## Wider finding — the fault is systematic, not a one-off

The brief asked whether other regional rows in the load carry the same fault. **They do.**
Checked all nine `wb-reg-*` records in `raw/` against the World Bank projects API:

- **wb-reg-002 (P176932)** — as above. Corrected.
- **wb-reg-003 (P176181, EARDIP SOP1)** — description claimed *Ethiopia, Kenya, Madagascar,
  Rwanda, Tanzania, Uganda*. API borrower: **IGAD, Somalia, South Sudan, EAC**; abstract says
  "for Eastern and Southern Africa, **Somalia, South Sudan**". None of the six named countries
  is a borrower. Contradicted by the record's own enriched Borrower field. Corrected.
- **wb-reg-005 (P161329, WURI Phase 1)** — description claimed *Guinea, Côte d'Ivoire, Burkina
  Faso, Niger, Togo*. API abstract: objective is "to increase the number of persons in **Côte
  d'Ivoire and Guinea**…"; impagency = ECOWAS Commission, CIV, Guinea. Burkina Faso, Niger and
  Togo are **Phase 2 (P169594)** countries, imported into the Phase 1 row. Corrected.

Clean (no unsupported country claim): wb-reg-001 (P180931), wb-reg-004 (P169594 — its list
matches the API borrower exactly), wb-reg-006 (P161836), wb-reg-007 (P155876), wb-reg-008
(P130871), wb-reg-012 (P500628 — vague "ECOWAS member states", not false).

**Judgement: systematic capture fault in the Description field only.** Three of the four
regional rows whose descriptions name countries name the wrong ones, and in each case the
error is a *plausible-sounding substitution* — a neighbouring operation's roster, or the next
phase's — rather than noise. That is the signature of a generative synthesis writing a
description from the project title, not of a transcription slip. Every other field on these
records (borrower, implementing agency, commitment, dates) matches the World Bank API exactly,
so the fault is confined to the free-text Description and does not touch the structured data.

**Containment: the error did not propagate.** Frontmatter `places` on all nine records carry
regional codes (XWA/XEA), never per-country codes, so the finance compile never aggregated
this into country hubs — the six-hub contamination the brief feared did not occur. The wiki's
own pages (`wiki/entities/wardip.md`, `wiki/places/GNB.md`, `wiki/entities/wuri-programme.md`)
were written from the primaries and already carry the correct rosters.

**Applied:** annotated corrections in place on the three bad records, original text preserved
inline so the capture fault stays auditable rather than being silently erased.
