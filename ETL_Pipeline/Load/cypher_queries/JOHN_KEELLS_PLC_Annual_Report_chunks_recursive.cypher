// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'John Keells'}) ON CREATE SET c.id = 'john_keells', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'John Keells'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2025, r.period = 'FY 2024/25';

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
MERGE (p:Person {name: 'R. Wijewantha'}) ON CREATE SET p.id = 'r_wijewantha';

// Query 17
MERGE (p:Person {name: 'A.Z. Hashim'}) ON CREATE SET p.id = 'a_z_hashim';

// Query 18
MERGE (p:Person {name: 'P. D. Samarasinghe'}) ON CREATE SET p.id = 'p_d_samarasinghe';

// Query 19
MERGE (p:Person {name: 'H.G.R. De Mel'}) ON CREATE SET p.id = 'h_g_r_de_mel';

// Query 20
// Step 4: HOLDS_POSITION Relationships;

// Query 21
MATCH (p:Person {name: 'K.N.J. Balendra'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-03-31');

// Query 22
MATCH (p:Person {name: 'J.G.A. Cooray'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 23
MATCH (p:Person {name: 'B.A.I. Rajakarier'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 24
MATCH (p:Person {name: 'C.N. Wijewardane'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 25
MATCH (p:Person {name: 'A.K. Gunawardhana'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 26
MATCH (p:Person {name: 'D.P. Gamlath'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 27
MATCH (p:Person {name: 'R.S. Cader'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 28
MATCH (p:Person {name: 'S. Rajendra'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 29
MATCH (p:Person {name: 'K.C. Subasinghe'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 30
MATCH (p:Person {name: 'R. Wijewantha'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 31
MATCH (p:Person {name: 'A.Z. Hashim'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 32
MATCH (p:Person {name: 'P. D. Samarasinghe'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 33
MATCH (p:Person {name: 'H.G.R. De Mel'}), (c:Company {name: 'John Keells'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2025-03-31');

// Query 34
// Step 5: Metric Nodes;

// Query 35
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 42
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 43
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 44
// Step 6: HAS_METRIC Relationships;

// Query 45
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1009382000.0, r.year = 2025;

// Query 46
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 941974000.0, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1024588000.0, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 256644000.0, r.year = 2025;

// Query 49
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 220875000.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 495392000.0, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 173488000.0, r.year = 2025;

// Query 52
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 144001000.0, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 309497000.0, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.80, r.year = 2025;

// Query 55
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.48, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.03, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6537394000.0, r.year = 2025;

// Query 58
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6021094000.0, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5965630000.0, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4723845000.0, r.year = 2025;

// Query 61
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4056924000.0, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4164830000.0, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.62, r.year = 2025;

// Query 64
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.48, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.29, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.45, r.year = 2025;

// Query 67
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.90, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.02, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.39, r.year = 2025;

// Query 70
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.19, r.year = 2024;

// Query 71
MATCH (c:Company {name: 'John Keells'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.26, r.year = 2023;

// Query 72
// Step 7: Sector Nodes;

// Query 73
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 74
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 75
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 76
// Step 8: IN_SECTOR Relationships;

// Query 77
MATCH (c:Company {name: 'John Keells'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 78
MATCH (c:Company {name: 'John Keells'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 79
MATCH (c:Company {name: 'John Keells'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 80
// Step 9: Product Nodes;

// Query 81
MERGE (p:Product {name: 'Tea Broking'}) ON CREATE SET p.id = 'tea_broking';

// Query 82
MERGE (p:Product {name: 'Rubber Broking'}) ON CREATE SET p.id = 'rubber_broking';

// Query 83
MERGE (p:Product {name: 'Tea Warehousing'}) ON CREATE SET p.id = 'tea_warehousing';

// Query 84
MERGE (p:Product {name: 'Stock Broking'}) ON CREATE SET p.id = 'stock_broking';

// Query 85
// Step 10: OFFERS Relationships;

// Query 86
MATCH (c:Company {name: 'John Keells'}), (p:Product {name: 'Tea Broking'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'John Keells'}), (p:Product {name: 'Rubber Broking'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'John Keells'}), (p:Product {name: 'Tea Warehousing'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'John Keells'}), (p:Product {name: 'Stock Broking'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
// Step 11: Company-Company Relationships (MANAGES);

// Query 91
MERGE (parent:Company {name: 'John Keells Holdings'}) ON CREATE SET parent.id = 'john_keells_holdings', parent.region = 'Sri Lanka';

// Query 92
MATCH (parent:Company {name: 'John Keells Holdings'}), (child:Company {name: 'John Keells'}) MERGE (parent)-[:MANAGES]->(child);

// Query 93
MERGE (sub1:Company {name: 'John Keells Stock Brokers'}) ON CREATE SET sub1.id = 'john_keells_stock_brokers', sub1.region = 'Sri Lanka';

// Query 94
MATCH (parent:Company {name: 'John Keells'}), (child:Company {name: 'John Keells Stock Brokers'}) MERGE (parent)-[:MANAGES]->(child);

// Query 95
MERGE (sub2:Company {name: 'John Keells Warehousing'}) ON CREATE SET sub2.id = 'john_keells_warehousing', sub2.region = 'Sri Lanka';

// Query 96
MATCH (parent:Company {name: 'John Keells'}), (child:Company {name: 'John Keells Warehousing'}) MERGE (parent)-[:MANAGES]->(child);

// Total queries: 96
// Generated on: 2025-10-02T23:53:19.270393
