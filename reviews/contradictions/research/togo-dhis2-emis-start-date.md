---
type: review-research
id: togo-dhis2-emis-start-date
generated: 2026-07-20
method: Exa search + fetch
status: DO-NOT-INGEST (quarantined synthesis — never cited from a wiki page; primaries extracted to new/)
---

## Verdict: CONCLUSIVE — the dates are two different milestones and neither is wrong, but the contradiction's sharper defect is a mis-dated maturity claim: "under review by the Ministry" is an **as-of 2022-12-01** statement, not 2024-11-19. The URL slug `emis-togo-2022` is the original English publication year; the 2024-11-19 byline belongs to the French translation.

### What the research established

**The third year in the slug is the answer to the maturity question.** The article the wiki holds is
`education.dhis2.org/fr/emis-togo-2022` (page-dated 2024-11-19). Its **English original** sits at
`education.dhis2.org/emis-togo-2022/` and was **published 2022-12-01**, same author (Ellen Summey),
same text. The French page is a later translation carrying a translation-date, not a re-report of
fresh state. Every present-tense statement in it — including "The DHIS2 EMIS system is currently
under review by the Ministry of Education of Togo" — is therefore **as of 2022-12-01**. The wiki was
holding a two-year-old maturity claim as a November 2024 state. This is the `CLAUDE.md` "event date ≠
publication date" defect in its translation variant.

**2019 and 2021 are genuinely distinct milestones, and 2019 is programme-level, not Togo go-live.**
A GPE KIX blog by Kousiakis and Sanner (2023-06-23) states: *"Since 2019, DHIS2 has seen uptake in the
education sector in The Gambia, Uganda, Togo, Mozambique, Sri Lanka and Eswatini."* That is a
**multi-country programme origin date** for DHIS2-for-Education, and Togo is named among the first
cohort. It cannot be a KIX-project deliverable date: the KIX "Data Use Innovations" project ran
**42 months to Dec 2024** (GPE KIX project page), i.e. began roughly mid-2021, well after 2019. So the
profile's "Since 2019" marks **when DHIS2 education-sector engagement in Togo began**, not when
anything reached national scale. The **2021** date is the concrete technical milestone: DHIS2
implemented in interoperability with StatEduc (dhis2, 2022-12-01).

**"National scale" describes the DHIS2 instance's coverage, not ministry-wide operational adoption —
and the national *collection* layer is StatEduc/CSPro, not DHIS2.** The decisive line is in the
2026 study tour report: in Togo *"DHIS2 was not a replacement, but was added on top of an already
functioning statistical infrastructure based on CSPro, with StatEduc for the annual school census."*
StatEduc remains the national census collection tool; DHIS2 is the **national analytical layer** over
it. The Togolese government's own 2025 joint sector review records that in 2023 MEPS recruited a
StatEduc/SIGE consultant to migrate StatEduc from MS Access to PostgreSQL and move to online entry —
i.e. the ministry was still modernising **StatEduc**, not retiring it. The same review records HISP
WCA financing **"phase 2 du projet DHIS2"** at 71,305,244 FCFA, confirming DHIS2 in Togo is a
project-funded layer in a second phase, not a completed national system.

**DHIS2 does hold one genuinely national production function, dated 2024.** Exam results: *"As of 2024
exam results are captured and stored in a national DHIS2 database"*, with a WhatsApp chatbot querying
that national instance deployed **2024-06-16**, against ~498,000 annual candidates (dhis2,
2024-06-27). This is real national production — for exam results specifically.

**An independent assessment contradicts "national scale" as a whole-EMIS claim.** GPE's Independent
Technical Advisory Panel, **2024-04-08**: *"on ne peut pas encore dire que le Togo dispose d'un SIGE
pleinement accessible et opérationnel"* — Togo cannot yet be said to have a fully accessible,
operational EMIS; the automatic data-collection system is *"encore en cours d'élaboration"*; and there
is no clear evidence of a school master list or learner ID numbers. This is a third party, not the
implementer, and it dates the gap precisely.

**Current state (most recent evidence, 2026-05-04).** Not a pilot, not fully embedded. At **regional
level** the study tour found *"the clearest evidence of the system working"* — staff using dynamic
tables, dashboards and maps to decide teacher deployment, furniture shortages and school construction
priorities. At **inspection level** it was *"more constrained"* — training done years ago and not
refreshed, devices in short supply. The binding constraint is latency: *"When validated data reaches
DHIS2 weeks after collection, it cannot support in-year decisions at district or school level."* The
project concludes **November 2026**.

**The "piloting" wording on the profile is stale publisher prose.** The profile page (page-dated
2024-11-05) says both "Since 2019 / National scale" in its structured table and "the ministry is
piloting DHIS2" in its prose. Given 2024-dated national exam-results production and 2026-dated
operational regional use, "piloting" is not the current state and reads as un-refreshed narrative
text carried forward on a living profile page. It should not be cited as a maturity claim.

### Competing claims → reconciled reading

| Claim | Asserted by | As of | Reconciled reading |
| --- | --- | --- | --- |
| "Since 2019" | DHIS2 country profile (structured field) | page-dated 2024-11-05 | **Correct but not a go-live.** Marks the start of DHIS2 education-sector engagement in Togo, consistent with the programme-wide "since 2019" across six countries (GPE KIX, 2023-06-23). Not national scale. |
| "In 2021, DHIS2 was implemented in interoperability with StatEduc" | DHIS2 article, Ellen Summey | **2022-12-01** (not 2024-11-19) | **Correct, and the concrete technical milestone.** Compatible with 2019 — different events. |
| "National scale" | DHIS2 country profile (structured field) | page-dated 2024-11-05 | **Partially true, needs qualifying.** The DHIS2 instance is national in coverage and holds national exam results (2024); but the national *census collection* layer is StatEduc/CSPro, and an independent panel found no fully operational EMIS as of 2024-04-08. |
| "The ministry is piloting DHIS2" | DHIS2 country profile (prose) | page-dated 2024-11-05 | **Stale.** Contradicted by national exam-results production (2024) and operational regional use (2026). Do not cite as maturity. |
| "The DHIS2 EMIS is currently under review by the Ministry of Education" | DHIS2 article, Ellen Summey | **2022-12-01** — the wiki held this as 2024-11-19 | **Correct for its true date, and now superseded.** A 2022 status; overtaken by 2024 production and 2026 field observation. |
| "Togo does not yet have a fully accessible, operational EMIS" | GPE Independent Technical Advisory Panel | 2024-04-08 | **Independent counterweight** to "national scale". Third-party, not the implementer. |
| Regional use working; inspection level constrained; data reaches DHIS2 weeks late | DHIS2 / HISP UiO study tour | 2026-05-04 | **Current state.** Operational but unevenly adopted; latency is the binding constraint. |

### Residual uncertainty

The "since 2019" figure is corroborated only at **programme level** across six countries, not by a
Togo-specific 2019 document. No 2019-dated Togolese or HISP WCA record of a first Togo deployment was
found. Treat 2019 as *"DHIS2 education-sector engagement began"* rather than a precise national event
date, and mark it `date_precision: year`.

## Sources consulted

- **HISP WCA develops DHIS2 EMIS for education data analysis and visualization in Togo** — DHIS2 (HISP Centre, University of Oslo), Ellen Summey, **2022-12-01**. https://education.dhis2.org/emis-togo-2022/ — **extracted to `new/2022-12-01-hisp-wca-dhis2-emis-togo.md`** (English original; settles the date defect).
- **GPE KIX study tour documents what it takes to build an education data system** — DHIS2 (HISP Centre, University of Oslo), Ellen Summey, **2026-05-04**. https://education.dhis2.org/gpe-kix-study-tour/ — **extracted to `new/2026-05-04-gpe-kix-study-tour-education-data-system.md`** (current maturity state).
- **Report of the Independent Technical Advisory Panel (ITAP) — Évaluation des facteurs favorables, Togo** — Global Partnership for Education, **2024-04-08**. https://www.globalpartnership.org/node/document/download?file=document%2Ffile%2F2024-04-togo-itap-report-fr.pdf — **extracted to `new/2024-04-08-gpe-itap-togo-enabling-factors.md`** (PARTIAL BODY — complete through end of Part B; truncated inside Part C recap by a fetch character limit).
- HISP WCA développe DHIS2 EMIS ... au Togo (French translation of the 2022 original) — DHIS2, Ellen Summey, page-dated 2024-11-19. https://education.dhis2.org/fr/emis-togo-2022 — already held by the wiki; not re-extracted.
- Togo country implementation profile — DHIS2, page-dated 2024-11-05. https://education.dhis2.org/implementation/togo — already held by the wiki; not re-extracted. French mirror page-dated 2024-11-19: https://education.dhis2.org/fr/implementation/togo/
- Enhancing School Results Publication in Togo — DHIS2, Ellen Summey, 2024-06-27. https://education.dhis2.org/togo-sms-results-2024/ — national DHIS2 exam database and 2024-06-16 WhatsApp bot deployment. Not extracted (single supporting fact; candidate for separate ingest).
- Knowledge mobilization through co-creation — GPE KIX, Sophia Kousiakis & Terje Aksel Sanner, 2023-06-23. https://www.gpekix.org/blog/knowledge-mobilization-through-co-creation — source of the programme-level "Since 2019". Not extracted.
- Data Use Innovations for EMIS in The Gambia, Uganda, and Togo (project page) — GPE KIX, undated. https://www.gpekix.org/project/data-use-innovations-education-management-information-systems-gambia-uganda-and-togo — 42-month duration, End Date Dec 2024. Not extracted (undated page).
- Empowering districts and schools with data (successor project page) — GPE KIX, undated. https://www.gpekix.org/project/empowering-districts-and-schools-data-digital-platform-approach-co-create-and-scale — 36 months, End Date Nov 2026. Not extracted (undated page).
- Togo: Empowering Schools and Districts with Data — GPE KIX, Sanner/Gbeteglo/Tsali/Gbokpa, 2025-04-17. https://www.gpekix.org/blog/togo-empowering-schools-and-districts-data — ministry-voice account of integration and real-time access. Not extracted (candidate for separate ingest).
- Aide-mémoire de la dixième revue sectorielle conjointe de l'éducation du Togo, Juin 2025 — Republic of Togo, MEPS/METFPA/MESR/STP-PSE, review held 2025-06-04/05, PDF posted 2025-10. https://education.gouv.tg/wp-content/uploads/2025/10/Aide-me%CC%81moire-RSCE_Togo_2025.pdf — HISP WCA financing of "phase 2 du projet DHIS2" (71,305,244 FCFA); 2023 StatEduc→PostgreSQL migration consultant. **Not extracted: full verbatim body could not be captured (long PDF exceeding fetch limits).**
- GPE KIX offers extension to HISP project — DHIS2, 2023-11-08. https://education.dhis2.org/gpe-kix-extension-2024/ — Not extracted.
- Direction de la planification, des Statistiques et du Suivi-Évaluation (DPSSE) — MEN Togo, accessed 2026-07-20. https://planifeducation.gouv.tg/dpsse/ — ministry statistics portal; publishes annuaire and dashboards. Not extracted (undated homepage).
- MEPST : HISP WCA appuie le pilotage du système éducatif avec des ordinateurs et tablettes — Ministère de l'Education Nationale (Togo), 2023-12-23. https://education.gouv.tg/mepst-hisp-wca-appuie-le-pilotage-du-systeme-educatif-avec-des-ordinateurs-et-tablettes/ — 100 laptops + 10 tablets handed over 2023-12-20; MoU between MEPST and HISP WCA; training on DHIS2 and StatEduc2. Not extracted (candidate for separate ingest).
