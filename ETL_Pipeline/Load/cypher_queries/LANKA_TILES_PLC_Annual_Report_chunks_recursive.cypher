// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Lanka Tiles'}) ON CREATE SET c.id = 'lanka_tiles', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'Lanka Walltiles'}) ON CREATE SET c.id = 'lanka_walltiles';

// Query 4
MERGE (c:Company {name: 'Vallibel One'}) ON CREATE SET c.id = 'vallibel_one';

// Query 5
MERGE (c:Company {name: 'Beyond Paradise Collection'}) ON CREATE SET c.id = 'beyond_paradise_collection';

// Query 6
MERGE (c:Company {name: 'Lanka Swisstek'}) ON CREATE SET c.id = 'lanka_swisstek';

// Query 7
MERGE (c:Company {name: 'L T L Development'}) ON CREATE SET c.id = 'l_t_l_development';

// Query 8
MERGE (c:Company {name: 'Swisstek (Ceylon)'}) ON CREATE SET c.id = 'swisstek_ceylon';

// Query 9
MERGE (c:Company {name: 'CP Holdings'}) ON CREATE SET c.id = 'cp_holdings';

// Query 10
// Step 2: Auditor Nodes;

// Query 11
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 12
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 13
// Step 3: AUDITED_BY Relationships;

// Query 14
MATCH (c:Company {name: 'Lanka Tiles'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 15
MATCH (c:Company {name: 'Swisstek (Ceylon)'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 16
MATCH (c:Company {name: 'CP Holdings'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 17
// Step 4: Person Nodes;

// Query 18
MERGE (p:Person {name: 'J A P M Jayaskera'}) ON CREATE SET p.id = 'j_a_p_m_jayaskera';

// Query 19
MERGE (p:Person {name: 'A M Weerasinghe'}) ON CREATE SET p.id = 'a_m_weerasinghe';

// Query 20
MERGE (p:Person {name: 'T G Thoradeniya'}) ON CREATE SET p.id = 't_g_thoradeniya';

// Query 21
MERGE (p:Person {name: 'S M Liyanage'}) ON CREATE SET p.id = 's_m_liyanage';

// Query 22
MERGE (p:Person {name: 'K A D B Perera'}) ON CREATE SET p.id = 'k_a_d_b_perera';

// Query 23
MERGE (p:Person {name: 'S Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 24
MERGE (p:Person {name: 'K D G Gunaratne'}) ON CREATE SET p.id = 'k_d_g_gunaratne';

// Query 25
MERGE (p:Person {name: 'A M L Page'}) ON CREATE SET p.id = 'a_m_l_page';

// Query 26
MERGE (p:Person {name: 'J A N R Adhihetty'}) ON CREATE SET p.id = 'j_a_n_r_adhihetty';

// Query 27
MERGE (p:Person {name: 'S R Jayaweera'}) ON CREATE SET p.id = 's_r_jayaweera';

// Query 28
MERGE (p:Person {name: 'J R Gunaratne'}) ON CREATE SET p.id = 'j_r_gunaratne';

// Query 29
MERGE (p:Person {name: 'Nandajith Somaratne'}) ON CREATE SET p.id = 'nandajith_somaratne';

// Query 30
MERGE (p:Person {name: 'Sajeewani Amarasinghe'}) ON CREATE SET p.id = 'sajeewani_amarasinghe';

// Query 31
// Step 5: HOLDS_POSITION Relationships;

// Query 32
MATCH (p:Person {name: 'J A P M Jayaskera'}), (c:Company {name: 'Lanka Tiles'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'A M Weerasinghe'}), (c:Company {name: 'Lanka Tiles'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'T G Thoradeniya'}), (c:Company {name: 'Lanka Tiles'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'S M Liyanage'}), (c:Company {name: 'Lanka Tiles'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 36
MATCH (p:Person {name: 'K A D B Perera'}), (c:Company {name: 'Lanka Tiles'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 37
MATCH (p:Person {name: 'S Selliah'}), (c:Company {name: 'Lanka Tiles'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 38
MATCH (p:Person {name: 'K D G Gunaratne'}), (c:Company {name: 'Lanka Tiles'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 39
MATCH (p:Person {name: 'A M L Page'}), (c:Company {name: 'Lanka Tiles'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 40
MATCH (p:Person {name: 'J A N R Adhihetty'}), (c:Company {name: 'Lanka Tiles'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 41
MATCH (p:Person {name: 'S R Jayaweera'}), (c:Company {name: 'Lanka Tiles'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 42
MATCH (p:Person {name: 'J R Gunaratne'}), (c:Company {name: 'Lanka Tiles'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 43
MATCH (p:Person {name: 'Nandajith Somaratne'}), (c:Company {name: 'Lanka Tiles'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 44
MATCH (p:Person {name: 'Sajeewani Amarasinghe'}), (c:Company {name: 'Lanka Tiles'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-03-31');

// Query 45
// Step 6: Metric Nodes;

// Query 46
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 50
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 54
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 55
// Step 7: HAS_METRIC Relationships;

// Query 56
MATCH (c:Company {name: 'Lanka Tiles'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16131000000.0, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Lanka Tiles'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18684000000.0, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Lanka Tiles'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4109000000.0, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Lanka Tiles'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5285000000.0, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Lanka Tiles'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2907000000.0, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Lanka Tiles'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3688000000.0, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Lanka Tiles'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.0, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Lanka Tiles'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29.0, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Lanka Tiles'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20335680000.0, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Lanka Tiles'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18626599000.0, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Lanka Tiles'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14935262000.0, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Lanka Tiles'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12922261000.0, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'Lanka Tiles'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.98, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Lanka Tiles'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.90, r.year = 2023;

// Query 70
MATCH (c:Company {name: 'Lanka Tiles'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.0, r.year = 2024;

// Query 71
MATCH (c:Company {name: 'Lanka Tiles'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 35.0, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'Lanka Tiles'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44.0, r.year = 2023;

// Query 73
// Step 8: Sector Nodes;

// Query 74
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 75
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 76
// Step 9: IN_SECTOR Relationships;

// Query 77
MATCH (c:Company {name: 'Lanka Tiles'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 78
MATCH (c:Company {name: 'Beyond Paradise Collection'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 79
MATCH (c:Company {name: 'L T L Development'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 80
MATCH (c:Company {name: 'Swisstek (Ceylon)'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 81
MATCH (c:Company {name: 'CP Holdings'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 82
// Step 10: Product Nodes;

// Query 83
MERGE (p:Product {name: 'Ceramic and Porcelain Floor Tiles'}) ON CREATE SET p.id = 'ceramic_and_porcelain_floor_tiles';

// Query 84
MERGE (p:Product {name: 'Tile Grout and Tile Mortar'}) ON CREATE SET p.id = 'tile_grout_and_tile_mortar';

// Query 85
MERGE (p:Product {name: 'Mosaic Tiles'}) ON CREATE SET p.id = 'mosaic_tiles';

// Query 86
// Step 11: OFFERS Relationships;

// Query 87
MATCH (c:Company {name: 'Lanka Tiles'}), (p:Product {name: 'Ceramic and Porcelain Floor Tiles'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Lanka Tiles'}), (p:Product {name: 'Mosaic Tiles'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Swisstek (Ceylon)'}), (p:Product {name: 'Tile Grout and Tile Mortar'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
// Step 12: Company-Company Relationships (OWNS);

// Query 91
MATCH (p:Company {name: 'Lanka Tiles'}), (c:Company {name: 'Swisstek (Ceylon)'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 24.6, r.as_of = date('2024-03-31');

// Query 92
MATCH (p:Company {name: 'Lanka Tiles'}), (c:Company {name: 'CP Holdings'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 24.6, r.as_of = date('2024-03-31');

// Total queries: 92
// Generated on: 2025-10-02T22:26:45.724001
