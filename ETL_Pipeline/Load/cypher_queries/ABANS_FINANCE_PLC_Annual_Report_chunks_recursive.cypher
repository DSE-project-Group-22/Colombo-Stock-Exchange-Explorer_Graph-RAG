// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Abans Finance'}) ON CREATE SET c.id = 'abans_finance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Abans Finance'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'K. J. C. Perera'}) ON CREATE SET p.id = 'k_j_c_perera';

// Query 8
MERGE (p:Person {name: 'R. Pestonjee'}) ON CREATE SET p.id = 'r_pestonjee';

// Query 9
MERGE (p:Person {name: 'H. C. Embuldeniya'}) ON CREATE SET p.id = 'h_c_embuldeniya';

// Query 10
MERGE (p:Person {name: 'W. B. W. M. R. A. M. T. G. Aluwihare'}) ON CREATE SET p.id = 'w_b_w_m_r_a_m_t_g_aluwihare';

// Query 11
MERGE (p:Person {name: 'D. S. Ratnayake'}) ON CREATE SET p.id = 'd_s_ratnayake';

// Query 12
MERGE (p:Person {name: 'S. M. S. Sanjaya Bandara'}) ON CREATE SET p.id = 's_m_s_sanjaya_bandara';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'K. J. C. Perera'}), (c:Company {name: 'Abans Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'K. J. C. Perera'}), (c:Company {name: 'Abans Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'R. Pestonjee'}), (c:Company {name: 'Abans Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'H. C. Embuldeniya'}), (c:Company {name: 'Abans Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'W. B. W. M. R. A. M. T. G. Aluwihare'}), (c:Company {name: 'Abans Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'D. S. Ratnayake'}), (c:Company {name: 'Abans Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'S. M. S. Sanjaya Bandara'}), (c:Company {name: 'Abans Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
// Step 5: Metrics;

// Query 22
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 27
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 28
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 31
// Step 6: HAS_METRIC Relationships - Year 2024;

// Query 32
MATCH (c:Company {name: 'Abans Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2863208000.0, r.year = 2024;

// Query 33
MATCH (c:Company {name: 'Abans Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1212448000.0, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'Abans Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11010321000.0, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Abans Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3079118000.0, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Abans Finance'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.73, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Abans Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.45, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Abans Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.42, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Abans Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 109412841.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Abans Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 104338050.0, r.year = 2024;

// Query 41
// Step 6: HAS_METRIC Relationships - Year 2023;

// Query 42
MATCH (c:Company {name: 'Abans Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2857850000.0, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Abans Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1420904000.0, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Abans Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11188660000.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Abans Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2969963000.0, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Abans Finance'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.28, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Abans Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.16, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Abans Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.82, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Abans Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 533228421.0, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Abans Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 355062487.0, r.year = 2023;

// Query 51
// Step 7: Sectors;

// Query 52
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 53
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 54
// Step 8: IN_SECTOR Relationships;

// Query 55
MATCH (c:Company {name: 'Abans Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 56
MATCH (c:Company {name: 'Abans Finance'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 57
// Step 9: Products;

// Query 58
MERGE (p:Product {name: 'Deposits'}) ON CREATE SET p.id = 'deposits';

// Query 59
MERGE (p:Product {name: 'Finance Leasing'}) ON CREATE SET p.id = 'finance_leasing';

// Query 60
MERGE (p:Product {name: 'Hire Purchase'}) ON CREATE SET p.id = 'hire_purchase';

// Query 61
MERGE (p:Product {name: 'Mortgage Loans'}) ON CREATE SET p.id = 'mortgage_loans';

// Query 62
MERGE (p:Product {name: 'Personal Loans'}) ON CREATE SET p.id = 'personal_loans';

// Query 63
MERGE (p:Product {name: 'Capital Market Operations'}) ON CREATE SET p.id = 'capital_market_operations';

// Query 64
MERGE (p:Product {name: 'Term Loans'}) ON CREATE SET p.id = 'term_loans';

// Query 65
// Step 10: OFFERS Relationships;

// Query 66
MATCH (c:Company {name: 'Abans Finance'}), (p:Product {name: 'Deposits'}) MERGE (c)-[:OFFERS]->(p);

// Query 67
MATCH (c:Company {name: 'Abans Finance'}), (p:Product {name: 'Finance Leasing'}) MERGE (c)-[:OFFERS]->(p);

// Query 68
MATCH (c:Company {name: 'Abans Finance'}), (p:Product {name: 'Hire Purchase'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Abans Finance'}), (p:Product {name: 'Mortgage Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'Abans Finance'}), (p:Product {name: 'Personal Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Abans Finance'}), (p:Product {name: 'Capital Market Operations'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Abans Finance'}), (p:Product {name: 'Term Loans'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 72
// Generated on: 2025-10-03T01:16:04.267830
