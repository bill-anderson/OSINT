# Domestic budget extraction — accumulated method notes

Working notes on **how to find the digital lines** in state budget documents, by
country and document type. Appended to on every domestic finance run, including
the failures — an approach that didn't work is worth as much as one that did.

*(Curator ruling, 2026-07-22: isolating domestic digital spend is a challenge for
all evidence and won't be solved by a rule. It is learned, and the learning has to
be written down somewhere it compounds. This is that file.)*

Not a source and not a wiki page: it is procedure, read by
`finance-load-domestic-state.md` at the start of a run.

## How to use it

Before capturing a country, read its section. After capturing, append what you
learned: what the digital lines were actually called, which classification codes
carried them, where they hid, what you looked for and didn't find.

## Per-country notes

*(empty — populated by the first runs)*

### Template for an entry

```markdown
### <Country> — <document type>, <fiscal year>
- **Document:** <title, URL, how obtained>
- **Structure:** <how the classification chain is laid out; is it machine-readable>
- **Digital lines found under:** <vote/programme names and codes that carried them>
- **Language used:** <the terms the document actually uses — "ICT", "automation",
  "e-governance", "digitalisation", a named system>
- **Where they hid:** <lines that were digital but not obviously so>
- **False positives:** <lines that looked digital and weren't>
- **Outturn available?** <yes/no, which document, how far behind>
- **Scope calls made:** <which lines were whole / partial / unclear, and why>
- **Didn't work:** <what was tried and failed>
```

## Cross-cutting observations

*(patterns that hold across several countries — promote them here once seen more
than once, so a country section doesn't have to restate them)*
