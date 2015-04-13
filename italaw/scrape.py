import dataset
import requests
from lxml import html
from normality import slugify
from pprint import pprint


ENTITIES = ['claimant', 'investment_treaty', 'respondent_state']
SUFFIXEN = ['Inc', 'L.L.C', 'S.A', 'L.P.', 'A.S.', 'S.L.U.']
engine = dataset.connect('postgresql://127.0.0.1/ttip')
cases = engine['ita_cases']
entities = engine['ita_entities']
documents = engine['ita_documents']


def col_name(labels):
    label = labels[0].text
    label = label.replace('(s)', '')
    label = label.replace('\'s', 's')
    return slugify(label, sep='_')


def handle_val(val):
    for suffix in SUFFIXEN:
        val = val.replace(', %s' % val, ' %s' % val)
    return [v.strip() for v in val.split(', ') if len(v.strip())]


def scrape_case(url):
    res = requests.get(url)
    doc = html.fromstring(res.content)
    data = {
        'case_url': url,
        'title': doc.findtext('.//h1[@id="page-title"]')
    }
    if 'Page Not Found' in data['title']:
        return
    for field in doc.cssselect('.view-cases .views-field'):
        labels = field.cssselect('.views-label')
        if len(labels) != 1:
            continue
        col = col_name(labels)
        val = field.cssselect('.field-content').pop().text_content()
        if col in ENTITIES:
            for v in handle_val(val):
                ent = {'case_url': url, 'entity': v, 'type': col}
                entities.upsert(ent, ['case_url', 'entity', 'type'])
        else:
            data[col] = val

    for i, docrow in enumerate(doc.cssselect('.view-documents .views-row')):
        docd = {
            'doc_idx': i,
            'case_url': url
        }
        cls = '.date-display-single'
        if docrow.cssselect(cls):
            docd['date'] = docrow.cssselect(cls)[0].get('content')
        cls = '.views-field-field-case-doc-file a'
        if docrow.cssselect(cls):
            href = docrow.cssselect(cls)[0]
            docd['doc_url'] = href.get('href')
            docd['doc_title'] = href.text_content()
        else:
            cls = '.views-field-field-case-document-no-pdf- a'
            if docrow.cssselect(cls):
                docd['doc_url'] = docrow.cssselect(cls)[0].get('href')
            cls = '.views-field-field-case-document-no-pdf- .field-content'
            if docrow.cssselect(cls):
                docd['doc_title'] = docrow.cssselect(cls)[0].text_content()

        # print docd
        for field in docrow.cssselect('.views-field-nothing-1 .views-field'):
            labels = field.cssselect('.views-label')
            if len(labels) != 1:
                continue
            col = col_name(labels)
            val = field.cssselect('.field-content')[0].text_content()
            if not val:
                continue
            for v in handle_val(val):
                ent = {'case_url': url, 'doc_idx': i, 'entity': v, 'type': col}
                entities.upsert(ent, ['case_url', 'doc_idx', 'entity', 'type'])

    pprint(data)
    cases.upsert(data, ['case_url'])


def scrape_all():
    for i in xrange(1, 10000):
        url = 'http://www.italaw.com/cases/%s' % i
        scrape_case(url)


if __name__ == '__main__':
    scrape_all()
    # scrape_case('http://www.italaw.com/cases/2099')
