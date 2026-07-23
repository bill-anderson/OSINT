# South Africa's total operational data-centre capacity (MW), 2026 — three diverging figures

## The claim in dispute

The combined operational capacity of South Africa's data centres, in megawatts, during 2026.

## Competing values

1. **~400 MW** (with expansion plans taking it to at least 1,200 MW) — asserted by energy analyst
   Chris Yelland / EE Business Intelligence, as reported by Daily Maverick, February 2026.
   Held source URL:
   https://www.dailymaverick.co.za/article/2026-02-09-major-sa-data-centre-expansion-plans-emerge-set-to-more-than-double-current
2. **~307 MW implied** — Business Insider Africa (reporting Equinix's $438m expansion) put Africa's
   operational capacity at ~409 MW with South Africa holding "about three-quarters", April 2026.
   Held source URL:
   https://africa.businessinsider.com/local/markets/us-data-centre-firm-equinix-is-investing-dollar438-million-in-south-africa/j390t94
3. **~350 MW across "more than 50 data centres"** — asserted by Bryce Allan, head of sustainability
   at Teraco Data Environments, as reported by the Thomson Reuters Foundation (Kate Bartlett) via
   the Sunday Times, 22 July 2026. Held source URL:
   https://www.sundaytimes.timeslive.co.za/news/2026-07-22-south-africas-data-centre-gold-rush-risks-resource-crunch/

## Notes

The three figures may rest on different measurement bases (IT load vs total facility capacity vs
built-out vs contracted capacity), different facility counts (>50 vs 55/56 elsewhere reported), and
different dates — but none of the sources states its basis, so the divergence cannot be resolved
from what is held. No primary industry census or regulator dataset for South African data-centre
capacity is on file — that absence is part of the finding.

## Instruction

These sources report different values for South Africa's total operational data-centre capacity in
2026 — investigate the discrepancy, establish what each figure measures (IT load vs facility
capacity, operational vs contracted), and suggest a resolution, recording an as-of date and
measurement basis for each value.

## Resolution (2026-07-23, attempt 1)

**Resolved on measurement basis and vintage — no new ingest needed: the defining primary was
already held.** The brief's "no primary industry census on file" note was wrong — the wiki holds
the Xalam Analytics SA country brief (Jan 2026) at
`raw/2026-07-11 Data-Center-Market-Briefs-South-Africa-2026.pdf` (part of the 22-brief DIF series,
[[xalam-dc-market-briefs-2026]]; re-download 2026-07-23 hash-identical). It defines the basis —
**live critical IT load** ("active, under lease or readily available for lease by third-party
customers"): **350 MW as of 2024 → 390 MW as of 2025**, 475 MW full-build potential, ~77% fitted
out, ~45 live facilities.

Mapping: Teraco/Allan ~350 MW (2026-07) = the 2024-vintage live-IT-load figure; Yelland/EE BI
~400 MW (2026-02) ≈ the 2025 vintage (390 MW); Business Insider's implied ~307 MW was never a
stated SA measurement — derived from an Africa-wide ~409 MW base that conflicts with Xalam's
SA-alone figure and with Xalam's Southern-Africa brief (SA ≈ 70% of Africa's live capacity) —
discarded as an artefact of the weaker chain.

Compiled value written to `south-africa--infra-store`: **~390 MW live critical IT load (Xalam
estimate, as of 2025)**, with the spread explained rather than erased.
