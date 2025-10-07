// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Tangerine Beach Hotels'}) ON CREATE SET c.id = 'tangerine_beach_hotels', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No specific auditor firm name found in the provided text that matches the hardcoded list. Skipping auditor node and AUDITED_BY relationship.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'A. M. Ondaatjie'}) ON CREATE SET p.id = 'a_m_ondaatjie';

// Query 6
MERGE (p:Person {name: 'C. A. Ondaatjie'}) ON CREATE SET p.id = 'c_a_ondaatjie';

// Query 7
MERGE (p:Person {name: 'G. G. Ondaatjie'}) ON CREATE SET p.id = 'g_g_ondaatjie';

// Query 8
MERGE (p:Person {name: 'T. J. Ondaatjie'}) ON CREATE SET p.id = 't_j_ondaatjie';

// Query 9
MERGE (p:Person {name: 'N. H. V. Perera'}) ON CREATE SET p.id = 'n_h_v_perera';

// Query 10
MERGE (p:Person {name: 'P. S. R. Casie Chitty'}) ON CREATE SET p.id = 'p_s_r_casie_chitty';

// Query 11
MERGE (p:Person {name: 'L. H. Jayasinghe'}) ON CREATE SET p.id = 'l_h_jayasinghe';

// Query 12
// Step 4: HOLDS_POSITION Relationships (as_of date: 2024-03-31);

// Query 13
MATCH (p:Person {name: 'A. M. Ondaatjie'}), (c:Company {name: 'Tangerine Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 14
MATCH (p:Person {name: 'C. A. Ondaatjie'}), (c:Company {name: 'Tangerine Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'G. G. Ondaatjie'}), (c:Company {name: 'Tangerine Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'T. J. Ondaatjie'}), (c:Company {name: 'Tangerine Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'N. H. V. Perera'}), (c:Company {name: 'Tangerine Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'P. S. R. Casie Chitty'}), (c:Company {name: 'Tangerine Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'L. H. Jayasinghe'}), (c:Company {name: 'Tangerine Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 20
// Step 5: Metrics;

// Query 21
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 28
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 30
// Step 6: HAS_METRIC Relationships (Year: 2024);

// Query 31
MATCH (c:Company {name: 'Tangerine Beach Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 964685000.0, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'Tangerine Beach Hotels'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -19768000.0, r.year = 2024;

// Query 33
MATCH (c:Company {name: 'Tangerine Beach Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 73967000.0, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'Tangerine Beach Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 77419000.0, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Tangerine Beach Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2980991943.0, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Tangerine Beach Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3907907489.0, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Tangerine Beach Hotels'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.60, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Tangerine Beach Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.87, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Tangerine Beach Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3.16, r.year = 2024;

// Query 40
// Step 7: Sectors;

// Query 41
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 42
// Step 8: IN_SECTOR Relationships;

// Query 43
MATCH (c:Company {name: 'Tangerine Beach Hotels'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 44
// Step 9: Products;

// Query 45
MERGE (p:Product {name: 'Food'}) ON CREATE SET p.id = 'food';

// Query 46
MERGE (p:Product {name: 'Beverage'}) ON CREATE SET p.id = 'beverage';

// Query 47
MERGE (p:Product {name: 'Lodging'}) ON CREATE SET p.id = 'lodging';

// Query 48
MERGE (p:Product {name: 'Hospitality Services'}) ON CREATE SET p.id = 'hospitality_services';

// Query 49
// Step 10: OFFERS Relationships;

// Query 50
MATCH (c:Company {name: 'Tangerine Beach Hotels'}), (p:Product {name: 'Food'}) MERGE (c)-[:OFFERS]->(p);

// Query 51
MATCH (c:Company {name: 'Tangerine Beach Hotels'}), (p:Product {name: 'Beverage'}) MERGE (c)-[:OFFERS]->(p);

// Query 52
MATCH (c:Company {name: 'Tangerine Beach Hotels'}), (p:Product {name: 'Lodging'}) MERGE (c)-[:OFFERS]->(p);

// Query 53
MATCH (c:Company {name: 'Tangerine Beach Hotels'}), (p:Product {name: 'Hospitality Services'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 53
// Generated on: 2025-10-02T21:58:27.685289
