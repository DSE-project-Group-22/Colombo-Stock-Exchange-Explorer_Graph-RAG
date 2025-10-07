// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Dilmah Ceylon Tea Company'}) ON CREATE SET c.id = 'dilmah_ceylon_tea_company', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2025;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Dilhan C. Fernando'}) ON CREATE SET p.id = 'dilhan_c_fernando';

// Query 8
MERGE (p:Person {name: 'Himendra S. Ranaweera'}) ON CREATE SET p.id = 'himendra_s_ranaweera';

// Query 9
MERGE (p:Person {name: 'Malik J. Fernando'}) ON CREATE SET p.id = 'malik_j_fernando';

// Query 10
MERGE (p:Person {name: 'Roshan C. Tissaaratchy'}) ON CREATE SET p.id = 'roshan_c_tissaaratchy';

// Query 11
MERGE (p:Person {name: 'Darshana Gunasekera'}) ON CREATE SET p.id = 'darshana_gunasekera';

// Query 12
MERGE (p:Person {name: 'Minette D. A. Perera'}) ON CREATE SET p.id = 'minette_d_a_perera';

// Query 13
MERGE (p:Person {name: 'Rajanayagam Asirwatham'}) ON CREATE SET p.id = 'rajanayagam_asirwatham';

// Query 14
MERGE (p:Person {name: 'Ravindra A. Fernando'}) ON CREATE SET p.id = 'ravindra_a_fernando';

// Query 15
MERGE (p:Person {name: 'John M. Lo'}) ON CREATE SET p.id = 'john_m_lo';

// Query 16
MERGE (p:Person {name: 'Anil L. N. Dias'}) ON CREATE SET p.id = 'anil_l_n_dias';

// Query 17
// Step 4: HOLDS_POSITION Relationships;

// Query 18
MATCH (p:Person {name: 'Dilhan C. Fernando'}), (c:Company {name: 'Dilmah Ceylon Tea Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-03-31');

// Query 19
MATCH (p:Person {name: 'Dilhan C. Fernando'}), (c:Company {name: 'Dilmah Ceylon Tea Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2025-03-31');

// Query 20
MATCH (p:Person {name: 'Himendra S. Ranaweera'}), (c:Company {name: 'Dilmah Ceylon Tea Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2025-03-31');

// Query 21
MATCH (p:Person {name: 'Malik J. Fernando'}), (c:Company {name: 'Dilmah Ceylon Tea Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 22
MATCH (p:Person {name: 'Roshan C. Tissaaratchy'}), (c:Company {name: 'Dilmah Ceylon Tea Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 23
MATCH (p:Person {name: 'Darshana Gunasekera'}), (c:Company {name: 'Dilmah Ceylon Tea Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 24
MATCH (p:Person {name: 'Minette D. A. Perera'}), (c:Company {name: 'Dilmah Ceylon Tea Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 25
MATCH (p:Person {name: 'Rajanayagam Asirwatham'}), (c:Company {name: 'Dilmah Ceylon Tea Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 26
MATCH (p:Person {name: 'Ravindra A. Fernando'}), (c:Company {name: 'Dilmah Ceylon Tea Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 27
MATCH (p:Person {name: 'John M. Lo'}), (c:Company {name: 'Dilmah Ceylon Tea Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 28
MATCH (p:Person {name: 'Anil L. N. Dias'}), (c:Company {name: 'Dilmah Ceylon Tea Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 29
// Step 5: Metrics;

// Query 30
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 35
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 36
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 39
// Step 6: HAS_METRIC Relationships;

// Query 40
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21158000000, r.year = 2025;

// Query 41
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18497000000, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1451000000, r.year = 2025;

// Query 43
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 673000000, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1689000000, r.year = 2025;

// Query 45
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1367000000, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 726000000, r.year = 2025;

// Query 47
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 762000000, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.21, r.year = 2025;

// Query 49
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.39, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.19, r.year = 2025;

// Query 51
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.36, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28900000000, r.year = 2025;

// Query 53
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27025000000, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22917000000, r.year = 2025;

// Query 55
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22311000000, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 35.00, r.year = 2025;

// Query 57
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36.76, r.year = 2024;

// Query 58
// Step 7: Sectors;

// Query 59
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 60
// Step 8: IN_SECTOR Relationships;

// Query 61
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 62
// Step 9: Products;

// Query 63
MERGE (p:Product {name: 'Tea Bags'}) ON CREATE SET p.id = 'tea_bags';

// Query 64
MERGE (p:Product {name: 'Tea Packets'}) ON CREATE SET p.id = 'tea_packets';

// Query 65
MERGE (p:Product {name: 'Ready-To-Drink Tea'}) ON CREATE SET p.id = 'ready_to_drink_tea';

// Query 66
MERGE (p:Product {name: 'Bulk Tea'}) ON CREATE SET p.id = 'bulk_tea';

// Query 67
MERGE (p:Product {name: 'Other Value Added Teas'}) ON CREATE SET p.id = 'other_value_added_teas';

// Query 68
MERGE (p:Product {name: 'Cinnamon'}) ON CREATE SET p.id = 'cinnamon';

// Query 69
MERGE (p:Product {name: 'Liquid Tea Concentrate'}) ON CREATE SET p.id = 'liquid_tea_concentrate';

// Query 70
MERGE (p:Product {name: 'Computer Software'}) ON CREATE SET p.id = 'computer_software';

// Query 71
// Step 10: OFFERS Relationships;

// Query 72
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (p:Product {name: 'Tea Bags'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (p:Product {name: 'Tea Packets'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (p:Product {name: 'Ready-To-Drink Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (p:Product {name: 'Bulk Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (p:Product {name: 'Other Value Added Teas'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (p:Product {name: 'Cinnamon'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (p:Product {name: 'Liquid Tea Concentrate'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'Dilmah Ceylon Tea Company'}), (p:Product {name: 'Computer Software'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 79
// Generated on: 2025-10-03T00:33:15.882560
