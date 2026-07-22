---
type: contradiction
id: 2026-07-21-mozambique-edge-implementing-agencies
opened: 2026-07-21
shape: dispute
status: resolved
attempt: 1
---

# Mozambique EDGE (P172350): which agencies implement it?

Surfaced 2026-07-21 during the non-state finance load, adjudicating deal record
`wb-moz-003` against the project information document the wiki holds.

## The disagreement

- **INAGE and INTIC** — the national e-government and ICT institutes. From
  `raw/2021-06-29 Mozambique Digital Governance and Economy Project - PID (EDGE, P172350, World Bank).md`,
  the project's own concept-stage PID, which also puts **foundational digital identity** at
  the centre of the project's scope.
- **Ministry of Education and Human Development (MINEDH), Ministry of Health (MISAU), and
  the National Sustainable Development Fund.** The value in `wb-moz-003`, filled by
  enrichment from the World Bank search API's `impagency` field.

These are not variants of one answer — they are different institutions of different kinds.
Sector ministries as implementing agencies for a digital-governance operation is possible but
unusual; e-government institutes are the expected implementers and are what the project's own
document names.

## A second, related problem on the same record

The PID makes foundational digital identity central to the project. `wb-moz-003` carries
**`Digital ID flag: FALSE`**, and therefore does not have the `dpi.id` subject tag. If the
PID is right, the record is mis-tagged and the deal is missing from digital-identity views of
the wiki entirely — a silent omission rather than a visible error.

## What the wiki holds

The PID (concept stage, 29 June 2021, ahead of the 23 September 2021 board approval) and the
deal record. Implementing arrangements can legitimately change between concept stage and
approval, so the PID being older is a real caveat here rather than a formality.

## To resolve

Fetch the appraisal document (PAD) for P172350 and take the implementing arrangements from
it, since it postdates the PID and precedes effectiveness. Then set the digital-ID flag and
`dpi.id` tag on the record according to whether foundational identity survived into the
approved project.

## Resolution

**Resolved 2026-07-21 against PAD4298**, which postdates the PID and precedes effectiveness. Implementing agency is the **Ministry of Science, Technology and Higher Education (MCTES)**, through the existing MozSkills project implementation unit — so **neither** competing value was right: INAGE and INTIC are supported agencies, not implementers.

**Digital identity is central.** The project development objective leads on access to legal identification; Component 2 is US$70m of US$150m; the API scores Civil Registration and Identification at 51%. `Digital ID flag` corrected to TRUE, `dpi.id` and `dpi.govtech` added — the deal was otherwise absent from digital-identity views of the wiki.

**Two side findings.** The instrument is an **IDA grant** (SDR 105m / US$150m), not a concessional loan. And the API's `impagency` list was not simply wrong — the load had **truncated enriched values at 120 characters**, so the record showed three of seven entries. That bug is fixed in the loader and the 14 other affected records are flagged.

**Not established:** a restructuring paper and a partial-cancellation letter amendment for grant D906-MZ, both dated 2025-02-28, are on the portal but not held, so US$150m may not be current. Routed to acquisitions.
