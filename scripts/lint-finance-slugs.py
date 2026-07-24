#!/usr/bin/env python3
"""lint-finance-slugs.py — LINT.md check #16 (finance slug resolution).

Every finance record (frontmatter carries `finance_origin`) must key its
financier — and its recipient where one is named — on a canonical entity slug,
not the free-text descriptive string. String-keying is what split *World Bank
Group* from *World Bank* into two hub lines for one financier (repo-review
tasks 6-8). This check enforces `wiki/finance-record-spec.md` -> *Entities*.

Exit status:
  0  no hard defects (soft/novel-financier notes may still print)
  1  hard defects found — FAIL LOUDLY. A blank or non-canonical financier_slug
     silently fragments a hub aggregate, so it must never pass quietly.

Severity follows the spec's own model (`finance-record-spec.md` -> *Entities*): a
bad FINANCIER slug fragments a hub aggregate, so it fails loudly; RECIPIENT drift
is "cheap" and reconciled by the entity pass, so it is surfaced, not failed.

Hard defects — FINANCIER only (exit 1):
  A  finance record with no financier_slug            (empty entities -> build error)
  B  malformed financier_slug (not lowercase kebab-case)
  C  financier_slug value absent from the record's `entities:`
  D  known NON-CANONICAL financier alias (e.g. world-bank-group -> world-bank)

Soft notes — surfaced for the entity pass (exit 0):
  R  recipient_slug malformed / non-canonical alias / absent from `entities:`
  N  novel financier_slug — well-formed and in `entities`, but has no entity
     page / index entry and is used by only this one record. Minting a new
     consistent slug is allowed (spec), so this is surfaced, not failed —
     confirm it is not a variant of an established financier.

Usage:  python scripts/lint-finance-slugs.py [--root DIR] [--strict] [--quiet]
        --strict  treat soft novel-financier notes as failures too
"""
import argparse, glob, os, re, sys, collections

# Known non-canonical financier aliases -> the slug that must be used instead.
# Seed from the World Bank Group / World Bank split (task 7). IFC and MIGA are
# distinct WBG institutions and keep their own slugs — do NOT map them here.
ALIASES = {
    "world-bank-group": "world-bank",
    "the-world-bank": "world-bank",
    "worldbank": "world-bank",
    "international-bank-for-reconstruction-and": "world-bank",  # truncated IBRD slug
}

SLUG_RE = re.compile(r"^[a-z0-9]+(?:-[a-z0-9]+)*$")

def fm_of(text):
    if not text.startswith("---"): return None
    end = text.find("\n---", 3)
    return text[3:end] if end != -1 else None

def line(fm, key):
    m = re.search(r"^%s:[^\r\n]*" % re.escape(key), fm, re.M)
    return m.group(0) if m else None

def val(fm, key):
    l = line(fm, key)
    return l.split(":", 1)[1].strip() if l else None

def entity_slugs(fm):
    l = line(fm, "entities") or ""
    return re.findall(r"\[([a-z0-9][a-z0-9-]*)\]", l)

def load_canonical(root):
    canon = set()
    for p in glob.glob(os.path.join(root, "wiki", "entities", "*.md")):
        canon.add(os.path.splitext(os.path.basename(p))[0])
    for p in glob.glob(os.path.join(root, "wiki", "entities-index*.md")):
        canon |= set(re.findall(r"\[\[([a-z0-9][a-z0-9-]*)", open(p, encoding="utf-8").read()))
    return canon

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--root", default=os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
    ap.add_argument("--strict", action="store_true")
    ap.add_argument("--quiet", action="store_true")
    a = ap.parse_args()

    canon = load_canonical(a.root)
    recs = []
    for p in glob.glob(os.path.join(a.root, "raw", "**", "*.md"), recursive=True):
        t = open(p, encoding="utf-8").read()
        fm = fm_of(t)
        if fm and "finance_origin" in fm:
            recs.append((os.path.relpath(p, a.root), fm))

    fin_usage = collections.Counter(val(fm, "financier_slug") for _, fm in recs if val(fm, "financier_slug"))
    hard = collections.defaultdict(list)   # class -> [(file, detail)]
    soft = collections.defaultdict(list)

    for rel, fm in recs:
        ents = set(entity_slugs(fm))
        fin = val(fm, "financier_slug")
        rec = val(fm, "recipient_slug")
        # --- financier: hard ---
        if not fin:
            hard["A missing financier_slug"].append((rel, "empty entities -> build error"))
            continue
        if not SLUG_RE.match(fin):
            hard["B malformed financier_slug"].append((rel, "financier_slug=%r" % fin))
        if fin in ALIASES:
            hard["D non-canonical financier alias"].append((rel, "%s -> use %s" % (fin, ALIASES[fin])))
        if fin not in ents:
            hard["C financier_slug not in entities"].append((rel, "financier_slug=%s" % fin))
        # --- recipient: soft (entity pass owns recipient drift) ---
        if rec:
            if not SLUG_RE.match(rec):
                soft["R recipient_slug malformed"].append((rel, "recipient_slug=%r" % rec))
            elif rec in ALIASES:
                soft["R recipient_slug non-canonical"].append((rel, "%s -> use %s" % (rec, ALIASES[rec])))
            elif rec not in ents:
                soft["R recipient_slug not in entities"].append((rel, "recipient_slug=%s" % rec))
        # --- novel financier: soft ---
        if SLUG_RE.match(fin) and fin in ents and fin not in ALIASES:
            if fin not in canon and fin_usage[fin] <= 1:
                soft["N novel financier_slug (confirm not a variant)"].append((rel, "financier_slug=%s" % fin))

    n_hard = sum(len(v) for v in hard.values())
    n_soft = sum(len(v) for v in soft.values())
    if not a.quiet:
        print("finance records checked: %d | distinct financiers: %d" % (len(recs), len(fin_usage)))
        for cls in sorted(hard):
            print("\n[HARD] %s — %d" % (cls, len(hard[cls])))
            for rel, d in hard[cls][:200]:
                print("   %s  (%s)" % (rel, d))
        for cls in sorted(soft):
            print("\n[soft] %s — %d" % (cls, len(soft[cls])))
            for rel, d in soft[cls][:200]:
                print("   %s  (%s)" % (rel, d))
    print("\nRESULT: %d hard (financier) defects, %d soft notes" % (n_hard, n_soft))
    fail = n_hard > 0 or (a.strict and n_soft)
    sys.exit(1 if fail else 0)

if __name__ == "__main__":
    main()
