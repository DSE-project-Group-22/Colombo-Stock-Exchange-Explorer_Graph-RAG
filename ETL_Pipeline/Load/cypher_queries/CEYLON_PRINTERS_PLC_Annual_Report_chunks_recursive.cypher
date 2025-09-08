// Query 1
MERGE (c:Company {name: 'CEYLON PRINTERS PLC'}) ON CREATE SET c.id = 'ceylon_printers_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'ak_pathirage';

// Query 3
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 4
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-01');

// Query 5
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 6
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 7
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'kmp_karunaratne';

// Query 8
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 9
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'glh_premaratne';

// Query 10
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-01');

// Query 11
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 12
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-01-01');

// Query 13
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 14
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 15
MERGE (p:Person {name: 'C. P. R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 16
MATCH (p:Person {name: 'C. P. R. Perera'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 17
MERGE (p:Person {name: 'J. T. Sumathipala'}) ON CREATE SET p.id = 'jt_sumathipala';

// Query 18
MATCH (p:Person {name: 'J. T. Sumathipala'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 19
MERGE (p:Person {name: 'R. Radha'}) ON CREATE SET p.id = 'r_radha';

// Query 20
MATCH (p:Person {name: 'R. Radha'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-01');

// Query 21
MERGE (p:Person {name: 'R.A.T.P Perera'}) ON CREATE SET p.id = 'ratp_perera';

// Query 22
MATCH (p:Person {name: 'R.A.T.P Perera'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-01-01');

// Query 23
MATCH (p:Person {name: 'R.A.T.P Perera'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'CEO', r.as_of = date('2024-01-01');

// Query 24
MERGE (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}) ON CREATE SET p.id = 'dasd_a_abeyesinhe';

// Query 25
MATCH (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 26
MERGE (p:Person {name: 'A. D. Ross'}) ON CREATE SET p.id = 'ad_ross';

// Query 27
MATCH (p:Person {name: 'A. D. Ross'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 28
MERGE (p:Person {name: 'V. Siva'}) ON CREATE SET p.id = 'v_siva';

// Query 29
MATCH (p:Person {name: 'V. Siva'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 30
MERGE (p:Person {name: 'S. S. Balasubramaniam'}) ON CREATE SET p.id = 'ss_balasubramaniam';

// Query 31
MATCH (p:Person {name: 'S. S. Balasubramaniam'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 32
MERGE (p:Person {name: 'D. Swarnasinghe'}) ON CREATE SET p.id = 'd_swarnasinghe';

// Query 33
MATCH (p:Person {name: 'D. Swarnasinghe'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 34
MERGE (p:Person {name: 'D Hasitha S Jayawardena'}) ON CREATE SET p.id = 'd_hasitha_s_jayawardena';

// Query 35
MATCH (p:Person {name: 'D Hasitha S Jayawardena'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Chairman', r.as_of = date('2024-01-01');

// Query 36
MERGE (p:Person {name: 'C R Jansz'}) ON CREATE SET p.id = 'c_r_jansz';

// Query 37
MATCH (p:Person {name: 'C R Jansz'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 38
MERGE (p:Person {name: 'M A N S Perera'}) ON CREATE SET p.id = 'mans_perera';

// Query 39
MATCH (p:Person {name: 'M A N S Perera'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-01-01');

// Query 40
MERGE (p:Person {name: 'K Dayaparan'}) ON CREATE SET p.id = 'k_dayaparan';

// Query 41
MATCH (p:Person {name: 'K Dayaparan'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 42
MERGE (p:Person {name: 'A Shakthevale'}) ON CREATE SET p.id = 'a_shakthevale';

// Query 43
MATCH (p:Person {name: 'A Shakthevale'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 44
MERGE (p:Person {name: 'D S K Amarasekara'}) ON CREATE SET p.id = 'dsk_amarasekara';

// Query 45
MATCH (p:Person {name: 'D S K Amarasekara'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 46
MERGE (p:Person {name: 'M R Mihular'}) ON CREATE SET p.id = 'mr_mihular';

// Query 47
MATCH (p:Person {name: 'M R Mihular'}), (c:Company {name: 'CEYLON PRINTERS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 48
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. Mn';

// Query 49
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8417.0, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4095.0, r.year = 2022;

// Query 52
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790.0, r.year = 2021;

// Query 53
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5560.0, r.year = 2020;

// Query 54
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs. Mn';

// Query 55
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612.0, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93.0, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -407.0, r.year = 2022;

// Query 58
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1913.0, r.year = 2021;

// Query 59
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28.0, r.year = 2020;

// Query 60
MERGE (m:Metric {name: 'Profit before tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs. Mn';

// Query 61
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212.0, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -133.0, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -459.0, r.year = 2022;

// Query 64
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2370.0, r.year = 2021;

// Query 65
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 199.0, r.year = 2020;

// Query 66
MERGE (m:Metric {name: 'Profit after tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs. Mn';

// Query 67
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78.0, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -333.0, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -508.0, r.year = 2022;

// Query 70
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2244.0, r.year = 2021;

// Query 71
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106.0, r.year = 2020;

// Query 72
MERGE (m:Metric {name: 'Dividends paid'}) ON CREATE SET m.id = 'dividends_paid', m.unit = 'Rs. Mn';

// Query 73
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2023;

// Query 75
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2022;

// Query 76
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2021;

// Query 77
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 442.0, r.year = 2020;

// Query 78
MERGE (m:Metric {name: 'Return on equity (ROE)'}) ON CREATE SET m.id = 'return_on_equity_roe', m.unit = '%';

// Query 79
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.07, r.year = 2024;

// Query 80
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.92, r.year = 2023;

// Query 81
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.62, r.year = 2022;

// Query 82
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.54, r.year = 2021;

// Query 83
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.15, r.year = 2020;

// Query 84
MERGE (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed_roce', m.unit = '%';

// Query 85
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 86
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.86, r.year = 2023;

// Query 87
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.65, r.year = 2022;

// Query 88
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.43, r.year = 2021;

// Query 89
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2020;

// Query 90
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. Mn';

// Query 91
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381.0, r.year = 2024;

// Query 92
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45912.0, r.year = 2023;

// Query 93
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42509.0, r.year = 2022;

// Query 94
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40869.0, r.year = 2021;

// Query 95
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42582.0, r.year = 2020;

// Query 96
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. Mn';

// Query 97
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832.0, r.year = 2024;

// Query 98
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13674.0, r.year = 2023;

// Query 99
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7549.0, r.year = 2022;

// Query 100
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6256.0, r.year = 2021;

// Query 101
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5889.0, r.year = 2020;

// Query 102
MERGE (m:Metric {name: 'Net debt / (Cash)'}) ON CREATE SET m.id = 'net_debt_cash', m.unit = 'Rs. Mn';

// Query 103
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2284.0, r.year = 2024;

// Query 104
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2101.0, r.year = 2023;

// Query 105
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1645.0, r.year = 2022;

// Query 106
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 691.0, r.year = 2021;

// Query 107
MATCH (c:Company {name: 'CEYLON PRINTERS PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -587.0, r.year = 2020;

// Total queries: 107
// Generated on: 2025-09-03T15:02:25.500203
