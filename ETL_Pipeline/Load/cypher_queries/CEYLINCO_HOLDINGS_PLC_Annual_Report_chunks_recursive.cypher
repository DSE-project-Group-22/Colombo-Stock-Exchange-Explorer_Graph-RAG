// Query 1
MERGE (c:Company {name: 'Ceylinco Holdings PLC'}) ON CREATE SET c.id = 'ceylinco_holdings_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 3
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/Managing Director', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 5
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 6
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 7
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 9
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 11
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-01-01');

// Query 12
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 13
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 14
MERGE (p:Person {name: 'C. P. R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 15
MATCH (p:Person {name: 'C. P. R. Perera'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 16
MERGE (p:Person {name: 'J. T. Sumathipala'}) ON CREATE SET p.id = 'j_t_sumathipala';

// Query 17
MATCH (p:Person {name: 'J. T. Sumathipala'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 18
MERGE (p:Person {name: 'R. Radha'}) ON CREATE SET p.id = 'r_radha';

// Query 19
MATCH (p:Person {name: 'R. Radha'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-01');

// Query 20
MERGE (p:Person {name: 'R.A.T.P Perera'}) ON CREATE SET p.id = 'r_a_t_p_perera';

// Query 21
MATCH (p:Person {name: 'R.A.T.P Perera'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director/CEO', r.as_of = date('2024-01-01');

// Query 22
MERGE (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}) ON CREATE SET p.id = 'd_a_s_d_a_abeyesinhe';

// Query 23
MATCH (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 24
MERGE (p:Person {name: 'A. D. Ross'}) ON CREATE SET p.id = 'a_d_ross';

// Query 25
MATCH (p:Person {name: 'A. D. Ross'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 26
MERGE (p:Person {name: 'V. Siva Jr.'}) ON CREATE SET p.id = 'v_siva_jr';

// Query 27
MATCH (p:Person {name: 'V. Siva Jr.'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 28
MERGE (p:Person {name: 'S. S. Balasubramaniam'}) ON CREATE SET p.id = 's_s_balasubramaniam';

// Query 29
MATCH (p:Person {name: 'S. S. Balasubramaniam'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 30
MERGE (p:Person {name: 'D. Swarnasinghe'}) ON CREATE SET p.id = 'd_swarnasinghe';

// Query 31
MATCH (p:Person {name: 'D. Swarnasinghe'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 32
MERGE (p:Person {name: 'D Hasitha S Jayawardena'}) ON CREATE SET p.id = 'd_hasitha_s_jayawardena';

// Query 33
MATCH (p:Person {name: 'D Hasitha S Jayawardena'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Chairman', r.as_of = date('2025-01-01');

// Query 34
MERGE (p:Person {name: 'C R Jansz'}) ON CREATE SET p.id = 'c_r_jansz';

// Query 35
MATCH (p:Person {name: 'C R Jansz'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 36
MERGE (p:Person {name: 'M A N S Perera'}) ON CREATE SET p.id = 'm_a_n_s_perera';

// Query 37
MATCH (p:Person {name: 'M A N S Perera'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-01-01');

// Query 38
MERGE (p:Person {name: 'K Dayaparan'}) ON CREATE SET p.id = 'k_dayaparan';

// Query 39
MATCH (p:Person {name: 'K Dayaparan'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 40
MERGE (p:Person {name: 'A Shakthevale'}) ON CREATE SET p.id = 'a_shakthevale';

// Query 41
MATCH (p:Person {name: 'A Shakthevale'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 42
MERGE (p:Person {name: 'D S K Amarasekara'}) ON CREATE SET p.id = 'd_s_k_amarasekara';

// Query 43
MATCH (p:Person {name: 'D S K Amarasekara'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 44
MERGE (p:Person {name: 'M R Mihular'}) ON CREATE SET p.id = 'm_r_mihular';

// Query 45
MATCH (p:Person {name: 'M R Mihular'}), (c:Company {name: 'Ceylinco Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 46
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. Mn';

// Query 47
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8417.0, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4095.0, r.year = 2022;

// Query 50
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790.0, r.year = 2021;

// Query 51
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5560.0, r.year = 2020;

// Query 52
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs. Mn';

// Query 53
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612.0, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93.0, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -407.0, r.year = 2022;

// Query 56
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1913.0, r.year = 2021;

// Query 57
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28.0, r.year = 2020;

// Query 58
MERGE (m:Metric {name: 'Profit/(Loss) before tax'}) ON CREATE SET m.id = 'profit_loss_before_tax', m.unit = 'Rs. Mn';

// Query 59
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Profit/(Loss) before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212.0, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Profit/(Loss) before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -133.0, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Profit/(Loss) before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -459.0, r.year = 2022;

// Query 62
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Profit/(Loss) before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2370.0, r.year = 2021;

// Query 63
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Profit/(Loss) before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 199.0, r.year = 2020;

// Query 64
MERGE (m:Metric {name: 'Profit/(Loss) after tax'}) ON CREATE SET m.id = 'profit_loss_after_tax', m.unit = 'Rs. Mn';

// Query 65
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Profit/(Loss) after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78.0, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Profit/(Loss) after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -333.0, r.year = 2023;

// Query 67
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Profit/(Loss) after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -508.0, r.year = 2022;

// Query 68
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Profit/(Loss) after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2244.0, r.year = 2021;

// Query 69
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Profit/(Loss) after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106.0, r.year = 2020;

// Query 70
MERGE (m:Metric {name: 'Dividends paid'}) ON CREATE SET m.id = 'dividends_paid', m.unit = 'Rs. Mn';

// Query 71
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2023;

// Query 73
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2022;

// Query 74
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2021;

// Query 75
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 442.0, r.year = 2020;

// Query 76
MERGE (m:Metric {name: 'Return on equity (ROE)'}) ON CREATE SET m.id = 'return_on_equity_roe', m.unit = '%';

// Query 77
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.07, r.year = 2024;

// Query 78
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.92, r.year = 2023;

// Query 79
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.62, r.year = 2022;

// Query 80
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.54, r.year = 2021;

// Query 81
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.15, r.year = 2020;

// Query 82
MERGE (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed_roce', m.unit = '%';

// Query 83
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 84
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.86, r.year = 2023;

// Query 85
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.65, r.year = 2022;

// Query 86
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.43, r.year = 2021;

// Query 87
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2020;

// Query 88
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. Mn';

// Query 89
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381.0, r.year = 2024;

// Query 90
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45912.0, r.year = 2023;

// Query 91
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42509.0, r.year = 2022;

// Query 92
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40869.0, r.year = 2021;

// Query 93
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42582.0, r.year = 2020;

// Query 94
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. Mn';

// Query 95
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832.0, r.year = 2024;

// Query 96
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13674.0, r.year = 2023;

// Query 97
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7549.0, r.year = 2022;

// Query 98
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6256.0, r.year = 2021;

// Query 99
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5889.0, r.year = 2020;

// Query 100
MERGE (m:Metric {name: 'Net debt / (Cash)'}) ON CREATE SET m.id = 'net_debt_cash', m.unit = 'Rs. Mn';

// Query 101
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2284.0, r.year = 2024;

// Query 102
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2101.0, r.year = 2023;

// Query 103
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1645.0, r.year = 2022;

// Query 104
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 691.0, r.year = 2021;

// Query 105
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -587.0, r.year = 2020;

// Query 106
MERGE (m:Metric {name: 'Group revenue'}) ON CREATE SET m.id = 'group_revenue', m.unit = 'Rs. thousand';

// Query 107
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Group revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 277076515.0, r.year = 2024;

// Query 108
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Group revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 330458690.0, r.year = 2023;

// Query 109
MERGE (m:Metric {name: 'Profit from operations'}) ON CREATE SET m.id = 'profit_from_operations', m.unit = 'Rs. thousand';

// Query 110
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Profit from operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47489136.0, r.year = 2024;

// Query 111
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Profit from operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 59257650.0, r.year = 2023;

// Query 112
MERGE (m:Metric {name: 'Profit before tax'}) ON CREATE SET m.id = 'profit_before_tax_thousand', m.unit = 'Rs. thousand';

// Query 113
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 37378454.0, r.year = 2024;

// Query 114
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42433522.0, r.year = 2023;

// Query 115
MERGE (m:Metric {name: 'Profit after tax from continuing operations'}) ON CREATE SET m.id = 'profit_after_tax_from_continuing_operations', m.unit = 'Rs. thousand';

// Query 116
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Profit after tax from continuing operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22304812.0, r.year = 2024;

// Query 117
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Profit after tax from continuing operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27357875.0, r.year = 2023;

// Query 118
MERGE (m:Metric {name: 'EBITDA'}) ON CREATE SET m.id = 'ebitda', m.unit = 'Rs. thousand';

// Query 119
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'EBITDA'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58425212.0, r.year = 2024;

// Query 120
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'EBITDA'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 71246699.0, r.year = 2023;

// Query 121
MERGE (m:Metric {name: 'Profit attributable to ordinary shareholders'}) ON CREATE SET m.id = 'profit_attributable_to_ordinary_shareholders', m.unit = 'Rs. thousand';

// Query 122
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Profit attributable to ordinary shareholders'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10769537.0, r.year = 2024;

// Query 123
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Profit attributable to ordinary shareholders'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13729646.0, r.year = 2023;

// Query 124
MERGE (m:Metric {name: 'Operating cash flow per share'}) ON CREATE SET m.id = 'operating_cash_flow_per_share', m.unit = 'Rs.';

// Query 125
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Operating cash flow per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 170.86, r.year = 2024;

// Query 126
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Operating cash flow per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 267.43, r.year = 2023;

// Query 127
MERGE (m:Metric {name: 'Earnings per share - Group'}) ON CREATE SET m.id = 'earnings_per_share_group', m.unit = 'Rs.';

// Query 128
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Earnings per share - Group'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 54.84, r.year = 2024;

// Query 129
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Earnings per share - Group'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 69.91, r.year = 2023;

// Query 130
MERGE (m:Metric {name: 'Dividend per share - Company'}) ON CREATE SET m.id = 'dividend_per_share_company', m.unit = 'Rs.';

// Query 131
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Dividend per share - Company'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.80, r.year = 2024;

// Query 132
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Dividend per share - Company'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.50, r.year = 2023;

// Query 133
MERGE (m:Metric {name: 'Operating cash flow'}) ON CREATE SET m.id = 'operating_cash_flow', m.unit = 'Rs. thousand';

// Query 134
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Operating cash flow'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33553915.0, r.year = 2024;

// Query 135
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Operating cash flow'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 52519931.0, r.year = 2023;

// Query 136
MERGE (m:Metric {name: 'Capital expenditure'}) ON CREATE SET m.id = 'capital_expenditure', m.unit = 'Rs. thousand';

// Query 137
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Capital expenditure'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16919433.0, r.year = 2024;

// Query 138
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Capital expenditure'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17387897.0, r.year = 2023;

// Query 139
MERGE (m:Metric {name: 'Shareholders’ funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs. thousand';

// Query 140
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Shareholders’ funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 71830528.0, r.year = 2024;

// Query 141
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Shareholders’ funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 68547883.0, r.year = 2023;

// Query 142
MERGE (m:Metric {name: 'Net assets'}) ON CREATE SET m.id = 'net_assets', m.unit = 'Rs. thousand';

// Query 143
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Net assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 143618731.0, r.year = 2024;

// Query 144
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Net assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 140236892.0, r.year = 2023;

// Query 145
MERGE (m:Metric {name: 'Net assets per ordinary share'}) ON CREATE SET m.id = 'net_assets_per_ordinary_share', m.unit = 'Rs.';

// Query 146
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Net assets per ordinary share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 365.76, r.year = 2024;

// Query 147
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (m:Metric {name: 'Net assets per ordinary share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 349.05, r.year = 2023;

// Query 148
MERGE (s:Sector {name: 'Investment Holdings'}) ON CREATE SET s.id = 'investment_holdings';

// Query 149
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (s:Sector {name: 'Investment Holdings'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 150
MERGE (s:Sector {name: 'Portfolio and Asset Management'}) ON CREATE SET s.id = 'portfolio_and_asset_management';

// Query 151
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (s:Sector {name: 'Portfolio and Asset Management'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 152
MERGE (s:Sector {name: 'Oil palm plantations'}) ON CREATE SET s.id = 'oil_palm_plantations';

// Query 153
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (s:Sector {name: 'Oil palm plantations'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 154
MERGE (s:Sector {name: 'Oils & fats'}) ON CREATE SET s.id = 'oils_and_fats';

// Query 155
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (s:Sector {name: 'Oils & fats'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 156
MERGE (s:Sector {name: 'Beverages'}) ON CREATE SET s.id = 'beverages';

// Query 157
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (s:Sector {name: 'Beverages'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 158
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 159
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 160
MERGE (s:Sector {name: 'Leisure'}) ON CREATE SET s.id = 'leisure';

// Query 161
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (s:Sector {name: 'Leisure'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 162
MERGE (s:Sector {name: 'Management Services'}) ON CREATE SET s.id = 'management_services';

// Query 163
MATCH (c:Company {name: 'Ceylinco Holdings PLC'}), (s:Sector {name: 'Management Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 163
// Generated on: 2025-09-03T16:44:38.983850
