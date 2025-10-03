// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Vallibel Power Erathna'}) ON CREATE SET c.id = 'vallibel_power_erathna', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'Country Energy'}) ON CREATE SET c.id = 'country_energy';

// Query 4
// Step 2: Auditor;

// Query 5
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 6
// Step 3: AUDITED_BY Relationship;

// Query 7
MATCH (c:Company {name: 'Vallibel Power Erathna'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 8
// Step 4: People - Directors and Executives;

// Query 9
MERGE (p:Person {name: 'Harsha Amarasekera'}) ON CREATE SET p.id = 'harsha_amarasekera';

// Query 10
MERGE (p:Person {name: 'Prabodha Sumanasekera'}) ON CREATE SET p.id = 'prabodha_sumanasekera';

// Query 11
MERGE (p:Person {name: 'Haresh Somashantha'}) ON CREATE SET p.id = 'haresh_somashantha';

// Query 12
MERGE (p:Person {name: 'Shan Shanmuganathan'}) ON CREATE SET p.id = 'shan_shanmuganathan';

// Query 13
MERGE (p:Person {name: 'Chatura V. Cabraal'}) ON CREATE SET p.id = 'chatura_v_cabraal';

// Query 14
MERGE (p:Person {name: 'Dinusha Bhaskaran'}) ON CREATE SET p.id = 'dinusha_bhaskaran';

// Query 15
MERGE (p:Person {name: 'Sajithra Thanoj Russell De Zilva'}) ON CREATE SET p.id = 'sajithra_thanoj_russell_de_zilva';

// Query 16
MERGE (p:Person {name: 'G A R D Prasanna'}) ON CREATE SET p.id = 'g_a_r_d_prasanna';

// Query 17
MERGE (p:Person {name: 'K D A Perera'}) ON CREATE SET p.id = 'k_d_a_perera';

// Query 18
MERGE (p:Person {name: 'K D H Perera'}) ON CREATE SET p.id = 'k_d_h_perera';

// Query 19
// Step 5: HOLDS_POSITION Relationships;

// Query 20
MATCH (p:Person {name: 'Harsha Amarasekera'}), (c:Company {name: 'Vallibel Power Erathna'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-05-16');

// Query 21
MATCH (p:Person {name: 'Prabodha Sumanasekera'}), (c:Company {name: 'Vallibel Power Erathna'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-16');

// Query 22
MATCH (p:Person {name: 'Haresh Somashantha'}), (c:Company {name: 'Vallibel Power Erathna'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-16');

// Query 23
MATCH (p:Person {name: 'Shan Shanmuganathan'}), (c:Company {name: 'Vallibel Power Erathna'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-16');

// Query 24
MATCH (p:Person {name: 'Chatura V. Cabraal'}), (c:Company {name: 'Vallibel Power Erathna'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-16');

// Query 25
MATCH (p:Person {name: 'Dinusha Bhaskaran'}), (c:Company {name: 'Vallibel Power Erathna'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-16');

// Query 26
MATCH (p:Person {name: 'Sajithra Thanoj Russell De Zilva'}), (c:Company {name: 'Vallibel Power Erathna'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-05-16');

// Query 27
MATCH (p:Person {name: 'G A R D Prasanna'}), (c:Company {name: 'Country Energy'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-16');

// Query 28
MATCH (p:Person {name: 'K D A Perera'}), (c:Company {name: 'Country Energy'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-16');

// Query 29
MATCH (p:Person {name: 'K D H Perera'}), (c:Company {name: 'Country Energy'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-16');

// Query 30
MATCH (p:Person {name: 'Prabodha Sumanasekera'}), (c:Company {name: 'Country Energy'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-16');

// Query 31
MATCH (p:Person {name: 'Dinusha Bhaskaran'}), (c:Company {name: 'Country Energy'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-16');

// Query 32
// Step 6: OWNS_SHARES Relationships;

// Query 33
MATCH (p:Person {name: 'Harsha Amarasekera'}), (c:Company {name: 'Vallibel Power Erathna'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 30, r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'Prabodha Sumanasekera'}), (c:Company {name: 'Vallibel Power Erathna'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 150000, r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'Haresh Somashantha'}), (c:Company {name: 'Vallibel Power Erathna'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 15000, r.as_of = date('2024-03-31');

// Query 36
// Step 7: Metric Nodes;

// Query 37
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 43
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 44
// Step 8: HAS_METRIC Relationships;

// Query 45
MATCH (c:Company {name: 'Vallibel Power Erathna'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1475200000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Vallibel Power Erathna'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1122600000.0, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Vallibel Power Erathna'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1266900000.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Vallibel Power Erathna'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 894600000.0, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Vallibel Power Erathna'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1517206000.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Vallibel Power Erathna'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 103060000.0, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Vallibel Power Erathna'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1849830231.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Vallibel Power Erathna'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2556433348.0, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Vallibel Power Erathna'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1563100493.0, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Vallibel Power Erathna'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1733230849.0, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Vallibel Power Erathna'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 35.0, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Vallibel Power Erathna'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20.0, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Vallibel Power Erathna'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.90, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Vallibel Power Erathna'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.78, r.year = 2023;

// Query 59
// Step 9: Sector Nodes;

// Query 60
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 61
// Step 10: IN_SECTOR Relationships;

// Query 62
MATCH (c:Company {name: 'Vallibel Power Erathna'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 63
MATCH (c:Company {name: 'Country Energy'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 64
// Step 11: Product Nodes;

// Query 65
MERGE (p:Product {name: 'Hydroelectricity Generation'}) ON CREATE SET p.id = 'hydroelectricity_generation';

// Query 66
// Step 12: OFFERS Relationships;

// Query 67
MATCH (c:Company {name: 'Vallibel Power Erathna'}), (p:Product {name: 'Hydroelectricity Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 68
MATCH (c:Company {name: 'Country Energy'}), (p:Product {name: 'Hydroelectricity Generation'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 68
// Generated on: 2025-10-02T23:10:21.461246
