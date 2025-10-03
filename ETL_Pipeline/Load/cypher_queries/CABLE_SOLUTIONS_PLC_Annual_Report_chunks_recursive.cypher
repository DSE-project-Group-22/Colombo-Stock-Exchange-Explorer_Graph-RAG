// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Cable Solutions'}) ON CREATE SET c.id = 'cable_solutions', c.region = 'Sri Lanka', c.founded_on = date('2008-02-25'), c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'BDO Partners'}) ON CREATE SET a.id = 'bdo_partners', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Cable Solutions'}), (a:Auditor {name: 'BDO Partners'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Suren Madanayake'}) ON CREATE SET p.id = 'suren_madanayake';

// Query 8
MERGE (p:Person {name: 'Pawan Tejwani'}) ON CREATE SET p.id = 'pawan_tejwani';

// Query 9
MERGE (p:Person {name: 'Upali Gotabhaya Madanayake'}) ON CREATE SET p.id = 'upali_gotabhaya_madanayake';

// Query 10
MERGE (p:Person {name: 'Daya Wahalatantiri'}) ON CREATE SET p.id = 'daya_wahalatantiri';

// Query 11
MERGE (p:Person {name: 'Chehan Prasanna Richard Perera'}) ON CREATE SET p.id = 'chehan_prasanna_richard_perera';

// Query 12
MERGE (p:Person {name: 'Wijewickrama Kotigalage Gihan Nissanka Perera'}) ON CREATE SET p.id = 'wijewickrama_kotigalage_gihan_nissanka_perera';

// Query 13
MERGE (p:Person {name: 'Wickramasinghe Pathiranage Kusal Jayawardana'}) ON CREATE SET p.id = 'wickramasinghe_pathiranage_kusal_jayawardana';

// Query 14
MERGE (p:Person {name: 'Keerawelle Patabandige Padmal Mahesh Amarasiri'}) ON CREATE SET p.id = 'keerawelle_patabandige_padmal_mahesh_amarasiri';

// Query 15
MERGE (p:Person {name: 'Avishka Perera'}) ON CREATE SET p.id = 'avishka_perera';

// Query 16
// Step 4: HOLDS_POSITION Relationships;

// Query 17
MATCH (p:Person {name: 'Suren Madanayake'}), (c:Company {name: 'Cable Solutions'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'Pawan Tejwani'}), (c:Company {name: 'Cable Solutions'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'Upali Gotabhaya Madanayake'}), (c:Company {name: 'Cable Solutions'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'Daya Wahalatantiri'}), (c:Company {name: 'Cable Solutions'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Chehan Prasanna Richard Perera'}), (c:Company {name: 'Cable Solutions'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Wijewickrama Kotigalage Gihan Nissanka Perera'}), (c:Company {name: 'Cable Solutions'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Wickramasinghe Pathiranage Kusal Jayawardana'}), (c:Company {name: 'Cable Solutions'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Keerawelle Patabandige Padmal Mahesh Amarasiri'}), (c:Company {name: 'Cable Solutions'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Avishka Perera'}), (c:Company {name: 'Cable Solutions'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
// Step 5: Metrics;

// Query 27
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 33
// Step 6: HAS_METRIC Relationships;

// Query 34
MATCH (c:Company {name: 'Cable Solutions'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3324895940.0, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Cable Solutions'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 543084213.0, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Cable Solutions'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 151921527.0, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'Cable Solutions'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 651762571.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Cable Solutions'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 695721012.0, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Cable Solutions'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.41, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Cable Solutions'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1080787961.0, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Cable Solutions'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1091359926.0, r.year = 2023;

// Query 42
// Step 7: Sectors;

// Query 43
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 44
// Step 8: IN_SECTOR Relationships;

// Query 45
MATCH (c:Company {name: 'Cable Solutions'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 46
// Step 9: Product Nodes;

// Query 47
MERGE (p:Product {name: 'Cable'}) ON CREATE SET p.id = 'cable';

// Query 48
MERGE (p:Product {name: 'Related Products'}) ON CREATE SET p.id = 'related_products';

// Query 49
MERGE (p:Product {name: 'Cable Assembly'}) ON CREATE SET p.id = 'cable_assembly';

// Query 50
MERGE (p:Product {name: 'Electrical Cable'}) ON CREATE SET p.id = 'electrical_cable';

// Query 51
MERGE (p:Product {name: 'Cable Harness'}) ON CREATE SET p.id = 'cable_harness';

// Query 52
MERGE (p:Product {name: 'Related Accessory'}) ON CREATE SET p.id = 'related_accessory';

// Query 53
// Step 10: OFFERS Relationships;

// Query 54
MATCH (c:Company {name: 'Cable Solutions'}), (p:Product {name: 'Cable'}) MERGE (c)-[:OFFERS]->(p);

// Query 55
MATCH (c:Company {name: 'Cable Solutions'}), (p:Product {name: 'Related Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 56
MATCH (c:Company {name: 'Cable Solutions'}), (p:Product {name: 'Cable Assembly'}) MERGE (c)-[:OFFERS]->(p);

// Query 57
MATCH (c:Company {name: 'Cable Solutions'}), (p:Product {name: 'Electrical Cable'}) MERGE (c)-[:OFFERS]->(p);

// Query 58
MATCH (c:Company {name: 'Cable Solutions'}), (p:Product {name: 'Cable Harness'}) MERGE (c)-[:OFFERS]->(p);

// Query 59
MATCH (c:Company {name: 'Cable Solutions'}), (p:Product {name: 'Related Accessory'}) MERGE (c)-[:OFFERS]->(p);

// Query 60
// Step 11: Company-Company Relationships;

// Query 61
MERGE (parent:Company {name: 'ACL Cables'}) ON CREATE SET parent.id = 'acl_cables', parent.region = 'Sri Lanka';

// Query 62
MATCH (parent:Company {name: 'ACL Cables'}), (child:Company {name: 'Cable Solutions'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 52.64, r.as_of = date('2024-03-31');

// Query 63
MERGE (child:Company {name: 'Cable Solutions India'}) ON CREATE SET child.id = 'cable_solutions_india', child.region = 'India';

// Query 64
MATCH (parent:Company {name: 'Cable Solutions'}), (child:Company {name: 'Cable Solutions India'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 99.9, r.as_of = date('2023-01-18');

// Total queries: 64
// Generated on: 2025-10-03T00:00:17.695370
