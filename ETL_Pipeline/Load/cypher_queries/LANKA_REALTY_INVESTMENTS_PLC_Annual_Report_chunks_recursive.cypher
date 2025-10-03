// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Lanka Realty Investments'}) ON CREATE SET c.id = 'lanka_realty_investments', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No auditor firm explicitly named in the provided chunks. Skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Mohan Ratnayake'}) ON CREATE SET p.id = 'mohan_ratnayake';

// Query 6
MERGE (p:Person {name: 'Mohamed Hisham Jamaldeen'}) ON CREATE SET p.id = 'mohamed_hisham_jamaldeen';

// Query 7
MERGE (p:Person {name: 'Archie James Buckland Warman'}) ON CREATE SET p.id = 'archie_james_buckland_warman';

// Query 8
MERGE (p:Person {name: 'Piers Morgan'}) ON CREATE SET p.id = 'piers_morgan';

// Query 9
MERGE (p:Person {name: 'Sarravanan Neelakandan'}) ON CREATE SET p.id = 'sarravanan_neelakandan';

// Query 10
MERGE (p:Person {name: 'Mohamed Firdouse Farook'}) ON CREATE SET p.id = 'mohamed_firdouse_farook';

// Query 11
// Step 4: HOLDS_POSITION Relationships;

// Query 12
MATCH (p:Person {name: 'Mohan Ratnayake'}), (c:Company {name: 'Lanka Realty Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 13
MATCH (p:Person {name: 'Mohan Ratnayake'}), (c:Company {name: 'Lanka Realty Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 14
MATCH (p:Person {name: 'Mohamed Hisham Jamaldeen'}), (c:Company {name: 'Lanka Realty Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'Archie James Buckland Warman'}), (c:Company {name: 'Lanka Realty Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'Piers Morgan'}), (c:Company {name: 'Lanka Realty Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Sarravanan Neelakandan'}), (c:Company {name: 'Lanka Realty Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'Mohamed Firdouse Farook'}), (c:Company {name: 'Lanka Realty Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
// Step 5: Metrics;

// Query 20
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 26
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 28
// Step 6: HAS_METRIC Relationships;

// Query 29
MATCH (c:Company {name: 'Lanka Realty Investments'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1124465097, r.year = 2024;

// Query 30
MATCH (c:Company {name: 'Lanka Realty Investments'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1796015840, r.year = 2023;

// Query 31
MATCH (c:Company {name: 'Lanka Realty Investments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17789636, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'Lanka Realty Investments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -888614873, r.year = 2023;

// Query 33
MATCH (c:Company {name: 'Lanka Realty Investments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 131970034, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'Lanka Realty Investments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4723339, r.year = 2023;

// Query 35
MATCH (c:Company {name: 'Lanka Realty Investments'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -24691485, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Lanka Realty Investments'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -365639194, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'Lanka Realty Investments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.22, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Lanka Realty Investments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4.98, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Lanka Realty Investments'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.2, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Lanka Realty Investments'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -9.0, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Lanka Realty Investments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18537289645, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Lanka Realty Investments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18217308440, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Lanka Realty Investments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9810677607, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Lanka Realty Investments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9822106244, r.year = 2023;

// Query 45
// Step 7: Sectors;

// Query 46
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 47
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 48
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 49
// Step 8: IN_SECTOR Relationships;

// Query 50
MATCH (c:Company {name: 'Lanka Realty Investments'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 51
MATCH (c:Company {name: 'Lanka Realty Investments'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 52
// Step 9: Product nodes creation;

// Query 53
MERGE (p:Product {name: 'HQ Colombo'}) ON CREATE SET p.id = 'hq_colombo';

// Query 54
MERGE (p:Product {name: 'Unity Plaza'}) ON CREATE SET p.id = 'unity_plaza';

// Query 55
MERGE (p:Product {name: 'W15 brand'}) ON CREATE SET p.id = 'w15_brand';

// Query 56
MERGE (p:Product {name: 'W15 Yala'}) ON CREATE SET p.id = 'w15_yala';

// Query 57
MERGE (p:Product {name: 'W15 Ambalangoda'}) ON CREATE SET p.id = 'w15_ambalangoda';

// Query 58
MERGE (p:Product {name: 'Headquarters by W15'}) ON CREATE SET p.id = 'headquarters_by_w15';

// Query 59
MERGE (p:Product {name: 'Mulberry Residencies'}) ON CREATE SET p.id = 'mulberry_residencies';

// Query 60
MERGE (p:Product {name: 'Concrete blocks'}) ON CREATE SET p.id = 'concrete_blocks';

// Query 61
MERGE (p:Product {name: 'Paving stones'}) ON CREATE SET p.id = 'paving_stones';

// Query 62
// Step 10: OFFERS relationships;

// Query 63
MATCH (c:Company {name: 'Lanka Realty Investments'}), (p:Product {name: 'HQ Colombo'}) MERGE (c)-[:OFFERS]->(p);

// Query 64
MATCH (c:Company {name: 'Lanka Realty Investments'}), (p:Product {name: 'Unity Plaza'}) MERGE (c)-[:OFFERS]->(p);

// Query 65
MATCH (c:Company {name: 'Lanka Realty Investments'}), (p:Product {name: 'W15 brand'}) MERGE (c)-[:OFFERS]->(p);

// Query 66
MATCH (c:Company {name: 'Lanka Realty Investments'}), (p:Product {name: 'W15 Yala'}) MERGE (c)-[:OFFERS]->(p);

// Query 67
MATCH (c:Company {name: 'Lanka Realty Investments'}), (p:Product {name: 'W15 Ambalangoda'}) MERGE (c)-[:OFFERS]->(p);

// Query 68
MATCH (c:Company {name: 'Lanka Realty Investments'}), (p:Product {name: 'Headquarters by W15'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Lanka Realty Investments'}), (p:Product {name: 'Mulberry Residencies'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
// Step 11: Company-Company relationships (MANAGES);

// Query 71
MERGE (managed:Company {name: 'Amtrad'}) ON CREATE SET managed.id = 'amtrad';

// Query 72
MATCH (c:Company {name: 'Lanka Realty Investments'}), (managed:Company {name: 'Amtrad'}) MERGE (c)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'manufacturer of concrete blocks and paving stones', r.as_of = date('2024-03-31');

// Query 73
MATCH (c:Company {name: 'Lanka Realty Investments'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
MATCH (c:Company {name: 'Amtrad'}), (p:Product {name: 'Concrete blocks'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'Amtrad'}), (p:Product {name: 'Paving stones'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 75
// Generated on: 2025-10-03T03:03:07.468996
