// Query 1
MERGE (c:Company {name: 'UNION ASSURANCE PLC'}) ON CREATE SET c.id = 'union_assurance_plc';

// Query 2
MERGE (p:Person {name: 'S.D.R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 3
MATCH (p:Person {name: 'S.D.R. Arudpragasam'}), (c:Company {name: 'UNION ASSURANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2022-01-01');

// Query 4
MERGE (p:Person {name: 'R.C.A. Welikala'}) ON CREATE SET p.id = 'r_c_a_welikala';

// Query 5
MATCH (p:Person {name: 'R.C.A. Welikala'}), (c:Company {name: 'UNION ASSURANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2022-01-01');

// Query 6
MERGE (p:Person {name: 'R.N. Bopearatchy'}) ON CREATE SET p.id = 'r_n_bopearatchy';

// Query 7
MATCH (p:Person {name: 'R.N. Bopearatchy'}), (c:Company {name: 'UNION ASSURANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2022-01-01');

// Query 8
MERGE (p:Person {name: 'E. T. De Zoysa'}) ON CREATE SET p.id = 'e_t_de_zoysa';

// Query 9
MATCH (p:Person {name: 'E. T. De Zoysa'}), (c:Company {name: 'UNION ASSURANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2021-01-01');

// Query 10
MERGE (p:Person {name: 'R. S. A. Wickramasingha'}) ON CREATE SET p.id = 'r_s_a_wickramasingha';

// Query 11
MATCH (p:Person {name: 'R. S. A. Wickramasingha'}), (c:Company {name: 'UNION ASSURANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2021-01-01');

// Query 12
MERGE (p:Person {name: 'D. S. Wickramasingha'}) ON CREATE SET p.id = 'd_s_wickramasingha';

// Query 13
MATCH (p:Person {name: 'D. S. Wickramasingha'}), (c:Company {name: 'UNION ASSURANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 14
MERGE (p:Person {name: 'N. K. Wickramasingha'}) ON CREATE SET p.id = 'n_k_wickramasingha';

// Query 15
MATCH (p:Person {name: 'N. K. Wickramasingha'}), (c:Company {name: 'UNION ASSURANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 16
MERGE (p:Person {name: 'L. J. M. De Silva'}) ON CREATE SET p.id = 'l_j_m_de_silva';

// Query 17
MATCH (p:Person {name: 'L. J. M. De Silva'}), (c:Company {name: 'UNION ASSURANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 18
MERGE (p:Person {name: 'M. U. S. G. Thilakawardana'}) ON CREATE SET p.id = 'm_u_s_g_thilakawardana';

// Query 19
MATCH (p:Person {name: 'M. U. S. G. Thilakawardana'}), (c:Company {name: 'UNION ASSURANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 20
MERGE (p:Person {name: 'D. M. A. Kulasooriya'}) ON CREATE SET p.id = 'd_m_a_kulasooriya';

// Query 21
MATCH (p:Person {name: 'D. M. A. Kulasooriya'}), (c:Company {name: 'UNION ASSURANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 22
MERGE (p:Person {name: 'M. S. Nanayakkara'}) ON CREATE SET p.id = 'm_s_nanayakkara';

// Query 23
MATCH (p:Person {name: 'M. S. Nanayakkara'}), (c:Company {name: 'UNION ASSURANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 24
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. Mn';

// Query 25
MATCH (c:Company {name: 'UNION ASSURANCE PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7764, r.year = 2024;

// Query 26
MATCH (c:Company {name: 'UNION ASSURANCE PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8199, r.year = 2023;

// Query 27
MERGE (m:Metric {name: 'Cash Inflow From Operations'}) ON CREATE SET m.id = 'cash_inflow_from_operations', m.unit = 'Rs. Mn';

// Query 28
MATCH (c:Company {name: 'UNION ASSURANCE PLC'}), (m:Metric {name: 'Cash Inflow From Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2655, r.year = 2024;

// Query 29
MATCH (c:Company {name: 'UNION ASSURANCE PLC'}), (m:Metric {name: 'Cash Inflow From Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3553, r.year = 2023;

// Query 30
MERGE (m:Metric {name: 'Net Profit Ratio'}) ON CREATE SET m.id = 'net_profit_ratio', m.unit = '%';

// Query 31
MATCH (c:Company {name: 'UNION ASSURANCE PLC'}), (m:Metric {name: 'Net Profit Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21.17, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'UNION ASSURANCE PLC'}), (m:Metric {name: 'Net Profit Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31.45, r.year = 2023;

// Query 33
MERGE (m:Metric {name: 'Taxes'}) ON CREATE SET m.id = 'taxes', m.unit = 'Rs. Mn';

// Query 34
MATCH (c:Company {name: 'UNION ASSURANCE PLC'}), (m:Metric {name: 'Taxes'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 491, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'UNION ASSURANCE PLC'}), (m:Metric {name: 'Taxes'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 719, r.year = 2023;

// Query 36
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 37
MATCH (c:Company {name: 'UNION ASSURANCE PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25.80, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'UNION ASSURANCE PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 41.81, r.year = 2023;

// Query 39
MERGE (m:Metric {name: 'Asset Turnover Ratio'}) ON CREATE SET m.id = 'asset_turnover_ratio', m.unit = 'times';

// Query 40
MATCH (c:Company {name: 'UNION ASSURANCE PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.79, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'UNION ASSURANCE PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.90, r.year = 2023;

// Query 42
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs.';

// Query 43
MATCH (c:Company {name: 'UNION ASSURANCE PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26.85, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'UNION ASSURANCE PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.00, r.year = 2023;

// Query 45
MERGE (m:Metric {name: 'Debt: Equity Ratio'}) ON CREATE SET m.id = 'debt_equity_ratio', m.unit = '%';

// Query 46
MATCH (c:Company {name: 'UNION ASSURANCE PLC'}), (m:Metric {name: 'Debt: Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'UNION ASSURANCE PLC'}), (m:Metric {name: 'Debt: Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5, r.year = 2023;

// Total queries: 47
// Generated on: 2025-09-03T13:56:16.207191
