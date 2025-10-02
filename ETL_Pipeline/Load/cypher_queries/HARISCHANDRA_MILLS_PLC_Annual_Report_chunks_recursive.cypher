// Query 1
MERGE (c:Company {name: 'Harischandra Mills PLC'}) ON CREATE SET c.id = 'harischandra_mills_plc', c.region = 'Sri Lanka';

// Query 2
MERGE (c:Company {name: 'Harischandra Mills (Distributors) Limited'}) ON CREATE SET c.id = 'harischandra_mills_distributors_limited', c.region = 'Sri Lanka';

// Query 3
MERGE (c:Company {name: 'KPMG'}) ON CREATE SET c.id = 'kpmg';

// Query 4
MERGE (p:Person {name: 'S.N. Samarasinghe'}) ON CREATE SET p.id = 's_n_samarasinghe';

// Query 5
MERGE (p:Person {name: 'G.S.V. De Silva'}) ON CREATE SET p.id = 'g_s_v_de_silva';

// Query 6
MERGE (p:Person {name: 'M.P. De Silva'}) ON CREATE SET p.id = 'm_p_de_silva';

// Query 7
MERGE (p:Person {name: 'R.K. Samarasinghe'}) ON CREATE SET p.id = 'r_k_samarasinghe';

// Query 8
MERGE (p:Person {name: 'T.K. Bandaranaike'}) ON CREATE SET p.id = 't_k_bandaranaike';

// Query 9
MERGE (p:Person {name: 'R. Kobbakaduwa'}) ON CREATE SET p.id = 'r_kobbakaduwa';

// Query 10
MERGE (p:Person {name: 'S.A.S. Jayasundara'}) ON CREATE SET p.id = 's_a_s_jayasundara';

// Query 11
MERGE (p:Person {name: 'C.T. Gajanayake'}) ON CREATE SET p.id = 'c_t_gajanayake';

// Query 12
MERGE (p:Person {name: 'S.N.K. Nanayakkara'}) ON CREATE SET p.id = 's_n_k_nanayakkara';

// Query 13
MERGE (p:Person {name: 'D.S. Gamini Lokuralage'}) ON CREATE SET p.id = 'd_s_gamini_lokuralage';

// Query 14
MERGE (p:Person {name: 'A.P.R. Kodithuwakku'}) ON CREATE SET p.id = 'a_p_r_kodithuwakku';

// Query 15
MERGE (p:Person {name: 'N.P. Ranasinghe'}) ON CREATE SET p.id = 'n_p_ranasinghe';

// Query 16
MERGE (p:Person {name: 'H.M.R.S. Sanjeewa'}) ON CREATE SET p.id = 'h_m_r_s_sanjeewa';

// Query 17
MERGE (p:Person {name: 'N. Jayawardane'}) ON CREATE SET p.id = 'n_jayawardane';

// Query 18
MERGE (p:Person {name: 'R.G.P.P. Samarawickrama'}) ON CREATE SET p.id = 'r_g_p_p_samarawickrama';

// Query 19
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 20
MERGE (s:Sector {name: 'Household and Personal Products'}) ON CREATE SET s.id = 'household_and_personal_products';

// Query 21
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 22
MERGE (p:Product {name: 'Coffee'}) ON CREATE SET p.id = 'coffee';

// Query 23
MERGE (p:Product {name: 'Noodles'}) ON CREATE SET p.id = 'noodles';

// Query 24
MERGE (p:Product {name: 'Papadam'}) ON CREATE SET p.id = 'papadam';

// Query 25
MERGE (p:Product {name: 'Flour-based Products'}) ON CREATE SET p.id = 'flour_based_products';

// Query 26
MERGE (p:Product {name: 'Laundry Soap'}) ON CREATE SET p.id = 'laundry_soap';

// Query 27
MERGE (p:Product {name: 'Toilet Soap'}) ON CREATE SET p.id = 'toilet_soap';

// Query 28
MERGE (p:Product {name: 'Petrol'}) ON CREATE SET p.id = 'petrol';

// Query 29
MERGE (p:Product {name: 'Diesel'}) ON CREATE SET p.id = 'diesel';

// Query 30
MERGE (p:Product {name: 'Kerosene Oil'}) ON CREATE SET p.id = 'kerosene_oil';

// Query 31
MERGE (p:Product {name: 'Lubricants'}) ON CREATE SET p.id = 'lubricants';

// Query 32
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Finance Income'}) ON CREATE SET m.id = 'finance_income', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Finance Expenses'}) ON CREATE SET m.id = 'finance_expenses', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Income Tax Expense'}) ON CREATE SET m.id = 'income_tax_expense', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Profit For The Year'}) ON CREATE SET m.id = 'profit_for_the_year', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit Attributable To Equity Holders'}) ON CREATE SET m.id = 'profit_attributable_to_equity_holders', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Gross Revenue'}) ON CREATE SET m.id = 'gross_revenue', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Shareholders Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Dividend Paid Per Share'}) ON CREATE SET m.id = 'dividend_paid_per_share', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Dividend Payout'}) ON CREATE SET m.id = 'dividend_payout', m.unit = '%';

// Query 47
MERGE (m:Metric {name: 'Capital Employed'}) ON CREATE SET m.id = 'capital_employed', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Net Cash Inflow From Operating Activities'}) ON CREATE SET m.id = 'net_cash_inflow_from_operating_activities', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Net Cash Outflow From Investing Activities'}) ON CREATE SET m.id = 'net_cash_outflow_from_investing_activities', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Net Cash Outflow From Financing Activities'}) ON CREATE SET m.id = 'net_cash_outflow_from_financing_activities', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Increase In Cash And Cash Equivalents'}) ON CREATE SET m.id = 'increase_in_cash_and_cash_equivalents', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Stated Capital'}) ON CREATE SET m.id = 'stated_capital', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Other Capital Reserves'}) ON CREATE SET m.id = 'other_capital_reserves', m.unit = 'Rs';

// Query 54
MERGE (m:Metric {name: 'General Reserve'}) ON CREATE SET m.id = 'general_reserve', m.unit = 'Rs';

// Query 55
MERGE (m:Metric {name: 'Retained Earnings'}) ON CREATE SET m.id = 'retained_earnings', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Total Equity Attributable To Owners Of The Company'}) ON CREATE SET m.id = 'total_equity_attributable_to_owners_of_the_company', m.unit = 'Rs';

// Query 57
MERGE (m:Metric {name: 'Deferred Tax Liabilities'}) ON CREATE SET m.id = 'deferred_tax_liabilities', m.unit = 'Rs';

// Query 58
MERGE (m:Metric {name: 'Employee Benefit Obligation'}) ON CREATE SET m.id = 'employee_benefit_obligation', m.unit = 'Rs';

// Query 59
MERGE (m:Metric {name: 'Lease Creditor'}) ON CREATE SET m.id = 'lease_creditor', m.unit = 'Rs';

// Query 60
MERGE (m:Metric {name: 'Trade And Other Payables'}) ON CREATE SET m.id = 'trade_and_other_payables', m.unit = 'Rs';

// Query 61
MERGE (m:Metric {name: 'Net Asset Per Share'}) ON CREATE SET m.id = 'net_asset_per_share', m.unit = 'Rs';

// Query 62
MERGE (m:Metric {name: 'Current Asset Ratio'}) ON CREATE SET m.id = 'current_asset_ratio', m.unit = 'Ratio';

// Query 63
MERGE (m:Metric {name: 'Quick Asset Ratio'}) ON CREATE SET m.id = 'quick_asset_ratio', m.unit = 'Ratio';

// Query 64
MERGE (m:Metric {name: 'Equity To Total Asset Ratio'}) ON CREATE SET m.id = 'equity_to_total_asset_ratio', m.unit = '%';

// Query 65
MERGE (m:Metric {name: 'Interim Dividend'}) ON CREATE SET m.id = 'interim_dividend', m.unit = 'Rs';

// Query 66
MERGE (m:Metric {name: 'Final Dividend'}) ON CREATE SET m.id = 'final_dividend', m.unit = 'Rs';

// Query 67
MERGE (m:Metric {name: 'Total Dividend Paid'}) ON CREATE SET m.id = 'total_dividend_paid', m.unit = 'Rs';

// Query 68
MATCH (c1:Company {name: 'Harischandra Mills PLC'}), (c2:Company {name: 'Harischandra Mills (Distributors) Limited'}) MERGE (c1)-[r:OWNS]->(c2) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 69
MATCH (p:Person {name: 'S.N. Samarasinghe'}), (c:Company {name: 'Harischandra Mills PLC'}) MERGE (p)-[:HOLDS_POSITION {title: 'Managing Director', as_of: date('2024-03-31')}]->(c);

// Query 70
MATCH (p:Person {name: 'S.N. Samarasinghe'}), (c:Company {name: 'Harischandra Mills PLC'}) MERGE (p)-[:HOLDS_POSITION {title: 'Executive Director', as_of: date('2024-03-31')}]->(c);

// Query 71
MATCH (p:Person {name: 'S.N. Samarasinghe'}), (c:Company {name: 'Harischandra Mills PLC'}) MERGE (p)-[:HOLDS_POSITION {title: 'CEO', as_of: date('2024-03-31')}]->(c);

// Query 72
MATCH (p:Person {name: 'G.S.V. De Silva'}), (c:Company {name: 'Harischandra Mills PLC'}) MERGE (p)-[:HOLDS_POSITION {title: 'Executive Director', as_of: date('2024-03-31')}]->(c);

// Query 73
MATCH (p:Person {name: 'M.P. De Silva'}), (c:Company {name: 'Harischandra Mills PLC'}) MERGE (p)-[:HOLDS_POSITION {title: 'Executive Director', as_of: date('2024-03-31')}]->(c);

// Query 74
MATCH (p:Person {name: 'R.K. Samarasinghe'}), (c:Company {name: 'Harischandra Mills PLC'}) MERGE (p)-[:HOLDS_POSITION {title: 'Executive Director', as_of: date('2024-03-31')}]->(c);

// Query 75
MATCH (p:Person {name: 'T.K. Bandaranaike'}), (c:Company {name: 'Harischandra Mills PLC'}) MERGE (p)-[:HOLDS_POSITION {title: 'Chairman', as_of: date('2024-03-31')}]->(c);

// Query 76
MATCH (p:Person {name: 'T.K. Bandaranaike'}), (c:Company {name: 'Harischandra Mills PLC'}) MERGE (p)-[:DIRECTOR_OF {role: 'Non-Executive, Independent', as_of: date('2024-03-31')}]->(c);

// Query 77
MATCH (p:Person {name: 'R. Kobbakaduwa'}), (c:Company {name: 'Harischandra Mills PLC'}) MERGE (p)-[:DIRECTOR_OF {role: 'Non-Executive, Independent', as_of: date('2024-03-31')}]->(c);

// Query 78
MATCH (p:Person {name: 'S.A.S. Jayasundara'}), (c:Company {name: 'Harischandra Mills PLC'}) MERGE (p)-[:DIRECTOR_OF {role: 'Non-Executive, Independent', as_of: date('2024-03-31')}]->(c);

// Query 79
MATCH (p:Person {name: 'C.T. Gajanayake'}), (c:Company {name: 'Harischandra Mills (Distributors) Limited'}) MERGE (p)-[:HOLDS_POSITION {title: 'Chief Financial Officer', as_of: date('2024-03-31')}]->(c);

// Query 80
MATCH (p:Person {name: 'S.N.K. Nanayakkara'}), (c:Company {name: 'Harischandra Mills (Distributors) Limited'}) MERGE (p)-[:HOLDS_POSITION {title: 'Sales Manager', as_of: date('2024-03-31')}]->(c);

// Query 81
MATCH (p:Person {name: 'D.S. Gamini Lokuralage'}), (c:Company {name: 'Harischandra Mills (Distributors) Limited'}) MERGE (p)-[:HOLDS_POSITION {title: 'Commercial Manager', as_of: date('2024-03-31')}]->(c);

// Query 82
MATCH (p:Person {name: 'A.P.R. Kodithuwakku'}), (c:Company {name: 'Harischandra Mills (Distributors) Limited'}) MERGE (p)-[:HOLDS_POSITION {title: 'Human Resources Manager', as_of: date('2024-03-31')}]->(c);

// Query 83
MATCH (p:Person {name: 'N.P. Ranasinghe'}), (c:Company {name: 'Harischandra Mills (Distributors) Limited'}) MERGE (p)-[:HOLDS_POSITION {title: 'Production Engineer', as_of: date('2024-03-31')}]->(c);

// Query 84
MATCH (p:Person {name: 'H.M.R.S. Sanjeewa'}), (c:Company {name: 'Harischandra Mills (Distributors) Limited'}) MERGE (p)-[:HOLDS_POSITION {title: 'Finance Manager', as_of: date('2024-03-31')}]->(c);

// Query 85
MATCH (p:Person {name: 'N. Jayawardane'}), (c:Company {name: 'Harischandra Mills (Distributors) Limited'}) MERGE (p)-[:HOLDS_POSITION {title: 'Quality Assurance Manager', as_of: date('2024-03-31')}]->(c);

// Query 86
MATCH (p:Person {name: 'R.G.P.P. Samarawickrama'}), (c:Company {name: 'Harischandra Mills (Distributors) Limited'}) MERGE (p)-[:HOLDS_POSITION {title: 'Management Accountant', as_of: date('2024-03-31')}]->(c);

// Query 87
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 88
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (s:Sector {name: 'Household and Personal Products'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 89
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 90
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (p:Product {name: 'Coffee'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (p:Product {name: 'Noodles'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (p:Product {name: 'Papadam'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (p:Product {name: 'Flour-based Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (p:Product {name: 'Laundry Soap'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (p:Product {name: 'Toilet Soap'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (p:Product {name: 'Petrol'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (p:Product {name: 'Diesel'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (p:Product {name: 'Kerosene Oil'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (p:Product {name: 'Lubricants'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[:HAS_METRIC {value: 309774720, year: 2024}]->(m);

// Query 101
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[:HAS_METRIC {value: 118082746, year: 2023}]->(m);

// Query 102
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Finance Income'}) MERGE (c)-[:HAS_METRIC {value: 60336819, year: 2024}]->(m);

// Query 103
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Finance Income'}) MERGE (c)-[:HAS_METRIC {value: 32848083, year: 2023}]->(m);

// Query 104
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Finance Expenses'}) MERGE (c)-[:HAS_METRIC {value: -4614401, year: 2024}]->(m);

// Query 105
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Finance Expenses'}) MERGE (c)-[:HAS_METRIC {value: -15238827, year: 2023}]->(m);

// Query 106
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[:HAS_METRIC {value: 365497138, year: 2024}]->(m);

// Query 107
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[:HAS_METRIC {value: 135692002, year: 2023}]->(m);

// Query 108
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[:HAS_METRIC {value: -140831848, year: 2024}]->(m);

// Query 109
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[:HAS_METRIC {value: -45496876, year: 2023}]->(m);

// Query 110
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Profit For The Year'}) MERGE (c)-[:HAS_METRIC {value: 224665290, year: 2024}]->(m);

// Query 111
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Profit For The Year'}) MERGE (c)-[:HAS_METRIC {value: 90195126, year: 2023}]->(m);

// Query 112
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Profit Attributable To Equity Holders'}) MERGE (c)-[:HAS_METRIC {value: 224665290, year: 2024}]->(m);

// Query 113
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Profit Attributable To Equity Holders'}) MERGE (c)-[:HAS_METRIC {value: 90195126, year: 2023}]->(m);

// Query 114
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[:HAS_METRIC {value: 117.04, year: 2024}]->(m);

// Query 115
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[:HAS_METRIC {value: 46.99, year: 2023}]->(m);

// Query 116
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[:HAS_METRIC {value: 6301494101, year: 2024}]->(m);

// Query 117
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[:HAS_METRIC {value: 6464392609, year: 2023}]->(m);

// Query 118
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[:HAS_METRIC {value: 6409778343, year: 2024}]->(m);

// Query 119
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[:HAS_METRIC {value: 6523364482, year: 2023}]->(m);

// Query 120
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[:HAS_METRIC {value: 2737343633, year: 2024}]->(m);

// Query 121
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[:HAS_METRIC {value: 2244621790, year: 2023}]->(m);

// Query 122
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[:HAS_METRIC {value: 833312706, year: 2024}]->(m);

// Query 123
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[:HAS_METRIC {value: 597616014, year: 2023}]->(m);

// Query 124
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[:HAS_METRIC {value: 1739465163, year: 2024}]->(m);

// Query 125
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[:HAS_METRIC {value: 1591046795, year: 2023}]->(m);

// Query 126
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Dividend Paid Per Share'}) MERGE (c)-[:HAS_METRIC {value: 40.0, year: 2024}]->(m);

// Query 127
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Dividend Paid Per Share'}) MERGE (c)-[:HAS_METRIC {value: 55.0, year: 2023}]->(m);

// Query 128
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Dividend Payout'}) MERGE (c)-[:HAS_METRIC {value: 85.12, year: 2024}]->(m);

// Query 129
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Dividend Payout'}) MERGE (c)-[:HAS_METRIC {value: 50.42, year: 2023}]->(m);

// Query 130
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Capital Employed'}) MERGE (c)-[:HAS_METRIC {value: 1739465000, year: 2024}]->(m);

// Query 131
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Capital Employed'}) MERGE (c)-[:HAS_METRIC {value: 1591047000, year: 2023}]->(m);

// Query 132
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Net Cash Inflow From Operating Activities'}) MERGE (c)-[:HAS_METRIC {value: 366269000, year: 2024}]->(m);

// Query 133
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Net Cash Inflow From Operating Activities'}) MERGE (c)-[:HAS_METRIC {value: 91394000, year: 2023}]->(m);

// Query 134
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Net Cash Outflow From Investing Activities'}) MERGE (c)-[:HAS_METRIC {value: -96527000, year: 2024}]->(m);

// Query 135
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Net Cash Outflow From Investing Activities'}) MERGE (c)-[:HAS_METRIC {value: -27762000, year: 2023}]->(m);

// Query 136
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Net Cash Outflow From Financing Activities'}) MERGE (c)-[:HAS_METRIC {value: -365737000, year: 2024}]->(m);

// Query 137
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Net Cash Outflow From Financing Activities'}) MERGE (c)-[:HAS_METRIC {value: -99934000, year: 2023}]->(m);

// Query 138
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Increase In Cash And Cash Equivalents'}) MERGE (c)-[:HAS_METRIC {value: -95995000, year: 2024}]->(m);

// Query 139
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Increase In Cash And Cash Equivalents'}) MERGE (c)-[:HAS_METRIC {value: -36302000, year: 2023}]->(m);

// Query 140
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[:HAS_METRIC {value: 105578000, year: 2024}]->(m);

// Query 141
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[:HAS_METRIC {value: 105578000, year: 2023}]->(m);

// Query 142
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Other Capital Reserves'}) MERGE (c)-[:HAS_METRIC {value: 11014, year: 2024}]->(m);

// Query 143
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Other Capital Reserves'}) MERGE (c)-[:HAS_METRIC {value: 11014, year: 2023}]->(m);

// Query 144
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'General Reserve'}) MERGE (c)-[:HAS_METRIC {value: 12841000, year: 2024}]->(m);

// Query 145
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'General Reserve'}) MERGE (c)-[:HAS_METRIC {value: 12841000, year: 2023}]->(m);

// Query 146
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[:HAS_METRIC {value: 1618723477, year: 2024}]->(m);

// Query 147
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[:HAS_METRIC {value: 1470238509, year: 2023}]->(m);

// Query 148
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Total Equity Attributable To Owners Of The Company'}) MERGE (c)-[:HAS_METRIC {value: 1737153491, year: 2024}]->(m);

// Query 149
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Total Equity Attributable To Owners Of The Company'}) MERGE (c)-[:HAS_METRIC {value: 1588668523, year: 2023}]->(m);

// Query 150
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Deferred Tax Liabilities'}) MERGE (c)-[:HAS_METRIC {value: 28706347, year: 2024}]->(m);

// Query 151
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Deferred Tax Liabilities'}) MERGE (c)-[:HAS_METRIC {value: 13233277, year: 2023}]->(m);

// Query 152
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Employee Benefit Obligation'}) MERGE (c)-[:HAS_METRIC {value: 167080828, year: 2024}]->(m);

// Query 153
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Employee Benefit Obligation'}) MERGE (c)-[:HAS_METRIC {value: 141660658, year: 2023}]->(m);

// Query 154
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Lease Creditor'}) MERGE (c)-[:HAS_METRIC {value: 25790380, year: 2024}]->(m);

// Query 155
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Lease Creditor'}) MERGE (c)-[:HAS_METRIC {value: 41995837, year: 2023}]->(m);

// Query 156
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Trade And Other Payables'}) MERGE (c)-[:HAS_METRIC {value: 611735151, year: 2024}]->(m);

// Query 157
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Trade And Other Payables'}) MERGE (c)-[:HAS_METRIC {value: 400726242, year: 2023}]->(m);

// Query 158
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Net Asset Per Share'}) MERGE (c)-[:HAS_METRIC {value: 906.16, year: 2024}]->(m);

// Query 159
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Net Asset Per Share'}) MERGE (c)-[:HAS_METRIC {value: 828.84, year: 2023}]->(m);

// Query 160
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Current Asset Ratio'}) MERGE (c)-[:HAS_METRIC {value: 2.32, year: 2024}]->(m);

// Query 161
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Current Asset Ratio'}) MERGE (c)-[:HAS_METRIC {value: 2.97, year: 2023}]->(m);

// Query 162
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Quick Asset Ratio'}) MERGE (c)-[:HAS_METRIC {value: 1.68, year: 2024}]->(m);

// Query 163
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Quick Asset Ratio'}) MERGE (c)-[:HAS_METRIC {value: 2.05, year: 2023}]->(m);

// Query 164
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Equity To Total Asset Ratio'}) MERGE (c)-[:HAS_METRIC {value: 63.55, year: 2024}]->(m);

// Query 165
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Equity To Total Asset Ratio'}) MERGE (c)-[:HAS_METRIC {value: 70.88, year: 2023}]->(m);

// Query 166
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Interim Dividend'}) MERGE (c)-[:HAS_METRIC {value: 38392000, year: 2024}]->(m);

// Query 167
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Interim Dividend'}) MERGE (c)-[:HAS_METRIC {value: 47990000, year: 2023}]->(m);

// Query 168
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Final Dividend'}) MERGE (c)-[:HAS_METRIC {value: 38392000, year: 2024}]->(m);

// Query 169
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Final Dividend'}) MERGE (c)-[:HAS_METRIC {value: 57588000, year: 2023}]->(m);

// Query 170
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Total Dividend Paid'}) MERGE (c)-[:HAS_METRIC {value: 76784000, year: 2024}]->(m);

// Query 171
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (m:Metric {name: 'Total Dividend Paid'}) MERGE (c)-[:HAS_METRIC {value: 105578000, year: 2023}]->(m);

// Query 172
MATCH (c:Company {name: 'Harischandra Mills PLC'}), (auditor:Company {name: 'KPMG'}) MERGE (c)-[:AUDITED_BY {year: 2024}]->(auditor);

// Total queries: 172
// Generated on: 2025-10-02T18:04:40.588287
