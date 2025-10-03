// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Jetwing Symphony'}) ON CREATE SET c.id = 'jetwing_symphony', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No explicit auditor name found matching the hardcoded list. Skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'N. J. H. M. Cooray'}) ON CREATE SET p.id = 'n_j_h_m_cooray';

// Query 6
MERGE (p:Person {name: 'N. T. M. S. Cooray'}) ON CREATE SET p.id = 'n_t_m_s_cooray';

// Query 7
MERGE (p:Person {name: 'N. Wadugodapitiya'}) ON CREATE SET p.id = 'n_wadugodapitiya';

// Query 8
MERGE (p:Person {name: 'G. Rocchi'}) ON CREATE SET p.id = 'g_rocchi';

// Query 9
MERGE (p:Person {name: 'K. Reddy'}) ON CREATE SET p.id = 'k_reddy';

// Query 10
MERGE (p:Person {name: 'L. Porter'}) ON CREATE SET p.id = 'l_porter';

// Query 11
MERGE (p:Person {name: 'V. Kannangara'}) ON CREATE SET p.id = 'v_kannangara';

// Query 12
MERGE (p:Person {name: 'S. D. Amalean'}) ON CREATE SET p.id = 's_d_amalean';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'N. J. H. M. Cooray'}), (c:Company {name: 'Jetwing Symphony'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-06-03');

// Query 15
MATCH (p:Person {name: 'N. T. M. S. Cooray'}), (c:Company {name: 'Jetwing Symphony'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-06-03');

// Query 16
MATCH (p:Person {name: 'N. Wadugodapitiya'}), (c:Company {name: 'Jetwing Symphony'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-06-03');

// Query 17
MATCH (p:Person {name: 'G. Rocchi'}), (c:Company {name: 'Jetwing Symphony'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-06-03');

// Query 18
MATCH (p:Person {name: 'K. Reddy'}), (c:Company {name: 'Jetwing Symphony'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-06-03');

// Query 19
MATCH (p:Person {name: 'L. Porter'}), (c:Company {name: 'Jetwing Symphony'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-06-03');

// Query 20
MATCH (p:Person {name: 'V. Kannangara'}), (c:Company {name: 'Jetwing Symphony'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-06-03');

// Query 21
MATCH (p:Person {name: 'S. D. Amalean'}), (c:Company {name: 'Jetwing Symphony'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-06-03');

// Query 22
// Step 5: Metrics;

// Query 23
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 30
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 31
// Step 6: HAS_METRIC Relationships;

// Query 32
MATCH (c:Company {name: 'Jetwing Symphony'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3613708000, r.year = 2024;

// Query 33
MATCH (c:Company {name: 'Jetwing Symphony'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2115955000, r.year = 2023;

// Query 34
MATCH (c:Company {name: 'Jetwing Symphony'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9336000, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Jetwing Symphony'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -765194000, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Jetwing Symphony'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 92536000, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Jetwing Symphony'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -632195000, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Jetwing Symphony'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.17, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Jetwing Symphony'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.10, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Jetwing Symphony'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10592471000, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Jetwing Symphony'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10422321000, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Jetwing Symphony'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3412135000, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Jetwing Symphony'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3321931000, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Jetwing Symphony'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.7201, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Jetwing Symphony'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.7828, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Jetwing Symphony'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.28, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Jetwing Symphony'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.13, r.year = 2023;

// Query 48
// Step 7: Sectors;

// Query 49
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 50
// Step 8: IN_SECTOR Relationships;

// Query 51
MATCH (c:Company {name: 'Jetwing Symphony'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 52
// Step 9: Products;

// Query 53
MERGE (p:Product {name: 'Room Revenue'}) ON CREATE SET p.id = 'room_revenue';

// Query 54
MERGE (p:Product {name: 'Food and Beverage Revenue'}) ON CREATE SET p.id = 'food_and_beverage_revenue';

// Query 55
MERGE (p:Product {name: 'Other Hotel Related Revenue'}) ON CREATE SET p.id = 'other_hotel_related_revenue';

// Query 56
MERGE (p:Product {name: 'Jetwing Yala'}) ON CREATE SET p.id = 'jetwing_yala';

// Query 57
MERGE (p:Product {name: 'Jetwing Lake'}) ON CREATE SET p.id = 'jetwing_lake';

// Query 58
MERGE (p:Product {name: 'Jetwing Colombo Seven'}) ON CREATE SET p.id = 'jetwing_colombo_seven';

// Query 59
MERGE (p:Product {name: 'Jetwing Kaduruketha'}) ON CREATE SET p.id = 'jetwing_kaduruketha';

// Query 60
MERGE (p:Product {name: 'Jetwing Surf'}) ON CREATE SET p.id = 'jetwing_surf';

// Query 61
MERGE (p:Product {name: 'Jetwing Kandy Gallery'}) ON CREATE SET p.id = 'jetwing_kandy_gallery';

// Query 62
MERGE (p:Product {name: 'Jetwing Safari Camp'}) ON CREATE SET p.id = 'jetwing_safari_camp';

// Query 63
// Step 10: OFFERS Relationships;

// Query 64
MATCH (c:Company {name: 'Jetwing Symphony'}), (p:Product {name: 'Room Revenue'}) MERGE (c)-[:OFFERS]->(p);

// Query 65
MATCH (c:Company {name: 'Jetwing Symphony'}), (p:Product {name: 'Food and Beverage Revenue'}) MERGE (c)-[:OFFERS]->(p);

// Query 66
MATCH (c:Company {name: 'Jetwing Symphony'}), (p:Product {name: 'Other Hotel Related Revenue'}) MERGE (c)-[:OFFERS]->(p);

// Query 67
MATCH (c:Company {name: 'Jetwing Symphony'}), (p:Product {name: 'Jetwing Yala'}) MERGE (c)-[:OFFERS]->(p);

// Query 68
MATCH (c:Company {name: 'Jetwing Symphony'}), (p:Product {name: 'Jetwing Lake'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Jetwing Symphony'}), (p:Product {name: 'Jetwing Colombo Seven'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'Jetwing Symphony'}), (p:Product {name: 'Jetwing Kaduruketha'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Jetwing Symphony'}), (p:Product {name: 'Jetwing Surf'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Jetwing Symphony'}), (p:Product {name: 'Jetwing Kandy Gallery'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'Jetwing Symphony'}), (p:Product {name: 'Jetwing Safari Camp'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
// Step 11: Company-Company Relationships (OWNS, MANAGES);

// Query 75
// OWNS relationships skipped as explicit percentage ownership for subsidiaries is not provided.;

// Query 76
MERGE (m:Company {name: 'Jetwing Hotels'}) ON CREATE SET m.id = 'jetwing_hotels', m.region = 'Sri Lanka';

// Query 77
MATCH (manager:Company {name: 'Jetwing Hotels'}), (managed:Company {name: 'Jetwing Symphony'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'managing agents of the Hotels in the Group', r.as_of = date('2024-03-31');

// Total queries: 77
// Generated on: 2025-10-03T01:39:29.365407
