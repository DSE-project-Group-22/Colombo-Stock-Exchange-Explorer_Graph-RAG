// Query 1
MERGE (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) ON CREATE SET c.id = 'tea_smallholder_factories_plc';

// Query 2
MERGE (p:Person {name: 'S.D.R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 3
MATCH (p:Person {name: 'S.D.R. Arudpragasam'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'R.C.A. Welikala'}) ON CREATE SET p.id = 'r_c_a_welikala';

// Query 5
MATCH (p:Person {name: 'R.C.A. Welikala'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 6
MERGE (p:Person {name: 'R.N. Bopearatchy'}) ON CREATE SET p.id = 'r_n_bopearatchy';

// Query 7
MATCH (p:Person {name: 'R.N. Bopearatchy'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'E. T. De Zoysa'}) ON CREATE SET p.id = 'e_t_de_zoysa';

// Query 9
MATCH (p:Person {name: 'E. T. De Zoysa'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2021-03-31');

// Query 10
MERGE (p:Person {name: 'R. S. A. Wickramasingha'}) ON CREATE SET p.id = 'r_s_a_wickramasingha';

// Query 11
MATCH (p:Person {name: 'R. S. A. Wickramasingha'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2021-03-31');

// Query 12
MERGE (p:Person {name: 'D. S. Wickramasingha'}) ON CREATE SET p.id = 'd_s_wickramasingha';

// Query 13
MATCH (p:Person {name: 'D. S. Wickramasingha'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 14
MERGE (p:Person {name: 'N. K. Wickramasingha'}) ON CREATE SET p.id = 'n_k_wickramasingha';

// Query 15
MATCH (p:Person {name: 'N. K. Wickramasingha'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 16
MERGE (p:Person {name: 'L. J. M. De Silva'}) ON CREATE SET p.id = 'l_j_m_de_silva';

// Query 17
MATCH (p:Person {name: 'L. J. M. De Silva'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 18
MERGE (p:Person {name: 'M. U. S. G. Thilakawardana'}) ON CREATE SET p.id = 'm_u_s_g_thilakawardana';

// Query 19
MATCH (p:Person {name: 'M. U. S. G. Thilakawardana'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 20
MERGE (p:Person {name: 'D. M. A. Kulasooriya'}) ON CREATE SET p.id = 'd_m_a_kulasooriya';

// Query 21
MATCH (p:Person {name: 'D. M. A. Kulasooriya'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 22
MERGE (p:Person {name: 'M. S. Nanayakkara'}) ON CREATE SET p.id = 'm_s_nanayakkara';

// Query 23
MATCH (p:Person {name: 'M. S. Nanayakkara'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 24
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. million';

// Query 25
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7764.0, r.year = 2024;

// Query 26
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8199.0, r.year = 2023;

// Query 27
MERGE (m:Metric {name: 'Cash Inflow From Operations'}) ON CREATE SET m.id = 'cash_inflow_from_operations', m.unit = 'Rs. million';

// Query 28
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Cash Inflow From Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2655.0, r.year = 2024;

// Query 29
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Cash Inflow From Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3553.0, r.year = 2023;

// Query 30
MERGE (m:Metric {name: 'Net Profit Ratio'}) ON CREATE SET m.id = 'net_profit_ratio', m.unit = '%';

// Query 31
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Profit Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 21.17, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Profit Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 31.45, r.year = 2023;

// Query 33
MERGE (m:Metric {name: 'Taxes'}) ON CREATE SET m.id = 'taxes', m.unit = 'Rs. million';

// Query 34
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Taxes'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 491.0, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Taxes'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 719.0, r.year = 2023;

// Query 36
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 37
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 25.80, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 41.81, r.year = 2023;

// Query 39
MERGE (m:Metric {name: 'Asset Turnover Ratio'}) ON CREATE SET m.id = 'asset_turnover_ratio', m.unit = 'Times';

// Query 40
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.79, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.90, r.year = 2023;

// Query 42
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs.';

// Query 43
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 26.85, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19.00, r.year = 2023;

// Query 45
MERGE (m:Metric {name: 'Debt: Equity Ratio'}) ON CREATE SET m.id = 'debt_equity_ratio', m.unit = '%';

// Query 46
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Debt: Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7.0, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Debt: Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5.0, r.year = 2023;

// Query 48
MERGE (m:Metric {name: 'Total Revenue'}) ON CREATE SET m.id = 'total_revenue', m.unit = 'Rs.000\'s';

// Query 49
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3055960, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3743939, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2018797, r.year = 2022;

// Query 52
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2346224, r.year = 2021;

// Query 53
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2109139, r.year = 2020;

// Query 54
MERGE (m:Metric {name: 'Cost of Sale'}) ON CREATE SET m.id = 'cost_of_sale', m.unit = 'Rs.000\'s';

// Query 55
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Cost of Sale'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -3094974, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Cost of Sale'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -3332924, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Cost of Sale'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2029365, r.year = 2022;

// Query 58
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Cost of Sale'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2256953, r.year = 2021;

// Query 59
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Cost of Sale'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2093028, r.year = 2020;

// Query 60
MERGE (m:Metric {name: 'Gross Operating Profit / (Loss)'}) ON CREATE SET m.id = 'gross_operating_profit_loss', m.unit = 'Rs.000\'s';

// Query 61
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Gross Operating Profit / (Loss)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -39014, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Gross Operating Profit / (Loss)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 411015, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Gross Operating Profit / (Loss)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -10568, r.year = 2022;

// Query 64
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Gross Operating Profit / (Loss)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 89271, r.year = 2021;

// Query 65
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Gross Operating Profit / (Loss)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16111, r.year = 2020;

// Query 66
MERGE (m:Metric {name: 'Other Income'}) ON CREATE SET m.id = 'other_income', m.unit = 'Rs.000\'s';

// Query 67
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 159989, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 152646, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 88258, r.year = 2022;

// Query 70
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 60987, r.year = 2021;

// Query 71
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 55283, r.year = 2020;

// Query 72
MERGE (m:Metric {name: 'Administrative Expenses'}) ON CREATE SET m.id = 'administrative_expenses', m.unit = 'Rs.000\'s';

// Query 73
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Administrative Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -145761, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Administrative Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -106191, r.year = 2023;

// Query 75
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Administrative Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -62919, r.year = 2022;

// Query 76
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Administrative Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -54788, r.year = 2021;

// Query 77
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Administrative Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -62074, r.year = 2020;

// Query 78
MERGE (m:Metric {name: 'Management Fees'}) ON CREATE SET m.id = 'management_fees', m.unit = 'Rs.000\'s';

// Query 79
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Management Fees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -22705, r.year = 2024;

// Query 80
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Management Fees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -66085, r.year = 2023;

// Query 81
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Management Fees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -15028, r.year = 2022;

// Query 82
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Management Fees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -23274, r.year = 2021;

// Query 83
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Management Fees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -17680, r.year = 2020;

// Query 84
MERGE (m:Metric {name: 'Results from Operating Activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs.000\'s';

// Query 85
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -47491, r.year = 2024;

// Query 86
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 391385, r.year = 2023;

// Query 87
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -257, r.year = 2022;

// Query 88
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 72197, r.year = 2021;

// Query 89
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -8360, r.year = 2020;

// Query 90
MERGE (m:Metric {name: 'Net Finance (Cost) / Income'}) ON CREATE SET m.id = 'net_finance_cost_income', m.unit = 'Rs.000\'s';

// Query 91
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Finance (Cost) / Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -14411, r.year = 2024;

// Query 92
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Finance (Cost) / Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 28779, r.year = 2023;

// Query 93
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Finance (Cost) / Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7195, r.year = 2022;

// Query 94
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Finance (Cost) / Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8764, r.year = 2021;

// Query 95
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Finance (Cost) / Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1, r.year = 2020;

// Query 96
MERGE (m:Metric {name: 'Change in fair value of Investment Property'}) ON CREATE SET m.id = 'change_in_fair_value_of_investment_property', m.unit = 'Rs.000\'s';

// Query 97
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Change in fair value of Investment Property'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 42214, r.year = 2024;

// Query 98
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Change in fair value of Investment Property'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 20462, r.year = 2023;

// Query 99
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Change in fair value of Investment Property'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 15719, r.year = 2022;

// Query 100
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Change in fair value of Investment Property'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2371, r.year = 2021;

// Query 101
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Change in fair value of Investment Property'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 39297, r.year = 2020;

// Query 102
MERGE (m:Metric {name: 'Profit/ (Loss) before Tax'}) ON CREATE SET m.id = 'profit_loss_before_tax', m.unit = 'Rs.000\'s';

// Query 103
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Profit/ (Loss) before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -19688, r.year = 2024;

// Query 104
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Profit/ (Loss) before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 440626, r.year = 2023;

// Query 105
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Profit/ (Loss) before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 22657, r.year = 2022;

// Query 106
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Profit/ (Loss) before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 78589, r.year = 2021;

// Query 107
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Profit/ (Loss) before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 30938, r.year = 2020;

// Query 108
MERGE (m:Metric {name: 'Tax (Expense)/ Reversal'}) ON CREATE SET m.id = 'tax_expense_reversal', m.unit = 'Rs.000\'s';

// Query 109
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Tax (Expense)/ Reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 25917, r.year = 2024;

// Query 110
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Tax (Expense)/ Reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -162131, r.year = 2023;

// Query 111
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Tax (Expense)/ Reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -7346, r.year = 2022;

// Query 112
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Tax (Expense)/ Reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -12045, r.year = 2021;

// Query 113
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Tax (Expense)/ Reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 73149, r.year = 2020;

// Total queries: 113
// Generated on: 2025-09-03T13:19:30.234023
