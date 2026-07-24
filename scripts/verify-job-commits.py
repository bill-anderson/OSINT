#!/usr/bin/env python3
"""verify-job-commits.py — repo-review task 27.

Enforce commit-per-job: every batch job must leave a **start** commit and a
matching **done** commit, and the working tree must never be left mid-batch
uncommitted. This verifier makes that checkable.

Convention (RUN-BATCH.md -> "Commit-per-job"):
  start:  `batch: start job <N> -- <desc>`     (commits ONLY the [~] marker)
  done:   `batch: done job <N> [x|!|stop] -- <outcome>`  (commits the job's work + marker)

The invariant is simple **alternation** in commit order: start -> done -> start ->
done ... A start not closed by a done before the next start (or still open at HEAD)
is an **unfinished job** — exactly the 2026-07-23 mid-job-6 hang. It does not rely on
N being globally unique; it walks the sequence.

Usage:
  python scripts/verify-job-commits.py [--since <ref>]   # default: whole history
Exit 0 = clean; 1 = an unpaired start / orphan done / dirty tree.
"""
import argparse, re, subprocess, sys, os

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

def git(*a):
    return subprocess.run(["git", "-C", ROOT, *a], capture_output=True, text=True).stdout

START = re.compile(r"^batch: start job\b\s*(\S+)?", re.I)
DONE  = re.compile(r"^batch: done job\b\s*(\S+)?", re.I)

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--since", default=None, help="only check commits after this ref")
    a = ap.parse_args()

    rng = ["%s..HEAD" % a.since] if a.since else []
    log = git("log", "--reverse", "--format=%h|%s", *rng)

    problems = []
    open_start = None   # (hash, subject) of a start awaiting its done
    pairs = 0
    for line in log.splitlines():
        h, _, subj = line.partition("|")
        if START.match(subj):
            if open_start:
                problems.append("UNFINISHED: %s '%s' — a new start arrived before its done" %
                                (open_start[0], open_start[1]))
            open_start = (h, subj)
        elif DONE.match(subj):
            if not open_start:
                problems.append("ORPHAN DONE: %s '%s' — a done with no preceding start" % (h, subj))
            else:
                pairs += 1
                open_start = None
    if open_start:
        problems.append("UNFINISHED (at HEAD): %s '%s' — started, never done (crash/hang?)" %
                        (open_start[0], open_start[1]))

    dirty = git("status", "--porcelain").strip()
    if dirty:
        problems.append("DIRTY TREE: working tree has uncommitted changes:\n  " +
                        "\n  ".join(dirty.splitlines()))

    print("paired start/done jobs: %d" % pairs)
    if problems:
        print("\nPROBLEMS (%d):" % len(problems))
        for p in problems:
            print("  -", p)
        sys.exit(1)
    print("OK — every start job is closed by a done, and the tree is clean.")

if __name__ == "__main__":
    main()
