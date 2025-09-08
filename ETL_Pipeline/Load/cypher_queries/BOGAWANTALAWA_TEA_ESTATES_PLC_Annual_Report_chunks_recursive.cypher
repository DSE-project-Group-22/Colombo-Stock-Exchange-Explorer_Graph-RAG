// Query 1
MERGE (c:Company {name: 'Bogawantalawa Tea Estates PLC'}) ON CREATE SET c.id = 'bogawantalawa_tea_estates_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 3
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'Bogawantalawa Tea Estates PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/Managing Director', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 5
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'Bogawantalawa Tea Estates PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 6
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 7
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'Bogawantalawa Tea Estates PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 9
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'Bogawantalawa Tea Estates PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 11
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'Bogawantalawa Tea Estates PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-01-01');

// Query 12
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 13
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'Bogawantalawa Tea Estates PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 14
MERGE (p:Person {name: 'C. P. R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 15
MATCH (p:Person {name: 'C. P. R. Perera'}), (c:Company {name: 'Bogawantalawa Tea Estates PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 16
MERGE (p:Person {name: 'J. T. Sumathipala'}) ON CREATE SET p.id = 'j_t_sumathipala';

// Query 17
MATCH (p:Person {name: 'J. T. Sumathipala'}), (c:Company {name: 'Bogawantalawa Tea Estates PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 18
MERGE (p:Person {name: 'R. Radha'}) ON CREATE SET p.id = 'r_radha';

// Query 19
MATCH (p:Person {name: 'R. Radha'}), (c:Company {name: 'Bogawantalawa Tea Estates PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-01');

// Query 20
MERGE (p:Person {name: 'R.A.T.P Perera'}) ON CREATE SET p.id = 'r_a_t_p_perera';

// Query 21
MATCH (p:Person {name: 'R.A.T.P Perera'}), (c:Company {name: 'Bogawantalawa Tea Estates PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director/CEO', r.as_of = date('2024-01-01');

// Query 22
MERGE (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}) ON CREATE SET p.id = 'd_a_s_d_a_abeyesinhe';

// Query 23
MATCH (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}), (c:Company {name: 'Bogawantalawa Tea Estates PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 24
MERGE (p:Person {name: 'A. D. Ross'}) ON CREATE SET p.id = 'a_d_ross';

// Query 25
MATCH (p:Person {name: 'A. D. Ross'}), (c:Company {name: 'Bogawantalawa Tea Estates PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 26
MERGE (p:Person {name: 'V. Siva Jr.'}) ON CREATE SET p.id = 'v_siva_jr';

// Query 27
MATCH (p:Person {name: 'V. Siva Jr.'}), (c:Company {name: 'Bogawantalawa Tea Estates PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 28
MERGE (p:Person {name: 'S. S. Balasubramaniam'}) ON CREATE SET p.id = 's_s_balasubramaniam';

// Query 29
MATCH (p:Person {name: 'S. S. Balasubramaniam'}), (c:Company {name: 'Bogawantalawa Tea Estates PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 30
MERGE (p:Person {name: 'D. Swarnasinghe'}) ON CREATE SET p.id = 'd_swarnasinghe';

// Query 31
MATCH (p:Person {name: 'D. Swarnasinghe'}), (c:Company {name: 'Bogawantalawa Tea Estates PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 32
MERGE (m:Metric {name: 'Revenue (Group)'}) ON CREATE SET m.id = 'revenue_group', m.unit = 'Rs. million';

// Query 33
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Revenue (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10772, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Revenue (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8417, r.year = 2023;

// Query 35
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Revenue (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4095, r.year = 2022;

// Query 36
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Revenue (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1790, r.year = 2021;

// Query 37
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Revenue (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5560, r.year = 2020;

// Query 38
MERGE (m:Metric {name: 'Results from operating activities (Group)'}) ON CREATE SET m.id = 'results_from_operating_activities_group', m.unit = 'Rs. million';

// Query 39
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Results from operating activities (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 612, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Results from operating activities (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 93, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Results from operating activities (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -407, r.year = 2022;

// Query 42
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Results from operating activities (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1913, r.year = 2021;

// Query 43
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Results from operating activities (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -28, r.year = 2020;

// Query 44
MERGE (m:Metric {name: 'Profit before tax (Group)'}) ON CREATE SET m.id = 'profit_before_tax_group', m.unit = 'Rs. million';

// Query 45
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Profit before tax (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 212, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Profit before tax (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -133, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Profit before tax (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -459, r.year = 2022;

// Query 48
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Profit before tax (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2370, r.year = 2021;

// Query 49
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Profit before tax (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 199, r.year = 2020;

// Query 50
MERGE (m:Metric {name: 'Profit after tax (Group)'}) ON CREATE SET m.id = 'profit_after_tax_group', m.unit = 'Rs. million';

// Query 51
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Profit after tax (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 78, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Profit after tax (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -333, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Profit after tax (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -508, r.year = 2022;

// Query 54
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Profit after tax (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2244, r.year = 2021;

// Query 55
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Profit after tax (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 106, r.year = 2020;

// Query 56
MERGE (m:Metric {name: 'Dividends paid (Group)'}) ON CREATE SET m.id = 'dividends_paid_group', m.unit = 'Rs. million';

// Query 57
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Dividends paid (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Dividends paid (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Dividends paid (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0, r.year = 2022;

// Query 60
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Dividends paid (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0, r.year = 2021;

// Query 61
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Dividends paid (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 442, r.year = 2020;

// Query 62
MERGE (m:Metric {name: 'Return on equity (ROE) (Group)'}) ON CREATE SET m.id = 'return_on_equity_roe_group', m.unit = '%';

// Query 63
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Return on equity (ROE) (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.07, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Return on equity (ROE) (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.92, r.year = 2023;

// Query 65
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Return on equity (ROE) (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1.62, r.year = 2022;

// Query 66
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Return on equity (ROE) (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5.54, r.year = 2021;

// Query 67
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Return on equity (ROE) (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.15, r.year = 2020;

// Query 68
MERGE (m:Metric {name: 'Pre-Tax return on capital employed (ROCE) (Group)'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed_roce_group', m.unit = '%';

// Query 69
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE) (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.86, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE) (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.86, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE) (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.65, r.year = 2022;

// Query 72
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE) (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6.43, r.year = 2021;

// Query 73
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE) (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.61, r.year = 2020;

// Query 74
MERGE (m:Metric {name: 'Total assets (Group)'}) ON CREATE SET m.id = 'total_assets_group', m.unit = 'Rs. million';

// Query 75
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Total assets (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 48381, r.year = 2024;

// Query 76
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Total assets (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 45912, r.year = 2023;

// Query 77
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Total assets (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 42509, r.year = 2022;

// Query 78
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Total assets (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 40869, r.year = 2021;

// Query 79
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Total assets (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 42582, r.year = 2020;

// Query 80
MERGE (m:Metric {name: 'Total liabilities (Group)'}) ON CREATE SET m.id = 'total_liabilities_group', m.unit = 'Rs. million';

// Query 81
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Total liabilities (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14832, r.year = 2024;

// Query 82
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Total liabilities (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13674, r.year = 2023;

// Query 83
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Total liabilities (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7549, r.year = 2022;

// Query 84
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Total liabilities (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6256, r.year = 2021;

// Query 85
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Total liabilities (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5889, r.year = 2020;

// Query 86
MERGE (m:Metric {name: 'Net debt / (Cash) (Group)'}) ON CREATE SET m.id = 'net_debt_cash_group', m.unit = 'Rs. million';

// Query 87
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Net debt / (Cash) (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2284, r.year = 2024;

// Query 88
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Net debt / (Cash) (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2101, r.year = 2023;

// Query 89
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Net debt / (Cash) (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1645, r.year = 2022;

// Query 90
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Net debt / (Cash) (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 691, r.year = 2021;

// Query 91
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Net debt / (Cash) (Group)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -587, r.year = 2020;

// Query 92
MERGE (m:Metric {name: 'Revenue (Company)'}) ON CREATE SET m.id = 'revenue_company', m.unit = 'Rs. million';

// Query 93
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Revenue (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1765.7, r.year = 2024;

// Query 94
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Revenue (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1623.1, r.year = 2023;

// Query 95
MERGE (m:Metric {name: 'Profit before tax (Company)'}) ON CREATE SET m.id = 'profit_before_tax_company', m.unit = 'Rs. million';

// Query 96
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Profit before tax (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 232.3, r.year = 2024;

// Query 97
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Profit before tax (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 241.9, r.year = 2023;

// Query 98
MERGE (m:Metric {name: 'Total comprehensive income net of tax (Company)'}) ON CREATE SET m.id = 'total_comprehensive_income_net_of_tax_company', m.unit = 'Rs. million';

// Query 99
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Total comprehensive income net of tax (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 158.5, r.year = 2024;

// Query 100
MATCH (c:Company {name: 'Bogawantalawa Tea Estates PLC'}), (m:Metric {name: 'Total comprehensive income net of tax (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 166.6, r.year = 2023;

// Total queries: 100
// Generated on: 2025-09-03T13:42:19.730572
