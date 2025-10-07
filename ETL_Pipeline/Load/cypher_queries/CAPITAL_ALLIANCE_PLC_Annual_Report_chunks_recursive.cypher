// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Capital Alliance'}) ON CREATE SET c.id = 'capital_alliance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('2000-08-10');

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Capital Alliance'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'D. A. De Zoysa'}) ON CREATE SET p.id = 'd_a_de_zoysa';

// Query 9
MERGE (p:Person {name: 'W. A. T. Fernando'}) ON CREATE SET p.id = 'w_a_t_fernando';

// Query 10
MERGE (p:Person {name: 'R. J. Arasaratnam'}) ON CREATE SET p.id = 'r_j_arasaratnam';

// Query 11
MERGE (p:Person {name: 'C. S. R. S. Anthony'}) ON CREATE SET p.id = 'c_s_r_s_anthony';

// Query 12
MERGE (p:Person {name: 'A. I. C. Nandasena'}) ON CREATE SET p.id = 'a_i_c_nandasena';

// Query 13
MERGE (p:Person {name: 'K. A. D. Siriwardene'}) ON CREATE SET p.id = 'k_a_d_siriwardene';

// Query 14
MERGE (p:Person {name: 'H. M. S. Perera'}) ON CREATE SET p.id = 'h_m_s_perera';

// Query 15
MERGE (p:Person {name: 'L. H. S. L. Silva'}) ON CREATE SET p.id = 'l_h_s_l_silva';

// Query 16
MERGE (p:Person {name: 'A. D. Rayen'}) ON CREATE SET p.id = 'a_d_rayen';

// Query 17
MERGE (p:Person {name: 'A. M. N. Adhikari'}) ON CREATE SET p.id = 'a_m_n_adhikari';

// Query 18
MERGE (p:Person {name: 'H. A. T. Migara'}) ON CREATE SET p.id = 'h_a_t_migara';

// Query 19
MERGE (p:Person {name: 'S. C. Goonesekera'}) ON CREATE SET p.id = 's_c_goonesekera';

// Query 20
MERGE (p:Person {name: 'K. S. Munasinghe'}) ON CREATE SET p.id = 'k_s_munasinghe';

// Query 21
MERGE (p:Person {name: 'T. Kulasinghe'}) ON CREATE SET p.id = 't_kulasinghe';

// Query 22
MERGE (p:Person {name: 'R. M. L. R. Rathnayake'}) ON CREATE SET p.id = 'r_m_l_r_rathnayake';

// Query 23
// Step 5: HOLDS_POSITION Relationships;

// Query 24
MATCH (p:Person {name: 'D. A. De Zoysa'}), (c:Company {name: 'Capital Alliance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'D. A. De Zoysa'}), (c:Company {name: 'Capital Alliance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'W. A. T. Fernando'}), (c:Company {name: 'Capital Alliance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'W. A. T. Fernando'}), (c:Company {name: 'Capital Alliance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'R. J. Arasaratnam'}), (c:Company {name: 'Capital Alliance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'C. S. R. S. Anthony'}), (c:Company {name: 'Capital Alliance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'A. I. C. Nandasena'}), (c:Company {name: 'Capital Alliance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'K. A. D. Siriwardene'}), (c:Company {name: 'Capital Alliance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'H. M. S. Perera'}), (c:Company {name: 'Capital Alliance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'L. H. S. L. Silva'}), (c:Company {name: 'Capital Alliance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'A. D. Rayen'}), (c:Company {name: 'Capital Alliance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'A. M. N. Adhikari'}), (c:Company {name: 'Capital Alliance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-03-31');

// Query 36
MATCH (p:Person {name: 'H. A. T. Migara'}), (c:Company {name: 'Capital Alliance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 37
MATCH (p:Person {name: 'S. C. Goonesekera'}), (c:Company {name: 'Capital Alliance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 38
MATCH (p:Person {name: 'K. S. Munasinghe'}), (c:Company {name: 'Capital Alliance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 39
MATCH (p:Person {name: 'T. Kulasinghe'}), (c:Company {name: 'Capital Alliance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Information Officer', r.as_of = date('2024-03-31');

// Query 40
MATCH (p:Person {name: 'R. M. L. R. Rathnayake'}), (c:Company {name: 'Capital Alliance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 41
// Step 6: Metrics;

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
// Step 7: HAS_METRIC Relationships;

// Query 51
MATCH (c:Company {name: 'Capital Alliance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3863146893.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Capital Alliance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1592245250.0, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Capital Alliance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20098011431.0, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Capital Alliance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3694882803.0, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Capital Alliance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13893183492.0, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Capital Alliance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2827006644.0, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Capital Alliance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 61258227617.0, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Capital Alliance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38040670001.0, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Capital Alliance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16396887107.0, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Capital Alliance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5490028459.0, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'Capital Alliance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42.17, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Capital Alliance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.58, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Capital Alliance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 126.95, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'Capital Alliance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 69.31, r.year = 2023;

// Query 65
MATCH (c:Company {name: 'Capital Alliance'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.83, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'Capital Alliance'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.47, r.year = 2023;

// Query 67
// Step 8: Sectors;

// Query 68
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 69
// Step 9: IN_SECTOR Relationships;

// Query 70
MATCH (c:Company {name: 'Capital Alliance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 71
// Step 10: Products;

// Query 72
MERGE (p:Product {name: 'Government Securities Dealing'}) ON CREATE SET p.id = 'government_securities_dealing';

// Query 73
MERGE (p:Product {name: 'Corporate Debt Securities Dealing'}) ON CREATE SET p.id = 'corporate_debt_securities_dealing';

// Query 74
MERGE (p:Product {name: 'Investment Banking Services'}) ON CREATE SET p.id = 'investment_banking_services';

// Query 75
MERGE (p:Product {name: 'CAL Online App'}) ON CREATE SET p.id = 'cal_online_app';

// Query 76
MERGE (p:Product {name: 'WhatsApp Chatbot'}) ON CREATE SET p.id = 'whatsapp_chatbot';

// Query 77
MERGE (p:Product {name: 'CAL GPT Chatbot'}) ON CREATE SET p.id = 'cal_gpt_chatbot';

// Query 78
MERGE (p:Product {name: 'AnalytiCAL Research Solution'}) ON CREATE SET p.id = 'analytical_research_solution';

// Query 79
// Step 11: OFFERS Relationships;

// Query 80
MATCH (c:Company {name: 'Capital Alliance'}), (p:Product {name: 'Government Securities Dealing'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'Capital Alliance'}), (p:Product {name: 'Corporate Debt Securities Dealing'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Capital Alliance'}), (p:Product {name: 'Investment Banking Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Capital Alliance'}), (p:Product {name: 'CAL Online App'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Capital Alliance'}), (p:Product {name: 'WhatsApp Chatbot'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Capital Alliance'}), (p:Product {name: 'CAL GPT Chatbot'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Capital Alliance'}), (p:Product {name: 'AnalytiCAL Research Solution'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 86
// Generated on: 2025-10-02T22:43:01.393960
