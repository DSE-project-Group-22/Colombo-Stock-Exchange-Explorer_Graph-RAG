// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'HVA Foods'}) ON CREATE SET c.id = 'hva_foods', c.founded_on = date('1997-01-01'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor - No specific auditor from the hardcoded list found, skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'B. S. M. De Silva'}) ON CREATE SET p.id = 'b_s_m_de_silva';

// Query 6
MERGE (p:Person {name: 'Charithra Hettiarachchi'}) ON CREATE SET p.id = 'charithra_hettiarachchi';

// Query 7
MERGE (p:Person {name: 'A. R. H. Fernando'}) ON CREATE SET p.id = 'a_r_h_fernando';

// Query 8
MERGE (p:Person {name: 'V. S. A. Fernando'}) ON CREATE SET p.id = 'v_s_a_fernando';

// Query 9
MERGE (p:Person {name: 'M. P. D. Cooray'}) ON CREATE SET p.id = 'm_p_d_cooray';

// Query 10
MERGE (p:Person {name: 'S. A. Ameresekere'}) ON CREATE SET p.id = 's_a_ameresekere';

// Query 11
MERGE (p:Person {name: 'W. G. U. I. Ranaweera'}) ON CREATE SET p.id = 'w_g_u_i_ranaweera';

// Query 12
// Step 4: HOLDS_POSITION Relationships;

// Query 13
MATCH (p:Person {name: 'B. S. M. De Silva'}), (c:Company {name: 'HVA Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2021-02-12');

// Query 14
MATCH (p:Person {name: 'B. S. M. De Silva'}), (c:Company {name: 'HVA Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2021-01-22');

// Query 15
MATCH (p:Person {name: 'Charithra Hettiarachchi'}), (c:Company {name: 'HVA Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2021-01-22');

// Query 16
MATCH (p:Person {name: 'Charithra Hettiarachchi'}), (c:Company {name: 'HVA Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2021-01-22');

// Query 17
MATCH (p:Person {name: 'A. R. H. Fernando'}), (c:Company {name: 'HVA Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2021-01-22');

// Query 18
MATCH (p:Person {name: 'V. S. A. Fernando'}), (c:Company {name: 'HVA Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2021-01-22');

// Query 19
MATCH (p:Person {name: 'M. P. D. Cooray'}), (c:Company {name: 'HVA Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2021-01-22');

// Query 20
MATCH (p:Person {name: 'S. A. Ameresekere'}), (c:Company {name: 'HVA Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2021-01-22');

// Query 21
MATCH (p:Person {name: 'W. G. U. I. Ranaweera'}), (c:Company {name: 'HVA Foods'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2021-01-22');

// Query 22
// Step 5: Person Shareholdings;

// Query 23
MATCH (p:Person {name: 'A. R. H. Fernando'}), (c:Company {name: 'HVA Foods'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 533625, r.pct = 0.803, r.as_of = date('2020-03-31');

// Query 24
MATCH (p:Person {name: 'B. S. M. De Silva'}), (c:Company {name: 'HVA Foods'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 800, r.pct = 0.001, r.as_of = date('2020-03-31');

// Query 25
// Step 6: Metrics;

// Query 26
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 32
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 33
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 34
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 36
// Step 7: HAS_METRIC Relationships;

// Query 37
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 850380041, r.year = 2020;

// Query 38
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1096941641, r.year = 2019;

// Query 39
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1243719481, r.year = 2018;

// Query 40
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 884263545, r.year = 2017;

// Query 41
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 780144527, r.year = 2016;

// Query 42
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -141407415, r.year = 2020;

// Query 43
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -376192721, r.year = 2019;

// Query 44
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36531136, r.year = 2018;

// Query 45
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -18269375, r.year = 2017;

// Query 46
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -10311435, r.year = 2016;

// Query 47
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -125609856, r.year = 2020;

// Query 48
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -366982003, r.year = 2019;

// Query 49
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44133835, r.year = 2018;

// Query 50
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -20838814, r.year = 2017;

// Query 51
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -16037327, r.year = 2016;

// Query 52
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -62713187, r.year = 2020;

// Query 53
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 60501287, r.year = 2019;

// Query 54
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 551197916, r.year = 2018;

// Query 55
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 532628686, r.year = 2017;

// Query 56
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 499043169, r.year = 2016;

// Query 57
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 890398835, r.year = 2020;

// Query 58
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1070458879, r.year = 2019;

// Query 59
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.70, r.year = 2020;

// Query 60
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.76, r.year = 2019;

// Query 61
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.18, r.year = 2018;

// Query 62
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.17, r.year = 2017;

// Query 63
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.19, r.year = 2016;

// Query 64
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1464.0, r.year = 2020;

// Query 65
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1528.0, r.year = 2019;

// Query 66
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 57.0, r.year = 2018;

// Query 67
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 53.0, r.year = 2017;

// Query 68
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 53.0, r.year = 2016;

// Query 69
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -191.15, r.year = 2020;

// Query 70
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -606.57, r.year = 2019;

// Query 71
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.01, r.year = 2018;

// Query 72
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3.95, r.year = 2017;

// Query 73
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4.01, r.year = 2016;

// Query 74
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.89, r.year = 2020;

// Query 75
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.52, r.year = 2019;

// Query 76
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.66, r.year = 2018;

// Query 77
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.32, r.year = 2017;

// Query 78
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.30, r.year = 2016;

// Query 79
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -25942511, r.year = 2020;

// Query 80
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -302481100, r.year = 2019;

// Query 81
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 71172603, r.year = 2018;

// Query 82
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8410372, r.year = 2017;

// Query 83
MATCH (c:Company {name: 'HVA Foods'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16404280, r.year = 2016;

// Query 84
// Step 8: Sectors;

// Query 85
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 86
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 87
// Step 9: IN_SECTOR Relationships;

// Query 88
MATCH (c:Company {name: 'HVA Foods'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 89
MATCH (c:Company {name: 'HVA Foods'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 90
// Step 10: Products;

// Query 91
MERGE (p:Product {name: 'Value Added Teas'}) ON CREATE SET p.id = 'value_added_teas';

// Query 92
MERGE (p:Product {name: 'Tea Extract-Based Products'}) ON CREATE SET p.id = 'tea_extract_based_products';

// Query 93
MERGE (p:Product {name: 'Contract Packing of Teas'}) ON CREATE SET p.id = 'contract_packing_of_teas';

// Query 94
MERGE (p:Product {name: 'Tea Cafe Franchise Operations'}) ON CREATE SET p.id = 'tea_cafe_franchise_operations';

// Query 95
MERGE (p:Product {name: 'Heladiv Brand Products'}) ON CREATE SET p.id = 'heladiv_brand_products';

// Query 96
// Step 11: OFFERS Relationships;

// Query 97
MATCH (c:Company {name: 'HVA Foods'}), (p:Product {name: 'Value Added Teas'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'HVA Foods'}), (p:Product {name: 'Tea Extract-Based Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: 'HVA Foods'}), (p:Product {name: 'Contract Packing of Teas'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
MATCH (c:Company {name: 'HVA Foods'}), (p:Product {name: 'Tea Cafe Franchise Operations'}) MERGE (c)-[:OFFERS]->(p);

// Query 101
MATCH (c:Company {name: 'HVA Foods'}), (p:Product {name: 'Heladiv Brand Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 102
// Step 12: Company-Company Relationships (OWNS, MANAGES) - No relationships meet strict validation criteria, skipping.;

// Total queries: 102
// Generated on: 2025-10-03T02:13:17.267037
