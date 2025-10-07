// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Lanka Ashok Leyland'}) ON CREATE SET c.id = 'lanka_ashok_leyland', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('1982-01-01');

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2025;

// Query 7
// Step 4: Person Nodes;

// Query 8
MERGE (p:Person {name: 'A. A. M. Amarasinghe'}) ON CREATE SET p.id = 'a_a_m_amarasinghe';

// Query 9
MERGE (p:Person {name: 'K. C. Leshan De Silva'}) ON CREATE SET p.id = 'k_c_leshan_de_silva';

// Query 10
MERGE (p:Person {name: 'Gopal Mahadevan'}) ON CREATE SET p.id = 'gopal_mahadevan';

// Query 11
MERGE (p:Person {name: 'Amandeep Singh Arora'}) ON CREATE SET p.id = 'amandeep_singh_arora';

// Query 12
MERGE (p:Person {name: 'D. S. Weerakkody'}) ON CREATE SET p.id = 'd_s_weerakkody';

// Query 13
MERGE (p:Person {name: 'H. M. U. K. Samararatne'}) ON CREATE SET p.id = 'h_m_u_k_samararatne';

// Query 14
MERGE (p:Person {name: 'M. K. L. Jayawardena'}) ON CREATE SET p.id = 'm_k_l_jayawardena';

// Query 15
MERGE (p:Person {name: 'Rajive Saharia'}) ON CREATE SET p.id = 'rajive_saharia';

// Query 16
MERGE (p:Person {name: 'D. P. Kumarage'}) ON CREATE SET p.id = 'd_p_kumarage';

// Query 17
MERGE (p:Person {name: 'D. A. Abayawardene'}) ON CREATE SET p.id = 'd_a_abayawardene';

// Query 18
MERGE (p:Person {name: 'N. Sundararajan'}) ON CREATE SET p.id = 'n_sundararajan';

// Query 19
MERGE (p:Person {name: 'R. D. Balasubramaniam'}) ON CREATE SET p.id = 'r_d_balasubramaniam';

// Query 20
// Step 5: HOLDS_POSITION Relationships;

// Query 21
MATCH (p:Person {name: 'A. A. M. Amarasinghe'}), (c:Company {name: 'Lanka Ashok Leyland'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-02-17');

// Query 22
MATCH (p:Person {name: 'K. C. Leshan De Silva'}), (c:Company {name: 'Lanka Ashok Leyland'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-02-17');

// Query 23
MATCH (p:Person {name: 'Gopal Mahadevan'}), (c:Company {name: 'Lanka Ashok Leyland'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 24
MATCH (p:Person {name: 'Amandeep Singh Arora'}), (c:Company {name: 'Lanka Ashok Leyland'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 25
MATCH (p:Person {name: 'D. S. Weerakkody'}), (c:Company {name: 'Lanka Ashok Leyland'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-02-01');

// Query 26
MATCH (p:Person {name: 'H. M. U. K. Samararatne'}), (c:Company {name: 'Lanka Ashok Leyland'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-02-01');

// Query 27
MATCH (p:Person {name: 'M. K. L. Jayawardena'}), (c:Company {name: 'Lanka Ashok Leyland'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-02-17');

// Query 28
MATCH (p:Person {name: 'Rajive Saharia'}), (c:Company {name: 'Lanka Ashok Leyland'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-27');

// Query 29
MATCH (p:Person {name: 'D. P. Kumarage'}), (c:Company {name: 'Lanka Ashok Leyland'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 30
MATCH (p:Person {name: 'D. A. Abayawardene'}), (c:Company {name: 'Lanka Ashok Leyland'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-09-30');

// Query 31
MATCH (p:Person {name: 'N. Sundararajan'}), (c:Company {name: 'Lanka Ashok Leyland'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 32
MATCH (p:Person {name: 'R. D. Balasubramaniam'}), (c:Company {name: 'Lanka Ashok Leyland'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-02-17');

// Query 33
// Step 6: Metric Nodes;

// Query 34
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 41
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 42
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 43
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 44
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 46
// Step 7: HAS_METRIC Relationships;

// Query 47
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9003641728, r.year = 2025;

// Query 48
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5404387774, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2875483117, r.year = 2025;

// Query 50
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1814416037, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2216604543, r.year = 2025;

// Query 52
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1253152498, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1531027028, r.year = 2025;

// Query 54
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 857786897, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2117598920, r.year = 2025;

// Query 56
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1201243399, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6038510051, r.year = 2025;

// Query 58
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4589396879, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14.7, r.year = 2025;

// Query 60
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.3, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25.4, r.year = 2025;

// Query 62
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18.7, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.07, r.year = 2025;

// Query 64
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.13, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2025;

// Query 66
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.0, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 422.84, r.year = 2025;

// Query 68
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 236.90, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10424190000.0, r.year = 2025;

// Query 70
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7591034486.0, r.year = 2024;

// Query 71
// Step 8: Sector Nodes;

// Query 72
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 73
// Step 9: IN_SECTOR Relationships;

// Query 74
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 75
// Step 10: Product Nodes;

// Query 76
MERGE (p:Product {name: 'New Vehicle Sales'}) ON CREATE SET p.id = 'new_vehicle_sales';

// Query 77
MERGE (p:Product {name: 'Diesel Generator Set Sales'}) ON CREATE SET p.id = 'diesel_generator_set_sales';

// Query 78
MERGE (p:Product {name: 'Spare Parts Sales'}) ON CREATE SET p.id = 'spare_parts_sales';

// Query 79
MERGE (p:Product {name: 'Vehicle Hiring'}) ON CREATE SET p.id = 'vehicle_hiring';

// Query 80
MERGE (p:Product {name: 'Repair Income'}) ON CREATE SET p.id = 'repair_income';

// Query 81
MERGE (p:Product {name: 'Local Agency Commission'}) ON CREATE SET p.id = 'local_agency_commission';

// Query 82
MERGE (p:Product {name: 'After-sales services'}) ON CREATE SET p.id = 'after_sales_services';

// Query 83
MERGE (p:Product {name: 'Maintenance services'}) ON CREATE SET p.id = 'maintenance_services';

// Query 84
MERGE (p:Product {name: 'Restoration services'}) ON CREATE SET p.id = 'restoration_services';

// Query 85
MERGE (p:Product {name: 'Electric Buses'}) ON CREATE SET p.id = 'electric_buses';

// Query 86
// Step 11: OFFERS Relationships;

// Query 87
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (p:Product {name: 'New Vehicle Sales'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (p:Product {name: 'Diesel Generator Set Sales'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (p:Product {name: 'Spare Parts Sales'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (p:Product {name: 'Vehicle Hiring'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (p:Product {name: 'Repair Income'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (p:Product {name: 'Local Agency Commission'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (p:Product {name: 'After-sales services'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (p:Product {name: 'Maintenance services'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (p:Product {name: 'Restoration services'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'Lanka Ashok Leyland'}), (p:Product {name: 'Electric Buses'}) MERGE (c)-[:OFFERS {status: 'planned'}]->(p);

// Query 97
// Step 12: Company-Company Relationships (OWNS);

// Query 98
MERGE (owner1:Company {name: 'Lanka Leyland'}) ON CREATE SET owner1.id = 'lanka_leyland';

// Query 99
MERGE (owner2:Company {name: 'Ashok Leyland'}) ON CREATE SET owner2.id = 'ashok_leyland';

// Query 100
MATCH (owner1:Company {name: 'Lanka Leyland'}), (child:Company {name: 'Lanka Ashok Leyland'}) MERGE (owner1)-[r:OWNS]->(child) ON CREATE SET r.pct = 41.77, r.as_of = date('2025-03-31');

// Query 101
MATCH (owner2:Company {name: 'Ashok Leyland'}), (child:Company {name: 'Lanka Ashok Leyland'}) MERGE (owner2)-[r:OWNS]->(child) ON CREATE SET r.pct = 27.85, r.as_of = date('2025-03-31');

// Total queries: 101
// Generated on: 2025-10-03T02:50:21.134702
