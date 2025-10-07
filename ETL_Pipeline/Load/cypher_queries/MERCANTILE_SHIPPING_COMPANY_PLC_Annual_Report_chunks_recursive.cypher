// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Mercantile Shipping Company'}) ON CREATE SET c.id = 'mercantile_shipping_company', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'Mercantile Global Shipping'}) ON CREATE SET c.id = 'mercantile_global_shipping', c.region = 'Sri Lanka';

// Query 4
// Step 2: Auditor;

// Query 5
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 6
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 7
// Step 3: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'H. A. R. K. Wickramatileka'}) ON CREATE SET p.id = 'h_a_r_k_wickramatileka';

// Query 9
MERGE (p:Person {name: 'Capt. K. Kriwat'}) ON CREATE SET p.id = 'capt_k_kriwat';

// Query 10
MERGE (p:Person {name: 'T. Kriwat'}) ON CREATE SET p.id = 't_kriwat';

// Query 11
MERGE (p:Person {name: 'C. D. A. Peiris'}) ON CREATE SET p.id = 'c_d_a_peiris';

// Query 12
MERGE (p:Person {name: 'Capt. R. E. G. Codipilly'}) ON CREATE SET p.id = 'capt_r_e_g_codipilly';

// Query 13
MERGE (p:Person {name: 'M. S. P. Gunawardena'}) ON CREATE SET p.id = 'm_s_p_gunawardena';

// Query 14
MERGE (p:Person {name: 'P. A. Nandasena'}) ON CREATE SET p.id = 'p_a_nandasena';

// Query 15
MERGE (p:Person {name: 'W. S. Weeraman'}) ON CREATE SET p.id = 'w_s_weeraman';

// Query 16
MERGE (p:Person {name: 'C. C. Wickramatileka'}) ON CREATE SET p.id = 'c_c_wickramatileka';

// Query 17
MERGE (p:Person {name: 'S. A. S. K. Jayasekera'}) ON CREATE SET p.id = 's_a_s_k_jayasekera';

// Query 18
MERGE (p:Person {name: 'P. S. K. Watawala'}) ON CREATE SET p.id = 'p_s_k_watawala';

// Query 19
// Step 4: HOLDS_POSITION Relationships;

// Query 20
MATCH (p:Person {name: 'H. A. R. K. Wickramatileka'}), (c:Company {name: 'Mercantile Shipping Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Capt. K. Kriwat'}), (c:Company {name: 'Mercantile Shipping Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'T. Kriwat'}), (c:Company {name: 'Mercantile Shipping Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'C. D. A. Peiris'}), (c:Company {name: 'Mercantile Shipping Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Capt. R. E. G. Codipilly'}), (c:Company {name: 'Mercantile Shipping Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'M. S. P. Gunawardena'}), (c:Company {name: 'Mercantile Shipping Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'P. A. Nandasena'}), (c:Company {name: 'Mercantile Shipping Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'W. S. Weeraman'}), (c:Company {name: 'Mercantile Shipping Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'C. C. Wickramatileka'}), (c:Company {name: 'Mercantile Shipping Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'S. A. S. K. Jayasekera'}), (c:Company {name: 'Mercantile Shipping Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-12-05');

// Query 30
// Step 5: Person OWNS_SHARES Relationships;

// Query 31
MATCH (p:Person {name: 'H. A. R. K. Wickramatileka'}), (c:Company {name: 'Mercantile Shipping Company'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 11414, r.pct = 0.40, r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'Capt. R. E. G. Codipilly'}), (c:Company {name: 'Mercantile Shipping Company'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 4162, r.pct = 0.15, r.as_of = date('2024-03-31');

// Query 33
// Step 6: Metrics;

// Query 34
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 41
// Step 7: HAS_METRIC Relationships;

// Query 42
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18444324, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17220885, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19687989, r.year = 2022;

// Query 45
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18833428, r.year = 2021;

// Query 46
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18227910, r.year = 2020;

// Query 47
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2090099, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1124863, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4682076, r.year = 2022;

// Query 50
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2795916171, r.year = 2021;

// Query 51
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -443454164, r.year = 2020;

// Query 52
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2298160, r.year = 2024, r.as_of = date('2024-03-31');

// Query 53
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1350516, r.year = 2023, r.as_of = date('2023-03-31');

// Query 54
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2195960, r.year = 2024, r.as_of = date('2024-03-31');

// Query 55
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1443316, r.year = 2023, r.as_of = date('2023-03-31');

// Query 56
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78108878, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 80603190, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 81384948, r.year = 2022;

// Query 59
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 86029158, r.year = 2021;

// Query 60
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3352447608, r.year = 2020;

// Query 61
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 66985422, r.year = 2024, r.as_of = date('2024-03-31');

// Query 62
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 69377532, r.year = 2023, r.as_of = date('2023-03-31');

// Query 63
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 95716110, r.year = 2024, r.as_of = date('2024-03-31');

// Query 64
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 94181633, r.year = 2023, r.as_of = date('2023-03-31');

// Query 65
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 110637280, r.year = 2024, r.as_of = date('2024-03-31');

// Query 66
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 109102743, r.year = 2023, r.as_of = date('2023-03-31');

// Query 67
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.73, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.40, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.65, r.year = 2022;

// Query 70
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 982.75, r.year = 2021;

// Query 71
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -70.63, r.year = 2020;

// Query 72
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6138738, r.year = 2024;

// Query 73
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7565090, r.year = 2023;

// Query 74
// Step 8: Sectors;

// Query 75
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 76
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 77
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 78
// Step 9: IN_SECTOR Relationships;

// Query 79
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 80
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 81
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 82
// Step 10: Product nodes creation;

// Query 83
MERGE (p:Product {name: 'Property Rental'}) ON CREATE SET p.id = 'property_rental';

// Query 84
MERGE (p:Product {name: 'Investment Services'}) ON CREATE SET p.id = 'investment_services';

// Query 85
MERGE (p:Product {name: 'Shipping Services'}) ON CREATE SET p.id = 'shipping_services';

// Query 86
// Step 11: OFFERS Relationships;

// Query 87
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (p:Product {name: 'Property Rental'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (p:Product {name: 'Investment Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Mercantile Shipping Company'}), (p:Product {name: 'Shipping Services'}) MERGE (c)-[:OFFERS]->(p) ON CREATE SET p.status = 'discontinued';

// Query 90
// Step 12: Company-Company Relationships (OWNS);

// Query 91
MATCH (parent:Company {name: 'Mercantile Shipping Company'}), (child:Company {name: 'Mercantile Global Shipping'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Total queries: 91
// Generated on: 2025-10-03T03:08:03.983922
