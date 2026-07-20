# Contradiction: how many km of national fibre does Angola have — 14,000, 22,000 or 28,000?

**Opened:** 2026-07-17 (AGO batch)

## The dispute

Three figures for Angola's national fibre-optic network appear across seven months, and it is unclear
whether this is genuine growth, three different measures (backbone vs total vs planned), or a reporting
error.

- **Claim A — ~14,000 km.**
  - Asserted by: **Angop**, 2025-12-13 (in the Unitel 2Africa-branch report).
  - Source URL held: https://angop.ao/noticias/economia/unitel-invete-mais-de-40-milhoes-de-dolares-americano-em-fibra-optica/
- **Claim B — >22,000 km.**
  - Asserted by: **TechAfrica News**, 2026-04-29 (national data-centre launch coverage; minister's figure).
  - Source URL held: https://techafricanews.com/2026/04/29/angola-launches-government-data-center-and-cloud-to-boost-digital-economy/
  - The Angop Portuguese rendering of a March-2026 speech
    (https://angop.ao/noticias/sociedade/minttics-implementa-projectos-estruturantes-para-a-redefinicao-da-base-tecnologica-do-pais/)
    reads "mais de 2.000 km", likely a truncation of 22,000 or an expansion increment.
- **Claim C — 28,000 km.**
  - Asserted by: the **UNESCO AI Readiness Assessment** coverage, 2026-06-30
    (`raw/2026-06-30 ...ram-unesco`), reporting Angola's fibre at 28,000 km.

## The question

Are these the same network measured at three dates (implying rapid ~2×  growth in seven months), or
different things (national backbone vs total deployed vs a target)? Establish what each figure counts and
its as-of date. If it is genuine growth, the wiki should hold a dated trajectory (14,000 → 22,000 → 28,000);
if different measures, they must be labelled, not compared.

## Note

Written dated inline on `wiki/intersections/angola--infra-connect.md` and the `infra.connect` concept;
no single "current" figure is asserted bare.

---

## Reconcile pass, 2026-07-20 — REFRAMED, still open

**What was settled.** Two of the three "competing values" were not competing at all:

- **~14,000 km (Angop, 2025-12-13)** is **Unitel's own** national footprint, not the country total —
  strongly inferred rather than directly stated, but the alternative reading is arithmetically impossible
  against ≥22,000 km from 2023 and >30,000 km one month earlier.
- **"mais de 2.000 km"** is **not** a truncation of 22,000. It is a **recurring annual new-build increment**
  under the National Broadband Network project, reported as such in 2024, 2025 *and* 2026 — a stock/flow
  error, now disproved.
- **">22,000 km"** is a **stale boilerplate figure**, traceable to a **2019 World Bank report** and stated
  verbatim by MINTTICS' National Director in **May 2023**. The minister's April-2026 restatement repeats a
  figure at least three years old.
- **~28,000 km (2026-06-30)** is **not** UNESCO's measurement: it is **preliminary** data supplied by
  Vicente Lopes, UNESCO's national RAM consultant, as an input parameter to the AI-readiness assessment.

**The decisive find, which breaks the timeline.** Secretary of State **Ângelo Buta João** told the ITU's
WTDC in Baku that Angola has **>30,000 km** of terrestrial fibre (plus 4,860 km under repair, 1,400 km
under construction) — published **2025-11-28**, i.e. *seven months before* the 28,000 figure and *five
months before* the 22,000 restatement. Monotonic growth is arithmetically impossible.

**Why this stays open — the narrower question.** Angolan official statements are mutually inconsistent
within eight months, and none distinguishes backbone from total deployed from all-operator aggregate:

> **20,000 km (Estado da Nação, 2025-10) → 30,000 km (2025-11) → 22,000 km (2026-04) → 28,000 km (2026-06).**

Three official/quasi-official national totals that **decline over time**. This is a data-quality defect in
the **Angolan official record**, not a wiki error, and no open source resolves it.

**What would settle it:** INACOM's *Relatório Anual Estatístico* — the authoritative Angolan telecoms
series, bilingual since the 2024 edition. Its PDF was not retrievable from `observatoriotic.gov.ao` or
`inacom.gov.ao` this pass. **A manual capture is the next step.**

**Wiki state meanwhile:** `wiki/intersections/angola--infra-connect.md` and `wiki/places/AGO.md` now carry
each figure dated and labelled by what it measures, and assert **no single current figure**.

**Instruction (revised):** three official Angolan national fibre-length totals — 30,000 km (2025-11),
22,000 km (restated 2026-04) and 28,000 km (2026-06) — decline over time and none states whether it counts
backbone, total deployed or an all-operator aggregate. Obtain INACOM's annual statistical report and
establish what the authoritative national figure counts, with an as-of date.
