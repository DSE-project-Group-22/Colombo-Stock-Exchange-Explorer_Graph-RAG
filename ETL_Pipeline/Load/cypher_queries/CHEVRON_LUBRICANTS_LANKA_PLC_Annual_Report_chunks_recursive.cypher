// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Chevron Lubricants Lanka'}) ON CREATE SET c.id = 'chevron_lubricants_lanka', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('1992-01-01');

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Deloitte'}) ON CREATE SET a.id = 'deloitte', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (a:Auditor {name: 'Deloitte'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Danielle Lincoln'}) ON CREATE SET p.id = 'danielle_lincoln';

// Query 8
MERGE (p:Person {name: 'Bertram Paul'}) ON CREATE SET p.id = 'bertram_paul';

// Query 9
MERGE (p:Person {name: 'Erande De Silva'}) ON CREATE SET p.id = 'erande_de_silva';

// Query 10
MERGE (p:Person {name: 'Haider Manasawala'}) ON CREATE SET p.id = 'haider_manasawala';

// Query 11
MERGE (p:Person {name: 'Asite Talwatte'}) ON CREATE SET p.id = 'asite_talwatte';

// Query 12
MERGE (p:Person {name: 'Harsha Cabral'}) ON CREATE SET p.id = 'harsha_cabral';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'Danielle Lincoln'}), (c:Company {name: 'Chevron Lubricants Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 15
MATCH (p:Person {name: 'Bertram Paul'}), (c:Company {name: 'Chevron Lubricants Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-12-31');

// Query 16
MATCH (p:Person {name: 'Bertram Paul'}), (c:Company {name: 'Chevron Lubricants Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-12-31');

// Query 17
MATCH (p:Person {name: 'Erande De Silva'}), (c:Company {name: 'Chevron Lubricants Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-12-31');

// Query 18
MATCH (p:Person {name: 'Erande De Silva'}), (c:Company {name: 'Chevron Lubricants Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-12-31');

// Query 19
MATCH (p:Person {name: 'Haider Manasawala'}), (c:Company {name: 'Chevron Lubricants Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 20
MATCH (p:Person {name: 'Asite Talwatte'}), (c:Company {name: 'Chevron Lubricants Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 21
MATCH (p:Person {name: 'Harsha Cabral'}), (c:Company {name: 'Chevron Lubricants Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 22
// Step 5: Metrics;

// Query 23
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 30
// Step 6: HAS_METRIC Relationships;

// Query 31
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22963023000, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23252503000, r.year = 2023;

// Query 33
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5531823000, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5144503000, r.year = 2023;

// Query 35
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3855445000, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3603013000, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8573616000, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8332330000, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12674717231, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11945119393, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.06, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.01, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 46.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50.0, r.year = 2023;

// Query 45
// Step 7: Sectors;

// Query 46
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 47
// Step 8: IN_SECTOR Relationships;

// Query 48
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 49
// Step 9: Products;

// Query 50
MERGE (p:Product {name: 'Lubricant Products'}) ON CREATE SET p.id = 'lubricant_products';

// Query 51
MERGE (p:Product {name: 'Greases'}) ON CREATE SET p.id = 'greases';

// Query 52
MERGE (p:Product {name: 'Brake Fluid'}) ON CREATE SET p.id = 'brake_fluid';

// Query 53
MERGE (p:Product {name: 'Specialty Products'}) ON CREATE SET p.id = 'specialty_products';

// Query 54
MERGE (p:Product {name: 'Yamaha Genuine Oil'}) ON CREATE SET p.id = 'yamaha_genuine_oil';

// Query 55
// Step 10: OFFERS Relationships;

// Query 56
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (p:Product {name: 'Lubricant Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 57
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (p:Product {name: 'Greases'}) MERGE (c)-[:OFFERS]->(p);

// Query 58
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (p:Product {name: 'Brake Fluid'}) MERGE (c)-[:OFFERS]->(p);

// Query 59
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (p:Product {name: 'Specialty Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 60
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (p:Product {name: 'Yamaha Genuine Oil'}) MERGE (c)-[:OFFERS]->(p);

// Query 61
// Step 11: Company-Company Relationships (OWNS);

// Query 62
MERGE (parent:Company {name: 'Chevron Corporation'}) ON CREATE SET parent.id = 'chevron_corporation';

// Query 63
MATCH (parent:Company {name: 'Chevron Corporation'}), (child:Company {name: 'Chevron Lubricants Lanka'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 51.0, r.as_of = date('2024-12-31');

// Total queries: 63
// Generated on: 2025-10-02T23:49:28.305162
