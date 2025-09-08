// Query 1
MERGE (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}) ON CREATE SET c.id = 'asia_siyaka_commodities_limited';

// Query 2
MERGE (p:Person {name: 'Dr. J. T. Sumathipala'}) ON CREATE SET p.id = 'dr_j_t_sumathipala';

// Query 3
MATCH (p:Person {name: 'Dr. J. T. Sumathipala'}), (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'Mr. R. Radha'}) ON CREATE SET p.id = 'mr_r_radha';

// Query 5
MATCH (p:Person {name: 'Mr. R. Radha'}), (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-01');

// Query 6
MERGE (p:Person {name: 'Mr. R.A.T.P Perera'}) ON CREATE SET p.id = 'mr_r_a_t_p_perera';

// Query 7
MATCH (p:Person {name: 'Mr. R.A.T.P Perera'}), (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director/CEO', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'Mr. D.A.S.D. A. Abeyesinhe'}) ON CREATE SET p.id = 'mr_d_a_s_d_a_abeyesinhe';

// Query 9
MATCH (p:Person {name: 'Mr. D.A.S.D. A. Abeyesinhe'}), (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'Mr. A. D. Ross'}) ON CREATE SET p.id = 'mr_a_d_ross';

// Query 11
MATCH (p:Person {name: 'Mr. A. D. Ross'}), (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 12
MERGE (p:Person {name: 'Mr. V. Siva Jr.'}) ON CREATE SET p.id = 'mr_v_siva_jr';

// Query 13
MATCH (p:Person {name: 'Mr. V. Siva Jr.'}), (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 14
MERGE (p:Person {name: 'Mr. S. S. Balasubramaniam'}) ON CREATE SET p.id = 'mr_s_s_balasubramaniam';

// Query 15
MATCH (p:Person {name: 'Mr. S. S. Balasubramaniam'}), (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 16
MERGE (p:Person {name: 'Mr. D. Swarnasinghe'}) ON CREATE SET p.id = 'mr_d_swarnasinghe';

// Query 17
MATCH (p:Person {name: 'Mr. D. Swarnasinghe'}), (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 18
MERGE (p:Person {name: 'Mr. W. D. N. H. Perera'}) ON CREATE SET p.id = 'mr_w_d_n_h_perera';

// Query 19
MATCH (p:Person {name: 'Mr. W. D. N. H. Perera'}), (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Chairman', r.as_of = date('2024-01-01');

// Query 20
MERGE (p:Person {name: 'Mr. A. R. Cooke'}) ON CREATE SET p.id = 'mr_a_r_cooke';

// Query 21
MATCH (p:Person {name: 'Mr. A. R. Cooke'}), (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'President/Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 22
MERGE (p:Person {name: 'Mr. W. M. R. Iddawela'}) ON CREATE SET p.id = 'mr_w_m_r_iddawela';

// Query 23
MATCH (p:Person {name: 'Mr. W. M. R. Iddawela'}), (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Vice President/Executive Director', r.as_of = date('2024-01-01');

// Query 24
MERGE (p:Person {name: 'Mr. D. J. Wedande'}) ON CREATE SET p.id = 'mr_d_j_wedande';

// Query 25
MATCH (p:Person {name: 'Mr. D. J. Wedande'}), (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'SVP/Executive Director', r.as_of = date('2024-01-01');

// Query 26
MERGE (p:Person {name: 'Mr. U. A. Sirisekera'}) ON CREATE SET p.id = 'mr_u_a_sirisekera';

// Query 27
MATCH (p:Person {name: 'Mr. U. A. Sirisekera'}), (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'SVP/Executive Director', r.as_of = date('2024-01-01');

// Query 28
MERGE (p:Person {name: 'Mr. T. G. Thoradeniya'}) ON CREATE SET p.id = 'mr_t_g_thoradeniya';

// Query 29
MATCH (p:Person {name: 'Mr. T. G. Thoradeniya'}), (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 30
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. Mn';

// Query 31
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8417, r.year = 2023;

// Query 33
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4095, r.year = 2022;

// Query 34
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790, r.year = 2021;

// Query 35
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5560, r.year = 2020;

// Query 36
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs. Mn';

// Query 37
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -407, r.year = 2022;

// Query 40
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1913, r.year = 2021;

// Query 41
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28, r.year = 2020;

// Query 42
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs. Mn';

// Query 43
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -133, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -459, r.year = 2022;

// Query 46
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2370, r.year = 2021;

// Query 47
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 199, r.year = 2020;

// Query 48
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs. Mn';

// Query 49
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -333, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -508, r.year = 2022;

// Query 52
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2244, r.year = 2021;

// Query 53
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106, r.year = 2020;

// Query 54
MERGE (m:Metric {name: 'Dividends paid'}) ON CREATE SET m.id = 'dividends_paid', m.unit = 'Rs. Mn';

// Query 55
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 442, r.year = 2020;

// Query 56
MERGE (m:Metric {name: 'Return on equity (ROE)'}) ON CREATE SET m.id = 'return_on_equity_roe', m.unit = '%';

// Query 57
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.07, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.92, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.62, r.year = 2022;

// Query 60
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.54, r.year = 2021;

// Query 61
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.15, r.year = 2020;

// Query 62
MERGE (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed_roce', m.unit = '%';

// Query 63
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.86, r.year = 2023;

// Query 65
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.65, r.year = 2022;

// Query 66
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.43, r.year = 2021;

// Query 67
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2020;

// Query 68
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. Mn';

// Query 69
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45912, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42509, r.year = 2022;

// Query 72
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40869, r.year = 2021;

// Query 73
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42582, r.year = 2020;

// Query 74
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. Mn';

// Query 75
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832, r.year = 2024;

// Query 76
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13674, r.year = 2023;

// Query 77
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7549, r.year = 2022;

// Query 78
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6256, r.year = 2021;

// Query 79
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5889, r.year = 2020;

// Query 80
MERGE (m:Metric {name: 'Net debt / (Cash)'}) ON CREATE SET m.id = 'net_debt_cash', m.unit = 'Rs. Mn';

// Query 81
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2284, r.year = 2024;

// Query 82
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2101, r.year = 2023;

// Query 83
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1645, r.year = 2022;

// Query 84
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 691, r.year = 2021;

// Query 85
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -587, r.year = 2020;

// Query 86
MERGE (s:Sector {name: 'Lease & Hire-purchase'}) ON CREATE SET s.id = 'lease_and_hire_purchase';

// Query 87
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (s:Sector {name: 'Lease & Hire-purchase'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 88
MERGE (s:Sector {name: 'Loans'}) ON CREATE SET s.id = 'loans';

// Query 89
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (s:Sector {name: 'Loans'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 90
MERGE (s:Sector {name: 'Gold - Loans'}) ON CREATE SET s.id = 'gold_loans';

// Query 91
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (s:Sector {name: 'Gold - Loans'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 92
MERGE (s:Sector {name: 'Investment'}) ON CREATE SET s.id = 'investment';

// Query 93
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (s:Sector {name: 'Investment'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 94
MERGE (s:Sector {name: 'Other business'}) ON CREATE SET s.id = 'other_business';

// Query 95
MATCH (c:Company {name: 'ASIA SIYAKA COMMODITIES LIMITED'}), (s:Sector {name: 'Other business'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 95
// Generated on: 2025-09-03T13:17:03.291860
