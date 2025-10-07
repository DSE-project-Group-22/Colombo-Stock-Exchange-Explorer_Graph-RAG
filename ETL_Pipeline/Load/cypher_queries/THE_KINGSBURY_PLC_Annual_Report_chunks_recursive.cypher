// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'The Kingsbury'}) ON CREATE SET c.id = 'the_kingsbury', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'The Kingsbury'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'R. J. Karunarajah'}) ON CREATE SET p.id = 'r_j_karunarajah';

// Query 8
MERGE (p:Person {name: 'S. C. Ganegoda'}) ON CREATE SET p.id = 's_c_ganegoda';

// Query 9
MERGE (p:Person {name: 'N. J. De S. Deva Aditya'}) ON CREATE SET p.id = 'n_j_de_s_deva_aditya';

// Query 10
MERGE (p:Person {name: 'R. N. Ponnambalam'}) ON CREATE SET p.id = 'r_n_ponnambalam';

// Query 11
MERGE (p:Person {name: 'I. Jamaldeen'}) ON CREATE SET p.id = 'i_jamaldeen';

// Query 12
MERGE (p:Person {name: 'T. A. B. Speldewinde'}) ON CREATE SET p.id = 't_a_b_speldewinde';

// Query 13
MERGE (p:Person {name: 'Brindhiini Perera'}) ON CREATE SET p.id = 'brindhiini_perera';

// Query 14
MERGE (p:Person {name: 'D. T. R. De Silva'}) ON CREATE SET p.id = 'd_t_r_de_silva';

// Query 15
MERGE (p:Person {name: 'J. P. Van Twest'}) ON CREATE SET p.id = 'j_p_van_twest';

// Query 16
MERGE (p:Person {name: 'A. M. Pandithage'}) ON CREATE SET p.id = 'a_m_pandithage';

// Query 17
MERGE (p:Person {name: 'S. J. Wijesinghe'}) ON CREATE SET p.id = 's_j_wijesinghe';

// Query 18
// Step 4: HOLDS_POSITION Relationships;

// Query 19
MATCH (p:Person {name: 'R. J. Karunarajah'}), (c:Company {name: 'The Kingsbury'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'S. C. Ganegoda'}), (c:Company {name: 'The Kingsbury'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'N. J. De S. Deva Aditya'}), (c:Company {name: 'The Kingsbury'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'R. N. Ponnambalam'}), (c:Company {name: 'The Kingsbury'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'I. Jamaldeen'}), (c:Company {name: 'The Kingsbury'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'T. A. B. Speldewinde'}), (c:Company {name: 'The Kingsbury'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Brindhiini Perera'}), (c:Company {name: 'The Kingsbury'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2022-10-19');

// Query 26
MATCH (p:Person {name: 'D. T. R. De Silva'}), (c:Company {name: 'The Kingsbury'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-03');

// Query 27
MATCH (p:Person {name: 'J. P. Van Twest'}), (c:Company {name: 'The Kingsbury'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-05');

// Query 28
MATCH (p:Person {name: 'A. M. Pandithage'}), (c:Company {name: 'The Kingsbury'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'S. J. Wijesinghe'}), (c:Company {name: 'The Kingsbury'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2023-07-26');

// Query 30
// Step 5: Metrics;

// Query 31
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 38
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 39
// Step 6: HAS_METRIC Relationships;

// Query 40
MATCH (c:Company {name: 'The Kingsbury'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5266787000, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'The Kingsbury'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3817614000, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'The Kingsbury'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 254653000, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'The Kingsbury'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -404852000, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'The Kingsbury'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 264085000, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'The Kingsbury'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -552473000, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'The Kingsbury'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5822351000, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'The Kingsbury'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4443253000, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'The Kingsbury'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1350780000, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'The Kingsbury'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 424018000, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'The Kingsbury'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.55, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'The Kingsbury'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.14, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'The Kingsbury'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.53, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'The Kingsbury'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.30, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'The Kingsbury'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.46, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'The Kingsbury'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.29, r.year = 2023;

// Query 56
// Step 7: Sectors;

// Query 57
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 58
// Step 8: IN_SECTOR Relationships;

// Query 59
MATCH (c:Company {name: 'The Kingsbury'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 60
// Step 9: Products;

// Query 61
MERGE (p:Product {name: 'Hotel Accommodation'}) ON CREATE SET p.id = 'hotel_accommodation';

// Query 62
MERGE (p:Product {name: 'Food and Beverage Services'}) ON CREATE SET p.id = 'food_and_beverage_services';

// Query 63
MERGE (p:Product {name: 'Event Management'}) ON CREATE SET p.id = 'event_management';

// Query 64
MERGE (p:Product {name: 'Cafe Services'}) ON CREATE SET p.id = 'cafe_services';

// Query 65
MERGE (p:Product {name: 'Online Booking'}) ON CREATE SET p.id = 'online_booking';

// Query 66
MERGE (p:Product {name: 'Online Food Ordering'}) ON CREATE SET p.id = 'online_food_ordering';

// Query 67
// Step 10: OFFERS Relationships;

// Query 68
MATCH (c:Company {name: 'The Kingsbury'}), (p:Product {name: 'Hotel Accommodation'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'The Kingsbury'}), (p:Product {name: 'Food and Beverage Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'The Kingsbury'}), (p:Product {name: 'Event Management'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'The Kingsbury'}), (p:Product {name: 'Cafe Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'The Kingsbury'}), (p:Product {name: 'Online Booking'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'The Kingsbury'}), (p:Product {name: 'Online Food Ordering'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
// Step 11: Company-Company Relationships;

// Query 75
MERGE (m:Company {name: 'Hayleys'}) ON CREATE SET m.id = 'hayleys', m.region = 'Sri Lanka';

// Query 76
MATCH (manager:Company {name: 'Hayleys'}), (managed:Company {name: 'The Kingsbury'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Provides management audit and system review services', r.as_of = date('2024-03-31');

// Total queries: 76
// Generated on: 2025-10-02T23:57:53.079304
