// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Commercial Bank of Ceylon'}) ON CREATE SET c.id = 'commercial_bank_of_ceylon', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No explicit auditor found in the provided chunks.;

// Query 4
// Step 3: People - Shareholders;

// Query 5
MERGE (p:Person {name: 'Y S H I Silva'}) ON CREATE SET p.id = 'y_s_h_i_silva';

// Query 6
MERGE (p:Person {name: 'D P Pieris'}) ON CREATE SET p.id = 'd_p_pieris';

// Query 7
// Step 4: HOLDS_POSITION Relationships - No explicit director/executive positions found with standardized titles.;

// Query 8
// Step 5: Shareholder Companies;

// Query 9
MERGE (sc1:Company {name: 'DFCC Bank'}) ON CREATE SET sc1.id = 'dfcc_bank';

// Query 10
MERGE (sc2:Company {name: 'International Finance Corporation'}) ON CREATE SET sc2.id = 'international_finance_corporation';

// Query 11
// Step 6: OWNS_SHARES Relationships (Person to Company);

// Query 12
MATCH (p:Person {name: 'Y S H I Silva'}), (c:Company {name: 'Commercial Bank of Ceylon'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 9.87, r.as_of = date('2024-12-31');

// Query 13
MATCH (p:Person {name: 'D P Pieris'}), (c:Company {name: 'Commercial Bank of Ceylon'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 9.68, r.as_of = date('2024-12-31');

// Query 14
// Step 7: OWNS_SHARES Relationships (Company to Company);

// Query 15
MATCH (sc:Company {name: 'DFCC Bank'}), (c:Company {name: 'Commercial Bank of Ceylon'}) MERGE (sc)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 9.72, r.as_of = date('2024-12-31');

// Query 16
MATCH (sc:Company {name: 'International Finance Corporation'}), (c:Company {name: 'Commercial Bank of Ceylon'}) MERGE (sc)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 14.41, r.as_of = date('2024-12-31');

// Query 17
// Step 8: Metrics;

// Query 18
MERGE (m1:Metric {name: 'Total Assets'}) ON CREATE SET m1.id = 'total_assets', m1.unit = 'Rs';

// Query 19
// Step 9: HAS_METRIC Relationships;

// Query 20
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2790000000000, r.year = 2024;

// Query 21
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2580000000000, r.year = 2023;

// Query 22
// Step 10: Sectors;

// Query 23
MERGE (s1:Sector {name: 'Banks'}) ON CREATE SET s1.id = 'banks';

// Query 24
MERGE (s2:Sector {name: 'Real Estate'}) ON CREATE SET s2.id = 'real_estate';

// Query 25
MERGE (s3:Sector {name: 'Diversified Financials'}) ON CREATE SET s3.id = 'diversified_financials';

// Query 26
MERGE (s4:Sector {name: 'Consumer Services'}) ON CREATE SET s4.id = 'consumer_services';

// Query 27
// Step 11: IN_SECTOR Relationships;

// Query 28
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 29
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 30
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 31
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 32
// Step 12: Products;

// Query 33
MERGE (p1:Product {name: 'Savings Accounts'}) ON CREATE SET p1.id = 'savings_accounts';

// Query 34
MERGE (p2:Product {name: 'Loans'}) ON CREATE SET p2.id = 'loans';

// Query 35
MERGE (p3:Product {name: 'Trade Finance'}) ON CREATE SET p3.id = 'trade_finance';

// Query 36
MERGE (p4:Product {name: 'Investment Solutions'}) ON CREATE SET p4.id = 'investment_solutions';

// Query 37
MERGE (p5:Product {name: 'Credit Cards'}) ON CREATE SET p5.id = 'credit_cards';

// Query 38
MERGE (p6:Product {name: 'Pawning'}) ON CREATE SET p6.id = 'pawning';

// Query 39
MERGE (p7:Product {name: 'Staff Loans'}) ON CREATE SET p7.id = 'staff_loans';

// Query 40
MERGE (p8:Product {name: 'Housing Loans'}) ON CREATE SET p8.id = 'housing_loans';

// Query 41
MERGE (p9:Product {name: 'Personal Loans'}) ON CREATE SET p9.id = 'personal_loans';

// Query 42
MERGE (p10:Product {name: 'Short Term Loans'}) ON CREATE SET p10.id = 'short_term_loans';

// Query 43
MERGE (p11:Product {name: 'Long Term Loans'}) ON CREATE SET p11.id = 'long_term_loans';

// Query 44
MERGE (p12:Product {name: 'Bills of Exchange'}) ON CREATE SET p12.id = 'bills_of_exchange';

// Query 45
MERGE (p13:Product {name: 'Overdrafts'}) ON CREATE SET p13.id = 'overdrafts';

// Query 46
MERGE (p14:Product {name: 'Lease and Hire Purchase'}) ON CREATE SET p14.id = 'lease_and_hire_purchase';

// Query 47
// Step 13: OFFERS Relationships;

// Query 48
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (p:Product {name: 'Savings Accounts'}) MERGE (c)-[:OFFERS]->(p);

// Query 49
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (p:Product {name: 'Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 50
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (p:Product {name: 'Trade Finance'}) MERGE (c)-[:OFFERS]->(p);

// Query 51
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (p:Product {name: 'Investment Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 52
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (p:Product {name: 'Credit Cards'}) MERGE (c)-[:OFFERS]->(p);

// Query 53
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (p:Product {name: 'Pawning'}) MERGE (c)-[:OFFERS]->(p);

// Query 54
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (p:Product {name: 'Staff Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 55
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (p:Product {name: 'Housing Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 56
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (p:Product {name: 'Personal Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 57
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (p:Product {name: 'Short Term Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 58
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (p:Product {name: 'Long Term Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 59
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (p:Product {name: 'Bills of Exchange'}) MERGE (c)-[:OFFERS]->(p);

// Query 60
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (p:Product {name: 'Overdrafts'}) MERGE (c)-[:OFFERS]->(p);

// Query 61
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (p:Product {name: 'Lease and Hire Purchase'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 61
// Generated on: 2025-10-02T22:01:03.974103
