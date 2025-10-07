// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Royal Palms Beach Hotels'}) ON CREATE SET c.id = 'royal_palms_beach_hotels', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'A M Ondaatjie'}) ON CREATE SET p.id = 'a_m_ondaatjie';

// Query 8
MERGE (p:Person {name: 'G G Ondaatjie'}) ON CREATE SET p.id = 'g_g_ondaatjie';

// Query 9
MERGE (p:Person {name: 'T J Ondaatjie'}) ON CREATE SET p.id = 't_j_ondaatjie';

// Query 10
MERGE (p:Person {name: 'N H V Perera'}) ON CREATE SET p.id = 'n_h_v_perera';

// Query 11
MERGE (p:Person {name: 'M Keerthiratne'}) ON CREATE SET p.id = 'm_keerthiratne';

// Query 12
MERGE (p:Person {name: 'M U Maniku'}) ON CREATE SET p.id = 'm_u_maniku';

// Query 13
MERGE (p:Person {name: 'Ajita De Zoysa'}) ON CREATE SET p.id = 'ajita_de_zoysa';

// Query 14
MERGE (p:Person {name: 'P S R Casie Chitty'}) ON CREATE SET p.id = 'p_s_r_casie_chitty';

// Query 15
MERGE (p:Person {name: 'J D Vaz'}) ON CREATE SET p.id = 'j_d_vaz';

// Query 16
MERGE (p:Person {name: 'Ravi Kurukulasooriya'}) ON CREATE SET p.id = 'ravi_kurukulasooriya';

// Query 17
// Step 4: HOLDS_POSITION Relationships;

// Query 18
MATCH (p:Person {name: 'A M Ondaatjie'}), (c:Company {name: 'Royal Palms Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'G G Ondaatjie'}), (c:Company {name: 'Royal Palms Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'T J Ondaatjie'}), (c:Company {name: 'Royal Palms Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'N H V Perera'}), (c:Company {name: 'Royal Palms Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'M Keerthiratne'}), (c:Company {name: 'Royal Palms Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'M U Maniku'}), (c:Company {name: 'Royal Palms Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Ajita De Zoysa'}), (c:Company {name: 'Royal Palms Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'P S R Casie Chitty'}), (c:Company {name: 'Royal Palms Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'J D Vaz'}), (c:Company {name: 'Royal Palms Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'Ravi Kurukulasooriya'}), (c:Company {name: 'Royal Palms Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-03-31');

// Query 28
// Step 5: OWNS_SHARES Relationships;

// Query 29
MATCH (p:Person {name: 'A M Ondaatjie'}), (c:Company {name: 'Royal Palms Beach Hotels'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1126733, r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'G G Ondaatjie'}), (c:Company {name: 'Royal Palms Beach Hotels'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1081734, r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'T J Ondaatjie'}), (c:Company {name: 'Royal Palms Beach Hotels'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1414233, r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'M Keerthiratne'}), (c:Company {name: 'Royal Palms Beach Hotels'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 220000, r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'M U Maniku'}), (c:Company {name: 'Royal Palms Beach Hotels'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 2552823, r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'Ajita De Zoysa'}), (c:Company {name: 'Royal Palms Beach Hotels'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 625, r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'N H V Perera'}), (c:Company {name: 'Royal Palms Beach Hotels'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 295798, r.as_of = date('2024-03-31');

// Query 36
MATCH (p:Person {name: 'J D Vaz'}), (c:Company {name: 'Royal Palms Beach Hotels'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 33, r.as_of = date('2024-03-31');

// Query 37
// Step 6: Metric Nodes;

// Query 38
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 46
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 47
// Step 7: HAS_METRIC Relationships - 2024;

// Query 48
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1092317000.0, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 136767000.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 164723000.0, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 169081000.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2516946000.0, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3439988000.0, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.38, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6.72, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.77, r.year = 2024;

// Query 57
// Step 8: HAS_METRIC Relationships - 2023;

// Query 58
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 670853000.0, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -72458000.0, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5598000.0, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -107024000.0, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2343160000.0, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3246760000.0, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2.14, r.year = 2023;

// Query 65
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -4.57, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.42, r.year = 2023;

// Query 67
// Step 9: Sectors;

// Query 68
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 69
// Step 10: IN_SECTOR Relationships;

// Query 70
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 71
// Step 11: Product Nodes;

// Query 72
MERGE (p:Product {name: 'Food Services'}) ON CREATE SET p.id = 'food_services';

// Query 73
MERGE (p:Product {name: 'Beverage Services'}) ON CREATE SET p.id = 'beverage_services';

// Query 74
MERGE (p:Product {name: 'Lodging Services'}) ON CREATE SET p.id = 'lodging_services';

// Query 75
MERGE (p:Product {name: 'Hospitality Services'}) ON CREATE SET p.id = 'hospitality_services';

// Query 76
// Step 12: OFFERS Relationships;

// Query 77
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (p:Product {name: 'Food Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (p:Product {name: 'Beverage Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (p:Product {name: 'Lodging Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (p:Product {name: 'Hospitality Services'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 80
// Generated on: 2025-10-03T02:39:48.692786
