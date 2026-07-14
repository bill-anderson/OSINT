---
type: source
title: "Beyond the platform: understanding the growing MOSIP ecosystem"
publisher: Biometric Update
author: Chris Burton (host)
url: https://www.youtube.com/watch?v=B_iGkxWXNbg
published: 2026-07-07
accessed: 2026-07-10
ingested: 2026-07-10
places: [ETH, NER, ZMB, XSS, XAF, XGL]
topics: [dpi.id, dpi.exchange, dpi.govtech, gov.standards, tech.industry, capacity.research, include.access, geopol.india]
entities: [[mosip], [fayda-ethiopia-national-id], [gates-foundation]]
lens: [sovereignty]
---

<!-- Biometric Update webinar on the MOSIP ecosystem. Mid-2026 scale: 30+ countries engaged,
     195m+ residents issued across 14+ national deployments; 120+ commercial partners. Ethiopia
     (Fayda/NIDP) flagship: 46m registered, 13m cards, up to 4m auth/day. Enriches [[mosip]]. -->
![](https://www.youtube.com/watch?v=B_iGkxWXNbg)

Join Biometric Update for a discussion on the growth of the MOSIP ecosystem, lessons from country implementations, the evolving role of technology providers, and what governments, vendors and systems integrators need to know as adoption expands globally.  
  
MOSIP is rapidly emerging as one of the most influential ecosystems in digital identity, supporting national ID, civil registration, authentication and digital public infrastructure initiatives around the world.  
  
Featuring Sanjith Sundaram, Vice President, Partner Ecosystem at MOSIP; Andrew Wise, Lead Product Architect at Integrated Biometrics; Jozef Drgona, Solution Manager at Innovatrics; Ted Dunstone, CEO of Biometix and Chair of the Biometric Working Group at MOSIP, and; Yodahe Zemichael, Executive Director, Ethiopian National ID Program, this webinar will explore how MOSIP is being deployed, how the partner ecosystem is evolving, and where opportunities are emerging for organizations participating in digital identity programs.  
  
Topics include country adoption trends, ecosystem growth, compliance and certification, technology integration, and the future of MOSIP-based digital identity infrastructure.

## Transcript

**0:07** · Hello.

**0:10** · Hello and welcome everyone.

**0:13** · Just waiting for a few seconds for everyone to join the call before proceeding.

**0:26** · Hello and welcome to another online presentation from Biometric Update. We discuss the hot topics and going issues in biometrics and digital identity. I'm your host and the managing editor of Biometric Update, Chris Burton, and today we're going to be discussing MOSIT, the modular open-source identity platform.

**0:51** · We'll get further into what that means in a few minutes, but for now, I just want to let you know we're going beyond the platform today to discuss the broader MOSAUP ecosystem, how it fits together, why it matters, and what you might might be able to get out of it depending on your organization and its situation.

**1:12** · We have a wonderful panel today. So I just want to quickly go through that list of experts who have joined us. We have with us Sanjie Sundaram Mosup vice president of partner ecosystem. Hello Sanjie.

**1:27** · Hello everyone. Hi Chris.

**1:30** · Thank you for joining us today Sanjie.

**1:32** · We also have Ted Dunstone MOSP biometric committee chair and CEO of consultancy biomedics. Hello Ted.

**1:40** · Hi. Hi Chris. Good to see you.

**1:44** · Great to see you as well. We have Andrew Wise, Integrated Biometrics director of quality and lead product architect. Good morning, Andrew.

**1:53** · Good morning. Great to be here.

**1:56** · We're very glad you could join us. We also have Joseph Draona, solutions manager at Inavatric. How are you this afternoon, Joseph?

**2:05** · Hello, thank you. And I'm fine.

**2:08** · Excellent. Well, thank you for joining us. And last but not least, we have Yode Zamichel, who is Ethiop the executive director of Ethiopia's NIDP. Hello, Yod.

**2:20** · Hi, Chris. Happy to be here.

**2:22** · We're very glad you could join us. We're really excited to bring together all these different stakeholders from different parts of the ecosystem to talk to you today about MOSUP and to talk to each other. Uh just to get us started, MOSUP is an acronym as I said for the modular open-source identity platform.

**2:40** · It was developed and is maintained as a nonprofit uh by the team at the international institute of information technology Bangalore. MOSUP was conceived as a in large part as a way to enable countries to establish digital ID systems without falling victim to vendor lock in. And it does this in large part by enabling interoperability.

**3:05** · There are at this point dozens of countries that have engaged with MOSEP and have gone through various different uh processes from pilots and early exploration all the way to full identity system implementations. So, we're going to talk about that process today, what all is involved and uh and how that process uh and how MOSAP might be able to help your country.

**3:32** · Uh we are basing this presentation today or we will be referring uh at least several times to uh a report that we just completed at biometric update called understanding MOSIP. What the modular open- source identity platform is and how it is used. You can download this for free at biometricupdate.com.

**3:53** · Uh this report is really the product of uh a lot of gracious uh insight and time shared by people from around the ecosystem. uh that includes both Sanjit and Yodi who uh spoke to us as well as several vendors and uh officials from four countries in addition to Ethiopia who uh that have implemented or are implementing MOSIP.

**4:19** · Uh the report also draws on our own reporting about MOSIP and its implementations and the digital identity space in general. I also want to take this opportunity to really quickly shout out my colleague Ayang McDonald. uh he uh and I worked very closely together on this report and so a lot of the different sections uh Ayang was in charge of and I want to uh be sure to recognize his hard work to make that happen.

**4:48** · Um one last thing before we get right into the heart of the matter, I'd like to let everyone know uh we've planned for a few questions from those of you watching which we'll take live at the end. So, please use the Zoom Q&amp;A function which you'll find find down towards the bottom of your screen. Um, and feel free to fire off questions as they occur to you. Uh, and you know, uh, we will, as I say, address them towards the end of the presentation. We're also recording today.

**5:16** · So, all of you who are registered, all of you who are here will get a link. You can watch the presentation back, share it with your colleagues. Um, and the the link uh the email with the link will also include uh some resources uh and ways to get in touch with all of our panelists today.

**5:37** · So without further ado, I'd like to ask Sanjie to start us off by uh giving us a a review of the MOSUP ecosystem and what what MOSUP is and and what the team's been working on.

**5:50** · Thank you, Chris. Uh before I even uh share my screen, I think uh I should thank biometric update for being a consistent cat catalyst in building the the ecosystem initiatives around MOSI and uh I'm also very privileged to be with other fellow panelists today and uh those who have joined online and listening to us. Thank you all for joining. So uh I hope you are able to see my screen.

**6:21** · Yep, we can.

**6:22** · Okay, so it's been about uh 7 years since we started building something around MOSIP as the ecosystem and uh that's why my session title is more about reflections. There's a lot to reflect on what we have done so far and uh a little bit towards the road map as well. So I promise I'll not take much time. Uh usually I get excited with uh various things that we do uh along with you all. uh but then I I got about six or seven minutes. I'll try to kind of close that in that time. The first is a little bit of history.

**6:54** · So why MOSIP right? So back in 2018 uh we realized that about 60 plus countries they tried building national digital identity system and uh that includes every subsahar in African country and then we also learned that many of them were not really successful and the thought was why they were not successful beyond a point probably they were successful to an extent but the the sustainability was not there in many of these programs and the reasons were primarily three.

**7:23** · So there are so many reasons but the key reasons were proprietary systems leading to vendor lock in that was one. Second was uh lack of standards and interoperability. This I feel it's one of the major reason why many systems were not able to progress beyond a point. And finally there was no scope for collective development of common features.

**7:45** · That means people were working in silos and it was particular to one country and it was the the the knowledge that's gathered in what that process was not getting shared between people or organizations and that's where we thought uh probably there's a room for something modular uh we came up with modular open source identity platform Most and primarily a platform for ID

**8:08** · issuance identity verification ID life cycle management it's modular for a reason because we understand one size doesn't fit for all That means uh modularity is important open source again so that country will be able to manage it and then take this ID system beyond uh you know a point in time by building capacity themselves.

**8:28** · So it's fully open source under Mosul public license 2.0 Z and other five or six characteristics there they are all familiar to you I'm not going into detail now this project is uh posted or incubated in triple ATB is a university in Bangalore and uh this is a not for-p profofit initiative and funded by

**8:48** · currently supported by Gates Foundation Norat from Norway Praikat trust and Tata Trust from India all philanthropic organizations so as I always say there are no commercial engagements in any of our engagement so far let it be with partner ecosystem or with countries for that matter because we are a fully funded initiative.

**9:07** · Now these are some milestones. The project started in 2018 and uh the open source uh the project got open sourced in 2019. The longtime support release got released in 2022 and in 2023 uh some sister projects I I call it that way uh like ENG for credentiing platforms uh and uh you know the wallets uh you know standards and interoperability that project uh got initiated.

**9:32** · E Signet was uh launched for more like a single sign on capability and open GTP for government to people service delivery hosted at the same university tripb and uh in this between 2018 to 2026 now we have 100 plus repositories about 200 plus collaborators and about 200,000 commits that happened. So all thanks to uh everyone who contributed. Let it be the community, let it be the partner ecosystem and countries.

**10:01** · I mean of course you the team as well contributed a lot to the to the platform. So thank you for that. Now this is where we stand right now. So uh we are formally engaged with close to 30 plus countries cumulatively having close to 1 billion plus population and about 195 plus million residents they receive digital identity on uh MOSI based systems across 14 plus national and I would also take a minute to kind of uh draw your attention to the map key uh at the top.

**10:33** · So you can see different color schemes. It says pilot to begin, ongoing pilot, completed pilot and national download. The four bullets at the top. So all these countries talk to us in different stages of the some of them they will do a very simple quick pilot with MOSIP. Most of the countries they take that route. So they understand what is Mosep.

**10:56** · They build their capacity and capability and they take an informed decision about what their ID system should be whether it should be on MOSP or maybe another system that they have seen and this is the natural progression that we see and most of the countries they take this particular route again not going into detail but uh I think collectively we have made a good progress I'm using the word collectively because each of us are part of this particular progress is not with MOSP it's a it's a collective movement all together the ecosystem I think this is where I think we are going to focus a little more.

**11:28** · So, MOSIP is a large piece of code uh with divided into modular components or logical components. Right? In in my mind in one of my previous discussion with Chris, I was telling that I always see MOSEP as Lego blocks. So, we are building Lego blocks. Each blocks capable of doing some functionality. But then just these blocks coming together will not make the final ID system.

**11:48** · So what is really needed is you also need external components talking to MOSIP in a standardized way in the same Lego block structure you fit in properly that that's what we call it as specifications so it could be AIS engine so we have Joseph representing innovatrix they have done an AIS integration already IB a longtime partner they have been working with us for a long time and pretty much all integrated devices their 50 orac is

**12:17** · part of and there are many solutions including biometric biometric SDKs, print systems etc. And we call collectively all these solutions as technology solution providers. Right?

**12:29** · Second is so that means they have a solution and they integrate with MOSEP in a standardized way. Second is system integrated. So again going back to the same statement where I said MOSIP is a large piece of code that means deploying this piece of code in a country needs certain skill set and we don't generally do hands-on from the MOSIP perspective.

**12:47** · It's MOSIP deployment is not our primary responsibility. Right? So what we do is we also train system integrators. It's a capacity building program through MOSIP partner program for system integrators primarily to enable them deploy MOS integrate with other solutions or other uh you know system customize is based customize it based on country's requirement and maintain it over a period of time.

**13:10** · So these are the two broad categories of partnership that we have right now under MOSIP ecosystem. uh I generally don't talk about the number of partners because it's not about the number of partners, it's about the quality of the partner ecosystem that we have. Uh but still we have close to 120 plus commercial organizations working with us as we speak and a big shout out to all of them for all the progress that we are making.

**13:35** · Compliance, capacity and assurance. I think these are three key words that we always focus on with our engagements.

**13:41** · I'll very quickly go through this. Uh one when I also talked about biometric devices or let's say ais engines there's a specification out there. So Joseph and team they just completed an interface validation with MOSIP and that means they are now using the tag MOSIP complaint. They are complained to the specification uh especially at the interface level as we speak and MOSIP integrated tag is primarily for solutions that are using a MOSIP platform. It could be a use case for that matter.

**14:09** · It doesn't have a specification as such but it's integrated with MOSEP more like a service delivery aspect to an extent.

**14:16** · MOSEP SAI partner program the core of that is primarily a capacity building activity uh conducted through MOSEP academy purely based on learning and capacity building and we have close to 55 plus uh system integrators as we speak globally including smallcale partners in a local geography uh to consortiums to large scale organizations. We don't differentiate them uh based on their size. is more about the capability use cases and solutions. I think uh that's another area that we are working on. MOSB code is something that we work with students.

**14:49** · It's about bringing up a community of uh students who are uh interested in digital identity or digital infrastructure in general. So this is more like a hackathon initiative. We do it annually now. Mosip create is a little more grownup in in the sense it's more about commercial solutions that are provided by uh the commercial organizations. This year we did this uh alongside our MOSIP connect annual event. We had close to 75 plus submissions. Uh we had about eight winners and it was a fantastic success.

**15:17** · We are planning to continue more of these as we speak. MACP MOSIP advanced compliance program for biometric devices. Uh thanks to Bixil for spearheading this particular initiative.

**15:28** · I should also take the name of Somia. is I'm I'm not sure whether she she is attending this call but she did a fantastic job in putting together a framework for uh biometric device certification. Pixel lab was the first lab to get onboarded under the under the scheme and FIM and engineerm also joined. That means we have global representation of independent labs who can do biometric certification. And since biometric is also a core topic of interest because uh if if you ask me the core area where an AD system should focus on is the quality of biometrics remaining everything is good to have.

**16:00** · You can do you know a later approach also but then biometrics you need to collect it uh the best quality every time. So we are also collaborating with open DQ open source biometric quality uh project. Uh TED will be I'm sure he'll be speaking more about uh that we are working closely with industry academia governments. So we have been discussing many things uh very interesting topics how how to kind of uh proceed further on these slides a little bit on how we try to bring people together.

**16:28** · I think when we do all these exercises, all these efforts together is also important to bring in more forums where we can talk to each other. The first one is an experience center is a physical experience center that we built in triplet Bangalore the same university and this is uh created as a repeatable blueprint that anyone can actually repeat it uh in different part of the uh geographies.

**16:49** · This is a walk-in PC for countries. they can walk in identify what's happening ID issuance verification use cases everything uh discovery marketplace is an online marketplace where all the solutioning aspects all the efforts that we are doing with partners are kind of put uh you know or showcased in black and white with their contact details that means we don't want to be there in between we are just becoming a catalyst MOSP community thousands of discussions there it's already turned into a repository of discussion anyone can come in ask a question about MOSP we pick it up MOSEP connect is a physical event.

**17:21** · Uh that means this is the event where we uh join together. Uh thank you for many of you who joined in the previous editions and again once once again thanks to NADPO for hosting the first event in ADIS. Uh we did it uh in Philippines last year and Morocco was this year when we'll be continuing this every year. Now this is my final slide. Uh this is about looking ahead. What is that we are planning to do going forward? This is our perspective.

**17:48** · So what we are interested in is to hear more perspectives because that's when we get the right or that's when we will be able to proceed in the right direction. One is use cases registry. We are planning to build a registry of use cases that are indicative uh standards adoption uh TED and uh you

**18:05** · know under his guidance we are working on adopting presentation attack detection standards ISO 30107 and others training programs moving to individual based training program from an organization that's a discussion that we are having higher assurance levels and capacity building that's about tightening the existing controls and making it more quality uh oriented now

**18:25** · that's where the lot of discussions related top and PQ etc is going to be meaningful global hackathons we just don't want to do hackathon for the names sake this year we are having an ambitious plan of uh creating job opportunities for students if possible we are working on that uh so that there's a sustainable momentum in terms of uh what uh people are working on co-created knowledge repositories uh I I know lot of information lot of knowledge is there with partners with countries but what is lagging right now is we don't have a common forum where all this knowledge is kind of coming together.

**18:56** · So documentation, a co-creation of knowledge repositories is something that we'll be focusing this year onwards.

**19:04** · Tech tech articles, interviews, a space for partners to come in and then say hey this is what they have done and this is what they offer right in a very neutral way. uh that's something which we are coming up and as a closing note is a question back to the audience is a question back to everyone what's your vision as I said uh these are all our perspective and then we need to hear more perspective and it's about what you

**19:26** · would like to see in the road map in the ecosystem with that thank you so much uh for listening to me over to you Chris thank you thanks very much Sanji that's uh it's a really great overview I'm I'm glad that you raised uh several you know points that we're going to be returning to or hearing more about just over the next few minutes here including the the various implementations and the v you know both in terms of the type and the scope and and how far they've gotten.

**19:48** · Uh that's part of the reason Yoda is here is because uh his team has made it very far and has has achieved some real successes as you referred to uh visa v the commits. Um we also uh you referred to the interface validation that innovatric just went through. Part of the reason that we have IB and Inavatric here today is because in IB is a longstanding one of the first um uh solutions partners of MOSIP and Innovatric is one of the most recent. So we we we get the full scope there.

**20:20** · Sanjie sh sh sh sh sh sh sh sh sh sh sh sh sh sh sh sh sh sh sh sh shared the ecosystem and what all the different components look like. We've got the abyss side and the biometric device side uh of course with our vendors as well.

**20:29** · Also, we're going to hear more about those and uh the uh biometric quality tool um that uh Ted will will tell us a little bit more about later. So, that's a really great table setter. Um I'd like to ask Andrew to tell us at this point a little bit more about um how Integrated Biometrics got into the marketplace and uh and its work with MOSIP since then.

**20:55** · Andrew.

**20:56** · Yeah, thank you Chris. I'll go ahead and uh share my screen here. All right. So, uh my name is Andrew Weise. I've been with Integrated Biometrics for about eight years now.

**21:15** · And I really work in the research and development space. So, all day long I am working on developing the highest quality uh possible capture devices. So, uh, we're at the foundation of the MOSUP ecosystem, uh, very far down on the value chain where we create the capture device. Uh, our capture devices often go into partner products, solutions, handhelds, kiosks, and such. And, uh, we'll talk a little bit about our experience with MOSIP, and, um, some of where we're going.

**21:48** · Um, so, uh, our the core of our technology is Lees. Um it's a uh biometric capture technology uh that allows us to operate in full daylight uh capturing both dry and wet fingerprints. Uh it's compact, it's low power um which as I'll get to later ends up being uh really critical for most of deployments.

**22:13** · So, uh, we've had a lot of fun, uh, as a scientist and as an engineer, um, finding ways we can creatively put that into products that provide value, that are able to go places that no other sensor can go and capture accurate biometrics uh, in ways that are challenging for other technologies. Um, so as Sanjit alluded to, we've we've been in Africa for many many years now.

**22:40** · uh we are at about 126 destinations worldwide. Um many of these are outside the MOSUP ecosystem and many of them are coming into the MOSUP ecosystem now. So I think that perspective that we have from working uh many years uh around the world uh helps us uh as we navigate uh the MOS deployment ecosystem.

**23:05** · Uh this is just an overview of some of our products. So, uh, we make all of the different, uh, acquisition profiles for fingerprint sensor technology. Uh, everything from large format palm scanning down to, uh, mobile single single finger devices like Columbbo or Dano. Uh, probably our most popular product, uh, that we see throughout most of deployments is KJAC, and we work with some excellent partners um, that help help us get that out there into the field.

**23:36** · So um within MOSIP uh we are we are the hardware provider uh and so we work really closely alongside system integrators who are going to wrap that in a complete solution oftent times a a kit kind of a suitcase looking uh deal uh that will plug in via APIs to the MOSIP uh integration ecosystem.

**23:56** · Uh once a match is done uh then it will uh go to say like innovatrix matcher uh and then um depending on the specific uh solution setup uh then you know you'll either enroll or verify and uh there you uh interact with the end users.

**24:20** · So, uh, we've been in Africa, uh, and and MOSUP is not specific to only Africa, but it it's really gotten some traction there, uh, for many, many years. Uh, and most recently some of the pilots we've had, uh, were in Ethiopia, Niger, and Zambia. Uh, I'd say probably our largest pilot is the Ethiopia National ID program.

**24:42** · Um, and we've had a good experience there. um the uh deployments uh are often more challenging than um than they might seem on paper. This is where all the practical things uh become a reality. Um so uh jumping down there to some of the challenges and opportunities there. Um we often find that uh with MOSAUP uh you're dealing with a a massive logistics challenge.

**25:12** · So um having worked extensively in Europe, I will say that when uh European biometric deployments are rolled out, they're often in a finite or a small N number of locations, just a few select airports and border crossings. However, with MOSIP um deployments, they're often highly dispersed uh massively dispersed.

**25:36** · So it might come into a central logistics warehousing facility, but then all of these kits will make their way to the far-flung corners of the earth uh via mobile deployments um in uh field offices, in villages, in very rural areas. And that's that's a sincere challenge um for both the management of the program and for the hardware itself.

**26:03** · um that uh nature of the beast where uh devices tend to come in once and then you're never going to be able to touch them again because they're going to go to a thousand different locations. It really emphasizes testing. So, uh integrated biometrics is at the forefront of biometric testing. Uh not so much in a certification sense but really in a practical sense.

**26:27** · Uh so uh my day job in research and development I lead one of the teams where we develop uh robotic and automated testing systems that test for surface durability how the devices might be cleaned with different uh solvents for contact presentation and

**26:47** · for many many many uh uh types of testing including uh the SDK and API testing because it's really really important when you're shipping hardware that uh when when release it into the wild that it's it's ready to go because you're more than likely not going to have access for firmware upgrades and and such. So, uh that's one of the positives that's really helped integrated biometrics product shine is our commitment to testing. Um we found that importation can be a challenge.

**27:15** · Um I believe it was um uh in uh Niger uh they had some specific uh importation customs and duties that um that that pilot program is progressing but um just dealing with different customs can actually be a massive roadblock uh if not navigated properly. So, um, all of these things when you're just talking purely software or a large ecosystem, you don't, uh, you may not realize how how much of a roadblock that can be.

**27:52** · But, um, given our worldwide footprint, we've been able to work with partners and leverage our our different locations to uh, to really uh, make headway there. Um, particularly in Ethiopia, we experienced some challenges with physical infrastructure, the power grid.

**28:10** · Um I'm thinking specifically of a case in Addis Albaba where uh the power was uh kind of fluctuating the national power grid um and uh some of the biometric uh kits that we were working with um we had to uh make them more robust uh to deal with that. Um all of these are problems but I see them really as opportunities.

**28:34** · It's just uh in the hardware space, you have to make a system that's dramatically robust uh to work in some of the harshest environments possible. And um we've really been integrating all of those lessons learned into our next generation hardware. Uh one of the other challenges we've seen has been modularity. So uh the beautiful part of MOSA modular open- source identity platform uh it's that uh that modularity lends itself well to customization.

**29:06** · Uh so each requirement for a different country they can uh pull those Lego blocks together and build uh the infrastructure they need. But the challenge there can be uh a bit of decision paralysis that we found with uh firsttime adopters of MOSAP where uh perhaps uh like the adjudication part they might um have several several tries before they get an adjudication scheme they really like. Um but uh all all of this has been progressing.

**29:39** · Um, but we really are where the rubber meets the road and we've gotten to experience that firsthand working with our our uh hardware partners uh and the systems integrators to really get that right.

**29:54** · The last challenge that I would say we've faced has been on the hardware front um uh between L0 and L1. uh there are additional encryption requirements that uh really place uh emphasis on having uh very robust hardware chips uh selected for the devices uh and um sometimes retrofitting uh can be a challenge.

**30:18** · So I would say with our next generation devices, we've really built from the ground up uh with this in mind uh to be able to deliver that flexible um encryption architecture as required by MOSA. So um that is it for my slides for here.

**30:39** · Um overall it's been a highly positive experience working with MOSA. Um I'm excited to see the progress it makes. uh and we'll be there every step of the way. So, back to you, Chris.

**30:52** · Fantastic. Thank you, Andrew. And uh yeah, really really helpful uh outline of of how the the pieces in the ecosystem fit together there. and uh and also some some good sort of practical advice around field testing and uh you know kind of gives us a a a good general uh idea of uh the kind of challenges that are being worked on and worked through uh as implementations progress.

**31:19** · Speaking of which, uh, let's turn to Yoda at this point to learn more about Ethiopia's experience deploying MOSIP and working towards sustainability, which uh, NIDP has made, uh, fantastic strides in and, uh, and I I I think it's uncontroversial to say is at very least among the furthest along in terms of creating that strong sustainable uh, MOSA based identity ecosystem. So Yod, how how did you do this?

**31:54** · Okay, thanks Kish. Let me just run you through my uh slides and of course happy to uh to be here and thanks um biometric update and of course MOSIP to make this all possible. We definitely attribute whatever success we've had uh in the past four or five years in rolling out digital ID program in Ethiopia. not just rolling it out but uh not just collecting data but actually building an authentication ecosystem that uh we see

**32:23** · help with the trust um creating trust amongst institutions between service providers and citizens etc. So happy to be here to share a little bit of that experience. This is a moto that you see it says identity is a new collateral something we're uh we have coined and um you know the banks really get this term because they understand now with digital ID micro lending credits become much easier um hassle-free so a lot of

**32:55** · sectors are now starting to understand that digital ID is not just another um ID card or identifier but it's where the trust um or the digital trail starts especially for countries that are developing and that are trying to bring majority of their population from the informal economies to formal economy.

**33:18** · The traditional way of doing uh identification, focused on cards, focused on security um is really not sustainable or not inclusive. It cannot scale fast. So we're very happy to be uh that we are able to be a part of this journey. So to tell you a little bit about the team uh the team behind um FIDA as we call it.

**33:41** · Um so one uh one peculiar decision we've made a few years back was to do um uh to have a local uh team not only to deploy Mosif but to customize and to integrate it. So that was um a risky move but um you know after a few years it's definitely paying back. Um when we started uh back then we had five engineers now we have more than 50 uh working on the most stack.

**34:13** · Uh we hire young we encourage creativity and to a certain level risk takingaking. Yes, we're dealing with personal data. We're dealing with very foundational platform, a DPI platform, but um we're trying to work essentially as a startup, especially when we're adding new features um or customize or add a new layer or new functionality including the the star projects that Sanjit was mentioning. So, we're also working on those as well.

**34:48** · So uh we do we do take this uh we do have this we're trying to create innovative culture within um our local team um and then fast shipment of course nowadays uh to add one feature we have meeting on Monday so Friday the feature is already there so the ability to customize a platform inhouse means less paperwork less change management

**35:17** · um you know a lot of these uh contractual related obligations are not there because it's just the team that's working on the feature agreeing on the feature and then rolling it out. Um so we could say uh it's a first ID system in perhaps in Africa in the world we're not sure that's u defined

**35:42** · and managed by local talent that's something we're proud of. um all the virtues of MOSIP um why MOSIP exists Sanjit went through it so obviously those are the factors that did attract us open source noendo engineered for security sometimes overengineered as we as sometimes like to joke because

**36:08** · you know data is encrypted in storage in flight encrypted on the laptop encrypted encrypted in the server so all of these have a lot of infrastructural overheads um when doing you know millions of transactions every day because you know we're not just registering like I said uh in fact registration transactions are diminishing fast and authentication transactions are increasing so uh security factor is important and we do appreciate that it's secure by design and ability to customize and vendor

**36:39** · neutrality you know integrated biometrics are Here we do use a lot of their uh devices in our biometric kits. Uh but other vendors for instance Irish manufacturer somebody else comes they come with their um they they bring their SBI right and in case they don't have an SBI we have an in-house SBI that we can customize to that need. So we do uh we do have that kind of flexibility of not being logged into a particular hardware manufacturer or ABS provider etc.

**37:15** · This is ID flow. Uh registration happens first. Let me just quickly go through it because I don't think I have a lot of time. So registration happens first.

**37:23** · Then data verification. Um what we call FIN is the UIN v identification number is generated. It's shared by SMS and email. And then credential printing is optional. Um we do have partners that do the printing. uh we are operating as a technology company. So we do avoid a lot of these logistical um operational uh works uh and then we offer we're we're really focused on the EKYC piece.

**37:54** · Uh so we do offer authentication as a service uh and we're starting to charge for it now um especially to cover for our operational expense as uh our governance model. In the previous slide I was showing three logos. There's a MOSIP logo, there is a national ID program logo which which used to be our logo. And now we're moving into this estate on enterprise uh governance structure where we generate revenue uh from KYC and from other services.

**38:26** · These are our like important KPIs. How many registrations for 6 million in Ethiopia? These are our KPIs in Ethiopia. So we have 46 million people with digital ids, 150 plus agencies uh doing KYC uh online KYC. These agencies could be uh big government agencies like revenues authority but uh startups also are there. Finex, banks, telos. Um we have ecosystem players like u um gig platforms for instance.

**39:00** · Uh enabling trust between driver delivery driver and the the service provider. Enabling trust between bicycle rental companies, scooter rental companies and um the customer. So a lot of uh startups are

**39:18** · starting to realize not only does it make uh onboarding of new customers frictionless but there is also the collateral factor the trust factor that uh we can bring especially where the financial system is not you know very well developed we don't have master card and visa card in the hands of citizens the this fa ID becomes a very good trust factor third KPI is how many authentications that number is increasing sometimes we reach up to 4 million authentications per day.

**39:47** · So we have to maintain a very big DevOps team that's able to maintain all of these uh services uh alive and the fourth one is KP uh the fourth KPI is how many cards printed so total registration is 46 million printed cards is 13 million

**40:07** · these are officially printed cards of course we have the PDF version that people can print anywhere but the official ones are 13 million shows you that um not everyone who gets digital ID prints a card printing is definitely optional and to access any service it's not a mandatory requirement to um to furnish the card and the last one is how many registration kits this also for us is an important KPI because it shows us uh how close we are to the citizen if someone if a farmer has to travel you

**40:40** · know 20 kilometers to to get to access digital ID to register for digital ID then obviously that's not convenient and that will exclude people. So the number of registration kits um is an important KPI for us. So within these kits of course we have these different OEMs the integrated biometric uh FP devices, iris devices, multiple vendors, um webcams and all these other uh gadgets that are inside these kits.

**41:12** · So what else? Um you know mostly the fact that it's open source also gave us um a lot of flexibility to add a lot of layers and a lot of customizations that may necessarily uh um that actually makes it easy for our work in Ethiopia to contextualize it to the legal uh framework to the situation on the ground etc.

**41:38** · So we did have if we divide it into three the reception clients customizations the RA processor customizations and the authentication ecosystem customization. So on the client side of course language is the first one dog type we have different uh attributes that we collect custom fields biometrics panel how we display uh fingerprints and face and iris while it's being captured. It actually does help um the the onboard registration process.

**42:08** · Auto exceptioning when one finger quality fails or a fingerprint quality does not meet the certain the necessary threshold. All of those things are a lot of customizations have happened. We sometimes joke if we saw a registration client to mo folks they may not even recognize it because it's like highly customized.

**42:31** · Uh second one is registration processor which is the back end uh stage that deals with registration data while it's being processed incoming registration data. So we have added new stage. One is called data verification stage. Um most was designed for officers and supervisors to be in the field. What is a supervisor?

**42:50** · A supervisor is someone who you know controls the quality of demographics, checks quality of biometrics before pushing data to the data center. uh after negotiating with our registration partners like the banks and telos we decided to take this uh supervisor role into the back office. So that's when we included this data verification stage. We have caching stage to improve performance customized quality filter manual adjudication. We did because we have a lot of incoming packets every day.

**43:20** · We use another um backend bio SDK quality checker to do automated manual adjudication. So technically you know it's selfdefeating name. It's an automatic adjudication but we call it auto uh MA packet throttling

**43:38** · priority cues a lot of other things including uh migration of legacy data you know on on the authentication side uh maybe Sanjit uh may correct me but I'm sure we are one of the first uh countries to deploy the MOSIP IDA at a massive scale at the national scale basically like I mentioned more than 150 agencies are using authentication and we used to have an old authentication system. Out of the 150, we only have two that are still stuck in the old API.

**44:07** · The all of them are on the IDA uh which is the MOSIP U authentication ecosystem. It's more secure, it's more robust and it's technically independent from the registration. So, we did have a lot of we've made a lot of customizations there as well.

**44:26** · This is um this is an interesting uh chart. The the blue one is basically the services the modules that we've customized the MOSIP modules that we've customized. The ones we put the green square on are new stages or new services that we've added. Um and then the red ones are existing modules in MOSIP that we've removed from our uh flow.

**44:53** · And then to do all of this we did have like I mentioned our human capital is our biggest asset. uh that's what we we've been working on in the past and that that's what uh uh when we're becoming a stateown enterprise that's what we bring to the for the human capital that we've been slowly building and we still keep building today.

**45:11** · So we have engineering team um a lot of customizations, new features, new applications, a lot of things are being added to the MOSIP ecosystem as well as other supporting uh DPI stack around the digital ID and all of that is being uh developed within the engineering team.

**45:33** · Uh of course we do have very close working relationship with the MOSI folks. Um and then DevOps. DevOps is big because a lot of features are being shipped and a lot of transactions are happening daily.

**45:47** · So um we do consider one of it's a critical infrastructure in Ethiopia for instance MOSIP uh sorry FIDA. So this critical infrastructure you know if the service is down for 30 minutes a lot of businesses will be affected so it's a question of business continuity making sure that our system is always live maintains this standard.

**46:07** · So we have we're working on increasing the capacity um of this DevOps team and infrastructure infrastructure you know um people typically think because it's national ID program all the data center is in one place it's actually not the case we have highly distributed um um we have three active physical sites where we have our services microervices are running in from three different locations uh some services are active passive.

**46:39** · Some we try to make them active active. Some are just main site and disaster recovery site type of deployment but uh maintaining all of these um different sites requires a good infrastructure team. Uh so we have um the team that's focused on is basically infrastructure as a service and the fourth one and very important one is cyber security because it's critical infrastructure. We deal with people's data. Yes, we uh we're not the owner of the data. We're only the custodians.

**47:09** · But as as custodians, we have to do a very good job at protecting it. Um yes, the data has to be accessed, but through consent, authorized access, ensuring that um there's no like threat or there's no um data leakage or any of that. We have a strong cyber security team. And that's pretty much it from my side. Over to you, Christie.

**47:36** · Thanks very much Yoda. That's uh it's really interesting stuff and you know congratulations to you and the whole NIDP team on all that you've accomplished uh with MOSUP so far. A couple quick things I want to just call out there. The communication piece, identity is the new collateral. What a great slogan.

**47:52** · Uh really shows the um the practical side, right? benefit for for people for Ethiopians who have their FedEta and can now use it to do all these different things which you gave a great um uh uh impression of the breadth of 2 million authentications a day not as a peak or something like that just as a a regular day right that really shows the impact uh of the platform and it's

**48:19** · all possible because of that customization uh which is where that local capacity that Yoda just talked about comes in uh So, some really uh important themes to pick up on there.

**48:31** · And uh and on that note, uh I'd like to ask Joseph to tell us a little bit more about Inavatric experience just recently uh joining the MOSUP marketplace and uh and a little bit more about uh what Innovatric can do uh within that MOSUP ecosystem. Joseph, thank you. Okay. Hopefully you can see my screen.

**49:04** · Yep. Looks good.

**49:06** · Mhm.

**49:06** · Uh first of all, I would like to thank the biometric update team uh for uh inviting guys to share our experience with integrating our solution into MOSIP uh system. Uh first of uh in during my presentation I would like to uh talk about the uh process itself. Also I will show the benefits from this uh solution. Before I dive into the uh compliance journey, I would like to introduce our company innovatrix.

**49:38** · uh for those who may not be familiar with it, we are a independent EU based uh so provider of trusted biometric solutions for governments and enterprises. Our solutions have already enrolled more than 1 billion of enrolies. Over the time we have deployed more than 600 large scale projects across 80 countries.

**49:58** · Um our biometric identification algorithms are uh permanently ranked among top performance in independent benchmarks for example provided by the NIST. Uh to prove my previous statement here is a brief summary of our performance or performance of our our algorithms.

**50:21** · For example, in the fingerprint identification, we are within the top three globally for face identification within top five and iris within top three. Uh on top of these uh biometric solutions, we also offer a palm recognition and livveness detection. Why we decided to uh become MOSIP compliant?

**50:46** · Our goal was to offer our ABS automated biometric identification system as a matching for MOSIP uh solution. Uh our ABS is very high performing engine that uh is performing not only in the throughput but also in the um per accuracy as I already mentioned and it is highly scalable. This means that we can offer solutions for example for smaller communities from tens of thousand of peoples up to hundreds of million of citizens.

**51:19** · Uh one of our key design principles is the interoperability. Currently our solutions offer data exchange based on ISO and NIST standards and our uh API are publicly documented that reflects our commitment to openness and I think that this is fully in line with MOSIP philosophy as already Sanjit mentioned it is a open and modal architecture where data is exchanged based on world recognized standards and there is a strong FSE on uh reducing the vendor locking.

**51:57** · We think that uh building a compliance builds a trust and is a signal for governments that our solution can be seamlessly integrated into their solution that fits their needs. Now I would like to go briefly through our the compliance journey. Uh everything started with a initial alignment meeting with the MOSIP team where we agreed on the scope. In our case, it was ABS as a matching engine and agreement of the of the next steps.

**52:30** · We started with the implementation and as it was already mentioned since all the data uh for integration is available either on the GitHub or on the MOSIP web page. The uh implementation was very straightforward. Then we moved to the testing phase. We use the MOSIP compliance toolkit that is available.

**52:53** · There are two options either to use the hosted compliance toolkit uh that uh is hosted by the MOSIP or to use uh deployed solution on our hardware to reduce some cost and effort. We decided to use the hosted one. uh at the moment I would like to say that the data sets and uh the test scenarios for testing are very well structured from simpler one to more complex.

**53:20** · This help us to identify some issues in the early stages and uh help us to go through the more complex test scenarios uh seamlessly. Um since we uh wanted to be compliant with all our modalities fingerprint, iris and facial uh modality, we decided to split the integration testing into two phases. This was allowed by the uh compliance toolkit where we can define the set of test cases where which should be uh tested.

**53:58** · So in the first step we focus on the fingerprint modality and one is when it was successfully done we proceeded with the uh facial and iris modality in one step. Uh it was also successful and then the compliance toolkit generated the uh evaluation report that was evaluated by the MOSIP team. Uh besides this process I would like to highlight one key aspect and it is the prompt and handson technical support from the MOSIP team.

**54:29** · They allowed or help us to resolve blockers quickly and kept us moving especially we had some issues with our autoification against the compliance toolkit but it was solved within let's say days. uh I can say that whole process was very smooth uh and from end to end and what's the result of ARS uh joint effort is the

**54:57** · public publication of ABS as a solution for the most marketplace where the potential customer can choose it and the signing of the compliance declarations uh be sure I for us it is not uh the end of the journey but we think that it is a the beginning of long-term partnership.

**55:17** · I we share the common vision of building standardized interfaces that are interoperable and can uh offer governments the flexibility to choose the technology that best meet their needs and so we can build a solution that is sustainable over the time. That's all for my side and thank you for attention.

**55:42** · Thank you very much Joseph. Um, yeah, a couple of really interesting points there. I I love the uh the description of the process and and your emphasis on the the interaction, the back and forth where, you know, at at some points there's the meeting uh you know there's the parts that Inavatric can mostly handle on its own, but then you have these situations where you have to interact with the MOSIP team. They're responsive, the issues are uh you know addressed and and you move on and now you're in the marketplace.

**56:11** · So uh that's great and and really a good indicator too of of the generalized expansion of the ecosystem uh over time as well. So on that note uh I'd like to uh ask Ted uh to tell us a little bit more about the biometric quality tool uh that he has developed and MOSUP compliance programs and also just acknowledge that uh for Ted it is the middle of the night. So thank you again uh for joining us today Ted.

**56:41** · Pleasure Chris um and uh really great to be here. Thanks to the most ecosystem for uh inviting me to have to speak and to biometrics update as well. Um so I've got two parts to the presentation and I'll make it um fairly uh fairly brief and and to the point. Um the first part is uh just talking about a quick introduction to the uh MOSEP biometrics working group um uh which I uh currently chair.

**57:10** · Um and so um there are a few things that have been mentioned um by Sanjith um at the start uh that that kind of uh lean into the work that the biometric working group does. Um it's really a a focus on the specific biometric um standards and uh um issues which are going to affect which do affect and will affect MOSEP into the future.

**57:38** · Kind of looking both at um near-term and and slightly longer term uh um technical issues. Um so uh there are a range of um people that are part of that group. Um and we're we're currently in the process of expanding this uh but um there are two labs represented um an implementer and also

**58:01** · um NIST um as an observer um and the initial focus of the group has been building uh this um quality framework uh the most advanced compliance program um or MACP uh and so a range of different things that have had to happen for that to occur um including um

**58:24** · actually building out the compliance process itself and testing that it will work and and that com that um program at the moment it's very been very focused of course on making sure that um it can evaluate the quality of uh biometric capture um and essentially uh ensure that um uh pro uh devices that go through this pro program um can have an assurance assurance that they are indeed capturing um quality that is uh reason

**59:01** · you know at at the level that it's going to be good for a uh national ID style program um there have been a range of labs which have been accredited as um Sanjith mentioned um BC lab uh is one of those f andium um and uh I I think that there will be um a lot more work that will happen in the sector as the um importance and and the uh value of the MACP program uh becomes more widely known.

**59:34** · So um I want to kind of um switch hats uh for a second uh and now just talk um uh oh sorry before I do that apologies it is early here. Um so the the next point I was going to talk about was um just to tell you uh some of the work that we're leaning into next for the working group will be around um presentation attack testing uh how that um presentation attacks are going to be uh pad um art uh will be

**1:00:05** · integrated into MOSERP as well as new modalities adoption of other standards and um leaning into that point that Sanjith was making about the importance of of training as well.

**1:00:18** · Um so uh just quickly um the uh with a a slightly different hat on um we developed uh my uh company biomedics developed a open- source tool uh which we have where uh called open BQ and we've partnered with u MOSEP to make sure that that opensource tool can um basically integrate and deliver uh its benefits to the whole of the MOSEP community. Um, and so just quickly, uh, what is it?

**1:00:49** · It basically is a way of taking any type of biometric modality, um, and, uh, easily connecting it to, uh, quality algorithms at the back end, open source or otherwise. Um and then also um providing a mechanism to take that data which uh can be quite um detailed and complex uh and driving insights um for practical actions both through the use of AI and through other analytical techniques um and uh you know qualities are really

**1:01:27** · uh really important of course at the device level which uh we've already heard um uh some Some of our earlier uh speakers talk about how important it is to make sure that the quality of the biometric at the capture point is is good. Uh but actually quality kind of extends through the entire life cycle of uh a uh deployment.

**1:01:46** · Um and so um just making sure that you've got good quality at the front end um may not mean that you can pick up other issues which could be fixed through um uh making changes to um either software or training or um uh setup. Um so there are really it's a really we think it's a really important area.

**1:02:13** · Um, and so I'd encourage you if you're uh doing a MOOSE uh deployment, um, I've got the the website there, openbq.io down the bottom. Um, please go and have a look. Um, and if you're interested, um, sign up for our newsletter for more announcements. So, uh, thanks Chris. Back to you.

**1:02:32** · Thank you very much, Ted. Um, yeah, so that really sort of ties a bow on on a couple of the things we're talking about there, in particular, the biometric quality piece. Um, we've got some questions coming in from uh attendees.

**1:02:45** · So, thank you very much to those of you who posed some questions. We've got some good ones, too. So, uh, what I we we've got a panel discussion uh section of our presentation planned and I I think we're we're going to do a a rapidfire uh version or an abbreviated version, let's say, so that we can get to those questions. But one thing that I really wanted to ask in particular to Yodi and Sanjie is um because MOSUP is modular, different countries have different identity needs. They're starting from different places, right?

**1:03:12** · Um so implementations in a lot of cases look fairly different from each other. So what defines success in a MOSUP deployment? Um you know uh Yoda, you talked about uh key performance indicators. Um but maybe I could uh uh you know get uh either Sanjie or Yodi um whoever who who would like to start uh telling us what a mature and sustainable digital identity ecosystem looks like.

**1:03:42** · Do you want to lead off on that one Sanji?

**1:03:46** · Yeah.

**1:03:46** · So uh I think uh what's important is uh you know especially when it comes to uh the ecosystem there has to be a local capacity available within the country. I think that's one and uh quality of ecosystem is important as well. So it's not really about the the the number of partners in a country it's about the quality that they are offering and of course at the same time it should be accessible to the country. If the the knowledge is lying somewhere the country is not able to see that that's going to be difficult.

**1:04:17** · So it's important that uh the ease of discovery of these solutions is out there maybe in a forum or country is kind of planning something on top of it and uh sustainability of the ecosystem I would always tie to success stories by all partners or all parties right so if it's just successful for country and if it's only meeting their objective is not going to be sustainable it should also meet the objective of a partner who is working in the geography that means let it be a monetary uh engagement or any other way.

**1:04:48** · And it's all about the fine balance between an open-source solution versus a commercial solution coming together and then creating opportunity for everyone. And uh maturity is not when you have a perfect ecosystem. Maturity is when you understand that uh always at any given point in time you will have to work on at least five different things uh for the future. I think that's when you you are reaching that maturity because you have a clarity what to expect next and then you start working on that. Yeah.

**1:05:20** · Thanks Chris.

**1:05:22** · That's great. So it's that anticipation piece that uh that which I mean Yoda referred to earlier in in the DevOps sort of uh side of things. Um Yoda do you have anything to to add about uh you know what what you you know just an opportunity too to to uh to highlight a couple of points you're proud of uh that NIDP has achieved.

**1:05:43** · Right. So in country implementations technology is one thing. Today yes we're talking about mostly uh we're talking about technology essentially but uh another important aspect is this uh institutional alignment. That's usually the missing piece that you know that impedes countries from developing or deploying a very good DPI uh ecosystem digital ID. uh when you

**1:06:10** · talk about inclusion there's also the risk of uh registering the wrong person with the wrong data or the risk of fraud all of these issues. So uh having that kind of alignment and political support is a very key component of you know you can't just build the digital economy with MOSIP right you need that policy

**1:06:29** · and political support and instrumental alignment that's fantastic and um and if I could just maybe go back to you Yoda hey because we've got a couple of questions specifically about the uh Ethiopian context one is how the process of updating the digital ID um you know uh in a in a the life event civil registry

**1:06:51** · sense uh works um yeah does it does it get you know uh updated on the the civil registry side and push to the digital ID automatically or is do they do they function independently how does that work right so yeah this is one of like very important policy related questions relationship between digital ID and C registration which one comes first even because a lot of countries may not agree on that one does birth certificate state come first or digital ID or which one should be the basis.

**1:07:19** · So we've done in Ethiopia we've done like field by field harmonization policy like for for a happy case where the digital ID uh demographic data and civilization demographic data matches then we just do straightforward harmonization but for sorry my little girl is making noise in the background I apologize.

**1:07:39** · So but when there is unhappy case when the address in the civilization system is different from the address in the digital ID system when the age is different which is also very important uh in the name spelling difference or is it a complete name difference so we've done that type of field by field harmonization and we've reached we've been able to do a handshake on civil registration ID harmonization and all the way forward here but definitely it's very much context specific for every country.

**1:08:09** · So now uh when you when a new child is born uh the parents digital ID can be used to uh generate a new digital ID for the child uh through the integration that we did with the civilization system.

**1:08:25** · So the the all those major life events are pushed from one system to the other through that integration. Great. Um and another question here specifically for you Yoda hey uh uh you mentioned uh that uh fees for authentication uh paid by relying parties your your banks etc have begun.

**1:08:44** · Does this mean that uh you will stop using OTPs or will they use be used together with biometric authentication?

**1:08:52** · Is it finger or face or or just one of them? So how does how does the authentication?

**1:08:58** · So our plan is we want to charge like a B fee for OTP. We're also including TOTP. So OTP TOTP base fee if someone wants to access if a relying party or service provider wants to get face uh or fingerprint authentication with we plan to to charge slightly higher but uh our focus is you know when a CEO of a certain company or a bank president or a telecom company CEO looks at the bill of

**1:09:30** · the KYC bill they should it should not be significant enough to discourage them from using it. So our focus is volume uh and very small fees for all of these services.

**1:09:43** · Fantastic. Thank you. So that's uh that's the path to sustainability that uh I think uh some other implementations uh would like to uh to follow you on. Um we've got a couple of questions about technology specifically that I'd like to uh turn to now. um one on on voice uh what about uh you

**1:10:06** · know a potential role for voice within um within national ID systems and then let's let's deal with that together with contactless biometrics. Uh this question refers to um you know Andrew's point about uh about many many different challenges as well as Yoda's earlier point about uh you know the the impracticality of asking a farmer to travel 20 kilometers um you know to to access services.

**1:10:37** · So um is so I'll I'll ask you first Sanjit is there uh you know you you uh you have these uh you know emerging technologies obviously uh in the pipeline and and you talked about anticipation just a moment ago. What can you tell us about voice and contactless?

**1:10:54** · Yeah

**1:10:54** · so I think the first uh point is that most is not a standards body. So that means for us to kind of start adopting any modality for that matter there has to be some sort of a maturity that's kind of uh proven in a larger uh

**1:11:10** · you know national scale uh mechanism and uh having said that we are already working with uh two key players from voice biometrics so one is kaizen voice uh and then second is turant and the idea is to kind of integrate with mosip uh maybe put it through a small p

**1:11:29** · understand what are the problem statements are there look at what is the maturity and alongside of course Ted is also here and then see if there's a road map to kind of at least start looking into this on certain use cases I think that would be the direction but then there's a work that need to be done uh similarly for contactless we are working with identity and tech 5 a lot of integration is already done technology demonstration perspective but at the same time going back to the maturity of technology is important that we have evaluation schemes that's out there.

**1:12:01** · It's important that we have interoperability uh that is proven that means contact versus contactless how it's going to work and then there are some uh guidelines that we are really looking on to for example NIST was also giving a lot of publications on contactless and there are some implication on how the quality is looked into NFQ1 if I'm correct is not applicable for contactless so these open problem statements are there but we are for supporting any innovation uh you know that's precisely why we are working with our partners to demonstrate what is

**1:12:31** · possible what are the open problem statements what could be a possible uh way to adopt it but at the end of it we are not not a standards body maybe uh Chris I'm so sorry I probably I'll I'll hijack your position there a while maybe I'll request Ted to add on to this I'm sure he has got some views there as well yeah thanks thanks Sanjith yeah look um I think I just echo the points that you made um Sanjith um you know the the these These new uh modalities are very promising and

**1:13:03** · there are all sorts of ways that they could um they can be used but when you are doing a national ID system um enrollment is expensive uh costs are very uh you know if you if cost mistakes are very costly um and so it's very important to make sure that the technologies which are used are um properly proven at scale um and you know if you take um if you take contactless uh fingerprinting for instance um there

**1:13:34** · are some amazingly good usages usage patterns but for instance there's a difference between uh enrollment and um authent ver verification processes um and so I think uh the use cases for some of these biometrics really need to be worked out as well alongside it's not necessarily that that all of the biometrics will have the same set of core core usage.

**1:13:59** · Uh but I do definitely think that the modalities we've talked about will play a role in national ID systems at some point in the future.

**1:14:10** · Very interesting. And a good good point about the use cases. Um Andrew or uh Joseph, do would either of you like to jump in on that one?

**1:14:19** · Yeah, I'd love to chime in here. Um so as a biometric modality provider uh we have an ecosystem of solutions around contactless and something I'll say there is that my experience with it in the lab and working with pilots is that the technology is ready it works it's it's very good but the trusted compliances

**1:14:41** · are not quite there um so in contact fingerprinting it's appendix F uh that's an FBI standard and then if you have that piece of paper many governments around the world are okay great we trust that system we'll we feel comfortable using that for our national ID system in the contactless space as Sanjit alluded to some of the traditional standards the um NFIQ and other things uh just don't

**1:15:09** · really apply and there's sort of this feedback loop between two parties there are the compliance and standards bodies and then there's the market demand so sometimes a standard gets invented nobody's asking for it uh and other times the market really wants a technology and then the standards bodies are kind of scratching their heads.

**1:15:26** · Okay, how do we make a universal certification for this? Uh we've done some pilot programs with the cider affiliation and with NIST proving out this solution space and all the results are extremely positive but we're still waiting for uh some standards body to

**1:15:44** · have that stamp of approval that also gains market trust uh for governments to say yes we trust this standard now and uh the day that comes online we'll be one of the first in line to go get get our products uh certified Um, contactless holds immense promise. Uh, you know, almost everyone uh has a cell phone uh regardless of what they have access to otherwise.

**1:16:08** · And so it it's tremendously promising. uh we slightly foresee a hybrid scenario where you would still have uh for enrollment uh these quite robust kits that takes for example passport, ID, photos, face, fingerprint, iris. Uh and then on the other side, the authentication might be as simple as just pulling out a phone to access like a bank account or a national voting account. Uh that's more convenient.

**1:16:37** · Um I think that's the first way it would go would still be the full biometric enrollment and then authentication only on phones. But if the standard uh whatever standard is able to be developed is robust enough then um you know uh it it could take over that whole uh enrollment side as well. But yeah, that's how we see it right now.

**1:17:00** · Very interesting. And I mean it's it sounds encouraging, but also I I wonder if we're one bumping up against the limitation of the usefulness of appendix F and the way that it's applied, but I suspect that's an entire other uh webinar topic uh for another day. So um yeah, Joseph, do you have anything to uh to to add there either on the contactless side or on the voice side?

**1:17:24** · You mentioned earlier that uh that voice is a in the innovatric portfolio. Um Mhm. currently uh we don't support voice modality in our system. So I have no comments regarding this modality and regarding the contactless fingerprints uh from the AB's point of view it is just the question of quality of the captured images. If they are of some level of the quality then the matching engine is able to perform all the identification and verification.

**1:17:56** · Perfect. Thank you. Um, just a couple more uh quick questions here. Uh, does the MOSUP compliance testing include only API testing or is the accuracy of the AIS tested as well? Um, you know, I'll go right back to you with this one, Joseph. You you talked a little bit about this earlier.

**1:18:16** · Okay, I can start and perhaps Sanji then can confirm my claim. uh it is mostly uh testing of the API but al because there are also the data where we for example have to prove that uh we were able to find duplicates of the same uh person. There is also some

**1:18:37** · testing of the biometric identifications functionality but it is not so huge and extensive as we did with as as we do with our algorithms when we train them and validate the accuracy of these algorithms and that's where those other benchmarks that you mentioned uh during your presentation come in. Right. So um yeah and then uh you know what we're a little over time so we'll do one more uh before we run. What are the main challenges with the MOSUP platform especially for countries hoping to adopt it compared to closed systems?

**1:19:08** · Um so the a kind of a generalized question there. Um anybody like to jump in on main challenges uh for MOSIP?

**1:19:26** · We've talked about them a little bit. they've kind of come up um and and really I think uh I think one of the key points to emphasize is this is this is the role of the pilot process right you you start with that uh with that pilot so that you can be really clear on what the challenges are uh for your specific

**1:19:47** · uh country and and situation Sanj anything to to add to that yeah so I think uh when compared to a proprietary system uh you We have kind of talked about all the benefits that uh POSIP can actually bring in. Let it be ventilock in avoiding vendor lock in having an open source capability where countries can take lead uh based on standards and provability so that it actually can fit into the national digital infrastructure and that means if you have to really uh build on something

**1:20:17** · that is uh with your remaining systems you don't have to really reinvent the wheel you don't have to really build a new system you can just plug onto the existing. So I think the benefits are much much on the higher side. Uh but the only claim that we have seen where people say against an open source system they say is open source. So the source is open and it's everyone knows what is there. The security protocols and controls are you know available to everyone. So it's easy for someone to kind of hack into. But then that's where you know you you need to continuously improvise.

**1:20:47** · You need to make sure make sure you are always updating the systems even though you're talking about the protocol in public. you clearly make sure that these protocols are the latest and then people cannot hack into that. Right. So I think that's that's my perspective. I'm sure might have a different perspective. Uh but this is what this is what I feel. Yeah.

**1:21:09** · Great. Uh well we are we are well over time because it's been such an interesting uh presentation and uh we've had such good questions. So I want to thank all of our panelists. I should mention that it's the middle of the day for me. it's the very early in the morning or the very end of the workday or after work or the middle of the night for all of our panelists. So, a big thank you to all of you for joining us.

**1:21:32** · A thank you to all of you who uh joined to uh listen and watch and thank you to all of you who posed questions. It's uh it's been very enlightening for sure. Uh again, this uh webinar is being recorded and it will be sent to uh a link to that recording will be sent to everyone who's registered. uh we will also share uh share questions around uh with the panelists and and uh we will be sharing in that email contact for you to get a hold of the panelists to reach out with any further questions that you have.

**1:22:03** · So, uh, having said all of that, I I'd like to, uh, to just thank everyone one final time and, uh, tell you that we will be joining you again, uh, soon for our next look at, uh, biometrics and digital identity. So, until then, thank you and take care.

**1:22:26** · Thanks, Chris. Thank you.
