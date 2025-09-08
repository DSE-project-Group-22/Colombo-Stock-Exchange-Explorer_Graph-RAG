// Query 1
MERGE (c:Company {name: 'Chevron Lubricants Lanka PLC'}) ON CREATE SET c.id = 'chevron_lubricants_lanka_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 3
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/Managing Director', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 5
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 6
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 7
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 9
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 11
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-01-01');

// Query 12
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 13
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 14
MERGE (p:Person {name: 'C. P. R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 15
MATCH (p:Person {name: 'C. P. R. Perera'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 16
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 17
MATCH (p:Person {name: 'S. Rajaratnam'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 18
MERGE (p:Person {name: 'Amrit Rajaratnam'}) ON CREATE SET p.id = 'amrit_rajaratnam';

// Query 19
MATCH (p:Person {name: 'Amrit Rajaratnam'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 20
MERGE (p:Person {name: 'A. R. Rasiah'}) ON CREATE SET p.id = 'a_r_rasiah';

// Query 21
MATCH (p:Person {name: 'A. R. Rasiah'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 22
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 23
MATCH (p:Person {name: 'Anushman Rajaratnam'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 24
MERGE (p:Person {name: 'J. T. Sumathipala'}) ON CREATE SET p.id = 'j_t_sumathipala';

// Query 25
MATCH (p:Person {name: 'J. T. Sumathipala'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 26
MERGE (p:Person {name: 'R. Radha'}) ON CREATE SET p.id = 'r_radha';

// Query 27
MATCH (p:Person {name: 'R. Radha'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-01');

// Query 28
MERGE (p:Person {name: 'R.A.T.P Perera'}) ON CREATE SET p.id = 'r_a_t_p_perera';

// Query 29
MATCH (p:Person {name: 'R.A.T.P Perera'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director/CEO', r.as_of = date('2024-01-01');

// Query 30
MERGE (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}) ON CREATE SET p.id = 'd_a_s_d_a_abeyesinhe';

// Query 31
MATCH (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 32
MERGE (p:Person {name: 'A. D. Ross'}) ON CREATE SET p.id = 'a_d_ross';

// Query 33
MATCH (p:Person {name: 'A. D. Ross'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 34
MERGE (p:Person {name: 'V. Siva Jr.'}) ON CREATE SET p.id = 'v_siva_jr';

// Query 35
MATCH (p:Person {name: 'V. Siva Jr.'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 36
MERGE (p:Person {name: 'S. S. Balasubramaniam'}) ON CREATE SET p.id = 's_s_balasubramaniam';

// Query 37
MATCH (p:Person {name: 'S. S. Balasubramaniam'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 38
MERGE (p:Person {name: 'D. Swarnasinghe'}) ON CREATE SET p.id = 'd_swarnasinghe';

// Query 39
MATCH (p:Person {name: 'D. Swarnasinghe'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 40
MERGE (p:Person {name: 'D Hasitha S Jayawardena'}) ON CREATE SET p.id = 'd_hasitha_s_jayawardena';

// Query 41
MATCH (p:Person {name: 'D Hasitha S Jayawardena'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Chairman', r.as_of = date('2024-01-01');

// Query 42
MERGE (p:Person {name: 'C R Jansz'}) ON CREATE SET p.id = 'c_r_jansz';

// Query 43
MATCH (p:Person {name: 'C R Jansz'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 44
MERGE (p:Person {name: 'M A N S Perera'}) ON CREATE SET p.id = 'm_a_n_s_perera';

// Query 45
MATCH (p:Person {name: 'M A N S Perera'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-01-01');

// Query 46
MERGE (p:Person {name: 'K Dayaparan'}) ON CREATE SET p.id = 'k_dayaparan';

// Query 47
MATCH (p:Person {name: 'K Dayaparan'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 48
MERGE (p:Person {name: 'A Shakthevale'}) ON CREATE SET p.id = 'a_shakthevale';

// Query 49
MATCH (p:Person {name: 'A Shakthevale'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 50
MERGE (p:Person {name: 'D S K Amarasekara'}) ON CREATE SET p.id = 'd_s_k_amarasekara';

// Query 51
MATCH (p:Person {name: 'D S K Amarasekara'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 52
MERGE (p:Person {name: 'M R Mihular'}) ON CREATE SET p.id = 'm_r_mihular';

// Query 53
MATCH (p:Person {name: 'M R Mihular'}), (c:Company {name: 'Chevron Lubricants Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 54
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. million';

// Query 55
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772.0, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8417.0, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4095.0, r.year = 2022;

// Query 58
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790.0, r.year = 2021;

// Query 59
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5560.0, r.year = 2020;

// Query 60
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs. million';

// Query 61
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612.0, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93.0, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -407.0, r.year = 2022;

// Query 64
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1913.0, r.year = 2021;

// Query 65
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28.0, r.year = 2020;

// Query 66
MERGE (m:Metric {name: 'Profit before tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs. million';

// Query 67
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212.0, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -133.0, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -459.0, r.year = 2022;

// Query 70
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2370.0, r.year = 2021;

// Query 71
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 199.0, r.year = 2020;

// Query 72
MERGE (m:Metric {name: 'Profit after tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs. million';

// Query 73
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78.0, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -333.0, r.year = 2023;

// Query 75
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -508.0, r.year = 2022;

// Query 76
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2244.0, r.year = 2021;

// Query 77
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106.0, r.year = 2020;

// Query 78
MERGE (m:Metric {name: 'Dividends paid'}) ON CREATE SET m.id = 'dividends_paid', m.unit = 'Rs. million';

// Query 79
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2024;

// Query 80
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2023;

// Query 81
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2022;

// Query 82
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2021;

// Query 83
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 442.0, r.year = 2020;

// Query 84
MERGE (m:Metric {name: 'Return on equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 85
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Return on equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.07, r.year = 2024;

// Query 86
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Return on equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.92, r.year = 2023;

// Query 87
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Return on equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.62, r.year = 2022;

// Query 88
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Return on equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.54, r.year = 2021;

// Query 89
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Return on equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.15, r.year = 2020;

// Query 90
MERGE (m:Metric {name: 'Pre-Tax return on capital employed'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed', m.unit = '%';

// Query 91
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 92
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.86, r.year = 2023;

// Query 93
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.65, r.year = 2022;

// Query 94
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.43, r.year = 2021;

// Query 95
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2020;

// Query 96
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. million';

// Query 97
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381.0, r.year = 2024;

// Query 98
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45912.0, r.year = 2023;

// Query 99
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42509.0, r.year = 2022;

// Query 100
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40869.0, r.year = 2021;

// Query 101
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42582.0, r.year = 2020;

// Query 102
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. million';

// Query 103
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832.0, r.year = 2024;

// Query 104
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13674.0, r.year = 2023;

// Query 105
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7549.0, r.year = 2022;

// Query 106
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6256.0, r.year = 2021;

// Query 107
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5889.0, r.year = 2020;

// Query 108
MERGE (m:Metric {name: 'Net debt'}) ON CREATE SET m.id = 'net_debt', m.unit = 'Rs. million';

// Query 109
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Net debt'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2284.0, r.year = 2024;

// Query 110
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Net debt'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2101.0, r.year = 2023;

// Query 111
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Net debt'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1645.0, r.year = 2022;

// Query 112
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Net debt'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 691.0, r.year = 2021;

// Query 113
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Net debt'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -587.0, r.year = 2020;

// Query 114
MERGE (m:Metric {name: 'Dividend per share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs.';

// Query 115
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.44, r.year = 2024;

// Query 116
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.68, r.year = 2023;

// Query 117
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.36, r.year = 2022;

// Query 118
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.35, r.year = 2021;

// Query 119
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.08, r.year = 2020;

// Query 120
MERGE (m:Metric {name: 'Dividend Pay-out Ratio'}) ON CREATE SET m.id = 'dividend_pay_out_ratio', m.unit = '%';

// Query 121
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividend Pay-out Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 56.55, r.year = 2024;

// Query 122
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividend Pay-out Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 51.75, r.year = 2023;

// Query 123
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividend Pay-out Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 59.80, r.year = 2022;

// Query 124
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividend Pay-out Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 59.40, r.year = 2021;

// Query 125
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividend Pay-out Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 67.70, r.year = 2020;

// Query 126
MERGE (m:Metric {name: 'Market Share Price Appreciation'}) ON CREATE SET m.id = 'market_share_price_appreciation', m.unit = '%';

// Query 127
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Market Share Price Appreciation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44.2, r.year = 2024;

// Query 128
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Market Share Price Appreciation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.3, r.year = 2023;

// Query 129
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Market Share Price Appreciation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.6, r.year = 2022;

// Query 130
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Market Share Price Appreciation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.5, r.year = 2021;

// Query 131
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Market Share Price Appreciation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -14.6, r.year = 2020;

// Query 132
MERGE (m:Metric {name: 'Dividend Yield'}) ON CREATE SET m.id = 'dividend_yield', m.unit = '%';

// Query 133
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividend Yield'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.4, r.year = 2024;

// Query 134
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividend Yield'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 77.2, r.year = 2023;

// Query 135
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividend Yield'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.6, r.year = 2022;

// Query 136
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividend Yield'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.4, r.year = 2021;

// Query 137
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividend Yield'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.3, r.year = 2020;

// Query 138
MERGE (m:Metric {name: 'Total Shareholder Return'}) ON CREATE SET m.id = 'total_shareholder_return', m.unit = '%';

// Query 139
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Total Shareholder Return'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93.8, r.year = 2024;

// Query 140
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Total Shareholder Return'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.21, r.year = 2023;

// Query 141
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Total Shareholder Return'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -8.41, r.year = 2022;

// Query 142
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Total Shareholder Return'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.67, r.year = 2021;

// Query 143
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Total Shareholder Return'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 56.21, r.year = 2020;

// Query 144
MERGE (s:Sector {name: 'Investment Holdings'}) ON CREATE SET s.id = 'investment_holdings';

// Query 145
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (s:Sector {name: 'Investment Holdings'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 146
MERGE (s:Sector {name: 'Portfolio and Asset Management'}) ON CREATE SET s.id = 'portfolio_and_asset_management';

// Query 147
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (s:Sector {name: 'Portfolio and Asset Management'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 148
MERGE (s:Sector {name: 'Oil palm plantations'}) ON CREATE SET s.id = 'oil_palm_plantations';

// Query 149
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (s:Sector {name: 'Oil palm plantations'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 150
MERGE (s:Sector {name: 'Oils & fats'}) ON CREATE SET s.id = 'oils_and_fats';

// Query 151
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (s:Sector {name: 'Oils & fats'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 152
MERGE (s:Sector {name: 'Beverages'}) ON CREATE SET s.id = 'beverages';

// Query 153
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (s:Sector {name: 'Beverages'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 154
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 155
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 156
MERGE (s:Sector {name: 'Leisure'}) ON CREATE SET s.id = 'leisure';

// Query 157
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (s:Sector {name: 'Leisure'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 158
MERGE (s:Sector {name: 'Management Services'}) ON CREATE SET s.id = 'management_services';

// Query 159
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (s:Sector {name: 'Management Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 159
// Generated on: 2025-09-03T14:08:53.305603
