// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Singer Sri Lanka'}) ON CREATE SET c.id = 'singer_sri_lanka', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Singer Sri Lanka'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: Subsidiary Companies (for HOLDS_POSITION relationships);

// Query 7
MERGE (sub1:Company {name: 'Singer Finance (Lanka)'}) ON CREATE SET sub1.id = 'singer_finance_lanka';

// Query 8
MERGE (sub2:Company {name: 'Regnis Appliances'}) ON CREATE SET sub2.id = 'regnis_appliances';

// Query 9
MERGE (sub3:Company {name: 'Reality Lanka'}) ON CREATE SET sub3.id = 'reality_lanka';

// Query 10
// Step 4: People - Directors and Executives;

// Query 11
MERGE (p:Person {name: 'Mohan Pandithage'}) ON CREATE SET p.id = 'mohan_pandithage';

// Query 12
MERGE (p:Person {name: 'Mahesh Wijewardene'}) ON CREATE SET p.id = 'mahesh_wijewardene';

// Query 13
MERGE (p:Person {name: 'Sarath Ganegoda'}) ON CREATE SET p.id = 'sarath_ganegoda';

// Query 14
MERGE (p:Person {name: 'Kelum Kospelawatte'}) ON CREATE SET p.id = 'kelum_kospelawatte';

// Query 15
MERGE (p:Person {name: 'Malin Fernando'}) ON CREATE SET p.id = 'malin_fernando';

// Query 16
MERGE (p:Person {name: 'Thulitha Mendis'}) ON CREATE SET p.id = 'thulitha_mendis';

// Query 17
MERGE (p:Person {name: 'Vajira Tennakoon'}) ON CREATE SET p.id = 'vajira_tennakoon';

// Query 18
MERGE (p:Person {name: 'Hisham Jamaldeen'}) ON CREATE SET p.id = 'hisham_jamaldeen';

// Query 19
MERGE (p:Person {name: 'Deepal Sooriyaarachchi'}) ON CREATE SET p.id = 'deepal_sooriyaarachchi';

// Query 20
MERGE (p:Person {name: 'Dilip De S. Wijeyeratne'}) ON CREATE SET p.id = 'dilip_de_s_wijeyeratne';

// Query 21
MERGE (p:Person {name: 'Aravinda Perera'}) ON CREATE SET p.id = 'aravinda_perera';

// Query 22
MERGE (p:Person {name: 'Thushan Amarasuriya'}) ON CREATE SET p.id = 'thushan_amarasuriya';

// Query 23
MERGE (p:Person {name: 'Jayanth Perera'}) ON CREATE SET p.id = 'jayanth_perera';

// Query 24
MERGE (p:Person {name: 'Darshini Talpahewa'}) ON CREATE SET p.id = 'darshini_talpahewa';

// Query 25
MERGE (p:Person {name: 'Ranil De Silva'}) ON CREATE SET p.id = 'ranil_de_silva';

// Query 26
MERGE (p:Person {name: 'Saman Herath'}) ON CREATE SET p.id = 'saman_herath';

// Query 27
MERGE (p:Person {name: 'Dumith Fernando'}) ON CREATE SET p.id = 'dumith_fernando';

// Query 28
// Step 5: HOLDS_POSITION Relationships;

// Query 29
MATCH (p:Person {name: 'Mohan Pandithage'}), (c:Company {name: 'Singer Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'Mohan Pandithage'}), (c:Company {name: 'Singer Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'Mahesh Wijewardene'}), (c:Company {name: 'Singer Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'Sarath Ganegoda'}), (c:Company {name: 'Singer Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'Sarath Ganegoda'}), (c:Company {name: 'Singer Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'Kelum Kospelawatte'}), (c:Company {name: 'Singer Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'Malin Fernando'}), (c:Company {name: 'Singer Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 36
MATCH (p:Person {name: 'Thulitha Mendis'}), (c:Company {name: 'Singer Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 37
MATCH (p:Person {name: 'Vajira Tennakoon'}), (c:Company {name: 'Singer Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 38
MATCH (p:Person {name: 'Hisham Jamaldeen'}), (c:Company {name: 'Singer Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 39
MATCH (p:Person {name: 'Deepal Sooriyaarachchi'}), (c:Company {name: 'Singer Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 40
MATCH (p:Person {name: 'Dilip De S. Wijeyeratne'}), (c:Company {name: 'Singer Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 41
MATCH (p:Person {name: 'Dumith Fernando'}), (c:Company {name: 'Singer Sri Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 42
MATCH (p:Person {name: 'Aravinda Perera'}), (c:Company {name: 'Singer Finance (Lanka)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 43
MATCH (p:Person {name: 'Thushan Amarasuriya'}), (c:Company {name: 'Singer Finance (Lanka)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 44
MATCH (p:Person {name: 'Jayanth Perera'}), (c:Company {name: 'Singer Finance (Lanka)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 45
MATCH (p:Person {name: 'Mahesh Wijewardene'}), (c:Company {name: 'Singer Finance (Lanka)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 46
MATCH (p:Person {name: 'Darshini Talpahewa'}), (c:Company {name: 'Singer Finance (Lanka)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 47
MATCH (p:Person {name: 'Ranil De Silva'}), (c:Company {name: 'Singer Finance (Lanka)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 48
MATCH (p:Person {name: 'Saman Herath'}), (c:Company {name: 'Singer Finance (Lanka)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 49
MATCH (p:Person {name: 'Mohan Pandithage'}), (c:Company {name: 'Regnis Appliances'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 50
MATCH (p:Person {name: 'Mahesh Wijewardene'}), (c:Company {name: 'Regnis Appliances'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 51
MATCH (p:Person {name: 'Sarath Ganegoda'}), (c:Company {name: 'Regnis Appliances'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 52
MATCH (p:Person {name: 'Kelum Kospelawatte'}), (c:Company {name: 'Regnis Appliances'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 53
MATCH (p:Person {name: 'Malin Fernando'}), (c:Company {name: 'Regnis Appliances'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 54
MATCH (p:Person {name: 'Thulitha Mendis'}), (c:Company {name: 'Regnis Appliances'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 55
MATCH (p:Person {name: 'Vajira Tennakoon'}), (c:Company {name: 'Regnis Appliances'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 56
MATCH (p:Person {name: 'Mohan Pandithage'}), (c:Company {name: 'Reality Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 57
MATCH (p:Person {name: 'Mahesh Wijewardene'}), (c:Company {name: 'Reality Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 58
MATCH (p:Person {name: 'Sarath Ganegoda'}), (c:Company {name: 'Reality Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 59
MATCH (p:Person {name: 'Thulitha Mendis'}), (c:Company {name: 'Reality Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 60
// Step 6: Metrics;

// Query 61
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 62
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 63
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 64
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 65
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 66
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 67
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 68
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 69
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 70
// Step 7: HAS_METRIC Relationships;

// Query 71
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 63333444999, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47950386172, r.year = 2023;

// Query 73
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16054917000, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16215934000, r.year = 2023;

// Query 75
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3579901000, r.year = 2024;

// Query 76
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6272838000, r.year = 2023;

// Query 77
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -118484000, r.year = 2024;

// Query 78
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -68636000, r.year = 2023;

// Query 79
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -297701000, r.year = 2024;

// Query 80
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 220599000, r.year = 2023;

// Query 81
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.14, r.year = 2024;

// Query 82
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.01, r.year = 2023;

// Query 83
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.51, r.year = 2022;

// Query 84
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.18, r.year = 2021;

// Query 85
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.25, r.year = 2020;

// Query 86
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.74, r.year = 2024;

// Query 87
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.75, r.year = 2023;

// Query 88
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 34.54, r.year = 2022;

// Query 89
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28.27, r.year = 2021;

// Query 90
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.11, r.year = 2020;

// Query 91
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 70889000000, r.year = 2024;

// Query 92
MATCH (c:Company {name: 'Singer Sri Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12444000000, r.year = 2024;

// Query 93
// Step 8: Sectors;

// Query 94
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 95
MERGE (s:Sector {name: 'Consumer Durables and Apparel'}) ON CREATE SET s.id = 'consumer_durables_and_apparel';

// Query 96
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 97
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 98
// Step 9: IN_SECTOR Relationships;

// Query 99
MATCH (c:Company {name: 'Singer Sri Lanka'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 100
MATCH (c:Company {name: 'Singer Sri Lanka'}), (s:Sector {name: 'Consumer Durables and Apparel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 101
MATCH (c:Company {name: 'Singer Sri Lanka'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 102
MATCH (c:Company {name: 'Singer Sri Lanka'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 103
// Step 10: Products;

// Query 104
MERGE (p:Product {name: 'Televisions'}) ON CREATE SET p.id = 'televisions';

// Query 105
MERGE (p:Product {name: 'Audios'}) ON CREATE SET p.id = 'audios';

// Query 106
MERGE (p:Product {name: 'DVD Players'}) ON CREATE SET p.id = 'dvd_players';

// Query 107
MERGE (p:Product {name: 'Leasing'}) ON CREATE SET p.id = 'leasing';

// Query 108
MERGE (p:Product {name: 'Hire Purchase'}) ON CREATE SET p.id = 'hire_purchase';

// Query 109
MERGE (p:Product {name: 'Loans'}) ON CREATE SET p.id = 'loans';

// Query 110
MERGE (p:Product {name: 'Wood Furniture'}) ON CREATE SET p.id = 'wood_furniture';

// Query 111
MERGE (p:Product {name: 'Layered Furniture'}) ON CREATE SET p.id = 'layered_furniture';

// Query 112
MERGE (p:Product {name: 'Sofa Sets'}) ON CREATE SET p.id = 'sofa_sets';

// Query 113
MERGE (p:Product {name: 'Steel Furniture'}) ON CREATE SET p.id = 'steel_furniture';

// Query 114
MERGE (p:Product {name: 'Mattresses'}) ON CREATE SET p.id = 'mattresses';

// Query 115
MERGE (p:Product {name: 'Pantry Sets'}) ON CREATE SET p.id = 'pantry_sets';

// Query 116
MERGE (p:Product {name: 'Refrigerators'}) ON CREATE SET p.id = 'refrigerators';

// Query 117
MERGE (p:Product {name: 'Washing Machines'}) ON CREATE SET p.id = 'washing_machines';

// Query 118
MERGE (p:Product {name: 'Deep Freezers'}) ON CREATE SET p.id = 'deep_freezers';

// Query 119
MERGE (p:Product {name: 'Bottle Coolers'}) ON CREATE SET p.id = 'bottle_coolers';

// Query 120
MERGE (p:Product {name: 'Air Conditioners'}) ON CREATE SET p.id = 'air_conditioners';

// Query 121
MERGE (p:Product {name: 'Fans'}) ON CREATE SET p.id = 'fans';

// Query 122
MERGE (p:Product {name: 'Small Appliances'}) ON CREATE SET p.id = 'small_appliances';

// Query 123
MERGE (p:Product {name: 'Kitchen Appliances'}) ON CREATE SET p.id = 'kitchen_appliances';

// Query 124
MERGE (p:Product {name: 'Computers'}) ON CREATE SET p.id = 'computers';

// Query 125
MERGE (p:Product {name: 'Mobile Phones'}) ON CREATE SET p.id = 'mobile_phones';

// Query 126
MERGE (p:Product {name: 'Domestic Sewing Machines'}) ON CREATE SET p.id = 'domestic_sewing_machines';

// Query 127
MERGE (p:Product {name: 'Industrial Sewing Machines'}) ON CREATE SET p.id = 'industrial_sewing_machines';

// Query 128
MERGE (p:Product {name: 'Water Pumps'}) ON CREATE SET p.id = 'water_pumps';

// Query 129
MERGE (p:Product {name: 'Paddy Threshers'}) ON CREATE SET p.id = 'paddy_threshers';

// Query 130
MERGE (p:Product {name: 'Tractors'}) ON CREATE SET p.id = 'tractors';

// Query 131
MERGE (p:Product {name: 'Solar Systems'}) ON CREATE SET p.id = 'solar_systems';

// Query 132
MERGE (p:Product {name: 'Security Surveillance'}) ON CREATE SET p.id = 'security_surveillance';

// Query 133
// Step 11: OFFERS Relationships;

// Query 134
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Televisions'}) MERGE (c)-[:OFFERS]->(p);

// Query 135
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Audios'}) MERGE (c)-[:OFFERS]->(p);

// Query 136
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'DVD Players'}) MERGE (c)-[:OFFERS]->(p);

// Query 137
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Leasing'}) MERGE (c)-[:OFFERS]->(p);

// Query 138
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Hire Purchase'}) MERGE (c)-[:OFFERS]->(p);

// Query 139
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 140
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Wood Furniture'}) MERGE (c)-[:OFFERS]->(p);

// Query 141
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Layered Furniture'}) MERGE (c)-[:OFFERS]->(p);

// Query 142
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Sofa Sets'}) MERGE (c)-[:OFFERS]->(p);

// Query 143
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Steel Furniture'}) MERGE (c)-[:OFFERS]->(p);

// Query 144
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Mattresses'}) MERGE (c)-[:OFFERS]->(p);

// Query 145
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Pantry Sets'}) MERGE (c)-[:OFFERS]->(p);

// Query 146
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Refrigerators'}) MERGE (c)-[:OFFERS]->(p);

// Query 147
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Washing Machines'}) MERGE (c)-[:OFFERS]->(p);

// Query 148
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Deep Freezers'}) MERGE (c)-[:OFFERS]->(p);

// Query 149
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Bottle Coolers'}) MERGE (c)-[:OFFERS]->(p);

// Query 150
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Air Conditioners'}) MERGE (c)-[:OFFERS]->(p);

// Query 151
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Fans'}) MERGE (c)-[:OFFERS]->(p);

// Query 152
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Small Appliances'}) MERGE (c)-[:OFFERS]->(p);

// Query 153
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Kitchen Appliances'}) MERGE (c)-[:OFFERS]->(p);

// Query 154
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Computers'}) MERGE (c)-[:OFFERS]->(p);

// Query 155
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Mobile Phones'}) MERGE (c)-[:OFFERS]->(p);

// Query 156
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Domestic Sewing Machines'}) MERGE (c)-[:OFFERS]->(p);

// Query 157
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Industrial Sewing Machines'}) MERGE (c)-[:OFFERS]->(p);

// Query 158
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Water Pumps'}) MERGE (c)-[:OFFERS]->(p);

// Query 159
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Paddy Threshers'}) MERGE (c)-[:OFFERS]->(p);

// Query 160
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Tractors'}) MERGE (c)-[:OFFERS]->(p);

// Query 161
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Solar Systems'}) MERGE (c)-[:OFFERS]->(p);

// Query 162
MATCH (c:Company {name: 'Singer Sri Lanka'}), (p:Product {name: 'Security Surveillance'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 162
// Generated on: 2025-10-03T02:25:45.912786
