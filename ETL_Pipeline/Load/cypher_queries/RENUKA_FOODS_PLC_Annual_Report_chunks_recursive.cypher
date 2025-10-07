// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Renuka Foods'}) ON CREATE SET c.id = 'renuka_foods', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Other Companies mentioned;

// Query 4
MERGE (c:Company {name: 'Renuka Holdings'}) ON CREATE SET c.id = 'renuka_holdings', c.region = 'Sri Lanka';

// Query 5
MERGE (c:Company {name: 'Renuka Agri Foods'}) ON CREATE SET c.id = 'renuka_agri_foods', c.region = 'Sri Lanka';

// Query 6
MERGE (c:Company {name: 'Renuka Agri Organics'}) ON CREATE SET c.id = 'renuka_agri_organics', c.region = 'Sri Lanka';

// Query 7
MERGE (c:Company {name: 'Richlife Dairies'}) ON CREATE SET c.id = 'richlife_dairies', c.region = 'Sri Lanka';

// Query 8
MERGE (c:Company {name: 'Shaw Wallace Ceylon'}) ON CREATE SET c.id = 'shaw_wallace_ceylon', c.region = 'Sri Lanka';

// Query 9
MERGE (c:Company {name: 'Ceylon Land & Equity'}) ON CREATE SET c.id = 'ceylon_land_and_equity', c.region = 'Sri Lanka';

// Query 10
MERGE (c:Company {name: 'Galle Face Capital Partners'}) ON CREATE SET c.id = 'galle_face_capital_partners', c.region = 'Sri Lanka';

// Query 11
// Step 3: People - Directors and Executives;

// Query 12
MERGE (p:Person {name: 'Dr. S. R. Rajiah'}) ON CREATE SET p.id = 'dr_s_r_rajiah';

// Query 13
MERGE (p:Person {name: 'Mrs. I. R. Rajiyah'}) ON CREATE SET p.id = 'mrs_i_r_rajiyah';

// Query 14
MERGE (p:Person {name: 'Mr. S. V. Rajiyah'}) ON CREATE SET p.id = 'mr_s_v_rajiyah';

// Query 15
MERGE (p:Person {name: 'Mr. A. M. P. C. K. Abeykoon'}) ON CREATE SET p.id = 'mr_a_m_p_c_k_abeykoon';

// Query 16
MERGE (p:Person {name: 'Mr. V. Sanmugam'}) ON CREATE SET p.id = 'mr_v_sanmugam';

// Query 17
MERGE (p:Person {name: 'Dr. J. A. S. Felix'}) ON CREATE SET p.id = 'dr_j_a_s_felix';

// Query 18
MERGE (p:Person {name: 'Mr. M. S. Dominic'}) ON CREATE SET p.id = 'mr_m_s_dominic';

// Query 19
MERGE (p:Person {name: 'Mr. R. F. N. Jayasooriya'}) ON CREATE SET p.id = 'mr_r_f_n_jayasooriya';

// Query 20
MERGE (p:Person {name: 'Mr. D. S. Arangala'}) ON CREATE SET p.id = 'mr_d_s_arangala';

// Query 21
// Step 4: HOLDS_POSITION Relationships;

// Query 22
MATCH (p:Person {name: 'Dr. S. R. Rajiah'}), (c:Company {name: 'Renuka Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Mrs. I. R. Rajiyah'}), (c:Company {name: 'Renuka Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Mr. S. V. Rajiyah'}), (c:Company {name: 'Renuka Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Mr. A. M. P. C. K. Abeykoon'}), (c:Company {name: 'Renuka Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'Mr. V. Sanmugam'}), (c:Company {name: 'Renuka Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'Dr. J. A. S. Felix'}), (c:Company {name: 'Renuka Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'Mr. M. S. Dominic'}), (c:Company {name: 'Renuka Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'Mr. R. F. N. Jayasooriya'}), (c:Company {name: 'Renuka Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'Mr. D. S. Arangala'}), (c:Company {name: 'Renuka Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'Mrs. I. R. Rajiyah'}), (c:Company {name: 'Renuka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'Mrs. I. R. Rajiyah'}), (c:Company {name: 'Renuka Agri Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'Mrs. I. R. Rajiyah'}), (c:Company {name: 'Shaw Wallace Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'Mrs. I. R. Rajiyah'}), (c:Company {name: 'Richlife Dairies'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'Mr. S. V. Rajiyah'}), (c:Company {name: 'Renuka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 36
MATCH (p:Person {name: 'Mr. S. V. Rajiyah'}), (c:Company {name: 'Renuka Agri Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 37
MATCH (p:Person {name: 'Mr. S. V. Rajiyah'}), (c:Company {name: 'Shaw Wallace Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 38
MATCH (p:Person {name: 'Mr. S. V. Rajiyah'}), (c:Company {name: 'Richlife Dairies'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 39
MATCH (p:Person {name: 'Mr. S. V. Rajiyah'}), (c:Company {name: 'Ceylon Land & Equity'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 40
MATCH (p:Person {name: 'Mr. S. V. Rajiyah'}), (c:Company {name: 'Galle Face Capital Partners'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 41
// Step 5: Metrics;

// Query 42
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 51
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 52
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 53
// Step 6: HAS_METRIC Relationships;

// Query 54
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15226252679.0, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17801685216.0, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1712933951.0, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3251938193.0, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -799068709.0, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 499459850.0, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -166905689.0, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1488703708.0, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -941157969.0, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 755930416.0, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10920578930.0, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12770802004.0, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4997671543.0, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6233425703.0, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4.89, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.95, r.year = 2023;

// Query 70
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -18.16, r.year = 2024;

// Query 71
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.00, r.year = 2023;

// Query 72
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.04, r.year = 2024;

// Query 73
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.29, r.year = 2023;

// Query 74
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 70.23, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'Renuka Foods'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 43.69, r.year = 2023;

// Query 76
// Step 7: Sectors;

// Query 77
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 78
// Step 8: IN_SECTOR Relationships;

// Query 79
MATCH (c:Company {name: 'Renuka Foods'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 80
MATCH (c:Company {name: 'Renuka Agri Foods'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 81
MATCH (c:Company {name: 'Renuka Agri Organics'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 82
MATCH (c:Company {name: 'Richlife Dairies'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 83
MATCH (c:Company {name: 'Shaw Wallace Ceylon'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 84
// Step 9: Products;

// Query 85
MERGE (p:Product {name: 'Renuka'}) ON CREATE SET p.id = 'renuka';

// Query 86
MERGE (p:Product {name: 'Richlife'}) ON CREATE SET p.id = 'richlife';

// Query 87
MERGE (p:Product {name: 'Mr Pop'}) ON CREATE SET p.id = 'mr_pop';

// Query 88
MERGE (p:Product {name: 'Organic Coconut Products'}) ON CREATE SET p.id = 'organic_coconut_products';

// Query 89
// Step 10: OFFERS Relationships;

// Query 90
MATCH (c:Company {name: 'Renuka Foods'}), (p:Product {name: 'Renuka'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Renuka Foods'}), (p:Product {name: 'Richlife'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {name: 'Renuka Foods'}), (p:Product {name: 'Mr Pop'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: 'Renuka Foods'}), (p:Product {name: 'Organic Coconut Products'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 93
// Generated on: 2025-10-02T23:07:52.670266
