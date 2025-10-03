// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Industrial Asphalts Ceylon'}) ON CREATE SET c.id = 'industrial_asphalts_ceylon', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('1964-06-30');

// Query 3
// Step 2: Auditor - Skipped as 'A.I. Macan Markar & Co.' is not in the hardcoded list of auditing firms.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'G. Ramanan'}) ON CREATE SET p.id = 'g_ramanan';

// Query 6
MERGE (p:Person {name: 'N.K. Dahanayake'}) ON CREATE SET p.id = 'n_k_dahanayake';

// Query 7
MERGE (p:Person {name: 'R. Kishore Ignatius'}) ON CREATE SET p.id = 'r_kishore_ignatius';

// Query 8
MERGE (p:Person {name: 'S. Marimuthu'}) ON CREATE SET p.id = 's_marimuthu';

// Query 9
MERGE (p:Person {name: 'R. Raguneethan'}) ON CREATE SET p.id = 'r_raguneethan';

// Query 10
MERGE (p:Person {name: 'S. Sivanandan'}) ON CREATE SET p.id = 's_sivanandan';

// Query 11
// Step 4: HOLDS_POSITION Relationships;

// Query 12
MATCH (p:Person {name: 'G. Ramanan'}), (c:Company {name: 'Industrial Asphalts Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 13
MATCH (p:Person {name: 'N.K. Dahanayake'}), (c:Company {name: 'Industrial Asphalts Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 14
MATCH (p:Person {name: 'R. Kishore Ignatius'}), (c:Company {name: 'Industrial Asphalts Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'S. Marimuthu'}), (c:Company {name: 'Industrial Asphalts Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'R. Raguneethan'}), (c:Company {name: 'Industrial Asphalts Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'S. Sivanandan'}), (c:Company {name: 'Industrial Asphalts Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
// Step 5: Person OWNS_SHARES Relationships;

// Query 19
MATCH (p:Person {name: 'G. Ramanan'}), (c:Company {name: 'Industrial Asphalts Ceylon'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1800693010, r.pct = 48.025, r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'N.K. Dahanayake'}), (c:Company {name: 'Industrial Asphalts Ceylon'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1000000, r.pct = 0.02667, r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'S. Sivanandan'}), (c:Company {name: 'Industrial Asphalts Ceylon'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 6305547, r.pct = 0.16817, r.as_of = date('2024-03-31');

// Query 22
// Step 6: Metric Nodes Creation;

// Query 23
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 31
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 32
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Times';

// Query 33
// Step 7: HAS_METRIC Relationships;

// Query 34
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29255062, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 55031025, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25680626, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 153607922, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18862011, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 147787820, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1558372915, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1449968257, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1384084673, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1365480990, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11679476, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 213696343, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.01, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.04, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.71, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.53, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.13, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.06, r.year = 2023;

// Query 54
// Step 8: Sector Nodes Creation;

// Query 55
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 56
// Step 9: IN_SECTOR Relationships;

// Query 57
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 58
// Step 10: Product Nodes Creation;

// Query 59
MERGE (p:Product {name: 'Bitumen'}) ON CREATE SET p.id = 'bitumen';

// Query 60
// Step 11: OFFERS Relationships;

// Query 61
MATCH (c:Company {name: 'Industrial Asphalts Ceylon'}), (p:Product {name: 'Bitumen'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 61
// Generated on: 2025-10-03T03:49:00.340256
