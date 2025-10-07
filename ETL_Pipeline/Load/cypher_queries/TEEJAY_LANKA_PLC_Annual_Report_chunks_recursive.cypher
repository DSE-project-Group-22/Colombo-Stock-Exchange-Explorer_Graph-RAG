// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Teejay Lanka'}) ON CREATE SET c.id = 'teejay_lanka', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('2000-07-12');

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Deloitte'}) ON CREATE SET a.id = 'deloitte', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Teejay Lanka'}), (a:Auditor {name: 'Deloitte'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2025;

// Query 7
// Step 4: Person Nodes;

// Query 8
MERGE (p:Person {name: 'Ajit Damon Gunewardene'}) ON CREATE SET p.id = 'ajit_damon_gunewardene';

// Query 9
MERGE (p:Person {name: 'Mohamed Ashroff Omar'}) ON CREATE SET p.id = 'mohamed_ashroff_omar';

// Query 10
MERGE (p:Person {name: 'Hasitha Premaratne'}) ON CREATE SET p.id = 'hasitha_premaratne';

// Query 11
MERGE (p:Person {name: 'Shrihan Blaise Perera'}) ON CREATE SET p.id = 'shrihan_blaise_perera';

// Query 12
MERGE (p:Person {name: 'William Charles McRaith'}) ON CREATE SET p.id = 'william_charles_mcraith';

// Query 13
MERGE (p:Person {name: 'Kit Vai Tou'}) ON CREATE SET p.id = 'kit_vai_tou';

// Query 14
MERGE (p:Person {name: 'Masaru Okutomi'}) ON CREATE SET p.id = 'masaru_okutomi';

// Query 15
// Step 5: HOLDS_POSITION Relationships;

// Query 16
MATCH (p:Person {name: 'Ajit Damon Gunewardene'}), (c:Company {name: 'Teejay Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-03-31');

// Query 17
MATCH (p:Person {name: 'Ajit Damon Gunewardene'}), (c:Company {name: 'Teejay Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 18
MATCH (p:Person {name: 'Mohamed Ashroff Omar'}), (c:Company {name: 'Teejay Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 19
MATCH (p:Person {name: 'Hasitha Premaratne'}), (c:Company {name: 'Teejay Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 20
MATCH (p:Person {name: 'Shrihan Blaise Perera'}), (c:Company {name: 'Teejay Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 21
MATCH (p:Person {name: 'William Charles McRaith'}), (c:Company {name: 'Teejay Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 22
MATCH (p:Person {name: 'Kit Vai Tou'}), (c:Company {name: 'Teejay Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 23
MATCH (p:Person {name: 'Masaru Okutomi'}), (c:Company {name: 'Teejay Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 24
// Step 6: OWNS_SHARES Relationships;

// Query 25
MATCH (p:Person {name: 'Ajit Damon Gunewardene'}), (c:Company {name: 'Teejay Lanka'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 713723, r.as_of = date('2025-03-31');

// Query 26
MATCH (p:Person {name: 'Hasitha Premaratne'}), (c:Company {name: 'Teejay Lanka'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 40000, r.as_of = date('2025-03-31');

// Query 27
// Step 7: Metric Nodes;

// Query 28
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 36
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 37
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 38
// Step 8: HAS_METRIC Relationships;

// Query 39
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 67036057000.0, r.year = 2025;

// Query 40
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 60733952000.0, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 84037126000.0, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2793021000.0, r.year = 2025;

// Query 43
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1109536000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2126731000.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4047374000.0, r.year = 2025;

// Query 46
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1572379000.0, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3116474000.0, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 55854572000.0, r.year = 2025;

// Query 49
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 55032700000.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 60058217000.0, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31529498000.0, r.year = 2025;

// Query 52
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30130164000.0, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4550604000.0, r.year = 2025;

// Query 54
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2213198000.0, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3295076000.0, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.87, r.year = 2025;

// Query 57
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.55, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.1, r.year = 2025;

// Query 59
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.6, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.9, r.year = 2025;

// Query 61
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.9, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.23698, r.year = 2025;

// Query 63
MATCH (c:Company {name: 'Teejay Lanka'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.30942, r.year = 2024;

// Query 64
// Step 9: Sector Nodes;

// Query 65
MERGE (s:Sector {name: 'Consumer Durables and Apparel'}) ON CREATE SET s.id = 'consumer_durables_and_apparel';

// Query 66
// Step 10: IN_SECTOR Relationships;

// Query 67
MATCH (c:Company {name: 'Teejay Lanka'}), (s:Sector {name: 'Consumer Durables and Apparel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 68
// Step 11: Product Nodes;

// Query 69
MERGE (p:Product {name: 'Weft Knit Fabrics'}) ON CREATE SET p.id = 'weft_knit_fabrics';

// Query 70
MERGE (p:Product {name: 'Knitted and Woven Fabrics'}) ON CREATE SET p.id = 'knitted_and_woven_fabrics';

// Query 71
MERGE (p:Product {name: 'Fleece Fabrics'}) ON CREATE SET p.id = 'fleece_fabrics';

// Query 72
MERGE (p:Product {name: 'Jacquard Fabrics'}) ON CREATE SET p.id = 'jacquard_fabrics';

// Query 73
MERGE (p:Product {name: 'Acid Printed Fabrics'}) ON CREATE SET p.id = 'acid_printed_fabrics';

// Query 74
MERGE (p:Product {name: 'Polo Business Products'}) ON CREATE SET p.id = 'polo_business_products';

// Query 75
MERGE (p:Product {name: 'Synthetic-based Fabrics'}) ON CREATE SET p.id = 'synthetic_based_fabrics';

// Query 76
// Step 12: OFFERS Relationships;

// Query 77
MATCH (c:Company {name: 'Teejay Lanka'}), (p:Product {name: 'Weft Knit Fabrics'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'Teejay Lanka'}), (p:Product {name: 'Knitted and Woven Fabrics'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'Teejay Lanka'}), (p:Product {name: 'Fleece Fabrics'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'Teejay Lanka'}), (p:Product {name: 'Jacquard Fabrics'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'Teejay Lanka'}), (p:Product {name: 'Acid Printed Fabrics'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Teejay Lanka'}), (p:Product {name: 'Polo Business Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Teejay Lanka'}), (p:Product {name: 'Synthetic-based Fabrics'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 83
// Generated on: 2025-10-03T00:04:58.166391
