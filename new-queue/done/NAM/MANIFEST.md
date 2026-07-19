# NAM sweep manifest — batch NAM-2026-07-17

- **Country:** Namibia (NAM) · parent XSA
- **Window:** 2025-01-01 → 2026-07-17
- **Sources swept:** Newspapers — namibiansun.com (Namibian Sun), namibian.com.na (The Namibian), both English (N1–N7 in English). Journals — fixed 8 (J1–J2 country-scoped): itweb.africa, biometricupdate.com, connectingafrica.com, telecomreviewafrica.com, techafricanews.com, techcabal.com, wearetech.africa, techreviewafrica.com.
- **Month-slicing:** not needed — Namibia is medium-volume; broad topic-cluster + journal queries returned ample in-window hits without recency-swamping.
- **Staged:** 34 · **Dropped:** 7 (see `sweep/drop-log-NAM.csv`)
- **Coverage note:** NON-thin, established by probing. Both papers carry rich in-scope coverage (only 1 held item was from The Namibian, 0 from Namibian Sun before this sweep). ITWeb Africa, Biometric Update, Connecting Africa, TechAfrica News, Telecom Review Africa and We Are Tech all carry genuine Namibia country-tagged coverage; TechCabal is thin on Namibia-specific news (mostly regional round-ups). Tech Review Africa is byline-free PR-wire (flagged `pr-wire`).
- **Paywalled (body_completeness: paywalled, [CLIP]):** 4 Namibian Sun items (delay-e-id; cyber-threats-surge; cran-rejects-starlink-ownership; theofelus-ownership-exemption) — free lede only, need manual clip at ingest.

## Digital ID / CRVS
- 2025-06-09 | dpi.id, dpi.registry, gov.legislate | Namibian Sun | Namibia to launch groundbreaking electronic ID by 2026 | Paper's account of the July-2026 e-ID (smart chip card, UNDP partnership, UnConference 26 Jun); different outlet to held namibian.com.na version.
- 2025-06-12 | dpi.id, dpi.registry, gov.protect | Biometric Update | Namibia to roll out digital ID card in July 2026 | Confirms July-2026 date; flags e-signature system 4 months prior (Feb 2026) under CRAN.
- 2026-03-16 | dpi.id, dpi.registry | ITWeb Africa | Namibia expedites electronic IDs issuance | e-ID in 2026/27 budget; Min. Iipumbu; 2025 stats: 117,175 national IDs, 126,737 birth certs, 682 refugee IDs.
- 2026-06-20 | dpi.id, gov.protect | The Namibian | Iipumbu dismisses e-ID 'microchip tracking' allegations | Omusati protests over "microchip" fears; minister rebuts; roll-out now September 2026.
- 2026-07-01 | dpi.id, gov.protect, include.access | Namibian Sun | Delay E-ID rollout until backlog cleared, activists say | [CLIP] Petition to suspend e-ID until years-long documentation backlog cleared — constitutional-exclusion critique.

## Payments / fintech
- 2025-07-01 | dpi.pay, dpi.id, infra.cybersec | Biometric Update | Namibia weighs biometrics for foundation of instant payment system | IPN COO Ickua at ID4Africa; biometric auth for IPS; India Stack/M-Pesa models.
- 2026-07-02 | dpi.pay, finance.mou | TechAfrica News | Bank of Namibia, IPN & NamClear sign pact | DoI integrating IPS with NamClear/NISS clearing infrastructure (Uanguta, Ickua, Tait).

## Data protection / cyber law
- 2025-08-14 | gov.protect, gov.legislate | The Namibian | Govt to introduce data protection bill in September | DP bill to be tabled Sept 2025; e-signatures Feb 2026 under ETA 2019.
- 2025-08-17 | gov.protect, gov.legislate | Namibian Sun | Data protection bill returns to parliament | ~12 yrs in the making; IPPR's Links warns it may fall short on data-subject rights; FIC froze N$96.9m.
- 2025-11-21 | infra.cybersec, gov.legislate | ITWeb Africa | Cabinet approves fresh proposals to combat cyber crime | Govt-sector CSIRT + SOCs; 1m+ cyber incidents H1-2025.
- 2026-07-14 | infra.cybersec, gov.legislate, gov.protect | ITWeb Africa | Namibia pushes cyber security reforms | Cybercrime + DP bills being finalised; Nam-CSIRT Q1-2026: 103,085 threats, 367,670 vulns; FortiBleed alert to 13 orgs.

## Cybersecurity events / capacity
- 2025-07-10 | infra.cybersec, geopol.india, finance.mou | ITWeb Africa | Namibia forms cyber security alliance with India | Nandi-Ndaitwah–Modi MoU (cyber, UPI, digital gov) at State House.
- 2025-07-30 | infra.cybersec, data.statistics | Namibian Sun | Cyber threats surge amid Namibia's digital growth | [CLIP] 314% spike in cyberattacks; govt reforms.
- 2025-09-17 | tech.ai, infra.cybersec, dpi.govtech | ITWeb Africa | AI abuse overshadows Namibia's e-signature drive | Deepfake video of ministers pushing fake investment scheme; e-sig launch Feb 2026.
- 2025-11-25 | infra.cybersec, dpi.pay, finance.mou | ITWeb Africa | Namibia partners with banks to combat fraud | MICT/BoN/BAN Fraud & Cybersecurity Summit; banks lost N$65m Jan–Oct 2025.
- 2026-04-13 | infra.cybersec, data.statistics, tech.ai | We Are Tech | Namibia reports 37% surge in cyberattacks in 2025 | NAM-CSIRT Landscape Report: 1.7m attacks, 2.23m vulns; US$1m FY26/27 budget; AI-deepfake/municipal ransomware trends.
- 2026-06-09 | infra.cybersec, capacity.training, finance.mou | TechAfrica News | NIPAM–Global Cybersecurity Centre partnership | Public-sector cyber capacity-building MoU (signed 4 Jun).
- 2026-06-21 | infra.cybersec, dpi.pay, gov.protect | The Namibian | Digital economy needs cybersecurity as much as connectivity | Chronicles NAC (INC, 500GB), Telecom Namibia (626GB, Dec-2024), NSFAF, Paratus breaches; fraud losses N$73.9m (2025).

## Connectivity / telecom / Starlink
- 2025-06-30 | infra.connect, gov.legislate | Namibian Sun | Theofelus: Starlink's ownership exemption bid under review | [CLIP] Ministerial exemption stage ~9 months before the denial.
- 2025-08-19 | infra.connect, tech.industry | Namibian Sun | Paratus to launch mobile network | Data-only launch 2 Sep 2025; first private operator vs MTC (90%+).
- 2025-08-24 | infra.connect, include.access, digital.rural | Namibian Sun | Namibia bolsters digital access with 25 new network towers | PowerCom N$40m, 9 regions; 50%→90% internet-by-2030 targets.
- 2025-09-04 | infra.connect, finance.new, tech.industry | Connecting Africa | Paratus launches Namibia's first private mobile network | LTE+5G; N$1.42bn since 2018 + N$600m; Nokia/Cerillion; subscriber stats.
- 2026-02-10 | infra.connect, gov.policy, dpi.id | Telecom Review Africa | Towards a 5G-Enabled, Digitalized Namibia in 2026 | Feature: 5G phased city-first rollout; 3.76/km² density constraint; NDS/roadmap targets.
- 2026-03-24 | infra.connect, gov.legislate, gov.protect | The Namibian | Cran rejects Starlink licence | Gazetted 23 Mar; 0% local ownership; frequencies; 90-day reconsideration; Q-Kon transfer approved.
- 2026-03-24 | infra.connect, gov.legislate, gov.protect | Namibian Sun | CRAN rejects Starlink licence over ownership, security concerns | [CLIP] Paper's report of the same rejection.
- 2026-03-27 | infra.connect, gov.legislate | The Namibian | Starlink to appeal Namibia's licence rejection | Starlink to appeal; 98.6% public support claim.
- 2026-03-31 | infra.connect, gov.legislate, gov.protect | Namibian Sun | Starlink says CRAN licence denial unjustified | MacWilliams calls denial misleading; "164 markets", data-sovereignty claims.
- 2026-06-15 | infra.connect, infra.capacity, gov.regional, finance.mou | TechAfrica News | Telecom Namibia–Angola Telecom–SATCAB SARSSy 1 Tbps deal | MSA signed 12 Jun; Equiano integration; updates held NAM–AGO thread with the specific signing date.
- 2026-06-24 | infra.connect, gov.legislate, gov.protect | Connecting Africa | Namibian regulator rejects Starlink again | 624 reconsideration requests; 622 rejected, 2 on merits; March denial upheld; new 8 Jun application. NEW development beyond held March story.

## Data centres / cloud / AI / e-gov
- 2026-01-29 | gov.policy, gov.legislate, infra.cybersec | The Namibian | ICT ministry launches strategic plan (2025–2030) + national ICT policy | Five-year framework; Opuwo launch; broadband, cyber, DP, e-gov.
- 2026-02-19 | infra.store, tech.ai, infra.energy | Namibian Sun | Grounding the cloud in Namibia (analysis) | Green-hydrogen/solar case for Namibia as AI-data-centre host; 3GW Walvis Bay; Equiano; sovereignty framing.
- 2025-09-23 | infra.store, dpi.govtech, finance.new | ITWeb Africa | Namibia expedites data centre, smart city development | Cabinet: National/Public Data Centre concept note; Windhoek smart-city legal framework; US$20m ICT VC fund; MTC 5G (Aug-2025).
- 2026-07-07 | tech.ai, gov.policy, include.divides | Tech Review Africa | Namibia calls for inclusive AI governance at UN Dialogue | Theofelus at Geneva Global Dialogue on AI Governance (6 Jul). [pr-wire]
- 2026-07-08 | geopol.china, tech.ai, infra.store, capacity.training | The Namibian | Nandi-Ndaitwah pushes AI jobs in Huawei talks | Shenzhen visit; ¥98m smart-city; AI-ready national data centre; Leo Chen. Complements held ITWeb china-funds item.

## Notable in-scope items surfaced but not staged (leads for next pass)
- Namibian Sun "Namibia on cybercrime radar as digital security flaws exposed" (2025-02-25) and "Over 1.1 million cyberattacks on Namibia" (The Namibian, 2025-03-15) — further cyber-attack data points, near-duplicative of the staged NAM-CSIRT statistics cluster.
- Namibian Sun "AI could bridge Namibia's digital gap" (2024-11-10) — out of window.
- Opinion columns (The Namibian): "Time to adopt full e-governance" (2025-05-20), "Digital transformation the key to efficient govt service delivery" (2025-10-25), "The Instant Payment Revolution" (2026-03-09) — analysis, left for editorial judgment.

## Out-of-source-scope leads (rich Namibian coverage on non-assigned outlets)
New Era (neweralive.na), technews.com.na, Windhoek Observer (observer24.com.na), The Brief (thebrief.com.na), Namibia Business Review, Namibia Economist carry substantial material — notably: IPS live-testing & first NamPost instant payment (Jun 2026); WayaMe wallet; NamClear–PayInc SADC payments link (Mar 2026); Telecom Namibia–Demshi open-access fibre; Telecom Namibia N$405m RMB loan; PowerCom 5G talks; MTC N$624.9m capex; UNESCO AI Readiness Assessment (Aug 2025); Project Baobab solar AI compute. These fall outside the two-papers-plus-8-journals scope but are strong primaries if the curator widens NAM sourcing.
