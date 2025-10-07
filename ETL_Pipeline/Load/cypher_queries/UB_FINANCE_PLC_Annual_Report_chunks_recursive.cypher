// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'UB Finance'}) ON CREATE SET c.id = 'ub_finance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No external auditor name explicitly identified in the provided text.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Malay Mukherjee'}) ON CREATE SET p.id = 'malay_mukherjee';

// Query 6
MERGE (p:Person {name: 'Sabry Ghouse'}) ON CREATE SET p.id = 'sabry_ghouse';

// Query 7
MERGE (p:Person {name: 'Ransith Karunaratne'}) ON CREATE SET p.id = 'ransith_karunaratne';

// Query 8
MERGE (p:Person {name: 'Lisa Gayle Thomas'}) ON CREATE SET p.id = 'lisa_gayle_thomas';

// Query 9
MERGE (p:Person {name: 'Raj Moahan Balendra'}) ON CREATE SET p.id = 'raj_moahan_balendra';

// Query 10
MERGE (p:Person {name: 'Jayendra Setukavalar'}) ON CREATE SET p.id = 'jayendra_setukavalar';

// Query 11
MERGE (p:Person {name: 'Sanjay Pokhrel'}) ON CREATE SET p.id = 'sanjay_pokhrel';

// Query 12
// Step 4: HOLDS_POSITION Relationships;

// Query 13
MATCH (p:Person {name: 'Malay Mukherjee'}), (c:Company {name: 'UB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 14
MATCH (p:Person {name: 'Sabry Ghouse'}), (c:Company {name: 'UB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'Ransith Karunaratne'}), (c:Company {name: 'UB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'Lisa Gayle Thomas'}), (c:Company {name: 'UB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Raj Moahan Balendra'}), (c:Company {name: 'UB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'Jayendra Setukavalar'}), (c:Company {name: 'UB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'Sanjay Pokhrel'}), (c:Company {name: 'UB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
// Step 5: Metrics;

// Query 21
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 25
// Step 6: HAS_METRIC Relationships;

// Query 26
MATCH (c:Company {name: 'UB Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2299980000.0, r.year = 2024;

// Query 27
MATCH (c:Company {name: 'UB Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2126640000.0, r.year = 2023;

// Query 28
MATCH (c:Company {name: 'UB Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 61553762.0, r.year = 2024;

// Query 29
MATCH (c:Company {name: 'UB Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -113453220.0, r.year = 2023;

// Query 30
MATCH (c:Company {name: 'UB Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1472218.0, r.year = 2024;

// Query 31
MATCH (c:Company {name: 'UB Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -113453220.0, r.year = 2023;

// Query 32
MATCH (c:Company {name: 'UB Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.1, r.year = 2024;

// Query 33
MATCH (c:Company {name: 'UB Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4.2, r.year = 2023;

// Query 34
// Step 7: Sectors;

// Query 35
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 36
// Step 8: IN_SECTOR Relationships;

// Query 37
MATCH (c:Company {name: 'UB Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 38
// Step 9: Product nodes creation;

// Query 39
MERGE (p:Product {name: 'Deposit Accounts'}) ON CREATE SET p.id = 'deposit_accounts';

// Query 40
MERGE (p:Product {name: 'Savings Accounts'}) ON CREATE SET p.id = 'savings_accounts';

// Query 41
MERGE (p:Product {name: 'Lease Financing'}) ON CREATE SET p.id = 'lease_financing';

// Query 42
MERGE (p:Product {name: 'Vehicle Loans'}) ON CREATE SET p.id = 'vehicle_loans';

// Query 43
MERGE (p:Product {name: 'Gold Loans'}) ON CREATE SET p.id = 'gold_loans';

// Query 44
MERGE (p:Product {name: 'Mortgage Loans'}) ON CREATE SET p.id = 'mortgage_loans';

// Query 45
MERGE (p:Product {name: 'Working Capital Solutions'}) ON CREATE SET p.id = 'working_capital_solutions';

// Query 46
// Step 10: OFFERS relationships;

// Query 47
MATCH (c:Company {name: 'UB Finance'}), (p:Product {name: 'Deposit Accounts'}) MERGE (c)-[:OFFERS]->(p);

// Query 48
MATCH (c:Company {name: 'UB Finance'}), (p:Product {name: 'Savings Accounts'}) MERGE (c)-[:OFFERS]->(p);

// Query 49
MATCH (c:Company {name: 'UB Finance'}), (p:Product {name: 'Lease Financing'}) MERGE (c)-[:OFFERS]->(p);

// Query 50
MATCH (c:Company {name: 'UB Finance'}), (p:Product {name: 'Vehicle Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 51
MATCH (c:Company {name: 'UB Finance'}), (p:Product {name: 'Gold Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 52
MATCH (c:Company {name: 'UB Finance'}), (p:Product {name: 'Mortgage Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 53
MATCH (c:Company {name: 'UB Finance'}), (p:Product {name: 'Working Capital Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 54
// Step 11: Company-Company Relationships (OWNS, MANAGES);

// Query 55
MERGE (c:Company {name: 'Seylan Bank'}) ON CREATE SET c.id = 'seylan_bank', c.region = 'Sri Lanka';

// Query 56
MERGE (c:Company {name: 'Sampath Bank'}) ON CREATE SET c.id = 'sampath_bank', c.region = 'Sri Lanka';

// Query 57
MERGE (c:Company {name: 'Citizens Development Business Finance'}) ON CREATE SET c.id = 'citizens_development_business_finance', c.region = 'Sri Lanka';

// Query 58
MERGE (c:Company {name: 'Bansei Securities Capital'}) ON CREATE SET c.id = 'bansei_securities_capital', c.region = 'Sri Lanka';

// Query 59
MERGE (c:Company {name: 'Union Bank Colombo'}) ON CREATE SET c.id = 'union_bank_colombo', c.region = 'Sri Lanka';

// Query 60
MATCH (parent:Company {name: 'Seylan Bank'}), (child:Company {name: 'UB Finance'}) MERGE (parent)-[r:OWNS_SHARES]->(child) ON CREATE SET r.count = 3336440, r.pct = 0.12, r.as_of = date('2024-03-31');

// Query 61
MATCH (parent:Company {name: 'Sampath Bank'}), (child:Company {name: 'UB Finance'}) MERGE (parent)-[r:OWNS_SHARES]->(child) ON CREATE SET r.count = 2369836, r.pct = 0.09, r.as_of = date('2024-03-31');

// Query 62
MATCH (parent:Company {name: 'Citizens Development Business Finance'}), (child:Company {name: 'UB Finance'}) MERGE (parent)-[r:OWNS_SHARES]->(child) ON CREATE SET r.count = 2015000, r.pct = 0.07, r.as_of = date('2024-03-31');

// Query 63
MATCH (parent:Company {name: 'Bansei Securities Capital'}), (child:Company {name: 'UB Finance'}) MERGE (parent)-[r:OWNS_SHARES]->(child) ON CREATE SET r.count = 1860500, r.pct = 0.07, r.as_of = date('2024-03-31');

// Query 64
MATCH (manager:Company {name: 'Union Bank Colombo'}), (managed:Company {name: 'UB Finance'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Oversight of IT project implementation and management', r.as_of = date('2024-03-31');

// Total queries: 64
// Generated on: 2025-10-03T03:01:01.131683
