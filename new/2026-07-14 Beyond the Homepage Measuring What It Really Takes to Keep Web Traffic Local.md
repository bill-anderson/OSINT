---
page: 
title: Beyond the Homepage: Measuring What It Really Takes to Keep Web Traffic Local
author: Martin Thodi
published: 2026-06-09
accessed: 2026-07-14
source: https://pulse.internetsociety.org/en/blog/2026/06/beyond-the-homepage-measuring-what-it-really-takes-to-keep-web-traffic-local/
keywords: 
---

# Beyond the Homepage: Measuring What It Really Takes to Keep Web Traffic Local | ISOC Pulse

> ## Excerpt
> Current measurements show US, Germany, and France host the bulk of content globally, while South Africa is serving an important regional hub for Southern African countries.

---
**In short:**

-   Storing and serving content from in-country or in-region makes the Internet faster, cheaper, and more resilient.
-   Pulse research is developing a methodology to track top-level website domains and embedded resources.
-   Current measurements show US, Germany, and France host the bulk of content globally, while South Africa is serving an important regional hub for Southern African countries.

Keeping Internet traffic local—meaning that content is served from servers within the same country as the user—makes the Internet faster, cheaper, and more resilient. It reduces dependence on expensive international bandwidth and improves the end user's experience.

Recognizing this, the Internet Society has set an ambitious [50/50 Vision](https://www.internetsociety.org/issues/access/50-50-vision/): _to keep at least half of all Internet traffic local in selected economies by 2025_. To track progress toward that goal, we need accurate, up-to-date measurements of how much content is actually being served locally.

Previous efforts to measure content locality, including [work by James Madeley](https://pulse.internetsociety.org/en/blog/2024/06/where-are-your-countrys-most-popular-websites-hosted/) as a 2024 Pulse Research Fellow, focused on the location of top-level website domains. But what about all the content loaded behind the scenes?

As a [2025 Pulse Research Fellow](https://www.internetsociety.org/fellowships/pulse-research/), I set out to answer this question: **when we account for all the content a browser actually loads, how much of it stays within the user's country?**

## Why Embedded Content Matters

Consider a news website hosted locally in Kenya. The homepage itself may be served from a local server, but the ads, analytics trackers, social media widgets, and video players embedded on the page could be served from servers in Europe or the United States. These embedded resources often account for the bulk of the data transferred.

By capturing and analyzing what the browser actually downloads, rather than just the top-level domain, we get a more realistic picture of where Internet traffic actually goes.

Building on James’ previous work, our new methodology:

1.  **Identifies popular websites**. We use Google's Chrome User Experience Report (CrUX) to get the top 1,000 websites per country and sample URLs across different hosting types, including content delivery network (CDN)-hosted, natively hosted, and streaming services.
2.  **Captures full page loads**. Using an automated browser (Playwright), we load each website through residential proxies in the target country and record HTTP Archive (HAR) files, capturing every resource the browser fetches, not just the main page.
3.  **Locates the content**. We combine two complementary methods to determine where each piece of content is hosted:
    1.  **Geo-hints**: We extract location clues (such as airport codes) embedded in CDN response headers.
    2.  **DNS resolution**: We resolve domain names to IP addresses and geolocate them using IP geolocation databases.
4.  **Weighs by bytes**. We measure locality not just by counting domains, but by weighting each resource by its size in bytes, giving a better picture of actual traffic volume.

## US, Germany, and France Host the Bulk of Content, Wide Disparity in Africa

We measured content locality for 12 countries across Africa, Asia, Europe, and the Americas. The results reveal a wide gap between countries.

Figure 1 — Percentage of popular web content served locally, regionally, and externally (i.e, outside the country and region), weighted by content size (bytes). The dashed green line marks the 50% threshold from the Internet Society's 50/50 Vision. (See [interactive](https://public.flourish.studio/visualisation/28606816/))

**The United States leads with 83% of content served locally**, followed by Japan (70%), Spain (68%), Brazil (67%), and South Africa (66%). These countries benefit from well-established CDN infrastructure and data center presence.

At the other end, **Malawi sees only 3% of content served locally**. However, 62% is served regionally, primarily from South Africa, meaning most of Malawi's traffic at least stays on the African continent. Tanzania shows a similar pattern: only 10% is local, but 44% is regional.

Algeria and Egypt, despite their relatively large Internet populations, see only 13% and 15% local content, respectively, with the vast majority of traffic coming from European servers.

An interesting case is **Thailand**, where 44% of content is local, and another 25% is regional (largely from Singapore), bringing the combined local-plus-regional figure to nearly 69%.

[![four tables showing the content locality for US, ZA, TZ and VN](https://pulse.internetsociety.org/media/images/image1_RCn97ym.width-1200.png)](https://pulse.internetsociety.org/media/images/image1_RCn97ym.width-1200.png "View image")

Figure 2 — For each measured country, the top 5 countries where popular web content is hosted, ranked by byte volume. The local country is highlighted in green.

The country matrices in Figure 2 reveal a consistent pattern: a handful of countries, notably the US, Germany, and France, still host the bulk of external content across nearly all countries measured. This underscores the concentration of global Internet infrastructure in a few locations.

## What’s Next

These findings highlight a continuing challenge for the [Internet Society's 50/50 Vision](https://www.internetsociety.org/issues/access/50-50-vision/). While some countries comfortably exceed this threshold, many remain far from it.

The good news is that regional hosting can partially bridge the gap. For countries like Malawi and Tanzania, content served from nearby countries such as South Africa still offers significantly better performance than content fetched from Europe or North America. Investments in regional interconnection, Internet Exchange Points (IXPs), and CDN deployments in underserved areas can further support this.

We are continuing to support this work by:

1.  Running measurements from additional vantage points, including ASN-level measurements for specific networks.
2.  Enhancing the methodology with traceroutes to understand the actual network paths content takes and identify opportunities for optimization.
3.  Working toward a full research paper that formalizes these methods and presents comprehensive results.

_Martin Thodi is a PhD researcher at the University of Cape Town and a_ [_2025 Pulse Research Fellow_](https://www.internetsociety.org/fellowships/pulse-research/)_._

The views expressed by the authors of this blog post are their own and do not necessarily reflect the views of the Internet Society.
