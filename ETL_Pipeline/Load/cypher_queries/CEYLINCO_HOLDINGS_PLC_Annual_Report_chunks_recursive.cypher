// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Ceylinco Holdings'}) ON CREATE SET c.id = 'ceylinco_holdings', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Ceylinco Holdings'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'A. R. Gunawardena'}) ON CREATE SET p.id = 'a_r_gunawardena';

// Query 8
MERGE (p:Person {name: 'R. Renganathan'}) ON CREATE SET p.id = 'r_renganathan';

// Query 9
MERGE (p:Person {name: 'P. A. Jayawardena'}) ON CREATE SET p.id = 'p_a_jayawardena';

// Query 10
MERGE (p:Person {name: 'U. Witharana'}) ON CREATE SET p.id = 'u_witharana';

// Query 11
MERGE (p:Person {name: 'T. N. M. Peiris'}) ON CREATE SET p.id = 't_n_m_peiris';

// Query 12
MERGE (p:Person {name: 'H. D. K. P. Alwis'}) ON CREATE SET p.id = 'h_d_k_p_alwis';

// Query 13
MERGE (p:Person {name: 'E. T. L. Ranasinghe'}) ON CREATE SET p.id = 'e_t_l_ranasinghe';

// Query 14
MERGE (p:Person {name: 'W. C. J. Alwis'}) ON CREATE SET p.id = 'w_c_j_alwis';

// Query 15
MERGE (p:Person {name: 'P. D. M. Cooray'}) ON CREATE SET p.id = 'p_d_m_cooray';

// Query 16
MERGE (p:Person {name: 'S. R. Abeynayake'}) ON CREATE SET p.id = 's_r_abeynayake';

// Query 17
MERGE (p:Person {name: 'D. H. J. Gunawardena'}) ON CREATE SET p.id = 'd_h_j_gunawardena';

// Query 18
// Step 4: HOLDS_POSITION Relationships;

// Query 19
MATCH (p:Person {name: 'A. R. Gunawardena'}), (c:Company {name: 'Ceylinco Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 20
MATCH (p:Person {name: 'A. R. Gunawardena'}), (c:Company {name: 'Ceylinco Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-12-31');

// Query 21
MATCH (p:Person {name: 'R. Renganathan'}), (c:Company {name: 'Ceylinco Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-12-31');

// Query 22
MATCH (p:Person {name: 'P. A. Jayawardena'}), (c:Company {name: 'Ceylinco Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 23
MATCH (p:Person {name: 'U. Witharana'}), (c:Company {name: 'Ceylinco Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 24
MATCH (p:Person {name: 'U. Witharana'}), (c:Company {name: 'Ceylinco Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-12-31');

// Query 25
MATCH (p:Person {name: 'T. N. M. Peiris'}), (c:Company {name: 'Ceylinco Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 26
MATCH (p:Person {name: 'T. N. M. Peiris'}), (c:Company {name: 'Ceylinco Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-12-31');

// Query 27
MATCH (p:Person {name: 'H. D. K. P. Alwis'}), (c:Company {name: 'Ceylinco Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 28
MATCH (p:Person {name: 'H. D. K. P. Alwis'}), (c:Company {name: 'Ceylinco Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Operating Officer', r.as_of = date('2024-12-31');

// Query 29
MATCH (p:Person {name: 'E. T. L. Ranasinghe'}), (c:Company {name: 'Ceylinco Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 30
MATCH (p:Person {name: 'E. T. L. Ranasinghe'}), (c:Company {name: 'Ceylinco Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Operating Officer', r.as_of = date('2024-12-31');

// Query 31
MATCH (p:Person {name: 'W. C. J. Alwis'}), (c:Company {name: 'Ceylinco Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-01-01');

// Query 32
MATCH (p:Person {name: 'P. D. M. Cooray'}), (c:Company {name: 'Ceylinco Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 33
MATCH (p:Person {name: 'S. R. Abeynayake'}), (c:Company {name: 'Ceylinco Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 34
MATCH (p:Person {name: 'D. H. J. Gunawardena'}), (c:Company {name: 'Ceylinco Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 35
// Step 5: Metrics;

// Query 36
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 43
// Step 6: HAS_METRIC Relationships;

// Query 44
MATCH (c:Company {name: 'Ceylinco Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3200000000.0, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Ceylinco Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2500000000.0, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Ceylinco Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5645534.0, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Ceylinco Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2206314.0, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Ceylinco Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9469669000.0, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Ceylinco Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10794505000.0, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Ceylinco Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 251437154.0, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Ceylinco Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 224715268.0, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Ceylinco Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22967256.0, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Ceylinco Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19336834.0, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Ceylinco Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 358.51, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Ceylinco Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 408.67, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Ceylinco Holdings'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48.0, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Ceylinco Holdings'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45.0, r.year = 2023;

// Query 58
// Step 7: Sectors;

// Query 59
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 60
MERGE (s:Sector {name: 'Health Care Equipment and Services'}) ON CREATE SET s.id = 'health_care_equipment_and_services';

// Query 61
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 62
MERGE (s:Sector {name: 'Utilities'}) ON CREATE SET s.id = 'utilities';

// Query 63
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 64
// Step 8: IN_SECTOR Relationships;

// Query 65
MATCH (c:Company {name: 'Ceylinco Holdings'}), (s:Sector {name: 'Insurance'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 66
MATCH (c:Company {name: 'Ceylinco Holdings'}), (s:Sector {name: 'Health Care Equipment and Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 67
MATCH (c:Company {name: 'Ceylinco Holdings'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 68
MATCH (c:Company {name: 'Ceylinco Holdings'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 69
MATCH (c:Company {name: 'Ceylinco Holdings'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 70
// Step 9: Product nodes creation;

// Query 71
MERGE (p:Product {name: 'Whole Life Products'}) ON CREATE SET p.id = 'whole_life_products';

// Query 72
MERGE (p:Product {name: 'Endowment Products'}) ON CREATE SET p.id = 'endowment_products';

// Query 73
MERGE (p:Product {name: 'Term Products'}) ON CREATE SET p.id = 'term_products';

// Query 74
MERGE (p:Product {name: 'Universal Life Products'}) ON CREATE SET p.id = 'universal_life_products';

// Query 75
MERGE (p:Product {name: 'Mortgage Protection Products'}) ON CREATE SET p.id = 'mortgage_protection_products';

// Query 76
MERGE (p:Product {name: 'Motor Insurance'}) ON CREATE SET p.id = 'motor_insurance';

// Query 77
MERGE (p:Product {name: 'Fire Insurance'}) ON CREATE SET p.id = 'fire_insurance';

// Query 78
MERGE (p:Product {name: 'Engineering Insurance'}) ON CREATE SET p.id = 'engineering_insurance';

// Query 79
MERGE (p:Product {name: 'Marine Insurance'}) ON CREATE SET p.id = 'marine_insurance';

// Query 80
MERGE (p:Product {name: "Employers' Liability Insurance"}) ON CREATE SET p.id = 'employers_liability_insurance';
// Query 81
MERGE (p:Product {name: 'Miscellaneous Non-Life Insurance'}) ON CREATE SET p.id = 'miscellaneous_non_life_insurance';

// Query 82
MERGE (p:Product {name: 'Cancer Screening Services'}) ON CREATE SET p.id = 'cancer_screening_services';

// Query 83
MERGE (p:Product {name: 'Radiation Treatment Services'}) ON CREATE SET p.id = 'radiation_treatment_services';

// Query 84
MERGE (p:Product {name: 'Diabetes Treatment Services'}) ON CREATE SET p.id = 'diabetes_treatment_services';

// Query 85
MERGE (p:Product {name: 'Education Courses'}) ON CREATE SET p.id = 'education_courses';

// Query 86
MERGE (p:Product {name: 'Hydro Power Generation'}) ON CREATE SET p.id = 'hydro_power_generation';

// Query 87
// Step 10: OFFERS Relationships;

// Query 88
MATCH (c:Company {name: 'Ceylinco Holdings'}), (p:Product {name: 'Whole Life Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Ceylinco Holdings'}), (p:Product {name: 'Endowment Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Ceylinco Holdings'}), (p:Product {name: 'Term Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Ceylinco Holdings'}), (p:Product {name: 'Universal Life Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {name: 'Ceylinco Holdings'}), (p:Product {name: 'Mortgage Protection Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: 'Ceylinco Holdings'}), (p:Product {name: 'Motor Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: 'Ceylinco Holdings'}), (p:Product {name: 'Fire Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'Ceylinco Holdings'}), (p:Product {name: 'Engineering Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'Ceylinco Holdings'}), (p:Product {name: 'Marine Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: 'Ceylinco Holdings'}), (p:Product {name: "Employers'' Liability Insurance"}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'Ceylinco Holdings'}), (p:Product {name: 'Miscellaneous Non-Life Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: 'Ceylinco Holdings'}), (p:Product {name: 'Cancer Screening Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
MATCH (c:Company {name: 'Ceylinco Holdings'}), (p:Product {name: 'Radiation Treatment Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 101
MATCH (c:Company {name: 'Ceylinco Holdings'}), (p:Product {name: 'Diabetes Treatment Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 102
MATCH (c:Company {name: 'Ceylinco Holdings'}), (p:Product {name: 'Education Courses'}) MERGE (c)-[:OFFERS]->(p);

// Query 103
MATCH (c:Company {name: 'Ceylinco Holdings'}), (p:Product {name: 'Hydro Power Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 104
// Step 11: Other Company nodes (subsidiaries/associates mentioned, but no OWNS relationship due to missing pct);

// Query 105
MERGE (c:Company {name: 'Ceylinco Insurance Company Maldives'}) ON CREATE SET c.id = 'ceylinco_insurance_company_maldives', c.region = 'Maldives';

// Query 106
MERGE (c:Company {name: 'Sagaramatha Insurance'}) ON CREATE SET c.id = 'sagaramatha_insurance', c.region = 'Nepal';

// Query 107
MERGE (c:Company {name: 'Ceylinco General Insurance'}) ON CREATE SET c.id = 'ceylinco_general_insurance', c.region = 'Sri Lanka';

// Query 108
MERGE (c:Company {name: 'Ceylinco Life Insurance'}) ON CREATE SET c.id = 'ceylinco_life_insurance', c.region = 'Sri Lanka';

// Query 109
MERGE (c:Company {name: 'ICBT'}) ON CREATE SET c.id = 'icbt', c.region = 'Sri Lanka';

// Query 110
MERGE (c:Company {name: 'Wycherley'}) ON CREATE SET c.id = 'wycherley', c.region = 'Sri Lanka';

// Total queries: 110
// Generated on: 2025-10-03T02:31:57.642581
