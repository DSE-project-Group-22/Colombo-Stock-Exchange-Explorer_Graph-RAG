// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Hayleys'}) ON CREATE SET c.id = 'hayleys', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor (No explicit auditor found in the provided text matching the hardcoded list);

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Mohan Pandithage'}) ON CREATE SET p.id = 'mohan_pandithage';

// Query 6
MERGE (p:Person {name: 'Sarath Ganegoda'}) ON CREATE SET p.id = 'sarath_ganegoda';

// Query 7
MERGE (p:Person {name: 'Rajitha Kariyawasan'}) ON CREATE SET p.id = 'rajitha_kariyawasan';

// Query 8
MERGE (p:Person {name: 'Harsha Cabral'}) ON CREATE SET p.id = 'harsha_cabral';

// Query 9
MERGE (p:Person {name: 'Ruwan Waidyaratne'}) ON CREATE SET p.id = 'ruwan_waidyaratne';

// Query 10
MERGE (p:Person {name: 'Hisham Jamaldeen'}) ON CREATE SET p.id = 'hisham_jamaldeen';

// Query 11
MERGE (p:Person {name: 'Aravinda Perera'}) ON CREATE SET p.id = 'aravinda_perera';

// Query 12
MERGE (p:Person {name: 'Jayanthi Dharmasena'}) ON CREATE SET p.id = 'jayanthi_dharmasena';

// Query 13
MERGE (p:Person {name: 'Rohan Karr'}) ON CREATE SET p.id = 'rohan_karr';

// Query 14
MERGE (p:Person {name: 'Gamini Gunaratne'}) ON CREATE SET p.id = 'gamini_gunaratne';

// Query 15
MERGE (p:Person {name: 'Timothy Speldewinde'}) ON CREATE SET p.id = 'timothy_speldewinde';

// Query 16
MERGE (p:Person {name: 'Yohan Perera'}) ON CREATE SET p.id = 'yohan_perera';

// Query 17
MERGE (p:Person {name: 'Milinda Hewagama'}) ON CREATE SET p.id = 'milinda_hewagama';

// Query 18
// Step 4: HOLDS_POSITION Relationships;

// Query 19
MATCH (p:Person {name: 'Mohan Pandithage'}), (c:Company {name: 'Hayleys'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-05-17');

// Query 20
MATCH (p:Person {name: 'Mohan Pandithage'}), (c:Company {name: 'Hayleys'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-05-17');

// Query 21
MATCH (p:Person {name: 'Sarath Ganegoda'}), (c:Company {name: 'Hayleys'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-05-17');

// Query 22
MATCH (p:Person {name: 'Rajitha Kariyawasan'}), (c:Company {name: 'Hayleys'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Harsha Cabral'}), (c:Company {name: 'Hayleys'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Ruwan Waidyaratne'}), (c:Company {name: 'Hayleys'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Hisham Jamaldeen'}), (c:Company {name: 'Hayleys'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'Aravinda Perera'}), (c:Company {name: 'Hayleys'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'Jayanthi Dharmasena'}), (c:Company {name: 'Hayleys'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'Rohan Karr'}), (c:Company {name: 'Hayleys'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'Gamini Gunaratne'}), (c:Company {name: 'Hayleys'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'Timothy Speldewinde'}), (c:Company {name: 'Hayleys'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'Yohan Perera'}), (c:Company {name: 'Hayleys'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'Milinda Hewagama'}), (c:Company {name: 'Hayleys'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-05-17');

// Query 33
// Step 5: Metrics;

// Query 34
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 41
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 42
// Step 6: HAS_METRIC Relationships;

// Query 43
MATCH (c:Company {name: 'Hayleys'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 436833000000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Hayleys'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 487431000000.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Hayleys'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25336000000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Hayleys'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42749000000.0, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Hayleys'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14847000000.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Hayleys'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27672000000.0, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Hayleys'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.19, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Hayleys'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21.80, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Hayleys'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 446336000000.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Hayleys'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 412742000000.0, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Hayleys'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 80163000000.0, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Hayleys'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78930000000.0, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Hayleys'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.94, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Hayleys'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.15, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Hayleys'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42723000000.0, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Hayleys'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 61073000000.0, r.year = 2023;

// Query 59
// Step 7: Sectors;

// Query 60
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 61
MERGE (s:Sector {name: 'Consumer Durables and Apparel'}) ON CREATE SET s.id = 'consumer_durables_and_apparel';

// Query 62
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 63
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 64
MERGE (s:Sector {name: 'Utilities'}) ON CREATE SET s.id = 'utilities';

// Query 65
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 66
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 67
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 68
// Step 8: IN_SECTOR Relationships;

// Query 69
MATCH (c:Company {name: 'Hayleys'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 70
MATCH (c:Company {name: 'Hayleys'}), (s:Sector {name: 'Consumer Durables and Apparel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 71
MATCH (c:Company {name: 'Hayleys'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 72
MATCH (c:Company {name: 'Hayleys'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 73
MATCH (c:Company {name: 'Hayleys'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
MATCH (c:Company {name: 'Hayleys'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 75
MATCH (c:Company {name: 'Hayleys'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 76
MATCH (c:Company {name: 'Hayleys'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 77
// Step 9: Product nodes creation;

// Query 78
MERGE (p:Product {name: 'Energy Storage Carbon'}) ON CREATE SET p.id = 'energy_storage_carbon';

// Query 79
MERGE (p:Product {name: 'Hard Carbon for Sodium Ion Batteries'}) ON CREATE SET p.id = 'hard_carbon_for_sodium_ion_batteries';

// Query 80
MERGE (p:Product {name: 'Solar Power Generation'}) ON CREATE SET p.id = 'solar_power_generation';

// Query 81
// Step 10: OFFERS relationships;

// Query 82
MATCH (c:Company {name: 'Hayleys'}), (p:Product {name: 'Energy Storage Carbon'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Hayleys'}), (p:Product {name: 'Hard Carbon for Sodium Ion Batteries'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Hayleys'}), (p:Product {name: 'Solar Power Generation'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 84
// Generated on: 2025-10-02T23:08:55.012187
