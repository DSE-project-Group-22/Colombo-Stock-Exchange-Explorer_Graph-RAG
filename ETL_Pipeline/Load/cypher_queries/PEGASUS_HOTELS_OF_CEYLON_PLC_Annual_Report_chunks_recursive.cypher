// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Pegasus Hotels of Ceylon'}) ON CREATE SET c.id = 'pegasus_hotels_of_ceylon', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('1966-01-01');

// Query 3
// Step 2: Auditor - No auditor name found in the provided text that matches the hardcoded list. Skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'M. Dayananda'}) ON CREATE SET p.id = 'm_dayananda';

// Query 6
MERGE (p:Person {name: 'M.T.L. Elias'}) ON CREATE SET p.id = 'm_t_l_elias';

// Query 7
MERGE (p:Person {name: 'S. R. Mather'}) ON CREATE SET p.id = 's_r_mather';

// Query 8
MERGE (p:Person {name: 'V. R. Wijesinghe'}) ON CREATE SET p.id = 'v_r_wijesinghe';

// Query 9
// Step 4: HOLDS_POSITION Relationships;

// Query 10
MATCH (p:Person {name: 'M. Dayananda'}), (c:Company {name: 'Pegasus Hotels of Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 11
MATCH (p:Person {name: 'M.T.L. Elias'}), (c:Company {name: 'Pegasus Hotels of Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 12
MATCH (p:Person {name: 'S. R. Mather'}), (c:Company {name: 'Pegasus Hotels of Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 13
MATCH (p:Person {name: 'V. R. Wijesinghe'}), (c:Company {name: 'Pegasus Hotels of Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 14
// Step 5: Metrics;

// Query 15
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 16
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 17
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 18
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 19
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 23
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 24
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 25
// Step 6: HAS_METRIC Relationships (Group Data);

// Query 26
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 927369000.0, r.year = 2024;

// Query 27
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 719766000.0, r.year = 2023;

// Query 28
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 386075000.0, r.year = 2022;

// Query 29
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 197547000.0, r.year = 2021;

// Query 30
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 598632000.0, r.year = 2020;

// Query 31
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -99520000.0, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -91152000.0, r.year = 2023;

// Query 33
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -193630000.0, r.year = 2022;

// Query 34
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -229824000.0, r.year = 2021;

// Query 35
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -41241000.0, r.year = 2020;

// Query 36
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -111688000.0, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -163916000.0, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -214453000.0, r.year = 2022;

// Query 39
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -258189000.0, r.year = 2021;

// Query 40
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -46491000.0, r.year = 2020;

// Query 41
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3018980000.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2601627000.0, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2665583000.0, r.year = 2022;

// Query 44
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2398597000.0, r.year = 2021;

// Query 45
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2216847000.0, r.year = 2020;

// Query 46
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2222111000.0, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1847910000.0, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2196121000.0, r.year = 2022;

// Query 49
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1981758000.0, r.year = 2021;

// Query 50
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1884422000.0, r.year = 2020;

// Query 51
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -74391000.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -138557000.0, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -142413000.0, r.year = 2022;

// Query 54
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -206126000.0, r.year = 2021;

// Query 55
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -51636000.0, r.year = 2020;

// Query 56
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2.58, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2.82, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.37, r.year = 2022;

// Query 59
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -7.56, r.year = 2021;

// Query 60
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.36, r.year = 2020;

// Query 61
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4.0, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.0, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -9.0, r.year = 2022;

// Query 64
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -12.0, r.year = 2021;

// Query 65
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2.0, r.year = 2020;

// Query 66
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.91, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.77, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.76, r.year = 2022;

// Query 69
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.00, r.year = 2021;

// Query 70
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.32, r.year = 2020;

// Query 71
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.04, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.41, r.year = 2023;

// Query 73
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.95, r.year = 2022;

// Query 74
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.90, r.year = 2021;

// Query 75
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.57, r.year = 2020;

// Query 76
// Step 6: HAS_METRIC Relationships (Company Specific Data);

// Query 77
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 774900000.0, r.year = 2024;

// Query 78
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -47763000.0, r.year = 2024;

// Query 79
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -68626000.0, r.year = 2023;

// Query 80
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3357654000.0, r.year = 2024;

// Query 81
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2822203000.0, r.year = 2023;

// Query 82
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2228585000.0, r.year = 2024;

// Query 83
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1825472000.0, r.year = 2023;

// Query 84
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.24, r.year = 2024;

// Query 85
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2.13, r.year = 2023;

// Query 86
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.73, r.year = 2024;

// Query 87
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.21, r.year = 2023;

// Query 88
// Step 7: Sectors;

// Query 89
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 90
// Step 8: IN_SECTOR Relationships;

// Query 91
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 92
// Step 9: Product nodes creation;

// Query 93
MERGE (p:Product {name: 'Hotel Services'}) ON CREATE SET p.id = 'hotel_services';

// Query 94
MERGE (p:Product {name: 'Leisure Activities'}) ON CREATE SET p.id = 'leisure_activities';

// Query 95
MERGE (p:Product {name: 'Pegasus Reef Hotel'}) ON CREATE SET p.id = 'pegasus_reef_hotel';

// Query 96
// Step 10: OFFERS Relationships;

// Query 97
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (p:Product {name: 'Hotel Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (p:Product {name: 'Leisure Activities'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (p:Product {name: 'Pegasus Reef Hotel'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
// Step 11: Company-Company Relationships;

// Query 101
MERGE (parent:Company {name: 'Equity Hotels'}) ON CREATE SET parent.id = 'equity_hotels';

// Query 102
MATCH (c:Company {name: 'Pegasus Hotels of Ceylon'}), (child:Company {name: 'Equity Hotels'}) MERGE (c)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 103
MERGE (manager:Company {name: 'Carson Management Services'}) ON CREATE SET manager.id = 'carson_management_services';

// Query 104
MATCH (manager:Company {name: 'Carson Management Services'}), (managed:Company {name: 'Pegasus Hotels of Ceylon'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Management support services', r.as_of = date('2024-03-31');

// Total queries: 104
// Generated on: 2025-10-02T23:01:18.732024
