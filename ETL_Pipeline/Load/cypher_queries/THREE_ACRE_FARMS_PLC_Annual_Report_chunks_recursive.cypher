// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Three Acre Farms'}) ON CREATE SET c.id = 'three_acre_farms', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'Ceylon Grain Elevators'}) ON CREATE SET c.id = 'ceylon_grain_elevators', c.region = 'Sri Lanka';

// Query 4
MERGE (c:Company {name: 'Union Bank of Colombo'}) ON CREATE SET c.id = 'union_bank_of_colombo', c.region = 'Sri Lanka';

// Query 5
MERGE (c:Company {name: 'Ceylon Pioneer Poultry Breeders'}) ON CREATE SET c.id = 'ceylon_pioneer_poultry_breeders', c.region = 'Sri Lanka';

// Query 6
MERGE (c:Company {name: 'Millennium Multibreeder Farms'}) ON CREATE SET c.id = 'millennium_multibreeder_farms', c.region = 'Sri Lanka';

// Query 7
MERGE (c:Company {name: 'Seylan Bank'}) ON CREATE SET c.id = 'seylan_bank', c.region = 'Sri Lanka';

// Query 8
MERGE (c:Company {name: 'Hatton National Bank'}) ON CREATE SET c.id = 'hatton_national_bank', c.region = 'Sri Lanka';

// Query 9
MERGE (c:Company {name: 'Nations Trust Bank'}) ON CREATE SET c.id = 'nations_trust_bank', c.region = 'Sri Lanka';

// Query 10
MERGE (c:Company {name: 'National Development Bank'}) ON CREATE SET c.id = 'national_development_bank', c.region = 'Sri Lanka';

// Query 11
MERGE (c:Company {name: 'Bank of Ceylon'}) ON CREATE SET c.id = 'bank_of_ceylon', c.region = 'Sri Lanka';

// Query 12
MERGE (c:Company {name: 'SSP Corporate Services'}) ON CREATE SET c.id = 'ssp_corporate_services', c.region = 'Sri Lanka';

// Query 13
MERGE (c:Company {name: 'Varners Lanka Law Office'}) ON CREATE SET c.id = 'varners_lanka_law_office', c.region = 'Sri Lanka';

// Query 14
MERGE (c:Company {name: 'D L & F De Saram'}) ON CREATE SET c.id = 'd_l_and_f_de_saram', c.region = 'Sri Lanka';

// Query 15
// Step 2: Auditor;

// Query 16
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 17
// Step 3: AUDITED_BY Relationship;

// Query 18
MATCH (c:Company {name: 'Three Acre Farms'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 19
// Step 4: People - Directors and Executives;

// Query 20
MERGE (p:Person {name: 'K. A. R. S. Perera'}) ON CREATE SET p.id = 'k_a_r_s_perera';

// Query 21
MERGE (p:Person {name: 'Wickrema Senaka Weerasooria'}) ON CREATE SET p.id = 'wickrema_senaka_weerasooria';

// Query 22
MERGE (p:Person {name: 'Cheng Chih Kwong'}) ON CREATE SET p.id = 'cheng_chih_kwong';

// Query 23
MERGE (p:Person {name: 'Damrong Valentino Yap Tiong Seng'}) ON CREATE SET p.id = 'damrong_valentino_yap_tiong_seng';

// Query 24
MERGE (p:Person {name: 'Cheng Koh Chuen Bernard'}) ON CREATE SET p.id = 'cheng_koh_chuen_bernard';

// Query 25
MERGE (p:Person {name: 'Sunil Leeniyagoda'}) ON CREATE SET p.id = 'sunil_leeniyagoda';

// Query 26
MERGE (p:Person {name: 'Prathap Ramanujam'}) ON CREATE SET p.id = 'prathap_ramanujam';

// Query 27
MERGE (p:Person {name: 'R. N. Asirwatham'}) ON CREATE SET p.id = 'r_n_asirwatham';

// Query 28
// Step 5: HOLDS_POSITION Relationships;

// Query 29
MATCH (p:Person {name: 'K. A. R. S. Perera'}), (c:Company {name: 'Three Acre Farms'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-06-30');

// Query 30
MATCH (p:Person {name: 'Wickrema Senaka Weerasooria'}), (c:Company {name: 'Three Acre Farms'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-06-30');

// Query 31
MATCH (p:Person {name: 'Cheng Chih Kwong'}), (c:Company {name: 'Three Acre Farms'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-06-30');

// Query 32
MATCH (p:Person {name: 'Damrong Valentino Yap Tiong Seng'}), (c:Company {name: 'Three Acre Farms'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-06-30');

// Query 33
MATCH (p:Person {name: 'Cheng Koh Chuen Bernard'}), (c:Company {name: 'Three Acre Farms'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-06-30');

// Query 34
MATCH (p:Person {name: 'Sunil Leeniyagoda'}), (c:Company {name: 'Three Acre Farms'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-06-30');

// Query 35
MATCH (p:Person {name: 'Prathap Ramanujam'}), (c:Company {name: 'Three Acre Farms'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-06-30');

// Query 36
MATCH (p:Person {name: 'R. N. Asirwatham'}), (c:Company {name: 'Three Acre Farms'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-06-30');

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
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Float Adjusted Market Capitalisation'}) ON CREATE SET m.id = 'float_adjusted_market_capitalisation', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Public Shareholding Percentage'}) ON CREATE SET m.id = 'public_shareholding_percentage', m.unit = '%';

// Query 47
MERGE (m:Metric {name: 'Number of Public Shareholders'}) ON CREATE SET m.id = 'number_of_public_shareholders', m.unit = 'Count';

// Query 48
// Step 7: HAS_METRIC Relationships;

// Query 49
MATCH (c:Company {name: 'Three Acre Farms'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3535164000, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Three Acre Farms'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4806900000, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Three Acre Farms'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1506632000, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Three Acre Farms'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 959336000, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Three Acre Farms'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1051092000, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Three Acre Farms'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 909971000, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Three Acre Farms'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1142990000, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Three Acre Farms'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 795928000, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Three Acre Farms'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44.64, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Three Acre Farms'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38.65, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Three Acre Farms'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10380786000, r.as_of = date('2024-06-30');

// Query 60
MATCH (c:Company {name: 'Three Acre Farms'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9415500000, r.as_of = date('2023-12-31');

// Query 61
MATCH (c:Company {name: 'Three Acre Farms'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8698878000, r.as_of = date('2024-06-30');

// Query 62
MATCH (c:Company {name: 'Three Acre Farms'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8024506000, r.as_of = date('2023-12-31');

// Query 63
MATCH (c:Company {name: 'Three Acre Farms'}), (m:Metric {name: 'Float Adjusted Market Capitalisation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2006400000, r.as_of = date('2024-06-30');

// Query 64
MATCH (c:Company {name: 'Three Acre Farms'}), (m:Metric {name: 'Public Shareholding Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27.78, r.as_of = date('2024-06-30');

// Query 65
MATCH (c:Company {name: 'Three Acre Farms'}), (m:Metric {name: 'Public Shareholding Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27.78, r.as_of = date('2023-06-30');

// Query 66
MATCH (c:Company {name: 'Three Acre Farms'}), (m:Metric {name: 'Number of Public Shareholders'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2582, r.as_of = date('2024-06-30');

// Query 67
MATCH (c:Company {name: 'Three Acre Farms'}), (m:Metric {name: 'Number of Public Shareholders'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2650, r.as_of = date('2023-06-30');

// Query 68
// Step 8: Sectors;

// Query 69
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 70
// Step 9: IN_SECTOR Relationships;

// Query 71
MATCH (c:Company {name: 'Three Acre Farms'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 72
// Step 10: Products;

// Query 73
MERGE (p:Product {name: 'Selective Breeding'}) ON CREATE SET p.id = 'selective_breeding';

// Query 74
MERGE (p:Product {name: 'Hatching'}) ON CREATE SET p.id = 'hatching';

// Query 75
MERGE (p:Product {name: 'Commercial Day Old Chicks (DOCs)'}) ON CREATE SET p.id = 'commercial_day_old_chicks_docs';

// Query 76
MERGE (p:Product {name: 'Broiler Day Old Chicks'}) ON CREATE SET p.id = 'broiler_day_old_chicks';

// Query 77
MERGE (p:Product {name: 'Layer Day Old Chicks'}) ON CREATE SET p.id = 'layer_day_old_chicks';

// Query 78
MERGE (p:Product {name: 'Grandparent Farm Operation'}) ON CREATE SET p.id = 'grandparent_farm_operation';

// Query 79
MERGE (p:Product {name: 'Commercial Broiler Farming'}) ON CREATE SET p.id = 'commercial_broiler_farming';

// Query 80
MERGE (p:Product {name: 'Table Eggs'}) ON CREATE SET p.id = 'table_eggs';

// Query 81
// Step 11: OFFERS Relationships;

// Query 82
MATCH (c:Company {name: 'Three Acre Farms'}), (p:Product {name: 'Selective Breeding'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Three Acre Farms'}), (p:Product {name: 'Hatching'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Three Acre Farms'}), (p:Product {name: 'Commercial Day Old Chicks (DOCs)'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Three Acre Farms'}), (p:Product {name: 'Broiler Day Old Chicks'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Three Acre Farms'}), (p:Product {name: 'Layer Day Old Chicks'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Three Acre Farms'}), (p:Product {name: 'Grandparent Farm Operation'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Three Acre Farms'}), (p:Product {name: 'Commercial Broiler Farming'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Three Acre Farms'}), (p:Product {name: 'Table Eggs'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
// Step 12: Company-Company Relationships (OWNS);

// Query 91
MATCH (parent:Company {name: 'Ceylon Grain Elevators'}), (child:Company {name: 'Three Acre Farms'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 57.21, r.as_of = date('2024-06-30');

// Query 92
// Step 13: Person-Company Shareholding (OWNS_SHARES);

// Query 93
MATCH (p:Person {name: 'Wickrema Senaka Weerasooria'}), (c:Company {name: 'Three Acre Farms'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 2000, r.as_of = date('2024-06-30');

// Query 94
MATCH (p:Person {name: 'Cheng Chih Kwong'}), (c:Company {name: 'Three Acre Farms'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 19, r.as_of = date('2024-06-30');

// Total queries: 94
// Generated on: 2025-10-03T00:48:50.759280
