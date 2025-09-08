// Query 1
MERGE (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) ON CREATE SET c.id = 'colombo_investment_trust_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 3
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/Managing Director', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 5
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 6
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 7
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 9
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 11
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-01-01');

// Query 12
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 13
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 14
MERGE (p:Person {name: 'C. P. R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 15
MATCH (p:Person {name: 'C. P. R. Perera'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 16
MERGE (p:Person {name: 'J. T. Sumathipala'}) ON CREATE SET p.id = 'j_t_sumathipala';

// Query 17
MATCH (p:Person {name: 'J. T. Sumathipala'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 18
MERGE (p:Person {name: 'R. Radha'}) ON CREATE SET p.id = 'r_radha';

// Query 19
MATCH (p:Person {name: 'R. Radha'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-01');

// Query 20
MERGE (p:Person {name: 'R.A.T.P Perera'}) ON CREATE SET p.id = 'r_a_t_p_perera';

// Query 21
MATCH (p:Person {name: 'R.A.T.P Perera'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director/CEO', r.as_of = date('2024-01-01');

// Query 22
MERGE (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}) ON CREATE SET p.id = 'd_a_s_d_a_abeyesinhe';

// Query 23
MATCH (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 24
MERGE (p:Person {name: 'A. D. Ross'}) ON CREATE SET p.id = 'a_d_ross';

// Query 25
MATCH (p:Person {name: 'A. D. Ross'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 26
MERGE (p:Person {name: 'V. Siva Jr.'}) ON CREATE SET p.id = 'v_siva_jr';

// Query 27
MATCH (p:Person {name: 'V. Siva Jr.'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 28
MERGE (p:Person {name: 'S. S. Balasubramaniam'}) ON CREATE SET p.id = 's_s_balasubramaniam';

// Query 29
MATCH (p:Person {name: 'S. S. Balasubramaniam'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 30
MERGE (p:Person {name: 'D. Swarnasinghe'}) ON CREATE SET p.id = 'd_swarnasinghe';

// Query 31
MATCH (p:Person {name: 'D. Swarnasinghe'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 32
MERGE (p:Person {name: 'D Hasitha S Jayawardena'}) ON CREATE SET p.id = 'd_hasitha_s_jayawardena';

// Query 33
MATCH (p:Person {name: 'D Hasitha S Jayawardena'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Chairman', r.as_of = date('2025-01-01');

// Query 34
MERGE (p:Person {name: 'C R Jansz'}) ON CREATE SET p.id = 'c_r_jansz';

// Query 35
MATCH (p:Person {name: 'C R Jansz'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 36
MERGE (p:Person {name: 'M A N S Perera'}) ON CREATE SET p.id = 'm_a_n_s_perera';

// Query 37
MATCH (p:Person {name: 'M A N S Perera'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-01-01');

// Query 38
MERGE (p:Person {name: 'K Dayaparan'}) ON CREATE SET p.id = 'k_dayaparan';

// Query 39
MATCH (p:Person {name: 'K Dayaparan'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 40
MERGE (p:Person {name: 'A Shakthevale'}) ON CREATE SET p.id = 'a_shakthevale';

// Query 41
MATCH (p:Person {name: 'A Shakthevale'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 42
MERGE (p:Person {name: 'D S K Amarasekara'}) ON CREATE SET p.id = 'd_s_k_amarasekara';

// Query 43
MATCH (p:Person {name: 'D S K Amarasekara'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 44
MERGE (p:Person {name: 'M R Mihular'}) ON CREATE SET p.id = 'm_r_mihular';

// Query 45
MATCH (p:Person {name: 'M R Mihular'}), (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 46
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. Mn';

// Query 47
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25447.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36167.6, r.year = 2023;

// Query 49
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs. Mn';

// Query 50
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 603.0, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6323.6, r.year = 2023;

// Query 52
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs. Mn';

// Query 53
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2743.0, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -11006.4, r.year = 2023;

// Query 55
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. Mn';

// Query 56
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 43860.7, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39325.1, r.year = 2023;

// Query 58
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. Mn';

// Query 59
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38370.1, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36034.1, r.year = 2023;

// Query 61
MERGE (m:Metric {name: 'Shareholders Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs. Mn';

// Query 62
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5311.3, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3086.1, r.year = 2023;

// Query 64
MERGE (m:Metric {name: 'Net Cash & Cash Equivalent'}) ON CREATE SET m.id = 'net_cash_cash_equivalent', m.unit = 'Rs. Mn';

// Query 65
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Net Cash & Cash Equivalent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5262.2, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Net Cash & Cash Equivalent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2619.0, r.year = 2023;

// Query 67
MERGE (m:Metric {name: 'Interest bearing borrowings'}) ON CREATE SET m.id = 'interest_bearing_borrowings', m.unit = 'Rs. Mn';

// Query 68
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Interest bearing borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28667.9, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Interest bearing borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23850.9, r.year = 2023;

// Query 70
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs.';

// Query 71
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -38.1, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -153.4, r.year = 2023;

// Query 73
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs.';

// Query 74
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2023;

// Query 76
MERGE (m:Metric {name: 'Net Assets Per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs.';

// Query 77
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 74.0, r.year = 2024;

// Query 78
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42.0, r.year = 2023;

// Query 79
MERGE (m:Metric {name: 'Gearing Ratio'}) ON CREATE SET m.id = 'gearing_ratio', m.unit = '%';

// Query 80
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58.0, r.year = 2024;

// Query 81
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 49.0, r.year = 2023;

// Query 82
MERGE (m:Metric {name: 'Return on Total Assets'}) ON CREATE SET m.id = 'return_on_total_assets', m.unit = '%';

// Query 83
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Return on Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.0, r.year = 2024;

// Query 84
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Return on Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -31.0, r.year = 2023;

// Query 85
MERGE (m:Metric {name: 'Working Capital to Assets'}) ON CREATE SET m.id = 'working_capital_to_assets', m.unit = '%';

// Query 86
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Working Capital to Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -16.0, r.year = 2024;

// Query 87
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Working Capital to Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -17.0, r.year = 2023;

// Query 88
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25599.0, r.year = 2025;

// Query 89
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23894.0, r.year = 2024;

// Query 90
MERGE (m:Metric {name: 'Net interest income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs Mn';

// Query 91
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Net interest income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11391.0, r.year = 2025;

// Query 92
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Net interest income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9093.0, r.year = 2024;

// Query 93
MERGE (m:Metric {name: 'Total operating income'}) ON CREATE SET m.id = 'total_operating_income', m.unit = 'Rs Mn';

// Query 94
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total operating income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14105.0, r.year = 2025;

// Query 95
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total operating income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10767.0, r.year = 2024;

// Query 96
MERGE (m:Metric {name: 'Profit before taxes'}) ON CREATE SET m.id = 'profit_before_taxes', m.unit = 'Rs Mn';

// Query 97
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit before taxes'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7922.0, r.year = 2025;

// Query 98
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit before taxes'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4599.0, r.year = 2024;

// Query 99
MERGE (m:Metric {name: 'Profit before income tax'}) ON CREATE SET m.id = 'profit_before_income_tax', m.unit = 'Rs Mn';

// Query 100
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit before income tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5751.0, r.year = 2025;

// Query 101
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit before income tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3706.0, r.year = 2024;

// Query 102
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4005.0, r.year = 2025;

// Query 103
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2516.0, r.year = 2024;

// Query 104
MERGE (m:Metric {name: 'Loans and receivables to customers'}) ON CREATE SET m.id = 'loans_and_receivables_to_customers', m.unit = 'Rs Mn';

// Query 105
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Loans and receivables to customers'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 110867.0, r.year = 2025;

// Query 106
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Loans and receivables to customers'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 85964.0, r.year = 2024;

// Query 107
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 156936.0, r.year = 2025;

// Query 108
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 128778.0, r.year = 2024;

// Query 109
MERGE (m:Metric {name: 'Total equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs Mn';

// Query 110
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23936.0, r.year = 2025;

// Query 111
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20208.0, r.year = 2024;

// Query 112
MERGE (m:Metric {name: 'Deposits from customers'}) ON CREATE SET m.id = 'deposits_from_customers', m.unit = 'Rs Mn';

// Query 113
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Deposits from customers'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 86849.0, r.year = 2025;

// Query 114
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Deposits from customers'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 73259.0, r.year = 2024;

// Query 115
MERGE (m:Metric {name: 'Operating profit margin'}) ON CREATE SET m.id = 'operating_profit_margin', m.unit = '%';

// Query 116
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Operating profit margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30.95, r.year = 2025;

// Query 117
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Operating profit margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.25, r.year = 2024;

// Query 118
MERGE (m:Metric {name: 'Net interest margin'}) ON CREATE SET m.id = 'net_interest_margin', m.unit = '%';

// Query 119
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Net interest margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.97, r.year = 2025;

// Query 120
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Net interest margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.77, r.year = 2024;

// Query 121
MERGE (m:Metric {name: 'Cost to income ratio'}) ON CREATE SET m.id = 'cost_to_income_ratio', m.unit = '%';

// Query 122
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Cost to income ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48.40, r.year = 2025;

// Query 123
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Cost to income ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50.40, r.year = 2024;

// Query 124
MERGE (m:Metric {name: 'Return on average assets - After tax'}) ON CREATE SET m.id = 'return_on_average_assets_after_tax', m.unit = '%';

// Query 125
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Return on average assets - After tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.80, r.year = 2025;

// Query 126
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Return on average assets - After tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.15, r.year = 2024;

// Query 127
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 56.53, r.year = 2025;

// Query 128
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 35.95, r.year = 2024;

// Query 129
MERGE (m:Metric {name: 'Earnings yield'}) ON CREATE SET m.id = 'earnings_yield', m.unit = '%';

// Query 130
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Earnings yield'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24.06, r.year = 2025;

// Query 131
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Earnings yield'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.12, r.year = 2024;

// Query 132
MERGE (m:Metric {name: 'Return on Equity - After Tax'}) ON CREATE SET m.id = 'return_on_equity_after_tax', m.unit = '%';

// Query 133
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Return on Equity - After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18.15, r.year = 2025;

// Query 134
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Return on Equity - After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.10, r.year = 2024;

// Query 135
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.00, r.year = 2025;

// Query 136
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.00, r.year = 2024;

// Query 137
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772.0, r.year = 2024;

// Query 138
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8417.0, r.year = 2023;

// Query 139
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4095.0, r.year = 2022;

// Query 140
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790.0, r.year = 2021;

// Query 141
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5560.0, r.year = 2020;

// Query 142
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs. Mn';

// Query 143
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612.0, r.year = 2024;

// Query 144
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93.0, r.year = 2023;

// Query 145
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -407.0, r.year = 2022;

// Query 146
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1913.0, r.year = 2021;

// Query 147
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28.0, r.year = 2020;

// Query 148
MERGE (m:Metric {name: 'Profit before tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs. Mn';

// Query 149
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212.0, r.year = 2024;

// Query 150
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -133.0, r.year = 2023;

// Query 151
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -459.0, r.year = 2022;

// Query 152
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2370.0, r.year = 2021;

// Query 153
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 199.0, r.year = 2020;

// Query 154
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78.0, r.year = 2024;

// Query 155
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -333.0, r.year = 2023;

// Query 156
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -508.0, r.year = 2022;

// Query 157
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2244.0, r.year = 2021;

// Query 158
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106.0, r.year = 2020;

// Query 159
MERGE (m:Metric {name: 'Dividends paid'}) ON CREATE SET m.id = 'dividends_paid', m.unit = 'Rs. Mn';

// Query 160
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 442.0, r.year = 2020;

// Query 161
MERGE (m:Metric {name: 'Return on equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 162
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Return on equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.07, r.year = 2024;

// Query 163
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Return on equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.92, r.year = 2023;

// Query 164
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Return on equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.62, r.year = 2022;

// Query 165
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Return on equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.54, r.year = 2021;

// Query 166
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Return on equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.15, r.year = 2020;

// Query 167
MERGE (m:Metric {name: 'Pre-Tax return on capital employed'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed', m.unit = '%';

// Query 168
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 169
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.86, r.year = 2023;

// Query 170
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.65, r.year = 2022;

// Query 171
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.43, r.year = 2021;

// Query 172
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2020;

// Query 173
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381.0, r.year = 2024;

// Query 174
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45912.0, r.year = 2023;

// Query 175
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42509.0, r.year = 2022;

// Query 176
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40869.0, r.year = 2021;

// Query 177
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42582.0, r.year = 2020;

// Query 178
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832.0, r.year = 2024;

// Query 179
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13674.0, r.year = 2023;

// Query 180
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7549.0, r.year = 2022;

// Query 181
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6256.0, r.year = 2021;

// Query 182
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5889.0, r.year = 2020;

// Query 183
MERGE (m:Metric {name: 'Net debt / (Cash)'}) ON CREATE SET m.id = 'net_debt_cash', m.unit = 'Rs. Mn';

// Query 184
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2284.0, r.year = 2024;

// Query 185
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2101.0, r.year = 2023;

// Query 186
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1645.0, r.year = 2022;

// Query 187
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 691.0, r.year = 2021;

// Query 188
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -587.0, r.year = 2020;

// Query 189
MERGE (s:Sector {name: 'Investment Holdings'}) ON CREATE SET s.id = 'investment_holdings';

// Query 190
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (s:Sector {name: 'Investment Holdings'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 191
MERGE (s:Sector {name: 'Portfolio and Asset Management'}) ON CREATE SET s.id = 'portfolio_and_asset_management';

// Query 192
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (s:Sector {name: 'Portfolio and Asset Management'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 193
MERGE (s:Sector {name: 'Oil palm plantations'}) ON CREATE SET s.id = 'oil_palm_plantations';

// Query 194
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (s:Sector {name: 'Oil palm plantations'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 195
MERGE (s:Sector {name: 'Oils & fats'}) ON CREATE SET s.id = 'oils_fats';

// Query 196
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (s:Sector {name: 'Oils & fats'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 197
MERGE (s:Sector {name: 'Beverages'}) ON CREATE SET s.id = 'beverages';

// Query 198
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (s:Sector {name: 'Beverages'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 199
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 200
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 201
MERGE (s:Sector {name: 'Leisure'}) ON CREATE SET s.id = 'leisure';

// Query 202
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (s:Sector {name: 'Leisure'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 203
MERGE (s:Sector {name: 'Management Services'}) ON CREATE SET s.id = 'management_services';

// Query 204
MATCH (c:Company {name: 'COLOMBO INVESTMENT TRUST PLC'}), (s:Sector {name: 'Management Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 204
// Generated on: 2025-09-03T16:25:36.730562
