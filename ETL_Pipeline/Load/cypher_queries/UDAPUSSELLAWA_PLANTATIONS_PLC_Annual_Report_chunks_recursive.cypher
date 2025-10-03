// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Udapussellawa Plantations'}) ON CREATE SET c.id = 'udapussellawa_plantations', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('1992-06-11');

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'P. S. H. Uluwaduge'}) ON CREATE SET p.id = 'p_s_h_uluwaduge';

// Query 8
MERGE (p:Person {name: 'D. J. Ratwatte'}) ON CREATE SET p.id = 'd_j_ratwatte';

// Query 9
MERGE (p:Person {name: 'Anusha S Perera'}) ON CREATE SET p.id = 'anusha_s_perera';

// Query 10
MERGE (p:Person {name: 'Ganegodage Dhamitha Vaamaka Perera'}) ON CREATE SET p.id = 'ganegodage_dhamitha_vaamaka_perera';

// Query 11
MERGE (p:Person {name: 'V. G. S. S. Kotakadeniya'}) ON CREATE SET p.id = 'v_g_s_s_kotakadeniya';

// Query 12
MERGE (p:Person {name: 'D. S. K. Amarasekera'}) ON CREATE SET p.id = 'd_s_k_amarasekera';

// Query 13
MERGE (p:Person {name: 'T. Dharmarajah'}) ON CREATE SET p.id = 't_dharmarajah';

// Query 14
MERGE (p:Person {name: 'U. H. Ebert Silva'}) ON CREATE SET p.id = 'u_h_ebert_silva';

// Query 15
// Step 4: HOLDS_POSITION Relationships;

// Query 16
MATCH (p:Person {name: 'P. S. H. Uluwaduge'}), (c:Company {name: 'Udapussellawa Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'D. J. Ratwatte'}), (c:Company {name: 'Udapussellawa Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'Anusha S Perera'}), (c:Company {name: 'Udapussellawa Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'Ganegodage Dhamitha Vaamaka Perera'}), (c:Company {name: 'Udapussellawa Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'V. G. S. S. Kotakadeniya'}), (c:Company {name: 'Udapussellawa Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'D. S. K. Amarasekera'}), (c:Company {name: 'Udapussellawa Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'T. Dharmarajah'}), (c:Company {name: 'Udapussellawa Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'U. H. Ebert Silva'}), (c:Company {name: 'Udapussellawa Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
// Step 5: Metrics;

// Query 25
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 28
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 29
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 30
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 33
// Step 6: HAS_METRIC Relationships;

// Query 34
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3160463000, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4195223000, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2081000000, r.year = 2021;

// Query 37
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1875000000, r.year = 2020;

// Query 38
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1630000000, r.year = 2019;

// Query 39
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 795366000, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1034637000, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 241000000, r.year = 2021;

// Query 42
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 109000000, r.year = 2020;

// Query 43
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -346000000, r.year = 2019;

// Query 44
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28.9, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 67.9, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 41.5, r.year = 2021;

// Query 47
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27.6, r.year = 2020;

// Query 48
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -69.8, r.year = 2019;

// Query 49
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.8, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.4, r.year = 2021;

// Query 52
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.3, r.year = 2020;

// Query 53
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.3, r.year = 2019;

// Query 54
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.47, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.75, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5181837000, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4489192000, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3129628000, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2370689000, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 41.00, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 53.33, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 34.91, r.year = 2021;

// Query 63
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25.06, r.year = 2020;

// Query 64
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.87, r.year = 2019;

// Query 65
// Step 7: Sectors;

// Query 66
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 67
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 68
// Step 8: IN_SECTOR Relationships;

// Query 69
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 70
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 71
// Step 9: Products;

// Query 72
MERGE (p:Product {name: 'Tea'}) ON CREATE SET p.id = 'tea';

// Query 73
MERGE (p:Product {name: 'Rubber'}) ON CREATE SET p.id = 'rubber';

// Query 74
MERGE (p:Product {name: 'Coconut'}) ON CREATE SET p.id = 'coconut';

// Query 75
MERGE (p:Product {name: 'Pepper'}) ON CREATE SET p.id = 'pepper';

// Query 76
MERGE (p:Product {name: 'Cinnamon'}) ON CREATE SET p.id = 'cinnamon';

// Query 77
MERGE (p:Product {name: 'Nursery Plants'}) ON CREATE SET p.id = 'nursery_plants';

// Query 78
MERGE (p:Product {name: 'Coconut Husks'}) ON CREATE SET p.id = 'coconut_husks';

// Query 79
MERGE (p:Product {name: 'Timber'}) ON CREATE SET p.id = 'timber';

// Query 80
// Step 10: OFFERS Relationships;

// Query 81
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (p:Product {name: 'Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (p:Product {name: 'Rubber'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (p:Product {name: 'Coconut'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (p:Product {name: 'Pepper'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (p:Product {name: 'Cinnamon'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (p:Product {name: 'Nursery Plants'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (p:Product {name: 'Coconut Husks'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Udapussellawa Plantations'}), (p:Product {name: 'Timber'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
// Step 11: Company-Company Relationships (MANAGES);

// Query 90
MERGE (m:Company {name: 'LOIT'}) ON CREATE SET m.id = 'loit';

// Query 91
MATCH (manager:Company {name: 'LOIT'}), (managed:Company {name: 'Udapussellawa Plantations'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'manages cyber security', r.as_of = date('2024-03-31');

// Total queries: 91
// Generated on: 2025-10-03T03:05:21.846245
