// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Autodrome'}) ON CREATE SET c.id = 'autodrome', c.founded_on = date('1953-01-01'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Autodrome'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Bernadette Aloysius'}) ON CREATE SET p.id = 'bernadette_aloysius';

// Query 8
MERGE (p:Person {name: 'Jeremy Aloysius'}) ON CREATE SET p.id = 'jeremy_aloysius';

// Query 9
MERGE (p:Person {name: 'Rajeev Aloysius'}) ON CREATE SET p.id = 'rajeev_aloysius';

// Query 10
MERGE (p:Person {name: 'Joanne Aloysius Rajiyah'}) ON CREATE SET p.id = 'joanne_aloysius_rajiyah';

// Query 11
MERGE (p:Person {name: 'John Aloysius'}) ON CREATE SET p.id = 'john_aloysius';

// Query 12
MERGE (p:Person {name: 'Julie A. Aloysius'}) ON CREATE SET p.id = 'julie_a_aloysius';

// Query 13
MERGE (p:Person {name: 'Ranil de Silva'}) ON CREATE SET p.id = 'ranil_de_silva';

// Query 14
MERGE (p:Person {name: 'Raviraj Ratnasabapathy'}) ON CREATE SET p.id = 'raviraj_ratnasabapathy';

// Query 15
MERGE (p:Person {name: 'Brihadisvara Ponnambalam'}) ON CREATE SET p.id = 'brihadisvara_ponnambalam';

// Query 16
MERGE (p:Person {name: 'Jitendra T. Daulagala'}) ON CREATE SET p.id = 'jitendra_t_daulagala';

// Query 17
MERGE (p:Person {name: 'Gayan Joseph'}) ON CREATE SET p.id = 'gayan_joseph';

// Query 18
MERGE (p:Person {name: 'Shamindra V. Rajiyah'}) ON CREATE SET p.id = 'shamindra_v_rajiyah';

// Query 19
MERGE (p:Person {name: 'Sanjeev E.C. Gardiner'}) ON CREATE SET p.id = 'sanjeev_e_c_gardiner';

// Query 20
MERGE (p:Person {name: 'Hiranjan C.W. Aloysius'}) ON CREATE SET p.id = 'hiranjan_c_w_aloysius';

// Query 21
MERGE (p:Person {name: 'W.S.S. Amarasooriya'}) ON CREATE SET p.id = 'w_s_s_amarasooriya';

// Query 22
MERGE (p:Person {name: 'Hettiarachchige Walter Elliot Tissera'}) ON CREATE SET p.id = 'hettiarachchige_walter_elliot_tissera';

// Query 23
// Step 4: HOLDS_POSITION Relationships;

// Query 24
MATCH (p:Person {name: 'Bernadette Aloysius'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 25
MATCH (p:Person {name: 'Jeremy Aloysius'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-12-31');

// Query 26
MATCH (p:Person {name: 'Rajeev Aloysius'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-12-31');

// Query 27
MATCH (p:Person {name: 'Joanne Aloysius Rajiyah'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 28
MATCH (p:Person {name: 'John Aloysius'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 29
MATCH (p:Person {name: 'Julie A. Aloysius'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 30
MATCH (p:Person {name: 'Ranil de Silva'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 31
MATCH (p:Person {name: 'Raviraj Ratnasabapathy'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 32
MATCH (p:Person {name: 'Brihadisvara Ponnambalam'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-01-01');

// Query 33
MATCH (p:Person {name: 'Jitendra T. Daulagala'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 34
MATCH (p:Person {name: 'Gayan Joseph'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2025-01-28');

// Query 35
// Step 5: Metrics;

// Query 36
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 43
// Step 6: HAS_METRIC Relationships;

// Query 44
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 133505000.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 45
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2436000.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 46
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11562000.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 47
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7535000.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 48
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.63, r.year = 2024, r.as_of = date('2024-12-31');

// Query 49
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 61050000.0, r.year = 2023, r.as_of = date('2023-12-31');

// Query 50
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -10039000.0, r.year = 2023, r.as_of = date('2023-12-31');

// Query 51
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7925000.0, r.year = 2023, r.as_of = date('2023-12-31');

// Query 52
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5584000.0, r.year = 2023, r.as_of = date('2023-12-31');

// Query 53
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.47, r.year = 2023, r.as_of = date('2023-12-31');

// Query 54
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 311809000.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 55
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1199000.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 56
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39749000.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 57
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26041000.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 58
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.17, r.year = 2024, r.as_of = date('2024-12-31');

// Query 59
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 146822000.0, r.year = 2023, r.as_of = date('2023-12-31');

// Query 60
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -32367000.0, r.year = 2023, r.as_of = date('2023-12-31');

// Query 61
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33928000.0, r.year = 2023, r.as_of = date('2023-12-31');

// Query 62
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22511000.0, r.year = 2023, r.as_of = date('2023-12-31');

// Query 63
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.88, r.year = 2023, r.as_of = date('2023-12-31');

// Query 64
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2690901000.0, r.as_of = date('2024-12-31');

// Query 65
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1966019000.0, r.as_of = date('2024-12-31');

// Query 66
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2555405000.0, r.as_of = date('2023-12-31');

// Query 67
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1908251000.0, r.as_of = date('2023-12-31');

// Query 68
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2713076000.0, r.as_of = date('2024-03-31');

// Query 69
MATCH (c:Company {name: 'Autodrome'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1986079000.0, r.as_of = date('2024-03-31');

// Query 70
// Step 7: Sectors;

// Query 71
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 72
// Step 8: IN_SECTOR Relationships;

// Query 73
MATCH (c:Company {name: 'Autodrome'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
// Step 9: Company-Company Relationships (OWNS);

// Query 75
MERGE (comp:Company {name: 'Tuckers'}) ON CREATE SET comp.id = 'tuckers';

// Query 76
MERGE (comp:Company {name: 'Seylan Bank'}) ON CREATE SET comp.id = 'seylan_bank';

// Query 77
MERGE (comp:Company {name: 'Galle Face Hotel'}) ON CREATE SET comp.id = 'galle_face_hotel';

// Query 78
MERGE (comp:Company {name: 'Cyril Gardiner'}) ON CREATE SET comp.id = 'cyril_gardiner';

// Query 79
MERGE (comp:Company {name: 'Hotel International'}) ON CREATE SET comp.id = 'hotel_international';

// Query 80
MATCH (owner:Company {name: 'Tuckers'}), (owned:Company {name: 'Autodrome'}) MERGE (owner)-[r:OWNS]->(owned) ON CREATE SET r.pct = 11.63, r.as_of = date('2024-12-31');

// Query 81
MATCH (owner:Company {name: 'Seylan Bank'}), (owned:Company {name: 'Autodrome'}) MERGE (owner)-[r:OWNS]->(owned) ON CREATE SET r.pct = 4.44, r.as_of = date('2024-12-31');

// Query 82
MATCH (owner:Company {name: 'Galle Face Hotel'}), (owned:Company {name: 'Autodrome'}) MERGE (owner)-[r:OWNS]->(owned) ON CREATE SET r.pct = 4.44, r.as_of = date('2024-12-31');

// Query 83
MATCH (owner:Company {name: 'Cyril Gardiner'}), (owned:Company {name: 'Autodrome'}) MERGE (owner)-[r:OWNS]->(owned) ON CREATE SET r.pct = 1.34, r.as_of = date('2024-12-31');

// Query 84
MATCH (owner:Company {name: 'Hotel International'}), (owned:Company {name: 'Autodrome'}) MERGE (owner)-[r:OWNS]->(owned) ON CREATE SET r.pct = 0.66, r.as_of = date('2024-12-31');

// Query 85
// Step 10: Person-Company Relationships (OWNS_SHARES);

// Query 86
MATCH (p:Person {name: 'Bernadette Aloysius'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 3594800, r.pct = 29.96, r.as_of = date('2024-12-31');

// Query 87
MATCH (p:Person {name: 'Jeremy Aloysius'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1127360, r.pct = 9.39, r.as_of = date('2024-12-31');

// Query 88
MATCH (p:Person {name: 'Rajeev Aloysius'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1127360, r.pct = 9.39, r.as_of = date('2024-12-31');

// Query 89
MATCH (p:Person {name: 'Julie A. Aloysius'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1127360, r.pct = 9.39, r.as_of = date('2024-12-31');

// Query 90
MATCH (p:Person {name: 'John Aloysius'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1127360, r.pct = 9.39, r.as_of = date('2024-12-31');

// Query 91
MATCH (p:Person {name: 'Shamindra V. Rajiyah'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 61000, r.pct = 0.51, r.as_of = date('2024-12-31');

// Query 92
MATCH (p:Person {name: 'Joanne Aloysius Rajiyah'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 61000, r.pct = 0.51, r.as_of = date('2024-12-31');

// Query 93
MATCH (p:Person {name: 'Sanjeev E.C. Gardiner'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1179500, r.pct = 9.83, r.as_of = date('2024-12-31');

// Query 94
MATCH (p:Person {name: 'Hiranjan C.W. Aloysius'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 55700, r.pct = 0.46, r.as_of = date('2024-12-31');

// Query 95
MATCH (p:Person {name: 'W.S.S. Amarasooriya'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 38336, r.pct = 0.32, r.as_of = date('2024-12-31');

// Query 96
MATCH (p:Person {name: 'Hettiarachchige Walter Elliot Tissera'}), (c:Company {name: 'Autodrome'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 10600, r.pct = 0.09, r.as_of = date('2024-12-31');

// Total queries: 96
// Generated on: 2025-10-03T01:23:19.150200
