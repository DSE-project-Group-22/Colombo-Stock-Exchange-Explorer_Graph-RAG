// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Haycarb'}) ON CREATE SET c.id = 'haycarb', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No specific auditor from the hardcoded list was identified.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Mohan Pandithage'}) ON CREATE SET p.id = 'mohan_pandithage';

// Query 6
MERGE (p:Person {name: 'Rajitha Kariyawasan'}) ON CREATE SET p.id = 'rajitha_kariyawasan';

// Query 7
MERGE (p:Person {name: 'Brahman Balaratnarajah'}) ON CREATE SET p.id = 'brahman_balaratnarajah';

// Query 8
MERGE (p:Person {name: 'Jeevani Abeyratne'}) ON CREATE SET p.id = 'jeevani_abeyratne';

// Query 9
MERGE (p:Person {name: 'M.S.P. Udaya Kumara'}) ON CREATE SET p.id = 'm_s_p_udaya_kumara';

// Query 10
MERGE (p:Person {name: 'Ali Asgar Munaver Caderbhoy'}) ON CREATE SET p.id = 'ali_asgar_munaver_caderbhoy';

// Query 11
MERGE (p:Person {name: 'James Naylor'}) ON CREATE SET p.id = 'james_naylor';

// Query 12
MERGE (p:Person {name: 'Sarath Ganegoda'}) ON CREATE SET p.id = 'sarath_ganegoda';

// Query 13
MERGE (p:Person {name: 'Arjun Senaratna'}) ON CREATE SET p.id = 'arjun_senaratna';

// Query 14
MERGE (p:Person {name: 'Brindhiini Perera'}) ON CREATE SET p.id = 'brindhiini_perera';

// Query 15
MERGE (p:Person {name: 'Hisham Jamaldeen'}) ON CREATE SET p.id = 'hisham_jamaldeen';

// Query 16
MERGE (p:Person {name: 'Shamalie Gunawardana'}) ON CREATE SET p.id = 'shamalie_gunawardana';

// Query 17
MERGE (p:Person {name: 'Anomi Wanigasekera'}) ON CREATE SET p.id = 'anomi_wanigasekera';

// Query 18
MERGE (p:Person {name: 'Nanda Fernando'}) ON CREATE SET p.id = 'nanda_fernando';

// Query 19
MERGE (p:Person {name: 'Yohan Perera'}) ON CREATE SET p.id = 'yohan_perera';

// Query 20
// Step 4: HOLDS_POSITION Relationships;

// Query 21
MATCH (p:Person {name: 'Mohan Pandithage'}), (c:Company {name: 'Haycarb'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Rajitha Kariyawasan'}), (c:Company {name: 'Haycarb'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Brahman Balaratnarajah'}), (c:Company {name: 'Haycarb'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Managing Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Jeevani Abeyratne'}), (c:Company {name: 'Haycarb'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'M.S.P. Udaya Kumara'}), (c:Company {name: 'Haycarb'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'Ali Asgar Munaver Caderbhoy'}), (c:Company {name: 'Haycarb'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'James Naylor'}), (c:Company {name: 'Haycarb'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'Sarath Ganegoda'}), (c:Company {name: 'Haycarb'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'Arjun Senaratna'}), (c:Company {name: 'Haycarb'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'Brindhiini Perera'}), (c:Company {name: 'Haycarb'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'Hisham Jamaldeen'}), (c:Company {name: 'Haycarb'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'Shamalie Gunawardana'}), (c:Company {name: 'Haycarb'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'Anomi Wanigasekera'}), (c:Company {name: 'Haycarb'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-03');

// Query 34
MATCH (p:Person {name: 'Nanda Fernando'}), (c:Company {name: 'Haycarb'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-03');

// Query 35
MATCH (p:Person {name: 'Yohan Perera'}), (c:Company {name: 'Haycarb'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-04-01');

// Query 36
// Step 5: Metrics;

// Query 37
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 43
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 45
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 47
// Step 6: HAS_METRIC Relationships (Year 2024);

// Query 48
MATCH (c:Company {name: 'Haycarb'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 43179000000, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Haycarb'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13269000000, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Haycarb'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6521000000, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Haycarb'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6113000000, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Haycarb'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4306000000, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Haycarb'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.8, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Haycarb'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40214000000, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Haycarb'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.22, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Haycarb'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25697848000, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Haycarb'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.60, r.year = 2024;

// Query 58
// Step 6: HAS_METRIC Relationships (Year 2023);

// Query 59
MATCH (c:Company {name: 'Haycarb'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 60943000000, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Haycarb'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14879000000, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'Haycarb'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8274000000, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Haycarb'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8258000000, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Haycarb'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6505000000, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Haycarb'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25.8, r.year = 2023;

// Query 65
MATCH (c:Company {name: 'Haycarb'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40191000000, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Haycarb'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.06, r.year = 2023;

// Query 67
MATCH (c:Company {name: 'Haycarb'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25212566000, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'Haycarb'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.60, r.year = 2023;

// Query 69
// Step 7: Sectors;

// Query 70
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 71
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 72
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 73
// Step 8: IN_SECTOR Relationships;

// Query 74
MATCH (c:Company {name: 'Haycarb'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 75
MATCH (c:Company {name: 'Haycarb'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 76
MATCH (c:Company {name: 'Haycarb'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 77
// Step 9: Products;

// Query 78
MERGE (p:Product {name: 'Activated carbon'}) ON CREATE SET p.id = 'activated_carbon';

// Query 79
MERGE (p:Product {name: 'Environmental Engineering Solutions'}) ON CREATE SET p.id = 'environmental_engineering_solutions';

// Query 80
MERGE (p:Product {name: 'Water purification systems'}) ON CREATE SET p.id = 'water_purification_systems';

// Query 81
MERGE (p:Product {name: 'Air purification applications'}) ON CREATE SET p.id = 'air_purification_applications';

// Query 82
MERGE (p:Product {name: 'Energy storage carbons'}) ON CREATE SET p.id = 'energy_storage_carbons';

// Query 83
MERGE (p:Product {name: 'Hard carbon product range'}) ON CREATE SET p.id = 'hard_carbon_product_range';

// Query 84
// Step 10: OFFERS Relationships;

// Query 85
MATCH (c:Company {name: 'Haycarb'}), (p:Product {name: 'Activated carbon'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Haycarb'}), (p:Product {name: 'Environmental Engineering Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Haycarb'}), (p:Product {name: 'Water purification systems'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Haycarb'}), (p:Product {name: 'Air purification applications'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Haycarb'}), (p:Product {name: 'Energy storage carbons'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Haycarb'}), (p:Product {name: 'Hard carbon product range'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 90
// Generated on: 2025-10-02T23:56:40.171372
