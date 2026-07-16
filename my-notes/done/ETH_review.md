# Ethiopia (ETH) — dataset→wiki intake review

*Run: 2026-07-15. Workflow: `country-ingest-workflow.md` Phase 1 (assessment).*

## Header counts

- **Total distinct source URLs:** 147
- **Already held (hub):** 0 — the `wiki/places/ETH.md` hub is a large, `status: active` record. It cites its sources by wiki-link **title**, and its news stream (BiometricUpdate, TechCabal, itnewsafrica, WB features, etc.) is largely a *different* set of sources from this dataset's primary/official/reference URLs, so there are **no exact source matches** to hold out. Many candidates are the **source-behind** or an **update-to** a held event — these are kept and flagged `OVERLAP` below (Bill dedupes at ingest).
- **Excluded (pre-2024):** 16 — dropped on publication date (see list).
- **New & in-window:** 131

| Bucket | Count |
|---|---|
| Aweb | 44 |
| Apdf | 13 |
| B | 18 |
| C | 15 |
| D | 41 |
| **excluded (pre-2024)** | 16 |
| **held** | 0 |

### Clusters / merge flags (for Phase 2 + ingest)

- **Fayda–banking integration (Dec-2025):** Addis Insight (NBE full integration) + BiometricUpdate 202512 (banks harmonize accounts) — one event.
- **EthSwitch late-2025 overhaul:** Capital Ethiopia 2025-11-02 (P2P > ATM) + 2025-11-30 (15-year vision) — same strategic overhaul.
- **National Digital Payments Strategy 2026-2030 / national instant payment:** Fana (launch) + Shega (outbound cross-border) + CIO Africa (instant payments) — one policy/launch event.
- **Fayda 90m roadmap:** IDTechWire + BiometricUpdate 202506 — OVERLAP with held Fayda-roadmap items; likely absorb.
- **M-PESA / EthSwitch surge (held):** stockmarket.et (5m) + Trends N Africa (integration complete) OVERLAP the held 2026-03-30 M-PESA +258% item — dedupe against hub.
- **e-tax / ICTD:** two ICTD publication URLs are the **same** e-tax paper (build one clip); plus the ICTD digital-ID-tax blog.
- **Ethio Telecom hyperscale DC:** TechAfricaNews (Shandong Hi-Speed, A-web) is the datable primary; the two DCD hyperscale/national-DC pages sit in B (undated, DCD unreliable).
- **Data-centre facilities:** most facility-launch news is pre-2024 (Wingu 2022, Raxio 2023, RedFox 2022, Ethio Telecom/Huawei 2021) → excluded; the DataCenterMap directory pages and vendor facility pages are D (entity pages).

### Date-check flags (verify true publication date; enforce cutoff at fetch/ingest)

- `trade.gov` e-Invest page — use on-page 'Last published date' (dataset Year 2023 may be stale).
- WB EeGIF governance PDF (A-PDF) — doc id suggests **2022**; may be pre-2024.
- WB P179040 security-review PDF (A-PDF) — id suggests **~2023-12**; verify.
- NBE mobile-money directive news (B) — dataset Year 2020; verify recent vs pre-2024.
- FSD Ethiopia mobile-money PDF, APAI-CRVS snapshot, UNCDF digital-literacy article — currency unverified (B/A-PDF).
- DatacenterDynamics pages fetch unreliably (livecrawl timeouts) — expect skips.

## A-web · ingest (non-PDF) — CC fetches in Phase 2  (44)

- [https://www.itnewsafrica.com/2025/07/how-fayda-digital-id-powers-ethiopias-ambitious-one-stop-government-service-platform](https://www.itnewsafrica.com/2025/07/how-fayda-digital-id-powers-ethiopias-ambitious-one-stop-government-service-platform)
  - IT News Africa, Jul-2025, country-specific — Fayda→one-stop gov platform. OVERLAP with held MESOB thread (earlier framing).
  - _Year 2024/2025 · ds:dpi — Data Exchange / Business Registration & Licensing Integration; Data Exchange / Civil Registration & Vital Statistics Integration; Data Exchange / Operational Status (+4 more)_
- [https://idtechwire.com/ethiopia-launches-fayda-digital-id-system-to-cover-90-million-citizens-by-2027](https://idtechwire.com/ethiopia-launches-fayda-digital-id-system-to-cover-90-million-citizens-by-2027)
  - IDTechWire, country-specific — Fayda to cover 90m by 2027. OVERLAP with held Fayda roadmap.
  - _Year 2024/2025 · ds:dpi — Data Exchange / Data Sovereignty Provisions; Data Exchange / Digital ID Integration; Data Exchange / Universal Accessibility (+3 more)_
- [https://addisinsight.net/2025/12/10/nbe-launches-full-integration-of-national-digital-id-with-banking-system](https://addisinsight.net/2025/12/10/nbe-launches-full-integration-of-national-digital-id-with-banking-system)
  - Addis Insight, 2025-12-10 — NBE full Fayda-banking integration. CLUSTER: Fayda-banking Dec-2025 (with biometricupdate 202512).
  - _Year 2025 · ds:dpi — Data Exchange / Digital ID Integration; Data Exchange / Digital Payments Integration_
- [https://www.biometricupdate.com/202512/ethiopia-banks-harmonize-customer-account-information-with-fayda-digital-id](https://www.biometricupdate.com/202512/ethiopia-banks-harmonize-customer-account-information-with-fayda-digital-id)
  - BiometricUpdate 202512 — banks harmonize accounts with Fayda. CLUSTER: Fayda-banking Dec-2025.
  - _Year 2025 · ds:dpi — Data Exchange / Digital ID Integration; Digital Id / Banking/Financial Services Use; Digital Id / Digital Authentication Function (+2 more)_
- [https://reg-tech.co/2024/07/19/ethiopias-egovernment-interoperability-leap](https://reg-tech.co/2024/07/19/ethiopias-egovernment-interoperability-leap)
  - reg-tech.co, 2024-07-19 — analysis of Ethiopia e-gov interoperability leap (in-window). Lower-authority outlet.
  - _Year 2024 · ds:dpi — Data Exchange / Implementation Roadmap_
- [https://www.ena.et/web/eng/w/eng_4759694](https://www.ena.et/web/eng/w/eng_4759694)
  - Ethiopian News Agency (official), 2025 — strategic framework. National news, dated on-topic.
  - _Year 2025 · ds:dpi — Data Exchange / Strategic Framework_
- [https://www.weforum.org/stories/2024/03/bridging-the-digital-divide-challenges-and-opportunities-for-ethiopias-digital-transformation](https://www.weforum.org/stories/2024/03/bridging-the-digital-divide-challenges-and-opportunities-for-ethiopias-digital-transformation)
  - World Economic Forum, 2024-03 — Ethiopia digital-divide/transformation. Country-specific dated analysis.
  - _Year 2024 · ds:dpi — Data Exchange / Urban-Rural Digital Divide_
- [https://www.techhiveadvisory.africa/insights/review-of-ethiopias-data-protection-act](https://www.techhiveadvisory.africa/insights/review-of-ethiopias-data-protection-act)
  - TechHive Advisory — legal review of Ethiopia's Data Protection Act (Proc. 1321/2024). Analyst review of a specific instrument.
  - _Year 2024/2025 · ds:dpi — Digital Id / Data Protection Act; Digital Id / Data Sharing Rules; Digital Pay / Data Breach Notification Requirements (+3 more)_
- [https://kiyalaw.com/legal-update4.html](https://kiyalaw.com/legal-update4.html)
  - Kiya Law legal update — DP authority oversight. Law-firm review of a specific instrument.
  - _Year 2025 · ds:dpi — Digital Id / Data Protection Authority Oversight_
- [https://shega.co/news/one-year-on-ethiopia-s-personal-data-protection-law-faces-a-slow-path-to-enforcement](https://shega.co/news/one-year-on-ethiopia-s-personal-data-protection-law-faces-a-slow-path-to-enforcement)
  - Shega (national trade press) — one year on, DP law slow enforcement. Dated country-specific.
  - _Year 2025 · ds:dpi — Digital Id / Data Protection Authority Oversight_
- [https://www.biometricupdate.com/202506/ethiopias-digital-id-chief-lays-out-roadmap-for-reaching-90m-enrollments-by-2027](https://www.biometricupdate.com/202506/ethiopias-digital-id-chief-lays-out-roadmap-for-reaching-90m-enrollments-by-2027)
  - BiometricUpdate 202506 — Fayda chief roadmap to 90m by 2027. OVERLAP with held Fayda roadmap.
  - _Year 2025 · ds:dpi — Digital Id / Banking/Financial Services Use; Digital Id / Cross-Border Recognition; Digital Id / Digital ID System Exists (+3 more)_
- [https://www.mosip.io/news_events/ethiopia-s-national-id-program-nidp-extends-their-partnership-with-mosip](https://www.mosip.io/news_events/ethiopia-s-national-id-program-nidp-extends-their-partnership-with-mosip)
  - MOSIP news — NIDP extends MOSIP partnership. Org deployment news; OVERLAP with held MOSIP-ecosystem item.
  - _Year 2025 · ds:dpi — Digital Id / Maintenance_
- [https://www.ebc.et/english/Home/NewsDetails?NewsId=2981](https://www.ebc.et/english/Home/NewsDetails?NewsId=2981)
  - Ethiopian Broadcasting Corp news — mandatory-ID status. National news, dated on-topic.
  - _Year 2025 · ds:dpi — Digital Id / Enrollment Mandatory Status_
- [https://rrs.et/ethiopia-launches-inclusive-id-system-for-refugees-boosts-access-to-national-services](https://rrs.et/ethiopia-launches-inclusive-id-system-for-refugees-boosts-access-to-national-services)
  - Refugees & Returnees Service (official) — inclusive refugee ID launch. Country-specific.
  - _Year 2025 · ds:dpi — Digital Id / Non-National Eligibility_
- [https://www.biometricupdate.com/202404/ethio-telecom-sets-1m-per-month-fayda-digital-id-registration-target](https://www.biometricupdate.com/202404/ethio-telecom-sets-1m-per-month-fayda-digital-id-registration-target)
  - BiometricUpdate 202404 — Ethio Telecom 1m/month Fayda registration target. In-window.
  - _Year 2025 · ds:dpi — Digital Id / SIM Card Registration Use_
- [https://www.worldbank.org/en/news/feature/2025/02/27/the-transformative-power-of-ethiopia-afe-digital-id-unlocking-a-better-future-for-all](https://www.worldbank.org/en/news/feature/2025/02/27/the-transformative-power-of-ethiopia-afe-digital-id-unlocking-a-better-future-for-all)
  - World Bank feature, 2025-02-27 — transformative power of Ethiopia AFE digital ID. Country feature.
  - _Year 2024/2025 · ds:dpi — Digital Id / Social Services Use; Registries / Data exchange integration; Registries / National Id integration (+1 more)_
- [https://www.ictd.ac/publication/e-tax-system-adoption-and-tax-compliance-in-ethiopia-large-and-medium-taxpayers-experience](https://www.ictd.ac/publication/e-tax-system-adoption-and-tax-compliance-in-ethiopia-large-and-medium-taxpayers-experience)
  - ICTD research publication — e-tax system adoption in Ethiopia (large/medium taxpayers). Dated country research.
  - _Year 2024 · ds:dpi — Digital Pay / Revenue Collection_
- [https://www.thereporterethiopia.com/36959](https://www.thereporterethiopia.com/36959)
  - The Reporter Ethiopia (national newspaper) — digital revenue collection. Dated on-topic.
  - _Year 2024 · ds:dpi — Digital Pay / Revenue Collection_
- [https://www.ictd.ac/publication/e-tax-system-adoption-and-tax-compliance-in-ethiopia-large-and-medium-taxpayers-experience-2](https://www.ictd.ac/publication/e-tax-system-adoption-and-tax-compliance-in-ethiopia-large-and-medium-taxpayers-experience-2)
  - ICTD e-tax publication (duplicate of the primary ICTD e-tax page) — build one clip only.
  - _Year 2024 · ds:dpi — Digital Pay / Tax Portal_
- [https://newsletter.shega.co/p/issue-49-telebirr-transacts-22bn-br-bulk-payment](https://newsletter.shega.co/p/issue-49-telebirr-transacts-22bn-br-bulk-payment)
  - Shega newsletter #49 — telebirr transacts ETB22bn bulk payment. Trade-press, dated.
  - _Year 2024 · ds:dpi — Digital Pay / Business-to-Business (B2B) Payments_
- [https://thereportermagazines.com/3477](https://thereportermagazines.com/3477)
  - The Reporter magazine — B2B/merchant payments. National, dated.
  - _Year 2024/2025 · ds:dpi — Digital Pay / Business-to-Business (B2B) Payments; Digital Pay / Person-to-Business (P2B) Merchant Payments_
- [https://capitalethiopia.com/2025/11/02/ethswitch-reports-historic-growth-as-p2p-payments-surpass-atm-withdrawals](https://capitalethiopia.com/2025/11/02/ethswitch-reports-historic-growth-as-p2p-payments-surpass-atm-withdrawals)
  - Capital Ethiopia, 2025-11-02 — EthSwitch P2P surpass ATM. CLUSTER: EthSwitch late-2025.
  - _Year 2024 · ds:dpi — Digital Pay / Business-to-Business (B2B) Payments_
- [https://capitalethiopia.com/2025/11/30/ethswitch-unveils-ambitious-15-year-digital-payment-vision-in-strategic-overhaul](https://capitalethiopia.com/2025/11/30/ethswitch-unveils-ambitious-15-year-digital-payment-vision-in-strategic-overhaul)
  - Capital Ethiopia, 2025-11-30 — EthSwitch 15-year vision. CLUSTER: EthSwitch late-2025.
  - _Year 2025 · ds:dpi — Digital Pay / Cross-Border Payment Functionality_
- [https://shega.co/news/ethiopia-plans-to-allow-outbound-cross-border-payments-in-proposed-digital-payments-strategy](https://shega.co/news/ethiopia-plans-to-allow-outbound-cross-border-payments-in-proposed-digital-payments-strategy)
  - Shega — outbound cross-border payments in proposed strategy. CLUSTER: National Digital Payments Strategy 2026-2030.
  - _Year 2025 · ds:dpi — Digital Pay / Cross-Border Payment Functionality_
- [https://www.connectingafrica.com/fintech/m-pesa-lakipay-to-enhance-digital-payments-in-ethiopia](https://www.connectingafrica.com/fintech/m-pesa-lakipay-to-enhance-digital-payments-in-ethiopia)
  - Connecting Africa — M-PESA/LakiPay partnership. Country-specific fintech.
  - _Year 2025 · ds:dpi — Digital Pay / Cross-Border Payment Functionality; Digital Pay / Person-to-Business (P2B) Merchant Payments_
- [https://blogs.worldbank.org/en/nasikiliza/leveraging-e-payments-financial-inclusion-ethiopia-afe-0324](https://blogs.worldbank.org/en/nasikiliza/leveraging-e-payments-financial-inclusion-ethiopia-afe-0324)
  - World Bank blog, 2024-03 — e-payments & financial inclusion (AFE). Country blog.
  - _Year 2024 · ds:dpi — Digital Pay / Government-to-Person (G2P) Payments_
- [https://www.fanamc.com/english/ethiopia-launches-national-digital-payments-strategy-2026-2030-and-instant-payment-system](https://www.fanamc.com/english/ethiopia-launches-national-digital-payments-strategy-2026-2030-and-instant-payment-system)
  - Fana Media Corp (national) — launch of National Digital Payments Strategy 2026-2030 + instant payment system. CLUSTER.
  - _Year 2024 · ds:dpi — Digital Pay / Government-to-Person (G2P) Payments_
- [https://www.stockmarket.et/m-pesa-ethiopia-reaches-5-million-active-users-as-digital-payments-gain-momentum](https://www.stockmarket.et/m-pesa-ethiopia-reaches-5-million-active-users-as-digital-payments-gain-momentum)
  - stockmarket.et — M-PESA Ethiopia reaches 5m active users. OVERLAP with held M-PESA surge (5.2m) item.
  - _Year 2025 · ds:dpi — Digital Pay / Person-to-Business (P2B) Merchant Payments_
- [https://trendsnafrica.com/m-pesa-ethiopia-completes-integration-with-ethswitch-to-drive-nationwide-financial-inclusion-and-seamless-interoperability](https://trendsnafrica.com/m-pesa-ethiopia-completes-integration-with-ethswitch-to-drive-nationwide-financial-inclusion-and-seamless-interoperability)
  - Trends N Africa — M-PESA completes EthSwitch integration. OVERLAP with held M-PESA/EthSwitch item; lower-authority outlet.
  - _Year 2025 · ds:dpi — Digital Pay / Person-to-Person (P2P) Payments_
- [https://www.michalsons.com/blog/the-ethiopian-data-protection-law/75488](https://www.michalsons.com/blog/the-ethiopian-data-protection-law/75488)
  - Michalsons — analysis of the Ethiopian Data Protection Law. Analyst review of a specific instrument.
  - _Year 2024 · ds:dpi — Digital Pay / Data Breach Notification Requirements; Digital Pay / Data Privacy Legislation Coverage_
- [https://www.belex.com/en/case_study/personal-data-protection-proclamation-1321-2024](https://www.belex.com/en/case_study/personal-data-protection-proclamation-1321-2024)
  - BelEx — case study/analysis of Personal Data Protection Proclamation 1321/2024. Analyst review of instrument.
  - _Year 2024 · ds:dpi — Digital Pay / Data Privacy Legislation Coverage_
- [https://african.business/2024/04/finance-services/ethiopias-journey-towards-digital-payments-and-inclusive-financial-services](https://african.business/2024/04/finance-services/ethiopias-journey-towards-digital-payments-and-inclusive-financial-services)
  - African Business, 2024-04 — Ethiopia's journey to digital payments/inclusion. Country-specific.
  - _Year 2024 · ds:dpi — Digital Pay / Public Performance Reporting_
- [https://cioafrica.co/ethiopia-launches-national-instant-payments](https://cioafrica.co/ethiopia-launches-national-instant-payments)
  - CIO Africa — Ethiopia launches national instant payments (2026). CLUSTER: instant payment / Digital Payments Strategy 2026-2030.
  - _Year 2026 · ds:dpi — Digital Pay / Digital Payment System Exists_
- [https://digitalfinance.shega.co/insights/articles/findex-2025-and-ethiopia-s-digital-financial-leap-momentum-without-maturity](https://digitalfinance.shega.co/insights/articles/findex-2025-and-ethiopia-s-digital-financial-leap-momentum-without-maturity)
  - Shega Digital Finance — Findex 2025 & Ethiopia's digital-financial leap. Trade-press analysis, dated.
  - _Year 2025 · ds:dpi — Digital Pay / Active Digital Payment Users_
- [https://news.broadcastmediaafrica.com/2025/08/21/ethiopia-ethio-telecom-collaborates-with-huawei-to-enhance-4g-capacity](https://news.broadcastmediaafrica.com/2025/08/21/ethiopia-ethio-telecom-collaborates-with-huawei-to-enhance-4g-capacity)
  - Broadcast Media Africa, 2025-08-21 — Ethio Telecom–Huawei 4G capacity. Country-specific.
  - _Year 2025 · ds:dpi — ICT Infrastructure / 4G/LTE Population Coverage_
- [https://datareportal.com/reports/digital-2025-ethiopia](https://datareportal.com/reports/digital-2025-ethiopia)
  - DataReportal Digital 2025 Ethiopia — dated reference (prior-year comparator baseline).
  - _Year 2025 · ds:dpi — ICT Infrastructure / Internet Usage Rate_
- [https://datareportal.com/reports/digital-2026-ethiopia](https://datareportal.com/reports/digital-2026-ethiopia)
  - DataReportal Digital 2026 Ethiopia — dated reference (current baseline).
  - _Year 2025 · ds:dpi — ICT Infrastructure / Mobile Phone Penetration; ICT Infrastructure / Smartphone Adoption_
- [https://www.ena.et/web/eng/w/eng_7971189](https://www.ena.et/web/eng/w/eng_7971189)
  - Ethiopian News Agency (official), 2025 — government data-centre / cloud strategy. National news.
  - _Year 2025 · ds:dpi — ICT Infrastructure / Government Data Center / Cloud Strategy_
- [https://www.trade.gov/market-intelligence/ethiopia-digitized-e-invest-system](https://www.trade.gov/market-intelligence/ethiopia-digitized-e-invest-system)
  - trade.gov CCG market intelligence — Ethiopia digitized e-Invest system. DATE-CHECK: use on-page 'last published' date (dataset Year 2023 may be stale).
  - _Year 2023 · ds:dpi — Registries / Status_
- [https://www.ictd.ac/blog/ethiopia-national-digital-id-breakthrough-tax-system-transformation](https://www.ictd.ac/blog/ethiopia-national-digital-id-breakthrough-tax-system-transformation)
  - ICTD blog — Ethiopia national digital ID breakthrough for tax-system transformation. Dated country research.
  - _Year 2023/2024 · ds:dpi — Registries / Business register integration; Registries / Data exchange integration; Registries / National Id integration (+2 more)_
- [https://www.2merkato.com/news/energy-and-mining/8781-ethiopia-bitdeer-says-oromia-bitcoin-mining-site-buildout-is-complete-with-40-mw-online-and-20-mw-awaiting-power](https://www.2merkato.com/news/energy-and-mining/8781-ethiopia-bitdeer-says-oromia-bitcoin-mining-site-buildout-is-complete-with-40-mw-online-and-20-mw-awaiting-power)
  - 2merkato, 2024 — Bitdeer Oromia buildout complete (40MW online). OVERLAP with held bitcoin-mining/compute (infra.energy) thread.
  - _Year 2024 · ds:dc — Bitdeer Oromia (Geek Zone Data Centre PLC) / Holeta_
- [https://techafricanews.com/2024/09/24/ethio-telecom-pursues-strategic-partnership-with-shandong-hi-speed-for-hyperscale-data-center](https://techafricanews.com/2024/09/24/ethio-telecom-pursues-strategic-partnership-with-shandong-hi-speed-for-hyperscale-data-center)
  - TechAfricaNews, 2024-09-24 — Ethio Telecom–Shandong Hi-Speed hyperscale DC partnership. Country-specific.
  - _ds:dc — Ethio Telecom Hyperscale Data Centre (planned) / Addis Ababa_
- [https://dhis2.org/enhancing-healthcare-in-ethiopia-using-dhis2](https://dhis2.org/enhancing-healthcare-in-ethiopia-using-dhis2)
  - DHIS2.org — Ethiopia deployment case. Org page; OVERLAP with held DHIS2 thread.
  - _ds:rural — Clinic_
- [https://www.ena.et/web/eng/w/eng_8528358](https://www.ena.et/web/eng/w/eng_8528358)
  - Ethiopian News Agency (official) — police digitalisation. National news, on-topic.
  - _ds:rural — Police_

## A-PDF · ingest (PDF) — Bill handles by hand  (13)

- [https://www.pmo.gov.et/media/other/Digital_Ethiopia_2030.pdf](https://www.pmo.gov.et/media/other/Digital_Ethiopia_2030.pdf)
  - Official PMO strategy PDF — Digital Ethiopia 2030 (DE2030). Primary instrument behind the heavily-held DE2030 hub thread.
  - _Year 2024/2025 · ds:dpi — Data Exchange / AI/Analytics Capabilities; Data Exchange / Agriculture System Integration; Data Exchange / Data Sovereignty Provisions (+11 more)_
- [https://thedocs.worldbank.org/en/doc/003d76985cbd41c53cfa9825d2464495-0460012022/original/I-3-9-1-EeGIF-Governance-and-Compliance.pdf](https://thedocs.worldbank.org/en/doc/003d76985cbd41c53cfa9825d2464495-0460012022/original/I-3-9-1-EeGIF-Governance-and-Compliance.pdf)
  - World Bank Ethiopia e-Gov Interoperability Framework (EeGIF) governance PDF — primary instrument. DATE-CHECK: doc id suggests 2022; verify cutoff (may be pre-2024).
  - _Year 2024/2025 · ds:dpi — Data Exchange / Enabling Legislation; Data Exchange / Sub-National Participation_
- [https://documents1.worldbank.org/curated/en/099102925060510930/pdf/P179040-49e3036e-1e1a-40ff-97e0-effe57cb36f7.pdf](https://documents1.worldbank.org/curated/en/099102925060510930/pdf/P179040-49e3036e-1e1a-40ff-97e0-effe57cb36f7.pdf)
  - World Bank curated PDF (P179040, Ethiopia Digital ID project), ~2025 — primary project doc (civil-reg integration).
  - _Year 2025 · ds:dpi — Digital Id / Civil Registration Integration; Digital Id / Digital Authentication Function; Digital Id / Electronic Database (+1 more)_
- [https://aln.africa/wp-content/uploads/2024/04/Ethiopias-New-Data-Protection-Law-Enhancing-Privacy-and-Security-in-the-Digital-Age-ALN-Mesfin-Tafesse-and-Associates.pdf](https://aln.africa/wp-content/uploads/2024/04/Ethiopias-New-Data-Protection-Law-Enhancing-Privacy-and-Security-in-the-Digital-Age-ALN-Mesfin-Tafesse-and-Associates.pdf)
  - ALN / Mesfin Tafesse & Associates, 2024-04 — analysis PDF of the new Data Protection Law. Analyst review (PDF).
  - _Year 2025 · ds:dpi — Digital Id / Data Protection Act_
- [https://documents1.worldbank.org/curated/en/099102523122010001/pdf/P1790400f12bd00ec0abca07db7f4723cda.pdf](https://documents1.worldbank.org/curated/en/099102523122010001/pdf/P1790400f12bd00ec0abca07db7f4723cda.pdf)
  - World Bank curated PDF (P179040 security review). DATE-CHECK: id suggests ~2023-12; verify cutoff.
  - _Year 2025 · ds:dpi — Digital Id / Security Reviews_
- [https://nbe.gov.et/wp-content/uploads/2024/04/EDPC_EDPP.pdf](https://nbe.gov.et/wp-content/uploads/2024/04/EDPC_EDPP.pdf)
  - National Bank of Ethiopia PDF (EDPC/EDPP), uploaded 2024-04 — official primary instrument, in-window.
  - _Year 2024/2025 · ds:dpi — Digital Pay / Government-to-Person (G2P) Payments; Digital Pay / Person-to-Business (P2B) Merchant Payments; Digital Pay / Person-to-Government (P2G) Payments (+1 more)_
- [https://fsdethiopia.org/wp-content/pdf/Financial%20Sector%20Deepening%20Ethiopia%20Blog%20_%20Mobile%20Money%20in%20Ethiopia.pdf](https://fsdethiopia.org/wp-content/pdf/Financial%20Sector%20Deepening%20Ethiopia%20Blog%20_%20Mobile%20Money%20in%20Ethiopia.pdf)
  - FSD Ethiopia blog PDF — mobile money in Ethiopia. Analysis (PDF); DATE-CHECK currency.
  - _Year 2024 · ds:dpi — Digital Pay / Government-to-Person (G2P) Payments; Digital Pay / Person-to-Government (P2G) Payments_
- [https://www.africanenda.org/uploads/files/siips2025/siips_2025_EthSwitch-Ethiopia_CaseStudy_en.pdf](https://www.africanenda.org/uploads/files/siips2025/siips_2025_EthSwitch-Ethiopia_CaseStudy_en.pdf)
  - AfricaNenda SIIPS-2025 EthSwitch Ethiopia case study PDF — country-specific dated reference (2025).
  - _Year 2025/2026 · ds:dpi — Digital Pay / Central Bank Involvement in Governance; Digital Pay / Digital Payment System Exists_
- [https://nbe.gov.et/wp-content/uploads/2025/11/First-Quarter-Report-2024-25.pdf](https://nbe.gov.et/wp-content/uploads/2025/11/First-Quarter-Report-2024-25.pdf)
  - NBE Q1 2024/25 report, uploaded 2025-11 — official stats (PDF).
  - _Year 2024 · ds:dpi — Digital Pay / Public Performance Reporting_
- [https://nbe.gov.et/wp-content/uploads/2025/01/Fourth-Quarter-Report-2023-24-new.pdf](https://nbe.gov.et/wp-content/uploads/2025/01/Fourth-Quarter-Report-2023-24-new.pdf)
  - NBE Q4 2023/24 report, uploaded 2025-01 — official stats (PDF).
  - _Year 2024 · ds:dpi — Digital Pay / Public Performance Reporting_
- [https://nbe.gov.et/wp-content/uploads/2025/06/Annual-Report-2023-2024.pdf](https://nbe.gov.et/wp-content/uploads/2025/06/Annual-Report-2023-2024.pdf)
  - NBE Annual Report 2023/24, uploaded 2025-06 — official stats (PDF).
  - _Year 2024 · ds:dpi — Digital Pay / Public Performance Reporting_
- [https://documents1.worldbank.org/curated/en/099030824142042717/pdf/P176629109fd9d0d41a1641562c9dc749cc.pdf](https://documents1.worldbank.org/curated/en/099030824142042717/pdf/P176629109fd9d0d41a1641562c9dc749cc.pdf)
  - World Bank curated PDF (P176629), id suggests 2024-03 — primary project doc (registries/national ID).
  - _Year 2023/2024/2025 · ds:dpi — Registries / Inclusivity; Registries / National Id integration; Registries / Status (+1 more)_
- [https://www.railtel.in/images/pdf/Press%20Release_RailTel%20to%20build%20Data%20Centre%20in%20Ethiopia.pdf](https://www.railtel.in/images/pdf/Press%20Release_RailTel%20to%20build%20Data%20Centre%20in%20Ethiopia.pdf)
  - RailTel press release PDF — govt (MFA) data centre for Ethiopia. Primary (PDF).
  - _ds:dc — Ministry of Foreign Affairs Data Centre (RailTel) / Addis Ababa_

## B · check first  (18)

- [https://globalallianceagainsthungerandpoverty.org/country-example/ethiopia-productive-safety-net-program-psnp](https://globalallianceagainsthungerandpoverty.org/country-example/ethiopia-productive-safety-net-program-psnp)
  - Alliance country-example page on PSNP social-protection DPI — usable reference, undated/unknown-currency; human glance.
  - _Year 2024 · ds:dpi — Data Exchange / Social Protection Integration_
- [https://core.ac.uk/download/pdf/599233414.pdf](https://core.ac.uk/download/pdf/599233414.pdf)
  - CORE repository academic PDF — e-tax adoption/compliance study. Academic, human glance.
  - _Year 2024 · ds:dpi — Digital Pay / Revenue Collection; Digital Pay / Tax Portal_
- [https://www.vatupdate.com/2025/06/27/ethiopia-modernizes-vat-system-to-tax-non-resident-digital-services-and-platforms](https://www.vatupdate.com/2025/06/27/ethiopia-modernizes-vat-system-to-tax-non-resident-digital-services-and-platforms)
  - VATupdate, 2025-06-27 — Ethiopia VAT on non-resident digital services. Specialist aggregator; human glance.
  - _Year 2024 · ds:dpi — Digital Pay / Revenue Collection_
- [https://nbe.gov.et/nbe_news/the-national-bank-of-ethiopia-has-issued-a-revised-directive-for-mobile-money-providers-to-promote-safety-competition-and-innovation](https://nbe.gov.et/nbe_news/the-national-bank-of-ethiopia-has-issued-a-revised-directive-for-mobile-money-providers-to-promote-safety-competition-and-innovation)
  - NBE news — revised mobile-money directive. DATE-CHECK: dataset Year 2020; verify whether recent revision or pre-2024.
  - _Year 2020 · ds:dpi — Digital Pay / Consumer Protection Framework for Payments_
- [https://www.afribit.co.za/2025/03/27/google-expands-in-africa-how-gcps-new-cloud-region-competes-with-aws](https://www.afribit.co.za/2025/03/27/google-expands-in-africa-how-gcps-new-cloud-region-competes-with-aws)
  - Afribit, 2025-03 — Google/GCP Africa cloud region (not Ethiopia-specific). Human glance.
  - _Year 2025 · ds:dpi — ICT Infrastructure / Cloud Services Availability_
- [https://gogla.org/wp-content/uploads/2024/11/Ethiopia-Country-Brief.pdf](https://gogla.org/wp-content/uploads/2024/11/Ethiopia-Country-Brief.pdf)
  - GOGLA off-grid energy country brief, 2024-11 — marginal (energy, not core digital). Human glance.
  - _Year 2023 · ds:dpi — ICT Infrastructure / Off-Grid and Distributed Energy Policy_
- [https://www.sciencedirect.com/science/article/abs/pii/S0301421525000382](https://www.sciencedirect.com/science/article/abs/pii/S0301421525000382)
  - ScienceDirect abstract (2025, urban-rural electrification) — academic/paywalled, marginal energy topic. Human glance.
  - _Year 2021 · ds:dpi — ICT Infrastructure / Urban-Rural Electrification Gap_
- [https://www.uncdf.org/article/8195](https://www.uncdf.org/article/8195)
  - UNCDF article — basic digital literacy. DATE-CHECK / scope; human glance.
  - _Year 2025 · ds:dpi — ICT Infrastructure / Basic Digital Literacy_
- [https://www.gsma.com/solutions-and-impact/connectivity-for-good/mobile-for-development/blog/mobile-has-the-potential-to-empower-rural-women-but-persistent-gaps-must-be-addressed](https://www.gsma.com/solutions-and-impact/connectivity-for-good/mobile-for-development/blog/mobile-has-the-potential-to-empower-rural-women-but-persistent-gaps-must-be-addressed)
  - GSMA blog — rural-women mobile gap (not Ethiopia-specific). Human glance.
  - _Year 2023 · ds:dpi — ICT Infrastructure / Gender Gap in ICT Access_
- [https://www.datacenterdynamics.com/en/news/safaricom-to-build-data-center-in-addis-ababa-ethiopia](https://www.datacenterdynamics.com/en/news/safaricom-to-build-data-center-in-addis-ababa-ethiopia)
  - DatacenterDynamics — Safaricom to build Addis data centre. DATE-CHECK (dataset Year 2022; may be pre-2024); DCD fetch unreliable.
  - _Year 2022 · ds:dc — RedFox Modular Data Centre 1 (RFETH-MDC01) / Addis Ababa; Safaricom Ethiopia Addis Ababa Data Centre (IPDC ICT Park) / Addis Ababa_
- [https://www.datacenterdynamics.com/en/news/ethiopia-plans-national-data-center-cloud-storage](https://www.datacenterdynamics.com/en/news/ethiopia-plans-national-data-center-cloud-storage)
  - DCD — Ethiopia plans national data centre/cloud storage. DATE-CHECK (undated; DCD fetch unreliable).
  - _ds:dc — Ethiopian National Data Centre (cloud.gov.et) / Addis Ababa_
- [https://www.datacenterdynamics.com/en/news/ethio-telecom-looks-to-develop-hyperscale-data-center-in-ethiopia](https://www.datacenterdynamics.com/en/news/ethio-telecom-looks-to-develop-hyperscale-data-center-in-ethiopia)
  - DCD — Ethio Telecom hyperscale DC plan. DATE-CHECK (undated; DCD fetch unreliable).
  - _ds:dc — Ethio Telecom Hyperscale Data Centre (planned) / Addis Ababa_
- [https://www.datacenterdynamics.com/en/news/indias-railtel-to-develop-govt-data-center-for-ethiopia](https://www.datacenterdynamics.com/en/news/indias-railtel-to-develop-govt-data-center-for-ethiopia)
  - DCD — India's RailTel to develop govt DC for Ethiopia. DATE-CHECK (undated; DCD unreliable) — primary is RailTel PR (A-PDF).
  - _ds:dc — Ministry of Foreign Affairs Data Centre (RailTel) / Addis Ababa_
- [https://www.frontiersin.org/journals/digital-health/articles/10.3389/fdgth.2025.1554995/pdf](https://www.frontiersin.org/journals/digital-health/articles/10.3389/fdgth.2025.1554995/pdf)
  - Frontiers in Digital Health, 2025 — rural clinic/DHIS2 study (PDF). Academic; human glance (on-topic health DPI).
  - _ds:rural — Clinic_
- [https://pmc.ncbi.nlm.nih.gov/articles/PMC12403253](https://pmc.ncbi.nlm.nih.gov/articles/PMC12403253)
  - PMC academic article — rural health/clinic digitalisation. Academic; human glance.
  - _ds:rural — Clinic_
- [https://www.state.gov/wp-content/uploads/2025/07/62451_ETHIOPIA-2024-HUMAN-RIGHTS-REPORT.pdf](https://www.state.gov/wp-content/uploads/2025/07/62451_ETHIOPIA-2024-HUMAN-RIGHTS-REPORT.pdf)
  - US State Dept Ethiopia 2024 Human Rights Report (pub 2025-07) — general country report, marginal to DPI. Human glance.
  - _ds:rural — Police_
- [https://apai-crvs.uneca.org/sites/default/files/resourcefiles/CRVS_EthiopiaSnapshot_e.pdf](https://apai-crvs.uneca.org/sites/default/files/resourcefiles/CRVS_EthiopiaSnapshot_e.pdf)
  - UNECA APAI-CRVS Ethiopia CRVS snapshot PDF — country CRVS reference. DATE-CHECK currency; human glance.
  - _ds:rural — Registry_
- [https://www.child-identity.org/wp-content/uploads/2025/06/Taju-Mohammed-Presentation.pdf](https://www.child-identity.org/wp-content/uploads/2025/06/Taju-Mohammed-Presentation.pdf)
  - Child Identity conference presentation (2025-06) on Ethiopia CRVS/child ID — presentation slides; human glance.
  - _ds:rural — Registry_

## C · lead only (do not cite)  (15)

- [https://integratedbiometrics.com/feature/ethiopia-fayda-id-and-integrated-biometrics-bring-digital-inclusion](https://integratedbiometrics.com/feature/ethiopia-fayda-id-and-integrated-biometrics-bring-digital-inclusion)
  - Integrated Biometrics vendor feature/case study — marketing; mine for primaries, do not cite.
  - _Year 2025/2026 · ds:dpi — Digital Id / Biometric Data Collection; Digital Id / Civil Registration Integration; Digital Id / Digital ID System Exists (+6 more)_
- [https://www.scribd.com/document/892895915/Proposal-Naol-Teshome](https://www.scribd.com/document/892895915/Proposal-Naol-Teshome)
  - Scribd — student proposal. Tertiary, lead-only.
  - _Year 2025 · ds:dpi — Digital Id / Security Reviews_
- [https://www.scribd.com/document/716254016/https-etax-mor-gov-et-Google-Search](https://www.scribd.com/document/716254016/https-etax-mor-gov-et-Google-Search)
  - Scribd — screenshot of a Google search. Junk, lead-only.
  - _Year 2024 · ds:dpi — Digital Pay / Tax Portal_
- [https://www.youtube.com/watch?v=STVL4S8NT7k](https://www.youtube.com/watch?v=STVL4S8NT7k)
  - YouTube video — tax portal. Tertiary, lead-only.
  - _Year 2024 · ds:dpi — Digital Pay / Tax Portal_
- [https://en.wikipedia.org/wiki/Pan-African_Payment_and_Settlement_System](https://en.wikipedia.org/wiki/Pan-African_Payment_and_Settlement_System)
  - Wikipedia PAPSS — tertiary, lead-only.
  - _Year 2025 · ds:dpi — Digital Pay / Cross-Border Payment Functionality_
- [https://www.eftcorp.com/insights/shaping-ethiopias-payment-landscape-with-policy-infrastructure-and-partnership](https://www.eftcorp.com/insights/shaping-ethiopias-payment-landscape-with-policy-infrastructure-and-partnership)
  - EFT Corp vendor insights blog — marketing, lead-only.
  - _Year 2025 · ds:dpi — Digital Pay / Cross-Border Payment Functionality_
- [https://www.scribd.com/document/981542326/Financial-Consumer-Protection-Directive-No-91-2020](https://www.scribd.com/document/981542326/Financial-Consumer-Protection-Directive-No-91-2020)
  - Scribd — FCP Directive text (2020). Instrument on Scribd, lead-only/pre-window content.
  - _Year 2020 · ds:dpi — Digital Pay / Consumer Protection Framework for Payments_
- [https://www.scribd.com/document/878879377/GSMA-Mobile-Money-Report-2025-98-Pgs](https://www.scribd.com/document/878879377/GSMA-Mobile-Money-Report-2025-98-Pgs)
  - Scribd copy of GSMA Mobile Money report — tertiary host, lead-only (global doc).
  - _Year 2025 · ds:dpi — Digital Pay / Scheme Rules Publicly Available_
- [https://www.linkedin.com/posts/shegahq_digitalfinance-akofada-financialinclusion-activity-7351302433035190274-79x7](https://www.linkedin.com/posts/shegahq_digitalfinance-akofada-financialinclusion-activity-7351302433035190274-79x7)
  - LinkedIn post (Shega) — social, lead-only.
  - _Year 2025 · ds:dpi — Digital Pay / Active Digital Payment Users_
- [https://www.linkedin.com/pulse/gci-2024-where-does-ethiopia-stand-pkfethiopia-tprde](https://www.linkedin.com/pulse/gci-2024-where-does-ethiopia-stand-pkfethiopia-tprde)
  - LinkedIn Pulse (PKF) — GCI 2024 Ethiopia standing. Tertiary, lead-only.
  - _Year 2024 · ds:dpi — ICT Infrastructure / National Cybersecurity Readiness_
- [https://www.raxiogroup.com/raxio-data-centre-in-ethiopia-et1-receives-tier-iii-certification-from-uptime-institute](https://www.raxiogroup.com/raxio-data-centre-in-ethiopia-et1-receives-tier-iii-certification-from-uptime-institute)
  - Raxio press release (Tier-III cert, ~2022) — vendor press; mine for primary if needed.
  - _Year 2022 · ds:dpi — ICT Infrastructure / Commercial Data Center Presence_
- [https://www.facebook.com/DigitalAfricanSummit/posts/152887390540945](https://www.facebook.com/DigitalAfricanSummit/posts/152887390540945)
  - Facebook post — social, lead-only.
  - _Year 2022 · ds:dpi — ICT Infrastructure / Technology and Innovation Hubs_
- [https://octoverse.github.com/2022/global-tech-talent](https://octoverse.github.com/2022/global-tech-talent)
  - GitHub Octoverse 2022 global tech-talent — not country-specific, 2022; lead-only.
  - _Year 2022 · ds:dpi — ICT Infrastructure / Developer and Tech Community_
- [https://www.youtube.com/watch?v=fGdA1r0BNGI](https://www.youtube.com/watch?v=fGdA1r0BNGI)
  - YouTube video — registries. Tertiary, lead-only.
  - _Year 2026 · ds:dpi — Registries / Status_
- [https://repository.ju.edu.et/bitstream/handle/123456789/4495/Wubnesh%20Mati.pdf?sequence=1&amp](https://repository.ju.edu.et/bitstream/handle/123456789/4495/Wubnesh%20Mati.pdf?sequence=1&amp)
  - Jimma University thesis repository — student thesis, lead-only.
  - _ds:rural — School_

## D · resource / entity (not a dated source)  (41)

- [https://id.gov.et/mesob](https://id.gov.et/mesob)
  - Official MESOB service page on national-ID portal — standing entity/portal (MESOB launch 2026-06-20 held).
  - _Year 2024/2025 · ds:dpi — Data Exchange / Business Registration & Licensing Integration; Data Exchange / Civil Registration & Vital Statistics Integration; Data Exchange / Driver Licensing Integration (+5 more)_
- [https://dial.global/work/strengthening-ethiopias-national-data-governance-ecosystem](https://dial.global/work/strengthening-ethiopias-national-data-governance-ecosystem)
  - DIAL programme/work landing page — standing org page; source-behind the held DIAL national-data-governance items (2025-09-18, 2026-03-04). OVERLAP, not a fresh dated source.
  - _Year 2024/2025 · ds:dpi — Data Exchange / Digital Payments Integration; Data Exchange / Health System Integration; Data Exchange / National Planning & Statistics Integration (+3 more)_
- [https://www.ethiotelecom.et/national-id](https://www.ethiotelecom.et/national-id)
  - Ethio Telecom national-ID service page — standing portal/entity.
  - _Year 2025 · ds:dpi — Digital Id / Cost of Credential; Digital Id / Enrollment Eligibility Age; Digital Id / Enrollment Mandatory Status (+2 more)_
- [https://chilot.wordpress.com/wp-content/uploads/2023/02/5d4b8-ethiopian-digital-identification-draft-proclamation-number-2022-english.pdf](https://chilot.wordpress.com/wp-content/uploads/2023/02/5d4b8-ethiopian-digital-identification-draft-proclamation-number-2022-english.pdf)
  - Draft ID Proclamation (2022) English text hosted on blog — legal-instrument text (superseded by Proc. 1284/2023); standing/exempt, low priority.
  - _Year 2025 · ds:dpi — Digital Id / Digital ID Specific Regulation; Digital Id / Judicial Oversight; Digital Id / Legal Proof Status_
- [https://help.unhcr.org/ethiopia/services/documentation/proof-of-registration-and-refugee-id](https://help.unhcr.org/ethiopia/services/documentation/proof-of-registration-and-refugee-id)
  - UNHCR Ethiopia refugee-ID help/service page — standing resource.
  - _Year 2025 · ds:dpi — Digital Id / Biometric Data Collection; Digital Id / Data Sharing Rules; Digital Id / Enrollment Eligibility Age (+2 more)_
- [https://id.et/benefits](https://id.et/benefits)
  - National-ID benefits page — standing portal.
  - _Year 2025 · ds:dpi — Digital Id / Digital ID Specific Regulation; Digital Id / Legal Framework; Digital Id / Legal Proof Status_
- [https://digitalpolicyalert.org/change/12102-data-protection-authority-governance-in-personal-data-protection-proclamation-proclamation-no-13212024](https://digitalpolicyalert.org/change/12102-data-protection-authority-governance-in-personal-data-protection-proclamation-proclamation-no-13212024)
  - DigitalPolicyAlert change record (Proc. 1321/2024 DPA governance) — reference registry.
  - _Year 2025 · ds:dpi — Digital Id / Data Protection Authority Oversight_
- [https://extranet.who.int/cpcd/health-legislation/ethiopian-digital-identification-proclamation-no-12842023](https://extranet.who.int/cpcd/health-legislation/ethiopian-digital-identification-proclamation-no-12842023)
  - WHO legislation database entry (Digital ID Proc. 1284/2023) — reference registry.
  - _Year 2025 · ds:dpi — Digital Id / Legal Framework_
- [https://id.gov.et](https://id.gov.et)
  - National-ID homepage — standing portal/entity.
  - _Year 2023/2024/2025 · ds:dpi — Digital Id / Digital ID System Exists; Digital Id / Electronic Database; Registries / Data exchange integration (+2 more)_
- [https://www.ethiotelecom.et/telebirr/utility-bill-payment-telebirr](https://www.ethiotelecom.et/telebirr/utility-bill-payment-telebirr)
  - telebirr utility-bill service page — standing portal.
  - _Year 2024 · ds:dpi — Digital Pay / Person-to-Government (P2G) Payments; Digital Pay / Revenue Collection_
- [https://customs.erca.gov.et/trade/support/faq?lang=en](https://customs.erca.gov.et/trade/support/faq?lang=en)
  - ERCA customs FAQ/support page — standing portal.
  - _Year 2024 · ds:dpi — Digital Pay / Tax Portal_
- [https://www.ethiotelecom.et/telebirr/bulk-payment-telebirr](https://www.ethiotelecom.et/telebirr/bulk-payment-telebirr)
  - telebirr bulk-payment service page — standing portal.
  - _Year 2024 · ds:dpi — Digital Pay / Business-to-Business (B2B) Payments_
- [https://www.ethiotelecom.et/telebirr/%E1%88%86%E1%8B%95%E1%89%83%E1%8B%8E%E1%89%BD-%E1%8A%A5%E1%8A%93-%E1%8A%A0%E1%8C%88%E1%88%8D%E1%8C%8D%E1%88%8E%E1%89%B6%E1%89%BD-%E1%8B%AD%E1%8A%AD%E1%8D%88%E1%88%89](https://www.ethiotelecom.et/telebirr/%E1%88%86%E1%8B%95%E1%89%83%E1%8B%8E%E1%89%BD-%E1%8A%A5%E1%8A%93-%E1%8A%A0%E1%8C%88%E1%88%8D%E1%8C%8D%E1%88%8E%E1%89%B6%E1%89%BD-%E1%8B%AD%E1%8A%AD%E1%8D%88%E1%88%89)
  - telebirr (Amharic) merchant-payments service page — standing portal.
  - _Year 2025 · ds:dpi — Digital Pay / Person-to-Business (P2B) Merchant Payments_
- [https://www.eservices.gov.et/en](https://www.eservices.gov.et/en)
  - National e-services portal — standing portal.
  - _Year 2024 · ds:dpi — Digital Pay / Person-to-Government (P2G) Payments_
- [https://digitalpolicyalert.org/event/25647-enters-into-force-with-grace-period-nbe-financial-consumer-protection-directive-no-fcp012020](https://digitalpolicyalert.org/event/25647-enters-into-force-with-grace-period-nbe-financial-consumer-protection-directive-no-fcp012020)
  - DigitalPolicyAlert event (FCP directive 2020) — reference registry.
  - _Year 2020 · ds:dpi — Digital Pay / Consumer Protection Framework for Payments_
- [https://www.dlapiperdataprotection.com/guide.pdf?c=ET](https://www.dlapiperdataprotection.com/guide.pdf?c=ET)
  - DLA Piper Data Protection Laws of the World — Ethiopia country guide. Reference tool.
  - _Year 2024 · ds:dpi — Digital Pay / Data Breach Notification Requirements_
- [https://digitalpolicyalert.org/event/24922-implemented-personal-data-protection-proclamation-proclamation-no-13212024-including-data-localisation-requirements](https://digitalpolicyalert.org/event/24922-implemented-personal-data-protection-proclamation-proclamation-no-13212024-including-data-localisation-requirements)
  - DigitalPolicyAlert event (Proc. 1321/2024 implemented, data-localisation) — reference registry.
  - _Year 2024 · ds:dpi — Digital Pay / Data Privacy Legislation Coverage_
- [https://dig.watch/updates/national-payments-system-anchors-ethiopias-digital-shift](https://dig.watch/updates/national-payments-system-anchors-ethiopias-digital-shift)
  - Digital Watch update — reference/monitor page.
  - _Year 2025 · ds:dpi — Digital Pay / Pro-Poor Governance Mechanisms_
- [https://www.statista.com/statistics/1274040/price-for-mobile-data-in-ethiopia](https://www.statista.com/statistics/1274040/price-for-mobile-data-in-ethiopia)
  - Statista data page — reference indicator.
  - _Year 2023 · ds:dpi — ICT Infrastructure / Mobile Data Affordability_
- [https://www.itu.int/en/ITU-D/Statistics/Documents/DDD/ddd_ETH.pdf](https://www.itu.int/en/ITU-D/Statistics/Documents/DDD/ddd_ETH.pdf)
  - ITU country data profile PDF (2022) — multi-country reference flagship.
  - _Year 2022 · ds:dpi — ICT Infrastructure / International Internet Bandwidth_
- [https://pulse.internetsociety.org/en/ixp-tracker/country/ET](https://pulse.internetsociety.org/en/ixp-tracker/country/ET)
  - Internet Society IXP tracker — registry/data page.
  - _Year 2026 · ds:dpi — ICT Infrastructure / Internet Exchange Point Presence_
- [https://rise.esmap.org/country/ethiopia](https://rise.esmap.org/country/ethiopia)
  - RISE/ESMAP country page — indicator/registry.
  - _Year 2023 · ds:dpi — ICT Infrastructure / Electricity Access Rate_
- [https://www.enterprisesurveys.org/content/dam/enterprisesurveys/documents/country-profiles/Ethiopia-2015.pdf](https://www.enterprisesurveys.org/content/dam/enterprisesurveys/documents/country-profiles/Ethiopia-2015.pdf)
  - World Bank Enterprise Surveys Ethiopia 2015 profile — reference flagship (cite-don't-absorb).
  - _Year 2015 · ds:dpi — ICT Infrastructure / Grid Reliability (Power Outage Frequency)_
- [https://www.ceicdata.com/en/ethiopia/energy-production-and-consumption/et-renewable-electricity-output--of-total-electricity-output](https://www.ceicdata.com/en/ethiopia/energy-production-and-consumption/et-renewable-electricity-output--of-total-electricity-output)
  - CEIC data page — reference indicator.
  - _Year 2015 · ds:dpi — ICT Infrastructure / Renewable Energy Share of Generation_
- [https://www.wipo.int/edocs/gii-ranking/2025/et.pdf](https://www.wipo.int/edocs/gii-ranking/2025/et.pdf)
  - WIPO GII 2025 Ethiopia ranking PDF — reference flagship.
  - _Year 2025 · ds:dpi — ICT Infrastructure / Global Innovation Index Ranking_
- [https://www.universityguru.com/universities--ethiopia](https://www.universityguru.com/universities--ethiopia)
  - University directory — reference/registry.
  - _Year 2025 · ds:dpi — ICT Infrastructure / Tertiary ICT/STEM Education_
- [https://www.aacrrsa.gov.et](https://www.aacrrsa.gov.et)
  - Addis Ababa City registration authority homepage — standing portal.
  - _Year 2011 · ds:dpi — Registries / Scope; Registries / Status_
- [https://land.et](https://land.et)
  - National land/cadastre portal — standing portal.
  - _Year 2025 · ds:dpi — Registries / Data exchange integration; Registries / Separate cadastral register; Registries / Status (+1 more)_
- [https://mui.gov.et/land-and-cadastre-ceo](https://mui.gov.et/land-and-cadastre-ceo)
  - Ministry of Urban & Infrastructure land-and-cadastre page — standing portal.
  - _Year 2025 · ds:dpi — Registries / Separate cadastral register; Registries / Status_
- [https://www.datacentermap.com/ethiopia/addis-ababa/safaricom-addis-ababa-data-centre](https://www.datacentermap.com/ethiopia/addis-ababa/safaricom-addis-ababa-data-centre)
  - DataCenterMap directory entry — registry.
  - _ds:dc — Safaricom Ethiopia Addis Ababa Data Centre (IPDC ICT Park) / Addis Ababa_
- [https://www.datacentermap.com/ethiopia/addis-ababa/safaricom-kality-data-centre](https://www.datacentermap.com/ethiopia/addis-ababa/safaricom-kality-data-centre)
  - DataCenterMap directory entry — registry.
  - _Year 2022 · ds:dc — Safaricom Ethiopia Kality Data Centre / Akaky Kaliti_
- [https://www.raxiogroup.com/data-centres/ethiopia](https://www.raxiogroup.com/data-centres/ethiopia)
  - Raxio Ethiopia facility page — standing entity/resource.
  - _Year 2023 · ds:dc — Raxio Ethiopia ET1 / Addis Ababa_
- [https://www.datacentermap.com/ethiopia/addis-ababa/raxio-ethiopia](https://www.datacentermap.com/ethiopia/addis-ababa/raxio-ethiopia)
  - DataCenterMap directory entry — registry.
  - _Year 2023 · ds:dc — Raxio Ethiopia ET1 / Addis Ababa_
- [https://www.datacentermap.com/ethiopia/addis-ababa/wingu-africa-data-center-addis-abba](https://www.datacentermap.com/ethiopia/addis-ababa/wingu-africa-data-center-addis-abba)
  - DataCenterMap directory entry — registry.
  - _Year 2022 · ds:dc — Wingu Africa Data Centre Addis Ababa (ETH1) / Addis Ababa_
- [https://www.datacentermap.com/ethiopia/addis-ababa/redfox-modular-data-center-1](https://www.datacentermap.com/ethiopia/addis-ababa/redfox-modular-data-center-1)
  - DataCenterMap directory entry — registry.
  - _Year 2022 · ds:dc — RedFox Modular Data Centre 1 (RFETH-MDC01) / Addis Ababa_
- [https://www.datacentermap.com/ethiopia/addis-ababa/bitdeer-oromia](https://www.datacentermap.com/ethiopia/addis-ababa/bitdeer-oromia)
  - DataCenterMap directory entry — registry.
  - _Year 2024 · ds:dc — Bitdeer Oromia (Geek Zone Data Centre PLC) / Holeta_
- [https://www.bitdeer.com/shop/global/datacenter/geek-zone-data-center-plc](https://www.bitdeer.com/shop/global/datacenter/geek-zone-data-center-plc)
  - Bitdeer/Geek Zone facility shop page — standing entity/resource.
  - _Year 2024 · ds:dc — Bitdeer Oromia (Geek Zone Data Centre PLC) / Holeta_
- [https://www.sundataworld.io](https://www.sundataworld.io)
  - Sun Data World homepage — standing entity/resource.
  - _ds:dc — Sun Data World Data Centre / Addis Ababa_
- [https://www.ipdc.gov.et/media/ICT_Park_Investors_detail.pdf](https://www.ipdc.gov.et/media/ICT_Park_Investors_detail.pdf)
  - IPDC ICT Park investors detail PDF — standing reference/investor doc.
  - _ds:dc — Sun Data World Data Centre / Addis Ababa_
- [https://www.cloud.gov.et](https://www.cloud.gov.et)
  - National data-centre / gov cloud portal — standing portal.
  - _ds:dc — Ethiopian National Data Centre (cloud.gov.et) / Addis Ababa_
- [https://apai-crvs.uneca.org/sites/default/files/resourcefiles/Digitalization%20of%20Civil%20Registration%20and%20Vital%20Statistics%20in%20Africa.pdf](https://apai-crvs.uneca.org/sites/default/files/resourcefiles/Digitalization%20of%20Civil%20Registration%20and%20Vital%20Statistics%20in%20Africa.pdf)
  - UNECA continental CRVS digitalisation report — multi-country reference flagship.
  - _ds:rural — Registry_

## Excluded — pre-2024  (16)

- [https://www.worldbank.org/en/news/press-release/2023/12/13/world-bank-supports-afe-ethiopias-digital-id-project-to-increase-access-to-services-and-economic-opportunities](https://www.worldbank.org/en/news/press-release/2023/12/13/world-bank-supports-afe-ethiopias-digital-id-project-to-increase-access-to-services-and-economic-opportunities) — World Bank press release dated 2023-12-13 — before cutoff.
- [https://migrantmoney.uncdf.org/wp-content/uploads/2023/01/Ethiopia-Digital-Payments-Assessment.pdf](https://migrantmoney.uncdf.org/wp-content/uploads/2023/01/Ethiopia-Digital-Payments-Assessment.pdf) — UNCDF Ethiopia Digital Payments Assessment, uploaded 2023-01 — before cutoff.
- [https://furtherafrica.com/2022/09/13/ethiopia-telebirr-to-ease-payment-for-online-govt-services](https://furtherafrica.com/2022/09/13/ethiopia-telebirr-to-ease-payment-for-online-govt-services) — FurtherAfrica, 2022-09 — before cutoff.
- [https://chilot.wordpress.com/2011/01/19/trade-practice-and-consumer-protection-proclamation-no-6852010](https://chilot.wordpress.com/2011/01/19/trade-practice-and-consumer-protection-proclamation-no-6852010) — Blog post 2011 on 2010 proclamation — before cutoff.
- [https://startupbrics.com/ethiopia-gebeya-on-the-rise-after-a-successful-2-million-seed-round](https://startupbrics.com/ethiopia-gebeya-on-the-rise-after-a-successful-2-million-seed-round) — StartupBrics, 2020 — before cutoff.
- [https://www.datacenterdynamics.com/en/news/raxio-launches-data-center-in-addis-ababa-ethiopia](https://www.datacenterdynamics.com/en/news/raxio-launches-data-center-in-addis-ababa-ethiopia) — DCD — Raxio ET1 launch (2023) — before cutoff.
- [https://www.wingu.africa/latest-news/wingu-inaugurates-world-class-data-centre-advancing-ethiopias-digital-economy](https://www.wingu.africa/latest-news/wingu-inaugurates-world-class-data-centre-advancing-ethiopias-digital-economy) — Wingu press — ETH1 inauguration (2022) — before cutoff.
- [https://www.telecompaper.com/news/wingu-africa-hosts-first-ethiopian-ixp-addix--1503256](https://www.telecompaper.com/news/wingu-africa-hosts-first-ethiopian-ixp-addix--1503256) — Telecompaper — first Ethiopian IXP AddIX (2022) — before cutoff.
- [https://shega.co/news/diaspora-owned-it-firm-redfox-opens-first-modular-data-center-in-ict-park](https://shega.co/news/diaspora-owned-it-firm-redfox-opens-first-modular-data-center-in-ict-park) — Shega — RedFox modular DC opening (2022) — before cutoff.
- [https://www.datacenterdynamics.com/en/news/ethio-telecom-opens-new-huawei-built-modular-data-center-in-addis-ababa-ethiopia](https://www.datacenterdynamics.com/en/news/ethio-telecom-opens-new-huawei-built-modular-data-center-in-addis-ababa-ethiopia) — DCD — Ethio Telecom Huawei modular DC (2021) — before cutoff.
- [https://www.samenacouncil.org/samena_daily_news?news=84581](https://www.samenacouncil.org/samena_daily_news?news=84581) — SAMENA daily news (2021), low-authority — before cutoff.
- [https://furtherafrica.com/2022/05/24/ethio-telecom-to-lease-data-center-to-5-private-institutions](https://furtherafrica.com/2022/05/24/ethio-telecom-to-lease-data-center-to-5-private-institutions) — FurtherAfrica, 2022-05 — before cutoff.
- [https://allafrica.com/stories/202011240668.html](https://allafrica.com/stories/202011240668.html) — AllAfrica, 2020-11 — before cutoff.
- <https://www.educationcannotwait.org/sites/default/files/2022-03/Strengthening%20Education%20Management%20Information%20Systems%20(EMIS> — Education Cannot Wait EMIS report, 2022-03 — before cutoff (and marginal, education).
- [https://riseprogramme.org/sites/default/files/2023-03/GEQIP-E%20Implementation%20Practices%20and%20Value-Added%20Learning%20at%20Primary%20Schools%20in%20Ethiopia_0.pdf](https://riseprogramme.org/sites/default/files/2023-03/GEQIP-E%20Implementation%20Practices%20and%20Value-Added%20Learning%20at%20Primary%20Schools%20in%20Ethiopia_0.pdf) — RISE GEQIP-E report, 2023-03 — before cutoff.
- [https://www.unodc.org/documents/evaluation/Independent_Project_Evaluations/2022/Final_Evaluation_Report_ETHX97.pdf](https://www.unodc.org/documents/evaluation/Independent_Project_Evaluations/2022/Final_Evaluation_Report_ETHX97.pdf) — UNODC project evaluation, 2022 — before cutoff.

---

## Phase 2 — Fetch run summary (2026-07-15)

**A-web fetched:** 44 URLs → **37 clips** placed in `/new-queue`, **6 skipped**, **1 duplicate** merged.

**Skips (7 URLs → 6 items):**
- MOSIP "NIDP extends partnership with MOSIP" — page is dated **23 Feb 2022** (100k-registration pilot); **pre-2024**, skipped. (Dataset Year 2025 = maintenance; true page is old.)
- The Reporter Ethiopia /36959 (e-invoicing) — page dated **14 Oct 2023**; **pre-2024**, skipped.
- Shega newsletter issue-49 (Telebirr 2.2bn) — page dated **5 Sep 2022**; **pre-2024**, skipped.
- trade.gov e-Invest — on-page "Last published" **09/20/2023**; **pre-2024**, skipped (confirms the date-check flag).
- rrs.et refugee-ID launch — host returns **"Account Suspended"** (no body); skipped (fetch-fail).
- belex.com DP Proclamation 1321/2024 — timed out once, refetched: page is a **thin teaser** pointing to an offsite newsletter; DP-law already covered by Michalsons/Kiya/TechHive → skipped (thin).
- ICTD e-tax publication appeared under **two URLs** (…/experience and …/experience-2) → one clip built.

**Date corrections found on fetch (dataset Year misled):**
- ENA eng_7971189 = **21 Dec 2025** — the actual **Digital Ethiopia 2030 launch** by PM Abiy (INSA/AI-Institute/Ethio Telecom remarks). Distinct milestone from the hub's held **2026-01-27** DE2030 *commentary* — clip this as the launch-day primary, keep both.
- WEF digital-divide piece = **March 2024** (month precision).
- 2merkato Bitdeer = update released **12 Jan 2026** (December-2025 ops update): 40 MW online + 20 MW in progress in Oromia.
- IDTechWire Fayda launch = **22 May 2025** (ID4Africa 2025, with TECH5 + Visa).
- ENA eng_4759694 = **11 Jul 2024** (Digital Government Strategy 2024-2029 final-review workshop) — same event as the reg-tech.co piece.

**Clusters flagged for ingest merge:**
- **Fayda–banking harmonization (Dec-2025):** Addis Insight (10 Dec) + BiometricUpdate (11 Dec) — one NBE event (VeriFayda 2 / EthSwitch eKYC; deadline 30 Mar 2026).
- **National Digital Payments Strategy 2026-2030 + national Instant Payment System:** Fana (9 Dec 2025 launch) + Shega (9 Dec, outbound cross-border) + CIO Africa (13 Feb 2026, EthioPay-IPS on BPC SmartVista, launched at Dec-2025 conference) — one policy/launch thread. NB CIO Africa gives the technical build (32 banks/12 MFIs; BPC SmartVista); Fana gives the ministerial launch.
- **EthSwitch late-2025 overhaul:** Capital 2 Nov (P2P>ATM, FY-to-30-Jun-2025 annual report) + Capital 30 Nov (15-year vision + **Mastercard MIP/MPGS** partnership + AfricaNenda "Basic→Progressed") — one strategic overhaul. Reporter Magazine (5 Dec 2024, FY2023/24) is the prior-year comparator.
- **e-Gov Strategy 2024-2029:** ENA (11 Jul 2024) + reg-tech.co (19 Jul 2024) — same validation workshop (MiNT + DT Global + EU).
- **Fayda 90m roadmap (OVERLAP with hub):** IDTechWire (May 2025) + BiometricUpdate 202506 (Zemichael interview) — absorb into held Fayda-roadmap.
- **M-PESA/EthSwitch (OVERLAP with held 2026-03-30 surge):** stockmarket.et (5m, 1 Jan 2026) + Trends N Africa (integration complete, 29 Oct 2025) + connectingafrica (M-PESA/LakiPay, Mar 2025) — dedupe against hub.
- **DP-law Proclamation 1321/2024:** TechHive + Kiya + Michalsons (analyst reviews) + Shega (one-year enforcement lag, Nov 2025) — one instrument, multiple analyses.
- **Ethio Telecom hyperscale DC:** TechAfricaNews (Shandong Hi-Speed, Sep 2024, A-web/datable) is the lead; two DCD pages sit in B (undated, unreliable fetch).

**Left for Bill:** A-PDF 13 · B 18 · C 15 · D 41. Key A-PDF: PMO Digital Ethiopia 2030 strategy; WB P179040/P176629 project docs; NBE EDPC/EDPP + quarterly/annual reports; ALN DP-law analysis; AfricaNenda SIIPS EthSwitch case study; RailTel MFA-data-centre PR. Date-check A-PDFs: WB EeGIF governance (likely 2022), WB P179040 security review (~2023-12). Strong D entity-page candidates: NIDP/Fayda (id.gov.et, id.et), Ethio Telecom, EthSwitch, NBE, MESOB, land.et/cadastre, cloud.gov.et, IPDC ICT Park, DataCenterMap facility pages.
