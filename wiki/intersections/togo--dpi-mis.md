---
type: intersection
title: Togo — education management information systems
place: TGO
topic: dpi.mis
places: [TGO]
topics: [dpi.mis, data.statistics, dpi.exchange, capacity.training, capacity.research]
entities: [[dhis2], [stateduc], [cspro], [hisp-wca], [hisp-centre], [mepsta-togo], [gpe-kix], [global-partnership-for-education], [gpe-itap], [norad], [education-data-toolkit], [pasec], [mics-eagle], [data-must-speak]]
status: active
last_reviewed: 2026-07-20
sources: [[2022-12-01-hisp-wca-dhis2-emis-togo], [2024-11-05 Togo - Integrating DHIS2 with existing EMIS systems], [2024-04-08-gpe-itap-togo-enabling-factors], [2026-05-04-gpe-kix-study-tour-education-data-system]]
---

# Togo — education management information systems

Togo runs its education MIS — known nationally as **SIGE** (*Système d'Information pour la Gestion de
l'Éducation*) — as a **[[dhis2]]** analytical layer sitting **on top of** an existing statistical
stack, not as a replacement for it. That distinction is the single most important thing on this page,
and the one most often lost in summary.

## The architecture: DHIS2 is the analytical layer, not the collection layer

Data from Togo's **16,000** nursery, primary and secondary schools is collected **on paper**,
forwarded to the education inspectorates, and entered into **[[stateduc]]** — a statistical
application used in about 20 countries — with **[[cspro]]** underlying the annual school census
infrastructure. StatEduc remains the collection tool; DHIS2 processes the records and produces the
information products (as of 2022-12-01, [[2022-12-01-hisp-wca-dhis2-emis-togo]]).

The 2026 study tour states this explicitly: in Togo DHIS2 **"was not a replacement, but was added on
top of an already functioning statistical infrastructure based on CSPro, with StatEduc for the annual
school census"** ([[2026-05-04-gpe-kix-study-tour-education-data-system]]). **"National scale"
therefore cannot be claimed for DHIS2 as the collection layer** — only as the national analytical
layer above StatEduc.

## Milestones, each dated

- **2019** (`date_precision: year`) — DHIS2 education-sector engagement begins. Corroborated only at
  **programme level** across the six participating countries (The Gambia, Uganda, Togo, Mozambique,
  Sri Lanka, Eswatini) — **not** a Togo national go-live.
- **2020** — **[[mepsta-togo]]** adopts an education sector plan centred on teaching quality,
  equitable access, improved information systems, decentralisation and accountability-based
  transparency.
- **2021** — **DHIS2 implemented in interoperability with StatEduc.** The concrete technical
  milestone: StatEduc collects, DHIS2 processes and visualises, and historical StatEduc records are
  pulled into DHIS2 for trend analysis.
- **2022-12-01** — the DHIS2 EMIS is **"currently under review by the Ministry of Education of
  Togo."** This is an *as-of 2022-12-01* statement, taken from the English original of the HISP WCA
  article; the French page carrying it is a **translation** dated 2024-11-19 and its date must not be
  read as the status date.
- **2024** — exam results held in a national DHIS2 database; a **WhatsApp results service** deployed
  **2024-06-16** for roughly **498,000 candidates**
  ([[2024-11-05 Togo - Integrating DHIS2 with existing EMIS systems]]).

Built by **[[hisp-wca]]** with **[[norad]]** and **[[gpe-kix]]** support. Indicators are disaggregated
by gender and disability status; schools can benchmark against peers via **school report cards**; the
system supports individual-level data, allowing learner-level progress tracking, and integrates
MICS-EAGLE data.

## Maturity: not a pilot, not fully embedded

Two independent assessments converge on a middle position.

**GPE's Independent Technical Advisory Panel (2024-04-08)** rated Togo's *data and evidence* enabling
factor **MEDIUM** priority. It found a genuinely large and timely data output — statistical yearbooks
published within three months of the school year's end, plus RESEN 2019, MICS-EAGLE and Data Must
Speak analyses — but concluded that **"one cannot yet say that Togo has a fully accessible and
operational EMIS"**, because nothing links the quantitative data, the financial data and the
qualitative results, which blocks their use in planning interventions and monitoring effectiveness.
It found **no clear evidence of a school master list or of student identification numbers**, and
recorded the government's own acknowledgement that an **automatic data-collection system is still
under development** ([[2024-04-08-gpe-itap-togo-enabling-factors]]).

**The GPE KIX study tour (2026-05-04)** found the system working best where it is closest to
operational decisions. At **regional level** the team saw "the clearest evidence of the system
working": staff using dynamic tables, dashboards and maps to decide **where to send teachers**,
**address furniture shortages** and **prioritise school construction**. At **inspection level** the
picture was "more constrained" — training delivered years earlier and never refreshed, devices in
short supply, and observation tools asking more of inspectors than a single classroom visit
realistically allows.

**The binding constraint is data latency, not technology.** In the tour's words: *"When validated data
reaches DHIS2 weeks after collection, it cannot support in-year decisions at district or school
level."* Training that reached only a few staff at each level compounds it. "The platform's potential
for decentralized use is real; what limits it is timing, coverage, and whether the tools were designed
around actual working conditions."

## The Education Data Toolkit and SDG4 reporting

The 2026 tour was also scoping uptake of the **Education Data Toolkit** and its **SDG4 reporting
layer**, built through the same project to let ministries consolidate, analyse and report SDG4
indicators inside DHIS2 without exporting elsewhere. DHIS2 specialist **Kirti Thakur** walked Togolese
ministry staff through the SDG4 dashboard using live Gambia 2025 data (enrolment rates, pupil-trained-
teacher ratios, learning proficiency breakdowns); the response included questions on data structure,
indicator mapping, and whether an equivalent view could be built for Togo. *Whether that reflects
genuine uptake or novelty is, on the authors' own account, still an open question*
([[2026-05-04-gpe-kix-study-tour-education-data-system]]).

## Comparative note

Togo and **[[GMB]] The Gambia** run the same platform in very different institutional environments —
the Gambia being the project's **most developed implementation**, with a national EMIS *running on*
DHIS2 rather than layered above a prior stack. The study tour treats the Francophone/Anglophone
comparison as a running theme. The wider project, *Empowering Districts and Schools with Data*, is
coordinated by the **[[hisp-centre]]** at the University of Oslo and **concludes in November 2026**.

## Caveats

- The 2022 and 2026 accounts are the **implementer's own** (HISP/DHIS2); progress claims are theirs.
  The 2024 ITAP assessment is independent of the implementer and is the counterweight.
- The ITAP source is held as an **excerpt** — complete through the end of Part B (including the SIGE
  section relied on above), truncated inside the Part C recap by a fetch limit. A full manual capture
  would complete the record.

## See also

[[TGO]] · [[dpi.mis]] · [[data.statistics]] · [[dhis2]] · [[stateduc]] · [[hisp-wca]] ·
[[mepsta-togo]] · [[GMB]]
