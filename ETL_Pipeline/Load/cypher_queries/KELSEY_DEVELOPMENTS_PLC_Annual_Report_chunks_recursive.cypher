// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Kelsey Developments'}) ON CREATE SET c.id = 'kelsey_developments', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No explicit auditor information found.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Sivarajah Thumilan'}) ON CREATE SET p.id = 'sivarajah_thumilan';

// Query 6
MERGE (p:Person {name: 'Surane Thumilan'}) ON CREATE SET p.id = 'surane_thumilan';

// Query 7
MERGE (p:Person {name: 'Wasantha Kumara Galagoda'}) ON CREATE SET p.id = 'wasantha_kumara_galagoda';

// Query 8
MERGE (p:Person {name: 'Namal Godallawattage'}) ON CREATE SET p.id = 'namal_godallawattage';

// Query 9
MERGE (p:Person {name: 'B Gamini Peiris'}) ON CREATE SET p.id = 'b_gamini_peiris';

// Query 10
MERGE (p:Person {name: 'A M A Cader'}) ON CREATE SET p.id = 'a_m_a_cader';

// Query 11
MERGE (p:Person {name: 'W A Adrian Perera'}) ON CREATE SET p.id = 'w_a_adrian_perera';

// Query 12
MERGE (p:Person {name: 'R P K Gallage'}) ON CREATE SET p.id = 'r_p_k_gallage';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'Sivarajah Thumilan'}), (c:Company {name: 'Kelsey Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 15
MATCH (p:Person {name: 'Surane Thumilan'}), (c:Company {name: 'Kelsey Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 16
MATCH (p:Person {name: 'Wasantha Kumara Galagoda'}), (c:Company {name: 'Kelsey Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 17
MATCH (p:Person {name: 'Namal Godallawattage'}), (c:Company {name: 'Kelsey Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 18
MATCH (p:Person {name: 'B Gamini Peiris'}), (c:Company {name: 'Kelsey Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 19
MATCH (p:Person {name: 'A M A Cader'}), (c:Company {name: 'Kelsey Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 20
MATCH (p:Person {name: 'W A Adrian Perera'}), (c:Company {name: 'Kelsey Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 21
MATCH (p:Person {name: 'R P K Gallage'}), (c:Company {name: 'Kelsey Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 22
// Step 5: Metrics - No explicit financial metrics with values found.;

// Query 23
// Step 6: HAS_METRIC Relationships - No explicit financial metrics with values found.;

// Query 24
// Step 7: Sectors;

// Query 25
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 26
// Step 8: IN_SECTOR Relationships;

// Query 27
MATCH (c:Company {name: 'Kelsey Developments'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 28
// Step 9: Products;

// Query 29
MERGE (p:Product {name: 'Property Development'}) ON CREATE SET p.id = 'property_development';

// Query 30
// Step 10: OFFERS Relationships;

// Query 31
MATCH (c:Company {name: 'Kelsey Developments'}), (p:Product {name: 'Property Development'}) MERGE (c)-[:OFFERS]->(p);

// Query 32
// Step 11: Company-Company Relationships (OWNS, MANAGES);

// Query 33
// OWNS_SHARES (Person to Company);

// Query 34
MATCH (p:Person {name: 'Sivarajah Thumilan'}), (c:Company {name: 'Kelsey Developments'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 6169, r.pct = 0.03, r.as_of = date('2024-12-31');

// Total queries: 34
// Generated on: 2025-10-03T00:38:50.279046
