// Query 1
MERGE (c:Company {name: 'Ex-pack Corrugated Cartons PLC'}) ON CREATE SET c.id = 'ex_pack_corrugated_cartons_plc';

// Query 2
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 3
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'Ex-pack Corrugated Cartons PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 4
MERGE (p:Person {name: 'J. M. Swaminathan'}) ON CREATE SET p.id = 'j_m_swaminathan';

// Query 5
MATCH (p:Person {name: 'J. M. Swaminathan'}), (c:Company {name: 'Ex-pack Corrugated Cartons PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 6
MERGE (p:Person {name: 'A. M. de S. Jayaratne'}) ON CREATE SET p.id = 'a_m_de_s_jayaratne';

// Query 7
MATCH (p:Person {name: 'A. M. de S. Jayaratne'}), (c:Company {name: 'Ex-pack Corrugated Cartons PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 8
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 9
MATCH (p:Person {name: 'S. Rajaratnam'}), (c:Company {name: 'Ex-pack Corrugated Cartons PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 10
MERGE (p:Person {name: 'A. S. Azariah'}) ON CREATE SET p.id = 'a_s_azariah';

// Query 11
MATCH (p:Person {name: 'A. S. Azariah'}), (c:Company {name: 'Ex-pack Corrugated Cartons PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'CEO', r.as_of = date('2024-03-31');

// Query 12
MERGE (p:Person {name: 'A. Rajaratnam'}) ON CREATE SET p.id = 'a_rajaratnam';

// Query 13
MATCH (p:Person {name: 'A. Rajaratnam'}), (c:Company {name: 'Ex-pack Corrugated Cartons PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 14
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. million';

// Query 15
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6738, r.year = 2024;

// Query 16
MERGE (m:Metric {name: 'Equity Capital'}) ON CREATE SET m.id = 'equity_capital', m.unit = 'Rs. million';

// Query 17
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons PLC'}), (m:Metric {name: 'Equity Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3146, r.year = 2024;

// Total queries: 17
// Generated on: 2025-09-03T14:51:38.615888
