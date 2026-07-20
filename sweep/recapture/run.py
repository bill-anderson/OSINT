"""Body re-capture runner.

Repairs stored bodies of sources ALREADY ADMITTED to raw/ whose text was
mangled by an automated capture pass. Deterministic: fetches the canonical URL,
extracts the article text, and writes it under byte-identical frontmatter.
It cannot paraphrase — that is the point.

Resumable: state lives in ledger.csv; re-running skips completed rows.
Never worsens a file: if the fetch fails or yields less than what is stored,
the file is left untouched and the row is marked for manual clip.
"""
import csv, io, os, re, sys, time, urllib.request, urllib.error, ssl
from concurrent.futures import ThreadPoolExecutor, as_completed

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from extract import extract

ROOT   = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
LEDGER = os.path.join(ROOT, 'sweep', 'recapture', 'ledger.csv')
RAW    = os.path.join(ROOT, 'raw')
UA = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) '
                    'AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120 Safari/537.36',
      'Accept-Language': 'en,fr;q=0.8,ar;q=0.6,pt;q=0.6'}

MIN_WORDS   = 120    # below this the fetch probably missed the article body
KEEP_MARGIN = 0.90   # refuse to replace stored text with a materially shorter capture

NOTE_RE = re.compile(r'^\s*(NOTE:|>\s|\*\*Syndication note)', re.I)


def split_file(text):
    """-> (frontmatter_incl_delims, note_block, body). Frontmatter kept verbatim."""
    if not text.startswith('---'):
        return '', '', text
    end = text.find('\n---', 3)
    if end == -1:
        return '', '', text
    end = text.find('\n', end + 1)
    fm, rest = text[:end + 1], text[end + 1:]
    # preserve any curatorial note sitting between frontmatter and article
    lines, note, i = rest.split('\n'), [], 0
    while i < len(lines):
        s = lines[i]
        if not s.strip():
            if note: note.append(s)
            i += 1; continue
        if NOTE_RE.match(s):
            note.append(s); i += 1; continue
        break
    return fm, '\n'.join(note), '\n'.join(lines[i:])


def set_completeness(fm, value):
    if re.search(r'^body_completeness:.*$', fm, re.M):
        return re.sub(r'^body_completeness:.*$', f'body_completeness: {value}', fm, count=1, flags=re.M)
    return fm.rstrip('\n')[:-3].rstrip('\n') + f'\nbody_completeness: {value}\n---\n'


def fetch(url):
    req = urllib.request.Request(url, headers=UA)
    ctx = ssl.create_default_context()
    ctx.check_hostname = False
    ctx.verify_mode = ssl.CERT_NONE
    r = urllib.request.urlopen(req, timeout=30, context=ctx)
    return r.read(), r.headers.get_content_charset()


def process(row):
    name, url = row['file'], row['url']
    path = os.path.join(RAW, name)
    if not os.path.exists(path):
        return name, 'failed', '', 'file missing'
    if not url.startswith('http'):
        return name, 'failed', '', 'no url'
    try:
        raw, cs = fetch(url)
    except urllib.error.HTTPError as e:
        return name, 'failed', '', f'http {e.code}'
    except Exception as e:
        return name, 'failed', '', type(e).__name__
    try:
        article = extract(raw, cs)
    except Exception as e:
        return name, 'failed', '', f'extract {type(e).__name__}'

    new_words = len(article.split())
    if new_words < MIN_WORDS:
        return name, 'failed', str(new_words), 'extract too short'

    with io.open(path, encoding='utf-8', errors='replace') as fh:
        orig = fh.read()
    crlf = orig.count('\r\n') > (orig.count('\n') / 2)
    fm, note, body = split_file(orig)
    if not fm:
        return name, 'failed', str(new_words), 'no frontmatter'

    old_words = len(body.split())
    if new_words < old_words * KEEP_MARGIN:
        return name, 'kept', str(new_words), f'stored longer ({old_words})'

    parts = [set_completeness(fm, 'full').rstrip('\n'), '']
    if note.strip():
        parts += [note.strip(), '']
    parts += [article.strip(), '']
    out = '\n'.join(parts)
    if crlf:
        out = out.replace('\r\n', '\n').replace('\n', '\r\n')
    with io.open(path, 'w', encoding='utf-8', newline='') as fh:
        fh.write(out)
    return name, 'full', str(new_words), ''


def main():
    limit = int(sys.argv[1]) if len(sys.argv) > 1 else 10 ** 9
    workers = int(sys.argv[2]) if len(sys.argv) > 2 else 6
    with io.open(LEDGER, encoding='utf-8') as fh:
        rows = list(csv.DictReader(fh))
    fields = list(rows[0].keys())
    todo = [r for r in rows if r['status'] == 'pending'][:limit]
    print(f'{len(todo)} to process (of {len(rows)} total), {workers} workers', flush=True)
    by_name = {r['file']: r for r in rows}
    done = 0
    with ThreadPoolExecutor(max_workers=workers) as ex:
        futs = {ex.submit(process, r): r for r in todo}
        for fu in as_completed(futs):
            try:
                name, status, words, note = fu.result()
            except Exception as e:
                name, status, words, note = futs[fu]['file'], 'failed', '', type(e).__name__
            r = by_name[name]
            r['status'] = status
            r['words_after'] = words
            if note:
                r['diagnosis'] = (r.get('diagnosis', '') + ' | ' + note).strip(' |')
            done += 1
            if done % 10 == 0 or done == len(todo):
                with io.open(LEDGER, 'w', encoding='utf-8', newline='') as fh:
                    w = csv.DictWriter(fh, fieldnames=fields)
                    w.writeheader(); w.writerows(rows)
                print(f'  {done}/{len(todo)}', flush=True)
    with io.open(LEDGER, 'w', encoding='utf-8', newline='') as fh:
        w = csv.DictWriter(fh, fieldnames=fields)
        w.writeheader(); w.writerows(rows)
    from collections import Counter
    print(dict(Counter(r['status'] for r in rows)), flush=True)


if __name__ == '__main__':
    main()
