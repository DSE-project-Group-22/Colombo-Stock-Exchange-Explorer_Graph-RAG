// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Office Equipment'}) ON CREATE SET c.id = 'office_equipment', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - 'MGI SL Assurance Partners' not in hardcoded list, skipping auditor node and relationship.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'L. I. Ratnasabapathy'}) ON CREATE SET p.id = 'l_i_ratnasabapathy';

// Query 6
MERGE (p:Person {name: 'A. M. De Alwis'}) ON CREATE SET p.id = 'a_m_de_alwis';

// Query 7
MERGE (p:Person {name: 'Anthony A. Page'}) ON CREATE SET p.id = 'anthony_a_page';

// Query 8
MERGE (p:Person {name: 'P. S. R. Casie Chitty'}) ON CREATE SET p.id = 'p_s_r_casie_chitty';

// Query 9
MERGE (p:Person {name: 'M. M. Marzook'}) ON CREATE SET p.id = 'm_m_marzook';

// Query 10
MERGE (p:Person {name: 'M. R. Y. Riffai'}) ON CREATE SET p.id = 'm_r_y_riffai';

// Query 11
MERGE (p:Person {name: 'D. T. De Alwis'}) ON CREATE SET p.id = 'd_t_de_alwis';

// Query 12
MERGE (p:Person {name: 'L. C. G. Ratnanther'}) ON CREATE SET p.id = 'l_c_g_ratnanther';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'L. I. Ratnasabapathy'}), (c:Company {name: 'Office Equipment'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'L. I. Ratnasabapathy'}), (c:Company {name: 'Office Equipment'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'L. I. Ratnasabapathy'}), (c:Company {name: 'Office Equipment'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'A. M. De Alwis'}), (c:Company {name: 'Office Equipment'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'Anthony A. Page'}), (c:Company {name: 'Office Equipment'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'P. S. R. Casie Chitty'}), (c:Company {name: 'Office Equipment'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'M. M. Marzook'}), (c:Company {name: 'Office Equipment'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'M. R. Y. Riffai'}), (c:Company {name: 'Office Equipment'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'D. T. De Alwis'}), (c:Company {name: 'Office Equipment'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'L. C. G. Ratnanther'}), (c:Company {name: 'Office Equipment'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 24
// Step 5: Metric Nodes;

// Query 25
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 31
// Step 6: HAS_METRIC Relationships;

// Query 32
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 62096612.0, r.year = 2024;

// Query 33
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 66795854.0, r.year = 2023;

// Query 34
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 75055019.0, r.year = 2022;

// Query 35
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 55409136.0, r.year = 2021;

// Query 36
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78161483.0, r.year = 2020;

// Query 37
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4194739.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4285873.0, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13293819.0, r.year = 2022;

// Query 40
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4806311.0, r.year = 2021;

// Query 41
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27682.0, r.year = 2020;

// Query 42
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5667631.0, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 562295.0, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17555798.0, r.year = 2022;

// Query 45
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1411617.0, r.year = 2021;

// Query 46
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4001209.0, r.year = 2020;

// Query 47
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45175075.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 49966962.0, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 53062826.0, r.year = 2022;

// Query 50
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39565640.0, r.year = 2021;

// Query 51
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33724854.0, r.year = 2020;

// Query 52
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45175075.0, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 49966962.0, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 53062826.0, r.year = 2022;

// Query 55
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39565640.0, r.year = 2021;

// Query 56
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33724854.0, r.year = 2020;

// Query 57
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.03, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.14, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.95, r.year = 2022;

// Query 60
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.77, r.year = 2021;

// Query 61
MATCH (c:Company {name: 'Office Equipment'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.03, r.year = 2020;

// Query 62
// Step 7: Sector Nodes;

// Query 63
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 64
// Step 8: IN_SECTOR Relationships;

// Query 65
MATCH (c:Company {name: 'Office Equipment'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 66
// Step 9: Product Nodes;

// Query 67
MERGE (p:Product {name: 'Cash and Coin Handling Solutions'}) ON CREATE SET p.id = 'cash_and_coin_handling_solutions';

// Query 68
MERGE (p:Product {name: 'Time Recording Systems'}) ON CREATE SET p.id = 'time_recording_systems';

// Query 69
MERGE (p:Product {name: 'Computer Hardware'}) ON CREATE SET p.id = 'computer_hardware';

// Query 70
MERGE (p:Product {name: 'Software'}) ON CREATE SET p.id = 'software';

// Query 71
MERGE (p:Product {name: 'Outsource Services'}) ON CREATE SET p.id = 'outsource_services';

// Query 72
// Step 10: OFFERS Relationships;

// Query 73
MATCH (c:Company {name: 'Office Equipment'}), (p:Product {name: 'Cash and Coin Handling Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'Office Equipment'}), (p:Product {name: 'Time Recording Systems'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
// Step 11: Company-Company Relationships (OWNS);

// Query 76
MERGE (sub:Company {name: 'International Computers (Ceylon)'}) ON CREATE SET sub.id = 'international_computers_ceylon';

// Query 77
MATCH (parent:Company {name: 'Office Equipment'}), (child:Company {name: 'International Computers (Ceylon)'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 99.99, r.as_of = date('2024-03-31');

// Query 78
MATCH (c:Company {name: 'International Computers (Ceylon)'}), (p:Product {name: 'Computer Hardware'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'International Computers (Ceylon)'}), (p:Product {name: 'Software'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'International Computers (Ceylon)'}), (p:Product {name: 'Outsource Services'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 80
// Generated on: 2025-10-02T22:52:47.747469
