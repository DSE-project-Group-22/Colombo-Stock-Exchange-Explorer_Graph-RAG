// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Maharaja Foods'}) ON CREATE SET c.id = 'mahara_foods', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('2012-12-03');

// Query 3
// Step 2: Auditor - No valid auditor found in hardcoded list, skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Thavamalar Guganathan'}) ON CREATE SET p.id = 'thavamalar_guganathan';

// Query 6
MERGE (p:Person {name: 'Rizvi Mowlana'}) ON CREATE SET p.id = 'rizvi_mowlana';

// Query 7
MERGE (p:Person {name: 'Imran Furkan'}) ON CREATE SET p.id = 'imran_furkan';

// Query 8
MERGE (p:Person {name: 'Melanga A. Doolwala'}) ON CREATE SET p.id = 'melanga_a_doolwala';

// Query 9
MERGE (p:Person {name: 'Vithyanath Guganathan'}) ON CREATE SET p.id = 'vithyanath_guganathan';

// Query 10
MERGE (p:Person {name: 'Vijayananth Guganathan'}) ON CREATE SET p.id = 'vijayananth_guganathan';

// Query 11
// Step 4: HOLDS_POSITION Relationships;

// Query 12
MATCH (p:Person {name: 'Thavamalar Guganathan'}), (c:Company {name: 'Maharaja Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 13
MATCH (p:Person {name: 'Rizvi Mowlana'}), (c:Company {name: 'Maharaja Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 14
MATCH (p:Person {name: 'Imran Furkan'}), (c:Company {name: 'Maharaja Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'Melanga A. Doolwala'}), (c:Company {name: 'Maharaja Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'Vithyanath Guganathan'}), (c:Company {name: 'Maharaja Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Vijayananth Guganathan'}), (c:Company {name: 'Maharaja Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 18
// Step 5: Metrics;

// Query 19
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 25
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 26
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 27
// Step 6: HAS_METRIC Relationships;

// Query 28
MATCH (c:Company {name: 'Maharaja Foods'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 496999876000.0, r.year = 2024;

// Query 29
MATCH (c:Company {name: 'Maharaja Foods'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 397146252000.0, r.year = 2023;

// Query 30
MATCH (c:Company {name: 'Maharaja Foods'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36605700000.0, r.year = 2024;

// Query 31
MATCH (c:Company {name: 'Maharaja Foods'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20279487000.0, r.year = 2023;

// Query 32
MATCH (c:Company {name: 'Maharaja Foods'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31070788000.0, r.year = 2024;

// Query 33
MATCH (c:Company {name: 'Maharaja Foods'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20075256000.0, r.year = 2023;

// Query 34
MATCH (c:Company {name: 'Maharaja Foods'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93541804000.0, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Maharaja Foods'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 61653592000.0, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Maharaja Foods'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 306178165000.0, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Maharaja Foods'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 198681362000.0, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Maharaja Foods'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.99, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Maharaja Foods'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.87, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Maharaja Foods'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.27, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Maharaja Foods'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.21, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Maharaja Foods'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33.22, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Maharaja Foods'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 32.56, r.year = 2023;

// Query 44
// Step 7: Sectors;

// Query 45
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 46
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 47
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 48
// Step 8: IN_SECTOR Relationships;

// Query 49
MATCH (c:Company {name: 'Maharaja Foods'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 50
MATCH (c:Company {name: 'Maharaja Foods'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 51
MATCH (c:Company {name: 'Maharaja Foods'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 52
// Step 9: Product nodes creation;

// Query 53
MERGE (p:Product {name: 'Food Products'}) ON CREATE SET p.id = 'food_products';

// Query 54
MERGE (p:Product {name: 'Raw Rice'}) ON CREATE SET p.id = 'raw_rice';

// Query 55
MERGE (p:Product {name: 'Polished Rice'}) ON CREATE SET p.id = 'polished_rice';

// Query 56
// Step 10: OFFERS relationships;

// Query 57
MATCH (c:Company {name: 'Maharaja Foods'}), (p:Product {name: 'Food Products'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 58
MATCH (c:Company {name: 'Maharaja Foods'}), (p:Product {name: 'Raw Rice'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'planned';

// Query 59
MATCH (c:Company {name: 'Maharaja Foods'}), (p:Product {name: 'Polished Rice'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'planned';

// Query 60
// Step 11: Company-Company relationships (OWNS, MANAGES);

// Query 61
MERGE (child:Company {name: 'Maharaja Marketing'}) ON CREATE SET child.id = 'mahara_marketing';

// Query 62
MATCH (parent:Company {name: 'Maharaja Foods'}), (child:Company {name: 'Maharaja Marketing'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Total queries: 62
// Generated on: 2025-10-03T03:33:59.224673
