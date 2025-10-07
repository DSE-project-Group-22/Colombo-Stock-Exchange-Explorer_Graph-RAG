// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Namunukula Plantations'}) ON CREATE SET c.id = 'namunukula_plantations', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No explicit auditor name found matching hardcoded list, skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Dr. S. Yaddehige'}) ON CREATE SET p.id = 'dr_s_yaddehige';

// Query 6
MERGE (p:Person {name: 'Mr. N. C. Peiris'}) ON CREATE SET p.id = 'mr_n_c_peiris';

// Query 7
MERGE (p:Person {name: 'Mr. Shaminda Yaddehige'}) ON CREATE SET p.id = 'mr_shaminda_yaddehige';

// Query 8
MERGE (p:Person {name: 'Mr. Gerard Amerasinghe'}) ON CREATE SET p.id = 'mr_gerard_amerasinghe';

// Query 9
MERGE (p:Person {name: 'Mr. A. Fernando'}) ON CREATE SET p.id = 'mr_a_fernando';

// Query 10
MERGE (p:Person {name: 'Mrs. Subhashini Welikala'}) ON CREATE SET p.id = 'mrs_subhashini_welikala';

// Query 11
MERGE (p:Person {name: 'Mr. P. de S. A. Gunasekara'}) ON CREATE SET p.id = 'mr_p_de_s_a_gunasekara';

// Query 12
MERGE (p:Person {name: 'Mr. T. T. Christy'}) ON CREATE SET p.id = 'mr_t_t_christy';

// Query 13
MERGE (p:Person {name: 'Mr. Tharaka Athukorala'}) ON CREATE SET p.id = 'mr_tharaka_athukorala';

// Query 14
MERGE (p:Person {name: 'Mr. D. Sivaraj'}) ON CREATE SET p.id = 'mr_d_sivaraj';

// Query 15
// Step 4: HOLDS_POSITION Relationships;

// Query 16
MATCH (p:Person {name: 'Dr. S. Yaddehige'}), (c:Company {name: 'Namunukula Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Mr. N. C. Peiris'}), (c:Company {name: 'Namunukula Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'Mr. Shaminda Yaddehige'}), (c:Company {name: 'Namunukula Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'Mr. Gerard Amerasinghe'}), (c:Company {name: 'Namunukula Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'Mr. A. Fernando'}), (c:Company {name: 'Namunukula Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Mrs. Subhashini Welikala'}), (c:Company {name: 'Namunukula Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-05-15');

// Query 22
MATCH (p:Person {name: 'Mr. P. de S. A. Gunasekara'}), (c:Company {name: 'Namunukula Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Mr. T. T. Christy'}), (c:Company {name: 'Namunukula Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Mr. Tharaka Athukorala'}), (c:Company {name: 'Namunukula Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Mr. D. Sivaraj'}), (c:Company {name: 'Namunukula Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 26
// Step 5: Metrics;

// Query 27
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 28
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 30
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 33
// Step 6: HAS_METRIC Relationships;

// Query 34
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20.0, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12648118000.0, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.83, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9466345000.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1920000000.0, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4500000000.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36.0, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10423076000.0, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.39, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7877863000.0, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2814000000.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36.0, r.year = 2022;

// Query 46
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7569307000.0, r.year = 2022;

// Query 47
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.48, r.year = 2022;

// Query 48
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5449137000.0, r.year = 2022;

// Query 49
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23.0, r.year = 2021;

// Query 50
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5784137000.0, r.year = 2021;

// Query 51
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.61, r.year = 2021;

// Query 52
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3742397000.0, r.year = 2021;

// Query 53
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.0, r.year = 2020;

// Query 54
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4936736000.0, r.year = 2020;

// Query 55
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.24, r.year = 2020;

// Query 56
MATCH (c:Company {name: 'Namunukula Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3053664000.0, r.year = 2020;

// Query 57
// Step 7: Sectors;

// Query 58
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 59
// Step 8: IN_SECTOR Relationships;

// Query 60
MATCH (c:Company {name: 'Namunukula Plantations'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 61
// Step 9: Products;

// Query 62
MERGE (p:Product {name: 'Tea'}) ON CREATE SET p.id = 'tea';

// Query 63
MERGE (p:Product {name: 'Rubber'}) ON CREATE SET p.id = 'rubber';

// Query 64
MERGE (p:Product {name: 'Oil Palm'}) ON CREATE SET p.id = 'oil_palm';

// Query 65
MERGE (p:Product {name: 'Coconut'}) ON CREATE SET p.id = 'coconut';

// Query 66
MERGE (p:Product {name: 'Cinnamon'}) ON CREATE SET p.id = 'cinnamon';

// Query 67
// Step 10: OFFERS Relationships;

// Query 68
MATCH (c:Company {name: 'Namunukula Plantations'}), (p:Product {name: 'Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Namunukula Plantations'}), (p:Product {name: 'Rubber'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'Namunukula Plantations'}), (p:Product {name: 'Oil Palm'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Namunukula Plantations'}), (p:Product {name: 'Coconut'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Namunukula Plantations'}), (p:Product {name: 'Cinnamon'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
// Step 11: Company-Company Relationships (OWNS, MANAGES);

// Query 74
MERGE (parent:Company {name: 'Richard Pieris & Company'}) ON CREATE SET parent.id = 'richard_pieris_and_company';

// Query 75
MATCH (parent:Company {name: 'Richard Pieris & Company'}), (child:Company {name: 'Namunukula Plantations'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 67.98, r.as_of = date('2024-03-31');

// Total queries: 75
// Generated on: 2025-10-03T01:44:00.320989
