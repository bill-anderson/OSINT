---
type: intersection
title: South Africa × Digital Identity
place: ZAF
topic: dpi.id
places: [ZAF]
topics: [dpi.id, dpi.registry, dpi.govtech, gov.legislate, gov.protect, gov.standards, infra.cybersec, include.divides, digital.rural]
entities: [[sa-digital-id-regulations], [popia], [home-affairs-south-africa], [mymzansi], [act-south-africa], [leon-schreiber], [cyril-ramaphosa], [digital-services-unit-presidency-sa], [sars], [sarb], [south-africa-eta], [intelligent-population-register], [idemia], [absa], [capitec], [border-management-authority], [government-printing-works], [edward-kieswetter], [livhuwani-makhode], [alinah-fosi], [basa]]
lens: [sovereignty]
status: active
last_reviewed: 2026-07-20
sources: [[2026-04-21 South Africa's digital ID gets a targeted launch date], [2026-05-29 Opinion South Africa's Digital Identity Regulations A Governance Crossroads], [2026-01-28 Home Affairs sets new record by delivering over four million Smart IDs in 2025], [2026-01-27 SA's Telcos, Banks At War With Govt Over 6,500% ID Verification Fee Hike], [2026-01-28 Bad news about South Africa's newest ID book plan], [2025-11-09 Behind the speedy MyMzansi screens and the Presidency's race to build a digital government], [2026-01-07 Digital driving licence coming to South Africa], [2026-04-03 Say goodbye to SARS tax numbers in South Africa], [2026-03-31 Concerns over South Africa's proposed digital ID system from traditional leaders], [2026-03-09 Home affairs launches Smart ID partnership with banks], [2026-02-24 South Africa makes the ETA the cornerstone of its visa reform], [2025-03-06-biometric-drivers-licence-tender-ag], [2025-03-11-digital-id-before-2029-elections], [2025-03-25-biometric-verification-fee-increase], [2025-05-29-biometrics-immigration-raids], [2025-08-12-schreiber-digital-home-affairs], [2026-01-30-digital-id-behind-schedule-mymzansi], [2026-05-06-digital-id-draft-regulation-gazetted], [2026-05-09-smart-ids-go-digital-draft-rules], [2026-05-20-home-affairs-828m-digital-id-budget], [2026-06-08-biometric-population-register-unveiled], [2026-07-07-biometric-case-management-migration], [2026-07-16-absa-joins-home-affairs-smart-id], [2026-07-17-home-affairs-unblock-identity-numbers-addresses], [2026-07-10-sarb-explores-digital-identity], [2026-06-09-operators-solved-fintech-digital-identity-next], [2026-03-30-dha-annual-performance-plan-2026-27-digital-identity], [2026-03-26-dha-annual-performance-plan-2026-27], [2025-04-03-sars-collaboration-agreements-dha-bma-gpw], [2025-03-27-cabinet-statement-26-march-2025]]
---

# South Africa × Digital Identity

South Africa is moving from a decade-old Smart ID card toward a full **national digital-identity
platform** with verifiable mobile credentials — but the enabling regulations are being drafted ahead
of the primary legislation, and analysts warn the governance scaffolding is thin.

## What we know (as of 2026-07)

- **Timeline.** The Department of Home Affairs' Annual Performance Plan 2026/27 (tabled 30 Mar 2026,
  signed by minister Leon Schreiber) sets a **31 March 2027** deadline to complete hosting
  infrastructure, with the full platform online **2027/28** — the first year citizens receive
  verifiable digital credentials via a mobile wallet. Source:
  [[2026-04-21 South Africa's digital ID gets a targeted launch date]].
- **Architecture.** Core stack (PKI, certificate authority, ID platform, security controls) is being
  built **inside the SARS hosting environment**, extending the **2025-04-03** pact between Home Affairs,
  SARS, the Border Management Authority and Government Printing Works. **Facial recognition** is the
  primary biometric, fingerprints secondary; hybrid smart-ID cards + QR for offline use. No biometric
  provider named yet. Home Affairs' own cybersecurity maturity is flagged "low." Source: same.
  **Confirmed from the primary (2026-07-20).** The DHA's tabled **APP 2026/27** states the hosting
  model in its own words — "core digital identity and PKI infrastructure **hosted within the SARS
  environment**" — and lists **SARB only under *Assumptions*** ("SARB, banks and telecom partners
  collaborate on integration"). **This settles the SARB-vs-SARS ambiguity** that ran through the
  DHA's earlier statements (Nzuza's "working with the South African Reserve Bank", the Strategic
  Plan's digital ID "with SARB"): **SARS hosts, SARB integrates** on payments/eKYC — they are not
  competing claims about the same role. The APP also fixes **FY2026/27's only digital-ID target as
  the hosting infrastructure itself** (sign-off by DDG:CS in Q4), with verifiable credentials and
  digital wallets explicitly in *subsequent* phases, and puts digital identity and e-Passports
  "**by 2029**". **Eight of ten named banks have concluded agreements** covering biometric
  enrolment, courier logistics and **API-based integration**. **The quarterly targets confirm the
  shape**: Q1 "work order signed to initiate procurement", Q4 "hosting infrastructure for digital
  identity completed" — i.e. **by 31 March 2027**, with **2027/28** carrying "digital identity
  operational (verifiable credentials issued via digital wallet)" and **2028/29** "verifiable and
  agreed credentials added to wallet". Sources:
  [[2026-03-26-dha-annual-performance-plan-2026-27]] (**full plan, Parts A–D and target tables**),
  [[2026-03-30-dha-annual-performance-plan-2026-27-digital-identity]] (**the technical-indicator
  annexure, incl. the *Assumptions* line — beyond the fuller capture's 200k cap**).
  *Beware a PDF extraction artefact:* the flat MTEF row reads as though 2026/27's targets were
  "readiness assessment" and "commercial agreements signed with biometric provider(s)"; the gridded
  table shows those belong to **2025/26**. *Date caveat:* the plan states its tabling only as
  "**March 2026**"; 26 March is its finalisation date, and the 30 March date on the companion page is
  not supported by the document text.
- **The pact underneath it (2025-04-03).** SARS's own release records **two** agreements that day: a
  **bilateral SARS–DHA direct agreement** reviving the **Direct Master Agreement in place since
  2010**, and a **four-party MoU** (DHA, SARS, BMA, GPW) supplying the governance framework.
  **[[government-printing-works|GPW]]'s role is Certification Authority and Digital Trust Centre** —
  the certification leg of the PKI stack above. Kieswetter's stated objective: "**only one identity
  through which the individual interacts with government**", explicitly to stop "double-dipping" on
  grants. Both give effect to the **Digital Transformation of Government Roadmap, approved by
  Cabinet 2025-03-26**. Sources:
  [[2025-04-03-sars-collaboration-agreements-dha-bma-gpw]] (**primary**),
  [[2025-03-27-cabinet-statement-26-march-2025]].
- **The draft rules.** DHA published draft amendments to the **Identification Regulations, 1998** on
  **2026-05-04** (public comment to 2026-06-06): voluntary digital-ID credentials with legal parity
  to physical ID; **"trusted entities"** (banks, telcos, agencies) granted **API access to the
  population register** via approved data-sharing agreements; three identity-assurance levels; 7-year
  audit logs; private-sector enrolment points. See [[sa-digital-id-regulations]], [[dpi.registry]].
- **The critique (Mark Burke, 2026-05-29).** The draft is likely **ultra vires** — made under the
  Identification Act while the **National Identification and Registration (NIR) Bill** that should
  underpin the system is still before Parliament. Named gaps vs comparators: **no right to erasure**
  of biometric data (contrast GDPR Art. 17); **weak/implied consent** (vs GDPR Art. 4(11)); **no
  citizen visibility into access logs** (contrast Estonia); no selective disclosure (contrast eIDAS
  2.0); power concentrated in the Director-General; and **digital-divide exclusion** (Reg 49(5)).
  Source: [[2026-05-29 Opinion South Africa's Digital Identity Regulations A Governance Crossroads]].
- **Grassroots opposition (2026-03).** Traditional leaders under **Amadumisa / UCoSA** publicly
  opposed the proposed digital ID, demanding prior consultation, civic education and possibly a
  **referendum**, and warning of fraud risk, **rural exclusion** (no smartphones/reliable internet)
  and privacy — the citizen-consent counterpoint to the [[sa-digital-id-regulations]] governance
  debate above. See [[include.divides]], [[digital.rural]], [[gov.protect]]. Source:
  [[2026-03-31 Concerns over South Africa's proposed digital ID system from traditional leaders]].
- **Compliance backdrop.** [[popia]] governs the personal-data processing; the tension is between a
  reusable, private-sector-facing identity rail and POPIA's consent/minimisation principles.

## Delivery, the population register, and the front-end (2025–26)

- **Smart-ID delivery record (2025).** DHA issued a record **4,002,964 smart IDs in 2025**
  (+17% YoY; ~1.3m more than 2022+2023 combined), its highest-ever annual delivery — credited
  to repairing the **Online Verification Service (OVS)** and improved population-register
  uptime. See [[home-affairs-south-africa]], [[dpi.registry]]. Source:
  [[2026-01-28 Home Affairs sets new record by delivering over four million Smart IDs in 2025]].
- **OVS verification-fee court fight (2026-01).** DHA raised the OVS ID-verification fee from
  **15c to ZAR 10** per real-time check (~6,500%; ZAR 1 off-peak batch), effective 1 July 2025,
  to fund an "Intelligent Population Register" and the future digital ID. The
  **[[act-south-africa]]** (Vodacom, MTN) filed a High Court review calling it a "regressive
  tax"; TymeBank opposed, Capitec absorbs it. Minister [[leon-schreiber]] says the old fee left
  the register failing >50% of the time vs <1% now. The register-funding model that drove the
  smart-ID record is itself contested. See [[dpi.registry]], [[include.access]],
  [[gov.legislate]]. Source:
  [[2026-01-27 SA's Telcos, Banks At War With Govt Over 6,500% ID Verification Fee Hike]].
- **MyMzansi as the ID front-end (2025-11 → 2026).** The Presidency's [[mymzansi]] single-entry
  app — built in ~10 weeks by the **[[digital-services-unit-presidency-sa|Digital Services
  Unit]]** on an open-DPG stack — carries the functional digital ID, a **digital driving
  permit** and a verifiable wallet; first public rollout was planned for H1 2026, showcased Nov
  2025. See [[mymzansi]], [[dpi.govtech]]. Sources:
  [[2025-11-09 Behind the speedy MyMzansi screens and the Presidency's race to build a digital government]],
  [[2026-01-07 Digital driving licence coming to South Africa]].
- **Schedule slip (as of 2026-01-28).** By January 2026 the digital-ID policy remained **under
  development** (Cabinet + public comment pending); officials conceded rollout will take several
  more years despite an end-2026 target being punted — the caution counterpart to the Nov-2025
  build momentum (both "as of" dates stand). Source:
  [[2026-01-28 Bad news about South Africa's newest ID book plan]].
- **SARS as the single-ID engine (2026-04).** Commissioner Kieswetter is driving a
  whole-of-government push (**Modernisation 3.0**) to collapse the **7–8 identifiers** each of
  ~**62m** South Africans carries into one biometric-secured digital identity, the **population
  register** the single source of identity — ending separate Home Affairs ID and SARS tax numbers.
  The digital-ID stack already sits inside the SARS hosting environment (above); **[[sars]]** (which
  crossed **R2tn** annual revenue) is also partnering the **[[sarb]]** on an instant payment system.
  See [[dpi.registry]], [[dpi.govtech]], [[gov.protect]]. Source:
  [[2026-04-03 Say goodbye to SARS tax numbers in South Africa]].
- **Smart ID via banks + ETA at the border (2026-02/03).** Home Affairs
  (**[[home-affairs-south-africa]]**, Minister Schreiber) launched its first **live bank-branch
  Smart ID** partnership (Capitec, Orange Farm, 9 Mar 2026) under "Home Affairs @ home," extending a
  decade-old bank tie-up from 30 branches to the banking network via a secure gateway to the
  **National Population Register** (DHA still custodian) — accelerating the
  green-ID-book→Smart-ID migration (~16m still on the green book) as an anti-fraud and FATF-grey-list
  measure. In parallel the **[[south-africa-eta]]** (Electronic Travel Authorisation) became the
  cornerstone of visa reform after an SIU report found ~20 years of visa maladministration: ML
  document checks, facial recognition and **rules-based automated decisions with no human review**
  (30,000+ rejections; China/India/Indonesia/Mexico nationals via three airports), to wire to the
  smart population register and the future biometric digital ID with the BMA and [[sars]] —
  automation as anti-corruption and biometric border control. See [[dpi.govtech]], [[dpi.registry]],
  [[gov.protect]], [[sa-digital-id-regulations]]. Sources:
  [[2026-03-09 Home affairs launches Smart ID partnership with banks]],
  [[2026-02-24 South Africa makes the ETA the cornerstone of its visa reform]].

## 2025–26: migration enforcement, the register, the banks, and the money

The 2025–26 material sharpens two things the framing above already carries — **the register is being built as
a migration-control instrument**, and **the bank channel is scaling fast while the money and the enabling law
lag**.

- **Identity as migration enforcement.** Biometrics moved from the counter to the street: **Operation New
  Broom** (May 2025) used on-site fingerprint/face checks during immigration raids (25 arrested, District 6),
  the PSA warning on privacy/data security. In June 2026 **[[cyril-ramaphosa]]** cast the
  **[[intelligent-population-register|Intelligent Population Register]]** explicitly as migration control —
  biometrics for *every* person, the foundation of the Digital ID, with the **green ID book to be
  de-recognised** and the **Traffic Registration Number** (a foreigner ID workaround) abolished, under a
  Cabinet "Comprehensive Approach for Migration Management." DHA then tendered a **biometric case-management
  system + 600 handheld readers** for its inspectorate. Sources: [[2025-05-29-biometrics-immigration-raids]],
  [[2026-06-08-biometric-population-register-unveiled]], [[2026-07-07-biometric-case-management-migration]].
- **The bank channel scales.** The Digital Partnership Model reached **four banks** (Capitec → Standard Bank,
  FNB, then **[[absa|Absa]]**, Jul 2026) across **296 branches**, **385,000+ Smart-ID applications in four
  months**, targeting **750 branches by end-2026** with first-time Smart ID/passport applications and
  **doorstep delivery**. Source: [[2026-07-16-absa-joins-home-affairs-smart-id]].
- **The money.** DHA tabled **R13.8bn (~$828m) for FY2026/27** (up from ~$615–618m) for Smart IDs, the
  digital visa (ETA) and the digital-ID launch — plus a **biometric voter-registration** drive from 27 May
  2026. Source: [[2026-05-20-home-affairs-828m-digital-id-budget]].
- **The financial-sector ID, and the telco claim.** The **[[sarb|SARB]]** Prudential Authority is exploring a
  **formal digital identity** for financial services (verification, fraud reduction) under Payments
  Modernisation (Fundi Tshazibana) — the [[dpi.pay]] side of the same convergence. A vendor op-ed argues
  **operators, not banks**, will drive adoption by turning **RICA into a reusable identity credential**
  (Vodacom+MTN mobile money past **$1tn**; SIM-swap = 60% of mobile-banking breaches, R5.3bn/yr) —
  *promoted content, treat as opinion*. Sources: [[2026-07-10-sarb-explores-digital-identity]],
  [[2026-06-09-operators-solved-fintech-digital-identity-next]].
- **The exclusion counter-fact.** As of Jul 2026, **377,060 IDs remain blocked** on the National Population
  Register (down from 702,267 when the Gauteng High Court found marker-placement without due process
  unconstitutional; 52.6% duplicates), and DHA blames **"unserviceable addresses"** for failing to trace
  ~400,000 people — court deadline extended to **March 2027**. The register that is being made compulsory
  still cannot reliably reach the people it wrongly blocked. See [[include.access]],
  [[south-africa--include-divides]]. Source: [[2026-07-17-home-affairs-unblock-identity-numbers-addresses]].
- **A procurement shadow.** The Auditor-General found the **biometric driver's-licence card tender**
  (Department of Transport DLCA, awarded to **[[idemia]]**, Aug 2024) irregular — all bids exceeded the
  R486m budget (ballooning toward R898m), technical requirements unmet, evaluation improper (OUTA
  complaint); the matter went to the High Court. Source: [[2025-03-06-biometric-drivers-licence-tender-ag]].

*(Corroborating the framing above: the 2029 "before elections" target [[2025-03-11-digital-id-before-2029-elections]];
the MyMzansi-roadmap schedule slip [[2026-01-30-digital-id-behind-schedule-mymzansi]]; the gazetted draft
Identification Regulations [[2026-05-06-digital-id-draft-regulation-gazetted]], [[2026-05-09-smart-ids-go-digital-draft-rules]];
the April-2025 verification-fee increase [[2025-03-25-biometric-verification-fee-increase]]; and Schreiber's
digital-Home-Affairs vision [[2025-08-12-schreiber-digital-home-affairs]].)*

## Reads

- `sovereignty`: an onshore, state-run identity rail (SARS-hosted PKI) that banks and telcos build on
  — domestic control of the credential layer, but with the accountability mechanisms (erasure,
  access transparency, statutory basis) lagging the technical rollout.

## Links

Place: [[ZAF]] · Concepts: [[dpi.id]] · [[gov.protect]] · [[gov.legislate]] · Intersection:
[[south-africa--gov-protect]] · Entities: [[sa-digital-id-regulations]] · [[popia]]

## Sources

- [[2026-04-21 South Africa's digital ID gets a targeted launch date]]
- [[2026-05-29 Opinion South Africa's Digital Identity Regulations A Governance Crossroads]]
- [[2026-01-28 Home Affairs sets new record by delivering over four million Smart IDs in 2025]]
- [[2026-01-27 SA's Telcos, Banks At War With Govt Over 6,500% ID Verification Fee Hike]]
- [[2026-01-28 Bad news about South Africa's newest ID book plan]]
- [[2025-11-09 Behind the speedy MyMzansi screens and the Presidency's race to build a digital government]]
- [[2026-01-07 Digital driving licence coming to South Africa]]
- [[2026-04-03 Say goodbye to SARS tax numbers in South Africa]]
- [[2026-03-31 Concerns over South Africa's proposed digital ID system from traditional leaders]]
- [[2026-03-09 Home affairs launches Smart ID partnership with banks]]
- [[2026-02-24 South Africa makes the ETA the cornerstone of its visa reform]]
