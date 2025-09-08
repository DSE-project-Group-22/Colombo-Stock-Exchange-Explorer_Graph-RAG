// Query 1
MERGE (c:Company {name: 'HNB Assurance PLC'}) ON CREATE SET c.id = 'hnb_assurance_plc';

// Query 2
MERGE (p:Person {name: 'H. N. Esufally'}) ON CREATE SET p.id = 'h_n_esufally';

// Query 3
MATCH (p:Person {name: 'H. N. Esufally'}), (c:Company {name: 'HNB Assurance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 4
MERGE (p:Person {name: 'A. N. Esufally'}) ON CREATE SET p.id = 'a_n_esufally';

// Query 5
MATCH (p:Person {name: 'A. N. Esufally'}), (c:Company {name: 'HNB Assurance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 6
MERGE (p:Person {name: 'I. A. H. Esufally'}) ON CREATE SET p.id = 'i_a_h_esufally';

// Query 7
MATCH (p:Person {name: 'I. A. H. Esufally'}), (c:Company {name: 'HNB Assurance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 8
MERGE (p:Person {name: 'M. A. H. Esufally'}) ON CREATE SET p.id = 'm_a_h_esufally';

// Query 9
MATCH (p:Person {name: 'M. A. H. Esufally'}), (c:Company {name: 'HNB Assurance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 10
MERGE (p:Person {name: 'K. A. C. Wilson'}) ON CREATE SET p.id = 'k_a_c_wilson';

// Query 11
MATCH (p:Person {name: 'K. A. C. Wilson'}), (c:Company {name: 'HNB Assurance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Total queries: 11
// Generated on: 2025-09-03T16:16:30.331575
