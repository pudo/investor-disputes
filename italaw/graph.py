from normality import normalize
from itertools import combinations
from pprint import pprint
import networkx as nx
import dataset

SKIP = ['A.S.', 'S.A.', 'S.L.U.', 'L.P.', 'L.L.C.', 'Inc.', 'B.V.',
        'Ltd.', 'LLC']

engine = dataset.connect('postgresql://127.0.0.1/ttip')
cases = engine['ita_cases']
entities = engine['ita_entities']
documents = engine['ita_documents']

GROUPS = {
    u'respondent_state': 'country',
    u'claimant_appointee': 'person',
    u'judges': 'person',
    u'country_in_which_this_occurs': 'country',
    u'chair_president': 'person',
    u'claimant': 'company',
    u'investment_treaty': 'treaty',
    u'other_expert': 'person',
    u'respondents_expert': 'person',
    u'arbitrator': 'person',
    u'claimants_expert': 'person',
    u'annulment_committee_president': 'person',
    u'respondent_appointee': 'person',
    'claimants_counsel': 'person',
    'respondents_counsel': 'person',
    u'annulment_committee_members': 'person'
}

G = nx.Graph()

nodes = {}
cases = {}
# types = set()
for entity in entities:
    label = entity.get('entity')
    if label in SKIP:
        continue
    key = normalize(label)
    # types.add(entity.get('type'))
    if entity.get('case_url') not in cases:
        cases[entity.get('case_url')] = set()
    cases[entity.get('case_url')].add(key)

    if not G.has_node(key):
        G.add_node(key,
                   label=label,
                   type=entity.get('type'),
                   group=GROUPS[entity.get('type')])
    nodes[key] = label

for case_url, involved in cases.items():
    # print case_url, len(involved)
    for (s, t) in combinations(involved, 2):
        if G.has_edge(s, t):
            G[s][t]['weight'] += 1
        else:
            G.add_edge(s, t, weight=1)

# pprint(nodes)
# print types

nx.write_gexf(G, 'ita.gexf')
