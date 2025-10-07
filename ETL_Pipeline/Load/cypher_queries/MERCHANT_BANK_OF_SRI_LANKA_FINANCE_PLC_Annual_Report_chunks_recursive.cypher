// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}) ON CREATE SET c.id = 'merchant_bank_of_sri_lanka_and_finance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No auditor found matching the hardcoded list of firms.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'A M A Perera'}) ON CREATE SET p.id = 'a_m_a_perera';

// Query 6
MERGE (p:Person {name: 'N S Punchihewa'}) ON CREATE SET p.id = 'n_s_punchihewa';

// Query 7
MERGE (p:Person {name: 'G A Jayashantha'}) ON CREATE SET p.id = 'g_a_jayashantha';

// Query 8
MERGE (p:Person {name: 'J D V N Jayasinghe'}) ON CREATE SET p.id = 'j_d_v_n_jayasinghe';

// Query 9
MERGE (p:Person {name: 'R M N Jeewantha'}) ON CREATE SET p.id = 'r_m_n_jeewantha';

// Query 10
MERGE (p:Person {name: 'H P K Silva'}) ON CREATE SET p.id = 'h_p_k_silva';

// Query 11
MERGE (p:Person {name: 'Y A Jayathilaka'}) ON CREATE SET p.id = 'y_a_jayathilaka';

// Query 12
MERGE (p:Person {name: 'R Dulani Fernando'}) ON CREATE SET p.id = 'r_dulani_fernando';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'A M A Perera'}), (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 15
MATCH (p:Person {name: 'A M A Perera'}), (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 16
MATCH (p:Person {name: 'N S Punchihewa'}), (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 17
MATCH (p:Person {name: 'G A Jayashantha'}), (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 18
MATCH (p:Person {name: 'J D V N Jayasinghe'}), (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 19
MATCH (p:Person {name: 'R M N Jeewantha'}), (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 20
MATCH (p:Person {name: 'H P K Silva'}), (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 21
MATCH (p:Person {name: 'Y A Jayathilaka'}), (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 22
MATCH (p:Person {name: 'R Dulani Fernando'}), (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-09-27');

// Query 23
// Step 5: Metrics;

// Query 24
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 32
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Times';

// Query 33
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 34
// Step 6: HAS_METRIC Relationships;

// Query 35
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2187000000.0, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1640000000.0, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7583000000.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7478000000.0, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 843000000.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 266000000.0, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 446000000.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 68000000.0, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 240000000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21000000.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40200000000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33699000000.0, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3882000000.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3671000000.0, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.37, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.60, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.29, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.84, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.46, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.04, r.year = 2023;

// Query 55
// Step 7: Sectors;

// Query 56
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 57
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 58
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 59
// Step 8: IN_SECTOR Relationships;

// Query 60
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 61
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 62
// Step 9: Product nodes creation;

// Query 63
MERGE (p:Product {name: 'Lease and Hire-Purchase'}) ON CREATE SET p.id = 'lease_and_hire_purchase';

// Query 64
MERGE (p:Product {name: 'Loans and Receivables'}) ON CREATE SET p.id = 'loans_and_receivables';

// Query 65
MERGE (p:Product {name: 'Corporate Advisory Services'}) ON CREATE SET p.id = 'corporate_advisory_services';

// Query 66
MERGE (p:Product {name: 'Capital Market Operations'}) ON CREATE SET p.id = 'capital_market_operations';

// Query 67
MERGE (p:Product {name: 'Micro Financing'}) ON CREATE SET p.id = 'micro_financing';

// Query 68
MERGE (p:Product {name: 'Agricultural Credit Facilities'}) ON CREATE SET p.id = 'agricultural_credit_facilities';

// Query 69
MERGE (p:Product {name: 'Real Estate Services'}) ON CREATE SET p.id = 'real_estate_services';

// Query 70
MERGE (p:Product {name: 'Gold Loans'}) ON CREATE SET p.id = 'gold_loans';

// Query 71
MERGE (p:Product {name: 'Savings Accounts'}) ON CREATE SET p.id = 'savings_accounts';

// Query 72
MERGE (p:Product {name: 'Fixed Deposits'}) ON CREATE SET p.id = 'fixed_deposits';

// Query 73
// Step 10: OFFERS relationships;

// Query 74
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (p:Product {name: 'Lease and Hire-Purchase'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (p:Product {name: 'Loans and Receivables'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (p:Product {name: 'Corporate Advisory Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (p:Product {name: 'Capital Market Operations'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (p:Product {name: 'Micro Financing'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (p:Product {name: 'Agricultural Credit Facilities'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (p:Product {name: 'Real Estate Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (p:Product {name: 'Gold Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (p:Product {name: 'Savings Accounts'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (p:Product {name: 'Fixed Deposits'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
// Step 11: Company-Company relationships (Subsidiary/Associate);

// Query 85
MERGE (sub:Company {name: 'MBSL Insurance Company'}) ON CREATE SET sub.id = 'mbsl_insurance_company';

// Query 86
MERGE (ass:Company {name: 'Lanka Securities'}) ON CREATE SET ass.id = 'lanka_securities';

// Query 87
MATCH (sub:Company {name: 'MBSL Insurance Company'}), (s:Sector {name: 'Insurance'}) MERGE (sub)-[:IN_SECTOR]->(s);

// Query 88
MATCH (ass:Company {name: 'Lanka Securities'}), (s:Sector {name: 'Diversified Financials'}) MERGE (ass)-[:IN_SECTOR]->(s);

// Query 89
MERGE (p:Product {name: 'Life Insurance'}) ON CREATE SET p.id = 'life_insurance';

// Query 90
MERGE (p:Product {name: 'General Insurance'}) ON CREATE SET p.id = 'general_insurance';

// Query 91
MERGE (p:Product {name: 'Equity Trading'}) ON CREATE SET p.id = 'equity_trading';

// Query 92
MERGE (p:Product {name: 'Debt Trading'}) ON CREATE SET p.id = 'debt_trading';

// Query 93
MERGE (p:Product {name: 'Margin Trading'}) ON CREATE SET p.id = 'margin_trading';

// Query 94
MATCH (sub:Company {name: 'MBSL Insurance Company'}), (p:Product {name: 'Life Insurance'}) MERGE (sub)-[:OFFERS]->(p);

// Query 95
MATCH (sub:Company {name: 'MBSL Insurance Company'}), (p:Product {name: 'General Insurance'}) MERGE (sub)-[:OFFERS]->(p);

// Query 96
MATCH (ass:Company {name: 'Lanka Securities'}), (p:Product {name: 'Equity Trading'}) MERGE (ass)-[:OFFERS]->(p);

// Query 97
MATCH (ass:Company {name: 'Lanka Securities'}), (p:Product {name: 'Debt Trading'}) MERGE (ass)-[:OFFERS]->(p);

// Query 98
MATCH (ass:Company {name: 'Lanka Securities'}), (p:Product {name: 'Margin Trading'}) MERGE (ass)-[:OFFERS]->(p);

// Total queries: 98
// Generated on: 2025-10-03T02:04:05.567939
