// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Central Finance Company'}) ON CREATE SET c.id = 'central_finance_company', c.founded_on = date('1957-12-05'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Central Finance Company'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'A. D. B. Talwatte'}) ON CREATE SET p.id = 'a_d_b_talwatte';

// Query 8
MERGE (p:Person {name: 'E. H. Wijenaike'}) ON CREATE SET p.id = 'e_h_wijenaike';

// Query 9
MERGE (p:Person {name: 'A. K. Gunaratne'}) ON CREATE SET p.id = 'a_k_gunaratne';

// Query 10
MERGE (p:Person {name: 'D. P. de Silva'}) ON CREATE SET p.id = 'd_p_de_silva';

// Query 11
MERGE (p:Person {name: 'Dr. (Mrs) A. D. N. de Zoysa'}) ON CREATE SET p.id = 'dr_mrs_a_d_n_de_zoysa';

// Query 12
MERGE (p:Person {name: 'A. R. Fernando'}) ON CREATE SET p.id = 'a_r_fernando';

// Query 13
MERGE (p:Person {name: 'C. K. Hettiarachchi'}) ON CREATE SET p.id = 'c_k_hettiarachchi';

// Query 14
MERGE (p:Person {name: 'K. B. Herath'}) ON CREATE SET p.id = 'k_b_herath';

// Query 15
MERGE (p:Person {name: 'M. H. de Silva'}) ON CREATE SET p.id = 'm_h_de_silva';

// Query 16
MERGE (p:Person {name: 'C. S. Hettiarachchi'}) ON CREATE SET p.id = 'c_s_hettiarachchi';

// Query 17
// Step 4: HOLDS_POSITION Relationships;

// Query 18
MATCH (p:Person {name: 'A. D. B. Talwatte'}), (c:Company {name: 'Central Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'A. D. B. Talwatte'}), (c:Company {name: 'Central Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'E. H. Wijenaike'}), (c:Company {name: 'Central Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'E. H. Wijenaike'}), (c:Company {name: 'Central Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'A. K. Gunaratne'}), (c:Company {name: 'Central Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'A. K. Gunaratne'}), (c:Company {name: 'Central Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'D. P. de Silva'}), (c:Company {name: 'Central Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'D. P. de Silva'}), (c:Company {name: 'Central Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Operating Officer', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'Dr. (Mrs) A. D. N. de Zoysa'}), (c:Company {name: 'Central Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'A. R. Fernando'}), (c:Company {name: 'Central Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'C. K. Hettiarachchi'}), (c:Company {name: 'Central Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'K. B. Herath'}), (c:Company {name: 'Central Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'M. H. de Silva'}), (c:Company {name: 'Central Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'C. S. Hettiarachchi'}), (c:Company {name: 'Central Finance Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 32
// Step 5: Metrics;

// Query 33
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 40
// Step 6: HAS_METRIC Relationships;

// Query 41
MATCH (c:Company {name: 'Central Finance Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21796000000, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Central Finance Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19572000000, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Central Finance Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7556000000, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Central Finance Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7393000000, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Central Finance Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4790000000, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Central Finance Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4965000000, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Central Finance Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 100747000000, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Central Finance Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 90216000000, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Central Finance Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50319000000, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Central Finance Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45923000000, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Central Finance Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21.07, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Central Finance Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21.84, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Central Finance Company'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12942365000, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Central Finance Company'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12061606000, r.year = 2023;

// Query 55
// Step 7: Sectors;

// Query 56
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 57
MERGE (s:Sector {name: 'Health Care Equipment and Services'}) ON CREATE SET s.id = 'health_care_equipment_and_services';

// Query 58
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 59
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 60
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 61
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 62
// Step 8: IN_SECTOR Relationships;

// Query 63
MATCH (c:Company {name: 'Central Finance Company'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 64
// Step 9: Subsidiary Companies (Nodes only, no OWNS relationship due to missing percentage);

// Query 65
MERGE (sub:Company {name: 'Central Industries'}) ON CREATE SET sub.id = 'central_industries';

// Query 66
MERGE (sub:Company {name: 'Central Mineral Industries'}) ON CREATE SET sub.id = 'central_mineral_industries';

// Query 67
MERGE (sub:Company {name: 'Central Construction and Development'}) ON CREATE SET sub.id = 'central_construction_and_development';

// Query 68
MERGE (sub:Company {name: 'Expanded Plastic Products'}) ON CREATE SET sub.id = 'expanded_plastic_products';

// Query 69
MERGE (sub:Company {name: 'Central Homes'}) ON CREATE SET sub.id = 'central_homes';

// Query 70
MERGE (sub:Company {name: 'Central Developments'}) ON CREATE SET sub.id = 'central_developments';

// Query 71
MERGE (sub:Company {name: 'CF Insurance Brokers'}) ON CREATE SET sub.id = 'cf_insurance_brokers';

// Query 72
MERGE (sub:Company {name: 'Central Transport and Travels'}) ON CREATE SET sub.id = 'central_transport_and_travels';

// Query 73
MERGE (sub:Company {name: 'Hedges Court Residencies'}) ON CREATE SET sub.id = 'hedges_court_residencies';

// Query 74
// Step 10: Products;

// Query 75
MERGE (p:Product {name: 'Leasing'}) ON CREATE SET p.id = 'leasing';

// Query 76
MERGE (p:Product {name: 'Loans'}) ON CREATE SET p.id = 'loans';

// Query 77
MERGE (p:Product {name: 'Operating Leases'}) ON CREATE SET p.id = 'operating_leases';

// Query 78
MERGE (p:Product {name: 'Deposit Mobilization'}) ON CREATE SET p.id = 'deposit_mobilization';

// Query 79
MERGE (p:Product {name: 'Financial Services'}) ON CREATE SET p.id = 'financial_services';

// Query 80
MERGE (p:Product {name: 'PVC Pipes and Fittings'}) ON CREATE SET p.id = 'pvc_pipes_and_fittings';

// Query 81
MERGE (p:Product {name: 'Mineral Products'}) ON CREATE SET p.id = 'mineral_products';

// Query 82
MERGE (p:Product {name: 'Insurance Broking'}) ON CREATE SET p.id = 'insurance_broking';

// Query 83
MERGE (p:Product {name: 'Vehicle Hiring'}) ON CREATE SET p.id = 'vehicle_hiring';

// Query 84
MERGE (p:Product {name: 'Apartment Sales'}) ON CREATE SET p.id = 'apartment_sales';

// Query 85
// Step 11: OFFERS Relationships;

// Query 86
MATCH (c:Company {name: 'Central Finance Company'}), (p:Product {name: 'Leasing'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Central Finance Company'}), (p:Product {name: 'Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Central Finance Company'}), (p:Product {name: 'Operating Leases'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Central Finance Company'}), (p:Product {name: 'Deposit Mobilization'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Central Finance Company'}), (p:Product {name: 'Financial Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Central Industries'}), (p:Product {name: 'PVC Pipes and Fittings'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {name: 'Central Mineral Industries'}), (p:Product {name: 'Mineral Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: 'CF Insurance Brokers'}), (p:Product {name: 'Insurance Broking'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: 'Central Transport and Travels'}), (p:Product {name: 'Vehicle Hiring'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'Hedges Court Residencies'}), (p:Product {name: 'Apartment Sales'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 95
// Generated on: 2025-10-03T03:28:34.029632
