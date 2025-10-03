// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Sathosa Motors'}) ON CREATE SET c.id = 'sathosa_motors', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Sathosa Motors'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'J C Joshua'}) ON CREATE SET p.id = 'j_c_joshua';

// Query 8
MERGE (p:Person {name: 'M Jayahsuriya'}) ON CREATE SET p.id = 'm_jayahsuriya';

// Query 9
MERGE (p:Person {name: 'I S N Fernando'}) ON CREATE SET p.id = 'i_s_n_fernando';

// Query 10
MERGE (p:Person {name: 'S J S Perera'}) ON CREATE SET p.id = 's_j_s_perera';

// Query 11
MERGE (p:Person {name: 'S D Munasinghe'}) ON CREATE SET p.id = 's_d_munasinghe';

// Query 12
MERGE (p:Person {name: 'D A R Fernando'}) ON CREATE SET p.id = 'd_a_r_fernando';

// Query 13
MERGE (p:Person {name: 'M M N de Silva'}) ON CREATE SET p.id = 'm_m_n_de_silva';

// Query 14
MERGE (p:Person {name: 'W A C O Wijesinghe'}) ON CREATE SET p.id = 'w_a_c_o_wijesinghe';

// Query 15
MERGE (p:Person {name: 'R S Dahanayake'}) ON CREATE SET p.id = 'r_s_dahanayake';

// Query 16
// Step 4: HOLDS_POSITION Relationships;

// Query 17
MATCH (p:Person {name: 'J C Joshua'}), (c:Company {name: 'Sathosa Motors'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'M Jayahsuriya'}), (c:Company {name: 'Sathosa Motors'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'I S N Fernando'}), (c:Company {name: 'Sathosa Motors'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'S J S Perera'}), (c:Company {name: 'Sathosa Motors'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'S D Munasinghe'}), (c:Company {name: 'Sathosa Motors'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'D A R Fernando'}), (c:Company {name: 'Sathosa Motors'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'M M N de Silva'}), (c:Company {name: 'Sathosa Motors'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'W A C O Wijesinghe'}), (c:Company {name: 'Sathosa Motors'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'R S Dahanayake'}), (c:Company {name: 'Sathosa Motors'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
// Step 5: Metrics;

// Query 27
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 33
// Step 6: HAS_METRIC Relationships;

// Query 34
MATCH (c:Company {name: 'Sathosa Motors'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 982222000.0, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Sathosa Motors'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 73164000.0, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Sathosa Motors'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 51759000.0, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Sathosa Motors'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.58, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Sathosa Motors'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2958463000.0, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Sathosa Motors'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1693238000.0, r.year = 2024;

// Query 40
// Step 7: Sectors;

// Query 41
MERGE (s:Sector {name: 'Automobiles and Components'}) ON CREATE SET s.id = 'automobiles_and_components';

// Query 42
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 43
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 44
// Step 8: IN_SECTOR Relationships;

// Query 45
MATCH (c:Company {name: 'Sathosa Motors'}), (s:Sector {name: 'Automobiles and Components'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 46
MATCH (c:Company {name: 'Sathosa Motors'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 47
MATCH (c:Company {name: 'Sathosa Motors'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 48
// Step 9: Products;

// Query 49
MERGE (p:Product {name: 'Vehicle Sales'}) ON CREATE SET p.id = 'vehicle_sales';

// Query 50
MERGE (p:Product {name: 'Marine Engine Sales'}) ON CREATE SET p.id = 'marine_engine_sales';

// Query 51
MERGE (p:Product {name: 'Spare Parts Sales'}) ON CREATE SET p.id = 'spare_parts_sales';

// Query 52
MERGE (p:Product {name: 'Workshop Repair & Services'}) ON CREATE SET p.id = 'workshop_repair_and_services';

// Query 53
// Step 10: OFFERS Relationships;

// Query 54
MATCH (c:Company {name: 'Sathosa Motors'}), (p:Product {name: 'Vehicle Sales'}) MERGE (c)-[:OFFERS]->(p);

// Query 55
MATCH (c:Company {name: 'Sathosa Motors'}), (p:Product {name: 'Marine Engine Sales'}) MERGE (c)-[:OFFERS]->(p);

// Query 56
MATCH (c:Company {name: 'Sathosa Motors'}), (p:Product {name: 'Spare Parts Sales'}) MERGE (c)-[:OFFERS]->(p);

// Query 57
MATCH (c:Company {name: 'Sathosa Motors'}), (p:Product {name: 'Workshop Repair & Services'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 57
// Generated on: 2025-10-03T03:00:09.014752
