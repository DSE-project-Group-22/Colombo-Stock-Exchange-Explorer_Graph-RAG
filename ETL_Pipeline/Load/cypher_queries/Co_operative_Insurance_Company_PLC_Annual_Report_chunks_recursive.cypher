// Query 1
MERGE (c:Company {name: 'Co-operative Insurance Company PLC'}) ON CREATE SET c.id = 'co_operative_insurance_company_plc';

// Query 2
MERGE (p:Person {name: 'E. T. De Zoysa'}) ON CREATE SET p.id = 'e_t_de_zoysa';

// Query 3
MERGE (p:Person {name: 'R. S. A. Wickramasingha'}) ON CREATE SET p.id = 'r_s_a_wickramasingha';

// Query 4
MERGE (p:Person {name: 'D. S. Wickramasingha'}) ON CREATE SET p.id = 'd_s_wickramasingha';

// Query 5
MERGE (p:Person {name: 'N. K. Wickramasingha'}) ON CREATE SET p.id = 'n_k_wickramasingha';

// Query 6
MERGE (p:Person {name: 'L. J. M. De Silva'}) ON CREATE SET p.id = 'l_j_m_de_silva';

// Query 7
MERGE (p:Person {name: 'M. U. S. G. Thilakawardana'}) ON CREATE SET p.id = 'm_u_s_g_thilakawardana';

// Query 8
MERGE (p:Person {name: 'D. M. A. Kulasooriya'}) ON CREATE SET p.id = 'd_m_a_kulasooriya';

// Query 9
MERGE (p:Person {name: 'M. S. Nanayakkara'}) ON CREATE SET p.id = 'm_s_nanayakkara';

// Query 10
MERGE (p:Person {name: 'A. Rajaratnam'}) ON CREATE SET p.id = 'a_rajaratnam';

// Query 11
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 12
MERGE (p:Person {name: 'J. M. Swaminathan'}) ON CREATE SET p.id = 'j_m_swaminathan';

// Query 13
MERGE (p:Person {name: 'A. M. de S. Jayaratne'}) ON CREATE SET p.id = 'a_m_de_s_jayaratne';

// Query 14
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 15
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 16
MERGE (p:Person {name: 'R. M. M. J. Ratnayake'}) ON CREATE SET p.id = 'r_m_m_j_ratnayake';

// Query 17
MERGE (p:Person {name: 'A. S. Azariah'}) ON CREATE SET p.id = 'a_s_azariah';

// Query 18
MERGE (p:Person {name: 'A. K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 19
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 20
MERGE (p:Person {name: 'K. M. P. Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 21
MERGE (p:Person {name: 'G. L. H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 22
MERGE (p:Person {name: 'H. K. Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 23
MERGE (p:Person {name: 'S. A. B. Rajapaksa'}) ON CREATE SET p.id = 's_a_b_rajapaksa';

// Query 24
MERGE (p:Person {name: 'V. Bali'}) ON CREATE SET p.id = 'v_bali';

// Query 25
MERGE (p:Person {name: 'A. N. Thadani'}) ON CREATE SET p.id = 'a_n_thadani';

// Query 26
MERGE (p:Person {name: 'Amrit Rajaratnam'}) ON CREATE SET p.id = 'amrit_rajaratnam';

// Query 27
MERGE (p:Person {name: 'C. P. R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 28
MERGE (p:Person {name: 'A. R. Rasiah'}) ON CREATE SET p.id = 'a_r_rasiah';

// Query 29
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Profit Before Taxation'}) ON CREATE SET m.id = 'profit_before_taxation', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Profit After Taxation'}) ON CREATE SET m.id = 'profit_after_taxation', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Shareholders Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Earnings per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Net Assets per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Return on Average Assets'}) ON CREATE SET m.id = 'return_on_average_assets', m.unit = '%';

// Query 38
MERGE (m:Metric {name: 'Equity to Assets Ratio'}) ON CREATE SET m.id = 'equity_to_assets_ratio', m.unit = '%';

// Query 39
MERGE (m:Metric {name: 'Gross Non Performing Accommodations'}) ON CREATE SET m.id = 'gross_non_performing_accommodations', m.unit = '%';

// Query 40
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Gearing Ratio'}) ON CREATE SET m.id = 'gearing_ratio', m.unit = '%';

// Query 43
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 44
MERGE (m:Metric {name: 'EBITDA'}) ON CREATE SET m.id = 'ebitda', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 46
MERGE (m:Metric {name: 'Current ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 47
MERGE (m:Metric {name: 'Debt to equity ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 48
MERGE (m:Metric {name: 'Interest coverage ratio'}) ON CREATE SET m.id = 'interest_coverage_ratio', m.unit = 'Times';

// Query 49
MERGE (m:Metric {name: 'Total operating income'}) ON CREATE SET m.id = 'total_operating_income', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Cost to income ratio'}) ON CREATE SET m.id = 'cost_to_income_ratio', m.unit = '%';

// Query 52
MERGE (m:Metric {name: 'Dividend per share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 53
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 54
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 55
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 56
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 57
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 58
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 59
MERGE (p:Product {name: 'Investment Holdings'}) ON CREATE SET p.id = 'investment_holdings';

// Query 60
MERGE (p:Product {name: 'Portfolio and Asset Management'}) ON CREATE SET p.id = 'portfolio_and_asset_management';

// Query 61
MERGE (p:Product {name: 'Oil Palm Plantations'}) ON CREATE SET p.id = 'oil_palm_plantations';

// Query 62
MERGE (p:Product {name: 'Oils & Fats'}) ON CREATE SET p.id = 'oils_fats';

// Query 63
MERGE (p:Product {name: 'Beverages'}) ON CREATE SET p.id = 'beverages';

// Query 64
MERGE (p:Product {name: 'Leisure'}) ON CREATE SET p.id = 'leisure';

// Query 65
MERGE (p:Product {name: 'Management Services'}) ON CREATE SET p.id = 'management_services';

// Query 66
MERGE (p:Product {name: 'Ship Repairs'}) ON CREATE SET p.id = 'ship_repairs';

// Query 67
MERGE (p:Product {name: 'Shipbuilding'}) ON CREATE SET p.id = 'shipbuilding';

// Query 68
MERGE (p:Product {name: 'Heavy Engineering'}) ON CREATE SET p.id = 'heavy_engineering';

// Query 69
MERGE (p:Product {name: 'Material Sales'}) ON CREATE SET p.id = 'material_sales';

// Query 70
MATCH (p:Person {name: 'E. T. De Zoysa'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2021-03-31');

// Query 71
MATCH (p:Person {name: 'R. S. A. Wickramasingha'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2021-03-31');

// Query 72
MATCH (p:Person {name: 'D. S. Wickramasingha'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 73
MATCH (p:Person {name: 'N. K. Wickramasingha'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 74
MATCH (p:Person {name: 'L. J. M. De Silva'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 75
MATCH (p:Person {name: 'M. U. S. G. Thilakawardana'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 76
MATCH (p:Person {name: 'D. M. A. Kulasooriya'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 77
MATCH (p:Person {name: 'M. S. Nanayakkara'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 78
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 79
MATCH (p:Person {name: 'A. Rajaratnam'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 80
MATCH (p:Person {name: 'J. M. Swaminathan'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 81
MATCH (p:Person {name: 'A. M. de S. Jayaratne'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 82
MATCH (p:Person {name: 'S. Rajaratnam'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 83
MATCH (p:Person {name: 'A. S. Azariah'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'CEO', r.as_of = date('2024-03-31');

// Query 84
MATCH (p:Person {name: 'A. K. Pathirage'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/Managing Director', r.as_of = date('2024-03-31');

// Query 85
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-07-29');

// Query 86
MATCH (p:Person {name: 'K. M. P. Karunaratne'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 87
MATCH (p:Person {name: 'G. L. H. Premaratne'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-03-31');

// Query 88
MATCH (p:Person {name: 'H. K. Kaimal'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-06-18');

// Query 89
MATCH (p:Person {name: 'C. P. R. Perera'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 90
MATCH (p:Person {name: 'Amrit Rajaratnam'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 91
MATCH (p:Person {name: 'A. R. Rasiah'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 92
MATCH (p:Person {name: 'Anushman Rajaratnam'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 93
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 500, r.as_of = date('2024-03-31');

// Query 94
MATCH (p:Person {name: 'J. M. Swaminathan'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 561, r.as_of = date('2024-03-31');

// Query 95
MATCH (p:Person {name: 'A. M. de S. Jayaratne'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 467, r.as_of = date('2024-03-31');

// Query 96
MATCH (p:Person {name: 'R. M. M. J. Ratnayake'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 185, r.as_of = date('2024-03-31');

// Query 97
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 17000, r.as_of = date('2024-03-31');

// Query 98
MATCH (p:Person {name: 'K. M. P. Karunaratne'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 133, r.as_of = date('2024-03-31');

// Query 99
MATCH (p:Person {name: 'Amrit Rajaratnam'}), (c:Company {name: 'Co-operative Insurance Company PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 300000, r.as_of = date('2024-03-31');

// Query 100
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31055222000, r.year = 2024;

// Query 101
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12808022000, r.year = 2024;

// Query 102
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Profit Before Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6594978000, r.year = 2024;

// Query 103
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Profit After Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4193917000, r.year = 2024;

// Query 104
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 107987834000, r.year = 2024;

// Query 105
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24179669000, r.year = 2024;

// Query 106
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.19, r.year = 2024;

// Query 107
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Net Assets per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 76.02, r.year = 2024;

// Query 108
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Return on Average Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.99, r.year = 2024;

// Query 109
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Equity to Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22.39, r.year = 2024;

// Query 110
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Gross Non Performing Accommodations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.65, r.year = 2024;

// Query 111
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25447000000, r.year = 2024;

// Query 112
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 603000000, r.year = 2024;

// Query 113
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Profit After Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2743000000, r.year = 2024;

// Query 114
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 43860700000, r.year = 2024;

// Query 115
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5311300000, r.year = 2024;

// Query 116
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -38.1, r.year = 2024;

// Query 117
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Net Assets per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 74.0, r.year = 2024;

// Query 118
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58.0, r.year = 2024;

// Query 119
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.0, r.year = 2024;

// Query 120
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'EBITDA'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4325609807;

// Query 121
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Profit Before Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3064604666;

// Query 122
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Profit After Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2547480785;

// Query 123
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27.15;

// Query 124
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.78;

// Query 125
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Current ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.55;

// Query 126
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Debt to equity ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.31;

// Query 127
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Interest coverage ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.01;

// Query 128
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25599000000, r.year = 2025;

// Query 129
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11391000000, r.year = 2025;

// Query 130
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Total operating income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14105000000, r.year = 2025;

// Query 131
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Profit Before Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7922000000, r.year = 2025;

// Query 132
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Profit After Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4005000000, r.year = 2025;

// Query 133
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 156936000000, r.year = 2025;

// Query 134
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23936000000, r.year = 2025;

// Query 135
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Cost to income ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48.4, r.year = 2025;

// Query 136
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Return on Average Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.8, r.year = 2025;

// Query 137
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 56.53, r.year = 2025;

// Query 138
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18.15, r.year = 2025;

// Query 139
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.0, r.year = 2025;

// Query 140
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 141
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 142
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 143
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 144
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 145
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 146
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (p:Product {name: 'Investment Holdings'}) MERGE (c)-[:OFFERS]->(p);

// Query 147
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (p:Product {name: 'Portfolio and Asset Management'}) MERGE (c)-[:OFFERS]->(p);

// Query 148
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (p:Product {name: 'Oil Palm Plantations'}) MERGE (c)-[:OFFERS]->(p);

// Query 149
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (p:Product {name: 'Oils & Fats'}) MERGE (c)-[:OFFERS]->(p);

// Query 150
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (p:Product {name: 'Beverages'}) MERGE (c)-[:OFFERS]->(p);

// Query 151
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (p:Product {name: 'Leisure'}) MERGE (c)-[:OFFERS]->(p);

// Query 152
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (p:Product {name: 'Management Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 153
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (p:Product {name: 'Ship Repairs'}) MERGE (c)-[:OFFERS]->(p);

// Query 154
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (p:Product {name: 'Shipbuilding'}) MERGE (c)-[:OFFERS]->(p);

// Query 155
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (p:Product {name: 'Heavy Engineering'}) MERGE (c)-[:OFFERS]->(p);

// Query 156
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}), (p:Product {name: 'Material Sales'}) MERGE (c)-[:OFFERS]->(p);

// Query 157
UNWIND [{id: 'co_operative_insurance_company_plc_directors_and_executives_0', content: 'Company in the preparation of the Financial \nStatements are given on pages 71 to 79, \nwhich are consistent with those of the \nprevious period.\nDIRECTORS’ responsibility for Financial \nReporting\nThe DIRECTORS are responsible for the \npreparation of the Financial Statements of \nthe Company and the Group to reflect a true \nand fair view of the state of its affairs.\nInformation on the DIRECTORS of the \nCompany and the Group \nDIRECTORS of the Company as at  \n31st March 2021\nThe names of the DIRECTORS who held office \nas at the end of the accounting period are \ngiven below and their brief profiles appear on \npages 18 and 19.\nExecutive DIRECTORS\nMr. E. T . De Zoysa - Managing Director\nNon-Executive DIRECTORS\nMr. R. S. A. Wickramasingha - Chairman\nMs. D. S. Wickramasingha - Director\nMs. N. K. Wickramasingha - Director \nMr. L. J. M. De Silva - Director \nMr. M. U. S. G. Thilakawardana - Director*\nDr. D. M. A. Kulasooriya - Director*\nMr. M. S. Nanayakkara - Director*', chunk_type: 'directors_and_executives', index: 0}, {id: 'co_operative_insurance_company_plc_directors_and_executives_1', content: 'as at the end of the financial year under \nreview. The Company’s Board of DIRECTORS \nconsists of professionals in varied fields who \ncollectively possess a wealth of knowledge \nand experience are thus eminently suitable \nto provide the leadership and direction \nrequired.\nThe CEO has been given the responsibility \nof leading the organization as its chief \nexecutive by the Board. The Board has also \ndesignated additional Key Responsible \nPersons (KRPs) who direct activities, oversee \nbusiness operations, and have significant \ninfluence over policies.  The Board has \ncreated a comprehensive succession plan \nfor these critical roles in order to protect \noperational continuity and minimize \ninterruptions.\nThe Board has instituted an annual self-\nassessment program for each director \nto assess their own performance as well \nas the performance of the Board and its \ncommittees. The objective of this is to \nimprove the Board’s and its committees’ \neffectiveness. The senior director and', chunk_type: 'directors_and_executives', index: 1}, {id: 'co_operative_insurance_company_plc_directors_and_executives_2', content: 'Details pertaining to DIRECTORS and Chief Executive Officer’s \ndirect shareholdings are set out below.\nName of the Director No. of Shares\nAs at \n31.03.2024\nNo. of Shares\nAs at \n31.03.2023\nMr. A. Rajaratnam \n(Deceased 26.08.2023) N/A -\nMr. S.D.R. Arudpragasam 500 500\nDr. J.M. Swaminathan 561 561\nMr. A.M. de S. Jayaratne 467 467\nMr. S. Rajaratnam - -\nMr. Anushman Rajaratnam - -\nMr. R.M.M.J. Ratnayake 185 21\nMr. A . S. Azariah - CEO - -\nDIRECTORS’ Remuneration\nDIRECTORS’ remuneration in respect of the Company and the \nGroup for the financial year is given in Note 24 to the financial \nstatements on page 95.\nDirectorate\nThe names of the DIRECTORS who held office during the \nfinancial year are given below and brief profiles of the \nDIRECTORS currently in office appear on page 5.\nMr. S. D. R. Arudpragasam - Chairman\nMr. A. Rajaratnam - Director (Deceased – 26.08.2023)\nDr. J. M. Swaminathan - Director\nMr. A. M. de S. Jayaratne - Director\nMr. S. Rajaratnam - Director', chunk_type: 'directors_and_executives', index: 2}, {id: 'co_operative_insurance_company_plc_directors_and_executives_3', content: 'The following DIRECTORS held Office during the year under \nreview . The biographical details of  the Board members are set \nout on pages 24 to 25\nMr. A.K. Pathirage - (Chairman/ Managing Director) \nDr. S. Selliah – Deputy Chairman (Resigned w .e.f  29th July \n2024)\nDr. K.M.P Karunaratne – Group Chief  Executive Officer\nMr. G.L.H. Premaratne – Independent Non Executive \nDirector\nMr. H K Kaimal - Non-Executive Non Independent Director \n- (appointed w .e.f. 18th June 2024)\nFIT AND PROPER CRITERIA\nThe DIRECTORS hereby confirm that the DIRECTORS and CEO \nof  the company satisfy the fit and proper Assessment Criteria \nstipulated in section 9.7 of  the Listing Rules of  the Colombo \nStock Exchange for the year.\nDIRECTORS’ SHAREHOLDING \nName of Director No. of Shares \nas at 31/03/2024\nNo. of Shares \nas at 31/03/2023\nMr. A K Pathirage - -\nDr. S. Selliah 17,000 17,000\nDr. K.M.P Karunaratne 133 133\nMr. G.L.H Premaratne - -\nMr. S.A.B Rajapaksa - -\nMr. V .Bali - -\nMr. A.N Thadani - -', chunk_type: 'directors_and_executives', index: 3}, {id: 'co_operative_insurance_company_plc_directors_and_executives_4', content: 'disclosed in Note 27 to the financial statements on page 60.\nDuring the financial year the Company has not entered in to any \ncontracts in which the DIRECTORS have had a material interest.\nNeither the DIRECTORS nor their close family members have had any \nmaterial business relationships with other DIRECTORS.\n              No. of shares\nName of Director As at    \n31.03.2024\nAs at    \n31.03.2023\nMr. Amrit Rajaratnam 300,000 300,000\nCorporate Donations  \nDetails pertaining to corporate donations made by the Company \nduring the financial year 2023/24 are given in note 6 to the financial \nstatements on page 41.\nDirectorate\nThe names of the DIRECTORS who held office during the financial \nyear are given below and the profiles of the DIRECTORS who are \ncurrently in office are given on pages 8 and 9.\nMr. S. D. R. Arudpragasam - Chairman \nMr. C. P. R. Perera - Deputy Chairman \nMr. S. Rajaratnam \nMr. Amrit Rajaratnam \nMr. A. R. Rasiah\nMr. Anushman Rajaratnam', chunk_type: 'directors_and_executives', index: 4}] AS chunk MERGE (ch:Chunk {id: chunk.id}) ON CREATE SET ch.content = chunk.content, ch.chunk_type = chunk.chunk_type, ch.index = chunk.index;

// Query 158
MATCH (c:Company {name: 'Co-operative Insurance Company PLC'}) WITH c UNWIND ['co_operative_insurance_company_plc_directors_and_executives_0', 'co_operative_insurance_company_plc_directors_and_executives_1', 'co_operative_insurance_company_plc_directors_and_executives_2', 'co_operative_insurance_company_plc_directors_and_executives_3', 'co_operative_insurance_company_plc_directors_and_executives_4'] AS chunk_id MATCH (ch:Chunk {id: chunk_id}) MERGE (c)-[:HAS_CONTENT]->(ch);

// Total queries: 158
// Generated on: 2025-09-30T14:29:36.129562
