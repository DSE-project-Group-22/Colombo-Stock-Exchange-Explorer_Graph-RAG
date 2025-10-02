// Query 1
MERGE (c:Company {name: 'Capital Alliance PLC'}) ON CREATE SET c.id = 'capital_alliance_plc', c.founded_on = date('2000-08-10'), c.listed_on = 'CSE (2021-12-15)', c.region = 'Sri Lanka';

// Query 2
MERGE (c:Company {name: 'Capital Alliance Holdings Limited'}) ON CREATE SET c.id = 'capital_alliance_holdings_limited', c.region = 'Sri Lanka';

// Query 3
MERGE (c:Company {name: 'KPMG'}) ON CREATE SET c.id = 'kpmg';

// Query 4
MERGE (p:Person {name: 'D. A. De Zoysa'}) ON CREATE SET p.id = 'd_a_de_zoysa';

// Query 5
MERGE (p:Person {name: 'W. A. T. Fernando'}) ON CREATE SET p.id = 'w_a_t_fernando';

// Query 6
MERGE (p:Person {name: 'R. J. Arasaratnam'}) ON CREATE SET p.id = 'r_j_arasaratnam';

// Query 7
MERGE (p:Person {name: 'C. S. R. S. Anthony'}) ON CREATE SET p.id = 'c_s_r_s_anthony';

// Query 8
MERGE (p:Person {name: 'A. I. C. Nandasena'}) ON CREATE SET p.id = 'a_i_c_nandasena';

// Query 9
MERGE (p:Person {name: 'K. A. D. Siriwardene'}) ON CREATE SET p.id = 'k_a_d_siriwardene';

// Query 10
MERGE (p:Person {name: 'H. M. S. Perera'}) ON CREATE SET p.id = 'h_m_s_perera';

// Query 11
MERGE (p:Person {name: 'L. H. S. L. Silva'}) ON CREATE SET p.id = 'l_h_s_l_silva';

// Query 12
MERGE (p:Person {name: 'A. D. Rayen'}) ON CREATE SET p.id = 'a_d_rayen';

// Query 13
MERGE (p:Person {name: 'A. M. N. Adhikari'}) ON CREATE SET p.id = 'a_m_n_adhikari';

// Query 14
MERGE (p:Person {name: 'H. A. T. Migara'}) ON CREATE SET p.id = 'h_a_t_migara';

// Query 15
MERGE (p:Person {name: 'S. C. Goonesekera'}) ON CREATE SET p.id = 's_c_goonesekera';

// Query 16
MERGE (p:Person {name: 'K. S. Munasinghe'}) ON CREATE SET p.id = 'k_s_munasinghe';

// Query 17
MERGE (p:Person {name: 'T. Kulasinghe'}) ON CREATE SET p.id = 't_kulasinghe';

// Query 18
MERGE (p:Person {name: 'R. M. L. R. Rathnayake'}) ON CREATE SET p.id = 'r_m_l_r_rathnayake';

// Query 19
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 20
MERGE (p:Product {name: 'CAL Online mobile and web app'}) ON CREATE SET p.id = 'cal_online_mobile_and_web_app';

// Query 21
MERGE (p:Product {name: 'WhatsApp BOT'}) ON CREATE SET p.id = 'whatsapp_bot';

// Query 22
MERGE (p:Product {name: 'CAL GPT'}) ON CREATE SET p.id = 'cal_gpt';

// Query 23
MERGE (p:Product {name: 'AnalytiCAL'}) ON CREATE SET p.id = 'analytical';

// Query 24
MERGE (p:Product {name: 'Investment Banking and Derivative Products'}) ON CREATE SET p.id = 'investment_banking_and_derivative_products';

// Query 25
MERGE (m:Metric {name: 'Interest Income'}) ON CREATE SET m.id = 'interest_income', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Interest Expenses'}) ON CREATE SET m.id = 'interest_expenses', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Net Gain from Trading'}) ON CREATE SET m.id = 'net_gain_from_trading', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Net Gain from Remeasurement of Financial Assets at FVTPL'}) ON CREATE SET m.id = 'net_gain_from_remeasurement_of_financial_assets_at_fvtpl', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Direct Expenses'}) ON CREATE SET m.id = 'direct_expenses', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Other Income'}) ON CREATE SET m.id = 'other_income', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Net Operating Income'}) ON CREATE SET m.id = 'net_operating_income', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Operating Expenses'}) ON CREATE SET m.id = 'operating_expenses', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Income Tax Expenses'}) ON CREATE SET m.id = 'income_tax_expenses', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Other Comprehensive Expense'}) ON CREATE SET m.id = 'other_comprehensive_expense', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Total Comprehensive Income'}) ON CREATE SET m.id = 'total_comprehensive_income', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Financial Assets'}) ON CREATE SET m.id = 'financial_assets', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Other Assets'}) ON CREATE SET m.id = 'other_assets', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Financial Liabilities'}) ON CREATE SET m.id = 'financial_liabilities', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Other Liabilities'}) ON CREATE SET m.id = 'other_liabilities', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Equity'}) ON CREATE SET m.id = 'equity', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Basic Earnings per Share'}) ON CREATE SET m.id = 'basic_earnings_per_share', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Market Price Per Share'}) ON CREATE SET m.id = 'market_price_per_share', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Net Asset Value Per Share'}) ON CREATE SET m.id = 'net_asset_value_per_share', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 50
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 51
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Times';

// Query 52
MERGE (m:Metric {name: 'Interest Yield'}) ON CREATE SET m.id = 'interest_yield', m.unit = '%';

// Query 53
MERGE (m:Metric {name: 'Interest Borrowing Cost'}) ON CREATE SET m.id = 'interest_borrowing_cost', m.unit = '%';

// Query 54
MERGE (m:Metric {name: 'Interest Spread'}) ON CREATE SET m.id = 'interest_spread', m.unit = '%';

// Query 55
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Dividend Payout Ratio'}) ON CREATE SET m.id = 'dividend_payout_ratio', m.unit = '%';

// Query 57
MERGE (m:Metric {name: 'Capital Adequacy Ratio'}) ON CREATE SET m.id = 'capital_adequacy_ratio', m.unit = '%';

// Query 58
MERGE (m:Metric {name: 'Capital Gains'}) ON CREATE SET m.id = 'capital_gains', m.unit = 'Rs';

// Query 59
MERGE (m:Metric {name: 'Personnel Expenses'}) ON CREATE SET m.id = 'personnel_expenses', m.unit = 'Rs';

// Query 60
MERGE (m:Metric {name: 'Depreciation and Amortisation'}) ON CREATE SET m.id = 'depreciation_and_amortisation', m.unit = 'Rs';

// Query 61
MERGE (m:Metric {name: 'Total Dividends'}) ON CREATE SET m.id = 'total_dividends', m.unit = 'Rs';

// Query 62
MERGE (m:Metric {name: 'Final Dividend'}) ON CREATE SET m.id = 'final_dividend', m.unit = 'Rs';

// Query 63
MERGE (m:Metric {name: '1st Interim Dividend'}) ON CREATE SET m.id = '1st_interim_dividend', m.unit = 'Rs';

// Query 64
MERGE (m:Metric {name: '2nd Interim Dividend'}) ON CREATE SET m.id = '2nd_interim_dividend', m.unit = 'Rs';

// Query 65
MERGE (m:Metric {name: 'Stated Capital'}) ON CREATE SET m.id = 'stated_capital', m.unit = 'Rs';

// Query 66
MERGE (m:Metric {name: 'Special Risk Reserve'}) ON CREATE SET m.id = 'special_risk_reserve', m.unit = 'Rs';

// Query 67
MERGE (m:Metric {name: 'Retained Earnings'}) ON CREATE SET m.id = 'retained_earnings', m.unit = 'Rs';

// Query 68
MERGE (m:Metric {name: 'Gearing Ratio'}) ON CREATE SET m.id = 'gearing_ratio', m.unit = 'Ratio';

// Query 69
MERGE (m:Metric {name: 'Water Consumption'}) ON CREATE SET m.id = 'water_consumption', m.unit = 'm3';

// Query 70
MERGE (m:Metric {name: 'Energy Consumption'}) ON CREATE SET m.id = 'energy_consumption', m.unit = 'Gj';

// Query 71
MERGE (m:Metric {name: 'New Digital Customers'}) ON CREATE SET m.id = 'new_digital_customers', m.unit = 'Count';

// Query 72
MERGE (m:Metric {name: 'Total Employees'}) ON CREATE SET m.id = 'total_employees', m.unit = 'Count';

// Query 73
MERGE (m:Metric {name: 'Permanent Employees'}) ON CREATE SET m.id = 'permanent_employees', m.unit = 'Count';

// Query 74
MERGE (m:Metric {name: 'Non-Permanent Employees'}) ON CREATE SET m.id = 'non_permanent_employees', m.unit = 'Count';

// Query 75
MERGE (m:Metric {name: 'Turnover Rate'}) ON CREATE SET m.id = 'turnover_rate', m.unit = '%';

// Query 76
MERGE (m:Metric {name: 'Employees Below 30 years'}) ON CREATE SET m.id = 'employees_below_30_years', m.unit = 'Count';

// Query 77
MERGE (m:Metric {name: 'Employees 30-50 years'}) ON CREATE SET m.id = 'employees_30_50_years', m.unit = 'Count';

// Query 78
MERGE (m:Metric {name: 'Employees Over 50 years'}) ON CREATE SET m.id = 'employees_over_50_years', m.unit = 'Count';

// Query 79
MATCH (parent:Company {name: 'Capital Alliance Holdings Limited'}), (child:Company {name: 'Capital Alliance PLC'}) MERGE (parent)-[:OWNS]->(child);

// Query 80
MATCH (c:Company {name: 'Capital Alliance PLC'}), (a:Company {name: 'KPMG'}) MERGE (c)-[:AUDITED_BY {year: 2024}]->(a);

// Query 81
MATCH (c:Company {name: 'Capital Alliance PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 82
MATCH (c:Company {name: 'Capital Alliance PLC'}), (p:Product {name: 'CAL Online mobile and web app'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Capital Alliance PLC'}), (p:Product {name: 'WhatsApp BOT'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Capital Alliance PLC'}), (p:Product {name: 'CAL GPT'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Capital Alliance PLC'}), (p:Product {name: 'AnalytiCAL'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Capital Alliance PLC'}), (p:Product {name: 'Investment Banking and Derivative Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (p:Person {name: 'D. A. De Zoysa'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive Non-Independent', r.as_of = date('2024-03-31');

// Query 88
MATCH (p:Person {name: 'D. A. De Zoysa'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 89
MATCH (p:Person {name: 'W. A. T. Fernando'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Executive', r.as_of = date('2024-03-31');

// Query 90
MATCH (p:Person {name: 'W. A. T. Fernando'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 91
MATCH (p:Person {name: 'R. J. Arasaratnam'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive Non-Independent', r.as_of = date('2024-03-31');

// Query 92
MATCH (p:Person {name: 'C. S. R. S. Anthony'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive Non-Independent', r.as_of = date('2024-03-31');

// Query 93
MATCH (p:Person {name: 'A. I. C. Nandasena'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive Independent', r.as_of = date('2024-03-31');

// Query 94
MATCH (p:Person {name: 'K. A. D. Siriwardene'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive Independent', r.as_of = date('2024-03-31');

// Query 95
MATCH (p:Person {name: 'H. M. S. Perera'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Risk & Compliance Officer', r.as_of = date('2024-03-31');

// Query 96
MATCH (p:Person {name: 'L. H. S. L. Silva'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Vice President - Head of Treasury', r.as_of = date('2024-03-31');

// Query 97
MATCH (p:Person {name: 'A. D. Rayen'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Vice President - Head of Fixed Income Sales', r.as_of = date('2024-03-31');

// Query 98
MATCH (p:Person {name: 'A. M. N. Adhikari'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Vice President - Finance', r.as_of = date('2024-03-31');

// Query 99
MATCH (p:Person {name: 'H. A. T. Migara'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager - Operations', r.as_of = date('2024-03-31');

// Query 100
MATCH (p:Person {name: 'S. C. Goonesekera'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Manager Finance', r.as_of = date('2024-03-31');

// Query 101
MATCH (p:Person {name: 'K. S. Munasinghe'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Vice President - HR', r.as_of = date('2024-03-31');

// Query 102
MATCH (p:Person {name: 'T. Kulasinghe'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Information Officer', r.as_of = date('2024-03-31');

// Query 103
MATCH (p:Person {name: 'R. M. L. R. Rathnayake'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Manager - Customer Experience Centre', r.as_of = date('2024-03-31');

// Query 104
MATCH (p:Person {name: 'W. A. T. Fernando'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 21698676, r.as_of = date('2023-03-31');

// Query 105
MATCH (p:Person {name: 'W. A. T. Fernando'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 0, r.as_of = date('2024-03-31');

// Query 106
MATCH (p:Person {name: 'R. J. Arasaratnam'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 3312, r.as_of = date('2023-03-31');

// Query 107
MATCH (p:Person {name: 'R. J. Arasaratnam'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 3312, r.as_of = date('2024-03-31');

// Query 108
MATCH (p:Person {name: 'C. S. R. S. Anthony'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 2600, r.as_of = date('2023-03-31');

// Query 109
MATCH (p:Person {name: 'C. S. R. S. Anthony'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 2600, r.as_of = date('2024-03-31');

// Query 110
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10504518985, r.year = 2024, r.as_of = date('2024-03-31');

// Query 111
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4720189909, r.year = 2023, r.as_of = date('2023-03-31');

// Query 112
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Interest Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6641372092, r.year = 2024, r.as_of = date('2024-03-31');

// Query 113
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Interest Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -3127944659, r.year = 2023, r.as_of = date('2023-03-31');

// Query 114
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3863146893, r.year = 2024, r.as_of = date('2024-03-31');

// Query 115
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1592245250, r.year = 2023, r.as_of = date('2023-03-31');

// Query 116
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Net Gain from Trading'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19005251921, r.year = 2024, r.as_of = date('2024-03-31');

// Query 117
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Net Gain from Trading'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 609575468, r.year = 2023, r.as_of = date('2023-03-31');

// Query 118
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Net Gain from Remeasurement of Financial Assets at FVTPL'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 874512729, r.year = 2024, r.as_of = date('2024-03-31');

// Query 119
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Net Gain from Remeasurement of Financial Assets at FVTPL'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2660964068, r.year = 2023, r.as_of = date('2023-03-31');

// Query 120
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Direct Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -33074086, r.year = 2024, r.as_of = date('2024-03-31');

// Query 121
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Direct Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -11006189, r.year = 2023, r.as_of = date('2023-03-31');

// Query 122
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19336409, r.year = 2024, r.as_of = date('2024-03-31');

// Query 123
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14850, r.year = 2023, r.as_of = date('2023-03-31');

// Query 124
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Net Operating Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 23729173866, r.year = 2024, r.as_of = date('2024-03-31');

// Query 125
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Net Operating Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4851793447, r.year = 2023, r.as_of = date('2023-03-31');

// Query 126
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Operating Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -3631162435, r.year = 2024, r.as_of = date('2024-03-31');

// Query 127
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Operating Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1156910644, r.year = 2023, r.as_of = date('2023-03-31');

// Query 128
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 20098011431, r.year = 2024, r.as_of = date('2024-03-31');

// Query 129
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3694882803, r.year = 2023, r.as_of = date('2023-03-31');

// Query 130
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Income Tax Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6204827939, r.year = 2024, r.as_of = date('2024-03-31');

// Query 131
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Income Tax Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -867876159, r.year = 2023, r.as_of = date('2023-03-31');

// Query 132
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13893183492, r.year = 2024, r.as_of = date('2024-03-31');

// Query 133
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2827006644, r.year = 2023, r.as_of = date('2023-03-31');

// Query 134
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Other Comprehensive Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -8387173, r.year = 2024, r.as_of = date('2024-03-31');

// Query 135
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Other Comprehensive Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -4733422, r.year = 2023, r.as_of = date('2023-03-31');

// Query 136
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Total Comprehensive Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13884796319, r.year = 2024, r.as_of = date('2024-03-31');

// Query 137
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Total Comprehensive Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2822273222, r.year = 2023, r.as_of = date('2023-03-31');

// Query 138
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Financial Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 60915816484, r.year = 2024, r.as_of = date('2024-03-31');

// Query 139
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Financial Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 37999999889, r.year = 2023, r.as_of = date('2023-03-31');

// Query 140
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Other Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 342411133, r.year = 2024, r.as_of = date('2024-03-31');

// Query 141
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Other Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 40670112, r.year = 2023, r.as_of = date('2023-03-31');

// Query 142
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 61258227617, r.year = 2024, r.as_of = date('2024-03-31');

// Query 143
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 38040670001, r.year = 2023, r.as_of = date('2023-03-31');

// Query 144
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Financial Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 40152242962, r.year = 2024, r.as_of = date('2024-03-31');

// Query 145
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Financial Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 31735996096, r.year = 2023, r.as_of = date('2023-03-31');

// Query 146
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Other Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4709097548, r.year = 2024, r.as_of = date('2024-03-31');

// Query 147
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Other Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 814645447, r.year = 2023, r.as_of = date('2023-03-31');

// Query 148
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 44861340510, r.year = 2024, r.as_of = date('2024-03-31');

// Query 149
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 32550641542, r.year = 2023, r.as_of = date('2023-03-31');

// Query 150
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16396887107, r.year = 2024, r.as_of = date('2024-03-31');

// Query 151
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5490028459, r.year = 2023, r.as_of = date('2023-03-31');

// Query 152
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Basic Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 42.17, r.year = 2024, r.as_of = date('2024-03-31');

// Query 153
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Basic Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.58, r.year = 2023, r.as_of = date('2023-03-31');

// Query 154
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 53.00, r.year = 2024, r.as_of = date('2024-03-31');

// Query 155
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 32.60, r.year = 2023, r.as_of = date('2023-03-31');

// Query 156
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 49.78, r.year = 2024, r.as_of = date('2024-03-31');

// Query 157
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16.67, r.year = 2023, r.as_of = date('2023-03-31');

// Query 158
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 126.95, r.year = 2024, r.as_of = date('2024-03-31');

// Query 159
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 69.31, r.year = 2023, r.as_of = date('2023-03-31');

// Query 160
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 40.48, r.year = 2024, r.as_of = date('2024-03-31');

// Query 161
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 15.98, r.year = 2023, r.as_of = date('2023-03-31');

// Query 162
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.83, r.year = 2024, r.as_of = date('2024-03-31');

// Query 163
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5.47, r.year = 2023, r.as_of = date('2023-03-31');

// Query 164
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Interest Yield'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 45.62, r.year = 2024, r.as_of = date('2024-03-31');

// Query 165
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Interest Yield'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 20.50, r.year = 2023, r.as_of = date('2023-03-31');

// Query 166
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Interest Borrowing Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 36.35, r.year = 2024, r.as_of = date('2024-03-31');

// Query 167
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Interest Borrowing Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 17.12, r.year = 2023, r.as_of = date('2023-03-31');

// Query 168
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Interest Spread'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9.27, r.year = 2024, r.as_of = date('2024-03-31');

// Query 169
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Interest Spread'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.38, r.year = 2023, r.as_of = date('2023-03-31');

// Query 170
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9.04, r.year = 2024, r.as_of = date('2024-03-31');

// Query 171
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 172
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 21.43, r.year = 2024, r.as_of = date('2024-03-31');

// Query 173
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 174
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Capital Adequacy Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 43.59, r.year = 2024, r.as_of = date('2024-03-31');

// Query 175
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Capital Adequacy Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 24.72, r.year = 2023, r.as_of = date('2023-03-31');

// Query 176
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Capital Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19900000000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 177
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Capital Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3300000000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 178
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Personnel Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2775753100, r.year = 2024, r.as_of = date('2024-03-31');

// Query 179
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Personnel Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -523007810, r.year = 2023, r.as_of = date('2023-03-31');

// Query 180
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Depreciation and Amortisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -15668881, r.year = 2024, r.as_of = date('2024-03-31');

// Query 181
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Depreciation and Amortisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6753856, r.year = 2023, r.as_of = date('2023-03-31');

// Query 182
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Total Dividends'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2978000000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 183
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Final Dividend'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1001430367, r.year = 2023, r.as_of = date('2023-08-24');

// Query 184
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: '1st Interim Dividend'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1976507304, r.year = 2024, r.as_of = date('2024-01-12');

// Query 185
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: '2nd Interim Dividend'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4941268260, r.year = 2024, r.as_of = date('2024-04-17');

// Query 186
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 723348421, r.year = 2024, r.as_of = date('2024-03-31');

// Query 187
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 723348421, r.year = 2023, r.as_of = date('2023-03-31');

// Query 188
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Special Risk Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2316818030, r.year = 2024, r.as_of = date('2024-03-31');

// Query 189
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Special Risk Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 927499681, r.year = 2023, r.as_of = date('2023-03-31');

// Query 190
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13356720656, r.year = 2024, r.as_of = date('2024-03-31');

// Query 191
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3839180357, r.year = 2023, r.as_of = date('2023-03-31');

// Query 192
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.28, r.year = 2024, r.as_of = date('2024-03-31');

// Query 193
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5.66, r.year = 2023, r.as_of = date('2023-03-31');

// Query 194
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Water Consumption'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.31, r.year = 2024, r.as_of = date('2024-03-31');

// Query 195
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Water Consumption'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.02, r.year = 2023, r.as_of = date('2023-03-31');

// Query 196
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Energy Consumption'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 101.7, r.year = 2024, r.as_of = date('2024-03-31');

// Query 197
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Energy Consumption'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 91.8, r.year = 2023, r.as_of = date('2023-03-31');

// Query 198
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'New Digital Customers'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3068, r.year = 2024, r.as_of = date('2024-03-31');

// Query 199
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Total Employees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 27, r.year = 2024, r.as_of = date('2024-03-31');

// Query 200
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Permanent Employees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 22, r.year = 2024, r.as_of = date('2024-03-31');

// Query 201
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Non-Permanent Employees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5, r.year = 2024, r.as_of = date('2024-03-31');

// Query 202
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Turnover Rate'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 17.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 203
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Employees Below 30 years'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6, r.year = 2024, r.as_of = date('2024-03-31');

// Query 204
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Employees 30-50 years'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13, r.year = 2024, r.as_of = date('2024-03-31');

// Query 205
MATCH (c:Company {name: 'Capital Alliance PLC'}), (m:Metric {name: 'Employees Over 50 years'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3, r.year = 2024, r.as_of = date('2024-03-31');

// Total queries: 205
// Generated on: 2025-10-02T19:20:46.975019
