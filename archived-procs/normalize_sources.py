#!/usr/bin/env python3
"""
ISSUE-018 — normalise `sources:`/`entities:` frontmatter to canonical
one-bracket-per-item form. ROBUST version: collapses any run of 2+ brackets
per item to a single pair, so it fixes BOTH the clean minority style and
malformed nested cases:

  minority:        sources: [[[a]], [[b]]]      -> [[a], [b]]
  malformed:       sources: [[[a]], [[[b]]]]    -> [[a], [b]]   (e.g. amlak.md)
  canonical:       sources: [[a], [b]]          -> unchanged
  single item:     sources: [[a]]               -> unchanged  (NOT broken)

Only touches `sources:`/`entities:` lines INSIDE the YAML frontmatter fence.
Body wikilinks (## Sources bullets, prose [[links]]) are never touched.
Idempotent. Scans wiki/ only (raw/ is immutable — excluded). BOM-safe.

Run from the repo root (C:\\Users\\bill\\Dropbox\\OSINT):
    python normalize_sources.py --dry-run   # report only, change nothing
    python normalize_sources.py             # apply in place, print before/after
Then: git add -A && git commit -m "ISSUE-018: normalise sources/entities frontmatter"
"""
import re, os, sys, glob

ROOT = os.path.join(os.getcwd(), "wiki")
DRY  = "--dry-run" in sys.argv

def normalise_value(val):
    # val is the whole "[ ... ]" flow list; strip ONE outer bracket pair,
    # collapse any run of >=2 '[' or ']' inside to a single one, re-wrap.
    inner = val[1:-1]
    inner = re.sub(r'\[{2,}', '[', inner)
    inner = re.sub(r'\]{2,}', ']', inner)
    return '[' + inner + ']'

def transform_line(line):
    m = re.match(r'^(sources|entities):[ \t]*(\[.*\])[ \t]*$', line)
    if not m:
        return line, False
    key, val = m.group(1), m.group(2)
    newval = normalise_value(val)
    return (f'{key}: {newval}', True) if newval != val else (line, False)

def process(path):
    txt = open(path, encoding='utf-8-sig').read()   # utf-8-sig strips a BOM if present
    if not txt.startswith('---'):
        return None
    lines = txt.split('\n')
    try:
        end = lines.index('---', 1)
    except ValueError:
        return None
    changes = []
    for i in range(1, end):
        nl, ch = transform_line(lines[i])
        if ch:
            changes.append((lines[i], nl))
            lines[i] = nl
    if changes and not DRY:
        open(path, 'w', encoding='utf-8', newline='\n').write('\n'.join(lines))
    return changes or None

def main():
    files = glob.glob(os.path.join(ROOT, "**", "*.md"), recursive=True)
    changed = 0
    for f in sorted(files):
        ch = process(f)
        if ch:
            changed += 1
            print(os.path.relpath(f, os.getcwd()))
            for before, after in ch:
                print("   -", before.strip())
                print("   +", after.strip())
    print(f"\nscanned {len(files)} wiki/*.md files; "
          f"{'would change' if DRY else 'changed'} {changed}")

if __name__ == "__main__":
    main()
