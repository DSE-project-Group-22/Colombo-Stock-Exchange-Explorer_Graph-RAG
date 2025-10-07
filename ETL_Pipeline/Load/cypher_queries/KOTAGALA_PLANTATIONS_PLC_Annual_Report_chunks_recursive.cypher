// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Kotagala Plantations'}) ON CREATE SET c.id = 'kotagala_plantations', c.founded_on = date('1992-06-22'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationships;

// Query 6
MATCH (c:Company {name: 'Kotagala Plantations'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
MATCH (c:Company {name: 'Kotagala Plantations'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2023;

// Query 8
// Step 4: Person Nodes Creation;

// Query 9
MERGE (p:Person {name: 'S.D.R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 10
MERGE (p:Person {name: 'C.P.R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 11
MERGE (p:Person {name: 'S.S. Poholiyadde'}) ON CREATE SET p.id = 's_s_poholiyadde';

// Query 12
MERGE (p:Person {name: 'A.M. de S. Jayaratne'}) ON CREATE SET p.id = 'a_m_de_s_jayaratne';

// Query 13
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 14
MERGE (p:Person {name: 'P.M.A. Sirimane'}) ON CREATE SET p.id = 'p_m_a_sirimane';

// Query 15
MERGE (p:Person {name: 'G.K.B. Dasanayaka'}) ON CREATE SET p.id = 'g_k_b_dasanayaka';

// Query 16
MERGE (p:Person {name: 'K. Mohideen'}) ON CREATE SET p.id = 'k_mohideen';

// Query 17
MERGE (p:Person {name: 'C.J. De Costa'}) ON CREATE SET p.id = 'c_j_de_costa';

// Query 18
MERGE (p:Person {name: 'Y.U.S. Premathilake'}) ON CREATE SET p.id = 'y_u_s_premathilake';

// Query 19
// Step 5: HOLDS_POSITION Relationships;

// Query 20
MATCH (p:Person {name: 'S.D.R. Arudpragasam'}), (c:Company {name: 'Kotagala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'C.P.R. Perera'}), (c:Company {name: 'Kotagala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'C.P.R. Perera'}), (c:Company {name: 'Kotagala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'S.S. Poholiyadde'}), (c:Company {name: 'Kotagala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'S.S. Poholiyadde'}), (c:Company {name: 'Kotagala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'A.M. de S. Jayaratne'}), (c:Company {name: 'Kotagala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'Anushman Rajaratnam'}), (c:Company {name: 'Kotagala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'P.M.A. Sirimane'}), (c:Company {name: 'Kotagala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'G.K.B. Dasanayaka'}), (c:Company {name: 'Kotagala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'K. Mohideen'}), (c:Company {name: 'Kotagala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'K. Mohideen'}), (c:Company {name: 'Kotagala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'C.J. De Costa'}), (c:Company {name: 'Kotagala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'Y.U.S. Premathilake'}), (c:Company {name: 'Kotagala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 33
// Step 6: Metric Nodes Creation;

// Query 34
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 41
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 42
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Net Debt to Equity Ratio'}) ON CREATE SET m.id = 'net_debt_to_equity_ratio', m.unit = '%';

// Query 44
// Step 7: HAS_METRIC Relationships;

// Query 45
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4978624000, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5038854000, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3472020000, r.year = 2022;

// Query 48
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -134000000, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 237000000, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 188000000, r.year = 2022;

// Query 51
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 324402000, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 770503000, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 104159000, r.year = 2022;

// Query 54
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8500000000, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1594000000, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1816000000, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1635000000, r.year = 2022;

// Query 58
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.40, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.70, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.56, r.year = 2022;

// Query 61
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.17, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.13, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.12, r.year = 2022;

// Query 64
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.46, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.49, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.23, r.year = 2022;

// Query 67
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 692290000, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1150384000, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 417874000, r.year = 2022;

// Query 70
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Net Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 430, r.year = 2024;

// Query 71
MATCH (c:Company {name: 'Kotagala Plantations'}), (m:Metric {name: 'Net Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 349, r.year = 2023;

// Query 72
// Step 8: Sector Nodes Creation;

// Query 73
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 74
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 75
// Step 9: IN_SECTOR Relationships;

// Query 76
MATCH (c:Company {name: 'Kotagala Plantations'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 77
MATCH (c:Company {name: 'Kotagala Plantations'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 78
// Step 10: Product Nodes Creation;

// Query 79
MERGE (p:Product {name: 'Tea'}) ON CREATE SET p.id = 'tea';

// Query 80
MERGE (p:Product {name: 'Rubber'}) ON CREATE SET p.id = 'rubber';

// Query 81
MERGE (p:Product {name: 'Oil Palm'}) ON CREATE SET p.id = 'oil_palm';

// Query 82
MERGE (p:Product {name: 'Timber'}) ON CREATE SET p.id = 'timber';

// Query 83
MERGE (p:Product {name: 'Rosita Tea'}) ON CREATE SET p.id = 'rosita_tea';

// Query 84
// Step 11: OFFERS Relationships;

// Query 85
MATCH (c:Company {name: 'Kotagala Plantations'}), (p:Product {name: 'Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Kotagala Plantations'}), (p:Product {name: 'Rubber'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Kotagala Plantations'}), (p:Product {name: 'Oil Palm'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Kotagala Plantations'}), (p:Product {name: 'Timber'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Kotagala Plantations'}), (p:Product {name: 'Rosita Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
// Step 12: Company-Company Relationships (MANAGES);

// Query 91
MERGE (m:Company {name: 'Lankem Tea & Rubber Plantations'}) ON CREATE SET m.id = 'lankem_tea_and_rubber_plantations';

// Query 92
MATCH (manager:Company {name: 'Lankem Tea & Rubber Plantations'}), (managed:Company {name: 'Kotagala Plantations'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Managing Agent', r.as_of = date('2024-03-31');

// Total queries: 92
// Generated on: 2025-10-03T02:19:56.231724
