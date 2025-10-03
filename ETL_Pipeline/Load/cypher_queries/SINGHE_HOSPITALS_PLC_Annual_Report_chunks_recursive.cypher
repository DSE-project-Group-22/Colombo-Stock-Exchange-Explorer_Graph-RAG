// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Singhe Hospitals'}) ON CREATE SET c.id = 'singhe_hospitals', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No auditor name found in the provided text, skipping auditor node and relationship creation.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'A. M. Weerasinghe'}) ON CREATE SET p.id = 'a_m_weerasinghe';

// Query 6
MERGE (p:Person {name: 'Navinda Weerasinghe'}) ON CREATE SET p.id = 'navinda_weerasinghe';

// Query 7
MERGE (p:Person {name: 'Lakshika Weerasinghe'}) ON CREATE SET p.id = 'lakshika_weerasinghe';

// Query 8
MERGE (p:Person {name: 'H. M. A. B. Weerasekara'}) ON CREATE SET p.id = 'h_m_a_b_weerasekara';

// Query 9
MERGE (p:Person {name: 'U. B. H. Jayalath Kithsiri'}) ON CREATE SET p.id = 'u_b_h_jayalath_kithsiri';

// Query 10
MERGE (p:Person {name: 'A. M. A. Cader'}) ON CREATE SET p.id = 'a_m_a_cader';

// Query 11
MERGE (p:Person {name: 'Chaaminda Kumarasiri'}) ON CREATE SET p.id = 'chaaminda_kumarasiri';

// Query 12
MERGE (p:Person {name: 'Piyumal Weerasinghe'}) ON CREATE SET p.id = 'piyumal_weerasinghe';

// Query 13
MERGE (p:Person {name: 'Aruna Jayakody'}) ON CREATE SET p.id = 'aruna_jayakody';

// Query 14
MERGE (p:Person {name: 'P. D. S. Obeysekara'}) ON CREATE SET p.id = 'p_d_s_obeysekara';

// Query 15
MERGE (p:Person {name: 'Bathiya Angammana'}) ON CREATE SET p.id = 'bathiya_angammana';

// Query 16
// Step 4: HOLDS_POSITION Relationships;

// Query 17
MATCH (p:Person {name: 'A. M. Weerasinghe'}), (c:Company {name: 'Singhe Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-03-31');

// Query 18
MATCH (p:Person {name: 'Navinda Weerasinghe'}), (c:Company {name: 'Singhe Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2025-03-31');

// Query 19
MATCH (p:Person {name: 'Lakshika Weerasinghe'}), (c:Company {name: 'Singhe Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 20
MATCH (p:Person {name: 'H. M. A. B. Weerasekara'}), (c:Company {name: 'Singhe Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 21
MATCH (p:Person {name: 'U. B. H. Jayalath Kithsiri'}), (c:Company {name: 'Singhe Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 22
MATCH (p:Person {name: 'A. M. A. Cader'}), (c:Company {name: 'Singhe Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 23
MATCH (p:Person {name: 'Chaaminda Kumarasiri'}), (c:Company {name: 'Singhe Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 24
MATCH (p:Person {name: 'Piyumal Weerasinghe'}), (c:Company {name: 'Singhe Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 25
MATCH (p:Person {name: 'Aruna Jayakody'}), (c:Company {name: 'Singhe Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 26
MATCH (p:Person {name: 'P. D. S. Obeysekara'}), (c:Company {name: 'Singhe Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-30');

// Query 27
MATCH (p:Person {name: 'Bathiya Angammana'}), (c:Company {name: 'Singhe Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2025-03-31');

// Query 28
// Step 5: Metrics;

// Query 29
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 37
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 38
// Step 6: HAS_METRIC Relationships;

// Query 39
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1506668000.0, r.year = 2025;

// Query 40
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 186539000.0, r.year = 2025;

// Query 41
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 146970000.0, r.year = 2025;

// Query 42
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 116178000.0, r.year = 2025;

// Query 43
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.27, r.year = 2025;

// Query 44
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1495000000.0, r.year = 2025;

// Query 45
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 912000000.0, r.year = 2025;

// Query 46
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.7, r.year = 2025;

// Query 47
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.0, r.year = 2025;

// Query 48
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1272305000.0, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 89897000.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 32485000.0, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24628000.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.06, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1350000000.0, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 798000000.0, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.1, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27.0, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1071706000.0, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 80800000.0, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15947000.0, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -12726000.0, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.03, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 981000000.0, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 474000000.0, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2.7, r.year = 2023;

// Query 65
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44.0, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1001699000.0, r.year = 2022;

// Query 67
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50031000.0, r.year = 2022;

// Query 68
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14143000.0, r.year = 2022;

// Query 69
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16413000.0, r.year = 2022;

// Query 70
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.04, r.year = 2022;

// Query 71
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 951000000.0, r.year = 2022;

// Query 72
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 494000000.0, r.year = 2022;

// Query 73
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.3, r.year = 2022;

// Query 74
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47.0, r.year = 2022;

// Query 75
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 700337000.0, r.year = 2021;

// Query 76
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 32600000.0, r.year = 2021;

// Query 77
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5801000.0, r.year = 2021;

// Query 78
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2299000.0, r.year = 2021;

// Query 79
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.01, r.year = 2021;

// Query 80
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 952000000.0, r.year = 2021;

// Query 81
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 476000000.0, r.year = 2021;

// Query 82
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.5, r.year = 2021;

// Query 83
MATCH (c:Company {name: 'Singhe Hospitals'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50.0, r.year = 2021;

// Query 84
// Step 7: Sectors;

// Query 85
MERGE (s:Sector {name: 'Health Care Equipment and Services'}) ON CREATE SET s.id = 'health_care_equipment_and_services';

// Query 86
// Step 8: IN_SECTOR Relationships;

// Query 87
MATCH (c:Company {name: 'Singhe Hospitals'}), (s:Sector {name: 'Health Care Equipment and Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 88
// Step 9: Product nodes creation;

// Query 89
MERGE (p:Product {name: 'Hospital Services'}) ON CREATE SET p.id = 'hospital_services';

// Query 90
MERGE (p:Product {name: 'Laboratory Services'}) ON CREATE SET p.id = 'laboratory_services';

// Query 91
MERGE (p:Product {name: 'Radiology Services'}) ON CREATE SET p.id = 'radiology_services';

// Query 92
MERGE (p:Product {name: 'Pharmaceutical Goods'}) ON CREATE SET p.id = 'pharmaceutical_goods';

// Query 93
// Step 10: OFFERS Relationships;

// Query 94
MATCH (c:Company {name: 'Singhe Hospitals'}), (p:Product {name: 'Hospital Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'Singhe Hospitals'}), (p:Product {name: 'Laboratory Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'Singhe Hospitals'}), (p:Product {name: 'Radiology Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: 'Singhe Hospitals'}), (p:Product {name: 'Pharmaceutical Goods'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 97
// Generated on: 2025-10-03T02:20:58.587878
