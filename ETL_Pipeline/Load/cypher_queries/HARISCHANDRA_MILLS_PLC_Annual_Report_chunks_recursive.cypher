// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Harischandra Mills'}) ON CREATE SET c.id = 'harischandra_mills', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'Harischandra Mills (Distributors)'}) ON CREATE SET c.id = 'harischandra_mills_distributors', c.region = 'Sri Lanka';

// Query 4
// Step 2: Auditor;

// Query 5
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 6
// Step 3: AUDITED_BY Relationship;

// Query 7
MATCH (c:Company {name: 'Harischandra Mills'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 8
// Step 4: People - Directors and Executives;

// Query 9
MERGE (p:Person {name: 'S.N. Samarasinghe'}) ON CREATE SET p.id = 's_n_samarasinghe';

// Query 10
MERGE (p:Person {name: 'G.S.V. De Silva'}) ON CREATE SET p.id = 'g_s_v_de_silva';

// Query 11
MERGE (p:Person {name: 'M.P. De Silva'}) ON CREATE SET p.id = 'm_p_de_silva';

// Query 12
MERGE (p:Person {name: 'R.K. Samarasinghe'}) ON CREATE SET p.id = 'r_k_samarasinghe';

// Query 13
MERGE (p:Person {name: 'T.K. Bandaranaike'}) ON CREATE SET p.id = 't_k_bandaranaike';

// Query 14
MERGE (p:Person {name: 'S.A.S. Jayasundara'}) ON CREATE SET p.id = 's_a_s_jayasundara';

// Query 15
MERGE (p:Person {name: 'R. Kobbekaduwa'}) ON CREATE SET p.id = 'r_kobbekaduwa';

// Query 16
MERGE (p:Person {name: 'C.T. Gajanayake'}) ON CREATE SET p.id = 'c_t_gajanayake';

// Query 17
MERGE (p:Person {name: 'S.N.K. Nanayakkara'}) ON CREATE SET p.id = 's_n_k_nanayakkara';

// Query 18
MERGE (p:Person {name: 'D.S. Gamini Lokuralage'}) ON CREATE SET p.id = 'd_s_gamini_lokuralage';

// Query 19
MERGE (p:Person {name: 'A.P.R. Kodithuwakku'}) ON CREATE SET p.id = 'a_p_r_kodithuwakku';

// Query 20
MERGE (p:Person {name: 'N.P. Ranasinghe'}) ON CREATE SET p.id = 'n_p_ranasinghe';

// Query 21
MERGE (p:Person {name: 'H.M.R.S. Sanjeewa'}) ON CREATE SET p.id = 'h_m_r_s_sanjeewa';

// Query 22
MERGE (p:Person {name: 'N. Jayawardane'}) ON CREATE SET p.id = 'n_jayawardane';

// Query 23
MERGE (p:Person {name: 'R.G.P.P. Samarawickrama'}) ON CREATE SET p.id = 'r_g_p_p_samarawickrama';

// Query 24
// Step 5: HOLDS_POSITION Relationships for Harischandra Mills;

// Query 25
MATCH (p:Person {name: 'S.N. Samarasinghe'}), (c:Company {name: 'Harischandra Mills'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'G.S.V. De Silva'}), (c:Company {name: 'Harischandra Mills'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'M.P. De Silva'}), (c:Company {name: 'Harischandra Mills'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'R.K. Samarasinghe'}), (c:Company {name: 'Harischandra Mills'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'T.K. Bandaranaike'}), (c:Company {name: 'Harischandra Mills'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'T.K. Bandaranaike'}), (c:Company {name: 'Harischandra Mills'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'S.A.S. Jayasundara'}), (c:Company {name: 'Harischandra Mills'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'R. Kobbekaduwa'}), (c:Company {name: 'Harischandra Mills'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'C.T. Gajanayake'}), (c:Company {name: 'Harischandra Mills'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'S.N.K. Nanayakkara'}), (c:Company {name: 'Harischandra Mills'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'D.S. Gamini Lokuralage'}), (c:Company {name: 'Harischandra Mills'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 36
MATCH (p:Person {name: 'A.P.R. Kodithuwakku'}), (c:Company {name: 'Harischandra Mills'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 37
MATCH (p:Person {name: 'N.P. Ranasinghe'}), (c:Company {name: 'Harischandra Mills'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 38
MATCH (p:Person {name: 'H.M.R.S. Sanjeewa'}), (c:Company {name: 'Harischandra Mills'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 39
MATCH (p:Person {name: 'N. Jayawardane'}), (c:Company {name: 'Harischandra Mills'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 40
MATCH (p:Person {name: 'R.G.P.P. Samarawickrama'}), (c:Company {name: 'Harischandra Mills'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 41
// Step 6: HOLDS_POSITION Relationships for Harischandra Mills (Distributors);

// Query 42
MATCH (p:Person {name: 'T.K. Bandaranaike'}), (c:Company {name: 'Harischandra Mills (Distributors)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 43
MATCH (p:Person {name: 'S.N. Samarasinghe'}), (c:Company {name: 'Harischandra Mills (Distributors)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 44
MATCH (p:Person {name: 'G.S.V. De Silva'}), (c:Company {name: 'Harischandra Mills (Distributors)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 45
MATCH (p:Person {name: 'M.P. De Silva'}), (c:Company {name: 'Harischandra Mills (Distributors)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 46
MATCH (p:Person {name: 'S.A.S. Jayasundara'}), (c:Company {name: 'Harischandra Mills (Distributors)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 47
MATCH (p:Person {name: 'R.K. Samarasinghe'}), (c:Company {name: 'Harischandra Mills (Distributors)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 48
MATCH (p:Person {name: 'R. Kobbekaduwa'}), (c:Company {name: 'Harischandra Mills (Distributors)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 49
// Step 7: Metrics;

// Query 50
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 54
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 55
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 57
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 58
// Step 8: HAS_METRIC Relationships - 2024;

// Query 59
MATCH (c:Company {name: 'Harischandra Mills'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6301494101, r.year = 2024, r.as_of = date('2024-03-31');

// Query 60
MATCH (c:Company {name: 'Harischandra Mills'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 365497138, r.year = 2024, r.as_of = date('2024-03-31');

// Query 61
MATCH (c:Company {name: 'Harischandra Mills'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 224665290, r.year = 2024, r.as_of = date('2024-03-31');

// Query 62
MATCH (c:Company {name: 'Harischandra Mills'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 117.04, r.year = 2024, r.as_of = date('2024-03-31');

// Query 63
MATCH (c:Company {name: 'Harischandra Mills'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2737343633, r.year = 2024, r.as_of = date('2024-03-31');

// Query 64
MATCH (c:Company {name: 'Harischandra Mills'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1739465163, r.year = 2024, r.as_of = date('2024-03-31');

// Query 65
MATCH (c:Company {name: 'Harischandra Mills'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 309774720, r.year = 2024, r.as_of = date('2024-03-31');

// Query 66
MATCH (c:Company {name: 'Harischandra Mills'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.32, r.year = 2024, r.as_of = date('2024-03-31');

// Query 67
// Step 9: HAS_METRIC Relationships - 2023;

// Query 68
MATCH (c:Company {name: 'Harischandra Mills'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6464392609, r.year = 2023, r.as_of = date('2023-03-31');

// Query 69
MATCH (c:Company {name: 'Harischandra Mills'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 135692002, r.year = 2023, r.as_of = date('2023-03-31');

// Query 70
MATCH (c:Company {name: 'Harischandra Mills'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 90195126, r.year = 2023, r.as_of = date('2023-03-31');

// Query 71
MATCH (c:Company {name: 'Harischandra Mills'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 46.99, r.year = 2023, r.as_of = date('2023-03-31');

// Query 72
MATCH (c:Company {name: 'Harischandra Mills'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2244621790, r.year = 2023, r.as_of = date('2023-03-31');

// Query 73
MATCH (c:Company {name: 'Harischandra Mills'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1591046795, r.year = 2023, r.as_of = date('2023-03-31');

// Query 74
MATCH (c:Company {name: 'Harischandra Mills'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 118082746, r.year = 2023, r.as_of = date('2023-03-31');

// Query 75
MATCH (c:Company {name: 'Harischandra Mills'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.97, r.year = 2023, r.as_of = date('2023-03-31');

// Query 76
// Step 10: Sectors;

// Query 77
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 78
MERGE (s:Sector {name: 'Household and Personal Products'}) ON CREATE SET s.id = 'household_and_personal_products';

// Query 79
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 80
// Step 11: IN_SECTOR Relationships;

// Query 81
MATCH (c:Company {name: 'Harischandra Mills'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 82
MATCH (c:Company {name: 'Harischandra Mills'}), (s:Sector {name: 'Household and Personal Products'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 83
MATCH (c:Company {name: 'Harischandra Mills'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 84
// Step 12: Products;

// Query 85
MERGE (p:Product {name: 'Coffee'}) ON CREATE SET p.id = 'coffee';

// Query 86
MERGE (p:Product {name: 'Noodles'}) ON CREATE SET p.id = 'noodles';

// Query 87
MERGE (p:Product {name: 'Papadam'}) ON CREATE SET p.id = 'papadam';

// Query 88
MERGE (p:Product {name: 'Flour Based Products'}) ON CREATE SET p.id = 'flour_based_products';

// Query 89
MERGE (p:Product {name: 'Laundry Soaps'}) ON CREATE SET p.id = 'laundry_soaps';

// Query 90
MERGE (p:Product {name: 'Toilet Soaps'}) ON CREATE SET p.id = 'toilet_soaps';

// Query 91
MERGE (p:Product {name: 'Petrol'}) ON CREATE SET p.id = 'petrol';

// Query 92
MERGE (p:Product {name: 'Diesel'}) ON CREATE SET p.id = 'diesel';

// Query 93
MERGE (p:Product {name: 'Kerosene Oil'}) ON CREATE SET p.id = 'kerosene_oil';

// Query 94
MERGE (p:Product {name: 'Lubricants'}) ON CREATE SET p.id = 'lubricants';

// Query 95
// Step 13: OFFERS Relationships;

// Query 96
MATCH (c:Company {name: 'Harischandra Mills'}), (p:Product {name: 'Coffee'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: 'Harischandra Mills'}), (p:Product {name: 'Noodles'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'Harischandra Mills'}), (p:Product {name: 'Papadam'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: 'Harischandra Mills'}), (p:Product {name: 'Flour Based Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
MATCH (c:Company {name: 'Harischandra Mills'}), (p:Product {name: 'Laundry Soaps'}) MERGE (c)-[:OFFERS]->(p);

// Query 101
MATCH (c:Company {name: 'Harischandra Mills'}), (p:Product {name: 'Toilet Soaps'}) MERGE (c)-[:OFFERS]->(p);

// Query 102
MATCH (c:Company {name: 'Harischandra Mills'}), (p:Product {name: 'Petrol'}) MERGE (c)-[:OFFERS]->(p);

// Query 103
MATCH (c:Company {name: 'Harischandra Mills'}), (p:Product {name: 'Diesel'}) MERGE (c)-[:OFFERS]->(p);

// Query 104
MATCH (c:Company {name: 'Harischandra Mills'}), (p:Product {name: 'Kerosene Oil'}) MERGE (c)-[:OFFERS]->(p);

// Query 105
MATCH (c:Company {name: 'Harischandra Mills'}), (p:Product {name: 'Lubricants'}) MERGE (c)-[:OFFERS]->(p);

// Query 106
// Step 14: Company-Company Relationships (OWNS);

// Query 107
MATCH (parent:Company {name: 'Harischandra Mills'}), (child:Company {name: 'Harischandra Mills (Distributors)'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Total queries: 107
// Generated on: 2025-10-02T22:07:33.983132
