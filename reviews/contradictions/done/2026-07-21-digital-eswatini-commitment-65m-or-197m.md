---
type: contradiction
id: 2026-07-21-digital-eswatini-commitment-65m-or-197m
opened: 2026-07-21
shape: dispute
status: resolved
attempt: 1
---

# Digital Eswatini (P508948): US$65.16m or US$19.7m, approved 2025 or 2026?

Surfaced 2026-07-21 during the non-state finance load, adjudicating the new deal record
`wb-swz-001` against a World Bank concept note the wiki already holds. The two disagree by
more than a factor of three on the amount and by roughly nine months on approval, and the
new record's own portal enrichment **failed**, so nothing in it was verified.

## The disagreement

- **US$65.16m, approval expected 1 September 2025.** The concept-stage Project Information
  Document for Digital Eswatini, held at
  `raw/2025-06-28 PID Concept Stage - Digital Eswatini (P508948).md`, gives project size
  US$65.16m, appraisal 1 August 2025 and expected board approval 1 September 2025, with the
  Ministry of ICT implementing.

- **US$19.7m, commitment year 2026.** The finance deal record `wb-swz-001` carries a
  commitment of US$19,700,000 dated to 2026 (published `2026-01-01`, year precision), its
  notes referring to approval on 2026-06-15.

**Corroboration for the larger figure, from a second and independent source.** Added
2026-07-21 while adjudicating fuzzy matches: `raw/2026-06-24-ict-trains-change-agents-e1-2bn-digitization.md`
reports the World Bank-funded project total as **E1.2bn (~US$65m)**, and breaks it down —
E648m for affordable broadband (EPTC stabilisation, fibre, last mile) and E450m for the
Government in Your Hand DPI component, connecting 859 schools, 134 health centres and 38
Tinkhundla centres, with rollout in 2027. That is a June-2026 Eswatini news report, entirely
separate from the 2025 concept note, and it lands within rounding of the PID's US$65.16m.

**Two independent sources now agree on ~US$65m; only the unverified capture says US$19.7m.**
This shifts the balance decisively and makes the record's figure the outlier rather than the
fresher value.

## Why it is not simply supersession

A concept-stage figure being revised down at appraisal is ordinary, so the newer, smaller
number would normally just win. Two things stop that being safe here:

1. **The newer record is the unverified one.** `wb-swz-001`'s World Bank API enrichment
   returned `no project in response` — one of only two failures across 75 World Bank rows in
   the load. Its figure rests on the capture alone.
2. **The capture's provenance is a synthesis.** The row comes from the Perplexity CSV, whose
   rows are admissible only through the primary at their `source_url`; that primary was not
   reachable for this row.

So this is a fresher *claim* against an older *document*, not fresher evidence against older
evidence.

## What the wiki holds

Both items above, and nothing else on this project. The wiki holds no board-approval record,
no PAD and no financing agreement for P508948. **No source on file establishes the approved
amount.**

## To resolve

Fetch the World Bank project page for **P508948** directly (the search API returned nothing,
so try the projects portal and the documents endpoint), and look for a PAD or approval
notice giving the approved commitment and board date. If the operation was approved at a
figure different from both, that value supersedes and both prior numbers become dated
priors. If it is still unapproved, the PID figure stands as the only documented size and the
record's US$19.7m must be attributed to the capture, not stated as fact.

## Resolution

**Resolved 2026-07-21. US$65.0m, approved 15 June 2026** by the Regional Vice President for Eastern and Southern Africa under delegated authority — a US$19.3m IBRD loan and US$19.7m IDA credit to the Kingdom, plus a US$26m IBRD loan to EPTC. Settled from the World Bank's own appraisal document PADHI01184 (8 June 2026, disclosed 19 June), now ingested at `raw/2026-06-08-worldbank-padhi01184-digital-eswatini-project.md`.

**The brief's framing was wrong in a useful way.** US$19.7m was not an error competing with US$65m — it is the **IDA credit slice** of the US$65m package, and the record's approval date was correct. The capture's provenance was sound; its scoping was not. The PID's US$65.16m was US$65.00m of financing plus a US$0.16m gap that appraisal closed, so the size never moved and no dated prior is kept.

The enrichment failure is explained: the v2 projects API does not carry this operation; the v3 WDS documents endpoint does. **Left unresolved deliberately:** the PAD says Phase III while the disclosed Stakeholder Engagement Plan and the Bank's regional practice director say Phase 2 — a conflict inside the World Bank's own materials, recorded on the record rather than silently picked.
