// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Colombo Fort Land and Building'}) ON CREATE SET c.id = 'colombo_fort_land_and_building', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Colombo Fort Land and Building'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2023;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'C.P.R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 9
MERGE (p:Person {name: 'S.D.R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 10
MERGE (p:Person {name: 'A.R. Rasiah'}) ON CREATE SET p.id = 'a_r_rasiah';

// Query 11
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 12
MERGE (p:Person {name: 'A.M. de S. Jayaratne'}) ON CREATE SET p.id = 'a_m_de_s_jayaratne';

// Query 13
MERGE (p:Person {name: 'P.M.A. Sirimane'}) ON CREATE SET p.id = 'p_m_a_sirimane';

// Query 14
MERGE (p:Person {name: 'Sanjeev Rajaratnam'}) ON CREATE SET p.id = 'sanjeev_rajaratnam';

// Query 15
// Step 5: HOLDS_POSITION Relationships;

// Query 16
MATCH (p:Person {name: 'C.P.R. Perera'}), (c:Company {name: 'Colombo Fort Land and Building'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-09-27');

// Query 17
MATCH (p:Person {name: 'S.D.R. Arudpragasam'}), (c:Company {name: 'Colombo Fort Land and Building'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-09-27');

// Query 18
MATCH (p:Person {name: 'A.R. Rasiah'}), (c:Company {name: 'Colombo Fort Land and Building'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-09-27');

// Query 19
MATCH (p:Person {name: 'S. Rajaratnam'}), (c:Company {name: 'Colombo Fort Land and Building'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-09-27');

// Query 20
MATCH (p:Person {name: 'A.M. de S. Jayaratne'}), (c:Company {name: 'Colombo Fort Land and Building'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-09-27');

// Query 21
MATCH (p:Person {name: 'P.M.A. Sirimane'}), (c:Company {name: 'Colombo Fort Land and Building'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-09-27');

// Query 22
MATCH (p:Person {name: 'Sanjeev Rajaratnam'}), (c:Company {name: 'Colombo Fort Land and Building'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-09-27');

// Query 23
// Step 6: Metrics - None found that fit the standardized list;

// Query 24
// Step 7: HAS_METRIC Relationships - None found that fit the standardized list;

// Query 25
// Step 8: Sectors;

// Query 26
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 27
// Step 9: IN_SECTOR Relationships;

// Query 28
MATCH (c:Company {name: 'Colombo Fort Land and Building'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 29
// Step 10: Product nodes creation - None found;

// Query 30
// Step 11: OFFERS relationships - None found;

// Query 31
// Step 12: Company-Company Relationships;

// Query 32
MERGE (manager:Company {name: 'Corporate Managers & Secretaries'}) ON CREATE SET manager.id = 'corporate_managers_and_secretaries';

// Query 33
MATCH (manager:Company {name: 'Corporate Managers & Secretaries'}), (managed:Company {name: 'Colombo Fort Land and Building'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Company Secretary services', r.as_of = date('2023-09-04');

// Total queries: 33
// Generated on: 2025-10-03T02:17:34.866562
