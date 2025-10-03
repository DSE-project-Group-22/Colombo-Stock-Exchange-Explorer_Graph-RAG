// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Dankotuwa Porcelain'}) ON CREATE SET c.id = 'dankotuwa_porcelain', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor (No specific auditor firm name found in hardcoded list, skipping);

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Yudy Kanagasabai'}) ON CREATE SET p.id = 'yudy_kanagasabai';

// Query 6
MERGE (p:Person {name: 'Ranil Pathirana'}) ON CREATE SET p.id = 'ranil_pathirana';

// Query 7
MERGE (p:Person {name: 'Rohan Palitha Peris'}) ON CREATE SET p.id = 'rohan_palitha_peris';

// Query 8
MERGE (p:Person {name: 'Shalike Karunasena'}) ON CREATE SET p.id = 'shalike_karunasena';

// Query 9
MERGE (p:Person {name: 'Dr. Sajeeva Narangoda'}) ON CREATE SET p.id = 'dr_sajeeva_narangoda';

// Query 10
MERGE (p:Person {name: 'Nathasha Egodage'}) ON CREATE SET p.id = 'nathasha_egodage';

// Query 11
MERGE (p:Person {name: 'Lakshitha Rajendran'}) ON CREATE SET p.id = 'lakshitha_rajendran';

// Query 12
MERGE (p:Person {name: 'Dr. Hasuli Perera'}) ON CREATE SET p.id = 'dr_hasuli_perera';

// Query 13
MERGE (p:Person {name: 'Vardan Aslibekyan'}) ON CREATE SET p.id = 'vardan_aslibekyan';

// Query 14
MERGE (p:Person {name: 'R T Devasurendra'}) ON CREATE SET p.id = 'r_t_devasurendra';

// Query 15
// Step 4: HOLDS_POSITION Relationships;

// Query 16
MATCH (p:Person {name: 'Yudy Kanagasabai'}), (c:Company {name: 'Dankotuwa Porcelain'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-10-23');

// Query 17
MATCH (p:Person {name: 'Ranil Pathirana'}), (c:Company {name: 'Dankotuwa Porcelain'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2023-10-30');

// Query 18
MATCH (p:Person {name: 'Rohan Palitha Peris'}), (c:Company {name: 'Dankotuwa Porcelain'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-10-19');

// Query 19
MATCH (p:Person {name: 'Shalike Karunasena'}), (c:Company {name: 'Dankotuwa Porcelain'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'Dr. Sajeeva Narangoda'}), (c:Company {name: 'Dankotuwa Porcelain'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Nathasha Egodage'}), (c:Company {name: 'Dankotuwa Porcelain'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-10-19');

// Query 22
MATCH (p:Person {name: 'Lakshitha Rajendran'}), (c:Company {name: 'Dankotuwa Porcelain'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-10-19');

// Query 23
MATCH (p:Person {name: 'Dr. Hasuli Perera'}), (c:Company {name: 'Dankotuwa Porcelain'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-10-19');

// Query 24
MATCH (p:Person {name: 'Vardan Aslibekyan'}), (c:Company {name: 'Dankotuwa Porcelain'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'R T Devasurendra'}), (c:Company {name: 'Dankotuwa Porcelain'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2023-10-19');

// Query 26
// Step 5: Metric Nodes;

// Query 27
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 34
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 35
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 36
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 38
// Step 6: HAS_METRIC Relationships;

// Query 39
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3875961000, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3362473000, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 764907000, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 777349000, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 697311000, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 896909000, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 441345000, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 622067000, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6488763000, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5299966000, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4034429000, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3573683000, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.79, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14.67, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18.36, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27.56, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.58, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.72, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.83, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.32, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.36, r.year = 2023;

// Query 60
// Step 7: Sectors;

// Query 61
MERGE (s:Sector {name: 'Consumer Durables and Apparel'}) ON CREATE SET s.id = 'consumer_durables_and_apparel';

// Query 62
// Step 8: IN_SECTOR Relationships;

// Query 63
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (s:Sector {name: 'Consumer Durables and Apparel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 64
// Step 9: Products;

// Query 65
MERGE (p:Product {name: 'Porcelain tableware'}) ON CREATE SET p.id = 'porcelain_tableware';

// Query 66
MERGE (p:Product {name: 'Royal Fernwood products'}) ON CREATE SET p.id = 'royal_fernwood_products';

// Query 67
MERGE (p:Product {name: 'Laklain'}) ON CREATE SET p.id = 'laklain';

// Query 68
MERGE (p:Product {name: 'Economical range'}) ON CREATE SET p.id = 'economical_range';

// Query 69
MERGE (p:Product {name: 'Specialised cutlery range'}) ON CREATE SET p.id = 'specialised_cutlery_range';

// Query 70
// Step 10: OFFERS Relationships;

// Query 71
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (p:Product {name: 'Porcelain tableware'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (p:Product {name: 'Royal Fernwood products'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (p:Product {name: 'Laklain'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (p:Product {name: 'Economical range'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (p:Product {name: 'Specialised cutlery range'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
// Step 11: Company-Company Relationships (OWNS, MANAGES);

// Query 77
MERGE (parent:Company {name: 'Ceyline Investment'}) ON CREATE SET parent.id = 'ceyline_investment';

// Query 78
MATCH (parent:Company {name: 'Ceyline Investment'}), (child:Company {name: 'Dankotuwa Porcelain'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 50.1, r.as_of = date('2023-07-13');

// Total queries: 78
// Generated on: 2025-10-02T21:57:23.644036
