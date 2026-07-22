---
type: source
title: "Senegal 2026 Digital Ministry budget: CFA 58.2 billion investment allocation to digital and telecom projects"
url: https://www.ecofinagency.com/news-digital/0912-51246-senegal-allocates-60-of-2026-digital-ministry-budget-to-investment
publisher: Government of Senegal
published: 2026-01-01
date_precision: month
date_source: source
places: [SEN]
topics: [infra.connect, dpi.id, dpi.govtech, finance.budget]
entities: [[government-of-senegal], [digital-ministry-senegal], [new-deal-technologique]]
lens: []
deal_id: sen-2026-digital-ministry-investment-unclear
finance_origin: domestic-state
state_level: national
spending_tier_name: ""
fiscal_year_label: "2026"
fy_start: 2026-01-01
fy_end: 2026-12-31
budget_stage: unclear
budget_version: original
source_tier: reporting
supplementary_basis: ""
scope_confidence: partial
is_transfer: false
amount_total: 58200000000
currency: XOF
ingested: 2026-07-22
retrieved: 2026-07-22
body_completeness: full
---

# Senegal 2026 Digital Ministry budget: CFA 58.2 billion investment allocation to digital and telecom projects

Senegal's 2026 state budget allocates the Digital Ministry CFA 81.06 billion, of which the investment portion — CFA 58.2 billion, about 60% — is devoted to digital and telecom projects; this record captures the investment line only.

## Deal record

| Field | Value |
|---|---|
| Deal ID | sen-2026-digital-ministry-investment-unclear |
| Financier | Government of Senegal (national fisc; 2026 state budget — no treasury vote named) |
| Recipient | Digital Ministry, Senegal (SEN) |
| Status | budget set for FY2026 (stage not stated in source) |
| Original amount | XOF 58,200,000,000 (investment allocation; ministry's total 2026 budget CFA 81.06bn not recorded — ministry envelope) |
| Commitment year | 2026 (fiscal year; reported 2025-12-09) |
| funding_source | unstated |
| fy_calendar | gregorian (Senegal FY = calendar year) |
| amount_scale | as reported in prose ("CFA81.06bn", "CFA58.2bn"); stored in units |
| scope_basis | source's own allocation statement: ~60% of the ministry's 2026 budget to investment, "CFA58.2bn to digital/telecom projects", with named priorities — universal coverage, free connectivity for 1 million people, a sovereign cloud, biometric digital identity, administrative interoperability, a citizen one-stop-shop and "zero-paper" services |
| doc_type | |
| doc_locator | |

## Description

"Senegal's 2026 Digital Ministry budget was set at CFA81.06bn (US$143.93m), with ~60% to investment (CFA58.2bn to digital/telecom projects). Priorities: universal coverage, free connectivity for 1 million people, a sovereign cloud, biometric digital identity, administrative interoperability, a citizen one-stop-shop and 'zero-paper' services."

## Source

https://www.ecofinagency.com/news-digital/0912-51246-senegal-allocates-60-of-2026-digital-ministry-budget-to-investment — reporting (Ecofin Agency, 2025-12-09), accessed 2026-07-22. Held at `raw/2025-12-09 Senegal allocates 60% of 2026 digital ministry budget to investment.md`.

## Development history

## Notes

- **funding source unstated** — the source attributes the allocation to the 2026 state budget with no funding-source detail; origin `domestic-state` flagged, per the origin gate default.
- **budget_stage `unclear`**: the source (as held) says the 2026 budget "was set at" and references a 4 December (2025) National Assembly plenary, but does not state whether the figure is tabled or enacted. Reported during Senegal's December budget session.
- **Scope judgment**: the ministry's total vote (CFA 81.06bn) is not recorded — a ministry envelope is not digital-transformation finance. The captured unit is the investment allocation the source itself states (CFA 58.2bn "to digital/telecom projects"). `scope_confidence: partial` because this is an investment envelope aggregating many projects (and the ministry's portfolio may include non-digital communication items), not a single programme line; no digital share was computed — the CFA 58.2bn figure is the source's own.
- **amount_usd left blank**: the source's US$143.93m conversion attaches to the CFA 81.06bn ministry total, not to this line. No FX rate computed.
- amount_capital/amount_recurrent left blank: the line itself *is* the investment portion; restating it as amount_capital would double-carry the figure.
- The New Deal Technologique's CFA 1,105bn cumulative-investment target and the CFA 200bn startup fund cited in the same source are a mobilisation target and a pledge respectively — both fail fact 3 and are not recorded.
- **Held capture caveat**: the raw source page stores a summary-style capture of the Ecofin article, not the article's full verbatim body; the Description quotes the held text. If the full article text is later captured, the stated stage and the ministry's official name may allow tightening (case 5-style reset does not apply — same tier).
- Entity note: the source names the spending body only as the "Digital Ministry"; slug `digital-ministry-senegal` minted from the source's own designation (no existing Senegal digital-ministry entity in `wiki/entities/`). Fisc tagged `government-of-senegal`, consistent with `government-of-burkina-faso` usage in this run.
