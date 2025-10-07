// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'HNB Finance'}) ON CREATE SET c.id = 'hnb_finance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'HNB Finance'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2025, r.period = 'FY 2024/25';

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Rajive Dissanayake'}) ON CREATE SET p.id = 'rajive_dissanayake';

// Query 8
MERGE (p:Person {name: 'Chaminda Prabhath'}) ON CREATE SET p.id = 'chaminda_prabhath';

// Query 9
MERGE (p:Person {name: 'Hasitha Wijesundara'}) ON CREATE SET p.id = 'hasitha_wijesundara';

// Query 10
MERGE (p:Person {name: 'Ruwan Manatunga'}) ON CREATE SET p.id = 'ruwan_manatunga';

// Query 11
MERGE (p:Person {name: 'Lalith Withana'}) ON CREATE SET p.id = 'lalith_withana';

// Query 12
MERGE (p:Person {name: 'Prasad Samarasinghe'}) ON CREATE SET p.id = 'prasad_samarasinghe';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'Rajive Dissanayake'}), (c:Company {name: 'HNB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-03-31');

// Query 15
MATCH (p:Person {name: 'Rajive Dissanayake'}), (c:Company {name: 'HNB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 16
MATCH (p:Person {name: 'Chaminda Prabhath'}), (c:Company {name: 'HNB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2025-03-31');

// Query 17
MATCH (p:Person {name: 'Chaminda Prabhath'}), (c:Company {name: 'HNB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2025-03-31');

// Query 18
MATCH (p:Person {name: 'Chaminda Prabhath'}), (c:Company {name: 'HNB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 19
MATCH (p:Person {name: 'Hasitha Wijesundara'}), (c:Company {name: 'HNB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 20
MATCH (p:Person {name: 'Ruwan Manatunga'}), (c:Company {name: 'HNB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 21
MATCH (p:Person {name: 'Lalith Withana'}), (c:Company {name: 'HNB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 22
MATCH (p:Person {name: 'Prasad Samarasinghe'}), (c:Company {name: 'HNB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 23
// Step 5: Metrics;

// Query 24
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 31
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 32
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 34
// Step 6: HAS_METRIC Relationships;

// Query 35
MATCH (c:Company {name: 'HNB Finance'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13278000000.0, r.year = 2025;

// Query 36
MATCH (c:Company {name: 'HNB Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5505000000.0, r.year = 2025;

// Query 37
MATCH (c:Company {name: 'HNB Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7950000000.0, r.year = 2025;

// Query 38
MATCH (c:Company {name: 'HNB Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 765000000.0, r.year = 2025;

// Query 39
MATCH (c:Company {name: 'HNB Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58503000000.0, r.year = 2025;

// Query 40
MATCH (c:Company {name: 'HNB Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.43, r.year = 2025;

// Query 41
MATCH (c:Company {name: 'HNB Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.54, r.year = 2025;

// Query 42
MATCH (c:Company {name: 'HNB Finance'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.19, r.year = 2025;

// Query 43
MATCH (c:Company {name: 'HNB Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 810866385.0, r.year = 2025;

// Query 44
MATCH (c:Company {name: 'HNB Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7586965000.0, r.year = 2025;

// Query 45
// Step 7: Sectors;

// Query 46
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 47
// Step 8: IN_SECTOR Relationships;

// Query 48
MATCH (c:Company {name: 'HNB Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 49
// Step 9: Products;

// Query 50
MERGE (p:Product {name: 'Leasing'}) ON CREATE SET p.id = 'leasing';

// Query 51
MERGE (p:Product {name: 'Gold Loans'}) ON CREATE SET p.id = 'gold_loans';

// Query 52
MERGE (p:Product {name: 'Microfinance'}) ON CREATE SET p.id = 'microfinance';

// Query 53
MERGE (p:Product {name: 'Electric Vehicle Financing Solutions'}) ON CREATE SET p.id = 'electric_vehicle_financing_solutions';

// Query 54
// Step 10: OFFERS Relationships;

// Query 55
MATCH (c:Company {name: 'HNB Finance'}), (p:Product {name: 'Leasing'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 56
MATCH (c:Company {name: 'HNB Finance'}), (p:Product {name: 'Gold Loans'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 57
MATCH (c:Company {name: 'HNB Finance'}), (p:Product {name: 'Microfinance'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 58
MATCH (c:Company {name: 'HNB Finance'}), (p:Product {name: 'Electric Vehicle Financing Solutions'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'planned';

// Total queries: 58
// Generated on: 2025-10-03T00:22:03.619500
