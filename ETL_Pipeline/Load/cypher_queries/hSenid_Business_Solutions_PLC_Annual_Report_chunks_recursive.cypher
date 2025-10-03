// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'hSenid Business Solutions'}) ON CREATE SET c.id = 'hsenid_business_solutions', c.founded_on = date('2005-01-01'), c.listed_on = 'Colombo Stock Exchange on 21st December 2021', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor - No specific auditor firm name found in the hardcoded list, skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Dinesh Saparamadu'}) ON CREATE SET p.id = 'dinesh_saparamadu';

// Query 6
MERGE (p:Person {name: 'Sampath Jayasundara'}) ON CREATE SET p.id = 'sampath_jayasundara';

// Query 7
MERGE (p:Person {name: 'Dishnira Saparamadu-Ariyarathne'}) ON CREATE SET p.id = 'dishnira_saparamadu_ariyarathne';

// Query 8
MERGE (p:Person {name: 'Apurva Udeshi'}) ON CREATE SET p.id = 'apurva_udeshi';

// Query 9
MERGE (p:Person {name: 'Malinga Arsakularatne'}) ON CREATE SET p.id = 'malinga_arsakularatne';

// Query 10
MERGE (p:Person {name: 'Madu Ratnayake'}) ON CREATE SET p.id = 'madu_ratnayake';

// Query 11
MERGE (p:Person {name: 'Anarkali Moonesinghe'}) ON CREATE SET p.id = 'anarkali_moonesinghe';

// Query 12
MERGE (p:Person {name: 'Arittha Wikramanayake'}) ON CREATE SET p.id = 'arittha_wikramanayake';

// Query 13
MERGE (p:Person {name: 'Nilendra Weerasinghe'}) ON CREATE SET p.id = 'nilendra_weerasinghe';

// Query 14
// Step 4: HOLDS_POSITION Relationships;

// Query 15
MATCH (p:Person {name: 'Dinesh Saparamadu'}), (c:Company {name: 'hSenid Business Solutions'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'Sampath Jayasundara'}), (c:Company {name: 'hSenid Business Solutions'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Dishnira Saparamadu-Ariyarathne'}), (c:Company {name: 'hSenid Business Solutions'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'Apurva Udeshi'}), (c:Company {name: 'hSenid Business Solutions'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'Malinga Arsakularatne'}), (c:Company {name: 'hSenid Business Solutions'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'Madu Ratnayake'}), (c:Company {name: 'hSenid Business Solutions'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Anarkali Moonesinghe'}), (c:Company {name: 'hSenid Business Solutions'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Arittha Wikramanayake'}), (c:Company {name: 'hSenid Business Solutions'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Nilendra Weerasinghe'}), (c:Company {name: 'hSenid Business Solutions'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-03-31');

// Query 24
// Step 5: Metrics;

// Query 25
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 31
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 33
// Step 6: HAS_METRIC Relationships;

// Query 34
MATCH (c:Company {name: 'hSenid Business Solutions'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1645250916, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'hSenid Business Solutions'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1464368120, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'hSenid Business Solutions'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -431228331, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'hSenid Business Solutions'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 433067, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'hSenid Business Solutions'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -291571158, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'hSenid Business Solutions'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 188892772, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'hSenid Business Solutions'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -293110886, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'hSenid Business Solutions'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 188195909, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'hSenid Business Solutions'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.06, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'hSenid Business Solutions'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.68, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'hSenid Business Solutions'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -16.4, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'hSenid Business Solutions'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.8, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'hSenid Business Solutions'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2531881122, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'hSenid Business Solutions'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2728494629, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'hSenid Business Solutions'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1590695734, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'hSenid Business Solutions'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1993507748, r.year = 2023;

// Query 50
// Step 7: Sectors;

// Query 51
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 52
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 53
// Step 8: IN_SECTOR Relationships;

// Query 54
MATCH (c:Company {name: 'hSenid Business Solutions'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 55
MATCH (c:Company {name: 'hSenid Business Solutions'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 56
// Step 9: Products;

// Query 57
MERGE (p:Product {name: 'PeoplesHR Cloud'}) ON CREATE SET p.id = 'peopleshr_cloud';

// Query 58
MERGE (p:Product {name: 'PeoplesHR On-Premise'}) ON CREATE SET p.id = 'peopleshr_on_premise';

// Query 59
MERGE (p:Product {name: 'PeoplesHR Tracking'}) ON CREATE SET p.id = 'peopleshr_tracking';

// Query 60
MERGE (p:Product {name: 'PeoplesHR Outsourcing'}) ON CREATE SET p.id = 'peopleshr_outsourcing';

// Query 61
MERGE (p:Product {name: 'Mobile Software Operations'}) ON CREATE SET p.id = 'mobile_software_operations';

// Query 62
MERGE (p:Product {name: 'Staffing Solutions'}) ON CREATE SET p.id = 'staffing_solutions';

// Query 63
MERGE (p:Product {name: 'PeoplesHR Marketplace'}) ON CREATE SET p.id = 'peopleshr_marketplace';

// Query 64
// Step 10: OFFERS Relationships;

// Query 65
MATCH (c:Company {name: 'hSenid Business Solutions'}), (p:Product {name: 'PeoplesHR Cloud'}) MERGE (c)-[:OFFERS]->(p);

// Query 66
MATCH (c:Company {name: 'hSenid Business Solutions'}), (p:Product {name: 'PeoplesHR On-Premise'}) MERGE (c)-[:OFFERS]->(p);

// Query 67
MATCH (c:Company {name: 'hSenid Business Solutions'}), (p:Product {name: 'PeoplesHR Tracking'}) MERGE (c)-[:OFFERS]->(p);

// Query 68
MATCH (c:Company {name: 'hSenid Business Solutions'}), (p:Product {name: 'PeoplesHR Outsourcing'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'hSenid Business Solutions'}), (p:Product {name: 'Mobile Software Operations'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'hSenid Business Solutions'}), (p:Product {name: 'Staffing Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'hSenid Business Solutions'}), (p:Product {name: 'PeoplesHR Marketplace'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
// Step 11: Subsidiary Companies;

// Query 73
MERGE (sub1:Company {name: 'hSenid Software (Singapore)'}) ON CREATE SET sub1.id = 'hsenid_software_singapore', sub1.region = 'Singapore';

// Query 74
MERGE (sub2:Company {name: 'hSenid Business Solutions (India)'}) ON CREATE SET sub2.id = 'hsenid_business_solutions_india', sub2.region = 'India';

// Query 75
MERGE (sub3:Company {name: 'hSenid Business Solutions (Bangladesh)'}) ON CREATE SET sub3.id = 'hsenid_business_solutions_bangladesh', sub3.region = 'Bangladesh';

// Query 76
MERGE (sub4:Company {name: 'PeoplesHR'}) ON CREATE SET sub4.id = 'peopleshr', sub4.region = 'Australia';

// Query 77
// Step 12: OWNS Relationships;

// Query 78
MATCH (parent:Company {name: 'hSenid Business Solutions'}), (child:Company {name: 'hSenid Software (Singapore)'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 79
MATCH (parent:Company {name: 'hSenid Business Solutions'}), (child:Company {name: 'hSenid Business Solutions (India)'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 80
MATCH (parent:Company {name: 'hSenid Business Solutions'}), (child:Company {name: 'hSenid Business Solutions (Bangladesh)'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 81
MATCH (parent:Company {name: 'hSenid Business Solutions'}), (child:Company {name: 'PeoplesHR'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Total queries: 81
// Generated on: 2025-10-03T00:57:28.295470
