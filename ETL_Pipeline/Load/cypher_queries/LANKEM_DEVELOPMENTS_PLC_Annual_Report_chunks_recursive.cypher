// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Lankem Developments'}) ON CREATE SET c.id = 'lankem_developments', c.founded_on = date('1974-10-14'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
MERGE (c:Company {name: 'Agarapatana Plantations'}) ON CREATE SET c.id = 'agarapatana_plantations', c.region = 'Sri Lanka';

// Query 4
MERGE (c:Company {name: 'Waverly Power'}) ON CREATE SET c.id = 'waverly_power', c.region = 'Sri Lanka';

// Query 5
MERGE (c:Company {name: 'Commercial Bank of Ceylon'}) ON CREATE SET c.id = 'commercial_bank_of_ceylon', c.region = 'Sri Lanka';

// Query 6
// Step 2: Auditor;

// Query 7
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 8
// Step 3: AUDITED_BY Relationship;

// Query 9
MATCH (c:Company {name: 'Lankem Developments'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 10
// Step 4: People - Directors and Executives;

// Query 11
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 12
MERGE (p:Person {name: 'C. P. R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 13
MERGE (p:Person {name: 'R. N. Bopearatchy'}) ON CREATE SET p.id = 'r_n_bopearatchy';

// Query 14
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 15
MERGE (p:Person {name: 'K. P. David'}) ON CREATE SET p.id = 'k_p_david';

// Query 16
MERGE (p:Person {name: 'P.M.A. Sirimane'}) ON CREATE SET p.id = 'p_m_a_sirimane';

// Query 17
MERGE (p:Person {name: 'S.N.P. Palihena'}) ON CREATE SET p.id = 's_n_p_palihena';

// Query 18
MERGE (p:Person {name: 'A.M.de S. Jayaratne'}) ON CREATE SET p.id = 'a_m_de_s_jayaratne';

// Query 19
MERGE (p:Person {name: 'S.S. Poholiyadde'}) ON CREATE SET p.id = 's_s_poholiyadde';

// Query 20
MERGE (p:Person {name: 'M. Kowdu K. Mohideen'}) ON CREATE SET p.id = 'm_kowdu_k_mohideen';

// Query 21
// Step 5: HOLDS_POSITION Relationships;

// Query 22
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'Lankem Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'C. P. R. Perera'}), (c:Company {name: 'Lankem Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'R. N. Bopearatchy'}), (c:Company {name: 'Lankem Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Anushman Rajaratnam'}), (c:Company {name: 'Lankem Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'K. P. David'}), (c:Company {name: 'Lankem Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'P.M.A. Sirimane'}), (c:Company {name: 'Lankem Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'S.N.P. Palihena'}), (c:Company {name: 'Lankem Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'A.M.de S. Jayaratne'}), (c:Company {name: 'Lankem Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'S.S. Poholiyadde'}), (c:Company {name: 'Lankem Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'M. Kowdu K. Mohideen'}), (c:Company {name: 'Lankem Developments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 32
// Step 6: Metrics;

// Query 33
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 39
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 40
// Step 7: HAS_METRIC Relationships;

// Query 41
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -101301000, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 767057000, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 99925000, r.year = 2022;

// Query 44
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40233000, r.year = 2021;

// Query 45
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -135952000, r.year = 2020;

// Query 46
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -101301000, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 767057000, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 99925000, r.year = 2022;

// Query 49
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40233000, r.year = 2021;

// Query 50
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -135952000, r.year = 2020;

// Query 51
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2165647000, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2167599000, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1525955000, r.year = 2022;

// Query 54
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1166578000, r.year = 2021;

// Query 55
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 751185000, r.year = 2020;

// Query 56
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1455077000, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1555441000, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.84, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.39, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.49, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.39, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7214937000, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8570559000, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 695566000, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2303377000, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 68031000, r.year = 2022;

// Query 67
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 166194000, r.year = 2021;

// Query 68
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1215640000, r.year = 2020;

// Query 69
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 401171000, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1681228000, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 34515000, r.year = 2022;

// Query 72
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 222907000, r.year = 2021;

// Query 73
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1232604000, r.year = 2020;

// Query 74
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8848462000, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7375298000, r.year = 2023;

// Query 76
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6638959000, r.year = 2022;

// Query 77
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6649107000, r.year = 2021;

// Query 78
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5831109000, r.year = 2020;

// Query 79
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3125407000, r.year = 2024;

// Query 80
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2294348000, r.year = 2023;

// Query 81
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.52, r.year = 2024;

// Query 82
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.28, r.year = 2023;

// Query 83
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.02, r.year = 2024;

// Query 84
MATCH (c:Company {name: 'Lankem Developments'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.29, r.year = 2023;

// Query 85
// Step 8: Sectors;

// Query 86
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 87
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 88
MERGE (s:Sector {name: 'Utilities'}) ON CREATE SET s.id = 'utilities';

// Query 89
// Step 9: IN_SECTOR Relationships;

// Query 90
MATCH (c:Company {name: 'Lankem Developments'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 91
MATCH (c:Company {name: 'Agarapatana Plantations'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 92
MATCH (c:Company {name: 'Waverly Power'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 93
// Step 10: Product nodes creation;

// Query 94
MERGE (p:Product {name: 'Tea'}) ON CREATE SET p.id = 'tea';

// Query 95
MERGE (p:Product {name: 'Electricity Generation'}) ON CREATE SET p.id = 'electricity_generation';

// Query 96
// Step 11: OFFERS Relationships;

// Query 97
MATCH (c:Company {name: 'Agarapatana Plantations'}), (p:Product {name: 'Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'Waverly Power'}), (p:Product {name: 'Electricity Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
// Step 12: Company-Company Relationships (OWNS);

// Query 100
MATCH (parent:Company {name: 'Lankem Developments'}), (child:Company {name: 'Agarapatana Plantations'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 56.25, r.as_of = date('2024-03-31');

// Query 101
MATCH (parent:Company {name: 'Lankem Developments'}), (child:Company {name: 'Agarapatana Plantations'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 67.45, r.as_of = date('2023-03-31');

// Total queries: 101
// Generated on: 2025-10-03T00:24:56.886766
