// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Kelani Cables'}) ON CREATE SET c.id = 'kelani_cables', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Kelani Cables'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'U.G. Madanayake'}) ON CREATE SET p.id = 'u_g_madanayake';

// Query 9
MERGE (p:Person {name: 'Suren Madanayake'}) ON CREATE SET p.id = 'suren_madanayake';

// Query 10
MERGE (p:Person {name: 'Mahinda Saranapala'}) ON CREATE SET p.id = 'mahinda_saranapala';

// Query 11
MERGE (p:Person {name: 'N.C. Madanayake'}) ON CREATE SET p.id = 'n_c_madanayake';

// Query 12
MERGE (p:Person {name: 'Bandula Perera'}) ON CREATE SET p.id = 'bandula_perera';

// Query 13
MERGE (p:Person {name: 'Deepal Sooriyaarachchi'}) ON CREATE SET p.id = 'deepal_sooriyaarachchi';

// Query 14
MERGE (p:Person {name: 'Ajit Jayaratne'}) ON CREATE SET p.id = 'ajit_jayaratne';

// Query 15
MERGE (p:Person {name: 'Rajiv Casie Chitty'}) ON CREATE SET p.id = 'rajiv_casie_chitty';

// Query 16
// Step 5: HOLDS_POSITION Relationships;

// Query 17
MATCH (p:Person {name: 'U.G. Madanayake'}), (c:Company {name: 'Kelani Cables'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'Suren Madanayake'}), (c:Company {name: 'Kelani Cables'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'Mahinda Saranapala'}), (c:Company {name: 'Kelani Cables'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'N.C. Madanayake'}), (c:Company {name: 'Kelani Cables'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Bandula Perera'}), (c:Company {name: 'Kelani Cables'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Deepal Sooriyaarachchi'}), (c:Company {name: 'Kelani Cables'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Ajit Jayaratne'}), (c:Company {name: 'Kelani Cables'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Rajiv Casie Chitty'}), (c:Company {name: 'Kelani Cables'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
// Step 6: Metrics;

// Query 26
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 31
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 33
// Step 7: HAS_METRIC Relationships;

// Query 34
MATCH (c:Company {name: 'Kelani Cables'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13997000000.0, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Kelani Cables'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11463000000.0, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Kelani Cables'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1724000000.0, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Kelani Cables'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2787000000.0, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Kelani Cables'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2429000000.0, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Kelani Cables'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3532000000.0, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Kelani Cables'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 79.08, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Kelani Cables'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 127.84, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Kelani Cables'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.0, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Kelani Cables'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 35.0, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Kelani Cables'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14117000000.0, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Kelani Cables'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11172366639.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Kelani Cables'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9334691791.0, r.year = 2023;

// Query 47
// Step 8: Sectors;

// Query 48
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 49
MERGE (s:Sector {name: 'Utilities'}) ON CREATE SET s.id = 'utilities';

// Query 50
MERGE (s:Sector {name: 'Telecommunication Services'}) ON CREATE SET s.id = 'telecommunication_services';

// Query 51
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 52
// Step 9: IN_SECTOR Relationships;

// Query 53
MATCH (c:Company {name: 'Kelani Cables'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 54
MATCH (c:Company {name: 'Kelani Cables'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 55
MATCH (c:Company {name: 'Kelani Cables'}), (s:Sector {name: 'Telecommunication Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 56
MATCH (c:Company {name: 'Kelani Cables'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 57
// Step 10: Products;

// Query 58
MERGE (p:Product {name: 'Power cables'}) ON CREATE SET p.id = 'power_cables';

// Query 59
MERGE (p:Product {name: 'Telecommunication cables'}) ON CREATE SET p.id = 'telecommunication_cables';

// Query 60
MERGE (p:Product {name: 'Enameled winding wires'}) ON CREATE SET p.id = 'enameled_winding_wires';

// Query 61
MERGE (p:Product {name: 'Electrical products and accessories'}) ON CREATE SET p.id = 'electrical_products_and_accessories';

// Query 62
// Step 11: OFFERS Relationships;

// Query 63
MATCH (c:Company {name: 'Kelani Cables'}), (p:Product {name: 'Power cables'}) MERGE (c)-[:OFFERS]->(p);

// Query 64
MATCH (c:Company {name: 'Kelani Cables'}), (p:Product {name: 'Telecommunication cables'}) MERGE (c)-[:OFFERS]->(p);

// Query 65
MATCH (c:Company {name: 'Kelani Cables'}), (p:Product {name: 'Enameled winding wires'}) MERGE (c)-[:OFFERS]->(p);

// Query 66
MATCH (c:Company {name: 'Kelani Cables'}), (p:Product {name: 'Electrical products and accessories'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 66
// Generated on: 2025-10-03T01:58:31.724268
