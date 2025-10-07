// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Galadari Hotels Lanka'}) ON CREATE SET c.id = 'galadari_hotels_lanka', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No explicit auditor firm name found matching the hardcoded list. Skipping auditor node and relationship.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'M A I Galadari'}) ON CREATE SET p.id = 'm_a_i_galadari';

// Query 6
MERGE (p:Person {name: 'I A I Galadari'}) ON CREATE SET p.id = 'i_a_i_galadari';

// Query 7
MERGE (p:Person {name: 'S A I H Galadari'}) ON CREATE SET p.id = 's_a_i_h_galadari';

// Query 8
MERGE (p:Person {name: 'V Radhakrishnan'}) ON CREATE SET p.id = 'v_radhakrishnan';

// Query 9
MERGE (p:Person {name: 'L R De Silva'}) ON CREATE SET p.id = 'l_r_de_silva';

// Query 10
MERGE (p:Person {name: 'J A S Felix PC'}) ON CREATE SET p.id = 'j_a_s_felix_pc';

// Query 11
MERGE (p:Person {name: 'D T Sujeewa H Mudalige'}) ON CREATE SET p.id = 'd_t_sujeewa_h_mudalige';

// Query 12
MERGE (p:Person {name: 'Rohan Dunuwille'}) ON CREATE SET p.id = 'rohan_dunuwille';

// Query 13
MERGE (p:Person {name: 'M G U Perera'}) ON CREATE SET p.id = 'm_g_u_perera';

// Query 14
// Step 4: HOLDS_POSITION Relationships;

// Query 15
MATCH (p:Person {name: 'M A I Galadari'}), (c:Company {name: 'Galadari Hotels Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 16
MATCH (p:Person {name: 'I A I Galadari'}), (c:Company {name: 'Galadari Hotels Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 17
MATCH (p:Person {name: 'S A I H Galadari'}), (c:Company {name: 'Galadari Hotels Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 18
MATCH (p:Person {name: 'V Radhakrishnan'}), (c:Company {name: 'Galadari Hotels Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 19
MATCH (p:Person {name: 'L R De Silva'}), (c:Company {name: 'Galadari Hotels Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 20
MATCH (p:Person {name: 'J A S Felix PC'}), (c:Company {name: 'Galadari Hotels Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 21
MATCH (p:Person {name: 'D T Sujeewa H Mudalige'}), (c:Company {name: 'Galadari Hotels Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 22
MATCH (p:Person {name: 'Rohan Dunuwille'}), (c:Company {name: 'Galadari Hotels Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 23
MATCH (p:Person {name: 'M G U Perera'}), (c:Company {name: 'Galadari Hotels Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Financial Controller', r.as_of = date('2024-12-31');

// Query 24
// Step 5: Metrics;

// Query 25
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 30
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 31
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 33
// Step 6: HAS_METRIC Relationships;

// Query 34
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1060709448, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1606029441, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -249904505, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 292466956, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -126759363, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 153688691, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.25, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.31, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.25, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.24, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30.0, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3.0, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7251141926, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8661143219, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -489055882, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -261172811, r.year = 2023;

// Query 50
// Step 7: Sectors;

// Query 51
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 52
// Step 8: IN_SECTOR Relationships;

// Query 53
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 54
// Step 9: Product nodes creation;

// Query 55
MERGE (p:Product {name: 'Room Service'}) ON CREATE SET p.id = 'room_service';

// Query 56
MERGE (p:Product {name: 'Food and Beverage Service'}) ON CREATE SET p.id = 'food_and_beverage_service';

// Query 57
MERGE (p:Product {name: 'Rental Service'}) ON CREATE SET p.id = 'rental_service';

// Query 58
MERGE (p:Product {name: 'Other Hotel Services'}) ON CREATE SET p.id = 'other_hotel_services';

// Query 59
// Step 10: OFFERS relationships;

// Query 60
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (p:Product {name: 'Room Service'}) MERGE (c)-[:OFFERS]->(p);

// Query 61
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (p:Product {name: 'Food and Beverage Service'}) MERGE (c)-[:OFFERS]->(p);

// Query 62
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (p:Product {name: 'Rental Service'}) MERGE (c)-[:OFFERS]->(p);

// Query 63
MATCH (c:Company {name: 'Galadari Hotels Lanka'}), (p:Product {name: 'Other Hotel Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 64
// Step 11: Company-Company Relationships (OWNS, MANAGES);

// Query 65
// Parent company 'Galadari Brothers Co. (LLC)' and ultimate parent 'Abdul Latif Galadari Holdings Limited' are mentioned, but no ownership percentage is provided. Skipping OWNS relationship as per rules.;

// Total queries: 65
// Generated on: 2025-10-03T00:13:31.396890
