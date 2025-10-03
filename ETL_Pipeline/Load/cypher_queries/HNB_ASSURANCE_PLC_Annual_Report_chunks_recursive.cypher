// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'HNB Assurance'}) ON CREATE SET c.id = 'hnb_assurance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'HNB Assurance'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'S A Chapman'}) ON CREATE SET p.id = 's_a_chapman';

// Query 8
MERGE (p:Person {name: 'Lasitha Wimalaratne'}) ON CREATE SET p.id = 'lasitha_wimalaratne';

// Query 9
MERGE (p:Person {name: 'A Goonesekere'}) ON CREATE SET p.id = 'a_goonesekere';

// Query 10
MERGE (p:Person {name: 'L U D Fernando'}) ON CREATE SET p.id = 'l_u_d_fernando';

// Query 11
MERGE (p:Person {name: 'L H A L Silva'}) ON CREATE SET p.id = 'l_h_a_l_silva';

// Query 12
MERGE (p:Person {name: 'P S Gamwarige'}) ON CREATE SET p.id = 'p_s_gamwarige';

// Query 13
MERGE (p:Person {name: 'P R Saldin'}) ON CREATE SET p.id = 'p_r_saldin';

// Query 14
MERGE (p:Person {name: 'A K W Jayawardane'}) ON CREATE SET p.id = 'a_k_w_jayawardane';

// Query 15
// Step 4: HOLDS_POSITION Relationships;

// Query 16
MATCH (p:Person {name: 'S A Chapman'}), (c:Company {name: 'HNB Assurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 17
MATCH (p:Person {name: 'Lasitha Wimalaratne'}), (c:Company {name: 'HNB Assurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-12-31');

// Query 18
MATCH (p:Person {name: 'A Goonesekere'}), (c:Company {name: 'HNB Assurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 19
MATCH (p:Person {name: 'L U D Fernando'}), (c:Company {name: 'HNB Assurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 20
MATCH (p:Person {name: 'L H A L Silva'}), (c:Company {name: 'HNB Assurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 21
MATCH (p:Person {name: 'P S Gamwarige'}), (c:Company {name: 'HNB Assurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 22
MATCH (p:Person {name: 'P R Saldin'}), (c:Company {name: 'HNB Assurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 23
MATCH (p:Person {name: 'A K W Jayawardane'}), (c:Company {name: 'HNB Assurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 24
// Step 5: Metrics;

// Query 25
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 28
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 29
// Step 6: HAS_METRIC Relationships;

// Query 30
MATCH (c:Company {name: 'HNB Assurance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1897000000.0, r.year = 2024;

// Query 31
MATCH (c:Company {name: 'HNB Assurance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2358470000.0, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'HNB Assurance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.0, r.year = 2024;

// Query 33
MATCH (c:Company {name: 'HNB Assurance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.65, r.year = 2024;

// Query 34
// Step 7: Sectors;

// Query 35
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 36
// Step 8: IN_SECTOR Relationships;

// Query 37
MATCH (c:Company {name: 'HNB Assurance'}), (s:Sector {name: 'Insurance'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 38
// Step 9: Products;

// Query 39
MERGE (p:Product {name: 'Life Insurance'}) ON CREATE SET p.id = 'life_insurance';

// Query 40
MERGE (p:Product {name: 'General Insurance'}) ON CREATE SET p.id = 'general_insurance';

// Query 41
MERGE (p:Product {name: 'Takaful Insurance'}) ON CREATE SET p.id = 'takaful_insurance';

// Query 42
MERGE (p:Product {name: 'Motor Insurance'}) ON CREATE SET p.id = 'motor_insurance';

// Query 43
MERGE (p:Product {name: 'Fire Insurance'}) ON CREATE SET p.id = 'fire_insurance';

// Query 44
MERGE (p:Product {name: 'Accident Insurance'}) ON CREATE SET p.id = 'accident_insurance';

// Query 45
MERGE (p:Product {name: 'Liability Insurance'}) ON CREATE SET p.id = 'liability_insurance';

// Query 46
MERGE (p:Product {name: 'Marine Insurance'}) ON CREATE SET p.id = 'marine_insurance';

// Query 47
MERGE (p:Product {name: 'Medical Insurance'}) ON CREATE SET p.id = 'medical_insurance';

// Query 48
MERGE (p:Product {name: 'Workmen Compensation Insurance'}) ON CREATE SET p.id = 'workmen_compensation_insurance';

// Query 49
MERGE (p:Product {name: 'Hybrid Vehicle Insurance'}) ON CREATE SET p.id = 'hybrid_vehicle_insurance';

// Query 50
MERGE (p:Product {name: 'Electric Vehicle Insurance'}) ON CREATE SET p.id = 'electric_vehicle_insurance';

// Query 51
// Step 10: OFFERS Relationships;

// Query 52
MATCH (c:Company {name: 'HNB Assurance'}), (p:Product {name: 'Life Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 53
MATCH (c:Company {name: 'HNB Assurance'}), (p:Product {name: 'General Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 54
MATCH (c:Company {name: 'HNB Assurance'}), (p:Product {name: 'Takaful Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 55
MATCH (c:Company {name: 'HNB Assurance'}), (p:Product {name: 'Motor Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 56
MATCH (c:Company {name: 'HNB Assurance'}), (p:Product {name: 'Fire Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 57
MATCH (c:Company {name: 'HNB Assurance'}), (p:Product {name: 'Accident Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 58
MATCH (c:Company {name: 'HNB Assurance'}), (p:Product {name: 'Liability Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 59
MATCH (c:Company {name: 'HNB Assurance'}), (p:Product {name: 'Marine Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 60
MATCH (c:Company {name: 'HNB Assurance'}), (p:Product {name: 'Medical Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 61
MATCH (c:Company {name: 'HNB Assurance'}), (p:Product {name: 'Workmen Compensation Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 62
MATCH (c:Company {name: 'HNB Assurance'}), (p:Product {name: 'Hybrid Vehicle Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 63
MATCH (c:Company {name: 'HNB Assurance'}), (p:Product {name: 'Electric Vehicle Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 64
// Step 11: Company-Company Relationships (OWNS);

// Query 65
MERGE (sub:Company {name: 'HNB General Insurance'}) ON CREATE SET sub.id = 'hnb_general_insurance', sub.region = 'Sri Lanka';

// Query 66
MATCH (parent:Company {name: 'HNB Assurance'}), (child:Company {name: 'HNB General Insurance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-12-31');

// Total queries: 66
// Generated on: 2025-10-03T02:00:48.757745
