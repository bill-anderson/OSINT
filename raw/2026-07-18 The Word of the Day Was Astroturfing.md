---
type: source
title: The Word of the Day Was Astroturfing
url: https://benrobertskenya.medium.com/the-word-of-the-day-was-astroturfing-3d6e52135665
publisher: Medium (Ben Roberts)
author: Ben Roberts
published: 2026-07-18
date_precision: day
date_source: source
accessed: 2026-07-23
ingested: 2026-07-23
places: [XAF]
topics: [infra.connect, gov.regional]
entities: [[afrinic]]
lens: []
body_completeness: full
---

# The Word of the Day Was Astroturfing | by Ben Roberts | Jul, 2026 | Medium

> ## Excerpt
> The Word of the Day Was AstroturfingBen RobertsFollow7 min read·4 days ago222ListenShareMoreHow I learned a new word, and what it taught me about the fight over Africa’s Internet numbers.I learned a n

---
# The Word of the Day Was Astroturfing

[

![Ben Roberts](https://miro.medium.com/v2/resize:fill:64:64/2*Zykmo0_x7xGIxNKbUBIKeQ.jpeg)





](https://benrobertskenya.medium.com/?source=post_page---byline--3d6e52135665---------------------------------------)

[Ben Roberts](https://benrobertskenya.medium.com/?source=post_page---byline--3d6e52135665---------------------------------------)

Follow

7 min read

·

4 days ago

2

2

2

[

Listen









](https://medium.com/plans?dimension=post_audio_button&postId=3d6e52135665&source=upgrade_membership---post_audio_button-----------------------------------------)

Share

More

_How I learned a new word, and what it taught me about the fight over Africa’s Internet numbers._

I learned a new word recently. I’m rather fond of collecting them, and this one has stuck with me because of how I came across it. The word is **astroturfing**, and I want to tell you the story of how I found it, because I think it matters for anyone who cares about how the African Internet is governed. It started, as these things often do, with a nagging feeling that something wasn’t quite right.

## The feeling that something was off

Press enter or click to view image in full size

![](https://miro.medium.com/v2/resize:fit:1400/1*H1wD2AvvKwUnjgquL_PcEw.png)

## The feeling that something was off

Let me introduce you to the AFRINIC Resource Policy Discussion list, known to its friends as the “rpd” list. It is where the community that governs Africa’s Internet number resources, our IPv4 addresses, our IPv6 addresses, our AS numbers, debates the policies that decide who gets what. It is a public square: anyone can join, anyone can post. And we make decisions there by **rough consensus**. We don’t count heads, we talk until the chairs can fairly say the room has broadly agreed. It is a beautiful idea, and, as I was about to discover, a rather fragile one.

Over the first half of 2026, as the policy process came back to life after some difficult years, I started noticing something strange in my inbox. A lot of new names had appeared on the list, and there is nothing wrong with that on its own. But their emails had a peculiar sameness. Same length. Same measured, faintly academic tone. Same trick of asking a big open question and answering it with the same conclusion. And they never talked about actual networks. Never a customer, never a router, never a cost, never a bad night on call. Just smooth governance philosophy, over and over, from names none of us recognised.

I’ve been around long enough to know what a real operator sounds like when they’re grumpy about a policy. This wasn’t that. But a nagging feeling is not evidence, and I didn’t want to accuse anyone based on a vibe. So I decided to do the work.

## So I asked Claude to read ten years of email

A mailing list archive is enormous and tedious, and no human is going to read it all carefully. But it is also structured data, and machines are very good at tedious things. So I put the archives in front of Claude, Anthropic’s AI, and asked it to help me analyse what I was seeing, starting with 2026, then every year from 2017 onward. Nearly nine thousand emails.

I used the largest model available to me, Claude Opus 4.8, and the choice mattered. Models like Opus are well suited to this kind of work because they can hold an enormous amount of text in their “context” at once, so the model can weigh an email from 2019 against one from 2026 and actually notice that they rhyme, rather than skimming a page at a time and forgetting what came before. It reads for the things a tired human misses across thousands of messages: repeated phrasings, timing patterns, near-duplicate arguments wearing different names. Give it a haystack and it is rather good at telling you which pieces of straw are suspiciously identical.

Let me be honest about what this can and cannot do, because that distinction is the whole ballgame. It **can** show you patterns: which accounts appeared in bursts around which votes, which “different” people sent near-identical text, which time zones and mail systems the messages actually came from. It **cannot** tell you who was at the keyboard. The headers that would prove authorship are stripped from public archives. So I can point to patterns and facts, but I will not point fingers at named individuals as puppet-masters. That is simply where the honest line sits.

The patterns were not subtle.

## What the machine found

Some of it was almost comical. One 2026 account posted the very same message, word for word, twice on the same day, under two different subject lines. Another posted an essay, then re-posted it three minutes later with exactly one word changed. That is not how a human writes to a list; that is someone working from a script. A cluster of accounts, over a single afternoon, each opened with “I agree with Alain’s response because…” and closed on the very same phrase. Independent people do not converge on identical sentences.

Then there was the geography. One prolific persona presented herself as an Italian law student, yet her emails were sent, by their own timestamps, from a Japanese time zone, routed through a data centre in the Asia-Pacific region. An Italian law student, emailing us about African IPv4 policy from Tokyo business hours. That one doesn’t balance.This is not new, and the community always knew

Here’s the part that surprised me. Going back through the decade, I found this has been happening for **years**, and the community named it every time. In October 2020, during a fierce transfer-policy fight, Mike Silber told the list plainly that it “has been populated by sock puppets and fictional identities for years,” used “to amplify their views.” He refused, memorably, to debate a sock puppet. Two years earlier, Owen DeLong had already been asking anonymous posters to identify themselves, so we could be sure we weren’t dealing with “a bunch of sock puppets commenting on behalf of a single author.” So the community has known for the better part of a decade. What we lacked was a tidy word and a clear picture of the scale.

## Enter the word

Here is the odd part: I did not bring the word to the analysis. Claude did. As it was working through the archives and thinking aloud about what it was finding, it reached for the term **astroturfing** to describe exactly the behaviour I had been struggling to name. The moment I saw it, the penny dropped.

It’s a lovely, cynical bit of English. “Grassroots” is genuine, bottom-up support, real people turning up, like grass from the ground. AstroTurf is the fake plastic stuff you roll over concrete to look like a lawn. Astroturfing, then, is the manufacture of fake grassroots: the _appearance_ of broad support that doesn’t exist, by dressing up a single interest as the voice of the many. For a consensus process that isn’t just rude, it’s poison. Our whole method rests on gauging what the community genuinely thinks, so flood the room with fabricated voices and you don’t just add noise, you corrupt the very signal the chairs are trying to read.

I shared the term with the list, and was heartened by what followed. Our co-chair Haitham el Nakhal agreed it “is the best term to define such emails,” noting that while our Code of Conduct doesn’t yet act against astroturfing, it’s now on the radar. And within hours the community’s immune system was working: when one new account posted, Seun Ojedeji simply noted it seemed suspiciously similar to a message from a different account. No drama. Just, _we’ve noticed._

## How this has hurt us, and where we go next

Did the astroturf ever _win_? Mostly not on the merits. In one major 2020 fight, roughly a third of the messages in the key threads came from the suspicious cluster, and the policy still jammed, got appealed, and stalled. That is the real damage. The true product was never a clean win; it was **exhaustion**: delay, deadlock, and doubt, with real volunteers spending their evenings rebutting arguments no genuine member had made. For anyone whose interest is served by AFRINIC being unable to act, paralysis isn’t a side effect; it’s the point. And once everyone suspects the room is full of plastic grass, they start distrusting the real grass too, which risks turning away the young African engineers we most want to see.

We are not alone in this. The IETF, where “rough consensus” was practically invented, has a formal procedure for revoking the posting rights of those who wage what it calls a “denial-of-service attack” on the process, and when the US regulator asked the public about net neutrality in 2017, a later investigation found nearly 18 million of 22 million comments were fake. Every open process that tries to listen to a community eventually attracts people who would rather fake it than persuade it.

I’m optimistic, though. The astroturf mostly failed because our community is sharp and honest with itself; people noticed, every time. That collective raised eyebrow is our best defence, and we should back it with structure: lean harder on the principle that consensus is the _weight of arguments_, not the _count of emails_; and, as Haitham flagged, name astroturfing in our Code of Conduct, because it will happen again. Most of all, we should keep reading the emails, and refuse to let the fakers make us cynical about the real, grassroots participation that is the entire point of this community.

I set out chasing a nagging feeling and came back with a new word and a ten-year story. Now that we can name it, we can fight it. And a community that can name the thing trying to hollow it out is already winning.

_A note, and an invitation. The best answer to fake grassroots is real grassroots. If you are an African network operator, engineer, student, or simply someone who cares about how our region’s Internet numbers are managed, the rpd list is open to you, and your genuine voice is exactly what it needs. You can subscribe and join the conversation at_ [_lists.afrinic.net/mailman/listinfo/rpd_](https://lists.afrinic.net/mailman/listinfo/rpd)_, and you can read the full public archive of past discussions at_ [_lists.afrinic.net/pipermail/rpd_](https://lists.afrinic.net/pipermail/rpd/)_. Come and grow some real grass with us._
