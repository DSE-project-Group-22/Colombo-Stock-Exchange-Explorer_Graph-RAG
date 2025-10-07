// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Vallibel One'}) ON CREATE SET c.id = 'vallibel_one', c.founded_on = date('2010-06-09'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Vallibel One'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'S H Amarasekera'}) ON CREATE SET p.id = 's_h_amarasekera';

// Query 8
MERGE (p:Person {name: 'Yogadinusha Bhaskaran'}) ON CREATE SET p.id = 'yogadinusha_bhaskaran';

// Query 9
MERGE (p:Person {name: 'J A S S Adhihetty'}) ON CREATE SET p.id = 'j_a_s_s_adhihetty';

// Query 10
MERGE (p:Person {name: 'R N Asirwatham'}) ON CREATE SET p.id = 'r_n_asirwatham';

// Query 11
MERGE (p:Person {name: 'Shirani Jayasekera'}) ON CREATE SET p.id = 'shirani_jayasekera';

// Query 12
MERGE (p:Person {name: 'A A Kawshi Amarasinghe'}) ON CREATE SET p.id = 'a_a_kawshi_amarasinghe';

// Query 13
MERGE (p:Person {name: 'K A D Brindhiini Perera'}) ON CREATE SET p.id = 'k_a_d_brindhiini_perera';

// Query 14
MERGE (p:Person {name: 'L N De S Wijeyeratne'}) ON CREATE SET p.id = 'l_n_de_s_wijeyeratne';

// Query 15
MERGE (p:Person {name: 'Jan Peter Van Twest'}) ON CREATE SET p.id = 'jan_peter_van_twest';

// Query 16
MERGE (p:Person {name: 'C V Cabraal'}) ON CREATE SET p.id = 'c_v_cabraal';

// Query 17
MERGE (p:Person {name: 'C U Weerawardena'}) ON CREATE SET p.id = 'c_u_weerawardena';

// Query 18
MERGE (p:Person {name: 'K D H Perera'}) ON CREATE SET p.id = 'k_d_h_perera';

// Query 19
MERGE (p:Person {name: 'R N Malinga'}) ON CREATE SET p.id = 'r_n_malinga';

// Query 20
MERGE (p:Person {name: 'Jitendra Gunaratne'}) ON CREATE SET p.id = 'jitendra_gunaratne';

// Query 21
// Step 4: HOLDS_POSITION Relationships;

// Query 22
MATCH (p:Person {name: 'S H Amarasekera'}), (c:Company {name: 'Vallibel One'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Yogadinusha Bhaskaran'}), (c:Company {name: 'Vallibel One'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'J A S S Adhihetty'}), (c:Company {name: 'Vallibel One'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'R N Asirwatham'}), (c:Company {name: 'Vallibel One'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'Shirani Jayasekera'}), (c:Company {name: 'Vallibel One'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'A A Kawshi Amarasinghe'}), (c:Company {name: 'Vallibel One'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'K A D Brindhiini Perera'}), (c:Company {name: 'Vallibel One'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'L N De S Wijeyeratne'}), (c:Company {name: 'Vallibel One'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'Jan Peter Van Twest'}), (c:Company {name: 'Vallibel One'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'C V Cabraal'}), (c:Company {name: 'Vallibel One'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'C U Weerawardena'}), (c:Company {name: 'Vallibel One'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'K D H Perera'}), (c:Company {name: 'Vallibel One'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'R N Malinga'}), (c:Company {name: 'Vallibel One'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'Jitendra Gunaratne'}), (c:Company {name: 'Vallibel One'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 36
// Step 5: Metrics;

// Query 37
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 41
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 43
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 46
// Step 6: HAS_METRIC Relationships;

// Query 47
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 122330000000, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 116855000000, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 94295000000, r.year = 2022;

// Query 50
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26553000000, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25078000000, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27512000000, r.year = 2022;

// Query 53
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17444000000, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17809000000, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20580000000, r.year = 2022;

// Query 56
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.5, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14.9, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18.9, r.year = 2022;

// Query 59
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 346593000000, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 309646000000, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 285210000000, r.year = 2022;

// Query 62
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.35, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.28, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 32507000000, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30678000000, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.69, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.36, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 139235000000, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 119382000000, r.year = 2023;

// Query 70
MATCH (c:Company {name: 'Vallibel One'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 108453000000, r.year = 2022;

// Query 71
// Step 7: Sectors;

// Query 72
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 73
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 74
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 75
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 76
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 77
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 78
// Step 8: IN_SECTOR Relationships;

// Query 79
MATCH (c:Company {name: 'Vallibel One'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 80
MATCH (c:Company {name: 'Vallibel One'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 81
MATCH (c:Company {name: 'Vallibel One'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 82
MATCH (c:Company {name: 'Vallibel One'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 83
MATCH (c:Company {name: 'Vallibel One'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 84
MATCH (c:Company {name: 'Vallibel One'}), (s:Sector {name: 'Insurance'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 85
// Step 9: Products;

// Query 86
MERGE (p:Product {name: 'Aluminium Products'}) ON CREATE SET p.id = 'aluminium_products';

// Query 87
MERGE (p:Product {name: 'Packaging Solutions'}) ON CREATE SET p.id = 'packaging_solutions';

// Query 88
MERGE (p:Product {name: 'Mining Services'}) ON CREATE SET p.id = 'mining_services';

// Query 89
MERGE (p:Product {name: 'CIM Wallet'}) ON CREATE SET p.id = 'cim_wallet';

// Query 90
MERGE (p:Product {name: 'ECLIPSE Platform'}) ON CREATE SET p.id = 'eclipse_platform';

// Query 91
MERGE (p:Product {name: 'Financial Services'}) ON CREATE SET p.id = 'financial_services';

// Query 92
// Step 10: OFFERS Relationships;

// Query 93
MATCH (c:Company {name: 'Vallibel One'}), (p:Product {name: 'Aluminium Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: 'Vallibel One'}), (p:Product {name: 'Packaging Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'Vallibel One'}), (p:Product {name: 'Mining Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'Vallibel One'}), (p:Product {name: 'CIM Wallet'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: 'Vallibel One'}), (p:Product {name: 'ECLIPSE Platform'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'Vallibel One'}), (p:Product {name: 'Financial Services'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 98
// Generated on: 2025-10-03T01:47:48.575112
