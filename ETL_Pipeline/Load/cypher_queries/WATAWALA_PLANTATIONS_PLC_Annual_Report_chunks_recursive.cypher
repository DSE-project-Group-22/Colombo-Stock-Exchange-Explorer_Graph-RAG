// Query 1
MERGE (c:Company {name: 'Watawala Plantations PLC'}) ON CREATE SET c.id = 'watawala_plantations_plc';

// Query 2
MERGE (p:Person {name: 'S.D.R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 3
MATCH (p:Person {name: 'S.D.R. Arudpragasam'}), (c:Company {name: 'Watawala Plantations PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 4
MERGE (p:Person {name: 'R.C.A. Welikala'}) ON CREATE SET p.id = 'r_c_a_welikala';

// Query 5
MATCH (p:Person {name: 'R.C.A. Welikala'}), (c:Company {name: 'Watawala Plantations PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 6
MERGE (p:Person {name: 'R.N. Bopearatchy'}) ON CREATE SET p.id = 'r_n_bopearatchy';

// Query 7
MATCH (p:Person {name: 'R.N. Bopearatchy'}), (c:Company {name: 'Watawala Plantations PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 8
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. million';

// Query 9
MATCH (c:Company {name: 'Watawala Plantations PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7764.0, r.year = 2024;

// Query 10
MERGE (m:Metric {name: 'Cash Inflow From Operations'}) ON CREATE SET m.id = 'cash_inflow_from_operations', m.unit = 'Rs. million';

// Query 11
MATCH (c:Company {name: 'Watawala Plantations PLC'}), (m:Metric {name: 'Cash Inflow From Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2655.0, r.year = 2024;

// Query 12
MERGE (m:Metric {name: 'Net Profit Ratio'}) ON CREATE SET m.id = 'net_profit_ratio', m.unit = '%';

// Query 13
MATCH (c:Company {name: 'Watawala Plantations PLC'}), (m:Metric {name: 'Net Profit Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21.17, r.year = 2024;

// Query 14
MERGE (m:Metric {name: 'Taxes'}) ON CREATE SET m.id = 'taxes', m.unit = 'Rs. million';

// Query 15
MATCH (c:Company {name: 'Watawala Plantations PLC'}), (m:Metric {name: 'Taxes'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 491.0, r.year = 2024;

// Query 16
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 17
MATCH (c:Company {name: 'Watawala Plantations PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25.80, r.year = 2024;

// Query 18
MERGE (m:Metric {name: 'Asset Turnover Ratio'}) ON CREATE SET m.id = 'asset_turnover_ratio', m.unit = 'Times';

// Query 19
MATCH (c:Company {name: 'Watawala Plantations PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.79, r.year = 2024;

// Query 20
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs.';

// Query 21
MATCH (c:Company {name: 'Watawala Plantations PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26.85, r.year = 2024;

// Query 22
MERGE (m:Metric {name: 'Debt: Equity Ratio'}) ON CREATE SET m.id = 'debt_equity_ratio', m.unit = '%';

// Query 23
MATCH (c:Company {name: 'Watawala Plantations PLC'}), (m:Metric {name: 'Debt: Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.0, r.year = 2024;

// Total queries: 23
// Generated on: 2025-09-03T14:11:50.235071
