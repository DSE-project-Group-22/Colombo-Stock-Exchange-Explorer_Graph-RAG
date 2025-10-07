// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Radiant Gems International'}) ON CREATE SET c.id = 'radiant_gems_international', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('1979-01-01');

// Query 3
// Step 2: Auditor - No explicit auditor found matching the hardcoded list.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'S.H. Munasinghe'}) ON CREATE SET p.id = 's_h_munasinghe';

// Query 6
MERGE (p:Person {name: 'M.L. Munasinghe'}) ON CREATE SET p.id = 'm_l_munasinghe';

// Query 7
MERGE (p:Person {name: 'S.R. De Mel Abhayawardhane'}) ON CREATE SET p.id = 's_r_de_mel_abhayawardhane';

// Query 8
MERGE (p:Person {name: 'A.D. Madushanka'}) ON CREATE SET p.id = 'a_d_madushanka';

// Query 9
MERGE (p:Person {name: 'A.M.T. Dinuwan'}) ON CREATE SET p.id = 'a_m_t_dinuwan';

// Query 10
// Step 4: HOLDS_POSITION Relationships;

// Query 11
MATCH (p:Person {name: 'S.H. Munasinghe'}), (c:Company {name: 'Radiant Gems International'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 12
MATCH (p:Person {name: 'S.H. Munasinghe'}), (c:Company {name: 'Radiant Gems International'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 13
MATCH (p:Person {name: 'S.H. Munasinghe'}), (c:Company {name: 'Radiant Gems International'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 14
MATCH (p:Person {name: 'M.L. Munasinghe'}), (c:Company {name: 'Radiant Gems International'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'M.L. Munasinghe'}), (c:Company {name: 'Radiant Gems International'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'S.R. De Mel Abhayawardhane'}), (c:Company {name: 'Radiant Gems International'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-28');

// Query 17
MATCH (p:Person {name: 'A.D. Madushanka'}), (c:Company {name: 'Radiant Gems International'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'A.M.T. Dinuwan'}), (c:Company {name: 'Radiant Gems International'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-28');

// Query 19
// Step 5: Metrics;

// Query 20
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 26
// Step 6: HAS_METRIC Relationships;

// Query 27
MATCH (c:Company {name: 'Radiant Gems International'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 234414752.0, r.year = 2024;

// Query 28
MATCH (c:Company {name: 'Radiant Gems International'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 241290868.0, r.year = 2023;

// Query 29
MATCH (c:Company {name: 'Radiant Gems International'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -220508.0, r.year = 2024;

// Query 30
MATCH (c:Company {name: 'Radiant Gems International'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42063292.0, r.year = 2023;

// Query 31
MATCH (c:Company {name: 'Radiant Gems International'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -220508.0, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'Radiant Gems International'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42063292.0, r.year = 2023;

// Query 33
MATCH (c:Company {name: 'Radiant Gems International'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.09, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'Radiant Gems International'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.53, r.year = 2023;

// Query 35
MATCH (c:Company {name: 'Radiant Gems International'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 203614835.0, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Radiant Gems International'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 182040810.0, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'Radiant Gems International'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 76514446.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Radiant Gems International'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 75323233.0, r.year = 2023;

// Query 39
// Step 7: Sectors;

// Query 40
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 41
// Step 8: IN_SECTOR Relationships;

// Query 42
MATCH (c:Company {name: 'Radiant Gems International'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 43
// Step 9: Products;

// Query 44
MERGE (p:Product {name: 'Coloured Gemstones'}) ON CREATE SET p.id = 'coloured_gemstones';

// Query 45
MERGE (p:Product {name: 'Gemstone Cutting and Polishing Service'}) ON CREATE SET p.id = 'gemstone_cutting_and_polishing_service';

// Query 46
MERGE (p:Product {name: 'Gemstone Heat Treatment Service'}) ON CREATE SET p.id = 'gemstone_heat_treatment_service';

// Query 47
MERGE (p:Product {name: 'Marketing of Gemstones'}) ON CREATE SET p.id = 'marketing_of_gemstones';

// Query 48
// Step 10: OFFERS Relationships;

// Query 49
MATCH (c:Company {name: 'Radiant Gems International'}), (p:Product {name: 'Coloured Gemstones'}) MERGE (c)-[:OFFERS]->(p);

// Query 50
MATCH (c:Company {name: 'Radiant Gems International'}), (p:Product {name: 'Gemstone Cutting and Polishing Service'}) MERGE (c)-[:OFFERS]->(p);

// Query 51
MATCH (c:Company {name: 'Radiant Gems International'}), (p:Product {name: 'Gemstone Heat Treatment Service'}) MERGE (c)-[:OFFERS]->(p);

// Query 52
MATCH (c:Company {name: 'Radiant Gems International'}), (p:Product {name: 'Marketing of Gemstones'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 52
// Generated on: 2025-10-03T02:30:08.180391
