// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'People\'s Insurance'}) ON CREATE SET c.id = 'peoples_insurance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - Skipped as 'Auditor General' is not in the hardcoded list of auditing firms.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Jeevani Kariyawasam'}) ON CREATE SET p.id = 'jeevani_kariyawasam';

// Query 6
MERGE (p:Person {name: 'Channa Abeywickrema'}) ON CREATE SET p.id = 'channa_abeywickrema';

// Query 7
MERGE (p:Person {name: 'Amila Rajapaksha'}) ON CREATE SET p.id = 'amila_rajapaksha';

// Query 8
MERGE (p:Person {name: 'Prabath Gunasena'}) ON CREATE SET p.id = 'prabath_gunasena';

// Query 9
MERGE (p:Person {name: 'Navindu Wijesekera'}) ON CREATE SET p.id = 'navindu_wijesekera';

// Query 10
MERGE (p:Person {name: 'Johnson Fernando'}) ON CREATE SET p.id = 'johnson_fernando';

// Query 11
MERGE (p:Person {name: 'Sanjeewa Bandaranayake'}) ON CREATE SET p.id = 'sanjeewa_bandaranayake';

// Query 12
// Step 4: HOLDS_POSITION Relationships;

// Query 13
MATCH (p:Person {name: 'Jeevani Kariyawasam'}), (c:Company {name: 'People\'s Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-12-31');

// Query 14
MATCH (p:Person {name: 'Channa Abeywickrema'}), (c:Company {name: 'People\'s Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 15
MATCH (p:Person {name: 'Amila Rajapaksha'}), (c:Company {name: 'People\'s Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-12-31');

// Query 16
MATCH (p:Person {name: 'Prabath Gunasena'}), (c:Company {name: 'People\'s Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 17
MATCH (p:Person {name: 'Navindu Wijesekera'}), (c:Company {name: 'People\'s Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 18
MATCH (p:Person {name: 'Johnson Fernando'}), (c:Company {name: 'People\'s Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 19
MATCH (p:Person {name: 'Sanjeewa Bandaranayake'}), (c:Company {name: 'People\'s Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 20
// Step 5: Metrics;

// Query 21
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 27
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 28
// Step 6: HAS_METRIC Relationships;

// Query 29
MATCH (c:Company {name: 'People\'s Insurance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5928000000.0, r.year = 2024;

// Query 30
MATCH (c:Company {name: 'People\'s Insurance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5630000000.0, r.year = 2023;

// Query 31
MATCH (c:Company {name: 'People\'s Insurance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 702000000.0, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'People\'s Insurance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 784000000.0, r.year = 2023;

// Query 33
MATCH (c:Company {name: 'People\'s Insurance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 429000000.0, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'People\'s Insurance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 522000000.0, r.year = 2023;

// Query 35
MATCH (c:Company {name: 'People\'s Insurance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12689000000.0, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'People\'s Insurance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12144000000.0, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'People\'s Insurance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5638000000.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'People\'s Insurance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5249000000.0, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'People\'s Insurance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'People\'s Insurance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.0, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'People\'s Insurance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.13, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'People\'s Insurance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.58, r.year = 2023;

// Query 43
// Step 7: Sectors;

// Query 44
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 45
// Step 8: IN_SECTOR Relationships;

// Query 46
MATCH (c:Company {name: 'People\'s Insurance'}), (s:Sector {name: 'Insurance'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 47
// Step 9: Products;

// Query 48
MERGE (p:Product {name: 'General Insurance'}) ON CREATE SET p.id = 'general_insurance';

// Query 49
MERGE (p:Product {name: 'Non-Life Takaful Products'}) ON CREATE SET p.id = 'non_life_takaful_products';

// Query 50
MERGE (p:Product {name: 'Motor Insurance'}) ON CREATE SET p.id = 'motor_insurance';

// Query 51
MERGE (p:Product {name: 'Marine Insurance'}) ON CREATE SET p.id = 'marine_insurance';

// Query 52
MERGE (p:Product {name: 'Fire Insurance'}) ON CREATE SET p.id = 'fire_insurance';

// Query 53
MERGE (p:Product {name: 'Personal Accident Insurance'}) ON CREATE SET p.id = 'personal_accident_insurance';

// Query 54
// Step 10: OFFERS Relationships;

// Query 55
MATCH (c:Company {name: 'People\'s Insurance'}), (p:Product {name: 'General Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 56
MATCH (c:Company {name: 'People\'s Insurance'}), (p:Product {name: 'Non-Life Takaful Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 57
MATCH (c:Company {name: 'People\'s Insurance'}), (p:Product {name: 'Motor Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 58
MATCH (c:Company {name: 'People\'s Insurance'}), (p:Product {name: 'Marine Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 59
MATCH (c:Company {name: 'People\'s Insurance'}), (p:Product {name: 'Fire Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 60
MATCH (c:Company {name: 'People\'s Insurance'}), (p:Product {name: 'Personal Accident Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 61
// Step 11: Company-Company Relationships (OWNS);

// Query 62
MERGE (parent1:Company {name: 'People\'s Bank'}) ON CREATE SET parent1.id = 'peoples_bank', parent1.region = 'Sri Lanka';

// Query 63
MERGE (parent2:Company {name: 'People\'s Leasing & Finance'}) ON CREATE SET parent2.id = 'peoples_leasing_and_finance', parent2.region = 'Sri Lanka';

// Query 64
MATCH (parent1:Company {name: 'People\'s Bank'}), (child1:Company {name: 'People\'s Leasing & Finance'}) MERGE (parent1)-[r:OWNS]->(child1) ON CREATE SET r.pct = 75.0, r.as_of = date('2024-12-31');

// Query 65
MATCH (parent2:Company {name: 'People\'s Leasing & Finance'}), (child2:Company {name: 'People\'s Insurance'}) MERGE (parent2)-[r:OWNS]->(child2) ON CREATE SET r.pct = 75.0, r.as_of = date('2024-12-31');

// Total queries: 65
// Generated on: 2025-10-03T01:19:43.857373
