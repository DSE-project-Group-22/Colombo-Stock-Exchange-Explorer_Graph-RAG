// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Lankem Ceylon'}) ON CREATE SET c.id = 'lankem_ceylon', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('1964-09-15');

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Lankem Ceylon'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 8
MERGE (p:Person {name: 'A. Hettiarachchy'}) ON CREATE SET p.id = 'a_hettiarachchy';

// Query 9
MERGE (p:Person {name: 'P. S. Goonewardene'}) ON CREATE SET p.id = 'p_s_goonewardene';

// Query 10
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 11
MERGE (p:Person {name: 'A. C. S. Jayaranjan'}) ON CREATE SET p.id = 'a_c_s_jayaranjan';

// Query 12
MERGE (p:Person {name: 'P. M. A. Sirimane'}) ON CREATE SET p.id = 'p_m_a_sirimane';

// Query 13
MERGE (p:Person {name: 'G. K. B. Dasanayaka'}) ON CREATE SET p.id = 'g_k_b_dasanayaka';

// Query 14
MERGE (p:Person {name: 'A. M. Mubarak'}) ON CREATE SET p.id = 'a_m_mubarak';

// Query 15
// Step 4: HOLDS_POSITION Relationships;

// Query 16
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'Lankem Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'A. Hettiarachchy'}), (c:Company {name: 'Lankem Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'P. S. Goonewardene'}), (c:Company {name: 'Lankem Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'Anushman Rajaratnam'}), (c:Company {name: 'Lankem Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'A. C. S. Jayaranjan'}), (c:Company {name: 'Lankem Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'P. M. A. Sirimane'}), (c:Company {name: 'Lankem Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'G. K. B. Dasanayaka'}), (c:Company {name: 'Lankem Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'A. M. Mubarak'}), (c:Company {name: 'Lankem Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

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
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 33
// Step 6: HAS_METRIC Relationships;

// Query 34
MATCH (c:Company {name: 'Lankem Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6337000000.0, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Lankem Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6871000000.0, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Lankem Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 916000000.0, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Lankem Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1832000000.0, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Lankem Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 310000000.0, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Lankem Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1070000000.0, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Lankem Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 333000000.0, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Lankem Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1097000000.0, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Lankem Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9873000000.0, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Lankem Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8985000000.0, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Lankem Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2292000000.0, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Lankem Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2340000000.0, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Lankem Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.94, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Lankem Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -23.81, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Lankem Ceylon'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.79, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Lankem Ceylon'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.80, r.year = 2023;

// Query 50
// Step 7: Sectors;

// Query 51
MERGE (s:Sector {name: 'Household and Personal Products'}) ON CREATE SET s.id = 'household_and_personal_products';

// Query 52
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 53
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 54
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 55
// Step 8: IN_SECTOR Relationships;

// Query 56
MATCH (c:Company {name: 'Lankem Ceylon'}), (s:Sector {name: 'Household and Personal Products'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 57
MATCH (c:Company {name: 'Lankem Ceylon'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 58
MATCH (c:Company {name: 'Lankem Ceylon'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 59
MATCH (c:Company {name: 'Lankem Ceylon'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 60
// Step 9: Products;

// Query 61
MERGE (p:Product {name: 'Agri-Inputs'}) ON CREATE SET p.id = 'agri_inputs';

// Query 62
MERGE (p:Product {name: 'Paints'}) ON CREATE SET p.id = 'paints';

// Query 63
MERGE (p:Product {name: 'Chemicals'}) ON CREATE SET p.id = 'chemicals';

// Query 64
MERGE (p:Product {name: 'Consumer Products'}) ON CREATE SET p.id = 'consumer_products';

// Query 65
MERGE (p:Product {name: 'Pest Control Services'}) ON CREATE SET p.id = 'pest_control_services';

// Query 66
MERGE (p:Product {name: 'Leisure Services'}) ON CREATE SET p.id = 'leisure_services';

// Query 67
MERGE (p:Product {name: 'Packaging'}) ON CREATE SET p.id = 'packaging';

// Query 68
MERGE (p:Product {name: 'Robbialac Paints'}) ON CREATE SET p.id = 'robbialac_paints';

// Query 69
// Step 10: OFFERS Relationships;

// Query 70
MATCH (c:Company {name: 'Lankem Ceylon'}), (p:Product {name: 'Agri-Inputs'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Lankem Ceylon'}), (p:Product {name: 'Paints'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Lankem Ceylon'}), (p:Product {name: 'Chemicals'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'Lankem Ceylon'}), (p:Product {name: 'Consumer Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'Lankem Ceylon'}), (p:Product {name: 'Pest Control Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'Lankem Ceylon'}), (p:Product {name: 'Leisure Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
MATCH (c:Company {name: 'Lankem Ceylon'}), (p:Product {name: 'Packaging'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
MATCH (c:Company {name: 'Lankem Ceylon'}), (p:Product {name: 'Robbialac Paints'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 77
// Generated on: 2025-10-03T01:46:09.657061
