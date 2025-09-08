// Query 1
MERGE (c:Company {name: 'CEYLON HOSPITALS PLC'}) ON CREATE SET c.id = 'ceylon_hospitals_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 3
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 4
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-01');

// Query 5
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 6
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 7
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 8
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 9
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 10
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-01');

// Query 11
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 12
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-06-18');

// Query 13
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 14
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 15
MERGE (p:Person {name: 'C. P. R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 16
MATCH (p:Person {name: 'C. P. R. Perera'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 17
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 18
MATCH (p:Person {name: 'S. Rajaratnam'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 19
MERGE (p:Person {name: 'Amrit Rajaratnam'}) ON CREATE SET p.id = 'amrit_rajaratnam';

// Query 20
MATCH (p:Person {name: 'Amrit Rajaratnam'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 21
MERGE (p:Person {name: 'A. R. Rasiah'}) ON CREATE SET p.id = 'a_r_rasiah';

// Query 22
MATCH (p:Person {name: 'A. R. Rasiah'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 23
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 24
MATCH (p:Person {name: 'Anushman Rajaratnam'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 25
MERGE (p:Person {name: 'J. T. Sumathipala'}) ON CREATE SET p.id = 'j_t_sumathipala';

// Query 26
MATCH (p:Person {name: 'J. T. Sumathipala'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 27
MERGE (p:Person {name: 'R. Radha'}) ON CREATE SET p.id = 'r_radha';

// Query 28
MATCH (p:Person {name: 'R. Radha'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-09');

// Query 29
MERGE (p:Person {name: 'R.A.T.P Perera'}) ON CREATE SET p.id = 'r_a_t_p_perera';

// Query 30
MATCH (p:Person {name: 'R.A.T.P Perera'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director/CEO', r.as_of = date('2024-01-01');

// Query 31
MERGE (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}) ON CREATE SET p.id = 'd_a_s_d_a_abeyesinhe';

// Query 32
MATCH (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 33
MERGE (p:Person {name: 'A. D. Ross'}) ON CREATE SET p.id = 'a_d_ross';

// Query 34
MATCH (p:Person {name: 'A. D. Ross'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 35
MERGE (p:Person {name: 'V. Siva Jr.'}) ON CREATE SET p.id = 'v_siva_jr';

// Query 36
MATCH (p:Person {name: 'V. Siva Jr.'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 37
MERGE (p:Person {name: 'S. S. Balasubramaniam'}) ON CREATE SET p.id = 's_s_balasubramaniam';

// Query 38
MATCH (p:Person {name: 'S. S. Balasubramaniam'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 39
MERGE (p:Person {name: 'D. Swarnasinghe'}) ON CREATE SET p.id = 'd_swarnasinghe';

// Query 40
MATCH (p:Person {name: 'D. Swarnasinghe'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 41
MERGE (p:Person {name: 'D Hasitha S Jayawardena'}) ON CREATE SET p.id = 'd_hasitha_s_jayawardena';

// Query 42
MATCH (p:Person {name: 'D Hasitha S Jayawardena'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Chairman', r.as_of = date('2024-01-01');

// Query 43
MERGE (p:Person {name: 'C R Jansz'}) ON CREATE SET p.id = 'c_r_jansz';

// Query 44
MATCH (p:Person {name: 'C R Jansz'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 45
MERGE (p:Person {name: 'M A N S Perera'}) ON CREATE SET p.id = 'm_a_n_s_perera';

// Query 46
MATCH (p:Person {name: 'M A N S Perera'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-01-01');

// Query 47
MERGE (p:Person {name: 'K Dayaparan'}) ON CREATE SET p.id = 'k_dayaparan';

// Query 48
MATCH (p:Person {name: 'K Dayaparan'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 49
MERGE (p:Person {name: 'A Shakthevale'}) ON CREATE SET p.id = 'a_shakthevale';

// Query 50
MATCH (p:Person {name: 'A Shakthevale'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 51
MERGE (p:Person {name: 'D S K Amarasekara'}) ON CREATE SET p.id = 'd_s_k_amarasekara';

// Query 52
MATCH (p:Person {name: 'D S K Amarasekara'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 53
MERGE (p:Person {name: 'M R Mihular'}) ON CREATE SET p.id = 'm_r_mihular';

// Query 54
MATCH (p:Person {name: 'M R Mihular'}), (c:Company {name: 'CEYLON HOSPITALS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Non-Executive Director', r.as_of = date('2024-10-01');

// Query 55
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. Mn';

// Query 56
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772.0, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8417.0, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4095.0, r.year = 2022;

// Query 59
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790.0, r.year = 2021;

// Query 60
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5560.0, r.year = 2020;

// Query 61
MERGE (m:Metric {name: 'Results from Operating Activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs. Mn';

// Query 62
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612.0, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93.0, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -407.0, r.year = 2022;

// Query 65
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1913.0, r.year = 2021;

// Query 66
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28.0, r.year = 2020;

// Query 67
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs. Mn';

// Query 68
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212.0, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -133.0, r.year = 2023;

// Query 70
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -459.0, r.year = 2022;

// Query 71
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2370.0, r.year = 2021;

// Query 72
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 199.0, r.year = 2020;

// Query 73
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs. Mn';

// Query 74
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78.0, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -333.0, r.year = 2023;

// Query 76
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -508.0, r.year = 2022;

// Query 77
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2244.0, r.year = 2021;

// Query 78
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106.0, r.year = 2020;

// Query 79
MERGE (m:Metric {name: 'Dividends Paid'}) ON CREATE SET m.id = 'dividends_paid', m.unit = 'Rs. Mn';

// Query 80
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Dividends Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 442.0, r.year = 2020;

// Query 81
MERGE (m:Metric {name: 'Return on Equity (ROE)'}) ON CREATE SET m.id = 'return_on_equity_roe', m.unit = '%';

// Query 82
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Return on Equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.07, r.year = 2024;

// Query 83
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Return on Equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.92, r.year = 2023;

// Query 84
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Return on Equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.62, r.year = 2022;

// Query 85
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Return on Equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.54, r.year = 2021;

// Query 86
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Return on Equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.15, r.year = 2020;

// Query 87
MERGE (m:Metric {name: 'Pre-Tax Return on Capital Employed (ROCE)'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed_roce', m.unit = '%';

// Query 88
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Pre-Tax Return on Capital Employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 89
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Pre-Tax Return on Capital Employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.86, r.year = 2023;

// Query 90
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Pre-Tax Return on Capital Employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.65, r.year = 2022;

// Query 91
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Pre-Tax Return on Capital Employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.43, r.year = 2021;

// Query 92
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Pre-Tax Return on Capital Employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2020;

// Query 93
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. Mn';

// Query 94
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381.0, r.year = 2024;

// Query 95
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45912.0, r.year = 2023;

// Query 96
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42509.0, r.year = 2022;

// Query 97
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40869.0, r.year = 2021;

// Query 98
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42582.0, r.year = 2020;

// Query 99
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. Mn';

// Query 100
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832.0, r.year = 2024;

// Query 101
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13674.0, r.year = 2023;

// Query 102
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7549.0, r.year = 2022;

// Query 103
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6256.0, r.year = 2021;

// Query 104
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5889.0, r.year = 2020;

// Query 105
MERGE (m:Metric {name: 'Net Debt / (Cash)'}) ON CREATE SET m.id = 'net_debt_cash', m.unit = 'Rs. Mn';

// Query 106
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Net Debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2284.0, r.year = 2024;

// Query 107
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Net Debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2101.0, r.year = 2023;

// Query 108
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Net Debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1645.0, r.year = 2022;

// Query 109
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Net Debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 691.0, r.year = 2021;

// Query 110
MATCH (c:Company {name: 'CEYLON HOSPITALS PLC'}), (m:Metric {name: 'Net Debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -587.0, r.year = 2020;

// Total queries: 110
// Generated on: 2025-09-03T13:58:49.256674
