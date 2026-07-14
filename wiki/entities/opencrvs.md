---
type: entity
entity_type: resource
title: OpenCRVS
url: https://www.opencrvs.org
places: [XGL, UGA, MDG]
topics: [dpi.registry, dpi.id, dpi.exchange]
status: active
last_reviewed: 2026-07-11
sources: [[2026-07-02 OpenCRVS v2.0 Product Launch Webinar - The Next Generation of Civil Registration]]
---

# OpenCRVS

An open-source civil-registration (birth/death/vital-events) platform positioned as a
**digital public good** and a foundational building block of national DPI. Donors include
**NORAD**, the **[[gates-foundation]]** and Co-Develop. It is designed to give countries
sovereignty over their civil-registration systems and to avoid vendor lock-in, and
interoperates with the identity-management layer ([[mosip]]) to form a foundational-ID
ecosystem.

## Activity in this wiki

- **v2.0 launched (2026-07-02).** A full re-architecture (not an upgrade) — "the biggest
  evolution since original launch." Key capabilities: **configurable workflows and
  jurisdictions** (country-specific approval paths, no custom code), **enhanced offline
  registration** (register and print certificates before central-system sync), and
  **verifiable credentials with selective disclosure** (privacy-preserving digital
  certificates). Built for national scale (benchmarked >1m records, 1,000+ concurrent users,
  zero errors on a two-node setup) and secure-by-design. See [[dpi.registry]], [[dpi.id]],
  [[dpi.exchange]], [[infra.cybersec]]. Source:
  [[2026-07-02 OpenCRVS v2.0 Product Launch Webinar - The Next Generation of Civil Registration]].
- **Independent security test (Orange Cyber Defense, May 2026).** External penetration test
  returned **zero critical and zero high-severity findings** (medium items mostly reflect
  deliberate offline-capability trade-offs). Source:
  [[2026-07-02 OpenCRVS v2.0 Product Launch Webinar - The Next Generation of Civil Registration]].
- **African deployments.** **Uganda ([[UGA]])** via NIRA, and **Madagascar ([[MDG]])** — whose
  requirements (in-system late-registration approval; offline operation given ~60% unreliable
  connectivity) shaped v2.0 features. The [[world-bank]] frames OpenCRVS + [[mosip]] as
  paired digital public goods for the civil-registration + national-ID ecosystem. Source:
  [[2026-07-02 OpenCRVS v2.0 Product Launch Webinar - The Next Generation of Civil Registration]].

## Sources

- [[2026-07-02 OpenCRVS v2.0 Product Launch Webinar - The Next Generation of Civil Registration]]
