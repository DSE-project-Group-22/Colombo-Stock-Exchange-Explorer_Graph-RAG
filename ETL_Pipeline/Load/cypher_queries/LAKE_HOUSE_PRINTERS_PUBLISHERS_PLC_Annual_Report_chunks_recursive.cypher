// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Lake House Printers & Publishers'}) ON CREATE SET c.id = 'lake_house_printers_and_publishers', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Lake House Printers & Publishers'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'R.S.Wijewardene'}) ON CREATE SET p.id = 'r_s_wijewardene';

// Query 8
MERGE (p:Person {name: 'P.S.Wijewardene'}) ON CREATE SET p.id = 'p_s_wijewardene';

// Query 9
MERGE (p:Person {name: 'R.C.Samarasinghe'}) ON CREATE SET p.id = 'r_c_samarasinghe';

// Query 10
MERGE (p:Person {name: 'Prof.L.R.Watawala'}) ON CREATE SET p.id = 'prof_l_r_watawala';

// Query 11
MERGE (p:Person {name: 'D.F.R.Jayamaha'}) ON CREATE SET p.id = 'd_f_r_jayamaha';

// Query 12
MERGE (p:Person {name: 'D.R.Wijewardene'}) ON CREATE SET p.id = 'd_r_wijewardene';

// Query 13
MERGE (p:Person {name: 'D.P.A.N.Kumara'}) ON CREATE SET p.id = 'd_p_a_n_kumara';

// Query 14
MERGE (p:Person {name: 'Mr.D.N.Wijewardane'}) ON CREATE SET p.id = 'mr_d_n_wijewardane';

// Query 15
MERGE (p:Person {name: 'Mr.A.I.Goonerathne'}) ON CREATE SET p.id = 'mr_a_i_goonerathne';

// Query 16
MERGE (p:Person {name: 'Mrs.A.I.Wijesundere'}) ON CREATE SET p.id = 'mrs_a_i_wijesundere';

// Query 17
MERGE (p:Person {name: 'Mrs.R.N.Wijewardene'}) ON CREATE SET p.id = 'mrs_r_n_wijewardene';

// Query 18
MERGE (p:Person {name: 'Mr.Ranil Wickremasinghe'}) ON CREATE SET p.id = 'mr_ranil_wickremasinghe';

// Query 19
MERGE (p:Person {name: 'Mrs.I.N.Wijewardene'}) ON CREATE SET p.id = 'mrs_i_n_wijewardene';

// Query 20
MERGE (p:Person {name: 'Mr.N.W.W.Welgama'}) ON CREATE SET p.id = 'mr_n_w_w_welgama';

// Query 21
MERGE (p:Person {name: 'Mr.R.N.Wickremasinghe'}) ON CREATE SET p.id = 'mr_r_n_wickremasinghe';

// Query 22
MERGE (p:Person {name: 'Mr.K.A.Weerathunge'}) ON CREATE SET p.id = 'mr_k_a_weerathunge';

// Query 23
MERGE (p:Person {name: 'P.Sivali Wijewardene'}) ON CREATE SET p.id = 'p_sivali_wijewardene';

// Query 24
MERGE (p:Person {name: 'Mr.N.D.P.Hettiarachchi'}) ON CREATE SET p.id = 'mr_n_d_p_hettiarachchi';

// Query 25
MERGE (p:Person {name: 'Mr.A.L.Goonerathne'}) ON CREATE SET p.id = 'mr_a_l_goonerathne';

// Query 26
MERGE (p:Person {name: 'Miss.R.M.Wijewardane'}) ON CREATE SET p.id = 'miss_r_m_wijewardane';

// Query 27
MERGE (p:Person {name: 'Ms.V.S.Wijewardene'}) ON CREATE SET p.id = 'ms_v_s_wijewardene';

// Query 28
MERGE (p:Person {name: 'Ms.A.R.Wijewardene'}) ON CREATE SET p.id = 'ms_a_r_wijewardene';

// Query 29
// Step 4: HOLDS_POSITION Relationships;

// Query 30
MATCH (p:Person {name: 'R.S.Wijewardene'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-09-30');

// Query 31
MATCH (p:Person {name: 'P.S.Wijewardene'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 32
MATCH (p:Person {name: 'R.C.Samarasinghe'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 33
MATCH (p:Person {name: 'Prof.L.R.Watawala'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-09-30');

// Query 34
MATCH (p:Person {name: 'D.F.R.Jayamaha'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-09-30');

// Query 35
MATCH (p:Person {name: 'D.R.Wijewardene'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 36
MATCH (p:Person {name: 'D.P.A.N.Kumara'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-09-30');

// Query 37
// Step 5: Person OWNS_SHARES Company Relationships;

// Query 38
MATCH (p:Person {name: 'R.S.Wijewardene'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1052087, r.pct = 35.82, r.as_of = date('2024-09-30');

// Query 39
MATCH (p:Person {name: 'D.R.Wijewardene'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 962612, r.pct = 32.77, r.as_of = date('2024-09-30');

// Query 40
MATCH (p:Person {name: 'Mr.D.N.Wijewardane'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 161721, r.pct = 5.51, r.as_of = date('2024-09-30');

// Query 41
MATCH (p:Person {name: 'P.S.Wijewardene'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 108282, r.pct = 3.69, r.as_of = date('2024-09-30');

// Query 42
MATCH (p:Person {name: 'Mr.A.I.Goonerathne'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 94046, r.pct = 3.20, r.as_of = date('2024-09-30');

// Query 43
MATCH (p:Person {name: 'Mrs.A.I.Wijesundere'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 67011, r.pct = 2.28, r.as_of = date('2024-09-30');

// Query 44
MATCH (p:Person {name: 'Mrs.R.N.Wijewardene'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 48830, r.pct = 1.66, r.as_of = date('2024-09-30');

// Query 45
MATCH (p:Person {name: 'Mr.Ranil Wickremasinghe'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 38964, r.pct = 1.33, r.as_of = date('2024-09-30');

// Query 46
MATCH (p:Person {name: 'Mrs.I.N.Wijewardene'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 37425, r.pct = 1.27, r.as_of = date('2024-09-30');

// Query 47
MATCH (p:Person {name: 'Mr.N.W.W.Welgama'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 32584, r.pct = 1.11, r.as_of = date('2024-09-30');

// Query 48
MATCH (p:Person {name: 'Mr.R.N.Wickremasinghe'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 30238, r.pct = 1.03, r.as_of = date('2024-09-30');

// Query 49
MATCH (p:Person {name: 'Mr.K.A.Weerathunge'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 29730, r.pct = 1.01, r.as_of = date('2024-09-30');

// Query 50
MATCH (p:Person {name: 'P.Sivali Wijewardene'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 28630, r.pct = 0.97, r.as_of = date('2024-09-30');

// Query 51
MATCH (p:Person {name: 'Mr.N.D.P.Hettiarachchi'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 21090, r.pct = 0.72, r.as_of = date('2024-09-30');

// Query 52
MATCH (p:Person {name: 'Mr.A.L.Goonerathne'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 20000, r.pct = 0.68, r.as_of = date('2024-09-30');

// Query 53
MATCH (p:Person {name: 'Miss.R.M.Wijewardane'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 18111, r.pct = 0.62, r.as_of = date('2024-09-30');

// Query 54
MATCH (p:Person {name: 'Ms.V.S.Wijewardene'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 14038, r.pct = 0.48, r.as_of = date('2024-09-30');

// Query 55
MATCH (p:Person {name: 'Ms.A.R.Wijewardene'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 11722, r.pct = 0.40, r.as_of = date('2024-09-30');

// Query 56
// Step 6: Company OWNS_SHARES Company Relationships;

// Query 57
MERGE (comp:Company {name: 'E Channelling'}) ON CREATE SET comp.id = 'e_channelling';

// Query 58
MATCH (comp:Company {name: 'E Channelling'}), (c:Company {name: 'Lake House Printers & Publishers'}) MERGE (comp)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 10697, r.pct = 0.36, r.as_of = date('2024-09-30');

// Query 59
// Step 7: Metrics;

// Query 60
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 61
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 62
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 63
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 64
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 65
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 66
// Step 8: HAS_METRIC Relationships;

// Query 67
MATCH (c:Company {name: 'Lake House Printers & Publishers'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 704586000, r.year = 2024, r.as_of = date('2024-09-30');

// Query 68
MATCH (c:Company {name: 'Lake House Printers & Publishers'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 955209000, r.year = 2023, r.as_of = date('2023-09-30');

// Query 69
MATCH (c:Company {name: 'Lake House Printers & Publishers'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 43823000, r.year = 2024, r.as_of = date('2024-09-30');

// Query 70
MATCH (c:Company {name: 'Lake House Printers & Publishers'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 124202000, r.year = 2023, r.as_of = date('2023-09-30');

// Query 71
MATCH (c:Company {name: 'Lake House Printers & Publishers'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30472000, r.year = 2024, r.as_of = date('2024-09-30');

// Query 72
MATCH (c:Company {name: 'Lake House Printers & Publishers'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 79821000, r.year = 2023, r.as_of = date('2023-09-30');

// Query 73
MATCH (c:Company {name: 'Lake House Printers & Publishers'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1177206000, r.year = 2024, r.as_of = date('2024-09-30');

// Query 74
MATCH (c:Company {name: 'Lake House Printers & Publishers'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1196890000, r.year = 2023, r.as_of = date('2023-09-30');

// Query 75
MATCH (c:Company {name: 'Lake House Printers & Publishers'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1045037000, r.year = 2024, r.as_of = date('2024-09-30');

// Query 76
MATCH (c:Company {name: 'Lake House Printers & Publishers'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 964011000, r.year = 2023, r.as_of = date('2023-09-30');

// Query 77
MATCH (c:Company {name: 'Lake House Printers & Publishers'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.38, r.year = 2024, r.as_of = date('2024-09-30');

// Query 78
MATCH (c:Company {name: 'Lake House Printers & Publishers'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29.60, r.year = 2023, r.as_of = date('2023-09-30');

// Query 79
// Step 9: Sectors;

// Query 80
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 81
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 82
// Step 10: IN_SECTOR Relationships;

// Query 83
MATCH (c:Company {name: 'Lake House Printers & Publishers'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 84
MATCH (c:Company {name: 'Lake House Printers & Publishers'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 85
// Step 11: Products;

// Query 86
MERGE (p:Product {name: 'Security Printing'}) ON CREATE SET p.id = 'security_printing';

// Query 87
MERGE (p:Product {name: 'Security Cards'}) ON CREATE SET p.id = 'security_cards';

// Query 88
// Step 12: OFFERS Relationships;

// Query 89
MATCH (c:Company {name: 'Lake House Printers & Publishers'}), (p:Product {name: 'Security Printing'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Lake House Printers & Publishers'}), (p:Product {name: 'Security Cards'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
// Step 13: Company-Company OWNS Relationships;

// Query 92
MERGE (child:Company {name: 'L.H Plantations'}) ON CREATE SET child.id = 'l_h_plantations';

// Query 93
MATCH (parent:Company {name: 'Lake House Printers & Publishers'}), (child:Company {name: 'L.H Plantations'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-09-30');

// Total queries: 93
// Generated on: 2025-10-03T01:25:47.362714
