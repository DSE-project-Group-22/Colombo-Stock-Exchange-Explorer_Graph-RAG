// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'SMB Finance'}) ON CREATE SET c.id = 'smb_finance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor Nodes;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MERGE (a:Auditor:Company {name: 'Deloitte'}) ON CREATE SET a.id = 'deloitte', a.type = 'Auditing Firm';

// Query 6
// Step 3: AUDITED_BY Relationships;

// Query 7
MATCH (c:Company {name: 'SMB Finance'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 8
MATCH (c:Company {name: 'SMB Finance'}), (a:Auditor {name: 'Deloitte'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 9
// Step 4: Person Nodes;

// Query 10
MERGE (p:Person {name: 'H. R. S. Wijeratne'}) ON CREATE SET p.id = 'h_r_s_wijeratne';

// Query 11
MERGE (p:Person {name: 'M. S. A. Wadood'}) ON CREATE SET p.id = 'm_s_a_wadood';

// Query 12
MERGE (p:Person {name: 'A. T. S. Sosa'}) ON CREATE SET p.id = 'a_t_s_sosa';

// Query 13
MERGE (p:Person {name: 'L. Abeysinghe'}) ON CREATE SET p.id = 'l_abeysinghe';

// Query 14
MERGE (p:Person {name: 'S. C. Wijesinghe'}) ON CREATE SET p.id = 's_c_wijesinghe';

// Query 15
MERGE (p:Person {name: 'W. M. Dayasinghe'}) ON CREATE SET p.id = 'w_m_dayasinghe';

// Query 16
MERGE (p:Person {name: 'D. P. S. Jayawardena'}) ON CREATE SET p.id = 'd_p_s_jayawardena';

// Query 17
MERGE (p:Person {name: 'R. S. Wijeratne'}) ON CREATE SET p.id = 'r_s_wijeratne';

// Query 18
MERGE (p:Person {name: 'Ruwangani Jayasundera'}) ON CREATE SET p.id = 'ruwangani_jayasundera';

// Query 19
// Step 5: HOLDS_POSITION Relationships;

// Query 20
MATCH (p:Person {name: 'H. R. S. Wijeratne'}), (c:Company {name: 'SMB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 21
MATCH (p:Person {name: 'M. S. A. Wadood'}), (c:Company {name: 'SMB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-11-30');

// Query 22
MATCH (p:Person {name: 'A. T. S. Sosa'}), (c:Company {name: 'SMB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 23
MATCH (p:Person {name: 'L. Abeysinghe'}), (c:Company {name: 'SMB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 24
MATCH (p:Person {name: 'S. C. Wijesinghe'}), (c:Company {name: 'SMB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-12-31');

// Query 25
MATCH (p:Person {name: 'S. C. Wijesinghe'}), (c:Company {name: 'SMB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 26
MATCH (p:Person {name: 'W. M. Dayasinghe'}), (c:Company {name: 'SMB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-04-09');

// Query 27
MATCH (p:Person {name: 'D. P. S. Jayawardena'}), (c:Company {name: 'SMB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 28
MATCH (p:Person {name: 'R. S. Wijeratne'}), (c:Company {name: 'SMB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-01-31');

// Query 29
MATCH (p:Person {name: 'Ruwangani Jayasundera'}), (c:Company {name: 'SMB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-12-31');

// Query 30
// Step 6: Metric Nodes;

// Query 31
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 37
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 38
// Step 7: HAS_METRIC Relationships;

// Query 39
MATCH (c:Company {name: 'SMB Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612119947, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'SMB Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 825805233, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'SMB Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 151000000, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'SMB Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 119900000, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'SMB Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 561200000, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'SMB Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 427900000, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'SMB Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6102700000, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'SMB Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5330200000, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'SMB Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3637700000, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'SMB Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3486800000, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'SMB Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'SMB Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.02, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'SMB Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.01, r.year = 2023;

// Query 52
// Step 8: Sector Nodes;

// Query 53
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 54
// Step 9: IN_SECTOR Relationships;

// Query 55
MATCH (c:Company {name: 'SMB Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 56
// Step 10: Product Nodes;

// Query 57
MERGE (p:Product {name: 'Loans'}) ON CREATE SET p.id = 'loans';

// Query 58
MERGE (p:Product {name: 'Leasing'}) ON CREATE SET p.id = 'leasing';

// Query 59
MERGE (p:Product {name: 'Treasury'}) ON CREATE SET p.id = 'treasury';

// Query 60
MERGE (p:Product {name: 'Money Brokering'}) ON CREATE SET p.id = 'money_brokering';

// Query 61
// Step 11: OFFERS Relationships;

// Query 62
MATCH (c:Company {name: 'SMB Finance'}), (p:Product {name: 'Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 63
MATCH (c:Company {name: 'SMB Finance'}), (p:Product {name: 'Leasing'}) MERGE (c)-[:OFFERS]->(p);

// Query 64
MATCH (c:Company {name: 'SMB Finance'}), (p:Product {name: 'Treasury'}) MERGE (c)-[:OFFERS]->(p);

// Query 65
MATCH (c:Company {name: 'SMB Finance'}), (p:Product {name: 'Money Brokering'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 65
// Generated on: 2025-10-03T02:34:58.667535
