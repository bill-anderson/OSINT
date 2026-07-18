# Sweep manifest — MDG (Madagascar)

- **Batch:** MDG-2026-07-17
- **Window:** 2025-01-01 → 2026-07-17 (full window; no prior sweep — a prior slot was claimed but never launched, `new-queue/MDG/` was empty at start)
- **Staged:** 33 candidate source files (see list below)
- **Dropped:** 49 logged in `sweep/drop-log-MDG.csv` (14 already-held · 10 out-of-window · 18 dup-same-event · 8 off-topic/secondary)
- **Sources run:** Newspapers — **lexpress.mg** (L'Express de Madagascar) + **midi-madagasikara.mg** (Midi Madagasikara), N1–N7 in **French**. Journals — all 8 fixed (biometricupdate, wearetech (FR+EN), telecomreviewafrica, connectingafrica, itweb.africa, techafricanews, techcabal, techreviewafrica), J1–J2. Plus targeted non-domain French supplements (2424.mg, newsmada, agenceecofin, worldbank.org, ecofinagency, spaceinafrica, intelligentcio, prnewswire).
- **Exa indexing of the two papers:** **BOTH well-indexed** — lexpress.mg and midi-madagasikara.mg each returned multiple on-domain, in-window keepers across clusters. No indexing limitation to report; no month-slicing required (medium volume, no recency-swamping observed).
- **Thinness:** ESTABLISHED NOT thin. Madagascar has **rich** coverage across both papers and all 8 journals (biometricupdate especially deep on PRODIGY; telecomreviewafrica/connectingafrica/techafricanews on connectivity). Contrast with the North-Africa SSA-4 note — here the SSA journals are strong.
- **Provenance flags:** 1 pr-wire (`2025-10-29 eCurrency/eAriary`). 2424.mg / newsmada / gasigasy-style items are on-the-record local reporting (admissible); staged 2424 items are flagged as non-domain supplements in-text.
- **Date caveats:** all `date_source: source`, `date_precision: day` — dates read from fetched bodies. techafricanews/telecomreviewafrica dates verified from page bodies (Exa bylines unreliable per ISSUE). No proxy dates needed.
- **Re-dating / progression note:** PRODIGY enrolment figures rise across the window — 2.6 M (31 May / 5 Jun), 3.25 M adults (WB, 10 Jun), 5.6 M total (L'Express, 24 Jun). Different dates/scopes (adults vs. total), a progression not a contradiction; flagged in the 24-Jun L'Express file.

## Staged items (grouped by theme)

### Digital ID / civil registry (PRODIGY, RECI, DECIM) — the dominant MDG story
- 2025-05-16 | dpi.id,dpi.registry | Biometric Update | Madagascar selects IN Groupe for €8.5M digital ID contract; Laxton kits | NEW: vendor awards (IN Groupe DB, Laxton kits)
- 2025-12-22 | dpi.id,infra.store | Biometric Update | PRODIGY tenders (data-centre rehab Tsimbazaza/Iavoloha) | NEW: 5 open tenders, DC rehab, June-2026 closing
- 2026-01-22 | dpi.id,dpi.registry | Midi Madagasikara | RECI état-civil workshop (MID, Anosy 21-22 Jan) | NEW paper: RECI framing, 2 500 kits, 70 districts trained
- 2026-01-24 | dpi.id,dpi.registry | L'Express | Enrôlement biométrique - launch 27 Jan | NEW paper: 2 500 kits/1 729 centres, "Izaho Tokana"
- 2026-03-16 | dpi.id,dpi.registry | L'Express | Enrôlement biométrique déployé à l'échelle nationale (POC validated) | NEW: national rollout begins
- 2026-04-21 | dpi.id,dpi.registry | Biometric Update | Laxton case study (civil unrest, cyclone) | NEW: pilot 130k/116 centres, 100% data completeness
- 2026-05-08 | dpi.registry,tech.ai | Intelligent CIO Africa | Studia Inc AI digitisation of ~10M civil records (EC-MADA) | NEW: OCR/AI archive digitisation, 1 695 communes
- 2026-06-05 | dpi.id,dpi.registry | Biometric Update | 2.6M digital ID enrollments in two months | NEW: target surpassed
- 2026-06-24 | dpi.id,dpi.registry,dpi.exchange | L'Express | >5.6M inscrits, interoperability next | NEW paper milestone + progression note
- 2026-06-24 | dpi.id,infra.store,infra.connect,finance.new | Ecofin Agency | Madagascar+WB review $543M PRODIGY+DECIM | NEW: 2 renewable-powered DCs, DECIM 664k devices
- 2026-07-01 | dpi.id,dpi.registry,gov.legislate | World Bank | "No Longer Invisible" — mass birth-registration law (28 May 2026) | NEW: 6M lack birth cert, 3.25M enrolled, 19k fokontany
- 2026-07-06 | dpi.id,dpi.registry | Biometric Update | Last-mile civil registration strategy | NEW: offline-first model, legal framework operational May 2026

### E-government & interoperability
- 2025-09-13 | dpi.exchange,gov.legislate | Newsmada | e-signature + interoperability legal framework (X-Road, Code du numérique) | NEW: decree, 2015 law activated
- 2026-04-29 | dpi.govtech,dpi.exchange | L'Express | Guichet unique en ligne / interopérabilité "Rahaka" launched | NEW: national interop go-live (EDBM, CNaPS, Instat, Impôts)

### Data protection & governance
- 2025-02-25 | gov.protect,gov.legislate | L'Express | AFAPDP mission — urgent creation of CMIL (law 2014-038) | NEW: DPA still not established, PREA/OIF support

### Connectivity & infrastructure
- 2025-03-20 | infra.connect,include.access,digital.rural | 2424.mg | Starlink/DECIM 10 enclaved zones (WB) | NEW: DECIM+Starlink CSR schools/health
- 2025-09-10 | infra.connect | 2424.mg | DARE1 submarine cable extension to Madagascar | NEW: Mahajanga/Toliara landings, RFS 2028
- 2025-12-02 | infra.connect,include.access | L'Express | State-operator internet tariff-cut deal / excise dispute | NEW paper: 400bn Ar tax pledge
- 2025-12-05 | infra.connect | 2424.mg | Orange fibre Tana-Mahajanga backbone (558 km) inaugurated 1 Dec | NEW
- 2026-05-19 | infra.connect,include.access | Space in Africa | Starlink Direct-to-Cell FCC notice (SCS w/ Airtel) | NEW: FCC 13 May, Airtel spectrum, 5M customers
- 2026-06-01 | infra.connect,include.access | TechAfrica News | Airtel + Eutelsat OneWeb rural broadband (railway 100 Mbps) | NEW: LEO hybrid
- 2026-07-15 | infra.connect,include.access | Telecom Review Africa | First Direct-to-Cell satellite trial (Airtel+SpaceX, Sadabe 11 Jul) | NEW: 3rd African country; 7 same-event twins dropped

### Payments & digital finance
- 2025-07-09 | dpi.pay,finance.new | Newsmada | Visa study "paysage des paiements" (MVola 100%/73%) | NEW: 17% banked, 81% cash
- 2025-10-29 | dpi.pay | PR Newswire (eCurrency) | eCurrency DSC3 selected for eAriary CBDC pilot (PayLogic) | NEW [pr-wire]: tech vendor
- 2025-11-26 | dpi.pay,finance.new | TechCabal | AXIAN rebrands to Digibank & Fintech (MVola, Mixx) | NEW: mobile-money → digital bank
- 2026-07-17 | dpi.pay,finance.mou | TechAfrica News | Airtel Money + Baobab Bank mobile-banking partnership | NEW: Mbanking integration

### AI, cybersecurity & skills
- 2025-01-15 | tech.ai,gov.policy,finance.mou | L'Express | New tech redefines labour market (e-gov 168th; Madagascar-Tunisia ICT MoU 13 Jan) | NEW paper
- 2025-06-07 | tech.ai,dpi.govtech | Midi Madagasikara | Customs AI — IMF pilot; CEDIA launched May 2025 | NEW paper
- 2025-12-15 | infra.cybersec,gov.policy | Midi Madagasikara | National cybersecurity strategy launch (CIRT, PRODIGY) | NEW paper: 3-month target
- 2025-12-22 | tech.innovate,data.statistics | L'Express | Digital entrepreneurship — Madagascar 153rd (VIGS); UNDP; ~900 firms/135 startups | NEW paper
- 2026-01-26 | capacity.research,tech.ai,infra.connect | TechAfrica News | UNIPOD — high-speed internet + AI to universities | NEW: 5-ministry agreement
- 2026-06-25 | infra.cybersec,gov.legislate | We Are Tech Africa | New cybersecurity law to be published (Symposium 22-23 Jun; OIVs) | NEW: journal
- 2026-07-09 | infra.cybersec,gov.legislate | Agence Ecofin | Council of Ministers adopts cybercrime bill (overhauls 2014 law, 8 Jul) | NEW: actual adoption

## Notes for review
- **Most significant vs. held material:** the wiki held PRODIGY through the Jan-2026 pilot + Aug-2025 extension; this batch adds the **entire mass-rollout arc** — national deployment (Mar), 2.6M (Jun 5), 3.25M-adults + 28-May mass-birth-registration **law** (WB), 5.6M (Jun 24), and the **$543M PRODIGY+DECIM** review naming two renewable-powered data centres (Tsimbazaza/Iavoloha). Also net-new threads the wiki lacked: **DECIM** (WB $400M energy+connectivity), **CMIL/data-protection** gap, **cybersecurity strategy + cybercrime-law overhaul**, **Direct-to-Cell / Eutelsat satellite**, **DARE1 cable extension**, **Orange fibre backbone**, **AXIAN Digibank**, **eCurrency/eAriary vendor**, **Airtel Money-Baobab**, **customs CEDIA / Studia archives AI**.
- **Entity slugs used** (some may be new to the wiki — reconcile at ingest): decim-madagascar, laxton, cedia-madagascar, cirt-madagascar, airtel-madagascar, eutelsat, ecurrency-mint, baobab-bank, studia-inc, visa. Existing: prodigy-madagascar, ugd-madagascar, oni-madagascar, mg-ministry-digital-development, mvola, orange, e-ariary, in-groupe, world-bank, axian-telecom, starlink, dare1-cable, oif-la-francophonie.
- **Xalam "Madagascar Data Center Market Brief" (Jul 2025, d4dhub/DIF)** dropped as off-topic here but is a candidate **resource/instrument entity** (wiki already has `xalam-dc-market-briefs-2026`) — flagged for the human, not staged as a dated development.
