// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Serendib Land'}) ON CREATE SET c.id = 'serendib_land', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('2008-12-31');

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Serendib Land'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'T. Someswaran'}) ON CREATE SET p.id = 't_someswaran';

// Query 9
MERGE (p:Person {name: 'J. M. Swaminathan'}) ON CREATE SET p.id = 'j_m_swaminathan';

// Query 10
MERGE (p:Person {name: 'Gajendrakumar G. Ponnambalam'}) ON CREATE SET p.id = 'gajendrakumar_g_ponnambalam';

// Query 11
MERGE (p:Person {name: 'Y. Ponnambalam'}) ON CREATE SET p.id = 'y_ponnambalam';

// Query 12
MERGE (p:Person {name: 'M. Ponnambalam'}) ON CREATE SET p.id = 'm_ponnambalam';

// Query 13
MERGE (p:Person {name: 'Ramesh Schaffter'}) ON CREATE SET p.id = 'ramesh_schaffter';

// Query 14
// Step 5: HOLDS_POSITION Relationships;

// Query 15
MATCH (p:Person {name: 'T. Someswaran'}), (c:Company {name: 'Serendib Land'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'J. M. Swaminathan'}), (c:Company {name: 'Serendib Land'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Gajendrakumar G. Ponnambalam'}), (c:Company {name: 'Serendib Land'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'Y. Ponnambalam'}), (c:Company {name: 'Serendib Land'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'M. Ponnambalam'}), (c:Company {name: 'Serendib Land'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'Ramesh Schaffter'}), (c:Company {name: 'Serendib Land'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
// Step 6: Metrics;

// Query 22
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

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
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 31
// Step 7: HAS_METRIC Relationships;

// Query 32
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27046644.0, r.year = 2024;

// Query 33
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27046644.0, r.year = 2023;

// Query 34
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27046644.0, r.year = 2022;

// Query 35
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28475945.0, r.year = 2021;

// Query 36
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26374032.0, r.year = 2020;

// Query 37
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 55671256.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 89471192.0, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 66929568.0, r.year = 2022;

// Query 40
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20731288.0, r.year = 2021;

// Query 41
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 82957602.0, r.year = 2020;

// Query 42
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 63219098.0, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 96535809.0, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 68839461.0, r.year = 2022;

// Query 45
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22588449.0, r.year = 2021;

// Query 46
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 84914461.0, r.year = 2020;

// Query 47
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 49407117.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28895282.0, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 62328046.0, r.year = 2022;

// Query 50
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19134048.0, r.year = 2021;

// Query 51
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 76553695.0, r.year = 2020;

// Query 52
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 828606428.0, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 783339643.0, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 703751583.0, r.year = 2022;

// Query 55
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 647546077.0, r.year = 2021;

// Query 56
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 629636677.0, r.year = 2020;

// Query 57
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 700845186.0, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 660882805.0, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 641331903.0, r.year = 2022;

// Query 60
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 588693197.0, r.year = 2021;

// Query 61
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 576542767.0, r.year = 2020;

// Query 62
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 123.86, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 72.44, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 156.25, r.year = 2022;

// Query 65
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47.97, r.year = 2021;

// Query 66
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 191.91, r.year = 2020;

// Query 67
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.31, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.8, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.10, r.year = 2022;

// Query 70
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.65, r.year = 2021;

// Query 71
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.61, r.year = 2020;

// Query 72
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.03, r.year = 2024;

// Query 73
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.37, r.year = 2023;

// Query 74
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.72, r.year = 2022;

// Query 75
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.25, r.year = 2021;

// Query 76
MATCH (c:Company {name: 'Serendib Land'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.28, r.year = 2020;

// Query 77
// Step 8: Sectors;

// Query 78
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 79
// Step 9: IN_SECTOR Relationships;

// Query 80
MATCH (c:Company {name: 'Serendib Land'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 81
// Step 10: Products;

// Query 82
MERGE (p:Product {name: 'Office Premises Leasing'}) ON CREATE SET p.id = 'office_premises_leasing';

// Query 83
// Step 11: OFFERS Relationships;

// Query 84
MATCH (c:Company {name: 'Serendib Land'}), (p:Product {name: 'Office Premises Leasing'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 84
// Generated on: 2025-10-03T00:11:20.864531
