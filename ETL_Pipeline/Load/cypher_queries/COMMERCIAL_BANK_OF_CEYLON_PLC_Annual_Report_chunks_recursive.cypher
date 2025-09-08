// Query 1
MERGE (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) ON CREATE SET c.id = 'commercial_bank_of_ceylon_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a.k._pathirage';

// Query 3
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/ Managing Director', r.as_of = date('2025-01-01');

// Query 4
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's._selliah';

// Query 5
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-07-29');

// Query 6
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k.m.p_karunaratne';

// Query 7
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2025-01-01');

// Query 8
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g.l.h._premaratne';

// Query 9
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2025-01-01');

// Query 10
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 11
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-06-18');

// Query 12
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's._d._r._arudpragasam';

// Query 13
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-01-01');

// Query 14
MERGE (p:Person {name: 'C. P. R. Perera'}) ON CREATE SET p.id = 'c._p._r._perera';

// Query 15
MATCH (p:Person {name: 'C. P. R. Perera'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2025-01-01');

// Query 16
MERGE (p:Person {name: 'J. T. Sumathipala'}) ON CREATE SET p.id = 'j._t._sumathipala';

// Query 17
MATCH (p:Person {name: 'J. T. Sumathipala'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-25');

// Query 18
MERGE (p:Person {name: 'R. Radha'}) ON CREATE SET p.id = 'r._radha';

// Query 19
MATCH (p:Person {name: 'R. Radha'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-09');

// Query 20
MERGE (p:Person {name: 'R.A.T.P Perera'}) ON CREATE SET p.id = 'r.a.t.p_perera';

// Query 21
MATCH (p:Person {name: 'R.A.T.P Perera'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director/CEO', r.as_of = date('2024-01-31');

// Query 22
MERGE (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}) ON CREATE SET p.id = 'd.a.s.d._a._abeyesinhe';

// Query 23
MATCH (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 24
MERGE (p:Person {name: 'A. D. Ross'}) ON CREATE SET p.id = 'a._d._ross';

// Query 25
MATCH (p:Person {name: 'A. D. Ross'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 26
MERGE (p:Person {name: 'V. Siva Jr.'}) ON CREATE SET p.id = 'v._siva_jr.';

// Query 27
MATCH (p:Person {name: 'V. Siva Jr.'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 28
MERGE (p:Person {name: 'S. S. Balasubramaniam'}) ON CREATE SET p.id = 's._s._balasubramaniam';

// Query 29
MATCH (p:Person {name: 'S. S. Balasubramaniam'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-01-01');

// Query 30
MERGE (p:Person {name: 'D. Swarnasinghe'}) ON CREATE SET p.id = 'd._swarnasinghe';

// Query 31
MATCH (p:Person {name: 'D. Swarnasinghe'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 32
MERGE (p:Person {name: 'D Hasitha S Jayawardena'}) ON CREATE SET p.id = 'd_hasitha_s_jayawardena';

// Query 33
MATCH (p:Person {name: 'D Hasitha S Jayawardena'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Chairman', r.as_of = date('2025-01-01');

// Query 34
MERGE (p:Person {name: 'C R Jansz'}) ON CREATE SET p.id = 'c_r_jansz';

// Query 35
MATCH (p:Person {name: 'C R Jansz'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 36
MERGE (p:Person {name: 'M A N S Perera'}) ON CREATE SET p.id = 'm_a_n_s_perera';

// Query 37
MATCH (p:Person {name: 'M A N S Perera'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-01-01');

// Query 38
MERGE (p:Person {name: 'K Dayaparan'}) ON CREATE SET p.id = 'k_dayaparan';

// Query 39
MATCH (p:Person {name: 'K Dayaparan'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 40
MERGE (p:Person {name: 'A Shakthevale'}) ON CREATE SET p.id = 'a_shakthevale';

// Query 41
MATCH (p:Person {name: 'A Shakthevale'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-10-01');

// Query 42
MERGE (p:Person {name: 'D S K Amarasekara'}) ON CREATE SET p.id = 'd_s_k_amarasekara';

// Query 43
MATCH (p:Person {name: 'D S K Amarasekara'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-10-01');

// Query 44
MERGE (p:Person {name: 'M R Mihular'}) ON CREATE SET p.id = 'm_r_mihular';

// Query 45
MATCH (p:Person {name: 'M R Mihular'}), (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Non-Executive Director', r.as_of = date('2024-10-01');

// Query 46
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. Mn';

// Query 47
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25447.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36167.6, r.year = 2023;

// Query 49
MERGE (m:Metric {name: 'Gross Profit /(Loss)'}) ON CREATE SET m.id = 'gross_profit_/(loss)', m.unit = 'Rs. Mn';

// Query 50
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Gross Profit /(Loss)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 603.0, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Gross Profit /(Loss)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6323.6, r.year = 2023;

// Query 52
MERGE (m:Metric {name: 'Profit/(Loss) after Tax'}) ON CREATE SET m.id = 'profit/(loss)_after_tax', m.unit = 'Rs. Mn';

// Query 53
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Profit/(Loss) after Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2743.0, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Profit/(Loss) after Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -11006.4, r.year = 2023;

// Query 55
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. Mn';

// Query 56
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 43860.7, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39325.1, r.year = 2023;

// Query 58
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. Mn';

// Query 59
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38370.1, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36034.1, r.year = 2023;

// Query 61
MERGE (m:Metric {name: 'Shareholders’ Funds'}) ON CREATE SET m.id = 'shareholders’_funds', m.unit = 'Rs. Mn';

// Query 62
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Shareholders’ Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5311.3, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Shareholders’ Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3086.1, r.year = 2023;

// Query 64
MERGE (m:Metric {name: 'Net Cash & Cash Equivalent'}) ON CREATE SET m.id = 'net_cash_&_cash_equivalent', m.unit = 'Rs. Mn';

// Query 65
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Net Cash & Cash Equivalent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5262.2, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Net Cash & Cash Equivalent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2619.0, r.year = 2023;

// Query 67
MERGE (m:Metric {name: 'Interest bearing borrowings'}) ON CREATE SET m.id = 'interest_bearing_borrowings', m.unit = 'Rs. Mn';

// Query 68
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Interest bearing borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28667.9, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Interest bearing borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23850.9, r.year = 2023;

// Query 70
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs.';

// Query 71
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -38.1, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -153.4, r.year = 2023;

// Query 73
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs.';

// Query 74
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2023;

// Query 76
MERGE (m:Metric {name: 'Net Assets Per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs.';

// Query 77
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 74.0, r.year = 2024;

// Query 78
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42.0, r.year = 2023;

// Query 79
MERGE (m:Metric {name: 'Gearing Ratio'}) ON CREATE SET m.id = 'gearing_ratio', m.unit = '%';

// Query 80
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58.0, r.year = 2024;

// Query 81
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 49.0, r.year = 2023;

// Query 82
MERGE (m:Metric {name: 'Return on Total Assets'}) ON CREATE SET m.id = 'return_on_total_assets', m.unit = '%';

// Query 83
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Return on Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.0, r.year = 2024;

// Query 84
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Return on Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -31.0, r.year = 2023;

// Query 85
MERGE (m:Metric {name: 'Working Capital to Assets'}) ON CREATE SET m.id = 'working_capital_to_assets', m.unit = '%';

// Query 86
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Working Capital to Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -16.0, r.year = 2024;

// Query 87
MATCH (c:Company {name: 'COMMERCIAL BANK OF CEYLON PLC'}), (m:Metric {name: 'Working Capital to Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -17.0, r.year = 2023;

// Total queries: 87
// Generated on: 2025-09-03T13:08:11.428769
