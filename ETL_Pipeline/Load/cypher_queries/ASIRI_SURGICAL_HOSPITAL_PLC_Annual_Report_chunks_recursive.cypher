// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Asiri Surgical Hospital'}) ON CREATE SET c.id = 'asiri_surgical_hospital', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No specific auditor name found in the provided text to match the hardcoded list. Skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'A. K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 6
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 7
MERGE (p:Person {name: 'K. M. P. Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 8
MERGE (p:Person {name: 'G. L. H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 9
MERGE (p:Person {name: 'H. K. Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 10
MERGE (p:Person {name: 'S. A. B. Rajapaksa'}) ON CREATE SET p.id = 's_a_b_rajapaksa';

// Query 11
MERGE (p:Person {name: 'V. Bali'}) ON CREATE SET p.id = 'v_bali';

// Query 12
MERGE (p:Person {name: 'A. N. Thadani'}) ON CREATE SET p.id = 'a_n_thadani';

// Query 13
MERGE (p:Person {name: 'S. Ahangama'}) ON CREATE SET p.id = 's_ahangama';

// Query 14
// Step 4: HOLDS_POSITION Relationships;

// Query 15
MATCH (p:Person {name: 'A. K. Pathirage'}), (c:Company {name: 'Asiri Surgical Hospital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'A. K. Pathirage'}), (c:Company {name: 'Asiri Surgical Hospital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'Asiri Surgical Hospital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'K. M. P. Karunaratne'}), (c:Company {name: 'Asiri Surgical Hospital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'G. L. H. Premaratne'}), (c:Company {name: 'Asiri Surgical Hospital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'H. K. Kaimal'}), (c:Company {name: 'Asiri Surgical Hospital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-06-18');

// Query 21
// Step 5: OWNS_SHARES Relationships;

// Query 22
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'Asiri Surgical Hospital'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 17000, r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'K. M. P. Karunaratne'}), (c:Company {name: 'Asiri Surgical Hospital'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 133, r.as_of = date('2024-03-31');

// Query 24
// Step 6: Metrics;

// Query 25
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 31
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 33
// Step 7: HAS_METRIC Relationships;

// Query 34
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6619745016, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5634694705, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5837833000, r.year = 2022;

// Query 37
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4229712000, r.year = 2021;

// Query 38
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3654663000, r.year = 2020;

// Query 39
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1261587195, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1261396786, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1469914000, r.year = 2022;

// Query 42
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 708765000, r.year = 2021;

// Query 43
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 607901000, r.year = 2020;

// Query 44
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 746307001, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 640028727, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1246317000, r.year = 2022;

// Query 47
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 859667000, r.year = 2021;

// Query 48
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 433111000, r.year = 2020;

// Query 49
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13668721000, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13250182000, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6814898000, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5981558000, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.95, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.70, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.24, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.05, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.36, r.year = 2022;

// Query 58
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.63, r.year = 2021;

// Query 59
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.82, r.year = 2020;

// Query 60
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.48, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.69, r.year = 2023;

// Query 62
// Step 8: Sectors;

// Query 63
MERGE (s:Sector {name: 'Health Care Equipment and Services'}) ON CREATE SET s.id = 'health_care_equipment_and_services';

// Query 64
// Step 9: IN_SECTOR Relationships;

// Query 65
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (s:Sector {name: 'Health Care Equipment and Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 66
// Step 10: Products;

// Query 67
MERGE (p:Product {name: 'Healthcare Services'}) ON CREATE SET p.id = 'healthcare_services';

// Query 68
MERGE (p:Product {name: 'Pre-care Services'}) ON CREATE SET p.id = 'pre_care_services';

// Query 69
MERGE (p:Product {name: 'Post-care Services'}) ON CREATE SET p.id = 'post_care_services';

// Query 70
MERGE (p:Product {name: 'Pharmaceutical Services'}) ON CREATE SET p.id = 'pharmaceutical_services';

// Query 71
MERGE (p:Product {name: 'Surgical Services'}) ON CREATE SET p.id = 'surgical_services';

// Query 72
MERGE (p:Product {name: 'Medical Services'}) ON CREATE SET p.id = 'medical_services';

// Query 73
// Step 11: OFFERS Relationships;

// Query 74
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (p:Product {name: 'Healthcare Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (p:Product {name: 'Pre-care Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (p:Product {name: 'Post-care Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (p:Product {name: 'Pharmaceutical Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (p:Product {name: 'Surgical Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'Asiri Surgical Hospital'}), (p:Product {name: 'Medical Services'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 79
// Generated on: 2025-10-03T02:02:59.717941
