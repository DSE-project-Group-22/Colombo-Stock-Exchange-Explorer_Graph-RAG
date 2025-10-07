// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Hayleys Leisure'}) ON CREATE SET c.id = 'hayleys_leisure', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'Culture Club Resorts'}) ON CREATE SET c.id = 'culture_club_resorts';

// Query 4
MERGE (c:Company {name: 'Kandyan Resorts'}) ON CREATE SET c.id = 'kandyan_resorts';

// Query 5
MERGE (c:Company {name: 'Sun Tan Beach Resorts'}) ON CREATE SET c.id = 'sun_tan_beach_resorts';

// Query 6
MERGE (c:Company {name: 'Hayleys Hotel Management Services'}) ON CREATE SET c.id = 'hayleys_hotel_management_services';

// Query 7
MERGE (c:Company {name: 'Hayleys Holidays'}) ON CREATE SET c.id = 'hayleys_holidays';

// Query 8
MERGE (c:Company {name: 'CDC Conventions'}) ON CREATE SET c.id = 'cdc_conventions';

// Query 9
MERGE (c:Company {name: 'Hayleys Group Services'}) ON CREATE SET c.id = 'hayleys_group_services';

// Query 10
MERGE (c:Company {name: 'Hayleys'}) ON CREATE SET c.id = 'hayleys';

// Query 11
MERGE (c:Company {name: 'Amaya Resorts & Spas'}) ON CREATE SET c.id = 'amaya_resorts_and_spas';

// Query 12
MERGE (c:Company {name: 'Amaya Beach'}) ON CREATE SET c.id = 'amaya_beach';

// Query 13
MERGE (c:Company {name: 'Amaya Lake'}) ON CREATE SET c.id = 'amaya_lake';

// Query 14
MERGE (c:Company {name: 'Amaya Hills'}) ON CREATE SET c.id = 'amaya_hills';

// Query 15
MERGE (c:Company {name: 'Amuna'}) ON CREATE SET c.id = 'amuna';

// Query 16
MERGE (c:Company {name: 'Sri Lanka Tourism Development Authority'}) ON CREATE SET c.id = 'sri_lanka_tourism_development_authority';

// Query 17
MERGE (c:Company {name: 'UN Tourism Confidence Index'}) ON CREATE SET c.id = 'un_tourism_confidence_index';

// Query 18
MERGE (c:Company {name: 'United Nations World Tourism Organisation'}) ON CREATE SET c.id = 'united_nations_world_tourism_organisation';

// Query 19
MERGE (c:Company {name: 'HSBC'}) ON CREATE SET c.id = 'hsbc';

// Query 20
// Step 2: Auditor;

// Query 21
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 22
// Step 3: AUDITED_BY Relationship;

// Query 23
MATCH (c:Company {name: 'Hayleys Leisure'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 24
// Step 4: Person Nodes;

// Query 25
MERGE (p:Person {name: 'A. M. Pandithage'}) ON CREATE SET p.id = 'a_m_pandithage';

// Query 26
MERGE (p:Person {name: 'R. J. Karunarajah'}) ON CREATE SET p.id = 'r_j_karunarajah';

// Query 27
MERGE (p:Person {name: 'S. C. Ganegoda'}) ON CREATE SET p.id = 's_c_ganegoda';

// Query 28
MERGE (p:Person {name: 'R. N. Ponnambalam'}) ON CREATE SET p.id = 'r_n_ponnambalam';

// Query 29
MERGE (p:Person {name: 'W. D. De Costa'}) ON CREATE SET p.id = 'w_d_de_costa';

// Query 30
MERGE (p:Person {name: 'K. A. D. B. Perera'}) ON CREATE SET p.id = 'k_a_d_b_perera';

// Query 31
MERGE (p:Person {name: 'D. T. R. De Silva'}) ON CREATE SET p.id = 'd_t_r_de_silva';

// Query 32
MERGE (p:Person {name: 'A. I. Wanigasekera'}) ON CREATE SET p.id = 'a_i_wanigasekera';

// Query 33
MERGE (p:Person {name: 'A. A. K. Amarasinghe'}) ON CREATE SET p.id = 'a_a_k_amarasinghe';

// Query 34
MERGE (p:Person {name: 'M. Y. A. Perera'}) ON CREATE SET p.id = 'm_y_a_perera';

// Query 35
MERGE (p:Person {name: 'H. C. Cabral'}) ON CREATE SET p.id = 'h_c_cabral';

// Query 36
MERGE (p:Person {name: 'K. D. G. Gunaratne'}) ON CREATE SET p.id = 'k_d_g_gunaratne';

// Query 37
MERGE (p:Person {name: 'B. M. Amarasekera'}) ON CREATE SET p.id = 'b_m_amarasekera';

// Query 38
MERGE (p:Person {name: 'S. H. Amarasekera'}) ON CREATE SET p.id = 's_h_amarasekera';

// Query 39
// Step 5: HOLDS_POSITION Relationships;

// Query 40
MATCH (p:Person {name: 'A. M. Pandithage'}), (c:Company {name: 'Hayleys Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 41
MATCH (p:Person {name: 'R. J. Karunarajah'}), (c:Company {name: 'Hayleys Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 42
MATCH (p:Person {name: 'S. C. Ganegoda'}), (c:Company {name: 'Hayleys Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 43
MATCH (p:Person {name: 'R. N. Ponnambalam'}), (c:Company {name: 'Hayleys Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 44
MATCH (p:Person {name: 'W. D. De Costa'}), (c:Company {name: 'Hayleys Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 45
MATCH (p:Person {name: 'K. A. D. B. Perera'}), (c:Company {name: 'Hayleys Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 46
MATCH (p:Person {name: 'D. T. R. De Silva'}), (c:Company {name: 'Hayleys Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 47
MATCH (p:Person {name: 'A. I. Wanigasekera'}), (c:Company {name: 'Hayleys Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-03');

// Query 48
MATCH (p:Person {name: 'A. A. K. Amarasinghe'}), (c:Company {name: 'Hayleys Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-03');

// Query 49
MATCH (p:Person {name: 'M. Y. A. Perera'}), (c:Company {name: 'Hayleys Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 50
MATCH (p:Person {name: 'H. C. Cabral'}), (c:Company {name: 'Hayleys Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 51
MATCH (p:Person {name: 'K. D. G. Gunaratne'}), (c:Company {name: 'Hayleys Leisure'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-11-01');

// Query 52
MATCH (p:Person {name: 'S. H. Amarasekera'}), (c:Company {name: 'Hayleys Leisure'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 27830, r.as_of = date('2024-03-31');

// Query 53
MATCH (p:Person {name: 'B. M. Amarasekera'}), (c:Company {name: 'Hayleys Leisure'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 19082, r.as_of = date('2024-03-31');

// Query 54
// Step 6: Metric Nodes;

// Query 55
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 57
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 58
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 59
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 60
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 61
// Step 7: HAS_METRIC Relationships;

// Query 62
MATCH (c:Company {name: 'Hayleys Leisure'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2877808000, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Hayleys Leisure'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -154507000, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'Hayleys Leisure'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -145986000, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Hayleys Leisure'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5815109000, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'Hayleys Leisure'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1174674015, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Hayleys Leisure'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1.04, r.year = 2024;

// Query 68
// Step 8: Sector Nodes;

// Query 69
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 70
// Step 9: IN_SECTOR Relationships;

// Query 71
MATCH (c:Company {name: 'Hayleys Leisure'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 72
// Step 10: Product Nodes;

// Query 73
MERGE (p:Product {name: 'Hotel Operations'}) ON CREATE SET p.id = 'hotel_operations';

// Query 74
MERGE (p:Product {name: 'Hotel Management Services'}) ON CREATE SET p.id = 'hotel_management_services';

// Query 75
MERGE (p:Product {name: 'Marketing Services'}) ON CREATE SET p.id = 'marketing_services';

// Query 76
// Step 11: OFFERS Relationships;

// Query 77
MATCH (c:Company {name: 'Hayleys Leisure'}), (p:Product {name: 'Hotel Operations'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'Hayleys Leisure'}), (p:Product {name: 'Hotel Management Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'Hayleys Leisure'}), (p:Product {name: 'Marketing Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
// Step 12: Company-Company Relationships (MANAGES);

// Query 81
MATCH (manager:Company {name: 'Hayleys Leisure'}), (managed:Company {name: 'Culture Club Resorts'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'provision of management and marketing services', r.as_of = date('2024-03-31');

// Query 82
MATCH (manager:Company {name: 'Hayleys Leisure'}), (managed:Company {name: 'Kandyan Resorts'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'provision of management and marketing services', r.as_of = date('2024-03-31');

// Query 83
MATCH (manager:Company {name: 'Hayleys Leisure'}), (managed:Company {name: 'Sun Tan Beach Resorts'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'provision of management and marketing services', r.as_of = date('2024-03-31');

// Query 84
MATCH (manager:Company {name: 'Hayleys Leisure'}), (managed:Company {name: 'Hayleys Hotel Management Services'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'provision of management and marketing services', r.as_of = date('2024-03-31');

// Query 85
MATCH (manager:Company {name: 'Hayleys Leisure'}), (managed:Company {name: 'Hayleys Holidays'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'provision of management and marketing services', r.as_of = date('2024-03-31');

// Query 86
MATCH (manager:Company {name: 'Hayleys Leisure'}), (managed:Company {name: 'CDC Conventions'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'provision of management and marketing services', r.as_of = date('2024-03-31');

// Total queries: 86
// Generated on: 2025-10-02T22:38:17.844629
