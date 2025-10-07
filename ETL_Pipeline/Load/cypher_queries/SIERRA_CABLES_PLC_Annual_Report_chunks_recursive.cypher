// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Sierra Cables'}) ON CREATE SET c.id = 'sierra_cables', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Sierra Cables'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'W. A. P. Perera'}) ON CREATE SET p.id = 'w_a_p_perera';

// Query 8
MERGE (p:Person {name: 'D. S. Panditha'}) ON CREATE SET p.id = 'd_s_panditha';

// Query 9
MERGE (p:Person {name: 'P. Weerasingha'}) ON CREATE SET p.id = 'p_weerasingha';

// Query 10
MERGE (p:Person {name: 'S. S. Kotakadeniya'}) ON CREATE SET p.id = 's_s_kotakadeniya';

// Query 11
MERGE (p:Person {name: 'P. E. A. B. Perera'}) ON CREATE SET p.id = 'p_e_a_b_perera';

// Query 12
MERGE (p:Person {name: 'T. A. P. Weerasinghe'}) ON CREATE SET p.id = 't_a_p_weerasinghe';

// Query 13
MERGE (p:Person {name: 'A. K. W. Jayawardane'}) ON CREATE SET p.id = 'a_k_w_jayawardane';

// Query 14
MERGE (p:Person {name: 'B. W. N. Rupasinghe'}) ON CREATE SET p.id = 'b_w_n_rupasinghe';

// Query 15
MERGE (p:Person {name: 'Kamantha Amarasekera'}) ON CREATE SET p.id = 'kamantha_amarasekera';

// Query 16
MERGE (p:Person {name: 'Gunendra Jayasena'}) ON CREATE SET p.id = 'gunendra_jayasena';

// Query 17
// Step 4: HOLDS_POSITION Relationships;

// Query 18
MATCH (p:Person {name: 'W. A. P. Perera'}), (c:Company {name: 'Sierra Cables'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'D. S. Panditha'}), (c:Company {name: 'Sierra Cables'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'P. Weerasingha'}), (c:Company {name: 'Sierra Cables'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'S. S. Kotakadeniya'}), (c:Company {name: 'Sierra Cables'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'P. E. A. B. Perera'}), (c:Company {name: 'Sierra Cables'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'T. A. P. Weerasinghe'}), (c:Company {name: 'Sierra Cables'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'A. K. W. Jayawardane'}), (c:Company {name: 'Sierra Cables'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'B. W. N. Rupasinghe'}), (c:Company {name: 'Sierra Cables'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'Kamantha Amarasekera'}), (c:Company {name: 'Sierra Cables'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'Gunendra Jayasena'}), (c:Company {name: 'Sierra Cables'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
// Step 5: Metrics;

// Query 29
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 31
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 37
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 38
// Step 6: HAS_METRIC Relationships;

// Query 39
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 229000000.0, r.year = 2020;

// Query 40
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 320000000.0, r.year = 2021;

// Query 41
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 472000000.0, r.year = 2022;

// Query 42
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 703000000.0, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 728000000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 57.6, r.year = 2020;

// Query 45
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 57.9, r.year = 2021;

// Query 46
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 64.3, r.year = 2022;

// Query 47
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40.0, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 46.3, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.43, r.year = 2020;

// Query 50
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.60, r.year = 2021;

// Query 51
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.87, r.year = 2022;

// Query 52
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.32, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.42, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1167446603.0, r.year = 2021;

// Query 55
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1268862307.0, r.year = 2022;

// Query 56
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 938490766.0, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 922952262.0, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5563252957.0, r.year = 2020;

// Query 59
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5498555123.0, r.year = 2021;

// Query 60
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8257835280.0, r.year = 2022;

// Query 61
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7069360002.0, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8150443782.0, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 473118590.0, r.year = 2020;

// Query 64
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 495404118.0, r.year = 2021;

// Query 65
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1078940198.0, r.year = 2022;

// Query 66
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1725536198.0, r.year = 2023;

// Query 67
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1227960840.0, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7691464158.0, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8965022072.0, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.32, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.20, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4310218811.0, r.year = 2023;

// Query 73
MATCH (c:Company {name: 'Sierra Cables'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5030566152.0, r.year = 2024;

// Query 74
// Step 7: Sectors;

// Query 75
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 76
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 77
// Step 8: IN_SECTOR Relationships;

// Query 78
MATCH (c:Company {name: 'Sierra Cables'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 79
// Step 9: Products;

// Query 80
MERGE (p:Product {name: 'Power Cables'}) ON CREATE SET p.id = 'power_cables';

// Query 81
MERGE (p:Product {name: 'uPVC and HDPE Pipes and Fittings'}) ON CREATE SET p.id = 'upvc_and_hdpe_pipes_and_fittings';

// Query 82
MERGE (p:Product {name: 'Wires and Cables'}) ON CREATE SET p.id = 'wires_and_cables';

// Query 83
MERGE (p:Product {name: 'Fiber Optical Cables'}) ON CREATE SET p.id = 'fiber_optical_cables';

// Query 84
MERGE (p:Product {name: 'Electrical and Electronic Cables'}) ON CREATE SET p.id = 'electrical_and_electronic_cables';

// Query 85
MERGE (p:Product {name: 'Sub-assemblies'}) ON CREATE SET p.id = 'sub_assemblies';

// Query 86
MERGE (p:Product {name: 'Steel Tape Armouring Cables'}) ON CREATE SET p.id = 'steel_tape_armouring_cables';

// Query 87
// Step 10: OFFERS Relationships;

// Query 88
MATCH (c:Company {name: 'Sierra Cables'}), (p:Product {name: 'Power Cables'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Sierra Cables'}), (p:Product {name: 'uPVC and HDPE Pipes and Fittings'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Sierra Cables'}), (p:Product {name: 'Wires and Cables'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Sierra Cables'}), (p:Product {name: 'Fiber Optical Cables'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {name: 'Sierra Cables'}), (p:Product {name: 'Electrical and Electronic Cables'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: 'Sierra Cables'}), (p:Product {name: 'Sub-assemblies'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: 'Sierra Cables'}), (p:Product {name: 'Steel Tape Armouring Cables'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
// Step 11: Other Companies and Relationships;

// Query 96
MERGE (c:Company {name: 'Sierra Industries'}) ON CREATE SET c.id = 'sierra_industries';

// Query 97
MATCH (parent:Company {name: 'Sierra Cables'}), (child:Company {name: 'Sierra Industries'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2023-12-31');

// Query 98
MATCH (c:Company {name: 'Sierra Industries'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 99
MERGE (c:Company {name: 'Sierra Cables East Africa'}) ON CREATE SET c.id = 'sierra_cables_east_africa';

// Query 100
MATCH (c:Company {name: 'Sierra Cables East Africa'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 101
MERGE (c:Company {name: 'Tea Leaf Resort'}) ON CREATE SET c.id = 'tea_leaf_resort';

// Query 102
MATCH (c:Company {name: 'Tea Leaf Resort'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 103
MERGE (c:Company {name: 'T & G Lanka'}) ON CREATE SET c.id = 't_and_g_lanka';

// Query 104
MATCH (c:Company {name: 'T & G Lanka'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 105
MERGE (c:Company {name: 'Cables PTE'}) ON CREATE SET c.id = 'cables_pte';

// Query 106
MATCH (c:Company {name: 'Cables PTE'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 106
// Generated on: 2025-10-03T00:54:10.710557
