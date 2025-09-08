// Query 1
MERGE (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}) ON CREATE SET c.id = 'associated_motor_finance_company_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 3
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/ Managing Director', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 5
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 6
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 7
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 9
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 11
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-01-01');

// Query 12
MERGE (p:Person {name: 'J. T. Sumathipala'}) ON CREATE SET p.id = 'j_t_sumathipala';

// Query 13
MATCH (p:Person {name: 'J. T. Sumathipala'}), (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 14
MERGE (p:Person {name: 'R. Radha'}) ON CREATE SET p.id = 'r_radha';

// Query 15
MATCH (p:Person {name: 'R. Radha'}), (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-01');

// Query 16
MERGE (p:Person {name: 'R.A.T.P Perera'}) ON CREATE SET p.id = 'r_a_t_p_perera';

// Query 17
MATCH (p:Person {name: 'R.A.T.P Perera'}), (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director/CEO', r.as_of = date('2024-01-01');

// Query 18
MERGE (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}) ON CREATE SET p.id = 'd_a_s_d_a_abeyesinhe';

// Query 19
MATCH (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}), (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 20
MERGE (p:Person {name: 'A. D. Ross'}) ON CREATE SET p.id = 'a_d_ross';

// Query 21
MATCH (p:Person {name: 'A. D. Ross'}), (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 22
MERGE (p:Person {name: 'V. Siva Jr.'}) ON CREATE SET p.id = 'v_siva_jr';

// Query 23
MATCH (p:Person {name: 'V. Siva Jr.'}), (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 24
MERGE (p:Person {name: 'S. S. Balasubramaniam'}) ON CREATE SET p.id = 's_s_balasubramaniam';

// Query 25
MATCH (p:Person {name: 'S. S. Balasubramaniam'}), (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 26
MERGE (p:Person {name: 'D. Swarnasinghe'}) ON CREATE SET p.id = 'd_swarnasinghe';

// Query 27
MATCH (p:Person {name: 'D. Swarnasinghe'}), (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 28
MERGE (p:Person {name: 'W. D. N. H. Perera'}) ON CREATE SET p.id = 'w_d_n_h_perera';

// Query 29
MATCH (p:Person {name: 'W. D. N. H. Perera'}), (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Chairman', r.as_of = date('2024-01-01');

// Query 30
MERGE (p:Person {name: 'A. R. Cooke'}) ON CREATE SET p.id = 'a_r_cooke';

// Query 31
MATCH (p:Person {name: 'A. R. Cooke'}), (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'President/Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 32
MERGE (p:Person {name: 'W. M. R. Iddawela'}) ON CREATE SET p.id = 'w_m_r_iddawela';

// Query 33
MATCH (p:Person {name: 'W. M. R. Iddawela'}), (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Vice President/Executive Director', r.as_of = date('2024-01-01');

// Query 34
MERGE (p:Person {name: 'D. J. Wedande'}) ON CREATE SET p.id = 'd_j_wedande';

// Query 35
MATCH (p:Person {name: 'D. J. Wedande'}), (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'SVP/Executive Director', r.as_of = date('2024-01-01');

// Query 36
MERGE (p:Person {name: 'U. A. Sirisekera'}) ON CREATE SET p.id = 'u_a_sirisekera';

// Query 37
MATCH (p:Person {name: 'U. A. Sirisekera'}), (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'SVP/Executive Director', r.as_of = date('2024-01-01');

// Query 38
MERGE (p:Person {name: 'T. G. Thoradeniya'}) ON CREATE SET p.id = 't_g_thoradeniya';

// Query 39
MATCH (p:Person {name: 'T. G. Thoradeniya'}), (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non - Executive Director', r.as_of = date('2024-01-01');

// Query 40
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. Mn';

// Query 41
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8417, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4095, r.year = 2022;

// Query 44
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790, r.year = 2021;

// Query 45
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5560, r.year = 2020;

// Query 46
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs. Mn';

// Query 47
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -407, r.year = 2022;

// Query 50
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1913, r.year = 2021;

// Query 51
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28, r.year = 2020;

// Query 52
MERGE (m:Metric {name: 'Profit/(Loss) before tax'}) ON CREATE SET m.id = 'profit_loss_before_tax', m.unit = 'Rs. Mn';

// Query 53
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Profit/(Loss) before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Profit/(Loss) before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -133, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Profit/(Loss) before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -459, r.year = 2022;

// Query 56
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Profit/(Loss) before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2370, r.year = 2021;

// Query 57
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Profit/(Loss) before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 199, r.year = 2020;

// Query 58
MERGE (m:Metric {name: 'Profit/(Loss) after tax'}) ON CREATE SET m.id = 'profit_loss_after_tax', m.unit = 'Rs. Mn';

// Query 59
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Profit/(Loss) after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Profit/(Loss) after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -333, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Profit/(Loss) after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -508, r.year = 2022;

// Query 62
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Profit/(Loss) after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2244, r.year = 2021;

// Query 63
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Profit/(Loss) after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106, r.year = 2020;

// Query 64
MERGE (m:Metric {name: 'Dividends paid'}) ON CREATE SET m.id = 'dividends_paid', m.unit = 'Rs. Mn';

// Query 65
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0, r.year = 2023;

// Query 67
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0, r.year = 2022;

// Query 68
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0, r.year = 2021;

// Query 69
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 442, r.year = 2020;

// Query 70
MERGE (m:Metric {name: 'Return on equity (ROE)'}) ON CREATE SET m.id = 'return_on_equity_roe', m.unit = '%';

// Query 71
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.07, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.92, r.year = 2023;

// Query 73
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.62, r.year = 2022;

// Query 74
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.54, r.year = 2021;

// Query 75
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.15, r.year = 2020;

// Query 76
MERGE (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed_roce', m.unit = '%';

// Query 77
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 78
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.86, r.year = 2023;

// Query 79
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.65, r.year = 2022;

// Query 80
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.43, r.year = 2021;

// Query 81
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2020;

// Query 82
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. Mn';

// Query 83
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381, r.year = 2024;

// Query 84
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45912, r.year = 2023;

// Query 85
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42509, r.year = 2022;

// Query 86
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40869, r.year = 2021;

// Query 87
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42582, r.year = 2020;

// Query 88
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. Mn';

// Query 89
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832, r.year = 2024;

// Query 90
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13674, r.year = 2023;

// Query 91
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7549, r.year = 2022;

// Query 92
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6256, r.year = 2021;

// Query 93
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5889, r.year = 2020;

// Query 94
MERGE (m:Metric {name: 'Net debt / (Cash)'}) ON CREATE SET m.id = 'net_debt_cash', m.unit = 'Rs. Mn';

// Query 95
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2284, r.year = 2024;

// Query 96
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2101, r.year = 2023;

// Query 97
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1645, r.year = 2022;

// Query 98
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 691, r.year = 2021;

// Query 99
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -587, r.year = 2020;

// Query 100
MERGE (s:Sector {name: 'Lease & Hire-purchase'}) ON CREATE SET s.id = 'lease_hire_purchase';

// Query 101
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (s:Sector {name: 'Lease & Hire-purchase'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 102
MERGE (s:Sector {name: 'Loans'}) ON CREATE SET s.id = 'loans';

// Query 103
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (s:Sector {name: 'Loans'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 104
MERGE (s:Sector {name: 'Gold Loans'}) ON CREATE SET s.id = 'gold_loans';

// Query 105
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (s:Sector {name: 'Gold Loans'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 106
MERGE (s:Sector {name: 'Investment'}) ON CREATE SET s.id = 'investment';

// Query 107
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (s:Sector {name: 'Investment'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 108
MERGE (s:Sector {name: 'Other business'}) ON CREATE SET s.id = 'other_business';

// Query 109
MATCH (c:Company {name: 'ASSOCIATED MOTOR FINANCE COMPANY PLC'}), (s:Sector {name: 'Other business'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 109
// Generated on: 2025-09-03T16:36:33.417273
