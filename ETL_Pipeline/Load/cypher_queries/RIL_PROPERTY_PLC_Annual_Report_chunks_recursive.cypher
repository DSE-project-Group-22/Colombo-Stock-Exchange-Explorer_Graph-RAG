// Query 1
MERGE (c:Company {name: 'RIL Property PLC'}) ON CREATE SET c.id = 'ril_property_plc';

// Query 2
MERGE (p:Person {name: 'S.D.R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 3
MATCH (p:Person {name: 'S.D.R. Arudpragasam'}), (c:Company {name: 'RIL Property PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-03-31');

// Query 4
MERGE (p:Person {name: 'R.C.A. Welikala'}) ON CREATE SET p.id = 'r_c_a_welikala';

// Query 5
MATCH (p:Person {name: 'R.C.A. Welikala'}), (c:Company {name: 'RIL Property PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 6
MERGE (p:Person {name: 'R.N. Bopearatchy'}) ON CREATE SET p.id = 'r_n_bopearatchy';

// Query 7
MATCH (p:Person {name: 'R.N. Bopearatchy'}), (c:Company {name: 'RIL Property PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 8
MERGE (p:Person {name: 'E. T. De Zoysa'}) ON CREATE SET p.id = 'e_t_de_zoysa';

// Query 9
MATCH (p:Person {name: 'E. T. De Zoysa'}), (c:Company {name: 'RIL Property PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2021-03-31');

// Query 10
MERGE (p:Person {name: 'R. S. A. Wickramasingha'}) ON CREATE SET p.id = 'r_s_a_wickramasingha';

// Query 11
MATCH (p:Person {name: 'R. S. A. Wickramasingha'}), (c:Company {name: 'RIL Property PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2021-03-31');

// Query 12
MERGE (p:Person {name: 'D. S. Wickramasingha'}) ON CREATE SET p.id = 'd_s_wickramasingha';

// Query 13
MATCH (p:Person {name: 'D. S. Wickramasingha'}), (c:Company {name: 'RIL Property PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 14
MERGE (p:Person {name: 'N. K. Wickramasingha'}) ON CREATE SET p.id = 'n_k_wickramasingha';

// Query 15
MATCH (p:Person {name: 'N. K. Wickramasingha'}), (c:Company {name: 'RIL Property PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 16
MERGE (p:Person {name: 'L. J. M. De Silva'}) ON CREATE SET p.id = 'l_j_m_de_silva';

// Query 17
MATCH (p:Person {name: 'L. J. M. De Silva'}), (c:Company {name: 'RIL Property PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 18
MERGE (p:Person {name: 'M. U. S. G. Thilakawardana'}) ON CREATE SET p.id = 'm_u_s_g_thilakawardana';

// Query 19
MATCH (p:Person {name: 'M. U. S. G. Thilakawardana'}), (c:Company {name: 'RIL Property PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 20
MERGE (p:Person {name: 'D. M. A. Kulasooriya'}) ON CREATE SET p.id = 'd_m_a_kulasooriya';

// Query 21
MATCH (p:Person {name: 'D. M. A. Kulasooriya'}), (c:Company {name: 'RIL Property PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 22
MERGE (p:Person {name: 'M. S. Nanayakkara'}) ON CREATE SET p.id = 'm_s_nanayakkara';

// Query 23
MATCH (p:Person {name: 'M. S. Nanayakkara'}), (c:Company {name: 'RIL Property PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 24
MERGE (s:Sector {name: 'Investment Holdings'}) ON CREATE SET s.id = 'investment_holdings';

// Query 25
MATCH (c:Company {name: 'RIL Property PLC'}), (s:Sector {name: 'Investment Holdings'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 26
MERGE (s:Sector {name: 'Portfolio and Asset Management'}) ON CREATE SET s.id = 'portfolio_and_asset_management';

// Query 27
MATCH (c:Company {name: 'RIL Property PLC'}), (s:Sector {name: 'Portfolio and Asset Management'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 28
MERGE (s:Sector {name: 'Oil palm plantations'}) ON CREATE SET s.id = 'oil_palm_plantations';

// Query 29
MATCH (c:Company {name: 'RIL Property PLC'}), (s:Sector {name: 'Oil palm plantations'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 30
MERGE (s:Sector {name: 'Oils & fats'}) ON CREATE SET s.id = 'oils_and_fats';

// Query 31
MATCH (c:Company {name: 'RIL Property PLC'}), (s:Sector {name: 'Oils & fats'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 32
MERGE (s:Sector {name: 'Beverages'}) ON CREATE SET s.id = 'beverages';

// Query 33
MATCH (c:Company {name: 'RIL Property PLC'}), (s:Sector {name: 'Beverages'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 34
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 35
MATCH (c:Company {name: 'RIL Property PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 36
MERGE (s:Sector {name: 'Leisure'}) ON CREATE SET s.id = 'leisure';

// Query 37
MATCH (c:Company {name: 'RIL Property PLC'}), (s:Sector {name: 'Leisure'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 38
MERGE (s:Sector {name: 'Management Services'}) ON CREATE SET s.id = 'management_services';

// Query 39
MATCH (c:Company {name: 'RIL Property PLC'}), (s:Sector {name: 'Management Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 39
// Generated on: 2025-09-03T16:21:39.356213
