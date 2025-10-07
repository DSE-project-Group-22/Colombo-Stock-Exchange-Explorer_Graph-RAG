// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Greentech Energy'}) ON CREATE SET c.id = 'greentech_energy', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No recognized auditor found in the hardcoded list. Skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Dr. Chrisantha Nicholas Anthony Nonis'}) ON CREATE SET p.id = 'dr_chrisantha_nicholas_anthony_nonis';

// Query 6
MERGE (p:Person {name: 'Dr. Hassan Shafeeu'}) ON CREATE SET p.id = 'dr_hassan_shafeeu';

// Query 7
MERGE (p:Person {name: 'Mr. C. H. Munasinghe'}) ON CREATE SET p.id = 'mr_c_h_munasinghe';

// Query 8
MERGE (p:Person {name: 'Mr. I. C. K. Perera'}) ON CREATE SET p.id = 'mr_i_c_k_perera';

// Query 9
MERGE (p:Person {name: 'Mr. S. D. N. K. Gajasinghe'}) ON CREATE SET p.id = 'mr_s_d_n_k_gajasinghe';

// Query 10
MERGE (p:Person {name: 'S. P. Jayasekera'}) ON CREATE SET p.id = 's_p_jayasekera';

// Query 11
// Step 4: HOLDS_POSITION Relationships;

// Query 12
MATCH (p:Person {name: 'Dr. Chrisantha Nicholas Anthony Nonis'}), (c:Company {name: 'Greentech Energy'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 13
MATCH (p:Person {name: 'Dr. Hassan Shafeeu'}), (c:Company {name: 'Greentech Energy'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 14
MATCH (p:Person {name: 'Mr. C. H. Munasinghe'}), (c:Company {name: 'Greentech Energy'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'Mr. I. C. K. Perera'}), (c:Company {name: 'Greentech Energy'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'Mr. S. D. N. K. Gajasinghe'}), (c:Company {name: 'Greentech Energy'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'S. P. Jayasekera'}), (c:Company {name: 'Greentech Energy'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 18
// Step 5: Metrics;

// Query 19
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 24
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 25
// Step 6: HAS_METRIC Relationships;

// Query 26
MATCH (c:Company {name: 'Greentech Energy'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20656000.0, r.year = 2024;

// Query 27
MATCH (c:Company {name: 'Greentech Energy'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16070000.0, r.year = 2023;

// Query 28
MATCH (c:Company {name: 'Greentech Energy'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 288882000.0, r.year = 2024;

// Query 29
MATCH (c:Company {name: 'Greentech Energy'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 286447000.0, r.year = 2023;

// Query 30
MATCH (c:Company {name: 'Greentech Energy'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 301538000.0, r.year = 2024;

// Query 31
MATCH (c:Company {name: 'Greentech Energy'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 309296000.0, r.year = 2023;

// Query 32
MATCH (c:Company {name: 'Greentech Energy'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.08, r.year = 2024;

// Query 33
MATCH (c:Company {name: 'Greentech Energy'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.01, r.year = 2023;

// Query 34
MATCH (c:Company {name: 'Greentech Energy'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20.62, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Greentech Energy'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.70, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Greentech Energy'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2760587.0, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Greentech Energy'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 903122.0, r.year = 2023;

// Query 38
// Step 7: Sectors;

// Query 39
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 40
// Step 8: IN_SECTOR Relationships;

// Query 41
MATCH (c:Company {name: 'Greentech Energy'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 42
// Step 9: Products;

// Query 43
MERGE (p:Product {name: 'Energy Solutions'}) ON CREATE SET p.id = 'energy_solutions';

// Query 44
MERGE (p:Product {name: 'Renewable Energy Projects'}) ON CREATE SET p.id = 'renewable_energy_projects';

// Query 45
MERGE (p:Product {name: 'Solar Energy'}) ON CREATE SET p.id = 'solar_energy';

// Query 46
// Step 10: OFFERS Relationships;

// Query 47
MATCH (c:Company {name: 'Greentech Energy'}), (p:Product {name: 'Energy Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 48
MATCH (c:Company {name: 'Greentech Energy'}), (p:Product {name: 'Renewable Energy Projects'}) MERGE (c)-[:OFFERS]->(p);

// Query 49
MATCH (c:Company {name: 'Greentech Energy'}), (p:Product {name: 'Solar Energy'}) MERGE (c)-[:OFFERS]->(p);

// Query 50
// Step 11: Company-Company Relationships - No valid OWNS or MANAGES relationships found.;

// Total queries: 50
// Generated on: 2025-10-03T03:08:53.523323
