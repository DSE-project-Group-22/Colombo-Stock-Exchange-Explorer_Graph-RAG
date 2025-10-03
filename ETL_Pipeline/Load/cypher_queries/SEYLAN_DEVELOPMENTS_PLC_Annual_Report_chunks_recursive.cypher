// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Seylan Developments'}) ON CREATE SET c.id = 'seylan_developments', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Seylan Developments'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'Ramesh Jayasekara'}) ON CREATE SET p.id = 'ramesh_jayasekara';

// Query 9
MERGE (p:Person {name: 'Champika Dodanwela'}) ON CREATE SET p.id = 'champika_dodanwela';

// Query 10
MERGE (p:Person {name: 'Gillian Edwards'}) ON CREATE SET p.id = 'gillian_edwards';

// Query 11
MERGE (p:Person {name: 'Najill Farouk'}) ON CREATE SET p.id = 'najill_farouk';

// Query 12
MERGE (p:Person {name: 'Tilan Wijeyesekera'}) ON CREATE SET p.id = 'tilan_wijeyesekera';

// Query 13
MERGE (p:Person {name: 'Navindra Amadoru'}) ON CREATE SET p.id = 'navindra_amadoru';

// Query 14
// Step 5: HOLDS_POSITION Relationships;

// Query 15
MATCH (p:Person {name: 'Ramesh Jayasekara'}), (c:Company {name: 'Seylan Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 16
MATCH (p:Person {name: 'Champika Dodanwela'}), (c:Company {name: 'Seylan Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 17
MATCH (p:Person {name: 'Gillian Edwards'}), (c:Company {name: 'Seylan Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-10-18');

// Query 18
MATCH (p:Person {name: 'Najill Farouk'}), (c:Company {name: 'Seylan Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-11-29');

// Query 19
MATCH (p:Person {name: 'Tilan Wijeyesekera'}), (c:Company {name: 'Seylan Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-11-29');

// Query 20
MATCH (p:Person {name: 'Navindra Amadoru'}), (c:Company {name: 'Seylan Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Operating Officer', r.as_of = date('2025-02-24');

// Query 21
// Step 6: Metrics;

// Query 22
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 29
// Step 7: HAS_METRIC Relationships (2024);

// Query 30
MATCH (c:Company {name: 'Seylan Developments'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 397130000.0, r.year = 2024;

// Query 31
MATCH (c:Company {name: 'Seylan Developments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 442880000.0, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'Seylan Developments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 350810000.0, r.year = 2024;

// Query 33
MATCH (c:Company {name: 'Seylan Developments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.48, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'Seylan Developments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6619090000.0, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Seylan Developments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5520760000.0, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Seylan Developments'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 383620000.0, r.year = 2024;

// Query 37
// Step 7: HAS_METRIC Relationships (2023);

// Query 38
MATCH (c:Company {name: 'Seylan Developments'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 387110000.0, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Seylan Developments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 445270000.0, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Seylan Developments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 353810000.0, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Seylan Developments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.50, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Seylan Developments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6549940000.0, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Seylan Developments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5469570000.0, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Seylan Developments'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 345810000.0, r.year = 2023;

// Query 45
// Step 8: Sectors;

// Query 46
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 47
// Step 9: IN_SECTOR Relationships;

// Query 48
MATCH (c:Company {name: 'Seylan Developments'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 49
// Step 10: Products;

// Query 50
MERGE (p:Product {name: 'Commercial Space Leasing'}) ON CREATE SET p.id = 'commercial_space_leasing';

// Query 51
MERGE (p:Product {name: 'Apartment Rentals'}) ON CREATE SET p.id = 'apartment_rentals';

// Query 52
// Step 11: OFFERS Relationships;

// Query 53
MATCH (c:Company {name: 'Seylan Developments'}), (p:Product {name: 'Commercial Space Leasing'}) MERGE (c)-[:OFFERS]->(p);

// Query 54
MATCH (c:Company {name: 'Seylan Developments'}), (p:Product {name: 'Apartment Rentals'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 54
// Generated on: 2025-10-03T00:56:24.171925
