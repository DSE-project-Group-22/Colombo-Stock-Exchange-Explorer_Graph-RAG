// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Royal Ceramics Lanka'}) ON CREATE SET c.id = 'royal_ceramics_lanka', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No explicit auditor firm name found matching the hardcoded list. Skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'A M Weerasinghe'}) ON CREATE SET p.id = 'a_m_weerasinghe';

// Query 6
MERGE (p:Person {name: 'M Y A Perera'}) ON CREATE SET p.id = 'm_y_a_perera';

// Query 7
MERGE (p:Person {name: 'T G Thoradeniya'}) ON CREATE SET p.id = 't_g_thoradeniya';

// Query 8
MERGE (p:Person {name: 'Dhammika Perera'}) ON CREATE SET p.id = 'dhammika_perera';

// Query 9
MERGE (p:Person {name: 'S H Amarasekera'}) ON CREATE SET p.id = 's_h_amarasekera';

// Query 10
MERGE (p:Person {name: 'G A R D Prasanna'}) ON CREATE SET p.id = 'g_a_r_d_prasanna';

// Query 11
MERGE (p:Person {name: 'S M Liyanage'}) ON CREATE SET p.id = 's_m_liyanage';

// Query 12
MERGE (p:Person {name: 'K A D B Perera'}) ON CREATE SET p.id = 'k_a_d_b_perera';

// Query 13
MERGE (p:Person {name: 'S R Jayaweera'}) ON CREATE SET p.id = 's_r_jayaweera';

// Query 14
MERGE (p:Person {name: 'J R Gunaratne'}) ON CREATE SET p.id = 'j_r_gunaratne';

// Query 15
MERGE (p:Person {name: 'N J Weerakoon'}) ON CREATE SET p.id = 'n_j_weerakoon';

// Query 16
MERGE (p:Person {name: 'H M A Jayesinghe'}) ON CREATE SET p.id = 'h_m_a_jayesinghe';

// Query 17
MERGE (p:Person {name: 'R N Asirwatham'}) ON CREATE SET p.id = 'r_n_asirwatham';

// Query 18
MERGE (p:Person {name: 'N R Thambiayah'}) ON CREATE SET p.id = 'n_r_thambiayah';

// Query 19
MERGE (p:Person {name: 'L N De S Wijeyeratne'}) ON CREATE SET p.id = 'l_n_de_s_wijeyeratne';

// Query 20
// Step 4: HOLDS_POSITION Relationships;

// Query 21
MATCH (p:Person {name: 'A M Weerasinghe'}), (c:Company {name: 'Royal Ceramics Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'M Y A Perera'}), (c:Company {name: 'Royal Ceramics Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'T G Thoradeniya'}), (c:Company {name: 'Royal Ceramics Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Dhammika Perera'}), (c:Company {name: 'Royal Ceramics Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'S H Amarasekera'}), (c:Company {name: 'Royal Ceramics Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'G A R D Prasanna'}), (c:Company {name: 'Royal Ceramics Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'S M Liyanage'}), (c:Company {name: 'Royal Ceramics Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'K A D B Perera'}), (c:Company {name: 'Royal Ceramics Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'S R Jayaweera'}), (c:Company {name: 'Royal Ceramics Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'J R Gunaratne'}), (c:Company {name: 'Royal Ceramics Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'N J Weerakoon'}), (c:Company {name: 'Royal Ceramics Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'H M A Jayesinghe'}), (c:Company {name: 'Royal Ceramics Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'R N Asirwatham'}), (c:Company {name: 'Royal Ceramics Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'N R Thambiayah'}), (c:Company {name: 'Royal Ceramics Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'L N De S Wijeyeratne'}), (c:Company {name: 'Royal Ceramics Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 36
// Step 5: Metrics;

// Query 37
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 43
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 46
// Step 6: HAS_METRIC Relationships;

// Query 47
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 60700000000.0, r.year = 2025;

// Query 48
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 61200000000.0, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 63200000000.0, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 55000000000.0, r.year = 2022;

// Query 51
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10000000000.0, r.year = 2025;

// Query 52
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14200000000.0, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7908137335.0, r.year = 2025;

// Query 54
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12079378652.0, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6015447436.0, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3604953505.0, r.year = 2022;

// Query 57
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6053048496.0, r.year = 2025;

// Query 58
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9056099635.0, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4811686568.0, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2796496626.0, r.year = 2022;

// Query 61
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.56, r.year = 2025;

// Query 62
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.51, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.34, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.52, r.year = 2022;

// Query 65
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.3, r.year = 2025;

// Query 66
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.1, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 113400000000.0, r.year = 2025;

// Query 68
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 101600000000.0, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 65000000000.0, r.year = 2025;

// Query 70
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 60100000000.0, r.year = 2024;

// Query 71
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.32, r.year = 2025;

// Query 72
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.29, r.year = 2024;

// Query 73
// Step 7: Sectors;

// Query 74
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 75
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 76
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 77
// Step 8: IN_SECTOR Relationships;

// Query 78
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 79
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 80
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 81
// Step 9: Products;

// Query 82
MERGE (p:Product {name: 'Wall tiles'}) ON CREATE SET p.id = 'wall_tiles';

// Query 83
MERGE (p:Product {name: 'Floor tiles'}) ON CREATE SET p.id = 'floor_tiles';

// Query 84
MERGE (p:Product {name: 'Sanitaryware products'}) ON CREATE SET p.id = 'sanitaryware_products';

// Query 85
MERGE (p:Product {name: 'Packaging materials'}) ON CREATE SET p.id = 'packaging_materials';

// Query 86
MERGE (p:Product {name: 'Aluminium extrusions'}) ON CREATE SET p.id = 'aluminium_extrusions';

// Query 87
MERGE (p:Product {name: 'Financial solutions'}) ON CREATE SET p.id = 'financial_solutions';

// Query 88
MERGE (p:Product {name: 'Porcelain tiles'}) ON CREATE SET p.id = 'porcelain_tiles';

// Query 89
MERGE (p:Product {name: 'Eco-friendly packaging'}) ON CREATE SET p.id = 'eco_friendly_packaging';

// Query 90
MERGE (p:Product {name: 'Antibacterial tiles'}) ON CREATE SET p.id = 'antibacterial_tiles';

// Query 91
MERGE (p:Product {name: 'Self-cleaning tiles'}) ON CREATE SET p.id = 'self_cleaning_tiles';

// Query 92
MERGE (p:Product {name: 'Low-cost tiles'}) ON CREATE SET p.id = 'low_cost_tiles';

// Query 93
// Step 10: OFFERS Relationships;

// Query 94
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (p:Product {name: 'Wall tiles'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (p:Product {name: 'Floor tiles'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (p:Product {name: 'Sanitaryware products'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (p:Product {name: 'Packaging materials'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (p:Product {name: 'Aluminium extrusions'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (p:Product {name: 'Financial solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (p:Product {name: 'Porcelain tiles'}) MERGE (c)-[:OFFERS]->(p);

// Query 101
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (p:Product {name: 'Eco-friendly packaging'}) MERGE (c)-[:OFFERS]->(p);

// Query 102
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (p:Product {name: 'Antibacterial tiles'}) MERGE (c)-[:OFFERS]->(p);

// Query 103
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (p:Product {name: 'Self-cleaning tiles'}) MERGE (c)-[:OFFERS]->(p);

// Query 104
MATCH (c:Company {name: 'Royal Ceramics Lanka'}), (p:Product {name: 'Low-cost tiles'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 104
// Generated on: 2025-10-02T23:21:39.844161
