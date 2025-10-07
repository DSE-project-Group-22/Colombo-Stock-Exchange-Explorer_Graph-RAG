// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Ceylon Cold Stores'}) ON CREATE SET c.id = 'ceylon_cold_stores', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No specific auditor firm name found in the document, skipping auditor node and relationship creation.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'R N K Fernando'}) ON CREATE SET p.id = 'r_n_k_fernando';

// Query 6
MERGE (p:Person {name: 'J G A Cooray'}) ON CREATE SET p.id = 'j_g_a_cooray';

// Query 7
MERGE (p:Person {name: 'D P Gamlath'}) ON CREATE SET p.id = 'd_p_gamlath';

// Query 8
MERGE (p:Person {name: 'S Kanag-Isvaran'}) ON CREATE SET p.id = 's_kanag_isvaran';

// Query 9
MERGE (p:Person {name: 'K N J Balendra'}) ON CREATE SET p.id = 'k_n_j_balendra';

// Query 10
MERGE (p:Person {name: 'K C Subasinghe'}) ON CREATE SET p.id = 'k_c_subasinghe';

// Query 11
MERGE (p:Person {name: 'P N Fernando'}) ON CREATE SET p.id = 'p_n_fernando';

// Query 12
MERGE (p:Person {name: 'S T Ratwatte'}) ON CREATE SET p.id = 's_t_ratwatte';

// Query 13
MERGE (p:Person {name: 'R S W Wijeratnam'}) ON CREATE SET p.id = 'r_s_w_wijeratnam';

// Query 14
MERGE (p:Person {name: 'H A J De Silva Wijeyeratne'}) ON CREATE SET p.id = 'h_a_j_de_silva_wijeyeratne';

// Query 15
// Step 4: HOLDS_POSITION Relationships;

// Query 16
MATCH (p:Person {name: 'R N K Fernando'}), (c:Company {name: 'Ceylon Cold Stores'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-06-19');

// Query 17
MATCH (p:Person {name: 'J G A Cooray'}), (c:Company {name: 'Ceylon Cold Stores'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2023-06-26');

// Query 18
MATCH (p:Person {name: 'D P Gamlath'}), (c:Company {name: 'Ceylon Cold Stores'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2023-06-26');

// Query 19
MATCH (p:Person {name: 'S Kanag-Isvaran'}), (c:Company {name: 'Ceylon Cold Stores'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-06-19');

// Query 20
MATCH (p:Person {name: 'K N J Balendra'}), (c:Company {name: 'Ceylon Cold Stores'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 21
MATCH (p:Person {name: 'K C Subasinghe'}), (c:Company {name: 'Ceylon Cold Stores'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 22
MATCH (p:Person {name: 'P N Fernando'}), (c:Company {name: 'Ceylon Cold Stores'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 23
MATCH (p:Person {name: 'S T Ratwatte'}), (c:Company {name: 'Ceylon Cold Stores'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 24
MATCH (p:Person {name: 'R S W Wijeratnam'}), (c:Company {name: 'Ceylon Cold Stores'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-01');

// Query 25
MATCH (p:Person {name: 'H A J De Silva Wijeyeratne'}), (c:Company {name: 'Ceylon Cold Stores'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 26
// Step 5: Metrics;

// Query 27
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 35
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 36
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 37
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 39
// Step 6: HAS_METRIC Relationships;

// Query 40
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 157934000000.0, r.year = 2025;

// Query 41
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 139625000000.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22741000000.0, r.year = 2025;

// Query 43
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17497000000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11314000000.0, r.year = 2025;

// Query 45
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8155000000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9002000000.0, r.year = 2025;

// Query 47
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4931000000.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5958000000.0, r.year = 2025;

// Query 49
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3427000000.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 81885000000.0, r.year = 2025;

// Query 51
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 73744000000.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23965000000.0, r.year = 2025;

// Query 53
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20451000000.0, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.66, r.year = 2025;

// Query 55
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.71, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 66.78, r.year = 2025;

// Query 57
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 82.32, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.71, r.year = 2025;

// Query 59
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.66, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.27, r.year = 2025;

// Query 61
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.61, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26.72, r.year = 2025;

// Query 63
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.23, r.year = 2024;

// Query 64
// Step 7: Sectors;

// Query 65
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 66
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 67
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 68
// Step 8: IN_SECTOR Relationships;

// Query 69
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 70
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 71
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 72
// Step 9: Products;

// Query 73
MERGE (p:Product {name: 'Prepared Foods'}) ON CREATE SET p.id = 'prepared_foods';

// Query 74
MERGE (p:Product {name: 'Private Label Products'}) ON CREATE SET p.id = 'private_label_products';

// Query 75
MERGE (p:Product {name: 'Carbonated Soft Drinks'}) ON CREATE SET p.id = 'carbonated_soft_drinks';

// Query 76
MERGE (p:Product {name: 'Non-Carbonated Soft Drinks'}) ON CREATE SET p.id = 'non_carbonated_soft_drinks';

// Query 77
MERGE (p:Product {name: 'Bakery Products'}) ON CREATE SET p.id = 'bakery_products';

// Query 78
MERGE (p:Product {name: 'Fresh Produce'}) ON CREATE SET p.id = 'fresh_produce';

// Query 79
MERGE (p:Product {name: 'Ice Creams'}) ON CREATE SET p.id = 'ice_creams';

// Query 80
MERGE (p:Product {name: 'Vegan Confectionery'}) ON CREATE SET p.id = 'vegan_confectionery';

// Query 81
MERGE (p:Product {name: 'Wellness Confectionery'}) ON CREATE SET p.id = 'wellness_confectionery';

// Query 82
// Step 10: OFFERS Relationships;

// Query 83
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (p:Product {name: 'Prepared Foods'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (p:Product {name: 'Private Label Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (p:Product {name: 'Carbonated Soft Drinks'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (p:Product {name: 'Non-Carbonated Soft Drinks'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (p:Product {name: 'Bakery Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (p:Product {name: 'Fresh Produce'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (p:Product {name: 'Ice Creams'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (p:Product {name: 'Vegan Confectionery'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Ceylon Cold Stores'}), (p:Product {name: 'Wellness Confectionery'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
// Step 11: Company-Company Relationships (OWNS);

// Query 93
MERGE (child1:Company {name: 'The Colombo Ice Company'}) ON CREATE SET child1.id = 'the_colombo_ice_company';

// Query 94
MERGE (child2:Company {name: 'Jaykay Marketing Services'}) ON CREATE SET child2.id = 'jaykay_marketing_services';

// Query 95
MERGE (child3:Company {name: 'LogiPark International'}) ON CREATE SET child3.id = 'logipark_international';

// Query 96
MATCH (parent:Company {name: 'Ceylon Cold Stores'}), (child:Company {name: 'The Colombo Ice Company'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2025-03-31');

// Query 97
MATCH (parent:Company {name: 'Ceylon Cold Stores'}), (child:Company {name: 'Jaykay Marketing Services'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2025-03-31');

// Query 98
MATCH (parent:Company {name: 'Jaykay Marketing Services'}), (child:Company {name: 'LogiPark International'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2025-03-31');

// Total queries: 98
// Generated on: 2025-10-03T03:40:49.924169
