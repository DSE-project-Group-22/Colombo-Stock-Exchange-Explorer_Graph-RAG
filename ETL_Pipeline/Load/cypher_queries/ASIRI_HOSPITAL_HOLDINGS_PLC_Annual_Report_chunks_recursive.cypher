// Query 1
MERGE (c:Company {name: 'Asiri Hospital Holdings PLC'}) ON CREATE SET c.id = 'asiri_hospital_holdings_plc';

// Query 2
MERGE (p:Person {name: 'Dr. J. T. Sumathipala'}) ON CREATE SET p.id = 'dr_j_t_sumathipala';

// Query 3
MATCH (p:Person {name: 'Dr. J. T. Sumathipala'}), (c:Company {name: 'Asiri Hospital Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'Mr. R. Radha'}) ON CREATE SET p.id = 'mr_r_radha';

// Query 5
MATCH (p:Person {name: 'Mr. R. Radha'}), (c:Company {name: 'Asiri Hospital Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-09');

// Query 6
MERGE (p:Person {name: 'Mr. R.A.T.P Perera'}) ON CREATE SET p.id = 'mr_r_a_t_p_perera';

// Query 7
MATCH (p:Person {name: 'Mr. R.A.T.P Perera'}), (c:Company {name: 'Asiri Hospital Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director/CEO', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'Mr. D.A.S.D. A. Abeyesinhe'}) ON CREATE SET p.id = 'mr_d_a_s_d_a_abeyesinhe';

// Query 9
MATCH (p:Person {name: 'Mr. D.A.S.D. A. Abeyesinhe'}), (c:Company {name: 'Asiri Hospital Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'Mr. A. D. Ross'}) ON CREATE SET p.id = 'mr_a_d_ross';

// Query 11
MATCH (p:Person {name: 'Mr. A. D. Ross'}), (c:Company {name: 'Asiri Hospital Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 12
MERGE (p:Person {name: 'Mr. V. Siva Jr.'}) ON CREATE SET p.id = 'mr_v_siva_jr';

// Query 13
MATCH (p:Person {name: 'Mr. V. Siva Jr.'}), (c:Company {name: 'Asiri Hospital Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 14
MERGE (p:Person {name: 'Mr. S. S. Balasubramaniam'}) ON CREATE SET p.id = 'mr_s_s_balasubramaniam';

// Query 15
MATCH (p:Person {name: 'Mr. S. S. Balasubramaniam'}), (c:Company {name: 'Asiri Hospital Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 16
MERGE (p:Person {name: 'Mr. D. Swarnasinghe'}) ON CREATE SET p.id = 'mr_d_swarnasinghe';

// Query 17
MATCH (p:Person {name: 'Mr. D. Swarnasinghe'}), (c:Company {name: 'Asiri Hospital Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 18
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. million';

// Query 19
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772.0, r.year = 2024;

// Query 20
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8417.0, r.year = 2023;

// Query 21
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4095.0, r.year = 2022;

// Query 22
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790.0, r.year = 2021;

// Query 23
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5560.0, r.year = 2020;

// Query 24
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs. million';

// Query 25
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612.0, r.year = 2024;

// Query 26
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93.0, r.year = 2023;

// Query 27
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -407.0, r.year = 2022;

// Query 28
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1913.0, r.year = 2021;

// Query 29
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28.0, r.year = 2020;

// Query 30
MERGE (m:Metric {name: 'Profit before tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs. million';

// Query 31
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212.0, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -133.0, r.year = 2023;

// Query 33
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -459.0, r.year = 2022;

// Query 34
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2370.0, r.year = 2021;

// Query 35
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 199.0, r.year = 2020;

// Query 36
MERGE (m:Metric {name: 'Profit after tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs. million';

// Query 37
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -333.0, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -508.0, r.year = 2022;

// Query 40
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2244.0, r.year = 2021;

// Query 41
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106.0, r.year = 2020;

// Query 42
MERGE (m:Metric {name: 'Dividends paid'}) ON CREATE SET m.id = 'dividends_paid', m.unit = 'Rs. million';

// Query 43
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2022;

// Query 46
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2021;

// Query 47
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 442.0, r.year = 2020;

// Query 48
MERGE (m:Metric {name: 'Return on equity (ROE)'}) ON CREATE SET m.id = 'return_on_equity_roe', m.unit = '%';

// Query 49
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.07, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.92, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.62, r.year = 2022;

// Query 52
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.54, r.year = 2021;

// Query 53
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.15, r.year = 2020;

// Query 54
MERGE (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed_roce', m.unit = '%';

// Query 55
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.86, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.65, r.year = 2022;

// Query 58
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.43, r.year = 2021;

// Query 59
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2020;

// Query 60
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. million';

// Query 61
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381.0, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45912.0, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42509.0, r.year = 2022;

// Query 64
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40869.0, r.year = 2021;

// Query 65
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42582.0, r.year = 2020;

// Query 66
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. million';

// Query 67
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832.0, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13674.0, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7549.0, r.year = 2022;

// Query 70
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6256.0, r.year = 2021;

// Query 71
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5889.0, r.year = 2020;

// Query 72
MERGE (m:Metric {name: 'Net debt / (Cash)'}) ON CREATE SET m.id = 'net_debt_cash', m.unit = 'Rs. million';

// Query 73
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2284.0, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2101.0, r.year = 2023;

// Query 75
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1645.0, r.year = 2022;

// Query 76
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 691.0, r.year = 2021;

// Query 77
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -587.0, r.year = 2020;

// Query 78
MERGE (m:Metric {name: 'Finance cost'}) ON CREATE SET m.id = 'finance_cost', m.unit = 'Rs.';

// Query 79
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Finance cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -336016.0, r.year = 2024;

// Query 80
MERGE (m:Metric {name: 'Finance income'}) ON CREATE SET m.id = 'finance_income', m.unit = 'Rs.';

// Query 81
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Finance income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25800.0, r.year = 2024;

// Query 82
MERGE (m:Metric {name: 'Net Finance cost'}) ON CREATE SET m.id = 'net_finance_cost', m.unit = 'Rs.';

// Query 83
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Net Finance cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -310216.0, r.year = 2024;

// Query 84
MERGE (m:Metric {name: 'Change in fair value of investment property'}) ON CREATE SET m.id = 'change_in_fair_value_of_investment_property', m.unit = 'Rs.';

// Query 85
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Change in fair value of investment property'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -89904.0, r.year = 2024;

// Query 86
MERGE (m:Metric {name: 'Tax (expense)/reversal'}) ON CREATE SET m.id = 'tax_expense_reversal', m.unit = 'Rs.';

// Query 87
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Tax (expense)/reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -134679.0, r.year = 2024;

// Query 88
MERGE (m:Metric {name: 'Profit for the year'}) ON CREATE SET m.id = 'profit_for_the_year', m.unit = 'Rs.';

// Query 89
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Profit for the year'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 77657.0, r.year = 2024;

// Query 90
MERGE (m:Metric {name: 'Equity holders of the parent attributable profit/(loss)'}) ON CREATE SET m.id = 'equity_holders_of_the_parent_attributable_profit_loss', m.unit = 'Rs.';

// Query 91
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Equity holders of the parent attributable profit/(loss)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -20310.0, r.year = 2024;

// Query 92
MERGE (m:Metric {name: 'Non-controlling interest attributable profit/(loss)'}) ON CREATE SET m.id = 'non_controlling_interest_attributable_profit_loss', m.unit = 'Rs.';

// Query 93
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Non-controlling interest attributable profit/(loss)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 97967.0, r.year = 2024;

// Query 94
MERGE (m:Metric {name: 'Loss per share - Basic/Diluted'}) ON CREATE SET m.id = 'loss_per_share_basic_diluted', m.unit = 'Rs.';

// Query 95
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Loss per share - Basic/Diluted'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.05, r.year = 2024;

// Query 96
MERGE (m:Metric {name: 'Dividend per share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs.';

// Query 97
MATCH (c:Company {name: 'Asiri Hospital Holdings PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2024;

// Total queries: 97
// Generated on: 2025-09-03T16:13:02.225584
