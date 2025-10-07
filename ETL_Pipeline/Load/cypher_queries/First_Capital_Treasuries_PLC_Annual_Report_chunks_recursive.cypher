// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'First Capital Treasuries'}) ON CREATE SET c.id = 'first_capital_treasuries', c.founded_on = date('1982-08-19'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'First Capital Treasuries'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2025;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'Manjula Mathews'}) ON CREATE SET p.id = 'manjula_mathews';

// Query 9
MERGE (p:Person {name: 'Sachith Perera'}) ON CREATE SET p.id = 'sachith_perera';

// Query 10
MERGE (p:Person {name: 'Dilshan Wirasekara'}) ON CREATE SET p.id = 'dilshan_wirasekara';

// Query 11
MERGE (p:Person {name: 'Ramesh Schaffter'}) ON CREATE SET p.id = 'ramesh_schaffter';

// Query 12
MERGE (p:Person {name: 'Minette Perera'}) ON CREATE SET p.id = 'minette_perera';

// Query 13
MERGE (p:Person {name: 'Nishan de Mel'}) ON CREATE SET p.id = 'nishan_de_mel';

// Query 14
MERGE (p:Person {name: 'Cilani Wijesinghe'}) ON CREATE SET p.id = 'cilani_wijesinghe';

// Query 15
MERGE (p:Person {name: 'Channa de Silva'}) ON CREATE SET p.id = 'channa_de_silva';

// Query 16
// Step 5: HOLDS_POSITION Relationships;

// Query 17
MATCH (p:Person {name: 'Manjula Mathews'}), (c:Company {name: 'First Capital Treasuries'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-03-31');

// Query 18
MATCH (p:Person {name: 'Sachith Perera'}), (c:Company {name: 'First Capital Treasuries'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 19
MATCH (p:Person {name: 'Dilshan Wirasekara'}), (c:Company {name: 'First Capital Treasuries'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 20
MATCH (p:Person {name: 'Ramesh Schaffter'}), (c:Company {name: 'First Capital Treasuries'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 21
MATCH (p:Person {name: 'Minette Perera'}), (c:Company {name: 'First Capital Treasuries'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 22
MATCH (p:Person {name: 'Nishan de Mel'}), (c:Company {name: 'First Capital Treasuries'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 23
MATCH (p:Person {name: 'Cilani Wijesinghe'}), (c:Company {name: 'First Capital Treasuries'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 24
MATCH (p:Person {name: 'Channa de Silva'}), (c:Company {name: 'First Capital Treasuries'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 25
// Step 6: Metric Nodes Creation;

// Query 26
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 30
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 33
// Step 7: HAS_METRIC Relationships;

// Query 34
MATCH (c:Company {name: 'First Capital Treasuries'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10837803000, r.year = 2025;

// Query 35
MATCH (c:Company {name: 'First Capital Treasuries'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26598738000, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'First Capital Treasuries'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4472066000, r.year = 2025;

// Query 37
MATCH (c:Company {name: 'First Capital Treasuries'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16038040000, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'First Capital Treasuries'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3042430000, r.year = 2025;

// Query 39
MATCH (c:Company {name: 'First Capital Treasuries'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11143128000, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'First Capital Treasuries'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36.22, r.year = 2025;

// Query 41
MATCH (c:Company {name: 'First Capital Treasuries'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 169.56, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'First Capital Treasuries'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 61.82, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'First Capital Treasuries'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50.0, r.year = 2022;

// Query 44
MATCH (c:Company {name: 'First Capital Treasuries'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 83144761000, r.year = 2025;

// Query 45
MATCH (c:Company {name: 'First Capital Treasuries'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 64555943000, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'First Capital Treasuries'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9121328000, r.year = 2025;

// Query 47
MATCH (c:Company {name: 'First Capital Treasuries'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7679368000, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'First Capital Treasuries'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5464000000, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'First Capital Treasuries'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3874000000, r.year = 2022;

// Query 50
MATCH (c:Company {name: 'First Capital Treasuries'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.92, r.year = 2025;

// Query 51
MATCH (c:Company {name: 'First Capital Treasuries'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.41, r.year = 2024;

// Query 52
// Step 8: Sector Nodes Creation;

// Query 53
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 54
// Step 9: IN_SECTOR Relationships;

// Query 55
MATCH (c:Company {name: 'First Capital Treasuries'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 56
// Step 10: Product Nodes Creation;

// Query 57
MERGE (p:Product {name: 'Primary Dealership'}) ON CREATE SET p.id = 'primary_dealership';

// Query 58
MERGE (p:Product {name: 'Treasury Bidding Platform'}) ON CREATE SET p.id = 'treasury_bidding_platform';

// Query 59
// Step 11: OFFERS Relationships;

// Query 60
MATCH (c:Company {name: 'First Capital Treasuries'}), (p:Product {name: 'Primary Dealership'}) MERGE (c)-[:OFFERS]->(p);

// Query 61
MATCH (c:Company {name: 'First Capital Treasuries'}), (p:Product {name: 'Treasury Bidding Platform'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 61
// Generated on: 2025-10-03T00:01:20.971324
