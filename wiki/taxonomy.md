# Subject taxonomy — controlled vocabulary

The SUBJECT facet for the Data Landscapers wiki. Ten Level-1 categories, ~36
Level-2 topics. **Tag pages with the slug**, never the label.

## Rules

- Strict single-parent tree: each Level-2 has exactly one Level-1.
- A *page* may carry several slugs. Cross-listing is done by multi-tagging, not
  by giving a topic two parents (e.g. cross-border data → `dpi.exchange` +
  `gov.regional`; cybercrime law → `infra.cybersec` + `gov.legislate`).
- Roll-up is by parent: "everything in Governance" = every page tagged with any
  `gov.*` slug.
- `finance.*` is the *subject* of investment/agreements. A specific transaction
  or MoU is a **deal entity**, not just a tag — see CLAUDE.md.

## Vocabulary

### ICT Infrastructure
- `infra.connect` — Connectivity
- `infra.store` — Data Storage
- `infra.energy` — Energy
- `infra.capacity` — Technical Capacity
- `infra.cybersec` — Cybersecurity

### DPI
- `dpi.exchange` — Data Exchange
- `dpi.id` — Digital Identity and CRVS
- `dpi.pay` — Digital Payments and Fintech
- `dpi.registry` — Registries (population, land, address, etc.)
- `dpi.mis` — Sectoral management information systems (HMIS, EMIS, etc.)
- `dpi.govtech` — Other GovTech and e-Gov

### Governance
- `gov.legislate` — Legislation and regulation
- `gov.policy` — Strategies, plans and policies
- `gov.regional` — Regional collaboration
- `gov.standards` — Standards
- `gov.protect` — Data protection

### Inclusion
- `include.divides` — Digital divides
- `include.access` — Access to services

### Technology
- `tech.ai` — AI
- `tech.industry` — ICT Industry
- `tech.innovate` — Innovation ecosystem

### Geopolitics
- `geopol.usa` — US / hyperscaler activities
- `geopol.china` — China activities
- `geopol.eu` — EU activities
- `geopol.india` — India activities
- `geopol.gulf` — Gulf/UAE activities

### Capacity
- `capacity.literacy` — Literacy
- `capacity.training` — Training and skills
- `capacity.research` — Research institutions

### Digitalisation
- `digital.rural` — Rural digital data capture
- `digital.localgov` — Digitalisation of sub-national government

### Data
- `data.statistics` — National statistics
- `data.open` — Open data
- `data.satellite` — Use of satellite data

### Finance
- `finance.new` — New investments
- `finance.mou` — MoUs and other agreements
