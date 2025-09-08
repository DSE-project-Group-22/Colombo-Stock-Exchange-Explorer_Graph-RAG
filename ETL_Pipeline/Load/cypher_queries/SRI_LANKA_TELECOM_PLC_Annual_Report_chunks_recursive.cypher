// Query 1
MERGE (c:Company {name: 'Sri Lanka Telecom PLC'}) ON CREATE SET c.id = 'sri_lanka_telecom_plc';

// Query 2
MERGE (p:Person {name: 'S.D.R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 3
MATCH (p:Person {name: 'S.D.R. Arudpragasam'}), (c:Company {name: 'Sri Lanka Telecom PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2022-01-01');

// Query 4
MERGE (p:Person {name: 'R.C.A. Welikala'}) ON CREATE SET p.id = 'r_c_a_welikala';

// Query 5
MATCH (p:Person {name: 'R.C.A. Welikala'}), (c:Company {name: 'Sri Lanka Telecom PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2022-01-01');

// Query 6
MERGE (p:Person {name: 'R.N. Bopearatchy'}) ON CREATE SET p.id = 'r_n_bopearatchy';

// Query 7
MATCH (p:Person {name: 'R.N. Bopearatchy'}), (c:Company {name: 'Sri Lanka Telecom PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2022-01-01');

// Query 8
MERGE (p:Person {name: 'E. T. De Zoysa'}) ON CREATE SET p.id = 'e_t_de_zoysa';

// Query 9
MATCH (p:Person {name: 'E. T. De Zoysa'}), (c:Company {name: 'Sri Lanka Telecom PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2021-03-31');

// Query 10
MERGE (p:Person {name: 'R. S. A. Wickramasingha'}) ON CREATE SET p.id = 'r_s_a_wickramasingha';

// Query 11
MATCH (p:Person {name: 'R. S. A. Wickramasingha'}), (c:Company {name: 'Sri Lanka Telecom PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2021-03-31');

// Query 12
MERGE (p:Person {name: 'D. S. Wickramasingha'}) ON CREATE SET p.id = 'd_s_wickramasingha';

// Query 13
MATCH (p:Person {name: 'D. S. Wickramasingha'}), (c:Company {name: 'Sri Lanka Telecom PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 14
MERGE (p:Person {name: 'N. K. Wickramasingha'}) ON CREATE SET p.id = 'n_k_wickramasingha';

// Query 15
MATCH (p:Person {name: 'N. K. Wickramasingha'}), (c:Company {name: 'Sri Lanka Telecom PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 16
MERGE (p:Person {name: 'L. J. M. De Silva'}) ON CREATE SET p.id = 'l_j_m_de_silva';

// Query 17
MATCH (p:Person {name: 'L. J. M. De Silva'}), (c:Company {name: 'Sri Lanka Telecom PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 18
MERGE (p:Person {name: 'M. U. S. G. Thilakawardana'}) ON CREATE SET p.id = 'm_u_s_g_thilakawardana';

// Query 19
MATCH (p:Person {name: 'M. U. S. G. Thilakawardana'}), (c:Company {name: 'Sri Lanka Telecom PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 20
MERGE (p:Person {name: 'D. M. A. Kulasooriya'}) ON CREATE SET p.id = 'd_m_a_kulasooriya';

// Query 21
MATCH (p:Person {name: 'D. M. A. Kulasooriya'}), (c:Company {name: 'Sri Lanka Telecom PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 22
MERGE (p:Person {name: 'M. S. Nanayakkara'}) ON CREATE SET p.id = 'm_s_nanayakkara';

// Query 23
MATCH (p:Person {name: 'M. S. Nanayakkara'}), (c:Company {name: 'Sri Lanka Telecom PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 24
MERGE (m:Metric {name: 'Equity'}) ON CREATE SET m.id = 'equity', m.unit = 'LKR billion';

// Query 25
MATCH (c:Company {name: 'Sri Lanka Telecom PLC'}), (m:Metric {name: 'Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 91.5, r.year = 2024;

// Query 26
MATCH (c:Company {name: 'Sri Lanka Telecom PLC'}), (m:Metric {name: 'Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 88.4, r.year = 2023;

// Query 27
MERGE (m:Metric {name: 'Total Borrowings'}) ON CREATE SET m.id = 'total_borrowings', m.unit = 'LKR billion';

// Query 28
MATCH (c:Company {name: 'Sri Lanka Telecom PLC'}), (m:Metric {name: 'Total Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 63.8, r.year = 2023;

// Query 29
MATCH (c:Company {name: 'Sri Lanka Telecom PLC'}), (m:Metric {name: 'Total Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 71.7, r.year = 2024;

// Query 30
MERGE (m:Metric {name: 'Trade Payables'}) ON CREATE SET m.id = 'trade_payables', m.unit = 'LKR billion';

// Query 31
MATCH (c:Company {name: 'Sri Lanka Telecom PLC'}), (m:Metric {name: 'Trade Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31.4, r.year = 2024;

// Query 32
MERGE (m:Metric {name: 'Lease Liabilities'}) ON CREATE SET m.id = 'lease_liabilities', m.unit = 'LKR billion';

// Query 33
MATCH (c:Company {name: 'Sri Lanka Telecom PLC'}), (m:Metric {name: 'Lease Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.9, r.year = 2024;

// Query 34
MERGE (m:Metric {name: 'Employee Benefits'}) ON CREATE SET m.id = 'employee_benefits', m.unit = 'LKR billion';

// Query 35
MATCH (c:Company {name: 'Sri Lanka Telecom PLC'}), (m:Metric {name: 'Employee Benefits'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.3, r.year = 2024;

// Query 36
MERGE (s:Sector {name: 'Mobile operation'}) ON CREATE SET s.id = 'mobile_operation';

// Query 37
MATCH (c:Company {name: 'Sri Lanka Telecom PLC'}), (s:Sector {name: 'Mobile operation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 38
MERGE (s:Sector {name: 'Fixed telephony and broadband operation'}) ON CREATE SET s.id = 'fixed_telephony_and_broadband_operation';

// Query 39
MATCH (c:Company {name: 'Sri Lanka Telecom PLC'}), (s:Sector {name: 'Fixed telephony and broadband operation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 40
MERGE (s:Sector {name: 'Television operations'}) ON CREATE SET s.id = 'television_operations';

// Query 41
MATCH (c:Company {name: 'Sri Lanka Telecom PLC'}), (s:Sector {name: 'Television operations'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 41
// Generated on: 2025-09-03T15:42:59.796757
