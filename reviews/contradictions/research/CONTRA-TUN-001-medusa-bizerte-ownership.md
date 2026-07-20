---
type: review-research
id: CONTRA-TUN-001-medusa-bizerte-ownership
generated: 2026-07-20
method: Exa search + fetch
status: DO-NOT-INGEST (quarantined synthesis — never cited from a wiki page; primaries extracted to new/)
---

## Verdict: RESOLVED — Orange Tunisia owns and operates the Bizerte landing station and is the Tunisian landing party; Tunisie Telecom is a customer that bought a dedicated fibre pair on the same segment. Not a factual conflict — two operators describing different roles in the same project.

The "possible reconciliation" hypothesised in the brief is correct, and the cable system's own
operator (Medusa Submarine Cable System / AFR-IX Telecom, the announcer of record) documents both
roles separately and unambiguously in its own press releases.

**The landing party.** On 2023-05-11 Orange Tunisia and Medusa signed the agreement under which
Orange Tunisia *hosts* the Bizerte landing — Medusa's own release is titled "Orange Tunisia signs an
agreement with Medusa Submarine Cable System to **host** the new submarine cable in Bizerte," and
Medusa CEO Norman Albi is quoted saying Orange Tunisia "will develop this new infrastructure." The
Tunisian segment is branded **ViaTunisia** (Marseille–Bizerte, ~1,050 km), built under a €10m EU
Connecting Europe Facility grant **signed by Orange in December 2022** covering 30% of construction
and management costs. The CEF grant being held by Orange is decisive: the EU co-financed *Orange's*
landing infrastructure, not Tunisie Telecom's.

**The fibre-pair customer.** On 2025-02-07 (announced 2025-02-10) Tunisie Telecom signed a separate
"strategic partnership agreement" with Medusa covering "the supply and operation of a **dedicated
fiber-optic link** between Bizerte and Marseille, with a capacity of 20 Tbps." That is a capacity
purchase on an open, carrier-neutral system — not ownership of the landing station or of the
Tunisian section.

**Why both claimed the landing.** Medusa's landing announcement of 2025-11-01 (event 2025-10-31)
quotes *both* CEOs — Lassâad Ben Dhiab of Tunisie Telecom and Stéphane Varret of Orange Tunisia —
at the same ceremony. Each operator's own PR then re-cut that shared event around itself, and TAP /
Zawya picked up the Tunisie Telecom cut while Capacity / Connecting Africa picked up the Orange cut.
Neither is false; each is partial. Tunisie Telecom's "eightfold increase in *our* international
capacity" is a claim about **its own** capacity via its purchased pair, not about ownership.

**A note on dates.** Medusa is carrier-**neutral** and describes itself as "a private, independent
and neutral submarine infrastructure operator," which is what makes the split roles ordinary rather
than contradictory: the system owner (AFR-IX/Medusa) is distinct from the landing party (Orange
Tunisia) and from the capacity buyers (Tunisie Telecom). Note also that DataCenterDynamics carries
2026-05-21 timestamps on articles reporting the 2025 landing and the Feb-2025 TT agreement — those
are re-publication artefacts, **not** event dates. The events are 2025-10-31 (landing) and
2025-02-07 (TT signature).

## Competing claims → reconciled reading

| Claim as asserted | Asserted by | Reconciled reading |
|---|---|---|
| Tunisie Telecom landed Medusa in Bizerte | Tunisie Telecom via TAP/Zawya, 2025-11-03 | Tunisie Telecom **participated in** the landing ceremony of 2025-10-31 as a capacity partner. It did not land the cable. |
| Tunisie Telecom owns a 22 Tbps Bizerte–Marseille fibre pair, capacity up 8× | Tunisie Telecom, 2025-11-03 | Substantially correct as to **its own** capacity. Medusa's own record (2025-02-10) states **20 Tbps**, not 22 — see flagged discrepancy below. |
| Orange Tunisia owns the Tunisian section and the Bizerte landing station | Orange Tunisia via Connecting Africa / TechAfrica, 2026-06 | **Correct.** Confirmed by Medusa's 2023-05-11 hosting agreement and by Orange holding the Dec-2022 CEF grant for ViaTunisia. |
| Orange is landing partner at both Marseille and Bizerte | Orange, 2026-06-03 | **Correct**, per Orange's own RFS press release. |
| EBRD loan finances "the Tunisia connection" via Tunisie Telecom | techafricanews, 2026-01-19 | **Out of scope for this dispute and likely conflated.** ViaTunisia's construction financing is the EU CEF grant to Orange. Any EBRD facility to Tunisie Telecom is a separate corporate/network loan — not the landing station's financing. Treat as unverified; see gap below. |
| Tunisian section = 1,040 km / 24 Tbps max for Orange | submarinenetworks / Capacity, 2025-11 | Consistent — 24 Tbps is Orange's own maximum across multiple pairs; ~1,040–1,050 km is the ViaTunisia segment length. |

**Ownership stack, as of 2026-06:** Medusa system owner = AFR-IX Telecom (Dublin) → Tunisian
segment "ViaTunisia" landing party and landing-station owner/operator = Orange Tunisia → dedicated
fibre-pair customer on that segment = Tunisie Telecom.

## Flagged for the curator (not actioned)

- **New minor contradiction — TT fibre-pair capacity.** Medusa's own 2025-02-10 release says
  **20 Tbps**; the wiki brief and some trade press say **22 Tbps**; Orange's segment maximum is
  **24 Tbps**. Prefer Medusa's 20 Tbps (announcer of record, dated 2025-02-10) unless a later
  primary upgrades it.
- **Gap — EBRD financing.** No primary located for the EBRD €190m / Tunisie Telecom claim. Worth
  sourcing from EBRD's own project database before the wiki repeats it as landing-station financing.

## Sources consulted

**Primary — extracted to `new/`:**
- "Orange Tunisia signs an agreement with Medusa Submarine Cable System to host the new submarine cable in Bizerte" — Medusa Submarine Cable System, 2023-05-11 — https://medusascs.com/news/orange-tunisia-signs-an-agreement-with-medusa-submarine-cable-system-to-host-the-new-submarine-cable-in-bizerte/ → `new/2023-05-11-orange-tunisia-medusa-bizerte-hosting-agreement.md`
- "Tunisie Telecom joins Medusa Submarine Cable System" — Medusa Submarine Cable System, 2025-02-10 — https://medusascs.com/news/tunisie_telecom_joins_medusa/ → `new/2025-02-10-tunisie-telecom-joins-medusa-fibre-pair.md`
- "Medusa Submarine Cable System Lands in Bizerte, the first landing point in Africa" — Medusa Submarine Cable System, 2025-11-01 — https://medusascs.com/news/medusa-submarine-cable-system-lands-in-bizerte/ → `new/2025-11-01-medusa-lands-in-bizerte.md`

**Consulted, not extracted (corroborating or re-report):**
- "ViaTunisia subsea segment reaches ready for service" — Orange press release, republished by Light Reading, 2026-06-03 — https://www.lightreading.com/cable-technology/viatunisia-subsea-segment-reaches-ready-for-service (Orange's own release; orange.com original at https://www.orange.com/en/press-release/viatunisia-subsea-segment-reaches-ready-for-service-475797 is bot-blocked. Confirms Dec-2022 CEF grant to Orange and Orange's Marseille infrastructure, but does not itself state Bizerte landing-station ownership — the ownership point rests on the 2023 Medusa release, which is clipped.)
- "MEDUSA Cable Lands in Bizerte, Tunisia" — Submarine Networks, 2025-11-04 — https://www.submarinenetworks.com/en/systems/asia-europe-africa/medusa/medusa-cable-lands-in-bizerte,-tunisia (trade press; states plainly "Orange Tunisia is the landing party in Tunisia, owns and manages the Bizerte cable landing station")
- "ViaTunisia" — Submarine Networks system record — https://www.submarinenetworks.com/en/systems/asia-europe-africa/viatunisia
- "Tunisie Telecom Takes a Fiber Pair on Medusa Submarine Cable System" — Submarine Networks, 2025-02-21 — https://www.submarinenetworks.com/en/systems/asia-europe-africa/medusa/tunisie-telecom-takes-a-fiber-pair-on-medusa-submarine-cable-system
- "Orange Tunisia welcomes Medusa subsea cable in Bizerte" — Capacity, 2025-11-03 — https://capacityglobal.com/news/medusa-subsea-orange-tunisia/
- "Tunisie Telecom joins Medusa submarine cable system" — DataCenterDynamics — https://www.datacenterdynamics.com/en/news/tunisie-telecom-joins-medusa-submarine-cable-system/ ("Orange Tunisie was announced as the landing partner and owner of the Tunisia branch of the Medusa cable in 2023")
- "ViaTunisia segment of Medusa subsea cable is now live" — Developing Telecoms, 2026-06-04 — https://developingtelecoms.com/telecom-technology/optical-fixed-networks/20341-viatunisia-segment-of-medusa-subsea-cable-is-now-live.html
- "Tunisie Telecom announces landing of Medusa submarine cable in Bizerte" — TAP via Zawya, 2025-11-03 — https://www.zawya.com/en/economy/north-africa/tunisie-telecom-announces-landing-of-medusa-submarine-cable-in-bizerte-uuoux8vs (one of the two disputed sources)
- "Medusa's ViaTunisa subsea cable now live" — Connecting Africa, 2026-06-05 — https://www.connectingafrica.com/connectivity/medusa-s-viatunisa-subsea-cable-now-live (one of the two disputed sources)
