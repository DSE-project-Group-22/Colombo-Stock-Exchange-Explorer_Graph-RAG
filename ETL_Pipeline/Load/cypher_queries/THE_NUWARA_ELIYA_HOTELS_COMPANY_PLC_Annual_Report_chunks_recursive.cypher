// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Nuwara Eliya Hotels Company'}) ON CREATE SET c.id = 'nuwara_eliya_hotels_company', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No explicit auditor firm name found to match hardcoded list, skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'J.H.P. Ratnayeke'}) ON CREATE SET p.id = 'j_h_p_ratnayeke';

// Query 6
MERGE (p:Person {name: 'Gerard G. Ondaatjie'}) ON CREATE SET p.id = 'gerard_g_ondaatjie';

// Query 7
MERGE (p:Person {name: 'A.M. Ondaatjie'}) ON CREATE SET p.id = 'a_m_ondaatjie';

// Query 8
MERGE (p:Person {name: 'T.J. Ondaatjie'}) ON CREATE SET p.id = 't_j_ondaatjie';

// Query 9
MERGE (p:Person {name: 'L.N.D.S. Wijeyeratne'}) ON CREATE SET p.id = 'l_n_d_s_wijeyeratne';

// Query 10
MERGE (p:Person {name: 'M.K.K.K.B. Galagoda'}) ON CREATE SET p.id = 'm_k_k_k_b_galagoda';

// Query 11
MERGE (p:Person {name: 'S.K. Abeysundara'}) ON CREATE SET p.id = 's_k_abeysundara';

// Query 12
MERGE (p:Person {name: 'G.H.R. Fernando'}) ON CREATE SET p.id = 'g_h_r_fernando';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'J.H.P. Ratnayeke'}), (c:Company {name: 'Nuwara Eliya Hotels Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'Gerard G. Ondaatjie'}), (c:Company {name: 'Nuwara Eliya Hotels Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'A.M. Ondaatjie'}), (c:Company {name: 'Nuwara Eliya Hotels Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'T.J. Ondaatjie'}), (c:Company {name: 'Nuwara Eliya Hotels Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'L.N.D.S. Wijeyeratne'}), (c:Company {name: 'Nuwara Eliya Hotels Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'M.K.K.K.B. Galagoda'}), (c:Company {name: 'Nuwara Eliya Hotels Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'S.K. Abeysundara'}), (c:Company {name: 'Nuwara Eliya Hotels Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'G.H.R. Fernando'}), (c:Company {name: 'Nuwara Eliya Hotels Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 22
// Step 5: Metrics;

// Query 23
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 28
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 29
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 30
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 33
// Step 6: HAS_METRIC Relationships;

// Query 34
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1965775812, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 884495500, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 580964851, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 66386182, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6440362158, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5503262700, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5039521098, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4463718434, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.86, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.83, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.53, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.49, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.36, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 265.76, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30.37, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 826900000, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 130400000, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 664271228, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4401215, r.year = 2023;

// Query 54
// Step 7: Sectors;

// Query 55
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 56
// Step 8: IN_SECTOR Relationships;

// Query 57
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 58
// Step 9: Products;

// Query 59
MERGE (p:Product {name: 'Room Services'}) ON CREATE SET p.id = 'room_services';

// Query 60
MERGE (p:Product {name: 'Food Services'}) ON CREATE SET p.id = 'food_services';

// Query 61
MERGE (p:Product {name: 'Beverage Services'}) ON CREATE SET p.id = 'beverage_services';

// Query 62
MERGE (p:Product {name: 'Spa Services'}) ON CREATE SET p.id = 'spa_services';

// Query 63
MERGE (p:Product {name: 'Laundry Services'}) ON CREATE SET p.id = 'laundry_services';

// Query 64
MERGE (p:Product {name: 'Gift Shop Sales'}) ON CREATE SET p.id = 'gift_shop_sales';

// Query 65
MERGE (p:Product {name: 'Event Hosting'}) ON CREATE SET p.id = 'event_hosting';

// Query 66
MERGE (p:Product {name: 'Corporate Packages'}) ON CREATE SET p.id = 'corporate_packages';

// Query 67
MERGE (p:Product {name: 'Outdoor Catering'}) ON CREATE SET p.id = 'outdoor_catering';

// Query 68
// Step 10: OFFERS Relationships;

// Query 69
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (p:Product {name: 'Room Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (p:Product {name: 'Food Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (p:Product {name: 'Beverage Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (p:Product {name: 'Spa Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (p:Product {name: 'Laundry Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (p:Product {name: 'Gift Shop Sales'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (p:Product {name: 'Event Hosting'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (p:Product {name: 'Corporate Packages'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
MATCH (c:Company {name: 'Nuwara Eliya Hotels Company'}), (p:Product {name: 'Outdoor Catering'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 77
// Generated on: 2025-10-03T02:16:51.566546
