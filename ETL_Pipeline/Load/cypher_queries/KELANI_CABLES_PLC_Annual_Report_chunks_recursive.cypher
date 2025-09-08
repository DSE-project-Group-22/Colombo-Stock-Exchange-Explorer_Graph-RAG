// Query 1
MERGE (c:Company {name: 'Kelani Cables PLC'}) ON CREATE SET c.id = 'kelani_cables_plc';

// Query 2
MERGE (p:Person {name: 'E. T. De Zoysa'}) ON CREATE SET p.id = 'e_t_de_zoysa';

// Query 3
MATCH (p:Person {name: 'E. T. De Zoysa'}), (c:Company {name: 'Kelani Cables PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2021-01-01');

// Query 4
MERGE (p:Person {name: 'R. S. A. Wickramasingha'}) ON CREATE SET p.id = 'r_s_a_wickramasingha';

// Query 5
MATCH (p:Person {name: 'R. S. A. Wickramasingha'}), (c:Company {name: 'Kelani Cables PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2021-01-01');

// Query 6
MERGE (p:Person {name: 'D. S. Wickramasingha'}) ON CREATE SET p.id = 'd_s_wickramasingha';

// Query 7
MATCH (p:Person {name: 'D. S. Wickramasingha'}), (c:Company {name: 'Kelani Cables PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 8
MERGE (p:Person {name: 'N. K. Wickramasingha'}) ON CREATE SET p.id = 'n_k_wickramasingha';

// Query 9
MATCH (p:Person {name: 'N. K. Wickramasingha'}), (c:Company {name: 'Kelani Cables PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 10
MERGE (p:Person {name: 'L. J. M. De Silva'}) ON CREATE SET p.id = 'l_j_m_de_silva';

// Query 11
MATCH (p:Person {name: 'L. J. M. De Silva'}), (c:Company {name: 'Kelani Cables PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 12
MERGE (p:Person {name: 'M. U. S. G. Thilakawardana'}) ON CREATE SET p.id = 'm_u_s_g_thilakawardana';

// Query 13
MATCH (p:Person {name: 'M. U. S. G. Thilakawardana'}), (c:Company {name: 'Kelani Cables PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 14
MERGE (p:Person {name: 'D. M. A. Kulasooriya'}) ON CREATE SET p.id = 'd_m_a_kulasooriya';

// Query 15
MATCH (p:Person {name: 'D. M. A. Kulasooriya'}), (c:Company {name: 'Kelani Cables PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 16
MERGE (p:Person {name: 'M. S. Nanayakkara'}) ON CREATE SET p.id = 'm_s_nanayakkara';

// Query 17
MATCH (p:Person {name: 'M. S. Nanayakkara'}), (c:Company {name: 'Kelani Cables PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Total queries: 17
// Generated on: 2025-09-03T16:15:03.973333
