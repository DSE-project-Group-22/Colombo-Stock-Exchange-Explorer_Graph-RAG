// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}) ON CREATE SET c.id = 'bansei_royal_resorts_hikkaduwa', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/2024';

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'T de Zoysa'}) ON CREATE SET p.id = 't_de_zoysa';

// Query 8
MERGE (p:Person {name: 'T Murakami'}) ON CREATE SET p.id = 't_murakami';

// Query 9
MERGE (p:Person {name: 'H Ota'}) ON CREATE SET p.id = 'h_ota';

// Query 10
MERGE (p:Person {name: 'J V W Malawana'}) ON CREATE SET p.id = 'j_v_w_malawana';

// Query 11
MERGE (p:Person {name: 'G C A de Silva'}) ON CREATE SET p.id = 'g_c_a_de_silva';

// Query 12
MERGE (p:Person {name: 'C S J Perera'}) ON CREATE SET p.id = 'c_s_j_perera';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'T de Zoysa'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'T Murakami'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'H Ota'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'H Ota'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'J V W Malawana'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'G C A de Silva'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'C S J Perera'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
// Step 5: Metrics;

// Query 22
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 30
// Step 6: HAS_METRIC Relationships;

// Query 31
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 115915482.0, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 98572861.0, r.year = 2023;

// Query 33
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 32310694.0, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 26089816.0, r.year = 2023;

// Query 35
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 22082541.0, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16472022.0, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 294482806.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 283745630.0, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 334473867.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 311314964.0, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.41, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.31, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 15358380.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 15927061.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9.14, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.36, r.year = 2023;

// Query 47
// Step 7: Sectors;

// Query 48
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 49
// Step 8: IN_SECTOR Relationships;

// Query 50
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 51
// Step 9: Products;

// Query 52
MERGE (p:Product {name: 'Hospitality Services'}) ON CREATE SET p.id = 'hospitality_services';

// Query 53
// Step 10: OFFERS Relationships;

// Query 54
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa'}), (p:Product {name: 'Hospitality Services'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 54
// Generated on: 2025-10-02T22:25:20.079302
