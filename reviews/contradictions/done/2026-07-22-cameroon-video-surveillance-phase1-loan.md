# Cameroon urban video-surveillance Phase I — Bank of China loan: amount and date disagree

Filed 2026-07-22 by ingest (finance back-swing batch). Attempts: 1. **RESOLVED 2026-07-22.**

## Resolution (2026-07-22, reconcile pass)

Not two values for one loan — three distinct objects, established from decree
N°2018/352 (5 June 2018, verbatim text ingested) and AidData/CAA (project 58535):

1. **FCFA 45.9bn / US$83,561,538.46** — the **authorisation envelope** of decree
   N°2017/297 (19 June 2017), quoted in the 2018 decree's recitals. Retrospectives
   (Le Jour 2025, Investir au Cameroun 2025) mis-describe this as "the Phase-1
   financing".
2. **US$41,780,769.22 / ≈FCFA 22.95bn** — the actual Phase-I **commercial loan**,
   signed 2018-02-22 (BoC Shenzhen ↔ MINDEF), ratified by decree N°2018/352;
   100% disbursed by 2020-12-31. New record `bank-of-china-cmr-2018` created;
   the retrospective-based `bank-of-china-cmr-2017` record deleted.
3. **FCFA 44.9bn** — a separate **credit line** signed June 2018 *in addition to*
   the loan (AidData #85646 = held `boc-cmr-002`; no drawdowns identified as of
   AidData's March-2021 data). Not a contradiction of either figure above.

Pages fixed: `boc-cmr-002` (clarifying note), new `bank-of-china-cmr-2018`,
sibling tranche records rewired. Primaries ingested:
`2018-06-05-decret-2018-352-ratification-pret-bank-of-china-videosurveillance`,
`2026-07-22-aiddata-58535-bank-of-china-cameroon-video-surveillance-phase1`.

## The claim in dispute

The size and date of the Bank of China financing for **Phase 1 of Cameroon's
intelligent urban video-surveillance project** (1,500 cameras across several
cities).

## Competing values

| Value | Asserted by | Source URL held |
|---|---|---|
| **FCFA 44.9 billion** credit line, provided **2018** | APA (Agence de Presse Africaine) news report, 2018-06-06, via Factiva | https://global-factiva-com.proxy.wm.edu/redir/default.aspx?P=sa&an=APASENF020180606ee660005l&cat=a&ep=ASE *(proxy URL — no clean public link on file)* |
| **FCFA 45.9 billion** loan, following an authorising decree signed **19 June 2017** | Le Jour (Cameroon), December 2025 retrospective | https://lejour.cm/un-emprunt-de-plus-de-39-milliards-fcfa-pour-la-videosurveillance-urbaine/ |

The two may describe one sequence (2017 decree authorising, 2018 credit line
executed) — in which case only the amount disagrees (44.9 vs 45.9 billion FCFA)
— or one of the figures/dates is simply wrong. No primary document (the decree
itself, or a loan agreement) is on file for either value; that absence is part
of the finding.

## Instruction

These sources report different values for the Phase 1 Bank of China financing
of Cameroon's urban video-surveillance project — investigate the discrepancy
(ideally locating the 19 June 2017 authorising decree or other primary record)
and suggest a resolution, recording an as-of date for each value.
