// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Hunas Holdings'}) ON CREATE SET c.id = 'hunas_holdings', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('1989-01-01');

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Deloitte'}) ON CREATE SET a.id = 'deloitte', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Hunas Holdings'}), (a:Auditor {name: 'Deloitte'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 7
// Step 4: Other Companies;

// Query 8
MERGE (c:Company {name: 'Kuruganga Hydro'}) ON CREATE SET c.id = 'kuruganga_hydro', c.region = 'Sri Lanka';

// Query 9
// Step 5: OWNS Relationship;

// Query 10
MATCH (p:Company {name: 'Hunas Holdings'}), (c:Company {name: 'Kuruganga Hydro'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 22.0, r.as_of = date('2024-03-31');

// Query 11
// Step 6: Person Nodes;

// Query 12
MERGE (p:Person {name: 'W.S.L.A.D.R. Samarasinghe'}) ON CREATE SET p.id = 'w_s_l_a_d_r_samarasinghe';

// Query 13
MERGE (p:Person {name: 'M.A.A. Atheeq'}) ON CREATE SET p.id = 'm_a_a_atheeq';

// Query 14
MERGE (p:Person {name: 'Sujivie Irugalbandara'}) ON CREATE SET p.id = 'sujivie_irugalbandara';

// Query 15
MERGE (p:Person {name: 'P. Wicramanayake'}) ON CREATE SET p.id = 'p_wicramanayake';

// Query 16
MERGE (p:Person {name: 'Toshiaki Tanaka'}) ON CREATE SET p.id = 'toshiaki_tanaka';

// Query 17
MERGE (p:Person {name: 'M Tanaka'}) ON CREATE SET p.id = 'm_tanaka';

// Query 18
MERGE (p:Person {name: 'Gajan Vinothan'}) ON CREATE SET p.id = 'gajan_vinothan';

// Query 19
MERGE (p:Person {name: 'H.A.D. Senaratne'}) ON CREATE SET p.id = 'h_a_d_senaratne';

// Query 20
MERGE (p:Person {name: 'Koji Sugimoto'}) ON CREATE SET p.id = 'koji_sugimoto';

// Query 21
// Step 7: HOLDS_POSITION Relationships;

// Query 22
MATCH (p:Person {name: 'W.S.L.A.D.R. Samarasinghe'}), (c:Company {name: 'Hunas Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'M.A.A. Atheeq'}), (c:Company {name: 'Hunas Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Sujivie Irugalbandara'}), (c:Company {name: 'Hunas Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'P. Wicramanayake'}), (c:Company {name: 'Hunas Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'Toshiaki Tanaka'}), (c:Company {name: 'Hunas Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'M Tanaka'}), (c:Company {name: 'Hunas Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'Gajan Vinothan'}), (c:Company {name: 'Hunas Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'H.A.D. Senaratne'}), (c:Company {name: 'Hunas Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'Koji Sugimoto'}), (c:Company {name: 'Hunas Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
// Step 8: Metric Nodes;

// Query 32
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 39
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 40
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 41
// Step 9: HAS_METRIC Relationships (Group);

// Query 42
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 799000000.0, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 906000000.0, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -436000000.0, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -398000000.0, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -474000000.0, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -412000000.0, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6562989100.0, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5550034290.0, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2581042314.0, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2500424556.0, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.54, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.47, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -18.37, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -16.47, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.1148, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.128, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44.0, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33.0, r.year = 2023;

// Query 60
// Step 9: HAS_METRIC Relationships (Company);

// Query 61
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 99241067.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 62
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 86194601.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 63
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -59000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 64
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -61000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 65
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -40000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 66
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -64000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 67
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3843942833.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 68
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3572706343.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 69
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3163462349.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 70
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3071484983.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 71
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.05, r.year = 2024, r.as_of = date('2024-03-31');

// Query 72
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.08, r.year = 2023, r.as_of = date('2023-03-31');

// Query 73
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.26, r.year = 2024, r.as_of = date('2024-03-31');

// Query 74
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2.10, r.year = 2023, r.as_of = date('2023-03-31');

// Query 75
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.6075, r.year = 2024, r.as_of = date('2024-03-31');

// Query 76
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.526, r.year = 2023, r.as_of = date('2023-03-31');

// Query 77
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 78
MATCH (c:Company {name: 'Hunas Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 79
// Step 10: Sector Nodes;

// Query 80
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 81
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 82
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 83
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 84
// Step 11: IN_SECTOR Relationships;

// Query 85
MATCH (c:Company {name: 'Hunas Holdings'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 86
MATCH (c:Company {name: 'Hunas Holdings'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 87
MATCH (c:Company {name: 'Hunas Holdings'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 88
MATCH (c:Company {name: 'Hunas Holdings'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 89
// Step 12: Product Nodes;

// Query 90
MERGE (p:Product {name: 'Hospitality Services'}) ON CREATE SET p.id = 'hospitality_services';

// Query 91
MERGE (p:Product {name: 'Electricity Generation'}) ON CREATE SET p.id = 'electricity_generation';

// Query 92
MERGE (p:Product {name: 'Packaging Solutions'}) ON CREATE SET p.id = 'packaging_solutions';

// Query 93
MERGE (p:Product {name: 'Retail Services'}) ON CREATE SET p.id = 'retail_services';

// Query 94
// Step 13: OFFERS Relationships;

// Query 95
MATCH (c:Company {name: 'Hunas Holdings'}), (p:Product {name: 'Hospitality Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'Hunas Holdings'}), (p:Product {name: 'Electricity Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: 'Hunas Holdings'}), (p:Product {name: 'Packaging Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'Hunas Holdings'}), (p:Product {name: 'Retail Services'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 98
// Generated on: 2025-10-02T22:36:50.742335
