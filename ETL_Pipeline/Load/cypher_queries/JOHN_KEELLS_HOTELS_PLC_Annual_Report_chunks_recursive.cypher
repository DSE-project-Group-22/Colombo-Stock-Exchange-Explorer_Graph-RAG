// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'John Keells Hotels'}) ON CREATE SET c.id = 'john_keells_hotels', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'John Keells Hotels'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2025;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'K N J Balendra'}) ON CREATE SET p.id = 'k_n_j_balendra';

// Query 9
MERGE (p:Person {name: 'J G A Cooray'}) ON CREATE SET p.id = 'j_g_a_cooray';

// Query 10
MERGE (p:Person {name: 'S Rajendra'}) ON CREATE SET p.id = 's_rajendra';

// Query 11
MERGE (p:Person {name: 'M R Svensson'}) ON CREATE SET p.id = 'm_r_svensson';

// Query 12
MERGE (p:Person {name: 'M H Singhawansa'}) ON CREATE SET p.id = 'm_h_singhawansa';

// Query 13
MERGE (p:Person {name: 'H Premaratne'}) ON CREATE SET p.id = 'h_premaratne';

// Query 14
MERGE (p:Person {name: 'A K Moonesinghe'}) ON CREATE SET p.id = 'a_k_moonesinghe';

// Query 15
MERGE (p:Person {name: 'K A Gunasekera'}) ON CREATE SET p.id = 'k_a_gunasekera';

// Query 16
MERGE (p:Person {name: 'A Goonetilleke'}) ON CREATE SET p.id = 'a_goonetilleke';

// Query 17
// Step 5: HOLDS_POSITION Relationships;

// Query 18
MATCH (p:Person {name: 'K N J Balendra'}), (c:Company {name: 'John Keells Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-03-31');

// Query 19
MATCH (p:Person {name: 'J G A Cooray'}), (c:Company {name: 'John Keells Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 20
MATCH (p:Person {name: 'S Rajendra'}), (c:Company {name: 'John Keells Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 21
MATCH (p:Person {name: 'M R Svensson'}), (c:Company {name: 'John Keells Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 22
MATCH (p:Person {name: 'M H Singhawansa'}), (c:Company {name: 'John Keells Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 23
MATCH (p:Person {name: 'H Premaratne'}), (c:Company {name: 'John Keells Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 24
MATCH (p:Person {name: 'A K Moonesinghe'}), (c:Company {name: 'John Keells Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 25
MATCH (p:Person {name: 'K A Gunasekera'}), (c:Company {name: 'John Keells Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 26
MATCH (p:Person {name: 'A Goonetilleke'}), (c:Company {name: 'John Keells Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 27
// Step 6: Metrics;

// Query 28
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Times';

// Query 33
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 35
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 36
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 37
// Step 7: HAS_METRIC Relationships;

// Query 38
MATCH (c:Company {name: 'John Keells Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29318227000, r.year = 2025;

// Query 39
MATCH (c:Company {name: 'John Keells Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30739251000, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'John Keells Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 302007000, r.year = 2025;

// Query 41
MATCH (c:Company {name: 'John Keells Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -65195000, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'John Keells Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 77662795000, r.year = 2025;

// Query 43
MATCH (c:Company {name: 'John Keells Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 79899540000, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'John Keells Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31583206000, r.year = 2025;

// Query 45
MATCH (c:Company {name: 'John Keells Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31284532000, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'John Keells Hotels'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.67, r.year = 2025;

// Query 47
MATCH (c:Company {name: 'John Keells Hotels'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.72, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'John Keells Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -222674000, r.year = 2025;

// Query 49
MATCH (c:Company {name: 'John Keells Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -439005000, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'John Keells Hotels'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.71, r.year = 2025;

// Query 51
MATCH (c:Company {name: 'John Keells Hotels'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.38, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'John Keells Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.29, r.year = 2025;

// Query 53
MATCH (c:Company {name: 'John Keells Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.25, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'John Keells Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.86, r.year = 2025;

// Query 55
MATCH (c:Company {name: 'John Keells Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.63, r.year = 2024;

// Query 56
// Step 8: Sectors;

// Query 57
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 58
// Step 9: IN_SECTOR Relationships;

// Query 59
MATCH (c:Company {name: 'John Keells Hotels'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 60
// Step 10: Products;

// Query 61
MERGE (p:Product {name: 'Hotel Services'}) ON CREATE SET p.id = 'hotel_services';

// Query 62
// Step 11: OFFERS Relationships;

// Query 63
MATCH (c:Company {name: 'John Keells Hotels'}), (p:Product {name: 'Hotel Services'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 63
// Generated on: 2025-10-02T22:51:37.802264
