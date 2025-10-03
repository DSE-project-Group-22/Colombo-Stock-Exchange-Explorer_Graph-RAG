// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Hikkaduwa Beach Resort'}) ON CREATE SET c.id = 'hikkaduwa_beach_resort', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('2011-02-23');

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: Person Nodes Creation;

// Query 8
MERGE (p:Person {name: 'S. D. De Mel'}) ON CREATE SET p.id = 's_d_de_mel';

// Query 9
MERGE (p:Person {name: 'P. C. B. Talwatte'}) ON CREATE SET p.id = 'p_c_b_talwatte';

// Query 10
MERGE (p:Person {name: 'Mani Sugathapala'}) ON CREATE SET p.id = 'mani_sugathapala';

// Query 11
MERGE (p:Person {name: 'S. A. Ameresekere'}) ON CREATE SET p.id = 's_a_ameresekere';

// Query 12
MERGE (p:Person {name: 'R. Seneviratne'}) ON CREATE SET p.id = 'r_seneviratne';

// Query 13
MERGE (p:Person {name: 'P. V. S. Premawardhana'}) ON CREATE SET p.id = 'p_v_s_premawardhana';

// Query 14
MERGE (p:Person {name: 'P. L. P. Withana'}) ON CREATE SET p.id = 'p_l_p_withana';

// Query 15
MERGE (p:Person {name: 'Nuwan Dias'}) ON CREATE SET p.id = 'nuwan_dias';

// Query 16
MERGE (p:Person {name: 'E. P. A. Cooray'}) ON CREATE SET p.id = 'e_p_a_cooray';

// Query 17
// Step 5: HOLDS_POSITION Relationships;

// Query 18
MATCH (p:Person {name: 'S. D. De Mel'}), (c:Company {name: 'Hikkaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'P. C. B. Talwatte'}), (c:Company {name: 'Hikkaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'P. C. B. Talwatte'}), (c:Company {name: 'Hikkaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Mani Sugathapala'}), (c:Company {name: 'Hikkaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Mani Sugathapala'}), (c:Company {name: 'Hikkaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'S. A. Ameresekere'}), (c:Company {name: 'Hikkaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'R. Seneviratne'}), (c:Company {name: 'Hikkaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'P. V. S. Premawardhana'}), (c:Company {name: 'Hikkaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'P. L. P. Withana'}), (c:Company {name: 'Hikkaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'Nuwan Dias'}), (c:Company {name: 'Hikkaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'E. P. A. Cooray'}), (c:Company {name: 'Hikkaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
// Step 6: Metric Nodes Creation;

// Query 30
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 37
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Times';

// Query 38
// Step 7: HAS_METRIC Relationships;

// Query 39
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 563000000.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 450400000.0, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 583000000.0, r.year = 2022;

// Query 42
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 344000000.0, r.year = 2021;

// Query 43
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 937000000.0, r.year = 2020;

// Query 44
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1167000000.0, r.year = 2019;

// Query 45
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45000000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 92000000.0, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -195000000.0, r.year = 2022;

// Query 48
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -264000000.0, r.year = 2021;

// Query 49
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -19000000.0, r.year = 2020;

// Query 50
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 137000000.0, r.year = 2019;

// Query 51
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 465837160.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -16169403.0, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 357627415.0, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -781428185.0, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2.00, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3.48, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.08, r.year = 2022;

// Query 58
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.72, r.year = 2021;

// Query 59
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.11, r.year = 2020;

// Query 60
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3628051.0, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4205282.0, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5068186.0, r.year = 2022;

// Query 63
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4537041.0, r.year = 2021;

// Query 64
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4665095.0, r.year = 2020;

// Query 65
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.19, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.19, r.year = 2023;

// Query 67
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.20, r.year = 2022;

// Query 68
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.11, r.year = 2021;

// Query 69
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.24, r.year = 2020;

// Query 70
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.63, r.year = 2024;

// Query 71
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.70, r.year = 2023;

// Query 72
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.50, r.year = 2022;

// Query 73
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.52, r.year = 2021;

// Query 74
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.55, r.year = 2020;

// Query 75
// Step 8: Sector Nodes Creation;

// Query 76
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 77
// Step 9: IN_SECTOR Relationships;

// Query 78
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 79
// Step 10: Product Nodes Creation;

// Query 80
MERGE (p:Product {name: 'Food and Beverage Services'}) ON CREATE SET p.id = 'food_and_beverage_services';

// Query 81
MERGE (p:Product {name: 'Lodging Services'}) ON CREATE SET p.id = 'lodging_services';

// Query 82
MERGE (p:Product {name: 'Hospitality Services'}) ON CREATE SET p.id = 'hospitality_services';

// Query 83
// Step 11: OFFERS Relationships;

// Query 84
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (p:Product {name: 'Food and Beverage Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (p:Product {name: 'Lodging Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Hikkaduwa Beach Resort'}), (p:Product {name: 'Hospitality Services'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 86
// Generated on: 2025-10-03T01:12:24.171802
