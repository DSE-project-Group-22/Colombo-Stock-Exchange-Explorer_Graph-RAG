// Query 1
MERGE (c:Company {name: 'Asian Hotels and Properties PLC'}) ON CREATE SET c.id = 'asian_hotels_and_properties_plc';

// Query 2
MERGE (p:Person {name: 'Krishan Niraj Jayasekara Balendra'}) ON CREATE SET p.id = 'krishan_niraj_jayasekara_balendra';

// Query 3
MATCH (p:Person {name: 'Krishan Niraj Jayasekara Balendra'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairperson', r.as_of = date('2024-03-31');

// Query 4
MERGE (p:Person {name: 'Joseph Gihan Adisha Cooray'}) ON CREATE SET p.id = 'joseph_gihan_adisha_cooray';

// Query 5
MATCH (p:Person {name: 'Joseph Gihan Adisha Cooray'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 6
MERGE (p:Person {name: 'Suresh Rajendra'}) ON CREATE SET p.id = 'suresh_rajendra';

// Query 7
MATCH (p:Person {name: 'Suresh Rajendra'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 8
MERGE (p:Person {name: 'Ashan Suresh De Zoysa'}) ON CREATE SET p.id = 'ashan_suresh_de_zoysa';

// Query 9
MATCH (p:Person {name: 'Ashan Suresh De Zoysa'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 10
MERGE (p:Person {name: 'Jegatheesan Durairatnam'}) ON CREATE SET p.id = 'jegatheesan_durairatnam';

// Query 11
MATCH (p:Person {name: 'Jegatheesan Durairatnam'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 12
MERGE (p:Person {name: 'Mikael Roland Svensson'}) ON CREATE SET p.id = 'mikael_roland_svensson';

// Query 13
MATCH (p:Person {name: 'Mikael Roland Svensson'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 14
MERGE (p:Person {name: 'Changa Lashantha Poojitha Gunawardane'}) ON CREATE SET p.id = 'changa_lashantha_poojitha_gunawardane';

// Query 15
MATCH (p:Person {name: 'Changa Lashantha Poojitha Gunawardane'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 16
MERGE (p:Person {name: 'Aroshi Nanayakkara'}) ON CREATE SET p.id = 'aroshi_nanayakkara';

// Query 17
MATCH (p:Person {name: 'Aroshi Nanayakkara'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 18
MERGE (m:Metric {name: 'Revenue from contracts with customers'}) ON CREATE SET m.id = 'revenue_from_contracts_with_customers', m.unit = 'Rs. Mn';

// Query 19
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Revenue from contracts with customers'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10771.758, r.year = 2024;

// Query 20
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Revenue from contracts with customers'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8416.558, r.year = 2023;

// Query 21
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Revenue from contracts with customers'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4095.0, r.year = 2022;

// Query 22
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Revenue from contracts with customers'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790.0, r.year = 2021;

// Query 23
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Revenue from contracts with customers'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5560.0, r.year = 2020;

// Query 24
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs. Mn';

// Query 25
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612.456, r.year = 2024;

// Query 26
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 92.966, r.year = 2023;

// Query 27
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -407.0, r.year = 2022;

// Query 28
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1913.0, r.year = 2021;

// Query 29
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28.0, r.year = 2020;

// Query 30
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs. Mn';

// Query 31
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212.336, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -132.509, r.year = 2023;

// Query 33
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -459.0, r.year = 2022;

// Query 34
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2370.0, r.year = 2021;

// Query 35
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 199.0, r.year = 2020;

// Query 36
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs. Mn';

// Query 37
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 77.657, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -332.763, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -508.0, r.year = 2022;

// Query 40
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2244.0, r.year = 2021;

// Query 41
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106.0, r.year = 2020;

// Query 42
MERGE (m:Metric {name: 'Dividends paid'}) ON CREATE SET m.id = 'dividends_paid', m.unit = 'Rs. Mn';

// Query 43
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2022;

// Query 46
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2021;

// Query 47
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Dividends paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 442.0, r.year = 2020;

// Query 48
MERGE (m:Metric {name: 'Return on equity (ROE)'}) ON CREATE SET m.id = 'return_on_equity_roe', m.unit = '%';

// Query 49
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.07, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.92, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.62, r.year = 2022;

// Query 52
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.54, r.year = 2021;

// Query 53
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.15, r.year = 2020;

// Query 54
MERGE (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed_roce', m.unit = '%';

// Query 55
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.86, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.65, r.year = 2022;

// Query 58
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.43, r.year = 2021;

// Query 59
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2020;

// Query 60
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. Mn';

// Query 61
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381.0, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45912.0, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42509.0, r.year = 2022;

// Query 64
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40869.0, r.year = 2021;

// Query 65
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42582.0, r.year = 2020;

// Query 66
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. Mn';

// Query 67
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832.0, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13674.0, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7549.0, r.year = 2022;

// Query 70
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6256.0, r.year = 2021;

// Query 71
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5889.0, r.year = 2020;

// Query 72
MERGE (m:Metric {name: 'Net debt / (Cash)'}) ON CREATE SET m.id = 'net_debt_cash', m.unit = 'Rs. Mn';

// Query 73
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2284.0, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2101.0, r.year = 2023;

// Query 75
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1645.0, r.year = 2022;

// Query 76
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 691.0, r.year = 2021;

// Query 77
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Net debt / (Cash)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -587.0, r.year = 2020;

// Query 78
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs. Mn';

// Query 79
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4890.591, r.year = 2024;

// Query 80
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3408.155, r.year = 2023;

// Query 81
MERGE (m:Metric {name: 'Other operating income'}) ON CREATE SET m.id = 'other_operating_income', m.unit = 'Rs. Mn';

// Query 82
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Other operating income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 82.053, r.year = 2024;

// Query 83
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Other operating income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 55.711, r.year = 2023;

// Query 84
MERGE (m:Metric {name: 'Selling and Distribution expenses'}) ON CREATE SET m.id = 'selling_and_distribution_expenses', m.unit = 'Rs. Mn';

// Query 85
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Selling and Distribution expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 442.079, r.year = 2024;

// Query 86
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Selling and Distribution expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 300.740, r.year = 2023;

// Query 87
MERGE (m:Metric {name: 'Administrative expenses'}) ON CREATE SET m.id = 'administrative_expenses', m.unit = 'Rs. Mn';

// Query 88
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Administrative expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2786.533, r.year = 2024;

// Query 89
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Administrative expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2204.387, r.year = 2023;

// Query 90
MERGE (m:Metric {name: 'Other operating expenses'}) ON CREATE SET m.id = 'other_operating_expenses', m.unit = 'Rs. Mn';

// Query 91
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Other operating expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1131.576, r.year = 2024;

// Query 92
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Other operating expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 865.773, r.year = 2023;

// Query 93
MERGE (m:Metric {name: 'Finance cost'}) ON CREATE SET m.id = 'finance_cost', m.unit = 'Rs. Mn';

// Query 94
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Finance cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 336.016, r.year = 2024;

// Query 95
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Finance cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 393.477, r.year = 2023;

// Query 96
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Finance cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 152.578, r.year = 2022;

// Query 97
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Finance cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 191.090, r.year = 2021;

// Query 98
MERGE (m:Metric {name: 'Finance income'}) ON CREATE SET m.id = 'finance_income', m.unit = 'Rs. Mn';

// Query 99
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Finance income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25.800, r.year = 2024;

// Query 100
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Finance income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.609, r.year = 2023;

// Query 101
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Finance income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.274, r.year = 2022;

// Query 102
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Finance income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.807, r.year = 2021;

// Query 103
MERGE (m:Metric {name: 'Change in fair value of investment property'}) ON CREATE SET m.id = 'change_in_fair_value_of_investment_property', m.unit = 'Rs. Mn';

// Query 104
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Change in fair value of investment property'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -89.904, r.year = 2024;

// Query 105
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Change in fair value of investment property'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 154.393, r.year = 2023;

// Query 106
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Change in fair value of investment property'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -184.959, r.year = 2022;

// Query 107
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Change in fair value of investment property'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -59.909, r.year = 2021;

// Query 108
MERGE (m:Metric {name: 'Income Tax'}) ON CREATE SET m.id = 'income_tax', m.unit = 'Rs. Mn';

// Query 109
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Income Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 134.679, r.year = 2024;

// Query 110
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Income Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 200.254, r.year = 2023;

// Query 111
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Income Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 73.821, r.year = 2022;

// Query 112
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Income Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.139, r.year = 2021;

// Query 113
MERGE (m:Metric {name: 'Net Finance cost'}) ON CREATE SET m.id = 'net_finance_cost', m.unit = 'Rs. Mn';

// Query 114
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Net Finance cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -310.216, r.year = 2024;

// Query 115
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Net Finance cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -379.868, r.year = 2023;

// Query 116
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Net Finance cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -145.304, r.year = 2022;

// Query 117
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Net Finance cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -181.283, r.year = 2021;

// Query 118
MERGE (m:Metric {name: 'Loss per share - Basic/Diluted'}) ON CREATE SET m.id = 'loss_per_share_basic_diluted', m.unit = 'Rs.';

// Query 119
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Loss per share - Basic/Diluted'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.05, r.year = 2024;

// Query 120
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Loss per share - Basic/Diluted'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.63, r.year = 2023;

// Query 121
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Loss per share - Basic/Diluted'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.22, r.year = 2022;

// Query 122
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Loss per share - Basic/Diluted'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.53, r.year = 2021;

// Query 123
MERGE (m:Metric {name: 'Dividend per share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs.';

// Query 124
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2024;

// Query 125
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2023;

// Query 126
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2022;

// Query 127
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2021;

// Query 128
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.0, r.year = 2020;

// Query 129
MERGE (m:Metric {name: 'Equity capital'}) ON CREATE SET m.id = 'equity_capital', m.unit = 'Rs. Bn';

// Query 130
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Equity capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29.9, r.year = 2024;

// Query 131
MERGE (m:Metric {name: 'Debt capital'}) ON CREATE SET m.id = 'debt_capital', m.unit = 'Rs. Mn';

// Query 132
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Debt capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 581.0, r.year = 2024;

// Query 133
MERGE (m:Metric {name: 'Net assets value per share'}) ON CREATE SET m.id = 'net_assets_value_per_share', m.unit = 'Rs.';

// Query 134
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Net assets value per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 67.64, r.year = 2024;

// Query 135
MERGE (m:Metric {name: 'Cost of sales'}) ON CREATE SET m.id = 'cost_of_sales', m.unit = 'Rs. Mn';

// Query 136
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Cost of sales'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5881.167, r.year = 2024;

// Query 137
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Cost of sales'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5008.403, r.year = 2023;

// Query 138
MERGE (s:Sector {name: 'Hotel'}) ON CREATE SET s.id = 'hotel';

// Query 139
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (s:Sector {name: 'Hotel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 140
MERGE (s:Sector {name: 'Property'}) ON CREATE SET s.id = 'property';

// Query 141
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (s:Sector {name: 'Property'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 141
// Generated on: 2025-09-03T13:45:41.802774
