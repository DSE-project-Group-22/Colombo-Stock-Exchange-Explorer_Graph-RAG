// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Hela Apparel Holdings'}) ON CREATE SET c.id = 'hela_apparel_holdings', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Deloitte'}) ON CREATE SET a.id = 'deloitte', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Hela Apparel Holdings'}), (a:Auditor {name: 'Deloitte'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'A R Rasiah'}) ON CREATE SET p.id = 'a_r_rasiah';

// Query 8
MERGE (p:Person {name: 'Shlomo Doron'}) ON CREATE SET p.id = 'shlomo_doron';

// Query 9
MERGE (p:Person {name: 'Adam Collins'}) ON CREATE SET p.id = 'adam_collins';

// Query 10
MERGE (p:Person {name: 'J Kuhanesan'}) ON CREATE SET p.id = 'j_kuhanesan';

// Query 11
// Step 4: HOLDS_POSITION Relationships;

// Query 12
MATCH (p:Person {name: 'A R Rasiah'}), (c:Company {name: 'Hela Apparel Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 13
MATCH (p:Person {name: 'Shlomo Doron'}), (c:Company {name: 'Hela Apparel Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 14
MATCH (p:Person {name: 'Adam Collins'}), (c:Company {name: 'Hela Apparel Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-09-30');

// Query 15
MATCH (p:Person {name: 'J Kuhanesan'}), (c:Company {name: 'Hela Apparel Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-09-04');

// Query 16
// Step 5: Metrics (No explicit financial metrics found in the provided chunks);

// Query 17
// Step 6: HAS_METRIC Relationships (No explicit financial metrics found in the provided chunks);

// Query 18
// Step 7: Sectors;

// Query 19
MERGE (s:Sector {name: 'Consumer Durables and Apparel'}) ON CREATE SET s.id = 'consumer_durables_and_apparel';

// Query 20
// Step 8: IN_SECTOR Relationships;

// Query 21
MATCH (c:Company {name: 'Hela Apparel Holdings'}), (s:Sector {name: 'Consumer Durables and Apparel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 21
// Generated on: 2025-10-03T02:52:20.398697
