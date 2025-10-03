// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Waskaduwa Beach Resort'}) ON CREATE SET c.id = 'waskaduwa_beach_resort', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('2011-01-07');

// Query 3
// Step 2: Auditor - No explicit auditor firm name found in the provided chunks that matches the hardcoded list. Skipping.;

// Query 4
// Step 3: Other Company Nodes;

// Query 5
MERGE (c:Company {name: 'Hikkaduwa Beach Resort'}) ON CREATE SET c.id = 'hikkaduwa_beach_resort', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 6
MERGE (c:Company {name: 'P W Corporate Secretarial'}) ON CREATE SET c.id = 'p_w_corporate_secretarial';

// Query 7
MERGE (c:Company {name: 'Central Depository Systems'}) ON CREATE SET c.id = 'central_depository_systems';

// Query 8
MERGE (c:Company {name: 'Colombo Stock Exchange'}) ON CREATE SET c.id = 'colombo_stock_exchange';

// Query 9
// Step 4: Person Nodes;

// Query 10
MERGE (p:Person {name: 'P. C. B. Talwatte'}) ON CREATE SET p.id = 'p_c_b_talwatte';

// Query 11
MERGE (p:Person {name: 'S. M. A. De Silva Sugathapala'}) ON CREATE SET p.id = 's_m_a_de_silva_sugathapala';

// Query 12
MERGE (p:Person {name: 'V. S. F. Amunugama'}) ON CREATE SET p.id = 'v_s_f_amunugama';

// Query 13
MERGE (p:Person {name: 'S. A. Ameresekere'}) ON CREATE SET p.id = 's_a_ameresekere';

// Query 14
MERGE (p:Person {name: 'J. M. B. Pilimatalawwe'}) ON CREATE SET p.id = 'j_m_b_pilimatalawwe';

// Query 15
MERGE (p:Person {name: 'S. D. De Mel'}) ON CREATE SET p.id = 's_d_de_mel';

// Query 16
MERGE (p:Person {name: 'E. P. A. Cooray'}) ON CREATE SET p.id = 'e_p_a_cooray';

// Query 17
MERGE (p:Person {name: 'R. G. Seneviratne'}) ON CREATE SET p.id = 'r_g_seneviratne';

// Query 18
MERGE (p:Person {name: 'P. L. P. Withana'}) ON CREATE SET p.id = 'p_l_p_withana';

// Query 19
MERGE (p:Person {name: 'Nuwan Dias'}) ON CREATE SET p.id = 'nuwan_dias';

// Query 20
// Step 5: HOLDS_POSITION Relationships;

// Query 21
MATCH (p:Person {name: 'P. C. B. Talwatte'}), (c:Company {name: 'Waskaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'P. C. B. Talwatte'}), (c:Company {name: 'Waskaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-08-30');

// Query 23
MATCH (p:Person {name: 'S. M. A. De Silva Sugathapala'}), (c:Company {name: 'Waskaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-02-13');

// Query 24
MATCH (p:Person {name: 'V. S. F. Amunugama'}), (c:Company {name: 'Waskaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'S. A. Ameresekere'}), (c:Company {name: 'Waskaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'J. M. B. Pilimatalawwe'}), (c:Company {name: 'Waskaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'S. D. De Mel'}), (c:Company {name: 'Waskaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'S. D. De Mel'}), (c:Company {name: 'Waskaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'E. P. A. Cooray'}), (c:Company {name: 'Waskaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'R. G. Seneviratne'}), (c:Company {name: 'Waskaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'P. L. P. Withana'}), (c:Company {name: 'Waskaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'Nuwan Dias'}), (c:Company {name: 'Waskaduwa Beach Resort'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-08-30');

// Query 33
// Step 6: Metric Nodes;

// Query 34
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 41
// Step 7: HAS_METRIC Relationships;

// Query 42
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1091134245, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 749295592, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 350847000, r.year = 2022;

// Query 45
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 238607000, r.year = 2021;

// Query 46
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 623281000, r.year = 2020;

// Query 47
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -407249493, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -709275113, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -339959000, r.year = 2022;

// Query 50
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -333965000, r.year = 2021;

// Query 51
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -252038000, r.year = 2020;

// Query 52
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -408144048, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -708166745, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -340532000, r.year = 2022;

// Query 55
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -335226000, r.year = 2021;

// Query 56
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -252495000, r.year = 2020;

// Query 57
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5829833648, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5136789092, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5122822000, r.year = 2022;

// Query 60
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4386289000, r.year = 2021;

// Query 61
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4214016000, r.year = 2020;

// Query 62
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -56282496, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -203959591, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.73, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.26, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.61, r.year = 2022;

// Query 67
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.60, r.year = 2021;

// Query 68
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.50, r.year = 2020;

// Query 69
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1629250000, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1901641000, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2545838000, r.year = 2022;

// Query 72
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2123400000, r.year = 2021;

// Query 73
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2134208000, r.year = 2020;

// Query 74
// Step 8: Sector Nodes;

// Query 75
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 76
// Step 9: IN_SECTOR Relationships;

// Query 77
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 78
// Step 10: Product Nodes;

// Query 79
MERGE (p:Product {name: 'Rooms'}) ON CREATE SET p.id = 'rooms';

// Query 80
MERGE (p:Product {name: 'Food'}) ON CREATE SET p.id = 'food';

// Query 81
MERGE (p:Product {name: 'Beverage'}) ON CREATE SET p.id = 'beverage';

// Query 82
MERGE (p:Product {name: 'Banquet Services'}) ON CREATE SET p.id = 'banquet_services';

// Query 83
MERGE (p:Product {name: 'Laundry Services'}) ON CREATE SET p.id = 'laundry_services';

// Query 84
MERGE (p:Product {name: 'Spa Services'}) ON CREATE SET p.id = 'spa_services';

// Query 85
// Step 11: OFFERS Relationships;

// Query 86
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (p:Product {name: 'Rooms'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (p:Product {name: 'Food'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (p:Product {name: 'Beverage'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (p:Product {name: 'Banquet Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (p:Product {name: 'Laundry Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Waskaduwa Beach Resort'}), (p:Product {name: 'Spa Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
// Step 12: Company-Company Relationships (OWNS, MANAGES) - No valid OWNS or MANAGES relationships found based on strict rules. Skipping.;

// Total queries: 92
// Generated on: 2025-10-03T00:23:33.455936
