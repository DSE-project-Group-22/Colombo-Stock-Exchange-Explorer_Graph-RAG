// Query 1
MERGE (c:Company {name: 'Hemas Holdings PLC'}) ON CREATE SET c.id = 'hemas_holdings_plc', c.founded_on = date('1948-12-10'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 2
MERGE (p:Person {name: 'H. N. Esufally'}) ON CREATE SET p.id = 'h_n_esufally';

// Query 3
MERGE (p:Person {name: 'A. N. Esufally'}) ON CREATE SET p.id = 'a_n_esufally';

// Query 4
MERGE (p:Person {name: 'I. A. H. Esufally'}) ON CREATE SET p.id = 'i_a_h_esufally';

// Query 5
MERGE (p:Person {name: 'M. A. H. Esufally'}) ON CREATE SET p.id = 'm_a_h_esufally';

// Query 6
MERGE (p:Person {name: 'K. A. C. Wilson'}) ON CREATE SET p.id = 'k_a_c_wilson';

// Query 7
MERGE (p:Person {name: 'Dr. S. A. B. Ekanayake'}) ON CREATE SET p.id = 'dr_s_a_b_ekanayake';

// Query 8
MERGE (p:Person {name: 'A. S. Amaratunga'}) ON CREATE SET p.id = 'a_s_amaratunga';

// Query 9
MERGE (p:Person {name: 'J. M. Trivedi'}) ON CREATE SET p.id = 'j_m_trivedi';

// Query 10
MERGE (p:Person {name: 'P. Subasinghe'}) ON CREATE SET p.id = 'p_subasinghe';

// Query 11
MERGE (p:Person {name: 'R. P. Pathirana'}) ON CREATE SET p.id = 'r_p_pathirana';

// Query 12
MERGE (s:Sector {name: 'Household and Personal Products'}) ON CREATE SET s.id = 'household_and_personal_products';

// Query 13
MERGE (s:Sector {name: 'Health Care Equipment and Services'}) ON CREATE SET s.id = 'health_care_equipment_and_services';

// Query 14
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 15
MERGE (s:Sector {name: 'Pharmaceuticals, Biotechnology, and Life Sciences'}) ON CREATE SET s.id = 'pharmaceuticals_biotechnology_and_life_sciences';

// Query 16
MERGE (prod:Product {name: 'Digital Health Records'}) ON CREATE SET prod.id = 'digital_health_records';

// Query 17
MERGE (prod:Product {name: 'Pharmaceuticals'}) ON CREATE SET prod.id = 'pharmaceuticals';

// Query 18
MERGE (prod:Product {name: 'Pharmaceutical Distribution'}) ON CREATE SET prod.id = 'pharmaceutical_distribution';

// Query 19
MERGE (prod:Product {name: 'Aviation Services'}) ON CREATE SET prod.id = 'aviation_services';

// Query 20
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Gross Profit Margin'}) ON CREATE SET m.id = 'gross_profit_margin', m.unit = '%';

// Query 23
MERGE (m:Metric {name: 'EBITDA'}) ON CREATE SET m.id = 'ebitda', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'EBITDA Margin'}) ON CREATE SET m.id = 'ebitda_margin', m.unit = '%';

// Query 25
MERGE (m:Metric {name: 'EBIT'}) ON CREATE SET m.id = 'ebit', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'EBIT Margin'}) ON CREATE SET m.id = 'ebit_margin', m.unit = '%';

// Query 27
MERGE (m:Metric {name: 'Net Finance Cost'}) ON CREATE SET m.id = 'net_finance_cost', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Earnings'}) ON CREATE SET m.id = 'earnings', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Earnings Margin'}) ON CREATE SET m.id = 'earnings_margin', m.unit = '%';

// Query 32
MERGE (m:Metric {name: 'Interest Cover'}) ON CREATE SET m.id = 'interest_cover', m.unit = 'Times';

// Query 33
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Net Working Capital'}) ON CREATE SET m.id = 'net_working_capital', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Gross Debt'}) ON CREATE SET m.id = 'gross_debt', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Value Generated'}) ON CREATE SET m.id = 'value_generated', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Share of Results of Joint Ventures and Associates'}) ON CREATE SET m.id = 'share_of_results_of_joint_ventures_and_associates', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Other Investment Income'}) ON CREATE SET m.id = 'other_investment_income', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Profit on Sale of Assets and Other Income'}) ON CREATE SET m.id = 'profit_on_sale_of_assets_and_other_income', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Valuation Gain on Investment Properties'}) ON CREATE SET m.id = 'valuation_gain_on_investment_properties', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Value Distributed'}) ON CREATE SET m.id = 'value_distributed', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Operating Overheads'}) ON CREATE SET m.id = 'operating_overheads', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Employee Wages and Benefits'}) ON CREATE SET m.id = 'employee_wages_and_benefits', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Payments to Providers of Funds'}) ON CREATE SET m.id = 'payments_to_providers_of_funds', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Payments to Government'}) ON CREATE SET m.id = 'payments_to_government', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Community Investments (Donations)'}) ON CREATE SET m.id = 'community_investments_donations', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Value Retained'}) ON CREATE SET m.id = 'value_retained', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Depreciation'}) ON CREATE SET m.id = 'depreciation', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Amortisation'}) ON CREATE SET m.id = 'amortisation', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Profit After Dividends'}) ON CREATE SET m.id = 'profit_after_dividends', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 54
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 55
MERGE (m:Metric {name: 'Price to Earnings Ratio'}) ON CREATE SET m.id = 'price_to_earnings_ratio', m.unit = 'Times';

// Query 56
MERGE (m:Metric {name: 'Dividend Payout Ratio'}) ON CREATE SET m.id = 'dividend_payout_ratio', m.unit = '%';

// Query 57
MERGE (m:Metric {name: 'Return on Capital Employed'}) ON CREATE SET m.id = 'return_on_capital_employed', m.unit = '%';

// Query 58
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 59
MERGE (m:Metric {name: 'Total Shareholder Return'}) ON CREATE SET m.id = 'total_shareholder_return', m.unit = '%';

// Query 60
MERGE (m:Metric {name: 'Diluted Earnings Per Share'}) ON CREATE SET m.id = 'diluted_earnings_per_share', m.unit = 'Rs';

// Query 61
MERGE (m:Metric {name: 'Profit Attributable to Ordinary Shareholders for Diluted EPS'}) ON CREATE SET m.id = 'profit_attributable_to_ordinary_shareholders_for_diluted_eps', m.unit = 'Rs';

// Query 62
MERGE (m:Metric {name: 'Weighted Average Number of Ordinary Shares for Diluted EPS'}) ON CREATE SET m.id = 'weighted_average_number_of_ordinary_shares_for_diluted_eps', m.unit = 'Count';

// Query 63
MERGE (m:Metric {name: 'Interim Dividend Per Share'}) ON CREATE SET m.id = 'interim_dividend_per_share', m.unit = 'Rs';

// Query 64
MERGE (m:Metric {name: 'Final Dividend Per Share'}) ON CREATE SET m.id = 'final_dividend_per_share', m.unit = 'Rs';

// Query 65
MERGE (m:Metric {name: 'Total Dividend Per Share for Year'}) ON CREATE SET m.id = 'total_dividend_per_share_for_year', m.unit = 'Rs';

// Query 66
MERGE (m:Metric {name: 'Donations to Charity'}) ON CREATE SET m.id = 'donations_to_charity', m.unit = 'Rs';

// Query 67
MERGE (m:Metric {name: 'Total Employees'}) ON CREATE SET m.id = 'total_employees', m.unit = 'Count';

// Query 68
MERGE (m:Metric {name: 'Market Capitalisation'}) ON CREATE SET m.id = 'market_capitalisation', m.unit = 'Rs';

// Query 69
MERGE (m:Metric {name: 'Public Holding'}) ON CREATE SET m.id = 'public_holding', m.unit = '%';

// Query 70
MERGE (m:Metric {name: 'Revenue Q1'}) ON CREATE SET m.id = 'revenue_q1', m.unit = 'Rs';

// Query 71
MERGE (m:Metric {name: 'Revenue Q2'}) ON CREATE SET m.id = 'revenue_q2', m.unit = 'Rs';

// Query 72
MERGE (m:Metric {name: 'Revenue Q3'}) ON CREATE SET m.id = 'revenue_q3', m.unit = 'Rs';

// Query 73
MERGE (m:Metric {name: 'Revenue Q4'}) ON CREATE SET m.id = 'revenue_q4', m.unit = 'Rs';

// Query 74
MERGE (auditor:Company {name: 'Ernst & Young'}) ON CREATE SET auditor.id = 'ernst_and_young';

// Query 75
MATCH (p:Person {name: 'H. N. Esufally'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 76
MATCH (p:Person {name: 'H. N. Esufally'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2024-03-31');

// Query 77
MATCH (p:Person {name: 'H. N. Esufally'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member, Human Resources and Remuneration Committee', r.as_of = date('2024-03-31');

// Query 78
MATCH (p:Person {name: 'A. N. Esufally'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2024-03-31');

// Query 79
MATCH (p:Person {name: 'A. N. Esufally'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member, Nomination and Governance Committee', r.as_of = date('2024-03-31');

// Query 80
MATCH (p:Person {name: 'I. A. H. Esufally'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2024-03-31');

// Query 81
MATCH (p:Person {name: 'I. A. H. Esufally'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member, Audit Committee', r.as_of = date('2024-03-31');

// Query 82
MATCH (p:Person {name: 'M. A. H. Esufally'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2024-03-31');

// Query 83
MATCH (p:Person {name: 'K. A. C. Wilson'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 84
MATCH (p:Person {name: 'K. A. C. Wilson'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2024-04-01');

// Query 85
MATCH (p:Person {name: 'Dr. S. A. B. Ekanayake'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 86
MATCH (p:Person {name: 'Dr. S. A. B. Ekanayake'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 87
MATCH (p:Person {name: 'Dr. S. A. B. Ekanayake'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman, Human Resources and Remuneration Committee', r.as_of = date('2024-03-31');

// Query 88
MATCH (p:Person {name: 'Dr. S. A. B. Ekanayake'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman, Nomination and Governance Committee', r.as_of = date('2024-03-31');

// Query 89
MATCH (p:Person {name: 'A. S. Amaratunga'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 90
MATCH (p:Person {name: 'A. S. Amaratunga'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman, Audit Committee', r.as_of = date('2024-03-31');

// Query 91
MATCH (p:Person {name: 'A. S. Amaratunga'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member, Human Resources and Remuneration Committee', r.as_of = date('2024-03-31');

// Query 92
MATCH (p:Person {name: 'J. M. Trivedi'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 93
MATCH (p:Person {name: 'J. M. Trivedi'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member, Nomination and Governance Committee', r.as_of = date('2024-03-31');

// Query 94
MATCH (p:Person {name: 'P. Subasinghe'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 95
MATCH (p:Person {name: 'R. P. Pathirana'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 96
MATCH (p:Person {name: 'R. P. Pathirana'}), (c:Company {name: 'Hemas Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member, Audit Committee', r.as_of = date('2024-03-31');

// Query 97
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (s:Sector {name: 'Household and Personal Products'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 98
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (s:Sector {name: 'Health Care Equipment and Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 99
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 100
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (s:Sector {name: 'Pharmaceuticals, Biotechnology, and Life Sciences'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 101
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (prod:Product {name: 'Digital Health Records'}) MERGE (c)-[:OFFERS]->(prod);

// Query 102
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (prod:Product {name: 'Pharmaceuticals'}) MERGE (c)-[:OFFERS]->(prod);

// Query 103
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (prod:Product {name: 'Pharmaceutical Distribution'}) MERGE (c)-[:OFFERS]->(prod);

// Query 104
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (prod:Product {name: 'Aviation Services'}) MERGE (c)-[:OFFERS]->(prod);

// Query 105
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 121614000000, r.year = 2024;

// Query 106
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 113940000000, r.year = 2023;

// Query 107
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 35997000000, r.year = 2024;

// Query 108
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 31793000000, r.year = 2023;

// Query 109
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Gross Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 29.6, r.year = 2024;

// Query 110
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Gross Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 27.9, r.year = 2023;

// Query 111
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'EBITDA'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13604000000, r.year = 2024;

// Query 112
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'EBITDA'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12566000000, r.year = 2023;

// Query 113
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'EBITDA Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11.2, r.year = 2024;

// Query 114
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'EBITDA Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11.0, r.year = 2023;

// Query 115
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'EBIT'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11921000000, r.year = 2024;

// Query 116
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'EBIT'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10963000000, r.year = 2023;

// Query 117
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'EBIT Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9.8, r.year = 2024;

// Query 118
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'EBIT Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9.6, r.year = 2023;

// Query 119
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Net Finance Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2453000000, r.year = 2024;

// Query 120
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Net Finance Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3198000000, r.year = 2023;

// Query 121
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9468000000, r.year = 2024;

// Query 122
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7765000000, r.year = 2023;

// Query 123
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6355000000, r.year = 2024;

// Query 124
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5069000000, r.year = 2023;

// Query 125
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6109000000, r.year = 2024;

// Query 126
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4269000000, r.year = 2023;

// Query 127
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Earnings Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5.0, r.year = 2024;

// Query 128
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Earnings Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.7, r.year = 2023;

// Query 129
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.7, r.year = 2024;

// Query 130
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.7, r.year = 2023;

// Query 131
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 93723000000, r.year = 2024;

// Query 132
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 98498000000, r.year = 2023;

// Query 133
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 44120000000, r.year = 2024;

// Query 134
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 39120000000, r.year = 2023;

// Query 135
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 49603000000, r.year = 2024;

// Query 136
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 59378000000, r.year = 2023;

// Query 137
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Net Working Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 18226000000, r.year = 2024;

// Query 138
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Net Working Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 24433000000, r.year = 2023;

// Query 139
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Gross Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12705000000, r.year = 2024;

// Query 140
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Gross Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 21457000000, r.year = 2023;

// Query 141
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Value Generated'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 123265000000, r.year = 2024;

// Query 142
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Value Generated'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 115171000000, r.year = 2023;

// Query 143
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Share of Results of Joint Ventures and Associates'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 93000000, r.year = 2024;

// Query 144
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Share of Results of Joint Ventures and Associates'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -400000000, r.year = 2023;

// Query 145
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Other Investment Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 767000000, r.year = 2024;

// Query 146
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Other Investment Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 911000000, r.year = 2023;

// Query 147
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Profit on Sale of Assets and Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 526000000, r.year = 2024;

// Query 148
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Profit on Sale of Assets and Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 512000000, r.year = 2023;

// Query 149
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Valuation Gain on Investment Properties'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 265000000, r.year = 2024;

// Query 150
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Valuation Gain on Investment Properties'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 208000000, r.year = 2023;

// Query 151
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Value Distributed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 117381000000, r.year = 2024;

// Query 152
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Value Distributed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 110113000000, r.year = 2023;

// Query 153
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Operating Overheads'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 90858000000, r.year = 2024;

// Query 154
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Operating Overheads'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 83852000000, r.year = 2023;

// Query 155
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Employee Wages and Benefits'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11541000000, r.year = 2024;

// Query 156
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Employee Wages and Benefits'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10313000000, r.year = 2023;

// Query 157
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Payments to Providers of Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4802000000, r.year = 2024;

// Query 158
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Payments to Providers of Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5954000000, r.year = 2023;

// Query 159
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Payments to Government'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10146000000, r.year = 2024;

// Query 160
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Payments to Government'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9920000000, r.year = 2023;

// Query 161
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Community Investments (Donations)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 32000000, r.year = 2024;

// Query 162
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Community Investments (Donations)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 74000000, r.year = 2023;

// Query 163
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Value Retained'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5884000000, r.year = 2024;

// Query 164
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Value Retained'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5058000000, r.year = 2023;

// Query 165
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Depreciation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1326000000, r.year = 2024;

// Query 166
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Depreciation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1220000000, r.year = 2023;

// Query 167
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Amortisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 357000000, r.year = 2024;

// Query 168
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Amortisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 383000000, r.year = 2023;

// Query 169
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Profit After Dividends'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4201000000, r.year = 2024;

// Query 170
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Profit After Dividends'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3455000000, r.year = 2023;

// Query 171
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10.24, r.year = 2024;

// Query 172
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7.16, r.year = 2023;

// Query 173
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.35, r.year = 2024;

// Query 174
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.35, r.year = 2023;

// Query 175
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Price to Earnings Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7.9, r.year = 2024;

// Query 176
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Price to Earnings Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9.1, r.year = 2023;

// Query 177
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 23.0, r.year = 2024;

// Query 178
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 33.0, r.year = 2023;

// Query 179
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 22.1, r.year = 2024;

// Query 180
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 22.9, r.year = 2023;

// Query 181
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 15.3, r.year = 2024;

// Query 182
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13.4, r.year = 2023;

// Query 183
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Total Shareholder Return'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 27.3, r.year = 2024;

// Query 184
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Total Shareholder Return'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 45.8, r.year = 2023;

// Query 185
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Diluted Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10.23, r.year = 2024;

// Query 186
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Diluted Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7.15, r.year = 2023;

// Query 187
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Profit Attributable to Ordinary Shareholders for Diluted EPS'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6108520000, r.year = 2024;

// Query 188
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Profit Attributable to Ordinary Shareholders for Diluted EPS'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4268855000, r.year = 2023;

// Query 189
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Weighted Average Number of Ordinary Shares for Diluted EPS'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 597220000, r.year = 2024;

// Query 190
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Weighted Average Number of Ordinary Shares for Diluted EPS'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 597276000, r.year = 2023;

// Query 191
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Interim Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.40, r.as_of = date('2023-12-08');

// Query 192
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Final Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.00, r.as_of = date('2024-07-17');

// Query 193
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Total Dividend Per Share for Year'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.40, r.year = 2024;

// Query 194
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Total Dividend Per Share for Year'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.35, r.year = 2023;

// Query 195
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Donations to Charity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 32300000, r.year = 2024;

// Query 196
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Donations to Charity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 74200000, r.year = 2023;

// Query 197
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Total Employees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5826, r.year = 2024;

// Query 198
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Market Capitalisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 48279900000, r.year = 2024;

// Query 199
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Public Holding'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 36.8, r.year = 2024;

// Query 200
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Revenue Q1'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 29121435000, r.year = 2024;

// Query 201
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Revenue Q2'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 29829387000, r.year = 2024;

// Query 202
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Revenue Q3'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 31222706000, r.year = 2024;

// Query 203
MATCH (c:Company {name: 'Hemas Holdings PLC'}), (m:Metric {name: 'Revenue Q4'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 31440244000, r.year = 2024;

MATCH (c:Company {name: 'Hemas Holdings PLC'}), (auditor:Company {name: 'Ernst & Young'}) 
MERGE (c)-[r:AUDITED_BY]->(auditor) 
ON CREATE SET r.year = 2024

// Total queries: 204
// Generated on: 2025-10-02T18:46:03.890831
