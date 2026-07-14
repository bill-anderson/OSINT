---
title: "(9) OpenAI and Microsoft Launched AI Health Tools. Here Are 6 Evidence-Based Reasons Not to Use Them"
source: "https://www.linkedin.com/pulse/openai-microsoft-launched-ai-health-tools-here-6-reasons-wayan-vota-oqr2c/"
author:
published: 2001-03-24
created: 2026-07-11
description:
tags:
  - "clippings"
---
- ChatGPT Health launched January 7, 2026.
- Microsoft Copilot Health launched March 12, 2026.

Both companies said these tools would transform how people manage their health. Both companies wrote legal disclaimers making clear they bear no responsibility when something goes wrong.

You are the one left holding that responsibility. And the legal liability. Here is what the clinical record shows.

- [*Subscribe to Build Social Impact with AI Today*](https://www.linkedin.com/newsletters/build-social-impact-ai-today-7324741792581492737/)

---

## 1: Medical Emergencies Are Dismissed

*Documented. Peer-reviewed. Unrebutted.*

The only independent clinical validation study for ChatGPT Health was published in *Nature Medicine* in February 2026. Researchers at [Mount Sinai Medical Center](https://www.linkedin.com/company/mount-sinai-medical-center-miami-beach/) tested the tool across 960 clinical scenarios spanning 21 medical domains.

ChatGPT Health [under-triaged 52% of genuine medical emergencies](https://www.nature.com/articles/s41591-026-04297-7), directing patients with diabetic ketoacidosis and impending respiratory failure to wait 24 to 48 hours rather than seek emergency care.

The failure was not a missed diagnosis.

In multiple cases, the system correctly identified warning signs of serious conditions in its explanatory text, then recommended delayed evaluation anyway. It recognized the danger. It still told patients to wait.

[Microsoft's VP of Health acknowledged these findings](https://www.healthcaredive.com/news/microsoft-copilot-health-chatbot/814514/) represent a "serious concern" applicable to Copilot Health. Copilot Health launched anyway, on March 12, 2026, with zero independent clinical validation studies. No peer-reviewed data exists on its triage accuracy, its diagnostic performance, or its safety profile across any demographic group.

[ECRI](https://www.linkedin.com/company/ecri-org/) named AI chatbot misuse the number one health technology hazard of 2026. That designation came before Copilot Health existed.

---

## 2: The Tools Make Clinicians Worse, Not Better

*Replicated across multiple studies.*

Both products are positioned as decision support tools, assistants that improve clinical judgment. The evidence shows the opposite.

A 2025 *Nature Medicine* study of 1,298 participants found that [humans assisted by LLMs performed no better than unassisted controls](https://www.nature.com/articles/s41591-025-04074-y) on medical scenarios and were measurably inferior to the LLM working alone. The human-AI combination did not combine strengths. It introduced new failure modes.

When tested against real clinical data rather than textbook cases, a study using 2,400 MIMIC database patient cases found [LLMs performed significantly worse than physicians](https://www.nature.com/articles/s41591-024-03097-1), failed to follow clinical guidelines, and could not reliably interpret lab results.

The mechanism is automation bias. Clinicians anchor on AI output. The AI cannot distinguish a textbook case from a real patient with three comorbidities, a language barrier, and a history of underreporting pain. That gap is where outcomes collapse.

ChatGPT scored 92% on structured clinical vignettes. On real patients, performance fell apart. The product is validated for the test. Not for the ward.

---

## 3: Your Health Data Is Not Protected

*Both companies have confirmed this in writing.*

- OpenAI explicitly acknowledges that consumer health apps are not covered by HIPAA.
- Microsoft confirmed that HIPAA is not required for a direct-consumer experience.

This is not a legal technicality. These tools integrate with electronic health records, wearable devices, laboratory results, and medication histories. Microsoft's own documentation notes that Copilot occasionally passes data to their Bing service, which is not secure for protected health information.

The data flowing through these tools is among the most sensitive information a person generates. The federal obligation to protect it, the obligation that applies to every provider's office and hospital system in the country, does not apply here.

The FTC enforcement record makes the stakes concrete.

- GoodRx paid $1.5 million for health data privacy violations.
- BetterHelp paid $7.8 million.
- Cerebral paid over $7 million.

None of these companies were covered entities under HIPAA either. IBM's 2025 report found that [healthcare breaches average $7.42 million](https://www.hipaajournal.com/average-cost-of-a-healthcare-data-breach-2025/), the highest cost across all industries, and that one in five organizations experienced a breach from unauthorized AI use.

If your organization recommends these tools to staff or clients and data is exposed, you are operating in that enforcement environment without HIPAA cover.

---

## 4: The Hallucination Problem Is Architecturally Unsolved

*Both companies rely on disclaimers because they have no engineering fix.*

A February 2026 *Lancet Digital Health* study tested over one million prompts across nine LLMs and found [models accepted and propagated false medical claims 32 to 46% of the time](https://www.thelancet.com/journals/landig/article/PIIS2589-7500\(25\)00131-1/fulltext) when framed as expert advice. This included fabricated recommendations embedded in realistic discharge summaries, the kind of content these systems process daily.

[Even GPT-5 with web access hallucinates at a 9.6% rate](https://mashable.com/article/openai-gpt-5-hallucinates-less-system-card-data). Without web grounding, that figure jumps to 47%. A case in *Annals of Internal Medicine* documented a patient [hospitalized for three weeks with bromide poisoning](https://www.acpjournals.org/doi/epdf/10.7326/aimcc.2024.1260) after ChatGPT recommended sodium bromide as a salt substitute.

- ChatGPT Health states it is "not intended to diagnose, treat, or prevent diseases."
- Copilot Health uses identical language.

These disclaimers protect the companies legally. They offer no protection to a patient acting on a confident, fabricated recommendation at 11pm with no other resource available.

The disclaimers are the product. The engineering has not caught up.

---

## 5: AI is Biased Against the Patients Using Them

*Systematic. Documented across 24 peer-reviewed studies.*

- A systematic review published in the *International Journal for Equity in Health* in 2025 found that [92% of studies examining LLM outputs identified demographic bias.](https://aclanthology.org/2025.emnlp-main.76.pdf)
- Researchers at Stanford and UCSF demonstrated that [all major commercial LLMs perpetuated debunked race-based medical practices](https://www.nature.com/articles/s41746-023-00939-z), including false beliefs about racial differences in pain tolerance and kidney function.
- A 2025 *npj Digital Medicine* study found [LLMs proposed inferior treatment plans when patient race was indicated](https://www.nature.com/articles/s41746-025-01746-4), even while diagnostic accuracy remained stable.
- A [Cedars-Sinai](https://www.linkedin.com/company/cedars-sinai-medical-center/) istudy found [dramatically different recommendations for the same psychiatric illness based on race](https://www.cedars-sinai.org/newsroom/cedars-sinai-study-shows-racial-bias-in-ai-generated-treatment-regimens-for-psychiatric-patients/), with bias most pronounced in schizophrenia and anxiety cases.

The populations with the least access to quality healthcare are the most likely to rely on free consumer AI tools as a substitute. Those tools are documented to give them degraded, biased recommendations. Neither company has published demographic performance data. Neither has committed to multilingual support timelines.

---

## 6: The Liability Falls on You, Not Them

*Both companies have written their legal documents to ensure this.*

The corporate disclaimers are precise and deliberate.

- OpenAI states ChatGPT Health is "not intended to diagnose, treat, or prevent diseases."
- Microsoft says Copilot Health delivers personalized health insights "without the liability that comes with actual medical advice."

Both companies have disclaimed responsibility in plain language. Their engineers are sophisticated enough to know exactly what that language does.

The [Federation of State Medical Boards](https://www.linkedin.com/company/federation-of-state-medical-boards/) states that the physician is ultimately responsible for the use of AI and should be held accountable for any harms that occur. Courts have consistently refused to allow physicians to offset liability to AI tools. Standard of care requires independent clinical judgment regardless of algorithmic output.

The [The Doctors Company](https://www.linkedin.com/company/the-doctors-company/) currently has no AI exclusion but warns that practices using unregulated or consumer-grade technology without oversight can trigger premium increases, exclusions, or coverage restrictions. Most malpractice policy language predates the AI era. No established coverage framework exists for AI-assisted care.

- Seven lawsuits were filed against OpenAI in November 2025 alleging ChatGPT contributed to suicides and psychological injuries.
- The Texas Attorney General [reached a settlement with Pieces Technologies](https://www.wilmerhale.com/en/insights/blogs/wilmerhale-privacy-and-cybersecurity-law/20241010-texas-attorney-ags-office-reaches-settlement-with-ai-company-over-deceptive-claims) in September 2024, the first enforcement action against a healthcare AI company for overstating accuracy claims.
- Fewer than one in ten countries have established liability standards for AI errors.

The liability architecture is not an accident. OpenAI and Microsoft build products. Physicians and healthcare organizations carry the consequences when those products fail.

---

## The Record Speaks Volumes

The [American Medical Association](https://www.linkedin.com/company/american-medical-association/) 's position is direct: "The risks to patient health and well-being are simply too significant in real-world patient care settings" to embrace a try-first mentality.

That does not mean these tools disappear. Your staff is using them now. Your clients may be using them tonight.

The question is not whether to acknowledge these tools. The question is whether your organization will recommend, endorse, or passively permit their use for clinical decisions before independent validation exists, HIPAA protections apply, and liability frameworks are established.

None of those conditions exist today.

If someone in your organization uses ChatGPT Health or Copilot Health to manage a health decision, and something goes wrong, the AI company's response is already written into their terms of service. Yours isn't.

That gap is where this becomes your problem.

---

*I am a C-level executive who helps social impact organizations develop competitive advantages with mission-critical AI operations. I believe that we can harness artificial intelligence for smarter operations, stronger community trust, and sustainable social and economic advancement.*

- [*Subscribe Now to Build Social Impact AI Today*](https://www.linkedin.com/newsletters/build-social-impact-ai-today-7324741792581492737/)

*Each issue delivers strategic frameworks, ethical AI governance lessons, and real-world examples that you can use to improve decision-making and enhance outcomes — without sacrificing values.*