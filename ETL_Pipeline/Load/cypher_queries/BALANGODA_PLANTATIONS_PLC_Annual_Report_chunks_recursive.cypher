// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Balangoda Plantations'}) ON CREATE SET c.id = 'balangoda_plantations', c.founded_on = date('1992-06-11'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Balangoda Plantations'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'D Hasitha S Jayawardena'}) ON CREATE SET p.id = 'd_hasitha_s_jayawardena';

// Query 9
MERGE (p:Person {name: 'C R Jansz'}) ON CREATE SET p.id = 'c_r_jansz';

// Query 10
MERGE (p:Person {name: 'M A N S Perera'}) ON CREATE SET p.id = 'm_a_n_s_perera';

// Query 11
MERGE (p:Person {name: 'K Dayaparan'}) ON CREATE SET p.id = 'k_dayaparan';

// Query 12
MERGE (p:Person {name: 'A Shakthevale'}) ON CREATE SET p.id = 'a_shakthevale';

// Query 13
MERGE (p:Person {name: 'D S K Amarasekara'}) ON CREATE SET p.id = 'd_s_k_amarasekara';

// Query 14
MERGE (p:Person {name: 'M R Mihular'}) ON CREATE SET p.id = 'm_r_mihular';

// Query 15
MERGE (p:Person {name: 'R A Fernando'}) ON CREATE SET p.id = 'r_a_fernando';

// Query 16
MERGE (p:Person {name: 'P A Jayatunga'}) ON CREATE SET p.id = 'p_a_jayatunga';

// Query 17
MERGE (p:Person {name: 'D Wekunagoda'}) ON CREATE SET p.id = 'd_wekunagoda';

// Query 18
MERGE (p:Person {name: 'R Kodikara'}) ON CREATE SET p.id = 'r_kodikara';

// Query 19
MERGE (p:Person {name: 'D Fernando'}) ON CREATE SET p.id = 'd_fernando';

// Query 20
MERGE (p:Person {name: 'D S Heenatigalage'}) ON CREATE SET p.id = 'd_s_heenatigalage';

// Query 21
MERGE (p:Person {name: 'T Ratnam'}) ON CREATE SET p.id = 't_ratnam';

// Query 22
// Step 5: HOLDS_POSITION Relationships;

// Query 23
MATCH (p:Person {name: 'D Hasitha S Jayawardena'}), (c:Company {name: 'Balangoda Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 24
MATCH (p:Person {name: 'C R Jansz'}), (c:Company {name: 'Balangoda Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 25
MATCH (p:Person {name: 'M A N S Perera'}), (c:Company {name: 'Balangoda Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 26
MATCH (p:Person {name: 'K Dayaparan'}), (c:Company {name: 'Balangoda Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 27
MATCH (p:Person {name: 'A Shakthevale'}), (c:Company {name: 'Balangoda Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-09-30');

// Query 28
MATCH (p:Person {name: 'D S K Amarasekara'}), (c:Company {name: 'Balangoda Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-09-30');

// Query 29
MATCH (p:Person {name: 'M R Mihular'}), (c:Company {name: 'Balangoda Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-10-01');

// Query 30
MATCH (p:Person {name: 'R A Fernando'}), (c:Company {name: 'Balangoda Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-10-01');

// Query 31
MATCH (p:Person {name: 'P A Jayatunga'}), (c:Company {name: 'Balangoda Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-12-31');

// Query 32
MATCH (p:Person {name: 'D Wekunagoda'}), (c:Company {name: 'Balangoda Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-12-31');

// Query 33
MATCH (p:Person {name: 'R Kodikara'}), (c:Company {name: 'Balangoda Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-12-31');

// Query 34
MATCH (p:Person {name: 'D Fernando'}), (c:Company {name: 'Balangoda Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 35
MATCH (p:Person {name: 'D S Heenatigalage'}), (c:Company {name: 'Balangoda Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-12-31');

// Query 36
MATCH (p:Person {name: 'T Ratnam'}), (c:Company {name: 'Balangoda Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-12-31');

// Query 37
// Step 6: Metrics;

// Query 38
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 45
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 47
// Step 7: HAS_METRIC Relationships;

// Query 48
MATCH (c:Company {name: 'Balangoda Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4841854000, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Balangoda Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4129862000, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Balangoda Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 957201000, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Balangoda Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 354851000, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Balangoda Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 741216000, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Balangoda Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 69069000, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Balangoda Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1113000000, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Balangoda Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 678000000, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Balangoda Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8059000000, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Balangoda Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7752000000, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Balangoda Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3717000000, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Balangoda Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3138000000, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Balangoda Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.73, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Balangoda Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.57, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Balangoda Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.68, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Balangoda Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.48, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Balangoda Plantations'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.16, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Balangoda Plantations'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.43, r.year = 2023;

// Query 66
// Step 8: Sectors;

// Query 67
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 68
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 69
// Step 9: IN_SECTOR Relationships;

// Query 70
MATCH (c:Company {name: 'Balangoda Plantations'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 71
MATCH (c:Company {name: 'Balangoda Plantations'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 72
// Step 10: Products;

// Query 73
MERGE (p:Product {name: 'Tea'}) ON CREATE SET p.id = 'tea';

// Query 74
MERGE (p:Product {name: 'Rubber'}) ON CREATE SET p.id = 'rubber';

// Query 75
// Step 11: OFFERS Relationships;

// Query 76
MATCH (c:Company {name: 'Balangoda Plantations'}), (p:Product {name: 'Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
MATCH (c:Company {name: 'Balangoda Plantations'}), (p:Product {name: 'Rubber'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 77
// Generated on: 2025-10-03T00:44:03.294564
