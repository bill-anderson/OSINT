---
type: source
date_precision: day
date_source: source
places: [RWA]
topics: [dpi.mis, dpi.registry, dpi.id]
entities: [[nida-rwanda], [nisr], [irembo]]
ingested: 2026-07-16
lens: []
body_completeness: full
page: 
title: Interoperability of CRVS and EIR systems for improved EPI management in Rwanda
author: Max Krafft
published: 2022-04-28
accessed: 2026-07-16
source: https://dhis2.org/rwanda-crvs-eir-integration/
keywords: 
---

# Interoperability of CRVS and EIR systems for improved EPI management in Rwanda - DHIS2

> ## Excerpt
> Rwanda integrates electronic birth and vaccine registry systems to reduce workload, improve data quality and help reach unvaccinated and undervaccinated children 28 Apr 2022 Impact Stories The EPI Pro

---
![](https://dhis2.org/wp-content/uploads/Rwanda-CRVS-and-EIR-integration-diagram.png)

Rwanda integrates electronic birth and vaccine registry systems to reduce workload, improve data quality and help reach unvaccinated and undervaccinated children

28 Apr 2022 Impact Stories

The EPI Program in Rwanda has been one of the early adopters of the [DHIS2 Electronic Immunization Registry (EIR) Tracker package](https://dhis2.org/metadata-package-downloads#eir), which supports tracking of children vaccinated throughout the routine vaccination schedule. Since 2019, the EIR has been rolled out in all public and private health facilities that offer routine vaccine services. These service providers enter real-time updates of the vaccination details in DHIS2 every time a child is vaccinated. The existence of this system laid the groundwork for Rwanda’s effective use of DHIS2 to [manage its national COVID-19 vaccination campaign](https://dhis2.org/rwanda-covid-vaccination/).

However, during the COVID-19 outbreak, Rwanda’s routine EIR faced completeness issues that affected the quality of data in the system, specifically the ability to uniquely identify all target children, which affected completeness and calculation of coverage rates. [Interoperability](https://dhis2.org/integration/) of the EIR with Rwanda’s electronic Civil Registration and Vital Statistics (CRVS) system was proposed as a means to uniquely identify and automatically register children in the EIR, thus improving completed of child vaccination data and helping the EPI program triangulate their data to identify unvaccinated or partially vaccinated children for follow up.

#### Building on a strong foundation of existing electronic systems and local capacity

![](https://dhis2.org/wp-content/uploads//Rwanda-CRVS-EIR-integration-timeline-e1651153504162-720x302.png)

_The timeline for integration CRVS and EIR systems in Rwanda_

Rwanda launched an ambitious eHealth strategic plan in 2016, which included the digitization of CRVS data. The National Institute of Statistics of Rwanda (NISR), in collaboration with the Ministry of Local Government, the Ministry of Health, and Nation Identification Agency (NIDA), developed a web-based application system to facilitate the collection, storage, and production of data on civil status events. The NCI-CRVS System, launched in 2020, allows for interoperability between the CRVS and Rwanda’s National Person Registry (NPR) using a unique identification number assigned at birth.

While a wide range of events are planned for inclusion in this system, birth and death (including cause of death) were the first two modules to be deployed. For birth, registration is done at the health facility. The baby’s mother (or the person accompanying the mother) provides his or her telephone number to the nurse, who enters the newborn’s information into the CRVS system. Once the registration is complete, a message is sent to the parent or guardian with the child’s national registration number. They can then request the child’s digital birth certificate through an online portal, Irembo, where it can be viewed as many times as needed.

Rwanda has used DHIS2 as the national routine Health Management Information System (HMIS) since 2012, which includes both aggregate and individual-level (Tracker) data for a variety of health programs, including using [DHIS2 for immunization management.](https://dhis2.org/immunization/) In 2019, the national EPI Program began rolling out an EIR based on [DHIS2 Tracker](https://dhis2.org/tracker/), with trainings delivered at public and private health facilities and cell levels nationwide. The EIR helps health facility managers improve birth notification and vaccination schedule compliance, and improve vaccination coverage overall through improved individual case management and monitoring of dropouts rates.

While both of these systems were helpful on their own, the lack of integration between the EIR and CRVS systems led to some challenges. These included missing unique identifiers for some newborns in the EIR, and double data entry for data managers who were required to capture data for the same child in both the DHIS2 EIR and CRVS systems.

#### Linking CRVS and EIR systems to reduce workload, improve data quality and reach unvaccinated and undervaccinated children

[HISP Rwanda](https://dhis2.org/hisp-network/) supported health authorities in Rwanda with the integration of the EIR and CRVS systems in 2021 and early 2022. The interoperability between these systems resulted in a simplified process for registering births and vaccinations of newborn children:

#### Building on a strong foundation of existing electronic systems and local capacity

-   A baby born at a health facility is notified in CRVS by a data manager and registered by a Health Center Head or Nursing & Midwife Director
-   A unique number National Id Number (NIN) is issued
-   The NIN is used in the Irembo portal to request a birth certificate
-   A custom script pushes data on all registered newborns from the CRVS system to the DHIS2 EIR Tracker in the national HMIS system
-   During vaccination, a newborn’s recording is accessed and updated in DHIS2 using his or her NIN

![](https://dhis2.org/wp-content/uploads//Rwanda-CRVS-and-EIR-integration-diagram-720x390.png)

_Diagram showing the integration of Rwanda’s CRVS and EIR systems_

In addition to reducing workload by eliminating double data entry for child registration at health facilities, the CRVS and EIR integration has resulted in several improvements to program management and service delivery. Configuration of automatic birth notifications in the EIR tracker can be used for follow up, helping to identify “zero dose”children and missing doses by comparing birth registry and immunization records, which are now both available in the same DHIS2 system. It also helps improve data quality, by providing a more accurate denominator for measuring vaccine coverage, with actual births replacing annual population forecasts from census data, and by providing immunization data in real-time in the HMIS instead of monthly updates from aggregate reports.

As of April 2022, the configuration of the CRVS-EIR integration in Rwanda is complete, and has been tested and validated by EPI supervisors at health facilities. End users completed training on how to retrieve data from birth registrations in DHIS2 and use it to enroll children in immunization programs.

![](https://dhis2.org/wp-content/uploads/Rwanda-2022-CRVS-EIR-integration-training-1.jpg)

_HISP Rwanda offers training on the CRVS and EIR integration to EPI teams in Rwanda_
