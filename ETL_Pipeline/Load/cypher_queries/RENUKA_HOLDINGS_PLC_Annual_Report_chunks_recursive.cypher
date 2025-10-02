// Query 1
MERGE (c:Company {name: 'Renuka Holdings PLC'}) ON CREATE SET c.id = 'renuka_holdings_plc', c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 2
MERGE (c:Company {name: 'Renuka Agro Exports (Pvt) Ltd'}) ON CREATE SET c.id = 'renuka_agro_exports_pvt_ltd';

// Query 3
MERGE (c:Company {name: 'Renuka Enterprises (Pvt) Ltd'}) ON CREATE SET c.id = 'renuka_enterprises_pvt_ltd';

// Query 4
MERGE (c:Company {name: 'Shaw Wallace & Hedges Ltd'}) ON CREATE SET c.id = 'shaw_wallace_hedges_ltd';

// Query 5
MERGE (c:Company {name: 'Renuka Agri Foods PLC'}) ON CREATE SET c.id = 'renuka_agri_foods_plc';

// Query 6
MERGE (c:Company {name: 'Shaw Wallace Ceylon Ltd'}) ON CREATE SET c.id = 'shaw_wallace_ceylon_ltd';

// Query 7
MERGE (c:Company {name: 'Richlife Dairies Ltd'}) ON CREATE SET c.id = 'richlife_dairies_ltd';

// Query 8
MERGE (c:Company {name: 'Renuka Development (Pvt) Ltd'}) ON CREATE SET c.id = 'renuka_development_pvt_ltd';

// Query 9
MERGE (c:Company {name: 'Renuka Agri Organics Ltd'}) ON CREATE SET c.id = 'renuka_agri_organics_ltd';

// Query 10
MERGE (c:Company {name: 'Ceylon Forestry (Pvt) Ltd'}) ON CREATE SET c.id = 'ceylon_forestry_pvt_ltd';

// Query 11
MERGE (c:Company {name: 'Coco Lanka (Pvt) Ltd'}) ON CREATE SET c.id = 'coco_lanka_pvt_ltd';

// Query 12
MERGE (c:Company {name: 'Kandy Plantations Ltd'}) ON CREATE SET c.id = 'kandy_plantations_ltd';

// Query 13
MERGE (c:Company {name: 'Renuka Foods PLC'}) ON CREATE SET c.id = 'renuka_foods_plc';

// Query 14
MERGE (c:Company {name: 'Shaw Wallace Properties (Pvt) Ltd'}) ON CREATE SET c.id = 'shaw_wallace_properties_pvt_ltd';

// Query 15
MERGE (c:Company {name: 'KPMG'}) ON CREATE SET c.id = 'kpmg';

// Query 16
MERGE (p:Person {name: 'Mrs. I. R. Rajiyah'}) ON CREATE SET p.id = 'mrs_i_r_rajiyah';

// Query 17
MERGE (p:Person {name: 'Dr. S. R. Rajiyah'}) ON CREATE SET p.id = 'dr_s_r_rajiyah';

// Query 18
MERGE (p:Person {name: 'Mr. S. V. Rajiyah'}) ON CREATE SET p.id = 'mr_s_v_rajiyah';

// Query 19
MERGE (p:Person {name: 'Mrs. J. J. B. A. Rajiyah'}) ON CREATE SET p.id = 'mrs_j_j_b_a_rajiyah';

// Query 20
MERGE (p:Person {name: 'Mr. V. Sanmugam'}) ON CREATE SET p.id = 'mr_v_sanmugam';

// Query 21
MERGE (p:Person {name: 'Mr. M. S. Dominic'}) ON CREATE SET p.id = 'mr_m_s_dominic';

// Query 22
MERGE (p:Person {name: 'Mr. T. K. Bandaranayake'}) ON CREATE SET p.id = 'mr_t_k_bandaranayake';

// Query 23
MERGE (p:Person {name: 'Dr. J. M. Swaminathan'}) ON CREATE SET p.id = 'dr_j_m_swaminathan';

// Query 24
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 25
MERGE (s:Sector {name: 'Household and Personal Products'}) ON CREATE SET s.id = 'household_and_personal_products';

// Query 26
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 27
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 28
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Other Operating Income'}) ON CREATE SET m.id = 'other_operating_income', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Administrative Expenses'}) ON CREATE SET m.id = 'administrative_expenses', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Distribution Expenses'}) ON CREATE SET m.id = 'distribution_expenses', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Profit from Operations'}) ON CREATE SET m.id = 'profit_from_operations', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Finance Income'}) ON CREATE SET m.id = 'finance_income', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Finance Cost'}) ON CREATE SET m.id = 'finance_cost', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Net Finance Income (Cost)'}) ON CREATE SET m.id = 'net_finance_income_cost', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Profit before Taxation'}) ON CREATE SET m.id = 'profit_before_taxation', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Taxation'}) ON CREATE SET m.id = 'taxation', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Net Assets'}) ON CREATE SET m.id = 'net_assets', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Total Comprehensive Income'}) ON CREATE SET m.id = 'total_comprehensive_income', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Earnings per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Net Profit Margin'}) ON CREATE SET m.id = 'net_profit_margin', m.unit = '%';

// Query 44
MERGE (m:Metric {name: 'Net Assets Value per Share'}) ON CREATE SET m.id = 'net_assets_value_per_share', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Dividends per Share'}) ON CREATE SET m.id = 'dividends_per_share', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Dividends Payout'}) ON CREATE SET m.id = 'dividends_payout', m.unit = '%';

// Query 47
MERGE (m:Metric {name: 'Dividend Cover'}) ON CREATE SET m.id = 'dividend_cover', m.unit = 'Times';

// Query 48
MERGE (m:Metric {name: 'Interest Cover'}) ON CREATE SET m.id = 'interest_cover', m.unit = 'Times';

// Query 49
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 50
MERGE (m:Metric {name: 'Gearing Ratio'}) ON CREATE SET m.id = 'gearing_ratio', m.unit = '%';

// Query 51
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 52
MERGE (m:Metric {name: 'Dividend Declared and Paid'}) ON CREATE SET m.id = 'dividend_declared_and_paid', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Net Debt to Equity Ratio'}) ON CREATE SET m.id = 'net_debt_to_equity_ratio', m.unit = '%';

// Query 54
MATCH (c1:Company {name: 'Renuka Holdings PLC'}), (c2:Company {name: 'Renuka Agro Exports (Pvt) Ltd'}) MERGE (c1)-[:OWNS]->(c2);

// Query 55
MATCH (c1:Company {name: 'Renuka Holdings PLC'}), (c2:Company {name: 'Renuka Enterprises (Pvt) Ltd'}) MERGE (c1)-[:OWNS]->(c2);

// Query 56
MATCH (c1:Company {name: 'Renuka Holdings PLC'}), (c2:Company {name: 'Shaw Wallace & Hedges Ltd'}) MERGE (c1)-[:OWNS]->(c2);

// Query 57
MATCH (c1:Company {name: 'Renuka Holdings PLC'}), (c2:Company {name: 'Renuka Agri Foods PLC'}) MERGE (c1)-[:OWNS]->(c2);

// Query 58
MATCH (c1:Company {name: 'Renuka Holdings PLC'}), (c2:Company {name: 'Shaw Wallace Ceylon Ltd'}) MERGE (c1)-[:OWNS]->(c2);

// Query 59
MATCH (c1:Company {name: 'Renuka Holdings PLC'}), (c2:Company {name: 'Richlife Dairies Ltd'}) MERGE (c1)-[:OWNS]->(c2);

// Query 60
MATCH (c1:Company {name: 'Renuka Holdings PLC'}), (c2:Company {name: 'Renuka Development (Pvt) Ltd'}) MERGE (c1)-[:OWNS]->(c2);

// Query 61
MATCH (c1:Company {name: 'Renuka Holdings PLC'}), (c2:Company {name: 'Renuka Agri Organics Ltd'}) MERGE (c1)-[:OWNS]->(c2);

// Query 62
MATCH (c1:Company {name: 'Renuka Holdings PLC'}), (c2:Company {name: 'Ceylon Forestry (Pvt) Ltd'}) MERGE (c1)-[:OWNS]->(c2);

// Query 63
MATCH (c1:Company {name: 'Renuka Holdings PLC'}), (c2:Company {name: 'Coco Lanka (Pvt) Ltd'}) MERGE (c1)-[:OWNS]->(c2);

// Query 64
MATCH (c1:Company {name: 'Renuka Holdings PLC'}), (c2:Company {name: 'Kandy Plantations Ltd'}) MERGE (c1)-[:OWNS]->(c2);

// Query 65
MATCH (c1:Company {name: 'Renuka Holdings PLC'}), (c2:Company {name: 'Renuka Foods PLC'}) MERGE (c1)-[:OWNS]->(c2);

// Query 66
MATCH (c1:Company {name: 'Renuka Holdings PLC'}), (c2:Company {name: 'Shaw Wallace Properties (Pvt) Ltd'}) MERGE (c1)-[:OWNS]->(c2);

// Query 67
MATCH (p:Person {name: 'Mrs. I. R. Rajiyah'}), (c:Company {name: 'Renuka Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairperson', r.as_of = date('2024-03-31');

// Query 68
MATCH (p:Person {name: 'Mrs. I. R. Rajiyah'}), (c:Company {name: 'Renuka Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Executive', r.as_of = date('2024-03-31');

// Query 69
MATCH (p:Person {name: 'Dr. S. R. Rajiyah'}), (c:Company {name: 'Renuka Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Executive', r.as_of = date('2024-03-31');

// Query 70
MATCH (p:Person {name: 'Mr. S. V. Rajiyah'}), (c:Company {name: 'Renuka Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 71
MATCH (p:Person {name: 'Mr. S. V. Rajiyah'}), (c:Company {name: 'Renuka Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Executive', r.as_of = date('2024-03-31');

// Query 72
MATCH (p:Person {name: 'Mrs. J. J. B. A. Rajiyah'}), (c:Company {name: 'Renuka Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2024-03-31');

// Query 73
MATCH (p:Person {name: 'Mr. V. Sanmugam'}), (c:Company {name: 'Renuka Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2024-03-31');

// Query 74
MATCH (p:Person {name: 'Mr. M. S. Dominic'}), (c:Company {name: 'Renuka Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 75
MATCH (p:Person {name: 'Mr. T. K. Bandaranayake'}), (c:Company {name: 'Renuka Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 76
MATCH (p:Person {name: 'Dr. J. M. Swaminathan'}), (c:Company {name: 'Renuka Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 77
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 78
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (s:Sector {name: 'Household and Personal Products'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 79
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 80
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 81
MATCH (c:Company {name: 'Renuka Agro Exports (Pvt) Ltd'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 82
MATCH (c:Company {name: 'Renuka Agri Foods PLC'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 83
MATCH (c:Company {name: 'Renuka Agri Organics Ltd'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 84
MATCH (c:Company {name: 'Renuka Foods PLC'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 85
MATCH (c:Company {name: 'Richlife Dairies Ltd'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 86
MATCH (c:Company {name: 'Shaw Wallace Ceylon Ltd'}), (s:Sector {name: 'Household and Personal Products'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 87
MATCH (c:Company {name: 'Shaw Wallace Properties (Pvt) Ltd'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 88
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1806876000, r.year = 2024;

// Query 89
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3298389000, r.year = 2023;

// Query 90
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Other Operating Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 61135000, r.year = 2024;

// Query 91
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Other Operating Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 116933000, r.year = 2023;

// Query 92
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Administrative Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1077506000, r.year = 2024;

// Query 93
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Administrative Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -756325000, r.year = 2023;

// Query 94
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Distribution Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1121881000, r.year = 2024;

// Query 95
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Distribution Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1137644000, r.year = 2023;

// Query 96
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Profit from Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -331739000, r.year = 2024;

// Query 97
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Profit from Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1521171000, r.year = 2023;

// Query 98
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 239270000, r.year = 2024;

// Query 99
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 206281000, r.year = 2023;

// Query 100
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Finance Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -633770000, r.year = 2024;

// Query 101
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Finance Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -608129000, r.year = 2023;

// Query 102
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Net Finance Income (Cost)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -518940000, r.year = 2024;

// Query 103
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Net Finance Income (Cost)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -252259000, r.year = 2023;

// Query 104
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Profit before Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -454331000, r.year = 2024;

// Query 105
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Profit before Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1327537000, r.year = 2023;

// Query 106
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 43687000, r.year = 2024;

// Query 107
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -424530000, r.year = 2023;

// Query 108
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -410644000, r.year = 2024;

// Query 109
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 903007000, r.year = 2023;

// Query 110
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Net Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2850085804, r.year = 2024;

// Query 111
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Net Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1949938475, r.year = 2023;

// Query 112
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4679017063, r.year = 2024;

// Query 113
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2796782837, r.year = 2023;

// Query 114
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -568813580, r.year = 2024;

// Query 115
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -183510703, r.year = 2023;

// Query 116
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Total Comprehensive Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -562974518, r.year = 2024;

// Query 117
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Total Comprehensive Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -236152065, r.year = 2023;

// Query 118
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14200000000, r.year = 2024;

// Query 119
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 17000000000, r.year = 2023;

// Query 120
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -410000000, r.year = 2024;

// Query 121
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1800000000, r.year = 2024;

// Query 122
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1.08, r.year = 2024;

// Query 123
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.43, r.year = 2023;

// Query 124
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.46, r.year = 2022;

// Query 125
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.25, r.year = 2021;

// Query 126
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.26, r.year = 2020;

// Query 127
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2.88, r.year = 2024;

// Query 128
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5.28, r.year = 2023;

// Query 129
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.78, r.year = 2022;

// Query 130
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.36, r.year = 2021;

// Query 131
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.63, r.year = 2020;

// Query 132
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Net Assets Value per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.07, r.year = 2024;

// Query 133
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Net Assets Value per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 71.57, r.year = 2023;

// Query 134
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Net Assets Value per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 70.44, r.year = 2022;

// Query 135
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Net Assets Value per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 62.15, r.year = 2021;

// Query 136
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Net Assets Value per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 99.86, r.year = 2020;

// Query 137
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Dividends per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.39, r.year = 2024;

// Query 138
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Dividends per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.4, r.year = 2023;

// Query 139
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Dividends per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.1, r.year = 2022;

// Query 140
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Dividends per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.25, r.year = 2021;

// Query 141
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Dividends per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.25, r.year = 2020;

// Query 142
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Dividends Payout'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.06, r.year = 2024;

// Query 143
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Dividends Payout'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16.46, r.year = 2023;

// Query 144
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Dividends Payout'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.07, r.year = 2022;

// Query 145
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Dividends Payout'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11.13, r.year = 2021;

// Query 146
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Dividends Payout'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19.91, r.year = 2020;

// Query 147
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Dividend Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2.8, r.year = 2024;

// Query 148
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Dividend Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6.07, r.year = 2023;

// Query 149
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Dividend Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 24.6, r.year = 2022;

// Query 150
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Dividend Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.98, r.year = 2021;

// Query 151
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Dividend Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5.02, r.year = 2020;

// Query 152
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.52, r.year = 2024;

// Query 153
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.6, r.year = 2023;

// Query 154
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6.29, r.year = 2022;

// Query 155
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.55, r.year = 2021;

// Query 156
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.83, r.year = 2020;

// Query 157
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.62, r.year = 2024;

// Query 158
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.96, r.year = 2023;

// Query 159
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.09, r.year = 2022;

// Query 160
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.04, r.year = 2021;

// Query 161
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.8, r.year = 2020;

// Query 162
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 24.18, r.year = 2024;

// Query 163
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 17.82, r.year = 2023;

// Query 164
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 15.13, r.year = 2022;

// Query 165
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 17.97, r.year = 2021;

// Query 166
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14.99, r.year = 2020;

// Query 167
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -3.23, r.year = 2024;

// Query 168
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6.82, r.year = 2023;

// Query 169
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7.51, r.year = 2022;

// Query 170
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.42, r.year = 2021;

// Query 171
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.57, r.year = 2020;

// Query 172
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4927893000, r.year = 2024, r.description = 'Agri Food Exports Segment Revenue';

// Query 173
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6598721000, r.year = 2023, r.description = 'Agri Food Exports Segment Revenue';

// Query 174
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9183358000, r.year = 2024, r.description = 'Consumer Brands Segment Revenue';

// Query 175
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10471941000, r.year = 2023, r.description = 'Consumer Brands Segment Revenue';

// Query 176
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 162040000, r.year = 2024, r.description = 'Investment Segment Revenue';

// Query 177
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 18348000, r.year = 2023, r.description = 'Investment Segment Revenue';

// Query 178
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 150466000, r.year = 2024, r.description = 'Agri Food Exports Segment Gross Profit';

// Query 179
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1608616000, r.year = 2023, r.description = 'Agri Food Exports Segment Gross Profit';

// Query 180
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1494370000, r.year = 2024, r.description = 'Consumer Brands Segment Gross Profit';

// Query 181
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1671425000, r.year = 2023, r.description = 'Consumer Brands Segment Gross Profit';

// Query 182
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 162040000, r.year = 2024, r.description = 'Investment Segment Gross Profit';

// Query 183
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 18348000, r.year = 2023, r.description = 'Investment Segment Gross Profit';

// Query 184
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -319000000, r.year = 2024, r.description = 'Consumer Brands Segment Profit After Tax';

// Query 185
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 246000000, r.year = 2023, r.description = 'Consumer Brands Segment Profit After Tax';

// Query 186
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 675000000, r.year = 2024, r.description = 'Investment Segment Profit After Tax';

// Query 187
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 144000000, r.year = 2023, r.description = 'Investment Segment Profit After Tax';

// Query 188
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Dividend Declared and Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 73961480, r.year = 2024;

// Query 189
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Dividend Declared and Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 71324019, r.year = 2023;

// Query 190
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Dividends per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.39, r.year = 2024;

// Query 191
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Dividends per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.38, r.year = 2023;

// Query 192
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12716390688, r.year = 2024;

// Query 193
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13233513118, r.year = 2023;

// Query 194
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Net Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 49.87, r.year = 2024;

// Query 195
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (m:Metric {name: 'Net Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 20.70, r.year = 2023;

// Query 196
MATCH (c:Company {name: 'Renuka Holdings PLC'}), (a:Company {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Total queries: 196
// Generated on: 2025-10-02T17:59:25.633390
