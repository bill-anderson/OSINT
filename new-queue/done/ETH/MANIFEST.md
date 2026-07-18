# ETH (Ethiopia) — sweep manifest

- **Batch:** ETH-2026-07-17
- **Window:** 2025-01-01 → 2026-07-17
- **Sources:** Newspapers — Addis Standard (addisstandard.com), The Reporter Ethiopia (thereporterethiopia.com), both English. Journals — fixed 8 (J1/J2, country-name).
- **Counts:** staged **36** · dropped **19** (out-of-window 12, already-held 4, pr-wire-better-twin 3 — one "already-held/pr-wire" overlap counted once; off-topic 1). Drops → `sweep/drop-log-ETH.csv`.
- **Per-domain yield:** biometricupdate 18 (heaviest — Fayda thread badly under-collected despite a rich ETH page); techafricanews 6; connectingafrica 3; The Reporter 5; Addis Standard 3; techreviewafrica 1 (pr-wire).
- **Month-slicing:** not needed — Exa here does not hard-filter by domain, so single Ethiopia-wide topic queries surfaced hits across all target domains at once; recency-swamping was not the failure mode (semantic scatter was). All dates re-verified at fetch (Exa `Published` was garbage across the board).
- **Body note:** bodies are lede/key-fact **excerpts** captured at fetch (context-budget tradeoff over 36 items), not full clips — each flagged `[Excerpt ... full clip on promotion]`. Two Reporter items (50768, 49962) are JS-rendered and returned **no body** — staged `body_completeness: summary-only` with `date_source: proxy` (date from image path); need a manual clip on promotion.
- **Dedup caveat (kept, not dropped):** biometricupdate 2025-12-11 banks-harmonize-Fayda is the **same NBE directive** already held as a primary (raw/2025-12-10 NBE...). Kept per sweep rule (different outlet ≠ drop); flagged in-file for the post-ingest lint.
- **New entity flagged:** **Raxio** (data-centre operator; Addis Ababa flagship) — referenced by 1 staged item, no wiki page yet.

## Digital ID / Fayda (dpi.id) — the dominant thread
`published | topics | source | title | why-it's-new`
2026-07-16 | dpi.id, include.access | biometricupdate | Fayda critical for 5-yr refugee inclusion strategy (Makatet) | NEW Makatet framework; state-led refugee inclusion, 1.1m refugees/2m IDPs
2026-07-08 | dpi.id, include.divides | biometricupdate | Safaricom-NIDP JV runs Fayda enrollment in 7 regions (Lots 3&4) | fresher figures (46.5m, up from 16.4m); diff outlet vs held techreviewafrica JV
2026-06-26 | dpi.govtech, dpi.id | biometricupdate | Ethiopia builds DPI to power sovereign digital state (MESOB exhibition) | NEW "sovereignty stack"; MESOB 185 services; 2nd-largest ID in Africa
2026-06-23 | dpi.id, dpi.registry | biometricupdate | Fayda linked with passport application system | NEW utility-first integration (ICS passports on NIDP biometrics)
2026-05-21 | dpi.id, finance.new | biometricupdate | $54M Super Agent procurement to expand Fayda | NEW; 39m enrolled, 78m auth, WB March mission; refugee/host figures
2026-04-07 | dpi.id, dpi.pay | biometricupdate | Dashen Bank launches Ethiopia's first digital-ID-based accounts | NEW; remote onboarding via Fayda + Mastercard virtual card
2026-03-13 | dpi.id, finance.new | biometricupdate | Fayda joins EIH sovereign wealth fund; 1m/week enrollments | NEW; project → commercialised entity (10bn birr cap)
2026-03-05 | dpi.id, include.divides | biometricupdate | Integrated Biometrics Kojak scanners for Fayda inclusion | NEW tech-partner detail; off-grid rural enrollment kit
2026-02-05 | dpi.id, gov.protect | Addis Standard | Coercion Over Consent: mandatory Digital ID experiment | NEW home-grown critical counter-narrative (sovereignty/colonialism lens)
2026-01-28 | gov.policy, dpi.id | Addis Standard | Ethiopia's Digital Leap Paradox: rapid progress, fragile foundations | NEW critical analysis of DE2030 (socio-technical fragility)
2026-01-16 | dpi.id, include.access | biometricupdate | UNHCR lauds Fayda for Ethiopia refugees | NEW; refugee service-access framing
2026-01-07 | dpi.id, gov.policy | biometricupdate | Govt (GCS) reiterates Fayda role as DE2030 begins | NEW official pro-Fayda framing (contrast to Addis Standard critiques)
2025-10-14 | dpi.id, digital.rural | biometricupdate | Fayda issuance to 63M by year-end target | NEW dated milestone (23m issued; rural gap in Gambella)
2025-06-04 | dpi.id, gov.regional | biometricupdate | Fayda chief's roadmap to 90M by 2027 (ID4Africa interview) | NEW; 16.4m as of 4 Jun; cross-border interoperability, sovereignty
2025-05-22 | dpi.id, dpi.pay | biometricupdate | FaydaPass digital wallet launched (TECH5/Visa) | NEW product launch; KYC wallet
2025-05-20 | dpi.id, gov.policy | biometricupdate | Ethiopia reveals Fayda strategy as ID4Africa 2025 opens | NEW; 15m+ registered; MiNT/INSA/CRRSA panel
2025-02-26 | dpi.id, dpi.govtech | biometricupdate | Fayda useful for document authentication / fraud prevention | NEW; 9.1m authentications as of 26 Feb
2025-01-06 | dpi.id, dpi.pay | biometricupdate | Mandatory digital ID for banking policy in effect | NEW; foundational Fayda-banking mandate (11m regs; phased to 2026)

## Payments & fintech (dpi.pay)
2026-07-10 | dpi.pay, dpi.govtech | techafricanews | Ethiopia advances nationwide interoperable govt digital payments | NEW; NDPS policy→execution (MoF/NBE/EthSwitch framework)
2025-12-11 | dpi.id, dpi.pay | biometricupdate | Banks harmonize accounts with Fayda (NBE directive) | secondary outlet of held NBE Dec-10 directive; procedural detail
2025-12-02 | dpi.pay, dpi.id | connectingafrica | M-Pesa LeHulum telco-agnostic platform | NEW; any-SIM wallet, Fayda onboarding, EthSwitch
2025-11-11 | dpi.id, dpi.pay | biometricupdate | Banks receive 2,000 biometric kits (EBA) | NEW; $17m kit rollout to 31 banks
2025-01-11 | dpi.pay, tech.industry | The Reporter | Ethio Telecom extends 10% IPO offering deadline to 14 Feb | NEW; IPO via Telebirr, dated update

## Connectivity, telecom & infrastructure (infra.connect / tech.industry)
2026-05-18 | infra.connect, tech.industry | The Reporter | "Ethiopia needs third telecom operator, USD5bn to triple towers" (Andualem Admassie) | NEW analysis [summary-only body]
2026-04-20 | infra.connect, finance.new | techafricanews | Safaricom Ethiopia flags $5bn investment need (EU-Ethiopia Forum) | NEW investment framing
2026-04-20 | infra.connect | techafricanews | Ethio Telecom reaches 99.8% coverage | NEW dated coverage figure
2026-03-09 | infra.connect, geopol.china | Addis Standard | Ethio Telecom MWC-Barcelona deals (Ericsson/ZTE/Huawei/Nokia) | NEW; 647+1,500 sites, 4G to 95.5%
2026-03-01 | infra.connect, include.access | The Reporter | Telecom levy: Ethio Telecom & Safaricom pay 1.5% to Universal Access Fund | NEW regulation [summary-only body]
2026-02-23 | infra.connect, tech.industry | techafricanews | Ethio Telecom launches teleStream + Zero-Touch Broadband (Digital 2028) | NEW platform launches
2026-02-05 | infra.connect, gov.regional | connectingafrica | Horizon Fiber: Ethio/Djibouti/Sudatel binding fibre-corridor deal | NEW; MoU→binding, Ethiopia as transit hub
2026-01-10 | infra.connect, gov.policy | The Reporter | Beyond Connectivity: reform, investment, inclusion (Vanhelleputte/IFA) | NEW analysis; liberalisation as governance shift
2025-08-02 | infra.connect | The Reporter | Safaricom Ethiopia begins fibre deployment (Afdera-Mekelle) | NEW regional fibre build

## Data centres, cloud & sovereignty (infra.store / geopol.china)
2026-07-16 | infra.store, geopol.china | techafricanews | Ethio Telecom eyes Inspur/Shandong partnership | NEW; extends Shandong DC thread, China dependency
2026-07-14 | infra.store, finance.new | techafricanews | Raxio secures $380M for Africa DC expansion (Addis flagship) | NEW; +$30m over $350m, 6x contracted capacity [new entity: Raxio]
2025-06-06 | infra.store, finance.new | connectingafrica | Wingu Africa raises $60M for East Africa (ETH/DJI/TZA) | NEW; source for the $60m raise (ADDIX exchange in ETH)

## AI & skills (tech.ai)
2026-07-07 | tech.ai, capacity.training | techreviewafrica | PM Abiy highlights AI progress + future AI-education investment | NEW; AI Institute framing [pr-wire flagged]
