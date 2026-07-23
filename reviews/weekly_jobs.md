# weekly_jobs.md — the weekly batch queue (standing)

A **standing** batch to run weekly — the content sweeps are quick. Drained by
`RUN-BATCH.md`; trigger **"run weekly jobs"** (or "run the weekly batch"). Format,
markers and the `Budget:`/`Stop:` controls are exactly as in `reviews/JOBS.md` — see
there. The only difference is the **mode**.

## Control

```
Mode: standing
Budget: none
Stop: no
```

- `Mode: standing` — on a completed run the runner **archives the run and re-arms
  this file** (resets each job to `[ ]`), so the weekly list stays ready and you
  never retype it. It is **not** emptied (that is `JOBS.md`'s `one-off` behaviour).
- `Budget:` / `Stop:` — same as `JOBS.md` (a time cap, and the manual brake).

## Queue

<!-- Standing weekly jobs. Re-armed to [ ] after each completed run; edit freely. -->

- [ ] Run the newspapers sweep
- [ ] Run the organisations sweep
- [ ] Run the journals sweep
