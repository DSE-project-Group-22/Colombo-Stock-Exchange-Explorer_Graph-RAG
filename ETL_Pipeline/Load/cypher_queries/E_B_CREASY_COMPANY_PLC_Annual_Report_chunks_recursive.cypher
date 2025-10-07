// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'E. B. Creasy & Company'}) ON CREATE SET c.id = 'e_b_creasy_and_company', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'E. B. Creasy & Company'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 8
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 9
MERGE (p:Person {name: 'A. D. T. Mendis'}) ON CREATE SET p.id = 'a_d_t_mendis';

// Query 10
MERGE (p:Person {name: 'S. W. Gunawardena'}) ON CREATE SET p.id = 's_w_gunawardena';

// Query 11
// Step 4: HOLDS_POSITION Relationships;

// Query 12
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'E. B. Creasy & Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 13
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'E. B. Creasy & Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-12-31');

// Query 14
MATCH (p:Person {name: 'S. Rajaratnam'}), (c:Company {name: 'E. B. Creasy & Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-12-31');

// Query 15
MATCH (p:Person {name: 'A. D. T. Mendis'}), (c:Company {name: 'E. B. Creasy & Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-12-31');

// Query 16
MATCH (p:Person {name: 'S. W. Gunawardena'}), (c:Company {name: 'E. B. Creasy & Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 17
// Step 5: Metrics;

// Query 18
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 19
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 24
// Step 6: HAS_METRIC Relationships;

// Query 25
MATCH (c:Company {name: 'E. B. Creasy & Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8498076000, r.year = 2024;

// Query 26
MATCH (c:Company {name: 'E. B. Creasy & Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6957251000, r.year = 2023;

// Query 27
MATCH (c:Company {name: 'E. B. Creasy & Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 718780000, r.year = 2024;

// Query 28
MATCH (c:Company {name: 'E. B. Creasy & Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 170678000, r.year = 2023;

// Query 29
MATCH (c:Company {name: 'E. B. Creasy & Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 541230000, r.year = 2024;

// Query 30
MATCH (c:Company {name: 'E. B. Creasy & Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 160862000, r.year = 2023;

// Query 31
MATCH (c:Company {name: 'E. B. Creasy & Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13319409000, r.as_of = date('2024-12-31');

// Query 32
MATCH (c:Company {name: 'E. B. Creasy & Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11898082000, r.as_of = date('2024-03-31');

// Query 33
MATCH (c:Company {name: 'E. B. Creasy & Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5996030000, r.as_of = date('2024-12-31');

// Query 34
MATCH (c:Company {name: 'E. B. Creasy & Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5333082000, r.as_of = date('2024-03-31');

// Query 35
MATCH (c:Company {name: 'E. B. Creasy & Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.13, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'E. B. Creasy & Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.63, r.year = 2023;

// Query 37
// Step 7: Sectors;

// Query 38
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 39
MERGE (s:Sector {name: 'Consumer Durables and Apparel'}) ON CREATE SET s.id = 'consumer_durables_and_apparel';

// Query 40
// Step 8: IN_SECTOR Relationships;

// Query 41
MATCH (c:Company {name: 'E. B. Creasy & Company'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 42
MATCH (c:Company {name: 'E. B. Creasy & Company'}), (s:Sector {name: 'Consumer Durables and Apparel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 42
// Generated on: 2025-10-03T03:38:26.209347
