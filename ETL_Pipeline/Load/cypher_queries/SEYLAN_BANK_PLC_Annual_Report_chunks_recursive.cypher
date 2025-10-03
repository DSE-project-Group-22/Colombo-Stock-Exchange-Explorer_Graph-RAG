// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Seylan Bank'}) ON CREATE SET c.id = 'seylan_bank', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Seylan Bank'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Justice Buwaneka Aluwihare'}) ON CREATE SET p.id = 'justice_buwaneka_aluwihare';

// Query 8
MERGE (p:Person {name: 'Ramesh Jayasekara'}) ON CREATE SET p.id = 'ramesh_jayasekara';

// Query 9
MERGE (p:Person {name: 'Sandya K Salgado'}) ON CREATE SET p.id = 'sandya_k_salgado';

// Query 10
MERGE (p:Person {name: 'D M D Krishan Thilakaratne'}) ON CREATE SET p.id = 'd_m_d_krishan_thilakaratne';

// Query 11
MERGE (p:Person {name: 'D M Rupasinghe'}) ON CREATE SET p.id = 'd_m_rupasinghe';

// Query 12
MERGE (p:Person {name: 'L H A Lakshman Silva'}) ON CREATE SET p.id = 'l_h_a_lakshman_silva';

// Query 13
MERGE (p:Person {name: 'V G S Sunjeevani Kotakadeniya'}) ON CREATE SET p.id = 'v_g_s_sunjeevani_kotakadeniya';

// Query 14
MERGE (p:Person {name: 'Averil A Ludowyke'}) ON CREATE SET p.id = 'averil_a_ludowyke';

// Query 15
MERGE (p:Person {name: 'Saraswathie Poulraj'}) ON CREATE SET p.id = 'saraswathie_poulraj';

// Query 16
// Step 4: HOLDS_POSITION Relationships;

// Query 17
MATCH (p:Person {name: 'Justice Buwaneka Aluwihare'}), (c:Company {name: 'Seylan Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 18
MATCH (p:Person {name: 'Justice Buwaneka Aluwihare'}), (c:Company {name: 'Seylan Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 19
MATCH (p:Person {name: 'Ramesh Jayasekara'}), (c:Company {name: 'Seylan Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-12-31');

// Query 20
MATCH (p:Person {name: 'Sandya K Salgado'}), (c:Company {name: 'Seylan Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 21
MATCH (p:Person {name: 'D M D Krishan Thilakaratne'}), (c:Company {name: 'Seylan Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 22
MATCH (p:Person {name: 'D M Rupasinghe'}), (c:Company {name: 'Seylan Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 23
MATCH (p:Person {name: 'L H A Lakshman Silva'}), (c:Company {name: 'Seylan Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 24
MATCH (p:Person {name: 'V G S Sunjeevani Kotakadeniya'}), (c:Company {name: 'Seylan Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 25
MATCH (p:Person {name: 'Averil A Ludowyke'}), (c:Company {name: 'Seylan Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 26
MATCH (p:Person {name: 'Saraswathie Poulraj'}), (c:Company {name: 'Seylan Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-12-31');

// Query 27
// Step 5: Metrics;

// Query 28
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 37
MERGE (m:Metric {name: 'Return on Average Assets'}) ON CREATE SET m.id = 'return_on_average_assets', m.unit = '%';

// Query 38
MERGE (m:Metric {name: 'Cost to Income Ratio'}) ON CREATE SET m.id = 'cost_to_income_ratio', m.unit = '%';

// Query 39
// Step 6: HAS_METRIC Relationships;

// Query 40
MATCH (c:Company {name: 'Seylan Bank'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 91671000000.0, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Seylan Bank'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16043000000.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Seylan Bank'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10051000000.0, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Seylan Bank'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 779690000000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Seylan Bank'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 70489000000.0, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Seylan Bank'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 91671000000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Seylan Bank'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36707000000.0, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Seylan Bank'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.81, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Seylan Bank'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.35, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Seylan Bank'}), (m:Metric {name: 'Return on Average Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.34, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Seylan Bank'}), (m:Metric {name: 'Cost to Income Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 59.34, r.year = 2024;

// Query 51
// Step 7: Sectors;

// Query 52
MERGE (s:Sector {name: 'Banks'}) ON CREATE SET s.id = 'banks';

// Query 53
// Step 8: IN_SECTOR Relationships;

// Query 54
MATCH (c:Company {name: 'Seylan Bank'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 55
// Step 9: Other Companies (Subsidiaries);

// Query 56
MERGE (c:Company {name: 'Seylan Developments'}) ON CREATE SET c.id = 'seylan_developments';

// Query 57
// Step 10: Subsidiary Sectors;

// Query 58
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 59
MATCH (c:Company {name: 'Seylan Developments'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 60
// Step 11: Products;

// Query 61
MERGE (p:Product {name: 'Accepting Deposits'}) ON CREATE SET p.id = 'accepting_deposits';

// Query 62
MERGE (p:Product {name: 'Personal Banking'}) ON CREATE SET p.id = 'personal_banking';

// Query 63
MERGE (p:Product {name: 'Trade Financing'}) ON CREATE SET p.id = 'trade_financing';

// Query 64
MERGE (p:Product {name: 'Off-shore Banking'}) ON CREATE SET p.id = 'off_shore_banking';

// Query 65
MERGE (p:Product {name: 'Resident and Non-Resident Foreign Currency Operations'}) ON CREATE SET p.id = 'resident_and_non_resident_foreign_currency_operations';

// Query 66
MERGE (p:Product {name: 'Travel Related Services'}) ON CREATE SET p.id = 'travel_related_services';

// Query 67
MERGE (p:Product {name: 'Corporate Credit'}) ON CREATE SET p.id = 'corporate_credit';

// Query 68
MERGE (p:Product {name: 'Retail Credit'}) ON CREATE SET p.id = 'retail_credit';

// Query 69
MERGE (p:Product {name: 'Project Financing'}) ON CREATE SET p.id = 'project_financing';

// Query 70
MERGE (p:Product {name: 'Lease Financing'}) ON CREATE SET p.id = 'lease_financing';

// Query 71
MERGE (p:Product {name: 'Rural Credit'}) ON CREATE SET p.id = 'rural_credit';

// Query 72
MERGE (p:Product {name: 'Debit and Credit Cards'}) ON CREATE SET p.id = 'debit_and_credit_cards';

// Query 73
MERGE (p:Product {name: 'Internet Banking'}) ON CREATE SET p.id = 'internet_banking';

// Query 74
MERGE (p:Product {name: 'Mobile Banking'}) ON CREATE SET p.id = 'mobile_banking';

// Query 75
MERGE (p:Product {name: 'Money Remittance Facilities'}) ON CREATE SET p.id = 'money_remittance_facilities';

// Query 76
MERGE (p:Product {name: 'Salary Remittance Packages'}) ON CREATE SET p.id = 'salary_remittance_packages';

// Query 77
MERGE (p:Product {name: 'Pawning'}) ON CREATE SET p.id = 'pawning';

// Query 78
MERGE (p:Product {name: 'Margin Trading'}) ON CREATE SET p.id = 'margin_trading';

// Query 79
MERGE (p:Product {name: 'Factoring'}) ON CREATE SET p.id = 'factoring';

// Query 80
MERGE (p:Product {name: 'Digital Banking Services'}) ON CREATE SET p.id = 'digital_banking_services';

// Query 81
MERGE (p:Product {name: 'Bancassurance'}) ON CREATE SET p.id = 'bancassurance';

// Query 82
MERGE (p:Product {name: 'Islamic Banking Products and Services'}) ON CREATE SET p.id = 'islamic_banking_products_and_services';

// Query 83
MERGE (p:Product {name: 'Dealing in Government Securities'}) ON CREATE SET p.id = 'dealing_in_government_securities';

// Query 84
MERGE (p:Product {name: 'Housing Loans'}) ON CREATE SET p.id = 'housing_loans';

// Query 85
MERGE (p:Product {name: 'Personal Loans'}) ON CREATE SET p.id = 'personal_loans';

// Query 86
MERGE (p:Product {name: 'Loans Against Property'}) ON CREATE SET p.id = 'loans_against_property';

// Query 87
MERGE (p:Product {name: 'Solar EPP Plans'}) ON CREATE SET p.id = 'solar_epp_plans';

// Query 88
MERGE (p:Product {name: 'eKYC System'}) ON CREATE SET p.id = 'ekyc_system';

// Query 89
MERGE (p:Product {name: 'Self-Service Kiosks'}) ON CREATE SET p.id = 'self_service_kiosks';

// Query 90
MERGE (p:Product {name: 'Advanced ATMs'}) ON CREATE SET p.id = 'advanced_atms';

// Query 91
MERGE (p:Product {name: 'Instant Money Transfers'}) ON CREATE SET p.id = 'instant_money_transfers';

// Query 92
MERGE (p:Product {name: 'Real-time Loan Applications'}) ON CREATE SET p.id = 'real_time_loan_applications';

// Query 93
MERGE (p:Product {name: 'Special Working Capital Loan Scheme'}) ON CREATE SET p.id = 'special_working_capital_loan_scheme';

// Query 94
MERGE (p:Product {name: 'Solar Loan'}) ON CREATE SET p.id = 'solar_loan';

// Query 95
MERGE (p:Product {name: 'Property Development, Administration and Management'}) ON CREATE SET p.id = 'property_development_administration_and_management';

// Query 96
// Step 12: OFFERS Relationships;

// Query 97
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Accepting Deposits'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Personal Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Trade Financing'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Off-shore Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 101
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Resident and Non-Resident Foreign Currency Operations'}) MERGE (c)-[:OFFERS]->(p);

// Query 102
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Travel Related Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 103
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Corporate Credit'}) MERGE (c)-[:OFFERS]->(p);

// Query 104
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Retail Credit'}) MERGE (c)-[:OFFERS]->(p);

// Query 105
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Project Financing'}) MERGE (c)-[:OFFERS]->(p);

// Query 106
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Lease Financing'}) MERGE (c)-[:OFFERS]->(p);

// Query 107
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Rural Credit'}) MERGE (c)-[:OFFERS]->(p);

// Query 108
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Debit and Credit Cards'}) MERGE (c)-[:OFFERS]->(p);

// Query 109
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Internet Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 110
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Mobile Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 111
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Money Remittance Facilities'}) MERGE (c)-[:OFFERS]->(p);

// Query 112
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Salary Remittance Packages'}) MERGE (c)-[:OFFERS]->(p);

// Query 113
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Pawning'}) MERGE (c)-[:OFFERS]->(p);

// Query 114
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Margin Trading'}) MERGE (c)-[:OFFERS]->(p);

// Query 115
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Factoring'}) MERGE (c)-[:OFFERS]->(p);

// Query 116
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Digital Banking Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 117
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Bancassurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 118
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Islamic Banking Products and Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 119
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Dealing in Government Securities'}) MERGE (c)-[:OFFERS]->(p);

// Query 120
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Housing Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 121
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Personal Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 122
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Loans Against Property'}) MERGE (c)-[:OFFERS]->(p);

// Query 123
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Solar EPP Plans'}) MERGE (c)-[:OFFERS]->(p);

// Query 124
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'eKYC System'}) MERGE (c)-[:OFFERS]->(p);

// Query 125
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Self-Service Kiosks'}) MERGE (c)-[:OFFERS]->(p);

// Query 126
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Advanced ATMs'}) MERGE (c)-[:OFFERS]->(p);

// Query 127
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Instant Money Transfers'}) MERGE (c)-[:OFFERS]->(p);

// Query 128
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Real-time Loan Applications'}) MERGE (c)-[:OFFERS]->(p);

// Query 129
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Special Working Capital Loan Scheme'}) MERGE (c)-[:OFFERS]->(p);

// Query 130
MATCH (c:Company {name: 'Seylan Bank'}), (p:Product {name: 'Solar Loan'}) MERGE (c)-[:OFFERS]->(p);

// Query 131
MATCH (c:Company {name: 'Seylan Developments'}), (p:Product {name: 'Property Development, Administration and Management'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 131
// Generated on: 2025-10-03T03:52:41.087817
