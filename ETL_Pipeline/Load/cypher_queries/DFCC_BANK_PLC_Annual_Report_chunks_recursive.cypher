// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'DFCC Bank'}) ON CREATE SET c.id = 'dfcc_bank', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'DFCC Bank'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'Thimal Perera'}) ON CREATE SET p.id = 'thimal_perera';

// Query 9
MERGE (p:Person {name: 'Shamindra Marcelline'}) ON CREATE SET p.id = 'shamindra_marcelline';

// Query 10
MERGE (p:Person {name: 'Nimali Ranaraja'}) ON CREATE SET p.id = 'nimali_ranaraja';

// Query 11
MERGE (p:Person {name: 'Chinthika Amarasekara'}) ON CREATE SET p.id = 'chinthika_amarasekara';

// Query 12
MERGE (p:Person {name: 'Asanga Uduwela'}) ON CREATE SET p.id = 'asanga_uduwela';

// Query 13
MERGE (p:Person {name: 'J Durairatnam'}) ON CREATE SET p.id = 'j_durairatnam';

// Query 14
MERGE (p:Person {name: 'L K A H Fernando'}) ON CREATE SET p.id = 'l_k_a_h_fernando';

// Query 15
MERGE (p:Person {name: 'W R H Fernando'}) ON CREATE SET p.id = 'w_r_h_fernando';

// Query 16
MERGE (p:Person {name: 'K G K Nemmawatta'}) ON CREATE SET p.id = 'k_g_k_nemmawatta';

// Query 17
MERGE (p:Person {name: 'A L Thambiayah'}) ON CREATE SET p.id = 'a_l_thambiayah';

// Query 18
MERGE (p:Person {name: 'Vasantha Kumar'}) ON CREATE SET p.id = 'vasantha_kumar';

// Query 19
MERGE (p:Person {name: 'H A J de S Wijeyeratne'}) ON CREATE SET p.id = 'h_a_j_de_s_wijeyeratne';

// Query 20
MERGE (p:Person {name: 'P A Jayatunga'}) ON CREATE SET p.id = 'p_a_jayatunga';

// Query 21
// Step 5: HOLDS_POSITION Relationships;

// Query 22
MATCH (p:Person {name: 'Thimal Perera'}), (c:Company {name: 'DFCC Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-12-31');

// Query 23
MATCH (p:Person {name: 'Shamindra Marcelline'}), (c:Company {name: 'DFCC Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chief Executive Officer', r.as_of = date('2024-12-31');

// Query 24
MATCH (p:Person {name: 'Nimali Ranaraja'}), (c:Company {name: 'DFCC Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-12-31');

// Query 25
MATCH (p:Person {name: 'Chinthika Amarasekara'}), (c:Company {name: 'DFCC Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-12-31');

// Query 26
MATCH (p:Person {name: 'Asanga Uduwela'}), (c:Company {name: 'DFCC Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Operating Officer', r.as_of = date('2024-12-31');

// Query 27
MATCH (p:Person {name: 'J Durairatnam'}), (c:Company {name: 'DFCC Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 28
MATCH (p:Person {name: 'L K A H Fernando'}), (c:Company {name: 'DFCC Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 29
MATCH (p:Person {name: 'W R H Fernando'}), (c:Company {name: 'DFCC Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 30
MATCH (p:Person {name: 'K G K Nemmawatta'}), (c:Company {name: 'DFCC Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 31
MATCH (p:Person {name: 'A L Thambiayah'}), (c:Company {name: 'DFCC Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 32
MATCH (p:Person {name: 'Vasantha Kumar'}), (c:Company {name: 'DFCC Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 33
MATCH (p:Person {name: 'H A J de S Wijeyeratne'}), (c:Company {name: 'DFCC Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 34
MATCH (p:Person {name: 'P A Jayatunga'}), (c:Company {name: 'DFCC Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-11-01');

// Query 35
// Step 6: Metrics;

// Query 36
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 40
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 44
// Step 7: HAS_METRIC Relationships;

// Query 45
MATCH (c:Company {name: 'DFCC Bank'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 89559000000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'DFCC Bank'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13498000000.0, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'DFCC Bank'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8353000000.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'DFCC Bank'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.9, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'DFCC Bank'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.40, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'DFCC Bank'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 703508000000.0, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'DFCC Bank'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 71983613000.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'DFCC Bank'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.01, r.year = 2024;

// Query 53
// Step 8: Sectors;

// Query 54
MERGE (s:Sector {name: 'Banks'}) ON CREATE SET s.id = 'banks';

// Query 55
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 56
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 57
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 58
MERGE (s:Sector {name: 'Health Care Equipment and Services'}) ON CREATE SET s.id = 'health_care_equipment_and_services';

// Query 59
// Step 9: IN_SECTOR Relationships;

// Query 60
MATCH (c:Company {name: 'DFCC Bank'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 61
MATCH (c:Company {name: 'DFCC Bank'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 62
// Step 10: Products;

// Query 63
MERGE (p:Product {name: 'Deposits'}) ON CREATE SET p.id = 'deposits';

// Query 64
MERGE (p:Product {name: 'Corporate Credit'}) ON CREATE SET p.id = 'corporate_credit';

// Query 65
MERGE (p:Product {name: 'Retail Banking'}) ON CREATE SET p.id = 'retail_banking';

// Query 66
MERGE (p:Product {name: 'Personal Financial Services'}) ON CREATE SET p.id = 'personal_financial_services';

// Query 67
MERGE (p:Product {name: 'Project Financing'}) ON CREATE SET p.id = 'project_financing';

// Query 68
MERGE (p:Product {name: 'Investment Banking'}) ON CREATE SET p.id = 'investment_banking';

// Query 69
MERGE (p:Product {name: 'Foreign Currency Operations'}) ON CREATE SET p.id = 'foreign_currency_operations';

// Query 70
MERGE (p:Product {name: 'Trade Finance'}) ON CREATE SET p.id = 'trade_finance';

// Query 71
MERGE (p:Product {name: 'Government Securities'}) ON CREATE SET p.id = 'government_securities';

// Query 72
MERGE (p:Product {name: 'Treasury Products'}) ON CREATE SET p.id = 'treasury_products';

// Query 73
MERGE (p:Product {name: 'Leasing'}) ON CREATE SET p.id = 'leasing';

// Query 74
MERGE (p:Product {name: 'Housing Loans'}) ON CREATE SET p.id = 'housing_loans';

// Query 75
MERGE (p:Product {name: 'Pawning'}) ON CREATE SET p.id = 'pawning';

// Query 76
MERGE (p:Product {name: 'Garusaru Loans'}) ON CREATE SET p.id = 'garusaru_loans';

// Query 77
MERGE (p:Product {name: 'Solar Loans'}) ON CREATE SET p.id = 'solar_loans';

// Query 78
MERGE (p:Product {name: 'Green Deposit'}) ON CREATE SET p.id = 'green_deposit';

// Query 79
MERGE (p:Product {name: 'Green Bond'}) ON CREATE SET p.id = 'green_bond';

// Query 80
MERGE (p:Product {name: 'DFCC iConnect'}) ON CREATE SET p.id = 'dfcc_iconnect';

// Query 81
// Step 11: OFFERS Relationships;

// Query 82
MATCH (c:Company {name: 'DFCC Bank'}), (p:Product {name: 'Deposits'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'DFCC Bank'}), (p:Product {name: 'Corporate Credit'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'DFCC Bank'}), (p:Product {name: 'Retail Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'DFCC Bank'}), (p:Product {name: 'Personal Financial Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'DFCC Bank'}), (p:Product {name: 'Project Financing'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'DFCC Bank'}), (p:Product {name: 'Investment Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'DFCC Bank'}), (p:Product {name: 'Foreign Currency Operations'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'DFCC Bank'}), (p:Product {name: 'Trade Finance'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'DFCC Bank'}), (p:Product {name: 'Government Securities'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'DFCC Bank'}), (p:Product {name: 'Treasury Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {name: 'DFCC Bank'}), (p:Product {name: 'Leasing'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: 'DFCC Bank'}), (p:Product {name: 'Housing Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: 'DFCC Bank'}), (p:Product {name: 'Pawning'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'DFCC Bank'}), (p:Product {name: 'Garusaru Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'DFCC Bank'}), (p:Product {name: 'Solar Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: 'DFCC Bank'}), (p:Product {name: 'Green Deposit'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'DFCC Bank'}), (p:Product {name: 'Green Bond'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: 'DFCC Bank'}), (p:Product {name: 'DFCC iConnect'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 99
// Generated on: 2025-10-03T00:16:03.519843
