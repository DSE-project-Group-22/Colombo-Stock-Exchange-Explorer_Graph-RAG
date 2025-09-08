// Query 1
MERGE (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) ON CREATE SET c.id = 'ceylon_guardian_investment_trust_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 3
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/ Managing Director', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 5
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 6
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 7
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 9
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 11
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-06-18');

// Query 12
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 13
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 14
MERGE (p:Person {name: 'C. P. R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 15
MATCH (p:Person {name: 'C. P. R. Perera'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 16
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 17
MATCH (p:Person {name: 'S. Rajaratnam'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 18
MERGE (p:Person {name: 'Amrit Rajaratnam'}) ON CREATE SET p.id = 'amrit_rajaratnam';

// Query 19
MATCH (p:Person {name: 'Amrit Rajaratnam'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 20
MERGE (p:Person {name: 'A. R. Rasiah'}) ON CREATE SET p.id = 'a_r_rasiah';

// Query 21
MATCH (p:Person {name: 'A. R. Rasiah'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 22
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 23
MATCH (p:Person {name: 'Anushman Rajaratnam'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 24
MERGE (p:Person {name: 'J. T. Sumathipala'}) ON CREATE SET p.id = 'j_t_sumathipala';

// Query 25
MATCH (p:Person {name: 'J. T. Sumathipala'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-25');

// Query 26
MERGE (p:Person {name: 'R. Radha'}) ON CREATE SET p.id = 'r_radha';

// Query 27
MATCH (p:Person {name: 'R. Radha'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-09');

// Query 28
MERGE (p:Person {name: 'R.A.T.P Perera'}) ON CREATE SET p.id = 'r_a_t_p_perera';

// Query 29
MATCH (p:Person {name: 'R.A.T.P Perera'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director/CEO', r.as_of = date('2024-01-31');

// Query 30
MERGE (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}) ON CREATE SET p.id = 'd_a_s_d_a_abeyesinhe';

// Query 31
MATCH (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 32
MERGE (p:Person {name: 'A. D. Ross'}) ON CREATE SET p.id = 'a_d_ross';

// Query 33
MATCH (p:Person {name: 'A. D. Ross'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 34
MERGE (p:Person {name: 'V. Siva Jr.'}) ON CREATE SET p.id = 'v_siva_jr';

// Query 35
MATCH (p:Person {name: 'V. Siva Jr.'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 36
MERGE (p:Person {name: 'S. S. Balasubramaniam'}) ON CREATE SET p.id = 's_s_balasubramaniam';

// Query 37
MATCH (p:Person {name: 'S. S. Balasubramaniam'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 38
MERGE (p:Person {name: 'D. Swarnasinghe'}) ON CREATE SET p.id = 'd_swarnasinghe';

// Query 39
MATCH (p:Person {name: 'D. Swarnasinghe'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 40
MERGE (p:Person {name: 'D Hasitha S Jayawardena'}) ON CREATE SET p.id = 'd_hasitha_s_jayawardena';

// Query 41
MATCH (p:Person {name: 'D Hasitha S Jayawardena'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Chairman', r.as_of = date('2024-01-01');

// Query 42
MERGE (p:Person {name: 'C R Jansz'}) ON CREATE SET p.id = 'c_r_jansz';

// Query 43
MATCH (p:Person {name: 'C R Jansz'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 44
MERGE (p:Person {name: 'M A N S Perera'}) ON CREATE SET p.id = 'm_a_n_s_perera';

// Query 45
MATCH (p:Person {name: 'M A N S Perera'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-01-01');

// Query 46
MERGE (p:Person {name: 'K Dayaparan'}) ON CREATE SET p.id = 'k_dayaparan';

// Query 47
MATCH (p:Person {name: 'K Dayaparan'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 48
MERGE (p:Person {name: 'A Shakthevale'}) ON CREATE SET p.id = 'a_shakthevale';

// Query 49
MATCH (p:Person {name: 'A Shakthevale'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-10-01');

// Query 50
MERGE (p:Person {name: 'D S K Amarasekara'}) ON CREATE SET p.id = 'd_s_k_amarasekara';

// Query 51
MATCH (p:Person {name: 'D S K Amarasekara'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-10-01');

// Query 52
MERGE (p:Person {name: 'M R Mihular'}) ON CREATE SET p.id = 'm_r_mihular';

// Query 53
MATCH (p:Person {name: 'M R Mihular'}), (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Non-Executive Director', r.as_of = date('2024-10-01');

// Query 54
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. Mn';

// Query 55
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8417, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4095, r.year = 2022;

// Query 58
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790, r.year = 2021;

// Query 59
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5560, r.year = 2020;

// Query 60
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs. Mn';

// Query 61
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -407, r.year = 2022;

// Query 64
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1913, r.year = 2021;

// Query 65
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28, r.year = 2020;

// Query 66
MERGE (m:Metric {name: 'Profit/(Loss) before tax'}) ON CREATE SET m.id = 'profit_loss_before_tax', m.unit = 'Rs. Mn';

// Query 67
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit/(Loss) before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit/(Loss) before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -133, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit/(Loss) before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -459, r.year = 2022;

// Query 70
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit/(Loss) before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2370, r.year = 2021;

// Query 71
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit/(Loss) before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 199, r.year = 2020;

// Query 72
MERGE (m:Metric {name: 'Profit/(Loss) after tax'}) ON CREATE SET m.id = 'profit_loss_after_tax', m.unit = 'Rs. Mn';

// Query 73
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit/(Loss) after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit/(Loss) after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -333, r.year = 2023;

// Query 75
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit/(Loss) after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -508, r.year = 2022;

// Query 76
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit/(Loss) after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2244, r.year = 2021;

// Query 77
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit/(Loss) after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106, r.year = 2020;

// Query 78
MERGE (m:Metric {name: 'Dividends paid'}) ON CREATE SET m.id = 'dividends_paid', m.unit = 'Rs. Mn';

// Query 79
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0, r.year = 2024;

// Query 80
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0, r.year = 2023;

// Query 81
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0, r.year = 2022;

// Query 82
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0, r.year = 2021;

// Query 83
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 442, r.year = 2020;

// Query 84
MERGE (m:Metric {name: 'Return on equity (ROE)'}) ON CREATE SET m.id = 'return_on_equity_roe', m.unit = '%';

// Query 85
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.07, r.year = 2024;

// Query 86
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.92, r.year = 2023;

// Query 87
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.62, r.year = 2022;

// Query 88
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.54, r.year = 2021;

// Query 89
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.15, r.year = 2020;

// Query 90
MERGE (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed_roce', m.unit = '%';

// Query 91
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 92
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.86, r.year = 2023;

// Query 93
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.65, r.year = 2022;

// Query 94
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.43, r.year = 2021;

// Query 95
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2020;

// Query 96
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. Mn';

// Query 97
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381, r.year = 2024;

// Query 98
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45912, r.year = 2023;

// Query 99
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42509, r.year = 2022;

// Query 100
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40869, r.year = 2021;

// Query 101
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42582, r.year = 2020;

// Query 102
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. Mn';

// Query 103
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832, r.year = 2024;

// Query 104
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13674, r.year = 2023;

// Query 105
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7549, r.year = 2022;

// Query 106
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6256, r.year = 2021;

// Query 107
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5889, r.year = 2020;

// Query 108
MERGE (m:Metric {name: 'Net debt / (Cash)'}) ON CREATE SET m.id = 'net_debt_cash', m.unit = 'Rs. Mn';

// Query 109
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2284, r.year = 2024;

// Query 110
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2101, r.year = 2023;

// Query 111
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1645, r.year = 2022;

// Query 112
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 691, r.year = 2021;

// Query 113
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -587, r.year = 2020;

// Query 114
MERGE (s:Sector {name: 'Investment Holdings'}) ON CREATE SET s.id = 'investment_holdings';

// Query 115
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (s:Sector {name: 'Investment Holdings'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 116
MERGE (s:Sector {name: 'Portfolio and Asset Management'}) ON CREATE SET s.id = 'portfolio_and_asset_management';

// Query 117
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (s:Sector {name: 'Portfolio and Asset Management'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 118
MERGE (s:Sector {name: 'Oil palm plantations'}) ON CREATE SET s.id = 'oil_palm_plantations';

// Query 119
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (s:Sector {name: 'Oil palm plantations'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 120
MERGE (s:Sector {name: 'Oils & fats'}) ON CREATE SET s.id = 'oils_fats';

// Query 121
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (s:Sector {name: 'Oils & fats'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 122
MERGE (s:Sector {name: 'Beverages'}) ON CREATE SET s.id = 'beverages';

// Query 123
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (s:Sector {name: 'Beverages'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 124
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 125
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 126
MERGE (s:Sector {name: 'Leisure'}) ON CREATE SET s.id = 'leisure';

// Query 127
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (s:Sector {name: 'Leisure'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 128
MERGE (s:Sector {name: 'Management Services'}) ON CREATE SET s.id = 'management_services';

// Query 129
MATCH (c:Company {name: 'CEYLON GUARDIAN INVESTMENT TRUST PLC'}), (s:Sector {name: 'Management Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 129
// Generated on: 2025-09-03T14:22:10.447863
