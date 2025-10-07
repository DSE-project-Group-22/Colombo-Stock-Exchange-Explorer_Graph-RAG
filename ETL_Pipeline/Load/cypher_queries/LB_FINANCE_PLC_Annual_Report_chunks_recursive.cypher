// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'LB Finance'}) ON CREATE SET c.id = 'lb_finance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No explicit auditor name found in the provided text that matches the hardcoded list. Skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Sumith Adhihetty'}) ON CREATE SET p.id = 'sumith_adhihetty';

// Query 6
MERGE (p:Person {name: 'Niroshan Udage'}) ON CREATE SET p.id = 'niroshan_udage';

// Query 7
MERGE (p:Person {name: 'B D A Perera'}) ON CREATE SET p.id = 'b_d_a_perera';

// Query 8
MERGE (p:Person {name: 'Ravindra Yatawara'}) ON CREATE SET p.id = 'ravindra_yatawara';

// Query 9
MERGE (p:Person {name: 'G A R D Prasanna'}) ON CREATE SET p.id = 'g_a_r_d_prasanna';

// Query 10
MERGE (p:Person {name: 'Ashane Jayasekara'}) ON CREATE SET p.id = 'ashane_jayasekara';

// Query 11
MERGE (p:Person {name: 'Yogadinusha Bhaskaran'}) ON CREATE SET p.id = 'yogadinusha_bhaskaran';

// Query 12
MERGE (p:Person {name: 'Ashwini Natesan'}) ON CREATE SET p.id = 'ashwini_natesan';

// Query 13
MERGE (p:Person {name: 'Dharmadasa Rangalle'}) ON CREATE SET p.id = 'dharmadasa_rangalle';

// Query 14
MERGE (p:Person {name: 'Yanika Amarasekera'}) ON CREATE SET p.id = 'yanika_amarasekera';

// Query 15
// Step 4: HOLDS_POSITION Relationships;

// Query 16
MATCH (p:Person {name: 'Sumith Adhihetty'}), (c:Company {name: 'LB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-05-27');

// Query 17
MATCH (p:Person {name: 'Niroshan Udage'}), (c:Company {name: 'LB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Managing Director', r.as_of = date('2024-05-27');

// Query 18
MATCH (p:Person {name: 'B D A Perera'}), (c:Company {name: 'LB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-05-27');

// Query 19
MATCH (p:Person {name: 'Ravindra Yatawara'}), (c:Company {name: 'LB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-05-27');

// Query 20
MATCH (p:Person {name: 'G A R D Prasanna'}), (c:Company {name: 'LB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2022-03-01');

// Query 21
MATCH (p:Person {name: 'Ashane Jayasekara'}), (c:Company {name: 'LB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2022-03-01');

// Query 22
MATCH (p:Person {name: 'Yogadinusha Bhaskaran'}), (c:Company {name: 'LB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-05-27');

// Query 23
MATCH (p:Person {name: 'Ashwini Natesan'}), (c:Company {name: 'LB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-05-27');

// Query 24
MATCH (p:Person {name: 'Dharmadasa Rangalle'}), (c:Company {name: 'LB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-05-27');

// Query 25
MATCH (p:Person {name: 'Yanika Amarasekera'}), (c:Company {name: 'LB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-05-27');

// Query 26
// Step 5: Metrics;

// Query 27
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 32
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 33
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 35
// Step 6: HAS_METRIC Relationships;

// Query 36
MATCH (c:Company {name: 'LB Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 49230000000.0, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'LB Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42760000000.0, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'LB Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24487000000.0, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'LB Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19028000000.0, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'LB Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15180000000.0, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'LB Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11747000000.0, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'LB Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9564000000.0, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'LB Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8460000000.0, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'LB Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23.40, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'LB Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23.78, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'LB Finance'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.44, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'LB Finance'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.60, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'LB Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 43626000000.0, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'LB Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38116000000.0, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'LB Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.26, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'LB Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.27, r.year = 2023;

// Query 52
// Step 7: Sectors;

// Query 53
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 54
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 55
// Step 8: IN_SECTOR Relationships;

// Query 56
MATCH (c:Company {name: 'LB Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 57
MATCH (c:Company {name: 'LB Finance'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 58
// Step 9: Products;

// Query 59
MERGE (p:Product {name: 'Fixed Deposits'}) ON CREATE SET p.id = 'fixed_deposits';

// Query 60
MERGE (p:Product {name: 'Savings Accounts'}) ON CREATE SET p.id = 'savings_accounts';

// Query 61
MERGE (p:Product {name: 'Finance Lease'}) ON CREATE SET p.id = 'finance_lease';

// Query 62
MERGE (p:Product {name: 'Mortgage Loans'}) ON CREATE SET p.id = 'mortgage_loans';

// Query 63
MERGE (p:Product {name: 'Gold Loans'}) ON CREATE SET p.id = 'gold_loans';

// Query 64
MERGE (p:Product {name: 'Personal Loans'}) ON CREATE SET p.id = 'personal_loans';

// Query 65
MERGE (p:Product {name: 'Credit Facilities'}) ON CREATE SET p.id = 'credit_facilities';

// Query 66
MERGE (p:Product {name: 'Digital Financial Services'}) ON CREATE SET p.id = 'digital_financial_services';

// Query 67
MERGE (p:Product {name: 'Value Added Services'}) ON CREATE SET p.id = 'value_added_services';

// Query 68
MERGE (p:Product {name: 'Microfinance Lending'}) ON CREATE SET p.id = 'microfinance_lending';

// Query 69
// Step 10: OFFERS Relationships;

// Query 70
MATCH (c:Company {name: 'LB Finance'}), (p:Product {name: 'Fixed Deposits'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'LB Finance'}), (p:Product {name: 'Savings Accounts'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'LB Finance'}), (p:Product {name: 'Finance Lease'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'LB Finance'}), (p:Product {name: 'Mortgage Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'LB Finance'}), (p:Product {name: 'Gold Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'LB Finance'}), (p:Product {name: 'Personal Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
MATCH (c:Company {name: 'LB Finance'}), (p:Product {name: 'Credit Facilities'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
MATCH (c:Company {name: 'LB Finance'}), (p:Product {name: 'Digital Financial Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'LB Finance'}), (p:Product {name: 'Value Added Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'LB Finance'}), (p:Product {name: 'Microfinance Lending'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
// Step 11: Company-Company Relationships (OWNS, MANAGES);

// Query 81
MERGE (child:Company {name: 'LB Microfinance Myanmar'}) ON CREATE SET child.id = 'lb_microfinance_myanmar', child.region = 'Myanmar';

// Query 82
MATCH (parent:Company {name: 'LB Finance'}), (child:Company {name: 'LB Microfinance Myanmar'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Total queries: 82
// Generated on: 2025-10-03T01:04:38.471190
