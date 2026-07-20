#!/bin/bash
cd /c/Users/bill/Dropbox/OSINT
python - <<'PY'
import csv,io
from collections import Counter
rows=list(csv.DictReader(io.open('sweep/recapture/ledger.csv',encoding='utf-8')))
c=Counter(r['status'] for r in rows)
tot=len(rows); pend=c.get('pending',0); done=tot-pend
print(f"recapture: {done}/{tot} processed ({pend} outstanding) — full {c.get('full',0)} · kept {c.get('kept',0)} · failed {c.get('failed',0)}")
PY
