// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Kegalle Plantations'}) ON CREATE SET c.id = 'kegalle_plantations', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Kegalle Plantations'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: Person Nodes Creation;

// Query 8
MERGE (p:Person {name: 'Prins Gunasekara'}) ON CREATE SET p.id = 'prins_gunasekara';

// Query 9
MERGE (p:Person {name: 'Sena Yaddehige'}) ON CREATE SET p.id = 'sena_yadehige';

// Query 10
MERGE (p:Person {name: 'R C W M R A Nugawela'}) ON CREATE SET p.id = 'r_c_w_m_r_a_nugawela';

// Query 11
MERGE (p:Person {name: 'S S B D G Jayawardena'}) ON CREATE SET p.id = 's_s_b_d_g_jayawardena';

// Query 12
MERGE (p:Person {name: 'Shaminda Yaddehige'}) ON CREATE SET p.id = 'shaminda_yadehige';

// Query 13
MERGE (p:Person {name: 'J L A Fernando'}) ON CREATE SET p.id = 'j_l_a_fernando';

// Query 14
MERGE (p:Person {name: 'I S Doranegama'}) ON CREATE SET p.id = 'i_s_doranegama';

// Query 15
MERGE (p:Person {name: 'W M R R K Wijekoon'}) ON CREATE SET p.id = 'w_m_r_r_k_wijekoon';

// Query 16
// Step 5: HOLDS_POSITION Relationships;

// Query 17
MATCH (p:Person {name: 'Prins Gunasekara'}), (c:Company {name: 'Kegalle Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'Sena Yaddehige'}), (c:Company {name: 'Kegalle Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'R C W M R A Nugawela'}), (c:Company {name: 'Kegalle Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'S S B D G Jayawardena'}), (c:Company {name: 'Kegalle Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Shaminda Yaddehige'}), (c:Company {name: 'Kegalle Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'J L A Fernando'}), (c:Company {name: 'Kegalle Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'I S Doranegama'}), (c:Company {name: 'Kegalle Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'W M R R K Wijekoon'}), (c:Company {name: 'Kegalle Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-03-31');

// Query 25
// Step 6: Metric Nodes Creation;

// Query 26
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 34
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 35
// Step 7: HAS_METRIC Relationships;

// Query 36
MATCH (c:Company {name: 'Kegalle Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3907107681, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Kegalle Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5294938000, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Kegalle Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 367107000, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Kegalle Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1246677000, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Kegalle Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 135618000, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Kegalle Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1017770000, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Kegalle Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21234000, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Kegalle Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 689858000, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Kegalle Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7846541000, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Kegalle Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7176029000, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Kegalle Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3647532000, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Kegalle Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3788453000, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Kegalle Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.85, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Kegalle Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27.59, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Kegalle Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.57, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Kegalle Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.49, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Kegalle Plantations'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25.0, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Kegalle Plantations'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21.0, r.year = 2023;

// Query 54
// Step 8: Sector Nodes Creation;

// Query 55
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 56
// Step 9: IN_SECTOR Relationships;

// Query 57
MATCH (c:Company {name: 'Kegalle Plantations'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 58
// Step 10: Product Nodes Creation;

// Query 59
MERGE (p:Product {name: 'Rubber'}) ON CREATE SET p.id = 'rubber';

// Query 60
MERGE (p:Product {name: 'Tea'}) ON CREATE SET p.id = 'tea';

// Query 61
MERGE (p:Product {name: 'Coconut'}) ON CREATE SET p.id = 'coconut';

// Query 62
MERGE (p:Product {name: 'Oil Palm'}) ON CREATE SET p.id = 'oil_palm';

// Query 63
MERGE (p:Product {name: 'Latex Foam Products'}) ON CREATE SET p.id = 'latex_foam_products';

// Query 64
MERGE (p:Product {name: 'Life Insurance Services'}) ON CREATE SET p.id = 'life_insurance_services';

// Query 65
// Step 11: OFFERS Relationships;

// Query 66
MATCH (c:Company {name: 'Kegalle Plantations'}), (p:Product {name: 'Rubber'}) MERGE (c)-[:OFFERS]->(p);

// Query 67
MATCH (c:Company {name: 'Kegalle Plantations'}), (p:Product {name: 'Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 68
MATCH (c:Company {name: 'Kegalle Plantations'}), (p:Product {name: 'Coconut'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Kegalle Plantations'}), (p:Product {name: 'Oil Palm'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
// Step 12: Company-Company Relationships (OWNS, MANAGES) - Skipped due to lack of explicit percentage or clear management context;

// Total queries: 70
// Generated on: 2025-10-03T01:26:56.741641
