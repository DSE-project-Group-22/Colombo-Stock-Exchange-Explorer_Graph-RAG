// Query 1
MERGE (c:Company {name: 'Cargills Ceylon PLC'}) ON CREATE SET c.id = 'cargills_ceylon_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 3
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/ Managing Director', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 5
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 6
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 7
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 9
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 11
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-01-01');

// Query 12
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 13
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 14
MERGE (p:Person {name: 'C. P. R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 15
MATCH (p:Person {name: 'C. P. R. Perera'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 16
MERGE (p:Person {name: 'J. T. Sumathipala'}) ON CREATE SET p.id = 'j_t_sumathipala';

// Query 17
MATCH (p:Person {name: 'J. T. Sumathipala'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 18
MERGE (p:Person {name: 'R. Radha'}) ON CREATE SET p.id = 'r_radha';

// Query 19
MATCH (p:Person {name: 'R. Radha'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-01');

// Query 20
MERGE (p:Person {name: 'R.A.T.P Perera'}) ON CREATE SET p.id = 'r_a_t_p_perera';

// Query 21
MATCH (p:Person {name: 'R.A.T.P Perera'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director/CEO', r.as_of = date('2024-01-01');

// Query 22
MERGE (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}) ON CREATE SET p.id = 'd_a_s_d_a_abeyesinhe';

// Query 23
MATCH (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 24
MERGE (p:Person {name: 'A. D. Ross'}) ON CREATE SET p.id = 'a_d_ross';

// Query 25
MATCH (p:Person {name: 'A. D. Ross'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 26
MERGE (p:Person {name: 'V. Siva Jr.'}) ON CREATE SET p.id = 'v_siva_jr';

// Query 27
MATCH (p:Person {name: 'V. Siva Jr.'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 28
MERGE (p:Person {name: 'S. S. Balasubramaniam'}) ON CREATE SET p.id = 's_s_balasubramaniam';

// Query 29
MATCH (p:Person {name: 'S. S. Balasubramaniam'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 30
MERGE (p:Person {name: 'D. Swarnasinghe'}) ON CREATE SET p.id = 'd_swarnasinghe';

// Query 31
MATCH (p:Person {name: 'D. Swarnasinghe'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 32
MERGE (p:Person {name: 'D Hasitha S Jayawardena'}) ON CREATE SET p.id = 'd_hasitha_s_jayawardena';

// Query 33
MATCH (p:Person {name: 'D Hasitha S Jayawardena'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Chairman', r.as_of = date('2024-01-01');

// Query 34
MERGE (p:Person {name: 'C R Jansz'}) ON CREATE SET p.id = 'c_r_jansz';

// Query 35
MATCH (p:Person {name: 'C R Jansz'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 36
MERGE (p:Person {name: 'M A N S Perera'}) ON CREATE SET p.id = 'm_a_n_s_perera';

// Query 37
MATCH (p:Person {name: 'M A N S Perera'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-01-01');

// Query 38
MERGE (p:Person {name: 'K Dayaparan'}) ON CREATE SET p.id = 'k_dayaparan';

// Query 39
MATCH (p:Person {name: 'K Dayaparan'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 40
MERGE (p:Person {name: 'A Shakthevale'}) ON CREATE SET p.id = 'a_shakthevale';

// Query 41
MATCH (p:Person {name: 'A Shakthevale'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 42
MERGE (p:Person {name: 'D S K Amarasekara'}) ON CREATE SET p.id = 'd_s_k_amarasekara';

// Query 43
MATCH (p:Person {name: 'D S K Amarasekara'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 44
MERGE (p:Person {name: 'M R Mihular'}) ON CREATE SET p.id = 'm_r_mihular';

// Query 45
MATCH (p:Person {name: 'M R Mihular'}), (c:Company {name: 'Cargills Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 46
MERGE (m:Metric {name: 'Group revenue'}) ON CREATE SET m.id = 'group_revenue', m.unit = 'Rs. thousand';

// Query 47
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Group revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 277008844, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Group revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 330420613, r.year = 2023;

// Query 49
MERGE (m:Metric {name: 'Profit from operations'}) ON CREATE SET m.id = 'profit_from_operations', m.unit = 'Rs. thousand';

// Query 50
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Profit from operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47399141, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Profit from operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 59202045, r.year = 2023;

// Query 52
MERGE (m:Metric {name: 'Profit before tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs. thousand';

// Query 53
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 37288459, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42377917, r.year = 2023;

// Query 55
MERGE (m:Metric {name: 'Profit after tax from continuing operations'}) ON CREATE SET m.id = 'profit_after_tax_from_continuing_operations', m.unit = 'Rs. thousand';

// Query 56
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Profit after tax from continuing operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22201573, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Profit after tax from continuing operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27296336, r.year = 2023;

// Query 58
MERGE (m:Metric {name: 'EBITDA'}) ON CREATE SET m.id = 'ebitda', m.unit = 'Rs. thousand';

// Query 59
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'EBITDA'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58335217, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'EBITDA'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 71191094, r.year = 2023;

// Query 61
MERGE (m:Metric {name: 'Profit attributable to ordinary shareholders'}) ON CREATE SET m.id = 'profit_attributable_to_ordinary_shareholders', m.unit = 'Rs. thousand';

// Query 62
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Profit attributable to ordinary shareholders'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8412977, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Profit attributable to ordinary shareholders'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13022993, r.year = 2023;

// Query 64
MERGE (m:Metric {name: 'Operating cash flow per share'}) ON CREATE SET m.id = 'operating_cash_flow_per_share', m.unit = 'Rs.';

// Query 65
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Operating cash flow per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 327.92, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Operating cash flow per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 514.31, r.year = 2023;

// Query 67
MERGE (m:Metric {name: 'Earnings per share - Group'}) ON CREATE SET m.id = 'earnings_per_share_group', m.unit = 'Rs.';

// Query 68
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Earnings per share - Group'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 82.22, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Earnings per share - Group'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 127.52, r.year = 2023;

// Query 70
MERGE (m:Metric {name: 'Dividend per share - Company'}) ON CREATE SET m.id = 'dividend_per_share_company', m.unit = 'Rs.';

// Query 71
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Dividend per share - Company'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.80, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Dividend per share - Company'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.10, r.year = 2023;

// Query 73
MERGE (m:Metric {name: 'Operating cash flows'}) ON CREATE SET m.id = 'operating_cash_flows', m.unit = 'Rs. thousand';

// Query 74
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Operating cash flows'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33447574, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Operating cash flows'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 52459122, r.year = 2023;

// Query 76
MERGE (m:Metric {name: 'Capital expenditure'}) ON CREATE SET m.id = 'capital_expenditure', m.unit = 'Rs. thousand';

// Query 77
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Capital expenditure'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16919433, r.year = 2024;

// Query 78
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Capital expenditure'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17387897, r.year = 2023;

// Query 79
MERGE (m:Metric {name: 'Shareholders’ funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs. thousand';

// Query 80
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Shareholders’ funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 54719964, r.year = 2024;

// Query 81
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Shareholders’ funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 54043639, r.year = 2023;

// Query 82
MERGE (m:Metric {name: 'Net assets'}) ON CREATE SET m.id = 'net_assets', m.unit = 'Rs. thousand';

// Query 83
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Net assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 131685633, r.year = 2024;

// Query 84
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Net assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 127720458, r.year = 2023;

// Query 85
MERGE (m:Metric {name: 'Net assets per ordinary share'}) ON CREATE SET m.id = 'net_assets_per_ordinary_share', m.unit = 'Rs.';

// Query 86
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Net assets per ordinary share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 536.07, r.year = 2024;

// Query 87
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (m:Metric {name: 'Net assets per ordinary share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 529.44, r.year = 2023;

// Query 88
MERGE (s:Sector {name: 'Food retailing'}) ON CREATE SET s.id = 'food_retailing';

// Query 89
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (s:Sector {name: 'Food retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 90
MERGE (s:Sector {name: 'Food and beverage manufacturing and distribution'}) ON CREATE SET s.id = 'food_and_beverage_manufacturing_and_distribution';

// Query 91
MATCH (c:Company {name: 'Cargills Ceylon PLC'}), (s:Sector {name: 'Food and beverage manufacturing and distribution'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 91
// Generated on: 2025-09-03T13:49:17.765069
