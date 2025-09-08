// Query 1
MERGE (c:Company {name: 'CABLE SOLUTIONS PLC'}) ON CREATE SET c.id = 'cable_solutions_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 3
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'CABLE SOLUTIONS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/Managing Director', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 5
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'CABLE SOLUTIONS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 6
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 7
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'CABLE SOLUTIONS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 9
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'CABLE SOLUTIONS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 11
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'CABLE SOLUTIONS PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-01-01');

// Query 12
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. Mn';

// Query 13
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772, r.year = 2024;

// Query 14
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8417, r.year = 2023;

// Query 15
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4095, r.year = 2022;

// Query 16
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790, r.year = 2021;

// Query 17
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5560, r.year = 2020;

// Query 18
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs. Mn';

// Query 19
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612, r.year = 2024;

// Query 20
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93, r.year = 2023;

// Query 21
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -407, r.year = 2022;

// Query 22
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1913, r.year = 2021;

// Query 23
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28, r.year = 2020;

// Query 24
MERGE (m:Metric {name: 'Profit before tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs. Mn';

// Query 25
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212, r.year = 2024;

// Query 26
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -133, r.year = 2023;

// Query 27
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -459, r.year = 2022;

// Query 28
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2370, r.year = 2021;

// Query 29
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 199, r.year = 2020;

// Query 30
MERGE (m:Metric {name: 'Profit after tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs. Mn';

// Query 31
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -333, r.year = 2023;

// Query 33
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -508, r.year = 2022;

// Query 34
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2244, r.year = 2021;

// Query 35
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106, r.year = 2020;

// Query 36
MERGE (m:Metric {name: 'Dividends paid'}) ON CREATE SET m.id = 'dividends_paid', m.unit = 'Rs. Mn';

// Query 37
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 442, r.year = 2020;

// Query 38
MERGE (m:Metric {name: 'Return on equity (ROE)'}) ON CREATE SET m.id = 'return_on_equity_roe', m.unit = '%';

// Query 39
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.07, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.92, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.62, r.year = 2022;

// Query 42
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.54, r.year = 2021;

// Query 43
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.15, r.year = 2020;

// Query 44
MERGE (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed_roce', m.unit = '%';

// Query 45
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.86, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.65, r.year = 2022;

// Query 48
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.43, r.year = 2021;

// Query 49
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2020;

// Query 50
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. Mn';

// Query 51
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45912, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42509, r.year = 2022;

// Query 54
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40869, r.year = 2021;

// Query 55
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42582, r.year = 2020;

// Query 56
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. Mn';

// Query 57
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13674, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7549, r.year = 2022;

// Query 60
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6256, r.year = 2021;

// Query 61
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5889, r.year = 2020;

// Query 62
MERGE (m:Metric {name: 'Net debt / (Cash)'}) ON CREATE SET m.id = 'net_debt_cash', m.unit = 'Rs. Mn';

// Query 63
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2284, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2101, r.year = 2023;

// Query 65
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1645, r.year = 2022;

// Query 66
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 691, r.year = 2021;

// Query 67
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -587, r.year = 2020;

// Query 68
MERGE (s:Sector {name: 'Cables Manufacturing'}) ON CREATE SET s.id = 'cables_manufacturing';

// Query 69
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (s:Sector {name: 'Cables Manufacturing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 70
MERGE (s:Sector {name: 'Cables Exporting'}) ON CREATE SET s.id = 'cables_exporting';

// Query 71
MATCH (c:Company {name: 'CABLE SOLUTIONS PLC'}), (s:Sector {name: 'Cables Exporting'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 71
// Generated on: 2025-09-03T14:16:50.809131
