// Query 1
MERGE (c:Company {name: 'Hapugastenne Plantations PLC'}) ON CREATE SET c.id = 'hapugastenne_plantations_plc';

// Query 2
MERGE (p:Person {name: 'E. T. De Zoysa'}) ON CREATE SET p.id = 'e_t_de_zoysa';

// Query 3
MATCH (p:Person {name: 'E. T. De Zoysa'}), (c:Company {name: 'Hapugastenne Plantations PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2021-01-01');

// Query 4
MERGE (p:Person {name: 'R. S. A. Wickramasingha'}) ON CREATE SET p.id = 'r_s_a_wickramasingha';

// Query 5
MATCH (p:Person {name: 'R. S. A. Wickramasingha'}), (c:Company {name: 'Hapugastenne Plantations PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2021-01-01');

// Query 6
MERGE (p:Person {name: 'D. S. Wickramasingha'}) ON CREATE SET p.id = 'd_s_wickramasingha';

// Query 7
MATCH (p:Person {name: 'D. S. Wickramasingha'}), (c:Company {name: 'Hapugastenne Plantations PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 8
MERGE (p:Person {name: 'N. K. Wickramasingha'}) ON CREATE SET p.id = 'n_k_wickramasingha';

// Query 9
MATCH (p:Person {name: 'N. K. Wickramasingha'}), (c:Company {name: 'Hapugastenne Plantations PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 10
MERGE (p:Person {name: 'L. J. M. De Silva'}) ON CREATE SET p.id = 'l_j_m_de_silva';

// Query 11
MATCH (p:Person {name: 'L. J. M. De Silva'}), (c:Company {name: 'Hapugastenne Plantations PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 12
MERGE (p:Person {name: 'M. U. S. G. Thilakawardana'}) ON CREATE SET p.id = 'm_u_s_g_thilakawardana';

// Query 13
MATCH (p:Person {name: 'M. U. S. G. Thilakawardana'}), (c:Company {name: 'Hapugastenne Plantations PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 14
MERGE (p:Person {name: 'D. M. A. Kulasooriya'}) ON CREATE SET p.id = 'd_m_a_kulasooriya';

// Query 15
MATCH (p:Person {name: 'D. M. A. Kulasooriya'}), (c:Company {name: 'Hapugastenne Plantations PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 16
MERGE (p:Person {name: 'M. S. Nanayakkara'}) ON CREATE SET p.id = 'm_s_nanayakkara';

// Query 17
MATCH (p:Person {name: 'M. S. Nanayakkara'}), (c:Company {name: 'Hapugastenne Plantations PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 18
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. million';

// Query 19
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 25447.0, r.year = 2024;

// Query 20
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 36167.6, r.year = 2023;

// Query 21
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs. million';

// Query 22
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 603.0, r.year = 2024;

// Query 23
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6323.6, r.year = 2023;

// Query 24
MERGE (m:Metric {name: 'Profit after Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs. million';

// Query 25
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Profit after Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2743.0, r.year = 2024;

// Query 26
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Profit after Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -11006.4, r.year = 2023;

// Query 27
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. million';

// Query 28
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 43860.7, r.year = 2024;

// Query 29
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 39325.1, r.year = 2023;

// Query 30
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. million';

// Query 31
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 38370.1, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 36034.1, r.year = 2023;

// Query 33
MERGE (m:Metric {name: 'Shareholders’ Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs. million';

// Query 34
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Shareholders’ Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5311.3, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Shareholders’ Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3086.1, r.year = 2023;

// Query 36
MERGE (m:Metric {name: 'Net Cash & Cash Equivalent'}) ON CREATE SET m.id = 'net_cash_and_cash_equivalent', m.unit = 'Rs. million';

// Query 37
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Net Cash & Cash Equivalent'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5262.2, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Net Cash & Cash Equivalent'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2619.0, r.year = 2023;

// Query 39
MERGE (m:Metric {name: 'Interest bearing borrowings'}) ON CREATE SET m.id = 'interest_bearing_borrowings', m.unit = 'Rs. million';

// Query 40
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Interest bearing borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 28667.9, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Interest bearing borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 23850.9, r.year = 2023;

// Query 42
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs.';

// Query 43
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -38.1, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -153.4, r.year = 2023;

// Query 45
MERGE (m:Metric {name: 'Net Assets Per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs.';

// Query 46
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 74.0, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 42.0, r.year = 2023;

// Query 48
MERGE (m:Metric {name: 'Gearing Ratio'}) ON CREATE SET m.id = 'gearing_ratio', m.unit = '%';

// Query 49
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 58.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 49.0, r.year = 2023;

// Query 51
MERGE (m:Metric {name: 'Return on Total Assets'}) ON CREATE SET m.id = 'return_on_total_assets', m.unit = '%';

// Query 52
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Return on Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6.0, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Return on Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -31.0, r.year = 2023;

// Query 54
MERGE (m:Metric {name: 'Working Capital to Assets'}) ON CREATE SET m.id = 'working_capital_to_assets', m.unit = '%';

// Query 55
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Working Capital to Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -16.0, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (m:Metric {name: 'Working Capital to Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -17.0, r.year = 2023;

// Query 57
MERGE (s:Sector {name: 'Investment Holdings'}) ON CREATE SET s.id = 'investment_holdings';

// Query 58
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (s:Sector {name: 'Investment Holdings'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 59
MERGE (s:Sector {name: 'Portfolio and Asset Management'}) ON CREATE SET s.id = 'portfolio_and_asset_management';

// Query 60
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (s:Sector {name: 'Portfolio and Asset Management'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 61
MERGE (s:Sector {name: 'Oil palm plantations'}) ON CREATE SET s.id = 'oil_palm_plantations';

// Query 62
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (s:Sector {name: 'Oil palm plantations'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 63
MERGE (s:Sector {name: 'Oils & fats'}) ON CREATE SET s.id = 'oils_and_fats';

// Query 64
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (s:Sector {name: 'Oils & fats'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 65
MERGE (s:Sector {name: 'Beverages'}) ON CREATE SET s.id = 'beverages';

// Query 66
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (s:Sector {name: 'Beverages'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 67
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 68
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 69
MERGE (s:Sector {name: 'Leisure'}) ON CREATE SET s.id = 'leisure';

// Query 70
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (s:Sector {name: 'Leisure'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 71
MERGE (s:Sector {name: 'Management Services'}) ON CREATE SET s.id = 'management_services';

// Query 72
MATCH (c:Company {name: 'Hapugastenne Plantations PLC'}), (s:Sector {name: 'Management Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 72
// Generated on: 2025-09-03T14:59:01.307565
