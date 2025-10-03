// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Keells Food Products'}) ON CREATE SET c.id = 'keells_food_products', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'John Keells Holdings'}) ON CREATE SET c.id = 'john_keells_holdings', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 4
MERGE (c:Company {name: 'John Keells Foods India'}) ON CREATE SET c.id = 'john_keells_foods_india', c.region = 'India';

// Query 5
// Step 2: Auditor;

// Query 6
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 7
// Step 3: AUDITED_BY Relationship;

// Query 8
MATCH (c:Company {name: 'Keells Food Products'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 9
// Step 4: Person Nodes Creation;

// Query 10
MERGE (p:Person {name: 'K N J Balendra'}) ON CREATE SET p.id = 'k_n_j_balendra';

// Query 11
MERGE (p:Person {name: 'J G A Cooray'}) ON CREATE SET p.id = 'j_g_a_cooray';

// Query 12
MERGE (p:Person {name: 'D P Gamlath'}) ON CREATE SET p.id = 'd_p_gamlath';

// Query 13
MERGE (p:Person {name: 'P D Samarasinghe'}) ON CREATE SET p.id = 'p_d_samarasinghe';

// Query 14
MERGE (p:Person {name: 'S De Silva'}) ON CREATE SET p.id = 's_de_silva';

// Query 15
MERGE (p:Person {name: 'I Samarajiva'}) ON CREATE SET p.id = 'i_samarajiva';

// Query 16
MERGE (p:Person {name: 'P N Fernando'}) ON CREATE SET p.id = 'p_n_fernando';

// Query 17
MERGE (p:Person {name: 'V I Wickramaratne'}) ON CREATE SET p.id = 'v_i_wickramaratne';

// Query 18
// Step 5: HOLDS_POSITION Relationships;

// Query 19
MATCH (p:Person {name: 'K N J Balendra'}), (c:Company {name: 'Keells Food Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'J G A Cooray'}), (c:Company {name: 'Keells Food Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'D P Gamlath'}), (c:Company {name: 'Keells Food Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'P D Samarasinghe'}), (c:Company {name: 'Keells Food Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'S De Silva'}), (c:Company {name: 'Keells Food Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'I Samarajiva'}), (c:Company {name: 'Keells Food Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'P N Fernando'}), (c:Company {name: 'Keells Food Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'V I Wickramaratne'}), (c:Company {name: 'Keells Food Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 27
// Step 6: Metric Nodes Creation;

// Query 28
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 35
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 36
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 38
// Step 7: HAS_METRIC Relationships;

// Query 39
MATCH (c:Company {name: 'Keells Food Products'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5798813000.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Keells Food Products'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6444270000.0, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Keells Food Products'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -137186000.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Keells Food Products'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 230477000.0, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Keells Food Products'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -289937000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Keells Food Products'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 69115000.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Keells Food Products'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -218271000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Keells Food Products'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13945000.0, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Keells Food Products'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3961880000.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Keells Food Products'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4302695000.0, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Keells Food Products'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1863261000.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Keells Food Products'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2108276000.0, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Keells Food Products'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 57.66, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Keells Food Products'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58.34, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Keells Food Products'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.13, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Keells Food Products'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.27, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Keells Food Products'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -8.56, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Keells Food Products'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.55, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Keells Food Products'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -10.99, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Keells Food Products'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.65, r.year = 2023;

// Query 59
// Step 8: Sector Nodes Creation;

// Query 60
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 61
// Step 9: IN_SECTOR Relationships;

// Query 62
MATCH (c:Company {name: 'Keells Food Products'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 63
// Step 10: Product Nodes Creation;

// Query 64
MERGE (p:Product {name: 'Processed Meats'}) ON CREATE SET p.id = 'processed_meats';

// Query 65
MERGE (p:Product {name: 'Raw Meats'}) ON CREATE SET p.id = 'raw_meats';

// Query 66
MERGE (p:Product {name: 'Crumbed Products'}) ON CREATE SET p.id = 'crumbed_products';

// Query 67
MERGE (p:Product {name: 'Convenient Food Products'}) ON CREATE SET p.id = 'convenient_food_products';

// Query 68
MERGE (p:Product {name: 'Pasta Products'}) ON CREATE SET p.id = 'pasta_products';

// Query 69
// Step 11: OFFERS Relationships;

// Query 70
MATCH (c:Company {name: 'Keells Food Products'}), (p:Product {name: 'Processed Meats'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Keells Food Products'}), (p:Product {name: 'Raw Meats'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Keells Food Products'}), (p:Product {name: 'Crumbed Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'Keells Food Products'}), (p:Product {name: 'Convenient Food Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'Keells Food Products'}), (p:Product {name: 'Pasta Products'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 74
// Generated on: 2025-10-03T00:30:53.122549
