---
type: query
id: q-2026-07-24-starlink-gaps      # results are named to match this id
format: md                           # result = run manifest; payload = staged files
scope:                               # optional — narrows the search
  places: []
  topics: [infra.connect]
  entities: [starlink, spacex]
  lens: []
---
Open-web acquisition search for evidence on Starlink in Africa that raw/ does
not already hold, feeding an analytical piece in preparation. Three targets:

1. **Deals and dealings between Starlink/SpaceX and African states** — licences
   granted, refused, suspended or revoked; regulatory approvals and conditions;
   MoUs, government partnerships, universal-service arrangements; bans,
   seizures, enforcement against unlicensed use; pricing or localisation
   conditions imposed.
2. **Who is using Starlink** — evidence on user types: ISPs/resellers, schools,
   health facilities, NGOs, rural communities, businesses, government agencies,
   armed actors. Subscriber figures, market-share data, deployment case studies.
3. **Negative feedback from users or regulators** — complaints, price rises,
   capacity/waitlist problems, outages, service quality; regulator criticism,
   warnings, fines, compliance disputes.

**Missing means:** any URL already in
`queries/results/q-2026-07-24-raw-urls.csv` is excluded (exact-URL match —
that CSV is the dedupe set of Starlink-related holdings in raw/). Also dedupe
against raw/ frontmatter URLs, current new/ and new-queue/ candidates, and
within the run. Conservative, per DAILY-SWEEP.md step 4: same event from a
different outlet survives; ingest adjudicates with full text.

**Window:** published 2024-01-01 onwards only. Establish `published` from the
page per DAILY-SWEEP.md step 5, never from the search result's date.

**Method:** Exa (`web_search_exa` → `web_fetch_exa`), per-country and
per-theme query fan-out at CC's discretion. Full admissibility screen applies:
primary/first-hand only, no AI syntheses, digests or newsletter editions, no
drop-list/mirror domains — seek the original instead. Standing capture rule
applies: full verbatim body, `body_completeness` set honestly.

**Output:** stage each survivor as `new-queue/YYYY-MM-DD-slug.md` using the
candidate frontmatter schema in DAILY-SWEEP.md (the ingest contract), with
`sweep_batch: q-2026-07-24-starlink-gaps` and `retrieved:` set to the run
date. Do not set `ingested:`. Write the run manifest to
`queries/results/q-2026-07-24-starlink-gaps.md` — one line per staged item
(`published | places | source | title | which-of-the-three-targets`) plus a
drop tally. Do not touch raw/ or wiki/ — candidates enter the base only
through ingest.
