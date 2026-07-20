---
type: review-research
id: tanzania-jamii-case-study-provenance
generated: 2026-07-20
method: Exa search + fetch
status: DO-NOT-INGEST (quarantined synthesis — never cited from a wiki page; primaries extracted to new/)
---

## Verdict: ORIGIN ESTABLISHED — `Tanzania_case_study.pdf` is the Tanzania chapter of **"DPI Exemplar Stories: Book of case studies"**, published by **Co-Develop** (knowledge partner **Kalpa Impact**), launched **1 October 2024** at the Global DPI Summit, Cairo.

### How the origin was established

The brief recorded the PDF as having "no recoverable metadata." That is not correct — the PDF's
embedded XMP/DocInfo dictionary is intact and was read directly off the file:

```
/Creator      Canva
/Producer     Canva
/Author       Kaushal Karkhanis
/Title        DPI Exemplar Stories (A4 Book)
/CreationDate D:20240928081258+00'00'
/ModDate      D:20240928081257+00'00'
```

`/Title` gave the series name; a phrase search on it resolved the publisher immediately.

- **Publisher:** Co-Develop (`codevelop.fund`), the global DPI fund led by CEO C. V. Madhukar.
  The series landing page is *About DPI Exemplar Stories*; the Tanzania chapter has a matching web
  page at `codevelop.fund/tanzania` whose opening paragraphs are **verbatim identical** to the PDF's
  first page, confirming the PDF is that chapter.
- **Knowledge partner / research:** **Kalpa Impact**. Their site states an essay of theirs "first
  appeared in the DPI Exemplar stories: Book of case studies, supported by Co-Develop, in November
  2024"; `dpiexplorer.org` credits "DPI Exemplar Stories, Case studies of DPI implementation across
  the world, Co-Develop and Kalpa Impact."
- **Named individual:** Kaushal Karkhanis is the **book and website designer**, not the author — his
  own LinkedIn post reads "New work: designed the book and website for 'DPI Exemplar Stories'".
  No individual author is credited for the Tanzania chapter; the corporate author is Co-Develop.
- **Publication date:** Karkhanis's LinkedIn post (activity id `7247301303784099840`, whose embedded
  timestamp decodes to **2024-10-02 17:47 UTC**) says the book was launched "at the Global DPI Summit
  in Cairo, Egypt **yesterday**" → **launch 2024-10-01**. This is consistent with the PDF's
  `CreationDate` of 2024-09-28 (export, three days before launch). The "November 2024" wording on
  Kalpa Impact's site and the `/2024/11/` path on the mirrored copy reflect later web distribution,
  not first publication. **Best date: 2024-10-01 (`date_precision: day`), with Nov 2024 as the
  distribution date of the mirrored PDF.**
- **Canonical URLs for the exact PDF held in `_leads/`:**
  `https://dpi.africa.com/wp-content/uploads/2024/11/Tanzania_case_study.pdf` (Africa.com mirror —
  same file, same `/Author` metadata), and the web rendering at `https://www.codevelop.fund/tanzania`.
  Africa.com also carries a prose write-up of the chapter dated 2024-11-07.

Note the series is explicitly self-limiting: Co-Develop states the case studies are "based on
recommendations by stakeholders in our network," are "not a comprehensive list," and "may not
comprehensively cover all aspects of technical and governance design choices." It is advocacy-adjacent
donor material, not an audit.

### Dated primaries found for the three Jamii components

The case study's own framing is now checkable against primaries, and **it does not hold up on two
material points** (see contradictions below).

**Jamii Namba (digital ID) — well covered.**
- Presidential directive originating the unified identifier: **10 August 2023** (President Samia
  Suluhu Hassan), per The Chanzo's report of the COFI conference.
- Design completed, delivery targeted end-2025: stated **8 March 2024** at COFI by Eng. Benedict
  Benny Ndomba (Director General, **e-Government Authority**) and Dr John Sausi (Ministry of Finance),
  built by **RITA + NIDA + Zanzibar ID**. → clipped.
- Government settles the architecture: **17 October 2024**, PM Kassim Majaliwa declares "the NIDA
  number *is* the Jamii Namba" (ministry release dated 18 Oct 2024). → clipped.
- NIDA's own figure: **21,191,608 NINs issued as of September 2024** (nida.go.tz, undated page).
- As of **January 2026** (Nukta Habari) the Jamii Namba had **still not gone live** and the end-2025
  deadline had been missed.

**Jamii Malipo / Jamii Pay (payments) — thinnest component.**
- Best primary is the ministry release of **27 August 2024** (Permanent Secretary Mohammed Khamis
  Abdulla, Arusha): Jamii Malipo is an **app still to be built** ("programu itakayotengenezwa"),
  to be linked to a *Jamii Kadi* and to **TIPS**, funded under the World Bank Digital Tanzania
  Project. → clipped.
- No launch date, no operator confirmation, and **no primary corroborating the case study's claim
  that the Bank of Tanzania "oversees" Jamii Malipo** — the primaries put it with MICIT/e-GA, with
  BoT owning TIPS. Existing `raw/` BoT–FSDT TIPS material (2025-05-16) covers the payments rail.
- Naming is unstable across government sources: *Jamii Malipo* (MICIT 2024), *Jamii Pay* (Digital
  Economy Framework; Minister Silaa, Jan 2025), *Jamii Kadi* as a fourth module.

**Jamii X-Change / Jamii Data Shirikishi (data exchange) — well covered.**
- Under construction by **MICIT with the e-Government Authority (eGA)**, announced **27 August 2024**.
- **February 2025** (Minister Jerry Silaa, reported by HabariLeo / Global Publishers): **898 systems
  connected across 14 exchange gateways — 514 government, 384 private sector.**
- The **Tanzania Digital Economy Strategic Framework 2024–2034** (ICT Commission, launched
  **29 July 2024**) is the governing instrument and defines Jamii Namba, Jamii X-Change, Jamii Pay and
  the Ngorongoro/Jamii Data Lake. **Already held in `raw/`** as
  `2024-01-01 Tanzania Digital Economy Strategic Framework 2024-2034 (MICIT)`.

### Contradictions surfaced against the case study

1. **"Jamii Namba launched in 2014" is wrong.** 2014 is the NIDA national-ID rollout. Jamii Namba
   originates in the **10 August 2023** presidential directive, was still in design in March 2024, was
   defined as *equal to* the NIDA number only in October 2024, and was **not live as of January 2026**.
   The Co-Develop text (and the Africa.com write-up repeating it) conflates the two. Wiki pages should
   not carry "Jamii Namba, launched 2014."
2. **"Over 25 million registered (~40%)" is unsourced and above NIDA's own figure** of **21.19 million
   as of September 2024** — the nearest official number to the case study's publication. The 25m figure
   propagates onward: the IIPP *2025 State of DPI Report* (2025-10-19) repeats "more than 25 million by
   mid-2025." Treat 25m as a secondary claim, 21.19m (Sept 2024) as the dated primary.
3. **Bank of Tanzania "oversees" Jamii Malipo** — unsupported by any primary found. BoT operates TIPS;
   Jamii Malipo sits with MICIT/eGA under the Digital Tanzania Project.

### Recommendation on the lead itself

The item is **no longer undated or unattributed**: it is dated (2024-10-01) and attributable
(Co-Develop, with Kalpa Impact). Under Source admissibility it remains a **secondary synthesis** — a
donor case study compiled from others' material, with at least two verifiable factual errors — so it
should **stay a lead, not be promoted to `raw/`**. What has changed is that it can now be cited *as
Co-Develop's dated analytical framing* if ever needed, and its errors are documented above so they are
not laundered into wiki pages. Whether a named-institution dated case study of this kind clears the
admissibility bar as "expert analysis" is a judgment call for the curator, raised as an issue.

## Sources consulted

| URL | Publisher | Date | Extracted to `new/` |
|---|---|---|---|
| `_leads/Tanzania_case_study.pdf` (embedded PDF metadata) | Co-Develop | 2024-09-28 (PDF export) | no — stays a lead |
| https://www.codevelop.fund/about-dpi-exemplar-stories | Co-Develop | n.d. | no |
| https://www.codevelop.fund/tanzania | Co-Develop | n.d. | no |
| https://dpi.africa.com/wp-content/uploads/2024/11/Tanzania_case_study.pdf | Africa.com (mirror of Co-Develop) | 2024-11 (mirror) | no — same file as the lead |
| https://africa.com/tanzanias-digital-transformation-the-foundation-of-a-10-year-economic-strategy/ | Africa.com | 2024-11-07 | no — derivative of the case study |
| https://dpiexplorer.org/methodology | DPI Use Cases Explorer | n.d. | no — credits Co-Develop + Kalpa Impact |
| https://kalpaimpact.com/the-evolving-landscape-of-digital-public-infrastructure/ | Kalpa Impact | 2025-10-02 (repub.) | no |
| https://linkedin.com/in/kaushal (post activity 7247301303784099840) | LinkedIn / K. Karkhanis | 2024-10-02 | no — dating evidence only |
| https://thechanzo.com/2024/03/12/work-to-develop-the-tanzania-universal-identity-number-jamii-namba-has-started/ | The Chanzo | 2024-03-12 | **yes** |
| https://www.mawasiliano.go.tz/news/mfumo-wa-jamii-x-change-kuunganisha-mifumo-ya-tehama-ya-kisekta | MICIT Tanzania | 2024-08-27 | **yes** |
| https://www.mawasiliano.go.tz/news/hakikisheni-mnapata-namba-ya-nida-jamii-namba-waziri-mkuu-majaliwa | MICIT Tanzania | 2024-10-18 | **yes** |
| https://nida.go.tz/Habari-Maelezo?value=8 | NIDA Tanzania | undated (content ≈ Oct 2024) | no — undated, see gap |
| https://ictc.go.tz/storage/44/01J5TJNDHDVTA3AHVQN9CR6BV7.pdf | ICT Commission Tanzania | 2024-07-29 (launch) | no — already in `raw/` |
| https://www.biometricupdate.com/202604/tanzania-seeks-biometrics-contractors-for-phase-ii-of-national-digital-id-project | Biometric Update | 2026-04-22 | no — already in `raw/` |
| https://tanzaniainsight.com/jamii-namba-children-pilot-set-for-rollout/ | Tanzania Insight | 2026-05-09 | no — already in `raw/` |
| https://nukta.co.tz/kutoka-nida-hadi-jamii-namba-safari-ya-utambulisho-wa-kidijitali-tanzania | Nukta Habari | 2026-01-23 | no — candidate, not clipped |
| https://www.thecitizen.co.tz/tanzania/news/national/how-tanzanians-will-benefit-from-digital-identity-system-4306408 | The Citizen (TZ) | 2023-07-17 | no — candidate, not clipped |
| https://habarileo.co.tz/serikali-kuboresha-mazingira-watafiti-tehama/ | HabariLeo | 2025-02-20 | no — candidate (898-systems figure) |
| https://www.torchmedia.co.tz/2025/01/mfumo-wa-anwani-za-makazi-napa.html | Torch Media | 2025-01-21 | no |
| https://dpimap.org/iipp-state-of-dpi-report-2025.pdf | UCL IIPP | 2025-10-19 | no — secondary, repeats the 25m figure |
| https://tmc.co.tz/wp-content/uploads/2025/07/Advocacy-Brief-Rethinking-E-Governance-in-Tanzania.pdf | Tanzania Media Council | 2025-07 | no — candidate |
