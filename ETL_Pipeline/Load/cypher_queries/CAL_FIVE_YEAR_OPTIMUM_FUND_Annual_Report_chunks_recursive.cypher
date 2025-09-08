// Query 1
MERGE (c:Company {name: 'CAL Five Year Optimum Fund'}) ON CREATE SET c.id = 'cal_five_year_optimum_fund';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 3
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/Managing Director', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 5
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 6
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 7
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 9
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 11
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-06-18');

// Query 12
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 13
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 14
MERGE (p:Person {name: 'C. P. R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 15
MATCH (p:Person {name: 'C. P. R. Perera'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 16
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 17
MATCH (p:Person {name: 'S. Rajaratnam'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 18
MERGE (p:Person {name: 'Amrit Rajaratnam'}) ON CREATE SET p.id = 'amrit_rajaratnam';

// Query 19
MATCH (p:Person {name: 'Amrit Rajaratnam'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 20
MERGE (p:Person {name: 'A. R. Rasiah'}) ON CREATE SET p.id = 'a_r_rasiah';

// Query 21
MATCH (p:Person {name: 'A. R. Rasiah'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 22
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 23
MATCH (p:Person {name: 'Anushman Rajaratnam'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 24
MERGE (p:Person {name: 'J. T. Sumathipala'}) ON CREATE SET p.id = 'j_t_sumathipala';

// Query 25
MATCH (p:Person {name: 'J. T. Sumathipala'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 26
MERGE (p:Person {name: 'R. Radha'}) ON CREATE SET p.id = 'r_radha';

// Query 27
MATCH (p:Person {name: 'R. Radha'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-09');

// Query 28
MERGE (p:Person {name: 'R.A.T.P Perera'}) ON CREATE SET p.id = 'r_a_t_p_perera';

// Query 29
MATCH (p:Person {name: 'R.A.T.P Perera'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director/CEO', r.as_of = date('2024-01-01');

// Query 30
MERGE (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}) ON CREATE SET p.id = 'd_a_s_d_a_abeyesinhe';

// Query 31
MATCH (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 32
MERGE (p:Person {name: 'A. D. Ross'}) ON CREATE SET p.id = 'a_d_ross';

// Query 33
MATCH (p:Person {name: 'A. D. Ross'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 34
MERGE (p:Person {name: 'V. Siva Jr.'}) ON CREATE SET p.id = 'v_siva_jr';

// Query 35
MATCH (p:Person {name: 'V. Siva Jr.'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 36
MERGE (p:Person {name: 'S. S. Balasubramaniam'}) ON CREATE SET p.id = 's_s_balasubramaniam';

// Query 37
MATCH (p:Person {name: 'S. S. Balasubramaniam'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 38
MERGE (p:Person {name: 'D. Swarnasinghe'}) ON CREATE SET p.id = 'd_swarnasinghe';

// Query 39
MATCH (p:Person {name: 'D. Swarnasinghe'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 40
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. million';

// Query 41
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8417, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4095, r.year = 2022;

// Query 44
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790, r.year = 2021;

// Query 45
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5560, r.year = 2020;

// Query 46
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs. million';

// Query 47
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -407, r.year = 2022;

// Query 50
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1913, r.year = 2021;

// Query 51
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28, r.year = 2020;

// Query 52
MERGE (m:Metric {name: 'Profit/Loss before tax'}) ON CREATE SET m.id = 'profit_loss_before_tax', m.unit = 'Rs. million';

// Query 53
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit/Loss before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit/Loss before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -133, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit/Loss before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -459, r.year = 2022;

// Query 56
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit/Loss before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2370, r.year = 2021;

// Query 57
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit/Loss before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 199, r.year = 2020;

// Query 58
MERGE (m:Metric {name: 'Profit/Loss after tax'}) ON CREATE SET m.id = 'profit_loss_after_tax', m.unit = 'Rs. million';

// Query 59
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit/Loss after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit/Loss after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -333, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit/Loss after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -508, r.year = 2022;

// Query 62
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit/Loss after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2244, r.year = 2021;

// Query 63
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit/Loss after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106, r.year = 2020;

// Query 64
MERGE (m:Metric {name: 'Dividends paid'}) ON CREATE SET m.id = 'dividends_paid', m.unit = 'Rs. million';

// Query 65
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 442, r.year = 2020;

// Query 66
MERGE (m:Metric {name: 'Return on equity (ROE)'}) ON CREATE SET m.id = 'return_on_equity_roe', m.unit = '%';

// Query 67
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.07, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.92, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.62, r.year = 2022;

// Query 70
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.54, r.year = 2021;

// Query 71
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.15, r.year = 2020;

// Query 72
MERGE (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed_roce', m.unit = '%';

// Query 73
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.86, r.year = 2023;

// Query 75
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.65, r.year = 2022;

// Query 76
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.43, r.year = 2021;

// Query 77
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2020;

// Query 78
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. million';

// Query 79
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381, r.year = 2024;

// Query 80
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45912, r.year = 2023;

// Query 81
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42509, r.year = 2022;

// Query 82
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40869, r.year = 2021;

// Query 83
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42582, r.year = 2020;

// Query 84
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. million';

// Query 85
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832, r.year = 2024;

// Query 86
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13674, r.year = 2023;

// Query 87
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7549, r.year = 2022;

// Query 88
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6256, r.year = 2021;

// Query 89
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5889, r.year = 2020;

// Query 90
MERGE (m:Metric {name: 'Net debt / Cash'}) ON CREATE SET m.id = 'net_debt_cash', m.unit = 'Rs. million';

// Query 91
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Net debt / Cash'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2284, r.year = 2024;

// Query 92
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Net debt / Cash'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2101, r.year = 2023;

// Query 93
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Net debt / Cash'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1645, r.year = 2022;

// Query 94
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Net debt / Cash'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 691, r.year = 2021;

// Query 95
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Net debt / Cash'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -587, r.year = 2020;

// Query 96
MERGE (m:Metric {name: 'Group revenue'}) ON CREATE SET m.id = 'group_revenue', m.unit = 'Rs. thousand';

// Query 97
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Group revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 277008844, r.year = 2024;

// Query 98
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Group revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 330420613, r.year = 2023;

// Query 99
MERGE (m:Metric {name: 'Profit from operations'}) ON CREATE SET m.id = 'profit_from_operations', m.unit = 'Rs. thousand';

// Query 100
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit from operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47399141, r.year = 2024;

// Query 101
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit from operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 59202045, r.year = 2023;

// Query 102
MERGE (m:Metric {name: 'Profit before tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs. thousand';

// Query 103
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 37288459, r.year = 2024;

// Query 104
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42377917, r.year = 2023;

// Query 105
MERGE (m:Metric {name: 'Profit after tax from continuing operations'}) ON CREATE SET m.id = 'profit_after_tax_from_continuing_operations', m.unit = 'Rs. thousand';

// Query 106
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit after tax from continuing operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22201573, r.year = 2024;

// Query 107
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit after tax from continuing operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27296336, r.year = 2023;

// Query 108
MERGE (m:Metric {name: 'EBITDA'}) ON CREATE SET m.id = 'ebitda', m.unit = 'Rs. thousand';

// Query 109
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'EBITDA'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58335217, r.year = 2024;

// Query 110
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'EBITDA'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 71191094, r.year = 2023;

// Query 111
MERGE (m:Metric {name: 'Profit attributable to ordinary shareholders'}) ON CREATE SET m.id = 'profit_attributable_to_ordinary_shareholders', m.unit = 'Rs. thousand';

// Query 112
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit attributable to ordinary shareholders'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8412977, r.year = 2024;

// Query 113
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit attributable to ordinary shareholders'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13022993, r.year = 2023;

// Query 114
MERGE (m:Metric {name: 'Operating cash flow per share'}) ON CREATE SET m.id = 'operating_cash_flow_per_share', m.unit = 'Rs.';

// Query 115
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Operating cash flow per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 327.92, r.year = 2024;

// Query 116
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Operating cash flow per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 514.31, r.year = 2023;

// Query 117
MERGE (m:Metric {name: 'Earnings per share (Group)'}) ON CREATE SET m.id = 'earnings_per_share_group', m.unit = 'Rs.';

// Query 118
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Earnings per share (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 82.22, r.year = 2024;

// Query 119
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Earnings per share (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 127.52, r.year = 2023;

// Query 120
MERGE (m:Metric {name: 'Dividend per share (Company)'}) ON CREATE SET m.id = 'dividend_per_share_company', m.unit = 'Rs.';

// Query 121
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Dividend per share (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.80, r.year = 2024;

// Query 122
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Dividend per share (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.10, r.year = 2023;

// Query 123
MERGE (m:Metric {name: 'Operating cash flows'}) ON CREATE SET m.id = 'operating_cash_flows', m.unit = 'Rs. thousand';

// Query 124
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Operating cash flows'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33447574, r.year = 2024;

// Query 125
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Operating cash flows'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 52459122, r.year = 2023;

// Query 126
MERGE (m:Metric {name: 'Capital expenditure'}) ON CREATE SET m.id = 'capital_expenditure', m.unit = 'Rs. thousand';

// Query 127
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Capital expenditure'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16919433, r.year = 2024;

// Query 128
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Capital expenditure'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17387897, r.year = 2023;

// Query 129
MERGE (m:Metric {name: 'Shareholders’ funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs. thousand';

// Query 130
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Shareholders’ funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 54719964, r.year = 2024;

// Query 131
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Shareholders’ funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 54043639, r.year = 2023;

// Query 132
MERGE (m:Metric {name: 'Net assets'}) ON CREATE SET m.id = 'net_assets', m.unit = 'Rs. thousand';

// Query 133
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Net assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 131685633, r.year = 2024;

// Query 134
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Net assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 127720458, r.year = 2023;

// Query 135
MERGE (m:Metric {name: 'Net assets per ordinary share'}) ON CREATE SET m.id = 'net_assets_per_ordinary_share', m.unit = 'Rs.';

// Query 136
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Net assets per ordinary share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 536.07, r.year = 2024;

// Query 137
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Net assets per ordinary share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 529.44, r.year = 2023;

// Query 138
MERGE (s:Sector {name: 'Investment Holdings'}) ON CREATE SET s.id = 'investment_holdings';

// Query 139
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (s:Sector {name: 'Investment Holdings'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 140
MERGE (s:Sector {name: 'Portfolio and Asset Management'}) ON CREATE SET s.id = 'portfolio_and_asset_management';

// Query 141
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (s:Sector {name: 'Portfolio and Asset Management'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 142
MERGE (s:Sector {name: 'Oil palm plantations'}) ON CREATE SET s.id = 'oil_palm_plantations';

// Query 143
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (s:Sector {name: 'Oil palm plantations'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 144
MERGE (s:Sector {name: 'Oils & fats'}) ON CREATE SET s.id = 'oils_fats';

// Query 145
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (s:Sector {name: 'Oils & fats'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 146
MERGE (s:Sector {name: 'Beverages'}) ON CREATE SET s.id = 'beverages';

// Query 147
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (s:Sector {name: 'Beverages'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 148
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 149
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 150
MERGE (s:Sector {name: 'Leisure'}) ON CREATE SET s.id = 'leisure';

// Query 151
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (s:Sector {name: 'Leisure'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 152
MERGE (s:Sector {name: 'Management Services'}) ON CREATE SET s.id = 'management_services';

// Query 153
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (s:Sector {name: 'Management Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 153
// Generated on: 2025-09-03T13:38:09.998383
