// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Distilleries Company of Sri Lanka'}) ON CREATE SET c.id = 'distilleries_company_of_sri_lanka', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Distilleries Company of Sri Lanka'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'D. H. S. Jayawardena'}) ON CREATE SET p.id = 'd_h_s_jayawardena';

// Query 8
MERGE (p:Person {name: 'C. R. Jansz'}) ON CREATE SET p.id = 'c_r_jansz';

// Query 9
MERGE (p:Person {name: 'K. J. Kahanda'}) ON CREATE SET p.id = 'k_j_kahanda';

// Query 10
MERGE (p:Person {name: 'N. De S. Deva Aditya'}) ON CREATE SET p.id = 'n_de_s_deva_aditya';

// Query 11
MERGE (p:Person {name: 'A. N. Balasuriya'}) ON CREATE SET p.id = 'a_n_balasuriya';

// Query 12
MERGE (p:Person {name: 'D. Hasitha S. Jayawardena'}) ON CREATE SET p.id = 'd_hasitha_s_jayawardena';

// Query 13
MERGE (p:Person {name: 'D. S. T. Jayawardena'}) ON CREATE SET p.id = 'd_s_t_jayawardena';

// Query 14
MERGE (p:Person {name: 'M. A. N. S. Perera'}) ON CREATE SET p.id = 'm_a_n_s_perera';

// Query 15
MERGE (p:Person {name: 'R. A. Fernando'}) ON CREATE SET p.id = 'r_a_fernando';

// Query 16
MERGE (p:Person {name: 'Ashoka Goonesekere'}) ON CREATE SET p.id = 'ashoka_goonesekere';

// Query 17
MERGE (p:Person {name: 'V. J. Senaratne'}) ON CREATE SET p.id = 'v_j_senaratne';

// Query 18
// Step 4: HOLDS_POSITION Relationships;

// Query 19
MATCH (p:Person {name: 'D. H. S. Jayawardena'}), (c:Company {name: 'Distilleries Company of Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-09-30');

// Query 20
MATCH (p:Person {name: 'C. R. Jansz'}), (c:Company {name: 'Distilleries Company of Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 21
MATCH (p:Person {name: 'K. J. Kahanda'}), (c:Company {name: 'Distilleries Company of Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-09-30');

// Query 22
MATCH (p:Person {name: 'N. De S. Deva Aditya'}), (c:Company {name: 'Distilleries Company of Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 23
MATCH (p:Person {name: 'A. N. Balasuriya'}), (c:Company {name: 'Distilleries Company of Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 24
MATCH (p:Person {name: 'D. Hasitha S. Jayawardena'}), (c:Company {name: 'Distilleries Company of Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 25
MATCH (p:Person {name: 'D. S. T. Jayawardena'}), (c:Company {name: 'Distilleries Company of Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 26
MATCH (p:Person {name: 'M. A. N. S. Perera'}), (c:Company {name: 'Distilleries Company of Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 27
MATCH (p:Person {name: 'R. A. Fernando'}), (c:Company {name: 'Distilleries Company of Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 28
MATCH (p:Person {name: 'Ashoka Goonesekere'}), (c:Company {name: 'Distilleries Company of Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 29
MATCH (p:Person {name: 'V. J. Senaratne'}), (c:Company {name: 'Distilleries Company of Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-09-30');

// Query 30
// Step 5: Person Shareholdings;

// Query 31
MATCH (p:Person {name: 'D. Hasitha S. Jayawardena'}), (c:Company {name: 'Distilleries Company of Sri Lanka'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 2231505, r.pct = 0.05, r.as_of = date('2024-09-30');

// Query 32
MATCH (p:Person {name: 'D. S. T. Jayawardena'}), (c:Company {name: 'Distilleries Company of Sri Lanka'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 11437, r.pct = 0.00, r.as_of = date('2024-09-30');

// Query 33
MATCH (p:Person {name: 'L. H. A. Lakshman Silva'}), (c:Company {name: 'Distilleries Company of Sri Lanka'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 2370, r.pct = 0.00, r.as_of = date('2024-09-30');

// Query 34
// Step 6: Metrics;

// Query 35
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 42
// Step 7: HAS_METRIC Relationships;

// Query 43
MATCH (c:Company {name: 'Distilleries Company of Sri Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 67473989000, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Distilleries Company of Sri Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 57292345000, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Distilleries Company of Sri Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7487614000, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Distilleries Company of Sri Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7107842000, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Distilleries Company of Sri Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12961672000, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Distilleries Company of Sri Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11932825000, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Distilleries Company of Sri Lanka'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12818061000, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Distilleries Company of Sri Lanka'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11238505000, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Distilleries Company of Sri Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.63, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Distilleries Company of Sri Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.55, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Distilleries Company of Sri Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 34966558000, r.as_of = date('2024-09-30');

// Query 54
MATCH (c:Company {name: 'Distilleries Company of Sri Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26512266000, r.as_of = date('2023-09-30');

// Query 55
MATCH (c:Company {name: 'Distilleries Company of Sri Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30979694000, r.as_of = date('2024-03-31');

// Query 56
MATCH (c:Company {name: 'Distilleries Company of Sri Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15309421000, r.as_of = date('2024-09-30');

// Query 57
MATCH (c:Company {name: 'Distilleries Company of Sri Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11959932000, r.as_of = date('2023-09-30');

// Query 58
MATCH (c:Company {name: 'Distilleries Company of Sri Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10620824000, r.as_of = date('2024-03-31');

// Query 59
// Step 8: Sectors;

// Query 60
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 61
// Step 9: IN_SECTOR Relationships;

// Query 62
MATCH (c:Company {name: 'Distilleries Company of Sri Lanka'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 62
// Generated on: 2025-10-03T02:46:14.768220
