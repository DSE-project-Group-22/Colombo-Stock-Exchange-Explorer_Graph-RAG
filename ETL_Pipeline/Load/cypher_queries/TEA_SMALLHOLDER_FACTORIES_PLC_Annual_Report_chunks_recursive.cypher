// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Tea Smallholder Factories'}) ON CREATE SET c.id = 'tea_smallholder_factories', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'K. N. J. Balendra'}) ON CREATE SET p.id = 'k_n_j_balendra';

// Query 8
MERGE (p:Person {name: 'J. G. A. Cooray'}) ON CREATE SET p.id = 'j_g_a_cooray';

// Query 9
MERGE (p:Person {name: 'A. Z. Hashim'}) ON CREATE SET p.id = 'a_z_hashim';

// Query 10
MERGE (p:Person {name: 'E. H. Wijenaike'}) ON CREATE SET p.id = 'e_h_wijenaike';

// Query 11
MERGE (p:Person {name: 'A. K. Gunaratne'}) ON CREATE SET p.id = 'a_k_gunaratne';

// Query 12
MERGE (p:Person {name: 'A. Goonetilleke'}) ON CREATE SET p.id = 'a_goonetilleke';

// Query 13
MERGE (p:Person {name: 'A. S. Jayatilleka'}) ON CREATE SET p.id = 'a_s_jayatilleka';

// Query 14
MERGE (p:Person {name: 'S. K. L. Obeyesekere'}) ON CREATE SET p.id = 's_k_l_obeyesekere';

// Query 15
MERGE (p:Person {name: 'R. H. Walpola'}) ON CREATE SET p.id = 'r_h_walpola';

// Query 16
// Step 4: HOLDS_POSITION Relationships;

// Query 17
MATCH (p:Person {name: 'K. N. J. Balendra'}), (c:Company {name: 'Tea Smallholder Factories'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'J. G. A. Cooray'}), (c:Company {name: 'Tea Smallholder Factories'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'A. Z. Hashim'}), (c:Company {name: 'Tea Smallholder Factories'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'E. H. Wijenaike'}), (c:Company {name: 'Tea Smallholder Factories'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'A. K. Gunaratne'}), (c:Company {name: 'Tea Smallholder Factories'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'A. Goonetilleke'}), (c:Company {name: 'Tea Smallholder Factories'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'A. S. Jayatilleka'}), (c:Company {name: 'Tea Smallholder Factories'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'S. K. L. Obeyesekere'}), (c:Company {name: 'Tea Smallholder Factories'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'R. H. Walpola'}), (c:Company {name: 'Tea Smallholder Factories'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 26
// Step 5: Metrics;

// Query 27
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 33
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 36
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 37
// Step 6: HAS_METRIC Relationships;

// Query 38
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3055960000, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3743939000, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2018797000, r.year = 2022;

// Query 41
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2346224000, r.year = 2021;

// Query 42
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2109139000, r.year = 2020;

// Query 43
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -39014000, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 411015000, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -10568000, r.year = 2022;

// Query 46
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 89271000, r.year = 2021;

// Query 47
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16111000, r.year = 2020;

// Query 48
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -19688000, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 440626000, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22657000, r.year = 2022;

// Query 51
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78589000, r.year = 2021;

// Query 52
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30938000, r.year = 2020;

// Query 53
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6229000, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 278495000, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15311000, r.year = 2022;

// Query 56
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.21, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.28, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.51, r.year = 2022;

// Query 59
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.22, r.year = 2021;

// Query 60
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.47, r.year = 2020;

// Query 61
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.38, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.20, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.0, r.year = 2022;

// Query 64
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.6, r.year = 2021;

// Query 65
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.7, r.year = 2020;

// Query 66
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2220447000, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2305083000, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1883609000, r.year = 2022;

// Query 69
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1673000000, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1618868000, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1515671000, r.year = 2022;

// Query 72
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.21, r.year = 2024;

// Query 73
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.80, r.year = 2023;

// Query 74
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.49, r.year = 2022;

// Query 75
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.01, r.year = 2024;

// Query 76
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.00, r.year = 2023;

// Query 77
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.00, r.year = 2022;

// Query 78
// Step 7: Sectors;

// Query 79
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 80
// Step 8: IN_SECTOR Relationships;

// Query 81
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 82
// Step 9: Products;

// Query 83
MERGE (p:Product {name: 'Processed Black Tea'}) ON CREATE SET p.id = 'processed_black_tea';

// Query 84
MERGE (p:Product {name: 'CTC Black Tea'}) ON CREATE SET p.id = 'ctc_black_tea';

// Query 85
MERGE (p:Product {name: 'Orthodox Black Tea'}) ON CREATE SET p.id = 'orthodox_black_tea';

// Query 86
// Step 10: OFFERS Relationships;

// Query 87
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (p:Product {name: 'Processed Black Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (p:Product {name: 'CTC Black Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Tea Smallholder Factories'}), (p:Product {name: 'Orthodox Black Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
// Step 11: Company-Company Relationships;

// Query 91
MERGE (parent:Company {name: 'John Keells Holdings'}) ON CREATE SET parent.id = 'john_keells_holdings', parent.region = 'Sri Lanka';

// Query 92
MATCH (manager:Company {name: 'John Keells Holdings'}), (managed:Company {name: 'Tea Smallholder Factories'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Manages a portfolio of holdings and provides function based services', r.as_of = date('2024-03-31');

// Query 93
MERGE (shareholder1:Company {name: 'T R L Holdings'}) ON CREATE SET shareholder1.id = 't_r_l_holdings';

// Query 94
MATCH (p:Company {name: 'T R L Holdings'}), (c:Company {name: 'Tea Smallholder Factories'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.16, r.as_of = date('2024-03-31');

// Query 95
MATCH (p:Company {name: 'T R L Holdings'}), (c:Company {name: 'Tea Smallholder Factories'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.14, r.as_of = date('2023-03-31');

// Query 96
MERGE (shareholder2:Company {name: 'Citizens Development Business Finance'}) ON CREATE SET shareholder2.id = 'citizens_development_business_finance';

// Query 97
MATCH (p:Company {name: 'Citizens Development Business Finance'}), (c:Company {name: 'Tea Smallholder Factories'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.12, r.as_of = date('2024-03-31');

// Total queries: 97
// Generated on: 2025-10-02T22:24:23.201266
