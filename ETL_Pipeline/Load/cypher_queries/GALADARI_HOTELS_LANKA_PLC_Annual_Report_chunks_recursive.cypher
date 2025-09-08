// Query 1
MERGE (c:Company {name: 'GALADARI HOTELS LANKA PLC'}) ON CREATE SET c.id = 'galadari_hotels_lanka_plc';

// Query 2
MERGE (p:Person {name: 'E. T. De Zoysa'}) ON CREATE SET p.id = 'e_t_de_zoysa';

// Query 3
MATCH (p:Person {name: 'E. T. De Zoysa'}), (c:Company {name: 'GALADARI HOTELS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2021-03-31');

// Query 4
MERGE (p:Person {name: 'R. S. A. Wickramasingha'}) ON CREATE SET p.id = 'r_s_a_wickramasingha';

// Query 5
MATCH (p:Person {name: 'R. S. A. Wickramasingha'}), (c:Company {name: 'GALADARI HOTELS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2021-03-31');

// Query 6
MERGE (p:Person {name: 'D. S. Wickramasingha'}) ON CREATE SET p.id = 'd_s_wickramasingha';

// Query 7
MATCH (p:Person {name: 'D. S. Wickramasingha'}), (c:Company {name: 'GALADARI HOTELS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 8
MERGE (p:Person {name: 'N. K. Wickramasingha'}) ON CREATE SET p.id = 'n_k_wickramasingha';

// Query 9
MATCH (p:Person {name: 'N. K. Wickramasingha'}), (c:Company {name: 'GALADARI HOTELS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 10
MERGE (p:Person {name: 'L. J. M. De Silva'}) ON CREATE SET p.id = 'l_j_m_de_silva';

// Query 11
MATCH (p:Person {name: 'L. J. M. De Silva'}), (c:Company {name: 'GALADARI HOTELS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 12
MERGE (p:Person {name: 'M. U. S. G. Thilakawardana'}) ON CREATE SET p.id = 'm_u_s_g_thilakawardana';

// Query 13
MATCH (p:Person {name: 'M. U. S. G. Thilakawardana'}), (c:Company {name: 'GALADARI HOTELS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 14
MERGE (p:Person {name: 'D. M. A. Kulasooriya'}) ON CREATE SET p.id = 'd_m_a_kulasooriya';

// Query 15
MATCH (p:Person {name: 'D. M. A. Kulasooriya'}), (c:Company {name: 'GALADARI HOTELS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 16
MERGE (p:Person {name: 'M. S. Nanayakkara'}) ON CREATE SET p.id = 'm_s_nanayakkara';

// Query 17
MATCH (p:Person {name: 'M. S. Nanayakkara'}), (c:Company {name: 'GALADARI HOTELS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 18
MERGE (p:Person {name: 'Manjula Mathews'}) ON CREATE SET p.id = 'manjula_mathews';

// Query 19
MATCH (p:Person {name: 'Manjula Mathews'}), (c:Company {name: 'GALADARI HOTELS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 20
MERGE (p:Person {name: 'Sachith Perera'}) ON CREATE SET p.id = 'sachith_perera';

// Query 21
MATCH (p:Person {name: 'Sachith Perera'}), (c:Company {name: 'GALADARI HOTELS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 22
MERGE (p:Person {name: 'Dilshan Wirasekara'}) ON CREATE SET p.id = 'dilshan_wirasekara';

// Query 23
MATCH (p:Person {name: 'Dilshan Wirasekara'}), (c:Company {name: 'GALADARI HOTELS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 24
MERGE (p:Person {name: 'Ramesh Schaffter'}) ON CREATE SET p.id = 'ramesh_schaffter';

// Query 25
MATCH (p:Person {name: 'Ramesh Schaffter'}), (c:Company {name: 'GALADARI HOTELS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 26
MERGE (p:Person {name: 'Minette Perera'}) ON CREATE SET p.id = 'minette_perera';

// Query 27
MATCH (p:Person {name: 'Minette Perera'}), (c:Company {name: 'GALADARI HOTELS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 28
MERGE (p:Person {name: 'Nishan de Mel'}) ON CREATE SET p.id = 'nishan_de_mel';

// Query 29
MATCH (p:Person {name: 'Nishan de Mel'}), (c:Company {name: 'GALADARI HOTELS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 30
MERGE (p:Person {name: 'Cilani Wijesinghe'}) ON CREATE SET p.id = 'cilani_wijesinghe';

// Query 31
MATCH (p:Person {name: 'Cilani Wijesinghe'}), (c:Company {name: 'GALADARI HOTELS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 32
MERGE (p:Person {name: 'Chandana de Silva'}) ON CREATE SET p.id = 'chandana_de_silva';

// Query 33
MATCH (p:Person {name: 'Chandana de Silva'}), (c:Company {name: 'GALADARI HOTELS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Total queries: 33
// Generated on: 2025-09-03T14:55:24.731138
