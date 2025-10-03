// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Pan Asia Banking Corporation'}) ON CREATE SET c.id = 'pan_asia_banking_corporation', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'Aravinda Perera'}) ON CREATE SET p.id = 'aravinda_perera';

// Query 9
MERGE (p:Person {name: 'B D A Perera'}) ON CREATE SET p.id = 'b_d_a_perera';

// Query 10
MERGE (p:Person {name: 'Sandra Walgama'}) ON CREATE SET p.id = 'sandra_walgama';

// Query 11
MERGE (p:Person {name: 'Kawshi Amarasinghe'}) ON CREATE SET p.id = 'kawshi_amarasinghe';

// Query 12
MERGE (p:Person {name: 'Malik Ranasinghe'}) ON CREATE SET p.id = 'malik_ranasinghe';

// Query 13
MERGE (p:Person {name: 'Dharshanie Perera'}) ON CREATE SET p.id = 'dharshanie_perera';

// Query 14
MERGE (p:Person {name: 'Ashoka Goonesekere'}) ON CREATE SET p.id = 'ashoka_goonesekere';

// Query 15
MERGE (p:Person {name: 'Naleen Edirisinghe'}) ON CREATE SET p.id = 'naleen_edirisinghe';

// Query 16
MERGE (p:Person {name: 'Chethiya Umagiliya'}) ON CREATE SET p.id = 'chethiya_umagiliya';

// Query 17
MERGE (p:Person {name: 'Nihal Kekulawala'}) ON CREATE SET p.id = 'nihal_kekulawala';

// Query 18
MERGE (p:Person {name: 'Hiroyuki Ota'}) ON CREATE SET p.id = 'hiroyuki_ota';

// Query 19
// Step 5: HOLDS_POSITION Relationships;

// Query 20
MATCH (p:Person {name: 'Aravinda Perera'}), (c:Company {name: 'Pan Asia Banking Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2023-08-01');

// Query 21
MATCH (p:Person {name: 'Aravinda Perera'}), (c:Company {name: 'Pan Asia Banking Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2021-05-01');

// Query 22
MATCH (p:Person {name: 'B D A Perera'}), (c:Company {name: 'Pan Asia Banking Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-11-01');

// Query 23
MATCH (p:Person {name: 'B D A Perera'}), (c:Company {name: 'Pan Asia Banking Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2021-04-01');

// Query 24
MATCH (p:Person {name: 'Sandra Walgama'}), (c:Company {name: 'Pan Asia Banking Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2022-01-01');

// Query 25
MATCH (p:Person {name: 'Kawshi Amarasinghe'}), (c:Company {name: 'Pan Asia Banking Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2023-08-01');

// Query 26
MATCH (p:Person {name: 'Malik Ranasinghe'}), (c:Company {name: 'Pan Asia Banking Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 27
MATCH (p:Person {name: 'Dharshanie Perera'}), (c:Company {name: 'Pan Asia Banking Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-05-01');

// Query 28
MATCH (p:Person {name: 'Ashoka Goonesekere'}), (c:Company {name: 'Pan Asia Banking Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-07-01');

// Query 29
MATCH (p:Person {name: 'Naleen Edirisinghe'}), (c:Company {name: 'Pan Asia Banking Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2023-04-01');

// Query 30
MATCH (p:Person {name: 'Chethiya Umagiliya'}), (c:Company {name: 'Pan Asia Banking Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2022-01-01');

// Query 31
MATCH (p:Person {name: 'Nihal Kekulawala'}), (c:Company {name: 'Pan Asia Banking Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2023-08-01');

// Query 32
MATCH (p:Person {name: 'Nihal Kekulawala'}), (c:Company {name: 'Pan Asia Banking Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2016-08-01');

// Query 33
MATCH (p:Person {name: 'Hiroyuki Ota'}), (c:Company {name: 'Pan Asia Banking Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-01');

// Query 34
// Step 6: Metrics;

// Query 35
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 40
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 41
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 44
// Step 7: HAS_METRIC Relationships - Year 2024;

// Query 45
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6027509, r.year = 2024, r.as_of = date('2024-12-31');

// Query 46
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4134716, r.year = 2024, r.as_of = date('2024-12-31');

// Query 47
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 252918907, r.year = 2024, r.as_of = date('2024-12-31');

// Query 48
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.34, r.year = 2024, r.as_of = date('2024-12-31');

// Query 49
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.30, r.year = 2024, r.as_of = date('2024-12-31');

// Query 50
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.09, r.year = 2024, r.as_of = date('2024-12-31');

// Query 51
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3614250000, r.year = 2024, r.as_of = date('2024-12-31');

// Query 52
// Step 7: HAS_METRIC Relationships - Year 2023;

// Query 53
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2328346, r.year = 2023, r.as_of = date('2023-12-31');

// Query 54
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1854965, r.year = 2023, r.as_of = date('2023-12-31');

// Query 55
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 233456323, r.year = 2023, r.as_of = date('2023-12-31');

// Query 56
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38971229, r.year = 2023, r.as_of = date('2023-12-31');

// Query 57
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10302470, r.year = 2023, r.as_of = date('2023-12-31');

// Query 58
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.19, r.year = 2023, r.as_of = date('2023-12-31');

// Query 59
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.62, r.year = 2023, r.as_of = date('2023-12-31');

// Query 60
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.62, r.year = 2023, r.as_of = date('2023-12-31');

// Query 61
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3614250000, r.year = 2023, r.as_of = date('2023-12-31');

// Query 62
// Step 8: Sectors;

// Query 63
MERGE (s:Sector {name: 'Banks'}) ON CREATE SET s.id = 'banks';

// Query 64
// Step 9: IN_SECTOR Relationships;

// Query 65
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 66
// Step 10: Product nodes creation;

// Query 67
MERGE (p:Product {name: 'Banking Services'}) ON CREATE SET p.id = 'banking_services';

// Query 68
MERGE (p:Product {name: 'Investment Products'}) ON CREATE SET p.id = 'investment_products';

// Query 69
MERGE (p:Product {name: 'Trade Finance'}) ON CREATE SET p.id = 'trade_finance';

// Query 70
MERGE (p:Product {name: 'Digital Banking'}) ON CREATE SET p.id = 'digital_banking';

// Query 71
MERGE (p:Product {name: 'Mobile Banking'}) ON CREATE SET p.id = 'mobile_banking';

// Query 72
MERGE (p:Product {name: 'Online Payments'}) ON CREATE SET p.id = 'online_payments';

// Query 73
MERGE (p:Product {name: 'QR Merchant Payments'}) ON CREATE SET p.id = 'qr_merchant_payments';

// Query 74
MERGE (p:Product {name: 'Customer Onboarding Solutions'}) ON CREATE SET p.id = 'customer_onboarding_solutions';

// Query 75
MERGE (p:Product {name: 'Pawning Services'}) ON CREATE SET p.id = 'pawning_services';

// Query 76
MERGE (p:Product {name: 'SME Financing'}) ON CREATE SET p.id = 'sme_financing';

// Query 77
MERGE (p:Product {name: 'Corporate Facilities'}) ON CREATE SET p.id = 'corporate_facilities';

// Query 78
MERGE (p:Product {name: 'Deposits'}) ON CREATE SET p.id = 'deposits';

// Query 79
MERGE (p:Product {name: 'Lending'}) ON CREATE SET p.id = 'lending';

// Query 80
// Step 11: OFFERS Relationships;

// Query 81
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (p:Product {name: 'Banking Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (p:Product {name: 'Investment Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (p:Product {name: 'Trade Finance'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (p:Product {name: 'Digital Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (p:Product {name: 'Mobile Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (p:Product {name: 'Online Payments'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (p:Product {name: 'QR Merchant Payments'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (p:Product {name: 'Customer Onboarding Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (p:Product {name: 'Pawning Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (p:Product {name: 'SME Financing'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (p:Product {name: 'Corporate Facilities'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (p:Product {name: 'Deposits'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: 'Pan Asia Banking Corporation'}), (p:Product {name: 'Lending'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 93
// Generated on: 2025-10-02T23:18:33.127078
