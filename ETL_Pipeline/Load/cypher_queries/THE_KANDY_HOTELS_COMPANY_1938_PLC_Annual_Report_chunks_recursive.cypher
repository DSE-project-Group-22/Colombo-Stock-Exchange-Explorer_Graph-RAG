// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Kandy Hotels Company (1938)'}) ON CREATE SET c.id = 'kandy_hotels_company_1938', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Sanjeev Gardiner'}) ON CREATE SET p.id = 'sanjeev_gardiner';

// Query 8
MERGE (p:Person {name: 'Charitha Ratwatte'}) ON CREATE SET p.id = 'charitha_ratwatte';

// Query 9
MERGE (p:Person {name: 'Lakshman Samarasinghe'}) ON CREATE SET p.id = 'lakshman_samarasinghe';

// Query 10
MERGE (p:Person {name: 'Nahil Wijesuriya'}) ON CREATE SET p.id = 'nahil_wijesuriya';

// Query 11
MERGE (p:Person {name: 'Chandra Mohotti'}) ON CREATE SET p.id = 'chandra_mohotti';

// Query 12
MERGE (p:Person {name: 'Priyantha Maddumage'}) ON CREATE SET p.id = 'priyantha_maddumage';

// Query 13
MERGE (p:Person {name: 'Ranjith Gunatilleke'}) ON CREATE SET p.id = 'ranjith_gunatilleke';

// Query 14
MERGE (p:Person {name: 'Nilanga Dela'}) ON CREATE SET p.id = 'nilanga_dela';

// Query 15
MERGE (p:Person {name: 'Lalith Rodrigo'}) ON CREATE SET p.id = 'lalith_rodrigo';

// Query 16
MERGE (p:Person {name: 'Kuvera De Zoysa'}) ON CREATE SET p.id = 'kuvera_de_zoysa';

// Query 17
MERGE (p:Person {name: 'Mangala Boyagoda'}) ON CREATE SET p.id = 'mangala_boyagoda';

// Query 18
// Step 4: HOLDS_POSITION Relationships;

// Query 19
MATCH (p:Person {name: 'Sanjeev Gardiner'}), (c:Company {name: 'Kandy Hotels Company (1938)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'Sanjeev Gardiner'}), (c:Company {name: 'Kandy Hotels Company (1938)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Charitha Ratwatte'}), (c:Company {name: 'Kandy Hotels Company (1938)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Lakshman Samarasinghe'}), (c:Company {name: 'Kandy Hotels Company (1938)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Nahil Wijesuriya'}), (c:Company {name: 'Kandy Hotels Company (1938)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Chandra Mohotti'}), (c:Company {name: 'Kandy Hotels Company (1938)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Priyantha Maddumage'}), (c:Company {name: 'Kandy Hotels Company (1938)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'Ranjith Gunatilleke'}), (c:Company {name: 'Kandy Hotels Company (1938)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'Nilanga Dela'}), (c:Company {name: 'Kandy Hotels Company (1938)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
// Step 5: OWNS_SHARES Relationships (Directors' Shareholdings);

// Query 29
MATCH (p:Person {name: 'Sanjeev Gardiner'}), (c:Company {name: 'Kandy Hotels Company (1938)'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 87500, r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'Charitha Ratwatte'}), (c:Company {name: 'Kandy Hotels Company (1938)'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 175000, r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'Lakshman Samarasinghe'}), (c:Company {name: 'Kandy Hotels Company (1938)'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 5500, r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'Ranjith Gunatilleke'}), (c:Company {name: 'Kandy Hotels Company (1938)'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 43611, r.as_of = date('2024-03-31');

// Query 33
// Step 6: Metrics;

// Query 34
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 41
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 42
// Step 7: HAS_METRIC Relationships (Kandy Hotels Company (1938) - Group);

// Query 43
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1223258331.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 309339828.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -100396181.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -69080146.0, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -119855724.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -20803451.0, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.17, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.04, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13375812850.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10906279716.0, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9174725647.0, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8018022832.0, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.23, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.34, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9000000.0, r.year = 2024;

// Query 58
// Step 8: HAS_METRIC Relationships (Kandy Hotels Company (1938) - Company Specific);

// Query 59
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 594884827.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 60
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 309339828.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 61
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 62
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -74000000.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 63
// Step 9: Sectors;

// Query 64
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 65
// Step 10: IN_SECTOR Relationships;

// Query 66
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 67
// Step 11: Product Nodes;

// Query 68
MERGE (p:Product {name: 'Accommodation'}) ON CREATE SET p.id = 'accommodation';

// Query 69
MERGE (p:Product {name: 'Food'}) ON CREATE SET p.id = 'food';

// Query 70
MERGE (p:Product {name: 'Beverages'}) ON CREATE SET p.id = 'beverages';

// Query 71
MERGE (p:Product {name: 'Hotel Services'}) ON CREATE SET p.id = 'hotel_services';

// Query 72
MERGE (p:Product {name: 'Queens Hotel'}) ON CREATE SET p.id = 'queens_hotel';

// Query 73
MERGE (p:Product {name: 'Hotel Suisse'}) ON CREATE SET p.id = 'hotel_suisse';

// Query 74
MERGE (p:Product {name: 'EKHO Surf'}) ON CREATE SET p.id = 'ekho_surf';

// Query 75
MERGE (p:Product {name: 'EKHO Lake House'}) ON CREATE SET p.id = 'ekho_lake_house';

// Query 76
MERGE (p:Product {name: 'Lake Hotel'}) ON CREATE SET p.id = 'lake_hotel';

// Query 77
MERGE (p:Product {name: 'Radisson Hotel Kandy'}) ON CREATE SET p.id = 'radisson_hotel_kandy';

// Query 78
// Step 12: OFFERS Relationships;

// Query 79
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (p:Product {name: 'Accommodation'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (p:Product {name: 'Food'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (p:Product {name: 'Beverages'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (p:Product {name: 'Hotel Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (p:Product {name: 'Queens Hotel'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Kandy Hotels Company (1938)'}), (p:Product {name: 'Hotel Suisse'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
// Step 13: Other Company Nodes;

// Query 86
MERGE (c:Company {name: 'Suisse Hotel'}) ON CREATE SET c.id = 'suisse_hotel';

// Query 87
MERGE (c:Company {name: 'United Hotels Company'}) ON CREATE SET c.id = 'united_hotels_company';

// Query 88
MERGE (c:Company {name: 'Tissa Resort'}) ON CREATE SET c.id = 'tissa_resort';

// Query 89
MERGE (c:Company {name: 'Ceylon Hotels Maldives'}) ON CREATE SET c.id = 'ceylon_hotels_maldives';

// Query 90
MERGE (c:Company {name: 'Suisse Hotel Kandy'}) ON CREATE SET c.id = 'suisse_hotel_kandy';

// Query 91
MERGE (c:Company {name: 'Ceylon Hotels Corporation'}) ON CREATE SET c.id = 'ceylon_hotels_corporation';

// Query 92
// Step 14: Company-Company Relationships (OWNS);

// Query 93
MATCH (p:Company {name: 'Kandy Hotels Company (1938)'}), (c:Company {name: 'Suisse Hotel'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 94
MATCH (p:Company {name: 'Kandy Hotels Company (1938)'}), (c:Company {name: 'United Hotels Company'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 83.89, r.as_of = date('2023-07-14');

// Query 95
MATCH (p:Company {name: 'United Hotels Company'}), (c:Company {name: 'Tissa Resort'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 96
MATCH (p:Company {name: 'United Hotels Company'}), (c:Company {name: 'Ceylon Hotels Maldives'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 97
MATCH (p:Company {name: 'Suisse Hotel'}), (c:Company {name: 'Suisse Hotel Kandy'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 50.0, r.as_of = date('2024-03-31');

// Query 98
// Step 15: HOLDS_POSITION Relationships for subsidiary directors;

// Query 99
MATCH (p:Person {name: 'Sanjeev Gardiner'}), (c:Company {name: 'Suisse Hotel'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 100
MATCH (p:Person {name: 'Lakshman Samarasinghe'}), (c:Company {name: 'Suisse Hotel'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 101
MATCH (p:Person {name: 'Priyantha Maddumage'}), (c:Company {name: 'Suisse Hotel'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 102
MATCH (p:Person {name: 'Lalith Rodrigo'}), (c:Company {name: 'Suisse Hotel'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 103
MATCH (p:Person {name: 'Sanjeev Gardiner'}), (c:Company {name: 'United Hotels Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 104
MATCH (p:Person {name: 'Lakshman Samarasinghe'}), (c:Company {name: 'United Hotels Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 105
MATCH (p:Person {name: 'Priyantha Maddumage'}), (c:Company {name: 'United Hotels Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 106
MATCH (p:Person {name: 'Kuvera De Zoysa'}), (c:Company {name: 'United Hotels Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 107
MATCH (p:Person {name: 'Mangala Boyagoda'}), (c:Company {name: 'United Hotels Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 108
// Step 16: HAS_METRIC Relationships (United Hotels Company);

// Query 109
MATCH (c:Company {name: 'United Hotels Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 442000000.0, r.year = 2024;

// Query 110
MATCH (c:Company {name: 'United Hotels Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 382000000.0, r.year = 2023;

// Query 111
MATCH (c:Company {name: 'United Hotels Company'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -36000000.0, r.year = 2024;

// Query 112
MATCH (c:Company {name: 'United Hotels Company'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -54000000.0, r.year = 2023;

// Query 113
// Step 17: OFFERS Relationships for subsidiary products;

// Query 114
MATCH (c:Company {name: 'United Hotels Company'}), (p:Product {name: 'EKHO Surf'}) MERGE (c)-[:OFFERS]->(p);

// Query 115
MATCH (c:Company {name: 'United Hotels Company'}), (p:Product {name: 'EKHO Lake House'}) MERGE (c)-[:OFFERS]->(p);

// Query 116
MATCH (c:Company {name: 'United Hotels Company'}), (p:Product {name: 'Lake Hotel'}) MERGE (c)-[:OFFERS]->(p);

// Query 117
MATCH (c:Company {name: 'Suisse Hotel Kandy'}), (p:Product {name: 'Radisson Hotel Kandy'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 117
// Generated on: 2025-10-03T01:41:16.884922
