// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Beruwala Resorts'}) ON CREATE SET c.id = 'beruwala_resorts', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No auditor firm name found in hardcoded list, skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 6
MERGE (p:Person {name: 'C. P. R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 7
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 8
MERGE (p:Person {name: 'Amrit Rajaratnam'}) ON CREATE SET p.id = 'amrit_rajaratnam';

// Query 9
MERGE (p:Person {name: 'A. R. Rasiah'}) ON CREATE SET p.id = 'a_r_rasiah';

// Query 10
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 11
// Step 4: HOLDS_POSITION Relationships;

// Query 12
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'Beruwala Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 13
MATCH (p:Person {name: 'C. P. R. Perera'}), (c:Company {name: 'Beruwala Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 14
MATCH (p:Person {name: 'S. Rajaratnam'}), (c:Company {name: 'Beruwala Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'Amrit Rajaratnam'}), (c:Company {name: 'Beruwala Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'A. R. Rasiah'}), (c:Company {name: 'Beruwala Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Anushman Rajaratnam'}), (c:Company {name: 'Beruwala Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 18
// Step 5: Metrics;

// Query 19
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 25
// Step 6: HAS_METRIC Relationships;

// Query 26
MATCH (c:Company {name: 'Beruwala Resorts'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 722507000, r.year = 2024;

// Query 27
MATCH (c:Company {name: 'Beruwala Resorts'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 368580000, r.year = 2023;

// Query 28
MATCH (c:Company {name: 'Beruwala Resorts'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 156478000, r.year = 2024;

// Query 29
MATCH (c:Company {name: 'Beruwala Resorts'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -206545000, r.year = 2023;

// Query 30
MATCH (c:Company {name: 'Beruwala Resorts'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 238188000, r.year = 2024;

// Query 31
MATCH (c:Company {name: 'Beruwala Resorts'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -131183000, r.year = 2023;

// Query 32
MATCH (c:Company {name: 'Beruwala Resorts'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1004383919, r.year = 2024;

// Query 33
MATCH (c:Company {name: 'Beruwala Resorts'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 954508095, r.year = 2023;

// Query 34
MATCH (c:Company {name: 'Beruwala Resorts'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.41, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Beruwala Resorts'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.47, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Beruwala Resorts'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.62, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Beruwala Resorts'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.26, r.year = 2023;

// Query 38
// Step 7: Sectors;

// Query 39
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 40
// Step 8: IN_SECTOR Relationships;

// Query 41
MATCH (c:Company {name: 'Beruwala Resorts'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 42
// Step 9: Product nodes creation;

// Query 43
MERGE (p:Product {name: 'Rooms'}) ON CREATE SET p.id = 'rooms';

// Query 44
MERGE (p:Product {name: 'Food'}) ON CREATE SET p.id = 'food';

// Query 45
MERGE (p:Product {name: 'Beverage'}) ON CREATE SET p.id = 'beverage';

// Query 46
// Step 10: OFFERS Relationships;

// Query 47
MATCH (c:Company {name: 'Beruwala Resorts'}), (p:Product {name: 'Rooms'}) MERGE (c)-[:OFFERS]->(p);

// Query 48
MATCH (c:Company {name: 'Beruwala Resorts'}), (p:Product {name: 'Food'}) MERGE (c)-[:OFFERS]->(p);

// Query 49
MATCH (c:Company {name: 'Beruwala Resorts'}), (p:Product {name: 'Beverage'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 49
// Generated on: 2025-10-03T00:34:09.707146
