import re, html
from html.parser import HTMLParser

DROP = {'script','style','nav','header','footer','aside','form','figure',
        'noscript','iframe','svg','button','select','option','video','audio'}
BLOCK = {'p','h1','h2','h3','h4','h5','h6','li','blockquote','pre'}

class Extract(HTMLParser):
    def __init__(self):
        super().__init__(convert_charrefs=True)
        self.skip = 0
        self.stack = []
        self.cur = []
        self.out = []
    def handle_starttag(self, tag, attrs):
        if tag in DROP:
            self.skip += 1; self.stack.append(tag); return
        if tag == 'br' and self.cur: self.cur.append(' ')
        if tag in BLOCK and not self.skip:
            self._flush(); self.stack.append(tag)
    def handle_endtag(self, tag):
        if tag in DROP and self.skip:
            self.skip -= 1
            if self.stack and self.stack[-1] == tag: self.stack.pop()
            return
        if tag in BLOCK and not self.skip:
            self._flush()
            if self.stack and self.stack[-1] == tag: self.stack.pop()
    def handle_data(self, data):
        if self.skip: return
        self.cur.append(data)
    def _flush(self):
        t = re.sub(r'\s+', ' ', ''.join(self.cur)).strip()
        if t: self.out.append(t)
        self.cur = []
    def close(self):
        super().close(); self._flush()

BOILER = re.compile(
 r'^(share|tweet|advertisement|subscribe|sign up|read more|related|follow us|'
 r'cookie|accept|privacy policy|terms|copyright|all rights reserved|home|menu|'
 r'search|log ?in|register|comments?|tags?:|categories|next post|previous post|'
 r'\d+ min read|photo|image|source:|getty|reuters/|afp)\b', re.I)

def sniff_charset(raw_bytes, header_charset=None):
    if header_charset: return header_charset
    head = raw_bytes[:4096].decode('ascii', 'ignore')
    m = re.search(r"""charset=["']?([A-Za-z0-9_-]+)""", head, re.I)
    return m.group(1) if m else None

def extract(raw_bytes, encoding_hint=None):
    txt = None
    sniffed = sniff_charset(raw_bytes, encoding_hint)
    for enc in [sniffed, 'utf-8', 'windows-1252', 'windows-1256', 'iso-8859-1']:
        if not enc: continue
        try: txt = raw_bytes.decode(enc); break
        except Exception: continue
    if txt is None: txt = raw_bytes.decode('utf-8', 'replace')
    p = Extract()
    try: p.feed(txt); p.close()
    except Exception: pass
    paras = []
    for t in p.out:
        if len(t) < 40: continue
        if BOILER.match(t): continue
        if t.count('|') > 4: continue
        paras.append(t)
    # dedupe consecutive repeats (standfirst duplication)
    ded = []
    for t in paras:
        if ded and t == ded[-1]: continue
        ded.append(t)
    return '\n\n'.join(ded)
