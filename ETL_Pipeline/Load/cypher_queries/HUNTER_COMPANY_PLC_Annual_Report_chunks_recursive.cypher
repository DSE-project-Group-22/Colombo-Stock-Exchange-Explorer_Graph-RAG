// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Hunter & Company'}) ON CREATE SET c.id = 'hunter_and_company', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - Skipped as 'Wijeyeratne & Co.' is not in the hardcoded list of auditing firms.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'M. F. Dossa'}) ON CREATE SET p.id = 'm_f_dossa';

// Query 6
MERGE (p:Person {name: 'L. R. P. Dossa'}) ON CREATE SET p.id = 'l_r_p_dossa';

// Query 7
MERGE (p:Person {name: 'L. C. R. De C. Wijetunge'}) ON CREATE SET p.id = 'l_c_r_de_c_wijetunge';

// Query 8
MERGE (p:Person {name: 'D. H. J. Gunawardena'}) ON CREATE SET p.id = 'd_h_j_gunawardena';

// Query 9
MERGE (p:Person {name: 'N. C. Peiris'}) ON CREATE SET p.id = 'n_c_peiris';

// Query 10
MERGE (p:Person {name: 'S. R. S. De Saram'}) ON CREATE SET p.id = 's_r_s_de_saram';

// Query 11
MERGE (p:Person {name: 'S. K. Shah'}) ON CREATE SET p.id = 's_k_shah';

// Query 12
MERGE (p:Person {name: 'M. De Silva'}) ON CREATE SET p.id = 'm_de_silva';

// Query 13
MERGE (p:Person {name: 'D. Kanathigoda'}) ON CREATE SET p.id = 'd_kanathigoda';

// Query 14
MERGE (p:Person {name: 'L. Chaminda'}) ON CREATE SET p.id = 'l_chaminda';

// Query 15
// Step 4: HOLDS_POSITION Relationships;

// Query 16
MATCH (p:Person {name: 'M. F. Dossa'}), (c:Company {name: 'Hunter & Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'L. R. P. Dossa'}), (c:Company {name: 'Hunter & Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'L. C. R. De C. Wijetunge'}), (c:Company {name: 'Hunter & Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'D. H. J. Gunawardena'}), (c:Company {name: 'Hunter & Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'N. C. Peiris'}), (c:Company {name: 'Hunter & Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'S. R. S. De Saram'}), (c:Company {name: 'Hunter & Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'S. K. Shah'}), (c:Company {name: 'Hunter & Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'M. De Silva'}), (c:Company {name: 'Hunter & Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'D. Kanathigoda'}), (c:Company {name: 'Hunter & Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'L. Chaminda'}), (c:Company {name: 'Hunter & Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-03-31');

// Query 26
// Step 5: Metrics;

// Query 27
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 34
// Step 6: HAS_METRIC Relationships;

// Query 35
MATCH (c:Company {name: 'Hunter & Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5694918000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 36
MATCH (c:Company {name: 'Hunter & Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5896028000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 37
MATCH (c:Company {name: 'Hunter & Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1299000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 38
MATCH (c:Company {name: 'Hunter & Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 571883000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 39
MATCH (c:Company {name: 'Hunter & Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -37457000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 40
MATCH (c:Company {name: 'Hunter & Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 459953000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 41
MATCH (c:Company {name: 'Hunter & Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12952402000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 42
MATCH (c:Company {name: 'Hunter & Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12983096000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 43
MATCH (c:Company {name: 'Hunter & Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14440762000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 44
MATCH (c:Company {name: 'Hunter & Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14510751000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 45
MATCH (c:Company {name: 'Hunter & Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3.31, r.year = 2024, r.as_of = date('2024-03-31');

// Query 46
MATCH (c:Company {name: 'Hunter & Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78.56, r.year = 2023, r.as_of = date('2023-03-31');

// Query 47
MATCH (c:Company {name: 'Hunter & Company'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.47, r.year = 2024, r.as_of = date('2024-03-31');

// Query 48
MATCH (c:Company {name: 'Hunter & Company'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.45, r.year = 2023, r.as_of = date('2023-03-31');

// Query 49
// Step 7: Sectors;

// Query 50
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 51
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 52
MERGE (s:Sector {name: 'Consumer Durables and Apparel'}) ON CREATE SET s.id = 'consumer_durables_and_apparel';

// Query 53
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 54
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 55
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 56
// Step 8: IN_SECTOR Relationships;

// Query 57
MATCH (c:Company {name: 'Hunter & Company'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 58
MATCH (c:Company {name: 'Hunter & Company'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 59
MATCH (c:Company {name: 'Hunter & Company'}), (s:Sector {name: 'Consumer Durables and Apparel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 60
// Step 9: Product nodes;

// Query 61
MERGE (p:Product {name: 'Industrial Products'}) ON CREATE SET p.id = 'industrial_products';

// Query 62
MERGE (p:Product {name: 'Light Engineering Products'}) ON CREATE SET p.id = 'light_engineering_products';

// Query 63
MERGE (p:Product {name: 'Home Appliances'}) ON CREATE SET p.id = 'home_appliances';

// Query 64
MERGE (p:Product {name: 'Garden Products'}) ON CREATE SET p.id = 'garden_products';

// Query 65
MERGE (p:Product {name: 'Cycles'}) ON CREATE SET p.id = 'cycles';

// Query 66
MERGE (p:Product {name: 'Cycle Spare Parts'}) ON CREATE SET p.id = 'cycle_spare_parts';

// Query 67
MERGE (p:Product {name: 'Accessories'}) ON CREATE SET p.id = 'accessories';

// Query 68
MERGE (p:Product {name: 'Hilti Brand of Engineering Products'}) ON CREATE SET p.id = 'hilti_brand_of_engineering_products';

// Query 69
// Step 10: OFFERS Relationships;

// Query 70
MATCH (c:Company {name: 'Hunter & Company'}), (p:Product {name: 'Industrial Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Hunter & Company'}), (p:Product {name: 'Light Engineering Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Hunter & Company'}), (p:Product {name: 'Home Appliances'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'Hunter & Company'}), (p:Product {name: 'Garden Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'Hunter & Company'}), (p:Product {name: 'Cycles'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'Hunter & Company'}), (p:Product {name: 'Cycle Spare Parts'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
MATCH (c:Company {name: 'Hunter & Company'}), (p:Product {name: 'Accessories'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
MATCH (c:Company {name: 'Hunter & Company'}), (p:Product {name: 'Hilti Brand of Engineering Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
// Step 11: Subsidiary Companies and their relationships;

// Query 79
MERGE (sub1:Company {name: 'Heath & Company (Ceylon)'}) ON CREATE SET sub1.id = 'heath_and_company_ceylon';

// Query 80
MERGE (sub2:Company {name: 'Lanka Canneries'}) ON CREATE SET sub2.id = 'lanka_canneries';

// Query 81
MERGE (sub3:Company {name: 'Heather & Company (Ceylon)'}) ON CREATE SET sub3.id = 'heather_and_company_ceylon';

// Query 82
MERGE (sub4:Company {name: 'Ceylon Teas'}) ON CREATE SET sub4.id = 'ceylon_teas';

// Query 83
MERGE (sub5:Company {name: 'Securityco Lanka'}) ON CREATE SET sub5.id = 'securityco_lanka';

// Query 84
MERGE (sub6:Company {name: 'Lanka Canneries Agrifoods'}) ON CREATE SET sub6.id = 'lanka_canneries_agrifoods';

// Query 85
// Step 12: Company-Company Relationships (OWNS);

// Query 86
MATCH (parent:Company {name: 'Hunter & Company'}), (child:Company {name: 'Heath & Company (Ceylon)'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 90.90, r.as_of = date('2024-03-31');

// Query 87
// 'Heath & Company (Ceylon)' is the largest shareholder of 'Lanka Canneries', but no percentage is given, so OWNS relationship is skipped.;

// Query 88
// Other subsidiaries of 'Heath & Company (Ceylon)' are mentioned, but no ownership percentages are given, so OWNS relationships are skipped.;

// Query 89
// Step 13: Subsidiary Sectors;

// Query 90
MATCH (c:Company {name: 'Heath & Company (Ceylon)'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 91
MATCH (c:Company {name: 'Lanka Canneries'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 92
MATCH (c:Company {name: 'Heather & Company (Ceylon)'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 93
MATCH (c:Company {name: 'Ceylon Teas'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 94
MATCH (c:Company {name: 'Securityco Lanka'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 95
MATCH (c:Company {name: 'Lanka Canneries Agrifoods'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 96
// Step 14: Subsidiary Products;

// Query 97
MERGE (p:Product {name: 'MD Brand Food Products'}) ON CREATE SET p.id = 'md_brand_food_products';

// Query 98
MATCH (c:Company {name: 'Lanka Canneries'}), (p:Product {name: 'MD Brand Food Products'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 98
// Generated on: 2025-10-03T02:42:27.934268
