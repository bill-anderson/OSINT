---
type: source
title: "Health Data Without Continuity: Why Electronic Health Records Still Have Not Scaled Across Africa"
publisher: Tech Africa News
url: https://techafricanews.com/2026/04/23/health-data-without-continuity/
date_precision: day
date_source: source
author: Joyce Onyeagoro
published: 2026-04-23
accessed: 2026-07-11
ingested: 2026-07-11
places: [XAF, RWA, ETH, NGA, KEN, ZAF]
topics: [dpi.mis, dpi.exchange, gov.standards, infra.connect, infra.energy, dpi.id]
entities: [[dhis2], [africa-cdc]]
lens: []
body_completeness: full
---

<!-- EHR interoperability the least-resolved DPI layer; OpenMRS/DHIS2/proprietary systems siloed. >50% of African facilities lack power/internet (Africa CDC's Nsengimana); duplicate testing ~5-10% of diagnostic budgets. Rwanda/Ethiopia/Nigeria/Kenya/SA progress. -->

## #TechTalkThursday

> The technology required to address this gap is already available. What has been missing is the alignment of governance, infrastructure investment, interoperability standards, and workforce integration needed to deploy it effectively at scale.

Health systems depend on continuity of information. In much of Africa, that continuity does not exist. Patient data remains fragmented across facilities, programmes, and paper records, limiting the ability of clinicians to make informed decisions at the point of care. The result is a system where clinical history is often incomplete, treatment pathways are difficult to track, and avoidable inefficiencies are built into everyday service delivery.

This fragmentation is not a marginal issue. It affects diagnostic accuracy, treatment safety, and long-term disease management at scale. It also imposes a measurable financial burden, with duplicated tests and repeated procedures consuming resources that health systems can ill afford to lose.

Electronic health records are widely recognised as the foundation for addressing this gap. In principle, they enable a single, longitudinal view of the patient across providers and over time. In practice, however, implementation across Africa has been uneven, fragmented, and difficult to scale.

In this #TechTalkThursday article, we examine what functional digital health records actually require, why adoption has been slow across African health systems, and what it would take to build the interoperable health data infrastructure needed to support care for a population of more than 1.4 billion people.

### What an Electronic Health Record System Actually Is

An electronic health record, or EHR, is not simply a digitised version of a paper file. It is a structured, longitudinal system that captures and organises clinical data across the full history of a patient’s interactions with the health system. This includes diagnoses, medications, allergies, laboratory results, imaging, immunisation records, and clinical notes.

For an EHR system to function as intended, several interdependent layers must work together:

- **Data capture layer:** Software that structures and records clinical information in a consistent format
- **Identity layer:** A reliable way to link each record to a unique patient through national ID systems, biometrics, or health identifiers
- **Connectivity layer:** Infrastructure that ensures access at the point of care, including in low-connectivity environments
- **Interoperability layer:** Standards that allow different systems to exchange and interpret data accurately
- **Governance layer:** Policies that define data ownership, access rights, privacy, and security

Interoperability remains the most critical and least resolved component. Multiple EHR platforms are deployed across Africa, including OpenMRS, DHIS2, and various proprietary national systems. In most cases, these platforms operate independently. Data created in one system is not accessible in another. Digitisation, without interoperability, produces isolated data environments rather than a connected health system.

### The Scale of the Gap and What It Costs

The absence of longitudinal patient records has direct clinical consequences. Evidence from The Lancet Digital Health indicates that fragmented health data contributes to avoidable drug interactions, missed diagnoses, and repeated diagnostic procedures, particularly in the management of chronic conditions such as HIV, tuberculosis, and diabetes.

The financial impact is equally significant. Duplicate laboratory testing, often necessary because prior results are unavailable, is estimated to consume between 5 and 10 percent of diagnostic budgets in systems without functional EHR infrastructure. In resource-constrained environments, this represents a structural inefficiency rather than an operational inconvenience.

The COVID-19 pandemic exposed these limitations at system level. Without integrated digital health data, many countries faced challenges in tracking disease spread, identifying at-risk populations, and allocating vaccines effectively. Where digital infrastructure existed, response efforts were more coordinated and data-driven.

### Why Implementation Keeps Stalling

The barriers to EHR adoption at scale are structural and persistent.

At the infrastructure level, **unreliable electricity and limited connectivity** remain foundational constraints. Digital systems cannot function consistently in environments where power supply is unstable or network access is intermittent. Many deployments have failed not because of software limitations, but because the operating environment could not sustain them.

**Device availability** presents a second constraint. In many public health facilities, clinicians do not have consistent access to computers or tablets. Where devices are introduced through external funding, maintenance and replacement cycles are rarely accounted for, leading to rapid degradation in functionality.

> “You realize that there are still connectivity gaps, there are computer capacity, storage, and computers, especially during this AI time. But the fact that more than 50% of our health facilities on the continent are not yet connected to power or to the internet shows that there is an infrastructure gap.”
> 
> **– Jean-Philbert Nsengimana, Chief Digital Advisor,** [**Africa CDC**](https://youtu.be/hMnHtVqGx9E)

**System fragmentation,** driven largely by donor-funded vertical programmes, has further complicated implementation. Separate platforms for HIV, maternal health, malaria, and other priority areas have been developed in parallel, often without shared standards or integration pathways. The result is a proliferation of databases that collectively hold significant volumes of health data but cannot be effectively combined.

Human factors also play a critical role. EHR systems that increase administrative workload, lack offline functionality, or fail to align with clinical workflows face low adoption rates. In practice, health workers revert to paper-based processes when digital systems do not provide immediate and tangible value.

### Where Progress Is Being Made

Despite these challenges, several countries have demonstrated measurable progress.

In Rwanda, a coordinated national approach has enabled the deployment of interoperable digital health systems across a large proportion of facilities. Mobile-based tools used by community health workers feed into centralised dashboards, providing near real-time visibility into health system performance. Ethiopia has implemented one of the largest deployments of [DHIS2 on the continent,](https://www.bing.com/ck/a?!&&p=e15461aca71042e348c1813c0b377d9cfc270224929e91bbbb73c5082f040d4eJmltdHM9MTc3NjgxNjAwMA&ptn=3&ver=2&hsh=4&fclid=3814acbe-c342-6fca-3d7c-bb8dc2646e19&psq=Ethiopia+has+implemented+one+of+the+largest+deployments+of+DHIS2+on+the+continent%2c&u=a1aHR0cHM6Ly9kaGlzMi5vcmcvZW5oYW5jaW5nLWhlYWx0aGNhcmUtaW4tZXRoaW9waWEtdXNpbmctZGhpczIv) strengthening disease surveillance and health system monitoring, even though patient-level records remain incomplete.

In Nigeria, electronic medical record initiatives have gained traction in tertiary institutions, supported by the Federal Ministry of Health, although integration at the primary healthcare level is still developing. Kenya and South Africa have established national digital health strategies that include interoperability frameworks, though implementation timelines have extended beyond initial targets.

Across these examples, progress has depended less on the sophistication of the technology and more on three consistent factors:

- Strong national leadership and policy direction
- Clear interoperability standards and enforcement
- Sustained investment in training and system integration

### Conclusion: An Operational Necessity, not a Future Goal

Electronic health records are no longer a forward-looking ambition. They are a core component of functional health systems. Without them, clinical decision-making remains constrained, health systems cannot learn from accumulated data, and inefficiencies continue to absorb limited resources. The absence of connected health data infrastructure limits both individual patient care and system-wide planning.

The technology required to address this gap is already available. What has been missing is the alignment of governance, infrastructure investment, interoperability standards, and workforce integration needed to deploy it effectively at scale.

As Africa’s population grows and the burden of chronic disease increases, the ability to access, share, and act on clinical information will become more critical. Health systems that cannot do so will struggle to deliver consistent, high-quality care.

The question is no longer whether electronic health records are needed. It is whether their implementation can continue to be delayed without compounding long-term costs to both patients and health systems.