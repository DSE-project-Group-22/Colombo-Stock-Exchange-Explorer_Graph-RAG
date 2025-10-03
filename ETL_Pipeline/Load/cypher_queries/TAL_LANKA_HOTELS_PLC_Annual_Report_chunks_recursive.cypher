// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'TAL Lanka Hotels'}) ON CREATE SET c.id = 'tal_lanka_hotels', c.founded_on = date('1980-06-14'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'G. Sanjeevi'}) ON CREATE SET p.id = 'g_sanjeevi';

// Query 9
MERGE (p:Person {name: 'B. K. Chaudhary'}) ON CREATE SET p.id = 'b_k_chaudhary';

// Query 10
MERGE (p:Person {name: 'N. I. R. De Mel'}) ON CREATE SET p.id = 'n_i_r_de_mel';

// Query 11
MERGE (p:Person {name: 'R. K. Chaudhary'}) ON CREATE SET p.id = 'r_k_chaudhary';

// Query 12
MERGE (p:Person {name: 'Tilak De Zoysa'}) ON CREATE SET p.id = 'tilak_de_zoysa';

// Query 13
MERGE (p:Person {name: 'Vish Govindasamy'}) ON CREATE SET p.id = 'vish_govindasamy';

// Query 14
MERGE (p:Person {name: 'P. S. Verma'}) ON CREATE SET p.id = 'p_s_verma';

// Query 15
MERGE (p:Person {name: 'S. Datta'}) ON CREATE SET p.id = 's_datta';

// Query 16
MERGE (p:Person {name: 'P. Sengupta'}) ON CREATE SET p.id = 'p_sengupta';

// Query 17
// Step 5: HOLDS_POSITION Relationships;

// Query 18
MATCH (p:Person {name: 'G. Sanjeevi'}), (c:Company {name: 'TAL Lanka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'B. K. Chaudhary'}), (c:Company {name: 'TAL Lanka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'N. I. R. De Mel'}), (c:Company {name: 'TAL Lanka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'R. K. Chaudhary'}), (c:Company {name: 'TAL Lanka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Tilak De Zoysa'}), (c:Company {name: 'TAL Lanka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Vish Govindasamy'}), (c:Company {name: 'TAL Lanka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'P. S. Verma'}), (c:Company {name: 'TAL Lanka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'S. Datta'}), (c:Company {name: 'TAL Lanka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'P. Sengupta'}), (c:Company {name: 'TAL Lanka Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 27
// Step 6: Metric Nodes;

// Query 28
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 33
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 35
// Step 7: HAS_METRIC Relationships;

// Query 36
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3728162471, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50587005, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5769675, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 96052364, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.45, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2.03, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4144517000, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2361374456, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -465051661, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1015687935, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1291194196, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.54, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -9.25, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3804735000, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1147421000, r.year = 2022;

// Query 51
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -563810000, r.year = 2022;

// Query 52
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.29, r.year = 2022;

// Query 53
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -12.281, r.year = 2022;

// Query 54
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4415292000, r.year = 2022;

// Query 55
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 484203000, r.year = 2021;

// Query 56
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -888815000, r.year = 2021;

// Query 57
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.206, r.year = 2021;

// Query 58
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -7.843, r.year = 2021;

// Query 59
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3822836000, r.year = 2021;

// Query 60
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2391582000, r.year = 2020;

// Query 61
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29537000, r.year = 2020;

// Query 62
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.75, r.year = 2020;

// Query 63
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.86, r.year = 2020;

// Query 64
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4094540000, r.year = 2020;

// Query 65
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2690893000, r.year = 2019;

// Query 66
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 140999000, r.year = 2019;

// Query 67
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.45, r.year = 2019;

// Query 68
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2.03, r.year = 2019;

// Query 69
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4144517000, r.year = 2019;

// Query 70
// Step 8: Sector Nodes;

// Query 71
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 72
// Step 9: IN_SECTOR Relationships;

// Query 73
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
// Step 10: Product Nodes;

// Query 75
MERGE (p:Product {name: 'Accommodation'}) ON CREATE SET p.id = 'accommodation';

// Query 76
MERGE (p:Product {name: 'Food & beverage'}) ON CREATE SET p.id = 'food_and_beverage';

// Query 77
MERGE (p:Product {name: 'Shop rentals'}) ON CREATE SET p.id = 'shop_rentals';

// Query 78
MERGE (p:Product {name: 'Banquet income'}) ON CREATE SET p.id = 'banquet_income';

// Query 79
MERGE (p:Product {name: 'Laundry revenue'}) ON CREATE SET p.id = 'laundry_revenue';

// Query 80
MERGE (p:Product {name: 'Telephone charges income'}) ON CREATE SET p.id = 'telephone_charges_income';

// Query 81
MERGE (p:Product {name: 'Taj Samudra Hotel'}) ON CREATE SET p.id = 'taj_samudra_hotel';

// Query 82
// Step 11: OFFERS Relationships;

// Query 83
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (p:Product {name: 'Accommodation'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (p:Product {name: 'Food & beverage'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (p:Product {name: 'Shop rentals'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (p:Product {name: 'Banquet income'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (p:Product {name: 'Laundry revenue'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (p:Product {name: 'Telephone charges income'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'TAL Lanka Hotels'}), (p:Product {name: 'Taj Samudra Hotel'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
// Step 12: Company-Company Relationships;

// Query 91
MERGE (parent1:Company {name: 'TAL Hotels & Resorts'}) ON CREATE SET parent1.id = 'tal_hotels_and_resorts';

// Query 92
MERGE (parent2:Company {name: 'IHOCO BV'}) ON CREATE SET parent2.id = 'ihoco_bv';

// Query 93
MATCH (parent:Company {name: 'TAL Hotels & Resorts'}), (child:Company {name: 'TAL Lanka Hotels'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 58.14, r.as_of = date('2024-03-31');

// Query 94
MATCH (parent:Company {name: 'IHOCO BV'}), (child:Company {name: 'TAL Lanka Hotels'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 24.62, r.as_of = date('2024-03-31');

// Query 95
MATCH (manager:Company {name: 'TAL Hotels & Resorts'}), (managed:Company {name: 'TAL Lanka Hotels'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Hotel Operating Agreement', r.as_of = date('2024-03-31');

// Total queries: 95
// Generated on: 2025-10-02T23:06:01.941728
