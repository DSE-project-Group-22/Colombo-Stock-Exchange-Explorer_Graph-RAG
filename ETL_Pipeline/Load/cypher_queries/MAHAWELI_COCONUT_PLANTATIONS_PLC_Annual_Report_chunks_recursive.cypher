// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Mahaweli Coconut Plantations'}) ON CREATE SET c.id = 'mahaweli_coconut_plantations', c.founded_on = date('1996-10-29'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor - Skipped as 'Kreston MNS & Co' is not in the hardcoded list of approved auditing firms.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Senarath Dias Widhanaralalage Asitha Gunasekera'}) ON CREATE SET p.id = 'senarath_dias_widhanaralalage_asitha_gunasekera';

// Query 6
MERGE (p:Person {name: 'Joseph Felix Fernandopulle'}) ON CREATE SET p.id = 'joseph_felix_fernandopulle';

// Query 7
MERGE (p:Person {name: 'M. A. C. H. Munaweera'}) ON CREATE SET p.id = 'm_a_c_h_munaweera';

// Query 8
MERGE (p:Person {name: 'T. S. G. Fonseka'}) ON CREATE SET p.id = 't_s_g_fonseka';

// Query 9
MERGE (p:Person {name: 'Samankumara Dias Senerath Gunesekera'}) ON CREATE SET p.id = 'samankumara_dias_senerath_gunesekera';

// Query 10
MERGE (p:Person {name: 'Ashok Jerom Shamendra Jayakody'}) ON CREATE SET p.id = 'ashok_jerom_shamendra_jayakody';

// Query 11
MERGE (p:Person {name: 'G. J. N. Perera'}) ON CREATE SET p.id = 'g_j_n_perera';

// Query 12
MERGE (p:Person {name: 'M. D. J. P. N. Perera'}) ON CREATE SET p.id = 'm_d_j_p_n_perera';

// Query 13
MERGE (p:Person {name: 'Sunil Jayalath Watawala'}) ON CREATE SET p.id = 'sunil_jayalath_watawala';

// Query 14
MERGE (p:Person {name: 'N. A. L. Cooray'}) ON CREATE SET p.id = 'n_a_l_cooray';

// Query 15
MERGE (p:Person {name: 'Gamamedaliyanage Joseph Lalith Neomal Perera'}) ON CREATE SET p.id = 'gamamedaliyanage_joseph_lalith_neomal_perera';

// Query 16
MERGE (p:Person {name: 'Fernando Paththage Pio Suresh'}) ON CREATE SET p.id = 'fernando_paththage_pio_suresh';

// Query 17
MERGE (p:Person {name: 'Jayasuriya J A D K R'}) ON CREATE SET p.id = 'jayasuriya_j_a_d_k_r';

// Query 18
MERGE (p:Person {name: 'Samaranayake H D F D S'}) ON CREATE SET p.id = 'samaranayake_h_d_f_d_s';

// Query 19
MERGE (p:Person {name: 'Wickramarachchi S K'}) ON CREATE SET p.id = 'wickramarachchi_s_k';

// Query 20
MERGE (p:Person {name: 'Gunawardena D M S W'}) ON CREATE SET p.id = 'gunawardena_d_m_s_w';

// Query 21
MERGE (p:Person {name: 'Silva S.A.D.U. Shehan'}) ON CREATE SET p.id = 'silva_s_a_d_u_shehan';

// Query 22
// Step 4: HOLDS_POSITION Relationships;

// Query 23
MATCH (p:Person {name: 'Senarath Dias Widhanaralalage Asitha Gunasekera'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 24
MATCH (p:Person {name: 'Joseph Felix Fernandopulle'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 25
MATCH (p:Person {name: 'M. A. C. H. Munaweera'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 26
MATCH (p:Person {name: 'T. S. G. Fonseka'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 27
MATCH (p:Person {name: 'Samankumara Dias Senerath Gunesekera'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 28
MATCH (p:Person {name: 'Ashok Jerom Shamendra Jayakody'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 29
MATCH (p:Person {name: 'G. J. N. Perera'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 30
MATCH (p:Person {name: 'M. D. J. P. N. Perera'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 31
MATCH (p:Person {name: 'Sunil Jayalath Watawala'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 32
MATCH (p:Person {name: 'N. A. L. Cooray'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 33
MATCH (p:Person {name: 'Gamamedaliyanage Joseph Lalith Neomal Perera'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 34
// Step 5: Metrics;

// Query 35
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 42
// Step 6: HAS_METRIC Relationships;

// Query 43
MATCH (c:Company {name: 'Mahaweli Coconut Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 278950900, r.year = 2024, r.as_of = date('2024-03-31');

// Query 44
MATCH (c:Company {name: 'Mahaweli Coconut Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 73915023, r.year = 2024, r.as_of = date('2024-06-30');

// Query 45
MATCH (c:Company {name: 'Mahaweli Coconut Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 88416362, r.year = 2024, r.as_of = date('2024-03-31');

// Query 46
MATCH (c:Company {name: 'Mahaweli Coconut Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -21353782, r.year = 2024, r.as_of = date('2024-06-30');

// Query 47
MATCH (c:Company {name: 'Mahaweli Coconut Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 127390066, r.year = 2024, r.as_of = date('2024-03-31');

// Query 48
MATCH (c:Company {name: 'Mahaweli Coconut Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -18002928, r.year = 2024, r.as_of = date('2024-06-30');

// Query 49
MATCH (c:Company {name: 'Mahaweli Coconut Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -135980011, r.year = 2024, r.as_of = date('2024-03-31');

// Query 50
MATCH (c:Company {name: 'Mahaweli Coconut Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -19268633, r.year = 2024, r.as_of = date('2024-06-30');

// Query 51
MATCH (c:Company {name: 'Mahaweli Coconut Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.88, r.year = 2024, r.as_of = date('2024-03-31');

// Query 52
MATCH (c:Company {name: 'Mahaweli Coconut Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.55, r.year = 2024, r.as_of = date('2024-06-30');

// Query 53
MATCH (c:Company {name: 'Mahaweli Coconut Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 979084535, r.year = 2024, r.as_of = date('2024-03-31');

// Query 54
MATCH (c:Company {name: 'Mahaweli Coconut Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 953265104, r.year = 2024, r.as_of = date('2024-06-30');

// Query 55
MATCH (c:Company {name: 'Mahaweli Coconut Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 786701265, r.year = 2024, r.as_of = date('2024-03-31');

// Query 56
MATCH (c:Company {name: 'Mahaweli Coconut Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 767432633, r.year = 2024, r.as_of = date('2024-06-30');

// Query 57
// Step 7: Sectors;

// Query 58
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 59
// Step 8: IN_SECTOR Relationships;

// Query 60
MATCH (c:Company {name: 'Mahaweli Coconut Plantations'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 61
// Step 9: Products;

// Query 62
MERGE (p:Product {name: 'Coconuts'}) ON CREATE SET p.id = 'coconuts';

// Query 63
MERGE (p:Product {name: 'Copra'}) ON CREATE SET p.id = 'copra';

// Query 64
MERGE (p:Product {name: 'Coco Peat'}) ON CREATE SET p.id = 'coco_peat';

// Query 65
MERGE (p:Product {name: 'Coir'}) ON CREATE SET p.id = 'coir';

// Query 66
// Step 10: OFFERS Relationships;

// Query 67
MATCH (c:Company {name: 'Mahaweli Coconut Plantations'}), (p:Product {name: 'Coconuts'}) MERGE (c)-[:OFFERS]->(p);

// Query 68
MATCH (c:Company {name: 'Mahaweli Coconut Plantations'}), (p:Product {name: 'Copra'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Mahaweli Coconut Plantations'}), (p:Product {name: 'Coco Peat'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'Mahaweli Coconut Plantations'}), (p:Product {name: 'Coir'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
// Step 11: Company-Company Relationships (OWNS);

// Query 72
MERGE (owner:Company {name: 'Dunagaha Coconut Producers Co-op Society'}) ON CREATE SET owner.id = 'dunagaha_coconut_producers_co_op_society';

// Query 73
MATCH (owner:Company {name: 'Dunagaha Coconut Producers Co-op Society'}), (child:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (owner)-[r:OWNS]->(child) ON CREATE SET r.pct = 4.66, r.as_of = date('2024-06-30');

// Query 74
MERGE (owner:Company {name: 'Silvermill Holdings'}) ON CREATE SET owner.id = 'silvermill_holdings';

// Query 75
MATCH (owner:Company {name: 'Silvermill Holdings'}), (child:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (owner)-[r:OWNS]->(child) ON CREATE SET r.pct = 4.41, r.as_of = date('2024-06-30');

// Query 76
MERGE (owner:Company {name: 'Sanhinda Mills'}) ON CREATE SET owner.id = 'sanhinda_mills';

// Query 77
MATCH (owner:Company {name: 'Sanhinda Mills'}), (child:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (owner)-[r:OWNS]->(child) ON CREATE SET r.pct = 4.27, r.as_of = date('2024-06-30');

// Query 78
MERGE (owner:Company {name: 'S A Silva & Sons Lanka'}) ON CREATE SET owner.id = 's_a_silva_and_sons_lanka';

// Query 79
MATCH (owner:Company {name: 'S A Silva & Sons Lanka'}), (child:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (owner)-[r:OWNS]->(child) ON CREATE SET r.pct = 2.49, r.as_of = date('2024-06-30');

// Query 80
// Step 12: Person-Company Relationships (OWNS_SHARES);

// Query 81
MATCH (p:Person {name: 'Senarath Dias Widhanaralalage Asitha Gunasekera'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1088, r.as_of = date('2024-06-30');

// Query 82
MATCH (p:Person {name: 'Joseph Felix Fernandopulle'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 758876, r.as_of = date('2024-06-30');

// Query 83
MATCH (p:Person {name: 'Samankumara Dias Senerath Gunesekera'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 11504, r.as_of = date('2024-06-30');

// Query 84
MATCH (p:Person {name: 'Sunil Jayalath Watawala'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 881847, r.as_of = date('2024-06-30');

// Query 85
MATCH (p:Person {name: 'Gamamedaliyanage Joseph Lalith Neomal Perera'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 777733, r.as_of = date('2024-06-30');

// Query 86
MATCH (p:Person {name: 'Ashok Jerom Shamendra Jayakody'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 2548, r.as_of = date('2024-06-30');

// Query 87
MATCH (p:Person {name: 'Fernando Paththage Pio Suresh'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1339641, r.pct = 3.83, r.as_of = date('2024-06-30');

// Query 88
MATCH (p:Person {name: 'Jayasuriya J A D K R'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1055178, r.pct = 3.02, r.as_of = date('2024-06-30');

// Query 89
MATCH (p:Person {name: 'Samaranayake H D F D S'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 974202, r.pct = 2.78, r.as_of = date('2024-06-30');

// Query 90
MATCH (p:Person {name: 'Wickramarachchi S K'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 872291, r.pct = 2.49, r.as_of = date('2024-06-30');

// Query 91
MATCH (p:Person {name: 'Gunawardena D M S W'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 816426, r.pct = 2.33, r.as_of = date('2024-06-30');

// Query 92
MATCH (p:Person {name: 'Silva S.A.D.U. Shehan'}), (c:Company {name: 'Mahaweli Coconut Plantations'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 609081, r.pct = 1.74, r.as_of = date('2024-06-30');

// Total queries: 92
// Generated on: 2025-10-03T03:31:41.808133
