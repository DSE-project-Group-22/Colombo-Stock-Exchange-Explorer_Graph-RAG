// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Printcare'}) ON CREATE SET c.id = 'printcare', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor (Skipped - Auditor name not explicitly mentioned and mapped to hardcoded list);

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'A. N. Esufally'}) ON CREATE SET p.id = 'a_n_esufally';

// Query 6
MERGE (p:Person {name: 'Krishnamoorthi Rajabather Ravindran'}) ON CREATE SET p.id = 'krishnamoorthi_rajabather_ravindran';

// Query 7
MERGE (p:Person {name: 'S. M. Enderby'}) ON CREATE SET p.id = 's_m_enderby';

// Query 8
MERGE (p:Person {name: 'D. Warnakulasooriya'}) ON CREATE SET p.id = 'd_warnakulasooriya';

// Query 9
MERGE (p:Person {name: 'A. Coomaraswamy'}) ON CREATE SET p.id = 'a_coomaraswamy';

// Query 10
MERGE (p:Person {name: 'C. V. Kulatilaka'}) ON CREATE SET p.id = 'c_v_kulatilaka';

// Query 11
MERGE (p:Person {name: 'E. Chatoor'}) ON CREATE SET p.id = 'e_chatoor';

// Query 12
MERGE (p:Person {name: 'Malik J Fernando'}) ON CREATE SET p.id = 'malik_j_fernando';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'A. N. Esufally'}), (c:Company {name: 'Printcare'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'Krishnamoorthi Rajabather Ravindran'}), (c:Company {name: 'Printcare'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'S. M. Enderby'}), (c:Company {name: 'Printcare'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'D. Warnakulasooriya'}), (c:Company {name: 'Printcare'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'A. Coomaraswamy'}), (c:Company {name: 'Printcare'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'C. V. Kulatilaka'}), (c:Company {name: 'Printcare'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'E. Chatoor'}), (c:Company {name: 'Printcare'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Malik J Fernando'}), (c:Company {name: 'Printcare'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 22
// Step 5: Metrics;

// Query 23
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 29
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 30
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 32
// Step 6: HAS_METRIC Relationships;

// Query 33
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12885431000, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14156323000, r.year = 2023;

// Query 35
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7626233000, r.year = 2022;

// Query 36
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 535694000, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1957380000, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2336166000, r.year = 2022;

// Query 39
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 246939000, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1489392000, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2236812000, r.year = 2022;

// Query 42
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16419236506, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14370936020, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9696116406, r.year = 2022;

// Query 45
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7869152000, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6835204000, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5054593000, r.year = 2022;

// Query 48
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.5, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26.1, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 56.9, r.year = 2022;

// Query 51
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38.8, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38.2, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47.1, r.year = 2022;

// Query 54
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1001505000, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2780779000, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2597014000, r.year = 2022;

// Query 57
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.87, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.33, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Printcare'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26.02, r.year = 2022;

// Query 60
// Step 7: Sectors;

// Query 61
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 62
// Step 8: IN_SECTOR Relationships;

// Query 63
MATCH (c:Company {name: 'Printcare'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 64
// Step 9: Products;

// Query 65
MERGE (p:Product {name: 'Digital Printing'}) ON CREATE SET p.id = 'digital_printing';

// Query 66
MERGE (p:Product {name: 'Tea bag tags'}) ON CREATE SET p.id = 'tea_bag_tags';

// Query 67
MERGE (p:Product {name: 'Envelopes'}) ON CREATE SET p.id = 'envelopes';

// Query 68
MERGE (p:Product {name: 'Printed papers and boards'}) ON CREATE SET p.id = 'printed_papers_and_boards';

// Query 69
MERGE (p:Product {name: 'Products with security features'}) ON CREATE SET p.id = 'products_with_security_features';

// Query 70
MERGE (p:Product {name: 'Packing materials'}) ON CREATE SET p.id = 'packing_materials';

// Query 71
MERGE (p:Product {name: 'Books'}) ON CREATE SET p.id = 'books';

// Query 72
MERGE (p:Product {name: 'Magazines'}) ON CREATE SET p.id = 'magazines';

// Query 73
MERGE (p:Product {name: 'Brochures'}) ON CREATE SET p.id = 'brochures';

// Query 74
MERGE (p:Product {name: 'Catalogues'}) ON CREATE SET p.id = 'catalogues';

// Query 75
MERGE (p:Product {name: 'Graphic design'}) ON CREATE SET p.id = 'graphic_design';

// Query 76
MERGE (p:Product {name: 'Prepress services'}) ON CREATE SET p.id = 'prepress_services';

// Query 77
MERGE (p:Product {name: 'Premedia services'}) ON CREATE SET p.id = 'premedia_services';

// Query 78
MERGE (p:Product {name: 'Sustainable packaging solutions'}) ON CREATE SET p.id = 'sustainable_packaging_solutions';

// Query 79
MERGE (p:Product {name: 'Lottery products'}) ON CREATE SET p.id = 'lottery_products';

// Query 80
MERGE (p:Product {name: 'Scratch cards for phone cards'}) ON CREATE SET p.id = 'scratch_cards_for_phone_cards';

// Query 81
MERGE (p:Product {name: 'Adhesive labels'}) ON CREATE SET p.id = 'adhesive_labels';

// Query 82
MERGE (p:Product {name: 'Cartons'}) ON CREATE SET p.id = 'cartons';

// Query 83
// Step 10: OFFERS Relationships;

// Query 84
MATCH (c:Company {name: 'Printcare'}), (p:Product {name: 'Digital Printing'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 85
MATCH (c:Company {name: 'Printcare'}), (p:Product {name: 'Tea bag tags'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 86
MATCH (c:Company {name: 'Printcare'}), (p:Product {name: 'Envelopes'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 87
MATCH (c:Company {name: 'Printcare'}), (p:Product {name: 'Printed papers and boards'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 88
MATCH (c:Company {name: 'Printcare'}), (p:Product {name: 'Products with security features'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 89
MATCH (c:Company {name: 'Printcare'}), (p:Product {name: 'Packing materials'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 90
MATCH (c:Company {name: 'Printcare'}), (p:Product {name: 'Books'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 91
MATCH (c:Company {name: 'Printcare'}), (p:Product {name: 'Magazines'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 92
MATCH (c:Company {name: 'Printcare'}), (p:Product {name: 'Brochures'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 93
MATCH (c:Company {name: 'Printcare'}), (p:Product {name: 'Catalogues'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 94
MATCH (c:Company {name: 'Printcare'}), (p:Product {name: 'Graphic design'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 95
MATCH (c:Company {name: 'Printcare'}), (p:Product {name: 'Prepress services'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 96
MATCH (c:Company {name: 'Printcare'}), (p:Product {name: 'Premedia services'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 97
MATCH (c:Company {name: 'Printcare'}), (p:Product {name: 'Sustainable packaging solutions'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 98
MATCH (c:Company {name: 'Printcare'}), (p:Product {name: 'Lottery products'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'discontinued';

// Query 99
MATCH (c:Company {name: 'Printcare'}), (p:Product {name: 'Scratch cards for phone cards'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'discontinued';

// Query 100
MATCH (c:Company {name: 'Printcare'}), (p:Product {name: 'Adhesive labels'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 101
MATCH (c:Company {name: 'Printcare'}), (p:Product {name: 'Cartons'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Total queries: 101
// Generated on: 2025-10-03T03:24:11.469126
