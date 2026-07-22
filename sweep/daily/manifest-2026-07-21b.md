# Daily trade-journal sweep — manifest 2026-07-21b (second run of the day)

Batch `daily-2026-07-21b`. Window **2026-07-19T14:32Z → 2026-07-21T14:32Z** (day-granular).
Effective new slice: **Tuesday 07-21 after ~09:55Z**, the run-A cut. Ten domains, four agents.
Staged **17** · dropped **113** · needs-clip **0**.

## ★ The run's real output is a correction, not the yield

**17 staged from a 4½-hour window — more than run A staged from a 58-hour one.** That is not a busy
afternoon; it is run A having under-read two domains. Two listings served **stale renders that looked
exactly like complete short days**, and run A recorded both as established non-publication:

- **connectingafrica.com** — run A: seven cache-busted listings (two with *different* tokens) + two
  searches, all ceiling Fri 07-17 → recorded as two full weekdays of silence, with a standing flag
  saying a third nil meant a broken site. **Run B: the site is publishing normally** (07-21, 07-20,
  07-17, 07-16, 07-16, 07-15…), and the **Monday 07-20 article was already live during run A**. The
  07-18/19 gap was simply the weekend. **A repeated identical ceiling across different cache-bust
  tokens is a pinned cache, not silence** — run A's "different tokens, therefore both live" inference
  was invalid.
- **techafricanews.com** — an uncached archive fetch serves **10 items with pagination stripped**;
  cache-busted it returns **15 + a page-2 link**, true total **22** for 07-21. Run A recorded 10.
  **Six of this run's staged items were in the twelve the stale render hid.**

**Rule now in the README:** a nil is established only when **two independent instruments agree**; a
single listing, however cache-busted, never suffices. Search's worth is not yield — it is that it
exposes false ceilings.

## Staged (17)

| published | places | topics | source | title |
|---|---|---|---|---|
| 2026-07-16 | MUS | infra.connect, geopol.india | Submarine Telecoms Forum | Mauritius joins America-India Connect cable *(origin dateline; subtelforum post 07-21)* |
| 2026-07-20 | CIV, SYC | infra.connect, include.divides | Connecting Africa | Starlink live in Côte d'Ivoire and Seychelles |
| 2026-07-21 | MWI | gov.legislate, infra.connect | Connecting Africa | Airtel, TNM ordered to refund Malawi customers |
| 2026-07-21 | ZWE | infra.connect, infra.energy, tech.ai | Tech Africa News | Econet InfraCo expands AI across telecom infrastructure |
| 2026-07-21 | EGY, SWZ | dpi.pay, gov.regional, finance.mou | Tech Africa News | Egypt and Eswatini central banks deepen cooperation |
| 2026-07-21 | EGY | dpi.govtech, gov.policy, dpi.id, tech.ai | Tech Africa News | Egypt targets 450 digital government services by 2030 |
| 2026-07-21 | EGY | dpi.pay, finance.mou | Tech Africa News | Fawry partners with Crystal Mind on POS and digital payments |
| 2026-07-21 | GIN, RWA | dpi.govtech, gov.regional, tech.ai, dpi.mis | wearetech.africa | Guinée–Rwanda: e-santé and AI projects |
| 2026-07-21 | SEN | infra.connect, finance.new, include.divides | ITWeb Africa | Helios Towers commits $150m to Senegal expansion |
| 2026-07-21 | KEN | infra.cybersec, dpi.govtech | Tech Africa News | Kenya investigates presidential-website cyber incident |
| 2026-07-21 | KEN | gov.legislate, tech.industry, infra.connect | ITWeb Africa | Kenya introduces telecom equipment licence |
| 2026-07-21 | NGA | gov.legislate, dpi.pay, infra.connect | TechCabal | Court upholds digital-lending rules, rejects parallel telecom licencing |
| 2026-07-21 | NGA, XAF | gov.regional, gov.policy, gov.standards | Tech Africa News | Nigeria rallies Africa on global telecoms influence |
| 2026-07-21 | NGA | dpi.pay, tech.innovate, include.access | TechCabal | Rank launches community finance products |
| 2026-07-21 | ZAF | dpi.govtech, digital.localgov, dpi.mis | ITWeb South Africa | SITA plugs gaps in government disaster response |
| 2026-07-21 | XAF, NGA | finance.new, tech.innovate, tech.industry | TechCabal | State of Tech in Africa H1 2026 recap |
| 2026-07-21 | TGO | dpi.govtech, infra.cybersec, finance.new, geopol.eu | wearetech.africa | Togo: Luxembourg deepens digital/cyber support |

## Per-domain

| domain | staged | evidence |
|---|---|---|
| Tech Africa News | 6 | archive cache-busted → 22 items for 07-21 (run A saw 10) |
| TechCabal | 3 | homepage enumerated better than the date archive |
| ITWeb Africa | 2 | listing live (relative timestamps); search all out-of-window |
| Connecting Africa | 2 | **ceiling broken — site alive**; run A's nil was a pinned cache |
| wearetech.africa | 2 | actualites 11:54 and 10:23 Paris; brèves/tech-stars already held |
| ITWeb South Africa | 1 | RSS current to 14:45 SAST; 13 of 18 afternoon items were vendor PR |
| Data Centres Africa | 0 | ceiling 09 Jul, front page live — batch cadence, expected nil |
| Submarine Telecoms Forum | 1 | `/news/` feed; rest 07-17 or non-African |
| Biometric Update | 0 | author page + search both ceiling 20 Jul — established |
| Africa Telecom Review | 0 | **no editorial since Fri 17 Jul**; five sections, not seven |

Drop reasons (113): already-seen 27 · out-of-window 22 · already-dropped-run-A 20 ·
vendor-thought-leadership 8 · off-topic-non-African 12 · vendor-PR 6 · out-of-scope-non-Africa 5 ·
paid-placement 4 · vendor-research 3 · remainder singletons. Full log: `drop-log-2026-07-21b.csv`.

## Notes for ingest

- **Likely dedup collisions (deliberate — lint #7 adjudicates with full text):** Egypt/Eswatini central
  banks against the ITWeb account ingested this morning; Econet InfraCo against the ITWeb InfraCo
  piece; Starlink CIV against `2026-07-17-starlink-launches-27th-african-country-ivory-coast` (this one
  adds **Seychelles**); Kenya presidential-website incident against
  `2026-07-20-kenya-presidential-website-defacement-ransom`.
- **Helios Towers $150m is a presidency-announced commitment, not a signed deal** — consistent with the
  correction already applied to `wiki/places/SEN.md` (meeting 2026-07-16; Helios already ran 1,479
  Senegalese sites in Q1 2026).
- **Strongest single item:** the Nigerian court ruling (Suit No. FHC/L/CS/760/2026) upholding the FCCPC
  DEON Regulations 2025 while stripping it of telecom licencing power — "concurrency means coexistence,
  not displacement" — on a ₦300–400bn airtime-credit market serving ~40m Nigerians.
- Three staged files carry a visible dating note where event date ≠ publication date.

## Judgment calls

- **Standing scope ruling wanted, now recorded:** ITWeb's **Makate / "Please Call Me"** investigation
  was dropped as off-topic by **two separate agents today**. It is original investigative reporting, but
  its subject is **IP compensation and litigation funding**, not data governance or digital
  transformation. ITWeb flags it as a multi-week series. **Treated as a standing exclusion** so future
  runs stop re-deciding it.
- **SASSA August payment dates** dropped as second-hand synthesis: real ZAF payments payload, but no
  original reporting, and its "~600,000 not yet switched" **conflicts with other outlets' "1.3m as of
  May 2026"** — exactly the error-laundering the synthesis rule guards against. The primaries (DSD
  schedule, Postbank) are worth acquiring directly.
- **Run B treated run A's drop decisions as binding** rather than re-adjudicating. Cheap and consistent,
  but **a wrong call in run A propagates silently**. Flagged by the agent itself; the wearetech
  tech-stars drops are the ones to revisit first if any.
