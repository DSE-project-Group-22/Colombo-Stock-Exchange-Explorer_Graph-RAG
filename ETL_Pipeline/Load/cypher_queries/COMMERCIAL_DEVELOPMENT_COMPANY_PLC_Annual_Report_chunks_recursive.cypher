// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Commercial Development Company'}) ON CREATE SET c.id = 'commercial_development_company', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Commercial Development Company'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'A. L. Gooneratne'}) ON CREATE SET p.id = 'a_l_gooneratne';

// Query 8
MERGE (p:Person {name: 'S. C. U. Manatunge'}) ON CREATE SET p.id = 's_c_u_manatunge';

// Query 9
MERGE (p:Person {name: 'U. I. S. Tillakawardana'}) ON CREATE SET p.id = 'u_i_s_tillakawardana';

// Query 10
MERGE (p:Person {name: 'Dr. R. A. Attalage'}) ON CREATE SET p.id = 'dr_r_a_attalage';

// Query 11
MERGE (p:Person {name: 'P. L. P. Withana'}) ON CREATE SET p.id = 'p_l_p_withana';

// Query 12
MERGE (p:Person {name: 'N. Abeysuriya'}) ON CREATE SET p.id = 'n_abeysuriya';

// Query 13
MERGE (p:Person {name: 'L. W. P. Indrajith'}) ON CREATE SET p.id = 'l_w_p_indrajith';

// Query 14
// Step 4: HOLDS_POSITION Relationships;

// Query 15
MATCH (p:Person {name: 'A. L. Gooneratne'}), (c:Company {name: 'Commercial Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 16
MATCH (p:Person {name: 'S. C. U. Manatunge'}), (c:Company {name: 'Commercial Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 17
MATCH (p:Person {name: 'U. I. S. Tillakawardana'}), (c:Company {name: 'Commercial Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 18
MATCH (p:Person {name: 'Dr. R. A. Attalage'}), (c:Company {name: 'Commercial Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 19
MATCH (p:Person {name: 'P. L. P. Withana'}), (c:Company {name: 'Commercial Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 20
MATCH (p:Person {name: 'N. Abeysuriya'}), (c:Company {name: 'Commercial Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 21
MATCH (p:Person {name: 'L. W. P. Indrajith'}), (c:Company {name: 'Commercial Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-12-31');

// Query 22
// Step 5: Metrics;

// Query 23
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 31
// Step 6: HAS_METRIC Relationships;

// Query 32
MATCH (c:Company {name: 'Commercial Development Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 708260000.0, r.year = 2024;

// Query 33
MATCH (c:Company {name: 'Commercial Development Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 687511000.0, r.year = 2023;

// Query 34
MATCH (c:Company {name: 'Commercial Development Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 829055000.0, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Commercial Development Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 461977000.0, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Commercial Development Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 582623000.0, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Commercial Development Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 294060000.0, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Commercial Development Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4909396000.0, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Commercial Development Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4326289000.0, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Commercial Development Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4123018000.0, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Commercial Development Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3621473000.0, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Commercial Development Company'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 724984000.0, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Commercial Development Company'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 337634000.0, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Commercial Development Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48.55, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Commercial Development Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24.51, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Commercial Development Company'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.05, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Commercial Development Company'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.36, r.year = 2023;

// Query 48
// Step 7: Sectors;

// Query 49
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 50
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 51
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 52
// Step 8: IN_SECTOR Relationships;

// Query 53
MATCH (c:Company {name: 'Commercial Development Company'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 54
MATCH (c:Company {name: 'Commercial Development Company'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 55
MATCH (c:Company {name: 'Commercial Development Company'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 56
// Step 9: Products;

// Query 57
MERGE (p:Product {name: 'Property Letting'}) ON CREATE SET p.id = 'property_letting';

// Query 58
MERGE (p:Product {name: 'Outsourcing Services'}) ON CREATE SET p.id = 'outsourcing_services';

// Query 59
MERGE (p:Product {name: 'Vehicle Hiring'}) ON CREATE SET p.id = 'vehicle_hiring';

// Query 60
MERGE (p:Product {name: 'Utility Services'}) ON CREATE SET p.id = 'utility_services';

// Query 61
// Step 10: OFFERS Relationships;

// Query 62
MATCH (c:Company {name: 'Commercial Development Company'}), (p:Product {name: 'Property Letting'}) MERGE (c)-[:OFFERS]->(p);

// Query 63
MATCH (c:Company {name: 'Commercial Development Company'}), (p:Product {name: 'Outsourcing Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 64
MATCH (c:Company {name: 'Commercial Development Company'}), (p:Product {name: 'Vehicle Hiring'}) MERGE (c)-[:OFFERS]->(p);

// Query 65
MATCH (c:Company {name: 'Commercial Development Company'}), (p:Product {name: 'Utility Services'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 65
// Generated on: 2025-10-02T22:05:52.425368
