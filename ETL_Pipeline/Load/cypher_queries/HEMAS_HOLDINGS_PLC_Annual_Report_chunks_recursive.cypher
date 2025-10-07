// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Hemas Holdings'}) ON CREATE SET c.id = 'hemas_holdings', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('1948-12-10');

// Query 3
MERGE (c:Company {name: 'Morison'}) ON CREATE SET c.id = 'morison';

// Query 4
// Step 2: Auditor;

// Query 5
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 6
// Step 3: AUDITED_BY Relationship;

// Query 7
MATCH (c:Company {name: 'Hemas Holdings'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 8
// Step 4: Person Nodes Creation;

// Query 9
MERGE (p:Person {name: 'H. N. Esufally'}) ON CREATE SET p.id = 'h_n_esufally';

// Query 10
MERGE (p:Person {name: 'A. N. Esufally'}) ON CREATE SET p.id = 'a_n_esufally';

// Query 11
MERGE (p:Person {name: 'I. A. H. Esufally'}) ON CREATE SET p.id = 'i_a_h_esufally';

// Query 12
MERGE (p:Person {name: 'M. A. H. Esufally'}) ON CREATE SET p.id = 'm_a_h_esufally';

// Query 13
MERGE (p:Person {name: 'K. A. C. Wilson'}) ON CREATE SET p.id = 'k_a_c_wilson';

// Query 14
MERGE (p:Person {name: 'S. A. B. Ekanayake'}) ON CREATE SET p.id = 's_a_b_ekanayake';

// Query 15
MERGE (p:Person {name: 'A. S. Amaratunga'}) ON CREATE SET p.id = 'a_s_amaratunga';

// Query 16
MERGE (p:Person {name: 'J. M. Trivedi'}) ON CREATE SET p.id = 'j_m_trivedi';

// Query 17
MERGE (p:Person {name: 'P. Subasinghe'}) ON CREATE SET p.id = 'p_subasinghe';

// Query 18
MERGE (p:Person {name: 'R. P. Pathirana'}) ON CREATE SET p.id = 'r_p_pathirana';

// Query 19
// Step 5: HOLDS_POSITION Relationships;

// Query 20
MATCH (p:Person {name: 'H. N. Esufally'}), (c:Company {name: 'Hemas Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'A. N. Esufally'}), (c:Company {name: 'Hemas Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'I. A. H. Esufally'}), (c:Company {name: 'Hemas Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'M. A. H. Esufally'}), (c:Company {name: 'Hemas Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'K. A. C. Wilson'}), (c:Company {name: 'Hemas Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'S. A. B. Ekanayake'}), (c:Company {name: 'Hemas Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'S. A. B. Ekanayake'}), (c:Company {name: 'Hemas Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'A. S. Amaratunga'}), (c:Company {name: 'Hemas Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'J. M. Trivedi'}), (c:Company {name: 'Hemas Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'P. Subasinghe'}), (c:Company {name: 'Hemas Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'R. P. Pathirana'}), (c:Company {name: 'Hemas Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
// Step 6: Metric Nodes Creation;

// Query 32
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 40
// Step 7: HAS_METRIC Relationships;

// Query 41
MATCH (c:Company {name: 'Hemas Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 121614000000.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Hemas Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 113940000000.0, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Hemas Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9468000000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Hemas Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7765000000.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Hemas Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6355000000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Hemas Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5069000000.0, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Hemas Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 93723000000.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Hemas Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 98498000000.0, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Hemas Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 44120000000.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Hemas Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 39120000000.0, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Hemas Holdings'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11921000000.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Hemas Holdings'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10963000000.0, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Hemas Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10.24, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Hemas Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7.16, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Hemas Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 15.3, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Hemas Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13.4, r.year = 2023;

// Query 57
// Step 8: Sector Nodes Creation;

// Query 58
MERGE (s:Sector {name: 'Health Care Equipment and Services'}) ON CREATE SET s.id = 'health_care_equipment_and_services';

// Query 59
MERGE (s:Sector {name: 'Pharmaceuticals, Biotechnology, and Life Sciences'}) ON CREATE SET s.id = 'pharmaceuticals_biotechnology_and_life_sciences';

// Query 60
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 61
// Step 9: IN_SECTOR Relationships;

// Query 62
MATCH (c:Company {name: 'Hemas Holdings'}), (s:Sector {name: 'Health Care Equipment and Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 63
MATCH (c:Company {name: 'Hemas Holdings'}), (s:Sector {name: 'Pharmaceuticals, Biotechnology, and Life Sciences'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 64
MATCH (c:Company {name: 'Hemas Holdings'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 65
// Step 10: Product Nodes Creation;

// Query 66
MERGE (p:Product {name: 'Pharmaceuticals Distribution'}) ON CREATE SET p.id = 'pharmaceuticals_distribution';

// Query 67
MERGE (p:Product {name: 'Hospital Services'}) ON CREATE SET p.id = 'hospital_services';

// Query 68
// Step 11: OFFERS Relationships;

// Query 69
MATCH (c:Company {name: 'Hemas Holdings'}), (p:Product {name: 'Pharmaceuticals Distribution'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'Hemas Holdings'}), (p:Product {name: 'Hospital Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
// Step 12: Company-Company Relationships (OWNS);

// Query 72
MATCH (p:Company {name: 'Hemas Holdings'}), (c:Company {name: 'Morison'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Total queries: 72
// Generated on: 2025-10-02T22:31:46.981880
