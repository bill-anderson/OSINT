# Sweep manifest — ERI (Eritrea)

- **Batch:** ERI-2026-07-17
- **Window:** 2025-01-01 → 2026-07-17
- **Newspapers:** Awate (`awate.com`, diaspora/opposition — admissible as
  reporting/analysis, adversarial stance) · Shabait / Eritrea Profile
  (`shabait.com`, **Eritrea Ministry of Information — pure state voice**). Both
  English. No Tigrinya/Arabic pass needed (English was not dry).
- **Counts:** ~11 topical/entity search passes + 8 journal probes + 3
  last-instrument searches. Raw candidate hits reviewed ~90 (deduped across
  passes). **Staged: 5. Dropped: 24 logged** (`sweep/drop-log-ERI.csv`).
- **Held before sweep:** 4 (2× DataReportal, 1× digital-identity-index profile,
  1× Shabait ASYCUDA customs).

## Verdict on adequacy
Two newspapers **do NOT** adequately evidence Eritrea's digital record — but this is
a property of Eritrea, not of the sweep. Shabait (state MoI) is the only outlet
actually producing dated digital/telecom items, and it is a pure government voice
(unverifiable, self-congratulatory). Awate (opposition/diaspora) publishes almost
exclusively political opinion/analysis with **no ICT/telecom desk** — it yielded one
finance-adjacent item in the whole window. There is **no independent, adversarial-
neutral Eritrean outlet** covering the digital beat. For hard facts the primary
instrument is actually **development partners (UNDP/UNECA) and reference
indices/scholarship**, reached only via non-domain-scoped last-instrument search.

## How the trade-press blind spot was established (probed, not assumed)
Each of the 8 fixed journals' on-site search / section pages was fetched for
"eritrea". Result: **7 of 8 confirmed carry zero Eritrea-specific content**; the 8th
was unreachable:
- **biometricupdate.com** `?s=eritrea` → all results Ethiopia/Nigeria/UK/Croatia; "eritrea" matched only tangentially. **Zero Eritrea items.**
- **techafricanews.com** `?s=eritrea` → Zambia/Kenya/Ethiopia/Sudan results. **Zero.**
- **techcabal.com** `?s=eritrea` → Press Room + Newsletters both empty. **Zero.**
- **connectingafrica.com** `search?q=eritrea` → 7 results, all Ethiopia/Uganda/Morocco/regional. **Zero Eritrea-specific.**
- **wearetech.africa** `?s=erythree` → returned generic homepage feed (Gabon/Kenya/Nigeria…). **Zero.**
- **itweb.africa** `?s=eritrea` → generic feed; Eritrea is **not even a covered country** (its nav lists Algeria/Egypt/Ghana/Kenya/Morocco). **Zero.**
- **telecomreviewafrica.com** `?s=eritrea` → 3 snippets, all Ethiopia/regional (Eritrea named only as a bordering country). **Zero Eritrea-specific.**
- **techreviewafrica.com** (PR wire) → search page CRAWL_TIMEOUT ×3; unreachable, logged `fetch-failed`. No positive evidence of Eritrea content.
**Conclusion: the journal blind spot is real and confirmed by probing, not assumed.**

## Connectivity baseline (the analytically valuable core)
- **Held (DataReportal):** 859,000 mobile connections late-2025 = 23.7% of population
  (up from 22.2% early-2025) — among Africa's lowest.
- **Added this batch (Shabait/minister, 2026-05-19):** 184 towers installed; **mobile
  geographic coverage ~90%**; internet "reached 4G level"; ~**1,536 Mbps** total
  bandwidth reached over the past decade (from 0.5 Mbps in 2001); 35bn Nakfa cumulative
  telecom investment; Wi-Fi extended to remote/semi-urban centres. (State claims —
  unverifiable, and geographic ≠ population coverage.)
- **Structural (via inadmissible ts2.tech lead, to be primary-sourced at ingest):**
  Eritrea is reportedly the **only coastal African state with zero submarine-cable
  landings**; **Starlink unlicensed** as of 2024. Left as a lead in the drop log.

## Staged items
| published | topics | source | title | why it's new |
|---|---|---|---|---|
| 2026-05-19 | infra.connect, include.divides | Shabait (state) | Substantial Investment in Expansion of Communication Service | Dated 2026 EriTel/telecom baseline: 184 towers, ~90% mobile geo-coverage, "4G", ~1,536 Mbps bandwidth, 35bn Nakfa — updates the connectivity picture beyond held DataReportal figures |
| 2025-11-01 | tech.ai, tech.innovate | Shabait (state) | Eri-Chat: Offline AI App | Rare concrete Eritrean AI/innovation datapoint — domestically built offline AI app (launched Apr 2025), shown at UN Day Oct 2025; nothing on AI in held corpus |
| 2026-07-02 | dpi.pay, gov.legislate | Awate (opposition) | Deposit Your Money or Else: Eritrea's Banking Ultimatum | Bank of Eritrea legal notice forcing cash into banks by 31 Jul 2026 — primary evidence of the cash-based, under-banked, state-monopoly economy that explains the absence of mobile money/digital payments |
| 2026-05-08 | data.statistics, capacity.research | UNDP (partner) | Driving Data with Digital Technology: EPHS 2025 | Eritrea's most concrete data-systems development on record — CAPI digital survey (9,794 households, 98.4% completion) + 2023/24 national accounts under the D4D Joint Programme; no NSO/statistics material held |
| 2026-04-10 | capacity.training, include.divides | Technology, Pedagogy and Education (T&F) | Eritrea's education policy & teachers' ICT use | Peer-reviewed 2026 scholarship directly on ICT-in-education readiness in Eritrea — a citable reference anchor; **paywalled**, staged with `[CLIP]` |

## Notes for the human / ingest
- **Provenance is the headline risk**, not volume. 2 of 5 staged items are pure state
  voice (Shabait), 1 is opposition (Awate). Neither pole is neutral; the UNDP and
  T&F items are the most independent. Attribute all Shabait figures as government
  claims and Awate framing as opposition analysis.
- Entity candidates to create on ingest: `eritel` (state CSP), `bank-of-eritrea`,
  `eritrea-national-statistics-office` (NSO). `undp` already exists.
- The **ts2.tech "Digital Desert"** piece is a good lead but an AI-synthesis
  (inadmissible) — its two headline facts (zero submarine cables; Starlink
  unlicensed) should be sourced from submarinenetworks.com / on-the-record reporting
  at ingest, not from ts2.tech.
- Undated reference assets seen but not staged (potential `resource`/`instrument`
  entities, not dated sources): Eritrean Embassy CAPS national-ID portal;
  eritel.com.er; UNECA DTRI Eritrea profile; Digital Watch Observatory Eritrea page.
