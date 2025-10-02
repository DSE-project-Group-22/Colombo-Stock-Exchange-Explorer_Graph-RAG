// Query 1
MERGE (c:Company {name: 'LVL Energy Fund PLC'}) ON CREATE SET c.id = 'lvl_energy_fund_plc', c.region = 'Sri Lanka';

// Query 2
MERGE (c:Company {name: 'Lanka Ventures PLC'}) ON CREATE SET c.id = 'lanka_ventures_plc', c.region = 'Sri Lanka';

// Query 3
MERGE (c:Company {name: 'Acuity Partners (Private) Limited'}) ON CREATE SET c.id = 'acuity_partners_private_limited', c.region = 'Sri Lanka';

// Query 4
MERGE (c:Company {name: 'Hatton National Bank PLC'}) ON CREATE SET c.id = 'hatton_national_bank_plc', c.region = 'Sri Lanka';

// Query 5
MERGE (c:Company {name: 'DFCC Bank PLC'}) ON CREATE SET c.id = 'dfcc_bank_plc', c.region = 'Sri Lanka';

// Query 6
MERGE (c:Company {name: 'KPMG'}) ON CREATE SET c.id = 'kpmg';

// Query 7
MERGE (c:Company {name: 'Lanka Energy International (Private) Limited'}) ON CREATE SET c.id = 'lanka_energy_international_private_limited', c.region = 'Sri Lanka';

// Query 8
MERGE (c:Company {name: 'Sapthakanya Hydro Electric Company (Private) Limited'}) ON CREATE SET c.id = 'sapthakanya_hydro_electric_company_private_limited', c.region = 'Sri Lanka';

// Query 9
MERGE (c:Company {name: 'Pupulaketiya Mini Hydro Power (Private) Limited'}) ON CREATE SET c.id = 'pupulaketiya_mini_hydro_power_private_limited', c.region = 'Sri Lanka';

// Query 10
MERGE (c:Company {name: 'Unit Energy Lanka (Private) Limited'}) ON CREATE SET c.id = 'unit_energy_lanka_private_limited', c.region = 'Sri Lanka';

// Query 11
MERGE (c:Company {name: 'Campion Hydro (Private) Ltd'}) ON CREATE SET c.id = 'campion_hydro_private_ltd', c.region = 'Sri Lanka';

// Query 12
MERGE (c:Company {name: 'Solar Energy Investments (Private) Ltd'}) ON CREATE SET c.id = 'solar_energy_investments_private_ltd', c.region = 'Sri Lanka';

// Query 13
MERGE (c:Company {name: 'Harsha International (Private) Limited'}) ON CREATE SET c.id = 'harsha_international_private_limited';

// Query 14
MERGE (c:Company {name: 'S & N Power Kithulgala Mini Hydro (Private) Limited'}) ON CREATE SET c.id = 's_n_power_kithulgala_mini_hydro_private_limited';

// Query 15
MERGE (c:Company {name: 'Rivolka Energy (Private) Limited'}) ON CREATE SET c.id = 'rivolka_energy_private_limited';

// Query 16
MERGE (c:Company {name: 'Tilara Hydro (Private) Limited'}) ON CREATE SET c.id = 'tilara_hydro_private_limited';

// Query 17
MERGE (p:Person {name: 'P.G.D.B. Pallewatte'}) ON CREATE SET p.id = 'p_g_d_b_pallewatte';

// Query 18
MERGE (p:Person {name: 'M.A. Wijetunge'}) ON CREATE SET p.id = 'm_a_wijetunge';

// Query 19
MERGE (p:Person {name: 'M.R. Abeywardena'}) ON CREATE SET p.id = 'm_r_abeywardena';

// Query 20
MERGE (p:Person {name: 'M.M. Wijetunge'}) ON CREATE SET p.id = 'm_m_wijetunge';

// Query 21
MERGE (p:Person {name: 'J.D.N. Kekulawala'}) ON CREATE SET p.id = 'j_d_n_kekulawala';

// Query 22
MERGE (p:Person {name: 'K.C.S. Dharmawardana'}) ON CREATE SET p.id = 'k_c_s_dharmawardana';

// Query 23
MERGE (p:Person {name: 'R.A. Dassanayake'}) ON CREATE SET p.id = 'r_a_dassanayake';

// Query 24
MERGE (p:Person {name: 'A.G.R. Dissanayake'}) ON CREATE SET p.id = 'a_g_r_dissanayake';

// Query 25
MERGE (p:Person {name: 'N.H.T.I. Perera'}) ON CREATE SET p.id = 'n_h_t_i_perera';

// Query 26
MERGE (p:Person {name: 'W.P.K. Jayawardana'}) ON CREATE SET p.id = 'w_p_k_jayawardana';

// Query 27
MERGE (p:Person {name: 'J.P. Gamage'}) ON CREATE SET p.id = 'j_p_gamage';

// Query 28
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 29
MERGE (prod:Product {name: 'Hydro Power'}) ON CREATE SET prod.id = 'hydro_power';

// Query 30
MERGE (prod:Product {name: 'Wind Power'}) ON CREATE SET prod.id = 'wind_power';

// Query 31
MERGE (prod:Product {name: 'Solar Power'}) ON CREATE SET prod.id = 'solar_power';

// Query 32
MERGE (prod:Product {name: 'Thermal Power'}) ON CREATE SET prod.id = 'thermal_power';

// Query 33
MERGE (prod:Product {name: 'Mini Hydropower Stations'}) ON CREATE SET prod.id = 'mini_hydropower_stations';

// Query 34
MERGE (prod:Product {name: 'Electricity Supply'}) ON CREATE SET prod.id = 'electricity_supply';

// Query 35
MERGE (m:Metric {name: 'Interest Income'}) ON CREATE SET m.id = 'interest_income', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Subsidiary Company Income'}) ON CREATE SET m.id = 'subsidiary_company_income', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Total Income'}) ON CREATE SET m.id = 'total_income', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Share of Profit from Associates'}) ON CREATE SET m.id = 'share_of_profit_from_associates', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Shareholders Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Interest Bearing Borrowings'}) ON CREATE SET m.id = 'interest_bearing_borrowings', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Net Assets Per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Return On Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 48
MERGE (m:Metric {name: 'Interest Cover Ratio'}) ON CREATE SET m.id = 'interest_cover_ratio', m.unit = 'Times';

// Query 49
MERGE (m:Metric {name: 'Dividend Payout Ratio'}) ON CREATE SET m.id = 'dividend_payout_ratio', m.unit = '%';

// Query 50
MERGE (m:Metric {name: 'Return On Total Assets'}) ON CREATE SET m.id = 'return_on_total_assets', m.unit = '%';

// Query 51
MERGE (m:Metric {name: 'Total Debt To Equity Ratio'}) ON CREATE SET m.id = 'total_debt_to_equity_ratio', m.unit = '%';

// Query 52
MERGE (m:Metric {name: 'P/E Ratio'}) ON CREATE SET m.id = 'p_e_ratio', m.unit = 'Ratio';

// Query 53
MERGE (m:Metric {name: 'Price To Book Value Ratio'}) ON CREATE SET m.id = 'price_to_book_value_ratio', m.unit = 'Ratio';

// Query 54
MERGE (m:Metric {name: 'Dividend Yield'}) ON CREATE SET m.id = 'dividend_yield', m.unit = '%';

// Query 55
MERGE (m:Metric {name: 'Market Price Per Share'}) ON CREATE SET m.id = 'market_price_per_share', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Profit Attributable To Equity Holders'}) ON CREATE SET m.id = 'profit_attributable_to_equity_holders', m.unit = 'Rs';

// Query 57
MERGE (m:Metric {name: 'Property, Plant And Equipment'}) ON CREATE SET m.id = 'property_plant_and_equipment', m.unit = 'Rs';

// Query 58
MERGE (m:Metric {name: 'Investment In Equity Accounted Investees'}) ON CREATE SET m.id = 'investment_in_equity_accounted_investees', m.unit = 'Rs';

// Query 59
MERGE (m:Metric {name: 'Intangible Assets'}) ON CREATE SET m.id = 'intangible_assets', m.unit = 'Rs';

// Query 60
MERGE (m:Metric {name: 'Other Income'}) ON CREATE SET m.id = 'other_income', m.unit = 'Rs';

// Query 61
MERGE (m:Metric {name: 'Other Operating Expenses'}) ON CREATE SET m.id = 'other_operating_expenses', m.unit = 'Rs';

// Query 62
MERGE (m:Metric {name: 'Direct Expenses - Subsidiaries'}) ON CREATE SET m.id = 'direct_expenses_subsidiaries', m.unit = 'Rs';

// Query 63
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 64
MERGE (m:Metric {name: 'Stated Capital'}) ON CREATE SET m.id = 'stated_capital', m.unit = 'Rs';

// Query 65
MERGE (m:Metric {name: 'Revaluation Reserve'}) ON CREATE SET m.id = 'revaluation_reserve', m.unit = 'Rs';

// Query 66
MERGE (m:Metric {name: 'Translation Reserve'}) ON CREATE SET m.id = 'translation_reserve', m.unit = 'Rs';

// Query 67
MERGE (m:Metric {name: 'Cash Flow Hedge Reserve'}) ON CREATE SET m.id = 'cash_flow_hedge_reserve', m.unit = 'Rs';

// Query 68
MERGE (m:Metric {name: 'Retained Earnings'}) ON CREATE SET m.id = 'retained_earnings', m.unit = 'Rs';

// Query 69
MERGE (m:Metric {name: 'Non Controlling Interest'}) ON CREATE SET m.id = 'non_controlling_interest', m.unit = 'Rs';

// Query 70
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 71
MERGE (m:Metric {name: 'Non Current Borrowings'}) ON CREATE SET m.id = 'non_current_borrowings', m.unit = 'Rs';

// Query 72
MERGE (m:Metric {name: 'Deferred Tax Liability'}) ON CREATE SET m.id = 'deferred_tax_liability', m.unit = 'Rs';

// Query 73
MERGE (m:Metric {name: 'Total Non Current Liabilities'}) ON CREATE SET m.id = 'total_non_current_liabilities', m.unit = 'Rs';

// Query 74
MERGE (m:Metric {name: 'Current Borrowings'}) ON CREATE SET m.id = 'current_borrowings', m.unit = 'Rs';

// Query 75
MERGE (m:Metric {name: 'Total Current Liabilities'}) ON CREATE SET m.id = 'total_current_liabilities', m.unit = 'Rs';

// Query 76
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs';

// Query 77
MATCH (p:Person {name: 'P.G.D.B. Pallewatte'}), (c:Company {name: 'LVL Energy Fund PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 78
MATCH (p:Person {name: 'M.A. Wijetunge'}), (c:Company {name: 'LVL Energy Fund PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 79
MATCH (p:Person {name: 'M.R. Abeywardena'}), (c:Company {name: 'LVL Energy Fund PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 80
MATCH (p:Person {name: 'M.M. Wijetunge'}), (c:Company {name: 'LVL Energy Fund PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 81
MATCH (p:Person {name: 'J.D.N. Kekulawala'}), (c:Company {name: 'LVL Energy Fund PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 82
MATCH (p:Person {name: 'K.C.S. Dharmawardana'}), (c:Company {name: 'LVL Energy Fund PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 83
MATCH (p:Person {name: 'R.A. Dassanayake'}), (c:Company {name: 'LVL Energy Fund PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 84
MATCH (p:Person {name: 'A.G.R. Dissanayake'}), (c:Company {name: 'LVL Energy Fund PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 85
MATCH (p:Person {name: 'N.H.T.I. Perera'}), (c:Company {name: 'LVL Energy Fund PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 86
MATCH (p:Person {name: 'W.P.K. Jayawardana'}), (c:Company {name: 'LVL Energy Fund PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 87
MATCH (p:Person {name: 'J.P. Gamage'}), (c:Company {name: 'LVL Energy Fund PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 88
MATCH (p:Person {name: 'M.A. Wijetunge'}), (c:Company {name: 'LVL Energy Fund PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 67911668, r.as_of = date('2024-03-31');

// Query 89
MATCH (p:Person {name: 'M.M. Wijetunge'}), (c:Company {name: 'LVL Energy Fund PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 3746104, r.as_of = date('2024-03-31');

// Query 90
MATCH (p:Person {name: 'J.D.N. Kekulawala'}), (c:Company {name: 'LVL Energy Fund PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 500000, r.as_of = date('2024-03-31');

// Query 91
MATCH (p:Person {name: 'R.A. Dassanayake'}), (c:Company {name: 'LVL Energy Fund PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1, r.as_of = date('2024-03-31');

// Query 92
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 93
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (prod:Product {name: 'Hydro Power'}) MERGE (c)-[:OFFERS]->(prod);

// Query 94
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (prod:Product {name: 'Wind Power'}) MERGE (c)-[:OFFERS]->(prod);

// Query 95
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (prod:Product {name: 'Solar Power'}) MERGE (c)-[:OFFERS]->(prod);

// Query 96
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (prod:Product {name: 'Thermal Power'}) MERGE (c)-[:OFFERS]->(prod);

// Query 97
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (prod:Product {name: 'Mini Hydropower Stations'}) MERGE (c)-[:OFFERS]->(prod);

// Query 98
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (prod:Product {name: 'Electricity Supply'}) MERGE (c)-[:OFFERS]->(prod);

// Query 99
MATCH (parent:Company {name: 'Lanka Ventures PLC'}), (child:Company {name: 'LVL Energy Fund PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 57.0, r.as_of = date('2024-03-31');

// Query 100
MATCH (parent:Company {name: 'Acuity Partners (Private) Limited'}), (child:Company {name: 'Lanka Ventures PLC'}) MERGE (parent)-[:OWNS]->(child);

// Query 101
MATCH (parent:Company {name: 'Hatton National Bank PLC'}), (child:Company {name: 'Acuity Partners (Private) Limited'}) MERGE (parent)-[:OWNS]->(child);

// Query 102
MATCH (parent:Company {name: 'DFCC Bank PLC'}), (child:Company {name: 'Acuity Partners (Private) Limited'}) MERGE (parent)-[:OWNS]->(child);

// Query 103
MATCH (parent:Company {name: 'LVL Energy Fund PLC'}), (child:Company {name: 'Lanka Energy International (Private) Limited'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 104
MATCH (parent:Company {name: 'LVL Energy Fund PLC'}), (child:Company {name: 'Sapthakanya Hydro Electric Company (Private) Limited'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 85.0, r.as_of = date('2024-03-31');

// Query 105
MATCH (parent:Company {name: 'LVL Energy Fund PLC'}), (child:Company {name: 'Pupulaketiya Mini Hydro Power (Private) Limited'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 106
MATCH (parent:Company {name: 'LVL Energy Fund PLC'}), (child:Company {name: 'Unit Energy Lanka (Private) Limited'}) MERGE (parent)-[:OWNS]->(child);

// Query 107
MATCH (parent:Company {name: 'LVL Energy Fund PLC'}), (child:Company {name: 'Campion Hydro (Private) Ltd'}) MERGE (parent)-[:OWNS]->(child);

// Query 108
MATCH (parent:Company {name: 'LVL Energy Fund PLC'}), (child:Company {name: 'Solar Energy Investments (Private) Ltd'}) MERGE (parent)-[:OWNS]->(child);

// Query 109
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (auditor:Company {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(auditor) ON CREATE SET r.year = 2024;

// Query 110
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14000000.0, r.year = 2024;

// Query 111
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19000000.0, r.year = 2023;

// Query 112
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Subsidiary Company Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 419000000.0, r.year = 2024;

// Query 113
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Subsidiary Company Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 281000000.0, r.year = 2023;

// Query 114
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Total Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 486000000.0, r.year = 2024;

// Query 115
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Total Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 301000000.0, r.year = 2023;

// Query 116
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Share of Profit from Associates'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 256000000.0, r.year = 2024;

// Query 117
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Share of Profit from Associates'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 444000000.0, r.year = 2023;

// Query 118
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -12000000.0, r.year = 2024;

// Query 119
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -171000000.0, r.year = 2023;

// Query 120
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -66000000.0, r.year = 2024;

// Query 121
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -319000000.0, r.year = 2023;

// Query 122
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5215000000.0, r.year = 2024;

// Query 123
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6077000000.0, r.year = 2023;

// Query 124
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Interest Bearing Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3453000000.0, r.year = 2024;

// Query 125
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Interest Bearing Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3554000000.0, r.year = 2023;

// Query 126
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8960000000.0, r.year = 2024;

// Query 127
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9912000000.0, r.year = 2023;

// Query 128
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.17, r.year = 2024;

// Query 129
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.45, r.year = 2023;

// Query 130
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2024;

// Query 131
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2023;

// Query 132
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.96, r.year = 2024;

// Query 133
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10.44, r.year = 2023;

// Query 134
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Return On Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1.71, r.year = 2024;

// Query 135
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Return On Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -3.67, r.year = 2023;

// Query 136
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Interest Cover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.98, r.year = 2024;

// Query 137
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Interest Cover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.75, r.year = 2023;

// Query 138
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2024;

// Query 139
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2023;

// Query 140
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Return On Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.7, r.year = 2024;

// Query 141
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Return On Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2.9, r.year = 2023;

// Query 142
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Total Debt To Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 64.28, r.year = 2024;

// Query 143
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Total Debt To Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 57.02, r.year = 2023;

// Query 144
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'P/E Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -27.12, r.year = 2024;

// Query 145
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'P/E Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -14.85, r.year = 2023;

// Query 146
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Price To Book Value Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.5, r.year = 2024;

// Query 147
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Price To Book Value Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.64, r.year = 2023;

// Query 148
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Dividend Yield'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2024;

// Query 149
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Dividend Yield'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2023;

// Query 150
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.5, r.year = 2024;

// Query 151
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6.7, r.year = 2023;

// Query 152
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Profit Attributable To Equity Holders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -96632000.0, r.year = 2024;

// Query 153
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Profit Attributable To Equity Holders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -262677000.0, r.year = 2023;

// Query 154
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Property, Plant And Equipment'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1528134000.0, r.year = 2024;

// Query 155
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Property, Plant And Equipment'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1608553000.0, r.year = 2023;

// Query 156
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Investment In Equity Accounted Investees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6525407000.0, r.year = 2024;

// Query 157
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Investment In Equity Accounted Investees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7131459000.0, r.year = 2023;

// Query 158
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Intangible Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 120403000.0, r.year = 2024;

// Query 159
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Intangible Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 125307000.0, r.year = 2023;

// Query 160
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 53542000.0, r.year = 2024;

// Query 161
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Other Operating Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -69663000.0, r.year = 2024;

// Query 162
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Direct Expenses - Subsidiaries'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -198090000.0, r.year = 2024;

// Query 163
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 218590000.0, r.year = 2024;

// Query 164
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2906472000.0, r.year = 2024;

// Query 165
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2906472000.0, r.year = 2023;

// Query 166
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Revaluation Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9101000.0, r.year = 2024;

// Query 167
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Revaluation Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9101000.0, r.year = 2023;

// Query 168
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Translation Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1982432000.0, r.year = 2024;

// Query 169
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Translation Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2671520000.0, r.year = 2023;

// Query 170
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Cash Flow Hedge Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1211575000.0, r.year = 2024;

// Query 171
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Cash Flow Hedge Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1135151000.0, r.year = 2023;

// Query 172
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1528642000.0, r.year = 2024;

// Query 173
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1625274000.0, r.year = 2023;

// Query 174
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Non Controlling Interest'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 156596000.0, r.year = 2024;

// Query 175
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Non Controlling Interest'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 156169000.0, r.year = 2023;

// Query 176
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5371668000.0, r.year = 2024;

// Query 177
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6233385000.0, r.year = 2023;

// Query 178
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Non Current Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2881315000.0, r.year = 2024;

// Query 179
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Non Current Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2004797000.0, r.year = 2023;

// Query 180
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Deferred Tax Liability'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 74781000.0, r.year = 2024;

// Query 181
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Total Non Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2956096000.0, r.year = 2024;

// Query 182
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Current Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 571475000.0, r.year = 2024;

// Query 183
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Current Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 484290000.0, r.year = 2023;

// Query 184
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Total Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 632196000.0, r.year = 2024;

// Query 185
MATCH (c:Company {name: 'LVL Energy Fund PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8959960000.0, r.year = 2024;

// Total queries: 185
// Generated on: 2025-10-02T19:40:31.648503
