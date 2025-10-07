// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Prime Lands Residencies'}) ON CREATE SET c.id = 'prime_lands_residencies', c.founded_on = date('2005-05-01'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor - No specific auditor firm name found in the hardcoded list, skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Sandamini Perera'}) ON CREATE SET p.id = 'sandamini_perera';

// Query 6
MERGE (p:Person {name: 'Premalal Brahmanage'}) ON CREATE SET p.id = 'premalal_brahmanage';

// Query 7
MERGE (p:Person {name: 'Manjula Weerakkody'}) ON CREATE SET p.id = 'manjula_weerakkody';

// Query 8
MERGE (p:Person {name: 'Nalinda Heenatigala'}) ON CREATE SET p.id = 'nalinda_heenatigala';

// Query 9
MERGE (p:Person {name: 'Shehana Brahmanage'}) ON CREATE SET p.id = 'shehana_brahmanage';

// Query 10
MERGE (p:Person {name: 'Anura Pathirage'}) ON CREATE SET p.id = 'anura_pathirage';

// Query 11
MERGE (p:Person {name: 'Deepal Sooriyaarachchi'}) ON CREATE SET p.id = 'deepal_sooriyaarachchi';

// Query 12
MERGE (p:Person {name: 'Sanjaya Bandara'}) ON CREATE SET p.id = 'sanjaya_bandara';

// Query 13
MERGE (p:Person {name: 'Dhammika Kalapuge'}) ON CREATE SET p.id = 'dhammika_kalapuge';

// Query 14
MERGE (p:Person {name: 'Mahinda Perera'}) ON CREATE SET p.id = 'mahinda_perera';

// Query 15
MERGE (p:Person {name: 'Noel Joseph'}) ON CREATE SET p.id = 'noel_joseph';

// Query 16
MERGE (p:Person {name: 'Snr. Prof. Sampath Amaratunge'}) ON CREATE SET p.id = 'snr_prof_sampath_amaratunge';

// Query 17
// Step 4: HOLDS_POSITION Relationships;

// Query 18
MATCH (p:Person {name: 'Sandamini Perera'}), (c:Company {name: 'Prime Lands Residencies'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-03-31');

// Query 19
MATCH (p:Person {name: 'Sandamini Perera'}), (c:Company {name: 'Prime Lands Residencies'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 20
MATCH (p:Person {name: 'Premalal Brahmanage'}), (c:Company {name: 'Prime Lands Residencies'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 21
MATCH (p:Person {name: 'Manjula Weerakkody'}), (c:Company {name: 'Prime Lands Residencies'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2025-03-31');

// Query 22
MATCH (p:Person {name: 'Manjula Weerakkody'}), (c:Company {name: 'Prime Lands Residencies'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 23
MATCH (p:Person {name: 'Nalinda Heenatigala'}), (c:Company {name: 'Prime Lands Residencies'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 24
MATCH (p:Person {name: 'Shehana Brahmanage'}), (c:Company {name: 'Prime Lands Residencies'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 25
MATCH (p:Person {name: 'Anura Pathirage'}), (c:Company {name: 'Prime Lands Residencies'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 26
MATCH (p:Person {name: 'Deepal Sooriyaarachchi'}), (c:Company {name: 'Prime Lands Residencies'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 27
MATCH (p:Person {name: 'Sanjaya Bandara'}), (c:Company {name: 'Prime Lands Residencies'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 28
MATCH (p:Person {name: 'Dhammika Kalapuge'}), (c:Company {name: 'Prime Lands Residencies'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 29
MATCH (p:Person {name: 'Mahinda Perera'}), (c:Company {name: 'Prime Lands Residencies'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 30
MATCH (p:Person {name: 'Noel Joseph'}), (c:Company {name: 'Prime Lands Residencies'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 31
MATCH (p:Person {name: 'Snr. Prof. Sampath Amaratunge'}), (c:Company {name: 'Prime Lands Residencies'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-27');

// Query 32
// Step 5: Metrics;

// Query 33
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 40
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 41
// Step 6: HAS_METRIC Relationships;

// Query 42
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8259800877, r.year = 2025;

// Query 43
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8090379095, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19798684442, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9510383251, r.year = 2022;

// Query 46
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7732398134, r.year = 2021;

// Query 47
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1803407765, r.year = 2025;

// Query 48
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1590593285, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3979316420, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1847921605, r.year = 2022;

// Query 51
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1277417267, r.year = 2021;

// Query 52
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1231078752, r.year = 2025;

// Query 53
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1129001701, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3351231763, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1682373241, r.year = 2022;

// Query 56
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 989255576, r.year = 2021;

// Query 57
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1591790728, r.year = 2025;

// Query 58
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1735246109, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4759365480, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1936561052, r.year = 2022;

// Query 61
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1585039550, r.year = 2021;

// Query 62
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22059807803, r.as_of = date('2025-03-31');

// Query 63
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15760134828, r.as_of = date('2024-03-31');

// Query 64
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9941472687, r.as_of = date('2025-03-31');

// Query 65
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9574741476, r.as_of = date('2024-03-31');

// Query 66
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.0, r.year = 2025;

// Query 67
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.0, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.0, r.year = 2025;

// Query 69
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.0, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36.0, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25.0, r.year = 2022;

// Query 72
MATCH (c:Company {name: 'Prime Lands Residencies'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29.0, r.year = 2021;

// Query 73
// Step 7: Sectors;

// Query 74
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 75
// Step 8: IN_SECTOR Relationships;

// Query 76
MATCH (c:Company {name: 'Prime Lands Residencies'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 77
// Step 9: Products;

// Query 78
MERGE (p:Product {name: 'Apartment Sale'}) ON CREATE SET p.id = 'apartment_sale';

// Query 79
MERGE (p:Product {name: 'Land Sale'}) ON CREATE SET p.id = 'land_sale';

// Query 80
// Step 10: OFFERS Relationships;

// Query 81
MATCH (c:Company {name: 'Prime Lands Residencies'}), (p:Product {name: 'Apartment Sale'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Prime Lands Residencies'}), (p:Product {name: 'Land Sale'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
// Step 11: Company-Company Relationships (OWNS);

// Query 84
MERGE (parent:Company {name: 'Prime Lands'}) ON CREATE SET parent.id = 'prime_lands';

// Query 85
MATCH (parent:Company {name: 'Prime Lands'}), (child:Company {name: 'Prime Lands Residencies'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 80.0, r.as_of = date('2025-03-31');

// Total queries: 85
// Generated on: 2025-10-02T22:09:04.711146
