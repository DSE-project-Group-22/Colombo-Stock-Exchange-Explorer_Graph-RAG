// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Melstacorp'}) ON CREATE SET c.id = 'melstacorp', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor (Skipped as 'Amarasekara & Company' is not in the hardcoded list and no specific mapping is provided);

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'C. R. Jansz'}) ON CREATE SET p.id = 'c_r_jansz';

// Query 6
MERGE (p:Person {name: 'M. A. N. S. Perera'}) ON CREATE SET p.id = 'm_a_n_s_perera';

// Query 7
MERGE (p:Person {name: 'L. U. D. Fernando'}) ON CREATE SET p.id = 'l_u_d_fernando';

// Query 8
MERGE (p:Person {name: 'D. H. S. Jayawardena'}) ON CREATE SET p.id = 'd_h_s_jayawardena';

// Query 9
MERGE (p:Person {name: 'K. J. Kahanda'}) ON CREATE SET p.id = 'k_j_kahanda';

// Query 10
MERGE (p:Person {name: 'D. Hasitha S. Jayawardena'}) ON CREATE SET p.id = 'd_hasitha_s_jayawardena';

// Query 11
MERGE (p:Person {name: 'D. S. T. Jayawardena'}) ON CREATE SET p.id = 'd_s_t_jayawardena';

// Query 12
MERGE (p:Person {name: 'N. de S. Deva Aditya'}) ON CREATE SET p.id = 'n_de_s_deva_aditya';

// Query 13
MERGE (p:Person {name: 'A. N. Balasuriya'}) ON CREATE SET p.id = 'a_n_balasuriya';

// Query 14
MERGE (p:Person {name: 'R. Mihular'}) ON CREATE SET p.id = 'r_mihular';

// Query 15
MERGE (p:Person {name: 'Prasanna Pinto'}) ON CREATE SET p.id = 'prasanna_pinto';

// Query 16
MERGE (p:Person {name: 'Nuwanthi C. Goonawardena'}) ON CREATE SET p.id = 'nuwanthi_c_goonawardena';

// Query 17
MERGE (p:Person {name: 'Dampath Fernando'}) ON CREATE SET p.id = 'dampath_fernando';

// Query 18
// Step 4: HOLDS_POSITION Relationships;

// Query 19
MATCH (p:Person {name: 'C. R. Jansz'}), (c:Company {name: 'Melstacorp'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'M. A. N. S. Perera'}), (c:Company {name: 'Melstacorp'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'L. U. D. Fernando'}), (c:Company {name: 'Melstacorp'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'D. H. S. Jayawardena'}), (c:Company {name: 'Melstacorp'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'K. J. Kahanda'}), (c:Company {name: 'Melstacorp'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'D. Hasitha S. Jayawardena'}), (c:Company {name: 'Melstacorp'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'D. S. T. Jayawardena'}), (c:Company {name: 'Melstacorp'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'N. de S. Deva Aditya'}), (c:Company {name: 'Melstacorp'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'A. N. Balasuriya'}), (c:Company {name: 'Melstacorp'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'R. Mihular'}), (c:Company {name: 'Melstacorp'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'Prasanna Pinto'}), (c:Company {name: 'Melstacorp'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'Nuwanthi C. Goonawardena'}), (c:Company {name: 'Melstacorp'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'Dampath Fernando'}), (c:Company {name: 'Melstacorp'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-03-31');

// Query 32
// Step 5: Metrics;

// Query 33
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 40
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 41
// Step 6: HAS_METRIC Relationships;

// Query 42
MATCH (c:Company {name: 'Melstacorp'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 235686000000, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Melstacorp'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 247261000000, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Melstacorp'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38812000000, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Melstacorp'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47885000000, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Melstacorp'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29487000000, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Melstacorp'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42804000000, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Melstacorp'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12718000000, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Melstacorp'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22968000000, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Melstacorp'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 360189000000, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Melstacorp'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 335436000000, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Melstacorp'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 175314000000, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Melstacorp'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 150792000000, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Melstacorp'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.25, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Melstacorp'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.23, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Melstacorp'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.07, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Melstacorp'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.62, r.year = 2023;

// Query 58
// Step 7: Sectors;

// Query 59
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 60
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 61
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 62
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 63
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 64
MERGE (s:Sector {name: 'Telecommunication Services'}) ON CREATE SET s.id = 'telecommunication_services';

// Query 65
MERGE (s:Sector {name: 'Consumer Durables and Apparel'}) ON CREATE SET s.id = 'consumer_durables_and_apparel';

// Query 66
// Step 8: IN_SECTOR Relationships;

// Query 67
MATCH (c:Company {name: 'Melstacorp'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 68
MATCH (c:Company {name: 'Melstacorp'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 69
MATCH (c:Company {name: 'Melstacorp'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 70
MATCH (c:Company {name: 'Melstacorp'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 71
MATCH (c:Company {name: 'Melstacorp'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 72
MATCH (c:Company {name: 'Melstacorp'}), (s:Sector {name: 'Telecommunication Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 73
MATCH (c:Company {name: 'Melstacorp'}), (s:Sector {name: 'Consumer Durables and Apparel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
// Step 9: Product nodes creation;

// Query 75
MERGE (p:Product {name: 'Berries'}) ON CREATE SET p.id = 'berries';

// Query 76
MERGE (p:Product {name: 'Athleisure Wear'}) ON CREATE SET p.id = 'athleisure_wear';

// Query 77
MERGE (p:Product {name: 'Active Wear'}) ON CREATE SET p.id = 'active_wear';

// Query 78
MERGE (p:Product {name: 'Printing Services'}) ON CREATE SET p.id = 'printing_services';

// Query 79
MERGE (p:Product {name: 'Packaging Services'}) ON CREATE SET p.id = 'packaging_services';

// Query 80
MERGE (p:Product {name: 'Maritime Education'}) ON CREATE SET p.id = 'maritime_education';

// Query 81
MERGE (p:Product {name: 'Insurance Services'}) ON CREATE SET p.id = 'insurance_services';

// Query 82
// Step 10: OFFERS Relationships;

// Query 83
MATCH (c:Company {name: 'Melstacorp'}), (p:Product {name: 'Berries'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Melstacorp'}), (p:Product {name: 'Athleisure Wear'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Melstacorp'}), (p:Product {name: 'Active Wear'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Melstacorp'}), (p:Product {name: 'Printing Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Melstacorp'}), (p:Product {name: 'Packaging Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Melstacorp'}), (p:Product {name: 'Maritime Education'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Melstacorp'}), (p:Product {name: 'Insurance Services'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 89
// Generated on: 2025-10-02T23:24:48.149340
