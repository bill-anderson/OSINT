---
type: contradiction
id: 2026-07-20-1800-cameras-kampala-or-nairobi-mombasa
opened: 2026-07-20
shape: dispute
status: resolved
attempt: 1
---

# A 1,800-camera "safe city" deployment: Kampala, or Nairobi/Mombasa?

Surfaced 2026-07-20 by lint #3, while screening USD figures on concept pages. The same
distinctive camera count — **1,800** — is attached to two different countries, two
different cities, and two different price tags, by two sources the wiki holds. Both
ultimately lean on the same March-2026 research report, which is what makes the collision
worth settling rather than shrugging at.

## Paste-ready research brief

Two published accounts of Chinese-supplied "safe city" surveillance in Africa each report a
deployment of **1,800 cameras**, but assign it differently:

- **Uganda / Kampala.** A June-2026 analysis states Uganda "invested **US$126 million** in a
  surveillance system with **1,800 cameras** across Kampala", listing it alongside Nigeria
  (>US$470m) and Kenya (US$219m) as large African biometric-surveillance spends.
  <https://africaintheroom.substack.com/p/if-the-technology-cant-see-us-accurately>

- **Kenya / Nairobi and Mombasa.** A March-2026 mapping study — and April-2026 reporting on
  it — states Kenya used a **~US$100 million Chinese grant** (Chinese Ministry of Commerce)
  to install **1,800 Huawei cameras** across **Nairobi and Mombasa** after the 2013 Westgate
  Mall attack.
  <https://www.ids.ac.uk/publications/smart-city-surveillance-in-africa-mapping-chinese-ai-surveillance-across-11-countries/>
  · <https://www.scmp.com/news/china/diplomacy/article/3348916>

Both deployments are plausible on their own — Uganda and Kenya each ran Huawei-supplied
safe-city programmes in the same period — so this may be coincidence rather than error. But
an identical, oddly specific count landing on two different countries is the signature of a
figure transposed from one row of a table to another.

Note also that the June-2026 analysis gives **Kenya US$219m** while the March-2026 study
gives Kenya a **~US$100m** grant. Those two need not conflict (a single grant against
cumulative national spend), but they should not be quoted as though interchangeable.

**Questions to settle:**
1. Does the March-2026 mapping study itself report an **1,800-camera** Kampala deployment,
   a **1,800-camera** Nairobi/Mombasa deployment, or both? Its country tables are the
   arbiter, since the June-2026 analysis cites it.
2. If only one is in the study, is the other independently sourced, or a transposition?
3. What is Uganda's actual camera count and contract value, and from what primary — a
   procurement record or ministry statement, not a secondary restatement?
4. Do **US$126m** (Uganda) and **US$219m** (Kenya) measure the same thing as each other and
   as the **~US$100m** Kenyan grant — single contract, programme total, or cumulative
   national spend? Record each with its own as-of date.

Both figures are carried in USD by their publishers; neither gives a UGX or KES original, so
any resolution should also record whether a local-currency contract value exists.

## Affected pages

- `wiki/concepts/gov.protect.md` — carries "Uganda $126m / 1,800 Kampala cameras"
- `wiki/concepts/geopol.china.md` — carries Kenya's "$100m Chinese grant, 1,800 Huawei
  cameras post-Westgate"
- `wiki/concepts/infra.cybersec.md` — carries the Nairobi/Mombasa "~$100m Chinese grant"

## RESOLVED 2026-07-21 — a transposition. The 1,800 is Kenya's.

**Uganda's Kampala deployment was never 1,800 cameras.** Contemporaneous Ugandan reporting of the
police account (Daily Monitor, 2018-08-02, now held) gives **5,552 cameras nationwide, of which 3,233
planned for Kampala Metropolitan**, under the Uganda Police National CCTV Network Expansion Project
supplied by Huawei. Police sought **UGX 458bn (then ~$124m)** in three instalments; **US$126m** is the
figure that settled in 2019 reporting and is a **conversion of the UGX value**.

**How the error happened:** the June-2026 analysis took Uganda's $126m, Nigeria's >$470m and Kenya's
$219m verbatim from the IDS press release — **which carries no camera counts at all** — and attached
Kenya's camera count to Uganda's row.

**Kenya's 1,800 is correct and independently sourced well before IDS**, but the money needed
separating. The cameras are the **IPSCSS**, contracted to **Safaricom in May 2014** at **KES 14.9bn
(~US$169.6m, 2014)**. The **~US$100m / KES 8.5bn** figure is a **separate 2012 Chinese Ministry of
Commerce grant** (implementer Nanjing Les Information Technology), and **AidData states the link to the
IPSCSS "is unclear" and "merits further investigation"** — so "a $100m Chinese grant bought 1,800
cameras" compresses two commitments and asserts an unestablished link. **US$219m** is a third quantity:
IDS's **cumulative national spend**.

**Local currency exists for both**, correcting the brief's assumption: **UGX 458bn** (Uganda contract)
and **KES 14.9bn** (Kenya IPSCSS); the USD figures are derived in each case.

**Note on the source:** the June-2026 analysis is a **named analyst's published work**, so it remains
admissible as analysis. Per CLAUDE.md its factual claims are now traced to primaries and those are
cited for the facts. Applied to `wiki/concepts/gov.protect.md`, `wiki/concepts/geopol.china.md`,
`wiki/concepts/infra.cybersec.md`. The IDS study PDF itself could not be fetched — queued for
acquisition.
