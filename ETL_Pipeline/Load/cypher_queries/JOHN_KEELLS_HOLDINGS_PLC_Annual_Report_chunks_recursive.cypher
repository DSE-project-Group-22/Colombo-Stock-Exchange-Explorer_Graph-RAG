// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'John Keells'}) ON CREATE SET c.id = 'john_keells', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'John Keells'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2025;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'K.N.J. Balendra'}) ON CREATE SET p.id = 'k_n_j_balendra';

// Query 8
MERGE (p:Person {name: 'J.G.A. Cooray'}) ON CREATE SET p.id = 'j_g_a_cooray';

// Query 9
MERGE (p:Person {name: 'B.A.I. Rajakarier'}) ON CREATE SET p.id = 'b_a_i_rajakarier';

// Query 10
MERGE (p:Person {name: 'C.N. Wijewardane'}) ON CREATE SET p.id = 'c_n_wijewardane';

// Query 11
MERGE (p:Person {name: 'A.K. Gunawardhana'}) ON CREATE SET p.id = 'a_k_gunawardhana';

// Query 12
MERGE (p:Person {name: 'D.P. Gamlath'}) ON CREATE SET p.id = 'd_p_gamlath';

// Query 13
MERGE (p:Person {name: 'R.S. Cader'}) ON CREATE SET p.id = 'r_s_cader';

// Query 14
MERGE (p:Person {name: 'S. Rajendra'}) ON CREATE SET p.id = 's_rajendra';

// Query 15
MERGE (p:Person {name: 'K.C. Subasinghe'}) ON CREATE SET p.id = 'k_c_subasinghe';

// Query 16
MERGE (p:Person {name: 'N.W.R. Wijewantha'}) ON CREATE SET p.id = 'n_w_r_wijewantha';

// Query 17
MERGE (p:Person {name: 'A.Z. Hashim'}) ON CREATE SET p.id = 'a_z_hashim';

// Query 18
MERGE (p:Person {name: 'P.D. Samarasinghe'}) ON CREATE SET p.id = 'p_d_samarasinghe';

// Query 19
MERGE (p:Person {name: 'A.S.M. Ali'}) ON CREATE SET p.id = 'a_s_m_ali';

// Query 20
MERGE (p:Person {name: 'H.G.R. De Mel'}) ON CREATE SET p.id = 'h_g_r_de_mel';

// Query 21
// Step 4: HOLDS_POSITION Relationships;

// Query 22
MATCH (p:Person {name: 'K.N.J. Balendra'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-03-31');

// Query 23
MATCH (p:Person {name: 'J.G.A. Cooray'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 24
MATCH (p:Person {name: 'B.A.I. Rajakarier'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 25
MATCH (p:Person {name: 'C.N. Wijewardane'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 26
MATCH (p:Person {name: 'A.K. Gunawardhana'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 27
MATCH (p:Person {name: 'D.P. Gamlath'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 28
MATCH (p:Person {name: 'R.S. Cader'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 29
MATCH (p:Person {name: 'S. Rajendra'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 30
MATCH (p:Person {name: 'K.C. Subasinghe'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 31
MATCH (p:Person {name: 'N.W.R. Wijewantha'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 32
MATCH (p:Person {name: 'A.Z. Hashim'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 33
MATCH (p:Person {name: 'P.D. Samarasinghe'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 34
MATCH (p:Person {name: 'A.S.M. Ali'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 35
MATCH (p:Person {name: 'H.G.R. De Mel'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2025-03-31');

// Query 36
// Step 5: Metrics;

// Query 37
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 43
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 46
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 47
// Step 6: HAS_METRIC Relationships - 2025;

// Query 48
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1009382000, r.year = 2025;

// Query 49
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 274724000, r.year = 2025;

// Query 50
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 256644000, r.year = 2025;

// Query 51
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 173488000, r.year = 2025;

// Query 52
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.80, r.year = 2025;

// Query 53
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.62, r.year = 2025;

// Query 54
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6537394000, r.year = 2025;

// Query 55
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4723845000, r.year = 2025;

// Query 56
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.45, r.year = 2025;

// Query 57
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.39, r.year = 2025;

// Query 58
// Step 6: HAS_METRIC Relationships - 2024;

// Query 59
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 941974000, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 249235000, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 220875000, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 144001000, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.48, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.48, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6021094000, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4056924000, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.90, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.19, r.year = 2024;

// Query 69
// Step 6: HAS_METRIC Relationships - 2023;

// Query 70
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1024588000, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 533379000, r.year = 2023;

// Query 72
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 495392000, r.year = 2023;

// Query 73
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 309497000, r.year = 2023;

// Query 74
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.03, r.year = 2023;

// Query 75
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.29, r.year = 2023;

// Query 76
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5965630000, r.year = 2023;

// Query 77
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4164830000, r.year = 2023;

// Query 78
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.02, r.year = 2023;

// Query 79
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.26, r.year = 2023;

// Query 80
// Step 7: Sectors;

// Query 81
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 82
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 83
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 84
// Step 8: IN_SECTOR Relationships;

// Query 85
MATCH (c:Company {name: 'John Keells'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 86
MATCH (c:Company {name: 'John Keells'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 87
MATCH (c:Company {name: 'John Keells'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 88
// Step 9: Products;

// Query 89
MERGE (p:Product {name: 'Tea Broking'}) ON CREATE SET p.id = 'tea_broking';

// Query 90
MERGE (p:Product {name: 'Rubber Broking'}) ON CREATE SET p.id = 'rubber_broking';

// Query 91
MERGE (p:Product {name: 'Tea Warehousing'}) ON CREATE SET p.id = 'tea_warehousing';

// Query 92
MERGE (p:Product {name: 'Stock Broking'}) ON CREATE SET p.id = 'stock_broking';

// Query 93
// Step 10: OFFERS Relationships;

// Query 94
MATCH (c:Company {name: 'John Keells'}), (p:Product {name: 'Tea Broking'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'John Keells'}), (p:Product {name: 'Rubber Broking'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'John Keells'}), (p:Product {name: 'Tea Warehousing'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: 'John Keells'}), (p:Product {name: 'Stock Broking'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
// Step 11: Company-Company Relationships;

// Query 99
MERGE (parent:Company {name: 'John Keells Holdings'}) ON CREATE SET parent.id = 'john_keells_holdings', parent.region = 'Sri Lanka';

// Query 100
MATCH (manager:Company {name: 'John Keells Holdings'}), (managed:Company {name: 'John Keells'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.as_of = date('2025-03-31');

// Total queries: 100
// Generated on: 2025-10-03T03:43:14.192503
