---
type: source
title: "Senegalese Data Breaches Expose Lack of Security Maturity"
url: https://www.darkreading.com/cyberattacks-data-breaches/hackers-breach-senegal-national-biometric-database
publisher: Dark Reading
published: 2026-02-12
date_precision: day
date_source: source
ingested: 2026-07-20
places: [SEN]
topics: [dpi.id, infra.cybersec, gov.protect, dpi.registry, gov.policy]
entities: [[daf-senegal], [iris-corporation], [senegal-numerique], [green-blood-group], [clement-domingo], [africa-cybersecurity-resource-center], [foresiet], [ministere-interieur-senegal]]
lens: [sovereignty]
body_completeness: full
---

Green Blood Group steals personal records and biometric data of the West African nation's nearly 20 million residents.

Nate Nelson, Contributing Writer

February 12, 2026

The vast majority of Senegal's adult population seems to have just lost its biometric data to hackers.

On Jan. 19, a new ransomware outfit calling itself "The Green Blood Group" breached two servers at the West African nation's Directorate of File Automation (DAF), the government agency that handles passports, national ID cards, and biometric data for the country's nearly 20 million residents. It then announced its breach on the Dark Web, indicating it had exfiltrated biometric data, immigration records, and more.

The risk that will follow for regular Senegalese people and businesses is significant. But Aboubacar Yacouba Mai Birni, chief operations officer (COO) at the Africa Cybersecurity Resource Center (ACRC), argues, "Rather than framing this as a failure unique to Senegal, I would say this [incident] reflects a broader African challenge: digital ambition has outpaced cybersecurity maturity."

Right after the biometric data leaked online, this week, another Senegal government-adjacent organization fell victim to a cyberattack, according to the Dakar daily L'Observateur, as reported by other local news sites. The company, Sénégal Numérique SA, plays a key role in managing the state's digital infrastructure and modernization efforts. Local reports speculated that the timing of the two incidents might indicate a potentially wider-scale offensive. Dark Reading reached out to Sénégal Numérique SA to confirm what happened.

## New Cyber Gang Attacks Senegal

Senegal's government first proposed a national biometric ID system in early 2015. In late 2016, it gave the job of actually implementing it to a Malaysian company, called IRIS Corporation Berhad. In the couple of years that followed, more than 7 million Senegalese citizens obtained brand new biometric IDs, according to IRIS. By 2026, the number is surely far greater.

Enter The Green Blood Group, which, though brand new, has already compromised organizations in Colombia and India, in addition to Senegal. Researchers at Foresiet described it as a "technically competent" gang with a "mature ransomware design," with its own Golang-based locker and a double-extortion business model.

Mid-January, The Green Blood Group attacked Senegal's national ID system, exfiltrated all that sensitive biometric data belonging to its citizenry, and began holding it ransom. According to The Gambia Journal, the attack disrupted operations at the DAF for at least five days.

That disruption might have been self-imposed. In an email the day after the attack, IRIS employee Quik Saw Choo informed employees at Senegal's Ministry of Interior and Public Security — the agency of which DAF is a part — that an attack had occurred, noting that two servers were compromised. First, the organization's domain controller, from which the attackers might have been able to pursue lateral movement in the organization's network. Second, a "Perso" server, likely referring to the database where citizens' personal information is stored. Choo cited a few measures IRIS took to cut off the hackers, which might help explain the reported disruption. Clearly those mitigations didn't work well, as the Green Bloods maintained access at least long enough to obtain and later leak that internal email.

## What Happened to Everyone's Biometric Data

On Feb. 4, analysts spotted the Green Bloods leak site, where it claimed to have stolen 139TB of data. That figure may have been a typo. In its ransom note to the DAF, the group referred to 139GB. French-Senegalese cybersecurity influencer Clement Domingo looked into the data, and confirmed the worst: that the attackers stole real birth records, national ID cards, and more ultra-sensitive material.

On Feb. 5 — only after the Dark Web leak site went up, more than two weeks after first being alerted to the breach — the DAF publicly acknowledged what happened. To underscore the embarrassment, the official email address cited at the bottom of the open letter was a generic Yahoo address.

In its letter, the DAF announced a temporary suspension of new national ID card production. It also reassured the Senegalese public that the "integrity" of their personal data remained intact — a claim that Domingo called into question. DAF did not address the most pressing issue at hand: the confidentiality of that data.

Beyond all the serious, permanent risks of fraud most of Senegal's population will now be subject to, for Yacouba Mai Birni, "the most critical risk is systemic mistrust. If citizens lose confidence in the state's ability to protect their digital identity, they may resist future digital initiatives, which would undermine financial inclusion, e-government, and economic digitalization efforts across the country."

## Africa's Growing Pains with Biometric ID Systems

From Yacouba Mai Birni's point of view, "Africa does not suffer from a lack of digital ambition. It suffers from a lack of cybersecurity maturity aligned with that ambition."

Senegal's government may have had good intentions in creating a national ID system, and the system was used for perfectly acceptable state objectives. However, "From what we observe across the continent, governments often invest heavily in data collection technologies, but far less in security-by-design, long-term data governance, independent oversight, and continuous cyber-risk management. This creates a structural imbalance: the state accumulates highly sensitive data faster than it builds the institutional and technical capacity required to protect it," Yacouba Mai Birni says.

Though there's no perfect model on the African continent today, some countries are more diligently marrying their biometric systems with thoughtful security controls. As just a few examples, he cites how "Mauritius has invested early in data protection authorities with real enforcement capacity. Ghana has coupled its national biometric ID system with clearer legal accountability and more consistent cybersecurity investments. And Morocco has focused on state-level cyber defense coordination for critical digital infrastructure."

The only potential silver lining to Senegal's nightmare cyberattack is if, in the end, it serves as a wake-up call to other governments. "Handled correctly, this moment could mark a turning point toward more resilient and trustworthy digital states," Yacouba Mai Birni says. "Handled poorly, it risks reinforcing digital fear and dependency."
