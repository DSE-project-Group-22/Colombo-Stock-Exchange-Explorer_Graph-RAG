// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Lion Brewery Ceylon'}) ON CREATE SET c.id = 'lion_brewery_ceylon', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: Person Nodes Creation;

// Query 8
MERGE (p:Person {name: 'D. A. Cabraal'}) ON CREATE SET p.id = 'd_a_cabraal';

// Query 9
MERGE (p:Person {name: 'H. Selvanathan'}) ON CREATE SET p.id = 'h_selvanathan';

// Query 10
MERGE (p:Person {name: 'D. C. R. Gunawardena'}) ON CREATE SET p.id = 'd_c_r_gunawardena';

// Query 11
MERGE (p:Person {name: 'D. R. P. Goonetilleke'}) ON CREATE SET p.id = 'd_r_p_goonetilleke';

// Query 12
MERGE (p:Person {name: 'K. Selvanathan'}) ON CREATE SET p.id = 'k_selvanathan';

// Query 13
MERGE (p:Person {name: 'S. J. F. Evans'}) ON CREATE SET p.id = 's_j_f_evans';

// Query 14
MERGE (p:Person {name: 'R. H. Meewakkala'}) ON CREATE SET p.id = 'r_h_meewakkala';

// Query 15
MERGE (p:Person {name: 'S. Selvanathan'}) ON CREATE SET p.id = 's_selvanathan';

// Query 16
MERGE (p:Person {name: 'S. Clini'}) ON CREATE SET p.id = 's_clini';

// Query 17
MERGE (p:Person {name: 'V. Gun L. L.'}) ON CREATE SET p.id = 'v_gun_l_l';

// Query 18
MERGE (p:Person {name: 'A. B. Baliga'}) ON CREATE SET p.id = 'a_b_baliga';

// Query 19
// Step 5: HOLDS_POSITION Relationships;

// Query 20
MATCH (p:Person {name: 'D. A. Cabraal'}), (c:Company {name: 'Lion Brewery Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'D. A. Cabraal'}), (c:Company {name: 'Lion Brewery Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'H. Selvanathan'}), (c:Company {name: 'Lion Brewery Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2023-11-06');

// Query 23
MATCH (p:Person {name: 'H. Selvanathan'}), (c:Company {name: 'Lion Brewery Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2023-11-06');

// Query 24
MATCH (p:Person {name: 'D. C. R. Gunawardena'}), (c:Company {name: 'Lion Brewery Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'D. R. P. Goonetilleke'}), (c:Company {name: 'Lion Brewery Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 26
MATCH (p:Person {name: 'K. Selvanathan'}), (c:Company {name: 'Lion Brewery Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2023-11-06');

// Query 27
MATCH (p:Person {name: 'S. J. F. Evans'}), (c:Company {name: 'Lion Brewery Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'R. H. Meewakkala'}), (c:Company {name: 'Lion Brewery Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'R. H. Meewakkala'}), (c:Company {name: 'Lion Brewery Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'S. Selvanathan'}), (c:Company {name: 'Lion Brewery Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2023-11-06');

// Query 31
MATCH (p:Person {name: 'S. Clini'}), (c:Company {name: 'Lion Brewery Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'V. Gun L. L.'}), (c:Company {name: 'Lion Brewery Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'A. B. Baliga'}), (c:Company {name: 'Lion Brewery Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-02-02');

// Query 34
// Step 6: Metric Nodes Creation;

// Query 35
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 43
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 44
// Step 7: HAS_METRIC Relationships;

// Query 45
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 109755568000, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 94969346000, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58570885000, r.year = 2022;

// Query 48
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 49849287000, r.year = 2021;

// Query 49
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47835328000, r.year = 2020;

// Query 50
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15367756000, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13070252000, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5273109000, r.year = 2022;

// Query 53
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4705937000, r.year = 2021;

// Query 54
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4905437000, r.year = 2020;

// Query 55
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14001948000, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11189253000, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5532185000, r.year = 2022;

// Query 58
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4257822000, r.year = 2021;

// Query 59
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4388333000, r.year = 2020;

// Query 60
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8403478000, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6991603000, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3668105000, r.year = 2022;

// Query 63
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2471096000, r.year = 2021;

// Query 64
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2812130000, r.year = 2020;

// Query 65
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27600168000, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23226761000, r.year = 2023;

// Query 67
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 55352860000, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47371945000, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 105.04, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 87.40, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39.25, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29.97, r.year = 2023;

// Query 73
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22.08, r.year = 2022;

// Query 74
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14.56, r.year = 2021;

// Query 75
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20.48, r.year = 2020;

// Query 76
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.40, r.year = 2024;

// Query 77
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.47, r.year = 2023;

// Query 78
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.48, r.year = 2022;

// Query 79
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.63, r.year = 2021;

// Query 80
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.15, r.year = 2020;

// Query 81
// Step 8: Sector Nodes Creation;

// Query 82
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 83
// Step 9: IN_SECTOR Relationships;

// Query 84
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 85
// Step 10: Product Nodes Creation;

// Query 86
MERGE (p:Product {name: 'Beers'}) ON CREATE SET p.id = 'beers';

// Query 87
MERGE (p:Product {name: 'Carlsberg Smooth Draught'}) ON CREATE SET p.id = 'carlsberg_smooth_draught';

// Query 88
MERGE (p:Product {name: 'Guinness'}) ON CREATE SET p.id = 'guinness';

// Query 89
MERGE (p:Product {name: 'Lion Ice'}) ON CREATE SET p.id = 'lion_ice';

// Query 90
MERGE (p:Product {name: 'Somersby'}) ON CREATE SET p.id = 'somersby';

// Query 91
// Step 11: OFFERS Relationships;

// Query 92
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (p:Product {name: 'Beers'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (p:Product {name: 'Carlsberg Smooth Draught'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (p:Product {name: 'Guinness'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (p:Product {name: 'Lion Ice'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (p:Product {name: 'Somersby'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
// Step 12: Company-Company Relationships (OWNS);

// Query 98
MERGE (sub1:Company {name: 'Millers Brewery'}) ON CREATE SET sub1.id = 'millers_brewery';

// Query 99
MERGE (sub2:Company {name: 'Lion Beer Ceylon'}) ON CREATE SET sub2.id = 'lion_beer_ceylon';

// Query 100
MATCH (parent:Company {name: 'Lion Brewery Ceylon'}), (child:Company {name: 'Millers Brewery'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 101
MATCH (parent:Company {name: 'Lion Brewery Ceylon'}), (child:Company {name: 'Lion Beer Ceylon'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Total queries: 101
// Generated on: 2025-10-03T00:35:37.777526
