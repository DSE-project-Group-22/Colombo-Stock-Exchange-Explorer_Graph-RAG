// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Watawala Plantations'}) ON CREATE SET c.id = 'watawala_plantations', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'Watawala Dairy'}) ON CREATE SET c.id = 'watawala_dairy';

// Query 4
MERGE (c:Company {name: 'Corporate Services'}) ON CREATE SET c.id = 'corporate_services';

// Query 5
MERGE (c:Company {name: 'Sunshine Holdings'}) ON CREATE SET c.id = 'sunshine_holdings';

// Query 6
// Step 2: Auditor;

// Query 7
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 8
MATCH (c:Company {name: 'Watawala Plantations'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 9
// Step 3: People - Directors and Executives;

// Query 10
MERGE (p:Person {name: 'Sunil G. Wijesinha'}) ON CREATE SET p.id = 'sunil_g_wijesinha';

// Query 11
MERGE (p:Person {name: 'Vish Govindasamy'}) ON CREATE SET p.id = 'vish_govindasamy';

// Query 12
MERGE (p:Person {name: 'S. G. Sathasivam'}) ON CREATE SET p.id = 's_g_sathasivam';

// Query 13
MERGE (p:Person {name: 'Sajaad Mawzoon'}) ON CREATE SET p.id = 'sajaad_mawzoon';

// Query 14
MERGE (p:Person {name: 'Thanveer Siddique'}) ON CREATE SET p.id = 'thanveer_siddique';

// Query 15
MERGE (p:Person {name: 'M. Ramachandra Rao'}) ON CREATE SET p.id = 'm_ramachandra_rao';

// Query 16
MERGE (p:Person {name: 'Reyaz Mihular'}) ON CREATE SET p.id = 'reyaz_mihular';

// Query 17
MERGE (p:Person {name: 'Albert Rasiah'}) ON CREATE SET p.id = 'albert_rasiah';

// Query 18
MERGE (p:Person {name: 'Harsha Abeywickrama'}) ON CREATE SET p.id = 'harsha_abeywickrama';

// Query 19
MERGE (p:Person {name: 'Arjuna Herath'}) ON CREATE SET p.id = 'arjuna_herath';

// Query 20
// Step 4: HOLDS_POSITION Relationships;

// Query 21
MATCH (p:Person {name: 'Sunil G. Wijesinha'}), (c:Company {name: 'Watawala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Vish Govindasamy'}), (c:Company {name: 'Watawala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'S. G. Sathasivam'}), (c:Company {name: 'Watawala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Sajaad Mawzoon'}), (c:Company {name: 'Watawala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Thanveer Siddique'}), (c:Company {name: 'Watawala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'M. Ramachandra Rao'}), (c:Company {name: 'Watawala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'Reyaz Mihular'}), (c:Company {name: 'Watawala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'Albert Rasiah'}), (c:Company {name: 'Watawala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'Harsha Abeywickrama'}), (c:Company {name: 'Watawala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'Arjuna Herath'}), (c:Company {name: 'Watawala Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
// Step 5: Metrics;

// Query 32
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 39
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 41
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 42
// Step 6: HAS_METRIC Relationships;

// Query 43
MATCH (c:Company {name: 'Watawala Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8321000000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Watawala Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8768000000.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Watawala Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2345000000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Watawala Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2332000000.0, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Watawala Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9431000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 48
MATCH (c:Company {name: 'Watawala Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8834000000.0, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Watawala Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2266000000.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Watawala Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2931000000.0, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Watawala Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2669000000.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Watawala Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2953000000.0, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Watawala Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.60, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Watawala Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.63, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Watawala Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38.0, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Watawala Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36.0, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Watawala Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6189000000.0, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Watawala Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6280000000.0, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Watawala Plantations'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.0, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Watawala Plantations'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.0, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'Watawala Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.86, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Watawala Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.28, r.year = 2023;

// Query 63
// Step 7: Sectors;

// Query 64
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 65
// Step 8: IN_SECTOR Relationships;

// Query 66
MATCH (c:Company {name: 'Watawala Plantations'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 67
// Step 9: Products;

// Query 68
MERGE (p:Product {name: 'Crude Palm Oil'}) ON CREATE SET p.id = 'crude_palm_oil';

// Query 69
MERGE (p:Product {name: 'Dairy Farming'}) ON CREATE SET p.id = 'dairy_farming';

// Query 70
MERGE (p:Product {name: 'Cinnamon'}) ON CREATE SET p.id = 'cinnamon';

// Query 71
MERGE (p:Product {name: 'RSPO Credits'}) ON CREATE SET p.id = 'rspo_credits';

// Query 72
// Step 10: OFFERS Relationships;

// Query 73
MATCH (c:Company {name: 'Watawala Plantations'}), (p:Product {name: 'Crude Palm Oil'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'Watawala Plantations'}), (p:Product {name: 'Dairy Farming'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'Watawala Plantations'}), (p:Product {name: 'Cinnamon'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
MATCH (c:Company {name: 'Watawala Plantations'}), (p:Product {name: 'RSPO Credits'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
// Step 11: Company-Company Relationships;

// Query 78
MATCH (parent:Company {name: 'Watawala Plantations'}), (child:Company {name: 'Watawala Dairy'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 89.9, r.as_of = date('2024-03-31');

// Query 79
MATCH (manager:Company {name: 'Corporate Services'}), (managed:Company {name: 'Watawala Plantations'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Company secretarial services', r.as_of = date('2024-03-31');

// Total queries: 79
// Generated on: 2025-10-02T23:54:19.854076
