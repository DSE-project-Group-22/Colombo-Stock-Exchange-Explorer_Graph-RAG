// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Ramboda Falls'}) ON CREATE SET c.id = 'ramboda_falls', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Ramboda Falls'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'K. L. Yeoh'}) ON CREATE SET p.id = 'k_l_yeoh';

// Query 9
MERGE (p:Person {name: 'Imiyage Jagath Ananda Karunarathna'}) ON CREATE SET p.id = 'imiyage_jagath_ananda_karunarathna';

// Query 10
MERGE (p:Person {name: 'V. N. D. Wickramasinghe'}) ON CREATE SET p.id = 'v_n_d_wickramasinghe';

// Query 11
MERGE (p:Person {name: 'D. D. Sunil'}) ON CREATE SET p.id = 'd_d_sunil';

// Query 12
MERGE (p:Person {name: 'Yau Sing Lee'}) ON CREATE SET p.id = 'yau_sing_lee';

// Query 13
MERGE (p:Person {name: 'W. G. Danapala'}) ON CREATE SET p.id = 'w_g_danapala';

// Query 14
MERGE (p:Person {name: 'J. A. D. Viraj Rasanga'}) ON CREATE SET p.id = 'j_a_d_viraj_rasanga';

// Query 15
// Step 5: HOLDS_POSITION Relationships;

// Query 16
MATCH (p:Person {name: 'K. L. Yeoh'}), (c:Company {name: 'Ramboda Falls'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Imiyage Jagath Ananda Karunarathna'}), (c:Company {name: 'Ramboda Falls'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'V. N. D. Wickramasinghe'}), (c:Company {name: 'Ramboda Falls'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'D. D. Sunil'}), (c:Company {name: 'Ramboda Falls'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'Yau Sing Lee'}), (c:Company {name: 'Ramboda Falls'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'W. G. Danapala'}), (c:Company {name: 'Ramboda Falls'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'J. A. D. Viraj Rasanga'}), (c:Company {name: 'Ramboda Falls'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 23
// Step 6: Person OWNS_SHARES Relationships;

// Query 24
MATCH (p:Person {name: 'K. L. Yeoh'}), (c:Company {name: 'Ramboda Falls'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 12938371, r.pct = 64.69, r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Imiyage Jagath Ananda Karunarathna'}), (c:Company {name: 'Ramboda Falls'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1880700, r.pct = 9.4, r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'V. N. D. Wickramasinghe'}), (c:Company {name: 'Ramboda Falls'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 20000, r.pct = 0.1, r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'D. D. Sunil'}), (c:Company {name: 'Ramboda Falls'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 999, r.pct = 0.0, r.as_of = date('2024-03-31');

// Query 28
// Step 7: Metric Nodes;

// Query 29
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 36
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 37
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 39
// Step 8: HAS_METRIC Relationships;

// Query 40
MATCH (c:Company {name: 'Ramboda Falls'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 198984153, r.year = 2024, r.as_of = date('2024-03-31');

// Query 41
MATCH (c:Company {name: 'Ramboda Falls'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 122303000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 42
MATCH (c:Company {name: 'Ramboda Falls'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 25870927, r.year = 2024, r.as_of = date('2024-03-31');

// Query 43
MATCH (c:Company {name: 'Ramboda Falls'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7544000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 44
MATCH (c:Company {name: 'Ramboda Falls'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16649000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 45
MATCH (c:Company {name: 'Ramboda Falls'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -11751000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 46
MATCH (c:Company {name: 'Ramboda Falls'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 731016000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 47
MATCH (c:Company {name: 'Ramboda Falls'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 705187000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 48
MATCH (c:Company {name: 'Ramboda Falls'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 511808000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 49
MATCH (c:Company {name: 'Ramboda Falls'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 495585000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 50
MATCH (c:Company {name: 'Ramboda Falls'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.83, r.year = 2024, r.as_of = date('2024-03-31');

// Query 51
MATCH (c:Company {name: 'Ramboda Falls'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.59, r.year = 2023, r.as_of = date('2023-03-31');

// Query 52
MATCH (c:Company {name: 'Ramboda Falls'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.3, r.year = 2024, r.as_of = date('2024-03-31');

// Query 53
MATCH (c:Company {name: 'Ramboda Falls'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2.4, r.year = 2023, r.as_of = date('2023-03-31');

// Query 54
MATCH (c:Company {name: 'Ramboda Falls'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.9, r.year = 2024, r.as_of = date('2024-03-31');

// Query 55
MATCH (c:Company {name: 'Ramboda Falls'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.6, r.year = 2023, r.as_of = date('2023-03-31');

// Query 56
MATCH (c:Company {name: 'Ramboda Falls'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 23800000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 57
MATCH (c:Company {name: 'Ramboda Falls'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6900000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 58
MATCH (c:Company {name: 'Ramboda Falls'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.34, r.year = 2024, r.as_of = date('2024-03-31');

// Query 59
MATCH (c:Company {name: 'Ramboda Falls'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.35, r.year = 2023, r.as_of = date('2023-03-31');

// Query 60
// Step 9: Sector Node;

// Query 61
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 62
// Step 10: IN_SECTOR Relationship;

// Query 63
MATCH (c:Company {name: 'Ramboda Falls'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 64
// Step 11: Product Nodes;

// Query 65
MERGE (p:Product {name: 'Restaurant Services'}) ON CREATE SET p.id = 'restaurant_services';

// Query 66
MERGE (p:Product {name: 'Beverage and Liquor Sales'}) ON CREATE SET p.id = 'beverage_and_liquor_sales';

// Query 67
MERGE (p:Product {name: 'Room Accommodation'}) ON CREATE SET p.id = 'room_accommodation';

// Query 68
MERGE (p:Product {name: 'Tobacco Sales'}) ON CREATE SET p.id = 'tobacco_sales';

// Query 69
MERGE (p:Product {name: 'Laundry Services'}) ON CREATE SET p.id = 'laundry_services';

// Query 70
MERGE (p:Product {name: 'Infinity Swimming Pool'}) ON CREATE SET p.id = 'infinity_swimming_pool';

// Query 71
MERGE (p:Product {name: 'Pool Bar & Cafe'}) ON CREATE SET p.id = 'pool_bar_and_cafe';

// Query 72
MERGE (p:Product {name: 'Glamping Accommodation'}) ON CREATE SET p.id = 'glamping_accommodation';

// Query 73
// Step 12: OFFERS Relationships;

// Query 74
MATCH (c:Company {name: 'Ramboda Falls'}), (p:Product {name: 'Restaurant Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'Ramboda Falls'}), (p:Product {name: 'Beverage and Liquor Sales'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
MATCH (c:Company {name: 'Ramboda Falls'}), (p:Product {name: 'Room Accommodation'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
MATCH (c:Company {name: 'Ramboda Falls'}), (p:Product {name: 'Tobacco Sales'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'Ramboda Falls'}), (p:Product {name: 'Laundry Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'Ramboda Falls'}), (p:Product {name: 'Infinity Swimming Pool'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'Ramboda Falls'}), (p:Product {name: 'Pool Bar & Cafe'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'Ramboda Falls'}), (p:Product {name: 'Glamping Accommodation'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 81
// Generated on: 2025-10-03T01:29:00.550058
