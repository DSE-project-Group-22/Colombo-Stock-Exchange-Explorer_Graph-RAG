// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Digital Mobility Solutions Lanka'}) ON CREATE SET c.id = 'digital_mobility_solutions_lanka', c.founded_on = date('2015-01-23'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2025;

// Query 7
// Step 4: Person Nodes Creation;

// Query 8
MERGE (p:Person {name: 'Ajit Damon Gunewardene'}) ON CREATE SET p.id = 'ajit_damon_gunewardene';

// Query 9
MERGE (p:Person {name: 'Jiffry Zulfer Hassen'}) ON CREATE SET p.id = 'jiffry_zulfer_hassen';

// Query 10
MERGE (p:Person {name: 'Ruchi Hubert Gunewardene'}) ON CREATE SET p.id = 'ruchi_hubert_gunewardene';

// Query 11
MERGE (p:Person {name: 'Francisco Kankanamalage Conrad Prasad Niroshan Dias'}) ON CREATE SET p.id = 'francisco_kankanamalage_conrad_prasad_niroshan_dias';

// Query 12
MERGE (p:Person {name: 'Tasnim Khairul Salie'}) ON CREATE SET p.id = 'tasnim_khairul_salie';

// Query 13
MERGE (p:Person {name: 'Joseph Gabrial Travis Roche'}) ON CREATE SET p.id = 'joseph_gabrial_travis_roche';

// Query 14
MERGE (p:Person {name: 'Manoha Jude Sergius Rajakariar'}) ON CREATE SET p.id = 'manoha_jude_sergius_rajakariar';

// Query 15
MERGE (p:Person {name: 'Amal Kumarage'}) ON CREATE SET p.id = 'amal_kumarage';

// Query 16
MERGE (p:Person {name: 'Roger Keith Modder'}) ON CREATE SET p.id = 'roger_keith_modder';

// Query 17
// Step 5: HOLDS_POSITION Relationships;

// Query 18
MATCH (p:Person {name: 'Ajit Damon Gunewardene'}), (c:Company {name: 'Digital Mobility Solutions Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-03-31');

// Query 19
MATCH (p:Person {name: 'Jiffry Zulfer Hassen'}), (c:Company {name: 'Digital Mobility Solutions Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2025-03-31');

// Query 20
MATCH (p:Person {name: 'Ruchi Hubert Gunewardene'}), (c:Company {name: 'Digital Mobility Solutions Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 21
MATCH (p:Person {name: 'Francisco Kankanamalage Conrad Prasad Niroshan Dias'}), (c:Company {name: 'Digital Mobility Solutions Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 22
MATCH (p:Person {name: 'Tasnim Khairul Salie'}), (c:Company {name: 'Digital Mobility Solutions Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 23
MATCH (p:Person {name: 'Joseph Gabrial Travis Roche'}), (c:Company {name: 'Digital Mobility Solutions Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 24
MATCH (p:Person {name: 'Manoha Jude Sergius Rajakariar'}), (c:Company {name: 'Digital Mobility Solutions Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 25
MATCH (p:Person {name: 'Amal Kumarage'}), (c:Company {name: 'Digital Mobility Solutions Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 26
MATCH (p:Person {name: 'Roger Keith Modder'}), (c:Company {name: 'Digital Mobility Solutions Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 27
// Step 6: Person OWNS_SHARES Relationships;

// Query 28
MATCH (p:Person {name: 'Jiffry Zulfer Hassen'}), (c:Company {name: 'Digital Mobility Solutions Lanka'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 119300000, r.as_of = date('2025-03-31');

// Query 29
MATCH (p:Person {name: 'Ajit Damon Gunewardene'}), (c:Company {name: 'Digital Mobility Solutions Lanka'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 31465717, r.as_of = date('2025-03-31');

// Query 30
MATCH (p:Person {name: 'Ruchi Hubert Gunewardene'}), (c:Company {name: 'Digital Mobility Solutions Lanka'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 8528351, r.as_of = date('2025-03-31');

// Query 31
MATCH (p:Person {name: 'Tasnim Khairul Salie'}), (c:Company {name: 'Digital Mobility Solutions Lanka'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 4802700, r.as_of = date('2025-03-31');

// Query 32
MATCH (p:Person {name: 'Roger Keith Modder'}), (c:Company {name: 'Digital Mobility Solutions Lanka'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 2777778, r.as_of = date('2025-03-31');

// Query 33
MATCH (p:Person {name: 'Joseph Gabrial Travis Roche'}), (c:Company {name: 'Digital Mobility Solutions Lanka'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 300300, r.as_of = date('2025-03-31');

// Query 34
// Step 7: Metric Nodes Creation;

// Query 35
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 41
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 43
// Step 8: HAS_METRIC Relationships;

// Query 44
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5834554372, r.year = 2025;

// Query 45
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3918558734, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1603305138, r.year = 2025;

// Query 47
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 924980697, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1683000000, r.year = 2025;

// Query 49
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 993000000, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1170000000, r.year = 2025;

// Query 51
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 679000000, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4023994108, r.year = 2025;

// Query 53
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2820505260, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 54.12, r.year = 2025;

// Query 55
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 48.54, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.51, r.year = 2025;

// Query 57
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.05, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2586001051, r.year = 2025;

// Query 59
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1748553807, r.year = 2024;

// Query 60
// Step 9: Sector Nodes Creation;

// Query 61
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 62
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 63
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 64
// Step 10: IN_SECTOR Relationships;

// Query 65
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 66
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 67
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 68
// Step 11: Product Nodes Creation;

// Query 69
MERGE (p:Product {name: 'RIDES'}) ON CREATE SET p.id = 'rides';

// Query 70
MERGE (p:Product {name: 'TRUCK'}) ON CREATE SET p.id = 'truck';

// Query 71
MERGE (p:Product {name: 'FLASH'}) ON CREATE SET p.id = 'flash';

// Query 72
MERGE (p:Product {name: 'Food Delivery'}) ON CREATE SET p.id = 'food_delivery';

// Query 73
MERGE (p:Product {name: 'Marketplace Delivery'}) ON CREATE SET p.id = 'marketplace_delivery';

// Query 74
MERGE (p:Product {name: 'On-Demand Logistics'}) ON CREATE SET p.id = 'on_demand_logistics';

// Query 75
MERGE (p:Product {name: 'Last-Mile Solutions'}) ON CREATE SET p.id = 'last_mile_solutions';

// Query 76
// Step 12: OFFERS Relationships;

// Query 77
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (p:Product {name: 'RIDES'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (p:Product {name: 'TRUCK'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (p:Product {name: 'FLASH'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (p:Product {name: 'Food Delivery'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (p:Product {name: 'Marketplace Delivery'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (p:Product {name: 'On-Demand Logistics'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Digital Mobility Solutions Lanka'}), (p:Product {name: 'Last-Mile Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
// Step 13: Company-Company Relationships (OWNS);

// Query 85
MERGE (sub:Company {name: 'Digital Mobility Services Lanka'}) ON CREATE SET sub.id = 'digital_mobility_services_lanka';

// Query 86
MATCH (parent:Company {name: 'Digital Mobility Solutions Lanka'}), (child:Company {name: 'Digital Mobility Services Lanka'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2025-03-31');

// Total queries: 86
// Generated on: 2025-10-03T01:45:07.785809
