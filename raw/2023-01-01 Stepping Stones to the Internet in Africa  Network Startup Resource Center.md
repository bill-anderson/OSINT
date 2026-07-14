---
type: source
title: "Stepping Stones to the Internet in Africa (NSRC)"
publisher: Network Startup Resource Center
url: https://nsrc.org/africa-network-history
author: NSRC
published: 2023
date_precision: year
accessed: 2026-07-11
ingested: 2026-07-11
places: [XSS, TUN, ZAF, KEN]
topics: [infra.connect, capacity.research, data.open]
entities: [[nsrc]]
lens: []
---

<!-- Profile of the NSRC 'Stepping Stones' African network-history reference + interactive connectivity map: first African TCP/IP connection Oct 1991 (Tunisia); SA Nov 1991; Eritrea last (Nov 2000); FidoNet/UUCP precursors from the 1980s; end-2022 ~600m Africans online (~43%). Resource [[nsrc]]. -->

The first full Internet connection to the continent of Africa using TCP/IP occurred in October 1991, linking Tunisia to France, followed by South Africa in November 1991, connecting to Portland, Oregon, in the USA. Eritrea was the last country in Africa to establish a TCP/IP connection in November 2000. In the early 1990s, store-and-forward messaging systems using FidoNet or UUCP emerged as stepping stones on the road to full Internet connectivity. It was a major step forward when the transition to TCP/IP connectivity occurred in each country. This map illustrates some of the milestone moments seen through the lens of NSRC's work to support Internet connectivity in Africa over a period of three decades. For more information about the communications protocols, please click [here](#fidonet).

<iframe src="https://pages.uoregon.edu/infographics/NSRC/AfricaConnectivity/ConnectivityType.html">&lt;!--!Map goes here --&gt;</iframe>

### History

From dial-up phone connections using modems over copper phone lines in the 1980s and early 1990s to slow and expensive satellite TCP/IP links to modern high-speed undersea fiber cables and mobile telecommunications networks, it's been a remarkable journey over the past few decades.

Open architecture networking, fueled by open standards and open source software, led to grassroots style development of communications systems in the early days that leveraged the accessibility of these technologies to permit users to interconnect on an equal-access basis. However, “always-on” connectivity was an unattainable luxury in the 1990s for those who could not afford a leased line circuit (permanent connection) to Europe or North America. The earliest days of connectivity focused on electronic mail and, much like the international postal system, electronic communications systems were designed to bundle up mail for delivery. Rather than a postal carrier, electronic mail was batched and compressed, and relayed to a bigger electronic post office for onward delivery. In this way, a brief long-distance telephone call over a modem could deliver the mail for an entire country once upon a time…

---

### Fidonet

Before TCP/IP Internet communications were established, many African countries were connected to electronic mail systems through FidoNet. FidoNet [is a network system](https://nsrc.org/networks/fidonet/standards/fts-0001.016) widely used in the 1980s and 1990s as a means of sharing individual email and group discussion messages between electronic bulletin board systems (BBSes). FidoNet permitted users to send messages, files, documents, and emails between different BBSes over modems and telephone lines at varying speeds. Because FidoNet could be installed on personal computers, suddenly, global communication was within reach of anyone who could afford a PC and a modem. Thus FidoNet led the way in electronic communication in many African countries as a low-cost solution for accessing resources and information via the Internet. Organizations such as the [Association for Progressive Communications](https://apc.org/) (APC) helped establish FidoNet nodes in different countries across the continent as part of its international network supporting NGOs focused on education, health, the environment, human rights, and social justice. FidoNet networks could gateway email into the Internet, but because the messaging header format was not compatible with TCP/IP, the process was not always seamless. From the late 1980s through the mid-1990s, the Network Startup Resource Center (via PSGnet) operated FidoNet's international links from North America to the rest of the world's regions. Consisting of a few dozen direct dial-up links to Argentina, Australia, Germany, Hong Kong, the Netherlands, Singapore, South Africa, Taiwan, Thailand, and the UK, this system essentially linked FidoNet across the globe from the former USSR through Europe, the Middle East, North and South America, Oceania, Africa, and Asia. For a number of years, the NSRC served as a major [gateway between FidoNet and the Internet](https://nsrc.org/networks/fidonet/standards/fsc-0034.002), moving over 3000 messages per day. The [first known FidoNet email message initiated from Africa](https://nsrc.org/db/lookup/report.php?id=896820010472:489008357&fromISO=ZA) occurred in October 1988, sent by Professor Pat Terry from Rhodes University in South Africa to NSRC founder Randy Bush in Portland, Oregon, in the USA.

---

### UUCP

UUCP (which stands for Unix-to-Unix Copy) is a protocol used in the 1970s, 1980s, and into the 1990s for transferring files between Unix systems over dial-up phone lines and modems. UUCP was designed to be simple and efficient. It allowed for batched, compressed email and group messages to be distributed in a store-and-forward format over telephone lines in cases of limited network connectivity. Messages and files are forwarded through a series of intermediate nodes until they reach their destination. Transitioning to UUCP was a relatively simple upgrade from FidoNet for operators in African countries that were equipped with computers, phones, and modems but were still struggling with the costs of affordable access to equipment and infrastructure for full TCP/IP Internet connectivity. The [NSRC actively deployed UUCP systems](https://nsrc.org/db/lookup/report.php?id=898128827821:488960662&fromISO=ZA) to enable communications with nascent network operators in dozens of countries as a stepping stone to more complete Internet services. UUCP remains in use in some niche areas and has been utilized for backup connections to networks in Africa during cable and satellite outages.

---

### TCP/IP

TCP/IP (Transmission Control Protocol/Internet Protocol) is a set of communication protocols that form the foundation of the global Internet, which is used by billions of devices and systems worldwide. TCP is a transport layer protocol designed to enable reliable, ordered, and error-checked delivery of packets of data over the network for applications such as email, file transfers, and the World Wide Web. IP is a network layer protocol that is responsible for routing data packets from the source host to the destination host. IP provides a way of addressing and locating devices on the network and provides the underlying infrastructure for a wide range of other communication protocols and applications. Robert Kahn and Vinton Cerf worked together in the 1970s to design the TCP/IP protocols and published a paper entitled " [A Protocol for Packet Network Intercommunication](https://ieeexplore.ieee.org/document/1092259) " in May 1974, which established the foundational protocols of today’s Internet. At the end of 2022, the number of people in Africa with some form of Internet access (about 60% by mobile phones) has grown to nearly 600 million, or about 43% of the population.

---

### DNSSEC (Domain Name System Security Extensions)

[DNSSEC](https://en.wikipedia.org/wiki/Domain_Name_System_Security_Extensions) is a set of extensions for the domain name system (DNS), the system that maps domain names to IP addresses on the Internet. It provides an additional layer of security to the DNS by digitally signing DNS data to prevent tampering, spoofing, and other forms of attacks. DNSSEC uses public key cryptography to sign DNS records and provide a chain of trust from the root of the domain name system to the end user. It ideally provides protection against a range of security threats, including cache poisoning, DNS hijacking, and man-in-the-middle attacks, which helps protect Internet users. DNSSEC is being adopted by top-level domains (TLDs), including country code TLDs, such as.ke for Kenya. Wider deployment, including the participation of Internet registries and registrars, contributes to making the Internet safer and more secure. You can trace the adoption of DNSSEC across Africa on the map.

### The Map

One might expect each country to follow a natural progression from Fidonet to UUCP to TCP/IP, but that may be more the exception than the rule. FidoNet was common among the earliest adopters to create a low-cost communications system, but for countries joining later, they were able to make the leap directly to TCP/IP. You can track the evolution by clicking on either the country or the technology.

In many cases, on the left-hand side, you can see records of the original emails exchanged between NSRC and Internet pioneers on the continent, including “first ping” data, recording the first moments when African operators became part of the interactive global fabric of the Internet. While the Internet ostensibly has no geography, the backbone in the early days was firmly established by research and education networks in the United States and Europe. Operators invested heavily to finance the embryonic infrastructure to create the first points of Internet connectivity. Increased [investment in subsea](https://manypossibilities.net/african-undersea-cables/) and [terrestrial fiber-optic infrastructure](https://afterfiber.nsrc.org/) has driven rapid growth in international Internet capacity, resulting in both greater availability and lower price for high-speed transmission capacity across Africa.

**Questions and suggestions about this map can be sent to [nsrc@nsrc.org](mailto:nsrc@nsrc.org)**