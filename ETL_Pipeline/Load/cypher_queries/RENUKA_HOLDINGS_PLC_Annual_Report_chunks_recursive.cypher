// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Renuka Holdings'}) ON CREATE SET c.id = 'renuka_holdings', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Renuka Holdings'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: Subsidiary Company Nodes (for MANAGES relationships);

// Query 7
MERGE (c:Company {name: 'Renuka Agro Exports'}) ON CREATE SET c.id = 'renuka_agro_exports';

// Query 8
MERGE (c:Company {name: 'Renuka Enterprises'}) ON CREATE SET c.id = 'renuka_enterprises';

// Query 9
MERGE (c:Company {name: 'Shaw Wallace & Hedges'}) ON CREATE SET c.id = 'shaw_wallace_and_hedges';

// Query 10
MERGE (c:Company {name: 'Renuka Agri Foods'}) ON CREATE SET c.id = 'renuka_agri_foods';

// Query 11
MERGE (c:Company {name: 'Renuka Development'}) ON CREATE SET c.id = 'renuka_development';

// Query 12
MERGE (c:Company {name: 'Renuka Agri Organics'}) ON CREATE SET c.id = 'renuka_agri_organics';

// Query 13
MERGE (c:Company {name: 'Ceylon Forestry'}) ON CREATE SET c.id = 'ceylon_forestry';

// Query 14
MERGE (c:Company {name: 'Coco Lanka'}) ON CREATE SET c.id = 'coco_lanka';

// Query 15
MERGE (c:Company {name: 'Kandy Plantations'}) ON CREATE SET c.id = 'kandy_plantations';

// Query 16
MERGE (c:Company {name: 'Renuka Foods'}) ON CREATE SET c.id = 'renuka_foods';

// Query 17
MERGE (c:Company {name: 'Richlife Dairies'}) ON CREATE SET c.id = 'richlife_dairies';

// Query 18
MERGE (c:Company {name: 'Shaw Wallace Ceylon'}) ON CREATE SET c.id = 'shaw_wallace_ceylon';

// Query 19
MERGE (c:Company {name: 'Shaw Wallace Properties'}) ON CREATE SET c.id = 'shaw_wallace_properties';

// Query 20
MERGE (c:Company {name: 'Ceylon Land & Equity'}) ON CREATE SET c.id = 'ceylon_land_and_equity';

// Query 21
MERGE (c:Company {name: 'Galle Face Capital Partners'}) ON CREATE SET c.id = 'galle_face_capital_partners';

// Query 22
// Step 4: Person nodes creation;

// Query 23
MERGE (p:Person {name: 'I. R. Rajiyah'}) ON CREATE SET p.id = 'i_r_rajiyah';

// Query 24
MERGE (p:Person {name: 'S. R. Rajiyah'}) ON CREATE SET p.id = 's_r_rajiyah';

// Query 25
MERGE (p:Person {name: 'S. V. Rajiyah'}) ON CREATE SET p.id = 's_v_rajiyah';

// Query 26
MERGE (p:Person {name: 'J. J. B. A. Rajiyah'}) ON CREATE SET p.id = 'j_j_b_a_rajiyah';

// Query 27
MERGE (p:Person {name: 'V. Sanmugam'}) ON CREATE SET p.id = 'v_sanmugam';

// Query 28
MERGE (p:Person {name: 'M. S. Dominic'}) ON CREATE SET p.id = 'm_s_dominic';

// Query 29
MERGE (p:Person {name: 'T. K. Bandaranayake'}) ON CREATE SET p.id = 't_k_bandaranayake';

// Query 30
MERGE (p:Person {name: 'J. M. Swaminathan'}) ON CREATE SET p.id = 'j_m_swaminathan';

// Query 31
// Step 5: HOLDS_POSITION relationships;

// Query 32
MATCH (p:Person {name: 'I. R. Rajiyah'}), (c:Company {name: 'Renuka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'S. R. Rajiyah'}), (c:Company {name: 'Renuka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'S. V. Rajiyah'}), (c:Company {name: 'Renuka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'J. J. B. A. Rajiyah'}), (c:Company {name: 'Renuka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 36
MATCH (p:Person {name: 'V. Sanmugam'}), (c:Company {name: 'Renuka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 37
MATCH (p:Person {name: 'M. S. Dominic'}), (c:Company {name: 'Renuka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 38
MATCH (p:Person {name: 'T. K. Bandaranayake'}), (c:Company {name: 'Renuka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 39
MATCH (p:Person {name: 'J. M. Swaminathan'}), (c:Company {name: 'Renuka Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 40
MATCH (p:Person {name: 'S. V. Rajiyah'}), (c:Company {name: 'Ceylon Land & Equity'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 41
MATCH (p:Person {name: 'S. V. Rajiyah'}), (c:Company {name: 'Galle Face Capital Partners'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 42
// Step 6: Metric nodes creation;

// Query 43
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 51
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 52
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 53
// Step 7: HAS_METRIC relationships;

// Query 54
MATCH (c:Company {name: 'Renuka Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14273291000, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Renuka Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17089010000, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Renuka Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -410644000, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Renuka Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 903007000, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Renuka Holdings'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1806876000, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Renuka Holdings'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3298389000, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Renuka Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -454331000, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Renuka Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1327537000, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Renuka Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19131171000, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Renuka Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18807335000, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Renuka Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12716390688, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Renuka Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13233513118, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Renuka Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.08, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Renuka Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.43, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'Renuka Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3.23, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Renuka Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.82, r.year = 2023;

// Query 70
MATCH (c:Company {name: 'Renuka Holdings'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.62, r.year = 2024;

// Query 71
MATCH (c:Company {name: 'Renuka Holdings'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.96, r.year = 2023;

// Query 72
MATCH (c:Company {name: 'Renuka Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 49.87, r.year = 2024;

// Query 73
MATCH (c:Company {name: 'Renuka Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20.70, r.year = 2023;

// Query 74
// Step 8: Sector nodes creation;

// Query 75
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 76
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 77
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 78
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 79
// Step 9: IN_SECTOR relationships;

// Query 80
MATCH (c:Company {name: 'Renuka Holdings'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 81
MATCH (c:Company {name: 'Renuka Holdings'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 82
MATCH (c:Company {name: 'Renuka Holdings'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 83
MATCH (c:Company {name: 'Renuka Holdings'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 84
// Step 10: Product nodes creation;

// Query 85
MERGE (p:Product {name: 'Coconut Products'}) ON CREATE SET p.id = 'coconut_products';

// Query 86
MERGE (p:Product {name: 'Ethnic Food Products'}) ON CREATE SET p.id = 'ethnic_food_products';

// Query 87
MERGE (p:Product {name: 'Fast Moving Consumer Goods'}) ON CREATE SET p.id = 'fast_moving_consumer_goods';

// Query 88
MERGE (p:Product {name: 'Dairy Products'}) ON CREATE SET p.id = 'dairy_products';

// Query 89
MERGE (p:Product {name: 'Fruit Juice Products'}) ON CREATE SET p.id = 'fruit_juice_products';

// Query 90
MERGE (p:Product {name: 'Warehousing Facilities'}) ON CREATE SET p.id = 'warehousing_facilities';

// Query 91
MERGE (p:Product {name: 'Plantation Management'}) ON CREATE SET p.id = 'plantation_management';

// Query 92
// Step 11: OFFERS relationships;

// Query 93
MATCH (c:Company {name: 'Renuka Holdings'}), (p:Product {name: 'Coconut Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: 'Renuka Holdings'}), (p:Product {name: 'Ethnic Food Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'Renuka Holdings'}), (p:Product {name: 'Fast Moving Consumer Goods'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'Renuka Holdings'}), (p:Product {name: 'Dairy Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: 'Renuka Holdings'}), (p:Product {name: 'Fruit Juice Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'Renuka Holdings'}), (p:Product {name: 'Warehousing Facilities'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: 'Renuka Holdings'}), (p:Product {name: 'Plantation Management'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
// Step 12: Company-Company relationships (MANAGES);

// Query 101
MATCH (m:Company {name: 'Renuka Holdings'}), (c:Company {name: 'Renuka Agro Exports'}) MERGE (m)-[r:MANAGES]->(c) ON CREATE SET r.as_of = date('2024-03-31'), r.description = 'Subsidiary management';

// Query 102
MATCH (m:Company {name: 'Renuka Holdings'}), (c:Company {name: 'Renuka Enterprises'}) MERGE (m)-[r:MANAGES]->(c) ON CREATE SET r.as_of = date('2024-03-31'), r.description = 'Subsidiary management';

// Query 103
MATCH (m:Company {name: 'Renuka Holdings'}), (c:Company {name: 'Shaw Wallace & Hedges'}) MERGE (m)-[r:MANAGES]->(c) ON CREATE SET r.as_of = date('2024-03-31'), r.description = 'Subsidiary management';

// Query 104
MATCH (m:Company {name: 'Renuka Holdings'}), (c:Company {name: 'Renuka Agri Foods'}) MERGE (m)-[r:MANAGES]->(c) ON CREATE SET r.as_of = date('2024-03-31'), r.description = 'Subsidiary management';

// Query 105
MATCH (m:Company {name: 'Renuka Holdings'}), (c:Company {name: 'Renuka Development'}) MERGE (m)-[r:MANAGES]->(c) ON CREATE SET r.as_of = date('2024-03-31'), r.description = 'Subsidiary management';

// Query 106
MATCH (m:Company {name: 'Renuka Holdings'}), (c:Company {name: 'Renuka Agri Organics'}) MERGE (m)-[r:MANAGES]->(c) ON CREATE SET r.as_of = date('2024-03-31'), r.description = 'Subsidiary management';

// Query 107
MATCH (m:Company {name: 'Renuka Holdings'}), (c:Company {name: 'Ceylon Forestry'}) MERGE (m)-[r:MANAGES]->(c) ON CREATE SET r.as_of = date('2024-03-31'), r.description = 'Subsidiary management';

// Query 108
MATCH (m:Company {name: 'Renuka Holdings'}), (c:Company {name: 'Coco Lanka'}) MERGE (m)-[r:MANAGES]->(c) ON CREATE SET r.as_of = date('2024-03-31'), r.description = 'Subsidiary management';

// Query 109
MATCH (m:Company {name: 'Renuka Holdings'}), (c:Company {name: 'Kandy Plantations'}) MERGE (m)-[r:MANAGES]->(c) ON CREATE SET r.as_of = date('2024-03-31'), r.description = 'Subsidiary management';

// Query 110
MATCH (m:Company {name: 'Renuka Holdings'}), (c:Company {name: 'Renuka Foods'}) MERGE (m)-[r:MANAGES]->(c) ON CREATE SET r.as_of = date('2024-03-31'), r.description = 'Subsidiary management';

// Query 111
MATCH (m:Company {name: 'Renuka Holdings'}), (c:Company {name: 'Richlife Dairies'}) MERGE (m)-[r:MANAGES]->(c) ON CREATE SET r.as_of = date('2024-03-31'), r.description = 'Subsidiary management';

// Query 112
MATCH (m:Company {name: 'Renuka Holdings'}), (c:Company {name: 'Shaw Wallace Ceylon'}) MERGE (m)-[r:MANAGES]->(c) ON CREATE SET r.as_of = date('2024-03-31'), r.description = 'Subsidiary management';

// Query 113
MATCH (m:Company {name: 'Renuka Holdings'}), (c:Company {name: 'Shaw Wallace Properties'}) MERGE (m)-[r:MANAGES]->(c) ON CREATE SET r.as_of = date('2024-03-31'), r.description = 'Subsidiary management';

// Total queries: 113
// Generated on: 2025-10-02T22:04:29.042959
