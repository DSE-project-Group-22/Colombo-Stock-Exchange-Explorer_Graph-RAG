// Query 1
MERGE (c:Company {name: 'HIKKADUWA BEACH RESORT PLC'}) ON CREATE SET c.id = 'hikkaduwa_beach_resort_plc';

// Query 2
MERGE (p:Person {name: 'H. N. Esufally'}) ON CREATE SET p.id = 'h_n_esufally';

// Query 3
MATCH (p:Person {name: 'H. N. Esufally'}), (c:Company {name: 'HIKKADUWA BEACH RESORT PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'E. T. De Zoysa'}) ON CREATE SET p.id = 'e_t_de_zoysa';

// Query 5
MATCH (p:Person {name: 'E. T. De Zoysa'}), (c:Company {name: 'HIKKADUWA BEACH RESORT PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2021-01-01');

// Query 6
MERGE (p:Person {name: 'R. S. A. Wickramasingha'}) ON CREATE SET p.id = 'r_s_a_wickramasingha';

// Query 7
MATCH (p:Person {name: 'R. S. A. Wickramasingha'}), (c:Company {name: 'HIKKADUWA BEACH RESORT PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2021-01-01');

// Query 8
MERGE (p:Person {name: 'D. S. Wickramasingha'}) ON CREATE SET p.id = 'd_s_wickramasingha';

// Query 9
MATCH (p:Person {name: 'D. S. Wickramasingha'}), (c:Company {name: 'HIKKADUWA BEACH RESORT PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 10
MERGE (p:Person {name: 'N. K. Wickramasingha'}) ON CREATE SET p.id = 'n_k_wickramasingha';

// Query 11
MATCH (p:Person {name: 'N. K. Wickramasingha'}), (c:Company {name: 'HIKKADUWA BEACH RESORT PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 12
MERGE (p:Person {name: 'L. J. M. De Silva'}) ON CREATE SET p.id = 'l_j_m_de_silva';

// Query 13
MATCH (p:Person {name: 'L. J. M. De Silva'}), (c:Company {name: 'HIKKADUWA BEACH RESORT PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 14
MERGE (p:Person {name: 'M. U. S. G. Thilakawardana'}) ON CREATE SET p.id = 'm_u_s_g_thilakawardana';

// Query 15
MATCH (p:Person {name: 'M. U. S. G. Thilakawardana'}), (c:Company {name: 'HIKKADUWA BEACH RESORT PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 16
MERGE (p:Person {name: 'D. M. A. Kulasooriya'}) ON CREATE SET p.id = 'd_m_a_kulasooriya';

// Query 17
MATCH (p:Person {name: 'D. M. A. Kulasooriya'}), (c:Company {name: 'HIKKADUWA BEACH RESORT PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 18
MERGE (p:Person {name: 'M. S. Nanayakkara'}) ON CREATE SET p.id = 'm_s_nanayakkara';

// Query 19
MATCH (p:Person {name: 'M. S. Nanayakkara'}), (c:Company {name: 'HIKKADUWA BEACH RESORT PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Total queries: 19
// Generated on: 2025-09-03T15:41:28.273359
