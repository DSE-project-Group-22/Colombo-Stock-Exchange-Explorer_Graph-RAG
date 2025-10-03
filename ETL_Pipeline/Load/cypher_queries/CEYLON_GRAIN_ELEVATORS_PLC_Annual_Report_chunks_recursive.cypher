// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Ceylon Grain Elevators'}) ON CREATE SET c.id = 'ceylon_grain_elevators', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Cheng Eng Loong'}) ON CREATE SET p.id = 'cheng_eng_loong';

// Query 8
MERGE (p:Person {name: 'Prathap Ramanujam'}) ON CREATE SET p.id = 'prathap_ramanujam';

// Query 9
MERGE (p:Person {name: 'R. N. Asirwatham'}) ON CREATE SET p.id = 'r_n_asirwatham';

// Query 10
MERGE (p:Person {name: 'Wickrema Senaka Weerasooria'}) ON CREATE SET p.id = 'wickrema_senaka_weerasooria';

// Query 11
MERGE (p:Person {name: 'Cheng Chih Kwong'}) ON CREATE SET p.id = 'cheng_chih_kwong';

// Query 12
MERGE (p:Person {name: 'Damrong Valentino Yap Tiong Seng'}) ON CREATE SET p.id = 'damrong_valentino_yap_tiong_seng';

// Query 13
MERGE (p:Person {name: 'Cheng Koh Chuen Bernard'}) ON CREATE SET p.id = 'cheng_koh_chuen_bernard';

// Query 14
MERGE (p:Person {name: 'K.A.R.S. Perera'}) ON CREATE SET p.id = 'k_a_r_s_perera';

// Query 15
// Step 4: HOLDS_POSITION Relationships;

// Query 16
MATCH (p:Person {name: 'Cheng Eng Loong'}), (c:Company {name: 'Ceylon Grain Elevators'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-06-30');

// Query 17
MATCH (p:Person {name: 'Prathap Ramanujam'}), (c:Company {name: 'Ceylon Grain Elevators'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-06-30');

// Query 18
MATCH (p:Person {name: 'R. N. Asirwatham'}), (c:Company {name: 'Ceylon Grain Elevators'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-06-30');

// Query 19
MATCH (p:Person {name: 'Wickrema Senaka Weerasooria'}), (c:Company {name: 'Ceylon Grain Elevators'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-06-30');

// Query 20
MATCH (p:Person {name: 'Wickrema Senaka Weerasooria'}), (c:Company {name: 'Ceylon Grain Elevators'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-06-30');

// Query 21
MATCH (p:Person {name: 'Cheng Chih Kwong'}), (c:Company {name: 'Ceylon Grain Elevators'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-06-30');

// Query 22
MATCH (p:Person {name: 'Cheng Chih Kwong'}), (c:Company {name: 'Ceylon Grain Elevators'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-06-30');

// Query 23
MATCH (p:Person {name: 'Damrong Valentino Yap Tiong Seng'}), (c:Company {name: 'Ceylon Grain Elevators'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-06-30');

// Query 24
MATCH (p:Person {name: 'Damrong Valentino Yap Tiong Seng'}), (c:Company {name: 'Ceylon Grain Elevators'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-06-30');

// Query 25
MATCH (p:Person {name: 'Cheng Koh Chuen Bernard'}), (c:Company {name: 'Ceylon Grain Elevators'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-06-30');

// Query 26
MATCH (p:Person {name: 'K.A.R.S. Perera'}), (c:Company {name: 'Ceylon Grain Elevators'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-06-30');

// Query 27
// Step 5: Metrics;

// Query 28
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 35
// Step 6: HAS_METRIC Relationships;

// Query 36
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10919379000, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9894741000, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2354643000, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2005940000, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1601187000, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1619021000, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1859870000, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1680897000, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.19, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20.49, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15233656000, r.as_of = date('2024-06-30');

// Query 47
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14513667000, r.as_of = date('2023-06-30');

// Query 48
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20790796000, r.as_of = date('2024-06-30');

// Query 49
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18908040000, r.as_of = date('2023-06-30');

// Query 50
// Step 7: Sectors;

// Query 51
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 52
// Step 8: IN_SECTOR Relationships;

// Query 53
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 54
// Step 9: Products;

// Query 55
MERGE (p:Product {name: 'Poultry Feed'}) ON CREATE SET p.id = 'poultry_feed';

// Query 56
MERGE (p:Product {name: 'Animal Feed'}) ON CREATE SET p.id = 'animal_feed';

// Query 57
MERGE (p:Product {name: 'Poultry Equipment'}) ON CREATE SET p.id = 'poultry_equipment';

// Query 58
MERGE (p:Product {name: 'Drugs'}) ON CREATE SET p.id = 'drugs';

// Query 59
MERGE (p:Product {name: 'Vaccines'}) ON CREATE SET p.id = 'vaccines';

// Query 60
MERGE (p:Product {name: 'Day Old Chicks'}) ON CREATE SET p.id = 'day_old_chicks';

// Query 61
MERGE (p:Product {name: 'Processed Chicken'}) ON CREATE SET p.id = 'processed_chicken';

// Query 62
MERGE (p:Product {name: 'Warehouse Facilities'}) ON CREATE SET p.id = 'warehouse_facilities';

// Query 63
// Step 10: OFFERS Relationships;

// Query 64
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (p:Product {name: 'Poultry Feed'}) MERGE (c)-[:OFFERS]->(p);

// Query 65
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (p:Product {name: 'Animal Feed'}) MERGE (c)-[:OFFERS]->(p);

// Query 66
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (p:Product {name: 'Poultry Equipment'}) MERGE (c)-[:OFFERS]->(p);

// Query 67
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (p:Product {name: 'Drugs'}) MERGE (c)-[:OFFERS]->(p);

// Query 68
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (p:Product {name: 'Vaccines'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (p:Product {name: 'Day Old Chicks'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (p:Product {name: 'Processed Chicken'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Ceylon Grain Elevators'}), (p:Product {name: 'Warehouse Facilities'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
// Step 11: Company-Company Relationships (OWNS);

// Query 73
MERGE (pc:Company {name: 'Prima Limited'}) ON CREATE SET pc.id = 'prima_limited', pc.region = 'Singapore';

// Query 74
MATCH (pc:Company {name: 'Prima Limited'}), (c:Company {name: 'Ceylon Grain Elevators'}) MERGE (pc)-[r:OWNS]->(c) ON CREATE SET r.pct = 45.45, r.as_of = date('2024-06-30');

// Query 75
// Step 12: Person Shareholdings;

// Query 76
MATCH (p:Person {name: 'Wickrema Senaka Weerasooria'}), (c:Company {name: 'Ceylon Grain Elevators'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 2800, r.as_of = date('2024-06-30');

// Query 77
MATCH (p:Person {name: 'Cheng Chih Kwong'}), (c:Company {name: 'Ceylon Grain Elevators'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 397, r.as_of = date('2024-06-30');

// Total queries: 77
// Generated on: 2025-10-02T23:26:09.495209
