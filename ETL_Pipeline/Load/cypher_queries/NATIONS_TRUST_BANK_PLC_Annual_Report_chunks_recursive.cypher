// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Nations Trust Bank'}) ON CREATE SET c.id = 'nations_trust_bank', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Nations Trust Bank'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: Person Nodes;

// Query 8
MERGE (p:Person {name: 'Sherin Cader'}) ON CREATE SET p.id = 'sherin_cader';

// Query 9
MERGE (p:Person {name: 'Chanaka Wickramasuriya'}) ON CREATE SET p.id = 'chanaka_wickramasuriya';

// Query 10
MERGE (p:Person {name: 'Rachini Rajapaksa'}) ON CREATE SET p.id = 'rachini_rajapaksa';

// Query 11
MERGE (p:Person {name: 'Russell De Mel'}) ON CREATE SET p.id = 'russell_de_mel';

// Query 12
MERGE (p:Person {name: 'Arjun Fernando'}) ON CREATE SET p.id = 'arjun_fernando';

// Query 13
MERGE (p:Person {name: 'Ramesh Shanmuganathan'}) ON CREATE SET p.id = 'ramesh_shanmuganathan';

// Query 14
MERGE (p:Person {name: 'Chandika Hettiarachchi'}) ON CREATE SET p.id = 'chandika_hettiarachchi';

// Query 15
MERGE (p:Person {name: 'Sanjeev Jha'}) ON CREATE SET p.id = 'sanjeev_jha';

// Query 16
MERGE (p:Person {name: 'Hemantha D Gunetilleke'}) ON CREATE SET p.id = 'hemantha_d_gunetilleke';

// Query 17
MERGE (p:Person {name: 'Charitha Subasinghe'}) ON CREATE SET p.id = 'charitha_subasinghe';

// Query 18
MERGE (p:Person {name: 'Arjuna Wignaraja'}) ON CREATE SET p.id = 'arjuna_wignaraja';

// Query 19
MERGE (p:Person {name: 'Roshan Perera'}) ON CREATE SET p.id = 'roshan_perera';

// Query 20
MERGE (p:Person {name: 'Peshala Attygalle'}) ON CREATE SET p.id = 'peshala_attygalle';

// Query 21
// Step 5: HOLDS_POSITION Relationships;

// Query 22
MATCH (p:Person {name: 'Sherin Cader'}), (c:Company {name: 'Nations Trust Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairperson', r.as_of = date('2024-12-31');

// Query 23
MATCH (p:Person {name: 'Chanaka Wickramasuriya'}), (c:Company {name: 'Nations Trust Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 24
MATCH (p:Person {name: 'Rachini Rajapaksa'}), (c:Company {name: 'Nations Trust Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 25
MATCH (p:Person {name: 'Russell De Mel'}), (c:Company {name: 'Nations Trust Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 26
MATCH (p:Person {name: 'Arjun Fernando'}), (c:Company {name: 'Nations Trust Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 27
MATCH (p:Person {name: 'Ramesh Shanmuganathan'}), (c:Company {name: 'Nations Trust Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 28
MATCH (p:Person {name: 'Chandika Hettiarachchi'}), (c:Company {name: 'Nations Trust Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 29
MATCH (p:Person {name: 'Sanjeev Jha'}), (c:Company {name: 'Nations Trust Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 30
MATCH (p:Person {name: 'Hemantha D Gunetilleke'}), (c:Company {name: 'Nations Trust Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 31
MATCH (p:Person {name: 'Hemantha D Gunetilleke'}), (c:Company {name: 'Nations Trust Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-12-31');

// Query 32
MATCH (p:Person {name: 'Charitha Subasinghe'}), (c:Company {name: 'Nations Trust Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 33
MATCH (p:Person {name: 'Arjuna Wignaraja'}), (c:Company {name: 'Nations Trust Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 34
MATCH (p:Person {name: 'Roshan Perera'}), (c:Company {name: 'Nations Trust Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 35
MATCH (p:Person {name: 'Peshala Attygalle'}), (c:Company {name: 'Nations Trust Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-12-31');

// Query 36
// Step 6: Metric Nodes;

// Query 37
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 39
MERGE (m:Metric {name: 'Total Capital Ratio'}) ON CREATE SET m.id = 'total_capital_ratio', m.unit = '%';

// Query 40
MERGE (m:Metric {name: 'Liquidity Coverage Ratio'}) ON CREATE SET m.id = 'liquidity_coverage_ratio', m.unit = '%';

// Query 41
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 45
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 48
// Step 7: HAS_METRIC Relationships;

// Query 49
MATCH (c:Company {name: 'Nations Trust Bank'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16800000000.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Nations Trust Bank'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11500000000.0, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Nations Trust Bank'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24.2, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Nations Trust Bank'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21.3, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Nations Trust Bank'}), (m:Metric {name: 'Total Capital Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22.7, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Nations Trust Bank'}), (m:Metric {name: 'Total Capital Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.7, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Nations Trust Bank'}), (m:Metric {name: 'Liquidity Coverage Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 320.6, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Nations Trust Bank'}), (m:Metric {name: 'Liquidity Coverage Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 274.1, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Nations Trust Bank'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50.5, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Nations Trust Bank'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 34.7, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Nations Trust Bank'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 79500000000.0, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Nations Trust Bank'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 548550000000.0, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Nations Trust Bank'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 513660000000.0, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Nations Trust Bank'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.21, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Nations Trust Bank'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 41.54, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Nations Trust Bank'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 35915716000.0, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Nations Trust Bank'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47163594000.0, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'Nations Trust Bank'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44402173000.0, r.year = 2024;

// Query 67
// Step 8: Sector Nodes;

// Query 68
MERGE (s:Sector {name: 'Banks'}) ON CREATE SET s.id = 'banks';

// Query 69
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 70
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 71
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 72
// Step 9: IN_SECTOR Relationships;

// Query 73
MATCH (c:Company {name: 'Nations Trust Bank'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
MATCH (c:Company {name: 'Nations Trust Bank'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 75
MATCH (c:Company {name: 'Nations Trust Bank'}), (s:Sector {name: 'Insurance'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 76
MATCH (c:Company {name: 'Nations Trust Bank'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 77
// Step 10: Product Nodes;

// Query 78
MERGE (p:Product {name: 'Accepting Deposits'}) ON CREATE SET p.id = 'accepting_deposits';

// Query 79
MERGE (p:Product {name: 'Corporate Banking'}) ON CREATE SET p.id = 'corporate_banking';

// Query 80
MERGE (p:Product {name: 'Retail Banking'}) ON CREATE SET p.id = 'retail_banking';

// Query 81
MERGE (p:Product {name: 'Private Banking'}) ON CREATE SET p.id = 'private_banking';

// Query 82
MERGE (p:Product {name: 'Project Financing'}) ON CREATE SET p.id = 'project_financing';

// Query 83
MERGE (p:Product {name: 'Trade Finance'}) ON CREATE SET p.id = 'trade_finance';

// Query 84
MERGE (p:Product {name: 'Leasing'}) ON CREATE SET p.id = 'leasing';

// Query 85
MERGE (p:Product {name: 'Factoring'}) ON CREATE SET p.id = 'factoring';

// Query 86
MERGE (p:Product {name: 'Treasury Services'}) ON CREATE SET p.id = 'treasury_services';

// Query 87
MERGE (p:Product {name: 'Dealing in Government Securities'}) ON CREATE SET p.id = 'dealing_in_government_securities';

// Query 88
MERGE (p:Product {name: 'Investment Services'}) ON CREATE SET p.id = 'investment_services';

// Query 89
MERGE (p:Product {name: 'Foreign Currency Operations'}) ON CREATE SET p.id = 'foreign_currency_operations';

// Query 90
MERGE (p:Product {name: 'Money Remittance Facilities'}) ON CREATE SET p.id = 'money_remittance_facilities';

// Query 91
MERGE (p:Product {name: 'Travel Related Services'}) ON CREATE SET p.id = 'travel_related_services';

// Query 92
MERGE (p:Product {name: 'Credit Cards'}) ON CREATE SET p.id = 'credit_cards';

// Query 93
MERGE (p:Product {name: 'Debit Cards'}) ON CREATE SET p.id = 'debit_cards';

// Query 94
MERGE (p:Product {name: 'Telephone Banking'}) ON CREATE SET p.id = 'telephone_banking';

// Query 95
MERGE (p:Product {name: 'Internet Banking'}) ON CREATE SET p.id = 'internet_banking';

// Query 96
MERGE (p:Product {name: 'Mobile Banking'}) ON CREATE SET p.id = 'mobile_banking';

// Query 97
MERGE (p:Product {name: 'Foreign Exchange Trading'}) ON CREATE SET p.id = 'foreign_exchange_trading';

// Query 98
MERGE (p:Product {name: 'Fixed Income Security Trading'}) ON CREATE SET p.id = 'fixed_income_security_trading';

// Query 99
MERGE (p:Product {name: 'Assets & Liabilities Management'}) ON CREATE SET p.id = 'assets_and_liabilities_management';

// Query 100
MERGE (p:Product {name: 'Margin Trading'}) ON CREATE SET p.id = 'margin_trading';

// Query 101
MERGE (p:Product {name: 'Money Market Operations'}) ON CREATE SET p.id = 'money_market_operations';

// Query 102
MERGE (p:Product {name: 'Fund Management'}) ON CREATE SET p.id = 'fund_management';

// Query 103
MERGE (p:Product {name: 'Fee-Based Activities'}) ON CREATE SET p.id = 'fee_based_activities';

// Query 104
MERGE (p:Product {name: 'Insurance Broking'}) ON CREATE SET p.id = 'insurance_broking';

// Query 105
MERGE (p:Product {name: 'Renting Out Premises'}) ON CREATE SET p.id = 'renting_out_premises';

// Query 106
// Step 11: OFFERS Relationships;

// Query 107
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Accepting Deposits'}) MERGE (c)-[:OFFERS]->(p);

// Query 108
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Corporate Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 109
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Retail Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 110
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Private Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 111
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Project Financing'}) MERGE (c)-[:OFFERS]->(p);

// Query 112
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Trade Finance'}) MERGE (c)-[:OFFERS]->(p);

// Query 113
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Leasing'}) MERGE (c)-[:OFFERS]->(p);

// Query 114
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Factoring'}) MERGE (c)-[:OFFERS]->(p);

// Query 115
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Treasury Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 116
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Dealing in Government Securities'}) MERGE (c)-[:OFFERS]->(p);

// Query 117
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Investment Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 118
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Foreign Currency Operations'}) MERGE (c)-[:OFFERS]->(p);

// Query 119
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Money Remittance Facilities'}) MERGE (c)-[:OFFERS]->(p);

// Query 120
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Travel Related Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 121
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Credit Cards'}) MERGE (c)-[:OFFERS]->(p);

// Query 122
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Debit Cards'}) MERGE (c)-[:OFFERS]->(p);

// Query 123
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Telephone Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 124
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Internet Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 125
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Mobile Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 126
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Foreign Exchange Trading'}) MERGE (c)-[:OFFERS]->(p);

// Query 127
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Fixed Income Security Trading'}) MERGE (c)-[:OFFERS]->(p);

// Query 128
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Assets & Liabilities Management'}) MERGE (c)-[:OFFERS]->(p);

// Query 129
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Margin Trading'}) MERGE (c)-[:OFFERS]->(p);

// Query 130
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Money Market Operations'}) MERGE (c)-[:OFFERS]->(p);

// Query 131
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Fund Management'}) MERGE (c)-[:OFFERS]->(p);

// Query 132
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Fee-Based Activities'}) MERGE (c)-[:OFFERS]->(p);

// Query 133
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Insurance Broking'}) MERGE (c)-[:OFFERS]->(p);

// Query 134
MATCH (c:Company {name: 'Nations Trust Bank'}), (p:Product {name: 'Renting Out Premises'}) MERGE (c)-[:OFFERS]->(p);

// Query 135
// Step 12: Subsidiary Company Nodes;

// Query 136
MERGE (sub1:Company {name: 'Allied Properties'}) ON CREATE SET sub1.id = 'allied_properties';

// Query 137
MERGE (sub2:Company {name: 'Nations Insurance Brokers'}) ON CREATE SET sub2.id = 'nations_insurance_brokers';

// Query 138
// Step 13: MANAGES Relationships;

// Query 139
MATCH (manager:Company {name: 'Nations Trust Bank'}), (managed:Company {name: 'Allied Properties'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Property Management';

// Query 140
MATCH (manager:Company {name: 'Nations Trust Bank'}), (managed:Company {name: 'Nations Insurance Brokers'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Insurance Broking';

// Total queries: 140
// Generated on: 2025-10-03T03:22:33.620471
