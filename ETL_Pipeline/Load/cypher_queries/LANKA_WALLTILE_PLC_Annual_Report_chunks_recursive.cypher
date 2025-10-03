// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Lanka Walltile'}) ON CREATE SET c.id = 'lanka_walltile', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No auditor information found for Lanka Walltile in the provided text.;

// Query 4
// Step 3: People - No directors or executives found for Lanka Walltile in the provided text.;

// Query 5
// Step 4: HOLDS_POSITION Relationships - No people found for Lanka Walltile.;

// Query 6
// Step 5: Metrics;

// Query 7
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 8
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 9
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 10
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 11
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 12
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 13
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 14
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 15
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 16
// Step 6: HAS_METRIC Relationships;

// Query 17
MATCH (c:Company {name: 'Lanka Walltile'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31200000000.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 18
MATCH (c:Company {name: 'Lanka Walltile'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31110000000.0, r.year = 2023, r.as_of = date('2023-12-31');

// Query 19
MATCH (c:Company {name: 'Lanka Walltile'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8260000000.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 20
MATCH (c:Company {name: 'Lanka Walltile'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10630000000.0, r.year = 2023, r.as_of = date('2023-12-31');

// Query 21
MATCH (c:Company {name: 'Lanka Walltile'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2110000000.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 22
MATCH (c:Company {name: 'Lanka Walltile'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4370000000.0, r.year = 2023, r.as_of = date('2023-12-31');

// Query 23
MATCH (c:Company {name: 'Lanka Walltile'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 59660000000.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 24
MATCH (c:Company {name: 'Lanka Walltile'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 52840000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 25
MATCH (c:Company {name: 'Lanka Walltile'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27640000000.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 26
MATCH (c:Company {name: 'Lanka Walltile'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26510000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 27
MATCH (c:Company {name: 'Lanka Walltile'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.2, r.year = 2024;

// Query 28
MATCH (c:Company {name: 'Lanka Walltile'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14.3, r.year = 2023;

// Query 29
MATCH (c:Company {name: 'Lanka Walltile'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.72, r.year = 2024, r.as_of = date('2024-12-31');

// Query 30
MATCH (c:Company {name: 'Lanka Walltile'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.52, r.year = 2024, r.as_of = date('2024-03-31');

// Query 31
MATCH (c:Company {name: 'Lanka Walltile'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.57, r.year = 2024, r.as_of = date('2024-12-31');

// Query 32
MATCH (c:Company {name: 'Lanka Walltile'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.79, r.year = 2024, r.as_of = date('2024-03-31');

// Query 33
MATCH (c:Company {name: 'Lanka Walltile'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.41, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'Lanka Walltile'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.57, r.year = 2023;

// Query 35
MATCH (c:Company {name: 'Lanka Walltile'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.83, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Lanka Walltile'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.16, r.year = 2023;

// Query 37
// Step 7: Sectors;

// Query 38
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 39
// Step 8: IN_SECTOR Relationships;

// Query 40
MATCH (c:Company {name: 'Lanka Walltile'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 41
// Step 9: Product nodes creation;

// Query 42
MERGE (p:Product {name: 'Tiles'}) ON CREATE SET p.id = 'tiles';

// Query 43
MERGE (p:Product {name: 'Aluminium Products'}) ON CREATE SET p.id = 'aluminium_products';

// Query 44
MERGE (p:Product {name: 'Packing Materials'}) ON CREATE SET p.id = 'packing_materials';

// Query 45
// Step 10: OFFERS relationships;

// Query 46
MATCH (c:Company {name: 'Lanka Walltile'}), (p:Product {name: 'Tiles'}) MERGE (c)-[:OFFERS]->(p);

// Query 47
MATCH (c:Company {name: 'Lanka Walltile'}), (p:Product {name: 'Aluminium Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 48
MATCH (c:Company {name: 'Lanka Walltile'}), (p:Product {name: 'Packing Materials'}) MERGE (c)-[:OFFERS]->(p);

// Query 49
// Step 11: Company-Company relationships - No ownership or management relationships found for Lanka Walltile.;

// Total queries: 49
// Generated on: 2025-10-03T00:32:02.835833
