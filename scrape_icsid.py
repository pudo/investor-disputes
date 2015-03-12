import requests
from lxml import html

URL = 'https://icsid.worldbank.org/apps/ICSIDWEB/cases/Pages/AdvancedSearch.aspx'

sess = requests.Session()
res = sess.get(URL)
doc = html.fromstring(res.content)

data = {}
for inp in doc.findall('.//input'):
    name = inp.get('name')
    if 'hfPager' in name:
        value = 'PageSize|ALL'
    else:
        value = inp.get('value')
    if value is not None:
        data[name] = value

print data
