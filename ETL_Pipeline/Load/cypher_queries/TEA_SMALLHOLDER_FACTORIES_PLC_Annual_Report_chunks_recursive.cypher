// Query 1
MERGE (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) ON CREATE SET c.id = 'tea_smallholder_factories_plc', c.region = 'Sri Lanka';

// Query 2
MERGE (c:Company {name: 'John Keells Holdings PLC'}) ON CREATE SET c.id = 'john_keells_holdings_plc';

// Query 3
MERGE (c:Company {name: 'Central Finance Company PLC'}) ON CREATE SET c.id = 'central_finance_company_plc';

// Query 4
MERGE (c:Company {name: 'T R L Holdings (PVT) Limited'}) ON CREATE SET c.id = 't_r_l_holdings_pvt_limited';

// Query 5
MERGE (c:Company {name: 'Citizens Development Business Finance PLC'}) ON CREATE SET c.id = 'citizens_development_business_finance_plc';

// Query 6
MERGE (c:Company {name: 'Ernst & Young'}) ON CREATE SET c.id = 'ernst_and_young';

// Query 7
MERGE (c:Company {name: 'Growth Edge Investment (Pvt) Ltd'}) ON CREATE SET c.id = 'growth_edge_investment_pvt_ltd';

// Query 8
MERGE (p:Person {name: 'K. N. J. Balendra'}) ON CREATE SET p.id = 'k_n_j_balendra';

// Query 9
MERGE (p:Person {name: 'J. G. A. Cooray'}) ON CREATE SET p.id = 'j_g_a_cooray';

// Query 10
MERGE (p:Person {name: 'A. Z. Hashim'}) ON CREATE SET p.id = 'a_z_hashim';

// Query 11
MERGE (p:Person {name: 'E. H. Wijenaike'}) ON CREATE SET p.id = 'e_h_wijenaike';

// Query 12
MERGE (p:Person {name: 'A. K. Gunaratne'}) ON CREATE SET p.id = 'a_k_gunaratne';

// Query 13
MERGE (p:Person {name: 'A. Goonetilleke'}) ON CREATE SET p.id = 'a_goonetilleke';

// Query 14
MERGE (p:Person {name: 'A. S. Jayatilleka'}) ON CREATE SET p.id = 'a_s_jayatilleka';

// Query 15
MERGE (p:Person {name: 'S. K. L. Obeyesekere'}) ON CREATE SET p.id = 's_k_l_obeyesekere';

// Query 16
MERGE (p:Person {name: 'R. H. Walpola'}) ON CREATE SET p.id = 'r_h_walpola';

// Query 17
MERGE (p:Person {name: 'D. S. A. Samaraweera'}) ON CREATE SET p.id = 'd_s_a_samaraweera';

// Query 18
MERGE (p:Person {name: 'S. M. Sancheevan'}) ON CREATE SET p.id = 's_m_sancheevan';

// Query 19
MERGE (p:Person {name: 'C. N. Pakianathan'}) ON CREATE SET p.id = 'c_n_pakianathan';

// Query 20
MERGE (p:Person {name: 'N. Anoshan'}) ON CREATE SET p.id = 'n_anoshan';

// Query 21
MERGE (p:Person {name: 'H. A. R. Pieris'}) ON CREATE SET p.id = 'h_a_r_pieris';

// Query 22
MERGE (p:Person {name: 'T. Raveenthiran'}) ON CREATE SET p.id = 't_raveenthiran';

// Query 23
MERGE (p:Person {name: 'S. S. Sithambaranathan'}) ON CREATE SET p.id = 's_s_sithambaranathan';

// Query 24
MERGE (p:Person {name: 'Z. G. Carimjee'}) ON CREATE SET p.id = 'z_g_carimjee';

// Query 25
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 26
MERGE (prod:Product {name: 'Black Tea'}) ON CREATE SET prod.id = 'black_tea';

// Query 27
MERGE (prod:Product {name: 'CTC Black Tea'}) ON CREATE SET prod.id = 'ctc_black_tea';

// Query 28
MERGE (prod:Product {name: 'Orthodox Black Tea'}) ON CREATE SET prod.id = 'orthodox_black_tea';

// Query 29
MERGE (m:Metric {name: 'Total Revenue'}) ON CREATE SET m.id = 'total_revenue', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Cost of Sales'}) ON CREATE SET m.id = 'cost_of_sales', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Gross Operating Profit'}) ON CREATE SET m.id = 'gross_operating_profit', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Other Income'}) ON CREATE SET m.id = 'other_income', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Administrative Expenses'}) ON CREATE SET m.id = 'administrative_expenses', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Management Fees'}) ON CREATE SET m.id = 'management_fees', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Operating Activities Result'}) ON CREATE SET m.id = 'operating_activities_result', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Net Finance Income'}) ON CREATE SET m.id = 'net_finance_income', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Change in Fair Value of Investment Property'}) ON CREATE SET m.id = 'change_in_fair_value_of_investment_property', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Tax Expense Reversal'}) ON CREATE SET m.id = 'tax_expense_reversal', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Production'}) ON CREATE SET m.id = 'production', m.unit = 'Kg';

// Query 41
MERGE (m:Metric {name: 'Net Sale Average'}) ON CREATE SET m.id = 'net_sale_average', m.unit = 'Rs/Kg';

// Query 42
MERGE (m:Metric {name: 'Premium over Low Grown Elevation Average'}) ON CREATE SET m.id = 'premium_over_low_grown_elevation_average', m.unit = '%';

// Query 43
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Dividend Paid'}) ON CREATE SET m.id = 'dividend_paid', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 49
MERGE (m:Metric {name: 'EPS Growth'}) ON CREATE SET m.id = 'eps_growth', m.unit = '%';

// Query 50
MERGE (m:Metric {name: 'Price Earning Ratio'}) ON CREATE SET m.id = 'price_earning_ratio', m.unit = 'Times';

// Query 51
MERGE (m:Metric {name: 'Interest Cover'}) ON CREATE SET m.id = 'interest_cover', m.unit = 'Times';

// Query 52
MERGE (m:Metric {name: 'Pre-tax Return on Capital Employed'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed', m.unit = '%';

// Query 53
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 54
MERGE (m:Metric {name: 'EBITDA'}) ON CREATE SET m.id = 'ebitda', m.unit = 'Rs';

// Query 55
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 56
MERGE (m:Metric {name: 'Energy Intensity'}) ON CREATE SET m.id = 'energy_intensity', m.unit = 'GJ/MT';

// Query 57
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 58
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 59
MERGE (m:Metric {name: 'Net Current Assets'}) ON CREATE SET m.id = 'net_current_assets', m.unit = 'Rs';

// Query 60
MERGE (m:Metric {name: 'Current Liabilities'}) ON CREATE SET m.id = 'current_liabilities', m.unit = 'Rs';

// Query 61
MERGE (m:Metric {name: 'Non Current Liabilities'}) ON CREATE SET m.id = 'non_current_liabilities', m.unit = 'Rs';

// Query 62
MERGE (m:Metric {name: 'Capital Employed'}) ON CREATE SET m.id = 'capital_employed', m.unit = 'Rs';

// Query 63
MERGE (m:Metric {name: 'Number of Shares in Issue'}) ON CREATE SET m.id = 'number_of_shares_in_issue', m.unit = 'Count';

// Query 64
MERGE (m:Metric {name: 'Net Assets Per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs';

// Query 65
MERGE (m:Metric {name: 'Market Price Per Share'}) ON CREATE SET m.id = 'market_price_per_share', m.unit = 'Rs';

// Query 66
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Times';

// Query 67
MERGE (m:Metric {name: 'Market Capitalisation'}) ON CREATE SET m.id = 'market_capitalisation', m.unit = 'Rs';

// Query 68
MERGE (m:Metric {name: 'Annual Turnover Growth'}) ON CREATE SET m.id = 'annual_turnover_growth', m.unit = '%';

// Query 69
MERGE (m:Metric {name: 'Quick Asset Ratio'}) ON CREATE SET m.id = 'quick_asset_ratio', m.unit = 'Times';

// Query 70
MERGE (m:Metric {name: 'Dividend Payout Ratio'}) ON CREATE SET m.id = 'dividend_payout_ratio', m.unit = '%';

// Query 71
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 72
MERGE (m:Metric {name: 'Dividend Yield'}) ON CREATE SET m.id = 'dividend_yield', m.unit = '%';

// Query 73
MERGE (m:Metric {name: 'Shareholders Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 74
MERGE (m:Metric {name: 'Stated Capital'}) ON CREATE SET m.id = 'stated_capital', m.unit = 'Rs';

// Query 75
MERGE (m:Metric {name: 'Total Reserves'}) ON CREATE SET m.id = 'total_reserves', m.unit = 'Rs';

// Query 76
MERGE (m:Metric {name: 'Property Plant and Equipment'}) ON CREATE SET m.id = 'property_plant_and_equipment', m.unit = 'Rs';

// Query 77
MERGE (m:Metric {name: 'Capital Expenditure'}) ON CREATE SET m.id = 'capital_expenditure', m.unit = 'Rs';

// Query 78
MERGE (m:Metric {name: 'Green Leaf Production'}) ON CREATE SET m.id = 'green_leaf_production', m.unit = 'Kg';

// Query 79
MERGE (m:Metric {name: 'Biomass Consumption'}) ON CREATE SET m.id = 'biomass_consumption', m.unit = 'M3';

// Query 80
MERGE (m:Metric {name: 'Water Consumption'}) ON CREATE SET m.id = 'water_consumption', m.unit = 'M3';

// Query 81
MERGE (m:Metric {name: 'Workforce Count'}) ON CREATE SET m.id = 'workforce_count', m.unit = 'Count';

// Query 82
MATCH (c1:Company {name: 'John Keells Holdings PLC'}), (c2:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (c1)-[:OWNS]->(c2);

// Query 83
MATCH (c1:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (c2:Company {name: 'Ernst & Young'}) MERGE (c1)-[:AUDITED_BY {year: 2024}]->(c2);

// Query 84
MATCH (p:Person {name: 'K. N. J. Balendra'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairperson', r.as_of = date('2024-03-31');

// Query 85
MATCH (p:Person {name: 'J. G. A. Cooray'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 86
MATCH (p:Person {name: 'A. Z. Hashim'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 87
MATCH (p:Person {name: 'E. H. Wijenaike'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 88
MATCH (p:Person {name: 'A. K. Gunaratne'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 89
MATCH (p:Person {name: 'A. Goonetilleke'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 90
MATCH (p:Person {name: 'A. S. Jayatilleka'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 91
MATCH (p:Person {name: 'S. K. L. Obeyesekere'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 92
MATCH (p:Person {name: 'R. H. Walpola'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'CEO', r.as_of = date('2024-03-31');

// Query 93
MATCH (p:Person {name: 'E. H. Wijenaike'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 10000, r.as_of = date('2024-03-31');

// Query 94
MATCH (p:Person {name: 'E. H. Wijenaike'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 10000, r.as_of = date('2023-03-31');

// Query 95
MATCH (p:Person {name: 'D. S. A. Samaraweera'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 53000, r.pct = 0.18, r.as_of = date('2024-03-31');

// Query 96
MATCH (p:Person {name: 'D. S. A. Samaraweera'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 53000, r.pct = 0.18, r.as_of = date('2023-03-31');

// Query 97
MATCH (p:Person {name: 'S. M. Sancheevan'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 42925, r.pct = 0.14, r.as_of = date('2024-03-31');

// Query 98
MATCH (p:Person {name: 'C. N. Pakianathan'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 37613, r.pct = 0.13, r.as_of = date('2024-03-31');

// Query 99
MATCH (p:Person {name: 'C. N. Pakianathan'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 28152, r.pct = 0.09, r.as_of = date('2023-03-31');

// Query 100
MATCH (p:Person {name: 'H. A. R. Pieris'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 35000, r.pct = 0.12, r.as_of = date('2024-03-31');

// Query 101
MATCH (p:Person {name: 'T. Raveenthiran'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 34500, r.pct = 0.12, r.as_of = date('2024-03-31');

// Query 102
MATCH (p:Person {name: 'S. S. Sithambaranathan'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 28290, r.pct = 0.09, r.as_of = date('2024-03-31');

// Query 103
MATCH (p:Person {name: 'S. S. Sithambaranathan'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 8888, r.pct = 0.02, r.as_of = date('2023-03-31');

// Query 104
MATCH (p:Person {name: 'Z. G. Carimjee'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 25000, r.pct = 0.08, r.as_of = date('2024-03-31');

// Query 105
MATCH (p:Person {name: 'Z. G. Carimjee'}), (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 25000, r.pct = 0.08, r.as_of = date('2023-03-31');

// Query 106
MATCH (c1:Company {name: 'T R L Holdings (PVT) Limited'}), (c2:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (c1)-[r:OWNS_SHARES]->(c2) ON CREATE SET r.count = 47632, r.pct = 0.16, r.as_of = date('2024-03-31');

// Query 107
MATCH (c1:Company {name: 'T R L Holdings (PVT) Limited'}), (c2:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (c1)-[r:OWNS_SHARES]->(c2) ON CREATE SET r.count = 41511, r.pct = 0.14, r.as_of = date('2023-03-31');

// Query 108
MATCH (c1:Company {name: 'Citizens Development Business Finance PLC'}), (c2:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (c1)-[r:OWNS_SHARES]->(c2) ON CREATE SET r.count = 37191, r.pct = 0.12, r.as_of = date('2024-03-31');

// Query 109
MATCH (c1:Company {name: 'Growth Edge Investment (Pvt) Ltd'}), (c2:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}) MERGE (c1)-[r:OWNS_SHARES]->(c2) ON CREATE SET r.count = 31652, r.pct = 0.11, r.as_of = date('2024-03-31');

// Query 110
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 111
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (prod:Product {name: 'Black Tea'}) MERGE (c)-[:OFFERS]->(prod);

// Query 112
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (prod:Product {name: 'CTC Black Tea'}) MERGE (c)-[:OFFERS]->(prod);

// Query 113
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (prod:Product {name: 'Orthodox Black Tea'}) MERGE (c)-[:OFFERS]->(prod);

// Query 114
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3055960000, r.year = 2024;

// Query 115
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3743939000, r.year = 2023;

// Query 116
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2018797000, r.year = 2022;

// Query 117
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2346224000, r.year = 2021;

// Query 118
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2109139000, r.year = 2020;

// Query 119
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Cost of Sales'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -3094974000, r.year = 2024;

// Query 120
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Cost of Sales'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -3332924000, r.year = 2023;

// Query 121
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Cost of Sales'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2029365000, r.year = 2022;

// Query 122
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Cost of Sales'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2256953000, r.year = 2021;

// Query 123
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Cost of Sales'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2093028000, r.year = 2020;

// Query 124
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Gross Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -39014000, r.year = 2024;

// Query 125
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Gross Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 411015000, r.year = 2023;

// Query 126
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Gross Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -10568000, r.year = 2022;

// Query 127
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Gross Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 89271000, r.year = 2021;

// Query 128
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Gross Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16111000, r.year = 2020;

// Query 129
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 159989000, r.year = 2024;

// Query 130
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 152646000, r.year = 2023;

// Query 131
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 88258000, r.year = 2022;

// Query 132
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 60987000, r.year = 2021;

// Query 133
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 55283000, r.year = 2020;

// Query 134
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Administrative Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -145761000, r.year = 2024;

// Query 135
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Administrative Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -106191000, r.year = 2023;

// Query 136
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Administrative Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -62919000, r.year = 2022;

// Query 137
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Administrative Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -54788000, r.year = 2021;

// Query 138
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Administrative Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -62074000, r.year = 2020;

// Query 139
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Management Fees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -22705000, r.year = 2024;

// Query 140
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Management Fees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -66085000, r.year = 2023;

// Query 141
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Management Fees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -15028000, r.year = 2022;

// Query 142
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Management Fees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -23274000, r.year = 2021;

// Query 143
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Management Fees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -17680000, r.year = 2020;

// Query 144
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Operating Activities Result'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -47491000, r.year = 2024;

// Query 145
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Operating Activities Result'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 391385000, r.year = 2023;

// Query 146
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Operating Activities Result'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -257000, r.year = 2022;

// Query 147
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Operating Activities Result'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 72197000, r.year = 2021;

// Query 148
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Operating Activities Result'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -8360000, r.year = 2020;

// Query 149
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -14411000, r.year = 2024;

// Query 150
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 28779000, r.year = 2023;

// Query 151
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7195000, r.year = 2022;

// Query 152
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8764000, r.year = 2021;

// Query 153
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1000, r.year = 2020;

// Query 154
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Change in Fair Value of Investment Property'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 42214000, r.year = 2024;

// Query 155
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Change in Fair Value of Investment Property'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 20462000, r.year = 2023;

// Query 156
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Change in Fair Value of Investment Property'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 15719000, r.year = 2022;

// Query 157
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Change in Fair Value of Investment Property'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2371000, r.year = 2021;

// Query 158
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Change in Fair Value of Investment Property'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 39297000, r.year = 2020;

// Query 159
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -19688000, r.year = 2024;

// Query 160
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 440626000, r.year = 2023;

// Query 161
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 22657000, r.year = 2022;

// Query 162
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 78589000, r.year = 2021;

// Query 163
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 30938000, r.year = 2020;

// Query 164
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Tax Expense Reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 25917000, r.year = 2024;

// Query 165
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Tax Expense Reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -162131000, r.year = 2023;

// Query 166
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Tax Expense Reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -7346000, r.year = 2022;

// Query 167
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Tax Expense Reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -12045000, r.year = 2021;

// Query 168
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Tax Expense Reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 73149000, r.year = 2020;

// Query 169
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Production'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2394000, r.year = 2024;

// Query 170
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Production'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2463000, r.year = 2023;

// Query 171
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Production'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2966000, r.year = 2022;

// Query 172
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Sale Average'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1226.34, r.year = 2024;

// Query 173
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Sale Average'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1554.58, r.year = 2023;

// Query 174
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Sale Average'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 653.67, r.year = 2022;

// Query 175
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Premium over Low Grown Elevation Average'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.65, r.year = 2024;

// Query 176
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Premium over Low Grown Elevation Average'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5.33, r.year = 2023;

// Query 177
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Premium over Low Grown Elevation Average'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.7, r.year = 2022;

// Query 178
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3055960000, r.year = 2024;

// Query 179
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3743939000, r.year = 2023;

// Query 180
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2018797000, r.year = 2022;

// Query 181
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -47491000, r.year = 2024;

// Query 182
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 391385000, r.year = 2023;

// Query 183
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -257000, r.year = 2022;

// Query 184
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6229000, r.year = 2024;

// Query 185
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 278495000, r.year = 2023;

// Query 186
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 15311000, r.year = 2022;

// Query 187
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.21, r.year = 2024;

// Query 188
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9.28, r.year = 2023;

// Query 189
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.51, r.year = 2022;

// Query 190
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Dividend Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 200100000, r.year = 2023;

// Query 191
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Dividend Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 30000000, r.year = 2022;

// Query 192
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.28, r.year = 2024;

// Query 193
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12.08, r.year = 2023;

// Query 194
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.81, r.year = 2022;

// Query 195
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'EPS Growth'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -98.0, r.year = 2024;

// Query 196
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'EPS Growth'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1719.0, r.year = 2023;

// Query 197
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'EPS Growth'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -77.0, r.year = 2022;

// Query 198
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Price Earning Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 199.9, r.year = 2024;

// Query 199
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Price Earning Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.7, r.year = 2023;

// Query 200
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Price Earning Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 53.1, r.year = 2022;

// Query 201
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.1, r.year = 2024;

// Query 202
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 312.7, r.year = 2023;

// Query 203
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 848.1, r.year = 2022;

// Query 204
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Pre-tax Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2.5, r.year = 2024;

// Query 205
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Pre-tax Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 27.2, r.year = 2023;

// Query 206
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Pre-tax Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.5, r.year = 2022;

// Query 207
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.38, r.year = 2024;

// Query 208
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 17.2, r.year = 2023;

// Query 209
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.0, r.year = 2022;

// Query 210
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'EBITDA'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 78570000.0, r.year = 2024;

// Query 211
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.21, r.year = 2024;

// Query 212
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Energy Intensity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10.59, r.year = 2024;

// Query 213
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2220447000, r.year = 2024;

// Query 214
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2305083000, r.year = 2023;

// Query 215
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1883609000, r.year = 2022;

// Query 216
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1673332000, r.year = 2024;

// Query 217
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1618868000, r.year = 2023;

// Query 218
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1515671000, r.year = 2022;

// Query 219
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 241029000, r.year = 2024;

// Query 220
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 291727000, r.year = 2023;

// Query 221
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 326694000, r.year = 2022;

// Query 222
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 200061000, r.year = 2024;

// Query 223
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 362973000, r.year = 2023;

// Query 224
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 218809000, r.year = 2022;

// Query 225
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Non Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 347054000, r.year = 2024;

// Query 226
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Non Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 323242000, r.year = 2023;

// Query 227
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Non Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 149129000, r.year = 2022;

// Query 228
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1697588000, r.year = 2024;

// Query 229
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1619630000, r.year = 2023;

// Query 230
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1517754000, r.year = 2022;

// Query 231
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Number of Shares in Issue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 30000000, r.year = 2024;

// Query 232
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Number of Shares in Issue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 30000000, r.year = 2023;

// Query 233
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Number of Shares in Issue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 30000000, r.year = 2022;

// Query 234
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Number of Shares in Issue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 30000000, r.year = 2021;

// Query 235
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Number of Shares in Issue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 30000000, r.year = 2020;

// Query 236
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 55.78, r.year = 2024;

// Query 237
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 53.96, r.year = 2023;

// Query 238
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 50.52, r.year = 2022;

// Query 239
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 48.26, r.year = 2021;

// Query 240
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 47.3, r.year = 2020;

// Query 241
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 41.5, r.year = 2024;

// Query 242
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 44.0, r.year = 2023;

// Query 243
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 27.1, r.year = 2022;

// Query 244
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 41.0, r.year = 2021;

// Query 245
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19.1, r.year = 2020;

// Query 246
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.01, r.year = 2024;

// Query 247
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2023;

// Query 248
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2022;

// Query 249
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Market Capitalisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1245000000, r.year = 2024;

// Query 250
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Market Capitalisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1320000000, r.year = 2023;

// Query 251
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Market Capitalisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 813000000, r.year = 2022;

// Query 252
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Market Capitalisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1230000000, r.year = 2021;

// Query 253
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Market Capitalisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 573000000, r.year = 2020;

// Query 254
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Annual Turnover Growth'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -18.38, r.year = 2024;

// Query 255
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Annual Turnover Growth'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 85.45, r.year = 2023;

// Query 256
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Annual Turnover Growth'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -13.96, r.year = 2022;

// Query 257
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.8, r.year = 2023;

// Query 258
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.49, r.year = 2022;

// Query 259
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Quick Asset Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.51, r.year = 2024;

// Query 260
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Quick Asset Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.45, r.year = 2023;

// Query 261
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Quick Asset Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.39, r.year = 2022;

// Query 262
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.22, r.year = 2021;

// Query 263
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.47, r.year = 2020;

// Query 264
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'EPS Growth'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -36.0, r.year = 2021;

// Query 265
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'EPS Growth'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 103.0, r.year = 2020;

// Query 266
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Price Earning Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 18.5, r.year = 2021;

// Query 267
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Price Earning Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5.5, r.year = 2020;

// Query 268
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 71.9, r.year = 2023;

// Query 269
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 195.9, r.year = 2022;

// Query 270
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 67.6, r.year = 2021;

// Query 271
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 49.0, r.year = 2020;

// Query 272
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Pre-tax Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5.5, r.year = 2021;

// Query 273
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Pre-tax Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.6, r.year = 2020;

// Query 274
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.6, r.year = 2021;

// Query 275
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7.7, r.year = 2020;

// Query 276
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2024;

// Query 277
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6.67, r.year = 2023;

// Query 278
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.0, r.year = 2022;

// Query 279
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.5, r.year = 2021;

// Query 280
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.7, r.year = 2020;

// Query 281
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Dividend Yield'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 15.16, r.year = 2023;

// Query 282
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Dividend Yield'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.69, r.year = 2022;

// Query 283
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Dividend Yield'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.7, r.year = 2021;

// Query 284
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Dividend Yield'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.9, r.year = 2020;

// Query 285
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1673000000, r.year = 2024;

// Query 286
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 150000000, r.year = 2024;

// Query 287
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 150000000, r.year = 2023;

// Query 288
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Total Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1523000000, r.year = 2024;

// Query 289
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Total Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1469000000, r.year = 2023;

// Query 290
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Property Plant and Equipment'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 970000000, r.year = 2024;

// Query 291
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Capital Expenditure'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 95000000, r.year = 2024;

// Query 292
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Green Leaf Production'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11820000.0, r.year = 2024;

// Query 293
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Biomass Consumption'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14886.0, r.year = 2024;

// Query 294
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Water Consumption'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8904.0, r.year = 2024;

// Query 295
MATCH (c:Company {name: 'TEA SMALLHOLDER FACTORIES PLC'}), (m:Metric {name: 'Workforce Count'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 323, r.year = 2024;

// Total queries: 295
// Generated on: 2025-10-02T18:27:58.995258
