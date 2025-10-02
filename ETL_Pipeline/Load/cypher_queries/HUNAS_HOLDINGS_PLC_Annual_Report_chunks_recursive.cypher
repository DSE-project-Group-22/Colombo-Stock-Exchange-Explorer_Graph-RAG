// Query 1
MERGE (c:Company {name: 'Hunas Holdings PLC'}) ON CREATE SET c.id = 'hunas_holdings_plc', c.founded_on = date('1989-01-01'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 2
MERGE (c:Company {name: 'Kuruganga Hydro (Private) Limited'}) ON CREATE SET c.id = 'kuruganga_hydro_private_limited';

// Query 3
MERGE (c:Company {name: 'Eratne Power Company (Private) Limited'}) ON CREATE SET c.id = 'eratne_power_company_private_limited';

// Query 4
MERGE (c:Company {name: 'Deloitte’s Partner'}) ON CREATE SET c.id = 'deloittes_partner';

// Query 5
MERGE (c:Company {name: 'S S P Corporate Services (Pvt) Ltd'}) ON CREATE SET c.id = 's_s_p_corporate_services_pvt_ltd';

// Query 6
MERGE (c:Company {name: 'Sampath Bank PLC'}) ON CREATE SET c.id = 'sampath_bank_plc';

// Query 7
MERGE (p:Person {name: 'W.S.L.A.D.R. Samarasinghe'}) ON CREATE SET p.id = 'w_s_l_a_d_r_samarasinghe';

// Query 8
MERGE (p:Person {name: 'M.A.A. Atheeq'}) ON CREATE SET p.id = 'm_a_a_atheeq';

// Query 9
MERGE (p:Person {name: 'G.S.M. Irugalbandara'}) ON CREATE SET p.id = 'g_s_m_irugalbandara';

// Query 10
MERGE (p:Person {name: 'P. Wicramanayake'}) ON CREATE SET p.id = 'p_wicramanayake';

// Query 11
MERGE (p:Person {name: 'T. Tanaka'}) ON CREATE SET p.id = 't_tanaka';

// Query 12
MERGE (p:Person {name: 'M Tanaka'}) ON CREATE SET p.id = 'm_tanaka';

// Query 13
MERGE (p:Person {name: 'G. Vinothan'}) ON CREATE SET p.id = 'g_vinothan';

// Query 14
MERGE (p:Person {name: 'H.A.D. Senaratne'}) ON CREATE SET p.id = 'h_a_d_senaratne';

// Query 15
MERGE (p:Person {name: 'Koji Sugimoto'}) ON CREATE SET p.id = 'koji_sugimoto';

// Query 16
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 17
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 18
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 19
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 20
MERGE (prod:Product {name: 'Mini Hydro Power'}) ON CREATE SET prod.id = 'mini_hydro_power';

// Query 21
MERGE (prod:Product {name: 'Packaging Solutions'}) ON CREATE SET prod.id = 'packaging_solutions';

// Query 22
MERGE (prod:Product {name: 'Retail Business Operations'}) ON CREATE SET prod.id = 'retail_business_operations';

// Query 23
MERGE (prod:Product {name: 'Hospitality Services'}) ON CREATE SET prod.id = 'hospitality_services';

// Query 24
MERGE (prod:Product {name: 'Tourism Services'}) ON CREATE SET prod.id = 'tourism_services';

// Query 25
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Other Income'}) ON CREATE SET m.id = 'other_income', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Finance Cost'}) ON CREATE SET m.id = 'finance_cost', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Net Assets Per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Net Assets'}) ON CREATE SET m.id = 'net_assets', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Market Price Per Share'}) ON CREATE SET m.id = 'market_price_per_share', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Highest Market Price'}) ON CREATE SET m.id = 'highest_market_price', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Lowest Market Price'}) ON CREATE SET m.id = 'lowest_market_price', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Return On Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 38
MERGE (m:Metric {name: 'Interest Cover'}) ON CREATE SET m.id = 'interest_cover', m.unit = 'Times';

// Query 39
MERGE (m:Metric {name: 'Gearing Ratio'}) ON CREATE SET m.id = 'gearing_ratio', m.unit = '%';

// Query 40
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 41
MERGE (m:Metric {name: 'Interest Bearing Loans and Borrowings'}) ON CREATE SET m.id = 'interest_bearing_loans_and_borrowings', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Trade and Other Payables'}) ON CREATE SET m.id = 'trade_and_other_payables', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Cash and Cash Equivalents'}) ON CREATE SET m.id = 'cash_and_cash_equivalents', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Net Debt'}) ON CREATE SET m.id = 'net_debt', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Equity'}) ON CREATE SET m.id = 'equity', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Stated Capital'}) ON CREATE SET m.id = 'stated_capital', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Reserves'}) ON CREATE SET m.id = 'reserves', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Retained Earnings'}) ON CREATE SET m.id = 'retained_earnings', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Non Controlling Interest'}) ON CREATE SET m.id = 'non_controlling_interest', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Non-Current Liabilities'}) ON CREATE SET m.id = 'non_current_liabilities', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Current Liabilities'}) ON CREATE SET m.id = 'current_liabilities', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Property Plant and Equipment'}) ON CREATE SET m.id = 'property_plant_and_equipment', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Expenditure on Acquisition of Property Plant and Equipment'}) ON CREATE SET m.id = 'expenditure_on_acquisition_of_property_plant_and_equipment', m.unit = 'Rs';

// Query 54
MERGE (m:Metric {name: 'Revenue from Contracts with Customers'}) ON CREATE SET m.id = 'revenue_from_contracts_with_customers', m.unit = 'Rs';

// Query 55
MATCH (p:Person {name: 'W.S.L.A.D.R. Samarasinghe'}), (c:Company {name: 'Hunas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 56
MATCH (p:Person {name: 'M.A.A. Atheeq'}), (c:Company {name: 'Hunas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 57
MATCH (p:Person {name: 'G.S.M. Irugalbandara'}), (c:Company {name: 'Hunas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 58
MATCH (p:Person {name: 'P. Wicramanayake'}), (c:Company {name: 'Hunas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 59
MATCH (p:Person {name: 'T. Tanaka'}), (c:Company {name: 'Hunas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 60
MATCH (p:Person {name: 'M Tanaka'}), (c:Company {name: 'Hunas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 61
MATCH (p:Person {name: 'G. Vinothan'}), (c:Company {name: 'Hunas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 62
MATCH (p:Person {name: 'G. Vinothan'}), (c:Company {name: 'Hunas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman (Audit Committee)', r.as_of = date('2024-03-31');

// Query 63
MATCH (p:Person {name: 'G. Vinothan'}), (c:Company {name: 'Hunas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member (Remuneration Committee)', r.as_of = date('2024-03-31');

// Query 64
MATCH (p:Person {name: 'H.A.D. Senaratne'}), (c:Company {name: 'Hunas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 65
MATCH (p:Person {name: 'H.A.D. Senaratne'}), (c:Company {name: 'Hunas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member (Audit Committee)', r.as_of = date('2024-03-31');

// Query 66
MATCH (p:Person {name: 'H.A.D. Senaratne'}), (c:Company {name: 'Hunas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman (Remuneration Committee)', r.as_of = date('2024-03-31');

// Query 67
MATCH (p:Person {name: 'Koji Sugimoto'}), (c:Company {name: 'Hunas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 68
MATCH (p:Person {name: 'Koji Sugimoto'}), (c:Company {name: 'Hunas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member (Audit Committee)', r.as_of = date('2024-03-31');

// Query 69
MATCH (p:Person {name: 'Koji Sugimoto'}), (c:Company {name: 'Hunas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member (Remuneration Committee)', r.as_of = date('2024-03-31');

// Query 70
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 71
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 72
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 73
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
MATCH (c:Company {name: 'Kuruganga Hydro (Private) Limited'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 75
MATCH (c:Company {name: 'Eratne Power Company (Private) Limited'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 76
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (prod:Product {name: 'Mini Hydro Power'}) MERGE (c)-[:OFFERS]->(prod);

// Query 77
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (prod:Product {name: 'Packaging Solutions'}) MERGE (c)-[:OFFERS]->(prod);

// Query 78
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (prod:Product {name: 'Retail Business Operations'}) MERGE (c)-[:OFFERS]->(prod);

// Query 79
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (prod:Product {name: 'Hospitality Services'}) MERGE (c)-[:OFFERS]->(prod);

// Query 80
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (prod:Product {name: 'Tourism Services'}) MERGE (c)-[:OFFERS]->(prod);

// Query 81
MATCH (c:Company {name: 'Kuruganga Hydro (Private) Limited'}), (prod:Product {name: 'Mini Hydro Power'}) MERGE (c)-[:OFFERS]->(prod);

// Query 82
MATCH (c:Company {name: 'Eratne Power Company (Private) Limited'}), (prod:Product {name: 'Mini Hydro Power'}) MERGE (c)-[:OFFERS]->(prod);

// Query 83
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 799407223, r.year = 2024;

// Query 84
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 906184246, r.year = 2023;

// Query 85
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20000000, r.year = 2024;

// Query 86
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9000000, r.year = 2023;

// Query 87
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Finance Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -186000000, r.year = 2024;

// Query 88
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Finance Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -137100000, r.year = 2023;

// Query 89
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -436000000, r.year = 2024;

// Query 90
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -398000000, r.year = 2023;

// Query 91
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -474000000, r.year = 2024;

// Query 92
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -412000000, r.year = 2023;

// Query 93
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6562989100, r.year = 2024;

// Query 94
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5550034290, r.year = 2023;

// Query 95
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.1, r.year = 2024;

// Query 96
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.0, r.year = 2023;

// Query 97
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Net Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2581042000, r.year = 2024;

// Query 98
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Net Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2500425000, r.year = 2023;

// Query 99
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.54, r.year = 2024;

// Query 100
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.47, r.year = 2023;

// Query 101
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26.90, r.as_of = date('2024-03-31');

// Query 102
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30.0, r.as_of = date('2023-03-31');

// Query 103
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Highest Market Price'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 32.0, r.year = 2024;

// Query 104
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Lowest Market Price'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21.20, r.year = 2024;

// Query 105
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Lowest Market Price'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21.0, r.year = 2023;

// Query 106
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Return On Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -18.37, r.year = 2024;

// Query 107
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Return On Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -16.47, r.year = 2023;

// Query 108
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.35, r.year = 2024;

// Query 109
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.91, r.year = 2023;

// Query 110
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44.0, r.year = 2024;

// Query 111
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33.0, r.year = 2023;

// Query 112
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.1148, r.year = 2024;

// Query 113
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.128, r.year = 2023;

// Query 114
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Interest Bearing Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1432639461, r.year = 2024;

// Query 115
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Interest Bearing Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1076406282, r.year = 2023;

// Query 116
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Trade and Other Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 628957868, r.year = 2024;

// Query 117
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Trade and Other Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 138267222, r.year = 2023;

// Query 118
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Cash and Cash Equivalents'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19620845, r.year = 2024;

// Query 119
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Cash and Cash Equivalents'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9823222, r.year = 2023;

// Query 120
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Net Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2041976484, r.year = 2024;

// Query 121
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Net Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1204850282, r.year = 2023;

// Query 122
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2581042314, r.year = 2024;

// Query 123
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2500424555, r.year = 2023;

// Query 124
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4468573000, r.year = 2024;

// Query 125
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4336573000, r.year = 2023;

// Query 126
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 531929285, r.year = 2024;

// Query 127
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 531929285, r.year = 2023;

// Query 128
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2838319901, r.year = 2024;

// Query 129
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2401378184, r.year = 2023;

// Query 130
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Non Controlling Interest'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 418859930, r.year = 2024;

// Query 131
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Non Controlling Interest'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33300455, r.year = 2023;

// Query 132
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Non-Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1261744036, r.year = 2024;

// Query 133
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Non-Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1151401764, r.year = 2023;

// Query 134
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1181658146, r.year = 2024;

// Query 135
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 400519279, r.year = 2023;

// Query 136
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Property Plant and Equipment'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4503346469, r.year = 2024;

// Query 137
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Expenditure on Acquisition of Property Plant and Equipment'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 555766040, r.year = 2024;

// Query 138
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 99241067, r.year = 2024, r.description = 'Company Revenue';

// Query 139
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 86194601, r.year = 2023, r.description = 'Company Revenue';

// Query 140
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16000000, r.year = 2024, r.description = 'Company Other Income';

// Query 141
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1000000, r.year = 2023, r.description = 'Company Other Income';

// Query 142
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Finance Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -48800000, r.year = 2024, r.description = 'Company Finance Cost';

// Query 143
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Finance Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -400000, r.year = 2023, r.description = 'Company Finance Cost';

// Query 144
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -59000000, r.year = 2024, r.description = 'Company Profit Before Tax';

// Query 145
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -61000000, r.year = 2023, r.description = 'Company Profit Before Tax';

// Query 146
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -40000000, r.year = 2024, r.description = 'Company Profit After Tax';

// Query 147
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -64000000, r.year = 2023, r.description = 'Company Profit After Tax';

// Query 148
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3843942833, r.year = 2024, r.description = 'Company Total Assets';

// Query 149
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3572706343, r.year = 2023, r.description = 'Company Total Assets';

// Query 150
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.7, r.year = 2024, r.description = 'Company Net Assets Per Share';

// Query 151
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.6, r.year = 2023, r.description = 'Company Net Assets Per Share';

// Query 152
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Net Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3163462000, r.year = 2024, r.description = 'Company Net Assets';

// Query 153
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Net Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3071485000, r.year = 2023, r.description = 'Company Net Assets';

// Query 154
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.05, r.year = 2024, r.description = 'Company Earnings Per Share';

// Query 155
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.08, r.year = 2023, r.description = 'Company Earnings Per Share';

// Query 156
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Return On Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.26, r.year = 2024, r.description = 'Company Return On Equity';

// Query 157
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Return On Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2.10, r.year = 2023, r.description = 'Company Return On Equity';

// Query 158
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.20, r.year = 2024, r.description = 'Company Interest Cover';

// Query 159
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -146.24, r.year = 2023, r.description = 'Company Interest Cover';

// Query 160
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.0, r.year = 2024, r.description = 'Company Gearing Ratio';

// Query 161
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.0, r.year = 2023, r.description = 'Company Gearing Ratio';

// Query 162
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.6075, r.year = 2024, r.description = 'Company Current Ratio';

// Query 163
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.526, r.year = 2023, r.description = 'Company Current Ratio';

// Query 164
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Interest Bearing Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 405313866, r.year = 2024, r.description = 'Company Interest Bearing Loans and Borrowings';

// Query 165
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Interest Bearing Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 119957596, r.year = 2023, r.description = 'Company Interest Bearing Loans and Borrowings';

// Query 166
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Trade and Other Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40502592, r.year = 2024, r.description = 'Company Trade and Other Payables';

// Query 167
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Trade and Other Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 49598892, r.year = 2023, r.description = 'Company Trade and Other Payables';

// Query 168
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Cash and Cash Equivalents'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8155981, r.year = 2024, r.description = 'Company Cash and Cash Equivalents';

// Query 169
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Cash and Cash Equivalents'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6369697, r.year = 2023, r.description = 'Company Cash and Cash Equivalents';

// Query 170
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Net Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 437660477, r.year = 2024, r.description = 'Company Net Debt';

// Query 171
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Net Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 163186791, r.year = 2023, r.description = 'Company Net Debt';

// Query 172
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3163462349, r.year = 2024, r.description = 'Company Equity';

// Query 173
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3071484981, r.year = 2023, r.description = 'Company Equity';

// Query 174
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4468573000, r.year = 2024, r.description = 'Company Stated Capital';

// Query 175
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4336573000, r.year = 2023, r.description = 'Company Stated Capital';

// Query 176
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 531929285, r.year = 2024, r.description = 'Company Reserves';

// Query 177
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 531929285, r.year = 2023, r.description = 'Company Reserves';

// Query 178
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1837039936, r.year = 2024, r.description = 'Company Retained Earnings';

// Query 179
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1797017303, r.year = 2023, r.description = 'Company Retained Earnings';

// Query 180
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Non-Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 231526051, r.year = 2024, r.description = 'Company Non-Current Liabilities';

// Query 181
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Non-Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 250012361, r.year = 2023, r.description = 'Company Non-Current Liabilities';

// Query 182
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 445816458, r.year = 2024, r.description = 'Company Current Liabilities';

// Query 183
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 169556486, r.year = 2023, r.description = 'Company Current Liabilities';

// Query 184
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Property Plant and Equipment'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18410965, r.year = 2024, r.description = 'Company Property Plant and Equipment';

// Query 185
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (m:Metric {name: 'Expenditure on Acquisition of Property Plant and Equipment'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5156864, r.year = 2024, r.description = 'Company Expenditure on Acquisition of Property Plant and Equipment';

// Query 186
MATCH (c:Company {name: 'Eratne Power Company (Private) Limited'}), (m:Metric {name: 'Revenue from Contracts with Customers'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16740674, r.year = 2024;

// Query 187
MATCH (c:Company {name: 'Eratne Power Company (Private) Limited'}), (m:Metric {name: 'Revenue from Contracts with Customers'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20097516, r.year = 2023;

// Query 188
MATCH (c:Company {name: 'Eratne Power Company (Private) Limited'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 318740, r.year = 2024;

// Query 189
MATCH (c:Company {name: 'Eratne Power Company (Private) Limited'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4645900, r.year = 2023;

// Query 190
MATCH (parent:Company {name: 'Hunas Holdings PLC'}), (child:Company {name: 'Kuruganga Hydro (Private) Limited'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 22.0, r.as_of = date('2024-03-31');

// Query 191
MATCH (parent:Company {name: 'Hunas Holdings PLC'}), (child:Company {name: 'Eratne Power Company (Private) Limited'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 20.0, r.as_of = date('2024-03-31');

// Query 192
MATCH (c:Company {name: 'Hunas Holdings PLC'}), (auditor:Company {name: 'Deloitte’s Partner'}) MERGE (c)-[r:AUDITED_BY]->(auditor) ON CREATE SET r.year = 2024;

// Total queries: 192
// Generated on: 2025-10-02T18:59:18.646151
