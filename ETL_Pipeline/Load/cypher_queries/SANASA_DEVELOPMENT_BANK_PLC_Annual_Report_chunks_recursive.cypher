// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'SANASA Development Bank'}) ON CREATE SET c.id = 'sanasa_development_bank', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'SANASA Development Bank'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2025;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Dinithi Ratnayake'}) ON CREATE SET p.id = 'dinithi_ratnayake';

// Query 8
MERGE (p:Person {name: 'Kapila Ariyaratne'}) ON CREATE SET p.id = 'kapila_ariyaratne';

// Query 9
MERGE (p:Person {name: 'Chaaminda Kumarasiri'}) ON CREATE SET p.id = 'chaaminda_kumarasiri';

// Query 10
MERGE (p:Person {name: 'Prasanna Premaratna'}) ON CREATE SET p.id = 'prasanna_premaratna';

// Query 11
MERGE (p:Person {name: 'B.R.A. Bandara'}) ON CREATE SET p.id = 'b_r_a_bandara';

// Query 12
MERGE (p:Person {name: 'Thusantha Wijemanna'}) ON CREATE SET p.id = 'thusanth_wijemanna';

// Query 13
MERGE (p:Person {name: 'Sarath Nandasiri'}) ON CREATE SET p.id = 'sarath_nandasiri';

// Query 14
MERGE (p:Person {name: 'Conrad Dias'}) ON CREATE SET p.id = 'conrad_dias';

// Query 15
MERGE (p:Person {name: 'Naveendra Sooriyarachchi'}) ON CREATE SET p.id = 'naveendra_sooriyarachchi';

// Query 16
MERGE (p:Person {name: 'Romani De Silva'}) ON CREATE SET p.id = 'romani_de_silva';

// Query 17
MERGE (p:Person {name: 'Chandana Dissanayake'}) ON CREATE SET p.id = 'chandana_dissanayake';

// Query 18
MERGE (p:Person {name: 'Amila Belpamulla'}) ON CREATE SET p.id = 'amila_belpamulla';

// Query 19
// Step 4: HOLDS_POSITION Relationships;

// Query 20
MATCH (p:Person {name: 'Dinithi Ratnayake'}), (c:Company {name: 'SANASA Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-05-30');

// Query 21
MATCH (p:Person {name: 'Kapila Ariyaratne'}), (c:Company {name: 'SANASA Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2025-05-30');

// Query 22
MATCH (p:Person {name: 'Kapila Ariyaratne'}), (c:Company {name: 'SANASA Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-05-30');

// Query 23
MATCH (p:Person {name: 'Chaaminda Kumarasiri'}), (c:Company {name: 'SANASA Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-05-30');

// Query 24
MATCH (p:Person {name: 'Prasanna Premaratna'}), (c:Company {name: 'SANASA Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-05-30');

// Query 25
MATCH (p:Person {name: 'B.R.A. Bandara'}), (c:Company {name: 'SANASA Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-05-30');

// Query 26
MATCH (p:Person {name: 'Thusantha Wijemanna'}), (c:Company {name: 'SANASA Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-05-30');

// Query 27
MATCH (p:Person {name: 'Sarath Nandasiri'}), (c:Company {name: 'SANASA Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-05-30');

// Query 28
MATCH (p:Person {name: 'Conrad Dias'}), (c:Company {name: 'SANASA Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-05-30');

// Query 29
MATCH (p:Person {name: 'Naveendra Sooriyarachchi'}), (c:Company {name: 'SANASA Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-05-30');

// Query 30
MATCH (p:Person {name: 'Romani De Silva'}), (c:Company {name: 'SANASA Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-05-30');

// Query 31
MATCH (p:Person {name: 'Chandana Dissanayake'}), (c:Company {name: 'SANASA Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-05-30');

// Query 32
MATCH (p:Person {name: 'Amila Belpamulla'}), (c:Company {name: 'SANASA Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2025-05-02');

// Query 33
// Step 5: Metrics (No explicit financial metrics found in provided chunks);

// Query 34
// Step 6: HAS_METRIC Relationships (No explicit financial metrics found in provided chunks);

// Query 35
// Step 7: Sectors;

// Query 36
MERGE (s:Sector {name: 'Banks'}) ON CREATE SET s.id = 'banks';

// Query 37
// Step 8: IN_SECTOR Relationships;

// Query 38
MATCH (c:Company {name: 'SANASA Development Bank'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 38
// Generated on: 2025-10-02T23:17:08.918861
