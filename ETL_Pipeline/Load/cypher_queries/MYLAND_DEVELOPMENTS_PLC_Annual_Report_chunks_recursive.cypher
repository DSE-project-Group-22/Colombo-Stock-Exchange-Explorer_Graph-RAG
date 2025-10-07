// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Myland Developments'}) ON CREATE SET c.id = 'myland_developments', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('2017-03-06');

// Query 3
// Step 2: Auditor - Skipped as auditor 'R.K.L.S. Associates' is not in the hardcoded list.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'P. D. Nalin Perera'}) ON CREATE SET p.id = 'p_d_nalin_perera';

// Query 6
MERGE (p:Person {name: 'D. I. Tharaganee Dissanayake'}) ON CREATE SET p.id = 'd_i_tharaganee_dissanayake';

// Query 7
MERGE (p:Person {name: 'Ajith Alahakoon'}) ON CREATE SET p.id = 'ajith_alahakoon';

// Query 8
MERGE (p:Person {name: 'J. C. Deshantha de Alwis'}) ON CREATE SET p.id = 'j_c_deshantha_de_alwis';

// Query 9
MERGE (p:Person {name: 'W. D. Premachandra'}) ON CREATE SET p.id = 'w_d_premachandra';

// Query 10
// Step 4: HOLDS_POSITION Relationships;

// Query 11
MATCH (p:Person {name: 'P. D. Nalin Perera'}), (c:Company {name: 'Myland Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 12
MATCH (p:Person {name: 'P. D. Nalin Perera'}), (c:Company {name: 'Myland Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 13
MATCH (p:Person {name: 'D. I. Tharaganee Dissanayake'}), (c:Company {name: 'Myland Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 14
MATCH (p:Person {name: 'Ajith Alahakoon'}), (c:Company {name: 'Myland Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'J. C. Deshantha de Alwis'}), (c:Company {name: 'Myland Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'W. D. Premachandra'}), (c:Company {name: 'Myland Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 17
// Step 5: Metrics;

// Query 18
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 19
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 25
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 26
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 27
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 28
// Step 6: HAS_METRIC Relationships;

// Query 29
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 70415354.0, r.year = 2024;

// Query 30
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 66429773.0, r.year = 2023;

// Query 31
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 249587631.0, r.year = 2022;

// Query 32
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 167883163.0, r.year = 2021;

// Query 33
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 121463836.0, r.year = 2020;

// Query 34
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -27493934.0, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -11212323.0, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48247347.0, r.year = 2022;

// Query 37
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28642865.0, r.year = 2021;

// Query 38
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4693765.0, r.year = 2020;

// Query 39
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -27154957.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -11212401.0, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44742453.0, r.year = 2022;

// Query 42
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25773519.0, r.year = 2021;

// Query 43
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3280108.0, r.year = 2020;

// Query 44
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 258590555.0, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 224966468.0, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 273427924.0, r.year = 2022;

// Query 47
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 169942610.0, r.year = 2021;

// Query 48
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 101485206.0, r.year = 2020;

// Query 49
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 143845605.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 171051221.0, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 190847998.0, r.year = 2022;

// Query 52
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 61167010.0, r.year = 2021;

// Query 53
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26745308.0, r.year = 2020;

// Query 54
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.75, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.31, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.49, r.year = 2022;

// Query 57
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.86, r.year = 2021;

// Query 58
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.11, r.year = 2020;

// Query 59
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.11, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.05, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.16, r.year = 2022;

// Query 62
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.15, r.year = 2021;

// Query 63
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.03, r.year = 2020;

// Query 64
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.19, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.07, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.23, r.year = 2022;

// Query 67
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.42, r.year = 2021;

// Query 68
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.12, r.year = 2020;

// Query 69
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.99, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.44, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.15, r.year = 2022;

// Query 72
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.47, r.year = 2021;

// Query 73
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.95, r.year = 2020;

// Query 74
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.80, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.32, r.year = 2023;

// Query 76
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.43, r.year = 2022;

// Query 77
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.78, r.year = 2021;

// Query 78
MATCH (c:Company {name: 'Myland Developments'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.79, r.year = 2020;

// Query 79
// Step 7: Sectors;

// Query 80
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 81
// Step 8: IN_SECTOR Relationships;

// Query 82
MATCH (c:Company {name: 'Myland Developments'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 83
// Step 9: Products;

// Query 84
MERGE (p:Product {name: 'Land Plots'}) ON CREATE SET p.id = 'land_plots';

// Query 85
MERGE (p:Product {name: 'Property Development Services'}) ON CREATE SET p.id = 'property_development_services';

// Query 86
// Step 10: OFFERS Relationships;

// Query 87
MATCH (c:Company {name: 'Myland Developments'}), (p:Product {name: 'Land Plots'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 88
MATCH (c:Company {name: 'Myland Developments'}), (p:Product {name: 'Property Development Services'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 89
// Step 11: Company-Company Relationships - None found or validated.;

// Total queries: 89
// Generated on: 2025-10-03T01:49:59.499504
