// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Lanka Hospitals Corporation'}) ON CREATE SET c.id = 'lanka_hospitals_corporation', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Subsidiary Company;

// Query 4
MERGE (c:Company {name: 'Lanka Hospitals Diagnostics'}) ON CREATE SET c.id = 'lanka_hospitals_diagnostics', c.region = 'Sri Lanka';

// Query 5
// Step 3: OWNS Relationships;

// Query 6
MATCH (parent:Company {name: 'Lanka Hospitals Corporation'}), (child:Company {name: 'Lanka Hospitals Diagnostics'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-12-31');

// Query 7
MATCH (parent:Company {name: 'Lanka Hospitals Corporation'}), (child:Company {name: 'Lanka Hospitals Diagnostics'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2023-12-31');

// Query 8
// Step 4: People - Directors and Executives;

// Query 9
MERGE (p:Person {name: 'Dr. Maddumage Nilupul Perera'}) ON CREATE SET p.id = 'dr_maddumage_nilupul_perera';

// Query 10
MERGE (p:Person {name: 'Sirimal Senaratne'}) ON CREATE SET p.id = 'sirimal_senaratne';

// Query 11
MERGE (p:Person {name: 'Chaaminda Kumarasiri'}) ON CREATE SET p.id = 'chaaminda_kumarasiri';

// Query 12
MERGE (p:Person {name: 'Sajith Wickramaarachhci'}) ON CREATE SET p.id = 'sajith_wickramaarachhci';

// Query 13
MERGE (p:Person {name: 'Shamalie Jayatunge'}) ON CREATE SET p.id = 'shamalie_jayatunge';

// Query 14
MERGE (p:Person {name: 'Ashish Bhatia'}) ON CREATE SET p.id = 'ashish_bhatia';

// Query 15
MERGE (p:Person {name: 'Richa Singh Debgupta'}) ON CREATE SET p.id = 'richa_singh_debgupta';

// Query 16
MERGE (p:Person {name: 'Dharma Sri Suriyakumara'}) ON CREATE SET p.id = 'dharma_sri_suriyakumara';

// Query 17
MERGE (p:Person {name: 'Nusith Samarasee Kumaratunga'}) ON CREATE SET p.id = 'nusith_samarasee_kumaratunga';

// Query 18
MERGE (p:Person {name: 'Dr. Kanishka Karunaratne'}) ON CREATE SET p.id = 'dr_kanishka_karunaratne';

// Query 19
MERGE (p:Person {name: 'Kasun Rajapaksha'}) ON CREATE SET p.id = 'kasun_rajapaksha';

// Query 20
MERGE (p:Person {name: 'Ronald C Perera'}) ON CREATE SET p.id = 'ronald_c_perera';

// Query 21
// Step 5: HOLDS_POSITION Relationships;

// Query 22
MATCH (p:Person {name: 'Dr. Maddumage Nilupul Perera'}), (c:Company {name: 'Lanka Hospitals Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-05');

// Query 23
MATCH (p:Person {name: 'Sirimal Senaratne'}), (c:Company {name: 'Lanka Hospitals Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 24
MATCH (p:Person {name: 'Chaaminda Kumarasiri'}), (c:Company {name: 'Lanka Hospitals Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 25
MATCH (p:Person {name: 'Sajith Wickramaarachhci'}), (c:Company {name: 'Lanka Hospitals Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 26
MATCH (p:Person {name: 'Shamalie Jayatunge'}), (c:Company {name: 'Lanka Hospitals Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 27
MATCH (p:Person {name: 'Ashish Bhatia'}), (c:Company {name: 'Lanka Hospitals Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 28
MATCH (p:Person {name: 'Richa Singh Debgupta'}), (c:Company {name: 'Lanka Hospitals Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 29
MATCH (p:Person {name: 'Dharma Sri Suriyakumara'}), (c:Company {name: 'Lanka Hospitals Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-01-03');

// Query 30
MATCH (p:Person {name: 'Nusith Samarasee Kumaratunga'}), (c:Company {name: 'Lanka Hospitals Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-01-10');

// Query 31
MATCH (p:Person {name: 'Dr. Kanishka Karunaratne'}), (c:Company {name: 'Lanka Hospitals Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 32
MATCH (p:Person {name: 'Kasun Rajapaksha'}), (c:Company {name: 'Lanka Hospitals Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 33
MATCH (p:Person {name: 'Ronald C Perera'}), (c:Company {name: 'Lanka Hospitals Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 34
// Step 6: Metric Nodes;

// Query 35
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 43
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 44
// Step 7: HAS_METRIC Relationships;

// Query 45
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13650000000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12419000000.0, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1709000000.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1203000000.0, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1895000000.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1910000000.0, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1339000000.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1345000000.0, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.00, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.01, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18511000000.0, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16319000000.0, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14178000000.0, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12599000000.0, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23.0, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22.0, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.59, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.01, r.year = 2023;

// Query 63
// Step 8: Sectors;

// Query 64
MERGE (s:Sector {name: 'Health Care Equipment and Services'}) ON CREATE SET s.id = 'health_care_equipment_and_services';

// Query 65
// Step 9: IN_SECTOR Relationships;

// Query 66
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (s:Sector {name: 'Health Care Equipment and Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 67
// Step 10: Product Nodes;

// Query 68
MERGE (p:Product {name: 'Hospital Services'}) ON CREATE SET p.id = 'hospital_services';

// Query 69
MERGE (p:Product {name: 'Diagnostic Services'}) ON CREATE SET p.id = 'diagnostic_services';

// Query 70
MERGE (p:Product {name: 'Pharmacy Services'}) ON CREATE SET p.id = 'pharmacy_services';

// Query 71
MERGE (p:Product {name: 'Medical Education Services'}) ON CREATE SET p.id = 'medical_education_services';

// Query 72
MERGE (p:Product {name: 'Neuro Navigator'}) ON CREATE SET p.id = 'neuro_navigator';

// Query 73
MERGE (p:Product {name: 'Weight-Loss Surgery'}) ON CREATE SET p.id = 'weight_loss_surgery';

// Query 74
MERGE (p:Product {name: 'Liver Transplants'}) ON CREATE SET p.id = 'liver_transplants';

// Query 75
MERGE (p:Product {name: 'Parkinson\'s Disease Treatment'}) ON CREATE SET p.id = 'parkinsons_disease_treatment';

// Query 76
MERGE (p:Product {name: 'Epilepsy Treatment'}) ON CREATE SET p.id = 'epilepsy_treatment';

// Query 77
MERGE (p:Product {name: 'Robotic Surgery'}) ON CREATE SET p.id = 'robotic_surgery';

// Query 78
// Step 11: OFFERS Relationships;

// Query 79
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (p:Product {name: 'Hospital Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (p:Product {name: 'Diagnostic Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (p:Product {name: 'Pharmacy Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (p:Product {name: 'Medical Education Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (p:Product {name: 'Neuro Navigator'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (p:Product {name: 'Weight-Loss Surgery'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (p:Product {name: 'Liver Transplants'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (p:Product {name: 'Parkinson\'s Disease Treatment'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (p:Product {name: 'Epilepsy Treatment'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Lanka Hospitals Corporation'}), (p:Product {name: 'Robotic Surgery'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 88
// Generated on: 2025-10-02T23:14:31.512098
