---
type: contradiction
id: zrhcp-subcomponent-1-2-card-count-and-cost
opened: 2026-07-20
status: open
places: [ZMB]
topics: [dpi.id, finance.new]
entities: [[zrhcp], [world-bank], [unhcr], [dnrpc-zambia]]
affects: [[zrhcp], [ZMB], [zambia--dpi-id], [unhcr]]
---

# ZRHCP Subcomponent 1.2 — two costs and two card counts, in the project's own documents

Both competing values are **held in `raw/`**. This is not a provenance gap: it is a
divergence *inside one World Bank operation's own documentation*, between the appraisal
document and the safeguards framework prepared three months later.

## The claim in dispute

The budget and the card-procurement volume of **Subcomponent 1.2, "Issuing of ID cards to
refugees and former refugees nationally"**, under the **Zambia Refugee and Host Communities
Project (P503941)**.

## Competing values

| | Cost | Cards | Document | Date |
|---|---|---|---|---|
| **A** | **US$6 million** | **~150,000** | Project Appraisal Document, Report No. PADHI00410 | 2024-09-05 |
| **B** | **US$6.5 million** | **~100,000** | Environmental and Social Management Framework | 2024-12 |

Both render the figure against the same national denominator — 20 million cards the
Government will buy for citizens — so the divergence is in the refugee allocation, not in
the basis of comparison.

## Who asserts each, verbatim

**A — World Bank / IDA, Project Appraisal Document (2024-09-05), para. 29:**

> "Subcomponent 1.2. Issuing of ID cards to refugees and former refugees nationally (US$6
> million) … (a) Procurement of approximately 150,000 paper-based cards or polycarbonate
> cards (out of the 20 million that the Government will buy for citizens)"

**B — Republic of Zambia, Ministry of Home Affairs and Internal Security / World Bank,
Environmental and Social Management Framework (December 2024):**

> "Subcomponent 1.2. Issuing of ID cards to refugees and former refugees nationally (US$6.5
> million) … Procurement of approximately 100,000 paper-based cards or polycarbonate cards
> (out of the 20 million government will buy for National IDs)."

## Source URLs held for each

- **A** — https://documents1.worldbank.org/curated/en/099090924120535793/txt/BOSIB12c22668f0f51a0d117949b7b8fe34.txt
- **B** — https://documents1.worldbank.org/curated/en/099121924211538677/pdf/P5039411b2fdc103f1ad10144419f4a87d5.pdf

Both are canonical World Bank document-repository URLs. Neither value has a provenance
problem; that is what makes the divergence worth resolving rather than discounting.

## What makes this non-trivial

The ESMF is the **later** document (December 2024 against September 2024), which would
ordinarily settle it on the newest-value rule. But the ESMF **is not on its face a revision**
of the PAD figure — it restates the subcomponent description in a safeguards context rather
than amending an appraisal number, and it reproduces the surrounding PAD text near-verbatim.
Reading it as a revision would silently retire a figure that may simply have been transcribed
inconsistently. Note also that the two move in **opposite directions**: the cost goes *up*
(6 → 6.5) while the volume goes *down* (150,000 → 100,000), i.e. unit cost rises from ~US$40
to ~US$65 per card. That is either a real re-scoping or a drafting error, and the direction
of travel does not by itself tell you which.

## Research brief (paste-ready, wiki-agnostic)

> Two documents for the same World Bank operation — the Zambia Refugee and Host Communities
> Project, P503941 — give different figures for the same budget line, "Subcomponent 1.2:
> Issuing of ID cards to refugees and former refugees nationally".
>
> The Project Appraisal Document (Report No. PADHI00410, 5 September 2024) gives the
> subcomponent at **US$6 million** and procurement of **approximately 150,000** paper-based
> or polycarbonate cards.
>
> The Environmental and Social Management Framework (December 2024) gives the same
> subcomponent at **US$6.5 million** and **approximately 100,000** cards.
>
> Investigate the discrepancy and suggest a resolution, recording an as-of date for each
> figure. In particular: is there a restructuring paper, a revised financing table, a later
> Implementation Status Report, or a disclosed project datasheet that supersedes one of the
> two? Does the operation's component-cost table (typically an annex to the appraisal
> document) reconcile to a total that favours one figure? Was the subcomponent re-scoped
> between September and December 2024 — and if so, why did the cost rise while the card
> volume fell?

## Resolution path

The **ZRHCP Implementation Status Report (ISR), Sequence No. 2** is the most likely
tie-breaker and **is not held as of 2026-07-20** — the World Bank document-detail page
returns HTTP 403 to automated fetch. It is queued on `reviews/acquisitions.md` (added
2026-07-20; the register was otherwise empty at that date). Until then the
divergence is carried on [[zrhcp]], [[ZMB]] and [[zambia--dpi-id]] as unreconciled, with the
PAD figure cited first as the appraisal document of record.
