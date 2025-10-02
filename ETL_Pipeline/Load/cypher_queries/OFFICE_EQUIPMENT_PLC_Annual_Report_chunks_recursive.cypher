// Query 1
MERGE (c:Company {name: 'Office Equipment PLC'}) ON CREATE SET c.id = 'office_equipment_plc', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 2
MERGE (c:Company {name: 'International Computers (Ceylon) Ltd'}) ON CREATE SET c.id = 'international_computers_ceylon_ltd';

// Query 3
MERGE (c:Company {name: 'MGI SL Assurance Partners'}) ON CREATE SET c.id = 'mgi_sl_assurance_partners';

// Query 4
MERGE (c:Company {name: 'Commercial Bank of Ceylon Ltd.'}) ON CREATE SET c.id = 'commercial_bank_of_ceylon_ltd';

// Query 5
MERGE (c:Company {name: 'P W Corporate Secretarial (Pvt) Ltd'}) ON CREATE SET c.id = 'p_w_corporate_secretarial_pvt_ltd';

// Query 6
MERGE (c:Company {name: 'Businessmate (Private) Limited'}) ON CREATE SET c.id = 'businessmate_private_limited';

// Query 7
MERGE (c:Company {name: 'Nanayakkara & Co.'}) ON CREATE SET c.id = 'nanayakkara_and_co';

// Query 8
MERGE (p:Person {name: 'L. I. Ratnasabapathy'}) ON CREATE SET p.id = 'l_i_ratnasabapathy';

// Query 9
MERGE (p:Person {name: 'A. M. De Alwis'}) ON CREATE SET p.id = 'a_m_de_alwis';

// Query 10
MERGE (p:Person {name: 'Anthony A. Page'}) ON CREATE SET p.id = 'anthony_a_page';

// Query 11
MERGE (p:Person {name: 'P. S. R. Casie Chitty'}) ON CREATE SET p.id = 'p_s_r_casie_chitty';

// Query 12
MERGE (p:Person {name: 'M. M. Marzook'}) ON CREATE SET p.id = 'm_m_marzook';

// Query 13
MERGE (p:Person {name: 'M. R. Y. Riffai'}) ON CREATE SET p.id = 'm_r_y_riffai';

// Query 14
MERGE (p:Person {name: 'D. T. De Alwis'}) ON CREATE SET p.id = 'd_t_de_alwis';

// Query 15
MERGE (p:Person {name: 'M. S. A. Kariapper'}) ON CREATE SET p.id = 'm_s_a_kariapper';

// Query 16
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 17
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 18
MERGE (prod:Product {name: 'Cash and Coin handling solutions'}) ON CREATE SET prod.id = 'cash_and_coin_handling_solutions';

// Query 19
MERGE (prod:Product {name: 'Time recording systems'}) ON CREATE SET prod.id = 'time_recording_systems';

// Query 20
MERGE (prod:Product {name: 'Computer hardware'}) ON CREATE SET prod.id = 'computer_hardware';

// Query 21
MERGE (prod:Product {name: 'Software'}) ON CREATE SET prod.id = 'software';

// Query 22
MERGE (prod:Product {name: 'Outsource services'}) ON CREATE SET prod.id = 'outsource_services';

// Query 23
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Net Finance Income'}) ON CREATE SET m.id = 'net_finance_income', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Tax Expense'}) ON CREATE SET m.id = 'tax_expense', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Stated Capital'}) ON CREATE SET m.id = 'stated_capital', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Reserves'}) ON CREATE SET m.id = 'reserves', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Equity Attributable to Parent'}) ON CREATE SET m.id = 'total_equity_attributable_to_parent', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Borrowings'}) ON CREATE SET m.id = 'borrowings', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Trade Payables'}) ON CREATE SET m.id = 'trade_payables', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Current Assets'}) ON CREATE SET m.id = 'current_assets', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Current Liabilities'}) ON CREATE SET m.id = 'current_liabilities', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Net Current Liabilities'}) ON CREATE SET m.id = 'net_current_liabilities', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Non-Current Liabilities'}) ON CREATE SET m.id = 'non_current_liabilities', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Non-Current Assets'}) ON CREATE SET m.id = 'non_current_assets', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Total Net Assets'}) ON CREATE SET m.id = 'total_net_assets', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Annual Turnover Growth'}) ON CREATE SET m.id = 'annual_turnover_growth', m.unit = '%';

// Query 42
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Market Price Per Share'}) ON CREATE SET m.id = 'market_price_per_share', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Net Asset Value Per Share'}) ON CREATE SET m.id = 'net_asset_value_per_share', m.unit = 'Rs';

// Query 46
MATCH (c:Company {name: 'Office Equipment PLC'}), (sub:Company {name: 'International Computers (Ceylon) Ltd'}) MERGE (c)-[:OWNS {pct: 99.99, as_of: date('2024-03-31')}]->(sub);

// Query 47
MATCH (c:Company {name: 'Office Equipment PLC'}), (sub:Company {name: 'International Computers (Ceylon) Ltd'}) MERGE (c)-[:OWNS {pct: 99.99, as_of: date('2023-03-31')}]->(sub);

// Query 48
MATCH (p:Person {name: 'L. I. Ratnasabapathy'}), (c:Company {name: 'Office Equipment PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 49
MATCH (p:Person {name: 'L. I. Ratnasabapathy'}), (c:Company {name: 'Office Equipment PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 50
MATCH (p:Person {name: 'L. I. Ratnasabapathy'}), (c:Company {name: 'Office Equipment PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Executive', r.as_of = date('2024-03-31');

// Query 51
MATCH (p:Person {name: 'A. M. De Alwis'}), (c:Company {name: 'Office Equipment PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Executive', r.as_of = date('2024-03-31');

// Query 52
MATCH (p:Person {name: 'Anthony A. Page'}), (c:Company {name: 'Office Equipment PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 53
MATCH (p:Person {name: 'P. S. R. Casie Chitty'}), (c:Company {name: 'Office Equipment PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 54
MATCH (p:Person {name: 'M. M. Marzook'}), (c:Company {name: 'Office Equipment PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2023-03-31');

// Query 55
MATCH (p:Person {name: 'M. R. Y. Riffai'}), (c:Company {name: 'Office Equipment PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 56
MATCH (p:Person {name: 'D. T. De Alwis'}), (c:Company {name: 'Office Equipment PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 57
MATCH (p:Person {name: 'M. S. A. Kariapper'}), (c:Company {name: 'Office Equipment PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Head of Finance', r.as_of = date('2024-03-31');

// Query 58
MATCH (c:Company {name: 'Office Equipment PLC'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 59
MATCH (c:Company {name: 'Office Equipment PLC'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 60
MATCH (c:Company {name: 'International Computers (Ceylon) Ltd'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 61
MATCH (c:Company {name: 'International Computers (Ceylon) Ltd'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 62
MATCH (c:Company {name: 'Office Equipment PLC'}), (prod:Product {name: 'Cash and Coin handling solutions'}) MERGE (c)-[:OFFERS]->(prod);

// Query 63
MATCH (c:Company {name: 'Office Equipment PLC'}), (prod:Product {name: 'Time recording systems'}) MERGE (c)-[:OFFERS]->(prod);

// Query 64
MATCH (c:Company {name: 'International Computers (Ceylon) Ltd'}), (prod:Product {name: 'Computer hardware'}) MERGE (c)-[:OFFERS]->(prod);

// Query 65
MATCH (c:Company {name: 'International Computers (Ceylon) Ltd'}), (prod:Product {name: 'Software'}) MERGE (c)-[:OFFERS]->(prod);

// Query 66
MATCH (c:Company {name: 'International Computers (Ceylon) Ltd'}), (prod:Product {name: 'Outsource services'}) MERGE (c)-[:OFFERS]->(prod);

// Query 67
MATCH (c:Company {name: 'Office Equipment PLC'}), (auditor:Company {name: 'MGI SL Assurance Partners'}) MERGE (c)-[:AUDITED_BY {year: 2024}]->(auditor);

// Query 68
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 62096612.0, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 66795854.0, r.year = 2023;

// Query 70
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 75055019.0, r.year = 2022;

// Query 71
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 55409136.0, r.year = 2021;

// Query 72
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78161483.0, r.year = 2020;

// Query 73
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4194739.0, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4285873.0, r.year = 2023;

// Query 75
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13293819.0, r.year = 2022;

// Query 76
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4806311.0, r.year = 2021;

// Query 77
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27682.0, r.year = 2020;

// Query 78
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5242384.0, r.year = 2024;

// Query 79
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -93108.0, r.year = 2023;

// Query 80
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18313814.0, r.year = 2022;

// Query 81
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3715371.0, r.year = 2021;

// Query 82
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1744610.0, r.year = 2020;

// Query 83
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -425247.0, r.year = 2024;

// Query 84
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 655403.0, r.year = 2023;

// Query 85
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -758016.0, r.year = 2022;

// Query 86
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2303754.0, r.year = 2021;

// Query 87
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2256599.0, r.year = 2020;

// Query 88
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5667631.0, r.year = 2024;

// Query 89
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 562295.0, r.year = 2023;

// Query 90
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17555798.0, r.year = 2022;

// Query 91
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1411617.0, r.year = 2021;

// Query 92
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4001209.0, r.year = 2020;

// Query 93
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1472892.0, r.year = 2024;

// Query 94
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3723578.0, r.year = 2023;

// Query 95
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4261979.0, r.year = 2022;

// Query 96
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3394694.0, r.year = 2021;

// Query 97
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4028890.0, r.year = 2020;

// Query 98
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 833560.0, r.year = 2024;

// Query 99
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 833560.0, r.year = 2023;

// Query 100
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 833560.0, r.year = 2022;

// Query 101
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 833560.0, r.year = 2021;

// Query 102
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 833560.0, r.year = 2020;

// Query 103
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44341515.0, r.year = 2024;

// Query 104
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 49133402.0, r.year = 2023;

// Query 105
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 52229266.0, r.year = 2022;

// Query 106
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38732080.0, r.year = 2021;

// Query 107
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 32891294.0, r.year = 2020;

// Query 108
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Total Equity Attributable to Parent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45175075.0, r.year = 2024;

// Query 109
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Total Equity Attributable to Parent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 49966962.0, r.year = 2023;

// Query 110
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Total Equity Attributable to Parent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 53062826.0, r.year = 2022;

// Query 111
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Total Equity Attributable to Parent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39565640.0, r.year = 2021;

// Query 112
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Total Equity Attributable to Parent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33724854.0, r.year = 2020;

// Query 113
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45175075.0, r.year = 2024;

// Query 114
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 49966962.0, r.year = 2023;

// Query 115
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 53062826.0, r.year = 2022;

// Query 116
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39565640.0, r.year = 2021;

// Query 117
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33724854.0, r.year = 2020;

// Query 118
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1583484.0, r.year = 2024;

// Query 119
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12960884.0, r.year = 2023;

// Query 120
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2074413.0, r.year = 2022;

// Query 121
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10076342.0, r.year = 2021;

// Query 122
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26481806.0, r.year = 2020;

// Query 123
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Trade Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11012153.0, r.year = 2024;

// Query 124
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Trade Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14423466.0, r.year = 2023;

// Query 125
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Trade Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28281539.0, r.year = 2022;

// Query 126
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Trade Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22277703.0, r.year = 2021;

// Query 127
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Trade Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 32181284.0, r.year = 2020;

// Query 128
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45767978.0, r.year = 2024;

// Query 129
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 65931847.0, r.year = 2023;

// Query 130
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 77308499.0, r.year = 2022;

// Query 131
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 63463150.0, r.year = 2021;

// Query 132
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 85136225.0, r.year = 2020;

// Query 133
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -14610336.0, r.year = 2024;

// Query 134
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -29277654.0, r.year = 2023;

// Query 135
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -33638156.0, r.year = 2022;

// Query 136
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -32361436.0, r.year = 2021;

// Query 137
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -55277615.0, r.year = 2020;

// Query 138
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Net Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31157642.0, r.year = 2024;

// Query 139
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Net Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36654193.0, r.year = 2023;

// Query 140
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Net Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 43670343.0, r.year = 2022;

// Query 141
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Net Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31101714.0, r.year = 2021;

// Query 142
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Net Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29858610.0, r.year = 2020;

// Query 143
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Non-Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3032932.0, r.year = 2024;

// Query 144
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Non-Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2175946.0, r.year = 2023;

// Query 145
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Non-Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5003250.0, r.year = 2022;

// Query 146
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Non-Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6307356.0, r.year = 2021;

// Query 147
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Non-Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8433986.0, r.year = 2020;

// Query 148
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Non-Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17050366.0, r.year = 2024;

// Query 149
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Non-Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15488715.0, r.year = 2023;

// Query 150
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Non-Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14395732.0, r.year = 2022;

// Query 151
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Non-Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14771282.0, r.year = 2021;

// Query 152
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Non-Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12300229.0, r.year = 2020;

// Query 153
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Total Net Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45175075.0, r.year = 2024;

// Query 154
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Total Net Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 49966962.0, r.year = 2023;

// Query 155
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Total Net Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 53062826.0, r.year = 2022;

// Query 156
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Total Net Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39565640.0, r.year = 2021;

// Query 157
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Total Net Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33724854.0, r.year = 2020;

// Query 158
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Annual Turnover Growth'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -7.03, r.year = 2024;

// Query 159
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Annual Turnover Growth'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.00, r.year = 2023;

// Query 160
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Annual Turnover Growth'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -35.45, r.year = 2022;

// Query 161
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Annual Turnover Growth'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -29.11, r.year = 2021;

// Query 162
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Annual Turnover Growth'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -10.10, r.year = 2020;

// Query 163
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.03, r.year = 2024;

// Query 164
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.14, r.year = 2023;

// Query 165
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.95, r.year = 2022;

// Query 166
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.77, r.year = 2021;

// Query 167
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.03, r.year = 2020;

// Query 168
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2024;

// Query 169
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.0, r.year = 2023;

// Query 170
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 76.0, r.year = 2024;

// Query 171
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2023;

// Query 172
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2021;

// Query 173
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 54.19, r.year = 2024;

// Query 174
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 59.94, r.year = 2023;

// Query 175
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 63.65, r.year = 2022;

// Query 176
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47.46, r.year = 2021;

// Query 177
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40.45, r.year = 2020;

// Query 178
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC {is_group_metric: false}]->(m) SET r.value = 52319874.0, r.year = 2024;

// Query 179
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC {is_group_metric: false}]->(m) SET r.value = 61952154.0, r.year = 2023;

// Query 180
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC {is_group_metric: false}]->(m) SET r.value = -5559839.0, r.year = 2024;

// Query 181
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC {is_group_metric: false}]->(m) SET r.value = 3661019.0, r.year = 2023;

// Query 182
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC {is_group_metric: false}]->(m) SET r.value = -7243356.0, r.year = 2024;

// Query 183
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC {is_group_metric: false}]->(m) SET r.value = -856813.0, r.year = 2023;

// Query 184
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC {is_group_metric: false}]->(m) SET r.value = -428667.0, r.year = 2024;

// Query 185
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC {is_group_metric: false}]->(m) SET r.value = 624209.0, r.year = 2023;

// Query 186
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC {is_group_metric: false}]->(m) SET r.value = -7672023.0, r.year = 2024;

// Query 187
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC {is_group_metric: false}]->(m) SET r.value = -232604.0, r.year = 2023;

// Query 188
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC {is_group_metric: false}]->(m) SET r.value = -6.67, r.year = 2024;

// Query 189
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC {is_group_metric: false}]->(m) SET r.value = 4.39, r.year = 2023;

// Query 190
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC {is_group_metric: false}]->(m) SET r.value = 0.0, r.year = 2024;

// Query 191
MATCH (c:Company {name: 'Office Equipment PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC {is_group_metric: false}]->(m) SET r.value = 10.0, r.year = 2023;

// Total queries: 191
// Generated on: 2025-10-02T19:49:55.725270
