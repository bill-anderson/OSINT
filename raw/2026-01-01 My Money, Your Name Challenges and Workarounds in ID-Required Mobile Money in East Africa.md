---
type: source
title: "My Money, Your Name: Challenges and Workarounds in ID-Required Mobile Money in East Africa"
url: https://doi.org/10.1145/3772318.3791007
publisher: ACM (CHI 2026)
author: CMU-Africa (author names per ACM DOI)
published: 2026-01-01
date_precision: year
date_source: proxy
ingested: 2026-07-14
places: [KEN, TZA, XEA, XSS]
topics: [dpi.id, dpi.pay, gov.protect, include.access, gov.legislate, digital.rural]
entities: [[cmu-africa], [safaricom], [gsma], [gates-foundation]]
lens: [sovereignty]
---

# My Money, Your Name: Challenges and Workarounds in ID-Required Mobile Money in East Africa | Proceedings of the 2026 CHI Conference on Human Factors in Computing Systems

> ## Excerpt
> AbstractMobile money (MoMo) services have increased access to financial services in low- and middle- income countries (LMICs). However, requirements to register SIM cards with a government-issued iden

---
## Abstract

Mobile money (MoMo) services have increased access to financial services in low- and middle- income countries (LMICs). However, requirements to register SIM cards with a government-issued identification have left around 18% of users, most without IDs, banking under a third-party’s name. Through interviews with 72 urban and rural residents in Kenya and Tanzania, this study provides the first in-depth assessment of how third-party SIM cards are acquired and the challenges and workarounds that arise when using them for MoMo. We document how third-party SIM users use various intermediaries—friends, family, agents, and strangers—to access services and the effects of ID and account misuse by both third-party SIM users and intermediaries. We further outline the personal and systemic challenges that lead to the lack of IDs for SIM registration and discuss how digitization, now underway in both Kenya and Tanzania, should be approached to effectively address these barriers.

## 1 Introduction

Mobile money (MoMo) is a widely-used form of digital payment system in which users execute cash transfers (person-to-person or person-to-business) or access savings, credit, and insurance services on mobile phones. MoMo has been particularly successful in Africa; in 2024, Sub-Saharan Africa (SSA) boasted an estimated 165 live MoMo services (mostly offered by mobile network operators —MNOs) and 1.1 billion registered accounts \[[42](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0042)\]. Indeed, SSA is the only region in the world where more than 20% of adults rely solely on MoMo to access formal financial services \[[27](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0027)\]. MoMo can be accessed through USSD, which can be used on basic feature phones without internet connectivity, or through dedicated smartphone applications. [<sup>1</sup>](https://dl.acm.org/doi/10.1145/3772318.3791007#fn2) Users can add funds to their MoMo account in three main ways: They can exchange cash for an equivalent digital balance in authorized agent stores, transfer digital cash from one MoMo account to another, or transfer funds from a bank account, usually through digital banking applications \[[45](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0045)\].

To open a MoMo account, users must first register a Subscriber Identity Module (SIM) card. Globally, 157 countries, including almost all countries in SSA, require prepaid SIM cards to be registered **under an official ID** — usually a national ID \[[59](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0059)\]. Moreover, once a SIM card is registered under an official ID, that same ID may be required to access certain MoMo services, such as depositing and withdrawing cash in exchange for MoMo balance.

However, there are 470 million people in SSA without official IDs and most of them live in countries where mandatory SIM registration regulations are in place \[[11](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0011)\]. Obtaining SIM cards and accessing mobile services in one’s own name poses a difficulty for the unidentified \[[32](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0032), [48](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0048), [53](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0053), [59](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0059)\] and consequently many users end up registering SIM cards under another person’s ID, a practice called **third-party SIM usage.** A 2021 GSMA survey of seven low- and middle-income countries (LMICs), including three SSA countries (Kenya, Mozambique, and Nigeria), found that 18% of SIM cards in these countries are third-party SIM cards \[[59](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0059)\].

To date, very little is understood about the lived experiences of individuals using MoMo under a third-party SIM card. As ID access directly influences who can access MoMo services with their own identity, it is crucial to understand the barriers and enablers in existing processes. We address this gap through in-depth interviews with 72 rural and urban MoMo users in Kenya and Tanzania. Our interviews are designed to explore the following research questions:

•

RQ1: What practices and challenges arise when using MoMo under a third-party ID, and how do users navigate them?

•

RQ2: What factors contribute to the use of third-party SIM cards?

•

RQ3: What are people’s general perceptions of mandatory SIM card registration?

The results of our interviews highlight several important findings. First, we show how social ties are central to MoMo access, supporting ID acquisition, and enabling third-party SIM use. While previous work highlights mutual trust as the basis for such practices \[[46](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0046)\], we find that assistance can also stem from social pressure to help, and financial gain. This leads people to vouch for strangers, lend IDs, or register SIMs even when they have concerns about the trustworthiness of the third party user. Second, we surface the implications of third-party SIM use, including heightened risks of lost savings and privacy breaches. Finally, we highlight the challenges causing repeated failed ID applications, thus influencing third-party SIM use.

We conclude with recommendations for addressing some of the challenges associated with third-party ID usage of MoMo. **(1)** We propose a user-oriented design of shared ID management systems for accessing civic services. ID sharing is prevalent enough that MoMo security protocols should account for it. For instance, in a shared ID setup, ID owners could implicitly vouch for other individuals, while being notified whenever their credentials are misused. **(2)** We suggest policy considerations that allow people without IDs to access SIM cards and other digital services under their own names. This could be achieved, for instance, by allowing trusted community members to vouch for individuals through a process that ensures network operators are able to periodically obtain up-to-date contact information about users from their advocates. **(3)** We propose collecting more data on fraud and misuse associated with third-party ID usage of MoMo services.

Overall, our recommendations are based on the observation that third-party ID usage is both prevalent and counter to the spirit of regulations currently mandating ID registration. The HCI and policy communities can play an important role in designing technologies and policies that better meet users’ needs.

## 2 Background

### 2.1 ID Registration in Kenya and Tanzania

Kenyan IDs are issued by the National Registration Bureau (NRB) and expire upon death  \[[16](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0016)\]. The process from initiating an application to obtaining an ID should take 30 days according to the Kenya Registration of Persons Act  \[[29](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0029)\]. The number of Kenyans who have registered for and received a national ID has not been disclosed but each month, approximately 200,000 people apply for a national ID for the first time and 5,000 people apply for a replacement ID \[[17](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0017)\].

In Tanzania, the National Identification Authority (NIDA) is responsible for issuing IDs. Although the government passed the “Identification of Persons Act” in 1986, legal registration only began in 2013  \[[7](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0007)\]. By December 2022, 23 million people (around 72% of adults) had been registered, with about 19.8 million ID numbers and 11.2 million ID cards created. In December 2022, NIDA introduced an online application portal to ease congestion in NIDA offices and to speed up the data entry process at the authority’s end \[[36](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0036)\].

The application process in the two countries is roughly similar. First, the applicant presents the required supporting documents (birth certificate and in Kenya, a parent’s ID and school records) to their nearest local government authority. After vetting, an endorsement letter is issued. The applicant takes the endorsement letter and the supporting documents to the ID issuing authority’s offices, where they fill out an application form and get their biometrics taken. In Kenya, a waiting card is issued with an approximate date of ID collection, while in Tanzania, applicants are informed of their ID collection date by SMS \[[29](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0029), [51](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0051)\]. Figure  [1](https://dl.acm.org/doi/10.1145/3772318.3791007#fig1) provides a generalized illustration of the ID application process in Kenya and Tanzania.

In both countries, citizens 18 years and older are eligible to apply for an ID. Foreigners residing more than 90 days in Kenya and those not on a tourist visa in Tanzania can also apply \[[29](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0029), [51](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0051)\].

Figure 1:

![](https://dl.acm.org/cms/10.1145/3772318.3791007/asset/80cd9b30-668e-4571-9c86-76808b394ef4/assets/images/medium/chi26-736-fig1.jpg)

Flow chart of the national ID registration process in Kenya and Tanzania. Step 1, "Get endorsement letter at local government offices," includes submitting proof of address and obtaining the endorsement letter. Step 2, "Apply for ID at local registration center," includes submitting the endorsement letter and supporting documents, completing the application form, having fingerprints and a photo taken, and receiving proof of submission. Step 3 is collecting the printed ID at the local government office. Arrows indicate the sequence from Step 1 to Step 3.

A generalized illustration of the steps needed to obtain a national ID in Kenya and Tanzania.

Figure 2:

![](https://dl.acm.org/cms/10.1145/3772318.3791007/asset/b24465c9-8567-4962-aeb7-c5d3e9284813/assets/images/medium/chi26-736-fig2.jpg)

Flow chart of SIM card registration and mobile money activation. Step 1, "Register a SIM card at a mobile network office or agent," includes presenting an ID, collecting and verifying fingerprints for Tanzanian users, and completing SIM registration using the ID. Step 2 is "Activate mobile money." Arrows indicate the sequence from Step 1 to Step 2.

A generalized illustration of the steps needed to register a SIM card and an associated MoMo account in Kenya and Tanzania.

### 2.2 SIM Card and Mobile Money Registration

In Kenya and Tanzania, mobile subscribers must register new SIM cards using their national ID. They can then activate their MoMo account by choosing a PIN. Figure  [2](https://dl.acm.org/doi/10.1145/3772318.3791007#fig2) provides a general illustration of the SIM card registration process. First, the user’s ID is collected and registered with the telecommunications provider (we will also refer to this as the _MoMo provider_[<sup>2</sup>](https://dl.acm.org/doi/10.1145/3772318.3791007#fn3))—either at the provider’s outlets or through its agents. Tanzania collects digital fingerprints during the process and verifies them against those held in the national ID database to ensure that only ID owners can register a SIM card while Kenya only requires the ID number to be recorded during registration. Both countries allow parents to use their ID to register SIM cards for their minor children. However, once the children reach the age of majority (18 years), they are required to re-register these SIM cards using their own IDs  \[[49](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0049)\]   \[[4](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0004)\]. Tanzania has resolved to start issuing IDs to under-18s \[[41](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0041)\].

### 2.3 Cash Transfer Process and Regulations in MoMo Services

To initiate a cash transfer, users must first deposit funds into their account. Once the funds are loaded, the user selects the type of transfer (to a person, an agent for withdrawal, a business, etc.) from the MoMo menu, enters the recipient’s phone or business number, and specifies the amount. A confirmation screen then displays the recipient’s registered name, the transaction amount, and any applicable fees. The transaction is confirmed after the user inputs their PIN. A copy of the confirmation message is sent by SMS to both the sender and the recipient \[[57](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0057)\].

In Kenya, MoMo deposits and withdrawals require users to present the ID used to register the SIM to the agent for verification \[[5](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0005)\]. In Tanzania, this verification is not mandatory but some agents still perform it.

## 3 Related Work

### 3.1 Usage of Mobile Payment Appliations

Over the past decade, researchers in HCI and ICT4D communities have mostly studied how different user groups use mobile payment applications in various countries, including the United States of America \[[22](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0022)\], China \[[44](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0044)\], Nigeria \[[39](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0039)\], and Tanzania \[[30](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0030)\]. In the USA, \[[22](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0022)\] explored the benefits and challenges customers faced when using vendor-specific payment apps. The study found apps enabled quicker payments, making them useful for routine purchases, and they allowed users to bypass regulatory restrictions. However, concerns over privacy were prevalent. Similar concerns were also found with payment apps like Venmo in later studies \[[50](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0050)\].

In China and India, cashless transactions are increasingly enforced by merchants or requested by clients \[[20](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0020), [24](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0024), [44](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0044)\]. Consequently, merchants found themselves forced to adopt digital payments before they were familiar with the technology. This resulted in dependence on intermediaries to complete transactions, making the users vulnerable to fraud \[[20](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0020), [24](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0024)\]. In contrast, users in Tanzania reported many merchants did not accept digital payments. This, and high levies, were considered the main challenges consumers faced with MoMo systems \[[30](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0030)\]. In Nigeria, anxiety over how to use the mobile application and concerns over privacy and security were found to negatively affect user experiences with digital payments \[[39](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0039)\].

Our study explores user experiences that extend beyond payment-related usage. We investigate how having a third-party SIM card affects users’ ability to execute deposits and withdrawals, how it impacts their use of MoMo savings, microloans, insurance, and their vulnerability to fraud.

### 3.2 Phone and MoMo Sharing Practices in Africa

Phone and MoMo account sharing has been observed in various African countries. In Kenya, 58% of people access phones through sharing arrangements \[[58](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0058)\], while in Tanzania, approximately 30% of unbanked adults use an intermediary’s MoMo account to make payments \[[18](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0018)\]. Sharing arrangements take various forms: individuals may use the same device with personal SIM cards, share both the device and SIM card \[[2](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0002), [58](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0058)\], or use SIM cards registered to the same ID on different devices \[[59](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0059)\]. Sharing can happen at different scales, from household-level practices to inter-household and commercial “mobile payphone” levels. Women and rural populations are more likely to engage in the practice \[[2](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0002), [18](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0018), [58](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0058)\], while people aged 30 to 59 years are less likely to share devices than younger and older adults \[[2](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0002), [58](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0058)\]. Few studies have explored the drivers and implications of this practice. \[[58](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0058)\] found that increased device ownership typically reduces phone sharing in urban areas but in communities with very low ownership rates, rising ownership paradoxically increases sharing until a critical threshold is reached, while Aiken et al. \[[2](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0002)\] found that receiving cash aid transfers in Togo significantly increased phone sharing. A study in rural Uganda found phone owners were concerned about their data privacy, which sometimes led to refusal to share with non-owners \[[9](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0009)\]. All three studies primarily focused on shared SIMs or devices. We expand upon this body of work by exploring how using SIMs registered with a shared ID impacts perceptions and use of MoMo services.

### 3.3 Implications of SIM Card Registration

ID-verified registration of SIM cards in Africa started in 2006 but the regulations were not strictly enforced until 2015 \[[32](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0032)\]. Since then, MNOs have been fined millions of dollars for failing to deactivate unregistered SIM cards \[[32](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0032)\]. The deactivation of SIM cards has been linked to an increased use of third-party SIM cards, especially among people without IDs \[[32](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0032), [48](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0048), [53](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0053)\]. However, the implications of using third-party SIM cards have not been discussed outside of the humanitarian sector. The United Nations Refugee Agency warns that the use of third-party SIM cards can facilitate the exploitation of displaced people, as they may be required to pay unofficial fees for continued access to the SIM card \[[53](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0053)\]. Stark et al.  \[[48](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0048)\] report other effects of SIM deactivation. The urban poor in Tanzania, who often save numbers on their SIM card, lose contacts when SIMs are deactivated and this can in turn result in reduced employment opportunities, as people depend on referrals from their social networks for day laborer opportunities.

Users’ acceptance of SIM registration varies in different countries. In Mozambique, users often offered false or incomplete data during SIM card registration to protect their privacy  \[[25](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0025)\]. A study on users’ perceptions of biometric SIM card registration in Bangladesh found a similar opposition towards sharing fingerprints, which were viewed as personal data, and opposition towards the user’s gender being identified, which could lead to harassment. The study also found SIM cards often changed hands with no formal records, as the local custom was to buy a SIM card along with the mobile handset, which undermined the purpose of registration for crime prevention \[[1](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0001)\]. In contrast, Nigeria \[[40](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0040)\] and Uganda \[[47](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0047)\] users rarely mentioned privacy, but focused on the usefulness and ease of SIM card registration.

Our work builds on these works by focusing on the practices of third-party SIM card users and the consequences of using third-party SIM cards.

### 3.4 Challenges Accessing IDs in Africa

The 2021 ID4D Global Coverage Estimate report shows that in low-income countries (LICs), 46% of the unidentified say they do not have the required supporting application documents, 44% live a long distance from registration points, and 40% feel that the costs of obtaining an ID are prohibitive \[[12](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0012)\]. One contributor to limited access to supportive documentation is the unsupportive legal frameworks for civil registration. Approximately half of the countries in the SSA do not require birth registration within a month, and more than half of the countries also impose fees for birth registration, which can be a barrier for poor families \[[55](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0055)\]. Even when registration is free, parents may incur costs for transport and issuance of the certificate \[[54](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0054)\]. Stateless and displaced people often flee without supporting documents and regulations against double registration have, until recently, restricted registered refugees from registering for national IDs  \[[34](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0034)\].

Those who can apply for IDs often face additional challenges. A 2021 report found that non-indigenous Ugandans and ethnic minorities in Uganda face exclusion as officials implement a “who you know” basis for registration. Long queues at registration places and ID errors have also been reported in both Rwanda and Uganda \[[6](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0006), [10](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0010)\]. Voluntary exclusion from getting an ID is also common, especially where there is distrust in the government or where alternative IDs are accepted. In Nigeria, for example, resistance to national IDs is based on fears of government surveillance and authoritarianism \[[38](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0038)\].

We complement these previous studies by exploring the challenges and facilitators in Kenya and Tanzania, and extend this knowledge by elucidating challenges at the different stages of the identification registration process.

## 4 Methodology

We conducted an exploratory qualitative study with 72 participants between July and August 2022 in Kenya (n=36) and Tanzania (n=36).

### 4.1 Study Sites

The study was conducted in the largest cities of each country (Nairobi, Kenya and Dar es Salaam, Tanzania) and in villages in Bomet county (Kenya) and Handeni district (Tanzania). We selected villages that functioned as hubs for cash crop production and sales, as these would likely have more MoMo users.

### 4.2 Participant Recruitment

We recruited adults 18 to 65 years of age. Half of the participants in each country (n=18) came from rural areas and the other half from urban areas. The GSMA defines SIM card users as people with a SIM card (mobile number) that is used at least once a month \[[59](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0059)\]. Therefore, only individuals who met this criteria were included in the study.

We recruited both third-party and first-party SIM card users to understand how their perceptions and experiences with SIM card registration and their lived experiences with MoMo differed. We also aimed to determine what could trigger a switch from third-party to first-party SIM use. The factors influencing ID lending were beyond the scope of this study, and therefore, we did not sample for first-party SIM users who engaged in the practice.

During the screening, participants were grouped into five SIM card user categories: (1) third-party SIM users who had never tried to register a first-party SIM, (2) third-party SIM users who had tried but failed to register a first-party SIM, (3) third-party SIM users who previously had a first-party SIM but no longer own one, (4) third-party SIM users who also have a first-party SIM, (5) first-party SIM users (see Table [2](https://dl.acm.org/doi/10.1145/3772318.3791007#tab2)). The categories were based on a preliminary survey of conveniently sampled Kenyan and Tanzanian SIM card users. The screening script included a section to assign participants to these categories. Both the categories and accuracy of participant categorization were validated when the interview guides were piloted. No participants were found to fall outside these categories during the validation and during the study.

A technical lead— one of the in-country research assistants (RAs)— developed and oversaw the implementation of standard operating procedures for recruitment in both countries. We posted ads and used snowball sampling. The interviewers visited the offices of community leaders (district and village officers and representatives of 10 households) to inform them about the study objectives and to get suggestions on which streets to advertise on and which households to invite. We used purposive sampling, aiming to have equal participants for each SIM category, gender, and age group but categories 2, 3, and 4 proved difficult to fill. Most participants who had never owned a first-party SIM card were aware that they could not meet the SIM card regulation requirements and therefore did not attempt to register one (falling into category 1 rather than category 2). In contrast, participants in category 3 had either acquired their first-party SIM cards before the implementation of mandatory registration regulations, an uncommon occurrence at the time, or had a specific reason to seek anonymity. The demographic data of the participants are summarized in Table [1](https://dl.acm.org/doi/10.1145/3772318.3791007#tab1) and the categories they fell into are shown in Table [2](https://dl.acm.org/doi/10.1145/3772318.3791007#tab2)).

Table 1:

| **Gender** | **Kenya** | **Tanzania** |
|-------------|-------|----------|
| Male | 20 | 18 |
| Female | 16 | 18 |
| **Age Range** | **Kenya** | **Tanzania** |
| 18-25 years | 12 | 9 |
| 26-39 years | 17 | 14 |
| 40-49 years | 3 | 7 |
| 50-65 years | 4 | 6 |
| **Literacy** | **Kenya** | **Tanzania** |
| Literate | 32 | 30 |
| Illiterate | 4 | 6 |

Gender, ages, and literacy levels of participants

Table 2:

| Participant Category | Kenya | Tanzania |
|-----------------------------------------------------------------------------------------|-------|----------|
| 1) Never registered a first-party SIM card, only has a third-party SIM card | 7 | 6 |
| 2) Tried but failed to register a first-party SIM card, only has a third-party SIM card | 1 | 2 |
| 3) Previously had a first-party SIM card, only has a third-party SIM card now | 4 | 5 |
| 4) Has both first and third-party SIM cards | 11 | 6 |
| 5.a) Only uses a first-party SIM card, Used third-party SIM card previously | 5 | 7 |
| 5.b) Only uses a first-party SIM card, Never used third-party SIM card | 8 | 10 |

Participants in each category of SIM card users

In Tanzania, all the recruitment was done before the interviews. The Kenya team recruited on a rolling basis due to concerns that the ongoing national elections could cause unrest. However, the study was completed before the end of the election period and we did not observe any effects on the study based on the differing recruitment strategies.

### 4.3 Interview Guides and Interview Sessions

We used semi-structured interviews with detailed interview guides to ensure consistency given the multiple field assistants in the two countries. The questions covered the following topics (the full questionnaire can be found in section [A](https://dl.acm.org/doi/10.1145/3772318.3791007#sec-8) of the Appendix):

(1)

IDs owned at the time of registering the SIM card

(2)

ID registration motivators, perceptions, and experiences (or perceived registration barriers for participants who had never applied for an ID)

(3)

SIM card registration experiences

(4)

Perceptions of SIM card registration using IDs

(5)

Usage of MoMo savings, microloan, and insurance products

(6)

Experiences with MoMo fraud

We asked participants to recount the steps taken during the SIM card registration process and any challenges faced. To identify factors beyond ID ownership that influence third-party SIM use and the overall perceptions of this practice among ID owners, we asked third-party SIM users with IDs why they chose not to register a first-party SIM, and we asked first-party SIM users if they had previously used a third-party SIM card or used their ID to register a third-party SIM for others, and their motivations for doing so. Finally, we asked participants about challenges experienced with MoMo services, knowledge and personal experiences with MoMo scams, and their perspectives on how using a first-party vs third-party SIM might influence vulnerability to scams.

The interview guides were translated into Tanzanian and Kenyan Swahili variants by two researchers who are native speakers of Tanzanian and Kenyan Swahili. The translations were reviewed by other native speakers from each country (2 per country).

Interviews lasted between 20 and 55 minutes. All interviews in Kenya were conducted face to face, and approximately half of the participants chose to be interviewed in Swahili and the rest chose to be interviewed in English. All interviews in Tanzania were conducted over the phone and all participants chose to be interviewed in Swahili. The variation in interview mode (face-to-face vs phone) was due to the different clearances the respective national ethics review committees provided. There were no challenges reported with the phone interviews. All interviews were recorded and transcribed into English by professional translation services and reviewed, through spot checks, by the two Swahili-speaking researchers.

### 4.4 Ethical Considerations and Participant Compensation

The study was reviewed by the National Commission for Science and Technology (NACOSTI) in Kenya, the Commission for Science and Technology (COSTECH) in Tanzania, and the Carnegie Mellon University Institutional Review Board (IRB). All participants provided documented informed consent. Kenyan participants provided their written consent, while Tanzanian participants provided verbal consent recorded on audio (recorded). The respective national authorities and the IRB approved the consent documentation methods.

All audio recordings were stored in password-protected files and transcripts were de-identified before analysis.

The participants in Tanzania received the equivalent of $7.70 (urban) and $3.85 (rural), which are based on estimates of hourly wages in urban areas and daily work output in rural areas. The Kenyan National Ethics Committee approved the equivalent of $3.4 for both urban and rural participants.

### 4.5 Positionality Statement

The research team included a native Kenyan and a native Tanzanian researcher who lived in the countries (part-time or full-time) in the three years before the study was conducted. Interviews were conducted by RAs who were nationals living in the urban sites and who had visited the rural sites in their previous research. The researchers’ and interviewers’ knowledge of ID and SIM card registration challenges gave contextual insight for the study. To mitigate potential biases shaped by these experiences, we used cognitive walk-throughs aided by a social psychologist to test the questions in the English and Swahili interview guides for clarity and for biased and leading questions. We then conducted two rounds of pilots, whose insights we used to improve the interview guides.

The RAs underwent a training session with the technical lead and one of the native members of the research team and conducted a third round of piloting. The resulting transcripts were reviewed and debriefed before the start of data collection. We did not include the pilot data in the final analysis.

### 4.6 Data Analysis

The two native researchers independently read the transcripts to familiarize themselves with the data. Notes on recurring perceptions and experiences were taken separately for the two countries and then compared against each other. The notes revealed mostly similar perceptions and experiences around ID and SIM card registration and lived experiences with third-party SIM cards. Therefore, a single codebook could be used for both countries. A random sample of Kenyan and Tanzanian transcripts (10% of the transcripts) was selected and independently coded on NVivo (release 1.0) by the two researchers. Inductive coding was used because it allows themes and categories to emerge naturally from the data, rather than from existing theories. Therefore, it is suitable for exploratory studies in subjects with limited prior knowledge \[[8](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0008)\]. The initial codes were discussed by the two researchers, and a joint codebook consisting of 94 codes was created. The codes were stored in 18 categories on SIM card and ID registration motivators, process expectations, registration context, positive experiences, negative experiences, workarounds used, recommended changes, and lived experiences with third-party and first-party SIM cards.

The researchers coded a second subset of data using the codebook and discussed the discrepancies arising, which mainly centered on the level of granularity of some of the codes. The codebook was expanded to 167 codes and 26 categories in order to better highlight the causes of various negative experiences, e.g., lack of supplies, technology failure, etc. A second iteration on a third subset of data revealed that the codes chosen were sufficient. The researchers achieved an interrater reliability of 98.5%. From this point on, single coding was iteratively used for the remaining data (n = 4 iterations), with spot checks performed by the second researcher. The codebook was exported to MS Word and the codes were highlighted in one of three colors representing (1) the codes used only in the Kenyan transcripts, (2) the codes used only in the Tanzanian transcripts, and (3) the codes used in both countries. Themes were formed by cutting and grouping codes with similar meanings and comparing them with data and research questions.

### 4.7 Limitations

Participants are not representative of the population due to the use of non-random sampling, and therefore the findings have limited generalizability. There is a need for larger-scale studies with representative sampling. While using semi-structured interviews helped ensure consistency, it may have imposed some limitations on the opportunistic data that could be gained through unstructured interviews. A third limitation lies in the inherent constraints of qualitative work, including the potential for over-reporting, under-reporting, and social desirability biases. The latter is significant given that we conducted the study in Kenya when the regulators had instructed all MNOs to re-register user SIM cards using biometrics \[[37](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0037), [43](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0043)\]. Thus, questions regarding third-party SIM cards may have elicited fear in participants, imagining that any evidence of noncompliance would expose them to relevant authorities and attract undesired consequences. We tried our best to mitigate social desirability by emphasizing that our research was not connected to the directive and that this was an independent study to understand people’s challenges. We also reiterated that there were no wrong or right answers to our questions but that we were interested in all user experiences. Finally, results may be subject to recall bias as participants were expected to report details on procedures, events, timing, and costs of registration experiences.

## 5 Findings

Here, we present findings that address our three research questions. Emergent themes were consistent across Kenya and Tanzania, but we observed minor differences in the pathways used to obtain third-party SIMs and in how frequently various challenges were mentioned due to thecountry-level differences in KYC requirements. Although findings are presented jointly for both countries, we highlight country-level variations within the subsections and summarize these differences in Table [3](https://dl.acm.org/doi/10.1145/3772318.3791007#tab3). When quoting interview participants, we refer to them by participant ID, with those from Kenya indicated with the KE prefix and those from Tanzania with the TZ prefix.

Table 3:

| **Drivers for third-party SIM use** | **Drivers for third-party SIM use** |
|---------------------------------------------|----------------------------------------------------------------------------------------------------------------------------|
| Observed in both | Lack of ID (Kenya: due to being underage; Tanzania: Due to ID processing delays or perceived inability to apply for an ID) |
| Country-specific | _Kenya_ |
|  | • Challenges with using foreigner or refugee ID |
|  | • Desire for anonymity to avoid creditors or ethnic profiling |
|  | _Tanzania_ |
|  | • Given pre-registered SIM card (gift, for work, or accidentally) |
| **How third-party SIMs are acquired** | **How third-party SIMs are acquired** |
| Observed in both | • ID owner registers on user’s behalf |
|  | • Purchase pre-registered SIM |
| Country-specific | _Kenya_ |
|  | • Borrow ID and self-register |
| **Main challenges when using third-party SIMs** | **Main challenges when using third-party SIMs** |
| Observed in both | • Challenges with KYC compliance during SIM management |
|  | • Privacy and security concerns |
|  | • Delayed transactions (when expecting cash transfer) |
|  | • Societal judgement |
| Country-specific | _Kenya_ |
|  | • Challenges with KYC compliance when transacting with agents |

Common and country-specific drivers of third-party SIM use and acquisition practices.

### 5.1 RQ1: Practices and Challenges that Arise When Using Third-Party SIMs

#### 5.1.1 Alternative Pathways to SIM Registration.

Three main practices emerged for acquiring third-party SIMs: (1) Taking an ID and registering without the ID owner present (Kenya only), (2) the ID owner registering on behalf of the third-party user, and (3) buying preregistered SIM cards from an agent.

**Taking IDs to self-register:** In Kenya, most participants borrowed an ID, usually from family or friends, to register a SIM. The practice was not observed in Tanzania because the ID owner’s digital fingerprints must be collected and verified against the national ID database during registration.

Most participants reported being questioned by agents, sometimes for as long as 40 minutes, on their relationship with the ID owner and why the ID owner had not accompanied them. Despite this, in all but one case, the agents ultimately registered the third-party SIM without requiring proof of the participants’ claims or of the ID owner’s consent. As a result, participants KE1 and KE15 were able to use a deceased relative’s and a stolen parent’s ID, respectively, for their SIM cards.

Agents were thought to accept borrowed IDs for two reasons. The first was a desire to earn a commission, and the second was to maintain their long-term positive relationships with clients. KE15 explained:

> At first, I asked my mother, but she refused because she does not want anyone to share her ID. So I went to her handbag, took it and went to register with it.... \[The agents\] asked me ‘Are you the owner of this ID?’ But I could just tell them, ‘This is my mother’s ID, I have been sent to register with it.’ So, because the agents need to register more, they could just register for me.

KE34 also recalled:

> \[The agent\] said that it was my mother who registered for \[the third party user\]. And the \[third-party user\] was not a good person....I went back to the agent (after an argument with the agent) and apologized, telling them it wasn’t their fault. You respected my mother and registered on her behalf.

**ID Owners Registering on behalf of others:** Most participants in Tanzania got third-party SIMs through family and friends due to biometric verification regulations. In Kenya, the practice was mainly observed in rural residents who were gifted SIM cards by their parents while underage or away at boarding school. In the former case, parents likely registered SIMs for their children, rather than allowing them to self-register, due to distance (participants reported living 30 minutes or more from the nearest agent shop).

**Purchasing Pre-registered SIMs:** A few participants in both countries reported purchasing SIM cards that had been pre-registered with an agent’s own ID or with unknown IDs. The practice was more common in Tanzania. Agents often charged an additional fee when their ID was used. TZ24 described:

> I paid eight thousand ($3.19 equivalent). \[The agent\] told me that it was for her ID and the rest to buy a SIM card.

First-party SIM users revealed that the typical cost for a SIM card was around Tshs. 1,000 (approximately $0.50).

#### 5.1.2 Preliminary Insights on Why People Lend Their IDs.

Participants expressed two main reasons people lend IDs: social pressure to help and financial incentives.

**Social pressure to help:** The nine participants who engaged in this practice (n=6 in Kenya, n=3 in Tanzania) explained that they felt compelled to help as the beneficiary’s lack of an ID would otherwise exclude them from accessing mobile services. For the most part, ID owners remarked that they trusted the third-party user not to use the SIM in a manner that would put them in legal or financial trouble. However, in two cases (one Tanzanian, one Kenyan), this trust was extended to people they had only met once or twice before. Other participants explained that their closeness to the third-party user led them to register the SIMs despite their discomfort with having to share their ID card in the future or their reservations about the users’ trustworthiness.

> I was asking myself, ‘You have given her this (third-party SIM) and if she is asked for an ID at an M-PESA (MoMo provider), will you be giving it to her?’ (KE15)

Concerns about potential SIM misuse were not unfounded. One of the third-party SIM users we interviewed (KE10) recounted using services like MoMo microloans on his third-party SIM rather than his first-party SIM, as any negative consequences would not fall on him. He explained:

> If you borrow using another person’s SIM card, you do not care if they are listed in \[the Credit Reference Bureau\]... You can put them at risk, but you do not care much as long as yours is safe.

Several participants in both countries also recalled stories of relatives and acquaintances having to resolve debts or crimes perpetrated by a third-party SIM user they had aided.

**Financial incentives:** A few participants reported that people lent out IDs in exchange for a small fee. KE34 explained:

> I pleaded with \[the ID owner\], and she said, ‘If it’s that way, you’ll have to pay me.’ I asked her: ‘How much do you want me to pay you?’ Honestly, on that day, she requested 200 shillings \[equivalent to $1.47\]. I gave it to her and she gave me the ID.

First-party SIM users also explained that the preregistered SIMs agents sold were often registered using previous client’s IDs, without their knowledge or consent. In Tanzania, it was believed that agents achieved this by pretending that a fingerprint capture error had occurred during the first registration attempt, thus requiring the client to re-register. TZ11 explained:

> I was told \[by a different agent\] that I have registered five times. I used my ID to register a SIM card for only one person—my child.

TZ18 commented:

> If you give them your ID and tell them to register for your SIM card, they would say, ‘You have done a mistake, repeat again’. Meanwhile, he is also registering other people’s SIM cards.

#### 5.1.3 MoMo Services Used by Third-Party SIM USers.

We were interested to know how owning a third-party SIM impacted the adoption of MoMo savngs, microloan, and insurance services.

In Kenya, only two participants reported not using either of these services, although they did not elaborate on adoption barriers. However, both participants declared that they would not change their usage habits if they had a first-party SIM card. Other participants primarily used the savings feature, with a few also using microloans. In Tanzania, only three participants reported not using MoMo savings (due to low income). All other participants used savings, microloans, or both, with savings being more widely adopted, as in Kenya.

Interestingly, only one participant described concerns about how a loan default would impact the ID owner. The rest avoided microloans because they were ineligible for one or because they did not like the high interest rates (and had other options). TZ32 explained:

> Sometimes I am afraid because the person who registered for me also takes loans and if I take loans, it will be seen in the database as if it’s that same person taking many loans at the same time because it reads the same names in the database.

#### 5.1.4 Challenges Associated with MoMo Usage Under a Third-Party ID.

The participants described facing five main challenges when using MoMo services on third-party SIMs.

**Challenge 1: Inability to comply with KYC requirements.** Participants in both countries faced challenges with (1) SIM management, i.e., replacing lost or stolen SIMs or complying with periodic SIM verification checks and (2) Using customer service desks or hotlines, for example, to assist with failed or erroneous transactions, due to identity verification checks (present physical ID used to register the SIM in Kenya and digital biometric authentication in Tanzania). In Kenya, however, participants faced additional challenges when transacting with agents for deposits or withdrawals due to the same identity verification checks.

To navigate KYC checks for SIM management, third-party users asked the ID owner to complete the processes on their behalf, sometimes at great cost and time delays. TZ34 explained:

> I was supposed to renew the SIM card to be able to use it again. But the person who helped me to register it is in Shinyanga, and I am in Dar es Salaam \[600 miles away\], so it was a bit difficult. So, I asked her to renew it and then send it to me by bus.

However, this workaround was inaccessible to participants who had bought pre-registered SIMs or used agents’ ID details during registration. One consequence of this was having to constantly register new SIM cards. TZ24 recalled:

> I registered my SIM cards five times. They are deactivated every time. Some days, when I register in the morning, they deactivate it by evening. Sometimes, it takes a week. The longest I have had a SIM card was two months. (TZ24)

Kenyan participants used various workarounds to address KYC checks when transacting with agents:

(1)

Borrowing the ID used to register the SIM

(2)

Memorizing or writing down ID details on a piece of paper

(3)

Establishing relationships with agents to avoid future KYC checks

(4)

Using agents who are known to be lax with KYC chcks

(5)

Modifying transactions to avoid KYC checks

(6)

Using intermediaries to complete transactions on the user’s behalf

Participants reported borrowing or memorizing ID details when the ID owner was nearby, as coordinating access was easier. However, agents in urban areas were reported to be less likely to accept memorized ID details. In such cases, participants resorted to seeking agents who are lax about KYC or agents with whom they had already established trusting relationships (and thus waived KYC checks). KE29 explained:

> In town, you will never withdraw or perform any services without the actual ID card. \[The only way around it\] is to use the same agent that I trust.

KE16 added:

> \[Agents\] require an ID. If you don’t have it, you will have to \[keep going\] to different stores and explain why you don’t have it, until you find someone who agrees.

During travel, participants relied on their social networks to introduce them to trusted agents and vouch on their behalf, enabling them to bypass KYC checks. Where this was not possible, they either broke down large transaction sizes into multiple small ones (even though this increased transaction costs) as agents were less likely to insist on KYC for these transactions. KE16 also reported pleading with strangers to transact on their behalf:

> You ask the person you find at the shop: ‘Do you have an ID? I do not have mine right now...Can I send you the money, and then you withdraw it for me?’

**Challenge 2: Insecurity about maintaining access to services and subsequent financial losses.** Several participants in both countries were concerned about temporary or permanent financial losses as a result of their SIM card being blocked by the MoMo provider or a SIM swap scam perpetrated by the ID owner. The former could occur if the ID owner exceeded the number of SIM cards that could be registered under one ID or if they failed to verify the third-party SIM card during periodic KYC checks. Surprisingly, the insecurity existed even when the ID owner was a close relation, e.g., a parent. KE15 explained:

> I mostly do not keep money \[in the third-party SIM\] because I am unsure about it. If \[my mother\] says \[the SIM\] should be blocked, it will be a process (to regain access). I fear keeping money in it.

In contrast, SIM swap scams were mainly a concern for third-party users who had registered under agents’ or distant acquaintances’ IDs. KE35 explained:

> There is no way to protect \[the savings\]. It’s not my ID. It’s just that the owner has not decided to wrong me. \[The MoMo provider\] can change the PIN if you have the ID.

Two participants described only saving “a little at a time” to minimize their risk level.

**Challenge 3: Reduced privacy over the MoMo account.** In both countries, third-party SIM users also felt vulnerable to the possibility of the ID owner gaining access to their financial details in the course of providing assistance to services like SIM replacement. To minimize this risk, participants who had a first- and third-party SIM only saved or used loans on their more “private” first-party SIM. KE17 explained::

> I do not save in the \[SIM card\] with my husband’s name. Because I want it to be personal.

**Challenge 4: Delayed transactions and awkwardness due to name mismatches.** When sending money, MoMo providers display the recipient’s name and amount of transactions before the sender can approve the transfer. For several third-party SIM users (n=4 in Kenya, n=3 in Tanzania), the mismatch between their real name and the displayed name (ID owner’s name) resulted in the senders abandoning the transaction until they could confirm that the displayed details are correct. Questions around why they relied on others’ IDs were also interpreted as community distrust towards them, and this was a bigger concern for Tanzanian than for Kenyan participants. TZ26 explained:

> The benefit \[first-party SIM users have\] is huge. First of all, it’s about being identified and being trusted wherever you go because your names are the same when they try to compare them. The second thing is making it easy for relatives and friends who are looking to pay you money through your number, you make it easy for them to not be worried. So, you build trust in the people who surround you.

**Challenge 5: Potential of wrongful involvement in crimes.** Two Kenyan participants and two Tanzanian participants expressed fears of being wrongfully implicated in crimes committed by the ID owner, either due to mistaken identity (law enforcement officials believe that the person registered on the SIM is the same as the user) or because of incorrect association (officials think the third party SIM user must know the owner of the ID). These concerns were founded on their own and others’ past experiences. According to TZ32:

> I had a friend whose SIM card \[given to a third party\] was used in something like fraud, and it was his name. So, he experienced a lot of challenges, being taken to the police and such things.

The challenges third-party SIMs pose were widely known even among first-party SIM users. The desire to avoid depending on intermediaries to access MoMo services and to protect personal privacy and security were the dominant motivators for using a first-party SIM. Only a handful of participants (n=6 in Kenya, n=2 in Tanzania) reported using first-party SIMs in order to comply with national regulations. KE6 explained:

> I decided to use \[my ID\] to make \[the SIM card\] personal. I did not want to disturb my parents or to be asked why I used theirs when I had mine.

TZ9 added:

> I used my ID to avoid problems. If I use another person’s ID and they are in trouble or have insulted someone online, I will also be involved. (TZ9)

#### 5.1.5 Participants’ Experiences with MoMo Scams.

All participants (first- and third-party SIM users) had heard about at least two of the 16 scams we asked about and all but eight (n=1 in Kenya, n=7 in Tanzania) had personally been targeted by fraudsters. Nineteen had a close social contact fall victim to a scam and four had personally fallen victim to scams.

The scams most commonly experienced were fraudsters who pretend to have wrongly transferred funds to the user and requesting a reversal (n=21 in Kenya, n=20 in Tanzania), false loan and investment opportunities (n = 21 in Kenya, n = 13 in Tanzania) and fraudsters who posed as officials of the MoMo provider (n=12 in Kenya, n=2 in Tanzania). Neither first- nor third-party users thought the type of SIM card possessed increased or decreased vulnerability to scams, as it was largely believed that fraudsters contacted people indiscriminately. However, agents and business people were thought to be purposively targeted due to the large amounts of money they held and their numbers being more well known publicly. The groups deemed at higher risk of falling victim were the elderly, rural dwellers, and people with low literacy, as they would be less likely to be aware of trends in scams. TZ3 explained:

> Those fraudsters don’t check if \[the SIM\] is registered in his name or not, they just randomly pick a contact number to scam.

### 5.2 RQ2: Factors that Contribute to Third-Party SIM Use

#### 5.2.1 ID-Related Factors.

Most of the participants (19 in Kenya, 21 in Tanzania) used third-party SIMs because they did not have an ID when they registered their SIM cards, but the underlying reasons varied by country.

In Kenya, many participants (n=12) lacked IDs because they were underage (under 18 years). They obtained first-party SIMs after getting their IDs but continued to use their third-party SIM becasue the number was widely known in their social circles. Other participants without IDs had either not applied for one due to challenges in the process (n=5) or their IDs had been issued late (n=2). Furthermore, three foreigners reported using third-party SIMs due to the erroneous belief that the only accepted form of identification was a Kenyan national ID (regulations allow foreigners to use foreign ID and passports). This belief seems to have arisen because agents are unaware of how to use passports for SIM registration. A fourth participant, a refugee, registered a third-party SIM to access MoMo services as these were blocked on SIMs registered with refugee IDs.

In contrast, in Tanzania, participants lacked an ID either because they faced delays in receiving their ID details and card or because they lacked the time or motivation to apply for one. Interviews with first-party SIM users revealed that challenges during ID registration were common and there were multiple possible failure points. We explore these further in [5.2.3](https://dl.acm.org/doi/10.1145/3772318.3791007#sec-5-2-3).

#### 5.2.2 Non-ID Related Factors.

In Kenya, citizens with IDs (n = 4) obtained third-party SIMs due to the desire for anonymity. In three cases, the participants had outstanding microloans from the MoMo provider and wished to avoid threatening calls and SMSs and to prevent the provider from automatically deducting from the deposits in their MoMo account to repay the loan. The remaining participant, KE1, found that having a third-party SIM card helped him avoid ethnic profiling, especially in times of political uncertainty. He also did not want the clients with whom he transacted to know his true identity and to stalk him. He explained:

> Let’s say maybe you are in the street. Somebody has come and bought your stuff and their real motive is to get your personal number so they’ll say: ’I don’t have cash, can I send it (via MoMo)?’ and because you don’t want money to go you tell them to send. But if you give them your real number…they get your Identity.

The lack of anonymity caused by SIM registrations was cited as a disadvantage by two other Kenyan participants.

In Tanzania, participants had bought preregistered SIM cards at a time when national IDs were not required (n = 2), had received SIM cards from relatives (n = 1), had to use a company SIM card (n = 1) or found that they had been mistakenly registered under another’s ID (n=1).

#### 5.2.3 Barriers and Enablers during ID Registration.

Across both countries, more than 1 in 3 participants in both countries were unable to complete the ID registration process on their first attempt. The challenges revolved around: (1) complex processes and unknown requirements (2) insufficient staffing and materials in government offices (3) challenges associated with supporting documents (4) challenges in interaction with officials (5) long ID processing times with poor tracking and communication mechanisms, and (6) ID processing errors. Figure [3](https://dl.acm.org/doi/10.1145/3772318.3791007#fig3) summarizes the challenges and enablers at different stages.

Table 4:

|  | No. participants (Kenya) | No. participants (Tanzania) |
|--------------------------------------------------------|--------------------------|-----------------------------|
| Successfully registered on first attempt | 18 | 19 |
| Successfully registered after 1 failed attempt | 7 | 5 |
| Successfully registered after multiple failed attempts | 5 | 4 |
| Failed to complete registration | 1 | 2 |

ID registration attempts and success

Figure 3:

![](https://dl.acm.org/cms/10.1145/3772318.3791007/asset/85b3205f-b3aa-4fc7-a2bc-12cb70b531f5/assets/images/medium/chi26-736-fig3.jpg)

A diagram summarizing the challenges and enablers experienced at different stages of the ID registration process. The challenges differ depending on whether the ID applicant registered at a fixed office - path 1 - or whether they registered at a popup registration point - path 2. Path 1 has 3 steps - getting an endorsement letter, applying for the ID, and collecting the ID. when getting an endorsement letter, applicants face 3 challenges: complex processes, challenges with officials, and insufficient staffing and material resources. At the ID application office, applicants face 4 challenges: Unknown requirements, challenges with officials, insufficient staffing and material resources, and supporting document errors. When collecting the ID at the registration office, applicants face 3 challenges: delays with poor communication, tracking challenges, and IDs issued with errors or damage. The main enabler at all 3 stages - endorsement, application, and ID collection - is support from community members. Path 2 has 2 steps: registering at a popup center and collecting the ID. At the popup ID registration point, applicants face 2 challenges: challenges with officials and insufficient staffing and material resources. The enablers for successful registration are reduced requirements and officials directly entering data into computer systems, which reduces the need for paper forms. At the ID collection step, applicants face 3 challenges which are the same as in path 1, namely: delays with poor communication, tracking challenges, and IDs issued with errors or damage. The enabler for fast delivery of IDs is home delivery by officials.

A list of challenges and enablers at the endorsement, ID application, and ID collection stages. Insufficient resources and challenges with officials occur in both the endorsement and ID application stages.

_Complex Processes and Unknown Requirements._. A few participants were unaware of process requirements including who is eligible for an ID, where to apply for the ID, and the information and supporting documents that had to be submitted. Consequently, some failed to complete registration because they were ineligible or because they had incomplete documents. KE33 explained:

> The first day, since it was my first time, I didn’t know the process. I went, I inquired, and I took a letter from the chief but I didn’t take the original birth certificate.

Participant TZ28 highlighted that even officials sometimes disagreed on what supporting documents were acceptable, resulting in confusion for the applicant:

> They told me to go get an affidavit \[of birth\] and when I did, they told me that I have to go and change \[my\] whole name or rectify the whole birth certificate. When I went after a couple of weeks, the other \[official\] just took \[the affidavit\].

In both countries, the requirement to provide detailed family history including parents’ names and place of birth (district and constituency) and in Kenya the clan name, posed a challenge, especially for participants who were orphaned or from single-parent families. KE1 explained:

> I was advised to visit the chief’s office, get elders and get people who know me, people who can tell where I come from.

KE3 added:

> They ask you questions that you don’t know how to answer. And there is no one to help you because those are your own details. Unlike the bank where someone can show you how to fill out the forms. But for registering an ID, you are the only one who knows your details.

_Insufficient Resources._. In both countries, material (paper forms, stamps, printing facilities) and human resources were often in short supply in both local government and ID registration offices (fixed and popup). Some participants paid for the resources—sometimes at hiked up prices—while others had no option but to return on a different day. TZ18 remarked,

> \[The officials\] told us there were very few forms compared to the number of people so we contributed 200 shillings each.

Human resource shortages were more challenging to navigate. In the worst cases reported by participants, we found that one official was assigned to work between two village posts —-which required traveling back and forth every few hours —-and two officials were assigned to register around 1,000 people in a day. Unsurprisingly, most participants reported queuing for hours (usually 3–6 hours), or even days, at a time.

Participants who were day laborers were disproportionally affected by queuing. For instance, KE19, a farm worker, skipped work for 3 days. She said:

> When I used to go harvesting, I earned 150 shilling a day. So, for 3 days I lost 150 multiplied by 3 ($3.34 over 3 days).

Tanzanian participants who used popup registration faced the additional pressure of having to be available to queue during a specific time period. Illness, work, and other time constraints prevented them from applying. A participant explained that popup registration drives were irregular and traveling to urban areas was expensive and logistically challenging, especially for applicants who needed to be accompanied due to being unfamiliar with the area. TZ1 explained:

> \[The registration place\] is at Handeni town but I haven’t started going there. First, it requires you to go with an older person - a parent or someone who is familiar with that area.

_Errors on Supporting Documents._. During the document verification process (when getting the endorsement letter or submitting the ID application form), a number of participants found the wrong person named as a parent or the wrong birth date on their birth certificate, or a missing stamp on the school certificate. Changing the birth certificate details required visiting multiple offices. One participant, perhaps to avoid these processes, submitted the ID of the woman whose name was registered on her birth certificate instead of fixing the birth certificate errors.

Tanzanian participants who applied in rural popup centers were spared these difficulties, as officials generally waived the requirement to present birth certificates or other supporting documents.

_Challenges with Officials._. In both countries, absenteeism, tardiness, and sometimes rudeness complicated the process. In two cases, officials’ chronic absenteeism resulted in participants being unable to continue the registration process. TZ25 quit because “it became a nuisance” chasing after officials, while KE24, who had been told to travel to his hometown at the border for an endorsement letter, never managed to find the right officials in the time he had:

> The junior staff I got there were unable to write me the letter, so they told me to wait for the senior person, but he is not available at the office, and he doesn’t come consistently during the week. I stayed there for two days, and there were things I needed to do in Nairobi so I had to go back.

When requesting help to understand the complicated process requirements, participants received little support and were sometimes even “chased away.” Some officials also imposed unofficial charges for the material resources or for “entrance/application” costs.

_Long ID Processing Times with Poor Tracking and Communication Mechanisms._. Participants often reported that IDs were received well after the expected waiting period. One reason for delays was IDs being sent to the wrong local government office. When misrouting happened, community members stepped in to collect the lost IDs on others’ behalf, as TZ11 explained:

> I got my ID through a strange way. There are those who got their ID in the local government office, but I was at home and my younger sibling called me from Chanika town (158 miles away) and she asked me ‘sister have you received your ID’ and I told her ‘not, yet’. She told me there are a lot of IDs that have been poured down and I see your ID here.

_ID Processing Errors:_. Two Tanzanian participants revealed that their IDs had been damaged or issued with incorrect details. For example, TZ12 explained,

> I was told that my ID number was incorrect. Since the ID number was incorrect, I begun the whole process afresh.

Both Kenya and Tanzania have embarked on digitizing ID registration systems since this study was conducted. While this would resolve the challenge of queuing and ID tracking, challenges with differing requirements and difficulty getting endorsement from local government offices are likely to persist. We discuss possible mitigating measures in [6](https://dl.acm.org/doi/10.1145/3772318.3791007#sec-6).

### 5.3 RQ3: Perceptions of Mandatory SIM Registration Regulations

Most first- and third-party SIM card users supported SIM card registration (n=20 in Kenya, n=22 in Tanzania) despite the associated challenges, namely the tedium of filling out ID details and difficulty accessing MoMo services. In both countries, the biggest perceived benefit was that SIM registration would make it easier to track down fraudsters and make people more cautious when using mobile devices. KE10 explained:

> We can say \[SIM card registration\] helps because now, when the scammers defraud you, you can know the name of the person who has stolen from you. And also, you can know who just called you by sending money and reversing it.

However, a Kenyan participant and five Tanzanian participants felt that mandatory SIM registration would increase the use of third-party SIMs, thus exposing users, ID owners, and the wider population to greater risk. KE1 explained:

> We have underage children. Their parents registered SIM cards for them using their ID. Some \[children\] take loans and because it is under your ID, the loan will be traced back to you.

TZ35 added:

> The population is growing, if you have those (SIM card) restrictions, people will have to borrow other people’s phones to make calls...It is easy to have a phone but hard to have a SIM card.

Other benefits cited by participants included KYC requirements when transacting in Kenya, making it difficult to share phones, thereby increasing people’s privacy over financial affairs, and an increase in demand for IDs in the Tanzanian population.

## 6 Discussion and Recommendations

In this section, we compare and contrast our findings with previous studies by offering some takeaways, and provide recommendations to address the four specific issues raised in our findings. Our key takeaway messages also highlight important theoretical contributions to ongoing HCI discourses on infrastructuring and the everyday repair of socio-technical systems. We show that users of mobile services in Kenya and Tanzania actively “work around” the SIM registration infrastructure—in response to rigid MoMo regulations and KYC systems—by sharing IDs, delegating registration tasks to trusted others, and sustaining long-standing third-party SIM arrangements.

### 6.1 Takeaway Messages

**Takeaway 1: Users of third-party IDs typically adopt the practice out of necessity. Third-party ID providers typically share their IDs due to social relationships and/or financial gain.** While prior work has quantified the prevalence of third-party ID usage \[[59](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0059)\], our study sheds light on the _reasons_ underlying it. We found that users of third-party ID do so because they need access to MoMo and telephony services. Sharing one’s ID was framed as not just acceptable, but expected (obligatory) when the ID recipient is within one’s social network. Previous studies of password and device sharing show similar dynamics, where need (such as economic need) and relationships greatly influence decisions about what can be shared and with whom \[[28](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0028), [35](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0035), [56](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0056)\]. Interestingly, unlike in device- or password-sharing where benefits are typically reciprocal, in ID-sharing, the benefits accrue primarily to the third-party user. Despite this, relational considerations supersede personal preferences and concerns to share the ID, highlighting how social networks can become essential for repairing access to otherwise rigid systems \[[23](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0023)\]. Our study also showed that the commission-based nature of agents’ work may incentivize them to aid the circumvention of KYC regulations. Similar practices were observed in agents conducting biometric registration of SIM cards in Nigeria \[[15](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0015)\].

**Takeaway 2: Sharing practices in African mobile ecosystems are not limited to phones and SIMs, but include personally identifying information including name, ID number, and biometrics.** Prior studies on asset-sharing in African mobile ecosystems have largely focused on shared mobile devices and SIM cards \[[2](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0002), [13](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0013), [28](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0028)\]. This body of work has also shown that the lack of formal identification can drive the use of third-party SIMs \[[59](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0059)\]. Our study shows that the degree of asset-sharing is even deeper: when the third-party SIM user is a close social contact, sharing practices extend to sharing ID credentials (name and ID number), physical ID cards, and even biometrics in order to authenticate another person’s access to services. Hence, rather than viewing identity as a strictly individual credential, our participants engaged in “collective identity.” When sharing occurs over a distance, making ID borrowing infeasible, recipients delegate tasks to strangers or rely on the sharer’s relationships with agents for access. These findings directly extend HCI research on trust and delegation by showing how identity itself can become a shared resource. They also demonstrate that trust and delegation relations can extend beyond previously-documented categorizations, featuring more actors and roles. For example, while borrower-lender dynamics feature prominently in prior studies on sharing practices \[[3](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0003), [33](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0033)\], our study highlights additional actors and trust configurations. Additionally, while Matthews _et al._ found that the roles of “setup” and “helping” were taken on by recipients on behalf of sharers \[[33](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0033)\], our findings reveal ID verification checks resulted in ID owners (sharers) taking up these roles.

**Takeaway 3: ID and personal information sharing can expose people to legal and financial risks.** Our work surfaces concerns and risks regarding data misuse due to third-party ID sharing that have not been identified in prior literature. Shared devices increase concerns over the privacy of personal data, such as communications history, and this concern tends to be shared by all parties involved \[[28](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0028)\]. We found similar concerns about financial privacy and security when a shared ID is used to register SIM cards, but this concern was only borne by the third-party SIM user. This is because the ID owner can legally access the data and money saved to a number via the MoMo provider, but not vice versa.

Our findings also reveal that shared IDs introduce additional and more significant implications. Both first- and third-party SIM users reported that law enforcement treated SIM ownership as proof of a social relationship with the ID owner. This effectively meant that crimes perpetrated by the ID owner could be attributed to the SIM user, and vice versa. MoMo providers also associate loans with an ID, not a SIM card, which was also observed by \[[28](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0028)\]. Therefore, both the third-party SIM user and ID owner share a credit history, and default by either party would impact the other’s ability to borrow from the MoMo provider in the future. In Kenya, where defaulters are listed on the Credit Reference Bureau, a default by the third-party SIM user would also affect the ID owner’s ability to access loans outside of the MoMo ecosystem \[[26](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0026)\]. The emergence of these risks is an example of _adverse digital incorporation_, wherein less-advantaged users are included in digital systems under conditions that amplify vulnerability \[[21](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0021)\].

**Takeaway 4: SIM-ID registration regulation may not adequately prevent fraud and data misuse.** Mandatory SIM registration was implemented in part to facilitate the identification of criminals using mobile networks \[[32](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0032)\]. This belief has permeated societal understanding. Participants expressed the belief that SIM registration made fraudsters more identifiable and therefore served as a deterrent. However, our findings, along with evidence from studies such as \[[15](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0015)\], challenge this assumption: it is easy and inexpensive to obtain a SIM card registered under the ID of third parties, including unknown persons.

**Takeaway 5: Discretionary interpretation of policies can impact ID access even in digitized systems.** Finally, our findings highlighted the often challenging user journeys participants faced when applying for an ID. Obstacles such as long queues and insufficient material resources are likely to be mitigated by the ongoing migration to digital systems. However, our study also revealed how officials could adapt registration requirements, for example, by waiving extensive documentation at rural pop-up centers in Tanzania or by demanding additional proof of citizenship beyond birth certificates and parental family histories. This lack of standardization effectively positions officials as human gatekeepers of ID access. Without clear and consistent procedures and oversight, these ad hoc practices are likely to perpetuate unequal access to IDs. We echo Marathe and Chandra’s call to study actors involved in digital government systems \[[31](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0031)\] in order to effectively design more inclusive systems.

### 6.2 Recommendations and Future Directions

_Update SIM registration regulations to account for large populations that cannot access ID_. The prevalence of MoMo users registered under third-party ID suggests that existing regulations requiring ID for SIM registration are not achieving the intended effect. Today, third-party SIM use results in the practice of _relational authentication_, in which ID owners share their credentials, attest to the right of others to use these credentials with designated agents, and perform SIM management tasks on behalf of these users. We suggest revisiting and potentially relaxing existing policies to account for the large numbers of individuals who engage in relational authentication, e.g., because they are not able to access official ID. One potential direction could be for countries to allow MoMo providers to allow trusted community members, such as local government officials and parents, to vouch for non-ID owners to access a SIM card in their own name. The community advocate would supply the SIM user’s current address during the initial SIM registration and during SIM reverification. In practice, this would mean the third-party SIM user could present any credential that verifies their identity (e.g., school or refugee ID) during SIM management or transactions, and the underlying national-ID association could be automatically recorded by the system to ensure compliance with KYC regulations. This community advocacy approach would formalize how ID owners already endorse third-party users’ access to MoMo services. Indeed, a similar mechanism has been proposed by NIST as a means of ensuring access to digital ID for people lacking the required documentation \[[52](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0052)\]. In addition to strengthening autonomy and privacy, this interaction model ensures that all parties sharing an ID are identifiable by name, thus limiting the legal and financial liability of ID owners and people sharing the ID.

_Redesign MoMo systems to accommodate registration and usage under the endorsement of a 3rd party ID holder_. If policies are eventually changed to accomodate the reality of shared ID usage, MoMo interface design will need to be adapted accordingly. To this end, the HCI community can play an important role in designing systems to support SIM registration and usage under the endorsement of a third-party participant’s ID. Such systems should account for various factors, including designing user-oriented access control, use limitation, and tools to communicate between an ID endorser and beneficiary. For example, an ID endorser may wish to have clear interfaces showing their endorsements and how beneficiaries have used the ID-endorsed account. At the same time, beneficiaries may wish to have privacy regarding their financial transactions. Designing interfaces and risk visualization tools (e.g., dashboards) that satisfy both parties, while being compatible with both smartphones and feature phones, is an important research question for the HCI community.

Another important aspect of designing such a system is allowing ID endorsers to _remotely_ register an endorsement and authorize beneficiaries; this can be an important feature for parents endorsing children in other locations, for example. While remote authentication is a relatively mature technology, remote ID proofing (i.e. registering the validity of a physical ID remotely) poses several challenges \[[52](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0052)\]. These processes would need to be integrated into the MoMo workflow, including for users of feature phones with limited biometric capture capabilities. Remote endorsement also raises questions around consent collection. When a third-party SIM user borrows an ID for self-registration, the ID owner should be notified, e.g., via SMS or phone call, and asked to authenticate the new registration through a PIN or biometrics.

Finally, the proposed designs should be tested thoroughly, including on marginalized populations. Prior studies have highlighted difficulties MoMo users face in navigating the menu-driven interfaces, often resulting in users delegating transaction execution tasks to agents \[[46](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0046)\]. In the shared identity management systems we propose above, this could still allow agents to misuse customers’ IDs and to withold risk information from users. Such risks should be surfaced via user studies and/or tabletop exercises.

_Measure the prevalence of fraud and abuse associated with third-party ID usage in MoMo ecosystems._ The research community has shown that third-party ID usage is prevalent, and our work shows that users are concerned about associated risks including data misuse and fraud. However, the scale of these problems—including how often third-party SIM users defraud ID owners and vice versa—remains poorly-understood. Complementing the design and policy recommendations above, we recommend the HCI x privacy and security communities measure the scale and nature of MoMo scams related to third-party ID usage. Although some studies reveal how people learn about or share information about scams \[[14](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0014), [19](https://dl.acm.org/doi/10.1145/3772318.3791007#Bib0019)\], little is known about user experiences when reporting fraud. We encourage more studies to generate this data.

## Acknowledgments

This work was funded by the Bill and Melinda Gates Foundation. We would also like to extend our appreciation to Professor Michael Bridges, who offered much support in improving the interview guides.

## A Interview Guide

**ID Registration Experiences and Perceptions**

(1)

Which ID do you need to register a SIM card in your name?

•

For participants who tried and failed or who successfully completed ID registration

(a)

When did you go to apply for an ID?

(b)

Could you describe, step-by-step, everything that happened the last time you went to apply for an ID?

(c)

How long did the entire process take (break down the time for transport, queuing etc.)?

(d)

How much did the entire process cost (break down what items you paid for and how much each cost)?

(e)

Were you unable to go to work or your business because of the registration process? _If yes - Did you lose any income? If yes - how did you feel about this?_

(f)

How did this experience compare to what you expected?

(g)

What was the worst/hardest part?

(h)

What was the best/easiest part?

(i)

What was the process for getting a physical ID like?

(j)

How long did it take you to get the physical ID after you applied for the ID?

•

For participants who have never applied for an ID

(a)

How do you feel about not having an ID?

(b)

Why have you never tried to apply for an ID?

(c)

What have you heard from others about the ID registration process?

(d)

How have these stories influenced your attitudes to registering for an ID?

**SIM Card Registration Experiences**

•

For participants with a third-party SIM card

(1)

When did you get this SIM card?

(2)

How are you related to the person whose name is registered on the SIM card?

(3)

Could you describe the steps you took to get this SIM card?

(4)

How long did the entire process take?

(5)

How much did the entire process cost?

(6)

Did you experience any challenges when getting the SIM card?

(7)

How did you overcome these challenges?

(8)

Why did you get a SIM card under another person’s ID?

(9)

How do you feel about using a SIM card under another person’s ID?

(10)

What do you think about the requirement to have an ID in order to register a SIM card?

•

For participants with a SIM under their own ID

(1)

When did you get this SIM card?

(2)

Why did you choose to register the SIM card under your name?

(3)

Can you tell me, step-by-step, everything that happened when you went to register the SIM card?

(4)

How long did the entire process take?

(5)

How much did the entire process cost?

(6)

Have you ever used a SIM card under another person’s name in the past? _If yes -_

(a)

Why did you have a SIM card under another person’s name?

(b)

When did you stop using this SIM card?

(c)

Why did you stop using this SIM card?

**Experiences with Third-party SIM Cards**

(1)

Do you use mobile money to keep your savings (yes/no)? _If no - why not?; If yes -_

(a)

Do you put all your savings, around half, or less than half of your savings on mobile money? Why?

(b)

Would you change how you think about or how you use mobile money savings if you had a SIM card under your name?

(2)

Do you borrow on mobile money (yes/no)? _If no - why not? If yes -_

(a)

Do the loans constitute all, around half, or less than half of your overall credit?

(b)

Do you ever worry about being able to repay the loans? _If yes - what is the worst that would happen if you were unable to repay?_

(c)

Would you change how you think about or how you use mobile money microloans if you had a SIM card under your name?

(3)

Do you use mobile money insurance products (yes/no)? _If no - why not?_

(4)

Are there services you have been unable to access or have had a lot of difficulty accessing because you didn’t have a SIM card registered in your name? _If yes -_

(a)

Can you tell me about these incidents?

(b)

Which of these services were you completely unable to access?

(c)

Did you find some other way to access these services?

(d)

Which of these services were you able to access but only after much difficulty?

## Footnotes

<sup>1</sup>

USSD enables session-based communication between mobile phones and a provider. Sessions are started by dialing followed by a 3-digit service number and #

<sup>2</sup>

In Kenya and Tanzania, MoMo is mainly provided by telcos

## References

\[1\]

Syed Ishtiaque Ahmed, Md Romael Haque, Shion Guha, Md Rashidujjaman Rifat, and Nicola Dell. 2017. Privacy, security, and surveillance in the Global South: A study of biometric mobile SIM registration in Bangladesh. In _Proceedings of the 2017 CHI Conference on Human Factors in Computing Systems_ (Denver, Colorado). ACM, New York, NY, USA, 906–918.

\[2\]

Emily Aiken, Viraj Thakur, and Joshua Blumenstock. 2022. Phone sharing and cash transfers in Togo: quantitative evidence from mobile phone data. In _Proceedings of the 5th ACM SIGCAS/SIGCHI Conference on Computing and Sustainable Societies_ (Seattle, Washington). ACM, New York, NY, USA, 214–231.

[Digital Library](https://dl.acm.org/doi/10.1145/3530190.3534796)

[Google Scholar](https://scholar.google.com/scholar_lookup?title=Phone+sharing+and+cash+transfers+in+Togo%3A+quantitative+evidence+from+mobile+phone+data&author=Emily+Aiken&author=Viraj+Thakur&author=Joshua+Blumenstock&publication_year=2022&pages=214-231&doi=10.1145%2F3530190.3534796)

-   [a \[...\] cards, share both the device and SIM card](https://dl.acm.org/doi/10.1145/3772318.3791007/#core-Bib0002-1)
-   [b \[...\] are more likely to engage in the practice](https://dl.acm.org/doi/10.1145/3772318.3791007/#core-Bib0002-2)
-   [c \[...\] share devices than younger and older adults](https://dl.acm.org/doi/10.1145/3772318.3791007/#core-Bib0002-3)
-   [d \[...\] threshold is reached, while Aiken et al.](https://dl.acm.org/doi/10.1145/3772318.3791007/#core-Bib0002-4)
-   [e \[...\] on shared mobile devices and SIM cards](https://dl.acm.org/doi/10.1145/3772318.3791007/#core-Bib0002-5)

\[3\]

Mahdi Nasrullah Al-Ameen, Huzeyfe Kocabas, Swapnil Nandy, and Tanjina Tamanna. 2021. “We, three brothers have always known everything of each other”: A Cross-cultural Study of Sharing Digital Devices and Online Accounts. _Proceedings on Privacy Enhancing Technologies_ (2021).

\[4\]
