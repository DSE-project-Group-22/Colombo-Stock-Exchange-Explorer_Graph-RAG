// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Raigam Wayamba Salterns'}) ON CREATE SET c.id = 'raigam_wayamba_salterns', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No specific auditor firm name found in the hardcoded list, skipping auditor node and relationship.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Kishan Rohana Theodore'}) ON CREATE SET p.id = 'kishan_rohana_theodore';

// Query 6
MERGE (p:Person {name: 'G. V. P. Ganaka Amarasinghe'}) ON CREATE SET p.id = 'g_v_p_ganaka_amarasinghe';

// Query 7
MERGE (p:Person {name: 'T. Dharmarajah'}) ON CREATE SET p.id = 't_dharmarajah';

// Query 8
MERGE (p:Person {name: 'Dr. Ravi Liyanage'}) ON CREATE SET p.id = 'dr_ravi_liyanage';

// Query 9
MERGE (p:Person {name: 'Snr. Prof. S. P. P. Amaratunge'}) ON CREATE SET p.id = 'snr_prof_s_p_p_amaratunge';

// Query 10
MERGE (p:Person {name: 'W. M. S. V. Keerthirathne'}) ON CREATE SET p.id = 'w_m_s_v_keerthirathne';

// Query 11
MERGE (p:Person {name: 'H. A. S. Samaraweera'}) ON CREATE SET p.id = 'h_a_s_samaraweera';

// Query 12
// Step 4: HOLDS_POSITION Relationships;

// Query 13
MATCH (p:Person {name: 'Kishan Rohana Theodore'}), (c:Company {name: 'Raigam Wayamba Salterns'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 14
MATCH (p:Person {name: 'Kishan Rohana Theodore'}), (c:Company {name: 'Raigam Wayamba Salterns'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'G. V. P. Ganaka Amarasinghe'}), (c:Company {name: 'Raigam Wayamba Salterns'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'T. Dharmarajah'}), (c:Company {name: 'Raigam Wayamba Salterns'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Dr. Ravi Liyanage'}), (c:Company {name: 'Raigam Wayamba Salterns'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'Snr. Prof. S. P. P. Amaratunge'}), (c:Company {name: 'Raigam Wayamba Salterns'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'W. M. S. V. Keerthirathne'}), (c:Company {name: 'Raigam Wayamba Salterns'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'H. A. S. Samaraweera'}), (c:Company {name: 'Raigam Wayamba Salterns'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
// Step 5: Metrics;

// Query 22
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 30
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 31
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 32
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 33
// Step 6: HAS_METRIC Relationships;

// Query 34
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1472625000, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1798598000, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1063409000, r.year = 2022;

// Query 37
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 491383000, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 633176000, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 330694000, r.year = 2022;

// Query 40
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 383650000, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 463017000, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 221595000, r.year = 2022;

// Query 43
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 280064000, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 377832000, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 171557000, r.year = 2022;

// Query 46
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2721763000, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2667869000, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1797631000, r.year = 2022;

// Query 49
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2089731000, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1867087000, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1430317000, r.year = 2022;

// Query 52
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.99, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.34, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2022;

// Query 55
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.97, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21.04, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.27, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.97, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30.24, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42.89, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 169107503, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 85717847, r.year = 2023;

// Query 63
// Step 7: Sectors;

// Query 64
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 65
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 66
// Step 8: IN_SECTOR Relationships;

// Query 67
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 68
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 69
// Step 9: Product nodes creation;

// Query 70
MERGE (p:Product {name: 'Edible Salt'}) ON CREATE SET p.id = 'edible_salt';

// Query 71
MERGE (p:Product {name: 'Industrial Salt'}) ON CREATE SET p.id = 'industrial_salt';

// Query 72
MERGE (p:Product {name: 'Cereals'}) ON CREATE SET p.id = 'cereals';

// Query 73
MERGE (p:Product {name: 'Rice'}) ON CREATE SET p.id = 'rice';

// Query 74
MERGE (p:Product {name: 'Turmeric'}) ON CREATE SET p.id = 'turmeric';

// Query 75
MERGE (p:Product {name: 'Coffee'}) ON CREATE SET p.id = 'coffee';

// Query 76
// Step 10: OFFERS relationships;

// Query 77
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (p:Product {name: 'Edible Salt'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (p:Product {name: 'Industrial Salt'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (p:Product {name: 'Cereals'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (p:Product {name: 'Rice'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (p:Product {name: 'Turmeric'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (p:Product {name: 'Coffee'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
// Step 11: Company-Company relationships (OWNS, MANAGES);

// Query 84
MERGE (sub1:Company {name: 'Southern Salt Company'}) ON CREATE SET sub1.id = 'southern_salt_company';

// Query 85
MERGE (sub2:Company {name: 'Raigam Wayamba Cereals'}) ON CREATE SET sub2.id = 'raigam_wayamba_cereals';

// Query 86
MERGE (parent:Company {name: 'Raigam Marketing Services'}) ON CREATE SET parent.id = 'raigam_marketing_services', parent.region = 'Sri Lanka';

// Query 87
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (sub1:Company {name: 'Southern Salt Company'}) MERGE (c)-[r:OWNS]->(sub1) ON CREATE SET r.as_of = date('2024-03-31');

// Query 88
MATCH (c:Company {name: 'Raigam Wayamba Salterns'}), (sub2:Company {name: 'Raigam Wayamba Cereals'}) MERGE (c)-[r:OWNS]->(sub2) ON CREATE SET r.as_of = date('2024-03-31');

// Query 89
MATCH (parent:Company {name: 'Raigam Marketing Services'}), (c:Company {name: 'Raigam Wayamba Salterns'}) MERGE (parent)-[r:OWNS]->(c) ON CREATE SET r.as_of = date('2024-03-31');

// Query 90
// Step 12: Person-Company Shareholdings;

// Query 91
MATCH (p:Person {name: 'Dr. Ravi Liyanage'}), (c:Company {name: 'Raigam Wayamba Salterns'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 839397, r.pct = 0.30, r.as_of = date('2024-03-31');

// Total queries: 91
// Generated on: 2025-10-03T00:47:38.303411
