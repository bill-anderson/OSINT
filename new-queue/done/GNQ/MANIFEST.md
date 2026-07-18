# GNQ (Equatorial Guinea) — sweep manifest

- **Batch:** GNQ-2026-07-17
- **Window:** 2025-01-01 → 2026-07-17
- **Newspaper (single, by design):** AHORAEG (ahoraeg.com), queried in **Spanish** (N1–N7 + extra targeted Spanish queries). GNQ is the only Spanish-speaking African state and a designated single-paper country.
- **Staged:** 28 candidates · **Dropped:** 34 (see `sweep/drop-log-GNQ.csv`)
- **Held before this run:** 11 GNQ sources (WB diagnostic/CEM, DataReportal, CNEDOGE, Ceiba/ACE, DHIS2, Nigeria–EqG cable); none duplicated by staged items (URL-checked vs held-urls.txt).

## Verdict on thinness — ESTABLISHED NOT-THIN (overturns the blind-spot expectation)

GNQ was expected to be triply hard (trade-press blind spot, one paper, Spanish-only) and possibly genuinely thin. **It is not thin.** In-window (2025–2026) Equatorial Guinea has an unusually active digital-governance record: a cybercrime law creating a national cybersecurity agency (ANCIC) and ratification of the AU Malabo Convention; a civil-servant digital/biometric registry (SIGF, Morocco's M2M Group); a national ATM/POS + electronic-payments drive; GETESA modernisation (5G/Wi-Fi/Getesa Money) and a GETESA–Huawei contract; a Medusa submarine-cable study and Via Africa ambition; PAMFP government data centres (Malabo/Bata); a Djibloho digital economic zone; Starlink entry; and continued World Bank / UNDP / GITGE engagement.

**How the single-paper depth was worked:** AHORAEG (fetchable; dates embedded in URLs) ran all seven Spanish clusters plus extra targeted queries (identity/CNEDOGE, e-gov/SIGF, connectivity/GITGE/cables/Starlink, data centres/cloud, payments/GETESA/BEAC, cybersecurity/data protection, AI). Because one paper is thin cover, the run went **non-domain-scoped in Spanish** and surfaced a substantial Hispanophone ecosystem: **realequatorialguinea.com** (richest single outlet; clean ISO dates, fetchable), **ecofinge.com**, **news.identicge.org**, **equacom.news**, **radiomacuto.org** (independent/critical), plus institutional primaries **undp.org** and **larazon.es**, and government primary **guineaecuatorialpress.com** (see blind-spot note below).

**How the journal blind spot was established (probed, not assumed):** the 8 fixed journals were probed for GNQ. Consistent with `my-notes/trade-journal-coverage-assessment.md`, GNQ carries **almost no country-tagged trade-journal coverage** — but it *does* surface in **regional/bilateral** journal pieces: Biometric Update (WB DPI, 2024, held), ITWeb/TechAfrica/Connecting Africa on the Nigeria–EqG cable (held) and **TechAfrica on the Gabon–EqG fibre/roaming/frequency deals (2025-11-13, staged)**. So the journals are a low-yield supplement via regional stories, not country coverage. The real instrument for GNQ is the Spanish national/institutional press.

## Provenance / caveats

- **guineaecuatorialpress.com is cookie-walled and unfetchable** (no body/date via Exa) — several *significant* government-primary items could not be staged and are logged `fetch-failed` as **leads for manual clipping**: the **Huawei e-Government MoU**, the **e-government law** ("acceso a servicios públicos por medios electrónicos"), **BEAC joins PAPSS**, **Starlink Guinea Ecuatorial** entity creation, the **jul–dic 2026 connectivity plan** (2G/4G to 85%, Roaming Cero, 34 towers Annobón), the **unique ID code** for persons/entities (likely 2023), and the **Ley 7/2024 full text**. Where an event had a fetchable twin, that twin was staged instead.
- **AHORAEG and RealEG are close to the state** — capture is not endorsement; the **RadioMacuto** item (Telgesa/Cyberteq) is staged as an independent counterweight.
- Two items are **reference/analysis** (cite, don't absorb): The Fintech Times (fintech baseline) and La Razón (cable/regional context).

## Standing-source recommendations (for the human)

- **GITGE** (gitge.com / news.identicge.org) — state telecoms-infrastructure manager; recurring ACE-consortium host; author of the ministries digital-maturity study. Strong candidate for a `resource`/`government-body`/entity page and a **standing GNQ source**.
- **realequatorialguinea.com** — the most productive, fetchable, dated Spanish outlet on GNQ digital governance; **recommend adding as a standing GNQ source** alongside AHORAEG (materially widens the single-paper base).
- Entities surfaced worth pages: **GETESA** (+ GETESA Money), **Telgesa** (new 2nd state operator), **MUNI/Muni Dinero**, **BANGE**, **CNIAPGE** (public-administration informatisation body, distinct from CNEDOGE), **ANCIC** (cybersecurity agency), **ADIGE**, and instruments **Ley 7/2024** and **Ley 1/2016 de Protección de Datos Personales** (GNQ has a data-protection law + authority — pre-window, structural).
- One Spanish newspaper is **marginally adequate on its own**; adequacy was reached only by supplementing with the RealEG-led Spanish ecosystem + institutional primaries. Recommend formalising RealEG (and GITGE/IDENTIC) into the ledger.

## Staged items — `published | topics | source | title | why-it's-new`

1. 2025-02-21 | infra.connect, geopol.usa | RealEG | Starlink desea implantarse en Guinea Ecuatorial | Earliest 2025 Starlink-entry signal (Washington mtg, VP-ordered technical work)
2. 2025-03-19 | gov.policy, dpi.govtech, gov.regional | RealEG | GNQ en la Cumbre Digital Global 2025 (WB) | Names CNIAPGE e-gov body + CARDIP regional project; GNQ at WB summit
3. 2025-04-02 | dpi.id, dpi.govtech | AHORAEG | Cámara de Diputados examina CNEDOGE (tarifas/procesos) | Parliamentary scrutiny of ID/passport issuance, fees, consumable shortages
4. 2025-05-27 | dpi.pay, infra.connect | IDENTIC | Plan Nacional de Cajeros Automáticos y TPV | National ATM/POS plan; connectivity as the binding constraint (GITGE/GETESA/Muni)
5. 2025-06-04 | gov.legislate, infra.connect, tech.ai, infra.cybersec, gov.protect | AHORAEG | Reforma integral de la Ley 7/2005 de Telecom (licitación) | Tender to rewrite telecoms law incl. AI, cyber, data protection, satellite
6. 2025-06-17 | geopol.china, tech.ai, infra.cybersec, capacity.training | AHORAEG | China se compromete a apoyar el desarrollo tecnológico | INSTTIC training, FOCAC 2027 co-chair, Djibloho cyber/AI forum
7. 2025-06-17 | dpi.registry, data.statistics, gov.regional | RealEG | GNQ acoge la Reunión Africana sobre CRVS (Sipopo) | GNQ hosts continental APAI-CRVS meeting; INEGE/STATAFRIC/UNECA
8. 2025-08-27 | gov.policy, capacity.training, infra.cybersec | UNDP | PNUD "Digital Fitness" para el sector público | UNDP-led public-sector digital+cyber capacity training (primary)
9. 2025-11-13 | infra.connect, gov.regional | TechAfrica News | Gabón–GNQ: acuerdos de fibra, roaming y frecuencias (10 Nov, Mongomo) | GNQ–GAB fibre interconnection + free roaming + frequency coordination
10. 2025-12-19 | gov.policy, infra.store, finance.mou | RealEG | Gobierno + Banco Mundial validan acciones de economía digital | Data-centre planning, ADIGE, AI/cyber skills; WB engagement continues
11. 2026-01-12 | dpi.govtech | RealEG | Digitalización de la Patente Tributaria Única Anual | New digital tax-licence application; paperless tax administration
12. 2026-02-12 | dpi.pay | RealEG | BANGE lanza BANGE MOBILE GE | Mobile banking app; CEMAC ops via G-MAT Pay; Visa prepaid
13. 2026-02-20 | dpi.govtech, dpi.mis, gov.policy | RealEG | GNQ activa el SIGF (función pública, 18 meses) | Official launch of civil-servant management system
14. 2026-02-25 | dpi.pay | RealEG | VP exige a la banca ampliar cajeros y TPV | 5 banks + BEAC; cash-lite push tied to tourism/VAT control
15. 2026-03-04 | dpi.govtech, dpi.mis, gov.policy | AHORAEG | SIGF: 2ª reunión del Comité de Pilotaje (M2M Group, Marruecos) | Biometric attendance, centralised registry, automated payroll; Morocco vendor
16. 2026-03-25 | gov.protect, infra.cybersec, gov.regional, gov.legislate | RealEG | Diputados ratifican la Convención de Malabo (UA) | GNQ ratifies AU Cybersecurity & Data Protection Convention
17. 2026-03-27 | infra.store, tech.ai, gov.policy | RealEG | ZEEDE-GE: zona económica digital en Djibloho | Draft decree for AI/big-data/data-centre digital zone; sector revenue figures
18. 2026-03-29 | dpi.pay | The Fintech Times | GNQ Fintech Ecosystem 2026 (reference) | Baseline: <5–10 fintechs, 32% CEMAC inclusion, Orange Money (cite, don't absorb)
19. 2026-04-03 | infra.connect, gov.regional | RealEG | Estudio Analysys Mason: conexión al cable Medusa | Medusa landing at Bata/Bome; €20–60m; 2029–2030; ASD-cable problems
20. 2026-05-06 | infra.connect, gov.regional | RealEG | GITGE, anfitrión del 36º encuentro del consorcio ACE | GITGE hosts ACE O&M committee (2nd time); confirms GITGE role
21. 2026-05-25 | infra.connect, dpi.pay, tech.industry | RealEG | GETESA: plan de modernización (5G, Wi-Fi, Getesa Money) | 5G/eSIM/public Wi-Fi/fibre reactivation + Getesa Money e-payments
22. 2026-06-03 | infra.store, dpi.govtech | RealEG | PAMFP licita centros de datos (Malabo/Bata) | Government primary + backup data centres tender (solar-powered)
23. 2026-06-05 | infra.connect, gov.regional | La Razón | Cables submarinos: amarre de Medusa en GNQ + Via Africa | Confirms Medusa amarre; adds Via Africa MoU (12 May 2026) (reference/context)
24. 2026-06-12 | dpi.id, dpi.govtech | AHORAEG | CNEDOGE: nuevas oficinas + citas online (cnedoge.com) | Online appointment portal; territorial expansion of ID issuance
25. 2026-07-02 | gov.legislate, gov.protect, infra.cybersec | AHORAEG | Ley 7/2024: menores <14 en redes, privacidad | Rollout of cybercrime/social-media law provisions (creates ANCIC)
26. 2026-07-02 | dpi.govtech, dpi.exchange, data.statistics | Ecofinge | Estudio GITGE: brecha digital en los ministerios | Quantified maturity: interop 15%, Big Data 21%, analysis 10%
27. 2026-07-10 | infra.connect, geopol.china, tech.industry | RealEG | Alianza GETESA–Huawei (6 meses) | State-media account of GETESA–Huawei network-optimisation contract
28. 2026-07-15 | infra.connect, tech.industry | RadioMacuto | Huawei rescata GETESA mientras nace Telgesa | Independent/critical: Telgesa (~$50m, 260 towers), MUNI/ORTEL, Cyberteq (May 2025)
