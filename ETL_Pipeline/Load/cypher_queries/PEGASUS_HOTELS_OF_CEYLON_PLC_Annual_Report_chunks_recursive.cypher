// Query 1
MERGE (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}) ON CREATE SET c.id = 'pegasus_hotels_of_ceylon_plc', c.founded_on = date('1966-01-01'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 2
MERGE (c:Company {name: 'Carson Cumberbatch PLC'}) ON CREATE SET c.id = 'carson_cumberbatch_plc';

// Query 3
MERGE (c:Company {name: 'Equity Hotels Limited'}) ON CREATE SET c.id = 'equity_hotels_limited', c.founded_on = date('1970-01-01');

// Query 4
MERGE (c:Company {name: 'Bukit Darah PLC'}) ON CREATE SET c.id = 'bukit_darah_plc';

// Query 5
MERGE (c:Company {name: 'Commercial Bank of Ceylon PLC'}) ON CREATE SET c.id = 'commercial_bank_of_ceylon_plc';

// Query 6
MERGE (c:Company {name: 'Peoples Bank'}) ON CREATE SET c.id = 'peoples_bank';

// Query 7
MERGE (c:Company {name: 'Sampath Bank PLC'}) ON CREATE SET c.id = 'sampath_bank_plc';

// Query 8
MERGE (c:Company {name: 'Carsons Management Services (Private) Limited'}) ON CREATE SET c.id = 'carsons_management_services_private_limited';

// Query 9
MERGE (p:Person {name: 'M. Dayananda'}) ON CREATE SET p.id = 'm_dayananda';

// Query 10
MERGE (p:Person {name: 'M.T.L. Elias'}) ON CREATE SET p.id = 'm_t_l_elias';

// Query 11
MERGE (p:Person {name: 'D. C. R. Gunawardena'}) ON CREATE SET p.id = 'd_c_r_gunawardena';

// Query 12
MERGE (p:Person {name: 'K. Selvanathan'}) ON CREATE SET p.id = 'k_selvanathan';

// Query 13
MERGE (p:Person {name: 'S. R. Mather'}) ON CREATE SET p.id = 's_r_mather';

// Query 14
MERGE (p:Person {name: 'V. R. Wijesinghe'}) ON CREATE SET p.id = 'v_r_wijesinghe';

// Query 15
MERGE (p:Person {name: 'A. S. Amaratunga'}) ON CREATE SET p.id = 'a_s_amaratunga';

// Query 16
MERGE (p:Person {name: 'Y.H. Ong'}) ON CREATE SET p.id = 'y_h_ong';

// Query 17
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 18
MERGE (s:Sector {name: 'Banks'}) ON CREATE SET s.id = 'banks';

// Query 19
MERGE (prod:Product {name: 'Hotel Services'}) ON CREATE SET prod.id = 'hotel_services';

// Query 20
MERGE (prod:Product {name: 'Leisure Services'}) ON CREATE SET prod.id = 'leisure_services';

// Query 21
MERGE (prod:Product {name: 'Room Upgrades'}) ON CREATE SET prod.id = 'room_upgrades';

// Query 22
MERGE (prod:Product {name: 'MICE Services'}) ON CREATE SET prod.id = 'mice_services';

// Query 23
MERGE (prod:Product {name: 'Wedding Services'}) ON CREATE SET prod.id = 'wedding_services';

// Query 24
MERGE (prod:Product {name: 'Staycation Packages'}) ON CREATE SET prod.id = 'staycation_packages';

// Query 25
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Profit From Operations'}) ON CREATE SET m.id = 'profit_from_operations', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Net Finance Income'}) ON CREATE SET m.id = 'net_finance_income', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Income Tax And Deferred Taxation'}) ON CREATE SET m.id = 'income_tax_and_deferred_taxation', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Other Comprehensive Income'}) ON CREATE SET m.id = 'other_comprehensive_income', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Comprehensive Income'}) ON CREATE SET m.id = 'total_comprehensive_income', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Stated Capital'}) ON CREATE SET m.id = 'stated_capital', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Reserves'}) ON CREATE SET m.id = 'reserves', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Shareholders Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Net Assets Per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 39
MERGE (m:Metric {name: 'Debt Equity'}) ON CREATE SET m.id = 'debt_equity', m.unit = '%';

// Query 40
MERGE (m:Metric {name: 'Occupancy'}) ON CREATE SET m.id = 'occupancy', m.unit = '%';

// Query 41
MERGE (m:Metric {name: 'Net Profit Margin'}) ON CREATE SET m.id = 'net_profit_margin', m.unit = '%';

// Query 42
MERGE (m:Metric {name: 'Return On Shareholders Funds'}) ON CREATE SET m.id = 'return_on_shareholders_funds', m.unit = '%';

// Query 43
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Total Non Current Liabilities'}) ON CREATE SET m.id = 'total_non_current_liabilities', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Total Current Liabilities'}) ON CREATE SET m.id = 'total_current_liabilities', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Non Current Loans And Borrowings'}) ON CREATE SET m.id = 'non_current_loans_and_borrowings', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Current Loans And Borrowings'}) ON CREATE SET m.id = 'current_loans_and_borrowings', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Number Of Employees'}) ON CREATE SET m.id = 'number_of_employees', m.unit = 'Count';

// Query 49
MATCH (p:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (c:Company {name: 'Equity Hotels Limited'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 50
MATCH (p:Company {name: 'Carson Cumberbatch PLC'}), (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.as_of = date('2024-03-31');

// Query 51
MATCH (p:Company {name: 'Bukit Darah PLC'}), (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.as_of = date('2024-03-31');

// Query 52
MATCH (p:Person {name: 'M. Dayananda'}), (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 53
MATCH (p:Person {name: 'M. Dayananda'}), (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive/Independent', r.as_of = date('2024-01-01');

// Query 54
MATCH (p:Person {name: 'M.T.L. Elias'}), (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-01-01');

// Query 55
MATCH (p:Person {name: 'M.T.L. Elias'}), (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive/Independent', r.as_of = date('2024-01-01');

// Query 56
MATCH (p:Person {name: 'D. C. R. Gunawardena'}), (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-12-31');

// Query 57
MATCH (p:Person {name: 'D. C. R. Gunawardena'}), (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2023-12-31');

// Query 58
MATCH (p:Person {name: 'K. Selvanathan'}), (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-11-06');

// Query 59
MATCH (p:Person {name: 'K. Selvanathan'}), (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Executive/Non-Executive', r.as_of = date('2023-11-06');

// Query 60
MATCH (p:Person {name: 'S. R. Mather'}), (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 61
MATCH (p:Person {name: 'S. R. Mather'}), (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive/Independent', r.as_of = date('2024-03-31');

// Query 62
MATCH (p:Person {name: 'V. R. Wijesinghe'}), (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 63
MATCH (p:Person {name: 'V. R. Wijesinghe'}), (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Executive', r.as_of = date('2024-03-31');

// Query 64
MATCH (p:Person {name: 'A. S. Amaratunga'}), (c:Company {name: 'Carson Cumberbatch PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 65
MATCH (p:Person {name: 'A. S. Amaratunga'}), (c:Company {name: 'Carson Cumberbatch PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive/Independent', r.as_of = date('2024-03-31');

// Query 66
MATCH (p:Person {name: 'D. C. R. Gunawardena'}), (c:Company {name: 'Carson Cumberbatch PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 67
MATCH (p:Person {name: 'D. C. R. Gunawardena'}), (c:Company {name: 'Carson Cumberbatch PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2024-03-31');

// Query 68
MATCH (p:Person {name: 'Y.H. Ong'}), (c:Company {name: 'Carson Cumberbatch PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 69
MATCH (p:Person {name: 'Y.H. Ong'}), (c:Company {name: 'Carson Cumberbatch PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive/Independent', r.as_of = date('2024-03-31');

// Query 70
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 71
MATCH (c:Company {name: 'Equity Hotels Limited'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 72
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 73
MATCH (c:Company {name: 'Peoples Bank'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
MATCH (c:Company {name: 'Sampath Bank PLC'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 75
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (prod:Product {name: 'Hotel Services'}) MERGE (c)-[:OFFERS]->(prod);

// Query 76
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (prod:Product {name: 'Leisure Services'}) MERGE (c)-[:OFFERS]->(prod);

// Query 77
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (prod:Product {name: 'Room Upgrades'}) MERGE (c)-[:OFFERS]->(prod);

// Query 78
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (prod:Product {name: 'MICE Services'}) MERGE (c)-[:OFFERS]->(prod);

// Query 79
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (prod:Product {name: 'Wedding Services'}) MERGE (c)-[:OFFERS]->(prod);

// Query 80
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (prod:Product {name: 'Staycation Packages'}) MERGE (c)-[:OFFERS]->(prod);

// Query 81
MATCH (c:Company {name: 'Carsons Management Services (Private) Limited'}), (m:Company {name: 'Pegasus Hotels of Ceylon PLC'}) MERGE (c)-[r:MANAGES]->(m) ON CREATE SET r.description = 'Management support services';

// Query 82
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 927369000, r.year = 2024;

// Query 83
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 719766000, r.year = 2023;

// Query 84
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 386075000, r.year = 2022;

// Query 85
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 197547000, r.year = 2021;

// Query 86
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 598632000, r.year = 2020;

// Query 87
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Profit From Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -74391000, r.year = 2024;

// Query 88
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Profit From Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -138557000, r.year = 2023;

// Query 89
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Profit From Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -142413000, r.year = 2022;

// Query 90
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Profit From Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -206126000, r.year = 2021;

// Query 91
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Profit From Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -51636000, r.year = 2020;

// Query 92
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -37297000, r.year = 2024;

// Query 93
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -25359000, r.year = 2023;

// Query 94
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6525000, r.year = 2022;

// Query 95
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2291000, r.year = 2021;

// Query 96
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5145000, r.year = 2020;

// Query 97
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -111688000, r.year = 2024;

// Query 98
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -163916000, r.year = 2023;

// Query 99
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -214453000, r.year = 2022;

// Query 100
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -258189000, r.year = 2021;

// Query 101
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -46491000, r.year = 2020;

// Query 102
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Income Tax And Deferred Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12168000, r.year = 2024;

// Query 103
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Income Tax And Deferred Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 72764000, r.year = 2023;

// Query 104
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Income Tax And Deferred Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 20823000, r.year = 2022;

// Query 105
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Income Tax And Deferred Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 28365000, r.year = 2021;

// Query 106
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Income Tax And Deferred Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5250000, r.year = 2020;

// Query 107
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -99520000, r.year = 2024;

// Query 108
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -91152000, r.year = 2023;

// Query 109
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -193630000, r.year = 2022;

// Query 110
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -229824000, r.year = 2021;

// Query 111
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -41241000, r.year = 2020;

// Query 112
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Other Comprehensive Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 315829000, r.year = 2024;

// Query 113
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Other Comprehensive Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -328499000, r.year = 2023;

// Query 114
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Other Comprehensive Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 407903000, r.year = 2022;

// Query 115
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Other Comprehensive Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 326983000, r.year = 2021;

// Query 116
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Other Comprehensive Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 279000, r.year = 2020;

// Query 117
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Total Comprehensive Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 216309000, r.year = 2024;

// Query 118
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Total Comprehensive Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -419651000, r.year = 2023;

// Query 119
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Total Comprehensive Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 214273000, r.year = 2022;

// Query 120
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Total Comprehensive Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 97159000, r.year = 2021;

// Query 121
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Total Comprehensive Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -40962000, r.year = 2020;

// Query 122
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 751549000, r.year = 2024;

// Query 123
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 591149000, r.year = 2023;

// Query 124
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 515170000, r.year = 2022;

// Query 125
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 515170000, r.year = 2021;

// Query 126
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 515170000, r.year = 2020;

// Query 127
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1470562000, r.year = 2024;

// Query 128
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1256761000, r.year = 2023;

// Query 129
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1680951000, r.year = 2022;

// Query 130
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1466588000, r.year = 2021;

// Query 131
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1369252000, r.year = 2020;

// Query 132
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2222111000, r.year = 2024;

// Query 133
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1847910000, r.year = 2023;

// Query 134
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2196121000, r.year = 2022;

// Query 135
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1981758000, r.year = 2021;

// Query 136
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1884422000, r.year = 2020;

// Query 137
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2.58, r.year = 2024;

// Query 138
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2.82, r.year = 2023;

// Query 139
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6.37, r.year = 2022;

// Query 140
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -7.56, r.year = 2021;

// Query 141
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1.36, r.year = 2020;

// Query 142
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 52.64, r.year = 2024;

// Query 143
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 54.72, r.year = 2023;

// Query 144
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 72.26, r.year = 2022;

// Query 145
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 65.21, r.year = 2021;

// Query 146
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 62.00, r.year = 2020;

// Query 147
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.91, r.year = 2024;

// Query 148
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.77, r.year = 2023;

// Query 149
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.76, r.year = 2022;

// Query 150
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.00, r.year = 2021;

// Query 151
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.32, r.year = 2020;

// Query 152
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Debt Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10.04, r.year = 2024;

// Query 153
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Debt Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13.41, r.year = 2023;

// Query 154
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Debt Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13.95, r.year = 2022;

// Query 155
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Debt Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12.90, r.year = 2021;

// Query 156
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Debt Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10.57, r.year = 2020;

// Query 157
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Occupancy'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 47.0, r.year = 2024;

// Query 158
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Occupancy'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 29.0, r.year = 2023;

// Query 159
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Occupancy'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 32.0, r.year = 2022;

// Query 160
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Occupancy'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13.0, r.year = 2021;

// Query 161
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Occupancy'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 44.0, r.year = 2020;

// Query 162
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -11.0, r.year = 2024;

// Query 163
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -13.0, r.year = 2023;

// Query 164
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -50.0, r.year = 2022;

// Query 165
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -116.0, r.year = 2021;

// Query 166
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -7.0, r.year = 2020;

// Query 167
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Return On Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -4.0, r.year = 2024;

// Query 168
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Return On Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5.0, r.year = 2023;

// Query 169
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Return On Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -9.0, r.year = 2022;

// Query 170
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Return On Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -12.0, r.year = 2021;

// Query 171
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Return On Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2.0, r.year = 2020;

// Query 172
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3357654000, r.year = 2024;

// Query 173
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2822203000, r.year = 2023;

// Query 174
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Total Non Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 796869000, r.year = 2024;

// Query 175
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Total Non Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 753717000, r.year = 2023;

// Query 176
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Total Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 338674000, r.year = 2024;

// Query 177
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Total Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 220576000, r.year = 2023;

// Query 178
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Non Current Loans And Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 114521000, r.year = 2024;

// Query 179
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Non Current Loans And Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 203926000, r.year = 2023;

// Query 180
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Current Loans And Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 108607000, r.year = 2024;

// Query 181
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Current Loans And Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 43961000, r.year = 2023;

// Query 182
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Number Of Employees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 238, r.year = 2024;

// Query 183
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Number Of Employees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 241, r.year = 2023;

// Query 184
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 774900000, r.year = 2024;

// Query 185
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -47763000, r.year = 2024;

// Query 186
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -68626000, r.year = 2023;

// Query 187
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Other Comprehensive Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5469000, r.year = 2024;

// Query 188
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Other Comprehensive Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1310000, r.year = 2023;

// Query 189
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Total Comprehensive Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -53232000, r.year = 2024;

// Query 190
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Total Comprehensive Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -67316000, r.year = 2023;

// Query 191
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1.24, r.year = 2024;

// Query 192
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2.13, r.year = 2023;

// Query 193
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 751548321.50, r.as_of = date('2024-03-31');

// Query 194
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Number Of Employees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 192, r.year = 2024;

// Query 195
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon PLC'}), (m:Metric {name: 'Number Of Employees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 188, r.year = 2023;

// Total queries: 195
// Generated on: 2025-10-02T20:35:17.975752
