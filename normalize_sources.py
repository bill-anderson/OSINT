#!/usr/bin/env python3
"""
ISSUE-018 — normalise `sources:`/`entities:` frontmatter to the canonical
one-bracket-per-item form.

  minority (fix):   sources: [[[a]], [[b]], [[c]]]   ->   [[a], [b], [c]]
  canonical (keep): sources: [[a], [b], [c]]         (unchanged)
  single item:      sources: [[a]]                   (unchanged  <-- important)

Only touches `sources:`/`entities:` lines INSIDE the YAML frontmatter fence.
Body wikilinks (## Sources bullet lists, prose [[links]]) are never touched.
Idempotent. Scans wiki/ only (raw/ is immutable — deliberately excluded).

Run from the repo root (C:\\Users\\bill\\Dropbox\\OSINT):
    python normalize_sources.py            # apply in place, print what changed
    python normalize_sources.py --dry-run  # report only, change nothing
Then review `git diff` and commit as its own commit, e.g.:
    git add -A && git commit -m "ISSUE-018: normalise sources/entities frontmatter to canonical [[a],[b]]"
"""
import re, os, sys, glob

ROOT = os.path.join(os.getcwd(), "wiki")
DRY  = "--dry-run" in sys.argv

def transform_line(line):
    m = re.match(r'^(sources|entities):[ \t]*(\[.*\])[ \t]*$', line.rstrip('\n'))
    if not m:
        return line, False
    key, val = m.group(1), m.group(2)
    newval = '[' + val[1:-1].replace('[[', '[').replace(']]', ']') + ']'
    return (f'{key}: {newval}', True) if newval != val else (line, False)

def process(path):
    txt = open(path, encoding='utf-8').read()
    if not txt.startswith('---'):
        return False
    lines = txt.split('\n')
    try:
        end = lines.index('---', 1)      # closing frontmatter fence
    except ValueError:
        return False
    changed = False
    for i in range(1, end):
        nl, ch = transform_line(lines[i] + '\n')
        if ch:
            lines[i] = nl
            changed = True
    if changed and not DRY:
        open(path, 'w', encoding='utf-8', newline='').write('\n'.join(lines))
    return changed

def main():
    files = glob.glob(os.path.join(ROOT, "**", "*.md"), recursive=True)
    hits = [f for f in files if process(f)]
    print(f"scanned {len(files)} wiki/*.md files")
    print(f"{'would change' if DRY else 'changed'} {len(hits)} files:")
    for h in sorted(hits):
        print("  ", os.path.relpath(h, os.getcwd()))

if __name__ == "__main__":
    main()
