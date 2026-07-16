# reviews/gaps.md — structural-gap leads (human-owned)

Standing register of **gaps**: high-confidence *structural* absences surfaced
during ingest — an entity referenced with no page, a claim with no supporting
source. Each is a **research lead for the human to consider sourcing**, never a
task actioned autonomously (see CLAUDE.md → Autonomy and review). **The reconcile
pass never reads this file.** When a gap is sourced, remove it here and append a
resolution line to `log.md`.

> Items carry an ID and — now the vault is under git — a commit ref alongside
> the `log.md` date / page ref. Seeded 2026-07-13; migrated into `reviews/` 2026-07-16.

---

- **GAP-001 · NADPA has no entity page.** The **Network of African Data Protection Authorities**
  (NADPA / RAPDP) is referenced as a standing pan-African body — it admitted **Somalia and Tanzania**
  as members in 2025 ([[2026-01-11 The Year of the Teeth Data Protection in Africa Roundup, 2025, Projections for 2026]])
  — but has no `organisation` entity page, so the reference is a dead link. A profile would anchor the
  DPA-coordination thread that recurs across [[gov.protect]] and [[gov.regional]]. *Lead: consider
  sourcing a NADPA primary (membership list, statute) and creating the entity.*

*(GAP-002 — GSMA SA smartphone-tax report — resolved 2026-07-14: the primary GSMA report arrived
in the same batch and is now held; instrument upgraded stub→active. See log.md.)*

- **GAP-003 · National DPA entity pages missing for the 2026 enforcement wave.** The H1-2026
  data-protection batch surfaced several national data-protection authorities and their statutes as now
  central to the continental enforcement/reform story, but with **no entity page** (referenced only in
  prose): **Angola's** data-protection agency (APD) and its AI-provisions revision; **Ghana** Data
  Protection Commission (+ 2025 Bill / data-as-property); **Botswana** Information & Data Protection
  Commission (2024 Act); **Mauritius** Data Protection Office (+ 2017 Act amendment, National Data
  Strategy 2025–2029); **Seychelles** Information Commission (2023 Act); plus the new **Burundi**
  (Jan 2026), **Djibouti** (Digital Code) and **Gambia** laws. *Lead: consider sourcing primaries and
  creating the highest-recurrence DPA/instrument pages to anchor the [[gov.protect]] / [[gov.legislate]]
  threads — created here only for the entities the batch actually leaned on.* (Recorded Batch A,
  2026-07-14.)

- **GAP-CMR-001 · Cameroon personal-data-protection bill — enactment status unconfirmed.** Cameroon
  introduced two bills to parliament in late 2024 — a civil-registration reform (enacted as **Law 2024/016**,
  now being implemented by BUNEC) and a **personal data protection** bill. The wiki holds no source confirming
  whether the data-protection bill was enacted, and Cameroon's rapid biometric-ID + CRVS rollout is proceeding
  without a confirmed operative DP law / authority. *Lead: consider sourcing the status of Cameroon's
  data-protection law and any supervisory authority.* See [[cameroon--dpi-id]]. (Recorded CMR/CIV batch, 2026-07-15.)

- **GAP-BFA-001 · Burkina Faso CIB-AES biometric ID — vendor/technology unconfirmed.** The AES biometric
  card ([[cib-aes]], [[oni-burkina-faso]]) rollout is well-documented, but no source in hand confirms the
  **vendor or technical platform** — "Emptech" appears only in a source's keyword list, not its body. *Lead:
  consider sourcing a government/vendor primary on the CIB-AES production contract and platform (and whether it
  shares the AES common-passport vendor).* See [[burkina-faso--dpi-id]]. (Recorded BFA/BWA batch, 2026-07-15.)

- **GAP-BDI-001 · Burundi biometric national ID — no confirmed vendor, technology or firm launch date.**
  The rollout has slipped repeatedly (2023: "before 2025"; May 2024: not ready for the 2025 voter enrolment;
  Jan 2026: "pilot testing in ~a dozen communes"), but no source names the **vendor/platform** (e.g. MOSIP or
  other) or a firm national-launch date. *Lead: consider sourcing a government/vendor primary on the biometric-
  ID system's technology and timeline.* See [[burundi--dpi-id]]. (Recorded BEN/BDI batch, 2026-07-15.)

- **GAP-BDI-002 · Burundi–Vietnam digital-cooperation MoU referenced, not sourced.** The IFC piece notes
  Burundi "concluded a Memorandum of Understanding with Vietnam to sharpen collaboration on digital projects"
  (~late 2024), but the wiki holds no source or detail on it. *Lead: consider sourcing the Burundi–Vietnam
  digital MoU (scope, date) — a geopol. thread worth anchoring if it recurs.* (Recorded BEN/BDI batch, 2026-07-15.)

- **GAP-AGO-001 · Unitel–Ericsson network-modernisation deal unsourced.** A 2025 Unitel–Ericsson mobile
  network-modernisation partnership appears in the source datasets (Ericsson press-release URL) but was not
  fetched into this batch, so [[unitel]] carries the claim without a dated source page. *Lead: consider
  sourcing the Ericsson/Unitel primary and adding a source page.* (Recorded AGO batch, 2026-07-15.)

- **GAP-AGO-002 · Angola's foundational digital-ID stack — whose technology?** Sources describe two
  different foreign stacks without reconciling them: a **Chinese-devised civil-registration system** (state-
  owned CEIEC won the contract Nov 2019; live in Luanda 2020) and a **2025 India pivot** to model the digital
  ID on **Aadhaar** under the $200m DPI credit ([[angola-india-dpi-credit-line]]; MOSIP context). These may be
  complementary (China = civil registration/CRVS; India = future foundational digital ID) or a hand-off — no
  single source clarifies which stack underpins the **Bilhete de Identidade (BI)** / planned digital ID.
  *Lead: consider sourcing a primary (INFOSI / Ministry / vendor) that states the current and planned digital-ID
  platform; watch for a China↔India stack contradiction as it develops.* See [[angola--dpi-id]]. (Recorded AGO
  batch, 2026-07-15.)

- **GAP-DZA-001 · Algeria data-governance framework — "JO-87" vs Presidential Decree 25-350.** The
  We Are Tech Africa report anchors the national data-governance framework in **Presidential Decree
  No. 25-350 (30 Dec 2025)**, but an earlier LinkedIn lead referenced a **"JO-87" national
  data-governance / cyber strategy** — not held as a source. *Lead: confirm whether JO-87 (an
  Official-Journal issue?) and Decree 25-350 denote the same instrument or two distinct texts, and
  source the primary if they differ.* See [[algeria-data-governance-framework]]. (Recorded DZA batch,
  2026-07-15.)

- **GAP-DJI-001 · Djibouti D-Money port-payment launch — publication year unconfirmed.** The
  Developing Telecoms report of Djibouti Telecom extending **D-Money** to port workers (launched by
  PM Abdoulkader Kamil Mohamed "on 11 December") carries **no year** in the clip; the source page is
  dated **2021-12-11** with `date_source: proxy` on an inferred year. *Lead: confirm the true
  publication/launch year from the Developing Telecoms article (id 15938) or a Djibouti Telecom /
  DPCS primary, and correct the source date if wrong.* See [[djibouti-telecom]], [[djibouti--dpi-pay]].
  (Recorded DJI/CPV batch, 2026-07-15.)

- **GAP-CAF-001 · SOCATEL "National Digital Hub" (planned Tier III data centre) unsourced.** The
  CAF dataset lists a planned **SOCATEL National Digital Hub** (Tier III DC, Bangui) — noted on
  [[socatel]] — but no dated primary confirms it; CAR currently has **no national data centre** (per the
  2022 [[greater-internet-freedom]] baseline). *Lead: consider sourcing a SOCATEL / ministry primary on
  the planned Bangui data centre; until then the claim stays flagged, not asserted.* (Recorded CAF batch,
  2026-07-15.)

- **GAP-GAB-001 · Gabon data-protection law/authority — asserted but unsourced.** The WB
  [[digital-gabon-project]] is explicitly building "data protection and cybersecurity foundations,"
  and Gabon is tagged [[gov.protect]], but the wiki holds **no primary on Gabon's actual
  data-protection law or supervisory authority** — the fast-moving CNIE/NIP, RSU and SIGFIP builds are
  proceeding without a confirmed operative DP regime on file. *Lead: consider sourcing Gabon's
  data-protection statute and any authority (e.g. CNPDCP-equivalent).* See [[GAB]], [[gabon--dpi-id]].
  (Recorded GAB batch, 2026-07-15.)

- **GAP-GAB-002 · Gabon CNIE/NIP enrolment coverage — no published figure.** The digital-ID relaunch
  is the flagship DPI component, and the WB results framework targets a "% of population 16+ with a
  NIP," but that indicator was at **baseline (0) as of Dec 2024** and no source in hand gives a current
  enrolment/coverage number. *Lead: consider sourcing a dated NIP/CNIE coverage figure (DGDI / ANINF /
  WB ISR).* See [[gabon--dpi-id]]. (Recorded GAB batch, 2026-07-15.)

- **GAP-GAB-003 · Gabon ID stack — vendor roles under-disambiguated + Visa digital-ID leg unsourced.**
  Secondary coverage credits card/software supply to **[[in-groupe]]** (French) while reporting
  **[[thales]]** (French) is resuming its **historical registry** contract (post-Semlex) — the two
  roles (credential vs registry) are distinct but never cleanly separated, and no primary award is on
  file. Separately, the **[[gabon-visa-partnership-deal]]** "secure digital-identity system" element is
  reported only second-hand. *Lead: consider sourcing the primary CNIE contract award(s) to pin who
  supplies what, and a Visa/Gabon primary for the ID element.* See [[gabon--dpi-id]]. (Recorded GAB
  batch, 2026-07-15.)
