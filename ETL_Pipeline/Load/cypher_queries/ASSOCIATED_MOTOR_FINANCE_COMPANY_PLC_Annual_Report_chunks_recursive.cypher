// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Associated Motor Finance Company'}) ON CREATE SET c.id = 'associated_motor_finance_company', c.founded_on = date('1962-07-25'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Deloitte'}) ON CREATE SET a.id = 'deloitte', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (a:Auditor {name: 'Deloitte'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'K D U S Nanayakkara'}) ON CREATE SET p.id = 'k_d_u_s_nanayakkara';

// Query 9
MERGE (p:Person {name: 'J P I N Dayawansa'}) ON CREATE SET p.id = 'j_p_i_n_dayawansa';

// Query 10
MERGE (p:Person {name: 'A S Dayawansa'}) ON CREATE SET p.id = 'a_s_dayawansa';

// Query 11
MERGE (p:Person {name: 'J P I S Dayawansa'}) ON CREATE SET p.id = 'j_p_i_s_dayawansa';

// Query 12
MERGE (p:Person {name: 'T M A Sallay'}) ON CREATE SET p.id = 't_m_a_sallay';

// Query 13
MERGE (p:Person {name: 'T G Kandamby'}) ON CREATE SET p.id = 't_g_kandamby';

// Query 14
MERGE (p:Person {name: 'R Wijegunawardane'}) ON CREATE SET p.id = 'r_wijegunawardane';

// Query 15
MERGE (p:Person {name: 'P S Goonewardene'}) ON CREATE SET p.id = 'p_s_goonewardene';

// Query 16
MERGE (p:Person {name: 'N M Pieris'}) ON CREATE SET p.id = 'n_m_pieris';

// Query 17
// Step 5: HOLDS_POSITION Relationships;

// Query 18
MATCH (p:Person {name: 'K D U S Nanayakkara'}), (c:Company {name: 'Associated Motor Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-06-27');

// Query 19
MATCH (p:Person {name: 'K D U S Nanayakkara'}), (c:Company {name: 'Associated Motor Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-06-27');

// Query 20
MATCH (p:Person {name: 'J P I N Dayawansa'}), (c:Company {name: 'Associated Motor Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-06-27');

// Query 21
MATCH (p:Person {name: 'J P I N Dayawansa'}), (c:Company {name: 'Associated Motor Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-06-27');

// Query 22
MATCH (p:Person {name: 'A S Dayawansa'}), (c:Company {name: 'Associated Motor Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-06-27');

// Query 23
MATCH (p:Person {name: 'J P I S Dayawansa'}), (c:Company {name: 'Associated Motor Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-06-27');

// Query 24
MATCH (p:Person {name: 'T M A Sallay'}), (c:Company {name: 'Associated Motor Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-06-27');

// Query 25
MATCH (p:Person {name: 'T M A Sallay'}), (c:Company {name: 'Associated Motor Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-06-27');

// Query 26
MATCH (p:Person {name: 'T G Kandamby'}), (c:Company {name: 'Associated Motor Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-06-27');

// Query 27
MATCH (p:Person {name: 'R Wijegunawardane'}), (c:Company {name: 'Associated Motor Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-06-27');

// Query 28
MATCH (p:Person {name: 'P S Goonewardene'}), (c:Company {name: 'Associated Motor Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-06-27');

// Query 29
MATCH (p:Person {name: 'N M Pieris'}), (c:Company {name: 'Associated Motor Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-06-27');

// Query 30
// Step 6: Metrics;

// Query 31
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 38
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 39
// Step 7: HAS_METRIC Relationships;

// Query 40
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 607000000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 41
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 367000000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 42
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 492000000, r.year = 2022, r.as_of = date('2022-03-31');

// Query 43
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -9000000, r.year = 2021, r.as_of = date('2021-03-31');

// Query 44
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -75000000, r.year = 2020, r.as_of = date('2020-03-31');

// Query 45
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 318000000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 46
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 200000000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 47
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 299000000, r.year = 2022, r.as_of = date('2022-03-31');

// Query 48
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6000000, r.year = 2021, r.as_of = date('2021-03-31');

// Query 49
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -167000000, r.year = 2020, r.as_of = date('2020-03-31');

// Query 50
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19300000000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 51
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16020000000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 52
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15160000000, r.year = 2022, r.as_of = date('2022-03-31');

// Query 53
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7700000000, r.year = 2021, r.as_of = date('2021-03-31');

// Query 54
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6500000000, r.year = 2020, r.as_of = date('2020-03-31');

// Query 55
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5072097000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 56
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3986499000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 57
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2580780000, r.year = 2022, r.as_of = date('2022-03-31');

// Query 58
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1158899000, r.year = 2021, r.as_of = date('2021-03-31');

// Query 59
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1460241000, r.year = 2020, r.as_of = date('2020-03-31');

// Query 60
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2149998000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 61
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1693230000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 62
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 948513000, r.year = 2022, r.as_of = date('2022-03-31');

// Query 63
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 410619000, r.year = 2021, r.as_of = date('2021-03-31');

// Query 64
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 466611000, r.year = 2020, r.as_of = date('2020-03-31');

// Query 65
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.81, r.year = 2024, r.as_of = date('2024-03-31');

// Query 66
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.77, r.year = 2023, r.as_of = date('2023-03-31');

// Query 67
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.86, r.year = 2022, r.as_of = date('2022-03-31');

// Query 68
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.09, r.year = 2021, r.as_of = date('2021-03-31');

// Query 69
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.16, r.year = 2020, r.as_of = date('2020-03-31');

// Query 70
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.31, r.year = 2024, r.as_of = date('2024-03-31');

// Query 71
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.12, r.year = 2023, r.as_of = date('2023-03-31');

// Query 72
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.25, r.year = 2022, r.as_of = date('2022-03-31');

// Query 73
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.50, r.year = 2021, r.as_of = date('2021-03-31');

// Query 74
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.91, r.year = 2020, r.as_of = date('2020-03-31');

// Query 75
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3242000000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 76
// Step 8: Sectors;

// Query 77
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 78
// Step 9: IN_SECTOR Relationships;

// Query 79
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 80
// Step 10: Products;

// Query 81
MERGE (p:Product {name: 'Public Deposits'}) ON CREATE SET p.id = 'public_deposits';

// Query 82
MERGE (p:Product {name: 'Leasing and Hire Purchase'}) ON CREATE SET p.id = 'leasing_and_hire_purchase';

// Query 83
MERGE (p:Product {name: 'Islamic Finance'}) ON CREATE SET p.id = 'islamic_finance';

// Query 84
MERGE (p:Product {name: 'Real Estate Trading'}) ON CREATE SET p.id = 'real_estate_trading';

// Query 85
MERGE (p:Product {name: 'Vehicle Financing'}) ON CREATE SET p.id = 'vehicle_financing';

// Query 86
MERGE (p:Product {name: 'Term Loans'}) ON CREATE SET p.id = 'term_loans';

// Query 87
MERGE (p:Product {name: 'Share Trading'}) ON CREATE SET p.id = 'share_trading';

// Query 88
MERGE (p:Product {name: 'Mortgage Loans'}) ON CREATE SET p.id = 'mortgage_loans';

// Query 89
MERGE (p:Product {name: 'Personal Loans'}) ON CREATE SET p.id = 'personal_loans';

// Query 90
MERGE (p:Product {name: 'Time and Savings Deposits'}) ON CREATE SET p.id = 'time_and_savings_deposits';

// Query 91
// Step 11: OFFERS Relationships;

// Query 92
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (p:Product {name: 'Public Deposits'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (p:Product {name: 'Leasing and Hire Purchase'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (p:Product {name: 'Islamic Finance'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (p:Product {name: 'Real Estate Trading'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (p:Product {name: 'Vehicle Financing'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (p:Product {name: 'Term Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (p:Product {name: 'Share Trading'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (p:Product {name: 'Mortgage Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (p:Product {name: 'Personal Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 101
MATCH (c:Company {name: 'Associated Motor Finance Company'}), (p:Product {name: 'Time and Savings Deposits'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 101
// Generated on: 2025-10-03T02:24:18.814998
