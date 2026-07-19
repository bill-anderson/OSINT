# RWA — sweep manifest (`RWA-2026-07-17`)

**Window:** 2025-01-01 → 2026-07-17 · **Staged:** 42 · **Dropped:** 16 (`sweep/drop-log-RWA.csv`)

Flat country-worker run (newspapers + trade journals in one pass). Sources:
**Newspapers** — KT Press (`ktpress.rw`) and The New Times (`newtimes.co.rw`), both EN, run N1–N7.
**Journals** — the fixed 8, J1–J2 each. Rwanda is a DPI-flagship, heavily held; dedup was run hard
against `sweep/held-urls.txt` and the `wiki/places/RWA.md` source list.

**Counts by source:** KT Press 7 · The New Times 12 · Biometric Update 5 · ITWeb Africa 4 ·
TechAfrica News 9 · TechCabal 2 · We Are Tech 1 · Telecom Review Africa 1 · Tech Review Africa 1.

**Body-completeness caveat (New Times):** `newtimes.co.rw` is client-rendered — Exa/WebFetch return
only headline + caption. Bodies for the 12 New Times items were recovered verbatim from licensed
syndications (allAfrica, Africa-Press, AFR, Eastleigh Voice) where available and carry a `[CLIP]` note
recording the syndication source. Four items had no verbatim syndication and are staged as
**`[CLIP — partial body]`** (headline + caption + clearly-labelled related context only) — they need a
**manual clip of the NYT original before ingest**: `2026-07-05` Eastern-Province land registration,
`2025-10-15` Mbaza local-gov platform, `2026-02-17` BSC Starlink reseller, `2026-07-16` eKash editorial.

**No month-slicing needed** — Rwanda EN queries returned rich in-window sets per cluster; the constraint
was over-collection of already-held events, not recall. Exa leaked heavily to off-scope domains
(allafrica, kigalitimes, spaceinafrica, radiotv10, telecompaper, africa-press, furtherafrica, taarifa,
kigalidailynews, eabusinessworld) — those were disregarded as outside the paper+journal source set, not
logged as drops. Same-event/different-outlet twins are deliberately KEPT (esp. the July eKash cluster:
5 outlets) — lint #7 adjudicates at ingest.

**Date notes:** techafricanews Exa bylines were unreliable (corrected against on-page bylines; dates OK).
Tech Review Africa (`techreviewafrica.com`) Hanga item dated from its explicit `Date:` field (2026-05-29).
All staged items are `date_source: source`, `date_precision: day`.

Format: `published | topics | source | title | why-it's-new`

---

## Digital identity, CRVS & registries

2026-02-07 | dpi.id, include.access | KT Press | Digital ID Rollout Kicks Off in Kigali | KT Press on the Feb-7 Kigali enrolment launch — districts, face/10-fingerprint/iris capture, inclusive of refugees/stateless.
2026-05-26 | dpi.id, gov.protect | KT Press | With Rwanda's New Digital ID, You Will Control Everything Anyone Sees | Privacy-by-design/consent-layer analysis tying SDID data-minimisation to 1994 genocide history (Rwanda Law Journal); DPO independence as the load-bearing safeguard.
2026-02-07 | dpi.id | The New Times | Digital ID: Nearly 1.5m enrolled, registration reaches Kigali | National-paper primary on the ~1.5m enrolment milestone as the drive hits Kigali.
2026-03-26 | dpi.id, gov.legislate | The New Times | Govt sets 2027 deadline for full shift to digital ID | Confirms June-2027 statutory sunset of legacy plastic IDs.
2026-03-30 | dpi.id | Biometric Update | Rwanda races to meet 2027 deadline for digital ID rollout | SDID ~55% complete (Muhizi/GovInsider); NST2/DPI framing; 2027 as primary auth tool.
2026-06-09 | dpi.id | Biometric Update | Rwanda accelerates biometric enrollment ahead of digital ID switch | 4.4m enrolled; biometric kits to be permanently deployed to sector offices.
2026-06-23 | dpi.id, include.access | Biometric Update | Rwanda's digital ID rollout expands access for refugees | Refugee/stateless inclusion angle rooted in the 2023 legal amendment.
2025-05-23 | dpi.id, gov.policy | Biometric Update | Rwanda launching digital identity, biometrics enrollment with $8.5M budget | FY25/26 $8.5m allocation; $38m total SDIS; ABIS/PKI; procurement delays resolved (historical baseline).
2025-11-25 | dpi.id | Biometric Update | Rwanda notes progress with $57M digital ID system to launch next year | $57m cost figure; ~300k enrolled by Nov 2025; RDAP $200m (World Bank + AIIB).
2026-04-21 | data.statistics, dpi.registry | KT Press | Rwanda Is Counting Everything—and Changing in the Process | NISR 2025 vital stats — birth registration 92.9% (from 90.3%), fully digital CRVS linking birth/death/identity; "real-time map" of the population.
2026-07-05 | dpi.registry, digital.rural | The New Times | Eastern Province land registration drive delivers titles, reduces disputes | Field land-title correction drive (complements the June e-Title launch).

## E-government, data exchange & GovTech

2026-02-05 | dpi.govtech | The New Times | Rwanda's Irembo scoops global GovTech award | Irembo wins "Best Government Service in the World" at GovTech Prize 2026 (World Government Summit, Dubai).
2025-07-10 | dpi.govtech, finance.new | KT Press | Technology Transfer Is Rwanda's Latest Pricey Export | Senate report — Rwanda exporting Irembo + the RRA tax platform (240+ services) to other governments for millions; govtech as an export line.
2025-07-09 | dpi.govtech, dpi.exchange, gov.regional | KT Press | A Look at Tanzania's eGovernment Model | Comparative — flags Rwanda's Irembo interoperability/legal-technical silos against Tanzania's shared digital spine.
2025-10-15 | dpi.govtech, digital.localgov | The New Times | Govt developing new digital system to enhance public service delivery | New "Mbaza" platform for local-government service delivery (distinct from Irembo).
2026-03-11 | dpi.exchange, dpi.id, dpi.pay, tech.ai, gov.policy | The New Times | Rwanda launches Digital Public Infrastructure strategy to power citizen services, AI | National-paper primary on the DPI-strategy launch (DPI Day, Mar 9) — wiki currently holds only an aggregator (iafrica) for this event.
2025-09-27 | dpi.exchange, gov.policy | The New Times | Govt moves ahead with data sharing platform to go live in 2026 | RISA CTO Mizero on the phased build of the national data-sharing platform (predates the held Cenfri profile).
2025-07-09 | gov.policy, dpi.govtech, infra.cybersec | The New Times | Inside Rwanda's plan to fast-track digital transformation by 2026 | RDAP $200m breakdown (55% complete; $39.3m ID/CRVS, $19.5m cyber/DPO, GovNet).

## Data governance & protection

2026-01-26 | gov.protect, gov.legislate | The New Times | Why 2026 is the year of accountability for data controllers and processors | Data Privacy Week 2026 — DPPL accountability/registration obligations for controllers/processors (analysis).

## Payments & digital finance

2026-07-13 | dpi.pay | TechAfrica News | Rwanda Launches Full Interoperability on eKash National Payment System | Cites BNR Directive No. 45/2026; effective Jul 14; RWF20 cap / RWF10m limit.
2026-07-14 | dpi.pay | ITWeb Africa | Rwanda migrates retail payments to eKash | Migration under the Jan-2026 BNR directive; RSwitch (est. 2003) as operator.
2026-07-15 | dpi.pay, include.access | We Are Tech | Rwanda Launches eKash to Enable Nationwide Instant Interoperable Payments | Adds inclusion figures — 96% formal financial access (2024), 68.5% wallet ownership; open-source/AfricaNenda.
2026-07-16 | dpi.pay, gov.regional | The New Times | eKash is a welcome step towards seamless regional payments | New Times editorial framing eKash as a step toward EAC cross-border payments.
2025-12-08 | dpi.pay | TechAfrica News | Rwanda Enters New Era With Launch of Nationwide Interoperable Payment System | Different-outlet account of the Dec-2025 eKash launch (historical baseline; built by African engineers).
2026-05-14 | dpi.pay, tech.innovate | ITWeb Africa | Rwanda strengthens African fintech hub role | 93% financially included; official pivot "from access to depth"; national cashless campaign.
2026-03-13 | tech.innovate, dpi.pay | ITWeb Africa | Rwanda's fintech centre sets the stage for growth | Launch of the Rwanda FinTech Centre + Innovate Rwanda gateway (post Inclusive FinTech Forum); 100+ fintechs.
2026-05-29 | tech.innovate, dpi.pay | Tech Review Africa | Rwanda showcases fintech innovation through Hanga Ventures Ignite programme | MINICT startup showcase (Kayko, Save Directly) [pr-wire flagged].
2026-03-12 | dpi.pay, gov.regional, finance.mou | TechCabal | Fintechs expanding between Kenya and Rwanda may soon need one licence | CBK–NBR MoU for a payments licence-passporting framework under the EAC Cross-Border Payment Masterplan.
2026-04-01 | gov.legislate, dpi.pay | TechAfrica News | Parliament Approves Draft Law on Virtual Assets | Chamber of Deputies approves the rationale of a draft virtual-assets (crypto) law.

## AI, cybersecurity & skills

2026-06-08 | tech.ai, gov.policy, gov.legislate | KT Press | Rwanda's AI Ambition Takes Shape as Cabinet Approves New Agency | KT Press primary on the Jun-8 Cabinet approval of the National AI Agency; builds on the 2023 AI policy (70% skills-focused).
2026-07-10 | tech.ai, gov.regional, finance.mou | TechAfrica News | Rwanda and Egypt Deepen AI Cooperation with New Digital Partnership | Rwanda–Egypt AI/digital-transformation MoU signed at WSIS 2026.
2026-05-14 | tech.ai, gov.regional | TechAfrica News | Kenya and Rwanda Strengthen Digital Economy Cooperation in AI and Infrastructure Push | Kenya–Rwanda bilateral talks on AI, data centres and talent (via Connected Africa/Smart Africa).
2026-03-19 | tech.ai, capacity.training | TechAfrica News | Government of Rwanda Deepens AI Strategy Through Capacity-Building Initiative | Chief-Digital-Officer AI training (Cenfri-facilitated), incl. generative AI in government.
2025-10-03 | infra.cybersec, capacity.training | ITWeb Africa | Rwanda unveils cyber security centre of excellence | NCSA's CyberHub launched at the University of Rwanda; Cisco and GIZ partners.

## Data centres, cloud & sovereignty

2026-05-29 | infra.store, finance.mou, geopol.gulf | TechAfrica News | Broadband Systems and Oman Data Park Sign Deal to Expand Rwanda's Digital Infrastructure | NEW Gulf DC investment — BSC–Oman Data Park MoU for an AI-ready Tier III data centre.
2025-10-30 | finance.new, gov.policy, geopol.gulf | TechAfrica News | Rwanda Unveils Strategic Digital FDI Report | Digital FDI Rwanda report (MINICT/DCO/WEF), launched at FII Riyadh.
2026-03-19 | infra.store, infra.energy | The New Times | Why Rwanda needs a water policy for data centres now | Distinctive — flags the data-centre water-use policy gap as Rwanda scales DC/AI ambitions.

## Connectivity & infrastructure

2026-02-17 | infra.connect, digital.rural | The New Times | BSC's Starlink authorisation enhances internet reliability in Rwanda | BSC becomes an RSA-certified Starlink reseller; SME packages up to 300 Mbps.
2026-03-31 | infra.connect, include.divides, digital.rural | KT Press | Connecting the Remaining 812 Schools Takes Centre Stage at EdTech Mondays Dialogue | Rural school connectivity — 27% rural vs 75% urban school internet; 4,184/4,996 connected; Starlink+solar plans.
2025-10-22 | infra.connect, include.access | Telecom Review Africa | Rwanda's Masterclass in Digital Penetration | MWC-Kigali-2025 analysis — 4G ~100% / 3G 99.71% by end-2025, internet penetration ~42.6%, spectrum refarming.
2026-05-11 | tech.industry, dpi.pay | TechCabal | Data and fintech power MTN Rwanda's return to profitability | MTN Rwanda Q1-2026 profit; MoMo MAU 6.2m (+17.3%); 4G pop 94.8%; GDP 9.4% (2025).
2026-03-25 | tech.industry, infra.connect | TechAfrica News | Hayo Expands to Rwanda | Hayo market entry — voice/messaging/eSIM and National Mobile Registry (anti-fraud/mobile-theft).
