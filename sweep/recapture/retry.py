"""Second pass over rows the main run could not capture.

Retries with fuller browser headers (some sites 403 a bare UA), a Referer,
and a longer timeout. Rows whose URL is genuinely gone (404/410) are marked
`dead-link` rather than retried — for those the stored body is now the only
record of the source, which is a provenance finding, not a fetch bug.

Same safety contract as run.py: never worsens a file.
"""
import csv, io, os, re, sys, time, urllib.request, urllib.error, ssl
from concurrent.futures import ThreadPoolExecutor, as_completed

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import run as R

HEADERS = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 '
                  '(KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36',
    'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,'
              'image/webp,*/*;q=0.8',
    'Accept-Language': 'en-GB,en;q=0.9,fr;q=0.8,ar;q=0.7,pt;q=0.7',
    'Accept-Encoding': 'identity',
    'Cache-Control': 'no-cache',
    'Pragma': 'no-cache',
    'Sec-Fetch-Dest': 'document',
    'Sec-Fetch-Mode': 'navigate',
    'Sec-Fetch-Site': 'cross-site',
    'Upgrade-Insecure-Requests': '1',
}

DEAD = ('http 404', 'http 410')


def fetch2(url, attempts=2):
    host = re.sub(r'^(https?://[^/]+).*', r'\1', url)
    h = dict(HEADERS); h['Referer'] = host + '/'
    ctx = ssl.create_default_context()
    ctx.check_hostname = False; ctx.verify_mode = ssl.CERT_NONE
    last = None
    for i in range(attempts):
        try:
            r = urllib.request.urlopen(urllib.request.Request(url, headers=h),
                                       timeout=45, context=ctx)
            return r.read(), r.headers.get_content_charset()
        except Exception as e:
            last = e
            time.sleep(1.5 * (i + 1))
    raise last


def process(row):
    name, url = row['file'], row['url']
    path = os.path.join(R.RAW, name)
    if not os.path.exists(path):
        return name, 'failed', '', 'file missing'
    try:
        raw, cs = fetch2(url)
    except urllib.error.HTTPError as e:
        return name, ('dead-link' if e.code in (404, 410) else 'failed'), '', f'http {e.code}'
    except Exception as e:
        return name, 'failed', '', type(e).__name__
    try:
        article = R.extract(raw, cs)
    except Exception as e:
        return name, 'failed', '', f'extract {type(e).__name__}'

    nw = len(article.split())
    if nw < R.MIN_WORDS:
        return name, 'failed', str(nw), 'extract too short'
    with io.open(path, encoding='utf-8', errors='replace') as fh:
        orig = fh.read()
    crlf = orig.count('\r\n') > (orig.count('\n') / 2)
    fm, note, body = R.split_file(orig)
    if not fm:
        return name, 'failed', str(nw), 'no frontmatter'
    ow = len(body.split())
    if nw < ow * R.KEEP_MARGIN:
        return name, 'kept', str(nw), f'stored longer ({ow})'
    parts = [R.set_completeness(fm, 'full').rstrip('\n'), '']
    if note.strip():
        parts += [note.strip(), '']
    parts += [article.strip(), '']
    out = '\n'.join(parts)
    if crlf:
        out = out.replace('\r\n', '\n').replace('\n', '\r\n')
    with io.open(path, 'w', encoding='utf-8', newline='') as fh:
        fh.write(out)
    return name, 'full', str(nw), ''


def main():
    with io.open(R.LEDGER, encoding='utf-8') as fh:
        rows = list(csv.DictReader(fh))
    fields = list(rows[0].keys())
    todo = [r for r in rows
            if r['status'] == 'failed'
            and not any(d in r.get('diagnosis', '') for d in DEAD)]
    # mark the genuinely-gone rows without refetching
    for r in rows:
        if r['status'] == 'failed' and any(d in r.get('diagnosis', '') for d in DEAD):
            r['status'] = 'dead-link'
    print(f'retrying {len(todo)} rows', flush=True)
    by = {r['file']: r for r in rows}
    done = 0
    with ThreadPoolExecutor(max_workers=4) as ex:
        futs = {ex.submit(process, r): r for r in todo}
        for fu in as_completed(futs):
            try:
                n, s, w, note = fu.result()
            except Exception as e:
                n, s, w, note = futs[fu]['file'], 'failed', '', type(e).__name__
            r = by[n]; r['status'] = s; r['words_after'] = w
            if note:
                r['diagnosis'] = (r.get('diagnosis', '') + ' | ' + note).strip(' |')
            done += 1
            if done % 5 == 0 or done == len(todo):
                with io.open(R.LEDGER, 'w', encoding='utf-8', newline='') as fh:
                    w2 = csv.DictWriter(fh, fieldnames=fields); w2.writeheader(); w2.writerows(rows)
                print(f'  {done}/{len(todo)}', flush=True)
    with io.open(R.LEDGER, 'w', encoding='utf-8', newline='') as fh:
        w2 = csv.DictWriter(fh, fieldnames=fields); w2.writeheader(); w2.writerows(rows)
    from collections import Counter
    print(dict(Counter(r['status'] for r in rows)), flush=True)


if __name__ == '__main__':
    main()
