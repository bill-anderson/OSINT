# Sweep manifest — MRT (Mauritania / موريتانيا)

- **Batch:** MRT-2026-07-17
- **Window:** 2025-01-01 → 2026-07-17
- **Sources run:** ami.mr (Agence Mauritanienne d'Information — **state news agency**, Arabic + French); lequotidien.mr (French); the 8 fixed trade journals (English, J1–J2).
- **Counts:** 17 staged · 43 dropped/not-staged (see `sweep/drop-log-MRT.csv`)
- **Staged by theme:** ID & civil registry 3 · connectivity/cables/telecom 5 · payments & digital finance 3 · data centre/cloud/sovereignty 1 · e-gov & standards 3 · cybersecurity 1 · reference guide 1

## Language / Hijri-date note (closes the Arabic-date risk for MRT)
**ami.mr serves clean Gregorian dates in Western numerals — in BOTH French and Arabic — despite being a state agency.** No Hijri datelines and no Eastern-Arabic numerals (٠١٢٣) were seen on ami.mr; Arabic bodies use `اليوم الاثنين` + Western digits (670, 200, 28). This matches the Algeria/Egypt state-paper pattern: the Hijri/Eastern-numeral risk flagged for MRT did **not** materialise. All dates below verified from the fetched body. ASCII-transliterated slugs used; Arabic kept in `title:`; Arabic-body sources carry an English gloss.

## Per-domain yield (established, not assumed)
- **ami.mr (assigned, state agency):** RICH. Deep archive, well-dated, both languages. Government voice — every ami.mr file flagged `provenance_flag: state-agency` (capture ≠ endorsement). 3 staged.
- **lequotidien.mr (assigned):** **effectively unindexed by Exa — 0 on-host results** across both French passes. Thin/unreachable via this tool; note for the ledger. (No drops logged — nothing surfaced.)
- **Assigned trade journals — NOT thin (contradicts the North-Africa note's MRT prediction):** `techafricanews.com` carries strong country-tagged MRT coverage (satellite tender, 5G, Huawei, standards, cable) — 4 staged; `wearetech.africa` carries MRT public-management coverage (IsDB deal, consular platform, held Ijraati) — 2 staged. **SSA-4 (biometricupdate, connectingafrica, techcabal, itweb): genuinely thin** — biometricupdate's only in-window MRT item is a same-event twin of a held source (SIM enforcement); the other three surfaced nothing MRT-specific.
- **Off-assigned-host (flagged):** MRT's richest DPI signal sits on Mauritanian national outlets + institutions not in the assigned set (emergence.mr, errakb, ghabess, techrek, ladepeche, nkt.mr, agenceecofin, ecofinagency, afdb.org, trade.gov, invest-time). 8 highest-value distinct primaries captured with `provenance_flag: off-assigned-host`; the rest logged as pr-wire-better-twins or leads. **Flagged for the human's judgement on scope.**

## Staged items

### Digital identity & civil registry
- `2025-07-24` | dpi.govtech, dpi.id, dpi.mis | AMI (state) | Houwiyati national (education) certificates extraction service *(FR)* | new e-service extending Houwiyeti into education-sector documents (post-2013 / NNI-linked).
- `2026-06-21` | dpi.id, dpi.govtech | Tech Rek *(off-host, AR)* | Houwiyeti latest usage indicators — 1.5M beneficiaries (English gloss in file) | fresh quantified update: 677k accounts, 554,027 remote services, 1,511,139 beneficiaries (~30% pop), app passport-share 24.8%→32.9%→35.7%. **Contradiction/re-dating flag vs held "70% of passport requests / 622k extracts (2025)."**
- `2026-06-18` | dpi.id, dpi.registry, include.access, gov.legislate | La Dépêche *(off-host, FR)* | Parliamentary état-civil debate — Interior Minister defends reforms | **ID-EXCLUSION / statelessness angle** (lens: sovereignty, colonialism): named deputies press govt on citizens left without papers; register 3.4M(2019)→5.1M today, 613k special enrolment, 238 commissions, 2025 permanent-enrolment reform. Contests the held ANRPTS "94% coverage."

### Connectivity, cables & telecom
- `2025-07-28` | infra.connect, gov.regional, geopol.eu, finance.new | AMI (state) | EllaLink 2nd submarine cable — project launch, Nouadhibou *(FR)* | 669 km, 200Gb/s→12Tbit/s, €43.5m EIB/EU; "second cable" long held only as "contracted." President-level launch.
- `2026-05-04` | infra.connect, geopol.eu | AMI (state) | EllaLink phase-1 coastal landing completed *(FR)* | PLSE 28 km / Bu7 junction; Ellalink + Alcatel Submarine Networks; commissioning Q1 2027.
- `2026-05-05` | infra.connect, include.divides, include.access | Agence Ecofin *(off-host, FR)* | 2nd cable + **connectivity/affordability baseline** | ACE-dependency vulnerability; ITU: internet use 45.8% (2024); 5GB mobile = 2.94% GNI, fixed 17.6% GNI. Kept for the dated baseline the ami.mr twin lacks.
- `2026-01-29` | infra.connect, include.divides, geopol.usa | TechAfrica News | ARE satellite-internet licence tender | GEO + capacity batches; **Starlink planning commercial launch in Mauritania 2026**; 63% offline (2023).
- `2026-04-15` | infra.connect, tech.industry | TechAfrica News | 5G provisional licence winners | ARE names Mauritel/Mattel/Chinguitel + **new operator Rimatel**; MRU bids disclosed.
- `2025-11-13` | infra.connect, geopol.china | TechAfrica News | Chinguitel–Huawei network modernisation, Nouakchott | **Huawei vendor footprint** (China angle vs EU-financed cable/data centre).

### Payments & digital finance
- `2026-04-13` | dpi.pay, include.access, finance.new, infra.store | AfDB *(off-host)* | **PAMIF financial-infrastructure modernisation — financial inclusion 21%→55%** | télécompensation, real-time RTGS, BMCI 5k(2023)→94k(H2 2025) transfers; phase 2 → fintech ecosystem. Major baseline.
- `2026-01-17` | gov.legislate, dpi.pay, finance.new | Invest-Time *(off-host, FR)* | 2026 finance law — 0.1% tax on electronic transactions | fiscalisation of mobile money; >5,000 MRU; agents 10%; corroborated by trustmag (Bankily tariff change).
- `2026-07-08` | infra.cybersec, dpi.pay | Elvetach *(off-host, AR)* | PAFIID/BCM — 10,000+ cyber threats to digital financial system H1 2026 (English gloss in file) | central-bank AI "digital-reputation" platform; 470 removed, 20 digital identities protected.

### Data centre, cloud & sovereignty
- `2026-06-30` | infra.store, gov.policy, dpi.exchange | Ecofin Agency *(off-host)* | **National cloud launched (29 June 2026)** at Nouakchott Data Center under WARDIP; digital-sovereignty framing; World Bank + APD present. Major net-new.

### E-gov, standards & governance
- `2026-07-10` | dpi.govtech, include.access, dpi.registry | We Are Tech | Digital consular-services platform for the diaspora | 9 services + unified digital consular registry (diaspora mapping) — the "Mauritanians abroad" angle.
- `2026-03-27` | gov.standards, dpi.govtech, dpi.exchange | TechAfrica News | National framework for public-digital-services standards | MTNIMA workshop; interoperability; GIZ / Digital-Y support.
- `2026-04-16` | finance.mou, geopol.gulf, infra.cybersec, gov.policy | We Are Tech | Mauritania–IsDB $50m digital-transformation financing (principle agreement 14 Apr 2026) | Gulf finance; EGDI 165th; ITU cyber tier-4.

### Reference
- `2026-02-10` | gov.policy, gov.protect, tech.ai, dpi.pay | US ITA Country Commercial Guide *(off-host)* | Mauritania Digital Economy | **establishes two net-new reference objects: the data-protection authority (Autorité de Protection des Données, APD, 2023–2026 plan) and the National AI Strategy 2025–2029**; UNCTAD eTrade 2024. Cite, don't absorb.

## Leads flagged for the human (not staged)
- **WARDIP national digital-ID + PKI/e-certification tender** (beta.mr / mtnima PPM, AP-01, IDA-7445-MR, issued 28 Apr 2026): a **new national digital-ID system + national PKI integrated with ANRPTS** — distinct from Houwiyeti. Strong DPI development; raw tender PDF not staged. Consider sourcing a news writeup at ingest. (`agenceecofin` 07 Jul 2026 "trois entreprises sélectionnées" may be the award.)
- **New entity to create: APD** (Autorité de Protection des Données) — Mauritania's data-protection authority, surfaced via the trade.gov guide and as a national-cloud-launch attendee. No wiki page yet.
- **National AI Strategy 2025–2029** (MTNIMA, adopted; workshop coverage on mtnima.gov.mr/taqadoumy) — instrument/tech.ai lead.
- **National Cybersecurity Strategy 2022–2025 + planned national CERT/CSIRT (RIAD SOC)** — infra.cybersec lead (mtnima strategy PDF + tenders).
- **Via Africa subsea cable MoU** (DCD, 9 Jul 2026): Orange-led consortium incl. **International Mauritania Telecom**; planned MRT landing → cross-ref for the **XAF regional pass** and the held `via-africa-cable` entity.
- **Fintech ecosystem leads:** Masrvi 800k users / 10M payments (techrek, Apr 2025); Kalbe fintech (emergence, Apr 2026); GIMTEL interbank wallet interconnection (2024, out-of-window baseline); The Fintech Times MRT ecosystem 2026 (~20 fintechs; ~25% account ownership; names Sadad, Bankily, Masrvi). Mobile-money watch-item.
- **Moov Mauritel fibre-optic launch** (saharamedias, Jul 2025) — telecom lead.
