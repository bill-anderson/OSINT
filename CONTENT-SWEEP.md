# Content sweep — procedure (journals · newspapers · organisations)

**One shared procedure for three content sweeps.** They are **content-scoped, not
time-scoped** (unlike the daily sweep): each works a list of sources and picks up
what those sources have published since it last ran. All three run through the
steps below — only the target list, its state folder and one per-target rule differ.

Run manually from Claude Code. Cadence is **on demand** — there is no schedule;
experience will show how often each is worth running.

## The three targets

| Trigger | List (`wiki/`) | State (`sweep/`) | Columns | Seek |
|---|---|---|---|---|
| **"run the journals sweep"** | `sweep-journals.csv` | `sweep/journals/` | `url, Title, Description` | new articles / papers |
| **"run the newspapers sweep"** | `sweep-newspapers.csv` | `sweep/newspapers/` | `URL, iso-3, Title` | new stories (place = the row's `iso-3`) |
| **"run the organisations sweep"** | `sweep-organisations.csv` | `sweep/organisations/` | `URL, Title, Primary Focus` | the org's **news, blogs and papers** |

**Column 1 (the URL) is the only field the sweep needs** — it is always the source's
URL/domain, whatever the header says (the CSVs carry a BOM and mixed header case,
`url`/`URL`; ignore it and take column 1). Everything else is an **optional
head-start** for the staged frontmatter, not required and validated at ingest:
`Title` → `publisher`, and newspapers' `iso-3` → `place`.

## Boundaries — same firewall as the daily sweep

- **Acquisition, not briefing.** Output is candidate source files in `new/`; it
  never writes to `raw/` or any `wiki/` page. Ingest is the only door to `raw/`.
- **The list is its whole world.** Each sweep touches **only the domains in its
  CSV**. Domain-scope every Exa query to the row's domain — this is also the
  admissibility firewall that keeps out content-mirrors and AI-synthesis blogs.
  Never run an un-scoped "latest Africa news" query.
- **Disjoint from the digest and the daily sweep.** The universal read-only briefing
  is the `africa-digital-policy-watch` skill; the daily list is `DAILY-SWEEP.md`.
  No double-searching, no competing procedures.

## State and window — day granularity

Each sweep keeps **`sweep/<target>/state.json`** with a single field,
**`last_swept_day`** (a date, **no time**). Initialised to **`2026-06-30`** (the
assumed last run).

Every run:

1. **Read state.** `window_start = last_swept_day − 1 day` (the one-day overlap
   stops boundary items slipping through). `window_end = today` (the run's date).
2. **Note the wall-clock start time** — the run's duration is the one thing logged
   (below), so capture it now (`date` is fine).
3. Sweep the window (steps under *The loop*).
4. **Last, update state:** set `last_swept_day = window_end`. Do this **last** so an
   interrupted run re-sweeps rather than skipping a window.

Worked example: state `2026-06-30`, run on `2026-07-23` → search `2026-06-29 →
2026-07-23`, then state becomes `2026-07-23`; next run searches from `2026-07-22`.

## The loop

Read the target CSV fresh (it changes). For each row:

- **Domain-scope an Exa query** to the row's URL/domain for items published within
  `[window_start, window_end]`. Prefer `web_search_exa` scoped to the domain; fetch
  bodies with `web_fetch_exa`.
- **Stage each hit flat into `new/`** as `new/YYYY-MM-DD-slug.md` (publication-date
  prefix), full verbatim body, best-effort frontmatter: `publisher` = the row's
  Title; for **newspapers**, set `place` from the row's `iso-3`; for journals and
  organisations leave `place` for ingest to determine from content. Staged
  frontmatter is a head-start, validated at ingest — never a substitute for it.
- **Dedup is ingest's job.** Do not keep a seen-ledger here; the one-day overlap may
  re-surface a boundary item, and ingest's dedup (event + entities + date) drops it.

For **organisations**, Exa is looking for the org's **news, blogs and papers** from
its domain. (Pruning organisations that never yield anything is a **manual job** —
this sweep does not report on empties.)

## Finishing

1. **Update state** (`last_swept_day = window_end`), per above.
2. **Hand off to `update wiki`** (`UPDATE-WIKI.md`), exactly as the daily sweep does:
   it drains the staged `new/` items through ingest, so arrivals appear in
   `wiki/ingested_log.md`. The sweep itself files nothing to `raw/`.
3. **Log one terse line** to `wiki/log.md` — the log does **not** itemise what was
   captured or dropped (that detail lives in `ingested_log.md`); it records the
   **duration** and the window:

   `content sweep — <target>: window <start>→<end>, took <Nm>, staged <N>.`

## Concurrency

One sweep at a time, and no other CC session writing to the vault while it runs
(it stages into the shared `new/`, and the hand-off runs ingest).
