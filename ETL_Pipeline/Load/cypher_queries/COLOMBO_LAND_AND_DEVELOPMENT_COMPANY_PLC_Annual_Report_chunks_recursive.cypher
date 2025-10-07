// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Colombo Land and Development Company'}) ON CREATE SET c.id = 'colombo_land_and_development_company', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Colombo Land and Development Company'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'P S Weerasekera'}) ON CREATE SET p.id = 'p_s_weerasekera';

// Query 8
MERGE (p:Person {name: 'S A Ameresekere'}) ON CREATE SET p.id = 's_a_ameresekere';

// Query 9
MERGE (p:Person {name: 'Ng Yao Xing Eugene'}) ON CREATE SET p.id = 'ng_yao_xing_eugene';

// Query 10
MERGE (p:Person {name: 'L B Kumudu Lal'}) ON CREATE SET p.id = 'l_b_kumudu_lal';

// Query 11
MERGE (p:Person {name: 'M C Withanaarachchi'}) ON CREATE SET p.id = 'm_c_withanaarachchi';

// Query 12
MERGE (p:Person {name: 'M D A Weerasooriya'}) ON CREATE SET p.id = 'm_d_a_weerasooriya';

// Query 13
MERGE (p:Person {name: 'W A A Perera'}) ON CREATE SET p.id = 'w_a_a_perera';

// Query 14
MERGE (p:Person {name: 'P S Perera'}) ON CREATE SET p.id = 'p_s_perera';

// Query 15
// Step 4: HOLDS_POSITION Relationships;

// Query 16
MATCH (p:Person {name: 'P S Weerasekera'}), (c:Company {name: 'Colombo Land and Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-12-31');

// Query 17
MATCH (p:Person {name: 'S A Ameresekere'}), (c:Company {name: 'Colombo Land and Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 18
MATCH (p:Person {name: 'Ng Yao Xing Eugene'}), (c:Company {name: 'Colombo Land and Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 19
MATCH (p:Person {name: 'L B Kumudu Lal'}), (c:Company {name: 'Colombo Land and Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 20
MATCH (p:Person {name: 'M C Withanaarachchi'}), (c:Company {name: 'Colombo Land and Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 21
MATCH (p:Person {name: 'M D A Weerasooriya'}), (c:Company {name: 'Colombo Land and Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 22
MATCH (p:Person {name: 'W A A Perera'}), (c:Company {name: 'Colombo Land and Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 23
MATCH (p:Person {name: 'P S Perera'}), (c:Company {name: 'Colombo Land and Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 24
// Step 5: Metrics;

// Query 25
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 33
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 34
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 35
// Step 6: HAS_METRIC Relationships;

// Query 36
MATCH (c:Company {name: 'Colombo Land and Development Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 443000000.0, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Colombo Land and Development Company'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 285000000.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Colombo Land and Development Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 365000000.0, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Colombo Land and Development Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 95000000.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Colombo Land and Development Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14179000000.0, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Colombo Land and Development Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8415000000.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Colombo Land and Development Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.48, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Colombo Land and Development Company'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Colombo Land and Development Company'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.37, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Colombo Land and Development Company'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.76, r.year = 2024;

// Query 46
// Step 7: Sectors;

// Query 47
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 48
// Step 8: IN_SECTOR Relationships;

// Query 49
MATCH (c:Company {name: 'Colombo Land and Development Company'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 50
// Step 9: Products;

// Query 51
MERGE (p:Product {name: 'Commercial Spaces'}) ON CREATE SET p.id = 'commercial_spaces';

// Query 52
MERGE (p:Product {name: 'Office Spaces'}) ON CREATE SET p.id = 'office_spaces';

// Query 53
MERGE (p:Product {name: 'Residential Spaces'}) ON CREATE SET p.id = 'residential_spaces';

// Query 54
MERGE (p:Product {name: 'Car Parking Services'}) ON CREATE SET p.id = 'car_parking_services';

// Query 55
MERGE (p:Product {name: 'Advertising Spaces'}) ON CREATE SET p.id = 'advertising_spaces';

// Query 56
// Step 10: OFFERS Relationships;

// Query 57
MATCH (c:Company {name: 'Colombo Land and Development Company'}), (p:Product {name: 'Commercial Spaces'}) MERGE (c)-[:OFFERS]->(p);

// Query 58
MATCH (c:Company {name: 'Colombo Land and Development Company'}), (p:Product {name: 'Office Spaces'}) MERGE (c)-[:OFFERS]->(p);

// Query 59
MATCH (c:Company {name: 'Colombo Land and Development Company'}), (p:Product {name: 'Residential Spaces'}) MERGE (c)-[:OFFERS]->(p);

// Query 60
MATCH (c:Company {name: 'Colombo Land and Development Company'}), (p:Product {name: 'Car Parking Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 61
MATCH (c:Company {name: 'Colombo Land and Development Company'}), (p:Product {name: 'Advertising Spaces'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 61
// Generated on: 2025-10-03T03:26:17.700247
