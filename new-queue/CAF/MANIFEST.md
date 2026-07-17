# CAF — sweep manifest (`CAF-2026-07-17`)

**Window:** 2025-01-01 → 2026-07-17 · **Staged:** 38 · **Dropped:** 86 (`sweep/drop-log-CAF.csv`)

> Merged from the two half-sweeps, which ran as separate agents writing disjoint
> files. Same-event twins across the halves are deliberately kept: same event from
> a different outlet is never a sweep-stage drop. Lint #7 adjudicates at ingest,
> with full text in hand.

---

## Part 1 — Targeted searches (substituting for the absent national press)

# CAF — targeted-search sweep manifest (substitutes for the missing national press)

**Run:** 2026-07-17 · `sweep_batch: CAF-2026-07-17` · window **2025-01-01 → 2026-07-17**
**Why this run exists:** `sweep/ledger.csv` records *"no suitable online national papers exist (confirmed 2026-07-17) — journals + targeted searches only"* for CAF. This is the **targeted half**. The trade-journal half is a sibling agent writing `MANIFEST-journals.md` / `drop-log-CAF-journals.csv` into this same folder; every file below carries an outlet suffix so the two cannot collide.

**Staged:** 20 · **Dropped:** 47 (see `sweep/drop-log-CAF-targeted.csv`) · **Queries run:** 6 Exa passes (5 FR-first, 1 EN) + 1 targeted follow-up

---

## Instruments used — and which actually yielded

| Instrument | Queried | Yield | Verdict |
|---|---|---|---|
| **Radio Ndeke Luka** (radiondekeluka.org — UN/Hirondelle-backed, FR + Sango) | ✅ | **2 staged** | **The find of this run.** Live, dated, bylined, editorially independent, covers the digital beat (interviewed the digital-economy minister). Its weakness is format: it is a *radio* station, so web items are audio stubs of 40–120 words. **See recommendation below.** |
| **Corbeau News Centrafrique** (corbeaunews-centrafrique.org) | ✅ | **3 staged** | Highest-value *investigative* yield — the only outlet reporting the CNI extortion at the periphery. Diaspora-run, fiercely anti-Touadéra, editorialises hard. **Renders a live "today" date in its chrome — a date trap.** |
| **Agence Ecofin** (agenceecofin.com) | ✅ | **5 staged** | The workhorse. Dated, bylined, numerate, sceptical, French-first, and it *covers CAR routinely*. Already the wiki's most-cited CAF source. |
| **Oubangui Médias** (oubanguimedias.com) | ✅ | **2 staged** | Bangui-based, dated, bylined, covers government/donor beats the trade press ignores (MODERO, AIAL). Frequently the **original** that Pravda-network and vendor sites mirror. |
| **Government primaries** (primature.cf, mepci-rca.org) | ✅ | **1 staged** | primature.cf yielded the Starlink signing directly. Promotional register, but it is the record. mepci-rca.org already held. |
| **Ndjoni Sango, Mbeti Media, Centra News, Centrafrique Infos** | ✅ | **4 staged** | Small Bangui outlets, each with a distinct line (Ndjoni Sango pro-government; Mbeti Media & Centra News independent-ish). Individually thin, collectively they carry stories nobody else runs. |
| **Global Initiative (GI-TOC)** | ✅ | **1 staged** | The single most important item in this run. |
| **Africa Business Insight** | ✅ | **2 staged** | Aggregator; staged only where it carried material found nowhere else (CARDIP, South Sudan link). Its Starlink piece was dropped as an unattributed Ecofin rewrite. |
| **RFI** | ✅ | 1 staged (via allAfrica) | RFI covers CAR but its canonical URLs proved hard to hit via Exa; the GI-TOC interview came through the allAfrica syndication with full text. |
| **Telecel Group** (company primary) | ✅ | **1 staged** | |
| **Jeune Afrique** | ✅ | **0** | Returned only pre-2025 crypto coverage. No paywall problem encountered because there was nothing in-window to hit. |
| **rca.news-pravda.com ("Pravda RCA")** | ✅ | **0 staged, 7 dropped** | **Method finding — see "The Pravda problem" below.** |
| **ARCEP-CAF own site, ITU, GSMA, UNDP, ECCAS/CEMAC portals** | ✅ (via topical queries) | 0 direct | No in-window ARCEP publications surfaced; ARCEP's activity reached us *through* Ecofin. GSMA/ITU/World Bank figures arrived as citations inside staged items rather than as standalone sources. |
| **World Bank** | ✅ | 0 direct, 1 indirect | Project documents surfaced (P174620 Public Sector Digital Governance Project; CARDIP) but as undated PDF bitstreams. **Left for a dedicated institutional pass — see Flags.** |
| **Financial Afrik, APA news, Le Tsunami** | ✅ | **0** | Nothing in-window on CAR. Le Tsunami did not surface at all. |

---

## Staged items

`published | topics | source | title | why it's new`

- **2025-01-19** | `infra.connect` `gov.legislate` `include.divides` | Barlamane | Moov Africa et l'État centrafricain renouvellent leur licence mobile (4G) | Wiki holds only Orange's Nov-2024 "first 4G licence". This is **licence #2**, and it dates Orange's precisely (7 Nov 2024).
- **2025-01-22** | `infra.store` `dpi.govtech` `finance.mou` `dpi.exchange` | Oubangui Médias | MoU avec AIAL Group Limited (Kigali) pour un Data center | **Directly qualifies the wiki's "no national data centre".** An MoU, explicitly *not yet a contract* — and the minister's own description makes it a whole-of-government data-consolidation platform (casier judiciaire, certificat de nationalité, diplômes, actes de naissance). First of **three** competing data-centre threads found this run (AIAL 2025 · Huawei 2026 · the older AfDB/CAB datacentre procurement).
- **2025-01-29** | `dpi.id` `dpi.govtech` `include.access` `dpi.pay` | Corbeau News | Reprise controversée de la délivrance des passeports (EDESEC) | New vendor (**EDESEC**) for biometric passports, unknown to the wiki, plus payment funnelled through **only two banks**. The wiki's identity story is CNI-only; passports are a second, separately-contracted document rail.
- **2025-04-16** | `infra.connect` `gov.standards` `gov.legislate` | Agence Ecofin | L'ARCEP renforce le suivi de la qualité des services télécoms | First substantive material on **ARCEP as an actor** (the wiki has the entity but little on it): 1bn FCFA of spectrum/QoS kit, plus civil society's charge that ARCEP is "impuissante" before the operators.
- **2025-12-01** *(precision: month)* | `dpi.pay` `gov.legislate` `gov.protect` `finance.new` `tech.industry` | GI-TOC | **Behind the Blockchain: Cryptocurrency and criminal capture in the CAR** | **The largest single gap this run closed.** The wiki holds *nothing* on Sango Coin, the $CAR meme coin, or the **July 2023 resource-tokenisation law**. Primary-research report: Sango site dead since 2025-04-29, <10% of tokens sold, <$2m raised; named intermediaries; land tokenisation without governance safeguards. PDF — needs a companion-artefact download at ingest.
- **2025-12-19** | `infra.connect` `geopol.usa` `include.divides` `finance.mou` | **Primature (primature.cf)** | Starlink en RCA — signature de la convention | **Government primary.** Wiki has nothing on Starlink at all. Note the **US embassy brokered it**, and the chargée d'affaires used the platform to trail a bilateral commercial dialogue.
- **2025-12-21** | `infra.connect` `geopol.usa` `include.access` `digital.rural` | Corbeau News | Internet par satellite débarque en Centrafrique | Adds the detail the government release omits: SpaceX committed **several hundred terminals for isolated schools, clinics and administrations**. Date trap: page chrome renders a live date.
- **2025-12-21** | `dpi.pay` `gov.legislate` `finance.new` | RFI (via allAfrica) | Les projets de cryptomonnaie ont surtout favorisé le crime organisé | Dukhan interview; supplies the hard numbers and the "île aux Singes crypto city" that never got built, published **seven days before the 28 Dec election**.
- **2025-12-22** | `infra.connect` `gov.legislate` `include.divides` | Telecel Group *(orig. Oubangui Médias)* | Telecel Centrafrique obtient sa licence 4G | **Licence #3 — completes the set.** The minister's own words date the whole sequence: Orange Nov 2024 → Moov Jan 2025 → Telecel Dec 2025. **All three CAR operators now hold 4G**; the wiki's "first 4G licence in 2024" is now a chapter, not the story.
- **2026-02-03** | `infra.connect` `gov.policy` `include.divides` `digital.rural` | **Radio Ndeke Luka** | « Nous voulons aller vers un désenclavement numérique » — le ministre Gourna-Nzacko | The digital-economy minister on record on fibre + Starlink strategy. `[CLIP]` — **audio stub**, substance is in the audio.
- **2026-02-23** | `dpi.id` `dpi.registry` `geopol.eu` `digital.localgov` | Oubangui Médias | Le CTAS valide les activités du projet **MODERO** (état civil) | An **EU/CIVIPOL civil-registration programme the wiki does not know exists** — target **400,000 birth certificates by 2028**, moving from a Bangui-corridor pilot to national scale. The wiki's CRVS story is the much smaller OIF project (3,000 certificates). Different order of magnitude.
- **2026-03-06** | `gov.regional` `infra.connect` `dpi.pay` `dpi.govtech` | Africa Business Insight | CAR explores World Bank support (**CARDIP**) | **CARDIP** — the six-country Central African Digital Integration Program (CMR/TCD/COG/GAB/GNQ/CAF) — is absent from the wiki. This is the regional DPI vehicle CAR is trying to board.
- **2026-03-11** | `dpi.pay` `gov.regional` `include.access` | Centrafrique Infos | La BEAC condamne la taxation du Mobile Money | The **BEAC governor** (a Central African) attacking member-state mobile-money taxes as "régulation parallèle" and proposing to tax *cash* instead. Regional-tier `dpi.pay` politics the wiki has no material on.
- **2026-03-17** | `infra.connect` `geopol.usa` `include.divides` `digital.rural` | Agence Ecofin | Starlink — entre couverture nationale et défis d'accessibilité | The numerate account: **33,000 FCFA/month = ~136% of monthly GNI per capita**, vs the ITU's 2% affordability threshold. Also GSMA 2024: mobile-coverage score **30/100**, 2G 59.6% / 3G 60%, **4G and 5G "inexistantes"**, speed score 4.2/100.
- **2026-03-17** | `infra.connect` `geopol.usa` `include.access` | **Radio Ndeke Luka** | Starlink lance officiellement ses activités | Names the local operator **DEVEAG-Centrafrique**; Ecofin same day says **DEVEA Centrafrique**. Name discrepancy flagged on the file. `[CLIP]` — audio stub.
- **2026-04-21** | `infra.connect` `include.divides` `gov.legislate` `digital.rural` | Agence Ecofin | Le fonds du service universel prévu pour 2026 | An **entire regulatory instrument the wiki does not hold**: USF under loi n°18.002 (2018) + décret (2019), funded at **2% of operator revenue**, governed by the **CDCE** (launched July 2025), inside a 6.2bn FCFA (~$11.2m) ARCEP 2026 budget. This is CAR's answer to `include.divides`.
- **2026-04-24** | `infra.connect` `digital.rural` `include.access` `capacity.literacy` | Ndjoni Sango | Bocaranga — le premier Wi-Fi public gratuit du pays | **Russian cooperation installed CAR's first free public Wi-Fi**, inaugurated by Touadéra alongside an MCU legislative candidate, weeks before the vote. Connectivity as patronage *and* as Russian soft power in one object. **Also the trigger for the taxonomy issue below.**
- **2026-05-25** | `infra.connect` `gov.regional` `include.divides` | Africa Business Insight | CAR seeks internet link through South Sudan (with **MTN**) | A **new interconnection axis** (CAR→SSD) and a **new state body** — the *Central African Digital Development Agency* — neither in the wiki. Also: **repeated vandalism/sabotage of telecom infrastructure**. And a **contradiction** (below).
- **2026-05-27** *(date_source: proxy)* | `infra.store` `dpi.govtech` `geopol.china` `infra.cybersec` | Agence Ecofin | La Centrafrique modernise l'infrastructure de son administration avec Huawei | **Huawei to build CAR's national Tier III data centre.** Against the AIAL MoU (Jan 2025) and against the wiki's "no national data centre", this is the live thread. Ecofin's own body misdates the meeting ("26 mars" — should be 26 mai); see the file's `date_note`.
- **2026-06-03** | `infra.store` `dpi.govtech` `geopol.china` `infra.cybersec` | Mbeti Media | La RCA engage un partenariat stratégique avec Huawei | Same event, different outlet (never a drop, per the sweep rule) — and it carries the **fourth axis Ecofin omits: a secure eLTE radio network for the police**. Huawei building the data centre *and* the security radio is the sovereignty story.
- **2026-06-12** | `tech.ai` `infra.cybersec` `gov.legislate` `dpi.id` | Centra News | Le HCC dénonce l'usage abusif de l'IA pour la désinformation | **First `tech.ai` material on CAR since 2022.** The media regulator frames deepfakes of Touadéra as cybercrime and proposes **tighter SIM-holder identification** as the fix — an explicit digital-ID→speech-control linkage, five months after the election.
- **2026-06-16** | `dpi.id` `dpi.registry` `include.access` `include.divides` | Corbeau News | Le business de la CNI reprend de plus belle à Ndélé | **Re-dates the wiki's "resolved price scandal".** Eleven months after the 4,500 FCFA legal price was restored, CNI access in the periphery costs **100,000–200,000 FCFA — for Muslim applicants only**, gated on producing a father's *and* grandfather's birth certificate. Documented at Ndélé, Paoua, Yaloké, Zawa, Markounda and Bangui. An **update**, not a contradiction.
- **2026-07-10** | `dpi.pay` `gov.regional` `dpi.exchange` `finance.new` | Agence Ecofin | Les banques de la CEMAC intégrées au PAPSS d'ici fin 2026 | **Dates and evidences** the wiki's currently bare assertion "BEAC (PAPSS accession, 2026)": announced by Afreximbank 9 July 2026; CEMAC banks connected by end-2026; PAPSS now 28 countries. Tagged XCA + the six CEMAC states.

---

## Contradictions & re-datings for the human

1. **Internet penetration — three incompatible figures inside four months.** Wiki holds **~10.6%**. Agence Ecofin (2026-04-21) and Africa Business Insight (2026-03-06) both cite **DataReportal ~12% at end-2025** (≈670,000 users). Ecofin (2026-03-17) cites **ITU: 86% not using the internet in 2024** (≈14%). But CAR officials (2026-05-17, via ABI) claim penetration **"rose from 15.5% at the beginning of 2025 to around 30% currently"** — roughly triple the independent figure, asserted by the ministry with no methodology. Recommend a `reviews/contradictions/open/` item; the competing-value URLs are on the staged files.
2. **"No national data centre" (wiki, CAF hub) is now three live threads**: AIAL Group MoU (2025-01-21, Kigali-registered, never confirmed to contract), Huawei Tier III (2026-05-26, live), and the older AfDB/CAB-funded "Datacenter principal et de secours" procurement (2021, outcome unknown — a genuine gap). The wiki's statement is not *wrong* — nothing is built — but it is under-informed.
3. **"First 4G licence" (Orange, Nov 2024) is now a completed sequence**: Orange 2024-11-07 → Moov 2025-01 → Telecel 2025-12-22. All three operators licensed. Yet GSMA still scored 4G coverage as *inexistante* in 2024 and Ecofin says commercial 4G only began in 2025 — licence ≠ coverage, and the wiki should say so.
4. **CNI price scandal "resolved" (2025-07-27) → unresolved in substance (2026-06-16).** Re-dating, not contradiction: the legal tariff holds on paper; extortion moved to the informal, religiously-targeted layer.
5. **DEVEA vs DEVEAG Centrafrique** — same-day, two outlets, one letter apart. Trivial but will mint two entity pages if not caught.

## Flags

- **Taxonomy gap — no `geopol.russia`.** The vocabulary carries `geopol.usa` `geopol.china` `geopol.eu` `geopol.india` `geopol.gulf`. For CAR, **Russia is the dominant external actor in the digital and information sphere** — it installed the country's first public Wi-Fi (2026-04-24, staged), Wagner runs the information operation, and GI-TOC places Russia-based figures at the centre of the crypto schemes. Three staged items have nowhere correct to file this. **Recommend an item in `reviews/issues.md`** (CC's recommended resolution: add `geopol.russia` to the Geopolitics branch — it is a vocabulary question the written rules leave open, so it is the human's call, not a tier-2 action).
- **Date traps confirmed, as briefed.** `corbeaunews-centrafrique.org` renders a **live "today" date** in its chrome (read as "jeudi, juin 11, 2026" and "mercredi, juin 24, 2026" on two fetches of articles published Dec 2025 and June 2026). Exa's crawl dates were corroborated against image paths and in-body day-names instead. Ecofin serves an explicit "Date de création" — reliable. `agenceecofin.com` served **no date at all** for two URLs; one is staged `date_source: proxy`.
- **Paywalls:** none hit. **Jeune Afrique returned nothing in-window**, so its paywall was never tested for CAF. `[CLIP]` marks below are *format* limits, not paywalls.
- **`[CLIP]` — 4 items are not full text.** 2× Radio Ndeke Luka (audio stubs, complete as published — the substance is in the audio and would need transcription); 2× `body_completeness: highlights-only` (AIAL/Oubangui Médias and Huawei/Ecofin, captured via Exa highlights rather than a clean fetch). Re-clip before ingest if full text matters.
- **One high-value fetch failure:** Le Monde, 2025-02-11, *"La Centrafrique lance une nouvelle cryptomonnaie"* — bot-blocked. This is the **$CAR meme coin launch**, and it is the only dated news source for it; GI-TOC covers it analytically. **Recommend a manual clip.**
- **Institutional pass not completed.** World Bank **P174620 (CAR Public Sector Digital Governance Project, SDR 25.1m / US$35m)** and the **CARDIP** programme documents surfaced as undated `documents1.worldbank.org` PDF bitstreams. These are `instrument`/project material needing a dedicated pass with proper date extraction, not a news-style sweep. **Flagged as a gap lead.** Same for ARCEP-CAF's own publications (nothing surfaced) and MINUSCA's electoral-support record.
- **Three real stories exist only on the Pravda mirror** (see below) and so are **unsourceable at present**: the **government's validation of a strategic report on digital identity and civil registration (April 2025)**; the **SOS Télécoms passive-infrastructure licence (July 2025)**; and **"Pata Polélé"**, a payment-digitalisation rollout across three ministries (April 2026). All three are logged as drops with the gap noted. Recommend these as `reviews/gaps.md` leads.
- **SODESEC vs EDESEC** — a content-farm item credits **SODESEC** with passport security (2025-04); the staged CNC item names **EDESEC** as the passport operator (2025-01). Possibly two firms, possibly one mangled. Lead, not a source.

## The Pravda problem — a method finding

`rca.news-pravda.com` was, by hit count, the **single most prolific "outlet" for CAR digital news** in this run — it surfaced in every French query, often at the top. It is a node of the **"Pravda" network**: an automated, unattributed mirror that scrapes CAR outlets (verified here: its AIAL story is a **verbatim copy** of Oubangui Médias, published two minutes later) and republishes them into a Russian-aligned aggregation layer.

**All 7 Pravda hits were dropped** and, where the original could be found, the original was staged instead. But the significance is bigger than dedup: **an agent searching CAR in French, without this check, would have built a large part of the country's record out of a Russian influence-network mirror** — and would have looked, by every ordinary signal (dated, plausible, French, CAR-specific, high-volume), like it was doing well. For three stories, the mirror is the *only* copy findable, which means the state's own digital-policy record partly reaches the outside world through it. That is itself a finding about CAR.

**Recommend adding `rca.news-pravda.com` to a standing drop-list** for all future CAF/XCA runs, with the rule: *drop, then hunt for the Oubangui Médias / Ndjoni Sango / ministry original*.

---

## THE DELIVERABLE: does targeted search substitute for the missing national press?

**Partly — and better than the ledger's "no suitable online national papers exist" implies. But it does not substitute cleanly, and the reason matters.**

**What worked.** 20 staged items against a wiki that held 18 CAF sources *in total, across all time* — this run roughly doubles CAR's evidence base, and closes gaps that are not marginal: the entire crypto/Sango story, the entire Starlink story, the USF, CARDIP, MODERO, the Huawei data centre, the completed 4G sequence. Targeted search found these because **CAR's digital record is genuinely mostly written from outside** — by Agence Ecofin, by donors, by GI-TOC, by companies' own press shops. For a country this thinly covered, the pan-African trade/business press *is* closer to a paper of record than anything in Bangui.

**What did not work, and cannot be fixed by better querying.** Everything staged here is either (a) an announcement, or (b) an outsider's analysis of announcements. Almost nothing is **routine domestic accountability reporting** — the ordinary business of a national paper. The one item that *is* — Corbeau News on the CNI racket at Ndélé — is worth more to this wiki than several announcements combined, precisely because it is the only thing telling us what the identity system does to people rather than what it promises. A newspaper-shaped instrument would have produced a dozen of those. Targeted search produced one, by luck of query phrasing. **The systematic bias of this method is toward the state's and the vendors' version of events**, and this run's own contents demonstrate it: government/vendor/donor announcements outnumber independent reporting roughly 3:1.

**And the discovery cost does not amortise.** The newspaper instrument is cheap on repeat: same two domains, same seven clusters, re-runnable by anyone. This run took six broad queries, ~20 fetches and a running admissibility judgement on ~15 unfamiliar outlets — including catching a Russian mirror network that a naïve run would have ingested. **That is not a re-runnable recipe; it is an investigation.** Left as "targeted searches", the next CAF run will be as expensive as this one and will make different choices.

### Recommendation: promote two outlets into the ledger

**The ledger's "no suitable online national papers exist" should be revised.** It is true that CAR has no *newspaper* of record online. It is **not** true that CAR has no usable standing domestic outlets. Concretely:

**`paper1` → Radio Ndeke Luka (radiondekeluka.org).**
The closest thing CAR has to a national outlet: UN-originated, Fondation Hirondelle-run, the country's most-listened medium, publishes **in French and Sango**, is dated and bylined, is editorially independent of both Bangui and Moscow, and **covers the digital beat as a beat** (it interviewed the digital-economy minister on fibre and Starlink). It is the only candidate here that is simultaneously domestic, independent and reliably dated.
*Caveat, stated plainly:* it is a **radio station**. Its web items are 40–120-word stubs fronting audio. Two of the four `[CLIP]` flags in this run are RNL. As a `paper1` it will reliably tell the sweep *that* something happened and *who* said it, and reliably fail to tell it *what they said*. That is a real limitation — but a dated, independent, domestic pointer is worth more than nothing, and it beats every alternative on trustworthiness.

**`paper2` → Corbeau News Centrafrique (corbeaunews-centrafrique.org).**
The highest-value *reporting* found in this run, and the only outlet doing adversarial accountability journalism on the identity system. Full text, dated, bylined, actively publishing.
*Caveats, also plainly:* it is diaspora-run and stridently anti-Touadéra — it must be read as a **committed opposition outlet**, not a neutral record; its polemical editorials (two dropped this run) are not sources. And **it renders a live date in its page chrome**, which is exactly the trap the brief warned about. Both are manageable — the wiki already handles committed sources by attribution, and the date trap is now documented.

**Runner-up, and arguably the honest `paper2`: Oubangui Médias (oubanguimedias.com).** Bangui-based, dated, bylined, straight-reporting, covers the government and donor beats, and is repeatedly the **original** that both the vendor sites and the Pravda mirror copy. It is duller and less independent-minded than CNC but more consistently *sourceable*. If the curator wants the pair to be [domestic + reliable] rather than [domestic + adversarial], the pair is **RNL + Oubangui Médias**, with CNC kept as a standing third for the identity beat.

**Either way, Agence Ecofin should be recognised as CAR's de facto paper of record for this wiki's subject matter** — it is already the most-cited CAF source in `raw/`, it produced 5 of 20 items here, and it is the only outlet reliably supplying dated, numerate, sceptical coverage of CAR's digital sector. It is not a national paper and cannot be one, but the ledger currently gives CAF *nothing* while its actual best instrument sits unnamed.

**Bottom line:** targeted searching is a **workable but non-reproducible and state-biased** substitute. It should not remain the standing method. Naming RNL + Corbeau News (or RNL + Oubangui Médias) as paper1/paper2, adding Ecofin as a recognised CAF-scoped domain, and putting `rca.news-pravda.com` on a drop-list would turn this run's findings into a recipe the next run can just execute.

---

## Part 2 — Trade journals

# CAF — trade-journal sweep manifest

**Batch:** `CAF-2026-07-17` · **Window:** 2025-01-01 → 2026-07-17
**Instrument:** the 8 fixed trade journals only. CAF has **no newspaper half** —
the ledger records that no suitable online national papers exist. A sibling
agent covers targeted institutional/pan-African searches (`MANIFEST-targeted.md`).

**Staged: 15 · Dropped: 37** (drop log: `sweep/drop-log-CAF-journals.csv`)

## Items

| published | topics | source | title | why it's new |
|---|---|---|---|---|
| 2025-01-29 | dpi.govtech, dpi.pay, geopol.eu, gov.policy | We Are Tech | La Centrafrique adopte l'e-Tax pour mieux percevoir les impôts | **Re-dates held material.** Wiki dates e-Tax to 2025-03-25 "official launch"; adoption + DGID training workshops ran from 27 Jan 2025. Adds **EU funding** (absent from wiki), registration counts (301 large / 325 medium firms) and CAR's EGDI rank — 182nd, 0.0947 (UN). |
| 2025-01-31 | dpi.govtech, dpi.pay, geopol.eu, gov.policy, capacity.training | ITWeb Africa | Central African Republic advances with tax digitalisation | Independent confirmation of the EU line: e-Tax is backed by the EU under a **24-month service contract**. Names DGID DG Romain Kobondit Douathe; registration and e-filing modules "fully operational". The wiki has **no EU actor at all** on CAF. |
| 2025-02-11 | dpi.pay, finance.new, gov.legislate, tech.innovate | TechCabal | 👨🏿‍🚀TechCabal Daily – CAR launches a meme coin | **Opens a whole track the wiki does not hold.** Touadéra launches `$CAR` meme coin on X; coin falls **>90% in 24h**, 23,559 buyers vs 20,330 sellers, official X account suspended. Newsletter digest — CAR segment only. |
| 2025-05-14 | tech.innovate, tech.industry, dpi.pay | We Are Tech | Vianney Kanda numérise les services en Centrafrique | Only in-window journal item on CAR's private/startup sector. Profiles Warani (f. 2022) and founder Vianney Kanda. Best captured as `person` + `company` entities, not an event. |
| 2025-05-19 | infra.connect, include.access, include.divides, finance.mou | We Are Tech | RCA : Orange lance la 4G pour répondre à la demande croissante en connectivité | **Closes an open thread.** Wiki holds the Nov-2024 licence but not the outcome: Orange commercially **launched 4G on 15 May 2025** in Bangui, Bouar, Berbérati, Bossangoa. Names DG Max Francisco; confirms the licence sat inside a **Nov-2024 PPP** with the digital-economy ministry. |
| 2025-05-26 | infra.connect, include.access, include.divides, digital.rural | TechAfrica News | Orange Expands 4G Network to Provinces in the Central African Republic | Provincial rollout from 22 May 2025 (Boali, Bossembélé, Bouar) — 4G reaching beyond Bangui. PR-derived; thin. |
| 2025-06-23 | dpi.registry, dpi.pay, finance.new, gov.legislate, tech.innovate | ITWeb Africa | CAR offers land ownership using cryptocurrency | **The most significant single find.** From 21 June 2025, `$CAR` buys **tokenised land concessions** — 1,700 ha at Bossongo — by **presidential decree**, $20/yr charge, sold to global investors; mineral rights flagged next. A crypto token wired into the **land registry**. Wiki holds nothing. Government-sourced throughout — see file's suspicion note. |
| 2025-12-22 | infra.connect, include.access, include.divides, digital.rural, geopol.usa, finance.mou | TechAfrica News | A New Era of Connectivity: Starlink Officially Enters the CAR | **CAR–SpaceX agreement signed 18 Dec 2025**, ceremony hosted by Touadéra, brokered with US Embassy facilitation; Starlink to donate hundreds of kits to rural schools/clinics. US Embassy press copy — a **US geopolitical foothold** in a state the wiki frames around Russian influence. |
| 2026-03-03 | dpi.govtech, dpi.exchange, gov.policy, data.statistics, tech.industry, finance.new | TechAfrica News | Central African Republic Fully Digitizes Ministry with Launch of Dûnîa Platform | Complements the held Biometric Update twin with the **launch date (23 Feb 2026)**, Ambition28, the central project register, **$9bn Casablanca roundtable (Sept 2025)**, and — notably — that EDEN TiiiT's **Cédric PIDJOU pre-financed** the ministry's core system. |
| 2026-03-17 | infra.connect, include.access, include.divides, digital.rural, geopol.usa | Connecting Africa | Starlink beams into Central African Republic | Best market data of the Starlink cluster: **12% penetration, 670,000 users, end-2025**, 4.89m offline, +8.3% YoY (DataReportal/Kepios). **Contradicts** the wiki's ~10.6% and We Are Tech's 15.5%. Pricing differs from ITWeb's. |
| 2026-03-18 | infra.connect, include.access, include.divides, digital.rural, geopol.usa, capacity.training | TechAfrica News | Starlink Officially Launches in the CAR to Boost High-Speed Internet Access | Supplies the **launch date (16 Mar 2026)** and venue, most precise pricing (excl. tax), and names **DEVEA CENTRAFRIQUE** as Starlink's local rep — no wiki page. Byline: page says *Joyce* Onyeagoro, Exa said *Jennifer*. |
| 2026-03-19 | infra.connect, include.access, include.divides, digital.rural, geopol.usa | ITWeb Africa | CAR taps Starlink to bridge digital divide | Ministerial quotes (Justin Gourna Zacko), **27th African market**, **450 government kits** with 12-month subs, OneWeb comparison. |
| 2026-04-28 | infra.connect, gov.legislate, gov.standards, infra.cybersec, include.access, geopol.usa | TechAfrica News | CAR Suspends Starlink Kits Citing Security and Equipment Traceability Requirements | **The turn.** Six weeks after launch the ministry **deactivates roaming** on non-homologated kits, citing national security and **user traceability**; ARCEP handles regularisation. State moves from acquiring connectivity to controlling it. Nothing held on satellite regulation. |
| 2026-04-28 | infra.connect, gov.legislate, gov.standards, include.access, include.divides, geopol.usa | TechCabal | 👨🏿‍🚀TechCabal Daily – CAR blocks Starlink roaming | Same event, the **analysis the communiqué omits**: grey-market imports as the affordable route online, the South Africa precedent, "this is about visibility". Recycles the stale 15.5% figure — see file note. |
| 2026-05-14 | infra.connect, include.access, tech.industry | Tech Review Africa | Telecel Centrafrique launches 4G+ services in Bangui | **Telecel 4G+ launched 14 May 2026**, a year behind Orange, following its own **4G licence (22 Dec 2025)**. Makes CAR a contested 4G market for the first time. Date and byline recovered from page body — Exa served neither. |

## Per-domain yield

| domain | in-window CAF hits | staged | note |
|---|---|---|---|
| techafricanews.com | 5 | 5 | **Best single source for CAF.** Also the least reliable metadata — 3 of 5 byline mismatches. |
| itweb.africa | 3 | 3 | Carries a standing `/Central African Republic` section. Consistently the strongest reporting. |
| wearetech.africa | 3 (+1 EN twin) | 3 | FR-first; the EN twins are straight translations. FR phrasing materially out-recalled EN. |
| techcabal.com | 2 | 2 | CAF appears **only** inside TC Daily digests, never as a standalone article. |
| connectingafrica.com | 1 | 1 | Single item, but the best data in the Starlink cluster. |
| techreviewafrica.com | 1 (+1 mirror, +2 out-of-window) | 1 | PR wire; serves no dates to search — every date recovered by fetch. |
| biometricupdate.com | 1 | 0 | **Confirmed thin, not under-searched.** Its own `/tag/central-african-republic` page and site search were probed; exactly one in-window item, already held. Striking, given CAR's biometric voter register and CNI rebuild. |
| telecomreviewafrica.com | 0 | 0 | **Confirmed thin, not under-searched.** Last CAF coverage was Nov 2024 (Orange 4G licence, two items). Nothing in-window despite Starlink, Telecel 4G and a USF — all squarely its beat. |

## Flags for the human

- **PR-wire / promotional needing a primary at ingest** (7): the two crypto items
  (`$CAR` land tokenisation especially), Dûnîa, both Starlink-launch government
  items, the Starlink suspension, Orange provincial rollout, Telecel 4G+.
  Named primaries are in each file's staging note.
- **Contradictions** (do not resolve in staging): internet penetration has
  **four** live values (wiki ~10.6% · DataReportal 2024 15.5% · DataReportal
  end-2025 12% · TechCabal quoting 15.5% as of Apr 2026); Starlink Mini-kit price
  differs ~20% between Connecting Africa and ITWeb/TechAfrica News; ITWeb dates
  `$CAR`'s launch to "early 2024" against TechCabal's Feb-2025 launch coverage.
- **Entities with no wiki page** referenced by staged items: EDEN TiiiT /
  Cédric PIDJOU, DEVEA Centrafrique, Warani / Vianney Kanda, Telecel Centrafrique
  (named on CAF but no page), Justin Gourna Zacko (Minister of Digital Economy,
  Posts and Telecommunications — recurs across five staged items), Max Francisco
  (DG Orange Centrafrique), `$CAR` / Sango.
- **Out-of-scope leads surfaced but not staged** (not among the 8 journals; for
  the sibling agent or a targeted pass): **Reuters, 2025-12-17**, "Opaque crypto
  schemes endanger Central African Republic state assets, report says"; **Global
  Initiative, 2025-12-16**, "Behind the blockchain: Cryptocurrency and criminal
  capture in the Central African Republic"; Ecofin/Ghana Chamber on Telecel's 4G
  launch; **Extensia, 2026-04-22**, CAR plans 2026 launch of a **telecom
  universal service fund**; **Africa Business Insight, 2026-05-25**, CAR seeking
  an internet link **through South Sudan**; Telecel Group's own 4G-licence
  release (2025-12-22); Barlamane (2025-01-19) on **Moov Africa's licence
  renewal**. The Reuters and Global Initiative pieces are the serious critical
  counterweight to the promotional crypto copy staged here and are the single
  highest-value acquisition target for CAF.
