// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Lotus Hydro Power'}) ON CREATE SET c.id = 'lotus_hydro_power', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Lotus Hydro Power'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: Person Nodes Creation;

// Query 8
MERGE (p:Person {name: 'G. D. Seaton'}) ON CREATE SET p.id = 'g_d_seaton';

// Query 9
MERGE (p:Person {name: 'A. U. A. M. Athukorala'}) ON CREATE SET p.id = 'a_u_a_m_athukorala';

// Query 10
MERGE (p:Person {name: 'K. Gowri Shankar'}) ON CREATE SET p.id = 'k_gowri_shankar';

// Query 11
MERGE (p:Person {name: 'T. Senthilverl'}) ON CREATE SET p.id = 't_senthilverl';

// Query 12
MERGE (p:Person {name: 'U. H. Palihakkara'}) ON CREATE SET p.id = 'u_h_palihakkara';

// Query 13
MERGE (p:Person {name: 'W. M. A. Indrajith Fernando'}) ON CREATE SET p.id = 'w_m_a_indrajith_fernando';

// Query 14
MERGE (p:Person {name: 'Disna Lokugalappaththi'}) ON CREATE SET p.id = 'disna_lokugalappaththi';

// Query 15
MERGE (p:Person {name: 'Shamindra Saparamadu'}) ON CREATE SET p.id = 'shamindra_saparamadu';

// Query 16
// Step 5: HOLDS_POSITION Relationships;

// Query 17
MATCH (p:Person {name: 'G. D. Seaton'}), (c:Company {name: 'Lotus Hydro Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'G. D. Seaton'}), (c:Company {name: 'Lotus Hydro Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'A. U. A. M. Athukorala'}), (c:Company {name: 'Lotus Hydro Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'K. Gowri Shankar'}), (c:Company {name: 'Lotus Hydro Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'T. Senthilverl'}), (c:Company {name: 'Lotus Hydro Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'U. H. Palihakkara'}), (c:Company {name: 'Lotus Hydro Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'W. M. A. Indrajith Fernando'}), (c:Company {name: 'Lotus Hydro Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Disna Lokugalappaththi'}), (c:Company {name: 'Lotus Hydro Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Shamindra Saparamadu'}), (c:Company {name: 'Lotus Hydro Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Operating Officer', r.as_of = date('2024-03-31');

// Query 26
// Step 6: Metric Nodes Creation;

// Query 27
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 34
// Step 7: HAS_METRIC Relationships;

// Query 35
MATCH (c:Company {name: 'Lotus Hydro Power'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 127550502.0, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Lotus Hydro Power'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 119865394.0, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'Lotus Hydro Power'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45158936.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Lotus Hydro Power'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 70011758.0, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Lotus Hydro Power'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 35122314.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Lotus Hydro Power'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50365420.0, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Lotus Hydro Power'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 686424411.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Lotus Hydro Power'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 803968533.0, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Lotus Hydro Power'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 796190937.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Lotus Hydro Power'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 918057580.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Lotus Hydro Power'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.04, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Lotus Hydro Power'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.28, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Lotus Hydro Power'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.06, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Lotus Hydro Power'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.97, r.year = 2023;

// Query 49
// Step 8: Sector Nodes Creation;

// Query 50
MERGE (s:Sector {name: 'Utilities'}) ON CREATE SET s.id = 'utilities';

// Query 51
// Step 9: IN_SECTOR Relationships;

// Query 52
MATCH (c:Company {name: 'Lotus Hydro Power'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 53
// Step 10: Product Nodes Creation;

// Query 54
MERGE (p:Product {name: 'Electricity Generation'}) ON CREATE SET p.id = 'electricity_generation';

// Query 55
// Step 11: OFFERS Relationships;

// Query 56
MATCH (c:Company {name: 'Lotus Hydro Power'}), (p:Product {name: 'Electricity Generation'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 56
// Generated on: 2025-10-03T01:13:15.224320
