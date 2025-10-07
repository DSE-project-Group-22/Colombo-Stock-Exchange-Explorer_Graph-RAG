// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Citrus Leisure'}) ON CREATE SET c.id = 'citrus_leisure', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Citrus Leisure'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'E. P. A. Cooray'}) ON CREATE SET p.id = 'e_p_a_cooray';

// Query 8
MERGE (p:Person {name: 'P. C. B. Talwatte'}) ON CREATE SET p.id = 'p_c_b_talwatte';

// Query 9
MERGE (p:Person {name: 'S. M. A. De Silva Sugathapala'}) ON CREATE SET p.id = 's_m_a_de_silva_sugathapala';

// Query 10
MERGE (p:Person {name: 'R. G. Seneviratne'}) ON CREATE SET p.id = 'r_g_seneviratne';

// Query 11
MERGE (p:Person {name: 'P. V. S. Premawardhana'}) ON CREATE SET p.id = 'p_v_s_premawardhana';

// Query 12
MERGE (p:Person {name: 'S. A. Ameresekere'}) ON CREATE SET p.id = 's_a_ameresekere';

// Query 13
MERGE (p:Person {name: 'V. S. F. Amunugama'}) ON CREATE SET p.id = 'v_s_f_amunugama';

// Query 14
MERGE (p:Person {name: 'J. M. B. Pilimatalawwe'}) ON CREATE SET p.id = 'j_m_b_pilimatalawwe';

// Query 15
MERGE (p:Person {name: 'S. D. De Mel'}) ON CREATE SET p.id = 's_d_de_mel';

// Query 16
MERGE (p:Person {name: 'P. L. P. Withana'}) ON CREATE SET p.id = 'p_l_p_withana';

// Query 17
MERGE (p:Person {name: 'Nuwan Dias'}) ON CREATE SET p.id = 'nuwan_dias';

// Query 18
// Step 4: HOLDS_POSITION Relationships;

// Query 19
MATCH (p:Person {name: 'E. P. A. Cooray'}), (c:Company {name: 'Citrus Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'E. P. A. Cooray'}), (c:Company {name: 'Citrus Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'P. C. B. Talwatte'}), (c:Company {name: 'Citrus Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'P. C. B. Talwatte'}), (c:Company {name: 'Citrus Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'S. M. A. De Silva Sugathapala'}), (c:Company {name: 'Citrus Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'S. M. A. De Silva Sugathapala'}), (c:Company {name: 'Citrus Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director Marketing', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'R. G. Seneviratne'}), (c:Company {name: 'Citrus Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'P. V. S. Premawardhana'}), (c:Company {name: 'Citrus Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'S. A. Ameresekere'}), (c:Company {name: 'Citrus Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'V. S. F. Amunugama'}), (c:Company {name: 'Citrus Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'J. M. B. Pilimatalawwe'}), (c:Company {name: 'Citrus Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'S. D. De Mel'}), (c:Company {name: 'Citrus Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'S. D. De Mel'}), (c:Company {name: 'Citrus Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'P. L. P. Withana'}), (c:Company {name: 'Citrus Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'Nuwan Dias'}), (c:Company {name: 'Citrus Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-03-31');

// Query 34
// Step 5: Metrics;

// Query 35
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 41
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Times';

// Query 42
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 44
// Step 6: HAS_METRIC Relationships;

// Query 45
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2186308113, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1625242078, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 849000000, r.year = 2022;

// Query 48
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 495000000, r.year = 2021;

// Query 49
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1193000000, r.year = 2020;

// Query 50
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -64678763, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -214233794, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -311000000, r.year = 2022;

// Query 53
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -421000000, r.year = 2021;

// Query 54
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -60000000, r.year = 2020;

// Query 55
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -728515334, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1282223870, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -672699965, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1133778971, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2.52, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4.24, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.72, r.year = 2022;

// Query 62
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2.26, r.year = 2021;

// Query 63
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.47, r.year = 2020;

// Query 64
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.15, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.18, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.17, r.year = 2022;

// Query 67
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.13, r.year = 2021;

// Query 68
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.25, r.year = 2020;

// Query 69
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.93, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.96, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.59, r.year = 2022;

// Query 72
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.60, r.year = 2021;

// Query 73
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2020;

// Query 74
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10843194309, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9992190118, r.year = 2023;

// Query 76
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9955000000, r.year = 2022;

// Query 77
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8807000000, r.year = 2021;

// Query 78
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8577000000, r.year = 2020;

// Query 79
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2792303947, r.year = 2024;

// Query 80
MATCH (c:Company {name: 'Citrus Leisure'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3360946933, r.year = 2023;

// Query 81
// Step 7: Sectors;

// Query 82
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 83
// Step 8: IN_SECTOR Relationships;

// Query 84
MATCH (c:Company {name: 'Citrus Leisure'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 85
// Step 9: Products;

// Query 86
MERGE (p:Product {name: 'Food Services'}) ON CREATE SET p.id = 'food_services';

// Query 87
MERGE (p:Product {name: 'Beverage Services'}) ON CREATE SET p.id = 'beverage_services';

// Query 88
MERGE (p:Product {name: 'Lodging'}) ON CREATE SET p.id = 'lodging';

// Query 89
// Step 10: OFFERS Relationships;

// Query 90
MATCH (c:Company {name: 'Citrus Leisure'}), (p:Product {name: 'Food Services'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 91
MATCH (c:Company {name: 'Citrus Leisure'}), (p:Product {name: 'Beverage Services'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 92
MATCH (c:Company {name: 'Citrus Leisure'}), (p:Product {name: 'Lodging'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 93
// Step 11: Company-Company Relationships (OWNS);

// Query 94
MERGE (child:Company {name: 'Hikkaduwa Beach Resort'}) ON CREATE SET child.id = 'hikkaduwa_beach_resort';

// Query 95
MATCH (parent:Company {name: 'Citrus Leisure'}), (child:Company {name: 'Hikkaduwa Beach Resort'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 82.86, r.as_of = date('2024-03-31');

// Query 96
MERGE (child:Company {name: 'Waskaduwa Beach Resort'}) ON CREATE SET child.id = 'waskaduwa_beach_resort';

// Query 97
MATCH (parent:Company {name: 'Citrus Leisure'}), (child:Company {name: 'Waskaduwa Beach Resort'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 68.63, r.as_of = date('2024-03-31');

// Query 98
MERGE (child:Company {name: 'Citrus Sliver'}) ON CREATE SET child.id = 'citrus_sliver';

// Query 99
MATCH (parent:Company {name: 'Citrus Leisure'}), (child:Company {name: 'Citrus Sliver'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Total queries: 99
// Generated on: 2025-10-03T01:03:30.459673
