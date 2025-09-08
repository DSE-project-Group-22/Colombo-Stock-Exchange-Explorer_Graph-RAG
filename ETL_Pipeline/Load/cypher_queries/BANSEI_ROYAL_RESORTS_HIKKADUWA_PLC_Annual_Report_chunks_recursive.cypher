// Query 1
MERGE (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) ON CREATE SET c.id = 'bansei_royal_resorts_hikkaduwa_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 3
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/Managing Director', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 5
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 6
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 7
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 9
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 11
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-01-01');

// Query 12
MERGE (p:Person {name: 'J. T. Sumathipala'}) ON CREATE SET p.id = 'j_t_sumathipala';

// Query 13
MATCH (p:Person {name: 'J. T. Sumathipala'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 14
MERGE (p:Person {name: 'R. Radha'}) ON CREATE SET p.id = 'r_radha';

// Query 15
MATCH (p:Person {name: 'R. Radha'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-01');

// Query 16
MERGE (p:Person {name: 'R.A.T.P Perera'}) ON CREATE SET p.id = 'r_a_t_p_perera';

// Query 17
MATCH (p:Person {name: 'R.A.T.P Perera'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director/CEO', r.as_of = date('2024-01-01');

// Query 18
MERGE (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}) ON CREATE SET p.id = 'd_a_s_d_a_abeyesinhe';

// Query 19
MATCH (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 20
MERGE (p:Person {name: 'A. D. Ross'}) ON CREATE SET p.id = 'a_d_ross';

// Query 21
MATCH (p:Person {name: 'A. D. Ross'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 22
MERGE (p:Person {name: 'V. Siva Jr.'}) ON CREATE SET p.id = 'v_siva_jr';

// Query 23
MATCH (p:Person {name: 'V. Siva Jr.'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 24
MERGE (p:Person {name: 'S. S. Balasubramaniam'}) ON CREATE SET p.id = 's_s_balasubramaniam';

// Query 25
MATCH (p:Person {name: 'S. S. Balasubramaniam'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 26
MERGE (p:Person {name: 'D. Swarnasinghe'}) ON CREATE SET p.id = 'd_swarnasinghe';

// Query 27
MATCH (p:Person {name: 'D. Swarnasinghe'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 28
MERGE (p:Person {name: 'D Hasitha S Jayawardena'}) ON CREATE SET p.id = 'd_hasitha_s_jayawardena';

// Query 29
MATCH (p:Person {name: 'D Hasitha S Jayawardena'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Chairman', r.as_of = date('2025-01-01');

// Query 30
MERGE (p:Person {name: 'C R Jansz'}) ON CREATE SET p.id = 'c_r_jansz';

// Query 31
MATCH (p:Person {name: 'C R Jansz'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 32
MERGE (p:Person {name: 'M A N S Perera'}) ON CREATE SET p.id = 'm_a_n_s_perera';

// Query 33
MATCH (p:Person {name: 'M A N S Perera'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-01-01');

// Query 34
MERGE (p:Person {name: 'K Dayaparan'}) ON CREATE SET p.id = 'k_dayaparan';

// Query 35
MATCH (p:Person {name: 'K Dayaparan'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 36
MERGE (p:Person {name: 'A Shakthevale'}) ON CREATE SET p.id = 'a_shakthevale';

// Query 37
MATCH (p:Person {name: 'A Shakthevale'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 38
MERGE (p:Person {name: 'D S K Amarasekara'}) ON CREATE SET p.id = 'd_s_k_amarasekara';

// Query 39
MATCH (p:Person {name: 'D S K Amarasekara'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 40
MERGE (p:Person {name: 'M R Mihular'}) ON CREATE SET p.id = 'm_r_mihular';

// Query 41
MATCH (p:Person {name: 'M R Mihular'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 42
MERGE (p:Person {name: 'W. D. N. H. Perera'}) ON CREATE SET p.id = 'w_d_n_h_perera';

// Query 43
MATCH (p:Person {name: 'W. D. N. H. Perera'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Chairman', r.as_of = date('2024-01-01');

// Query 44
MERGE (p:Person {name: 'A. R. Cooke'}) ON CREATE SET p.id = 'a_r_cooke';

// Query 45
MATCH (p:Person {name: 'A. R. Cooke'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'President/Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 46
MERGE (p:Person {name: 'W. M. R. Iddawela'}) ON CREATE SET p.id = 'w_m_r_iddawela';

// Query 47
MATCH (p:Person {name: 'W. M. R. Iddawela'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Vice President/Executive Director', r.as_of = date('2024-01-01');

// Query 48
MERGE (p:Person {name: 'D. J. Wedande'}) ON CREATE SET p.id = 'd_j_wedande';

// Query 49
MATCH (p:Person {name: 'D. J. Wedande'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'SVP/Executive Director', r.as_of = date('2024-01-01');

// Query 50
MERGE (p:Person {name: 'U. A. Sirisekera'}) ON CREATE SET p.id = 'u_a_sirisekera';

// Query 51
MATCH (p:Person {name: 'U. A. Sirisekera'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'SVP/Executive Director', r.as_of = date('2024-01-01');

// Query 52
MERGE (p:Person {name: 'T. G. Thoradeniya'}) ON CREATE SET p.id = 't_g_thoradeniya';

// Query 53
MATCH (p:Person {name: 'T. G. Thoradeniya'}), (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non - Executive Director', r.as_of = date('2024-01-01');

// Query 54
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. Mn';

// Query 55
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8417, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4095, r.year = 2022;

// Query 58
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790, r.year = 2021;

// Query 59
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5560, r.year = 2020;

// Query 60
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs. Mn';

// Query 61
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -407, r.year = 2022;

// Query 64
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1913, r.year = 2021;

// Query 65
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28, r.year = 2020;

// Query 66
MERGE (m:Metric {name: 'Profit before tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs. Mn';

// Query 67
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -133, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -459, r.year = 2022;

// Query 70
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2370, r.year = 2021;

// Query 71
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 199, r.year = 2020;

// Query 72
MERGE (m:Metric {name: 'Profit after tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs. Mn';

// Query 73
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -333, r.year = 2023;

// Query 75
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -508, r.year = 2022;

// Query 76
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2244, r.year = 2021;

// Query 77
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106, r.year = 2020;

// Query 78
MERGE (m:Metric {name: 'Dividends paid'}) ON CREATE SET m.id = 'dividends_paid', m.unit = 'Rs. Mn';

// Query 79
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 442, r.year = 2020;

// Query 80
MERGE (m:Metric {name: 'Return on equity (ROE)'}) ON CREATE SET m.id = 'return_on_equity_roe', m.unit = '%';

// Query 81
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.07, r.year = 2024;

// Query 82
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.92, r.year = 2023;

// Query 83
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.62, r.year = 2022;

// Query 84
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.54, r.year = 2021;

// Query 85
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.15, r.year = 2020;

// Query 86
MERGE (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed_roce', m.unit = '%';

// Query 87
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 88
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.86, r.year = 2023;

// Query 89
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.65, r.year = 2022;

// Query 90
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.43, r.year = 2021;

// Query 91
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2020;

// Query 92
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. Mn';

// Query 93
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381, r.year = 2024;

// Query 94
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45912, r.year = 2023;

// Query 95
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42509, r.year = 2022;

// Query 96
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40869, r.year = 2021;

// Query 97
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42582, r.year = 2020;

// Query 98
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. Mn';

// Query 99
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832, r.year = 2024;

// Query 100
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13674, r.year = 2023;

// Query 101
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7549, r.year = 2022;

// Query 102
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6256, r.year = 2021;

// Query 103
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5889, r.year = 2020;

// Query 104
MERGE (m:Metric {name: 'Net debt / (Cash)'}) ON CREATE SET m.id = 'net_debt_cash', m.unit = 'Rs. Mn';

// Query 105
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2284, r.year = 2024;

// Query 106
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2101, r.year = 2023;

// Query 107
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1645, r.year = 2022;

// Query 108
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 691, r.year = 2021;

// Query 109
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -587, r.year = 2020;

// Query 110
MERGE (s:Sector {name: 'Healthcare Services'}) ON CREATE SET s.id = 'healthcare_services';

// Query 111
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (s:Sector {name: 'Healthcare Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 112
MERGE (s:Sector {name: 'Sales of Goods'}) ON CREATE SET s.id = 'sales_of_goods';

// Query 113
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (s:Sector {name: 'Sales of Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 114
MERGE (s:Sector {name: 'Loyalty points'}) ON CREATE SET s.id = 'loyalty_points';

// Query 115
MATCH (c:Company {name: 'BANSEI ROYAL RESORTS HIKKADUWA PLC'}), (s:Sector {name: 'Loyalty points'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 115
// Generated on: 2025-09-03T13:20:57.590115
