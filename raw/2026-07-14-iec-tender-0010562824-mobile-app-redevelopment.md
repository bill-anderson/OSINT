---
type: source
title: "Auction 0010562824 — Electoral Commission's Mobile App Development (bid specification)"
url: https://www.etenders.gov.za/home/Download/?blobName=0f02d072-3888-4a2d-bb80-a5482f19e349.pdf&downloadedFileName=Auction+0010562824+-+IEC+Mobile+App+Development.pdf
publisher: Electoral Commission of South Africa (IEC), via National Treasury eTenders Portal
published: 2026-07-14
date_precision: day
date_source: source
places: [ZAF]
topics: [dpi.govtech, infra.cybersec, gov.protect]
entities: [[iec-south-africa]]
lens: []
ingested: 2026-07-21
retrieved: 2026-07-21
acquisition: true
body_completeness: excerpt
---

*Acquisition item satisfied: "IEC tender 0010562824 — public mobile application redevelopment (South Africa, readvertised, closing 2026-08-11)." This is the bid specification itself — the primary behind ITWeb's quotation of the IEC's statement that its public app "has been found to have vulnerabilities and inadequate provisions for data safety, user permissions and security". Document uploaded to eTenders 2026-07-14; closing 2026-08-11 11:00; non-compulsory briefing 2026-07-29. Note the IEC's own footnote attributing the vulnerability finding to Nawal Omar, "South African Electoral Commission's mobile app for voters: Data privacy and security dimensions" — an academic source the wiki does not hold. The captured text runs to the pricing section (§8) and is complete for the substantive specification; the trailing pricing/appendix boilerplate is cut at the fetch limit.*

# Electoral Commission — Auction 0010562824 — Electoral Commission's Mobile App Development

IMPORTANT NOTICE: Failure to comply with the completion of the auction conditions information or submission of the required stipulated documents indicated in the document shall invalidate a bid.

## 1 Introduction

The Electoral Commission seeks to redevelop its public mobile application, originally built in-house for the 2019 National and Provincial Elections. The app is currently available on Android, iOS and Huawei platforms. Although updates were implemented in 2021 and 2024 to support the Local Government Elections and the National and Provincial Elections respectively, the underlying development framework has become outdated and insecure.

The objective is to design and implement a modern public mobile application that is inclusive, secure, accessible, trustworthy and effective, enabling citizens to confidently engage with electoral processes.

The Electoral Commission has invested extensively in ICT technologies, which provide a platform to effectively support and enable its business processes and to meet its goal of providing a free and fair election process in an open and transparent environment. The Electoral Commission's ICT Department intends to continue running a highly efficient and stable ICT environment making full use of industry standards, best practices and disciplines based upon stable and reliable technologies.

Bidders must place a bid on the Votaquotes (e-Procurement) system and then provide all the required documentation before the due dates as specified in this document and on the Votaquotes web site. Bidders must be registered and approved on Votaquotes (e-Procurement) for them to bid.

## 2 Background Information

The current public mobile application enables the users to access with ease the following: a) voter registration information, b) voting station information, c) election contestants' information, d) election results e) Electoral Commission's communications f) Apply and View Special Votes application

Figure 1 AS IS Functionality

The details of the functionalities are below:

1. **On-boarding (Establish the authenticated user on the mobile application and device)** — On boarding is a method to authenticate and engage with the user by way of registering a national identity (ID) number, thereafter, personalizing the public mobile application to the user. The on-boarding functionality is available on the first use of the public mobile application after installation. Once on-boarded and authenticated, the public mobile application returns information relevant to the user's voter registration as determined from the ID number; except in instances where a new ID number is entered. At the time of onboarding, users have the option to enable push notifications for electoral events occurring in their registered area and to voluntarily participate in IEC surveys.

2. **My Registration Details** — The user is presented with a welcome screen detailing their voter registration information (voter registration status, voting station details and the name of their ward councillor) and a link to proceed to the home page. This functionality provides direct access for the on-boarded user to view their registration details, and a link to the devices map navigation to their voting station. If there is an election event planned for the voter's registered area, the information is also displayed. If there is no on-boarded user, the user may query the registration details of any person by entering an identity number, the system will return the registration details and upcoming election event details (if any) as determined from the ID number.

3. **Home Page** — The home page presents the public mobile application page that is aligned to the public website in content. (i.e. campaign banner, application content, media releases (news), and links to the Electoral Commission social media sites X, Facebook and Instagram). Common content published across related public facing applications within the IEC will be managed via a content management system.

4. **Special Votes** — Functionality enables the user to apply to cast a special vote for a specific electoral event during the window of application. Once the application has been assessed, the user is able to view the result of their application. This is applicable to all election types. (National and provincial elections, local government elections and municipal by elections.) The functionality uses the same business rules and APIs as those of the Voter Portal. This functionality may be used for any identity number queried, not only for the on-boarded user.

5. **News** — The facility that delivers the latest published media releases from the Electoral Commission. The news facility will be aligned with the public website content and managed via the content management system.

6. **Voter Education** — A facility to provide the users with voter education material and a set of frequently asked questions (FAQ) to promote voter education as well as participation.

7. **Settings** — This functionality enables the user to manage the public mobile application settings on their device. These settings include: • updating the on-boarded user details • directing the user to turn on device location services

8. **Contact Us (Local IEC office)** — Functionality that provides contact details and address details to the Electoral Commission's offices in the on-boarded user's local area making use of their registered address details. In instances where there is no on-boarded user, the user is able to select the province, municipality, and ward for which they wish to view contact details to the Electoral Commission's office.

9. **Parties and Candidates** — A functionality that displays contesting parties and candidates for an electoral event in the on-boarded user's local area. In instances where there is no on-boarded user, the user is able to select an election event and area of interest to view the contesting parties and candidates.

10. **Election Results** — The user is able to view a summary of the election results specific to their local area as soon as they are available for all election types. (National and provincial elections, local government elections and municipal by-elections.) There will also be a link to navigate to the Electoral Commission's results dashboard to view the outcome of all election events.

The current public mobile application is written in a framework that is no longer supported and cannot evolve to meet the demands for new features as required. The application also requires its own internal back-end services to support mobile real-time transactions and improve the application's service offering and performance. In its current state, the application poses security risks for the organization, while it is increasingly challenging to support new business processes and requirements.

The current public mobile app has also been found to have vulnerabilities and inadequate provisions for data safety, user permissions and security.[^1]

[^1]: Nawal Omar — South African Electoral Commission's mobile app for voters: Data privacy and security dimensions

A careful assessment of the state of the public mobile application, technological developments and the vision of the organization was conducted. This resulted in a decision to transition the mobile application to a new framework and platform. The goal is to offer enhanced functionality, improved user experience, and better integration capabilities with other existing systems at the Electoral Commission.

The existing functionalities of the public mobile application must be re-designed and re-developed, with additional modules introduced to improve user interaction and ensure an alignment between the public mobile application to related electoral applications.

The public mobile application has the potential to increase voter interaction with the Electoral Commission by introducing new functionalities and making use of the native functionality of the user's device for an improved user experience.

## 3 Technical Specifications

The technical specification for the required solution is as specified below. It must be noted that the technical specifications below are the minimum requirements; submissions will be accepted only where it meets or surpasses the specification for the required solutions.

### 3.1 Development framework

The new public mobile application is to be developed using a modern, maintainable cross-platform mobile development framework proposed by the bidder. The proposed framework must support deployment to Android, iOS and Huawei environments, strong security, performance, accessibility, maintainability, and integration with the Electoral Commission's existing systems and operating model.

### 3.2 User Access Management

3.2.1 The Electoral Commission's stakeholders include voters, members of the media and politicians. Politicians and some of the media members are also voters. The application should be able to support role-based access and switch between different profiles to allow for users to access the functionalities enabled for the different profiles. The Electoral Commission has developed an Admin Console that will assist with back-end access for the different profiles. The Electoral Commission will also keep the login details as the same details are used to access the respective websites.

3.2.2 The bidder is to ensure that the app is secure, no data leakage, encrypted communication (https/TLS) and secure authentication (OTP and biometric support – fingerprint and/or face recognition). The Electoral Commission has an SMS solution and WhatsApp channel to support OTP.

3.2.3 The app is to include session timeouts and re-authentication for idle periods.

3.2.4 The bidder is required to assist the Electoral Commission clear privacy policy to deal with the provisions of POPIA especially with the data that is collected from voters. The bidder is to ensure that the implemented process and system avoid unnecessary data collection.

3.2.5 Users do not always interact with the Electoral Commission's app as elections occur every 2-3 years. Users therefore tend to forget their usernames and passwords. Users should be able to recover lost passwords and usernames securely and easily on the application.

3.2.6 The bidder must ensure that the potential for unauthorised access is reduced or eliminated.

3.2.7 The bidder is to enable users to manage profile settings, notification preferences, and other app configurations within the mobile application

### 3.3 Branding and App Stores

3.3.1 The app is to be developed in the Electoral Commission's branding details (logo and colours)

3.3.2 Users must be able to verify the authenticity of the app via app store metadata.

3.3.3 The application will be published to various apps stores including Google Play Store, Apple App Store & Huawei App Gallery.

### 3.4 Content Management Solution (CMS)

3.4.1 The public mobile app must be able to retrieve content from a Content Management System using REST APIs.

3.4.2 The details of the content management system will be disclosed at a later stage.

### 3.5 Development deliverables

3.5.1 The bidder is to re-design and re-develop the functionality of the existing public mobile application using the proposed mobile development framework and architecture, provided that the solution meets the Electoral Commission's requirements for portability, supportability, security, performance and long-term maintainability.

3.5.2 South Africa's electorate is diverse varying in language, tech literacy and mobile device capability. The bidder is to design the app for older adults, citizens with limited digital skills, users with low-end devices and users with slow and limited data. The key principle is that tasks must be kept simple, intuitive and fast.

3.5.3 The new mobile app must be designed for mobile environments with faster load times, minimized data usage, lightweight graphics and support for older Android devices. The bidder is to use adaptive images and enable caching so content can load offline where possible.

3.5.4 The bidder is to ensure compatibility with accessibility standards (e.g. Web Content Accessibility Guidelines (WCAG)) with high contrast, large tappable elements, screen reader compatibility and text alternatives for icons.

3.5.5 The bidder is to integrate the new mobile application to the back-end services using the Electoral Commission's existing APIs and integration services, or compatible integration approaches approved by the Electoral Commission, to support common business processes. The current back-end services support REST application programming interfaces (APIs).

3.5.6 The bidder is to integrate the public mobile app with the Electoral Commission's approved citizen engagement and messaging channels, including any existing WhatsApp-based services where applicable, to enable two-way customer engagement, automated alerts and support.

3.5.7 The bidder is to implement location services to determine which voting station the bidder is, suggest the nearest registration or voting station, find a voting station by name, save or share directions. The system is to however ask for consent before accessing location.

3.5.8 The bidder is to implement Push notifications and alerts which are relevant (e.g. registration deadline, voting day information etc), allowing users to opt-in with clear consent).

3.5.9 The bidder is to implement Frequently Asked Questions (FAQs) and chatbot support on the public mobile app.

3.5.10 The developed app will be subjected to Functional Tests, Integration Tests, Vulnerability / Penetration Test and Load Test at a minimum as part of Quality Assurance. The bidder will be required to fix all the all the bugs that are picked up.

3.5.11 Align the user interaction functionalities and business processes of the Electoral Commission's public mobile application to the Electoral Commission's website (www.elections.org.za), Voter Portal (registertovote.elections.org.za) and results portal (results.elections.org.za)

3.5.12 The bidder is to ensure that the collection of personal information is disclosed in the data safety section in the app stores. In addition, the terms and conditions should emphasise users' privacy and data rights in respect of the personal data that is collected.

3.5.13 Some of the functionalities to be implemented include the following:

3.5.13.1 **Voter registration** — A description is given below of what is currently envisaged for voter registration. *Register to Vote: This functionality will enable the user to register as a voter.* 1. The user enters their own identity number, cellphone number and must accept legal terms to receive a One-Time Pin (OTP). 2. A successful verification of the One-Time Pin (OTP) advances the process. 3. The voter provides proof of their identity document by: a. uploading an image of their identity document (similar to the Voter Portal), or b. taking a photo of their identity card document during the transaction. c. The app is to integrate with the Electoral Commission's existing document and image verification services, or an approved equivalent service, where required for implementation of this functionality. The voter must capture their address details to complete the registration by either finding its location using an interactive map, or selecting the "I am Home, use my current location" option.

3.5.13.2 **Update Voter Address** — Functionality that enables the voter to view, confirm or update the details of their registered address of ordinary residence. The user needs to have registered a user profile and sign-in with their login details. An authentication and verification method are followed by way of a One Time Pin (OTP) sent to the user's mobile number or email address. This pin must be authenticated before the user can update their registered address to complete the transaction. The facility will use the same business rules and APIs as those of the VoterPortal. Once the voter's address of ordinary residence is updated, the voting station details are also updated accordingly.

3.5.13.3 voter registration check
3.5.13.4 voting station finder
3.5.13.5 special voter registration
3.5.13.6 Special voter registration check
3.5.13.7 Provide functionality for election calendar and reminders
3.5.13.8 Candidate and Party Information
3.5.13.9 Live Results on election day
3.5.13.10 Notifications about deadlines and voting guidelines
3.5.13.11 Self-service queue check-in and check-out
3.5.13.12 Self-service surveys
3.5.13.13 Integration to Issue tracker for submission of queries or issues
3.5.13.14 Access the Virtual Results Operations Centre (ROC) applications and
3.5.13.15 The details of the functionality will be finalized with the successful bidder. It is therefore important for the bidder to demonstrate that its proposed team includes, or has access to, the analysis, solution design and documentation capabilities necessary to define use cases and support delivery.

3.5.14 The bidder must ensure that the app adheres to privacy policies set by advertising platforms and transparently disclosing data collection, opt-out options, and data deletion which are vital steps in maintaining user trust and security.

### 3.6 Analytics, Reporting and Dashboards

3.6.1 The app is to provide insights into user journeys, identify popular content, and assess areas for improvement to enhance the user journey.

3.6.2 The app must be able to monitor application engagement with session duration, retention rates, and in-app interactions to optimise user experience.

3.6.3 The bidder is to implement application performance monitoring and logging to track app usage, errors, and crashes.

## 4 Planning Assumptions

The Electoral Commission has made the following assumptions:

4.1 The Electoral Commission will provide technical resources for all the back-end designated work including setup and configuration of its own systems, reporting dashboards, APIs and databases.

4.2 The Electoral Commission will provide access to its authentication solutions for OTP.

4.3 Wherever the need arises the successful bidder shall do initial equipment configuration of operating systems and environmental specific requirements.

4.4 The delivery of the services required must be completed within the days as stipulated in the delivery and implementation schedule below.

4.5 The bidder must align to the Electoral Commission's change management processes and procedures

4.6 The Electoral Commission will pay the app store charges for the application.

4.7 The recommended service provider shall provide all relevant details needed to ensure successful operations capability within the organization.

## 5 General Auction Conditions

The following standard auction conditions must be adhered to and complied with, failing of which the bid will be disqualified.

5.1 Bidders must place bids online on the Electoral Commission's eProcurement website by not later than the stipulated closing date and time on the auction.

5.2 Bidders must complete and submit Appendix A: Technical Bid Response Sheet to demonstrate compliance with the technical bid requirements.

5.3 The bidder must include evidence that it has access to suitably qualified and experienced mobile application development resources with proven experience in cross-platform mobile development, backend integration, software architecture and version control systems such as Git. The bidder may provide CVs for proposed key personnel and/or company capability profiles (references / business cases / short description of past projects) demonstrating these competencies. Experience with common mobile development toolsets, CI/CD practices and relevant certifications may be included where available.

5.4 The bidder must demonstrate experience in interactive application design, user experience (UX) capability and application usability standards. The bidder may include details of proposed UX resources and/or company capability evidence as part of the submission.

5.5 The bidder must demonstrate that the proposed engagement will be supported by appropriate project management capability to ensure that requirements are delivered within the allocated time and cost parameters.

5.6 Bidders must have the technical resources required to deliver these requirements. This includes a proposed project team structure, relevant skills and responsibilities, and an indicative staffing plan showing how the bidder intends to resource the engagement.

5.7 The bidder must provide a project implementation plan that shows the bidder's approach in terms of implementation of the above requirements. An Agile development approach is required as some functionality must be released before the entire application is ready. It is envisaged that the implementation of the application will not take more than 4 months. Bidders are however required to provide 2nd level support for another 2 months after the handover to the Electoral Commission.

5.8 The bidder will be required to transfer all software code and related artifacts to the Electoral Commission at the end of the project.

5.9 The bidder must clearly disclose any proprietary software, components, tools, libraries or services proposed for use in the development of the mobile application, together with the applicable licensing model, cost implications, support implications and any potential vendor lock-in considerations. Preference will be given to solutions that promote interoperability, portability and sustainable long-term support.

5.10 The bidder must demonstrate relevant experience in developing and delivering publicly available mobile applications of a similar nature and complexity. The bidder is to include a company profile or a letter on a letterhead listing the mobile applications developed (portfolio of apps).

5.11 The bidder must provide at least three (3) contactable references for past or current services of a similar nature involving mobile application development. The references should include the customer / company name, customer contact details (name, surname, telephone, email), when the app was developed, the platform on which the app was developed, the app store in which the app was published, and whether the app is still available. Bidder can use Appendix C: Guideline Reference Table as a guideline for the references.

5.12 It is required that the bidder performs the bulk of the work from the Electoral Commission's offices including but not limited to business analysis, design and development of the app.

5.13 Awarding of the auction to any successful bidder shall be subject to the Electoral Commission's due diligence audit requirements, where applicable.

5.14 No payment shall be made until full and final delivery has taken place and the product has been confirmed and delivered in accordance with the specifications.

5.15 Conclusion of the required project shall only be accepted by the Electoral Commission on the basis of presentation of signed user acceptance certificates and project closure reports.

5.16 The Electoral Commission reserves the right and discretion to cancel and not award this bid based on any reason including operational or financial.

5.17 Awarding the bid to a successful bidder may be subject to the bidder entering into a service level agreement (SLA) with the Electoral Commission that will formalize and regulate the final deliverables and associated processes and procedures.

## 6 Quality Control

The following quality control conditions must be adhered to and complied with, failing which the bid may be disqualified.

6.1 The bidder takes responsibility for the completeness and quality of their bid submission.

6.2 The bidder must undertake and warrant that the switches hardware is new, in good condition and in line with the tender specifications.

6.3 The bidder will have the primary responsibility of ensuring that the proposed equipment complies with the required specification in terms of functionality and technical specification including quantity and quality.

6.4 The Electoral Commission may also call on bidders to make presentations in order for the Electoral Commission to ensure full compliance with all its requirements and as part of the bid evaluation process prior to the conclusion of the adjudication of the bid. Any such request for presentations shall only be for clarification purposes in support of mandatory requirements that must be adhered to as part of the written submission requirements of this bid. Failure to submit mandatory requirements shall not be rectified by the call for presentations. Any restrictions or conditions associated with any elements of the service offering/s must be detailed. The Electoral Commission reserves the right to reject conditions which are considered unfavourable to its business or unacceptable.

6.5 The bidder must provide the associated support and maintenance for at least 6 months after implementation. The support and maintenance must include all services as per product code.

6.6 The developed app will be subjected to Functional Tests, Integration Tests, Vulnerability / Penetration Test and Load Test at a minimum.

6.7 The submission of a bid implies acceptance of the terms specified in the provisions laid down in the bid specifications, the procurement and, where applicable, additional documents.

6.8 Bidders are expected to examine carefully and respect all instructions and standard formats contained in these specifications.

6.9 A bid that does not contain all the required information and documentation will be disqualified.

6.10 The Electoral Commission will issue an official purchase order to the successful bidder before any services can be delivered.

6.11 Awarding of the bid to the successful bidder will be subject to the Electoral Commission's due diligence audit requirements, where applicable.

6.12 Although the Electoral Commission will only deal with the principal service provider, if a bidder plans to sub-contract any of the services in this bid, they are required to attach copies of sub-contracting agreements in their bid response documentation. The bidder must also familiarize themselves with Supply Chain Management (SCM) regulations with respect to subcontracting.

6.13 Notwithstanding any shortcomings in these specifications, service providers must ensure that the proposed solution will form a workable and complete solution.

6.14 The Electoral Commission reserves the right and discretion to amend the quantities or cancel or not award this bid based on any reason including operational or financial requirements.

## 7 Supplier Performance

7.1 Contracting of any service provider to render goods and/or services to the Electoral Commission are subject to the fulfilment of the Electoral Commission's due diligence audit requirements.

7.2 An essential component of the Electoral Commission's due diligence audit requirements may involve site visits to potential suppliers/contractors as well as inspection of various key documents underpinning the establishment of the companies involved in bids of the Electoral Commission. This also includes confirmation of capability and capacity requirements to execute the services specified in such bids.

7.3 Upon notification of the Electoral Commission's intention to award a contract, the successful bidder may be required to enter into a service level agreement (SLA/contract) with the Electoral Commission.

7.4 The purpose of the SLA (if applicable other than what the Electoral Commission's standard purchase orders provide for) is to set performance criteria within the key requirements of this request for quotation, namely quantity, quality, and delivery.

7.5 The SLA may contain elements such as supplier progress milestones, delivery schedules, quality checkpoints and invoicing procedures.

7.6 The Electoral Commission reserves the right to reject any services delivered not conforming to the bid specification.

7.7 Where previously agreed delivery schedules are not met by a supplier, the Electoral Commission shall have the right to appoint an alternative supplier to make good the shortfall in supply. Any additional costs incurred by the Electoral Commission in obtaining such corrective services or products from another source will be for the account of the defaulting supplier.

## 8 Pricing Requirements

Completion of the detailed pricing schedule by responding to each item is compulsory. Failure to complete and submit this detailed pricing schedule as part of the bid submission shall lead to disqualification.

8.1 The total bid price must be submitted online on the eProcurement (Votaquotes) portal.

8.2 The total bid price must be submitted online on the eProcurement (Votaquotes) portal. The bidder must complete and submit Appendix B: Pricing Schedule and Appendix B1. The bid price on the Appendix B: Pricing Schedule must be the same as the bid price submitted online. If there is a discrepancy between the Pricing Schedule bid price and the online submitted bid price, the online submitted bid

*[capture ends at the fetch character limit mid-clause in §8.2; remaining content is pricing-schedule and appendix boilerplate]*
