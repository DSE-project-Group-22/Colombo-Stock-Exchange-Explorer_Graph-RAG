// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Eden Hotel Lanka'}) ON CREATE SET c.id = 'eden_hotel_lanka', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'PricewaterhouseCoopers'}) ON CREATE SET a.id = 'pricewaterhousecoopers', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Eden Hotel Lanka'}), (a:Auditor {name: 'PricewaterhouseCoopers'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2019;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'W. D. K. Jayawardene'}) ON CREATE SET p.id = 'w_d_k_jayawardene';

// Query 9
MERGE (p:Person {name: 'Dr. J. M. Swaminathan'}) ON CREATE SET p.id = 'dr_j_m_swaminathan';

// Query 10
MERGE (p:Person {name: 'D. S. K. Amarasekera'}) ON CREATE SET p.id = 'd_s_k_amarasekera';

// Query 11
MERGE (p:Person {name: 'Mrs. K. U. Amarasinghe'}) ON CREATE SET p.id = 'mrs_k_u_amarasinghe';

// Query 12
MERGE (p:Person {name: 'Professor M. T. A. Furkhan'}) ON CREATE SET p.id = 'professor_m_t_a_furkhan';

// Query 13
MERGE (p:Person {name: 'S. Furkhan'}) ON CREATE SET p.id = 's_furkhan';

// Query 14
// Step 5: HOLDS_POSITION Relationships;

// Query 15
MATCH (p:Person {name: 'W. D. K. Jayawardene'}), (c:Company {name: 'Eden Hotel Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2019-03-31');

// Query 16
MATCH (p:Person {name: 'Dr. J. M. Swaminathan'}), (c:Company {name: 'Eden Hotel Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2019-03-31');

// Query 17
MATCH (p:Person {name: 'D. S. K. Amarasekera'}), (c:Company {name: 'Eden Hotel Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2019-03-31');

// Query 18
MATCH (p:Person {name: 'Mrs. K. U. Amarasinghe'}), (c:Company {name: 'Eden Hotel Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2019-03-31');

// Query 19
MATCH (p:Person {name: 'Professor M. T. A. Furkhan'}), (c:Company {name: 'Eden Hotel Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2019-03-31');

// Query 20
MATCH (p:Person {name: 'S. Furkhan'}), (c:Company {name: 'Eden Hotel Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2019-03-31');

// Query 21
// Step 6: Metric Nodes;

// Query 22
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 29
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 30
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 31
// Step 7: HAS_METRIC Relationships;

// Query 32
MATCH (c:Company {name: 'Eden Hotel Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 831654306.0, r.year = 2019;

// Query 33
MATCH (c:Company {name: 'Eden Hotel Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -861114755.0, r.year = 2019;

// Query 34
MATCH (c:Company {name: 'Eden Hotel Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -869458747.0, r.year = 2019;

// Query 35
MATCH (c:Company {name: 'Eden Hotel Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9699197605.0, r.year = 2019;

// Query 36
MATCH (c:Company {name: 'Eden Hotel Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2107311310.0, r.year = 2019;

// Query 37
MATCH (c:Company {name: 'Eden Hotel Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -8.23, r.year = 2019;

// Query 38
MATCH (c:Company {name: 'Eden Hotel Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -34.28, r.year = 2019;

// Query 39
MATCH (c:Company {name: 'Eden Hotel Lanka'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.17, r.year = 2019;

// Query 40
MATCH (c:Company {name: 'Eden Hotel Lanka'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 235977081.0, r.year = 2019;

// Query 41
// Step 8: Sector Node;

// Query 42
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 43
// Step 9: IN_SECTOR Relationship;

// Query 44
MATCH (c:Company {name: 'Eden Hotel Lanka'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 45
// Step 10: Product Node;

// Query 46
MERGE (p:Product {name: 'Hotel Services'}) ON CREATE SET p.id = 'hotel_services';

// Query 47
// Step 11: OFFERS Relationship;

// Query 48
MATCH (c:Company {name: 'Eden Hotel Lanka'}), (p:Product {name: 'Hotel Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 49
// Step 12: Subsidiary Company Nodes (without OWNS relationship due to missing explicit percentage);

// Query 50
MERGE (sub:Company {name: 'Dickwella Resorts'}) ON CREATE SET sub.id = 'dickwella_resorts', sub.region = 'Sri Lanka';

// Query 51
MERGE (sub:Company {name: 'Sun and Fun Resorts'}) ON CREATE SET sub.id = 'sun_and_fun_resorts', sub.region = 'Sri Lanka';

// Query 52
MERGE (sub:Company {name: 'Green Paradise'}) ON CREATE SET sub.id = 'green_paradise', sub.region = 'Sri Lanka';

// Query 53
MERGE (sub:Company {name: 'Bodufaru Beach Resorts'}) ON CREATE SET sub.id = 'bodufaru_beach_resorts', sub.region = 'Maldives';

// Query 54
MERGE (sub:Company {name: 'Browns Ari Resort'}) ON CREATE SET sub.id = 'browns_ari_resort', sub.region = 'Maldives';

// Query 55
MERGE (sub:Company {name: 'Browns Raa Resort'}) ON CREATE SET sub.id = 'browns_raa_resort', sub.region = 'Maldives';

// Query 56
MERGE (sub:Company {name: 'Browns Kaafu N Resort'}) ON CREATE SET sub.id = 'browns_kaafu_n_resort', sub.region = 'Maldives';

// Query 57
// Step 13: IN_SECTOR Relationships for Subsidiaries;

// Query 58
MATCH (sub:Company {name: 'Dickwella Resorts'}), (s:Sector {name: 'Consumer Services'}) MERGE (sub)-[:IN_SECTOR]->(s);

// Query 59
MATCH (sub:Company {name: 'Sun and Fun Resorts'}), (s:Sector {name: 'Consumer Services'}) MERGE (sub)-[:IN_SECTOR]->(s);

// Query 60
MATCH (sub:Company {name: 'Green Paradise'}), (s:Sector {name: 'Consumer Services'}) MERGE (sub)-[:IN_SECTOR]->(s);

// Query 61
MATCH (sub:Company {name: 'Bodufaru Beach Resorts'}), (s:Sector {name: 'Consumer Services'}) MERGE (sub)-[:IN_SECTOR]->(s);

// Query 62
MATCH (sub:Company {name: 'Browns Ari Resort'}), (s:Sector {name: 'Consumer Services'}) MERGE (sub)-[:IN_SECTOR]->(s);

// Query 63
MATCH (sub:Company {name: 'Browns Raa Resort'}), (s:Sector {name: 'Consumer Services'}) MERGE (sub)-[:IN_SECTOR]->(s);

// Query 64
MATCH (sub:Company {name: 'Browns Kaafu N Resort'}), (s:Sector {name: 'Consumer Services'}) MERGE (sub)-[:IN_SECTOR]->(s);

// Total queries: 64
// Generated on: 2025-10-03T03:41:44.934724
