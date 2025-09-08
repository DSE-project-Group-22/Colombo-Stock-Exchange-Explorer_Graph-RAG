// Query 1
MERGE (c:Company {name: 'Standard Capital PLC'}) ON CREATE SET c.id = 'standard_capital_plc';

// Query 2
MERGE (p:Person {name: 'H.N.J Chandrasekara'}) ON CREATE SET p.id = 'h_n_j_chandrasekara';

// Query 3
MATCH (p:Person {name: 'H.N.J Chandrasekara'}), (c:Company {name: 'Standard Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-01-01');

// Query 4
MERGE (p:Person {name: 'K.A.K Jayatilake'}) ON CREATE SET p.id = 'k_a_k_jayatilake';

// Query 5
MATCH (p:Person {name: 'K.A.K Jayatilake'}), (c:Company {name: 'Standard Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-01-01');

// Query 6
MERGE (p:Person {name: 'S.D.R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 7
MATCH (p:Person {name: 'S.D.R. Arudpragasam'}), (c:Company {name: 'Standard Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-01-01');

// Query 8
MERGE (p:Person {name: 'R.C.A. Welikala'}) ON CREATE SET p.id = 'r_c_a_welikala';

// Query 9
MATCH (p:Person {name: 'R.C.A. Welikala'}), (c:Company {name: 'Standard Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-01-01');

// Query 10
MERGE (p:Person {name: 'R.N. Bopearatchy'}) ON CREATE SET p.id = 'r_n_bopearatchy';

// Query 11
MATCH (p:Person {name: 'R.N. Bopearatchy'}), (c:Company {name: 'Standard Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-01-01');

// Query 12
MERGE (p:Person {name: 'E. T. De Zoysa'}) ON CREATE SET p.id = 'e_t_de_zoysa';

// Query 13
MATCH (p:Person {name: 'E. T. De Zoysa'}), (c:Company {name: 'Standard Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2021-03-31');

// Query 14
MERGE (p:Person {name: 'R. S. A. Wickramasingha'}) ON CREATE SET p.id = 'r_s_a_wickramasingha';

// Query 15
MATCH (p:Person {name: 'R. S. A. Wickramasingha'}), (c:Company {name: 'Standard Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2021-03-31');

// Query 16
MERGE (p:Person {name: 'D. S. Wickramasingha'}) ON CREATE SET p.id = 'd_s_wickramasingha';

// Query 17
MATCH (p:Person {name: 'D. S. Wickramasingha'}), (c:Company {name: 'Standard Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 18
MERGE (p:Person {name: 'N. K. Wickramasingha'}) ON CREATE SET p.id = 'n_k_wickramasingha';

// Query 19
MATCH (p:Person {name: 'N. K. Wickramasingha'}), (c:Company {name: 'Standard Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 20
MERGE (p:Person {name: 'L. J. M. De Silva'}) ON CREATE SET p.id = 'l_j_m_de_silva';

// Query 21
MATCH (p:Person {name: 'L. J. M. De Silva'}), (c:Company {name: 'Standard Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 22
MERGE (p:Person {name: 'M. U. S. G. Thilakawardana'}) ON CREATE SET p.id = 'm_u_s_g_thilakawardana';

// Query 23
MATCH (p:Person {name: 'M. U. S. G. Thilakawardana'}), (c:Company {name: 'Standard Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 24
MERGE (p:Person {name: 'D. M. A. Kulasooriya'}) ON CREATE SET p.id = 'd_m_a_kulasooriya';

// Query 25
MATCH (p:Person {name: 'D. M. A. Kulasooriya'}), (c:Company {name: 'Standard Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 26
MERGE (p:Person {name: 'M. S. Nanayakkara'}) ON CREATE SET p.id = 'm_s_nanayakkara';

// Query 27
MATCH (p:Person {name: 'M. S. Nanayakkara'}), (c:Company {name: 'Standard Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Total queries: 27
// Generated on: 2025-09-03T14:03:02.212460
