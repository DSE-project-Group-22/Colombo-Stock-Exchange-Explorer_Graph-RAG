// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Asiri Hospital Holdings'}) ON CREATE SET c.id = 'asiri_hospital_holdings', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('1980-09-29');

// Query 3
// Step 2: Auditor - No auditor firm name found in hardcoded list, skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 6
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 7
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 8
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 9
MERGE (p:Person {name: 'S. Ahangama'}) ON CREATE SET p.id = 's_ahangama';

// Query 10
MERGE (p:Person {name: 'V. Bali'}) ON CREATE SET p.id = 'v_bali';

// Query 11
MERGE (p:Person {name: 'A.N Thadani'}) ON CREATE SET p.id = 'a_n_thadani';

// Query 12
MERGE (p:Person {name: 'Haresh Kumar Kaimal'}) ON CREATE SET p.id = 'haresh_kumar_kaimal';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'Asiri Hospital Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'Asiri Hospital Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'Asiri Hospital Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'Asiri Hospital Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'Asiri Hospital Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'S. Ahangama'}), (c:Company {name: 'Asiri Hospital Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'V. Bali'}), (c:Company {name: 'Asiri Hospital Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'A.N Thadani'}), (c:Company {name: 'Asiri Hospital Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Haresh Kumar Kaimal'}), (c:Company {name: 'Asiri Hospital Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2023-05-16');

// Query 23
// Step 5: Metrics;

// Query 24
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 29
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 32
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 34
// Step 6: HAS_METRIC Relationships;

// Query 35
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28571486701.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 36
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4368296629.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 37
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3118877023.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 38
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.54, r.year = 2024, r.as_of = date('2024-03-31');

// Query 39
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 40
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 52549245000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 41
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23432445935.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 42
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.66, r.year = 2024, r.as_of = date('2024-03-31');

// Query 43
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6303779000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 44
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1935483000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 45
// Step 7: Sectors;

// Query 46
MERGE (s:Sector {name: 'Health Care Equipment and Services'}) ON CREATE SET s.id = 'health_care_equipment_and_services';

// Query 47
// Step 8: IN_SECTOR Relationships;

// Query 48
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (s:Sector {name: 'Health Care Equipment and Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 49
// Step 9: Product nodes creation;

// Query 50
MERGE (p:Product {name: 'Healthcare Services'}) ON CREATE SET p.id = 'healthcare_services';

// Query 51
MERGE (p:Product {name: 'Pharmaceutical Goods'}) ON CREATE SET p.id = 'pharmaceutical_goods';

// Query 52
MERGE (p:Product {name: 'Pre Care Services'}) ON CREATE SET p.id = 'pre_care_services';

// Query 53
MERGE (p:Product {name: 'Post Care Services'}) ON CREATE SET p.id = 'post_care_services';

// Query 54
MERGE (p:Product {name: 'Pharmacy Services'}) ON CREATE SET p.id = 'pharmacy_services';

// Query 55
MERGE (p:Product {name: 'Healthcare Professional Services'}) ON CREATE SET p.id = 'healthcare_professional_services';

// Query 56
MERGE (p:Product {name: 'Digital Discharge Workflow Monitoring System'}) ON CREATE SET p.id = 'digital_discharge_workflow_monitoring_system';

// Query 57
MERGE (p:Product {name: 'Automated Theatre Booking'}) ON CREATE SET p.id = 'automated_theatre_booking';

// Query 58
MERGE (p:Product {name: 'Radiology Workflow Automation'}) ON CREATE SET p.id = 'radiology_workflow_automation';

// Query 59
MERGE (p:Product {name: 'OPD Pharmacy Workflow Automation'}) ON CREATE SET p.id = 'opd_pharmacy_workflow_automation';

// Query 60
MERGE (p:Product {name: 'Online Drug Ordering System'}) ON CREATE SET p.id = 'online_drug_ordering_system';

// Query 61
MERGE (p:Product {name: 'Home Nursing Service'}) ON CREATE SET p.id = 'home_nursing_service';

// Query 62
MERGE (p:Product {name: 'Psychiatric and Psychological Care'}) ON CREATE SET p.id = 'psychiatric_and_psychological_care';

// Query 63
MERGE (p:Product {name: 'Paediatric Nephrology Services'}) ON CREATE SET p.id = 'paediatric_nephrology_services';

// Query 64
MERGE (p:Product {name: 'Paediatric Services'}) ON CREATE SET p.id = 'paediatric_services';

// Query 65
MERGE (p:Product {name: 'Laboratory Services'}) ON CREATE SET p.id = 'laboratory_services';

// Query 66
// Step 10: OFFERS Relationships;

// Query 67
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (p:Product {name: 'Healthcare Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 68
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (p:Product {name: 'Pharmaceutical Goods'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (p:Product {name: 'Pre Care Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (p:Product {name: 'Post Care Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (p:Product {name: 'Pharmacy Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (p:Product {name: 'Healthcare Professional Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (p:Product {name: 'Digital Discharge Workflow Monitoring System'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (p:Product {name: 'Automated Theatre Booking'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (p:Product {name: 'Radiology Workflow Automation'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (p:Product {name: 'OPD Pharmacy Workflow Automation'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (p:Product {name: 'Online Drug Ordering System'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (p:Product {name: 'Home Nursing Service'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (p:Product {name: 'Psychiatric and Psychological Care'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (p:Product {name: 'Paediatric Nephrology Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (p:Product {name: 'Paediatric Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Asiri Hospital Holdings'}), (p:Product {name: 'Laboratory Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
// Step 11: Company-Company Relationships (OWNS);

// Query 84
MERGE (sub1:Company {name: 'Asiri Central Hospitals'}) ON CREATE SET sub1.id = 'asiri_central_hospitals';

// Query 85
MERGE (sub2:Company {name: 'Asiri Hospital Matara'}) ON CREATE SET sub2.id = 'asiri_hospital_matara';

// Query 86
MATCH (parent:Company {name: 'Asiri Hospital Holdings'}), (child:Company {name: 'Asiri Central Hospitals'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 99.10, r.as_of = date('2024-03-31');

// Query 87
MATCH (parent:Company {name: 'Asiri Hospital Holdings'}), (child:Company {name: 'Asiri Hospital Matara'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 88
// Step 12: Person-Company Relationships (OWNS_SHARES);

// Query 89
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'Asiri Hospital Holdings'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 371664, r.as_of = date('2024-03-31');

// Query 90
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'Asiri Hospital Holdings'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 9047, r.as_of = date('2024-03-31');

// Total queries: 90
// Generated on: 2025-10-03T01:56:37.256153
