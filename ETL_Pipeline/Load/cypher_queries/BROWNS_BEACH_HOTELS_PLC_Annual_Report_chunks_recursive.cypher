// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Browns Beach Hotels'}) ON CREATE SET c.id = 'browns_beach_hotels', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No specific auditor firm name found, skipping auditor node and relationship.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Deshamanya D.H.S. Jayawardena'}) ON CREATE SET p.id = 'deshamanya_d_h_s_jayawardena';

// Query 6
MERGE (p:Person {name: 'Ms. D.S.T. Jayawardena'}) ON CREATE SET p.id = 'ms_d_s_t_jayawardena';

// Query 7
MERGE (p:Person {name: 'Dr. M.P. Dissanayake'}) ON CREATE SET p.id = 'dr_m_p_dissanayake';

// Query 8
MERGE (p:Person {name: 'Mr. C.R. Stanislaus'}) ON CREATE SET p.id = 'mr_c_r_stanislaus';

// Query 9
MERGE (p:Person {name: 'Mr. R.N. Asirwatham'}) ON CREATE SET p.id = 'mr_r_n_asirwatham';

// Query 10
MERGE (p:Person {name: 'Mr. N.J. De Silva Deva Aditya'}) ON CREATE SET p.id = 'mr_n_j_de_silva_deva_aditya';

// Query 11
MERGE (p:Person {name: 'Mr. M.A.N.S. Perera'}) ON CREATE SET p.id = 'mr_m_a_n_s_perera';

// Query 12
MERGE (p:Person {name: 'C.M.S. Jayawickrama'}) ON CREATE SET p.id = 'c_m_s_jayawickrama';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'Deshamanya D.H.S. Jayawardena'}), (c:Company {name: 'Browns Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'Ms. D.S.T. Jayawardena'}), (c:Company {name: 'Browns Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'Dr. M.P. Dissanayake'}), (c:Company {name: 'Browns Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Mr. C.R. Stanislaus'}), (c:Company {name: 'Browns Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'Mr. R.N. Asirwatham'}), (c:Company {name: 'Browns Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'Mr. N.J. De Silva Deva Aditya'}), (c:Company {name: 'Browns Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'Mr. M.A.N.S. Perera'}), (c:Company {name: 'Browns Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'C.M.S. Jayawickrama'}), (c:Company {name: 'Browns Beach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

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
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 28
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 31
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 32
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 33
// Step 6: HAS_METRIC Relationships;

// Query 34
MATCH (c:Company {name: 'Browns Beach Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1295000000.0, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Browns Beach Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 660000000.0, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Browns Beach Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -385805000.0, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Browns Beach Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -646721000.0, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Browns Beach Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -466967000.0, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Browns Beach Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1017004000.0, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Browns Beach Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3.60, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Browns Beach Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -7.85, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Browns Beach Hotels'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -71.14, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Browns Beach Hotels'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -538.96, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Browns Beach Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5302077000.0, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Browns Beach Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5283868000.0, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Browns Beach Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -656444000.0, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Browns Beach Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -188697000.0, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Browns Beach Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.63, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Browns Beach Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.42, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Browns Beach Hotels'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 115.75, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Browns Beach Hotels'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 104.59, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Browns Beach Hotels'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48300000.0, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Browns Beach Hotels'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -92100000.0, r.year = 2023;

// Query 54
// Step 7: Sectors;

// Query 55
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 56
// Step 8: IN_SECTOR Relationships;

// Query 57
MATCH (c:Company {name: 'Browns Beach Hotels'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 58
// Step 9: Product Nodes;

// Query 59
MERGE (p:Product {name: 'Apartment'}) ON CREATE SET p.id = 'apartment';

// Query 60
MERGE (p:Product {name: 'Restaurant'}) ON CREATE SET p.id = 'restaurant';

// Query 61
MERGE (p:Product {name: 'Bar'}) ON CREATE SET p.id = 'bar';

// Query 62
MERGE (p:Product {name: 'Tobacco income'}) ON CREATE SET p.id = 'tobacco_income';

// Query 63
MERGE (p:Product {name: 'Banquets'}) ON CREATE SET p.id = 'banquets';

// Query 64
MERGE (p:Product {name: 'Laundry and others'}) ON CREATE SET p.id = 'laundry_and_others';

// Query 65
// Step 10: OFFERS Relationships;

// Query 66
MATCH (c:Company {name: 'Browns Beach Hotels'}), (p:Product {name: 'Apartment'}) MERGE (c)-[:OFFERS]->(p);

// Query 67
MATCH (c:Company {name: 'Browns Beach Hotels'}), (p:Product {name: 'Restaurant'}) MERGE (c)-[:OFFERS]->(p);

// Query 68
MATCH (c:Company {name: 'Browns Beach Hotels'}), (p:Product {name: 'Bar'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Browns Beach Hotels'}), (p:Product {name: 'Tobacco income'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'Browns Beach Hotels'}), (p:Product {name: 'Banquets'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Browns Beach Hotels'}), (p:Product {name: 'Laundry and others'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
// Step 11: Company-Company Relationships (MANAGES);

// Query 73
MERGE (m:Company {name: 'Aitken Spence'}) ON CREATE SET m.id = 'aitken_spence';

// Query 74
MATCH (manager:Company {name: 'Aitken Spence'}), (managed:Company {name: 'Browns Beach Hotels'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Management Agent', r.as_of = date('2024-03-31');

// Total queries: 74
// Generated on: 2025-10-03T03:21:17.632730
