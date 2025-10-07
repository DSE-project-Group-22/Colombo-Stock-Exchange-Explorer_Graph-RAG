// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'LOLC General Insurance'}) ON CREATE SET c.id = 'lolc_general_insurance', c.founded_on = date('2011-09-20'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
MERGE (c:Company {name: 'LOLC Asset Holdings'}) ON CREATE SET c.id = 'lolc_asset_holdings';

// Query 4
MERGE (c:Company {name: 'LOLC Holdings'}) ON CREATE SET c.id = 'lolc_holdings';

// Query 5
MERGE (c:Company {name: 'Serendib Microinsurance'}) ON CREATE SET c.id = 'serendib_microinsurance', c.region = 'Cambodia';

// Query 6
// Step 2: Auditor;

// Query 7
MERGE (a:Auditor:Company {name: 'Deloitte'}) ON CREATE SET a.id = 'deloitte', a.type = 'Auditing Firm';

// Query 8
// Step 3: AUDITED_BY Relationship;

// Query 9
MATCH (c:Company {name: 'LOLC General Insurance'}), (a:Auditor {name: 'Deloitte'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 10
// Step 4: People - Directors and Executives;

// Query 11
MERGE (p:Person {name: 'K. A. K. P. Gunawardena'}) ON CREATE SET p.id = 'k_a_k_p_gunawardena';

// Query 12
MERGE (p:Person {name: 'K. U. Amarasinghe'}) ON CREATE SET p.id = 'k_u_amarasinghe';

// Query 13
MERGE (p:Person {name: 'V. G. S. S. Kotakadeniya'}) ON CREATE SET p.id = 'v_g_s_s_kotakadeniya';

// Query 14
MERGE (p:Person {name: 'W. R. A. Dharmaratne'}) ON CREATE SET p.id = 'w_r_a_dharmaratne';

// Query 15
MERGE (p:Person {name: 'I. Wijesiriwardana'}) ON CREATE SET p.id = 'i_wijesiriwardana';

// Query 16
MERGE (p:Person {name: 'H. A. Karunaratne'}) ON CREATE SET p.id = 'h_a_karunaratne';

// Query 17
MERGE (p:Person {name: 'Nimal Perera'}) ON CREATE SET p.id = 'nimal_perera';

// Query 18
// Step 5: HOLDS_POSITION Relationships;

// Query 19
MATCH (p:Person {name: 'K. A. K. P. Gunawardena'}), (c:Company {name: 'LOLC General Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 20
MATCH (p:Person {name: 'K. U. Amarasinghe'}), (c:Company {name: 'LOLC General Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-09-05');

// Query 21
MATCH (p:Person {name: 'V. G. S. S. Kotakadeniya'}), (c:Company {name: 'LOLC General Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 22
MATCH (p:Person {name: 'W. R. A. Dharmaratne'}), (c:Company {name: 'LOLC General Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 23
MATCH (p:Person {name: 'I. Wijesiriwardana'}), (c:Company {name: 'LOLC General Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 24
MATCH (p:Person {name: 'H. A. Karunaratne'}), (c:Company {name: 'LOLC General Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 25
MATCH (p:Person {name: 'Nimal Perera'}), (c:Company {name: 'LOLC General Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2025-05-30');

// Query 26
// Step 6: Metrics;

// Query 27
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 32
// Step 7: HAS_METRIC Relationships;

// Query 33
MATCH (c:Company {name: 'LOLC General Insurance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11108000000, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'LOLC General Insurance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 477521349, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'LOLC General Insurance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 350294994, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'LOLC General Insurance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 22205708092, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'LOLC General Insurance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.29, r.year = 2024;

// Query 38
// Step 8: Sectors;

// Query 39
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 40
// Step 9: IN_SECTOR Relationships;

// Query 41
MATCH (c:Company {name: 'LOLC General Insurance'}), (s:Sector {name: 'Insurance'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 42
// Step 10: Products;

// Query 43
MERGE (p:Product {name: 'Motor Insurance'}) ON CREATE SET p.id = 'motor_insurance';

// Query 44
MERGE (p:Product {name: 'Non-Motor Insurance'}) ON CREATE SET p.id = 'non_motor_insurance';

// Query 45
// Step 11: OFFERS Relationships;

// Query 46
MATCH (c:Company {name: 'LOLC General Insurance'}), (p:Product {name: 'Motor Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 47
MATCH (c:Company {name: 'LOLC General Insurance'}), (p:Product {name: 'Non-Motor Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 48
// Step 12: Company-Company Relationships (OWNS);

// Query 49
MATCH (p:Company {name: 'LOLC General Insurance'}), (c:Company {name: 'Serendib Microinsurance'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 15.0, r.as_of = date('2024-12-31');

// Query 50
MATCH (p:Company {name: 'LOLC General Insurance'}), (c:Company {name: 'Serendib Microinsurance'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 45.0, r.as_of = date('2023-12-31');

// Total queries: 50
// Generated on: 2025-10-02T23:11:25.751547
