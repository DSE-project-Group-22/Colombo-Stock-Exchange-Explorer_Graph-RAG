// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'B P P L Holdings'}) ON CREATE SET c.id = 'b_p_p_l_holdings', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'B P P L Holdings'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'R P Pathirana'}) ON CREATE SET p.id = 'r_p_pathirana';

// Query 8
MERGE (p:Person {name: 'B D P D Perera'}) ON CREATE SET p.id = 'b_d_p_d_perera';

// Query 9
MERGE (p:Person {name: 'S D Amarasinghe'}) ON CREATE SET p.id = 's_d_amarasinghe';

// Query 10
// Step 4: HOLDS_POSITION Relationships;

// Query 11
MATCH (p:Person {name: 'R P Pathirana'}), (c:Company {name: 'B P P L Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-12');

// Query 12
MATCH (p:Person {name: 'B D P D Perera'}), (c:Company {name: 'B P P L Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-12');

// Query 13
MATCH (p:Person {name: 'S D Amarasinghe'}), (c:Company {name: 'B P P L Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-12');

// Total queries: 13
// Generated on: 2025-10-03T01:21:50.766231
