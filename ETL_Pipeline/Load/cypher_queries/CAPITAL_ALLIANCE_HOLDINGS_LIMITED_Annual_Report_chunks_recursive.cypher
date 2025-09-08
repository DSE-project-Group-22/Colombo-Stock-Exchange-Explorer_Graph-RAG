// Query 1
MERGE (c:Company {name: 'Capital Alliance Holdings Limited'}) ON CREATE SET c.id = 'capital_alliance_holdings_limited';

// Query 2
MERGE (p:Person {name: 'Mr. A.K. Pathirage'}) ON CREATE SET p.id = 'mr_a_k_pathirage';

// Query 3
MATCH (p:Person {name: 'Mr. A.K. Pathirage'}), (c:Company {name: 'Capital Alliance Holdings Limited'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman and Managing Director', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'Dr. S. Selliah'}) ON CREATE SET p.id = 'dr_s_selliah';

// Query 5
MATCH (p:Person {name: 'Dr. S. Selliah'}), (c:Company {name: 'Capital Alliance Holdings Limited'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-07-29');

// Query 6
MERGE (p:Person {name: 'Dr. K.M.P Karunaratne'}) ON CREATE SET p.id = 'dr_k_m_p_karunaratne';

// Query 7
MATCH (p:Person {name: 'Dr. K.M.P Karunaratne'}), (c:Company {name: 'Capital Alliance Holdings Limited'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'Mr. G.L.H. Premaratne'}) ON CREATE SET p.id = 'mr_g_l_h_premaratne';

// Query 9
MATCH (p:Person {name: 'Mr. G.L.H. Premaratne'}), (c:Company {name: 'Capital Alliance Holdings Limited'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'Mr. H K Kaimal'}) ON CREATE SET p.id = 'mr_h_k_kaimal';

// Query 11
MATCH (p:Person {name: 'Mr. H K Kaimal'}), (c:Company {name: 'Capital Alliance Holdings Limited'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non-Independent Director', r.as_of = date('2024-06-18');

// Query 12
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. Mn';

// Query 13
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772, r.year = 2024;

// Query 14
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8417, r.year = 2023;

// Query 15
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4095, r.year = 2022;

// Query 16
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790, r.year = 2021;

// Query 17
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5560, r.year = 2020;

// Query 18
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs. Mn';

// Query 19
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612, r.year = 2024;

// Query 20
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93, r.year = 2023;

// Query 21
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -407.0, r.year = 2022;

// Query 22
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1913.0, r.year = 2021;

// Query 23
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28.0, r.year = 2020;

// Query 24
MERGE (m:Metric {name: 'Profit before tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs. Mn';

// Query 25
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212, r.year = 2024;

// Query 26
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -133.0, r.year = 2023;

// Query 27
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -459.0, r.year = 2022;

// Query 28
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2370.0, r.year = 2021;

// Query 29
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 199, r.year = 2020;

// Query 30
MERGE (m:Metric {name: 'Profit after tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs. Mn';

// Query 31
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -333.0, r.year = 2023;

// Query 33
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -508.0, r.year = 2022;

// Query 34
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2244.0, r.year = 2021;

// Query 35
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106, r.year = 2020;

// Query 36
MERGE (m:Metric {name: 'Dividends paid'}) ON CREATE SET m.id = 'dividends_paid', m.unit = 'Rs. Mn';

// Query 37
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 442, r.year = 2020;

// Query 38
MERGE (m:Metric {name: 'Return on equity (ROE)'}) ON CREATE SET m.id = 'return_on_equity_roe', m.unit = '%';

// Query 39
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.07, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.92, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.62, r.year = 2022;

// Query 42
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.54, r.year = 2021;

// Query 43
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.15, r.year = 2020;

// Query 44
MERGE (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed_roce', m.unit = '%';

// Query 45
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.86, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.65, r.year = 2022;

// Query 48
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.43, r.year = 2021;

// Query 49
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2020;

// Query 50
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. Mn';

// Query 51
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45912, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42509, r.year = 2022;

// Query 54
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40869, r.year = 2021;

// Query 55
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42582, r.year = 2020;

// Query 56
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. Mn';

// Query 57
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13674, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7549, r.year = 2022;

// Query 60
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6256, r.year = 2021;

// Query 61
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5889, r.year = 2020;

// Query 62
MERGE (m:Metric {name: 'Net debt / (Cash)'}) ON CREATE SET m.id = 'net_debt_cash', m.unit = 'Rs. Mn';

// Query 63
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2284, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2101, r.year = 2023;

// Query 65
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1645, r.year = 2022;

// Query 66
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 691, r.year = 2021;

// Query 67
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -587.0, r.year = 2020;

// Query 68
MERGE (m:Metric {name: 'Group revenue'}) ON CREATE SET m.id = 'group_revenue', m.unit = 'Rs.’000';

// Query 69
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Group revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 277008844, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Group revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 330420613, r.year = 2023;

// Query 71
MERGE (m:Metric {name: 'Profit from operations'}) ON CREATE SET m.id = 'profit_from_operations', m.unit = 'Rs.’000';

// Query 72
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit from operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47399141, r.year = 2024;

// Query 73
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit from operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 59202045, r.year = 2023;

// Query 74
MERGE (m:Metric {name: 'Profit before tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs.’000';

// Query 75
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 37288459, r.year = 2024;

// Query 76
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42377917, r.year = 2023;

// Query 77
MERGE (m:Metric {name: 'Profit after tax from continuing operations'}) ON CREATE SET m.id = 'profit_after_tax_from_continuing_operations', m.unit = 'Rs.’000';

// Query 78
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit after tax from continuing operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22201573, r.year = 2024;

// Query 79
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit after tax from continuing operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27296336, r.year = 2023;

// Query 80
MERGE (m:Metric {name: 'EBITDA'}) ON CREATE SET m.id = 'ebitda', m.unit = 'Rs.’000';

// Query 81
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'EBITDA'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58335217, r.year = 2024;

// Query 82
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'EBITDA'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 71191094, r.year = 2023;

// Query 83
MERGE (m:Metric {name: 'Profit attributable to ordinary shareholders'}) ON CREATE SET m.id = 'profit_attributable_to_ordinary_shareholders', m.unit = 'Rs.’000';

// Query 84
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit attributable to ordinary shareholders'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8412977, r.year = 2024;

// Query 85
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit attributable to ordinary shareholders'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13022993, r.year = 2023;

// Query 86
MERGE (m:Metric {name: 'Operating cash flow per share'}) ON CREATE SET m.id = 'operating_cash_flow_per_share', m.unit = 'Rs.';

// Query 87
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Operating cash flow per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 327.92, r.year = 2024;

// Query 88
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Operating cash flow per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 514.31, r.year = 2023;

// Query 89
MERGE (m:Metric {name: 'Earnings per share - Group'}) ON CREATE SET m.id = 'earnings_per_share_group', m.unit = 'Rs.';

// Query 90
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Earnings per share - Group'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 82.22, r.year = 2024;

// Query 91
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Earnings per share - Group'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 127.52, r.year = 2023;

// Query 92
MERGE (m:Metric {name: 'Dividend per share - Company'}) ON CREATE SET m.id = 'dividend_per_share_company', m.unit = 'Rs.';

// Query 93
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Dividend per share - Company'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.8, r.year = 2024;

// Query 94
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Dividend per share - Company'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.1, r.year = 2023;

// Query 95
MERGE (m:Metric {name: 'Operating cash flows'}) ON CREATE SET m.id = 'operating_cash_flows', m.unit = 'Rs.’000';

// Query 96
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Operating cash flows'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33447574, r.year = 2024;

// Query 97
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Operating cash flows'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 52459122, r.year = 2023;

// Query 98
MERGE (m:Metric {name: 'Capital expenditure'}) ON CREATE SET m.id = 'capital_expenditure', m.unit = 'Rs.’000';

// Query 99
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Capital expenditure'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16919433, r.year = 2024;

// Query 100
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Capital expenditure'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17387897, r.year = 2023;

// Query 101
MERGE (m:Metric {name: 'Shareholders’ funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs.’000';

// Query 102
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Shareholders’ funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 54719964, r.year = 2024;

// Query 103
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Shareholders’ funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 54043639, r.year = 2023;

// Query 104
MERGE (m:Metric {name: 'Net assets'}) ON CREATE SET m.id = 'net_assets', m.unit = 'Rs.’000';

// Query 105
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 131685633, r.year = 2024;

// Query 106
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 127720458, r.year = 2023;

// Query 107
MERGE (m:Metric {name: 'Net assets per ordinary share'}) ON CREATE SET m.id = 'net_assets_per_ordinary_share', m.unit = 'Rs.';

// Query 108
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net assets per ordinary share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 536.07, r.year = 2024;

// Query 109
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net assets per ordinary share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 529.44, r.year = 2023;

// Query 110
MERGE (s:Sector {name: 'Investment Holdings'}) ON CREATE SET s.id = 'investment_holdings';

// Query 111
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (s:Sector {name: 'Investment Holdings'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 112
MERGE (s:Sector {name: 'Portfolio and Asset Management'}) ON CREATE SET s.id = 'portfolio_and_asset_management';

// Query 113
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (s:Sector {name: 'Portfolio and Asset Management'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 114
MERGE (s:Sector {name: 'Oil Palm Plantations'}) ON CREATE SET s.id = 'oil_palm_plantations';

// Query 115
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (s:Sector {name: 'Oil Palm Plantations'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 116
MERGE (s:Sector {name: 'Oils & Fats'}) ON CREATE SET s.id = 'oils_fats';

// Query 117
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (s:Sector {name: 'Oils & Fats'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 118
MERGE (s:Sector {name: 'Beverages'}) ON CREATE SET s.id = 'beverages';

// Query 119
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (s:Sector {name: 'Beverages'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 120
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 121
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 122
MERGE (s:Sector {name: 'Leisure'}) ON CREATE SET s.id = 'leisure';

// Query 123
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (s:Sector {name: 'Leisure'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 124
MERGE (s:Sector {name: 'Management Services'}) ON CREATE SET s.id = 'management_services';

// Query 125
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (s:Sector {name: 'Management Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 125
// Generated on: 2025-09-03T13:35:35.331728
