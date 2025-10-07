// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Renuka Agri Foods'}) ON CREATE SET c.id = 'renuka_agri_foods', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Renuka Agri Foods'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Dr. S.R. Rajiyah'}) ON CREATE SET p.id = 'dr_s_r_rajiyah';

// Query 8
MERGE (p:Person {name: 'Mrs. I.R. Rajiyah'}) ON CREATE SET p.id = 'mrs_i_r_rajiyah';

// Query 9
MERGE (p:Person {name: 'Mr. S.V. Rajiyah'}) ON CREATE SET p.id = 'mr_s_v_rajiyah';

// Query 10
MERGE (p:Person {name: 'Mr. V. Sanmugam'}) ON CREATE SET p.id = 'mr_v_sanmugam';

// Query 11
MERGE (p:Person {name: 'Mr. D. S. Arangala'}) ON CREATE SET p.id = 'mr_d_s_arangala';

// Query 12
MERGE (p:Person {name: 'Mr. M.S. Dominic'}) ON CREATE SET p.id = 'mr_m_s_dominic';

// Query 13
MERGE (p:Person {name: 'Mr. T.K. Bandaranayake'}) ON CREATE SET p.id = 'mr_t_k_bandaranayake';

// Query 14
MERGE (p:Person {name: 'Mrs. J. J. B.A. Rajiyah'}) ON CREATE SET p.id = 'mrs_j_j_b_a_rajiyah';

// Query 15
// Step 4: HOLDS_POSITION Relationships;

// Query 16
MATCH (p:Person {name: 'Dr. S.R. Rajiyah'}), (c:Company {name: 'Renuka Agri Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Dr. S.R. Rajiyah'}), (c:Company {name: 'Renuka Agri Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'Mrs. I.R. Rajiyah'}), (c:Company {name: 'Renuka Agri Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'Mr. S.V. Rajiyah'}), (c:Company {name: 'Renuka Agri Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'Mr. S.V. Rajiyah'}), (c:Company {name: 'Renuka Agri Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Mr. V. Sanmugam'}), (c:Company {name: 'Renuka Agri Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Mr. D. S. Arangala'}), (c:Company {name: 'Renuka Agri Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Mr. D. S. Arangala'}), (c:Company {name: 'Renuka Agri Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Mr. M.S. Dominic'}), (c:Company {name: 'Renuka Agri Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Mr. M.S. Dominic'}), (c:Company {name: 'Renuka Agri Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'Mr. T.K. Bandaranayake'}), (c:Company {name: 'Renuka Agri Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'Mrs. J. J. B.A. Rajiyah'}), (c:Company {name: 'Renuka Agri Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
// Step 5: Metrics;

// Query 29
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 37
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 38
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 39
// Step 6: HAS_METRIC Relationships;

// Query 40
MATCH (c:Company {name: 'Renuka Agri Foods'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5517184305.0, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Renuka Agri Foods'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7212002625.0, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Renuka Agri Foods'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -656038641.0, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Renuka Agri Foods'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 498090383.0, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Renuka Agri Foods'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 290252804.0, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Renuka Agri Foods'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1616646854.0, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Renuka Agri Foods'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -832177694.0, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Renuka Agri Foods'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 688797350.0, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Renuka Agri Foods'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6936666600.0, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Renuka Agri Foods'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7918445592.0, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Renuka Agri Foods'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3584666859.0, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Renuka Agri Foods'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4280145407.0, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Renuka Agri Foods'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.15, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Renuka Agri Foods'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.71, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Renuka Agri Foods'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -18.30, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Renuka Agri Foods'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.64, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Renuka Agri Foods'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.95, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Renuka Agri Foods'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.24, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Renuka Agri Foods'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 88.36, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Renuka Agri Foods'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 67.24, r.year = 2023;

// Query 60
// Step 7: Sectors;

// Query 61
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 62
// Step 8: IN_SECTOR Relationships;

// Query 63
MATCH (c:Company {name: 'Renuka Agri Foods'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 64
// Step 9: Products;

// Query 65
MERGE (p:Product {name: 'Coconut Products'}) ON CREATE SET p.id = 'coconut_products';

// Query 66
MERGE (p:Product {name: 'Organic Coconut Products'}) ON CREATE SET p.id = 'organic_coconut_products';

// Query 67
// Step 10: OFFERS Relationships;

// Query 68
MATCH (c:Company {name: 'Renuka Agri Foods'}), (p:Product {name: 'Coconut Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Renuka Agri Foods'}), (p:Product {name: 'Organic Coconut Products'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 69
// Generated on: 2025-10-03T03:48:07.223937
