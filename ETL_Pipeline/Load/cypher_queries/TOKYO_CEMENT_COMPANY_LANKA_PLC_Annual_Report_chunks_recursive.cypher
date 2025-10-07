// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Tokyo Cement Company Lanka'}) ON CREATE SET c.id = 'tokyo_cement_company_lanka', c.region = 'Sri Lanka', c.founded_on = date('1982-01-01'), c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'BDO Partners'}) ON CREATE SET a.id = 'bdo_partners', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (a:Auditor {name: 'BDO Partners'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'S.R. Gnanam'}) ON CREATE SET p.id = 's_r_gnanam';

// Query 9
MERGE (p:Person {name: 'Harsha Cabral'}) ON CREATE SET p.id = 'harsha_cabral';

// Query 10
MERGE (p:Person {name: 'A.D.B. Talwatte'}) ON CREATE SET p.id = 'a_d_b_talwatte';

// Query 11
MERGE (p:Person {name: 'W.C. Fernando'}) ON CREATE SET p.id = 'w_c_fernando';

// Query 12
MERGE (p:Person {name: 'Indrajit Coomaraswamy'}) ON CREATE SET p.id = 'indrajit_coomaraswamy';

// Query 13
MERGE (p:Person {name: 'Praveen Gnanam'}) ON CREATE SET p.id = 'praveen_gnanam';

// Query 14
MERGE (p:Person {name: 'A.S.G. Gnanam'}) ON CREATE SET p.id = 'a_s_g_gnanam';

// Query 15
MERGE (p:Person {name: 'E.J. Gnanam'}) ON CREATE SET p.id = 'e_j_gnanam';

// Query 16
MERGE (p:Person {name: 'Ravi Dias'}) ON CREATE SET p.id = 'ravi_dias';

// Query 17
MERGE (p:Person {name: 'Shuichi Nakamoto'}) ON CREATE SET p.id = 'shuichi_nakamoto';

// Query 18
// Step 5: HOLDS_POSITION Relationships;

// Query 19
MATCH (p:Person {name: 'S.R. Gnanam'}), (c:Company {name: 'Tokyo Cement Company Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'Harsha Cabral'}), (c:Company {name: 'Tokyo Cement Company Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Harsha Cabral'}), (c:Company {name: 'Tokyo Cement Company Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'A.D.B. Talwatte'}), (c:Company {name: 'Tokyo Cement Company Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'W.C. Fernando'}), (c:Company {name: 'Tokyo Cement Company Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Indrajit Coomaraswamy'}), (c:Company {name: 'Tokyo Cement Company Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Praveen Gnanam'}), (c:Company {name: 'Tokyo Cement Company Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'A.S.G. Gnanam'}), (c:Company {name: 'Tokyo Cement Company Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'E.J. Gnanam'}), (c:Company {name: 'Tokyo Cement Company Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'Ravi Dias'}), (c:Company {name: 'Tokyo Cement Company Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'Shuichi Nakamoto'}), (c:Company {name: 'Tokyo Cement Company Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 30
// Step 6: Metric Nodes Creation;

// Query 31
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 36
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 37
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 39
// Step 7: HAS_METRIC Relationships (Tokyo Cement Company Lanka - Company Metrics);

// Query 40
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 37374746252, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 35665412644, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2055000000, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3345000000, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1366000000, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2117000000, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.10, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.80, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.55, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.58, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 43643595477, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38798038126, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17861246209, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17157988686, r.year = 2023;

// Query 54
// Step 7: HAS_METRIC Relationships (Tokyo Cement Company Lanka - Group Metrics);

// Query 55
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 49824000000, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 56481000000, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 52477000000, r.year = 2022;

// Query 58
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42962000000, r.year = 2021;

// Query 59
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 35768000000, r.year = 2020;

// Query 60
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3448000000, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6772000000, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -289000000, r.year = 2022;

// Query 63
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5209000000, r.year = 2021;

// Query 64
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2629000000, r.year = 2020;

// Query 65
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2422000000, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4999000000, r.year = 2023;

// Query 67
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -358000000, r.year = 2022;

// Query 68
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5411000000, r.year = 2021;

// Query 69
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2318000000, r.year = 2020;

// Query 70
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.48, r.year = 2024;

// Query 71
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.31, r.year = 2023;

// Query 72
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.08, r.year = 2024;

// Query 73
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.95, r.year = 2023;

// Query 74
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.76, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.27, r.year = 2023;

// Query 76
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.81, r.year = 2022;

// Query 77
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24.68, r.year = 2021;

// Query 78
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.44, r.year = 2020;

// Query 79
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50633000000, r.year = 2024;

// Query 80
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47475000000, r.year = 2023;

// Query 81
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39134000000, r.year = 2022;

// Query 82
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47210000000, r.year = 2021;

// Query 83
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38148000000, r.year = 2020;

// Query 84
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27615108331, r.year = 2024;

// Query 85
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25887975382, r.year = 2023;

// Query 86
// Step 8: Sector Nodes Creation;

// Query 87
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 88
MERGE (s:Sector {name: 'Utilities'}) ON CREATE SET s.id = 'utilities';

// Query 89
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 90
// Step 9: IN_SECTOR Relationships;

// Query 91
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 92
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 93
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 94
// Step 10: Product Nodes Creation;

// Query 95
MERGE (p:Product {name: 'Cement'}) ON CREATE SET p.id = 'cement';

// Query 96
MERGE (p:Product {name: 'Tile Adhesives'}) ON CREATE SET p.id = 'tile_adhesives';

// Query 97
MERGE (p:Product {name: 'Water Proofing Products'}) ON CREATE SET p.id = 'water_proofing_products';

// Query 98
MERGE (p:Product {name: 'Pre-Mix Concrete'}) ON CREATE SET p.id = 'pre_mix_concrete';

// Query 99
MERGE (p:Product {name: 'Ready-Mixed Concrete'}) ON CREATE SET p.id = 'ready_mixed_concrete';

// Query 100
MERGE (p:Product {name: 'CLC Blocks'}) ON CREATE SET p.id = 'clc_blocks';

// Query 101
MERGE (p:Product {name: 'Power Generation'}) ON CREATE SET p.id = 'power_generation';

// Query 102
MERGE (p:Product {name: 'Aggregate'}) ON CREATE SET p.id = 'aggregate';

// Query 103
// Step 11: OFFERS Relationships;

// Query 104
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (p:Product {name: 'Cement'}) MERGE (c)-[:OFFERS]->(p);

// Query 105
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (p:Product {name: 'Tile Adhesives'}) MERGE (c)-[:OFFERS]->(p);

// Query 106
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (p:Product {name: 'Water Proofing Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 107
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (p:Product {name: 'Pre-Mix Concrete'}) MERGE (c)-[:OFFERS]->(p);

// Query 108
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (p:Product {name: 'Ready-Mixed Concrete'}) MERGE (c)-[:OFFERS]->(p);

// Query 109
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (p:Product {name: 'CLC Blocks'}) MERGE (c)-[:OFFERS]->(p);

// Query 110
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (p:Product {name: 'Power Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 111
MATCH (c:Company {name: 'Tokyo Cement Company Lanka'}), (p:Product {name: 'Aggregate'}) MERGE (c)-[:OFFERS]->(p);

// Query 112
// Step 12: Company-Company Relationships (OWNS);

// Query 113
MERGE (sub1:Company {name: 'Tokyo Eastern Cement Company'}) ON CREATE SET sub1.id = 'tokyo_eastern_cement_company', sub1.region = 'Sri Lanka';

// Query 114
MERGE (sub2:Company {name: 'Tokyo Cement Power Lanka'}) ON CREATE SET sub2.id = 'tokyo_cement_power_lanka', sub2.region = 'Sri Lanka';

// Query 115
MERGE (sub3:Company {name: 'Tokyo Super Aggregate'}) ON CREATE SET sub3.id = 'tokyo_super_aggregate', sub3.region = 'Sri Lanka';

// Query 116
MERGE (sub4:Company {name: 'Tokyo Supermix'}) ON CREATE SET sub4.id = 'tokyo_supermix', sub4.region = 'Sri Lanka';

// Query 117
MERGE (sub5:Company {name: 'Tokyo Cement Industrial Park'}) ON CREATE SET sub5.id = 'tokyo_cement_industrial_park', sub5.region = 'Sri Lanka';

// Query 118
MATCH (parent:Company {name: 'Tokyo Cement Company Lanka'}), (child:Company {name: 'Tokyo Eastern Cement Company'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 119
MATCH (parent:Company {name: 'Tokyo Cement Company Lanka'}), (child:Company {name: 'Tokyo Cement Power Lanka'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 120
MATCH (parent:Company {name: 'Tokyo Cement Company Lanka'}), (child:Company {name: 'Tokyo Super Aggregate'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 51.0, r.as_of = date('2024-03-31');

// Query 121
MATCH (parent:Company {name: 'Tokyo Cement Company Lanka'}), (child:Company {name: 'Tokyo Supermix'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 122
MATCH (parent:Company {name: 'Tokyo Cement Company Lanka'}), (child:Company {name: 'Tokyo Cement Industrial Park'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Total queries: 122
// Generated on: 2025-10-03T03:39:47.312594
