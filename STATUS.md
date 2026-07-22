# STATUS.md — read and show wiki status

Trigger: **"wiki status"**. Also the status step inside `UPDATE-WIKI.md` and the
wrap-up line every CC job ends on. **Single source of truth** for the three queue
counts, the standing tally line, and the "which process is running" banner — so
they are defined here once, not redefined in each pass file.

---

## The three counts

- **awaiting ingest** — candidate `.md` files in `new/` (exclude dotfiles and any
  `README`).
  `ls new/*.md 2>/dev/null | grep -vi readme | wc -l`
- **contradictions** — files in `reviews/contradictions/open/`.
  `ls reviews/contradictions/open/*.md 2>/dev/null | wc -l`
- **acquisitions** — outstanding items in `reviews/acquisitions.md`: **list lines**
  marked `[untried]` or `[blocked]`. Ignore the header's descriptive mentions of
  those markers and any struck / dropped lines.
  `grep -cE '^\s*[-*].*\[(untried|blocked)\]' reviews/acquisitions.md`

The commands are indicative — verify against the files if a count looks wrong (a
`README` in `new/`, a re-worded marker, etc.).

## The standing tally line

Every CC job ends on this line (per `CLAUDE.md` → *Reporting*):

`contradictions - NN ; acquisitions - NN ; awaiting ingest - NN ; decisions logged - NN`

The first three are the live queue counts above; **decisions logged** is the count
of **Decisions** this job wrote to `wiki/log.md` — a per-job tally, not a queue.

## Announce which process is running

Whenever a pass runs — and on **every** iteration of the `update-wiki` loop —
print **one clear line naming the process before it starts**, with the iteration
where relevant:

```
▶ running: ingest — update-wiki iteration 2
```

so it is always visible which process is executing. `ingest` /  `reconcile` /
`acquire` / `full lint` / `daily sweep` are the process names. This is a display
convention, not a log entry — the pass still writes its own terse `log.md` entry
and ends on the standing line above.
