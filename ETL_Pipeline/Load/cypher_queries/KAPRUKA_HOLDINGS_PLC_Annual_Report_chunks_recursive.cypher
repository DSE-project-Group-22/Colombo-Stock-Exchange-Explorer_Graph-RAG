// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Kapruka Holdings'}) ON CREATE SET c.id = 'kapruka_holdings', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'Kapruka E-Commerce'}) ON CREATE SET c.id = 'kapruka_e_commerce';

// Query 4
MERGE (c:Company {name: 'Kapruka Tech Root'}) ON CREATE SET c.id = 'kapruka_tech_root';

// Query 5
MERGE (c:Company {name: 'Kapruka Productions'}) ON CREATE SET c.id = 'kapruka_productions';

// Query 6
MERGE (c:Company {name: 'Kapruka USA'}) ON CREATE SET c.id = 'kapruka_usa';

// Query 7
// Step 2: Auditor;

// Query 8
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 9
// Step 3: AUDITED_BY Relationship;

// Query 10
MATCH (c:Company {name: 'Kapruka Holdings'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 11
// Step 4: People - Directors and Executives;

// Query 12
MERGE (p:Person {name: 'Dulith V. Herath'}) ON CREATE SET p.id = 'dulith_v_herath';

// Query 13
MERGE (p:Person {name: 'Anuradha Herath'}) ON CREATE SET p.id = 'anuradha_herath';

// Query 14
MERGE (p:Person {name: 'Priyanthi Pieris'}) ON CREATE SET p.id = 'priyanthi_pieris';

// Query 15
MERGE (p:Person {name: 'Thilangani Herath'}) ON CREATE SET p.id = 'thilangani_herath';

// Query 16
MERGE (p:Person {name: 'Manohari Abeyesekera'}) ON CREATE SET p.id = 'manohari_abeyesekera';

// Query 17
MERGE (p:Person {name: 'D. B. S. Chamara Bandara'}) ON CREATE SET p.id = 'd_b_s_chamara_bandara';

// Query 18
MERGE (p:Person {name: 'Suresh Subasinghe'}) ON CREATE SET p.id = 'suresh_subasinghe';

// Query 19
MERGE (p:Person {name: 'Lakshman Abeysekera'}) ON CREATE SET p.id = 'lakshman_abeysekera';

// Query 20
MERGE (p:Person {name: 'Sivakumar Alexander'}) ON CREATE SET p.id = 'sivakumar_alexander';

// Query 21
MERGE (p:Person {name: 'Tishan Subasinghe'}) ON CREATE SET p.id = 'tishan_subasinghe';

// Query 22
MERGE (p:Person {name: 'Suresh Eranda'}) ON CREATE SET p.id = 'suresh_eranda';

// Query 23
MERGE (p:Person {name: 'Shanika Dilrukshi'}) ON CREATE SET p.id = 'shanika_dilrukshi';

// Query 24
MERGE (p:Person {name: 'Gayathri Banneheka'}) ON CREATE SET p.id = 'gayathri_banneheka';

// Query 25
MERGE (p:Person {name: 'Akila Thalpawila'}) ON CREATE SET p.id = 'akila_thalpawila';

// Query 26
MERGE (p:Person {name: 'Manjula Kumara'}) ON CREATE SET p.id = 'manjula_kumara';

// Query 27
MERGE (p:Person {name: 'Kasun Kulawansha'}) ON CREATE SET p.id = 'kasun_kulawansha';

// Query 28
// Step 5: HOLDS_POSITION Relationships;

// Query 29
MATCH (p:Person {name: 'Dulith V. Herath'}), (c:Company {name: 'Kapruka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'Anuradha Herath'}), (c:Company {name: 'Kapruka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'Priyanthi Pieris'}), (c:Company {name: 'Kapruka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'Thilangani Herath'}), (c:Company {name: 'Kapruka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'Manohari Abeyesekera'}), (c:Company {name: 'Kapruka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'D. B. S. Chamara Bandara'}), (c:Company {name: 'Kapruka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'Suresh Subasinghe'}), (c:Company {name: 'Kapruka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-07-13');

// Query 36
MATCH (p:Person {name: 'Lakshman Abeysekera'}), (c:Company {name: 'Kapruka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-07-22');

// Query 37
MATCH (p:Person {name: 'Sivakumar Alexander'}), (c:Company {name: 'Kapruka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2023-10-31');

// Query 38
MATCH (p:Person {name: 'Tishan Subasinghe'}), (c:Company {name: 'Kapruka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-07-22');

// Query 39
MATCH (p:Person {name: 'Suresh Eranda'}), (c:Company {name: 'Kapruka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-03-31');

// Query 40
MATCH (p:Person {name: 'Shanika Dilrukshi'}), (c:Company {name: 'Kapruka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 41
MATCH (p:Person {name: 'Gayathri Banneheka'}), (c:Company {name: 'Kapruka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 42
MATCH (p:Person {name: 'Akila Thalpawila'}), (c:Company {name: 'Kapruka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 43
MATCH (p:Person {name: 'Manjula Kumara'}), (c:Company {name: 'Kapruka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-03-31');

// Query 44
MATCH (p:Person {name: 'Kasun Kulawansha'}), (c:Company {name: 'Kapruka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 45
// Step 6: Metrics;

// Query 46
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 51
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 52
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 54
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 55
// Step 7: HAS_METRIC Relationships (Kapruka Holdings - Group);

// Query 56
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790746000.0, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1953219000.0, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -109726000.0, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -30795000.0, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -117821000.0, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -85869000.0, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.72, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.51, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -13.0, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -8.0, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -7.0, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.0, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1584000000.0, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1673000000.0, r.year = 2023;

// Query 70
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 940000000.0, r.year = 2024;

// Query 71
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 37.0, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36.0, r.year = 2023;

// Query 73
// Step 8: HAS_METRIC Relationships (Kapruka Holdings - Company only);

// Query 74
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 203337000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 75
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 208396000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 76
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21842000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 77
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 71873000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 78
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12904000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 79
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13346000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 80
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.08, r.year = 2024, r.as_of = date('2024-03-31');

// Query 81
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.08, r.year = 2023, r.as_of = date('2023-03-31');

// Query 82
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 83
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 84
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 85
MATCH (c:Company {name: 'Kapruka Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 86
// Step 9: Sectors;

// Query 87
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 88
MERGE (s:Sector {name: 'Telecommunication Services'}) ON CREATE SET s.id = 'telecommunication_services';

// Query 89
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 90
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 91
// Step 10: IN_SECTOR Relationships;

// Query 92
MATCH (c:Company {name: 'Kapruka Holdings'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 93
MATCH (c:Company {name: 'Kapruka Holdings'}), (s:Sector {name: 'Telecommunication Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 94
MATCH (c:Company {name: 'Kapruka Holdings'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 95
MATCH (c:Company {name: 'Kapruka Holdings'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 96
MATCH (c:Company {name: 'Kapruka E-Commerce'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 97
MATCH (c:Company {name: 'Kapruka Tech Root'}), (s:Sector {name: 'Telecommunication Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 98
MATCH (c:Company {name: 'Kapruka Productions'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 99
MATCH (c:Company {name: 'Kapruka USA'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 100
MATCH (c:Company {name: 'Kapruka USA'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 101
// Step 11: Product nodes creation;

// Query 102
MERGE (p:Product {name: 'E-commerce Services'}) ON CREATE SET p.id = 'e_commerce_services';

// Query 103
MERGE (p:Product {name: 'Internet Services'}) ON CREATE SET p.id = 'internet_services';

// Query 104
MERGE (p:Product {name: 'Cakes'}) ON CREATE SET p.id = 'cakes';

// Query 105
MERGE (p:Product {name: 'Chocolates'}) ON CREATE SET p.id = 'chocolates';

// Query 106
MERGE (p:Product {name: 'Baked Food Products'}) ON CREATE SET p.id = 'baked_food_products';

// Query 107
MERGE (p:Product {name: 'Payment Gateway Services'}) ON CREATE SET p.id = 'payment_gateway_services';

// Query 108
MERGE (p:Product {name: 'Cross-Border E-commerce Services'}) ON CREATE SET p.id = 'cross_border_e_commerce_services';

// Query 109
// Step 12: OFFERS relationships;

// Query 110
MATCH (c:Company {name: 'Kapruka E-Commerce'}), (p:Product {name: 'E-commerce Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 111
MATCH (c:Company {name: 'Kapruka Tech Root'}), (p:Product {name: 'Internet Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 112
MATCH (c:Company {name: 'Kapruka Productions'}), (p:Product {name: 'Cakes'}) MERGE (c)-[:OFFERS]->(p);

// Query 113
MATCH (c:Company {name: 'Kapruka Productions'}), (p:Product {name: 'Chocolates'}) MERGE (c)-[:OFFERS]->(p);

// Query 114
MATCH (c:Company {name: 'Kapruka Productions'}), (p:Product {name: 'Baked Food Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 115
MATCH (c:Company {name: 'Kapruka USA'}), (p:Product {name: 'Payment Gateway Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 116
MATCH (c:Company {name: 'Kapruka USA'}), (p:Product {name: 'Cross-Border E-commerce Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 117
// Step 13: Company-Company Relationships (OWNS);

// Query 118
MATCH (p:Company {name: 'Kapruka Holdings'}), (c:Company {name: 'Kapruka E-Commerce'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 119
MATCH (p:Company {name: 'Kapruka Holdings'}), (c:Company {name: 'Kapruka Tech Root'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 120
MATCH (p:Company {name: 'Kapruka Holdings'}), (c:Company {name: 'Kapruka Productions'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 121
MATCH (p:Company {name: 'Kapruka Holdings'}), (c:Company {name: 'Kapruka USA'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Total queries: 121
// Generated on: 2025-10-03T02:33:17.718423
