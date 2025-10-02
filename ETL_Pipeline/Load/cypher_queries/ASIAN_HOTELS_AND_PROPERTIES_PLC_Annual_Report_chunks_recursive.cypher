// Query 1
MERGE (c:Company {name: 'Asian Hotels and Properties PLC'}) ON CREATE SET c.id = 'asian_hotels_and_properties_plc', c.founded_on = date('1993-01-01'), c.listed_on = 'Colombo Stock Exchange of Sri Lanka', c.region = 'Sri Lanka';

// Query 2
MERGE (c:Company {name: 'John Keells Holdings PLC'}) ON CREATE SET c.id = 'john_keells_holdings_plc', c.region = 'Sri Lanka';

// Query 3
MERGE (c:Company {name: 'Sampath Bank PLC'}) ON CREATE SET c.id = 'sampath_bank_plc', c.region = 'Sri Lanka';

// Query 4
MERGE (c:Company {name: 'A E C Properties (Pvt) Ltd'}) ON CREATE SET c.id = 'a_e_c_properties_pvt_ltd';

// Query 5
MERGE (c:Company {name: 'Associated Electrical Corporation Ltd'}) ON CREATE SET c.id = 'associated_electrical_corporation_ltd';

// Query 6
MERGE (c:Company {name: 'Econic (Private) Ltd'}) ON CREATE SET c.id = 'econic_private_ltd';

// Query 7
MERGE (c:Company {name: 'Ashan de Zoysa & Co (Pvt) Ltd'}) ON CREATE SET c.id = 'ashan_de_zoysa_and_co_pvt_ltd';

// Query 8
MERGE (c:Company {name: 'Forest Sense (Pvt) Ltd'}) ON CREATE SET c.id = 'forest_sense_pvt_ltd';

// Query 9
MERGE (c:Company {name: 'ADZ Insurance Brokers (Pvt) Ltd'}) ON CREATE SET c.id = 'adz_insurance_brokers_pvt_ltd';

// Query 10
MERGE (c:Company {name: 'KPMG - Chartered Accountants'}) ON CREATE SET c.id = 'kpmg_chartered_accountants';

// Query 11
MERGE (p:Person {name: 'Krishan Balendra'}) ON CREATE SET p.id = 'krishan_balendra';

// Query 12
MERGE (p:Person {name: 'Gihan Cooray'}) ON CREATE SET p.id = 'gihan_cooray';

// Query 13
MERGE (p:Person {name: 'S. Rajendra'}) ON CREATE SET p.id = 's_rajendra';

// Query 14
MERGE (p:Person {name: 'A. S. De Zoysa'}) ON CREATE SET p.id = 'a_s_de_zoysa';

// Query 15
MERGE (p:Person {name: 'J. Durairatnam'}) ON CREATE SET p.id = 'j_durairatnam';

// Query 16
MERGE (p:Person {name: 'M. R. Svensson'}) ON CREATE SET p.id = 'm_r_svensson';

// Query 17
MERGE (p:Person {name: 'C. L. P. Gunawardane'}) ON CREATE SET p.id = 'c_l_p_gunawardane';

// Query 18
MERGE (p:Person {name: 'A. Nanayakkara'}) ON CREATE SET p.id = 'a_nanayakkara';

// Query 19
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 20
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 21
MERGE (prod:Product {name: 'Hotel Services'}) ON CREATE SET prod.id = 'hotel_services';

// Query 22
MERGE (prod:Product {name: 'Property Development'}) ON CREATE SET prod.id = 'property_development';

// Query 23
MERGE (prod:Product {name: 'Property Rental'}) ON CREATE SET prod.id = 'property_rental';

// Query 24
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Results from Operating Activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Dividends Paid'}) ON CREATE SET m.id = 'dividends_paid', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 30
MERGE (m:Metric {name: 'Pre-Tax Return on Capital Employed'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed', m.unit = '%';

// Query 31
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Net Debt'}) ON CREATE SET m.id = 'net_debt', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Equity Capital'}) ON CREATE SET m.id = 'equity_capital', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Debt Capital'}) ON CREATE SET m.id = 'debt_capital', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Net Assets Value Per Share'}) ON CREATE SET m.id = 'net_assets_value_per_share', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Cost of Sales'}) ON CREATE SET m.id = 'cost_of_sales', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Other Operating Income'}) ON CREATE SET m.id = 'other_operating_income', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Selling and Distribution Expenses'}) ON CREATE SET m.id = 'selling_and_distribution_expenses', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Administrative Expenses'}) ON CREATE SET m.id = 'administrative_expenses', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Other Operating Expenses'}) ON CREATE SET m.id = 'other_operating_expenses', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Finance Cost'}) ON CREATE SET m.id = 'finance_cost', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Finance Income'}) ON CREATE SET m.id = 'finance_income', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Net Finance Cost'}) ON CREATE SET m.id = 'net_finance_cost', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Change in Fair Value of Investment Property'}) ON CREATE SET m.id = 'change_in_fair_value_of_investment_property', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Tax Expense'}) ON CREATE SET m.id = 'tax_expense', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Loss Per Share'}) ON CREATE SET m.id = 'loss_per_share', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Total Non-Current Liabilities'}) ON CREATE SET m.id = 'total_non_current_liabilities', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Total Current Liabilities'}) ON CREATE SET m.id = 'total_current_liabilities', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Adjusted Net Debt'}) ON CREATE SET m.id = 'adjusted_net_debt', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Adjusted Net Debt to Adjusted Equity Ratio'}) ON CREATE SET m.id = 'adjusted_net_debt_to_adjusted_equity_ratio', m.unit = '%';

// Query 54
MATCH (p:Person {name: 'Krishan Balendra'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairperson', r.as_of = date('2024-03-31');

// Query 55
MATCH (p:Person {name: 'Gihan Cooray'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 56
MATCH (p:Person {name: 'S. Rajendra'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 57
MATCH (p:Person {name: 'A. S. De Zoysa'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 58
MATCH (p:Person {name: 'J. Durairatnam'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 59
MATCH (p:Person {name: 'M. R. Svensson'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 60
MATCH (p:Person {name: 'C. L. P. Gunawardane'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 61
MATCH (p:Person {name: 'A. Nanayakkara'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 62
MATCH (p:Person {name: 'Krishan Balendra'}), (c:Company {name: 'John Keells Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairperson-CEO';

// Query 63
MATCH (p:Person {name: 'Gihan Cooray'}), (c:Company {name: 'John Keells Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairperson/Group Finance Director';

// Query 64
MATCH (p:Person {name: 'A. Nanayakkara'}), (c:Company {name: 'Sampath Bank PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 65
MATCH (p:Person {name: 'A. S. De Zoysa'}), (c:Company {name: 'A E C Properties (Pvt) Ltd'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 66
MATCH (p:Person {name: 'A. S. De Zoysa'}), (c:Company {name: 'Associated Electrical Corporation Ltd'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 67
MATCH (p:Person {name: 'A. S. De Zoysa'}), (c:Company {name: 'Econic (Private) Ltd'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 68
MATCH (p:Person {name: 'A. S. De Zoysa'}), (c:Company {name: 'Ashan de Zoysa & Co (Pvt) Ltd'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 69
MATCH (p:Person {name: 'A. S. De Zoysa'}), (c:Company {name: 'Forest Sense (Pvt) Ltd'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 70
MATCH (p:Person {name: 'A. S. De Zoysa'}), (c:Company {name: 'ADZ Insurance Brokers (Pvt) Ltd'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 71
MATCH (parent:Company {name: 'John Keells Holdings PLC'}), (child:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (parent)-[:OWNS]->(child);

// Query 72
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 73
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (prod:Product {name: 'Hotel Services'}) MERGE (c)-[:OFFERS]->(prod);

// Query 75
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (prod:Product {name: 'Property Development'}) MERGE (c)-[:OFFERS]->(prod);

// Query 76
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (prod:Product {name: 'Property Rental'}) MERGE (c)-[:OFFERS]->(prod);

// Query 77
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (auditor:Company {name: 'KPMG - Chartered Accountants'}) 
MERGE (c)-[r:AUDITED_BY]->(auditor) 
ON CREATE SET r.year = 2024;

// Query 78
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10772000000, r.year = 2024;

// Query 79
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8417000000, r.year = 2023;

// Query 80
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4095000000, r.year = 2022;

// Query 81
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1790000000, r.year = 2021;

// Query 82
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5560000000, r.year = 2020;

// Query 83
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 612000000, r.year = 2024;

// Query 84
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 93000000, r.year = 2023;

// Query 85
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -407000000, r.year = 2022;

// Query 86
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1913000000, r.year = 2021;

// Query 87
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -28000000, r.year = 2020;

// Query 88
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 212000000, r.year = 2024;

// Query 89
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -133000000, r.year = 2023;

// Query 90
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -459000000, r.year = 2022;

// Query 91
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2370000000, r.year = 2021;

// Query 92
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 199000000, r.year = 2020;

// Query 93
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 78000000, r.year = 2024;

// Query 94
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -333000000, r.year = 2023;

// Query 95
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -508000000, r.year = 2022;

// Query 96
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2244000000, r.year = 2021;

// Query 97
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 106000000, r.year = 2020;

// Query 98
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Dividends Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 442000000, r.year = 2020;

// Query 99
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.07, r.year = 2024;

// Query 100
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.92, r.year = 2023;

// Query 101
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1.62, r.year = 2022;

// Query 102
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5.54, r.year = 2021;

// Query 103
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.15, r.year = 2020;

// Query 104
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Pre-Tax Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.86, r.year = 2024;

// Query 105
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Pre-Tax Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.86, r.year = 2023;

// Query 106
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Pre-Tax Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.65, r.year = 2022;

// Query 107
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Pre-Tax Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6.43, r.year = 2021;

// Query 108
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Pre-Tax Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.61, r.year = 2020;

// Query 109
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 48381000000, r.year = 2024;

// Query 110
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 45912000000, r.year = 2023;

// Query 111
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 42509000000, r.year = 2022;

// Query 112
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 40869000000, r.year = 2021;

// Query 113
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 42582000000, r.year = 2020;

// Query 114
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14832000000, r.year = 2024;

// Query 115
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13674000000, r.year = 2023;

// Query 116
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7549000000, r.year = 2022;

// Query 117
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6256000000, r.year = 2021;

// Query 118
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5889000000, r.year = 2020;

// Query 119
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Net Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2284000000, r.year = 2024;

// Query 120
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Net Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2101000000, r.year = 2023;

// Query 121
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Net Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1645000000, r.year = 2022;

// Query 122
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Net Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 691000000, r.year = 2021;

// Query 123
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Net Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -587000000, r.year = 2020;

// Query 124
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Equity Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 29900000000, r.year = 2024;

// Query 125
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Debt Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 581000000, r.year = 2024;

// Query 126
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Net Assets Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 67.64, r.year = 2024;

// Query 127
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Cost of Sales'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5881000000, r.year = 2024;

// Query 128
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Cost of Sales'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5008000000, r.year = 2023;

// Query 129
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4891000000, r.year = 2024;

// Query 130
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3408000000, r.year = 2023;

// Query 131
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Other Operating Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 82000000, r.year = 2024;

// Query 132
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Other Operating Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 56000000, r.year = 2023;

// Query 133
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Selling and Distribution Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -442079000, r.year = 2024;

// Query 134
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Selling and Distribution Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -300740000, r.year = 2023;

// Query 135
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Administrative Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2786533000, r.year = 2024;

// Query 136
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Administrative Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2204387000, r.year = 2023;

// Query 137
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Other Operating Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1131576000, r.year = 2024;

// Query 138
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Other Operating Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -865773000, r.year = 2023;

// Query 139
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Finance Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -336016000, r.year = 2024;

// Query 140
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Finance Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -393477000, r.year = 2023;

// Query 141
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 25800000, r.year = 2024;

// Query 142
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13609000, r.year = 2023;

// Query 143
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Net Finance Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -310216000, r.year = 2024;

// Query 144
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Net Finance Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -379868000, r.year = 2023;

// Query 145
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Change in Fair Value of Investment Property'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -89904000, r.year = 2024;

// Query 146
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Change in Fair Value of Investment Property'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 154393000, r.year = 2023;

// Query 147
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -134679000, r.year = 2024;

// Query 148
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -200254000, r.year = 2023;

// Query 149
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Loss Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.05, r.year = 2024;

// Query 150
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Loss Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.63, r.year = 2023;

// Query 151
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 33549000000, r.year = 2024;

// Query 152
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 32238000000, r.year = 2023;

// Query 153
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total Non-Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10029000000, r.year = 2024;

// Query 154
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total Non-Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9584000000, r.year = 2023;

// Query 155
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4803000000, r.year = 2024;

// Query 156
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4090000000, r.year = 2023;

// Query 157
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Adjusted Net Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14658148000, r.year = 2024;

// Query 158
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Adjusted Net Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13483117000, r.year = 2023;

// Query 159
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Adjusted Net Debt to Adjusted Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 43.70, r.year = 2024;

// Query 160
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Adjusted Net Debt to Adjusted Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 41.84, r.year = 2023;

// Total queries: 160
// Generated on: 2025-10-02T20:21:09.711621
