// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'EML Consultants'}) ON CREATE SET c.id = 'eml_consultants', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - Skipped as 'MGI KAL Rupasinghe & Co.' is not in the hardcoded list of auditing firms.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Karunasena Hettiarachchi'}) ON CREATE SET p.id = 'karunasena_hettiarachchi';

// Query 6
MERGE (p:Person {name: 'Kaluachchigamage Avanthi Kumara Jayatilake'}) ON CREATE SET p.id = 'kaluachchigamage_avanthi_kumara_jayatilake';

// Query 7
MERGE (p:Person {name: 'Thilak Hewawasam'}) ON CREATE SET p.id = 'thilak_hewawasam';

// Query 8
MERGE (p:Person {name: 'Hadapangodage Nandasiri Jayaraja Chandrasekera'}) ON CREATE SET p.id = 'hadapangodage_nandasiri_jayaraja_chandrasekera';

// Query 9
MERGE (p:Person {name: 'Keerthi Prasanna Priyankara Hewa Mihiripenna'}) ON CREATE SET p.id = 'keerthi_prasanna_priyankara_hewa_mihiripenna';

// Query 10
// Step 4: HOLDS_POSITION Relationships;

// Query 11
MATCH (p:Person {name: 'Karunasena Hettiarachchi'}), (c:Company {name: 'EML Consultants'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 12
MATCH (p:Person {name: 'Karunasena Hettiarachchi'}), (c:Company {name: 'EML Consultants'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 13
MATCH (p:Person {name: 'Kaluachchigamage Avanthi Kumara Jayatilake'}), (c:Company {name: 'EML Consultants'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-12-31');

// Query 14
MATCH (p:Person {name: 'Kaluachchigamage Avanthi Kumara Jayatilake'}), (c:Company {name: 'EML Consultants'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 15
MATCH (p:Person {name: 'Thilak Hewawasam'}), (c:Company {name: 'EML Consultants'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 16
MATCH (p:Person {name: 'Hadapangodage Nandasiri Jayaraja Chandrasekera'}), (c:Company {name: 'EML Consultants'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 17
MATCH (p:Person {name: 'Keerthi Prasanna Priyankara Hewa Mihiripenna'}), (c:Company {name: 'EML Consultants'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 18
// Step 5: Metrics;

// Query 19
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 25
// Step 6: HAS_METRIC Relationships;

// Query 26
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 126070595, r.year = 2019;

// Query 27
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 133740943, r.year = 2020;

// Query 28
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 110497518, r.year = 2021;

// Query 29
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 132482840, r.year = 2022;

// Query 30
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 90054222, r.year = 2023;

// Query 31
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 116575223, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -658591, r.year = 2019;

// Query 33
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9538633, r.year = 2020;

// Query 34
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8294221, r.year = 2021;

// Query 35
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 62136440, r.year = 2022;

// Query 36
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -8452485, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5605560, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -920186, r.year = 2019;

// Query 39
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8825935, r.year = 2020;

// Query 40
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7342271, r.year = 2021;

// Query 41
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 60569772, r.year = 2022;

// Query 42
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -7639720, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -8080921, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 171240518, r.year = 2019;

// Query 45
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 194052956, r.year = 2020;

// Query 46
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 196692482, r.year = 2021;

// Query 47
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 238830817, r.year = 2022;

// Query 48
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 273805412, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 283637684, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 92495382, r.year = 2019;

// Query 51
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 102001481, r.year = 2020;

// Query 52
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106967788, r.year = 2021;

// Query 53
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 170775932, r.year = 2022;

// Query 54
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 220316812, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 194826278, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.08, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'EML Consultants'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.09, r.year = 2024;

// Query 58
// Step 7: Sectors;

// Query 59
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 60
MERGE (s:Sector {name: 'Utilities'}) ON CREATE SET s.id = 'utilities';

// Query 61
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 62
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 63
// Step 8: IN_SECTOR Relationships;

// Query 64
MATCH (c:Company {name: 'EML Consultants'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 65
MATCH (c:Company {name: 'EML Consultants'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 66
MATCH (c:Company {name: 'EML Consultants'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 67
MATCH (c:Company {name: 'EML Consultants'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 68
// Step 9: Product nodes creation;

// Query 69
MERGE (p:Product {name: 'Technical and Management Consultancy Services'}) ON CREATE SET p.id = 'technical_and_management_consultancy_services';

// Query 70
MERGE (p:Product {name: 'Urban and Industrial Engineering Services'}) ON CREATE SET p.id = 'urban_and_industrial_engineering_services';

// Query 71
MERGE (p:Product {name: 'Capacity Building and Human Resources Development Programs'}) ON CREATE SET p.id = 'capacity_building_and_human_resources_development_programs';

// Query 72
MERGE (p:Product {name: 'Monitoring & Evaluation & Social Safeguard Services'}) ON CREATE SET p.id = 'monitoring_evaluation_social_safeguard_services';

// Query 73
MERGE (p:Product {name: 'Overseas Technical Assistance Projects'}) ON CREATE SET p.id = 'overseas_technical_assistance_projects';

// Query 74
MERGE (p:Product {name: 'Water Supply and Sanitation Services'}) ON CREATE SET p.id = 'water_supply_and_sanitation_services';

// Query 75
MERGE (p:Product {name: 'Environmental Impact Assessments'}) ON CREATE SET p.id = 'environmental_impact_assessments';

// Query 76
MERGE (p:Product {name: 'Artificial Intelligence Consultancies'}) ON CREATE SET p.id = 'artificial_intelligence_consultancies';

// Query 77
// Step 10: OFFERS relationships;

// Query 78
MATCH (c:Company {name: 'EML Consultants'}), (p:Product {name: 'Technical and Management Consultancy Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'EML Consultants'}), (p:Product {name: 'Urban and Industrial Engineering Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'EML Consultants'}), (p:Product {name: 'Capacity Building and Human Resources Development Programs'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'EML Consultants'}), (p:Product {name: 'Monitoring & Evaluation & Social Safeguard Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'EML Consultants'}), (p:Product {name: 'Overseas Technical Assistance Projects'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'EML Consultants'}), (p:Product {name: 'Water Supply and Sanitation Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'EML Consultants'}), (p:Product {name: 'Environmental Impact Assessments'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'EML Consultants'}), (p:Product {name: 'Artificial Intelligence Consultancies'}) MERGE (c)-[:OFFERS]->(p) ON CREATE SET p.status = 'planned';

// Total queries: 85
// Generated on: 2025-10-02T22:35:12.340954
