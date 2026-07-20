---
type: review-research
id: south-africa-digital-id-sarb-or-sars
generated: 2026-07-20
method: Exa search + fetch
status: DO-NOT-INGEST (quarantined synthesis — never cited from a wiki page; primaries extracted to new/)
---

## Verdict: RESOLVED — not a contradiction. SARS **hosts** the platform; SARB is a **co-development / integration partner** whose interest is payments-side (digital financial identity, eKYC). One system, three distinct roles, both claims true.

The dispute dissolves against a single primary document that names **both** institutions in the
same breath: the Department of Home Affairs **Annual Performance Plan 2026/27**, signed by Minister
Leon Schreiber and tabled in Parliament on 30 March 2026. The APP states (verbatim):

> "In parallel, the DHA is working closely with the South African Reserve Bank (SARB) and South
> African Revenue Service (SARS) to develop a government-wide digital ID ecosystem, anchored on PKI
> infrastructure. This system uses facial recognition as the primary biometric modality and
> fingerprints as the secondary, thereby significantly enhancing national security and reducing the
> risk of fraud."

The same document is explicit and unambiguous about **hosting**, and attributes it to SARS alone:

> "The primary objective in 2026/27 is the establishment and completion of the hosting infrastructure
> for PKI and digital identity **within the SARS hosting environment**. This includes the provisioning,
> configuration, and certification of secure infrastructure platforms required to host PKI services,
> certificate authority components, digital identity platforms, and supporting security controls…"
>
> "The hosting environment at SARS will provide: • A secure, resilient and scalable national platform
> for PKI and digital identity services • High availability and disaster recovery capabilities •
> Compliance with regulatory, governance and assurance requirements • A trusted environment for
> cross-government identity services and integration"

SARB appears nowhere in the hosting text. Where SARB *does* appear in the APP's delivery mechanics,
it is as an **external dependency on integration**, listed among the assumptions attached to the
digital-identity indicator: *"Timely procurement; SARB, banks and telecom partners collaborate on
integration; ICT infrastructure capacity to host PKI solution."* The company SARB keeps in that
sentence — banks and telecoms — is itself the tell: these are the parties who must consume the
identity, not build or house it.

**SARB's own framing is payments-specific and explicitly disclaims identity authority.** The central
bank's work runs through its Payments Ecosystem Modernisation (PEM) Programme, launched October 2023,
under the label **digital financial identity (DFID)** — one of PEM's three "foundational enablers"
alongside eKYC and eSign. SARB's *National Payment System Regulatory and Oversight Report 2024*
records that "a detailed proof of concept (POC) has been concluded to inform the ideal design for a
DFID, **in close alignment with government's efforts to implement a national digital identity**" —
alignment with, not ownership of. SARB's *Digital Payments Roadmap* is blunter still: **"Although not
the leading authority in relation to identification in SA, the SARB, as a catalyst in the NPS, is
facilitating the assessment of the feasibility and desirability of establishing a digital financial
identity system to promote the security and efficiency of digital payments."** As of 2026-07-10,
Prudential Authority CEO Fundi Tshazibana still described the work in exploratory, payments-framed
terms. SARB's consumer-facing artefact is **PEMKey**, demonstrated at the PEM industry dialogue of
9–10 April 2026 — "a secure, reusable and trusted digital proof of identity **in the payments
ecosystem**", i.e. a credential riding on the national identity, not the national identity itself.

**Why the DHA sources named only SARB.** Both Claim-A sources are DHA sources dating from **April–July
2025**, when the SARS hosting decision had not yet been published in that form. The Deputy Minister's
NCOP budget-vote speech (2025-07-03) is a two-sentence aside inside a wide-ranging speech that names
no technical partner other than SARB; the Strategic Plan 2025–2030 (April 2025) is likewise brief.
Neither denies a SARS role — they simply do not enumerate the ecosystem. The compression is one of
**omission, not conflict**, and the identical "facial recognition primary, fingerprints secondary"
detail across the 2025 and 2026 documents confirms the brief's suspicion that this was always **one
system**. There is no evidence of an acronym slip, and none should be assumed: both institutions are
genuinely involved, in genuinely different capacities.

**Is "built inside the SARS hosting environment" accurate?** Yes, as a statement about *hosting* — it
is close to the APP's own wording. But it is a **compression if read as a statement about who builds,
owns or governs the system**. The custodian and issuing authority is the **DHA** (the population
register and the Identification Act sit with it); the **Government Printing Works** is the
Certification Authority and Digital Trust Centre; **SARS** supplies the hosting infrastructure and
technology capacity; **SARB** is the payments-side integration partner. A fourth actor the wiki should
not lose: the four-party governance MoU of 2025-04-03 (DHA, SARS, BMA, GPW) is the governance
framework — and **SARB is not a party to it**, which is itself diagnostic of the distinction.

### Competing claims → reconciled reading

| Claim as held | Asserted by | As-of | Reconciled reading |
|---|---|---|---|
| Digital ID being developed "with the South African Reserve Bank" | Deputy Minister Njabulo Nzuza, NCOP budget vote | 2025-07-03 | **True but incomplete.** SARB is a co-development partner; the speech omits SARS and GPW. Not a mis-statement. |
| Digital ID with remote authentication developed "with the SARB", face primary / fingerprint secondary | DHA Strategic Plan 2025–2030 (tabled) | 2025-04 | **True but incomplete**, same as above. Biometric modality detail is corroborated verbatim by the 2026/27 APP. |
| Core stack "built inside the SARS hosting environment" | DHA APP 2026/27, via TechCentral | 2026-03-30 | **Accurate as to hosting.** APP: "within the SARS hosting environment". A compression only if read as build/ownership. |
| Four-party agreement: SARS + DHA + BMA + GPW | SARS media release | 2025-04-03 | **Correct.** This is the *governance* framework. SARB is **not** a signatory. |
| SARB role | SARB PEM / Digital Payments Roadmap / NPS Report 2024 | 2024 → 2026-07-10 | **Payments-specific.** Digital financial identity, eKYC, PEMKey; SARB "not the leading authority in relation to identification in SA". |
| Who hosts | DHA APP 2026/27 | 2026-03-30 | **SARS.** Target: hosting infrastructure signed off by **31 March 2027**; operational digital ID with wallet credentials in **2027/28**. |

### Residual uncertainty

Low. One open question the primaries do not answer: whether SARB's DFID/PEMKey will be **issued from**
the DHA digital-ID platform or merely **verify against** it — SARB says "in close alignment with", which
is deliberately non-committal about architecture. Worth watching, not a contradiction.

## Sources consulted

- **Department of Home Affairs, *Annual Performance Plan 2026/27*** (tabled 2026-03-30; document
  finalised 26 Mar 2026) — https://pmg.org.za/files/2/DHA_APP_2026-27_Final_26_Mar_2026.pdf —
  publisher: Department of Home Affairs (via Parliamentary Monitoring Group). **The settling primary.**
  → **extracted to `new/2026-03-30-dha-annual-performance-plan-2026-27-digital-identity.md`**
  (companion source page for the PDF artefact; carries the digital-identity sections verbatim).
- **South African Revenue Service, "SARS signed collaboration agreements with DHA, BMA & GPW"**,
  2025-04-03 — https://www.sars.gov.za/media-release/sars-signed-collaboration-agreements-with-dha-bma-gpw/
  — publisher: SARS. Primary origin of the four-party agreement the wiki currently holds only in
  secondary (Biometric Update) form. → **extracted to `new/2025-04-03-sars-collaboration-agreements-dha-bma-gpw.md`** (full verbatim).
- Department of Home Affairs, "Home Affairs, BMA and GPW sign pathbreaking agreement with SARS…",
  2025-04-04 — https://www.gov.za/news/media-statements/home-affairs-bma-and-gpw-sign-pathbreaking-agreement-sars-digitally-transform
  — publisher: South African Government. Not extracted (duplicative of the SARS release for this question).
- Deputy Minister Njabulo Nzuza, Home Affairs Budget Vote 2025/26, NCOP, 2025-07-03 —
  https://www.gov.za/news/speeches/deputy-minister-njabulo-nzuza-home-affairs-dept-budget-vote-202526-ncop-03-jul-2025
  — publisher: South African Government. Already held by the wiki; re-read in full to confirm context.
- South African Reserve Bank, *National Payment System Regulatory and Oversight Report 2024* —
  https://www.resbank.co.za/content/dam/sarb/what-we-do/payments-and-settlements/regulation-oversight-and-supervision/regulatory-and-oversight-reports/nps-regulatory-report-2024.pdf
  — publisher: SARB. Source of the DFID proof-of-concept and "close alignment" language. Not extracted
  (publication date not established to day precision from the fetch).
- South African Reserve Bank, *Digital Payments Roadmap* —
  https://www.resbank.co.za/content/dam/sarb/what-we-do/payments-and-settlements/regulation-oversight-and-supervision/Digital%20Payments%20Roadmap.pdf
  — publisher: SARB. Source of the "not the leading authority in relation to identification in SA"
  disclaimer. **Not extracted — publication date is in dispute** (Exa metadata says 2019-12-02;
  TechCentral reports SARB published it in April 2024). See gap note in report.
- South African Reserve Bank, *Payments Ecosystem Modernisation Programme* (standing programme page,
  undated) — https://www.resbank.co.za/en/home/what-we-do/payments-and-settlements/pem — publisher:
  SARB. Source of PEMKey and the 9–10 April 2026 industry dialogue. Not extracted (undated page).
- "SARB explores digital identity system to secure financial sector", 2026-07-10 —
  https://www.ewn.co.za/2026/07/10/sarb-explores-digital-identity-system-to-secure-financial-sector —
  publisher: Eyewitness News. Secondary; used only to date SARB's current posture. Not extracted.
- "South Africa's digital ID gets a targeted launch date", 2026-04-21 —
  https://techcentral.co.za/south-africas-digital-id-gets-a-launch-date/280460/ — publisher:
  TechCentral. Already held in `raw/`; its APP reporting is confirmed accurate against the APP itself.
- "EFTs may go in Reserve Bank payments overhaul", 2025-07-21 —
  https://techcentral.co.za/efts-go-reserve-bank-payments-overhaul/267101/ — publisher: TechCentral.
  Secondary; corroborates that SARB develops DFID "alongside the department of home affairs' work to
  create a national digital identity system". Not extracted.
</content>
</invoke>
