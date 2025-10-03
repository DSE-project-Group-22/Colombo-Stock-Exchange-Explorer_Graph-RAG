// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Hapugastenne Plantations'}) ON CREATE SET c.id = 'hapugastenne_plantations', c.founded_on = date('1992-06-11'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'D. J. Ratwatte'}) ON CREATE SET p.id = 'd_j_ratwatte';

// Query 9
MERGE (p:Person {name: 'A. S. Perera'}) ON CREATE SET p.id = 'a_s_perera';

// Query 10
MERGE (p:Person {name: 'G. D. V. Perera'}) ON CREATE SET p.id = 'g_d_v_perera';

// Query 11
MERGE (p:Person {name: 'P. S. H. Uluwaduge'}) ON CREATE SET p.id = 'p_s_h_uluwaduge';

// Query 12
MERGE (p:Person {name: 'D. S. K. Amarasekera'}) ON CREATE SET p.id = 'd_s_k_amarasekera';

// Query 13
MERGE (p:Person {name: 'V. G. S. S. Kotakadeniya'}) ON CREATE SET p.id = 'v_g_s_s_kotakadeniya';

// Query 14
MERGE (p:Person {name: 'T. Dharmarajah'}) ON CREATE SET p.id = 't_dharmarajah';

// Query 15
MERGE (p:Person {name: 'U. H. Ebert Silva'}) ON CREATE SET p.id = 'u_h_ebert_silva';

// Query 16
// Step 5: HOLDS_POSITION Relationships;

// Query 17
MATCH (p:Person {name: 'D. J. Ratwatte'}), (c:Company {name: 'Hapugastenne Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'D. J. Ratwatte'}), (c:Company {name: 'Hapugastenne Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'A. S. Perera'}), (c:Company {name: 'Hapugastenne Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'G. D. V. Perera'}), (c:Company {name: 'Hapugastenne Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'P. S. H. Uluwaduge'}), (c:Company {name: 'Hapugastenne Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'P. S. H. Uluwaduge'}), (c:Company {name: 'Hapugastenne Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'D. S. K. Amarasekera'}), (c:Company {name: 'Hapugastenne Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'V. G. S. S. Kotakadeniya'}), (c:Company {name: 'Hapugastenne Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'T. Dharmarajah'}), (c:Company {name: 'Hapugastenne Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'U. H. Ebert Silva'}), (c:Company {name: 'Hapugastenne Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
// Step 6: Metric Nodes;

// Query 28
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 35
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 36
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 37
// Step 7: HAS_METRIC Relationships;

// Query 38
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4905298000, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6460982000, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 907883000, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1110779000, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 72104000, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 668179000, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8882016000, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8044036000, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3429163000, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3417954000, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.72, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14.46, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.4, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31.8, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.48, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.44, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.53, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.30, r.year = 2023;

// Query 56
// Step 8: Sector Nodes;

// Query 57
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 58
// Step 9: IN_SECTOR Relationships;

// Query 59
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 60
// Step 10: Product Nodes;

// Query 61
MERGE (p:Product {name: 'Tea'}) ON CREATE SET p.id = 'tea';

// Query 62
MERGE (p:Product {name: 'Rubber'}) ON CREATE SET p.id = 'rubber';

// Query 63
MERGE (p:Product {name: 'Coconut'}) ON CREATE SET p.id = 'coconut';

// Query 64
MERGE (p:Product {name: 'Diversified Crops'}) ON CREATE SET p.id = 'diversified_crops';

// Query 65
MERGE (p:Product {name: 'Nursery Plants'}) ON CREATE SET p.id = 'nursery_plants';

// Query 66
// Step 11: OFFERS Relationships;

// Query 67
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (p:Product {name: 'Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 68
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (p:Product {name: 'Rubber'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (p:Product {name: 'Coconut'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (p:Product {name: 'Diversified Crops'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Hapugastenne Plantations'}), (p:Product {name: 'Nursery Plants'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
// Step 12: Company-Company Relationships (MANAGES);

// Query 73
MERGE (m:Company {name: 'LOLC Holdings'}) ON CREATE SET m.id = 'lolc_holdings';

// Query 74
MATCH (manager:Company {name: 'LOLC Holdings'}), (managed:Company {name: 'Hapugastenne Plantations'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'manages cyber security', r.as_of = date('2024-03-31');

// Total queries: 74
// Generated on: 2025-10-03T00:17:14.864769
