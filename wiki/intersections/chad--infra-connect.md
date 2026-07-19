---
type: intersection
title: Chad × Connectivity
place: TCD
topic: infra.connect
places: [TCD]
topics: [infra.connect, include.divides, include.access, data.satellite, gov.regional, gov.standards, digital.rural]
entities: [[sotel-tchad], [airtel-chad], [moov-africa-chad], [arcep-chad], [trans-saharan-fibre-backbone], [starlink], [tchadix]]
lens: [sovereignty]
status: active
last_reviewed: 2026-07-19
sources: [[2025-03-19-starlink-license-chad-launch-niger], [2025-07-05-tchadinfos-starlink-services-disponibles], [2025-09-29-digitalbusiness-starlink-fai-vers-operateur-telecom], [2025-09-02-afriqueitnews-operateurs-connecter-fibre-nationale], [2026-02-09-connectingafrica-fibre-ndjamena-mbere-cameroun], [2026-05-21-digitalbusiness-tchadix-ixp-un-an], [2026-06-02-salaminfo-banque-mondiale-routes-virtuelles-patn], [2026-06-19-techafricanews-arcep-plateformes-regulation-strategiques], [2026-06-26-connectingafrica-telcos-network-upgrades-airtel-moov], [2025-02-12-coupure-internet-lac-internet-society], [2025-12-16-tchadinfos-atelier-cartographie-fibre-artac-uit], [2026-01-11-tchadinfos-dts-degradations-site-bol], [2025-03-07-trans-saharan-fiber-project-delays]]
---

# Chad × Connectivity

Landlocked Chad (~**13% internet penetration**, 2025) depends on a **single international route
through Cameroon**, a stalled trans-Saharan backbone, and — increasingly — **Starlink**. The state is
building fibre (PMICE/PATN) and an **IXP**, but the operator relationship is adversarial: repeated
ultimatums over quality, power and sovereignty.

## Starlink — licence → launch → operator?

- **Licensed (Nov 2024, confirmed Mar 2025) → launched (4 Jul 2025).** Chad's Ministry of Telecoms
  confirmed **Starlink**'s operating licence (approved Nov 2024) and Minister Boukar Michel officialised
  the **commercial launch** with a tariff grid (Jul 2025). By **Sep 2025**, regulators floated upgrading
  Starlink from **ISP to a full telecom operator** under ARCEP. See [[data.satellite]], [[geopol.usa]].
  (Usage conditions — ID via ARCEP, 24-month log retention — are covered under [[chad--gov-protect]].)
  Sources: [[2025-03-19-starlink-license-chad-launch-niger]], [[2025-07-05-tchadinfos-starlink-services-disponibles]],
  [[2025-09-29-digitalbusiness-starlink-fai-vers-operateur-telecom]].

## The fibre backbone and the single door

- **Trans-Saharan Backbone (DTS).** Chad's DTS component (launched May 2023, CGPS/LORYNE) links Chad to
  the Mediterranean network via **Niger** — but was only **32% complete (Mar 2025**, government pressing
  contractors) rising to ~60% by 2026, and a Jan-2026 mission found **vandalism/degradation** at the
  **Bol** technical site (Lac). Sources: [[2025-03-07-trans-saharan-fiber-project-delays]],
  [[2026-01-11-tchadinfos-dts-degradations-site-bol]].
- **The Cameroon lifeline.** The **N'Djamena–Mberé** route to Cameroon is **the only entry point for
  international submarine-cable capacity** — but the underlying **Apr-2025 MoU was suspended by [[arcep-chad|
  ARCEP]]** over clauses deemed **contrary to national digital sovereignty**; government pressed Sotel and
  Airtel to fast-track a revision (Feb 2026). See [[gov.regional]]. Source:
  [[2026-02-09-connectingafrica-fibre-ndjamena-mbere-cameroun]].
- **PMICE / PATN and the white zones.** The state ordered operators onto the national PMICE fibre (1,275
  km; 7-day ultimatum, Sep 2025); the World Bank **PATN** ([[chad-digital-transformation-project]])
  "virtual roads" mission (Jun 2026) targets ~**500 zones blanches** (fully offline localities). See
  [[digital.rural]]. Sources: [[2025-09-02-afriqueitnews-operateurs-connecter-fibre-nationale]],
  [[2026-06-02-salaminfo-banque-mondiale-routes-virtuelles-patn]].
- **TCHADIX IXP.** ADETIC's **[[tchadix]]** internet exchange point marked its **first year** (May 2026)
  — localising national traffic to cut dependence on international routes and improve cost/quality; data
  governance flagged as a strategic priority. See [[dpi.exchange]]. Source:
  [[2026-05-21-digitalbusiness-tchadix-ixp-un-an]].
- **Regional fibre mapping.** N'Djamena hosted an **ARTAC/ITU/ARCEP** Central-Africa fibre-mapping
  workshop (Dec 2025) toward regional planning and universal connectivity. See [[gov.regional]]. Source:
  [[2025-12-16-tchadinfos-atelier-cartographie-fibre-artac-uit]].

## Operators, quality and the power problem

- **Adversarial regulation.** Government has repeatedly **reprimanded [[airtel-chad|Airtel]] and
  [[moov-africa-chad|Moov Africa]]** over poor QoS (frequent outages, slowness, high tariffs) — most
  bluntly in Jun 2026, rejecting **fuel-supply** excuses and ordering Moov to **migrate transmission
  sites to solar/wind**. [[arcep-chad]] inaugurated **real-time monitoring platforms** (traffic/spectrum/
  QoS/VSAT, Jun 2026). See [[infra.energy]], [[gov.standards]]. Sources:
  [[2026-06-26-connectingafrica-telcos-network-upgrades-airtel-moov]], [[2026-06-19-techafricanews-arcep-plateformes-regulation-strategiques]].

## The Lac shutdown

- **Three-month internet blackout.** Lac province was **cut off from the internet from 28 Oct 2024**;
  by Feb 2025 (>3 months) **Internet Society Chad** raised the alarm — security reasons cited, but the
  duration isolated thousands from communication, education and the economy ("internet is a fundamental
  right"). See [[include.access]], [[gov.protect]]. Source: [[2025-02-12-coupure-internet-lac-internet-society]].

## Reads

- `sovereignty`: Chad's connectivity is a **single-point-of-failure** system (one international route,
  a stalled backbone, vandalised sites) — which is exactly why the sovereignty framing bites: an IXP to
  keep traffic home, a suspended Cameroon MoU over "sovereignty clauses," and Starlink as a hedge. But
  the everyday reality is worse — reprimanded operators, diesel-dependent towers, and a province blacked
  out for months. Ambition (PMICE/PATN, IXP) runs well ahead of a fragile, adversarial delivery base.

## Links

Place: [[TCD]] · Concepts: [[infra.connect]] · [[include.divides]] · [[data.satellite]] · Intersections:
[[chad--gov-protect]] · [[chad--dpi-pay]] · Entities: [[sotel-tchad]] · [[airtel-chad]] ·
[[moov-africa-chad]] · [[arcep-chad]] · [[starlink]] · [[tchadix]]
