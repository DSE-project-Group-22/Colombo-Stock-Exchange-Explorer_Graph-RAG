// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Asia Capital'}) ON CREATE SET c.id = 'asia_capital', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'BDO Partners'}) ON CREATE SET a.id = 'bdo_partners', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Asia Capital'}), (a:Auditor {name: 'BDO Partners'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'J. T. Sumathipala'}) ON CREATE SET p.id = 'j_t_sumathipala';

// Query 9
MERGE (p:Person {name: 'R. Radha'}) ON CREATE SET p.id = 'r_radha';

// Query 10
MERGE (p:Person {name: 'R. A. T. P. Perera'}) ON CREATE SET p.id = 'r_a_t_p_perera';

// Query 11
MERGE (p:Person {name: 'D. A. S. D. A. Abeyesinhe'}) ON CREATE SET p.id = 'd_a_s_d_a_abeyesinhe';

// Query 12
MERGE (p:Person {name: 'A. D. Ross'}) ON CREATE SET p.id = 'a_d_ross';

// Query 13
MERGE (p:Person {name: 'V. Siva Jr.'}) ON CREATE SET p.id = 'v_siva_jr';

// Query 14
MERGE (p:Person {name: 'S. S. Balasubramaniam'}) ON CREATE SET p.id = 's_s_balasubramaniam';

// Query 15
MERGE (p:Person {name: 'D. Swarnasinghe'}) ON CREATE SET p.id = 'd_swarnasinghe';

// Query 16
MERGE (p:Person {name: 'S. Charles'}) ON CREATE SET p.id = 's_charles';

// Query 17
// Step 5: HOLDS_POSITION Relationships;

// Query 18
MATCH (p:Person {name: 'J. T. Sumathipala'}), (c:Company {name: 'Asia Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-25');

// Query 19
MATCH (p:Person {name: 'R. Radha'}), (c:Company {name: 'Asia Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-09');

// Query 20
MATCH (p:Person {name: 'R. A. T. P. Perera'}), (c:Company {name: 'Asia Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-01-31');

// Query 21
MATCH (p:Person {name: 'R. A. T. P. Perera'}), (c:Company {name: 'Asia Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-01-31');

// Query 22
MATCH (p:Person {name: 'D. A. S. D. A. Abeyesinhe'}), (c:Company {name: 'Asia Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'A. D. Ross'}), (c:Company {name: 'Asia Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'V. Siva Jr.'}), (c:Company {name: 'Asia Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'S. S. Balasubramaniam'}), (c:Company {name: 'Asia Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'D. Swarnasinghe'}), (c:Company {name: 'Asia Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'S. Charles'}), (c:Company {name: 'Asia Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-05-03');

// Query 28
// Step 6: Metrics;

// Query 29
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 34
// Step 7: HAS_METRIC Relationships (Group);

// Query 35
MATCH (c:Company {name: 'Asia Capital'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 128886000, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Asia Capital'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -532836000, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Asia Capital'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -533152000, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Asia Capital'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4992444000, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Asia Capital'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -127108000, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Asia Capital'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 460006000, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Asia Capital'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -761102000, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Asia Capital'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -759163000, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Asia Capital'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4697498000, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Asia Capital'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -144046000, r.year = 2023;

// Query 45
// Step 7: HAS_METRIC Relationships (Company - not Group);

// Query 46
MATCH (c:Company {name: 'Asia Capital'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -279572000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 47
MATCH (c:Company {name: 'Asia Capital'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -276961000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 48
MATCH (c:Company {name: 'Asia Capital'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2297313000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 49
MATCH (c:Company {name: 'Asia Capital'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -22354000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 50
MATCH (c:Company {name: 'Asia Capital'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -306378000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 51
MATCH (c:Company {name: 'Asia Capital'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -306807000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 52
MATCH (c:Company {name: 'Asia Capital'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1752660000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 53
MATCH (c:Company {name: 'Asia Capital'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 254608000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 54
// Step 8: Sectors;

// Query 55
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 56
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 57
// Step 9: IN_SECTOR Relationships;

// Query 58
MATCH (c:Company {name: 'Asia Capital'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 59
MATCH (c:Company {name: 'Asia Capital'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 60
// Step 10: Products;

// Query 61
MERGE (p:Product {name: 'Stock Brokering'}) ON CREATE SET p.id = 'stock_brokering';

// Query 62
MERGE (p:Product {name: 'Hotel Services'}) ON CREATE SET p.id = 'hotel_services';

// Query 63
MERGE (p:Product {name: 'Investment Banking'}) ON CREATE SET p.id = 'investment_banking';

// Query 64
MERGE (p:Product {name: 'Corporate Advisory'}) ON CREATE SET p.id = 'corporate_advisory';

// Query 65
// Step 11: OFFERS Relationships;

// Query 66
MATCH (c:Company {name: 'Asia Capital'}), (p:Product {name: 'Stock Brokering'}) MERGE (c)-[:OFFERS]->(p);

// Query 67
MATCH (c:Company {name: 'Asia Capital'}), (p:Product {name: 'Hotel Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 68
MATCH (c:Company {name: 'Asia Capital'}), (p:Product {name: 'Investment Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Asia Capital'}), (p:Product {name: 'Corporate Advisory'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 69
// Generated on: 2025-10-03T02:21:52.803844
