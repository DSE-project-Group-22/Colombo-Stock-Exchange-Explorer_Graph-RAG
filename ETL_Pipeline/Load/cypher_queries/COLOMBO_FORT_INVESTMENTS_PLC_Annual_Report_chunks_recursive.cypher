// Query 1
MERGE (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) ON CREATE SET c.id = 'colombo_fort_investments_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 3
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/Managing Director', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 5
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-07-29');

// Query 6
MERGE (p:Person {name: 'K.M.P. Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 7
MATCH (p:Person {name: 'K.M.P. Karunaratne'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 9
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'H.K. Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 11
MATCH (p:Person {name: 'H.K. Kaimal'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-06-18');

// Query 12
MERGE (p:Person {name: 'S.D.R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 13
MATCH (p:Person {name: 'S.D.R. Arudpragasam'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 14
MERGE (p:Person {name: 'C.P.R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 15
MATCH (p:Person {name: 'C.P.R. Perera'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 16
MERGE (p:Person {name: 'J.T. Sumathipala'}) ON CREATE SET p.id = 'j_t_sumathipala';

// Query 17
MATCH (p:Person {name: 'J.T. Sumathipala'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-25');

// Query 18
MERGE (p:Person {name: 'R. Radha'}) ON CREATE SET p.id = 'r_radha';

// Query 19
MATCH (p:Person {name: 'R. Radha'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-09');

// Query 20
MERGE (p:Person {name: 'R.A.T.P. Perera'}) ON CREATE SET p.id = 'r_a_t_p_perera';

// Query 21
MATCH (p:Person {name: 'R.A.T.P. Perera'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director/CEO', r.as_of = date('2024-01-31');

// Query 22
MERGE (p:Person {name: 'D.A.S.D.A. Abeyesinhe'}) ON CREATE SET p.id = 'd_a_s_d_a_abeyesinhe';

// Query 23
MATCH (p:Person {name: 'D.A.S.D.A. Abeyesinhe'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 24
MERGE (p:Person {name: 'A.D. Ross'}) ON CREATE SET p.id = 'a_d_ross';

// Query 25
MATCH (p:Person {name: 'A.D. Ross'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 26
MERGE (p:Person {name: 'V. Siva Jr.'}) ON CREATE SET p.id = 'v_siva_jr';

// Query 27
MATCH (p:Person {name: 'V. Siva Jr.'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 28
MERGE (p:Person {name: 'S.S. Balasubramaniam'}) ON CREATE SET p.id = 's_s_balasubramaniam';

// Query 29
MATCH (p:Person {name: 'S.S. Balasubramaniam'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 30
MERGE (p:Person {name: 'D. Swarnasinghe'}) ON CREATE SET p.id = 'd_swarnasinghe';

// Query 31
MATCH (p:Person {name: 'D. Swarnasinghe'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 32
MERGE (p:Person {name: 'D. Hasitha S. Jayawardena'}) ON CREATE SET p.id = 'd_hasitha_s_jayawardena';

// Query 33
MATCH (p:Person {name: 'D. Hasitha S. Jayawardena'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Chairman', r.as_of = date('2025-02-03');

// Query 34
MERGE (p:Person {name: 'C.R. Jansz'}) ON CREATE SET p.id = 'c_r_jansz';

// Query 35
MATCH (p:Person {name: 'C.R. Jansz'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 36
MERGE (p:Person {name: 'M.A.N.S. Perera'}) ON CREATE SET p.id = 'm_a_n_s_perera';

// Query 37
MATCH (p:Person {name: 'M.A.N.S. Perera'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-01-01');

// Query 38
MERGE (p:Person {name: 'K. Dayaparan'}) ON CREATE SET p.id = 'k_dayaparan';

// Query 39
MATCH (p:Person {name: 'K. Dayaparan'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 40
MERGE (p:Person {name: 'A. Shakthevale'}) ON CREATE SET p.id = 'a_shakthevale';

// Query 41
MATCH (p:Person {name: 'A. Shakthevale'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-10-01');

// Query 42
MERGE (p:Person {name: 'D.S.K. Amarasekara'}) ON CREATE SET p.id = 'd_s_k_amarasekara';

// Query 43
MATCH (p:Person {name: 'D.S.K. Amarasekara'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-10-01');

// Query 44
MERGE (p:Person {name: 'M.R. Mihular'}) ON CREATE SET p.id = 'm_r_mihular';

// Query 45
MATCH (p:Person {name: 'M.R. Mihular'}), (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Non-Executive Director', r.as_of = date('2024-10-01');

// Query 46
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. million';

// Query 47
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25447.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36167.6, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8417, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4095, r.year = 2022;

// Query 52
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790, r.year = 2021;

// Query 53
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5560, r.year = 2020;

// Query 54
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs. million';

// Query 55
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 603.0, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6323.6, r.year = 2023;

// Query 57
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs. million';

// Query 58
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2743.0, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -11006.4, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -333, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -508, r.year = 2022;

// Query 63
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2244, r.year = 2021;

// Query 64
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106, r.year = 2020;

// Query 65
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. million';

// Query 66
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 43860.7, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39325.1, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45912, r.year = 2023;

// Query 70
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42509, r.year = 2022;

// Query 71
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40869, r.year = 2021;

// Query 72
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42582, r.year = 2020;

// Query 73
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. million';

// Query 74
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38370.1, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36034.1, r.year = 2023;

// Query 76
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832, r.year = 2024;

// Query 77
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13674, r.year = 2023;

// Query 78
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7549, r.year = 2022;

// Query 79
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6256, r.year = 2021;

// Query 80
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5889, r.year = 2020;

// Query 81
MERGE (m:Metric {name: 'Shareholders Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs. million';

// Query 82
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5311.3, r.year = 2024;

// Query 83
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3086.1, r.year = 2023;

// Query 84
MERGE (m:Metric {name: 'Net Cash & Cash Equivalent'}) ON CREATE SET m.id = 'net_cash_cash_equivalent', m.unit = 'Rs. million';

// Query 85
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Net Cash & Cash Equivalent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5262.2, r.year = 2024;

// Query 86
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Net Cash & Cash Equivalent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2619.0, r.year = 2023;

// Query 87
MERGE (m:Metric {name: 'Interest Bearing Borrowings'}) ON CREATE SET m.id = 'interest_bearing_borrowings', m.unit = 'Rs. million';

// Query 88
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Interest Bearing Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28667.9, r.year = 2024;

// Query 89
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Interest Bearing Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23850.9, r.year = 2023;

// Query 90
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs.';

// Query 91
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -38.1, r.year = 2024;

// Query 92
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -153.4, r.year = 2023;

// Query 93
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs.';

// Query 94
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2024;

// Query 95
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2023;

// Query 96
MERGE (m:Metric {name: 'Dividends Paid'}) ON CREATE SET m.id = 'dividends_paid', m.unit = 'Rs. million';

// Query 97
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Dividends Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 442, r.year = 2020;

// Query 98
MERGE (m:Metric {name: 'Net Assets Per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs.';

// Query 99
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 74.0, r.year = 2024;

// Query 100
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42.0, r.year = 2023;

// Query 101
MERGE (m:Metric {name: 'Gearing Ratio'}) ON CREATE SET m.id = 'gearing_ratio', m.unit = '%';

// Query 102
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58.0, r.year = 2024;

// Query 103
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 49.0, r.year = 2023;

// Query 104
MERGE (m:Metric {name: 'Return on Total Assets'}) ON CREATE SET m.id = 'return_on_total_assets', m.unit = '%';

// Query 105
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Return on Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.0, r.year = 2024;

// Query 106
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Return on Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -31.0, r.year = 2023;

// Query 107
MERGE (m:Metric {name: 'Working Capital to Assets'}) ON CREATE SET m.id = 'working_capital_to_assets', m.unit = '%';

// Query 108
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Working Capital to Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -16.0, r.year = 2024;

// Query 109
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Working Capital to Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -17.0, r.year = 2023;

// Query 110
MERGE (m:Metric {name: 'Results from Operating Activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs. million';

// Query 111
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612, r.year = 2024;

// Query 112
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93, r.year = 2023;

// Query 113
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -407, r.year = 2022;

// Query 114
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1913, r.year = 2021;

// Query 115
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28, r.year = 2020;

// Query 116
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs. million';

// Query 117
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212, r.year = 2024;

// Query 118
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -133, r.year = 2023;

// Query 119
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -459, r.year = 2022;

// Query 120
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2370, r.year = 2021;

// Query 121
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 199, r.year = 2020;

// Query 122
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 123
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.07, r.year = 2024;

// Query 124
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.92, r.year = 2023;

// Query 125
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.62, r.year = 2022;

// Query 126
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.54, r.year = 2021;

// Query 127
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.15, r.year = 2020;

// Query 128
MERGE (m:Metric {name: 'Pre-Tax Return on Capital Employed'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed', m.unit = '%';

// Query 129
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Pre-Tax Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 130
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Pre-Tax Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.86, r.year = 2023;

// Query 131
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Pre-Tax Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.65, r.year = 2022;

// Query 132
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Pre-Tax Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.43, r.year = 2021;

// Query 133
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Pre-Tax Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2020;

// Query 134
MERGE (m:Metric {name: 'Net Debt / (Cash)'}) ON CREATE SET m.id = 'net_debt_cash', m.unit = 'Rs. million';

// Query 135
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Net Debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2284, r.year = 2024;

// Query 136
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Net Debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2101, r.year = 2023;

// Query 137
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Net Debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1645, r.year = 2022;

// Query 138
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Net Debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 691, r.year = 2021;

// Query 139
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (m:Metric {name: 'Net Debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -587, r.year = 2020;

// Query 140
MERGE (s:Sector {name: 'Investment Holdings'}) ON CREATE SET s.id = 'investment_holdings';

// Query 141
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (s:Sector {name: 'Investment Holdings'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 142
MERGE (s:Sector {name: 'Portfolio and Asset Management'}) ON CREATE SET s.id = 'portfolio_and_asset_management';

// Query 143
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (s:Sector {name: 'Portfolio and Asset Management'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 144
MERGE (s:Sector {name: 'Oil Palm Plantations'}) ON CREATE SET s.id = 'oil_palm_plantations';

// Query 145
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (s:Sector {name: 'Oil Palm Plantations'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 146
MERGE (s:Sector {name: 'Oils & Fats'}) ON CREATE SET s.id = 'oils_fats';

// Query 147
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (s:Sector {name: 'Oils & Fats'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 148
MERGE (s:Sector {name: 'Beverages'}) ON CREATE SET s.id = 'beverages';

// Query 149
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (s:Sector {name: 'Beverages'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 150
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 151
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 152
MERGE (s:Sector {name: 'Leisure'}) ON CREATE SET s.id = 'leisure';

// Query 153
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (s:Sector {name: 'Leisure'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 154
MERGE (s:Sector {name: 'Management Services'}) ON CREATE SET s.id = 'management_services';

// Query 155
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (s:Sector {name: 'Management Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 156
MERGE (s:Sector {name: 'Ship Repair'}) ON CREATE SET s.id = 'ship_repair';

// Query 157
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (s:Sector {name: 'Ship Repair'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 158
MERGE (s:Sector {name: 'Shipbuilding'}) ON CREATE SET s.id = 'shipbuilding';

// Query 159
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (s:Sector {name: 'Shipbuilding'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 160
MERGE (s:Sector {name: 'Heavy Engineering'}) ON CREATE SET s.id = 'heavy_engineering';

// Query 161
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (s:Sector {name: 'Heavy Engineering'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 162
MERGE (s:Sector {name: 'Material Sales'}) ON CREATE SET s.id = 'material_sales';

// Query 163
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (s:Sector {name: 'Material Sales'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 164
MERGE (s:Sector {name: 'Crop Solutions'}) ON CREATE SET s.id = 'crop_solutions';

// Query 165
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (s:Sector {name: 'Crop Solutions'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 166
MERGE (s:Sector {name: 'Agri Produce'}) ON CREATE SET s.id = 'agri_produce';

// Query 167
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (s:Sector {name: 'Agri Produce'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 168
MERGE (s:Sector {name: 'Livestock Solutions'}) ON CREATE SET s.id = 'livestock_solutions';

// Query 169
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (s:Sector {name: 'Livestock Solutions'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 170
MERGE (s:Sector {name: 'Industrial Solutions'}) ON CREATE SET s.id = 'industrial_solutions';

// Query 171
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (s:Sector {name: 'Industrial Solutions'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 172
MERGE (s:Sector {name: 'Health & Personal Care'}) ON CREATE SET s.id = 'health_personal_care';

// Query 173
MATCH (c:Company {name: 'COLOMBO FORT INVESTMENTS PLC'}), (s:Sector {name: 'Health & Personal Care'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 173
// Generated on: 2025-09-03T15:54:40.581700
