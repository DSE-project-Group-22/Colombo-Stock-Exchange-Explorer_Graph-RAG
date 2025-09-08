// Query 1
MERGE (c:Company {name: 'First Capital Treasuries PLC'}) ON CREATE SET c.id = 'first_capital_treasuries_plc';

// Query 2
MERGE (p:Person {name: 'E. T. De Zoysa'}) ON CREATE SET p.id = 'e_t_de_zoysa';

// Query 3
MATCH (p:Person {name: 'E. T. De Zoysa'}), (c:Company {name: 'First Capital Treasuries PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2021-03-31');

// Query 4
MERGE (p:Person {name: 'R. S. A. Wickramasingha'}) ON CREATE SET p.id = 'r_s_a_wickramasingha';

// Query 5
MATCH (p:Person {name: 'R. S. A. Wickramasingha'}), (c:Company {name: 'First Capital Treasuries PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2021-03-31');

// Query 6
MERGE (p:Person {name: 'D. S. Wickramasingha'}) ON CREATE SET p.id = 'd_s_wickramasingha';

// Query 7
MATCH (p:Person {name: 'D. S. Wickramasingha'}), (c:Company {name: 'First Capital Treasuries PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 8
MERGE (p:Person {name: 'N. K. Wickramasingha'}) ON CREATE SET p.id = 'n_k_wickramasingha';

// Query 9
MATCH (p:Person {name: 'N. K. Wickramasingha'}), (c:Company {name: 'First Capital Treasuries PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 10
MERGE (p:Person {name: 'L. J. M. De Silva'}) ON CREATE SET p.id = 'l_j_m_de_silva';

// Query 11
MATCH (p:Person {name: 'L. J. M. De Silva'}), (c:Company {name: 'First Capital Treasuries PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 12
MERGE (p:Person {name: 'M. U. S. G. Thilakawardana'}) ON CREATE SET p.id = 'm_u_s_g_thilakawardana';

// Query 13
MATCH (p:Person {name: 'M. U. S. G. Thilakawardana'}), (c:Company {name: 'First Capital Treasuries PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 14
MERGE (p:Person {name: 'D. M. A. Kulasooriya'}) ON CREATE SET p.id = 'd_m_a_kulasooriya';

// Query 15
MATCH (p:Person {name: 'D. M. A. Kulasooriya'}), (c:Company {name: 'First Capital Treasuries PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 16
MERGE (p:Person {name: 'M. S. Nanayakkara'}) ON CREATE SET p.id = 'm_s_nanayakkara';

// Query 17
MATCH (p:Person {name: 'M. S. Nanayakkara'}), (c:Company {name: 'First Capital Treasuries PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 18
MERGE (p:Person {name: 'Manjula Mathews'}) ON CREATE SET p.id = 'manjula_mathews';

// Query 19
MATCH (p:Person {name: 'Manjula Mathews'}), (c:Company {name: 'First Capital Treasuries PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 20
MERGE (p:Person {name: 'Sachith Perera'}) ON CREATE SET p.id = 'sachith_perera';

// Query 21
MATCH (p:Person {name: 'Sachith Perera'}), (c:Company {name: 'First Capital Treasuries PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 22
MERGE (p:Person {name: 'Dilshan Wirasekara'}) ON CREATE SET p.id = 'dilshan_wirasekara';

// Query 23
MATCH (p:Person {name: 'Dilshan Wirasekara'}), (c:Company {name: 'First Capital Treasuries PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 24
MERGE (p:Person {name: 'Ramesh Schaffter'}) ON CREATE SET p.id = 'ramesh_schaffter';

// Query 25
MATCH (p:Person {name: 'Ramesh Schaffter'}), (c:Company {name: 'First Capital Treasuries PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 26
MERGE (p:Person {name: 'Minette Perera'}) ON CREATE SET p.id = 'minette_perera';

// Query 27
MATCH (p:Person {name: 'Minette Perera'}), (c:Company {name: 'First Capital Treasuries PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 28
MERGE (p:Person {name: 'Nishan de Mel'}) ON CREATE SET p.id = 'nishan_de_mel';

// Query 29
MATCH (p:Person {name: 'Nishan de Mel'}), (c:Company {name: 'First Capital Treasuries PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 30
MERGE (p:Person {name: 'Cilani Wijesinghe'}) ON CREATE SET p.id = 'cilani_wijesinghe';

// Query 31
MATCH (p:Person {name: 'Cilani Wijesinghe'}), (c:Company {name: 'First Capital Treasuries PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 32
MERGE (p:Person {name: 'Chandana de Silva'}) ON CREATE SET p.id = 'chandana_de_silva';

// Query 33
MATCH (p:Person {name: 'Chandana de Silva'}), (c:Company {name: 'First Capital Treasuries PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 34
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. million';

// Query 35
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25447.0, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36167.6, r.year = 2023;

// Query 37
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs. million';

// Query 38
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 603.0, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6323.6, r.year = 2023;

// Query 40
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs. million';

// Query 41
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2743.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -11006.4, r.year = 2023;

// Query 43
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. million';

// Query 44
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 43860.7, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39325.1, r.year = 2023;

// Query 46
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. million';

// Query 47
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38370.1, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36034.1, r.year = 2023;

// Query 49
MERGE (m:Metric {name: 'Shareholders Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs. million';

// Query 50
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5311.3, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3086.1, r.year = 2023;

// Query 52
MERGE (m:Metric {name: 'Net Cash & Cash Equivalent'}) ON CREATE SET m.id = 'net_cash_and_cash_equivalent', m.unit = 'Rs. million';

// Query 53
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Net Cash & Cash Equivalent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5262.2, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Net Cash & Cash Equivalent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2619.0, r.year = 2023;

// Query 55
MERGE (m:Metric {name: 'Interest Bearing Borrowings'}) ON CREATE SET m.id = 'interest_bearing_borrowings', m.unit = 'Rs. million';

// Query 56
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Interest Bearing Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28667.9, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Interest Bearing Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23850.9, r.year = 2023;

// Query 58
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs.';

// Query 59
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -38.1, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -153.4, r.year = 2023;

// Query 61
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs.';

// Query 62
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2023;

// Query 64
MERGE (m:Metric {name: 'Net Assets Per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs.';

// Query 65
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 74.0, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42.0, r.year = 2023;

// Query 67
MERGE (m:Metric {name: 'Gearing Ratio'}) ON CREATE SET m.id = 'gearing_ratio', m.unit = '%';

// Query 68
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58.0, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 49.0, r.year = 2023;

// Query 70
MERGE (m:Metric {name: 'Return on Total Assets'}) ON CREATE SET m.id = 'return_on_total_assets', m.unit = '%';

// Query 71
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Return on Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.0, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Return on Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -31.0, r.year = 2023;

// Query 73
MERGE (m:Metric {name: 'Working Capital to Assets'}) ON CREATE SET m.id = 'working_capital_to_assets', m.unit = '%';

// Query 74
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Working Capital to Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -16.0, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (m:Metric {name: 'Working Capital to Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -17.0, r.year = 2023;

// Total queries: 75
// Generated on: 2025-09-03T14:17:54.142490
