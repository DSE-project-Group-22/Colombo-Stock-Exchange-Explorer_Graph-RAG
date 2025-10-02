// Query 1
MERGE (c:Company {name: 'Lanka IOC PLC'}) ON CREATE SET c.id = 'lanka_ioc_plc', c.founded_on = date('2002-08-29'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 2
MERGE (c:Company {name: 'Indian Oil Corporation Ltd'}) ON CREATE SET c.id = 'indian_oil_corporation_ltd';

// Query 3
MERGE (c:Company {name: 'BDO Partners - Chartered Accountants'}) ON CREATE SET c.id = 'bdo_partners_chartered_accountants';

// Query 4
MERGE (c:Company {name: 'KPMG Chartered Accountants'}) ON CREATE SET c.id = 'kpmg_chartered_accountants';

// Query 5
MERGE (c:Company {name: 'Ceylon Petroleum Storage Terminals Limited'}) ON CREATE SET c.id = 'ceylon_petroleum_storage_terminals_limited';

// Query 6
MERGE (c:Company {name: 'Trinco Petroleum Terminal (Pvt) Ltd'}) ON CREATE SET c.id = 'trinco_petroleum_terminal_pvt_ltd';

// Query 7
MERGE (c:Company {name: 'Trinco Petroleum Terminalling Pvt Ltd'}) ON CREATE SET c.id = 'trinco_petroleum_terminalling_pvt_ltd';

// Query 8
MERGE (c:Company {name: 'Ceylon Petroleum Corporation'}) ON CREATE SET c.id = 'ceylon_petroleum_corporation';

// Query 9
MERGE (c:Company {name: 'ACUITY PARTNERS (PVT) LIMITED'}) ON CREATE SET c.id = 'acuity_partners_pvt_limited';

// Query 10
MERGE (c:Company {name: 'EMPLOYEES TRUST FUND BOARD'}) ON CREATE SET c.id = 'employees_trust_fund_board';

// Query 11
MERGE (c:Company {name: 'Standard Chartered Bank'}) ON CREATE SET c.id = 'standard_chartered_bank';

// Query 12
MERGE (c:Company {name: 'Deutsche Bank'}) ON CREATE SET c.id = 'deutsche_bank';

// Query 13
MERGE (c:Company {name: 'Citibank N. A.'}) ON CREATE SET c.id = 'citibank_n_a';

// Query 14
MERGE (c:Company {name: 'State Bank of India, Colombo'}) ON CREATE SET c.id = 'state_bank_of_india_colombo';

// Query 15
MERGE (c:Company {name: 'HSBC Bank'}) ON CREATE SET c.id = 'hsbc_bank';

// Query 16
MERGE (c:Company {name: 'Bank of Ceylon'}) ON CREATE SET c.id = 'bank_of_ceylon';

// Query 17
MERGE (c:Company {name: 'People’s Bank'}) ON CREATE SET c.id = 'peoples_bank';

// Query 18
MERGE (c:Company {name: 'Commercial Bank of Ceylon'}) ON CREATE SET c.id = 'commercial_bank_of_ceylon';

// Query 19
MERGE (p:Person {name: 'Mr. Sujoy Choudhury'}) ON CREATE SET p.id = 'mr_sujoy_choudhury';

// Query 20
MERGE (p:Person {name: 'Mr. Dipak Das'}) ON CREATE SET p.id = 'mr_dipak_das';

// Query 21
MERGE (p:Person {name: 'Prof. Lakshman R Watawala'}) ON CREATE SET p.id = 'prof_lakshman_r_watawala';

// Query 22
MERGE (p:Person {name: 'Mr. Amitha Gooneratne'}) ON CREATE SET p.id = 'mr_amitha_gooneratne';

// Query 23
MERGE (p:Person {name: 'Mr. N D Mathur'}) ON CREATE SET p.id = 'mr_n_d_mathur';

// Query 24
MERGE (p:Person {name: 'Mr. R V N Vishweshwar'}) ON CREATE SET p.id = 'mr_r_v_n_vishweshwar';

// Query 25
MERGE (p:Person {name: 'Ms. Amali Liyanapatabendi'}) ON CREATE SET p.id = 'ms_amali_liyanapatabendi';

// Query 26
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 27
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 28
MERGE (pr:Product {name: 'petrol'}) ON CREATE SET pr.id = 'petrol';

// Query 29
MERGE (pr:Product {name: 'diesel'}) ON CREATE SET pr.id = 'diesel';

// Query 30
MERGE (pr:Product {name: 'auto-fuel'}) ON CREATE SET pr.id = 'auto_fuel';

// Query 31
MERGE (pr:Product {name: 'bunkering'}) ON CREATE SET pr.id = 'bunkering';

// Query 32
MERGE (pr:Product {name: 'lubricants'}) ON CREATE SET pr.id = 'lubricants';

// Query 33
MERGE (pr:Product {name: 'bitumen'}) ON CREATE SET pr.id = 'bitumen';

// Query 34
MERGE (pr:Product {name: 'petrochemicals'}) ON CREATE SET pr.id = 'petrochemicals';

// Query 35
MERGE (pr:Product {name: 'Propel'}) ON CREATE SET pr.id = 'propel';

// Query 36
MERGE (pr:Product {name: 'Servo'}) ON CREATE SET pr.id = 'servo';

// Query 37
MERGE (pr:Product {name: 'LSD'}) ON CREATE SET pr.id = 'lsd';

// Query 38
MERGE (pr:Product {name: 'XP95'}) ON CREATE SET pr.id = 'xp95';

// Query 39
MERGE (pr:Product {name: 'XM'}) ON CREATE SET pr.id = 'xm';

// Query 40
MERGE (pr:Product {name: 'LP92'}) ON CREATE SET pr.id = 'lp92';

// Query 41
MERGE (pr:Product {name: 'Wet Brake Oil SERVO MTRAC 30'}) ON CREATE SET pr.id = 'wet_brake_oil_servo_mtrac_30';

// Query 42
MERGE (m:Metric {name: 'Finance Income'}) ON CREATE SET m.id = 'finance_income', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Depreciation and Amortisation'}) ON CREATE SET m.id = 'depreciation_and_amortisation', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'EBITDA'}) ON CREATE SET m.id = 'ebitda', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'ROCE'}) ON CREATE SET m.id = 'roce', m.unit = '%';

// Query 49
MERGE (m:Metric {name: 'Cash Flows From Operations'}) ON CREATE SET m.id = 'cash_flows_from_operations', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Cash Flow From Investment'}) ON CREATE SET m.id = 'cash_flow_from_investment', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Cash Flow From Financing'}) ON CREATE SET m.id = 'cash_flow_from_financing', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Capital Employed'}) ON CREATE SET m.id = 'capital_employed', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Borrowings'}) ON CREATE SET m.id = 'borrowings', m.unit = 'Rs';

// Query 54
MERGE (m:Metric {name: 'Gearing Ratio'}) ON CREATE SET m.id = 'gearing_ratio', m.unit = '%';

// Query 55
MERGE (m:Metric {name: 'Taxes Paid'}) ON CREATE SET m.id = 'taxes_paid', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Number of Employees'}) ON CREATE SET m.id = 'number_of_employees', m.unit = 'Count';

// Query 57
MERGE (m:Metric {name: 'New Employees'}) ON CREATE SET m.id = 'new_employees', m.unit = 'Count';

// Query 58
MERGE (m:Metric {name: 'Total Turnover Rate'}) ON CREATE SET m.id = 'total_turnover_rate', m.unit = '%';

// Query 59
MERGE (m:Metric {name: 'Investment in Training'}) ON CREATE SET m.id = 'investment_in_training', m.unit = 'Rs';

// Query 60
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 61
MERGE (m:Metric {name: 'P/E Ratio'}) ON CREATE SET m.id = 'p_e_ratio', m.unit = 'Times';

// Query 62
MERGE (m:Metric {name: 'Price to Book Value'}) ON CREATE SET m.id = 'price_to_book_value', m.unit = 'Times';

// Query 63
MERGE (m:Metric {name: 'Net Asset Value Per Share'}) ON CREATE SET m.id = 'net_asset_value_per_share', m.unit = 'Rs';

// Query 64
MERGE (m:Metric {name: 'Market Price Per Share'}) ON CREATE SET m.id = 'market_price_per_share', m.unit = 'Rs';

// Query 65
MERGE (m:Metric {name: 'Dividend Per Share Paid'}) ON CREATE SET m.id = 'dividend_per_share_paid', m.unit = 'Rs';

// Query 66
MERGE (m:Metric {name: 'Market Value Per Share (Highest)'}) ON CREATE SET m.id = 'market_value_per_share_highest', m.unit = 'Rs';

// Query 67
MERGE (m:Metric {name: 'Market Value Per Share (Lowest)'}) ON CREATE SET m.id = 'market_value_per_share_lowest', m.unit = 'Rs';

// Query 68
MERGE (m:Metric {name: 'Last Traded Price Record'}) ON CREATE SET m.id = 'last_traded_price_record', m.unit = 'Rs';

// Query 69
MERGE (m:Metric {name: 'Equity'}) ON CREATE SET m.id = 'equity', m.unit = 'Rs';

// Query 70
MERGE (m:Metric {name: 'Debt'}) ON CREATE SET m.id = 'debt', m.unit = 'Rs';

// Query 71
MERGE (m:Metric {name: 'Total Capital'}) ON CREATE SET m.id = 'total_capital', m.unit = 'Rs';

// Query 72
MERGE (m:Metric {name: 'Cash and Cash Equivalents'}) ON CREATE SET m.id = 'cash_and_cash_equivalents', m.unit = 'Rs';

// Query 73
MERGE (m:Metric {name: 'Net Debt'}) ON CREATE SET m.id = 'net_debt', m.unit = 'Rs';

// Query 74
MERGE (m:Metric {name: 'Operating Costs'}) ON CREATE SET m.id = 'operating_costs', m.unit = 'Rs';

// Query 75
MERGE (m:Metric {name: 'Employee Wages and Benefits'}) ON CREATE SET m.id = 'employee_wages_and_benefits', m.unit = 'Rs';

// Query 76
MERGE (m:Metric {name: 'Payments to Providers of Funds'}) ON CREATE SET m.id = 'payments_to_providers_of_funds', m.unit = 'Rs';

// Query 77
MERGE (m:Metric {name: 'Community Investments'}) ON CREATE SET m.id = 'community_investments', m.unit = 'Rs';

// Query 78
MERGE (m:Metric {name: 'Profit After Dividend'}) ON CREATE SET m.id = 'profit_after_dividend', m.unit = 'Rs';

// Query 79
MATCH (p:Person {name: 'Mr. Sujoy Choudhury'}), (c:Company {name: 'Lanka IOC PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 80
MATCH (p:Person {name: 'Mr. Dipak Das'}), (c:Company {name: 'Lanka IOC PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 81
MATCH (p:Person {name: 'Prof. Lakshman R Watawala'}), (c:Company {name: 'Lanka IOC PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 82
MATCH (p:Person {name: 'Mr. Amitha Gooneratne'}), (c:Company {name: 'Lanka IOC PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 83
MATCH (p:Person {name: 'Mr. N D Mathur'}), (c:Company {name: 'Lanka IOC PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2024-03-20');

// Query 84
MATCH (p:Person {name: 'Mr. R V N Vishweshwar'}), (c:Company {name: 'Lanka IOC PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-20');

// Query 85
MATCH (p:Person {name: 'Ms. Amali Liyanapatabendi'}), (c:Company {name: 'Lanka IOC PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-03-31');

// Query 86
MATCH (p:Person {name: 'Prof. Lakshman R Watawala'}), (c:Company {name: 'Lanka IOC PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 500, r.as_of = date('2024-03-31');

// Query 87
MATCH (p:Person {name: 'Mr. Amitha Gooneratne'}), (c:Company {name: 'Lanka IOC PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 4800, r.as_of = date('2024-03-31');

// Query 88
MATCH (c:Company {name: 'Lanka IOC PLC'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 89
MATCH (c:Company {name: 'Lanka IOC PLC'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 90
MATCH (c:Company {name: 'Lanka IOC PLC'}), (pr:Product {name: 'petrol'}) MERGE (c)-[:OFFERS]->(pr);

// Query 91
MATCH (c:Company {name: 'Lanka IOC PLC'}), (pr:Product {name: 'diesel'}) MERGE (c)-[:OFFERS]->(pr);

// Query 92
MATCH (c:Company {name: 'Lanka IOC PLC'}), (pr:Product {name: 'auto-fuel'}) MERGE (c)-[:OFFERS]->(pr);

// Query 93
MATCH (c:Company {name: 'Lanka IOC PLC'}), (pr:Product {name: 'bunkering'}) MERGE (c)-[:OFFERS]->(pr);

// Query 94
MATCH (c:Company {name: 'Lanka IOC PLC'}), (pr:Product {name: 'lubricants'}) MERGE (c)-[:OFFERS]->(pr);

// Query 95
MATCH (c:Company {name: 'Lanka IOC PLC'}), (pr:Product {name: 'bitumen'}) MERGE (c)-[:OFFERS]->(pr);

// Query 96
MATCH (c:Company {name: 'Lanka IOC PLC'}), (pr:Product {name: 'petrochemicals'}) MERGE (c)-[:OFFERS]->(pr);

// Query 97
MATCH (c:Company {name: 'Lanka IOC PLC'}), (pr:Product {name: 'Propel'}) MERGE (c)-[:OFFERS]->(pr);

// Query 98
MATCH (c:Company {name: 'Lanka IOC PLC'}), (pr:Product {name: 'Servo'}) MERGE (c)-[:OFFERS]->(pr);

// Query 99
MATCH (c:Company {name: 'Lanka IOC PLC'}), (pr:Product {name: 'LSD'}) MERGE (c)-[:OFFERS]->(pr);

// Query 100
MATCH (c:Company {name: 'Lanka IOC PLC'}), (pr:Product {name: 'XP95'}) MERGE (c)-[:OFFERS]->(pr);

// Query 101
MATCH (c:Company {name: 'Lanka IOC PLC'}), (pr:Product {name: 'XM'}) MERGE (c)-[:OFFERS]->(pr);

// Query 102
MATCH (c:Company {name: 'Lanka IOC PLC'}), (pr:Product {name: 'LP92'}) MERGE (c)-[:OFFERS]->(pr);

// Query 103
MATCH (c:Company {name: 'Lanka IOC PLC'}), (pr:Product {name: 'Wet Brake Oil SERVO MTRAC 30'}) MERGE (c)-[:OFFERS]->(pr);

// Query 104
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5033000000.0, r.year = 2024;

// Query 105
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3454000000.0, r.year = 2023;

// Query 106
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12809000000.0, r.year = 2024;

// Query 107
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 44177000000.0, r.year = 2023;

// Query 108
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Depreciation and Amortisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 428000000.0, r.year = 2024;

// Query 109
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Depreciation and Amortisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 454000000.0, r.year = 2023;

// Query 110
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'EBITDA'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13237000000.0, r.year = 2024;

// Query 111
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'EBITDA'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 44631000000.0, r.year = 2023;

// Query 112
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13945000000.0, r.year = 2024;

// Query 113
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 37696000000.0, r.year = 2023;

// Query 114
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 26.19, r.year = 2024;

// Query 115
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 70.79, r.year = 2023;

// Query 116
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'ROCE'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16.0, r.year = 2024;

// Query 117
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'ROCE'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 67.0, r.year = 2023;

// Query 118
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Cash Flows From Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 21725000000.0, r.year = 2024;

// Query 119
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Cash Flows From Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 26167000000.0, r.year = 2023;

// Query 120
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Cash Flow From Investment'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -19218000000.0, r.year = 2024;

// Query 121
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Cash Flow From Investment'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -133000000.0, r.year = 2023;

// Query 122
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Cash Flow From Financing'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2219000000.0, r.year = 2024;

// Query 123
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Cash Flow From Financing'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -22568000000.0, r.year = 2023;

// Query 124
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 73470000000.0, r.year = 2024;

// Query 125
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 61233000000.0, r.year = 2023;

// Query 126
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4307000000.0, r.year = 2024;

// Query 127
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4468000000.0, r.year = 2023;

// Query 128
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6.0, r.year = 2024;

// Query 129
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7.0, r.year = 2023;

// Query 130
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Taxes Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 62232000000.0, r.year = 2024;

// Query 131
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Taxes Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 40510000000.0, r.year = 2023;

// Query 132
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Number of Employees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 157, r.year = 2024;

// Query 133
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Number of Employees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 159, r.year = 2023;

// Query 134
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'New Employees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4, r.year = 2024;

// Query 135
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'New Employees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1, r.year = 2023;

// Query 136
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Total Turnover Rate'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.0, r.year = 2024;

// Query 137
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Total Turnover Rate'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.0, r.year = 2023;

// Query 138
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Investment in Training'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1000000.0, r.year = 2024;

// Query 139
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Investment in Training'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1000000.0, r.year = 2023;

// Query 140
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 264000000000.0, r.year = 2024;

// Query 141
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 281490000000.0, r.year = 2023;

// Query 142
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'P/E Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.46, r.year = 2024;

// Query 143
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'P/E Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.42, r.year = 2023;

// Query 144
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Price to Book Value'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.85, r.year = 2024;

// Query 145
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Price to Book Value'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.49, r.year = 2023;

// Query 146
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 137.98, r.year = 2024;

// Query 147
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 115.00, r.year = 2023;

// Query 148
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 116.75, r.year = 2024;

// Query 149
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 171.5, r.year = 2023;

// Query 150
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Dividend Per Share Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.00, r.year = 2024;

// Query 151
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Dividend Per Share Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.25, r.year = 2023;

// Query 152
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Market Value Per Share (Highest)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 182.00, r.year = 2024;

// Query 153
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Market Value Per Share (Highest)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 296.00, r.year = 2023;

// Query 154
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Market Value Per Share (Lowest)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 94.00, r.year = 2024;

// Query 155
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Market Value Per Share (Lowest)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 158.00, r.year = 2023;

// Query 156
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Last Traded Price Record'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 116.75, r.year = 2024;

// Query 157
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Last Traded Price Record'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 171.5, r.year = 2023;

// Query 158
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 73470000000.0, r.year = 2024;

// Query 159
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 61233000000.0, r.year = 2023;

// Query 160
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4307000000.0, r.year = 2024;

// Query 161
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4468000000.0, r.year = 2023;

// Query 162
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Total Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 77777000000.0, r.year = 2024;

// Query 163
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Total Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 65701000000.0, r.year = 2023;

// Query 164
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Cash and Cash Equivalents'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6277000000.0, r.year = 2024;

// Query 165
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Cash and Cash Equivalents'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5990000000.0, r.year = 2023;

// Query 166
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Net Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1970000000.0, r.year = 2024;

// Query 167
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Net Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1522000000.0, r.year = 2023;

// Query 168
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Operating Costs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 184277000000.0, r.year = 2024;

// Query 169
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Operating Costs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 202407000000.0, r.year = 2023;

// Query 170
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Employee Wages and Benefits'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1201000000.0, r.year = 2024;

// Query 171
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Employee Wages and Benefits'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 883000000.0, r.year = 2023;

// Query 172
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Payments to Providers of Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2615000000.0, r.year = 2024;

// Query 173
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Payments to Providers of Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4127000000.0, r.year = 2023;

// Query 174
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Community Investments'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 270000000.0, r.year = 2024;

// Query 175
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Community Investments'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 210000000.0, r.year = 2023;

// Query 176
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Profit After Dividend'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 17815000000.0, r.year = 2024;

// Query 177
MATCH (c:Company {name: 'Lanka IOC PLC'}), (m:Metric {name: 'Profit After Dividend'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 36498000000.0, r.year = 2023;

// Query 178
//MATCH (c:Company {name: 'Lanka IOC PLC'}), (auditor:Company {name: 'BDO Partners - Chartered Accountants'}) MERGE (c)-[:AUDITED_BY]->(auditor) ON CREATE SET year = 2024;

// Query 179
MATCH (c:Company {name: 'Lanka IOC PLC'}), (auditor:Company {name: 'KPMG Chartered Accountants'}) 
MERGE (c)-[r:AUDITED_BY]->(auditor) 
ON CREATE SET r.year = 2024;

// Query 180
MATCH (parent:Company {name: 'Indian Oil Corporation Ltd'}), (child:Company {name: 'Lanka IOC PLC'}) MERGE (parent)-[:OWNS]->(child);

// Query 181
MATCH (parent:Company {name: 'Lanka IOC PLC'}), (child:Company {name: 'Trinco Petroleum Terminalling Pvt Ltd'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 49.0, r.as_of = date('2024-03-31');

// Query 182
MATCH (parent:Company {name: 'Ceylon Petroleum Corporation'}), (child:Company {name: 'Trinco Petroleum Terminalling Pvt Ltd'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 51.0, r.as_of = date('2024-03-31');

// Query 183
MATCH (shareholder:Company {name: 'ACUITY PARTNERS (PVT) LIMITED'}), (company:Company {name: 'Lanka IOC PLC'}) MERGE (shareholder)-[r:OWNS_SHARES]->(company) ON CREATE SET r.count = 2016999, r.pct = 0.38, r.as_of = date('2024-03-31');

// Query 184
MATCH (shareholder:Company {name: 'EMPLOYEES TRUST FUND BOARD'}), (company:Company {name: 'Lanka IOC PLC'}) MERGE (shareholder)-[r:OWNS_SHARES]->(company) ON CREATE SET r.count = 1868959, r.pct = 0.35, r.as_of = date('2024-03-31');

// Total queries: 184
// Generated on: 2025-10-02T18:24:22.000360
