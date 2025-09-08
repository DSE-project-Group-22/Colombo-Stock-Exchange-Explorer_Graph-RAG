// Query 1
MERGE (c:Company {name: 'Asia Capital PLC'}) ON CREATE SET c.id = 'asia_capital_plc';

// Query 2
MERGE (p:Person {name: 'Dr. J. T. Sumathipala'}) ON CREATE SET p.id = 'dr_j_t_sumathipala';

// Query 3
MATCH (p:Person {name: 'Dr. J. T. Sumathipala'}), (c:Company {name: 'Asia Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'Mr. R. Radha'}) ON CREATE SET p.id = 'mr_r_radha';

// Query 5
MATCH (p:Person {name: 'Mr. R. Radha'}), (c:Company {name: 'Asia Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-01');

// Query 6
MERGE (p:Person {name: 'Mr. R.A.T.P Perera'}) ON CREATE SET p.id = 'mr_r_a_t_p_perera';

// Query 7
MATCH (p:Person {name: 'Mr. R.A.T.P Perera'}), (c:Company {name: 'Asia Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director/CEO', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'Mr. D.A.S.D. A. Abeyesinhe'}) ON CREATE SET p.id = 'mr_d_a_s_d_a_abeyesinhe';

// Query 9
MATCH (p:Person {name: 'Mr. D.A.S.D. A. Abeyesinhe'}), (c:Company {name: 'Asia Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'Mr. A. D. Ross'}) ON CREATE SET p.id = 'mr_a_d_ross';

// Query 11
MATCH (p:Person {name: 'Mr. A. D. Ross'}), (c:Company {name: 'Asia Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 12
MERGE (p:Person {name: 'Mr. V. Siva Jr.'}) ON CREATE SET p.id = 'mr_v_siva_jr';

// Query 13
MATCH (p:Person {name: 'Mr. V. Siva Jr.'}), (c:Company {name: 'Asia Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 14
MERGE (p:Person {name: 'Mr. S. S. Balasubramaniam'}) ON CREATE SET p.id = 'mr_s_s_balasubramaniam';

// Query 15
MATCH (p:Person {name: 'Mr. S. S. Balasubramaniam'}), (c:Company {name: 'Asia Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 16
MERGE (p:Person {name: 'Mr. D. Swarnasinghe'}) ON CREATE SET p.id = 'mr_d_swarnasinghe';

// Query 17
MATCH (p:Person {name: 'Mr. D. Swarnasinghe'}), (c:Company {name: 'Asia Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 18
MERGE (p:Person {name: 'Mr. V. A. Prasanth'}) ON CREATE SET p.id = 'mr_v_a_prasanth';

// Query 19
MATCH (p:Person {name: 'Mr. V. A. Prasanth'}), (c:Company {name: 'Asia Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 20
MERGE (p:Person {name: 'Mr. R. J. A. Gunawardena'}) ON CREATE SET p.id = 'mr_r_j_a_gunawardena';

// Query 21
MATCH (p:Person {name: 'Mr. R. J. A. Gunawardena'}), (c:Company {name: 'Asia Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 22
MERGE (p:Person {name: 'Mr. S. S. R. D. De Silva Gunasekera'}) ON CREATE SET p.id = 'mr_s_s_r_d_de_silva_gunasekera';

// Query 23
MATCH (p:Person {name: 'Mr. S. S. R. D. De Silva Gunasekera'}), (c:Company {name: 'Asia Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 24
MERGE (p:Person {name: 'Mr. G. Alexander'}) ON CREATE SET p.id = 'mr_g_alexander';

// Query 25
MATCH (p:Person {name: 'Mr. G. Alexander'}), (c:Company {name: 'Asia Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 26
MERGE (p:Person {name: 'Mr. K. R. Bijimon'}) ON CREATE SET p.id = 'mr_k_r_bijimon';

// Query 27
MATCH (p:Person {name: 'Mr. K. R. Bijimon'}), (c:Company {name: 'Asia Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 28
MERGE (p:Person {name: 'Mr. K. G. K. Pillai'}) ON CREATE SET p.id = 'mr_k_g_k_pillai';

// Query 29
MATCH (p:Person {name: 'Mr. K. G. K. Pillai'}), (c:Company {name: 'Asia Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 30
MERGE (p:Person {name: 'Mr. R. A. B. Basnayake'}) ON CREATE SET p.id = 'mr_r_a_b_basnayake';

// Query 31
MATCH (p:Person {name: 'Mr. R. A. B. Basnayake'}), (c:Company {name: 'Asia Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 32
MERGE (p:Person {name: 'Mr. J. P. D. R. Jayasekara'}) ON CREATE SET p.id = 'mr_j_p_d_r_jayasekara';

// Query 33
MATCH (p:Person {name: 'Mr. J. P. D. R. Jayasekara'}), (c:Company {name: 'Asia Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 34
MERGE (p:Person {name: 'Mr. K.G.K. Pillai'}) ON CREATE SET p.id = 'mr_k_g_k_pillai';

// Query 35
MATCH (p:Person {name: 'Mr. K.G.K. Pillai'}), (c:Company {name: 'Asia Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Alternate Director', r.as_of = date('2024-02-28');

// Query 36
MERGE (p:Person {name: 'Ms. Chalani Gonaduwa'}) ON CREATE SET p.id = 'ms_chalani_gonaduwa';

// Query 37
MATCH (p:Person {name: 'Ms. Chalani Gonaduwa'}), (c:Company {name: 'Asia Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-01-01');

// Query 38
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. Mn';

// Query 39
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8417, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4095, r.year = 2022;

// Query 42
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790, r.year = 2021;

// Query 43
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5560, r.year = 2020;

// Query 44
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs. Mn';

// Query 45
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -407, r.year = 2022;

// Query 48
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1913, r.year = 2021;

// Query 49
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28, r.year = 2020;

// Query 50
MERGE (m:Metric {name: 'Profit before tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs. Mn';

// Query 51
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -133, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -459, r.year = 2022;

// Query 54
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2370, r.year = 2021;

// Query 55
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 199, r.year = 2020;

// Query 56
MERGE (m:Metric {name: 'Profit after tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs. Mn';

// Query 57
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -333, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -508, r.year = 2022;

// Query 60
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2244, r.year = 2021;

// Query 61
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106, r.year = 2020;

// Query 62
MERGE (m:Metric {name: 'Dividends paid'}) ON CREATE SET m.id = 'dividends_paid', m.unit = 'Rs. Mn';

// Query 63
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0, r.year = 2023;

// Query 65
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0, r.year = 2022;

// Query 66
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0, r.year = 2021;

// Query 67
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 442, r.year = 2020;

// Query 68
MERGE (m:Metric {name: 'Return on equity (ROE)'}) ON CREATE SET m.id = 'return_on_equity_roe', m.unit = '%';

// Query 69
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.07, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.92, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.62, r.year = 2022;

// Query 72
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.54, r.year = 2021;

// Query 73
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.15, r.year = 2020;

// Query 74
MERGE (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed_roce', m.unit = '%';

// Query 75
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 76
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.86, r.year = 2023;

// Query 77
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.65, r.year = 2022;

// Query 78
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.43, r.year = 2021;

// Query 79
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2020;

// Query 80
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. Mn';

// Query 81
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381, r.year = 2024;

// Query 82
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45912, r.year = 2023;

// Query 83
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42509, r.year = 2022;

// Query 84
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40869, r.year = 2021;

// Query 85
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42582, r.year = 2020;

// Query 86
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. Mn';

// Query 87
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832, r.year = 2024;

// Query 88
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13674, r.year = 2023;

// Query 89
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7549, r.year = 2022;

// Query 90
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6256, r.year = 2021;

// Query 91
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5889, r.year = 2020;

// Query 92
MERGE (m:Metric {name: 'Net debt / (Cash)'}) ON CREATE SET m.id = 'net_debt_cash', m.unit = 'Rs. Mn';

// Query 93
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2284, r.year = 2024;

// Query 94
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2101, r.year = 2023;

// Query 95
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1645, r.year = 2022;

// Query 96
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 691, r.year = 2021;

// Query 97
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -587, r.year = 2020;

// Query 98
MERGE (m:Metric {name: 'Loss per share - Basic/Diluted'}) ON CREATE SET m.id = 'loss_per_share_basic_diluted', m.unit = 'Rs.';

// Query 99
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Loss per share - Basic/Diluted'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.05, r.year = 2024;

// Query 100
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Loss per share - Basic/Diluted'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.63, r.year = 2023;

// Query 101
MERGE (m:Metric {name: 'Dividend per share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs.';

// Query 102
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0, r.year = 2024;

// Query 103
MATCH (c:Company {name: 'Asia Capital PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0, r.year = 2023;

// Query 104
MERGE (s:Sector {name: 'Investments'}) ON CREATE SET s.id = 'investments';

// Query 105
MATCH (c:Company {name: 'Asia Capital PLC'}), (s:Sector {name: 'Investments'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 106
MERGE (s:Sector {name: 'Leisure'}) ON CREATE SET s.id = 'leisure';

// Query 107
MATCH (c:Company {name: 'Asia Capital PLC'}), (s:Sector {name: 'Leisure'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 108
MERGE (s:Sector {name: 'Manufacturing'}) ON CREATE SET s.id = 'manufacturing';

// Query 109
MATCH (c:Company {name: 'Asia Capital PLC'}), (s:Sector {name: 'Manufacturing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 110
MERGE (s:Sector {name: 'Stock Brokering'}) ON CREATE SET s.id = 'stock_brokering';

// Query 111
MATCH (c:Company {name: 'Asia Capital PLC'}), (s:Sector {name: 'Stock Brokering'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 112
MERGE (s:Sector {name: 'Services'}) ON CREATE SET s.id = 'services';

// Query 113
MATCH (c:Company {name: 'Asia Capital PLC'}), (s:Sector {name: 'Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 113
// Generated on: 2025-09-03T16:34:36.375575
