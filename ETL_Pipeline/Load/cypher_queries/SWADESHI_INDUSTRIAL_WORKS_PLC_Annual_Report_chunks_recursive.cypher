// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Swadeshi Industrial Works'}) ON CREATE SET c.id = 'swadeshi_industrial_works', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Swadeshi Industrial Works'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'A.M. Wijewardene'}) ON CREATE SET p.id = 'a_m_wijewardene';

// Query 8
MERGE (p:Person {name: 'Pravir Dhanoush Samarasinghe'}) ON CREATE SET p.id = 'pravir_dhanoush_samarasinghe';

// Query 9
MERGE (p:Person {name: 'V.M.J.A. Perera'}) ON CREATE SET p.id = 'v_m_j_a_perera';

// Query 10
MERGE (p:Person {name: 'Thusantha Wijemanna'}) ON CREATE SET p.id = 'thusantha_wijemanna';

// Query 11
MERGE (p:Person {name: 'C.S.M Samarasinghe'}) ON CREATE SET p.id = 'c_s_m_samarasinghe';

// Query 12
MERGE (p:Person {name: 'Hugh Kavinda Dias Abeyesinghe'}) ON CREATE SET p.id = 'hugh_kavinda_dias_abeyesinghe';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'A.M. Wijewardene'}), (c:Company {name: 'Swadeshi Industrial Works'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'Pravir Dhanoush Samarasinghe'}), (c:Company {name: 'Swadeshi Industrial Works'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'V.M.J.A. Perera'}), (c:Company {name: 'Swadeshi Industrial Works'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Thusantha Wijemanna'}), (c:Company {name: 'Swadeshi Industrial Works'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'C.S.M Samarasinghe'}), (c:Company {name: 'Swadeshi Industrial Works'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'Hugh Kavinda Dias Abeyesinghe'}), (c:Company {name: 'Swadeshi Industrial Works'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
// Step 5: Person Shareholdings;

// Query 21
MATCH (p:Person {name: 'A.M. Wijewardene'}), (c:Company {name: 'Swadeshi Industrial Works'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 109, r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Pravir Dhanoush Samarasinghe'}), (c:Company {name: 'Swadeshi Industrial Works'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 86, r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Thusantha Wijemanna'}), (c:Company {name: 'Swadeshi Industrial Works'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1, r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'C.S.M Samarasinghe'}), (c:Company {name: 'Swadeshi Industrial Works'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 50388, r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Hugh Kavinda Dias Abeyesinghe'}), (c:Company {name: 'Swadeshi Industrial Works'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 2298, r.as_of = date('2024-03-31');

// Query 26
// Step 6: Metrics;

// Query 27
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 34
// Step 7: HAS_METRIC Relationships;

// Query 35
MATCH (c:Company {name: 'Swadeshi Industrial Works'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4742821377, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Swadeshi Industrial Works'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4819400008, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'Swadeshi Industrial Works'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 189956126, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Swadeshi Industrial Works'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 256550574, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Swadeshi Industrial Works'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 131070952, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Swadeshi Industrial Works'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 199536746, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Swadeshi Industrial Works'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 240000000, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Swadeshi Industrial Works'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 384000000, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Swadeshi Industrial Works'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 877.88, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Swadeshi Industrial Works'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1336.26, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Swadeshi Industrial Works'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1942223960, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Swadeshi Industrial Works'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1698322518, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Swadeshi Industrial Works'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3431121809, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Swadeshi Industrial Works'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3405051889, r.year = 2023;

// Query 49
// Step 8: Sectors;

// Query 50
MERGE (s:Sector {name: 'Household and Personal Products'}) ON CREATE SET s.id = 'household_and_personal_products';

// Query 51
// Step 9: IN_SECTOR Relationships;

// Query 52
MATCH (c:Company {name: 'Swadeshi Industrial Works'}), (s:Sector {name: 'Household and Personal Products'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 53
// Step 10: Products;

// Query 54
MERGE (p:Product {name: 'toilet soap'}) ON CREATE SET p.id = 'toilet_soap';

// Query 55
MERGE (p:Product {name: 'laundry soap'}) ON CREATE SET p.id = 'laundry_soap';

// Query 56
MERGE (p:Product {name: 'personal care products'}) ON CREATE SET p.id = 'personal_care_products';

// Query 57
MERGE (p:Product {name: 'detergents'}) ON CREATE SET p.id = 'detergents';

// Query 58
// Step 11: OFFERS Relationships;

// Query 59
MATCH (c:Company {name: 'Swadeshi Industrial Works'}), (p:Product {name: 'toilet soap'}) MERGE (c)-[:OFFERS]->(p);

// Query 60
MATCH (c:Company {name: 'Swadeshi Industrial Works'}), (p:Product {name: 'laundry soap'}) MERGE (c)-[:OFFERS]->(p);

// Query 61
MATCH (c:Company {name: 'Swadeshi Industrial Works'}), (p:Product {name: 'personal care products'}) MERGE (c)-[:OFFERS]->(p);

// Query 62
MATCH (c:Company {name: 'Swadeshi Industrial Works'}), (p:Product {name: 'detergents'}) MERGE (c)-[:OFFERS]->(p);

// Query 63
// Step 12: Company-Company Relationships (OWNS);

// Query 64
MERGE (child1:Company {name: 'Swadeshi Chemicals'}) ON CREATE SET child1.id = 'swadeshi_chemicals', child1.region = 'Sri Lanka';

// Query 65
MERGE (child2:Company {name: 'Ceylon Plastics'}) ON CREATE SET child2.id = 'ceylon_plastics', child2.region = 'Sri Lanka';

// Query 66
MERGE (child3:Company {name: 'Swadeshi Marketing'}) ON CREATE SET child3.id = 'swadeshi_marketing', child3.region = 'Sri Lanka';

// Query 67
MATCH (parent:Company {name: 'Swadeshi Industrial Works'}), (child:Company {name: 'Swadeshi Chemicals'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 99.99, r.as_of = date('2024-03-31');

// Query 68
MATCH (parent:Company {name: 'Swadeshi Industrial Works'}), (child:Company {name: 'Ceylon Plastics'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 88.11, r.as_of = date('2024-03-31');

// Query 69
MATCH (parent:Company {name: 'Swadeshi Industrial Works'}), (child:Company {name: 'Swadeshi Marketing'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.00, r.as_of = date('2024-03-31');

// Total queries: 69
// Generated on: 2025-10-03T01:59:37.187998
