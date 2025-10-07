// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'CIC Holdings'}) ON CREATE SET c.id = 'cic_holdings', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'CIC Holdings'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'S. H. Amarsekara'}) ON CREATE SET p.id = 's_h_amarsekara';

// Query 8
MERGE (p:Person {name: 'R. S. Captain'}) ON CREATE SET p.id = 'r_s_captain';

// Query 9
MERGE (p:Person {name: 'S. M. Enderby'}) ON CREATE SET p.id = 's_m_enderby';

// Query 10
MERGE (p:Person {name: 'J. R. Gunaratne'}) ON CREATE SET p.id = 'j_r_gunaratne';

// Query 11
MERGE (p:Person {name: 'D. T. S. H. Mudalige'}) ON CREATE SET p.id = 'd_t_s_h_mudalige';

// Query 12
MERGE (p:Person {name: 'P. R. Saldin'}) ON CREATE SET p.id = 'p_r_saldin';

// Query 13
MERGE (p:Person {name: 'K. D. Senewiratne'}) ON CREATE SET p.id = 'k_d_senewiratne';

// Query 14
MERGE (p:Person {name: 'M. P. Jayawardena'}) ON CREATE SET p.id = 'm_p_jayawardena';

// Query 15
MERGE (p:Person {name: 'Aroshan Seresinhe'}) ON CREATE SET p.id = 'aroshan_seresinhe';

// Query 16
MERGE (p:Person {name: 'Prasadi Samarakoon'}) ON CREATE SET p.id = 'prasadi_samarakoon';

// Query 17
MERGE (p:Person {name: 'Jayantha Rajapakse'}) ON CREATE SET p.id = 'jayantha_rajapakse';

// Query 18
MERGE (p:Person {name: 'Roshanie Jayasundera Moraes'}) ON CREATE SET p.id = 'roshanie_jayasundera_moraes';

// Query 19
MERGE (p:Person {name: 'Devapriya Nugawela'}) ON CREATE SET p.id = 'devapriya_nugawela';

// Query 20
MERGE (p:Person {name: 'Erandi Wickramaarachchi'}) ON CREATE SET p.id = 'erandi_wickramaarachchi';

// Query 21
MERGE (p:Person {name: 'Aruna Jayasekera'}) ON CREATE SET p.id = 'aruna_jayasekera';

// Query 22
MERGE (p:Person {name: 'Ramani Samarasundera'}) ON CREATE SET p.id = 'ramani_samarasundera';

// Query 23
MERGE (p:Person {name: 'Prasad Wegiriya'}) ON CREATE SET p.id = 'prasad_wegiriya';

// Query 24
MERGE (p:Person {name: 'Waruna Madawanarachchi'}) ON CREATE SET p.id = 'waruna_madawanarachchi';

// Query 25
MERGE (p:Person {name: 'Ajith Weerasinghe'}) ON CREATE SET p.id = 'ajith_weerasinghe';

// Query 26
MERGE (p:Person {name: 'Viraj Manatunga'}) ON CREATE SET p.id = 'viraj_manatunga';

// Query 27
// Step 4: HOLDS_POSITION Relationships;

// Query 28
MATCH (p:Person {name: 'S. H. Amarsekara'}), (c:Company {name: 'CIC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'R. S. Captain'}), (c:Company {name: 'CIC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'S. M. Enderby'}), (c:Company {name: 'CIC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'J. R. Gunaratne'}), (c:Company {name: 'CIC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'D. T. S. H. Mudalige'}), (c:Company {name: 'CIC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'P. R. Saldin'}), (c:Company {name: 'CIC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'K. D. Senewiratne'}), (c:Company {name: 'CIC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'M. P. Jayawardena'}), (c:Company {name: 'CIC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 36
MATCH (p:Person {name: 'Aroshan Seresinhe'}), (c:Company {name: 'CIC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 37
MATCH (p:Person {name: 'Prasadi Samarakoon'}), (c:Company {name: 'CIC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 38
MATCH (p:Person {name: 'Jayantha Rajapakse'}), (c:Company {name: 'CIC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 39
MATCH (p:Person {name: 'Roshanie Jayasundera Moraes'}), (c:Company {name: 'CIC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 40
MATCH (p:Person {name: 'Devapriya Nugawela'}), (c:Company {name: 'CIC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 41
MATCH (p:Person {name: 'Erandi Wickramaarachchi'}), (c:Company {name: 'CIC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-03-31');

// Query 42
MATCH (p:Person {name: 'Aruna Jayasekera'}), (c:Company {name: 'CIC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 43
MATCH (p:Person {name: 'Ramani Samarasundera'}), (c:Company {name: 'CIC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 44
MATCH (p:Person {name: 'Prasad Wegiriya'}), (c:Company {name: 'CIC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 45
MATCH (p:Person {name: 'Waruna Madawanarachchi'}), (c:Company {name: 'CIC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 46
MATCH (p:Person {name: 'Ajith Weerasinghe'}), (c:Company {name: 'CIC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 47
MATCH (p:Person {name: 'Viraj Manatunga'}), (c:Company {name: 'CIC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Operating Officer', r.as_of = date('2024-03-31');

// Query 48
// Step 5: Metrics;

// Query 49
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 54
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 55
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 57
// Step 6: HAS_METRIC Relationships;

// Query 58
MATCH (c:Company {name: 'CIC Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 76424242000.0, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'CIC Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 68274718000.0, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'CIC Holdings'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10673653000.0, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'CIC Holdings'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16843086000.0, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'CIC Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10974197000.0, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'CIC Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9997624000.0, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'CIC Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25.70, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'CIC Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20.58, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'CIC Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28.0, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'CIC Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 34.0, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'CIC Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39994876000.0, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'CIC Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27829015000.0, r.year = 2023;

// Query 70
MATCH (c:Company {name: 'CIC Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78487258000.0, r.year = 2024;

// Query 71
MATCH (c:Company {name: 'CIC Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 55802767000.0, r.year = 2023;

// Query 72
MATCH (c:Company {name: 'CIC Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13517422000.0, r.year = 2024;

// Query 73
MATCH (c:Company {name: 'CIC Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13068538000.0, r.year = 2023;

// Query 74
// Company-specific metrics (not group);

// Query 75
MATCH (c:Company {name: 'CIC Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2500000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 76
MATCH (c:Company {name: 'CIC Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1800000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 77
MATCH (c:Company {name: 'CIC Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18860317000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 78
MATCH (c:Company {name: 'CIC Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15435671000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 79
// Step 7: Sectors;

// Query 80
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 81
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 82
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 83
MERGE (s:Sector {name: 'Pharmaceuticals, Biotechnology, and Life Sciences'}) ON CREATE SET s.id = 'pharmaceuticals_biotechnology_and_life_sciences';

// Query 84
// Step 8: IN_SECTOR Relationships;

// Query 85
MATCH (c:Company {name: 'CIC Holdings'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 86
MATCH (c:Company {name: 'CIC Holdings'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 87
MATCH (c:Company {name: 'CIC Holdings'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 88
MATCH (c:Company {name: 'CIC Holdings'}), (s:Sector {name: 'Pharmaceuticals, Biotechnology, and Life Sciences'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 89
// Step 9: Products;

// Query 90
MERGE (p:Product {name: 'Lawn and garden'}) ON CREATE SET p.id = 'lawn_and_garden';

// Query 91
MERGE (p:Product {name: 'Plant nutrition'}) ON CREATE SET p.id = 'plant_nutrition';

// Query 92
MERGE (p:Product {name: 'Seeds'}) ON CREATE SET p.id = 'seeds';

// Query 93
MERGE (p:Product {name: 'Agri Produce retail chain'}) ON CREATE SET p.id = 'agri_produce_retail_chain';

// Query 94
MERGE (p:Product {name: 'Agri resort'}) ON CREATE SET p.id = 'agri_resort';

// Query 95
MERGE (p:Product {name: 'Dairy'}) ON CREATE SET p.id = 'dairy';

// Query 96
MERGE (p:Product {name: 'Farms'}) ON CREATE SET p.id = 'farms';

// Query 97
MERGE (p:Product {name: 'Fruit and Vegetables'}) ON CREATE SET p.id = 'fruit_and_vegetables';

// Query 98
MERGE (p:Product {name: 'Grains'}) ON CREATE SET p.id = 'grains';

// Query 99
MERGE (p:Product {name: 'Rice'}) ON CREATE SET p.id = 'rice';

// Query 100
MERGE (p:Product {name: 'Feeds'}) ON CREATE SET p.id = 'feeds';

// Query 101
MERGE (p:Product {name: 'Poultry'}) ON CREATE SET p.id = 'poultry';

// Query 102
MERGE (p:Product {name: 'Vet care'}) ON CREATE SET p.id = 'vet_care';

// Query 103
MERGE (p:Product {name: 'Dairy breeding'}) ON CREATE SET p.id = 'dairy_breeding';

// Query 104
MERGE (p:Product {name: 'Construction Materials'}) ON CREATE SET p.id = 'construction_materials';

// Query 105
MERGE (p:Product {name: 'Industrial Raw Material'}) ON CREATE SET p.id = 'industrial_raw_material';

// Query 106
MERGE (p:Product {name: 'Packaging'}) ON CREATE SET p.id = 'packaging';

// Query 107
MERGE (p:Product {name: 'Herbal Care'}) ON CREATE SET p.id = 'herbal_care';

// Query 108
MERGE (p:Product {name: 'Medical Devices'}) ON CREATE SET p.id = 'medical_devices';

// Query 109
MERGE (p:Product {name: 'Personal Care'}) ON CREATE SET p.id = 'personal_care';

// Query 110
MERGE (p:Product {name: 'Pharmaceuticals'}) ON CREATE SET p.id = 'pharmaceuticals';

// Query 111
MERGE (p:Product {name: 'Smart Agriculture App'}) ON CREATE SET p.id = 'smart_agriculture_app';

// Query 112
MERGE (p:Product {name: 'QR system'}) ON CREATE SET p.id = 'qr_system';

// Query 113
// Step 10: OFFERS Relationships;

// Query 114
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Lawn and garden'}) MERGE (c)-[:OFFERS]->(p);

// Query 115
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Plant nutrition'}) MERGE (c)-[:OFFERS]->(p);

// Query 116
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Seeds'}) MERGE (c)-[:OFFERS]->(p);

// Query 117
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Agri Produce retail chain'}) MERGE (c)-[:OFFERS]->(p);

// Query 118
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Agri resort'}) MERGE (c)-[:OFFERS]->(p);

// Query 119
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Dairy'}) MERGE (c)-[:OFFERS]->(p);

// Query 120
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Farms'}) MERGE (c)-[:OFFERS]->(p);

// Query 121
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Fruit and Vegetables'}) MERGE (c)-[:OFFERS]->(p);

// Query 122
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Grains'}) MERGE (c)-[:OFFERS]->(p);

// Query 123
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Rice'}) MERGE (c)-[:OFFERS]->(p);

// Query 124
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Feeds'}) MERGE (c)-[:OFFERS]->(p);

// Query 125
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Poultry'}) MERGE (c)-[:OFFERS]->(p);

// Query 126
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Vet care'}) MERGE (c)-[:OFFERS]->(p);

// Query 127
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Dairy breeding'}) MERGE (c)-[:OFFERS]->(p);

// Query 128
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Construction Materials'}) MERGE (c)-[:OFFERS]->(p);

// Query 129
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Industrial Raw Material'}) MERGE (c)-[:OFFERS]->(p);

// Query 130
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Packaging'}) MERGE (c)-[:OFFERS]->(p);

// Query 131
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Herbal Care'}) MERGE (c)-[:OFFERS]->(p);

// Query 132
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Medical Devices'}) MERGE (c)-[:OFFERS]->(p);

// Query 133
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Personal Care'}) MERGE (c)-[:OFFERS]->(p);

// Query 134
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Pharmaceuticals'}) MERGE (c)-[:OFFERS]->(p);

// Query 135
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'Smart Agriculture App'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'planned';

// Query 136
MATCH (c:Company {name: 'CIC Holdings'}), (p:Product {name: 'QR system'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'planned';

// Query 137
// Step 11: Company-Company Relationships;

// Query 138
MERGE (target:Company {name: 'John Keells Holdings'}) ON CREATE SET target.id = 'john_keells_holdings';

// Query 139
MATCH (source:Company {name: 'CIC Holdings'}), (target:Company {name: 'John Keells Holdings'}) MERGE (source)-[r:OWNS]->(target) ON CREATE SET r.pct = 6.72, r.as_of = date('2024-03-31');

// Total queries: 139
// Generated on: 2025-10-03T00:26:24.386080
