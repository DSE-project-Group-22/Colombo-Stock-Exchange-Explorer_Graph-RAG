// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Union Bank of Colombo'}) ON CREATE SET c.id = 'union_bank_of_colombo', c.founded_on = date('1995-02-02'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor - Not explicitly named in the provided text, skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Dilshan Peter Nirosh Rodrigo'}) ON CREATE SET p.id = 'dilshan_peter_nirosh_rodrigo';

// Query 6
MERGE (p:Person {name: 'Malay Mukherjee'}) ON CREATE SET p.id = 'malay_mukherjee';

// Query 7
MERGE (p:Person {name: 'Sanjay Pokhrel'}) ON CREATE SET p.id = 'sanjay_pokhrel';

// Query 8
MERGE (p:Person {name: 'Dilshani Gayathri Wijayawardana'}) ON CREATE SET p.id = 'dilshani_gayathri_wijayawardana';

// Query 9
MERGE (p:Person {name: 'Ahamed Sabry Ibrahim'}) ON CREATE SET p.id = 'ahamed_sabry_ibrahim';

// Query 10
MERGE (p:Person {name: 'Dharmasri Kumaratunge'}) ON CREATE SET p.id = 'dharmasri_kumaratunge';

// Query 11
MERGE (p:Person {name: 'Mahesh Nanayakkara'}) ON CREATE SET p.id = 'mahesh_nanayakkara';

// Query 12
MERGE (p:Person {name: 'Laswie Tsung'}) ON CREATE SET p.id = 'laswie_tsung';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'Dilshan Peter Nirosh Rodrigo'}), (c:Company {name: 'Union Bank of Colombo'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-08-16');

// Query 15
MATCH (p:Person {name: 'Dilshan Peter Nirosh Rodrigo'}), (c:Company {name: 'Union Bank of Colombo'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-08-16');

// Query 16
MATCH (p:Person {name: 'Malay Mukherjee'}), (c:Company {name: 'Union Bank of Colombo'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 17
MATCH (p:Person {name: 'Sanjay Pokhrel'}), (c:Company {name: 'Union Bank of Colombo'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 18
MATCH (p:Person {name: 'Dilshani Gayathri Wijayawardana'}), (c:Company {name: 'Union Bank of Colombo'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 19
MATCH (p:Person {name: 'Ahamed Sabry Ibrahim'}), (c:Company {name: 'Union Bank of Colombo'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 20
MATCH (p:Person {name: 'Dharmasri Kumaratunge'}), (c:Company {name: 'Union Bank of Colombo'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-11-27');

// Query 21
MATCH (p:Person {name: 'Mahesh Nanayakkara'}), (c:Company {name: 'Union Bank of Colombo'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-06');

// Query 22
MATCH (p:Person {name: 'Laswie Tsung'}), (c:Company {name: 'Union Bank of Colombo'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-12-31');

// Query 23
// Step 5: Metrics;

// Query 24
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 29
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 30
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 33
// Step 6: HAS_METRIC Relationships;

// Query 34
MATCH (c:Company {name: 'Union Bank of Colombo'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2051106000, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Union Bank of Colombo'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1807433000, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Union Bank of Colombo'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 657278000, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Union Bank of Colombo'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 780244000, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Union Bank of Colombo'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 300202000, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Union Bank of Colombo'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 379206000, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Union Bank of Colombo'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5616545000, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Union Bank of Colombo'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7174413000, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Union Bank of Colombo'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.4, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Union Bank of Colombo'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.3, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Union Bank of Colombo'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.0, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Union Bank of Colombo'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.8, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Union Bank of Colombo'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.28, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Union Bank of Colombo'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.35, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Union Bank of Colombo'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19840358000, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Union Bank of Colombo'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19264026000, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Union Bank of Colombo'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 147191673000, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Union Bank of Colombo'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 139087719000, r.year = 2023;

// Query 52
// Step 7: Sectors;

// Query 53
MERGE (s:Sector {name: 'Banks'}) ON CREATE SET s.id = 'banks';

// Query 54
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 55
// Step 8: IN_SECTOR Relationships;

// Query 56
MATCH (c:Company {name: 'Union Bank of Colombo'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 57
// Step 9: Product nodes creation;

// Query 58
MERGE (p:Product {name: 'Commercial Banking'}) ON CREATE SET p.id = 'commercial_banking';

// Query 59
MERGE (p:Product {name: 'Deposit Accounts'}) ON CREATE SET p.id = 'deposit_accounts';

// Query 60
MERGE (p:Product {name: 'Personal Banking'}) ON CREATE SET p.id = 'personal_banking';

// Query 61
MERGE (p:Product {name: 'Retail Banking'}) ON CREATE SET p.id = 'retail_banking';

// Query 62
MERGE (p:Product {name: 'Trade Financing'}) ON CREATE SET p.id = 'trade_financing';

// Query 63
MERGE (p:Product {name: 'Off-shore Banking'}) ON CREATE SET p.id = 'off_shore_banking';

// Query 64
MERGE (p:Product {name: 'Foreign Currency Operations'}) ON CREATE SET p.id = 'foreign_currency_operations';

// Query 65
MERGE (p:Product {name: 'Corporate Credit'}) ON CREATE SET p.id = 'corporate_credit';

// Query 66
MERGE (p:Product {name: 'Retail Credit'}) ON CREATE SET p.id = 'retail_credit';

// Query 67
MERGE (p:Product {name: 'Pawning'}) ON CREATE SET p.id = 'pawning';

// Query 68
MERGE (p:Product {name: 'Project Financing'}) ON CREATE SET p.id = 'project_financing';

// Query 69
MERGE (p:Product {name: 'Lease Financing'}) ON CREATE SET p.id = 'lease_financing';

// Query 70
MERGE (p:Product {name: 'Rural Credit'}) ON CREATE SET p.id = 'rural_credit';

// Query 71
MERGE (p:Product {name: 'Internet Banking'}) ON CREATE SET p.id = 'internet_banking';

// Query 72
MERGE (p:Product {name: 'Money Remittance Facilities'}) ON CREATE SET p.id = 'money_remittance_facilities';

// Query 73
MERGE (p:Product {name: 'Government Securities Dealing'}) ON CREATE SET p.id = 'government_securities_dealing';

// Query 74
MERGE (p:Product {name: 'Treasury Products'}) ON CREATE SET p.id = 'treasury_products';

// Query 75
MERGE (p:Product {name: 'Digital Banking'}) ON CREATE SET p.id = 'digital_banking';

// Query 76
MERGE (p:Product {name: 'AI-driven Financial Advisory Tools'}) ON CREATE SET p.id = 'ai_driven_financial_advisory_tools';

// Query 77
MERGE (p:Product {name: 'Blockchain Security Solutions'}) ON CREATE SET p.id = 'blockchain_security_solutions';

// Query 78
MERGE (p:Product {name: 'SME Offerings'}) ON CREATE SET p.id = 'sme_offerings';

// Query 79
MERGE (p:Product {name: 'Sustainable Investment Products'}) ON CREATE SET p.id = 'sustainable_investment_products';

// Query 80
MERGE (p:Product {name: 'Cash Management Solutions'}) ON CREATE SET p.id = 'cash_management_solutions';

// Query 81
MERGE (p:Product {name: 'BizDirect Lite'}) ON CREATE SET p.id = 'bizdirect_lite';

// Query 82
// Step 10: OFFERS Relationships;

// Query 83
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Commercial Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Deposit Accounts'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Personal Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Retail Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Trade Financing'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Off-shore Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Foreign Currency Operations'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Corporate Credit'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Retail Credit'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Pawning'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Project Financing'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Lease Financing'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Rural Credit'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Internet Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Money Remittance Facilities'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Government Securities Dealing'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Treasury Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Digital Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 101
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'AI-driven Financial Advisory Tools'}) MERGE (c)-[:OFFERS]->(p);

// Query 102
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Blockchain Security Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 103
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'SME Offerings'}) MERGE (c)-[:OFFERS]->(p);

// Query 104
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Sustainable Investment Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 105
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'Cash Management Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 106
MATCH (c:Company {name: 'Union Bank of Colombo'}), (p:Product {name: 'BizDirect Lite'}) MERGE (c)-[:OFFERS]->(p);

// Query 107
// Step 11: Subsidiary Companies;

// Query 108
MERGE (sub1:Company {name: 'National Asset Management'}) ON CREATE SET sub1.id = 'national_asset_management', sub1.region = 'Sri Lanka';

// Query 109
MERGE (sub2:Company {name: 'UB Finance'}) ON CREATE SET sub2.id = 'ub_finance', sub2.region = 'Sri Lanka';

// Query 110
// Step 12: Subsidiary IN_SECTOR Relationships;

// Query 111
MATCH (sub1:Company {name: 'National Asset Management'}), (s:Sector {name: 'Diversified Financials'}) MERGE (sub1)-[:IN_SECTOR]->(s);

// Query 112
MATCH (sub2:Company {name: 'UB Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (sub2)-[:IN_SECTOR]->(s);

// Query 113
// Step 13: Company-Company Relationships (MANAGES);

// Query 114
MATCH (manager:Company {name: 'Union Bank of Colombo'}), (managed:Company {name: 'National Asset Management'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Fund Management', r.as_of = date('2024-12-31');

// Total queries: 114
// Generated on: 2025-10-03T02:51:40.717829
