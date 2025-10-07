// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Co-operative Insurance Company'}) ON CREATE SET c.id = 'co_operative_insurance_company', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor (Skipped - No auditor name found matching hardcoded list);

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'A.A.J. Amarasinghe'}) ON CREATE SET p.id = 'a_a_j_amarasinghe';

// Query 6
MERGE (p:Person {name: 'G. G. Dayasumana'}) ON CREATE SET p.id = 'g_g_dayasumana';

// Query 7
MERGE (p:Person {name: 'A. B. Senadira'}) ON CREATE SET p.id = 'a_b_senadira';

// Query 8
MERGE (p:Person {name: 'P. B. Jayarathne'}) ON CREATE SET p.id = 'p_b_jayarathne';

// Query 9
MERGE (p:Person {name: 'M. Widanagamage'}) ON CREATE SET p.id = 'm_widanagamage';

// Query 10
MERGE (p:Person {name: 'Lalith Waragoda'}) ON CREATE SET p.id = 'lalith_waragoda';

// Query 11
MERGE (p:Person {name: 'K.K. Gawesha Sanirathna'}) ON CREATE SET p.id = 'k_k_gawesha_sanirathna';

// Query 12
MERGE (p:Person {name: 'H.H.D.E.P. Herath'}) ON CREATE SET p.id = 'h_h_d_e_p_herath';

// Query 13
MERGE (p:Person {name: 'Suraj Wickramasinghe'}) ON CREATE SET p.id = 'suraj_wickramasinghe';

// Query 14
MERGE (p:Person {name: 'Ganaka Amarasinghe'}) ON CREATE SET p.id = 'ganaka_amarasinghe';

// Query 15
MERGE (p:Person {name: 'W.P.M. Chathurani'}) ON CREATE SET p.id = 'w_p_m_chathurani';

// Query 16
MERGE (p:Person {name: 'D.U.P. Rajapakshe'}) ON CREATE SET p.id = 'd_u_p_rajapakshe';

// Query 17
MERGE (p:Person {name: 'L.U.N.C.P. Wijeyasuriya'}) ON CREATE SET p.id = 'l_u_n_c_p_wijeyasuriya';

// Query 18
MERGE (p:Person {name: 'L.A.N.C. Weerasinghe'}) ON CREATE SET p.id = 'l_a_n_c_weerasinghe';

// Query 19
MERGE (p:Person {name: 'P.G.N.D. Gunathilaka'}) ON CREATE SET p.id = 'p_g_n_d_gunathilaka';

// Query 20
MERGE (p:Person {name: 'D.L. Samarawickrama'}) ON CREATE SET p.id = 'd_l_samarawickrama';

// Query 21
MERGE (p:Person {name: 'K.M. Jayasundara'}) ON CREATE SET p.id = 'k_m_jayasundara';

// Query 22
MERGE (p:Person {name: 'A.M.R.A.L. Lakmal'}) ON CREATE SET p.id = 'a_m_r_a_l_lakmal';

// Query 23
MERGE (p:Person {name: 'H.L.N.T. Gunawardena'}) ON CREATE SET p.id = 'h_l_n_t_gunawardena';

// Query 24
MERGE (p:Person {name: 'Danushka De Silva'}) ON CREATE SET p.id = 'danushka_de_silva';

// Query 25
MERGE (p:Person {name: 'Preethimalee Wijerama'}) ON CREATE SET p.id = 'preethimalee_wijerama';

// Query 26
// Step 4: HOLDS_POSITION Relationships;

// Query 27
MATCH (p:Person {name: 'A.A.J. Amarasinghe'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 28
MATCH (p:Person {name: 'G. G. Dayasumana'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 29
MATCH (p:Person {name: 'A. B. Senadira'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 30
MATCH (p:Person {name: 'P. B. Jayarathne'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 31
MATCH (p:Person {name: 'M. Widanagamage'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 32
MATCH (p:Person {name: 'Lalith Waragoda'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 33
MATCH (p:Person {name: 'K.K. Gawesha Sanirathna'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 34
MATCH (p:Person {name: 'H.H.D.E.P. Herath'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 35
MATCH (p:Person {name: 'Suraj Wickramasinghe'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 36
MATCH (p:Person {name: 'Ganaka Amarasinghe'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 37
MATCH (p:Person {name: 'W.P.M. Chathurani'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 38
MATCH (p:Person {name: 'D.U.P. Rajapakshe'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-12-31');

// Query 39
MATCH (p:Person {name: 'L.U.N.C.P. Wijeyasuriya'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-12-31');

// Query 40
MATCH (p:Person {name: 'L.A.N.C. Weerasinghe'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-12-31');

// Query 41
MATCH (p:Person {name: 'P.G.N.D. Gunathilaka'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-12-31');

// Query 42
MATCH (p:Person {name: 'D.L. Samarawickrama'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 43
MATCH (p:Person {name: 'K.M. Jayasundara'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 44
MATCH (p:Person {name: 'A.M.R.A.L. Lakmal'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 45
MATCH (p:Person {name: 'H.L.N.T. Gunawardena'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 46
MATCH (p:Person {name: 'Danushka De Silva'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 47
MATCH (p:Person {name: 'Preethimalee Wijerama'}), (c:Company {name: 'Co-operative Insurance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 48
// Step 5: Metrics;

// Query 49
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 54
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 55
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 56
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 57
// Step 6: HAS_METRIC Relationships;

// Query 58
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5629000000.0, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5703000000.0, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 274000000.0, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -320000000.0, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 319000000.0, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -374000000.0, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17282000000.0, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15908000000.0, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5889979374.0, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5686528134.0, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.07, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.16, r.year = 2023;

// Query 70
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.0, r.year = 2024;

// Query 71
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.0, r.year = 2023;

// Query 72
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.22, r.year = 2024;

// Query 73
// Step 7: Sectors;

// Query 74
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 75
// Step 8: IN_SECTOR Relationships;

// Query 76
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (s:Sector {name: 'Insurance'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 77
// Step 9: Product nodes creation;

// Query 78
MERGE (p:Product {name: 'General Insurance'}) ON CREATE SET p.id = 'general_insurance';

// Query 79
MERGE (p:Product {name: 'Life Insurance'}) ON CREATE SET p.id = 'life_insurance';

// Query 80
MERGE (p:Product {name: 'Fire Insurance'}) ON CREATE SET p.id = 'fire_insurance';

// Query 81
MERGE (p:Product {name: 'Motor Insurance'}) ON CREATE SET p.id = 'motor_insurance';

// Query 82
MERGE (p:Product {name: 'Marine Insurance'}) ON CREATE SET p.id = 'marine_insurance';

// Query 83
MERGE (p:Product {name: 'Miscellaneous Insurance'}) ON CREATE SET p.id = 'miscellaneous_insurance';

// Query 84
// Step 10: OFFERS Relationships;

// Query 85
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (p:Product {name: 'General Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (p:Product {name: 'Life Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (p:Product {name: 'Fire Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (p:Product {name: 'Motor Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (p:Product {name: 'Marine Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Co-operative Insurance Company'}), (p:Product {name: 'Miscellaneous Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
// Step 11: Company-Company Relationships (OWNS, MANAGES - Skipped due to lack of explicit data);

// Total queries: 91
// Generated on: 2025-10-02T22:55:09.832402
