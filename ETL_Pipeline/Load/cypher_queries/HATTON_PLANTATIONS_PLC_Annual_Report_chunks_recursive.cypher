// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Hatton Plantations'}) ON CREATE SET c.id = 'hatton_plantations', c.founded_on = date('2017-09-14'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor - Skipped as no specific auditor from the hardcoded list was identified.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Gary Seaton'}) ON CREATE SET p.id = 'gary_seaton';

// Query 6
MERGE (p:Person {name: 'Menaka Athukorala'}) ON CREATE SET p.id = 'menaka_athukorala';

// Query 7
MERGE (p:Person {name: 'Gowri Shankar'}) ON CREATE SET p.id = 'gowri_shankar';

// Query 8
MERGE (p:Person {name: 'Hiro Bhojwani'}) ON CREATE SET p.id = 'hiro_bhojwani';

// Query 9
MERGE (p:Person {name: 'Indrajith Fernando'}) ON CREATE SET p.id = 'indrajith_fernando';

// Query 10
MERGE (p:Person {name: 'Uditha Palihakkara'}) ON CREATE SET p.id = 'uditha_palihakkara';

// Query 11
MERGE (p:Person {name: 'Damascene Perera'}) ON CREATE SET p.id = 'damascene_perera';

// Query 12
MERGE (p:Person {name: 'Lucille Wijewardena'}) ON CREATE SET p.id = 'lucille_wijewardena';

// Query 13
MERGE (p:Person {name: 'Annemarie Outschoorn'}) ON CREATE SET p.id = 'annemarie_outschoorn';

// Query 14
MERGE (p:Person {name: 'Waruna Fernando'}) ON CREATE SET p.id = 'waruna_fernando';

// Query 15
MERGE (p:Person {name: 'Sujiva Godage'}) ON CREATE SET p.id = 'sujiva_godage';

// Query 16
// Step 4: HOLDS_POSITION Relationships;

// Query 17
MATCH (p:Person {name: 'Gary Seaton'}), (c:Company {name: 'Hatton Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2019-07-23');

// Query 18
MATCH (p:Person {name: 'Menaka Athukorala'}), (c:Company {name: 'Hatton Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2019-07-23');

// Query 19
MATCH (p:Person {name: 'Menaka Athukorala'}), (c:Company {name: 'Hatton Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2022-03-31');

// Query 20
MATCH (p:Person {name: 'Gowri Shankar'}), (c:Company {name: 'Hatton Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2019-07-17');

// Query 21
MATCH (p:Person {name: 'Hiro Bhojwani'}), (c:Company {name: 'Hatton Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2019-07-23');

// Query 22
MATCH (p:Person {name: 'Indrajith Fernando'}), (c:Company {name: 'Hatton Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2019-07-17');

// Query 23
MATCH (p:Person {name: 'Uditha Palihakkara'}), (c:Company {name: 'Hatton Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2019-07-30');

// Query 24
MATCH (p:Person {name: 'Damascene Perera'}), (c:Company {name: 'Hatton Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2021-01-15');

// Query 25
MATCH (p:Person {name: 'Lucille Wijewardena'}), (c:Company {name: 'Hatton Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2021-01-15');

// Query 26
MATCH (p:Person {name: 'Annemarie Outschoorn'}), (c:Company {name: 'Hatton Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'Waruna Fernando'}), (c:Company {name: 'Hatton Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'Sujiva Godage'}), (c:Company {name: 'Hatton Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Operating Officer', r.as_of = date('2024-03-31');

// Query 29
// Step 5: Metrics;

// Query 30
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 36
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 38
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 41
// Step 6: HAS_METRIC Relationships;

// Query 42
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7633209000, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7619812000, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1103584000, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1864870000, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1198829000, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2127046000, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1159111000, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2076769000, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1010168000, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1705951000, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20.4, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 37.2, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.27, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.2, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.59, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.43, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7568500000, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7105700000, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4944100000, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4586500000, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.5, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Hatton Plantations'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.0, r.year = 2023;

// Query 64
// Step 7: Sectors;

// Query 65
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 66
MERGE (s:Sector {name: 'Utilities'}) ON CREATE SET s.id = 'utilities';

// Query 67
// Step 8: IN_SECTOR Relationships;

// Query 68
MATCH (c:Company {name: 'Hatton Plantations'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 69
// Step 9: Product nodes creation;

// Query 70
MERGE (p:Product {name: 'Orthodox Tea'}) ON CREATE SET p.id = 'orthodox_tea';

// Query 71
MERGE (p:Product {name: 'CTC Tea'}) ON CREATE SET p.id = 'ctc_tea';

// Query 72
MERGE (p:Product {name: 'Green Tea'}) ON CREATE SET p.id = 'green_tea';

// Query 73
MERGE (p:Product {name: 'Hydro Power'}) ON CREATE SET p.id = 'hydro_power';

// Query 74
// Step 10: OFFERS Relationships;

// Query 75
MATCH (c:Company {name: 'Hatton Plantations'}), (p:Product {name: 'Orthodox Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
MATCH (c:Company {name: 'Hatton Plantations'}), (p:Product {name: 'CTC Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
MATCH (c:Company {name: 'Hatton Plantations'}), (p:Product {name: 'Green Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
// Step 11: Company-Company Relationships (OWNS, MANAGES) - Skipped due to missing explicit ownership percentages or clear management context.;

// Query 79
// Create subsidiary company for products;

// Query 80
MERGE (c:Company {name: 'Mark Marine Services'}) ON CREATE SET c.id = 'mark_marine_services';

// Query 81
MATCH (c:Company {name: 'Mark Marine Services'}), (p:Product {name: 'Hydro Power'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Mark Marine Services'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 82
// Generated on: 2025-10-02T23:55:30.105894
