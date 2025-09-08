// Query 1
MERGE (c:Company {name: 'Equity Two PLC'}) ON CREATE SET c.id = 'equity_two_plc';

// Query 2
MERGE (p:Person {name: 'E. T. De Zoysa'}) ON CREATE SET p.id = 'e_t_de_zoysa';

// Query 3
MATCH (p:Person {name: 'E. T. De Zoysa'}), (c:Company {name: 'Equity Two PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2021-01-01');

// Query 4
MERGE (p:Person {name: 'R. S. A. Wickramasingha'}) ON CREATE SET p.id = 'r_s_a_wickramasingha';

// Query 5
MATCH (p:Person {name: 'R. S. A. Wickramasingha'}), (c:Company {name: 'Equity Two PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2021-01-01');

// Query 6
MERGE (p:Person {name: 'D. S. Wickramasingha'}) ON CREATE SET p.id = 'd_s_wickramasingha';

// Query 7
MATCH (p:Person {name: 'D. S. Wickramasingha'}), (c:Company {name: 'Equity Two PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 8
MERGE (p:Person {name: 'N. K. Wickramasingha'}) ON CREATE SET p.id = 'n_k_wickramasingha';

// Query 9
MATCH (p:Person {name: 'N. K. Wickramasingha'}), (c:Company {name: 'Equity Two PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 10
MERGE (p:Person {name: 'L. J. M. De Silva'}) ON CREATE SET p.id = 'l_j_m_de_silva';

// Query 11
MATCH (p:Person {name: 'L. J. M. De Silva'}), (c:Company {name: 'Equity Two PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 12
MERGE (p:Person {name: 'M. U. S. G. Thilakawardana'}) ON CREATE SET p.id = 'm_u_s_g_thilakawardana';

// Query 13
MATCH (p:Person {name: 'M. U. S. G. Thilakawardana'}), (c:Company {name: 'Equity Two PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 14
MERGE (p:Person {name: 'D. M. A. Kulasooriya'}) ON CREATE SET p.id = 'd_m_a_kulasooriya';

// Query 15
MATCH (p:Person {name: 'D. M. A. Kulasooriya'}), (c:Company {name: 'Equity Two PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 16
MERGE (p:Person {name: 'M. S. Nanayakkara'}) ON CREATE SET p.id = 'm_s_nanayakkara';

// Query 17
MATCH (p:Person {name: 'M. S. Nanayakkara'}), (c:Company {name: 'Equity Two PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 18
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 19
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'Equity Two PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 20
MERGE (p:Person {name: 'A. Rajaratnam'}) ON CREATE SET p.id = 'a_rajaratnam';

// Query 21
MATCH (p:Person {name: 'A. Rajaratnam'}), (c:Company {name: 'Equity Two PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 22
MERGE (p:Person {name: 'J. M. Swaminathan'}) ON CREATE SET p.id = 'j_m_swaminathan';

// Query 23
MATCH (p:Person {name: 'J. M. Swaminathan'}), (c:Company {name: 'Equity Two PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 24
MERGE (p:Person {name: 'A. M. de S. Jayaratne'}) ON CREATE SET p.id = 'a_m_de_s_jayaratne';

// Query 25
MATCH (p:Person {name: 'A. M. de S. Jayaratne'}), (c:Company {name: 'Equity Two PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 26
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 27
MATCH (p:Person {name: 'S. Rajaratnam'}), (c:Company {name: 'Equity Two PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 28
MERGE (p:Person {name: 'A. S. Azariah'}) ON CREATE SET p.id = 'a_s_azariah';

// Query 29
MATCH (p:Person {name: 'A. S. Azariah'}), (c:Company {name: 'Equity Two PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'CEO', r.as_of = date('2024-01-01');

// Query 30
MERGE (p:Person {name: 'C. P. R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 31
MATCH (p:Person {name: 'C. P. R. Perera'}), (c:Company {name: 'Equity Two PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 32
MERGE (p:Person {name: 'Amrit Rajaratnam'}) ON CREATE SET p.id = 'amrit_rajaratnam';

// Query 33
MATCH (p:Person {name: 'Amrit Rajaratnam'}), (c:Company {name: 'Equity Two PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 34
MERGE (p:Person {name: 'A. R. Rasiah'}) ON CREATE SET p.id = 'a_r_rasiah';

// Query 35
MATCH (p:Person {name: 'A. R. Rasiah'}), (c:Company {name: 'Equity Two PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 36
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 37
MATCH (p:Person {name: 'Anushman Rajaratnam'}), (c:Company {name: 'Equity Two PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 38
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. Mn';

// Query 39
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25447.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36167.6, r.year = 2023;

// Query 41
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs. Mn';

// Query 42
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 603.0, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6323.6, r.year = 2023;

// Query 44
MERGE (m:Metric {name: 'Profit after Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs. Mn';

// Query 45
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Profit after Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2743.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Profit after Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -11006.4, r.year = 2023;

// Query 47
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. Mn';

// Query 48
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 43860.7, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39325.1, r.year = 2023;

// Query 50
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. Mn';

// Query 51
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38370.1, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36034.1, r.year = 2023;

// Query 53
MERGE (m:Metric {name: 'Shareholders’ Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs. Mn';

// Query 54
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Shareholders’ Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5311.3, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Shareholders’ Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3086.1, r.year = 2023;

// Query 56
MERGE (m:Metric {name: 'Net Cash & Cash Equivalent'}) ON CREATE SET m.id = 'net_cash_cash_equivalent', m.unit = 'Rs. Mn';

// Query 57
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Net Cash & Cash Equivalent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5262.2, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Net Cash & Cash Equivalent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2619.0, r.year = 2023;

// Query 59
MERGE (m:Metric {name: 'Interest bearing borrowings'}) ON CREATE SET m.id = 'interest_bearing_borrowings', m.unit = 'Rs. Mn';

// Query 60
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Interest bearing borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28667.9, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Interest bearing borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23850.9, r.year = 2023;

// Query 62
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs.';

// Query 63
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -38.1, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -153.4, r.year = 2023;

// Query 65
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs.';

// Query 66
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2023;

// Query 68
MERGE (m:Metric {name: 'Net Assets Per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs.';

// Query 69
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 74.0, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42.0, r.year = 2023;

// Query 71
MERGE (m:Metric {name: 'Gearing Ratio'}) ON CREATE SET m.id = 'gearing_ratio', m.unit = '%';

// Query 72
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58.0, r.year = 2024;

// Query 73
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 49.0, r.year = 2023;

// Query 74
MERGE (m:Metric {name: 'Return on Total Assets'}) ON CREATE SET m.id = 'return_on_total_assets', m.unit = '%';

// Query 75
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Return on Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.0, r.year = 2024;

// Query 76
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Return on Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -31.0, r.year = 2023;

// Query 77
MERGE (m:Metric {name: 'Working Capital to Assets'}) ON CREATE SET m.id = 'working_capital_to_assets', m.unit = '%';

// Query 78
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Working Capital to Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -16.0, r.year = 2024;

// Query 79
MATCH (c:Company {name: 'Equity Two PLC'}), (m:Metric {name: 'Working Capital to Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -17.0, r.year = 2023;

// Query 80
MERGE (s:Sector {name: 'Rental'}) ON CREATE SET s.id = 'rental';

// Query 81
MATCH (c:Company {name: 'Equity Two PLC'}), (s:Sector {name: 'Rental'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 82
MERGE (s:Sector {name: 'Infrastructure Rental'}) ON CREATE SET s.id = 'infrastructure_rental';

// Query 83
MATCH (c:Company {name: 'Equity Two PLC'}), (s:Sector {name: 'Infrastructure Rental'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 84
MERGE (s:Sector {name: 'Trading & Services'}) ON CREATE SET s.id = 'trading_services';

// Query 85
MATCH (c:Company {name: 'Equity Two PLC'}), (s:Sector {name: 'Trading & Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 86
MERGE (s:Sector {name: 'Motor Repair & vehicle maintenance sales services'}) ON CREATE SET s.id = 'motor_repair_vehicle_maintenance_sales_services';

// Query 87
MATCH (c:Company {name: 'Equity Two PLC'}), (s:Sector {name: 'Motor Repair & vehicle maintenance sales services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 88
MERGE (s:Sector {name: 'Investment & property holding'}) ON CREATE SET s.id = 'investment_property_holding';

// Query 89
MATCH (c:Company {name: 'Equity Two PLC'}), (s:Sector {name: 'Investment & property holding'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 89
// Generated on: 2025-09-03T14:20:01.318612
