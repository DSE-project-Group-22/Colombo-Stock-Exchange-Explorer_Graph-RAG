// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Renuka City Hotels'}) ON CREATE SET c.id = 'renuka_city_hotels', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'BDO Partners'}) ON CREATE SET a.id = 'bdo_partners', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Renuka City Hotels'}), (a:Auditor {name: 'BDO Partners'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'R. B. Thambiayah'}) ON CREATE SET p.id = 'r_b_thambiayah';

// Query 8
MERGE (p:Person {name: 'N. A. Thambiayah'}) ON CREATE SET p.id = 'n_a_thambiayah';

// Query 9
MERGE (p:Person {name: 'S. R. Thambiayah'}) ON CREATE SET p.id = 's_r_thambiayah';

// Query 10
MERGE (p:Person {name: 'A. L. Thambiayah'}) ON CREATE SET p.id = 'a_l_thambiayah';

// Query 11
MERGE (p:Person {name: 'M. A. Jayawardena'}) ON CREATE SET p.id = 'm_a_jayawardena';

// Query 12
MERGE (p:Person {name: 'N. R. Thambiayah'}) ON CREATE SET p.id = 'n_r_thambiayah';

// Query 13
MERGE (p:Person {name: 'T. Dharmarajah'}) ON CREATE SET p.id = 't_dharmarajah';

// Query 14
MERGE (p:Person {name: 'C. V. Cabraal'}) ON CREATE SET p.id = 'c_v_cabraal';

// Query 15
MERGE (p:Person {name: 'D. Senathirajah'}) ON CREATE SET p.id = 'd_senathirajah';

// Query 16
// Step 4: HOLDS_POSITION Relationships;

// Query 17
MATCH (p:Person {name: 'R. B. Thambiayah'}), (c:Company {name: 'Renuka City Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'N. A. Thambiayah'}), (c:Company {name: 'Renuka City Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'S. R. Thambiayah'}), (c:Company {name: 'Renuka City Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'A. L. Thambiayah'}), (c:Company {name: 'Renuka City Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'M. A. Jayawardena'}), (c:Company {name: 'Renuka City Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'N. R. Thambiayah'}), (c:Company {name: 'Renuka City Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'T. Dharmarajah'}), (c:Company {name: 'Renuka City Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'C. V. Cabraal'}), (c:Company {name: 'Renuka City Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'D. Senathirajah'}), (c:Company {name: 'Renuka City Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-07-15');

// Query 26
// Step 5: Metrics;

// Query 27
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 36
MERGE (m:Metric {name: 'Dividend per share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Number of Employees'}) ON CREATE SET m.id = 'number_of_employees', m.unit = 'Count';

// Query 38
// Step 6: HAS_METRIC Relationships;

// Query 39
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 128077475, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 128077000, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 95173000, r.year = 2022;

// Query 42
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16339000, r.year = 2021;

// Query 43
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 150011000, r.year = 2020;

// Query 44
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1341785924, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1341786000, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2333893000, r.year = 2022;

// Query 47
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 410895000, r.year = 2021;

// Query 48
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 481719000, r.year = 2020;

// Query 49
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1338212399, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 191.17, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 191.17, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 332.32, r.year = 2022;

// Query 53
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 63.91, r.year = 2021;

// Query 54
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 63.42, r.year = 2020;

// Query 55
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8918809071, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8847297004, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7547853000, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5376144000, r.year = 2022;

// Query 59
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5145878000, r.year = 2021;

// Query 60
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2510419, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1339275505, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.0, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36.03, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.49, r.year = 2022;

// Query 65
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.17, r.year = 2021;

// Query 66
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.00, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Number of Employees'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 51, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Number of Employees'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Number of Employees'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44, r.year = 2022;

// Query 70
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Number of Employees'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44, r.year = 2021;

// Query 71
MATCH (c:Company {name: 'Renuka City Hotels'}), (m:Metric {name: 'Number of Employees'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 57, r.year = 2020;

// Query 72
// Step 7: Sectors;

// Query 73
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 74
// Step 8: IN_SECTOR Relationships;

// Query 75
MATCH (c:Company {name: 'Renuka City Hotels'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 76
// Step 9: Products;

// Query 77
MERGE (p:Product {name: 'Room Sales'}) ON CREATE SET p.id = 'room_sales';

// Query 78
MERGE (p:Product {name: 'Food and Beverage Sales'}) ON CREATE SET p.id = 'food_and_beverage_sales';

// Query 79
MERGE (p:Product {name: 'Hotel Services'}) ON CREATE SET p.id = 'hotel_services';

// Query 80
// Step 10: OFFERS Relationships;

// Query 81
MATCH (c:Company {name: 'Renuka City Hotels'}), (p:Product {name: 'Room Sales'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Renuka City Hotels'}), (p:Product {name: 'Food and Beverage Sales'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Renuka City Hotels'}), (p:Product {name: 'Hotel Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
// Step 11: Company-Company Relationships;

// Query 85
MERGE (parent:Company {name: 'Renuka Hotels'}) ON CREATE SET parent.id = 'renuka_hotels';

// Query 86
MATCH (parent:Company {name: 'Renuka Hotels'}), (child:Company {name: 'Renuka City Hotels'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 71.88, r.as_of = date('2024-03-31');

// Query 87
// Step 12: Person-Company Share Ownership Relationships;

// Query 88
MATCH (p:Person {name: 'R. B. Thambiayah'}), (c:Company {name: 'Renuka City Hotels'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 13004, r.as_of = date('2024-03-31');

// Query 89
MATCH (p:Person {name: 'N. A. Thambiayah'}), (c:Company {name: 'Renuka City Hotels'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 4467, r.as_of = date('2024-03-31');

// Total queries: 89
// Generated on: 2025-10-03T03:50:06.080870
