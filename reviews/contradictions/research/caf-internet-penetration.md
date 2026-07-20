---
type: review-research
id: caf-internet-penetration
generated: 2026-07-20
method: Exa search + fetch
status: DO-NOT-INGEST (quarantined synthesis — never cited from a wiki page; primaries extracted to new/)
---

## Verdict: RESOLVED — the four figures are not four measurements of one quantity. Three are *usage* estimates at different as-of dates (one of them since withdrawn by its own publisher); the ministry's ~30% is a *network-coverage* figure, and the "15.5% → 30%" growth story is a press artefact splicing the two.

The dispute dissolves along two independent fault lines, both established from primary
documents.

**Fault line 1 — the ministry's ~30% measures coverage, not use.** The ~30% traces to
Minister of Digital Economy Justin Gourna Zacko, quoted verbatim by Africa24 TV on
2025-07-30. His own words supply the methodology the brief asked for, and it is not a
usage methodology: *"Aujourd'hui nous sommes à 30% et si vous voyez avec l'avènement de
la fibre optique que nous avons pu prendre avec le pays voisin le Congo à partir de la
ville de Ouesso, et le Cameroun à partir de la ville de Kenzo nous arrivons déjà à 50%
mais nous avons encore un défi pour cette année, aller vers le Centre-Est du pays, ce qui
va nous amener à 70% 80% en taux d'internet... Donc lorsqu'on parle du taux de
connectivité, c'est la mission qui nous a été impactée par le gouvernement."* The quantity
he describes moves 30% → 50% → 70–80% as **backbone fibre reaches new regions**, and he
names it *taux de connectivité* against a government target of *"70% de couverture
nationale."* A share-of-individuals-using-the-internet cannot be moved by laying transit
fibre; a share-of-population-within-network-reach can. There is **no survey, no sample, no
administrative user base and no stated population denominator** behind the 30% — it is an
infrastructure-reach estimate stated in an interview. It is not a competing measurement of
internet use and must never be placed on the same axis as the ITU or DataReportal values.

For scale, the independently-measured coverage figure is consistent with this reading:
GSMA's Mobile Connectivity Index put 2G/3G population coverage at ~60% in 2024, and
DataReportal/GSMA put mobile *connections* at 44.8% of population (Oct 2025) — both far
above any usage figure. A ~30% "connectivity" claim sits in coverage territory, not usage
territory.

**Fault line 2 — DataReportal's 15.5% has been withdrawn by DataReportal.** The 15.5%
(839k users, Jan 2025) is real and was published in *Digital 2025: The Central African
Republic* (2025-03-03). But *Digital 2026* (2025-11-08) reports **670k users / 12.0% in
October 2025** — fewer users than nine months earlier, against a population that *rose*
from 5.42m to 5.56m. That is arithmetically impossible as real-world change, and
DataReportal says so directly: Kepios reports internet users grew **+51k (+8.3%) between
October 2024 and October 2025**, which back-implies an Oct-2024 base of **~619k** — not
839k. The 839k/15.5% was therefore revised down, not overtaken. DataReportal prints the
warning explicitly in the Digital 2026 report: *"because we've changed our publication
cycle since our Digital 2025 reports... avoid calculating values for change over time by
referencing data published in our previous reports and articles."*

**Where the "rose from 15.5% to around 30%" claim comes from.** It is a compound error,
not a source. Someone took DataReportal's Jan-2025 *usage* figure (15.5%) — a value
DataReportal has since rebased — and set it against the minister's *coverage* figure
(~30%), producing a doubling that no one measured and that neither publisher asserts. The
minister's own comparator in the same interview is "14% in 2023," which is the **ITU usage
series** (13.84%, 2023) — so he anchored on a usage baseline and then quoted a coverage
number, which is where the confusion originates.

**Note: the error has propagated into official discourse.** Ecofin (2026-06-29) reports
*"Official data indicate that about 70% of the population still does not use the
Internet"* — i.e. 30% *usage* — in the same paragraph as *"The ITU reported that Internet
penetration reached only 13.8% in 2024."* The 30% coverage figure is now being restated by
officialdom as a usage figure, sitting alongside a value less than half its size. That is
worth tracking as a data-integrity signal in its own right (see judgment call below).

**What the wiki should carry.** The ITU series is the citable authority for usage: it is
the UN specialised agency's *"individuals using the Internet, % of population"*, collected
by annual questionnaire to governments and validated with the country, and it is the
series DataReportal itself lists first among its inputs. ITU records **13.78% for 2024**
(13.84% in 2023, 13.75% in 2022) — the source of the brief's "~14% / 86% not using".
DataReportal/Kepios **12.0% (Oct 2025)** is the freshest published estimate and should be
carried alongside it, attributed, not merged. The wiki's current **10.6% is stale** — it is
DataReportal's Jan-2024 figure — and should be retired.

### Competing claims → reconciled reading

| Figure | Asserted by | Measures | Population base | As-of | Reconciled status |
|---|---|---|---|---|---|
| **10.6%** (616.6k) | DataReportal/Kepios, *Digital 2024* | Individuals using the internet | 5.83m (UN) | Jan 2024 | **Stale.** Correct for its date; superseded twice. Currently on the CAF hub — retire. |
| **15.5%** (839k) | DataReportal/Kepios, *Digital 2025* | Individuals using the internet | 5.42m (UN) | Jan 2025 | **Withdrawn by publisher.** Rebased down; DataReportal's own back-series implies ~619k at Oct 2024. Do not cite as current or as a growth baseline. |
| **~14%** (13.78%) | ITU, World Telecom/ICT Indicators DB | Individuals using the internet, last 3 months, any location/device | ITU/UN population | calendar 2024 | **Citable authority for usage.** "86% not using in 2024" = 100 − 13.8. Mirrored by World Bank, CEIC, FRED. |
| **12.0%** (670k) | DataReportal/Kepios, *Digital 2026* | Individuals using the internet | 5.56m (UN) | Oct 2025 | **Freshest usage estimate.** Carry alongside ITU, attributed. Kepios growth: +51k (+8.3%) YoY. |
| **~30%** | Min. Justin Gourna Zacko (Africa24 TV) | **Network/backbone coverage** (*taux de connectivité*) | **None stated** | July 2025 | **Not a usage figure.** Different quantity, no methodology, no denominator. Never compare to the above. Government target: 70% *couverture nationale*. |

### Sources consulted

- **Africa24 TV** — "République centrafricaine : le taux de pénétration d'Internet atteint 30 %", 2025-07-30. https://africa24tv.com/republique-centrafricaine-le-taux-de-penetration-dinternet-atteint-30/ — **extracted to `new/`**. Carries the minister's verbatim quote; this is the document that settles the definitional question.
- **DataReportal / Kepios** — "Digital 2026: The Central African Republic", 2025-11-08. https://datareportal.com/reports/digital-2026-central-african-republic — **extracted to `new/`**. Source of 12.0% (Oct 2025) and of the explicit cross-edition comparison warning.
- **DataReportal / We Are Social / Meltwater** — "Digital 2025: The Central African Republic", 2025-03-03. https://datareportal.com/reports/digital-2025-central-african-republic — **extracted to `new/`**. Source of the 15.5% (Jan 2025) that was later rebased.
- **DataReportal** — "Digital 2024: The Central African Republic", 2024-02-23. https://datareportal.com/reports/digital-2024-central-african-republic — consulted (search highlights only, not fetched in full). Source of the wiki's current 10.6%. Not extracted.
- **Ecofin Agency** — "Central African Republic Seeks French Support to Accelerate Digital Transformation", 2026-06-29. https://www.ecofinagency.com/news-digital/2906-56895-central-african-republic-seeks-french-support-to-accelerate-digital-transformation — consulted, fetched. Corroborates ITU 13.8% (2024) and mobile 39.8%; documents the 30%-as-usage propagation. Not extracted (already-held Ecofin material covers this ground).
- **CEIC** — "Central African Republic Telecommunication" (World Bank/ITU mirror). https://www.ceicdata.com/en/central-african-republic/telecommunication — consulted. ITU series: 13.783% (2024), 13.842% (2023). Mirror, not extracted.
- **FRED, St. Louis Fed** — series ITNETUSERP2CAF (World Bank/ITU mirror). https://fred.stlouisfed.org/series/ITNETUSERP2CAF — consulted. 13.78250 (2024), 13.84170 (2023), 13.75360 (2022). Mirror, not extracted.
- **World Bank** — "Individuals using the Internet (% of population) — Central African Republic". https://data.worldbank.org/indicator/IT.NET.USER.ZS?locations=CF — consulted. ITU-sourced. Mirror, not extracted.
- **ITU DataHub** — https://datahub.itu.int/data/?e=CAF&i=11624 — **attempted, not fetchable** (JavaScript data explorer; returns an empty shell to a text fetch). The ITU value is established here via three independent mirrors of the ITU series plus Ecofin's direct citation, not from ITU's own page. See provenance gap in the report.
