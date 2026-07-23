# Driver — non-state finance initial load (Perplexity CSV)

Feeds `wiki/finance-record-spec.md` from **`archived-procs/non-state-finance-v1.csv`** (1,148 deal
records captured via Perplexity, one row each). This driver only does two things:
map the CSV's columns to the builder's core fields, and handle this capture's
quirks. All record-shaping, tagging, dating, enrichment and verification live in
the spec — do not restate them here.

Invocation: **"run non-state finance load"** (analogous to "run reconcile").
Because enrichment needs network + the IATI key, run it from Claude Code.

## Provenance

The CSV is a Perplexity synthesis — a **lead, not a source**. Each row is
admissible only through the **primary at its `source_url`** (WB portal, IATI,
IFC/MIGA disclosures, DFI/foundation pages). Treat the row as structured
extraction *of that primary*. A row whose `source_url` is itself second-hand (a
news aggregator, another AI output) fails the spec's provenance gate — file it as
a lead, not a record.

## Column → core-field map

Straight mapping unless noted. "verbatim" = copy unchanged; blank → leave blank.

| CSV column | Core field | Notes |
|---|---|---|
| `deal_id` | record key | filename + `deal_id:` + dedup key |
| *(all rows)* | `finance_origin` | this whole dataset is **`non-state`** — set it on every record (the domestic driver will set `domestic-state`) |
| `financier_name` | financier | verbatim; also `publisher`. Entity slug via `archived-procs/non-state-finance-financier-crosswalk.csv` (canonical/existing slug — prevents duplicates). **Load-only and now finished**; ongoing capture resolves against `wiki/entities/` instead — see the spec's *Entities* |
| `recip_iso3` | recipient place | already valid `countries.csv` codes |
| `recip_org` | recipient | second entity; strip a trailing `(<ISO3>)` if the source doubled it |
| `beneficiary_type` | beneficiary type | verbatim (source vocab — see drift) |
| `title` | title | verbatim |
| `description` | description | verbatim; portfolio summary, not invented |
| `instrument` | instrument | verbatim (source vocab — see drift) |
| `status` | status | **convert to metadata enum**: `Completed` → `Closed`; Active/Approved/Pipeline already match; log any other value |
| `commit_usd` | commitment USD | integer; blank → empty |
| `commit_orig`, `commit_curr` | original amount / currency | verbatim |
| `co_finance_usd`, `co_financiers`, `lead_financier` | co-financing | verbatim; render only if set |
| `commit_year`, `start_year`, `end_year` | years | integers; drive `published` per spec |
| `disbursed_usd` | disbursed USD | integer; blank → empty |
| `amount_quality` | amount quality | verbatim |
| `cat_primary_name` | subject category (WB-DT) | → crosswalk (spec §Subject tag) |
| `flag_digital_id`, `flag_digital_payments` | flags | drive `dpi.id` / `dpi.pay` |
| `project_id`, `iati_project_id` | native ID / IATI ID | verbatim; also the enrichment keys |
| `source_url` | source URL | verbatim; if several joined by `;`, `url:` takes the first, `## Source` keeps all |
| `source_type` | source type | verbatim (source vocab — see drift) |
| `source_date` | access date | reformat `DD/MM/YYYY` → `YYYY-MM-DD` |
| `notes` | notes | verbatim |
| `capital_origin` | capital origin | **not in the metadata file**; values Regional/Domestic (mostly blank); render when set |

## Capture quirks

- **Preserve source vocab** except `status` (converted above). Expect and log,
  don't normalise: `instrument` extras (`Commercial loan`, `TA`, `Bond`,
  `Buyer's credit`, `Equity (fund)`, `Line of credit`); `beneficiary_type`
  (`Government / Private sector / NGO/CS / Multi-stakeholder / Multilateral /
  Fund / Research/academic`); `source_type` (`Third-party DB`, `IATI+portal`,
  `Mixed`).
- `source_date` is the **access** date (`retrieved:`), not publication.
- All `recip_iso3` values are already valid vocab (regional deals use `X__`); no
  loose `REG`.

## Loop

For each row: map columns → core fields (above) → hand to `wiki/finance-record-spec.md`
→ write one file to `new/` → append one line to `archived-procs/non-state-finance-run-log.csv`
(`deal_id, file, published, date_source, topics, crosswalk_conf, enrich,
warnings`). Moving the file into `new/` is the last step, so an interrupted run
resumes on the rows not yet written.

Run the crosswalk-approved mapping in one pass over the whole CSV, not a
selection. The 18-record pilot in `new/` (dates 2015–2024) is the reference
output; `_gen_pilot.py` is the pilot generator if a deterministic straight-map
loop is wanted before the enrichment pass.
