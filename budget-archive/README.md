# budget-archive/

Budget documents that have been through `BUDGET-EXTRACT.md`, filed
`{ISO3}/{FY}/` — the same shape as `new-budget/`, so a document keeps its path
when it moves. **`{FY}` is always the bare start year** (`ZAF/2024/`), meaning the
fiscal year beginning in it (`reference.md` §2).

A file's folder is its state: `new-budget/` = held, not yet extracted; here =
extracted. The extraction pass deletes the emptied `new-budget/` folder as it
finishes, so a folder there always means outstanding work — and nothing here is
ever deleted.

Each country-year folder holds, per document:

- the **artefact** (PDF/XLSX) — untracked by git via the repo-wide `.gitignore`
  binary rule, so it lives on disk and syncs via Dropbox but never bloats the
  repo;
- its **companion markdown** page;
- the **extracted tables as CSV**, one per source table — these *are* tracked.

That split is deliberate. Git holds the record of every document (manifest row,
companion page, extracted tables); the bytes sit beside it untracked. A lost PDF
is re-fetchable from the manifest's URL. A lost figure is not — which is why the
tables are committed, and why `doc_locator` stays checkable even if the artefact
is gone.

Nothing here is a source. Sources and finance records reach `raw/` only through
`new/` and ingest.
