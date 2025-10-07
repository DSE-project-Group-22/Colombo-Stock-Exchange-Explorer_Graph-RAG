// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Ceylon Tobacco Company'}) ON CREATE SET c.id = 'ceylon_tobacco_company', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No specific auditor from the hardcoded list found. Skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Towhid Akbar'}) ON CREATE SET p.id = 'towhid_akbar';

// Query 6
MERGE (p:Person {name: 'Fariyha Subhani'}) ON CREATE SET p.id = 'fariyha_subhani';

// Query 7
MERGE (p:Person {name: 'Rumana Rahman'}) ON CREATE SET p.id = 'rumana_rahman';

// Query 8
MERGE (p:Person {name: 'Yudhishtran Kanagasabai'}) ON CREATE SET p.id = 'yudhishtran_kanagasabai';

// Query 9
MERGE (p:Person {name: 'Monisha Abraham'}) ON CREATE SET p.id = 'monisha_abraham';

// Query 10
MERGE (p:Person {name: 'Kushan D’Alwis'}) ON CREATE SET p.id = 'kushan_d_alwis';

// Query 11
MERGE (p:Person {name: 'Suresh Kumar Shah'}) ON CREATE SET p.id = 'suresh_kumar_shah';

// Query 12
MERGE (p:Person {name: 'Harin de Silva Wijeyeratne'}) ON CREATE SET p.id = 'harin_de_silva_wijeyeratne';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'Towhid Akbar'}), (c:Company {name: 'Ceylon Tobacco Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 15
MATCH (p:Person {name: 'Fariyha Subhani'}), (c:Company {name: 'Ceylon Tobacco Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-04-15');

// Query 16
MATCH (p:Person {name: 'Fariyha Subhani'}), (c:Company {name: 'Ceylon Tobacco Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-04-15');

// Query 17
MATCH (p:Person {name: 'Rumana Rahman'}), (c:Company {name: 'Ceylon Tobacco Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-09-30');

// Query 18
MATCH (p:Person {name: 'Yudhishtran Kanagasabai'}), (c:Company {name: 'Ceylon Tobacco Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-31');

// Query 19
MATCH (p:Person {name: 'Monisha Abraham'}), (c:Company {name: 'Ceylon Tobacco Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-04-15');

// Query 20
MATCH (p:Person {name: 'Monisha Abraham'}), (c:Company {name: 'Ceylon Tobacco Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-04-15');

// Query 21
MATCH (p:Person {name: 'Kushan D’Alwis'}), (c:Company {name: 'Ceylon Tobacco Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 22
MATCH (p:Person {name: 'Suresh Kumar Shah'}), (c:Company {name: 'Ceylon Tobacco Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 23
MATCH (p:Person {name: 'Suresh Kumar Shah'}), (c:Company {name: 'Ceylon Tobacco Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 24
MATCH (p:Person {name: 'Harin de Silva Wijeyeratne'}), (c:Company {name: 'Ceylon Tobacco Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 25
// Step 5: Metrics;

// Query 26
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 33
// Step 6: HAS_METRIC Relationships;

// Query 34
MATCH (c:Company {name: 'Ceylon Tobacco Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 62529000000.0, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Ceylon Tobacco Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 57721000000.0, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Ceylon Tobacco Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48977000000.0, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Ceylon Tobacco Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 46140000000.0, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Ceylon Tobacco Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29643000000.0, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Ceylon Tobacco Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27656000000.0, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Ceylon Tobacco Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11137000000.0, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Ceylon Tobacco Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11765000000.0, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Ceylon Tobacco Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 158.24, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Ceylon Tobacco Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 147.64, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Ceylon Tobacco Company'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1300000000.0, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Ceylon Tobacco Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 34682287000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Ceylon Tobacco Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31180841000.0, r.year = 2023;

// Query 47
// Step 7: Sectors;

// Query 48
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 49
// Step 8: IN_SECTOR Relationships;

// Query 50
MATCH (c:Company {name: 'Ceylon Tobacco Company'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 51
// Step 9: Product nodes creation;

// Query 52
MERGE (p:Product {name: 'Cigarettes'}) ON CREATE SET p.id = 'cigarettes';

// Query 53
MERGE (p:Product {name: 'Dunhill'}) ON CREATE SET p.id = 'dunhill';

// Query 54
MERGE (p:Product {name: 'JPGL'}) ON CREATE SET p.id = 'jpgl';

// Query 55
MERGE (p:Product {name: 'JPG'}) ON CREATE SET p.id = 'jpg';

// Query 56
MERGE (p:Product {name: 'Capstan'}) ON CREATE SET p.id = 'capstan';

// Query 57
// Step 10: OFFERS Relationships;

// Query 58
MATCH (c:Company {name: 'Ceylon Tobacco Company'}), (p:Product {name: 'Cigarettes'}) MERGE (c)-[:OFFERS]->(p);

// Query 59
MATCH (c:Company {name: 'Ceylon Tobacco Company'}), (p:Product {name: 'Dunhill'}) MERGE (c)-[:OFFERS]->(p);

// Query 60
MATCH (c:Company {name: 'Ceylon Tobacco Company'}), (p:Product {name: 'JPGL'}) MERGE (c)-[:OFFERS]->(p);

// Query 61
MATCH (c:Company {name: 'Ceylon Tobacco Company'}), (p:Product {name: 'JPG'}) MERGE (c)-[:OFFERS]->(p);

// Query 62
MATCH (c:Company {name: 'Ceylon Tobacco Company'}), (p:Product {name: 'Capstan'}) MERGE (c)-[:OFFERS]->(p);

// Query 63
// Step 11: Company-Company Relationships (OWNS);

// Query 64
MERGE (parent:Company {name: 'BAT Group'}) ON CREATE SET parent.id = 'bat_group';

// Query 65
MATCH (parent:Company {name: 'BAT Group'}), (child:Company {name: 'Ceylon Tobacco Company'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 84.127, r.as_of = date('2024-12-31');

// Total queries: 65
// Generated on: 2025-10-03T01:01:02.249607
