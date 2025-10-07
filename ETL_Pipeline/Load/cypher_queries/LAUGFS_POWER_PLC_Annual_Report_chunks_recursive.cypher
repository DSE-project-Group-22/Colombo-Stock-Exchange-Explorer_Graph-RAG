// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'LAUGFS Power'}) ON CREATE SET c.id = 'laugfs_power', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'LAUGFS Holdings'}) ON CREATE SET c.id = 'laugfs_holdings', c.region = 'Sri Lanka';

// Query 4
MERGE (c:Company {name: 'LAUGFS Gas'}) ON CREATE SET c.id = 'laugfs_gas', c.region = 'Sri Lanka';

// Query 5
MERGE (c:Company {name: 'Anorchi Lanka'}) ON CREATE SET c.id = 'anorchi_lanka', c.region = 'Sri Lanka';

// Query 6
MERGE (c:Company {name: 'Ginigathhena Thiniyagala Mini Hydro Power'}) ON CREATE SET c.id = 'ginigathhena_thiniyagala_mini_hydro_power', c.region = 'Sri Lanka';

// Query 7
MERGE (c:Company {name: 'Iris Eco Power Lanka'}) ON CREATE SET c.id = 'iris_eco_power_lanka', c.region = 'Sri Lanka';

// Query 8
MERGE (c:Company {name: 'Pams Power'}) ON CREATE SET c.id = 'pams_power', c.region = 'Sri Lanka';

// Query 9
MERGE (c:Company {name: 'Commercial Bank of Ceylon'}) ON CREATE SET c.id = 'commercial_bank_of_ceylon', c.region = 'Sri Lanka';

// Query 10
MERGE (c:Company {name: 'DFCC Bank'}) ON CREATE SET c.id = 'dfcc_bank', c.region = 'Sri Lanka';

// Query 11
MERGE (c:Company {name: 'Hatton National Bank'}) ON CREATE SET c.id = 'hatton_national_bank', c.region = 'Sri Lanka';

// Query 12
MERGE (c:Company {name: 'Sampath Bank'}) ON CREATE SET c.id = 'sampath_bank', c.region = 'Sri Lanka';

// Query 13
MERGE (c:Company {name: 'Peoples Bank'}) ON CREATE SET c.id = 'peoples_bank', c.region = 'Sri Lanka';

// Query 14
// Step 2: Auditor;

// Query 15
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 16
// Step 3: AUDITED_BY Relationship;

// Query 17
MATCH (c:Company {name: 'LAUGFS Power'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 18
// Step 4: Person Nodes Creation;

// Query 19
MERGE (p:Person {name: 'W.K.H. Wegapitiya'}) ON CREATE SET p.id = 'w_k_h_wegapitiya';

// Query 20
MERGE (p:Person {name: 'U.K. Thilak De Silva'}) ON CREATE SET p.id = 'u_k_thilak_de_silva';

// Query 21
MERGE (p:Person {name: 'P. Kudabalage'}) ON CREATE SET p.id = 'p_kudabalage';

// Query 22
MERGE (p:Person {name: 'P.M.B. Fernando'}) ON CREATE SET p.id = 'p_m_b_fernando';

// Query 23
MERGE (p:Person {name: 'S.P.P. Amaratunge'}) ON CREATE SET p.id = 's_p_p_amaratunge';

// Query 24
MERGE (p:Person {name: 'K.R. Goonesinghe'}) ON CREATE SET p.id = 'k_r_goonesinghe';

// Query 25
// Step 5: HOLDS_POSITION Relationships;

// Query 26
MATCH (p:Person {name: 'W.K.H. Wegapitiya'}), (c:Company {name: 'LAUGFS Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'W.K.H. Wegapitiya'}), (c:Company {name: 'LAUGFS Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'U.K. Thilak De Silva'}), (c:Company {name: 'LAUGFS Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'U.K. Thilak De Silva'}), (c:Company {name: 'LAUGFS Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'P. Kudabalage'}), (c:Company {name: 'LAUGFS Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'P. Kudabalage'}), (c:Company {name: 'LAUGFS Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'P. Kudabalage'}), (c:Company {name: 'LAUGFS Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'P.M.B. Fernando'}), (c:Company {name: 'LAUGFS Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'S.P.P. Amaratunge'}), (c:Company {name: 'LAUGFS Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'K.R. Goonesinghe'}), (c:Company {name: 'LAUGFS Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 36
// Step 6: Person OWNS_SHARES Relationships;

// Query 37
MATCH (p:Person {name: 'W.K.H. Wegapitiya'}), (c:Company {name: 'LAUGFS Power'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1411536, r.pct = 0.421, r.as_of = date('2024-03-31');

// Query 38
// Step 7: Metric Nodes Creation;

// Query 39
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 47
// Step 8: HAS_METRIC Relationships;

// Query 48
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 979343466, r.year = 2020;

// Query 49
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 982880136, r.year = 2021;

// Query 50
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1027698539, r.year = 2022;

// Query 51
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 968662275, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 967670263, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 680193341, r.year = 2020;

// Query 54
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 666599872, r.year = 2021;

// Query 55
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 709761552, r.year = 2022;

// Query 56
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 644536985, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 626096176, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 549054481, r.year = 2020;

// Query 59
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 531006496, r.year = 2021;

// Query 60
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -699236821, r.year = 2022;

// Query 61
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 486095002, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 462467264, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 185392551, r.year = 2020;

// Query 64
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 265202087, r.year = 2021;

// Query 65
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -918930038, r.year = 2022;

// Query 66
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -67569656, r.year = 2023;

// Query 67
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 89614097, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 125926243, r.year = 2020;

// Query 69
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 234743514, r.year = 2021;

// Query 70
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -902870634, r.year = 2022;

// Query 71
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -113614494, r.year = 2023;

// Query 72
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 51977819, r.year = 2024;

// Query 73
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.33, r.year = 2020;

// Query 74
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2021;

// Query 75
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2.33, r.year = 2022;

// Query 76
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.29, r.year = 2023;

// Query 77
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.13, r.year = 2024;

// Query 78
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5690311576, r.year = 2020;

// Query 79
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5438802549, r.year = 2021;

// Query 80
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4644625949, r.year = 2022;

// Query 81
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4933650746, r.year = 2023;

// Query 82
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4328700683, r.year = 2024;

// Query 83
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2709095541, r.year = 2020;

// Query 84
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2945480889, r.year = 2021;

// Query 85
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2044128664, r.year = 2022;

// Query 86
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1929498864, r.year = 2023;

// Query 87
MATCH (c:Company {name: 'LAUGFS Power'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1981515156, r.year = 2024;

// Query 88
// Step 9: Sector Nodes Creation;

// Query 89
MERGE (s:Sector {name: 'Utilities'}) ON CREATE SET s.id = 'utilities';

// Query 90
// Step 10: IN_SECTOR Relationships;

// Query 91
MATCH (c:Company {name: 'LAUGFS Power'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 92
MATCH (c:Company {name: 'Anorchi Lanka'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 93
MATCH (c:Company {name: 'Ginigathhena Thiniyagala Mini Hydro Power'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 94
MATCH (c:Company {name: 'Iris Eco Power Lanka'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 95
MATCH (c:Company {name: 'Pams Power'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 96
// Step 11: Product Nodes Creation;

// Query 97
MERGE (p:Product {name: 'Hydro Power Generation'}) ON CREATE SET p.id = 'hydro_power_generation';

// Query 98
MERGE (p:Product {name: 'Solar Power Generation'}) ON CREATE SET p.id = 'solar_power_generation';

// Query 99
// Step 12: OFFERS Relationships;

// Query 100
MATCH (c:Company {name: 'LAUGFS Power'}), (p:Product {name: 'Hydro Power Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 101
MATCH (c:Company {name: 'LAUGFS Power'}), (p:Product {name: 'Solar Power Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 102
MATCH (c:Company {name: 'Anorchi Lanka'}), (p:Product {name: 'Solar Power Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 103
MATCH (c:Company {name: 'Ginigathhena Thiniyagala Mini Hydro Power'}), (p:Product {name: 'Hydro Power Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 104
MATCH (c:Company {name: 'Iris Eco Power Lanka'}), (p:Product {name: 'Solar Power Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 105
MATCH (c:Company {name: 'Pams Power'}), (p:Product {name: 'Hydro Power Generation'}) MERGE (c)-[:OFFERS]->(p) ON CREATE SET p.status = 'planned';

// Query 106
// Step 13: Company-Company Relationships (OWNS, MANAGES);

// Query 107
MATCH (parent:Company {name: 'LAUGFS Holdings'}), (child:Company {name: 'LAUGFS Power'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.as_of = date('2024-03-31');

// Query 108
MATCH (parent:Company {name: 'LAUGFS Power'}), (child:Company {name: 'Anorchi Lanka'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.as_of = date('2024-03-31');

// Query 109
MATCH (parent:Company {name: 'LAUGFS Power'}), (child:Company {name: 'Ginigathhena Thiniyagala Mini Hydro Power'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.as_of = date('2024-03-31');

// Query 110
MATCH (parent:Company {name: 'LAUGFS Power'}), (child:Company {name: 'Iris Eco Power Lanka'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.as_of = date('2024-03-31');

// Query 111
MATCH (parent:Company {name: 'LAUGFS Power'}), (child:Company {name: 'Pams Power'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.as_of = date('2024-03-31');

// Query 112
MATCH (manager:Company {name: 'LAUGFS Holdings'}), (managed:Company {name: 'LAUGFS Gas'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Provides overall supervision and leadership to management', r.as_of = date('2024-03-31');

// Total queries: 112
// Generated on: 2025-10-03T03:35:27.558004
