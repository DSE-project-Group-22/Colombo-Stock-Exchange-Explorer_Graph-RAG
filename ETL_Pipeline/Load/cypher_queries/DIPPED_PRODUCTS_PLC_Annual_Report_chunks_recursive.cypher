// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Dipped Products'}) ON CREATE SET c.id = 'dipped_products', c.founded_on = date('1976-01-01'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor (Skipped - Auditor name not found in hardcoded list or explicitly mentioned);

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Mohan Pandithage'}) ON CREATE SET p.id = 'mohan_pandithage';

// Query 6
MERGE (p:Person {name: 'Rajitha Kariyawasan'}) ON CREATE SET p.id = 'rajitha_kariyawasan';

// Query 7
MERGE (p:Person {name: 'Pushpika Janadheera'}) ON CREATE SET p.id = 'pushpika_janadheera';

// Query 8
MERGE (p:Person {name: 'Sarath Ganegoda'}) ON CREATE SET p.id = 'sarath_ganegoda';

// Query 9
MERGE (p:Person {name: 'Ramesh Nanayakkara'}) ON CREATE SET p.id = 'ramesh_nanayakkara';

// Query 10
MERGE (p:Person {name: 'Gamini Gunaratne'}) ON CREATE SET p.id = 'gamini_gunaratne';

// Query 11
MERGE (p:Person {name: 'Chandika Ratnasiri'}) ON CREATE SET p.id = 'chandika_ratnasiri';

// Query 12
MERGE (p:Person {name: 'Brindhiini Perera'}) ON CREATE SET p.id = 'brindhiini_perera';

// Query 13
MERGE (p:Person {name: 'Yohan Perera'}) ON CREATE SET p.id = 'yohan_perera';

// Query 14
MERGE (p:Person {name: 'Anomi Wanigasekera'}) ON CREATE SET p.id = 'anomi_wanigasekera';

// Query 15
MERGE (p:Person {name: 'Timothy Speldewinde'}) ON CREATE SET p.id = 'timothy_speldewinde';

// Query 16
MERGE (p:Person {name: 'Upul Ratnayake'}) ON CREATE SET p.id = 'upul_ratnayake';

// Query 17
// Step 4: HOLDS_POSITION Relationships;

// Query 18
MATCH (p:Person {name: 'Mohan Pandithage'}), (c:Company {name: 'Dipped Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-03-31');

// Query 19
MATCH (p:Person {name: 'Rajitha Kariyawasan'}), (c:Company {name: 'Dipped Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2025-03-31');

// Query 20
MATCH (p:Person {name: 'Pushpika Janadheera'}), (c:Company {name: 'Dipped Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2025-03-31');

// Query 21
MATCH (p:Person {name: 'Sarath Ganegoda'}), (c:Company {name: 'Dipped Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 22
MATCH (p:Person {name: 'Ramesh Nanayakkara'}), (c:Company {name: 'Dipped Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 23
MATCH (p:Person {name: 'Gamini Gunaratne'}), (c:Company {name: 'Dipped Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 24
MATCH (p:Person {name: 'Chandika Ratnasiri'}), (c:Company {name: 'Dipped Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 25
MATCH (p:Person {name: 'Brindhiini Perera'}), (c:Company {name: 'Dipped Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 26
MATCH (p:Person {name: 'Yohan Perera'}), (c:Company {name: 'Dipped Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 27
MATCH (p:Person {name: 'Anomi Wanigasekera'}), (c:Company {name: 'Dipped Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 28
MATCH (p:Person {name: 'Timothy Speldewinde'}), (c:Company {name: 'Dipped Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-04-01');

// Query 29
MATCH (p:Person {name: 'Upul Ratnayake'}), (c:Company {name: 'Dipped Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-04-01');

// Query 30
// Step 5: Metrics;

// Query 31
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 36
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 37
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Times';

// Query 40
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 41
// Step 6: HAS_METRIC Relationships;

// Query 42
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 46386667000, r.year = 2021;

// Query 43
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 55293983000, r.year = 2022;

// Query 44
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 80099312000, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 73941960000, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 79288552000, r.year = 2025;

// Query 47
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7729000000, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7172000000, r.year = 2025;

// Query 49
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7567000000, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6836000000, r.year = 2025;

// Query 51
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5779000000, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5032000000, r.year = 2025;

// Query 53
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.0, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.0, r.year = 2025;

// Query 55
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.2, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.7, r.year = 2025;

// Query 57
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 63913000000, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 74616000000, r.year = 2025;

// Query 59
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19141538000, r.year = 2021;

// Query 60
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26359243000, r.year = 2022;

// Query 61
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33515309000, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36079875000, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39631220000, r.year = 2025;

// Query 64
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.3, r.year = 2025;

// Query 65
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.01, r.year = 2022;

// Query 66
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.44, r.year = 2023;

// Query 67
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.47, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'Dipped Products'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.47, r.year = 2025;

// Query 69
// Step 7: Sectors;

// Query 70
MERGE (s:Sector {name: 'Consumer Durables and Apparel'}) ON CREATE SET s.id = 'consumer_durables_and_apparel';

// Query 71
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 72
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 73
// Step 8: IN_SECTOR Relationships;

// Query 74
MATCH (c:Company {name: 'Dipped Products'}), (s:Sector {name: 'Consumer Durables and Apparel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 75
MATCH (c:Company {name: 'Dipped Products'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 76
MATCH (c:Company {name: 'Dipped Products'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 77
// Step 9: Products;

// Query 78
MERGE (p:Product {name: 'Industrial Gloves'}) ON CREATE SET p.id = 'industrial_gloves';

// Query 79
MERGE (p:Product {name: 'General-Purpose Gloves'}) ON CREATE SET p.id = 'general_purpose_gloves';

// Query 80
MERGE (p:Product {name: 'Chemical Gloves'}) ON CREATE SET p.id = 'chemical_gloves';

// Query 81
MERGE (p:Product {name: 'Electrician Gloves'}) ON CREATE SET p.id = 'electrician_gloves';

// Query 82
MERGE (p:Product {name: 'Unsupported Chemical Gloves'}) ON CREATE SET p.id = 'unsupported_chemical_gloves';

// Query 83
// Step 10: OFFERS Relationships;

// Query 84
MATCH (c:Company {name: 'Dipped Products'}), (p:Product {name: 'Industrial Gloves'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Dipped Products'}), (p:Product {name: 'General-Purpose Gloves'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Dipped Products'}), (p:Product {name: 'Chemical Gloves'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Dipped Products'}), (p:Product {name: 'Electrician Gloves'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Dipped Products'}), (p:Product {name: 'Unsupported Chemical Gloves'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 88
// Generated on: 2025-10-03T02:29:13.081844
