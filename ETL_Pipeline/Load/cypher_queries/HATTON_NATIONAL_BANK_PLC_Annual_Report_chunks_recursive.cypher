// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Hatton National Bank'}) ON CREATE SET c.id = 'hatton_national_bank', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No specific auditor firm name found matching the hardcoded list. Skipping auditor creation and AUDITED_BY relationship.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Nihal Jayawardene'}) ON CREATE SET p.id = 'nihal_jayawardene';

// Query 6
MERGE (p:Person {name: 'Damith Pallewatte'}) ON CREATE SET p.id = 'damith_pallewatte';

// Query 7
MERGE (p:Person {name: 'Devaka Cooray'}) ON CREATE SET p.id = 'devaka_cooray';

// Query 8
MERGE (p:Person {name: 'Madura Ratnayake'}) ON CREATE SET p.id = 'madura_ratnayake';

// Query 9
MERGE (p:Person {name: 'Rimoe Saldin'}) ON CREATE SET p.id = 'rimoe_saldin';

// Query 10
MERGE (p:Person {name: 'Rasitha Gunawardana'}) ON CREATE SET p.id = 'rasitha_gunawardana';

// Query 11
MERGE (p:Person {name: 'Kithsiri Gunawardena'}) ON CREATE SET p.id = 'kithsiri_gunawardena';

// Query 12
MERGE (p:Person {name: 'Prasad Samarasinghe'}) ON CREATE SET p.id = 'prasad_samarasinghe';

// Query 13
MERGE (p:Person {name: 'Nanda Fernando'}) ON CREATE SET p.id = 'nanda_fernando';

// Query 14
MERGE (p:Person {name: 'Sivakrishnarajah Renganathan'}) ON CREATE SET p.id = 'sivakrishnarajah_renganathan';

// Query 15
MERGE (p:Person {name: 'Suresh Shah'}) ON CREATE SET p.id = 'suresh_shah';

// Query 16
MERGE (p:Person {name: 'Dilani Champika Alagaratnam Goonatilleke'}) ON CREATE SET p.id = 'dilani_champika_alagaratnam_goonatilleke';

// Query 17
MERGE (p:Person {name: 'Shiromi Halloluwa'}) ON CREATE SET p.id = 'shiromi_halloluwa';

// Query 18
// Step 4: HOLDS_POSITION Relationships;

// Query 19
MATCH (p:Person {name: 'Nihal Jayawardene'}), (c:Company {name: 'Hatton National Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-02-21');

// Query 20
MATCH (p:Person {name: 'Damith Pallewatte'}), (c:Company {name: 'Hatton National Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2025-02-21');

// Query 21
MATCH (p:Person {name: 'Damith Pallewatte'}), (c:Company {name: 'Hatton National Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2025-02-21');

// Query 22
MATCH (p:Person {name: 'Devaka Cooray'}), (c:Company {name: 'Hatton National Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-02-21');

// Query 23
MATCH (p:Person {name: 'Madura Ratnayake'}), (c:Company {name: 'Hatton National Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-02-21');

// Query 24
MATCH (p:Person {name: 'Rimoe Saldin'}), (c:Company {name: 'Hatton National Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-02-21');

// Query 25
MATCH (p:Person {name: 'Rasitha Gunawardana'}), (c:Company {name: 'Hatton National Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-02-21');

// Query 26
MATCH (p:Person {name: 'Kithsiri Gunawardena'}), (c:Company {name: 'Hatton National Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-02-21');

// Query 27
MATCH (p:Person {name: 'Prasad Samarasinghe'}), (c:Company {name: 'Hatton National Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-02-21');

// Query 28
MATCH (p:Person {name: 'Nanda Fernando'}), (c:Company {name: 'Hatton National Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-02-21');

// Query 29
MATCH (p:Person {name: 'Sivakrishnarajah Renganathan'}), (c:Company {name: 'Hatton National Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-02-21');

// Query 30
MATCH (p:Person {name: 'Suresh Shah'}), (c:Company {name: 'Hatton National Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-02-21');

// Query 31
MATCH (p:Person {name: 'Dilani Champika Alagaratnam Goonatilleke'}), (c:Company {name: 'Hatton National Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-02-21');

// Query 32
MATCH (p:Person {name: 'Shiromi Halloluwa'}), (c:Company {name: 'Hatton National Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2025-02-21');

// Query 33
// Step 5: Metrics;

// Query 34
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 42
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 43
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 44
// Step 6: HAS_METRIC Relationships;

// Query 45
MATCH (c:Company {name: 'Hatton National Bank'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 79821000000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Hatton National Bank'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 32689000000.0, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Hatton National Bank'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 41341793000.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Hatton National Bank'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20353118000.0, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Hatton National Bank'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 231479275000.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Hatton National Bank'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 184977177000.0, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Hatton National Bank'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2078538056000.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Hatton National Bank'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1934252484000.0, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Hatton National Bank'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 190870000000.0, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Hatton National Bank'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 299139000000.0, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Hatton National Bank'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 96288000000.0, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Hatton National Bank'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 104342000000.0, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Hatton National Bank'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 100355000000.0, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Hatton National Bank'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42823000000.0, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Hatton National Bank'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.85, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Hatton National Bank'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.82, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'Hatton National Bank'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.85, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Hatton National Bank'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.55, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Hatton National Bank'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 76.14, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'Hatton National Bank'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39.82, r.year = 2023;

// Query 65
// Step 7: Sectors;

// Query 66
MERGE (s:Sector {name: 'Banks'}) ON CREATE SET s.id = 'banks';

// Query 67
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 68
// Step 8: IN_SECTOR Relationships;

// Query 69
MATCH (c:Company {name: 'Hatton National Bank'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 70
// Step 9: Product nodes creation;

// Query 71
MERGE (p:Product {name: 'Retail Banking'}) ON CREATE SET p.id = 'retail_banking';

// Query 72
MERGE (p:Product {name: 'Corporate Banking'}) ON CREATE SET p.id = 'corporate_banking';

// Query 73
MERGE (p:Product {name: 'Investment Banking'}) ON CREATE SET p.id = 'investment_banking';

// Query 74
MERGE (p:Product {name: 'Leasing'}) ON CREATE SET p.id = 'leasing';

// Query 75
MERGE (p:Product {name: 'Debit Cards'}) ON CREATE SET p.id = 'debit_cards';

// Query 76
MERGE (p:Product {name: 'Credit Cards'}) ON CREATE SET p.id = 'credit_cards';

// Query 77
MERGE (p:Product {name: 'Internet Banking'}) ON CREATE SET p.id = 'internet_banking';

// Query 78
MERGE (p:Product {name: 'Mobile Banking'}) ON CREATE SET p.id = 'mobile_banking';

// Query 79
MERGE (p:Product {name: 'Digital Banking Services'}) ON CREATE SET p.id = 'digital_banking_services';

// Query 80
MERGE (p:Product {name: 'Bancassurance'}) ON CREATE SET p.id = 'bancassurance';

// Query 81
MERGE (p:Product {name: 'Islamic Banking Products'}) ON CREATE SET p.id = 'islamic_banking_products';

// Query 82
MERGE (p:Product {name: 'Money Remittance Facilities'}) ON CREATE SET p.id = 'money_remittance_facilities';

// Query 83
MERGE (p:Product {name: 'Pawning'}) ON CREATE SET p.id = 'pawning';

// Query 84
MERGE (p:Product {name: 'Margin Trading'}) ON CREATE SET p.id = 'margin_trading';

// Query 85
// Step 10: OFFERS relationships;

// Query 86
MATCH (c:Company {name: 'Hatton National Bank'}), (p:Product {name: 'Retail Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Hatton National Bank'}), (p:Product {name: 'Corporate Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Hatton National Bank'}), (p:Product {name: 'Investment Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Hatton National Bank'}), (p:Product {name: 'Leasing'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Hatton National Bank'}), (p:Product {name: 'Debit Cards'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Hatton National Bank'}), (p:Product {name: 'Credit Cards'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {name: 'Hatton National Bank'}), (p:Product {name: 'Internet Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: 'Hatton National Bank'}), (p:Product {name: 'Mobile Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: 'Hatton National Bank'}), (p:Product {name: 'Digital Banking Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'Hatton National Bank'}), (p:Product {name: 'Bancassurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'Hatton National Bank'}), (p:Product {name: 'Islamic Banking Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: 'Hatton National Bank'}), (p:Product {name: 'Money Remittance Facilities'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'Hatton National Bank'}), (p:Product {name: 'Pawning'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: 'Hatton National Bank'}), (p:Product {name: 'Margin Trading'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
// Step 11: Company-Company relationships (OWNS, MANAGES);

// Query 101
MERGE (sub:Company {name: 'HNB Investment Bank'}) ON CREATE SET sub.id = 'hnb_investment_bank';

// Query 102
MATCH (parent:Company {name: 'Hatton National Bank'}), (child:Company {name: 'HNB Investment Bank'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2025-01-21');

// Query 103
MATCH (c:Company {name: 'HNB Investment Bank'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 103
// Generated on: 2025-10-02T23:20:17.435811
