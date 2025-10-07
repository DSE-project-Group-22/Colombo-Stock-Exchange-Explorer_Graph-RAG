// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Bairaha Farms'}) ON CREATE SET c.id = 'bairaha_farms', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor (No specific auditor firm found in the provided text, skipping);

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Reyaz Mihular'}) ON CREATE SET p.id = 'reyaz_mihular';

// Query 6
MERGE (p:Person {name: 'Yakooth Naleem'}) ON CREATE SET p.id = 'yakooth_naleem';

// Query 7
MERGE (p:Person {name: 'Harischandra Abeygunawardena'}) ON CREATE SET p.id = 'harischandra_abeygunawardena';

// Query 8
MERGE (p:Person {name: 'Riyal Yakoob'}) ON CREATE SET p.id = 'riyal_yakoob';

// Query 9
MERGE (p:Person {name: 'Kamil Naleem'}) ON CREATE SET p.id = 'kamil_naleem';

// Query 10
MERGE (p:Person {name: 'Mubarak Naleem'}) ON CREATE SET p.id = 'mubarak_naleem';

// Query 11
MERGE (p:Person {name: 'Mohamed Imtizam Wahid'}) ON CREATE SET p.id = 'mohamed_imtizam_wahid';

// Query 12
MERGE (p:Person {name: 'Olga Ashley Herath'}) ON CREATE SET p.id = 'olga_ashley_herath';

// Query 13
MERGE (p:Person {name: 'Radhika Ratnayake'}) ON CREATE SET p.id = 'radhika_ratnayake';

// Query 14
// Step 4: HOLDS_POSITION Relationships;

// Query 15
MATCH (p:Person {name: 'Reyaz Mihular'}), (c:Company {name: 'Bairaha Farms'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'Yakooth Naleem'}), (c:Company {name: 'Bairaha Farms'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Yakooth Naleem'}), (c:Company {name: 'Bairaha Farms'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'Harischandra Abeygunawardena'}), (c:Company {name: 'Bairaha Farms'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'Riyal Yakoob'}), (c:Company {name: 'Bairaha Farms'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'Kamil Naleem'}), (c:Company {name: 'Bairaha Farms'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Mubarak Naleem'}), (c:Company {name: 'Bairaha Farms'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Mohamed Imtizam Wahid'}), (c:Company {name: 'Bairaha Farms'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Olga Ashley Herath'}), (c:Company {name: 'Bairaha Farms'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Radhika Ratnayake'}), (c:Company {name: 'Bairaha Farms'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
// Step 5: Metrics;

// Query 26
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 32
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 33
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 34
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 36
// Step 6: HAS_METRIC Relationships;

// Query 37
MATCH (c:Company {name: 'Bairaha Farms'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13291000000.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Bairaha Farms'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11868000000.0, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Bairaha Farms'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 559000000.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Bairaha Farms'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 367000000.0, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Bairaha Farms'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 436000000.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Bairaha Farms'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 283000000.0, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Bairaha Farms'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9469000000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Bairaha Farms'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8515000000.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Bairaha Farms'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5808000000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Bairaha Farms'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5208000000.0, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Bairaha Farms'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.92, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Bairaha Farms'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.66, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Bairaha Farms'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29.77, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Bairaha Farms'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27.72, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Bairaha Farms'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.34, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Bairaha Farms'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.52, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Bairaha Farms'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24.76, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Bairaha Farms'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.09, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Bairaha Farms'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 430000000.0, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Bairaha Farms'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 468000000.0, r.year = 2023;

// Query 57
// Step 7: Sectors;

// Query 58
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 59
// Step 8: IN_SECTOR Relationships;

// Query 60
MATCH (c:Company {name: 'Bairaha Farms'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 61
// Step 9: Product nodes creation;

// Query 62
MERGE (p:Product {name: 'Broiler Day-Old Chicks'}) ON CREATE SET p.id = 'broiler_day_old_chicks';

// Query 63
MERGE (p:Product {name: 'Packeted Whole Broiler Chicken'}) ON CREATE SET p.id = 'packeted_whole_broiler_chicken';

// Query 64
MERGE (p:Product {name: 'Broiler Chicken Portions'}) ON CREATE SET p.id = 'broiler_chicken_portions';

// Query 65
MERGE (p:Product {name: 'Pre-Cooked Meats'}) ON CREATE SET p.id = 'pre_cooked_meats';

// Query 66
MERGE (p:Product {name: 'Chicken Sausages'}) ON CREATE SET p.id = 'chicken_sausages';

// Query 67
MERGE (p:Product {name: 'Chicken Meat Balls'}) ON CREATE SET p.id = 'chicken_meat_balls';

// Query 68
MERGE (p:Product {name: 'Chicken Sandwich Slices'}) ON CREATE SET p.id = 'chicken_sandwich_slices';

// Query 69
MERGE (p:Product {name: 'Marinated Chicken'}) ON CREATE SET p.id = 'marinated_chicken';

// Query 70
MERGE (p:Product {name: 'Antec Brand Disinfectants'}) ON CREATE SET p.id = 'antec_brand_disinfectants';

// Query 71
MERGE (p:Product {name: 'Hypromeal'}) ON CREATE SET p.id = 'hypromeal';

// Query 72
// Step 10: OFFERS Relationships;

// Query 73
MATCH (c:Company {name: 'Bairaha Farms'}), (p:Product {name: 'Broiler Day-Old Chicks'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'Bairaha Farms'}), (p:Product {name: 'Packeted Whole Broiler Chicken'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'Bairaha Farms'}), (p:Product {name: 'Broiler Chicken Portions'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
MATCH (c:Company {name: 'Bairaha Farms'}), (p:Product {name: 'Pre-Cooked Meats'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
MATCH (c:Company {name: 'Bairaha Farms'}), (p:Product {name: 'Chicken Sausages'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'Bairaha Farms'}), (p:Product {name: 'Chicken Meat Balls'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'Bairaha Farms'}), (p:Product {name: 'Chicken Sandwich Slices'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'Bairaha Farms'}), (p:Product {name: 'Marinated Chicken'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'Bairaha Farms'}), (p:Product {name: 'Antec Brand Disinfectants'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Bairaha Farms'}), (p:Product {name: 'Hypromeal'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
// Step 11: Company-Company Relationships (OWNS);

// Query 84
MERGE (child:Company {name: 'Bairaha Foods'}) ON CREATE SET child.id = 'bairaha_foods';

// Query 85
MATCH (parent:Company {name: 'Bairaha Farms'}), (child:Company {name: 'Bairaha Foods'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 86
MERGE (child:Company {name: 'Bairaha Trading'}) ON CREATE SET child.id = 'bairaha_trading';

// Query 87
MATCH (parent:Company {name: 'Bairaha Farms'}), (child:Company {name: 'Bairaha Trading'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 88
MERGE (child:Company {name: 'Siyane Farms'}) ON CREATE SET child.id = 'siyane_farms';

// Query 89
MATCH (parent:Company {name: 'Bairaha Farms'}), (child:Company {name: 'Siyane Farms'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 90
MERGE (child:Company {name: 'Nature\'s Best Industry'}) ON CREATE SET child.id = 'natures_best_industry';

// Query 91
MATCH (parent:Company {name: 'Bairaha Farms'}), (child:Company {name: 'Nature\'s Best Industry'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 92
MERGE (child:Company {name: 'Hill Country Farms'}) ON CREATE SET child.id = 'hill_country_farms';

// Query 93
MATCH (parent:Company {name: 'Bairaha Farms'}), (child:Company {name: 'Hill Country Farms'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 94
MERGE (child:Company {name: 'Global Reach Foods'}) ON CREATE SET child.id = 'global_reach_foods';

// Query 95
MATCH (parent:Company {name: 'Bairaha Farms'}), (child:Company {name: 'Global Reach Foods'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Total queries: 95
// Generated on: 2025-10-03T02:11:23.493981
