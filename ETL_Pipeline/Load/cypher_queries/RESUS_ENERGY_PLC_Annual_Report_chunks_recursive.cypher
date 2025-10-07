// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Resus Energy'}) ON CREATE SET c.id = 'resus_energy', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No specific auditor firm name found in the provided text.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'H A S Madanayake'}) ON CREATE SET p.id = 'h_a_s_madanayake';

// Query 6
MERGE (p:Person {name: 'G A K Nanayakkara'}) ON CREATE SET p.id = 'g_a_k_nanayakkara';

// Query 7
MERGE (p:Person {name: 'K A M K Ranasinghe'}) ON CREATE SET p.id = 'k_a_m_k_ranasinghe';

// Query 8
MERGE (p:Person {name: 'U P Egalahewa'}) ON CREATE SET p.id = 'u_p_egalahewa';

// Query 9
MERGE (p:Person {name: 'D C Abeyawardena'}) ON CREATE SET p.id = 'd_c_abeyawardena';

// Query 10
MERGE (p:Person {name: 'U G Madanayake'}) ON CREATE SET p.id = 'u_g_madanayake';

// Query 11
MERGE (p:Person {name: 'K P P M Amarasiri'}) ON CREATE SET p.id = 'k_p_p_m_amarasiri';

// Query 12
// Step 4: HOLDS_POSITION Relationships;

// Query 13
MATCH (p:Person {name: 'H A S Madanayake'}), (c:Company {name: 'Resus Energy'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 14
MATCH (p:Person {name: 'G A K Nanayakkara'}), (c:Company {name: 'Resus Energy'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'K A M K Ranasinghe'}), (c:Company {name: 'Resus Energy'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'U P Egalahewa'}), (c:Company {name: 'Resus Energy'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'D C Abeyawardena'}), (c:Company {name: 'Resus Energy'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'U G Madanayake'}), (c:Company {name: 'Resus Energy'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'K P P M Amarasiri'}), (c:Company {name: 'Resus Energy'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 20
// Step 5: Metrics - No specific financial metric values found in the provided text.;

// Query 21
// Step 6: HAS_METRIC Relationships - No specific financial metric values found in the provided text.;

// Query 22
// Step 7: Sectors;

// Query 23
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 24
// Step 8: IN_SECTOR Relationships;

// Query 25
MATCH (c:Company {name: 'Resus Energy'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 25
// Generated on: 2025-10-03T03:37:31.424767
