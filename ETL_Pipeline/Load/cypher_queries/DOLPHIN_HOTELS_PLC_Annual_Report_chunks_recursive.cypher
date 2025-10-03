// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Dolphin Hotels'}) ON CREATE SET c.id = 'dolphin_hotels', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No auditor name found in the provided text.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'W D K Jayawardena'}) ON CREATE SET p.id = 'w_d_k_jayawardena';

// Query 6
MERGE (p:Person {name: 'D. S. K. Amarasekera'}) ON CREATE SET p.id = 'd_s_k_amarasekera';

// Query 7
MERGE (p:Person {name: 'Dr. J M Swaminathan'}) ON CREATE SET p.id = 'dr_j_m_swaminathan';

// Query 8
MERGE (p:Person {name: 'S. Furkhan'}) ON CREATE SET p.id = 's_furkhan';

// Query 9
MERGE (p:Person {name: 'R.L.E.C. Wijeratne'}) ON CREATE SET p.id = 'r_l_e_c_wijeratne';

// Query 10
MERGE (p:Person {name: 'J P S Kurumbalapitiya'}) ON CREATE SET p.id = 'j_p_s_kurumbalapitiya';

// Query 11
MERGE (p:Person {name: 'B S M De Silva'}) ON CREATE SET p.id = 'b_s_m_de_silva';

// Query 12
MERGE (p:Person {name: 'Mrs. K U Amarasinghe'}) ON CREATE SET p.id = 'mrs_k_u_amarasinghe';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'W D K Jayawardena'}), (c:Company {name: 'Dolphin Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'D. S. K. Amarasekera'}), (c:Company {name: 'Dolphin Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'Dr. J M Swaminathan'}), (c:Company {name: 'Dolphin Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'S. Furkhan'}), (c:Company {name: 'Dolphin Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-04-08');

// Query 18
MATCH (p:Person {name: 'R.L.E.C. Wijeratne'}), (c:Company {name: 'Dolphin Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-06-14');

// Query 19
MATCH (p:Person {name: 'R.L.E.C. Wijeratne'}), (c:Company {name: 'Dolphin Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'J P S Kurumbalapitiya'}), (c:Company {name: 'Dolphin Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'B S M De Silva'}), (c:Company {name: 'Dolphin Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Mrs. K U Amarasinghe'}), (c:Company {name: 'Dolphin Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-06-14');

// Query 23
// Step 5: Metrics;

// Query 24
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 28
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 29
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 33
// Step 6: HAS_METRIC Relationships;

// Query 34
MATCH (c:Company {name: 'Dolphin Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1311439000, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Dolphin Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 575897000, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Dolphin Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 388370000, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Dolphin Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18389000, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Dolphin Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 320017000, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Dolphin Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -103009000, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Dolphin Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.01, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Dolphin Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.42, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Dolphin Hotels'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.11, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Dolphin Hotels'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3.33, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Dolphin Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5350348000, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Dolphin Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5223399000, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Dolphin Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3404275000, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Dolphin Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3088981000, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Dolphin Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.06, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Dolphin Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.63, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Dolphin Hotels'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.67, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Dolphin Hotels'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29.97, r.year = 2023;

// Query 52
// Step 7: Sectors;

// Query 53
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 54
// Step 8: IN_SECTOR Relationships;

// Query 55
MATCH (c:Company {name: 'Dolphin Hotels'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 56
// Step 9: Product nodes creation;

// Query 57
MERGE (p:Product {name: 'Ayuwaasa Spa'}) ON CREATE SET p.id = 'ayuwaasa_spa';

// Query 58
// Step 10: OFFERS relationships;

// Query 59
MATCH (c:Company {name: 'Dolphin Hotels'}), (p:Product {name: 'Ayuwaasa Spa'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 60
// Step 11: Company-Company Relationships (OWNS, MANAGES) - No explicit ownership percentages or clear management contexts found.;

// Total queries: 60
// Generated on: 2025-10-03T02:53:18.389256
