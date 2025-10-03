// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Lanka Milk Foods CWE'}) ON CREATE SET c.id = 'lanka_milk_foods_cwe', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('1981-11-12');

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'D. H. S. Jayawardena'}) ON CREATE SET p.id = 'd_h_s_jayawardena';

// Query 9
MERGE (p:Person {name: 'C. R. Jansz'}) ON CREATE SET p.id = 'c_r_jansz';

// Query 10
MERGE (p:Person {name: 'D. S. T. Jayawardena'}) ON CREATE SET p.id = 'd_s_t_jayawardena';

// Query 11
MERGE (p:Person {name: 'D. S. K. Amarasekera'}) ON CREATE SET p.id = 'd_s_k_amarasekera';

// Query 12
MERGE (p:Person {name: 'A. Shakthevale'}) ON CREATE SET p.id = 'a_shakthevale';

// Query 13
MERGE (p:Person {name: 'D. Hasitha Stassen Jayawardena'}) ON CREATE SET p.id = 'd_hasitha_stassen_jayawardena';

// Query 14
MERGE (p:Person {name: 'H. M. A. Jayesinghe'}) ON CREATE SET p.id = 'h_m_a_jayesinghe';

// Query 15
MERGE (p:Person {name: 'J. T. M. Cooray'}) ON CREATE SET p.id = 'j_t_m_cooray';

// Query 16
MERGE (p:Person {name: 'S. Perera'}) ON CREATE SET p.id = 's_perera';

// Query 17
MERGE (p:Person {name: 'H. K. Bulathwatte'}) ON CREATE SET p.id = 'h_k_bulathwatte';

// Query 18
// Step 5: HOLDS_POSITION Relationships;

// Query 19
MATCH (p:Person {name: 'D. H. S. Jayawardena'}), (c:Company {name: 'Lanka Milk Foods CWE'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'C. R. Jansz'}), (c:Company {name: 'Lanka Milk Foods CWE'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'D. S. T. Jayawardena'}), (c:Company {name: 'Lanka Milk Foods CWE'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'D. S. K. Amarasekera'}), (c:Company {name: 'Lanka Milk Foods CWE'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'A. Shakthevale'}), (c:Company {name: 'Lanka Milk Foods CWE'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'D. Hasitha Stassen Jayawardena'}), (c:Company {name: 'Lanka Milk Foods CWE'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'H. M. A. Jayesinghe'}), (c:Company {name: 'Lanka Milk Foods CWE'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-04-01');

// Query 26
MATCH (p:Person {name: 'J. T. M. Cooray'}), (c:Company {name: 'Lanka Milk Foods CWE'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-04-01');

// Query 27
MATCH (p:Person {name: 'S. Perera'}), (c:Company {name: 'Lanka Milk Foods CWE'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'H. K. Bulathwatte'}), (c:Company {name: 'Lanka Milk Foods CWE'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-03-31');

// Query 29
// Step 6: Metrics;

// Query 30
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 35
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 36
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 39
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 40
// Step 7: HAS_METRIC Relationships;

// Query 41
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16704032000, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14171501000, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1766122000, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1172934000, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2293401000, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1262422000, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2215510000, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1189205000, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.89, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.53, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.21, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.77, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29772490000, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21126464000, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21806297000, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14704239000, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.35, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.43, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.54, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.97, r.year = 2023;

// Query 61
// Step 8: Sectors;

// Query 62
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 63
MERGE (s:Sector {name: 'Food and Staples Retailing'}) ON CREATE SET s.id = 'food_and_staples_retailing';

// Query 64
// Step 9: IN_SECTOR Relationships;

// Query 65
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 66
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (s:Sector {name: 'Food and Staples Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 67
// Step 10: Products;

// Query 68
MERGE (p:Product {name: 'Powdered Milk'}) ON CREATE SET p.id = 'powdered_milk';

// Query 69
MERGE (p:Product {name: 'Liquid Milk'}) ON CREATE SET p.id = 'liquid_milk';

// Query 70
MERGE (p:Product {name: 'UHT Milk'}) ON CREATE SET p.id = 'uht_milk';

// Query 71
MERGE (p:Product {name: 'Ambewela Farm Fresh Milk'}) ON CREATE SET p.id = 'ambewela_farm_fresh_milk';

// Query 72
MERGE (p:Product {name: 'Fruit Juice'}) ON CREATE SET p.id = 'fruit_juice';

// Query 73
MERGE (p:Product {name: 'Happy Cow Cheese'}) ON CREATE SET p.id = 'happy_cow_cheese';

// Query 74
MERGE (p:Product {name: 'Red Bull Energy Drink'}) ON CREATE SET p.id = 'red_bull_energy_drink';

// Query 75
MERGE (p:Product {name: 'DANO Milk Products'}) ON CREATE SET p.id = 'dano_milk_products';

// Query 76
MERGE (p:Product {name: 'Carbonated Canned Beverages'}) ON CREATE SET p.id = 'carbonated_canned_beverages';

// Query 77
// Step 11: OFFERS Relationships;

// Query 78
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (p:Product {name: 'Powdered Milk'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (p:Product {name: 'Liquid Milk'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (p:Product {name: 'UHT Milk'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (p:Product {name: 'Ambewela Farm Fresh Milk'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (p:Product {name: 'Fruit Juice'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (p:Product {name: 'Happy Cow Cheese'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (p:Product {name: 'Red Bull Energy Drink'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (p:Product {name: 'DANO Milk Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Lanka Milk Foods CWE'}), (p:Product {name: 'Carbonated Canned Beverages'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 86
// Generated on: 2025-10-03T02:26:55.515095
