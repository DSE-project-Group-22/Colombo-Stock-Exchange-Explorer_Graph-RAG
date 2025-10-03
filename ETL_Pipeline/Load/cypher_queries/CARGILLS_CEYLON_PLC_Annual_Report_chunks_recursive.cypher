// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Cargills Ceylon'}) ON CREATE SET c.id = 'cargills_ceylon', c.founded_on = date('1946-03-01'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor - No specific auditor from the hardcoded list was identified, skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Louis Page'}) ON CREATE SET p.id = 'louis_page';

// Query 6
MERGE (p:Person {name: 'Ranjit Page'}) ON CREATE SET p.id = 'ranjit_page';

// Query 7
MERGE (p:Person {name: 'Imtiaz Abdul Wahid'}) ON CREATE SET p.id = 'imtiaz_abdul_wahid';

// Query 8
MERGE (p:Person {name: 'Asite Talwatte'}) ON CREATE SET p.id = 'asite_talwatte';

// Query 9
MERGE (p:Person {name: 'Priya Edirisinghe'}) ON CREATE SET p.id = 'priya_edirisinghe';

// Query 10
MERGE (p:Person {name: 'Sanjeev Gardiner'}) ON CREATE SET p.id = 'sanjeev_gardiner';

// Query 11
MERGE (p:Person {name: 'Errol Perera'}) ON CREATE SET p.id = 'errol_perera';

// Query 12
MERGE (p:Person {name: 'Yudhishtran Kanagasabai'}) ON CREATE SET p.id = 'yudhishtran_kanagasabai';

// Query 13
MERGE (p:Person {name: 'Joseph Page'}) ON CREATE SET p.id = 'joseph_page';

// Query 14
MERGE (p:Person {name: 'Asoka Pieris'}) ON CREATE SET p.id = 'asoka_pieris';

// Query 15
MERGE (p:Person {name: 'Indira Malwatte'}) ON CREATE SET p.id = 'indira_malwatte';

// Query 16
MERGE (p:Person {name: 'Dilantha Jayawardhana'}) ON CREATE SET p.id = 'dilantha_jayawardhana';

// Query 17
MERGE (p:Person {name: 'Dr Dushni Weerakoon'}) ON CREATE SET p.id = 'dr_dushni_weerakoon';

// Query 18
MERGE (p:Person {name: 'Ganesan Ampalavanar'}) ON CREATE SET p.id = 'ganesan_ampalavanar';

// Query 19
MERGE (p:Person {name: 'Hemali Sagarika Ellawala'}) ON CREATE SET p.id = 'hemali_sagarika_ellawala';

// Query 20
// Step 4: HOLDS_POSITION Relationships;

// Query 21
MATCH (p:Person {name: 'Louis Page'}), (c:Company {name: 'Cargills Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-07-10');

// Query 22
MATCH (p:Person {name: 'Ranjit Page'}), (c:Company {name: 'Cargills Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-07-10');

// Query 23
MATCH (p:Person {name: 'Ranjit Page'}), (c:Company {name: 'Cargills Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-07-10');

// Query 24
MATCH (p:Person {name: 'Imtiaz Abdul Wahid'}), (c:Company {name: 'Cargills Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-07-10');

// Query 25
MATCH (p:Person {name: 'Imtiaz Abdul Wahid'}), (c:Company {name: 'Cargills Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-07-10');

// Query 26
MATCH (p:Person {name: 'Asite Talwatte'}), (c:Company {name: 'Cargills Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-07-10');

// Query 27
MATCH (p:Person {name: 'Priya Edirisinghe'}), (c:Company {name: 'Cargills Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-01-15');

// Query 28
MATCH (p:Person {name: 'Sanjeev Gardiner'}), (c:Company {name: 'Cargills Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-07');

// Query 29
MATCH (p:Person {name: 'Errol Perera'}), (c:Company {name: 'Cargills Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-12-31');

// Query 30
MATCH (p:Person {name: 'Yudhishtran Kanagasabai'}), (c:Company {name: 'Cargills Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-07-28');

// Query 31
MATCH (p:Person {name: 'Joseph Page'}), (c:Company {name: 'Cargills Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-07-10');

// Query 32
MATCH (p:Person {name: 'Asoka Pieris'}), (c:Company {name: 'Cargills Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-07');

// Query 33
MATCH (p:Person {name: 'Indira Malwatte'}), (c:Company {name: 'Cargills Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-07-10');

// Query 34
MATCH (p:Person {name: 'Dilantha Jayawardhana'}), (c:Company {name: 'Cargills Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-07-10');

// Query 35
MATCH (p:Person {name: 'Dr Dushni Weerakoon'}), (c:Company {name: 'Cargills Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 36
MATCH (p:Person {name: 'Ganesan Ampalavanar'}), (c:Company {name: 'Cargills Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 37
MATCH (p:Person {name: 'Hemali Sagarika Ellawala'}), (c:Company {name: 'Cargills Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-07-10');

// Query 38
// Step 5: Metrics;

// Query 39
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Times';

// Query 46
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 47
// Step 6: HAS_METRIC Relationships;

// Query 48
MATCH (c:Company {name: 'Cargills Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28528000, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Cargills Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36062000, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Cargills Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3290784000, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Cargills Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2226541000, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Cargills Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3123421000, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Cargills Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1712886000, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Cargills Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23609228000, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Cargills Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24873226000, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Cargills Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11744771000, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Cargills Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11880856000, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Cargills Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.12, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Cargills Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.65, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Cargills Ceylon'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.72, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Cargills Ceylon'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.82, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Cargills Ceylon'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.65, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Cargills Ceylon'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.64, r.year = 2023;

// Query 64
// Step 7: Sectors;

// Query 65
MERGE (s:Sector {name: 'Food and Staples Retailing'}) ON CREATE SET s.id = 'food_and_staples_retailing';

// Query 66
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 67
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 68
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 69
// Step 8: IN_SECTOR Relationships;

// Query 70
MATCH (c:Company {name: 'Cargills Ceylon'}), (s:Sector {name: 'Food and Staples Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 71
MATCH (c:Company {name: 'Cargills Ceylon'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 72
MATCH (c:Company {name: 'Cargills Ceylon'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 73
MATCH (c:Company {name: 'Cargills Ceylon'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
// Step 9: Products;

// Query 75
MERGE (p:Product {name: 'Food City'}) ON CREATE SET p.id = 'food_city';

// Query 76
MERGE (p:Product {name: 'Cargills Express'}) ON CREATE SET p.id = 'cargills_express';

// Query 77
MERGE (p:Product {name: 'Food Hall'}) ON CREATE SET p.id = 'food_hall';

// Query 78
MERGE (p:Product {name: 'Cargills Online'}) ON CREATE SET p.id = 'cargills_online';

// Query 79
MERGE (p:Product {name: 'Ice Cream'}) ON CREATE SET p.id = 'ice_cream';

// Query 80
MERGE (p:Product {name: 'Dairy Products'}) ON CREATE SET p.id = 'dairy_products';

// Query 81
MERGE (p:Product {name: 'Fruit Based Products'}) ON CREATE SET p.id = 'fruit_based_products';

// Query 82
MERGE (p:Product {name: 'Processed Meat Products'}) ON CREATE SET p.id = 'processed_meat_products';

// Query 83
MERGE (p:Product {name: 'Fresh Meat Products'}) ON CREATE SET p.id = 'fresh_meat_products';

// Query 84
MERGE (p:Product {name: 'Biscuits'}) ON CREATE SET p.id = 'biscuits';

// Query 85
MERGE (p:Product {name: 'International FMCG Products'}) ON CREATE SET p.id = 'international_fmcg_products';

// Query 86
MERGE (p:Product {name: 'Agricultural Seeds'}) ON CREATE SET p.id = 'agricultural_seeds';

// Query 87
MERGE (p:Product {name: 'KFC Restaurants'}) ON CREATE SET p.id = 'kfc_restaurants';

// Query 88
MERGE (p:Product {name: 'TGIF Restaurants'}) ON CREATE SET p.id = 'tgif_restaurants';

// Query 89
MERGE (p:Product {name: 'Cargills Square Malls'}) ON CREATE SET p.id = 'cargills_square_malls';

// Query 90
MERGE (p:Product {name: 'Confectionery Products'}) ON CREATE SET p.id = 'confectionery_products';

// Query 91
MERGE (p:Product {name: 'Convenience Food'}) ON CREATE SET p.id = 'convenience_food';

// Query 92
// Step 10: OFFERS Relationships;

// Query 93
MATCH (c:Company {name: 'Cargills Ceylon'}), (p:Product {name: 'Food City'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: 'Cargills Ceylon'}), (p:Product {name: 'Cargills Express'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'Cargills Ceylon'}), (p:Product {name: 'Food Hall'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'Cargills Ceylon'}), (p:Product {name: 'Cargills Online'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: 'Cargills Ceylon'}), (p:Product {name: 'Ice Cream'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'Cargills Ceylon'}), (p:Product {name: 'Dairy Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: 'Cargills Ceylon'}), (p:Product {name: 'Fruit Based Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
MATCH (c:Company {name: 'Cargills Ceylon'}), (p:Product {name: 'Processed Meat Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 101
MATCH (c:Company {name: 'Cargills Ceylon'}), (p:Product {name: 'Fresh Meat Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 102
MATCH (c:Company {name: 'Cargills Ceylon'}), (p:Product {name: 'Biscuits'}) MERGE (c)-[:OFFERS]->(p);

// Query 103
MATCH (c:Company {name: 'Cargills Ceylon'}), (p:Product {name: 'International FMCG Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 104
MATCH (c:Company {name: 'Cargills Ceylon'}), (p:Product {name: 'Agricultural Seeds'}) MERGE (c)-[:OFFERS]->(p);

// Query 105
MATCH (c:Company {name: 'Cargills Ceylon'}), (p:Product {name: 'KFC Restaurants'}) MERGE (c)-[:OFFERS]->(p);

// Query 106
MATCH (c:Company {name: 'Cargills Ceylon'}), (p:Product {name: 'TGIF Restaurants'}) MERGE (c)-[:OFFERS]->(p);

// Query 107
MATCH (c:Company {name: 'Cargills Ceylon'}), (p:Product {name: 'Cargills Square Malls'}) MERGE (c)-[:OFFERS]->(p);

// Query 108
MATCH (c:Company {name: 'Cargills Ceylon'}), (p:Product {name: 'Confectionery Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 109
MATCH (c:Company {name: 'Cargills Ceylon'}), (p:Product {name: 'Convenience Food'}) MERGE (c)-[:OFFERS]->(p);

// Query 110
// Step 11: Company-Company Relationships - No valid OWNS or MANAGES relationships found based on strict rules.;

// Total queries: 110
// Generated on: 2025-10-02T23:04:38.283208
