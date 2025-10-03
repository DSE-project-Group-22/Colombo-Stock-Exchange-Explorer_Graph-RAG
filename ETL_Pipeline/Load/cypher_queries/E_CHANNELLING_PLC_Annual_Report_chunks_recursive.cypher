// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'eChannelling'}) ON CREATE SET c.id = 'echannelling', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'eChannelling'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'Dr. Mothilal de Silva'}) ON CREATE SET p.id = 'dr_mothilal_de_silva';

// Query 9
MERGE (p:Person {name: 'Mr. Chandrasiri Kalapahana'}) ON CREATE SET p.id = 'mr_chandrasiri_kalapahana';

// Query 10
MERGE (p:Person {name: 'Mr. Suneth Haputhanthri'}) ON CREATE SET p.id = 'mr_suneth_haputhanthri';

// Query 11
MERGE (p:Person {name: 'Prof. Ruwanthi Perera'}) ON CREATE SET p.id = 'prof_ruwanthi_perera';

// Query 12
MERGE (p:Person {name: 'Mr. Chan Chee Beng'}) ON CREATE SET p.id = 'mr_chan_chee_beng';

// Query 13
MERGE (p:Person {name: 'Ms. Geredene Suares'}) ON CREATE SET p.id = 'ms_geredene_suares';

// Query 14
MERGE (p:Person {name: 'Mr. Rohan Fernando'}) ON CREATE SET p.id = 'mr_rohan_fernando';

// Query 15
MERGE (p:Person {name: 'Mr. Lalith Seneviratne'}) ON CREATE SET p.id = 'mr_lalith_seneviratne';

// Query 16
MERGE (p:Person {name: 'Mr. Dallas Stephen'}) ON CREATE SET p.id = 'mr_dallas_stephen';

// Query 17
MERGE (p:Person {name: 'Mr. Sampath Hettiarachchi'}) ON CREATE SET p.id = 'mr_sampath_hettiarachchi';

// Query 18
MERGE (p:Person {name: 'Mr. Lawrence Paratz'}) ON CREATE SET p.id = 'mr_lawrence_paratz';

// Query 19
MERGE (p:Person {name: 'Mr. Sudarshana Geeganage'}) ON CREATE SET p.id = 'mr_sudarshana_geeganage';

// Query 20
// Step 5: HOLDS_POSITION Relationships (as of 2024-12-31);

// Query 21
MATCH (p:Person {name: 'Dr. Mothilal de Silva'}), (c:Company {name: 'eChannelling'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 22
MATCH (p:Person {name: 'Mr. Chandrasiri Kalapahana'}), (c:Company {name: 'eChannelling'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 23
MATCH (p:Person {name: 'Mr. Suneth Haputhanthri'}), (c:Company {name: 'eChannelling'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 24
MATCH (p:Person {name: 'Prof. Ruwanthi Perera'}), (c:Company {name: 'eChannelling'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 25
MATCH (p:Person {name: 'Mr. Chan Chee Beng'}), (c:Company {name: 'eChannelling'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 26
MATCH (p:Person {name: 'Ms. Geredene Suares'}), (c:Company {name: 'eChannelling'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-12-31');

// Query 27
// Step 5: HOLDS_POSITION Relationships (as of 2024-01-01);

// Query 28
MATCH (p:Person {name: 'Mr. Rohan Fernando'}), (c:Company {name: 'eChannelling'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 29
MATCH (p:Person {name: 'Mr. Rohan Fernando'}), (c:Company {name: 'eChannelling'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 30
MATCH (p:Person {name: 'Mr. Lalith Seneviratne'}), (c:Company {name: 'eChannelling'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 31
MATCH (p:Person {name: 'Mr. Dallas Stephen'}), (c:Company {name: 'eChannelling'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 32
MATCH (p:Person {name: 'Mr. Sampath Hettiarachchi'}), (c:Company {name: 'eChannelling'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 33
MATCH (p:Person {name: 'Mr. Lawrence Paratz'}), (c:Company {name: 'eChannelling'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 34
MATCH (p:Person {name: 'Mr. Sudarshana Geeganage'}), (c:Company {name: 'eChannelling'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 35
// Step 6: Metric Nodes;

// Query 36
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 44
// Step 7: HAS_METRIC Relationships;

// Query 45
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 255897321.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 271193906.0, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 221542340.0, r.year = 2022;

// Query 48
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 193249235.0, r.year = 2021;

// Query 49
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 130061513.0, r.year = 2020;

// Query 50
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16040207.0, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15784902.0, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44480765.0, r.year = 2022;

// Query 53
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 55864007.0, r.year = 2021;

// Query 54
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23012013.0, r.year = 2020;

// Query 55
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45970720.0, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 59541732.0, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 79519678.0, r.year = 2022;

// Query 58
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 68691890.0, r.year = 2021;

// Query 59
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40142538.0, r.year = 2020;

// Query 60
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31947148.0, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 43826611.0, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 65519591.0, r.year = 2022;

// Query 63
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 53372312.0, r.year = 2021;

// Query 64
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30002621.0, r.year = 2020;

// Query 65
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 708433901.0, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 588501117.0, r.year = 2023;

// Query 67
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 554907422.0, r.year = 2022;

// Query 68
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 464057524.0, r.year = 2021;

// Query 69
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 392240694.0, r.year = 2020;

// Query 70
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 475511178.0, r.year = 2024;

// Query 71
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 443095156.0, r.year = 2023;

// Query 72
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 401376464.0, r.year = 2022;

// Query 73
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 344954055.0, r.year = 2021;

// Query 74
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 291259261.0, r.year = 2020;

// Query 75
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.26, r.year = 2024;

// Query 76
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.36, r.year = 2023;

// Query 77
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.72, r.year = 2024;

// Query 78
MATCH (c:Company {name: 'eChannelling'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.89, r.year = 2023;

// Query 79
// Step 8: Sector Nodes;

// Query 80
MERGE (s:Sector {name: 'Health Care Equipment and Services'}) ON CREATE SET s.id = 'health_care_equipment_and_services';

// Query 81
// Step 9: IN_SECTOR Relationships;

// Query 82
MATCH (c:Company {name: 'eChannelling'}), (s:Sector {name: 'Health Care Equipment and Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 83
// Step 10: Product Nodes;

// Query 84
MERGE (p:Product {name: 'Digital Healthcare Solutions'}) ON CREATE SET p.id = 'digital_healthcare_solutions';

// Query 85
MERGE (p:Product {name: 'Health Data Services'}) ON CREATE SET p.id = 'health_data_services';

// Query 86
MERGE (p:Product {name: 'Digital Advertising'}) ON CREATE SET p.id = 'digital_advertising';

// Query 87
MERGE (p:Product {name: 'Premium Membership Tiers'}) ON CREATE SET p.id = 'premium_membership_tiers';

// Query 88
MERGE (p:Product {name: 'eSubscription Model'}) ON CREATE SET p.id = 'esubscription_model';

// Query 89
MERGE (p:Product {name: 'Online Medical Appointments'}) ON CREATE SET p.id = 'online_medical_appointments';

// Query 90
// Step 11: OFFERS Relationships;

// Query 91
MATCH (c:Company {name: 'eChannelling'}), (p:Product {name: 'Digital Healthcare Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {name: 'eChannelling'}), (p:Product {name: 'Health Data Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: 'eChannelling'}), (p:Product {name: 'Digital Advertising'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: 'eChannelling'}), (p:Product {name: 'Premium Membership Tiers'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'eChannelling'}), (p:Product {name: 'eSubscription Model'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'eChannelling'}), (p:Product {name: 'Online Medical Appointments'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 96
// Generated on: 2025-10-03T00:55:24.461562
