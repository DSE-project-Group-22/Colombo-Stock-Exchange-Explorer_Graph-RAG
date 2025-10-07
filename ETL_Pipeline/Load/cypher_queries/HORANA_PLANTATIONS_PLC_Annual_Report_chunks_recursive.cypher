// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Horana Plantations'}) ON CREATE SET c.id = 'horana_plantations', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Horana Plantations'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: Person Nodes Creation;

// Query 8
MERGE (p:Person {name: 'J A Rodrigo'}) ON CREATE SET p.id = 'j_a_rodrigo';

// Query 9
MERGE (p:Person {name: 'T A B Speldewinde'}) ON CREATE SET p.id = 't_a_b_speldewinde';

// Query 10
MERGE (p:Person {name: 'S M Liyanage'}) ON CREATE SET p.id = 's_m_liyanage';

// Query 11
MERGE (p:Person {name: 'M C B Talwatte'}) ON CREATE SET p.id = 'm_c_b_talwatte';

// Query 12
MERGE (p:Person {name: 'S C Ganegoda'}) ON CREATE SET p.id = 's_c_ganegoda';

// Query 13
MERGE (p:Person {name: 'A N Wickremasinghe'}) ON CREATE SET p.id = 'a_n_wickremasinghe';

// Query 14
MERGE (p:Person {name: 'K D G Gunaratne'}) ON CREATE SET p.id = 'k_d_g_gunaratne';

// Query 15
MERGE (p:Person {name: 'Roshan Rajadurai'}) ON CREATE SET p.id = 'roshan_rajadurai';

// Query 16
// Step 5: HOLDS_POSITION Relationships;

// Query 17
MATCH (p:Person {name: 'J A Rodrigo'}), (c:Company {name: 'Horana Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'T A B Speldewinde'}), (c:Company {name: 'Horana Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'S M Liyanage'}), (c:Company {name: 'Horana Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'M C B Talwatte'}), (c:Company {name: 'Horana Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'S C Ganegoda'}), (c:Company {name: 'Horana Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'A N Wickremasinghe'}), (c:Company {name: 'Horana Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'K D G Gunaratne'}), (c:Company {name: 'Horana Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Roshan Rajadurai'}), (c:Company {name: 'Horana Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 25
// Step 6: Metric Nodes Creation;

// Query 26
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 33
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 34
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 35
// Step 7: HAS_METRIC Relationships;

// Query 36
MATCH (c:Company {name: 'Horana Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3385735000.0, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Horana Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3794035000.0, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Horana Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 104505000.0, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Horana Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 170062000.0, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Horana Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 226483000.0, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Horana Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 657092000.0, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Horana Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4700389000.0, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Horana Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4355171000.0, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Horana Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 880396000.0, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Horana Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 929954000.0, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Horana Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.18, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Horana Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.80, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Horana Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.67, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Horana Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.54, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Horana Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.87, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Horana Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18.29, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Horana Plantations'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.29, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Horana Plantations'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.64, r.year = 2023;

// Query 54
// Step 8: Sector Nodes Creation;

// Query 55
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 56
// Step 9: IN_SECTOR Relationships;

// Query 57
MATCH (c:Company {name: 'Horana Plantations'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 58
// Step 10: Product Nodes Creation;

// Query 59
MERGE (p:Product {name: 'Tea'}) ON CREATE SET p.id = 'tea';

// Query 60
MERGE (p:Product {name: 'Rubber'}) ON CREATE SET p.id = 'rubber';

// Query 61
MERGE (p:Product {name: 'Oil Palm'}) ON CREATE SET p.id = 'oil_palm';

// Query 62
MERGE (p:Product {name: 'Coconut'}) ON CREATE SET p.id = 'coconut';

// Query 63
MERGE (p:Product {name: 'Coffee'}) ON CREATE SET p.id = 'coffee';

// Query 64
MERGE (p:Product {name: 'Other Agricultural Produce'}) ON CREATE SET p.id = 'other_agricultural_produce';

// Query 65
MERGE (p:Product {name: 'Value Added Tea'}) ON CREATE SET p.id = 'value_added_tea';

// Query 66
MERGE (p:Product {name: 'Coconut Oil'}) ON CREATE SET p.id = 'coconut_oil';

// Query 67
MERGE (p:Product {name: 'Coffee Products'}) ON CREATE SET p.id = 'coffee_products';

// Query 68
MERGE (p:Product {name: 'Greenhouse Produce'}) ON CREATE SET p.id = 'greenhouse_produce';

// Query 69
// Step 11: OFFERS Relationships;

// Query 70
MATCH (c:Company {name: 'Horana Plantations'}), (p:Product {name: 'Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Horana Plantations'}), (p:Product {name: 'Rubber'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Horana Plantations'}), (p:Product {name: 'Oil Palm'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'Horana Plantations'}), (p:Product {name: 'Coconut'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'Horana Plantations'}), (p:Product {name: 'Coffee'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'Horana Plantations'}), (p:Product {name: 'Other Agricultural Produce'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
MATCH (c:Company {name: 'Horana Plantations'}), (p:Product {name: 'Value Added Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
MATCH (c:Company {name: 'Horana Plantations'}), (p:Product {name: 'Coconut Oil'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'Horana Plantations'}), (p:Product {name: 'Coffee Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'Horana Plantations'}), (p:Product {name: 'Greenhouse Produce'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 79
// Generated on: 2025-10-03T02:18:36.047364
