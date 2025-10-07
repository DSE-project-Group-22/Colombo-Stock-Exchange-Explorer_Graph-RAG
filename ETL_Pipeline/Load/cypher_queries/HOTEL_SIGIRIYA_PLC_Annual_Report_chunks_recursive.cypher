// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Hotel Sigiriya'}) ON CREATE SET c.id = 'hotel_sigiriya', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Deloitte'}) ON CREATE SET a.id = 'deloitte', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Hotel Sigiriya'}), (a:Auditor {name: 'Deloitte'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'W. D. K. Jayawardena'}) ON CREATE SET p.id = 'w_d_k_jayawardena';

// Query 8
MERGE (p:Person {name: 'K. U. Amarasinghe'}) ON CREATE SET p.id = 'k_u_amarasinghe';

// Query 9
MERGE (p:Person {name: 'D. S. K. Amarasekera'}) ON CREATE SET p.id = 'd_s_k_amarasekera';

// Query 10
MERGE (p:Person {name: 'J. P. S. Kurumbalapitiya'}) ON CREATE SET p.id = 'j_p_s_kurumbalapitiya';

// Query 11
MERGE (p:Person {name: 'S. Furkhan'}) ON CREATE SET p.id = 's_furkhan';

// Query 12
MERGE (p:Person {name: 'J. M. Swaminathan'}) ON CREATE SET p.id = 'j_m_swaminathan';

// Query 13
MERGE (p:Person {name: 'B. S. M. De Silva'}) ON CREATE SET p.id = 'b_s_m_de_silva';

// Query 14
MERGE (p:Person {name: 'R. L. E. C. Wijeratne'}) ON CREATE SET p.id = 'r_l_e_c_wijeratne';

// Query 15
MERGE (p:Person {name: 'J. K. P. Singh'}) ON CREATE SET p.id = 'j_k_p_singh';

// Query 16
MERGE (p:Person {name: 'L. K. Goonewardena'}) ON CREATE SET p.id = 'l_k_goonewardena';

// Query 17
MERGE (p:Person {name: 'A. J. M. Jinadasa'}) ON CREATE SET p.id = 'a_j_m_jinadasa';

// Query 18
MERGE (p:Person {name: 'Kandaiah Kanapathipillai Shujeevan'}) ON CREATE SET p.id = 'kandaiah_kanapathipillai_shujeevan';

// Query 19
MERGE (p:Person {name: 'A. M. E. Fernando'}) ON CREATE SET p.id = 'a_m_e_fernando';

// Query 20
MERGE (p:Person {name: 'J. De Soysa'}) ON CREATE SET p.id = 'j_de_soysa';

// Query 21
MERGE (p:Person {name: 'E. J. De Soysa'}) ON CREATE SET p.id = 'e_j_de_soysa';

// Query 22
// Step 4: HOLDS_POSITION Relationships;

// Query 23
MATCH (p:Person {name: 'W. D. K. Jayawardena'}), (c:Company {name: 'Hotel Sigiriya'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'K. U. Amarasinghe'}), (c:Company {name: 'Hotel Sigiriya'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'D. S. K. Amarasekera'}), (c:Company {name: 'Hotel Sigiriya'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'J. P. S. Kurumbalapitiya'}), (c:Company {name: 'Hotel Sigiriya'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'S. Furkhan'}), (c:Company {name: 'Hotel Sigiriya'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'J. M. Swaminathan'}), (c:Company {name: 'Hotel Sigiriya'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'B. S. M. De Silva'}), (c:Company {name: 'Hotel Sigiriya'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'R. L. E. C. Wijeratne'}), (c:Company {name: 'Hotel Sigiriya'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 31
// Step 5: OWNS_SHARES Relationships;

// Query 32
MATCH (p:Person {name: 'B. S. M. De Silva'}), (c:Company {name: 'Hotel Sigiriya'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 19500, r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'J. K. P. Singh'}), (c:Company {name: 'Hotel Sigiriya'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 100000, r.pct = 0.57, r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'L. K. Goonewardena'}), (c:Company {name: 'Hotel Sigiriya'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 95214, r.pct = 0.54, r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'A. J. M. Jinadasa'}), (c:Company {name: 'Hotel Sigiriya'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 90000, r.pct = 0.51, r.as_of = date('2024-03-31');

// Query 36
MATCH (p:Person {name: 'Kandaiah Kanapathipillai Shujeevan'}), (c:Company {name: 'Hotel Sigiriya'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 88788, r.pct = 0.51, r.as_of = date('2024-03-31');

// Query 37
MATCH (p:Person {name: 'A. M. E. Fernando'}), (c:Company {name: 'Hotel Sigiriya'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 75000, r.pct = 0.43, r.as_of = date('2024-03-31');

// Query 38
MATCH (p:Person {name: 'J. De Soysa'}), (c:Company {name: 'Hotel Sigiriya'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 70000, r.pct = 0.40, r.as_of = date('2024-03-31');

// Query 39
MATCH (p:Person {name: 'E. J. De Soysa'}), (c:Company {name: 'Hotel Sigiriya'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 70000, r.pct = 0.40, r.as_of = date('2024-03-31');

// Query 40
// Step 6: Metrics;

// Query 41
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 45
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 46
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 48
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 49
// Step 7: HAS_METRIC Relationships;

// Query 50
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 491955000, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 245494000, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 103771000, r.year = 2022;

// Query 53
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 111549000, r.year = 2021;

// Query 54
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 271874000, r.year = 2020;

// Query 55
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 375610000, r.year = 2019;

// Query 56
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 325235000, r.year = 2018;

// Query 57
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 325263000, r.year = 2017;

// Query 58
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 333029000, r.year = 2016;

// Query 59
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 258288000, r.year = 2015;

// Query 60
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 118480000, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28601000, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -66465000, r.year = 2022;

// Query 63
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -54544000, r.year = 2021;

// Query 64
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11552000, r.year = 2020;

// Query 65
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 41109000, r.year = 2019;

// Query 66
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47184000, r.year = 2018;

// Query 67
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 69573000, r.year = 2017;

// Query 68
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 86120000, r.year = 2016;

// Query 69
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 63930000, r.year = 2015;

// Query 70
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 101309000, r.year = 2024;

// Query 71
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3600000, r.year = 2023;

// Query 72
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -59805000, r.year = 2022;

// Query 73
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -42702000, r.year = 2021;

// Query 74
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3848000, r.year = 2020;

// Query 75
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33548000, r.year = 2019;

// Query 76
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27230000, r.year = 2018;

// Query 77
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 67108000, r.year = 2017;

// Query 78
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 66529000, r.year = 2016;

// Query 79
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 60808000, r.year = 2015;

// Query 80
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.26, r.year = 2024;

// Query 81
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.15, r.year = 2023;

// Query 82
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.70, r.year = 2022;

// Query 83
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.97, r.year = 2021;

// Query 84
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.31, r.year = 2020;

// Query 85
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.04, r.year = 2019;

// Query 86
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.71, r.year = 2018;

// Query 87
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.67, r.year = 2017;

// Query 88
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.38, r.year = 2016;

// Query 89
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.63, r.year = 2015;

// Query 90
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.98, r.year = 2024;

// Query 91
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.23, r.year = 2023;

// Query 92
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.16, r.year = 2022;

// Query 93
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.96, r.year = 2021;

// Query 94
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.96, r.year = 2020;

// Query 95
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.76, r.year = 2024;

// Query 96
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.20, r.year = 2023;

// Query 97
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -10.21, r.year = 2022;

// Query 98
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -7.29, r.year = 2021;

// Query 99
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.66, r.year = 2020;

// Query 100
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.73, r.year = 2019;

// Query 101
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.65, r.year = 2018;

// Query 102
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.45, r.year = 2017;

// Query 103
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.36, r.year = 2016;

// Query 104
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.38, r.year = 2015;

// Query 105
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.13, r.year = 2024;

// Query 106
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.44, r.year = 2023;

// Query 107
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -11.30, r.year = 2022;

// Query 108
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -9.84, r.year = 2021;

// Query 109
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.96, r.year = 2020;

// Query 110
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.41, r.year = 2019;

// Query 111
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.40, r.year = 2018;

// Query 112
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.17, r.year = 2017;

// Query 113
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.36, r.year = 2016;

// Query 114
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18.72, r.year = 2015;

// Query 115
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1238980000, r.year = 2024;

// Query 116
MATCH (c:Company {name: 'Hotel Sigiriya'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1069016000, r.year = 2023;

// Query 117
// Step 8: Sectors;

// Query 118
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 119
// Step 9: IN_SECTOR Relationships;

// Query 120
MATCH (c:Company {name: 'Hotel Sigiriya'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 121
// Step 10: Products;

// Query 122
MERGE (p:Product {name: 'Hotel Services'}) ON CREATE SET p.id = 'hotel_services';

// Query 123
// Step 11: OFFERS Relationships;

// Query 124
MATCH (c:Company {name: 'Hotel Sigiriya'}), (p:Product {name: 'Hotel Services'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 124
// Generated on: 2025-10-03T03:11:43.452283
