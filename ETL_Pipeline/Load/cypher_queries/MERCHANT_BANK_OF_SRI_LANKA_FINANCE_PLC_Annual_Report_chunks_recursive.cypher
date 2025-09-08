// Query 1
MERGE (c:Company {name: 'MERCHANT BANK OF SRI LANKA FINANCE PLC'}) ON CREATE SET c.id = 'merchant_bank_of_sri_lanka_finance_plc';

// Query 2
MERGE (p:Person {name: 'Mr. H.N.J Chandrasekara'}) ON CREATE SET p.id = 'h_n_j_chandrasekara';

// Query 3
MATCH (p:Person {name: 'Mr. H.N.J Chandrasekara'}), (c:Company {name: 'MERCHANT BANK OF SRI LANKA FINANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-01-01');

// Query 4
MERGE (p:Person {name: 'Mr. K.A.K Jayatilake'}) ON CREATE SET p.id = 'k_a_k_jayatilake';

// Query 5
MATCH (p:Person {name: 'Mr. K.A.K Jayatilake'}), (c:Company {name: 'MERCHANT BANK OF SRI LANKA FINANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-01-01');

// Query 6
MERGE (p:Person {name: 'Mr. E. T . De Zoysa'}) ON CREATE SET p.id = 'e_t_de_zoysa';

// Query 7
MATCH (p:Person {name: 'Mr. E. T . De Zoysa'}), (c:Company {name: 'MERCHANT BANK OF SRI LANKA FINANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2021-01-01');

// Query 8
MERGE (p:Person {name: 'Mr. R. S. A. Wickramasingha'}) ON CREATE SET p.id = 'r_s_a_wickramasingha';

// Query 9
MATCH (p:Person {name: 'Mr. R. S. A. Wickramasingha'}), (c:Company {name: 'MERCHANT BANK OF SRI LANKA FINANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2021-01-01');

// Query 10
MERGE (p:Person {name: 'Ms. D. S. Wickramasingha'}) ON CREATE SET p.id = 'd_s_wickramasingha';

// Query 11
MATCH (p:Person {name: 'Ms. D. S. Wickramasingha'}), (c:Company {name: 'MERCHANT BANK OF SRI LANKA FINANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 12
MERGE (p:Person {name: 'Ms. N. K. Wickramasingha'}) ON CREATE SET p.id = 'n_k_wickramasingha';

// Query 13
MATCH (p:Person {name: 'Ms. N. K. Wickramasingha'}), (c:Company {name: 'MERCHANT BANK OF SRI LANKA FINANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 14
MERGE (p:Person {name: 'Mr. L. J. M. De Silva'}) ON CREATE SET p.id = 'l_j_m_de_silva';

// Query 15
MATCH (p:Person {name: 'Mr. L. J. M. De Silva'}), (c:Company {name: 'MERCHANT BANK OF SRI LANKA FINANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 16
MERGE (p:Person {name: 'Mr. M. U. S. G. Thilakawardana'}) ON CREATE SET p.id = 'm_u_s_g_thilakawardana';

// Query 17
MATCH (p:Person {name: 'Mr. M. U. S. G. Thilakawardana'}), (c:Company {name: 'MERCHANT BANK OF SRI LANKA FINANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 18
MERGE (p:Person {name: 'Dr. D. M. A. Kulasooriya'}) ON CREATE SET p.id = 'd_m_a_kulasooriya';

// Query 19
MATCH (p:Person {name: 'Dr. D. M. A. Kulasooriya'}), (c:Company {name: 'MERCHANT BANK OF SRI LANKA FINANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 20
MERGE (p:Person {name: 'Mr. M. S. Nanayakkara'}) ON CREATE SET p.id = 'm_s_nanayakkara';

// Query 21
MATCH (p:Person {name: 'Mr. M. S. Nanayakkara'}), (c:Company {name: 'MERCHANT BANK OF SRI LANKA FINANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Total queries: 21
// Generated on: 2025-09-03T16:20:45.374925
