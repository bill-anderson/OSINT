# Trade journal selection for the Phase 2 sweep

**Generated: 2026-07-17 — empirical probe via Exa, ~55 domain-scoped searches, content since 2025-01-01**

## Method

Each of the 28 Trade Journal rows in `my-notes/sources.csv` (27 unique publications — ICT Journal Africa is listed twice) was probed with two domain-scoped Exa searches (one on digital ID / DPI / data governance / e-government, one on telecom / connectivity / data centres / digital economy), ~40–50 results per publication. From titles and snippets we counted the distinct African countries each publication's articles were *specifically about* — not passing mentions — and separately the count excluding South Africa, Nigeria, Kenya and Egypt ("beyond-big-4"), since coverage of those four is not the scarce commodity. Counts are floor estimates from a sample, not a census; they are nonetheless a fair like-for-like breadth signal.

## Answer 1: how many journals is it feasible to search?

**Eight.** The constraint is query volume, and the returns collapse after eight.

The cost model: a full sweep of one journal for Jan 2025 → now needs roughly 2–4 thematic queries × 6–10 time slices, plus fetch-and-triage of results — call it 25–40 Exa queries per journal for a high-volume title, 15–25 for a quieter one, before any fetching. All 28 rows would be roughly 700–1,000 queries — on top of the ~108 national-newspaper domains that are the core of the exercise. Eight journals is ~200–300 queries: a quarter of the cost.

And a quarter of the cost buys almost all of the coverage. The eight recommended below collectively covered **41 of the 48 countries that appeared anywhere in the whole probe**. The other 19 publications, taken together, added only seven countries (Chad, Angola, CAR, Namibia, Libya, Mauritania, Lesotho) — each from a single niche or low-citability source. Six states appeared in *no* trade journal at all (Cabo Verde, Guinea-Bissau, Equatorial Guinea, São Tomé & Príncipe, Eritrea, Seychelles): the trade press will not deliver them however many journals are searched; they are a national-press and targeted-search problem.

## Answer 2: which have the best coverage across ALL African countries?

### Recommended eight (in rough priority order)

| # | Publication | Countries seen | Beyond big-4 | What it uniquely contributes |
|---|---|---|---|---|
| 1 | **wearetech.africa** | 19 | 16 | The Francophone and North Africa engine (Algeria, Tunisia, Mali, Niger, Guinea, Gabon, Burundi…). Bilingual FR/EN, Agence Ecofin family, agency-style briefs squarely on e-gov/data governance/payments. |
| 2 | **Biometric Update** | 17 | 14 | The digital-ID/DPI beat itself, pan-African via its ID4Africa desk — Sahel, Lusophone, fragile states (Somalia, DRC), exceptional Ethiopia depth. Well-sourced; cites primaries. |
| 3 | **Africa Telecom Review** | 19 | 15 | Widest telecom/e-gov spread incl. small Francophone markets others miss (Gabon, Congo-B, Benin, Somalia). Announcement-led but consistent. |
| 4 | **Connecting Africa** | 17 | 13 | Informa-published telecom/connectivity trade press with real Sahel reach (Mali, Burkina, Niger) and North Africa. More editorially solid than the wires. |
| 5 | **ITWeb Africa** | 14 | 11 | Original reporting with in-country correspondents; the anglophone SSA long tail (Eswatini, Malawi, Gambia, South Sudan) and a strong second-tier digital-ID beat. |
| 6 | **Tech Africa News** | 14 | 11 | Best DPI/digital-ID/e-gov beat outside the big 4, incl. Francophone West Africa (Benin, Togo, Senegal, CIV) and Sudan/Mozambique. PR-derived — verify against primaries. |
| 7 | **TechCabal** | 7 | 4 | Narrow geographically but the highest-quality original reporting and policy analysis in the set (data protection, tech-law roundups, fintech regulation). Depth, not breadth. |
| 8 | **Tech Review Africa** | 20 | 17 | The breadth champion on paper (Djibouti, Madagascar, Comoros, Mauritius, Guinea…) — but a byline-free PR-rewrite wire. Include it as a **lead-net**: mine it for stories, then source the primary. Cheapest to cut if eight is too many. |

Union of the eight: 41 countries in the sample alone, with every region — North, Francophone West/Central, Lusophone, Horn, Indian Ocean — represented by at least two titles.

### Worth knowing about the rest

- **Solid but redundant:** Techpoint Africa, CIO Africa, ICT Journal Africa, iAfrica, Digital Economy, ITEdgeNews — real publications, but their coverage (Nigeria, Kenya, SA + scatter) is fully duplicated by the eight above plus your two national papers per country. ITEdgeNews is ~80% Nigeria; CIO Africa is Kenya-centric (though its ODPC/data-protection beat is good).
- **Niche, use topically if ever:** Data Centres Africa (data-centre PR wire, did surface Angola/CAR/Namibia), Submarine Telecoms Forum (subsea cables only, largely re-aggregates Ecofin — which wearetech.africa already gives you first-hand), Africa Hyperscalers News (cloud-sovereignty niche, 6 countries).
- **Not actually trade journals — consider re-typing in sources.csv:** AfricaNenda (org blog; its SIIPS reports belong in the wiki as instrument/resource entities, not press monitoring), KICTANet (Kenyan policy-network blog), Open Cities Lab (SA civic-tech org blog), DPI Africa / dpi.africa.com (africa.com's explainer vertical, ~2 posts/month — note `dpi.africa` without the `.com` is a different site, the MFWA's DPI Info Hub), Tech Policy Press (global outlet, ~1–3 Africa items/month — high quality when it does; better suited to the Think Tank/literature check than a country sweep).
- **Problems:**
  - **African Digital Review — effectively dead.** Brochure/landing page, no indexed articles. Remove or park.
  - **Afritech Biz Hub — admissibility risk.** Alive and superficially broad, but reads as an AI-assisted rewrite farm (all content post-Oct-2025, clickbait headlines, no bylines). Under the wiki's source-admissibility rules its output is second-hand synthesis: at most a lead source, arguably not even that.
  - **TechTrends.Africa — misleading name.** Almost entirely Nigeria, with a heavy Anambra State government-comms flavour. No value for a 54-country sweep.
  - **Duplicate row:** ICT Journal Africa appears as both `ictjournal.africa/health` and `www.ictjournal.africa` — same publication; delete one row.

## Caveats

- Counts come from ~40–50 sampled results per title, so they are floors; a journal's true archive is broader. But the *relative* ranking is robust — the same probe shape was applied to all 27.
- Exa's date filtering was imperfect; a few pre-2025 items leaked into some samples (noted where material, e.g. Digital Economy's effective count is ~6, not 8).
- Everything except wearetech.africa publishes in English only. If Francophone coverage still looks thin after a pilot, the fix is adding a second Francophone source (e.g. Agence Ecofin directly) rather than more English journals.
- PR-wire titles (Tech Review Africa, Tech Africa News, Data Centres Africa, iAfrica) report announcements, not analysis. For the wiki that is fine — announcements are exactly the datable primary-adjacent events wanted — but each story should cite or be checked against the primary (regulator, ministry, operator) where it matters.

## Suggested next step

Pilot the eight on two or three deliberately hard countries (e.g. Chad, Guinea-Bissau, Burundi) plus one easy one, for a single quarter of 2025, before committing to the full 54-country × 18-month sweep. That tests both the query recipe and whether the six-country trade-press blind spot needs a different instrument entirely.
