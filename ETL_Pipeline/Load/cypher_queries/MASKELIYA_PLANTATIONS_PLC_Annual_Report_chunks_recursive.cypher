// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Maskeliya Plantations'}) ON CREATE SET c.id = 'maskeliya_plantations', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'RPC Management Services'}) ON CREATE SET c.id = 'rpc_management_services';

// Query 4
MERGE (c:Company {name: 'Richard Pieris & Company'}) ON CREATE SET c.id = 'richard_pieris_and_company';

// Query 5
// Step 2: Auditor;

// Query 6
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 7
// Step 3: AUDITED_BY Relationship;

// Query 8
MATCH (c:Company {name: 'Maskeliya Plantations'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 9
// Step 4: People - Directors and Executives;

// Query 10
MERGE (p:Person {name: 'Dr. Sena Yaddehige'}) ON CREATE SET p.id = 'dr_sena_yaddehige';

// Query 11
MERGE (p:Person {name: 'Shaminda Yaddehige'}) ON CREATE SET p.id = 'shaminda_yaddehige';

// Query 12
MERGE (p:Person {name: 'Dr. L S K Hettiarachchi'}) ON CREATE SET p.id = 'dr_l_s_k_hettiarachchi';

// Query 13
MERGE (p:Person {name: 'Dr. D S A Samaraweera'}) ON CREATE SET p.id = 'dr_d_s_a_samaraweera';

// Query 14
MERGE (p:Person {name: 'J L A Fernando'}) ON CREATE SET p.id = 'j_l_a_fernando';

// Query 15
MERGE (p:Person {name: 'K A S Lasantha'}) ON CREATE SET p.id = 'k_a_s_lasantha';

// Query 16
MERGE (p:Person {name: 'V Pusselle'}) ON CREATE SET p.id = 'v_pusselle';

// Query 17
MERGE (p:Person {name: 'I A A D Weerakoon'}) ON CREATE SET p.id = 'i_a_a_d_weerakoon';

// Query 18
MERGE (p:Person {name: 'T T Christy'}) ON CREATE SET p.id = 't_t_christy';

// Query 19
MERGE (p:Person {name: 'T N B Herath'}) ON CREATE SET p.id = 't_n_b_herath';

// Query 20
MERGE (p:Person {name: 'M M K Bandara'}) ON CREATE SET p.id = 'm_m_k_bandara';

// Query 21
MERGE (p:Person {name: 'H K Caldera'}) ON CREATE SET p.id = 'h_k_caldera';

// Query 22
MERGE (p:Person {name: 'H M B M Jayathilake'}) ON CREATE SET p.id = 'h_m_b_m_jayathilake';

// Query 23
MERGE (p:Person {name: 'R M S S Herath'}) ON CREATE SET p.id = 'r_m_s_s_herath';

// Query 24
MERGE (p:Person {name: 'L Thennakoon'}) ON CREATE SET p.id = 'l_thennakoon';

// Query 25
// Step 5: HOLDS_POSITION Relationships;

// Query 26
MATCH (p:Person {name: 'Dr. Sena Yaddehige'}), (c:Company {name: 'Maskeliya Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'Shaminda Yaddehige'}), (c:Company {name: 'Maskeliya Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'Dr. L S K Hettiarachchi'}), (c:Company {name: 'Maskeliya Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'Dr. D S A Samaraweera'}), (c:Company {name: 'Maskeliya Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'J L A Fernando'}), (c:Company {name: 'Maskeliya Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'K A S Lasantha'}), (c:Company {name: 'Maskeliya Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'V Pusselle'}), (c:Company {name: 'Maskeliya Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'I A A D Weerakoon'}), (c:Company {name: 'Maskeliya Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Operating Officer', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'T T Christy'}), (c:Company {name: 'Maskeliya Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'T N B Herath'}), (c:Company {name: 'Maskeliya Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 36
MATCH (p:Person {name: 'M M K Bandara'}), (c:Company {name: 'Maskeliya Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 37
MATCH (p:Person {name: 'H K Caldera'}), (c:Company {name: 'Maskeliya Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 38
MATCH (p:Person {name: 'H M B M Jayathilake'}), (c:Company {name: 'Maskeliya Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 39
MATCH (p:Person {name: 'R M S S Herath'}), (c:Company {name: 'Maskeliya Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 40
MATCH (p:Person {name: 'L Thennakoon'}), (c:Company {name: 'Maskeliya Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 41
// Step 6: Metrics;

// Query 42
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 49
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Times';

// Query 50
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 51
// Step 7: HAS_METRIC Relationships;

// Query 52
MATCH (c:Company {name: 'Maskeliya Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6328771000.0, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Maskeliya Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6169527000.0, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Maskeliya Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 927921000.0, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Maskeliya Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1576847000.0, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Maskeliya Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 468101000.0, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Maskeliya Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 886551000.0, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Maskeliya Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6490147000.0, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Maskeliya Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6171180000.0, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Maskeliya Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2166923000.0, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Maskeliya Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1751538000.0, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Maskeliya Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.68, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Maskeliya Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.43, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Maskeliya Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.87, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Maskeliya Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.80, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Maskeliya Plantations'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.29, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Maskeliya Plantations'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.55, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'Maskeliya Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 760873000.0, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Maskeliya Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1351151000.0, r.year = 2023;

// Query 70
// Step 8: Sectors;

// Query 71
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 72
// Step 9: IN_SECTOR Relationships;

// Query 73
MATCH (c:Company {name: 'Maskeliya Plantations'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
// Step 10: Products;

// Query 75
MERGE (p:Product {name: 'Tea'}) ON CREATE SET p.id = 'tea';

// Query 76
MERGE (p:Product {name: 'Rubber'}) ON CREATE SET p.id = 'rubber';

// Query 77
MERGE (p:Product {name: 'Cinnamon'}) ON CREATE SET p.id = 'cinnamon';

// Query 78
MERGE (p:Product {name: 'Fruits'}) ON CREATE SET p.id = 'fruits';

// Query 79
MERGE (p:Product {name: 'Coffee'}) ON CREATE SET p.id = 'coffee';

// Query 80
// Step 11: OFFERS Relationships;

// Query 81
MATCH (c:Company {name: 'Maskeliya Plantations'}), (p:Product {name: 'Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Maskeliya Plantations'}), (p:Product {name: 'Rubber'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Maskeliya Plantations'}), (p:Product {name: 'Cinnamon'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Maskeliya Plantations'}), (p:Product {name: 'Fruits'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Maskeliya Plantations'}), (p:Product {name: 'Coffee'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
// Step 12: Company-Company Relationships;

// Query 87
MATCH (parent:Company {name: 'RPC Management Services'}), (child:Company {name: 'Maskeliya Plantations'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 83.40, r.as_of = date('2024-03-31');

// Query 88
MATCH (manager:Company {name: 'RPC Management Services'}), (managed:Company {name: 'Maskeliya Plantations'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'plantation management', r.as_of = date('2024-03-31');

// Total queries: 88
// Generated on: 2025-10-03T01:38:28.421011
