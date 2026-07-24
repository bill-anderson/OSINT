#!/usr/bin/env python3
"""audit-machine-records.py — repo-review task 9.

Script-audit the machine-loaded raw/ records for three mechanically-detectable
defect classes and emit a defect table by class, segmented by record family.
This AUDITS only; task 10 fixes.

Defect classes:
  1  date_source: proxy on a FINANCE record  (finance-record-spec -> Dates forbids
     it; a finance record with no real event date is not a dated fact). Proxy on a
     sweep/news source is NOT a defect — LINT #11 sanctions it — so it is reported
     separately as context, not counted as a defect.
  2  empty `entities: []`  (a record that names actors but tags none)
  3  body marked `body_completeness: full` but the prose is truncated
     (3a ends mid-sentence, no terminal punctuation; 3b carries a paywall/
     continuation marker). Heuristic -> "candidates", confirmed in task 10.

Families: finance-load (finance_origin/deal_id/amount_total/budget_stage) |
          sweep (sweep_batch) | other.

Usage: python scripts/audit-machine-records.py [--root DIR] [--csv OUT.csv]
"""
import argparse, glob, os, re, csv, collections

PAYWALL = re.compile(r"(read more|continue reading|subscribe|sign in to read|"
                     r"read the full|to continue reading)", re.I)
# explicit elision marker: [...] / […] / [�] (mojibake of an ellipsis)
ELISION = re.compile(r"\[\s*(?:\.\.\.|…|�)\s*\]")
# dangling function words that only appear at a sentence end when the text is cut
DANGLING = re.compile(r"\b(and|or|of|the|to|a|an|in|for|with|at|by|from|that|which|"
                      r"as|is|was|were|has|had|will|would|its|their|on|de|des|le|la|"
                      r"les|du|un|une|et|pour|dans|sur|avec)$", re.I)

def fm_body(t):
    if not t.startswith("---"):
        return "", t
    e = t.find("\n---", 3)
    return (t[3:e], t[e+4:]) if e > 0 else ("", t)

def val(fm, k):
    m = re.search(r"^%s:[ \t]*(.*)$" % re.escape(k), fm, re.M)
    return m.group(1).strip() if m else None

def family(fm):
    keys = set(re.findall(r"^([a-z_]+):", fm, re.M))
    if keys & {"finance_origin", "deal_id", "amount_total", "budget_stage"}:
        return "finance-load"
    if "sweep_batch" in keys:
        return "sweep"
    return "other"

def prose_block(body):
    """The main prose to check for truncation. For a finance record use the
    ## Description section; otherwise the text between the H1 and the first ##."""
    m = re.search(r"^##+\s*Description\s*$(.*?)(^##\s|\Z)", body, re.M | re.S)
    if m:
        seg = m.group(1)
    else:
        # strip the leading '# Title', take up to the first '## ' section
        b = re.sub(r"\A\s*#[^\n]*\n", "", body)
        seg = re.split(r"^##\s", b, maxsplit=1, flags=re.M)[0]
    return seg.strip()

def last_prose_line(seg):
    for ln in reversed(seg.splitlines()):
        s = ln.strip()
        if not s:
            continue
        if s.startswith(("|", "#", "-", "*", ">")) or re.fullmatch(r"\[\[.*\]\]", s):
            return None  # ends on a table/list/heading — not a prose truncation
        return s
    return None

TERMINAL = tuple(list(".!?…”’)]") + ['"', "'"])

def truncated(body, fam):
    seg = prose_block(body)
    if not seg:
        return None
    if PAYWALL.search(seg[-200:]) or ELISION.search(seg[-40:]):
        return "3b paywall/continuation/elision marker"
    ln = last_prose_line(seg)
    if ln is None:
        return None
    # normalise trailing junk before the terminal-stop check: mojibake, a short
    # closed parenthetical citation "(Artigo 2.º)", then markdown/quote wrappers.
    QW = "*_`\"'»«”“‘’�"                            # quote / emphasis / mojibake wrappers
    tail = re.sub(r"[%s\s]+$" % re.escape(QW), "", ln)
    tail = re.sub(r"\s*\([^()]{0,40}\)$", "", tail)     # trailing short parenthetical citation
    tail = re.sub(r"[%s\s\]\)\}]+$" % re.escape(QW), "", tail)
    if not tail:
        return None
    if tail.endswith((",", ";")):
        return "3a ends on comma/semicolon"
    if DANGLING.search(tail):
        return "3a ends on dangling function word"
    # finance descriptions are full prose paragraphs, so a missing terminal
    # stop is itself a truncation signal; sweep/news bodies end on bylines and
    # headlines, so there we require the stronger comma/dangling signal above.
    if fam == "finance-load" and not tail.endswith(TERMINAL):
        return "3a finance description ends without terminal stop"
    return None

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--root", default=os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
    ap.add_argument("--csv")
    a = ap.parse_args()

    fam_count = collections.Counter()
    defects = collections.defaultdict(lambda: collections.Counter())  # class -> family -> n
    rows = []
    proxy_nonfinance = 0

    for p in glob.glob(os.path.join(a.root, "raw", "**", "*.md"), recursive=True):
        t = open(p, encoding="utf-8").read()
        fm, body = fm_body(t)
        if not fm:
            continue
        fam = family(fm)
        fam_count[fam] += 1
        rel = os.path.relpath(p, a.root)
        # class 1
        if val(fm, "date_source") == "proxy":
            if fam == "finance-load":
                defects["1 finance date_source:proxy"][fam] += 1
                rows.append((rel, fam, "1 finance date_source:proxy"))
            else:
                proxy_nonfinance += 1
        # class 2
        ent = val(fm, "entities")
        if ent is not None and re.fullmatch(r"\[\s*\]", ent):
            defects["2 empty entities[]"][fam] += 1
            rows.append((rel, fam, "2 empty entities[]"))
        # class 3
        if val(fm, "body_completeness") == "full":
            tr = truncated(body, fam)
            if tr:
                defects["3 truncated but full"][fam] += 1
                rows.append((rel, fam, "3 truncated but full (%s)" % tr))

    fams = ["finance-load", "sweep", "other"]
    W = 30
    print("=== record families ===")
    for f in fams:
        print("  %-14s %5d" % (f, fam_count[f]))
    print("  %-14s %5d" % ("TOTAL", sum(fam_count.values())))
    print("\n=== defect table (rows = class, cols = family) ===")
    print("  %-*s %12s %8s %8s %8s" % (W, "class", "finance-load", "sweep", "other", "TOTAL"))
    for cls in sorted(defects):
        d = defects[cls]
        print("  %-*s %12d %8d %8d %8d" % (W, cls, d["finance-load"], d["sweep"], d["other"],
                                           sum(d.values())))
    print("\n  context: date_source:proxy on non-finance (sanctioned by LINT #11, NOT a defect): %d" % proxy_nonfinance)
    print("  total defect rows: %d" % len(rows))

    if a.csv:
        with open(a.csv, "w", newline="", encoding="utf-8") as fh:
            w = csv.writer(fh); w.writerow(["file", "family", "defect_class"])
            w.writerows(sorted(rows))
        print("  wrote per-file list -> %s" % a.csv)

if __name__ == "__main__":
    main()
