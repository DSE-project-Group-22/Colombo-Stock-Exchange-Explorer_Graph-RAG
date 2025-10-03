// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'PGP Glass'}) ON CREATE SET c.id = 'pgp_glass', c.region = 'India';

// Query 3
// Step 2: Auditor - No external auditor from the hardcoded list found in the document.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Ayshwarya Vikram'}) ON CREATE SET p.id = 'ayshwarya_vikram';

// Query 6
MERGE (p:Person {name: 'Vijay Shah'}) ON CREATE SET p.id = 'vijay_shah';

// Query 7
MERGE (p:Person {name: 'Dinesh Dahivelkar'}) ON CREATE SET p.id = 'dinesh_dahivelkar';

// Query 8
MERGE (p:Person {name: 'Vaishali Jain'}) ON CREATE SET p.id = 'vaishali_jain';

// Query 9
MERGE (p:Person {name: 'Mukesh Mehta'}) ON CREATE SET p.id = 'mukesh_mehta';

// Query 10
// Step 4: HOLDS_POSITION Relationships;

// Query 11
MATCH (p:Person {name: 'Ayshwarya Vikram'}), (c:Company {name: 'PGP Glass'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-09-22');

// Query 12
MATCH (p:Person {name: 'Vijay Shah'}), (c:Company {name: 'PGP Glass'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2023-08-22');

// Query 13
MATCH (p:Person {name: 'Vijay Shah'}), (c:Company {name: 'PGP Glass'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2023-08-22');

// Query 14
MATCH (p:Person {name: 'Dinesh Dahivelkar'}), (c:Company {name: 'PGP Glass'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'Vaishali Jain'}), (c:Company {name: 'PGP Glass'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2023-10-27');

// Query 16
MATCH (p:Person {name: 'Mukesh Mehta'}), (c:Company {name: 'PGP Glass'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 17
// Step 5: Metrics;

// Query 18
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 19
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 22
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 23
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 24
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 26
// Step 6: HAS_METRIC Relationships;

// Query 27
MATCH (c:Company {name: 'PGP Glass'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40991000000, r.year = 2024;

// Query 28
MATCH (c:Company {name: 'PGP Glass'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38273000000, r.year = 2023;

// Query 29
MATCH (c:Company {name: 'PGP Glass'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4087000000, r.year = 2024;

// Query 30
MATCH (c:Company {name: 'PGP Glass'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 334000000, r.year = 2023;

// Query 31
MATCH (c:Company {name: 'PGP Glass'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3050000000, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'PGP Glass'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 571000000, r.year = 2023;

// Query 33
MATCH (c:Company {name: 'PGP Glass'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.90, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'PGP Glass'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.69, r.year = 2023;

// Query 35
MATCH (c:Company {name: 'PGP Glass'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.0, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'PGP Glass'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.6, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'PGP Glass'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.67, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'PGP Glass'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.74, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'PGP Glass'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.37, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'PGP Glass'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.34, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'PGP Glass'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39842470000, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'PGP Glass'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36792270000, r.year = 2023;

// Query 43
// Step 7: Sectors;

// Query 44
MERGE (s:Sector {name: 'Household and Personal Products'}) ON CREATE SET s.id = 'household_and_personal_products';

// Query 45
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 46
MERGE (s:Sector {name: 'Pharmaceuticals, Biotechnology, and Life Sciences'}) ON CREATE SET s.id = 'pharmaceuticals_biotechnology_and_life_sciences';

// Query 47
// Step 8: IN_SECTOR Relationships;

// Query 48
MATCH (c:Company {name: 'PGP Glass'}), (s:Sector {name: 'Household and Personal Products'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 49
MATCH (c:Company {name: 'PGP Glass'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 50
MATCH (c:Company {name: 'PGP Glass'}), (s:Sector {name: 'Pharmaceuticals, Biotechnology, and Life Sciences'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 51
// Step 9: Product nodes creation;

// Query 52
MERGE (p:Product {name: 'Glass Containers'}) ON CREATE SET p.id = 'glass_containers';

// Query 53
MERGE (p:Product {name: 'Glass Packaging'}) ON CREATE SET p.id = 'glass_packaging';

// Query 54
MERGE (p:Product {name: 'Glass Bottles and Jars'}) ON CREATE SET p.id = 'glass_bottles_and_jars';

// Query 55
// Step 10: OFFERS relationships;

// Query 56
MATCH (c:Company {name: 'PGP Glass'}), (p:Product {name: 'Glass Containers'}) MERGE (c)-[:OFFERS]->(p);

// Query 57
MATCH (c:Company {name: 'PGP Glass'}), (p:Product {name: 'Glass Packaging'}) MERGE (c)-[:OFFERS]->(p);

// Query 58
MATCH (c:Company {name: 'PGP Glass'}), (p:Product {name: 'Glass Bottles and Jars'}) MERGE (c)-[:OFFERS]->(p);

// Query 59
// Step 11: Company-Company Relationships (OWNS, MANAGES);

// Query 60
MERGE (c:Company {name: 'PGP Glass USA'}) ON CREATE SET c.id = 'pgp_glass_usa';

// Query 61
MERGE (c:Company {name: 'BCP Topco V'}) ON CREATE SET c.id = 'bcp_topco_v';

// Query 62
MATCH (parent:Company {name: 'PGP Glass'}), (child:Company {name: 'PGP Glass USA'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 63
MATCH (parent:Company {name: 'BCP Topco V'}), (child:Company {name: 'PGP Glass'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Total queries: 63
// Generated on: 2025-10-03T03:06:51.246909
