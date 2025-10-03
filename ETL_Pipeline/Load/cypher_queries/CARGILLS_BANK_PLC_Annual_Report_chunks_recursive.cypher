// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Cargills Bank'}) ON CREATE SET c.id = 'cargills_bank', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Cargills Bank'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: Person Nodes Creation;

// Query 8
MERGE (p:Person {name: 'Asoka Pieris'}) ON CREATE SET p.id = 'asoka_pieris';

// Query 9
MERGE (p:Person {name: 'Senarath Bandara'}) ON CREATE SET p.id = 'senarath_bandara';

// Query 10
MERGE (p:Person {name: 'Marianne Page'}) ON CREATE SET p.id = 'marianne_page';

// Query 11
MERGE (p:Person {name: 'Yudhishtran Kanagasabai'}) ON CREATE SET p.id = 'yudhishtran_kanagasabai';

// Query 12
MERGE (p:Person {name: 'Buwanekabahu Perera'}) ON CREATE SET p.id = 'buwanekabahu_perera';

// Query 13
MERGE (p:Person {name: 'Ravindra Jayawardena'}) ON CREATE SET p.id = 'ravindra_jayawardena';

// Query 14
MERGE (p:Person {name: 'Shanti Gnanapragasam'}) ON CREATE SET p.id = 'shanti_gnanapragasam';

// Query 15
MERGE (p:Person {name: 'Arjuna Herath'}) ON CREATE SET p.id = 'arjuna_herath';

// Query 16
MERGE (p:Person {name: 'Richard Ebell'}) ON CREATE SET p.id = 'richard_ebell';

// Query 17
MERGE (p:Person {name: 'Prabhu Mathavan'}) ON CREATE SET p.id = 'prabhu_mathavan';

// Query 18
MERGE (p:Person {name: 'Chandradasa Amarasinghe'}) ON CREATE SET p.id = 'chandradasa_amarasinghe';

// Query 19
MERGE (p:Person {name: 'Wimal Karunaarachchi'}) ON CREATE SET p.id = 'wimal_karunaarachchi';

// Query 20
MERGE (p:Person {name: 'Gayantha Wijekoon'}) ON CREATE SET p.id = 'gayantha_wijekoon';

// Query 21
MERGE (p:Person {name: 'Amendra de Silva'}) ON CREATE SET p.id = 'amendra_de_silva';

// Query 22
// Step 5: HOLDS_POSITION Relationships;

// Query 23
MATCH (p:Person {name: 'Asoka Pieris'}), (c:Company {name: 'Cargills Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 24
MATCH (p:Person {name: 'Senarath Bandara'}), (c:Company {name: 'Cargills Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-12-31');

// Query 25
MATCH (p:Person {name: 'Senarath Bandara'}), (c:Company {name: 'Cargills Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-12-31');

// Query 26
MATCH (p:Person {name: 'Marianne Page'}), (c:Company {name: 'Cargills Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 27
MATCH (p:Person {name: 'Yudhishtran Kanagasabai'}), (c:Company {name: 'Cargills Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 28
MATCH (p:Person {name: 'Buwanekabahu Perera'}), (c:Company {name: 'Cargills Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 29
MATCH (p:Person {name: 'Ravindra Jayawardena'}), (c:Company {name: 'Cargills Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 30
MATCH (p:Person {name: 'Shanti Gnanapragasam'}), (c:Company {name: 'Cargills Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 31
MATCH (p:Person {name: 'Arjuna Herath'}), (c:Company {name: 'Cargills Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 32
MATCH (p:Person {name: 'Richard Ebell'}), (c:Company {name: 'Cargills Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-07-02');

// Query 33
MATCH (p:Person {name: 'Prabhu Mathavan'}), (c:Company {name: 'Cargills Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Operating Officer', r.as_of = date('2024-12-31');

// Query 34
MATCH (p:Person {name: 'Chandradasa Amarasinghe'}), (c:Company {name: 'Cargills Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 35
MATCH (p:Person {name: 'Wimal Karunaarachchi'}), (c:Company {name: 'Cargills Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 36
MATCH (p:Person {name: 'Gayantha Wijekoon'}), (c:Company {name: 'Cargills Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-12-31');

// Query 37
MATCH (p:Person {name: 'Amendra de Silva'}), (c:Company {name: 'Cargills Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-12-31');

// Query 38
// Step 6: Person OWNS_SHARES Relationships;

// Query 39
MATCH (p:Person {name: 'Senarath Bandara'}), (c:Company {name: 'Cargills Bank'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 112500, r.as_of = date('2024-12-31');

// Query 40
// Step 7: Metric Nodes Creation;

// Query 41
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 49
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Times';

// Query 50
// Step 8: HAS_METRIC Relationships (2024);

// Query 51
MATCH (c:Company {name: 'Cargills Bank'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11323000000, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Cargills Bank'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3589000000, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Cargills Bank'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1150000000, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Cargills Bank'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 651000000, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Cargills Bank'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 80252000000, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Cargills Bank'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12168000000, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Cargills Bank'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.69, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Cargills Bank'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5.42, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Cargills Bank'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5.18, r.year = 2024;

// Query 60
// Step 9: HAS_METRIC Relationships (2023);

// Query 61
MATCH (c:Company {name: 'Cargills Bank'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12907000000, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Cargills Bank'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3381000000, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Cargills Bank'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 730000000, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Cargills Bank'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 440000000, r.year = 2023;

// Query 65
MATCH (c:Company {name: 'Cargills Bank'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 69959000000, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Cargills Bank'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11943000000, r.year = 2023;

// Query 67
MATCH (c:Company {name: 'Cargills Bank'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.50, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'Cargills Bank'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.12, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'Cargills Bank'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.48, r.year = 2023;

// Query 70
// Step 10: Sector Nodes Creation;

// Query 71
MERGE (s:Sector {name: 'Banks'}) ON CREATE SET s.id = 'banks';

// Query 72
// Step 11: IN_SECTOR Relationships;

// Query 73
MATCH (c:Company {name: 'Cargills Bank'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
// Step 12: Product Nodes Creation;

// Query 75
MERGE (p:Product {name: 'Savings Accounts'}) ON CREATE SET p.id = 'savings_accounts';

// Query 76
MERGE (p:Product {name: 'Fixed Deposits'}) ON CREATE SET p.id = 'fixed_deposits';

// Query 77
MERGE (p:Product {name: 'Loans'}) ON CREATE SET p.id = 'loans';

// Query 78
MERGE (p:Product {name: 'Advances'}) ON CREATE SET p.id = 'advances';

// Query 79
MERGE (p:Product {name: 'Transactional Solutions'}) ON CREATE SET p.id = 'transactional_solutions';

// Query 80
MERGE (p:Product {name: 'Corporate Banking Services'}) ON CREATE SET p.id = 'corporate_banking_services';

// Query 81
MERGE (p:Product {name: 'Agri-business Banking Services'}) ON CREATE SET p.id = 'agri_business_banking_services';

// Query 82
MERGE (p:Product {name: 'Pawning'}) ON CREATE SET p.id = 'pawning';

// Query 83
MERGE (p:Product {name: 'Leasing'}) ON CREATE SET p.id = 'leasing';

// Query 84
MERGE (p:Product {name: 'Mobile Banking App'}) ON CREATE SET p.id = 'mobile_banking_app';

// Query 85
MERGE (p:Product {name: 'Website'}) ON CREATE SET p.id = 'website';

// Query 86
MERGE (p:Product {name: 'OTP Messaging'}) ON CREATE SET p.id = 'otp_messaging';

// Query 87
MERGE (p:Product {name: 'Real-time Transaction Alerts'}) ON CREATE SET p.id = 'real_time_transaction_alerts';

// Query 88
// Step 13: OFFERS Relationships;

// Query 89
MATCH (c:Company {name: 'Cargills Bank'}), (p:Product {name: 'Savings Accounts'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Cargills Bank'}), (p:Product {name: 'Fixed Deposits'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Cargills Bank'}), (p:Product {name: 'Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {name: 'Cargills Bank'}), (p:Product {name: 'Advances'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: 'Cargills Bank'}), (p:Product {name: 'Transactional Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: 'Cargills Bank'}), (p:Product {name: 'Corporate Banking Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'Cargills Bank'}), (p:Product {name: 'Agri-business Banking Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'Cargills Bank'}), (p:Product {name: 'Pawning'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'planned';

// Query 97
MATCH (c:Company {name: 'Cargills Bank'}), (p:Product {name: 'Leasing'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'planned';

// Query 98
MATCH (c:Company {name: 'Cargills Bank'}), (p:Product {name: 'Mobile Banking App'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: 'Cargills Bank'}), (p:Product {name: 'Website'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
MATCH (c:Company {name: 'Cargills Bank'}), (p:Product {name: 'OTP Messaging'}) MERGE (c)-[:OFFERS]->(p);

// Query 101
MATCH (c:Company {name: 'Cargills Bank'}), (p:Product {name: 'Real-time Transaction Alerts'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 101
// Generated on: 2025-10-03T01:51:17.751036
