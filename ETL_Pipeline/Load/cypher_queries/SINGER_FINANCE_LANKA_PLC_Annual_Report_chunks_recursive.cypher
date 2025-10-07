// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Singer Finance Lanka'}) ON CREATE SET c.id = 'singer_finance_lanka', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Singer Finance Lanka'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Thushan Amarasuriya'}) ON CREATE SET p.id = 'thushan_amarasuriya';

// Query 8
MERGE (p:Person {name: 'Aravinda Perera'}) ON CREATE SET p.id = 'aravinda_perera';

// Query 9
MERGE (p:Person {name: 'Mahesh Wijewardene'}) ON CREATE SET p.id = 'mahesh_wijewardene';

// Query 10
MERGE (p:Person {name: 'Darshini Talpahewa'}) ON CREATE SET p.id = 'darshini_talpahewa';

// Query 11
MERGE (p:Person {name: 'Jayanth Perera'}) ON CREATE SET p.id = 'jayanth_perera';

// Query 12
MERGE (p:Person {name: 'Ranil De Silva'}) ON CREATE SET p.id = 'ranil_de_silva';

// Query 13
MERGE (p:Person {name: 'Saman Herath'}) ON CREATE SET p.id = 'saman_herath';

// Query 14
MERGE (p:Person {name: 'Dhammika Siriwardena'}) ON CREATE SET p.id = 'dhammika_siriwardena';

// Query 15
MERGE (p:Person {name: 'Lasitha Dias'}) ON CREATE SET p.id = 'lasitha_dias';

// Query 16
MERGE (p:Person {name: 'Tharaka Sandaruwan'}) ON CREATE SET p.id = 'tharaka_sandaruwan';

// Query 17
MERGE (p:Person {name: 'Deepthi Sandaruwan'}) ON CREATE SET p.id = 'deepthi_sandaruwan';

// Query 18
// Step 4: HOLDS_POSITION Relationships;

// Query 19
MATCH (p:Person {name: 'Thushan Amarasuriya'}), (c:Company {name: 'Singer Finance Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'Thushan Amarasuriya'}), (c:Company {name: 'Singer Finance Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Aravinda Perera'}), (c:Company {name: 'Singer Finance Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Aravinda Perera'}), (c:Company {name: 'Singer Finance Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Mahesh Wijewardene'}), (c:Company {name: 'Singer Finance Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Darshini Talpahewa'}), (c:Company {name: 'Singer Finance Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Jayanth Perera'}), (c:Company {name: 'Singer Finance Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'Ranil De Silva'}), (c:Company {name: 'Singer Finance Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'Saman Herath'}), (c:Company {name: 'Singer Finance Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'Dhammika Siriwardena'}), (c:Company {name: 'Singer Finance Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-04-22');

// Query 29
MATCH (p:Person {name: 'Lasitha Dias'}), (c:Company {name: 'Singer Finance Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'Tharaka Sandaruwan'}), (c:Company {name: 'Singer Finance Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2023-04-11');

// Query 31
MATCH (p:Person {name: 'Deepthi Sandaruwan'}), (c:Company {name: 'Singer Finance Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-01-16');

// Query 32
// Step 5: Metrics;

// Query 33
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 36
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 41
// Step 6: HAS_METRIC Relationships;

// Query 42
MATCH (c:Company {name: 'Singer Finance Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8113000000, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Singer Finance Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7553000000, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Singer Finance Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 404235000, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Singer Finance Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 409044000, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Singer Finance Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.93, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Singer Finance Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.44, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Singer Finance Lanka'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8113371000, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Singer Finance Lanka'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7552900000, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Singer Finance Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 652398000, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Singer Finance Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 678573000, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Singer Finance Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5214299000, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Singer Finance Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4975248000, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Singer Finance Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36594444000, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Singer Finance Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31948839000, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Singer Finance Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.00, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Singer Finance Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.02, r.year = 2023;

// Query 58
// Step 7: Sectors;

// Query 59
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 60
// Step 8: IN_SECTOR Relationships;

// Query 61
MATCH (c:Company {name: 'Singer Finance Lanka'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 62
// Step 9: Products;

// Query 63
MERGE (p:Product {name: 'Leasing'}) ON CREATE SET p.id = 'leasing';

// Query 64
MERGE (p:Product {name: 'Loans'}) ON CREATE SET p.id = 'loans';

// Query 65
MERGE (p:Product {name: 'Advances'}) ON CREATE SET p.id = 'advances';

// Query 66
// Step 10: OFFERS Relationships;

// Query 67
MATCH (c:Company {name: 'Singer Finance Lanka'}), (p:Product {name: 'Leasing'}) MERGE (c)-[:OFFERS]->(p);

// Query 68
MATCH (c:Company {name: 'Singer Finance Lanka'}), (p:Product {name: 'Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Singer Finance Lanka'}), (p:Product {name: 'Advances'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 69
// Generated on: 2025-10-03T03:47:01.190467
