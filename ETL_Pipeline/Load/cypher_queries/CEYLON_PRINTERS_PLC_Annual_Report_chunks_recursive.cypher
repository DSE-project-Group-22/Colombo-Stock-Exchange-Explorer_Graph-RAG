// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Ceylon Printers'}) ON CREATE SET c.id = 'ceylon_printers', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - Skipped as 'MGI SL Assurance Partners' is not in the hardcoded list.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'L I Ratnasabapathy'}) ON CREATE SET p.id = 'l_i_ratnasabapathy';

// Query 6
MERGE (p:Person {name: 'A M De Alwis'}) ON CREATE SET p.id = 'a_m_de_alwis';

// Query 7
MERGE (p:Person {name: 'Anthony A Page'}) ON CREATE SET p.id = 'anthony_a_page';

// Query 8
MERGE (p:Person {name: 'P.S.R Casie Chitty'}) ON CREATE SET p.id = 'p_s_r_casie_chitty';

// Query 9
MERGE (p:Person {name: 'M.M Marzook'}) ON CREATE SET p.id = 'm_m_marzook';

// Query 10
MERGE (p:Person {name: 'M.R.Y. Riffai'}) ON CREATE SET p.id = 'm_r_y_riffai';

// Query 11
MERGE (p:Person {name: 'D.T. De Alwis'}) ON CREATE SET p.id = 'd_t_de_alwis';

// Query 12
MERGE (p:Person {name: 'M. S. A. Kariapper'}) ON CREATE SET p.id = 'm_s_a_kariapper';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'L I Ratnasabapathy'}), (c:Company {name: 'Ceylon Printers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'L I Ratnasabapathy'}), (c:Company {name: 'Ceylon Printers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'A M De Alwis'}), (c:Company {name: 'Ceylon Printers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Anthony A Page'}), (c:Company {name: 'Ceylon Printers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'P.S.R Casie Chitty'}), (c:Company {name: 'Ceylon Printers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'M.M Marzook'}), (c:Company {name: 'Ceylon Printers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'M.R.Y. Riffai'}), (c:Company {name: 'Ceylon Printers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-12-01');

// Query 21
MATCH (p:Person {name: 'D.T. De Alwis'}), (c:Company {name: 'Ceylon Printers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-12-01');

// Query 22
MATCH (p:Person {name: 'M. S. A. Kariapper'}), (c:Company {name: 'Ceylon Printers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-08-29');

// Query 23
// Step 5: Metric Nodes;

// Query 24
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 30
// Step 6: HAS_METRIC Relationships;

// Query 31
MATCH (c:Company {name: 'Ceylon Printers'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8316079, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'Ceylon Printers'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 84106950, r.year = 2023;

// Query 33
MATCH (c:Company {name: 'Ceylon Printers'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5556801, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'Ceylon Printers'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -8651315, r.year = 2023;

// Query 35
MATCH (c:Company {name: 'Ceylon Printers'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5403238, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Ceylon Printers'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -9407919, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'Ceylon Printers'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -9.60, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Ceylon Printers'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -15.68, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Ceylon Printers'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6362851, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Ceylon Printers'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42953068, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Ceylon Printers'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28027742, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Ceylon Printers'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -18136692, r.year = 2023;

// Query 43
// Step 7: Sectors;

// Query 44
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 45
// Step 8: IN_SECTOR Relationships;

// Query 46
MATCH (c:Company {name: 'Ceylon Printers'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 47
// Step 9: Product Nodes;

// Query 48
MERGE (p:Product {name: 'Commercial Printing'}) ON CREATE SET p.id = 'commercial_printing';

// Query 49
MERGE (p:Product {name: 'ATM cards'}) ON CREATE SET p.id = 'atm_cards';

// Query 50
MERGE (p:Product {name: 'Credit cards'}) ON CREATE SET p.id = 'credit_cards';

// Query 51
MERGE (p:Product {name: 'PIN mailers'}) ON CREATE SET p.id = 'pin_mailers';

// Query 52
// Step 10: OFFERS Relationships;

// Query 53
MATCH (c:Company {name: 'Ceylon Printers'}), (p:Product {name: 'Commercial Printing'}) MERGE (c)-[:OFFERS]->(p);

// Query 54
MATCH (c:Company {name: 'Ceylon Printers'}), (p:Product {name: 'ATM cards'}) MERGE (c)-[:OFFERS]->(p);

// Query 55
MATCH (c:Company {name: 'Ceylon Printers'}), (p:Product {name: 'Credit cards'}) MERGE (c)-[:OFFERS]->(p);

// Query 56
MATCH (c:Company {name: 'Ceylon Printers'}), (p:Product {name: 'PIN mailers'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 56
// Generated on: 2025-10-03T00:21:09.129884
