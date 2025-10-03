// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Fortress Resorts'}) ON CREATE SET c.id = 'fortress_resorts', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Fortress Resorts'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Jan P Van Twest'}) ON CREATE SET p.id = 'jan_p_van_twest';

// Query 8
MERGE (p:Person {name: 'K D H Perera'}) ON CREATE SET p.id = 'k_d_h_perera';

// Query 9
MERGE (p:Person {name: 'J A S S Adhihetty'}) ON CREATE SET p.id = 'j_a_s_s_adhihetty';

// Query 10
MERGE (p:Person {name: 'Malik J Fernando'}) ON CREATE SET p.id = 'malik_j_fernando';

// Query 11
MERGE (p:Person {name: 'L N de S Wijeyeratne'}) ON CREATE SET p.id = 'l_n_de_s_wijeyeratne';

// Query 12
MERGE (p:Person {name: 'Chatura V Cabraal'}) ON CREATE SET p.id = 'chatura_v_cabraal';

// Query 13
MERGE (p:Person {name: 'C U Weerawardane'}) ON CREATE SET p.id = 'c_u_weerawardane';

// Query 14
MERGE (p:Person {name: 'J R Gunaratne'}) ON CREATE SET p.id = 'j_r_gunaratne';

// Query 15
MERGE (p:Person {name: 'A A K Amarasinghe'}) ON CREATE SET p.id = 'a_a_k_amarasinghe';

// Query 16
MERGE (p:Person {name: 'D C Fernando'}) ON CREATE SET p.id = 'd_c_fernando';

// Query 17
MERGE (p:Person {name: 'V Leelananda'}) ON CREATE SET p.id = 'v_leelananda';

// Query 18
MERGE (p:Person {name: 'K A D B Perera'}) ON CREATE SET p.id = 'k_a_d_b_perera';

// Query 19
// Step 4: HOLDS_POSITION Relationships;

// Query 20
MATCH (p:Person {name: 'Jan P Van Twest'}), (c:Company {name: 'Fortress Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'K D H Perera'}), (c:Company {name: 'Fortress Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'J A S S Adhihetty'}), (c:Company {name: 'Fortress Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Malik J Fernando'}), (c:Company {name: 'Fortress Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'L N de S Wijeyeratne'}), (c:Company {name: 'Fortress Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Chatura V Cabraal'}), (c:Company {name: 'Fortress Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'C U Weerawardane'}), (c:Company {name: 'Fortress Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'J R Gunaratne'}), (c:Company {name: 'Fortress Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'A A K Amarasinghe'}), (c:Company {name: 'Fortress Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'D C Fernando'}), (c:Company {name: 'Fortress Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'V Leelananda'}), (c:Company {name: 'Fortress Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'K A D B Perera'}), (c:Company {name: 'Fortress Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 32
// Step 5: Metrics;

// Query 33
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 38
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 41
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 42
// Step 6: HAS_METRIC Relationships;

// Query 43
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 921487000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 266705000.0, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212342000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.91, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2178190000.0, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1815347000.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.0, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 339308000.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 434696000.0, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -680000.0, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -19842000.0, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.18, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.0, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1826630000.0, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1609145000.0, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.0, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 73633000.0, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 349167000.0, r.year = 2022;

// Query 62
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27283000.0, r.year = 2022;

// Query 63
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33049000.0, r.year = 2022;

// Query 64
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.30, r.year = 2022;

// Query 65
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.0, r.year = 2022;

// Query 66
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1919266000.0, r.year = 2022;

// Query 67
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1628664000.0, r.year = 2022;

// Query 68
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.0, r.year = 2022;

// Query 69
MATCH (c:Company {name: 'Fortress Resorts'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 116490000.0, r.year = 2022;

// Query 70
// Step 7: Sectors;

// Query 71
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 72
// Step 8: IN_SECTOR Relationships;

// Query 73
MATCH (c:Company {name: 'Fortress Resorts'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
// Step 9: Products;

// Query 75
MERGE (p:Product {name: 'Lodging'}) ON CREATE SET p.id = 'lodging';

// Query 76
MERGE (p:Product {name: 'Food Services'}) ON CREATE SET p.id = 'food_services';

// Query 77
MERGE (p:Product {name: 'Beverage Services'}) ON CREATE SET p.id = 'beverage_services';

// Query 78
MERGE (p:Product {name: 'Spa Services'}) ON CREATE SET p.id = 'spa_services';

// Query 79
MERGE (p:Product {name: 'Laundry Services'}) ON CREATE SET p.id = 'laundry_services';

// Query 80
MERGE (p:Product {name: 'Transport Services'}) ON CREATE SET p.id = 'transport_services';

// Query 81
MERGE (p:Product {name: 'Excursion Services'}) ON CREATE SET p.id = 'excursion_services';

// Query 82
MERGE (p:Product {name: 'Boutique Sales'}) ON CREATE SET p.id = 'boutique_sales';

// Query 83
// Step 10: OFFERS Relationships;

// Query 84
MATCH (c:Company {name: 'Fortress Resorts'}), (p:Product {name: 'Lodging'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Fortress Resorts'}), (p:Product {name: 'Food Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Fortress Resorts'}), (p:Product {name: 'Beverage Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Fortress Resorts'}), (p:Product {name: 'Spa Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Fortress Resorts'}), (p:Product {name: 'Laundry Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Fortress Resorts'}), (p:Product {name: 'Transport Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Fortress Resorts'}), (p:Product {name: 'Excursion Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Fortress Resorts'}), (p:Product {name: 'Boutique Sales'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
// Step 11: Company-Company Relationships;

// Query 93
MERGE (sub:Company {name: 'La Forteresse'}) ON CREATE SET sub.id = 'la_forteresse';

// Query 94
MATCH (parent:Company {name: 'Fortress Resorts'}), (child:Company {name: 'La Forteresse'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 95
MATCH (manager:Company {name: 'Fortress Resorts'}), (managed:Company {name: 'La Forteresse'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.as_of = date('2024-03-31');

// Total queries: 95
// Generated on: 2025-10-02T22:56:18.898700
