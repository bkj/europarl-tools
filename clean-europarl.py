import sys
import codecs
sys.path.append('/home/bjohnson/qcr/analytics/dmlsh')
from normalization import clean_text, tokenize

char_stream = codecs.getreader("utf-8")(sys.stdin)
sys.stdout  = codecs.getwriter("utf-8")(sys.stdout)

for l in char_stream:
    l = clean_text(l, from_unicode=False, convert_emojis=False)
    l = ' '.join(tokenize(l, keep_punctuation=False))
    print l