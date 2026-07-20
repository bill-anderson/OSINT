---
type: source
title: "Cybercriminals attack Seychelles — offshore banking as a target (Seychelles Commercial Bank breach analysis)"
url: https://www.resecurity.com/blog/article/cybercriminals-attack-seychelles-offshore-banking-as-a-target
publisher: Resecurity
published: 2025-07-29
date_precision: day
date_source: source
ingested: 2026-07-19
places: [SYC]
topics: [infra.cybersec, gov.protect]
entities: [[seychelles-commercial-bank], [resecurity]]
lens: []
body_completeness: full
retrieved: 2026-07-17
sweep_batch: SYC-2026-07-17
---

Resecurity | Cybercriminals Attack Seychelles – Offshore Banking as a Target Back

Cybercriminals Attack Seychelles – Offshore Banking as a Target

data breach, data leak, ransomware, dark web, hacking, cybercrime, banking

Resecurity identified an increase in attacks against offshore banking platforms. The motives behind this activity may not be traditional cybercrime but rather intelligence collection, as some countries in offshore zones are known to be uncooperative and heavily involved in tax evasion schemes and processing funds received from fraudulent operations.

A hacker claims to have stolen and sold the personal data of clients of Seychelles Commercial Bank (SCB). The bank, which provides personal and corporate services on Seychelles, one of the world's smallest countries, notified customers of a hack, but said only personal information - not money - was stolen.

In reporting by OCCRP, the Central Bank of Seychelles confirmed in an e-mail that it has been formally notified by the Seychelles Commercial Bank of its recent cybersecurity incident.

The archipelago nation in the Indian Ocean, located northeast of Madagascar, sports 98,000 inhabitants, ranks as the richest country in Africa and has a reputation for being a tax haven.

Seychelles Commercial Bank on Friday said it "recently identified and contained a cybersecurity incident, which has resulted in its internet banking services being temporarily suspended," and requested customers "make use of our ATMs or visit one of our branches during normal banking hours." In its breach notification, the bank told customers: "SCB regrets to inform that this cyber incident resulted in unintentional exposure of personal information of internet banking customers only. The bank reassures all its internet banking customers that no funds have been accessed."

The breach appears to have first come to light publicly on July 4 via cybercrime marketplace DarkForums, when the user "ByteToBreach" posted for sale a "Seychelles main bank clients leak." The listing read in part: "I currently have the data of the clients of this bank, with DOB, phones, names, addresses, emails etc. Unfortunately, the password for the employee's pins and passwords, as well as regular users, everything is encrypted and secured with extra layers. Decryption is impossible to my knowledge, despite having the AES key. If anyone have experience cracking FCDB, there's very serious data involved (government balance account is listed among the entries)." FCPB - sometimes referred to by the attacker as FCDB - is the Oracle Flexcube Private Banking application used by SCB as its banking software, including for providing customers with online access to their accounts and the ability to perform transactions.

The actor has an extremely limited history of postings and maintains a low-profile presence—typical indicators of mercenaries hired for hack-and-leak operations. Typically, such actors are highly professional and advanced in their tactics, with a clear mandate for data acquisition.

Researchers at Los Angeles-based cybersecurity firm Resecurity engaged with the attacker, and reviewed a sample of stolen data. They said it appears to contain numerous customer names, email addresses, phone numbers, type of account and account balances. Multiple accounts are also labeled "current accounts - government." Whether the leaked data is genuine has yet to be confirmed by the bank, which apologized to customers for the breach.

Resecurity acquired multiple samples of stolen data via human intelligence (HUMINT) and shared them with the affected organization and law enforcement. In one such listing, there were 1,214 records containing both businesses and individuals, along with their PII.

IDCUST DAT_CUST_OPEN NAM_FIRST NAM_LAST NAM_MID NAM_FULL TXT_PREFECTURE DAT_BIRTH FLG_GENDER ADDR_1 ADDR_2 ADDR_3 ADDR_4 ADDR_CITY ADDR_STATE ADDR_COUNTRY ADDR_ZIP FLG_KYC TXT_EMAIL TXT_RES_PHONE TXT_MOB_PHONE TXT_BUS_PHONE TXT_RES_FAX TXT_BUS_FAX STMT_OPT DUP_CIF IS_STAFF MKTG_OPT_EMAIL MKTG_OPT_PH MKTG_OPT_MAIL REG_MEDIA REG_CHANNEL NAM_FIRST2 NAM_LAST2 DATCREATED CREATEDBY LASTUPDDATETIME UPDATEDBY RET_MAIL_COUNT FLGSTATUS INITIAL_DEP_RECVD WC_PACK_STATUS DAT_WC_PACK_STATUS EMAIL_STATUS IS_SINGLE_STEP MKTG_STMT_OPT ADDR_KYC PROD_INFO REMOTEADDRESS BANNER_ID DAT_DEATH POASTATUS DECEASEDSTATUS DAT_POA DAT_DECEASED IDDOCUMENT IDCHANNELUSER CUSTOMERTYPE UNITTYPE NAMFULL2 ID_ENTITY CODBRANCH

Notably, the stolen data also included references to SCB employees, which could create additional risks for banking operations. Likely, the actor was using their information for further extortion attempts, as at least one targeted email has been sent to the bank's staff with ransom demands.

One of the sensitive details—the dump also included information about Seychelles government officials working for various ministries. Several records related to representatives of the State House Seychelles (Office of the President) and other government institutions were identified, creating sensitivity around the data breach.

The actors were able to exfiltrate data containing information about account balances. Such data in the wrong hands may act as a catalyst for further fraudulent operations at scale.

ByteToBreach told Information Security Media Group they first breached the bank's network on Feb. 5, 2025, then returned on July 3 and began exfiltrating data through July 4, ultimately stealing 2.2 gigabytes of customer data.

The attacker claimed to have hacked the bank through a vulnerability in Oracle WebLogic Server that they declined to specify. "I had to download PDF manuals for Oracle FCDB to understand the setup, since it was reasonably secure network," ByteToBreach said. "There is also Fortinet on top of that."

The hacker also claimed to have successfully decrypted some of the stolen data, using decryption keys stolen from the bank's IT environment. "The decryption keys were easily accessible, but we're useless initially. After reading Oracle's docs, decrypted some of the data," they said. The attacker claimed to have heard "absolutely nothing" from the bank after attempting to communicate with the company, including demanding a ransom, "which is why I publicized it so much," adding that, "I usually leave the victim alone once I receive a payment." ByteToBreach was attempting to further extort the bank by contacting customers directly, using email addresses obtained in the data breach. "I am writing to inform you that your personal data has been compromised by SCB Bank, and they are covering this up. Contact them for explanations," reads a message sent to a subset of bank customers on July 8. The individuals listed on that email trail didn't immediately respond to a query about whether they are legitimate bank customers. ByteToBreach claims to have sold the set of stolen data at least once for about $750 in bitcoin, and was also approached to share their "access" to the bank, which they sold for $6,000. "But it turned out there were no more access and I didn't have enough willpower to resend the bitcoins," they said.

What is very notable is the abnormally low price of the sensitive data stolen from the bank, which suggests that the actor was unlikely driven by 'for profit' motives, and instead aimed to leak the data. The real motives behind the hack could be targeted espionage and intelligence gathering.

One of the first extortion attempts was registered around July 4. The actor, using ProtonMail with the alias "fortiweb_technologies," contacted the bank and threatened to publicize information about the leak. At that time, he was positioning himself as a "professional penetration tester," but his articulation was not consistent with that of typical "bug bounty" hunters. It is possible that the actor could be an initial access broker who decided to approach the victim opportunistically.

Receiving no feedback, the actor followed up multiple times using a stolen Gmail account around July 8, this time contacting several customers of the bank.

The bank told customers it's been working with police to investigate the intrusion, as well as putting "additional cybersecurity safeguards" in place, "including but not limited to suspending its internet banking platform and other mitigation measures" until those fixes are in place. The breach could be notable because of the Seychelles' approach to tax liability pertaining to bank deposits. Based on the jurisdiction's laws and regulations, the Seychelles "currently ranks 45th on the Corporate Tax Haven Index, which ranks the world's biggest enablers of global corporate tax abuse," says the Tax Justice Network. The International Consortium of Investigative Journalists, in a 2014 report, described the Seychelles as being "an offshore magnet for money launderers and tax dodgers." The Seychelles Commercial Bank data leak raises the possibility of Seychelles facing its own version of the "Panama Papers" leak in 2016. In that incident, an anonymous source leaked 11.5 million documents from Panama-based law firm Mossack Fonseca, which reportedly helped numerous individuals and organizations create offshore shell companies. The documents revealed alleged money laundering, tax avoidance and sanctions dodging by politicians, owners of mega-corporations and fraudsters (see: If You Hide It, They Will Hack).

Notably, the cybersecurity incidents involving hacking into financial institutions are not the first for Seychelles. The Development Bank of Seychelles (DBS) has suffered a ransomware attack that remains a mystery as to how it occurred. The bank notified the country”s regulator of the incident and is currently still assessing the extent of the impact. DBS, a joint venture by the Seychelles government and several shareholders, said the cyber incident occurred Wednesday, September 9, 2020. The Central Bank of Seychelles, which regulates all financial institutions in the country, announced the incident in a press release issued two days later, on September 11. “The Central Bank of Seychelles (CBS) has been informed of a ransomware attack on the network of the Development Bank of Seychelles (DBS),” the press release states.

It is not clear if the attack against Seychelles Commercial Bank (SCB) and the Development Bank of Seychelles (DBS) is connected and conducted by the same actor(s), but the focus on offshore banking is definitely notable and relatively exclusive.

- Seychelles Commercial Bank Confirms Customer Data Breach https://www.bankinfosecurity.com/seychelles-commercial-bank-confirms-customer-data-breach-a-28972 - Hacker Claims to Breach Seychelles Bank, Offers Client Data for Sale https://www.occrp.org/en/news/hacker-claims-to-breach-seychelles-bank-offers-client-data-for-sale

- Seychelles Bank Doesn"t Know How It Got Infected with Ransomware Last Week https://www.bitdefender.com/en-us/blog/hotforsecurity/seychelles-bank-doesnt-know-how-it-got-infecte...

From Web Request to Domain Compromise: Understanding the July 2026 SharePoint Attacks 18 Jul 2026

Artificial Intelligence Safety Law: Landmark Industry Regulation Bill 7 Jul 2026 Newsletter

Keep up to date with the latest cybersecurity news and developments.

By subscribing, I understand and agree that my personal data will be collected and processed according to the Privacy and Cookies Policy

445 S. Figueroa Street Los Angeles, CA 90071 Google Maps Contact us by filling out the form Try Resecurity products today with a free trial Close Hi there! I'm here to answer your questions and assist you. Before we begin, could you please provide your name and email?
