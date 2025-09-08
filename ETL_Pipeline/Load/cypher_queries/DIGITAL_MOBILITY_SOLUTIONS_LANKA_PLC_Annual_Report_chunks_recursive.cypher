// Query 1
MERGE (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) ON CREATE SET c.id = 'digital_mobility_solutions_lanka_plc';

// Query 2
MERGE (p:Person {name: 'E. T. De Zoysa'}) ON CREATE SET p.id = 'e_t_de_zoysa';

// Query 3
MATCH (p:Person {name: 'E. T. De Zoysa'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2021-01-01');

// Query 4
MERGE (p:Person {name: 'R. S. A. Wickramasingha'}) ON CREATE SET p.id = 'r_s_a_wickramasingha';

// Query 5
MATCH (p:Person {name: 'R. S. A. Wickramasingha'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2021-01-01');

// Query 6
MERGE (p:Person {name: 'D. S. Wickramasingha'}) ON CREATE SET p.id = 'd_s_wickramasingha';

// Query 7
MATCH (p:Person {name: 'D. S. Wickramasingha'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 8
MERGE (p:Person {name: 'N. K. Wickramasingha'}) ON CREATE SET p.id = 'n_k_wickramasingha';

// Query 9
MATCH (p:Person {name: 'N. K. Wickramasingha'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 10
MERGE (p:Person {name: 'L. J. M. De Silva'}) ON CREATE SET p.id = 'l_j_m_de_silva';

// Query 11
MATCH (p:Person {name: 'L. J. M. De Silva'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 12
MERGE (p:Person {name: 'M. U. S. G. Thilakawardana'}) ON CREATE SET p.id = 'm_u_s_g_thilakawardana';

// Query 13
MATCH (p:Person {name: 'M. U. S. G. Thilakawardana'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 14
MERGE (p:Person {name: 'D. M. A. Kulasooriya'}) ON CREATE SET p.id = 'd_m_a_kulasooriya';

// Query 15
MATCH (p:Person {name: 'D. M. A. Kulasooriya'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 16
MERGE (p:Person {name: 'M. S. Nanayakkara'}) ON CREATE SET p.id = 'm_s_nanayakkara';

// Query 17
MATCH (p:Person {name: 'M. S. Nanayakkara'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 18
MERGE (p:Person {name: 'A. S. Azariah'}) ON CREATE SET p.id = 'a_s_azariah';

// Query 19
MATCH (p:Person {name: 'A. S. Azariah'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'CEO', r.as_of = date('2023-01-01');

// Query 20
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 21
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2023-01-01');

// Query 22
MERGE (p:Person {name: 'A. Rajaratnam'}) ON CREATE SET p.id = 'a_rajaratnam';

// Query 23
MATCH (p:Person {name: 'A. Rajaratnam'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2023-01-01');

// Query 24
MERGE (p:Person {name: 'J. M. Swaminathan'}) ON CREATE SET p.id = 'j_m_swaminathan';

// Query 25
MATCH (p:Person {name: 'J. M. Swaminathan'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2023-01-01');

// Query 26
MERGE (p:Person {name: 'A. M. de S. Jayaratne'}) ON CREATE SET p.id = 'a_m_de_s_jayaratne';

// Query 27
MATCH (p:Person {name: 'A. M. de S. Jayaratne'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2023-01-01');

// Query 28
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 29
MATCH (p:Person {name: 'S. Rajaratnam'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2023-01-01');

// Query 30
MERGE (p:Person {name: 'R.M.M.J. Ratnayake'}) ON CREATE SET p.id = 'r_m_m_j_ratnayake';

// Query 31
MATCH (p:Person {name: 'R.M.M.J. Ratnayake'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2023-01-01');

// Query 32
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 33
MATCH (p:Person {name: 'Anushman Rajaratnam'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2023-01-01');

// Query 34
MATCH (p:Person {name: 'A. S. Azariah'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'CEO', r.as_of = date('2024-01-01');

// Query 35
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 36
MATCH (p:Person {name: 'A. Rajaratnam'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 37
MATCH (p:Person {name: 'J. M. Swaminathan'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 38
MATCH (p:Person {name: 'A. M. de S. Jayaratne'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 39
MATCH (p:Person {name: 'S. Rajaratnam'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 40
MATCH (p:Person {name: 'R.M.M.J. Ratnayake'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 41
MATCH (p:Person {name: 'Anushman Rajaratnam'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 42
MERGE (p:Person {name: 'C. P. R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 43
MATCH (p:Person {name: 'C. P. R. Perera'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 44
MERGE (p:Person {name: 'Amrit Rajaratnam'}) ON CREATE SET p.id = 'amrit_rajaratnam';

// Query 45
MATCH (p:Person {name: 'Amrit Rajaratnam'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 46
MERGE (p:Person {name: 'A. R. Rasiah'}) ON CREATE SET p.id = 'a_r_rasiah';

// Query 47
MATCH (p:Person {name: 'A. R. Rasiah'}), (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 48
MERGE (s:Sector {name: 'Mobile operation'}) ON CREATE SET s.id = 'mobile_operation';

// Query 49
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}), (s:Sector {name: 'Mobile operation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 50
MERGE (s:Sector {name: 'Fixed telephony and broadband operation'}) ON CREATE SET s.id = 'fixed_telephony_and_broadband_operation';

// Query 51
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}), (s:Sector {name: 'Fixed telephony and broadband operation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 52
MERGE (s:Sector {name: 'Television operations'}) ON CREATE SET s.id = 'television_operations';

// Query 53
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka PLC'}), (s:Sector {name: 'Television operations'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 53
// Generated on: 2025-09-03T16:01:20.252233
