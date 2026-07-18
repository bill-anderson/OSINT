# DJI — sweep manifest (`DJI-2026-07-17`)

**Window:** 2025-01-01 → 2026-07-17 · **Staged:** 47 · **Dropped:** 22 (`sweep/drop-log-DJI.csv`)

> Merged from the two half-sweeps (newspapers, trade journals), which ran as
> separate agents writing disjoint files. Same-event twins across the two halves
> are deliberately kept: same event from a different outlet is never a sweep-stage
> drop. Lint #7 adjudicates them at ingest, with full text.

---

## Part 1 — Newspapers

# DJI newspaper sweep — MANIFEST (papers half)

**Sweep batch:** DJI-2026-07-17 · **Window:** 2025-01-01 → 2026-07-17
**Domains:** adi.dj (Agence Djiboutienne d'Information — state news agency) · lanation.dj (La Nation — government daily)
**Agent:** newspaper half. A separate trade-journal agent writes into this same folder; paper files are suffixed `-lanation` / `-adi` to avoid collision.

**Staged: 17** (14 La Nation, 3 ADI). **Dropped: 9** (8 out-of-window, 1 off-topic) — see `sweep/drop-log-DJI-papers.csv`.

**State-press caveat:** BOTH outlets are state-aligned (ADI *is* the state agency; La Nation is the government daily). Coverage is uniformly official-framed, promotional, and adversarial-counterweight-free. Adequate for *what happened / what was launched*; structurally incapable of contradicting government claims, quantifying shortfalls, or surfacing dissent. Several pieces read as advertorial ("un pari audacieux", "un bond en avant"). Figures inside profiles may be un-refreshed boilerplate (see the Djibouti Telecom item's caveat).

**Date hazard (recurring, confirmed):** every La Nation page renders a **live/cached clock date** into its chrome (e.g. "Monday, June 15, 2026") that is NOT the publication date — distinct dates appeared across pages fetched in one session. All `published` values below were established from body datelines ("hier", explicit in-text dates, event windows), never from that chrome and never from Exa metadata alone. ADI's new portal (`/article/138xxx`) carries clean bylines/datelines and is reliable.

---

## Connectivity & regional integration (N4)
- 2026-02-05 | infra.connect, gov.regional, finance.mou | La Nation | Horizon Fiber accord (DJT/Ethio Telecom/Sudatel) | 2 800 km terrestrial fibre corridor Djibouti–Addis–Port-Sudan, 144 fibre pairs, ~14 ms latency; signed 4 Feb 2026. NEW multi-country cable project; not held. *(ADI carried the same signing 4 Feb — fuller La Nation twin staged.)*
- 2025-07-30 | infra.connect, gov.regional, digital.rural | La Nation | DFN & EARDIP stakeholder/grievance workshop | World-Bank-financed DFN + EARDIP fibre rollout to Djibouti-ville, Balbala and the 5 interior regions; grievance-mechanism workshop. Grounds the DFN/EARDIP entities the wiki names but under-sources.
- 2025-06-25 | infra.connect, digital.rural, dpi.mis | La Nation | DFN fibre reaches Ali-Sabieh regional hospital | >200 km fibre deployed; instant inter-hospital medical-record sharing vs. "a whole day" before. Concrete rural-connectivity impact evidence.
- 2025-10-22 | infra.connect, digital.rural, digital.localgov | La Nation | DFN fibre reaches Damerjog (school + sub-prefecture + clinic) | Arta-region rollout; 1 200+ pupils connected; sub-prefecture online. Rural digital-divide datapoint.
- 2026-01-22 | infra.connect, tech.industry, gov.legislate | La Nation | Djibouti Telecom profile — "nouvelle ère" | [P] Entity profile; states the **statutory telecom MONOPOLY** and its legal basis (loi 13/1998, loi 80/2004). ⚠ CAVEAT: recycles stale boilerplate (7 cables / "2 nouveaux câbles pour 2021") — do NOT promote its cable/capacity figures; held sources are fresher.

## Digital ID & GovTech (N1, N2)
- 2026-02-09 | dpi.id, gov.protect, dpi.govtech | La Nation | [CLIP] Mobile ID / National Digital Identity Forum | ⚠ MAY RE-DATE held material: body says forum was "hier", implying event 2026-02-08 (wiki/held Biometric Update dates the launch 2026-02-09). Local-outlet primary; names Somalia CB + Benin ANIP delegates present. Flagged for ingest adjudication.
- 2026-01-27 | dpi.govtech, dpi.registry, tech.innovate | La Nation | [CLIP] Online company-creation platform launched | Fully-online business registration (PM Kamil Mohamed); 8,446 firms created 2017–24, "2nd worldwide on investor protection" (gov claim, undated methodology). NEW e-gov service.
- 2026-04-29 | dpi.govtech, dpi.exchange, gov.standards, gov.regional | La Nation | [CLIP] DPCS port digitalisation named IMO/World Bank best practice | Djibouti Port Community System showcased at Dar es Salaam alongside Mauritius/KenTrade/Busan; legal base Décret 216/2023. Cross-border trade-data / single-window signal.

## Data governance, protection & statistics (N3)
- 2025-07-13 | gov.legislate, gov.protect, infra.cybersec | La Nation | [CLIP] Digital Code explainer | Follow-up on the 800-article Code du numérique (adopted 30 Jun 2025); details CNDP sanction powers, mandatory DPOs, access/erasure/portability rights. Same instrument as held raw/2025-07-01 — different outlet, adds provisions detail.
- 2025-04-30 | data.statistics, gov.policy, dpi.exchange | La Nation | SNDS-3 national statistics strategy 2025-2029 validated | World-Bank-financed; 3 axes incl. admin-DB interoperability + data digitisation. NEW; not held.
- 2025-06-15 | data.open, data.statistics, gov.standards | La Nation | [CLIP] SGDD-a / IMF e-GDDS National Summary Data Page launched | Djibouti joins IMF enhanced GDDS (76 countries); PNRD hosted on "Plateforme Open Data de Djibouti"; FMI + AfDB support. Distinctive open-data signal; not held.

## Cybersecurity (N7)
- 2026-07-09 | infra.cybersec, gov.regional, capacity.training | La Nation | ANC / DJ-CERT wins IGAD regional cyber exercise | DJ-CERT placed 1st in both simulation scenarios (Addis, 26–30 Jun 2026). First mention of a named **DJ-CERT** operating under the held ANC entity.

## Payments & fintech (N6)
- 2025-09-21 | dpi.pay, finance.mou, dpi.id | La Nation | [CLIP] MDENI/Visa Smart Wallet MoU | Same event as held raw/2025-09-19 (16 Sep 2025) — different outlet; adds Visa signatory (Senyuta), post-office/"maisons du citoyen" offline channels, Tech5 NIST standing.

## Strategy, AI, geopolitics (N5, N7, cross-cutting)
- 2026-07-09 | gov.policy, tech.ai, infra.connect, include.divides | La Nation | Geneva/WSIS-26 — Djibouti's inclusive-hub vision | Same WSIS event as held raw/2026-07-13 — different outlet, 4 days earlier. Ministerial framing of DFN/EARDIP.
- 2026-07-10 | gov.regional, tech.ai, geopol.china | ADI | Helem Geneva WSIS-26 wrap — bilateral meetings | Same event as held raw/2026-07-13; ADI (likely the primary local relay it draws on): names ITU SG Bogdan-Martin, BDT's Zavazava, Smart Africa's Koné, + a China ICT-minister bilateral with follow-up agreed.
- 2026-06-22 | geopol.china, tech.ai, tech.industry, finance.new | ADI | Beijing — Djibouti industrial/AI roadmap to China Exim Bank | Min. Dawaleh pitches Djibouti as "plateforme émergente pour l'IA / l'innovation numérique" to Chinese capital. geopol.china signal; digital payload thin (context otherwise industrial).
- 2026-06-30 | gov.policy, gov.legislate | ADI | Council of Ministers — PND-ADEEG 2025-2030 formally adopted | [P/communiqué] The 3rd National Development Plan (Vision-2035 successor frame cited across all digital coverage) adopted by decree; also anti-corruption bill (CNIPLC/FATF).

---

### Notes for the human / ingest
- **Startup Act (structural gap, out of my domain scope):** Loi n° 179/AN/25/9ème L "portant Startup Act Djibouti" was promulgated and published in the Journal Officiel (eJO, journalofficiel.dj, JO date 08/01/2026); the Startup Act was reported adopted by the National Assembly on 12 Nov 2025 (same session that created the ANC). Not in the wiki. The primary text sits on eJO (journalofficiel.dj) — outside the two swept newspaper domains — so it was not staged here; flag for a targeted source pull.
- **eJO / journalofficiel.dj** is a live primary-law portal (individual `loi`/`décret` texts) and would be a strong `resource`/`instrument` acquisition target for Djibouti — repeatedly the underlying primary for La Nation/ADI legal stories.
- **Under-collection, not thinness:** briefed as a small country, but La Nation alone yielded ~40 on-domain Djibouti digital URLs (13 staged in-window here). Coverage is deep; the constraint is the state-press framing, not volume.
- **[CLIP] items** paywall/truncate mid-article on fetch (free lede served, 200 OK); staged text is the full free-serve body. Promotion needs a manual clip for the tail. Pending ISSUE-011.

---

## Part 2 — Trade journals

# DJI trade-journal sweep manifest (journals half)

Sweep batch: DJI-2026-07-17 · window 2025-01-01 → 2026-07-17 · 8 fixed journals, recipes J1–J2.
30 candidates staged. Drop log: `sweep/drop-log-DJI-journals.csv` (13 drops).
Files suffixed by outlet; newspaper agent's `*-lanation` / `*-adi` files are separate.

`published | topics | source | title | why-it's-new`

- 2026-07-15 | gov.regional, dpi.govtech, capacity.training | techreviewafrica (PR-wire) | Djibouti, Japan hold talks to deepen cooperation in digital economy and innovation | New bilateral track (Japan) under new Minister Delegate Safia Gadileh; not in wiki.
- 2026-07-04 | tech.innovate, dpi.govtech, gov.policy | techreviewafrica (PR-wire) | Djibouti unveils LIMO platform to accelerate digital economy and innovation | New ministry innovation-ecosystem platform; DISTINCT from the private "Limo" e-commerce startup (name collision — disambiguate at ingest).
- 2026-06-15 | tech.innovate, dpi.pay, tech.ai | wearetech | Limo Targets Digital Commerce Growth in Djibouti With Marketplace, Logistics and AI | New private Djiboutian e-commerce startup (marketplace + AI); no wiki page.
- 2026-05-22 | gov.policy, dpi.govtech | techreviewafrica (PR-wire) | Djibouti appoints Safia Ali Mohamed Gadileh as Minister Delegate for Digital Economy and Innovation | RE-DATES wiki: portfolio minister is now Safia Gadileh, not Mariam Hamadou Ali (as of 2026-05-22).
- 2026-05-16 | include.divides, capacity.training, digital.rural | wearetech | Djibouti Seeks to Narrow Digital Divide With "Digital Houses" Initiative | New E-SKILLS "Digital Houses" across 5 inland regions; 3,000 trained by 2029, €7M; youth unemployment 76.32% (2024). Not in wiki.
- 2026-04-06 | capacity.training, tech.innovate, geopol.eu | techreviewafrica (PR-wire) | Djibouti launches École 42 Project to promote technological innovation | New EU/Expertise France-backed coding school (Association 42); not in wiki.
- 2026-02-10 | dpi.id, gov.protect, dpi.govtech, dpi.mis | wearetech | Djibouti Officially Launches Mobile ID Digital Identity Platform | Twin of held Mobile ID launch; adds emergency-medical use case + "Djibouti, Foundation of Digital" 5-yr plan.
- 2026-02-10 | dpi.id, gov.protect, infra.cybersec | biometricupdate | Djibouti unveils biometric mobile ID to enhance access to public services | Twin of held Mobile ID; adds President Guelleh + Minister quotes (identity-theft/foreign-interference warnings).
- 2026-02-10 | infra.connect, gov.regional, finance.mou, infra.store | telecomreviewafrica | Ethio telecom, Djibouti Telecom, Sudatel Seal Binding Deal on Cross-Border Fiber Network | Horizon Fiber MoU→binding (NEW event); CEO quotes on digital sovereignty.
- 2026-02-06 | infra.connect, gov.regional, finance.mou, tech.ai | itweb | East African telcos seal cross-border fibre corridor deal | Horizon Fiber signing (NEW); adds subscriber scale + signing-in-Djibouti detail.
- 2026-02-05 | infra.connect, gov.regional, finance.mou, dpi.exchange | connectingafrica | East African telcos ink cross-border fiber network deal | Horizon Fiber binding agreement (NEW); Dec-2024 MoU origin, corridor Djibouti→Ethiopia→Sudan.
- 2026-02-04 | infra.connect, gov.regional, finance.mou | techafricanews | Ethio telecom, Djibouti Telecom, and Sudatel seal Horizon Fiber cross-border connectivity deal | Earliest-dated Horizon Fiber signing account (NEW event); full CEO quotes.
- 2026-01-29 | tech.ai, gov.policy, gov.protect | wearetech | Djibouti prépare sa Stratégie nationale d'intelligence artificielle | FR twin of held AI strategy; adds UNESCO RAM + UN ESCWA support, 27 Jan workshop.
- 2025-12-20 | gov.policy, data.open, tech.ai | techreviewafrica (PR-wire) | Djibouti positions digital transformation as a core pillar of national development | Minister keynote at DERE think-tank conference; open-data mention. Not in wiki.
- 2025-12-18 | dpi.govtech, dpi.pay, gov.policy, geopol.eu | techafricanews | Djibouti Launches G2B Digital Platform to Boost SMEs and Entrepreneurship | Twin of held G2B launch; adds 3-pillar structure + EU Ambassador involvement.
- 2025-12-15 | tech.industry, tech.innovate, gov.regional | wearetech | Djibouti : vers la création d'une fédération nationale des entreprises du numérique | New national digital-enterprise federation; Djibouti a founding member of the African Federation (Marrakech Declaration). Not in wiki.
- 2025-12-09 | infra.cybersec, gov.legislate, gov.regional | wearetech | Djibouti Moves Toward Launch of National Cybersecurity Authority | Twin of held ANC; NET-NEW facts: UN Cybercrime Convention signed Hanoi Oct-2025, Malabo ratified Nov-2023, ITU GCI 11.84/20.
- 2025-11-14 | tech.innovate, gov.legislate, gov.policy, finance.new | wearetech | Djibouti Pushes Startup Act to Strengthen Its Digital Economy | New Startup Act bill (label, fund-of-funds, Startup Visa); presented 9 Nov 2025. Not in wiki.
- 2025-11-12 | tech.innovate, gov.legislate, gov.policy, finance.new | techafricanews | Djibouti Advances Startup Act to Boost Innovation and Youth Employment | Twin of Startup Act bill (different outlet).
- 2025-10-20 | infra.connect, gov.regional, dpi.pay | techafricanews | Ethio Telecom and Djibouti Telecom Deepen Strategic Partnership to Boost Regional Digital Connectivity | New: Addis meeting accelerating Horizon Fiber + mobile-money/roaming cooperation. Not in wiki.
- 2025-09-23 | gov.regional, dpi.govtech, capacity.training, finance.mou | wearetech | Djibouti et la Roumanie explorent une coopération numérique prometteuse | New bilateral track (Romania) on e-gov/skills/cyber. Not in wiki.
- 2025-09-22 | dpi.pay, finance.mou, dpi.id, geopol.usa | biometricupdate | Djibouti engages Visa, Tech5 for national digital wallet rollout | Twin of held Smart Wallet MoU; adds Tech5 CTO quote, GDP figures, FaydaPass link. (Source error: says signed "in Asmara" — flag.)
- 2025-09-19 | dpi.pay, finance.mou, dpi.id, geopol.usa | techafricanews | Djibouti Signs MoU with Visa to Launch National Digital Wallet | Twin of held Smart Wallet MoU (different outlet).
- 2025-09-01 | infra.connect, gov.regional, infra.store | connectingafrica | DARE1 subsea cable to link Kenya to South Africa | Twin of held DARE1 extension; adds 36 Tbit/s, 3,200–3,500 km Mombasa–Mtunzini, RFS 2028.
- 2025-09-01 | infra.connect, gov.regional | itweb | Djibouti Telecom extends DARE1 subsea cable from Kenya to South Africa | Twin of held DARE1 extension (different outlet).
- 2025-09-01 | infra.connect, gov.regional | techafricanews | Djibouti Telecom Expands DARE1 Cable to Connect East and Southern Africa | Twin of held DARE1 extension (different outlet).
- 2025-07-02 | gov.legislate, gov.protect, infra.cybersec, gov.policy | techafricanews | A First for East Africa: Djibouti Enacts Comprehensive Digital Code | Twin of held Digital Code; adds full 8-book structure.
- 2025-06-06 | infra.store, finance.new, infra.connect | connectingafrica | Wingu Africa secures $60M to fuel East Africa expansion | New $60M RMB raise (DJI/ETH/TZA); AMS-IX Djibouti IXP, 12 subsea cables. Not in wiki.
- 2025-06-05 | infra.store, finance.new, infra.connect | biometricupdate | $60M to speed up digital connectivity infrastructure in Ethiopia, Djibouti, Tanzania | Twin of Wingu $60M raise (different outlet).
- 2025-02-24 | capacity.training, dpi.govtech, tech.ai, infra.cybersec | wearetech | Djibouti Launches Digital Skills Program for Government Officials | New DCO/Oracle University/INAP civil-servant training. Not in wiki.

## Per-domain yield
- wearetech.africa — 9 staged (EN+FR). Strongest DJI journal; several net-new (Startup Act, Digital Houses, federation, Romania, digital skills) + rich twins.
- techafricanews.com — 8 staged. Strong; Horizon (earliest), plus twins + Ethio-Djibouti partnership. Byline traps confirmed (see below).
- techreviewafrica.com — 5 staged (all PR-wire, dated via explicit `Date:` field), 3 dropped pr-wire-better-twin.
- biometricupdate.com — 2 staged (Mobile ID biometric, Visa/Tech5) + $60M held-adjacent. ESTABLISHED not thin: probed, covers DJI biometrics/DPI events specifically.
- connectingafrica.com — 2 staged (Horizon, Wingu $60M, DARE1). ESTABLISHED strong on the cable beat (as briefed).
- itweb.africa — 2 staged (Horizon, DARE1). On the East-Africa cable beat.
- telecomreviewafrica.com — 1 staged (Horizon). ESTABLISHED not thin: covers DJI cables heavily but in-window country-specific news yielded one piece; its other DJI hits were out-of-window (2024) or pan-African features (routed to regional pass).
- techcabal.com — 0 staged (only DJI in-window hit, the ETH/SOM/DJI powerhouses piece, already held).
