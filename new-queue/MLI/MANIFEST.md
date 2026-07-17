# Sweep manifest — MLI (Mali)

- **Batch:** MLI-2026-07-17
- **Window:** 2025-01-01 → 2026-07-17 (full)
- **Sources:** Newspapers — L'Essor `lessor.ml` (state daily; capture ≠ endorsement), Maliweb `maliweb.net` (portal/aggregator — verify each item's original outlet). Both French; N1–N7 run in French. Trade journals — fixed 8, J1–J2 by country name; `wearetech.africa` run FR+EN.
- **Counts:** staged **18**; dropped **25** (representative; data-centre & IFC clusters had many more same-event copies collapsed). Queries ~24 (14 newspaper N1–N7 ×2 papers partial + 8 journal + 2 targeted).
- **Month-slicing:** not needed — Mali is medium-volume; single-pass queries returned ample in-window hits without recency-swamping.
- **Thinness:** **Established rich, not thin.** L'Essor is a productive DPI/e-gov source; maliweb domain-scoping is weak (returns aggregators/pre-window) but its own articles are strong; wearetech/biometricupdate/ecofin/techafricanews/connectingafrica all carry Mali. techreviewafrica genuinely thin for Mali (no keeper). itweb.africa carries Mali telecom but mostly historical (Mobilis/Telecel pre-window).
- **Grounding:** wiki already held the Tier III data centre (4 srcs), E-AES/Emptech passport, Sept-2025 platforms, diaspora platform, AES common passport, TerraPay-Wave, birth-registration — all excluded as already-held. New material below is net-additive.

## Identity / AES ID
- 2026-06-02 | dpi.id, gov.regional | Afrik Times | AES CIB-AES diaspora pilot in Bamako (Burkinabe enrolment, mobile kits, near-instant CIB-AES + AES passport) | extends [[cib-aes]] into cross-border diaspora enrolment hosted on Malian soil; most significant AES-ID find

## Data protection (APDP) — new cluster; wiki had no APDP entity
- 2025-10-07 | gov.protect, dpi.registry | APA News | APDP examines ~2,000 files + draft mandatory-lease-declaration decree; 2025 enforcement (5M FCFA fine, 100+ notices) | establishes an actively-enforcing DPA + lease-registry workstream
- 2025-12-05 | gov.protect | L'Essor | APDP opens regional antenna in Ségou (Law 2013-015) | DPA territorial expansion

## E-government / DPI
- 2025-03-20 | dpi.pay, dpi.registry, dpi.govtech | We Are Tech | Trésor Pay (mobile-money gov payments) + SIF/GUF one-stop land office launched 18 Mar 2025 | land-registry + payment rail
- 2025-12-30 | dpi.govtech, infra.cybersec, infra.connect | L'Essor | AGETIC government Intranet, .ml domain (13,441 names), mandatory gov messaging decree, services portal | sovereign gov network build-out
- 2026-02-12 | dpi.govtech, include.access | Maliweb | Justice e-services: casier judiciaire + nationalité online (10 Feb 2026), AGETIC E-verif anti-forgery | diaspora/remote access
- 2026-07-08 | dpi.mis, include.access | TechGriot | National digital health portal sante.gov.ml (PSNSN 2024-2028) | sectoral MIS (prefer We Are Tech primary at ingest)

## Payments / fintech
- 2025-06-11 | dpi.pay | Maliweb | Orange Money Mali + Orabank co-branded Mastercard prepaid card (5 Jun 2025) | mobile-money→card rails
- 2026-04-09 | dpi.pay | Le360 Afrique | Moov Money Mali + Mastercard prepaid card at GITEX Africa 2026 | second telco-led card

## Connectivity / telecom
- 2025-05-07 | infra.connect, data.satellite, include.divides | TechAfrica News | Orange Mali + Intelsat 4G-over-satellite (first in Francophone W. Africa; ~360k reached) | rural gap
- 2025-11-17 | infra.connect, finance.new, include.divides, infra.energy | IFC (primary) | IFC €80m Social Loan to Orange Mali: 300 4G towers, fibre to 300k homes, women 70% by 2032, solar | biggest connectivity-finance item
- 2026-06-15 | infra.connect, tech.ai | Ecofin | Moov Africa Malitel doubles fibre speeds + launches AI assistant MIA (12 Jun 2026) | broadband competition
- 2026-06-25 | infra.connect, tech.industry, gov.policy | Business Insider Africa | Mali regains SOTELMA majority (49%→56%, $277m, Maroc Telecom to minority) | major economic-sovereignty story mirroring AES asset-reclaim

## Cybersecurity / AI
- 2025-12-09 | infra.cybersec, gov.policy | We Are Tech | National Cybersecurity Strategy 2026-2030 (Council 5 Dec 2025); cites 2022 "Russian cybercriminals" tax-data breach, 2023 Bank of Africa Mali attack | Russia-cyber angle (flagged, ISSUE-014)
- 2026-05-21 | infra.cybersec, gov.legislate | L'Essor | Cybercrime Pole criminal chamber operational (4 cases/8 accused) | operational cyber-justice
- 2026-07-01 | infra.cybersec, gov.legislate | Mali Actuel | ANSSI national cybersecurity agency created (Council 10 Jun 2026) | institution implementing the strategy
- 2026-07-09 | tech.ai, gov.regional, gov.policy | We Are Tech | Six Francophone W. African states (incl. Mali) adopt Niyel AI-governance framework at UN Global AI Dialogue | Mali's first continental AI-governance commitment

## Regional
- 2026-03-10 | gov.regional, capacity.training | TechAfrica News | Mali–Smart Africa cooperation at MWC 2026 (possible Transform Africa Summit host) | balances AES-sovereignty with continental cooperation

---
### New entities implied (for ingest)
`apdp-mali` (DPA, organisation), `agetic` (government-body), `anssi-mali` (government-body), `sotelma` (company), `orange-mali` (company), `intelsat`, `ifc`, `maroc-telecom`, `smart-africa`, `niyel`.

### Caveats
- `maliactuel` (ANSSI) and `afriktimes` (CIB-AES pilot) are secondary Malian/AES outlets reporting official ceremonies/Council decisions — flagged "verify against official communiqué"; admissible as dated announcement records.
- `techgriot` health-portal item cites We Are Tech as its source — swap for the We Are Tech primary at ingest.
- SOTELMA staged via Business Insider Africa because the confirming primary (Financial Afrik) is paywalled.
- No proxy dates: every staged item carries a body-verified `published` (day precision).
- Minor date nuance: cyber strategy "taken note of" 5 Dec 2025 vs ANSSI report's "adopted February 2026" — noted in both files, not a contradiction.
