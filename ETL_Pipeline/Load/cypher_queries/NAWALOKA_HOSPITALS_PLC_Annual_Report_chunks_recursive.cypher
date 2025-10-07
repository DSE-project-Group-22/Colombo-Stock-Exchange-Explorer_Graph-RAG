// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Nawaloka Hospitals'}) ON CREATE SET c.id = 'nawaloka_hospitals', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Dr H K Jayantha Dharmadasa'}) ON CREATE SET p.id = 'dr_h_k_jayantha_dharmadasa';

// Query 8
MERGE (p:Person {name: 'Mr Anisha Dharmadasa'}) ON CREATE SET p.id = 'mr_anisha_dharmadasa';

// Query 9
MERGE (p:Person {name: 'Vidya Jyothi Prof Lal G Chandrasena'}) ON CREATE SET p.id = 'vidya_jyothi_prof_lal_g_chandrasena';

// Query 10
MERGE (p:Person {name: 'Deshabandu Tilak de Zoysa'}) ON CREATE SET p.id = 'deshabandu_tilak_de_zoysa';

// Query 11
MERGE (p:Person {name: 'Mr Tissa K Bandaranayake'}) ON CREATE SET p.id = 'mr_tissa_k_bandaranayake';

// Query 12
MERGE (p:Person {name: 'Ms A G Dharmadasa'}) ON CREATE SET p.id = 'ms_a_g_dharmadasa';

// Query 13
MERGE (p:Person {name: 'Mr D Sunil AbeyRatna'}) ON CREATE SET p.id = 'mr_d_sunil_abeyratna';

// Query 14
MERGE (p:Person {name: 'Mr V R Ramanan'}) ON CREATE SET p.id = 'mr_v_r_ramanan';

// Query 15
MERGE (p:Person {name: 'Dr Maithree Gunasekera'}) ON CREATE SET p.id = 'dr_maithree_gunasekera';

// Query 16
MERGE (p:Person {name: 'Dr W Chandima P De Mel'}) ON CREATE SET p.id = 'dr_w_chandima_p_de_mel';

// Query 17
MERGE (p:Person {name: 'Vidya Jyothi Prof S K A Arjun P De Silva'}) ON CREATE SET p.id = 'vidya_jyothi_prof_s_k_a_arjun_p_de_silva';

// Query 18
MERGE (p:Person {name: 'Dr M T D Lakshan'}) ON CREATE SET p.id = 'dr_m_t_d_lakshan';

// Query 19
MERGE (p:Person {name: 'Dr Mohan Rajakaruna'}) ON CREATE SET p.id = 'dr_mohan_rajakaruna';

// Query 20
// Step 4: HOLDS_POSITION Relationships;

// Query 21
MATCH (p:Person {name: 'Dr H K Jayantha Dharmadasa'}), (c:Company {name: 'Nawaloka Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Dr H K Jayantha Dharmadasa'}), (c:Company {name: 'Nawaloka Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Mr Anisha Dharmadasa'}), (c:Company {name: 'Nawaloka Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Vidya Jyothi Prof Lal G Chandrasena'}), (c:Company {name: 'Nawaloka Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Vidya Jyothi Prof Lal G Chandrasena'}), (c:Company {name: 'Nawaloka Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'Deshabandu Tilak de Zoysa'}), (c:Company {name: 'Nawaloka Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'Mr Tissa K Bandaranayake'}), (c:Company {name: 'Nawaloka Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'Ms A G Dharmadasa'}), (c:Company {name: 'Nawaloka Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'Mr D Sunil AbeyRatna'}), (c:Company {name: 'Nawaloka Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'Mr V R Ramanan'}), (c:Company {name: 'Nawaloka Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'Dr Maithree Gunasekera'}), (c:Company {name: 'Nawaloka Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'Dr W Chandima P De Mel'}), (c:Company {name: 'Nawaloka Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'Vidya Jyothi Prof S K A Arjun P De Silva'}), (c:Company {name: 'Nawaloka Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'Dr M T D Lakshan'}), (c:Company {name: 'Nawaloka Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'Dr Mohan Rajakaruna'}), (c:Company {name: 'Nawaloka Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

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
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 44
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 46
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 47
// Step 6: HAS_METRIC Relationships;

// Query 48
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10379164804, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9305061318, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1024615844, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -73460408, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -247007212, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1910781335, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -304747263, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2438455495, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18695096944, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18995059239, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4585398428, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4923500887, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.0, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -50.0, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.22, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.73, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.40, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.86, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.25, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.24, r.year = 2023;

// Query 68
// Step 7: Sectors;

// Query 69
MERGE (s:Sector {name: 'Health Care Equipment and Services'}) ON CREATE SET s.id = 'health_care_equipment_and_services';

// Query 70
MERGE (s:Sector {name: 'Pharmaceuticals, Biotechnology, and Life Sciences'}) ON CREATE SET s.id = 'pharmaceuticals_biotechnology_and_life_sciences';

// Query 71
// Step 8: IN_SECTOR Relationships;

// Query 72
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (s:Sector {name: 'Health Care Equipment and Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 73
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (s:Sector {name: 'Pharmaceuticals, Biotechnology, and Life Sciences'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
// Step 9: Products;

// Query 75
MERGE (p:Product {name: 'Hospital Services'}) ON CREATE SET p.id = 'hospital_services';

// Query 76
MERGE (p:Product {name: 'Pharmaceuticals'}) ON CREATE SET p.id = 'pharmaceuticals';

// Query 77
MERGE (p:Product {name: 'Laboratory Services'}) ON CREATE SET p.id = 'laboratory_services';

// Query 78
MERGE (p:Product {name: 'Radiology Services'}) ON CREATE SET p.id = 'radiology_services';

// Query 79
MERGE (p:Product {name: 'Corporate Health Services'}) ON CREATE SET p.id = 'corporate_health_services';

// Query 80
MERGE (p:Product {name: 'OPD Services'}) ON CREATE SET p.id = 'opd_services';

// Query 81
MERGE (p:Product {name: 'Eye Surgery Services'}) ON CREATE SET p.id = 'eye_surgery_services';

// Query 82
MERGE (p:Product {name: 'Centralized Diagnostic Services'}) ON CREATE SET p.id = 'centralized_diagnostic_services';

// Query 83
MERGE (p:Product {name: 'Polyclinic Laboratory Services'}) ON CREATE SET p.id = 'polyclinic_laboratory_services';

// Query 84
MERGE (p:Product {name: 'Online Payment Services'}) ON CREATE SET p.id = 'online_payment_services';

// Query 85
MERGE (p:Product {name: 'Mobile Appointment Booking App'}) ON CREATE SET p.id = 'mobile_appointment_booking_app';

// Query 86
// Step 10: OFFERS Relationships;

// Query 87
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (p:Product {name: 'Hospital Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (p:Product {name: 'Pharmaceuticals'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (p:Product {name: 'Laboratory Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (p:Product {name: 'Radiology Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (p:Product {name: 'Corporate Health Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (p:Product {name: 'OPD Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (p:Product {name: 'Eye Surgery Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (p:Product {name: 'Centralized Diagnostic Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (p:Product {name: 'Polyclinic Laboratory Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (p:Product {name: 'Online Payment Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: 'Nawaloka Hospitals'}), (p:Product {name: 'Mobile Appointment Booking App'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 97
// Generated on: 2025-10-03T00:27:45.434259
