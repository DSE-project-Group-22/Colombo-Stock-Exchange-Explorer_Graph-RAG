// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Renuka Hotels'}) ON CREATE SET c.id = 'renuka_hotels', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'Renuka City Hotels'}) ON CREATE SET c.id = 'renuka_city_hotels', c.region = 'Sri Lanka';

// Query 4
// Step 2: Auditor;

// Query 5
MERGE (a:Auditor:Company {name: 'BDO Partners'}) ON CREATE SET a.id = 'bdo_partners', a.type = 'Auditing Firm';

// Query 6
// Step 3: AUDITED_BY Relationship;

// Query 7
MATCH (c:Company {name: 'Renuka Hotels'}), (a:Auditor {name: 'BDO Partners'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 8
// Step 4: Company-Company Relationships (OWNS);

// Query 9
MATCH (p:Company {name: 'Renuka Hotels'}), (c:Company {name: 'Renuka City Hotels'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 71.88, r.as_of = date('2024-03-31');

// Query 10
MATCH (p:Company {name: 'Renuka Hotels'}), (c:Company {name: 'Renuka City Hotels'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 69.25, r.as_of = date('2023-03-31');

// Query 11
// Step 5: People - Directors and Executives;

// Query 12
MERGE (p:Person {name: 'S. R. Thambiayah'}) ON CREATE SET p.id = 's_r_thambiayah';

// Query 13
MERGE (p:Person {name: 'P. M. B. Fernando'}) ON CREATE SET p.id = 'p_m_b_fernando';

// Query 14
MERGE (p:Person {name: 'N. A. Thambiayah'}) ON CREATE SET p.id = 'n_a_thambiayah';

// Query 15
MERGE (p:Person {name: 'A. L. Thambiayah'}) ON CREATE SET p.id = 'a_l_thambiayah';

// Query 16
MERGE (p:Person {name: 'R. B. Thambiayah'}) ON CREATE SET p.id = 'r_b_thambiayah';

// Query 17
MERGE (p:Person {name: 'N. R. Thambiayah'}) ON CREATE SET p.id = 'n_r_thambiayah';

// Query 18
MERGE (p:Person {name: 'R. N. Asirwatham'}) ON CREATE SET p.id = 'r_n_asirwatham';

// Query 19
MERGE (p:Person {name: 'G. I. Koggalage'}) ON CREATE SET p.id = 'g_i_koggalage';

// Query 20
MERGE (p:Person {name: 'M. J. Fernando'}) ON CREATE SET p.id = 'm_j_fernando';

// Query 21
MERGE (p:Person {name: 'S. M. A. N. Ranaweera'}) ON CREATE SET p.id = 's_m_a_n_ranaweera';

// Query 22
MERGE (p:Person {name: 'A. Withana'}) ON CREATE SET p.id = 'a_withana';

// Query 23
// Step 6: HOLDS_POSITION Relationships;

// Query 24
MATCH (p:Person {name: 'S. R. Thambiayah'}), (c:Company {name: 'Renuka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'S. R. Thambiayah'}), (c:Company {name: 'Renuka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'P. M. B. Fernando'}), (c:Company {name: 'Renuka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'N. A. Thambiayah'}), (c:Company {name: 'Renuka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'A. L. Thambiayah'}), (c:Company {name: 'Renuka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'R. B. Thambiayah'}), (c:Company {name: 'Renuka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'N. R. Thambiayah'}), (c:Company {name: 'Renuka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'R. N. Asirwatham'}), (c:Company {name: 'Renuka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'G. I. Koggalage'}), (c:Company {name: 'Renuka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2023-05-17');

// Query 33
MATCH (p:Person {name: 'M. J. Fernando'}), (c:Company {name: 'Renuka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'S. M. A. N. Ranaweera'}), (c:Company {name: 'Renuka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-07-15');

// Query 35
MATCH (p:Person {name: 'A. Withana'}), (c:Company {name: 'Renuka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-08-29');

// Query 36
// Step 7: Metrics;

// Query 37
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 45
// Step 8: HAS_METRIC Relationships;

// Query 46
MATCH (c:Company {name: 'Renuka Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 487704095, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Renuka Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 274750991, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Renuka Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 717270101, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Renuka Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2057020126, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Renuka Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 608523253, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Renuka Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1999211356, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Renuka Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9622123339, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Renuka Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8918809071, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Renuka Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14353104614, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Renuka Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12534096633, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Renuka Hotels'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 245424649, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Renuka Hotels'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 436487351, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Renuka Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.26, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Renuka Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39.40, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Renuka Hotels'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.96, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Renuka Hotels'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18.73, r.year = 2023;

// Query 62
// Step 9: Sectors;

// Query 63
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 64
// Step 10: IN_SECTOR Relationships;

// Query 65
MATCH (c:Company {name: 'Renuka Hotels'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 66
// Step 11: Products;

// Query 67
MERGE (p:Product {name: 'Room Sales'}) ON CREATE SET p.id = 'room_sales';

// Query 68
MERGE (p:Product {name: 'Food and Beverage Sales'}) ON CREATE SET p.id = 'food_and_beverage_sales';

// Query 69
MERGE (p:Product {name: 'Hotel Related Revenue'}) ON CREATE SET p.id = 'hotel_related_revenue';

// Query 70
// Step 12: OFFERS Relationships;

// Query 71
MATCH (c:Company {name: 'Renuka Hotels'}), (p:Product {name: 'Room Sales'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Renuka Hotels'}), (p:Product {name: 'Food and Beverage Sales'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'Renuka Hotels'}), (p:Product {name: 'Hotel Related Revenue'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 73
// Generated on: 2025-10-03T01:02:07.031127
