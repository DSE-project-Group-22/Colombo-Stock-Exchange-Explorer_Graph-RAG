// Query 1
MERGE (c:Company {name: 'CIC Holdings PLC'}) ON CREATE SET c.id = 'cic_holdings_plc';

// Query 2
MERGE (p:Person {name: 'Mr. S. S. Balasubramaniam'}) ON CREATE SET p.id = 'mr_s_s_balasubramaniam';

// Query 3
MATCH (p:Person {name: 'Mr. S. S. Balasubramaniam'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'Mr. D.A.S.D. A. Abeyesinhe'}) ON CREATE SET p.id = 'mr_d_a_s_d_a_abeyesinhe';

// Query 5
MATCH (p:Person {name: 'Mr. D.A.S.D. A. Abeyesinhe'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 6
MERGE (p:Person {name: 'Mr. R. Radha'}) ON CREATE SET p.id = 'mr_r_radha';

// Query 7
MATCH (p:Person {name: 'Mr. R. Radha'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'Mr. G.L.H. Premaratne'}) ON CREATE SET p.id = 'mr_g_l_h_premaratne';

// Query 9
MATCH (p:Person {name: 'Mr. G.L.H. Premaratne'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'Mr. D S K Amarasekara'}) ON CREATE SET p.id = 'mr_d_s_k_amarasekara';

// Query 11
MATCH (p:Person {name: 'Mr. D S K Amarasekara'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 12
MERGE (p:Person {name: 'Mr. A.K. Pathirage'}) ON CREATE SET p.id = 'mr_a_k_pathirage';

// Query 13
MATCH (p:Person {name: 'Mr. A.K. Pathirage'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman, Managing Director', r.as_of = date('2024-01-01');

// Query 14
MERGE (p:Person {name: 'Dr. S. Selliah'}) ON CREATE SET p.id = 'dr_s_selliah';

// Query 15
MATCH (p:Person {name: 'Dr. S. Selliah'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 16
MERGE (p:Person {name: 'Mr. H K Kaimal'}) ON CREATE SET p.id = 'mr_h_k_kaimal';

// Query 17
MATCH (p:Person {name: 'Mr. H K Kaimal'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-01-01');

// Query 18
MERGE (p:Person {name: 'Mr. C. P. R. Perera'}) ON CREATE SET p.id = 'mr_c_p_r_perera';

// Query 19
MATCH (p:Person {name: 'Mr. C. P. R. Perera'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 20
MERGE (p:Person {name: 'Mr. D. Swarnasinghe'}) ON CREATE SET p.id = 'mr_d_swarnasinghe';

// Query 21
MATCH (p:Person {name: 'Mr. D. Swarnasinghe'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 22
MERGE (p:Person {name: 'Mr. M A N S Perera'}) ON CREATE SET p.id = 'mr_m_a_n_s_perera';

// Query 23
MATCH (p:Person {name: 'Mr. M A N S Perera'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-01-01');

// Query 24
MERGE (p:Person {name: 'Mr. R.A.T.P Perera'}) ON CREATE SET p.id = 'mr_r_a_t_p_perera';

// Query 25
MATCH (p:Person {name: 'Mr. R.A.T.P Perera'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director, CEO', r.as_of = date('2024-01-01');

// Query 26
MERGE (p:Person {name: 'Dr. K.M.P Karunaratne'}) ON CREATE SET p.id = 'dr_k_m_p_karunaratne';

// Query 27
MATCH (p:Person {name: 'Dr. K.M.P Karunaratne'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 28
MERGE (p:Person {name: 'Mr. A. D. Ross'}) ON CREATE SET p.id = 'mr_a_d_ross';

// Query 29
MATCH (p:Person {name: 'Mr. A. D. Ross'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 30
MERGE (p:Person {name: 'Mr. S. D. R. Arudpragasam'}) ON CREATE SET p.id = 'mr_s_d_r_arudpragasam';

// Query 31
MATCH (p:Person {name: 'Mr. S. D. R. Arudpragasam'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 32
MERGE (p:Person {name: 'Mr. K Dayaparan'}) ON CREATE SET p.id = 'mr_k_dayaparan';

// Query 33
MATCH (p:Person {name: 'Mr. K Dayaparan'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 34
MERGE (p:Person {name: 'Mr M R Mihular'}) ON CREATE SET p.id = 'mr_m_r_mihular';

// Query 35
MATCH (p:Person {name: 'Mr M R Mihular'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 36
MERGE (p:Person {name: 'Dr. J. T. Sumathipala'}) ON CREATE SET p.id = 'dr_j_t_sumathipala';

// Query 37
MATCH (p:Person {name: 'Dr. J. T. Sumathipala'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 38
MERGE (p:Person {name: 'Mr D Hasitha S Jayawardena'}) ON CREATE SET p.id = 'mr_d_hasitha_s_jayawardena';

// Query 39
MATCH (p:Person {name: 'Mr D Hasitha S Jayawardena'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Chairman', r.as_of = date('2024-01-01');

// Query 40
MERGE (p:Person {name: 'Mr. V. Siva Jr.'}) ON CREATE SET p.id = 'mr_v_siva_jr';

// Query 41
MATCH (p:Person {name: 'Mr. V. Siva Jr.'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 42
MERGE (p:Person {name: 'Dr. A Shakthevale'}) ON CREATE SET p.id = 'dr_a_shakthevale';

// Query 43
MATCH (p:Person {name: 'Dr. A Shakthevale'}), (c:Company {name: 'CIC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 44
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. million';

// Query 45
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10772, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8417, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4095, r.year = 2022;

// Query 48
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1790, r.year = 2021;

// Query 49
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5560, r.year = 2020;

// Query 50
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs. million';

// Query 51
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 612, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 93, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -407, r.year = 2022;

// Query 54
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1913, r.year = 2021;

// Query 55
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -28, r.year = 2020;

// Query 56
MERGE (m:Metric {name: 'Profit before tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs. million';

// Query 57
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 212, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -133, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -459, r.year = 2022;

// Query 60
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2370, r.year = 2021;

// Query 61
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 199, r.year = 2020;

// Query 62
MERGE (m:Metric {name: 'Profit after tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs. million';

// Query 63
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 78, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -333, r.year = 2023;

// Query 65
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -508, r.year = 2022;

// Query 66
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2244, r.year = 2021;

// Query 67
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 106, r.year = 2020;

// Query 68
MERGE (m:Metric {name: 'Dividends paid'}) ON CREATE SET m.id = 'dividends_paid', m.unit = 'Rs. million';

// Query 69
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0, r.year = 2022;

// Query 72
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0, r.year = 2021;

// Query 73
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 442, r.year = 2020;

// Query 74
MERGE (m:Metric {name: 'Return on equity (ROE)'}) ON CREATE SET m.id = 'return_on_equity_roe', m.unit = '%';

// Query 75
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.07, r.year = 2024;

// Query 76
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.92, r.year = 2023;

// Query 77
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1.62, r.year = 2022;

// Query 78
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5.54, r.year = 2021;

// Query 79
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.15, r.year = 2020;

// Query 80
MERGE (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed_roce', m.unit = '%';

// Query 81
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.86, r.year = 2024;

// Query 82
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.86, r.year = 2023;

// Query 83
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.65, r.year = 2022;

// Query 84
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6.43, r.year = 2021;

// Query 85
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.61, r.year = 2020;

// Query 86
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. million';

// Query 87
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 48381, r.year = 2024;

// Query 88
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 45912, r.year = 2023;

// Query 89
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 42509, r.year = 2022;

// Query 90
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 40869, r.year = 2021;

// Query 91
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 42582, r.year = 2020;

// Query 92
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. million';

// Query 93
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14832, r.year = 2024;

// Query 94
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13674, r.year = 2023;

// Query 95
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7549, r.year = 2022;

// Query 96
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6256, r.year = 2021;

// Query 97
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5889, r.year = 2020;

// Query 98
MERGE (m:Metric {name: 'Net debt / (Cash)'}) ON CREATE SET m.id = 'net_debt_cash', m.unit = 'Rs. million';

// Query 99
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2284, r.year = 2024;

// Query 100
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2101, r.year = 2023;

// Query 101
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1645, r.year = 2022;

// Query 102
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 691, r.year = 2021;

// Query 103
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -587, r.year = 2020;

// Query 104
MERGE (m:Metric {name: 'Group revenue'}) ON CREATE SET m.id = 'group_revenue', m.unit = 'Rs. thousand';

// Query 105
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Group revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 76424242, r.year = 2024;

// Query 106
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Group revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 68274718, r.year = 2023;

// Query 107
MERGE (m:Metric {name: 'Group profit before interest and tax'}) ON CREATE SET m.id = 'group_profit_before_interest_and_tax', m.unit = 'Rs. thousand';

// Query 108
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Group profit before interest and tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10673653, r.year = 2024;

// Query 109
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Group profit before interest and tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16843086, r.year = 2023;

// Query 110
MERGE (m:Metric {name: 'Income tax expense'}) ON CREATE SET m.id = 'income_tax_expense', m.unit = 'Rs. thousand';

// Query 111
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Income tax expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2543225, r.year = 2024;

// Query 112
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Income tax expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -3070914, r.year = 2023;

// Query 113
MERGE (m:Metric {name: 'Profit for the year from continuing operations'}) ON CREATE SET m.id = 'profit_for_the_year_from_continuing_operations', m.unit = 'Rs. thousand';

// Query 114
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Profit for the year from continuing operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10974197, r.year = 2024;

// Query 115
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Profit for the year from continuing operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9997624, r.year = 2023;

// Query 116
MERGE (m:Metric {name: 'Profit for the year from discontinued operations'}) ON CREATE SET m.id = 'profit_for_the_year_from_discontinued_operations', m.unit = 'Rs. thousand';

// Query 117
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Profit for the year from discontinued operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 47197, r.year = 2024;

// Query 118
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Profit for the year from discontinued operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 54934, r.year = 2023;

// Query 119
MERGE (m:Metric {name: 'Other comprehensive income'}) ON CREATE SET m.id = 'other_comprehensive_income', m.unit = 'Rs. thousand';

// Query 120
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Other comprehensive income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3577528, r.year = 2024;

// Query 121
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Other comprehensive income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -313920, r.year = 2023;

// Query 122
MERGE (m:Metric {name: 'Total comprehensive income'}) ON CREATE SET m.id = 'total_comprehensive_income', m.unit = 'Rs. thousand';

// Query 123
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Total comprehensive income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14598922, r.year = 2024;

// Query 124
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Total comprehensive income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9738638, r.year = 2023;

// Query 125
MERGE (m:Metric {name: 'Profit attributable to equity holders of the Company'}) ON CREATE SET m.id = 'profit_attributable_to_equity_holders_of_the_company', m.unit = 'Rs. thousand';

// Query 126
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Profit attributable to equity holders of the Company'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9743258, r.year = 2024;

// Query 127
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Profit attributable to equity holders of the Company'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7801449, r.year = 2023;

// Query 128
MERGE (m:Metric {name: 'Dividend Paid'}) ON CREATE SET m.id = 'dividend_paid', m.unit = 'Rs. thousand';

// Query 129
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Dividend Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 947700, r.year = 2024;

// Query 130
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Dividend Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 379080, r.year = 2023;

// Query 131
MERGE (m:Metric {name: 'Basic/Diluted earnings per share (EPS)'}) ON CREATE SET m.id = 'basic_diluted_earnings_per_share_eps', m.unit = 'Rs.';

// Query 132
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Basic/Diluted earnings per share (EPS)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 25.7, r.year = 2024;

// Query 133
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Basic/Diluted earnings per share (EPS)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 20.58, r.year = 2023;

// Query 134
MERGE (m:Metric {name: 'Interest cover'}) ON CREATE SET m.id = 'interest_cover', m.unit = 'Times';

// Query 135
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Interest cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.55, r.year = 2024;

// Query 136
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Interest cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.03, r.year = 2023;

// Query 137
MERGE (m:Metric {name: 'Return on equity (ROE)'}) ON CREATE SET m.id = 'return_on_equity_roe', m.unit = '%';

// Query 138
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 28, r.year = 2024;

// Query 139
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 34, r.year = 2023;

// Query 140
MERGE (m:Metric {name: 'Return on assets (ROA)'}) ON CREATE SET m.id = 'return_on_assets_roa', m.unit = '%';

// Query 141
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Return on assets (ROA)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19, r.year = 2024;

// Query 142
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Return on assets (ROA)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 17, r.year = 2023;

// Query 143
MERGE (m:Metric {name: 'Pre-tax return on capital employed (ROCE)'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed_roce', m.unit = '%';

// Query 144
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Pre-tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 20, r.year = 2024;

// Query 145
MATCH (c:Company {name: 'CIC Holdings PLC'}), (m:Metric {name: 'Pre-tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 45, r.year = 2023;

// Query 146
MERGE (s:Sector {name: 'Oil palm plantations'}) ON CREATE SET s.id = 'oil_palm_plantations';

// Query 147
MATCH (c:Company {name: 'CIC Holdings PLC'}), (s:Sector {name: 'Oil palm plantations'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 148
MERGE (s:Sector {name: 'Industrial Solutions'}) ON CREATE SET s.id = 'industrial_solutions';

// Query 149
MATCH (c:Company {name: 'CIC Holdings PLC'}), (s:Sector {name: 'Industrial Solutions'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 150
MERGE (s:Sector {name: 'Management Services'}) ON CREATE SET s.id = 'management_services';

// Query 151
MATCH (c:Company {name: 'CIC Holdings PLC'}), (s:Sector {name: 'Management Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 152
MERGE (s:Sector {name: 'Beverages'}) ON CREATE SET s.id = 'beverages';

// Query 153
MATCH (c:Company {name: 'CIC Holdings PLC'}), (s:Sector {name: 'Beverages'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 154
MERGE (s:Sector {name: 'Agri Produce'}) ON CREATE SET s.id = 'agri_produce';

// Query 155
MATCH (c:Company {name: 'CIC Holdings PLC'}), (s:Sector {name: 'Agri Produce'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 156
MERGE (s:Sector {name: 'Leisure'}) ON CREATE SET s.id = 'leisure';

// Query 157
MATCH (c:Company {name: 'CIC Holdings PLC'}), (s:Sector {name: 'Leisure'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 158
MERGE (s:Sector {name: 'Health & Personal care'}) ON CREATE SET s.id = 'health_personal_care';

// Query 159
MATCH (c:Company {name: 'CIC Holdings PLC'}), (s:Sector {name: 'Health & Personal care'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 160
MERGE (s:Sector {name: 'Oils & fats'}) ON CREATE SET s.id = 'oils_fats';

// Query 161
MATCH (c:Company {name: 'CIC Holdings PLC'}), (s:Sector {name: 'Oils & fats'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 162
MERGE (s:Sector {name: 'Investment Holdings'}) ON CREATE SET s.id = 'investment_holdings';

// Query 163
MATCH (c:Company {name: 'CIC Holdings PLC'}), (s:Sector {name: 'Investment Holdings'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 164
MERGE (s:Sector {name: 'Portfolio and Asset Management'}) ON CREATE SET s.id = 'portfolio_and_asset_management';

// Query 165
MATCH (c:Company {name: 'CIC Holdings PLC'}), (s:Sector {name: 'Portfolio and Asset Management'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 166
MERGE (s:Sector {name: 'Crop Solutions'}) ON CREATE SET s.id = 'crop_solutions';

// Query 167
MATCH (c:Company {name: 'CIC Holdings PLC'}), (s:Sector {name: 'Crop Solutions'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 168
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 169
MATCH (c:Company {name: 'CIC Holdings PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 170
MERGE (s:Sector {name: 'Livestock Solutions'}) ON CREATE SET s.id = 'livestock_solutions';

// Query 171
MATCH (c:Company {name: 'CIC Holdings PLC'}), (s:Sector {name: 'Livestock Solutions'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 171
// Generated on: 2025-09-03T15:07:59.515995
