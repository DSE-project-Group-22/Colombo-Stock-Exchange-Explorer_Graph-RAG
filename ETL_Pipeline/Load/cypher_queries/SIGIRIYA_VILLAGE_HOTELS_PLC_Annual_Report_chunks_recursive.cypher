// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Sigiriya Village Hotels'}) ON CREATE SET c.id = 'sigiriya_village_hotels', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'B.R. De Silva'}) ON CREATE SET a.id = 'b_r_de_silva', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (a:Auditor {name: 'B.R. De Silva'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Amrit Rajaratnam'}) ON CREATE SET p.id = 'amrit_rajaratnam';

// Query 8
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 9
MERGE (p:Person {name: 'C. P. R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 10
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 11
MERGE (p:Person {name: 'A. R. Rasiah'}) ON CREATE SET p.id = 'a_r_rasiah';

// Query 12
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'Amrit Rajaratnam'}), (c:Company {name: 'Sigiriya Village Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'Sigiriya Village Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'Sigiriya Village Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'C. P. R. Perera'}), (c:Company {name: 'Sigiriya Village Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'C. P. R. Perera'}), (c:Company {name: 'Sigiriya Village Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'S. Rajaratnam'}), (c:Company {name: 'Sigiriya Village Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'A. R. Rasiah'}), (c:Company {name: 'Sigiriya Village Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Anushman Rajaratnam'}), (c:Company {name: 'Sigiriya Village Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
// Step 5: Metrics;

// Query 23
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 30
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 31
// Step 6: HAS_METRIC Relationships;

// Query 32
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 302857000.0, r.year = 2024;

// Query 33
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -43135000.0, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -26406000.0, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 356439706.0, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 415674586.0, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2.9, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.96, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 122.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 150003000.0, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -124212000.0, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -91387000.0, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 338255010.0, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 428023389.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -10.0, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.97, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 113.0, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 114743000.0, r.year = 2022;

// Query 49
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -55836000.0, r.year = 2022;

// Query 50
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -18405000.0, r.year = 2022;

// Query 51
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2.0, r.year = 2022;

// Query 52
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.73, r.year = 2022;

// Query 53
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 118302000.0, r.year = 2021;

// Query 54
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -65435000.0, r.year = 2021;

// Query 55
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -73429000.0, r.year = 2021;

// Query 56
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4.58, r.year = 2021;

// Query 57
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.18, r.year = 2021;

// Query 58
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 239895000.0, r.year = 2019;

// Query 59
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -32520000.0, r.year = 2019;

// Query 60
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -33691000.0, r.year = 2019;

// Query 61
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.16, r.year = 2019;

// Query 62
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.96, r.year = 2019;

// Query 63
// Step 7: Sectors;

// Query 64
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 65
// Step 8: IN_SECTOR Relationships;

// Query 66
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 67
// Step 9: Products;

// Query 68
MERGE (p:Product {name: 'Hotel Services'}) ON CREATE SET p.id = 'hotel_services';

// Query 69
// Step 10: OFFERS Relationships;

// Query 70
MATCH (c:Company {name: 'Sigiriya Village Hotels'}), (p:Product {name: 'Hotel Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
// Step 11: Company-Company Relationships (MANAGES);

// Query 72
MERGE (manager:Company {name: 'York Hotel Management Services'}) ON CREATE SET manager.id = 'york_hotel_management_services';

// Query 73
MATCH (manager:Company {name: 'York Hotel Management Services'}), (managed:Company {name: 'Sigiriya Village Hotels'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Managing Agents', r.as_of = date('2024-03-31');

// Total queries: 73
// Generated on: 2025-10-03T00:36:50.475666
