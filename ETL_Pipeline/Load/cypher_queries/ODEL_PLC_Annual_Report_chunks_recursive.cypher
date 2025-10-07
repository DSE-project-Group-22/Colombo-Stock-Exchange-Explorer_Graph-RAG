// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Odel'}) ON CREATE SET c.id = 'odel', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Odel'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 8
MERGE (p:Person {name: 'Haresh Kumar Kaimal'}) ON CREATE SET p.id = 'haresh_kumar_kaimal';

// Query 9
MERGE (p:Person {name: 'Ruanthi De Silva'}) ON CREATE SET p.id = 'ruanthi_de_silva';

// Query 10
MERGE (p:Person {name: 'R. P. Pathirana'}) ON CREATE SET p.id = 'r_p_pathirana';

// Query 11
MERGE (p:Person {name: 'J. M. J. Perera'}) ON CREATE SET p.id = 'j_m_j_perera';

// Query 12
// Step 4: HOLDS_POSITION Relationships;

// Query 13
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'Odel'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 14
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'Odel'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'Haresh Kumar Kaimal'}), (c:Company {name: 'Odel'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'Ruanthi De Silva'}), (c:Company {name: 'Odel'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'R. P. Pathirana'}), (c:Company {name: 'Odel'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'J. M. J. Perera'}), (c:Company {name: 'Odel'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 19
// Step 5: Metrics;

// Query 20
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 26
// Step 6: HAS_METRIC Relationships - Year 2024;

// Query 27
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7302893017, r.year = 2024;

// Query 28
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4266136660, r.year = 2024;

// Query 29
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4207745186, r.year = 2024;

// Query 30
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30671032652, r.year = 2024;

// Query 31
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1285649785, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106.0, r.year = 2024;

// Query 33
// Step 6: HAS_METRIC Relationships - Year 2023;

// Query 34
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8253285220, r.year = 2023;

// Query 35
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2665660013, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2211747708, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30880345336, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2909183022, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 87.0, r.year = 2023;

// Query 40
// Step 6: HAS_METRIC Relationships - Year 2022;

// Query 41
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7361065127, r.year = 2022;

// Query 42
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1418662744, r.year = 2022;

// Query 43
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1371443118, r.year = 2022;

// Query 44
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28363397507, r.year = 2022;

// Query 45
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5413286738, r.year = 2022;

// Query 46
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 74.0, r.year = 2022;

// Query 47
// Step 6: HAS_METRIC Relationships - Year 2021;

// Query 48
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5349571979, r.year = 2021;

// Query 49
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2097960994, r.year = 2021;

// Query 50
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1685445557, r.year = 2021;

// Query 51
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24333877537, r.year = 2021;

// Query 52
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6169508202, r.year = 2021;

// Query 53
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 68.0, r.year = 2021;

// Query 54
// Step 6: HAS_METRIC Relationships - Year 2020;

// Query 55
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7414336531, r.year = 2020;

// Query 56
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1240326404, r.year = 2020;

// Query 57
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -835550269, r.year = 2020;

// Query 58
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23677844543, r.year = 2020;

// Query 59
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7328661285, r.year = 2020;

// Query 60
MATCH (c:Company {name: 'Odel'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 61.0, r.year = 2020;

// Query 61
// Step 7: Sectors;

// Query 62
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 63
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 64
// Step 8: IN_SECTOR Relationships;

// Query 65
MATCH (c:Company {name: 'Odel'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 66
MATCH (c:Company {name: 'Odel'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 67
// Step 9: Product nodes creation;

// Query 68
MERGE (p:Product {name: 'Fashion Retail'}) ON CREATE SET p.id = 'fashion_retail';

// Query 69
MERGE (p:Product {name: 'Retail Space Leasing'}) ON CREATE SET p.id = 'retail_space_leasing';

// Query 70
MERGE (p:Product {name: 'Garment Manufacturing'}) ON CREATE SET p.id = 'garment_manufacturing';

// Query 71
MERGE (p:Product {name: 'Branded Apparel Retail'}) ON CREATE SET p.id = 'branded_apparel_retail';

// Query 72
MERGE (p:Product {name: 'Levi’s'}) ON CREATE SET p.id = 'levi_s';

// Query 73
MERGE (p:Product {name: 'Charles and Keith'}) ON CREATE SET p.id = 'charles_and_keith';

// Query 74
MERGE (p:Product {name: 'Aldo'}) ON CREATE SET p.id = 'aldo';

// Query 75
MERGE (p:Product {name: 'Calvin Klein'}) ON CREATE SET p.id = 'calvin_klein';

// Query 76
MERGE (p:Product {name: 'Tommy Hilfiger'}) ON CREATE SET p.id = 'tommy_hilfiger';

// Query 77
MERGE (p:Product {name: 'Mango'}) ON CREATE SET p.id = 'mango';

// Query 78
MERGE (p:Product {name: 'Yammay'}) ON CREATE SET p.id = 'yammay';

// Query 79
MERGE (p:Product {name: 'Nike'}) ON CREATE SET p.id = 'nike';

// Query 80
MERGE (p:Product {name: 'Adidas'}) ON CREATE SET p.id = 'adidas';

// Query 81
// Step 10: OFFERS Relationships;

// Query 82
MATCH (c:Company {name: 'Odel'}), (p:Product {name: 'Fashion Retail'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Odel'}), (p:Product {name: 'Retail Space Leasing'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Odel'}), (p:Product {name: 'Garment Manufacturing'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Odel'}), (p:Product {name: 'Branded Apparel Retail'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Odel'}), (p:Product {name: 'Levi’s'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Odel'}), (p:Product {name: 'Charles and Keith'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Odel'}), (p:Product {name: 'Aldo'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Odel'}), (p:Product {name: 'Calvin Klein'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Odel'}), (p:Product {name: 'Tommy Hilfiger'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Odel'}), (p:Product {name: 'Mango'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {name: 'Odel'}), (p:Product {name: 'Yammay'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: 'Odel'}), (p:Product {name: 'Nike'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: 'Odel'}), (p:Product {name: 'Adidas'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 94
// Generated on: 2025-10-03T03:44:17.561897
