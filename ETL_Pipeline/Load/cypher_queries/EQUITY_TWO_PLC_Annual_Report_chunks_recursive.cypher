// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Equity Two'}) ON CREATE SET c.id = 'equity_two', c.founded_on = date('1990-01-01'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor - No explicit auditor name from the hardcoded list, skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'E. H. Wijenaike'}) ON CREATE SET p.id = 'e_h_wijenaike';

// Query 6
MERGE (p:Person {name: 'K. C. N. Fernando'}) ON CREATE SET p.id = 'k_c_n_fernando';

// Query 7
MERGE (p:Person {name: 'A. P. Weeratunge'}) ON CREATE SET p.id = 'a_p_weeratunge';

// Query 8
MERGE (p:Person {name: 'S. Marimuthu'}) ON CREATE SET p.id = 's_marimuthu';

// Query 9
MERGE (p:Person {name: 'A. S. Amaratunga'}) ON CREATE SET p.id = 'a_s_amaratunga';

// Query 10
// Step 4: HOLDS_POSITION Relationships;

// Query 11
MATCH (p:Person {name: 'E. H. Wijenaike'}), (c:Company {name: 'Equity Two'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-03-31');

// Query 12
MATCH (p:Person {name: 'K. C. N. Fernando'}), (c:Company {name: 'Equity Two'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 13
MATCH (p:Person {name: 'A. P. Weeratunge'}), (c:Company {name: 'Equity Two'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 14
MATCH (p:Person {name: 'S. Marimuthu'}), (c:Company {name: 'Equity Two'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 15
MATCH (p:Person {name: 'A. S. Amaratunga'}), (c:Company {name: 'Equity Two'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 16
// Step 5: Metrics;

// Query 17
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 18
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 19
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 24
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 25
// Step 6: HAS_METRIC Relationships;

// Query 26
MATCH (c:Company {name: 'Equity Two'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 209311000.0, r.year = 2025;

// Query 27
MATCH (c:Company {name: 'Equity Two'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 181457000.0, r.year = 2024;

// Query 28
MATCH (c:Company {name: 'Equity Two'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 376135000.0, r.year = 2025;

// Query 29
MATCH (c:Company {name: 'Equity Two'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 341064000.0, r.year = 2024;

// Query 30
MATCH (c:Company {name: 'Equity Two'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 262848000.0, r.year = 2025;

// Query 31
MATCH (c:Company {name: 'Equity Two'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 237695000.0, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'Equity Two'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2570109000.0, r.year = 2025;

// Query 33
MATCH (c:Company {name: 'Equity Two'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2247303000.0, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'Equity Two'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1980434000.0, r.year = 2025;

// Query 35
MATCH (c:Company {name: 'Equity Two'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1733131000.0, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Equity Two'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.48, r.year = 2025;

// Query 37
MATCH (c:Company {name: 'Equity Two'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.67, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Equity Two'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.25, r.year = 2025;

// Query 39
MATCH (c:Company {name: 'Equity Two'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.73, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Equity Two'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 323200000.0, r.year = 2025;

// Query 41
// Step 7: Sectors;

// Query 42
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 43
// Step 8: IN_SECTOR Relationships;

// Query 44
MATCH (c:Company {name: 'Equity Two'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 45
// Step 9: Products;

// Query 46
MERGE (prod:Product {name: 'Office Premises Rental'}) ON CREATE SET prod.id = 'office_premises_rental';

// Query 47
// Step 10: OFFERS Relationships;

// Query 48
MATCH (c:Company {name: 'Equity Two'}), (prod:Product {name: 'Office Premises Rental'}) MERGE (c)-[:OFFERS]->(prod);

// Query 49
// Step 11: Company-Company Relationships (OWNS);

// Query 50
MERGE (parent_c:Company {name: 'Equity One'}) ON CREATE SET parent_c.id = 'equity_one';

// Query 51
MATCH (parent_c:Company {name: 'Equity One'}), (child_c:Company {name: 'Equity Two'}) MERGE (parent_c)-[r:OWNS]->(child_c) ON CREATE SET r.pct = 88.87, r.as_of = date('2025-03-31');

// Total queries: 51
// Generated on: 2025-10-03T00:02:36.032234
