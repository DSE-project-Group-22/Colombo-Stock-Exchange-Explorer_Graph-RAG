// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Madulsima Plantations'}) ON CREATE SET c.id = 'madulsima_plantations', c.founded_on = date('1992-06-22'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Madulsima Plantations'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'D Hasitha S Jayawardena'}) ON CREATE SET p.id = 'd_hasitha_s_jayawardena';

// Query 8
MERGE (p:Person {name: 'C R Jansz'}) ON CREATE SET p.id = 'c_r_jansz';

// Query 9
MERGE (p:Person {name: 'M A N S Perera'}) ON CREATE SET p.id = 'm_a_n_s_perera';

// Query 10
MERGE (p:Person {name: 'K Dayaparan'}) ON CREATE SET p.id = 'k_dayaparan';

// Query 11
MERGE (p:Person {name: 'A Shakthevale'}) ON CREATE SET p.id = 'a_shakthevale';

// Query 12
MERGE (p:Person {name: 'D S K Amarasekara'}) ON CREATE SET p.id = 'd_s_k_amarasekara';

// Query 13
MERGE (p:Person {name: 'M R Mihular'}) ON CREATE SET p.id = 'm_r_mihular';

// Query 14
MERGE (p:Person {name: 'R A Fernando'}) ON CREATE SET p.id = 'r_a_fernando';

// Query 15
// Step 4: HOLDS_POSITION Relationships;

// Query 16
MATCH (p:Person {name: 'D Hasitha S Jayawardena'}), (c:Company {name: 'Madulsima Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 17
MATCH (p:Person {name: 'C R Jansz'}), (c:Company {name: 'Madulsima Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 18
MATCH (p:Person {name: 'M A N S Perera'}), (c:Company {name: 'Madulsima Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 19
MATCH (p:Person {name: 'K Dayaparan'}), (c:Company {name: 'Madulsima Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 20
MATCH (p:Person {name: 'A Shakthevale'}), (c:Company {name: 'Madulsima Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-10-01');

// Query 21
MATCH (p:Person {name: 'D S K Amarasekara'}), (c:Company {name: 'Madulsima Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-10-01');

// Query 22
MATCH (p:Person {name: 'M R Mihular'}), (c:Company {name: 'Madulsima Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-10-01');

// Query 23
MATCH (p:Person {name: 'R A Fernando'}), (c:Company {name: 'Madulsima Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-10-01');

// Query 24
// Step 5: Metrics;

// Query 25
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 34
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 35
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 36
// Step 6: HAS_METRIC Relationships;

// Query 37
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4685000000.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4039000000.0, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 691000000.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 83000000.0, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1005000000.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 651000000.0, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 464000000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -242000000.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 244000000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1038000000.0, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9303000000.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8537000000.0, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -133000000.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -387000000.0, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.44, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.13, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.0, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -12.0, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.90, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.51, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -71.0, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Madulsima Plantations'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -23.06, r.year = 2023;

// Query 59
// Step 7: Sectors;

// Query 60
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 61
// Step 8: IN_SECTOR Relationships;

// Query 62
MATCH (c:Company {name: 'Madulsima Plantations'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 63
// Step 9: Product nodes creation;

// Query 64
MERGE (p:Product {name: 'Organic Teas'}) ON CREATE SET p.id = 'organic_teas';

// Query 65
MERGE (p:Product {name: 'Single Origin Garden Marks'}) ON CREATE SET p.id = 'single_origin_garden_marks';

// Query 66
MERGE (p:Product {name: 'Ready-to-Drink innovations'}) ON CREATE SET p.id = 'ready_to_drink_innovations';

// Query 67
// Step 10: OFFERS relationships;

// Query 68
MATCH (c:Company {name: 'Madulsima Plantations'}), (p:Product {name: 'Organic Teas'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Madulsima Plantations'}), (p:Product {name: 'Single Origin Garden Marks'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'Madulsima Plantations'}), (p:Product {name: 'Ready-to-Drink innovations'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 70
// Generated on: 2025-10-03T00:42:49.990918
