// Query 1
MERGE (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}) ON CREATE SET c.id = 'asiri_surgical_hospital_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 3
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/ Managing Director', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 5
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 6
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 7
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 9
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 11
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-06-18');

// Query 12
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. million';

// Query 13
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772, r.year = 2024;

// Query 14
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8417, r.year = 2023;

// Query 15
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4095, r.year = 2022;

// Query 16
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790, r.year = 2021;

// Query 17
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5560, r.year = 2020;

// Query 18
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs. million';

// Query 19
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612, r.year = 2024;

// Query 20
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93, r.year = 2023;

// Query 21
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -407, r.year = 2022;

// Query 22
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1913, r.year = 2021;

// Query 23
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28, r.year = 2020;

// Query 24
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs. million';

// Query 25
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212, r.year = 2024;

// Query 26
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -133, r.year = 2023;

// Query 27
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -459, r.year = 2022;

// Query 28
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2370, r.year = 2021;

// Query 29
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 199, r.year = 2020;

// Query 30
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs. million';

// Query 31
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -333, r.year = 2023;

// Query 33
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -508, r.year = 2022;

// Query 34
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2244, r.year = 2021;

// Query 35
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106, r.year = 2020;

// Query 36
MERGE (m:Metric {name: 'Dividends paid'}) ON CREATE SET m.id = 'dividends_paid', m.unit = 'Rs. million';

// Query 37
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 442, r.year = 2020;

// Query 38
MERGE (m:Metric {name: 'Return on equity (ROE)'}) ON CREATE SET m.id = 'return_on_equity_roe', m.unit = '%';

// Query 39
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.07, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.92, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.62, r.year = 2022;

// Query 42
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.54, r.year = 2021;

// Query 43
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.15, r.year = 2020;

// Query 44
MERGE (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed_roce', m.unit = '%';

// Query 45
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.86, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.65, r.year = 2022;

// Query 48
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.43, r.year = 2021;

// Query 49
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2020;

// Query 50
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. million';

// Query 51
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45912, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42509, r.year = 2022;

// Query 54
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40869, r.year = 2021;

// Query 55
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42582, r.year = 2020;

// Query 56
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. million';

// Query 57
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13674, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7549, r.year = 2022;

// Query 60
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6256, r.year = 2021;

// Query 61
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5889, r.year = 2020;

// Query 62
MERGE (m:Metric {name: 'Net debt / (Cash)'}) ON CREATE SET m.id = 'net_debt_cash', m.unit = 'Rs. million';

// Query 63
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2284, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2101, r.year = 2023;

// Query 65
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1645, r.year = 2022;

// Query 66
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 691, r.year = 2021;

// Query 67
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -587, r.year = 2020;

// Query 68
MERGE (m:Metric {name: 'Finance cost'}) ON CREATE SET m.id = 'finance_cost', m.unit = 'Rs.';

// Query 69
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Finance cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -336016, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Finance cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -393477, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Finance cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -152578, r.year = 2022;

// Query 72
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Finance cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -191090, r.year = 2021;

// Query 73
MERGE (m:Metric {name: 'Finance income'}) ON CREATE SET m.id = 'finance_income', m.unit = 'Rs.';

// Query 74
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Finance income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25800, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Finance income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13609, r.year = 2023;

// Query 76
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Finance income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7274, r.year = 2022;

// Query 77
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Finance income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9807, r.year = 2021;

// Query 78
MERGE (m:Metric {name: 'Net Finance cost'}) ON CREATE SET m.id = 'net_finance_cost', m.unit = 'Rs.';

// Query 79
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Net Finance cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -310216, r.year = 2024;

// Query 80
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Net Finance cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -379868, r.year = 2023;

// Query 81
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Net Finance cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -145304, r.year = 2022;

// Query 82
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Net Finance cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -181283, r.year = 2021;

// Query 83
MERGE (m:Metric {name: 'Change in fair value of investment property'}) ON CREATE SET m.id = 'change_in_fair_value_of_investment_property', m.unit = 'Rs.';

// Query 84
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Change in fair value of investment property'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -89904, r.year = 2024;

// Query 85
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Change in fair value of investment property'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 154393, r.year = 2023;

// Query 86
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Change in fair value of investment property'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -184959, r.year = 2022;

// Query 87
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Change in fair value of investment property'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -59909, r.year = 2021;

// Query 88
MERGE (m:Metric {name: 'Tax (expense)/reversal'}) ON CREATE SET m.id = 'tax_expense_reversal', m.unit = 'Rs.';

// Query 89
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Tax (expense)/reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -134679, r.year = 2024;

// Query 90
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Tax (expense)/reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -200254, r.year = 2023;

// Query 91
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Tax (expense)/reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -73821, r.year = 2022;

// Query 92
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Tax (expense)/reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5139, r.year = 2021;

// Query 93
MERGE (m:Metric {name: 'Loss per share - Basic/Diluted'}) ON CREATE SET m.id = 'loss_per_share_basic_diluted', m.unit = 'Rs.';

// Query 94
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Loss per share - Basic/Diluted'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.05, r.year = 2024;

// Query 95
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Loss per share - Basic/Diluted'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.63, r.year = 2023;

// Query 96
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Loss per share - Basic/Diluted'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.22, r.year = 2022;

// Query 97
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (m:Metric {name: 'Loss per share - Basic/Diluted'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.53, r.year = 2021;

// Query 98
MERGE (s:Sector {name: 'Healthcare Services'}) ON CREATE SET s.id = 'healthcare_services';

// Query 99
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (s:Sector {name: 'Healthcare Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 100
MERGE (s:Sector {name: 'Sales of Goods'}) ON CREATE SET s.id = 'sales_of_goods';

// Query 101
MATCH (c:Company {name: 'ASIRI SURGICAL HOSPITAL PLC'}), (s:Sector {name: 'Sales of Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 101
// Generated on: 2025-09-03T16:20:00.538938
