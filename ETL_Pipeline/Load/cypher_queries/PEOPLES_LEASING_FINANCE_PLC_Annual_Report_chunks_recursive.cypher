// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: "People's Leasing & Finance"}) ON CREATE SET c.id = 'peoples_leasing_and_finance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No explicit auditor name found in the provided text, skipping AUDITED_BY relationship.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Prof. S M A K Samarakoon'}) ON CREATE SET p.id = 'prof_s_m_a_k_samarakoon';

// Query 6
MERGE (p:Person {name: 'Mr. Pravir Dhanoush Samarasinghe'}) ON CREATE SET p.id = 'mr_pravir_dhanoush_samarasinghe';

// Query 7
MERGE (p:Person {name: 'Mr. K C J C Fonseka'}) ON CREATE SET p.id = 'mr_k_c_j_c_fonseka';

// Query 8
MERGE (p:Person {name: 'Mr. K J D G Perera'}) ON CREATE SET p.id = 'mr_k_j_d_g_perera';

// Query 9
MERGE (p:Person {name: 'Ms. P G U Gallage'}) ON CREATE SET p.id = 'ms_p_g_u_gallage';

// Query 10
MERGE (p:Person {name: 'Mr. S. Sudarshan'}) ON CREATE SET p.id = 'mr_s_sudarshan';

// Query 11
MERGE (p:Person {name: 'Mr. R B R Emerson'}) ON CREATE SET p.id = 'mr_r_b_r_emerson';

// Query 12
MERGE (p:Person {name: 'Mr. P G A C Perera'}) ON CREATE SET p.id = 'mr_p_g_a_c_perera';

// Query 13
MERGE (p:Person {name: 'Mrs. K S R S Loku Kaluge'}) ON CREATE SET p.id = 'mrs_k_s_r_s_loku_kaluge';

// Query 14
MERGE (p:Person {name: 'Mr. M J Thilakarathne'}) ON CREATE SET p.id = 'mr_m_j_thilakarathne';

// Query 15
MERGE (p:Person {name: 'Mr. K S Bandaranayake'}) ON CREATE SET p.id = 'mr_k_s_bandaranayake';

// Query 16
MERGE (p:Person {name: 'Mr. Rajapaksa Pathiranage Udesh Priyadarshana Gunawardena'}) ON CREATE SET p.id = 'mr_rajapaksa_pathiranage_udesh_priyadarshana_gunawardena';

// Query 17
MERGE (p:Person {name: 'Mr. M P Amirthanayagam'}) ON CREATE SET p.id = 'mr_m_p_amirthanayagam';

// Query 18
// Step 4: HOLDS_POSITION Relationships;

// Query 19
MATCH (p:Person {name: 'Prof. S M A K Samarakoon'}), (c:Company {name: "People's Leasing & Finance"}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 20
MATCH (p:Person {name: 'Mr. Pravir Dhanoush Samarasinghe'}), (c:Company {name: "People's Leasing & Finance"}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 21
MATCH (p:Person {name: 'Mr. K C J C Fonseka'}), (c:Company {name: "People's Leasing & Finance"}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 22
MATCH (p:Person {name: 'Mr. K J D G Perera'}), (c:Company {name: "People's Leasing & Finance"}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-01-23');

// Query 23
MATCH (p:Person {name: 'Ms. P G U Gallage'}), (c:Company {name: "People's Leasing & Finance"}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-01-31');

// Query 24
MATCH (p:Person {name: 'Mr. S. Sudarshan'}), (c:Company {name: "People's Leasing & Finance"}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-02-10');

// Query 25
MATCH (p:Person {name: 'Mr. R B R Emerson'}), (c:Company {name: "People's Leasing & Finance"}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-02-10');

// Query 26
MATCH (p:Person {name: 'Mr. P G A C Perera'}), (c:Company {name: "People's Leasing & Finance"}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-02-10');

// Query 27
MATCH (p:Person {name: 'Mrs. K S R S Loku Kaluge'}), (c:Company {name: "People's Leasing & Finance"}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-02-17');

// Query 28
MATCH (p:Person {name: 'Mr. M J Thilakarathne'}), (c:Company {name: "People's Leasing & Finance"}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-11');

// Query 29
MATCH (p:Person {name: 'Mr. K S Bandaranayake'}), (c:Company {name: "People's Leasing & Finance"}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-08-06');

// Query 30
MATCH (p:Person {name: 'Mr. Rajapaksa Pathiranage Udesh Priyadarshana Gunawardena'}), (c:Company {name: "People's Leasing & Finance"}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Operating Officer', r.as_of = date('2024-08-06');

// Query 31
MATCH (p:Person {name: 'Mr. M P Amirthanayagam'}), (c:Company {name: "People's Leasing & Finance"}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 32
// Step 4.1: Person Shareholdings;

// Query 33
MATCH (p:Person {name: 'Mr. K C J C Fonseka'}), (c:Company {name: "People's Leasing & Finance"}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 66133, r.as_of = date('2025-03-31');

// Query 34
MATCH (p:Person {name: 'Mr. M P Amirthanayagam'}), (c:Company {name: "People's Leasing & Finance"}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 13632, r.as_of = date('2024-03-31');

// Query 35
// Step 5: Metrics;

// Query 36
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 43
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 44
// Step 6: HAS_METRIC Relationships - Year 2025;

// Query 45
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28430000000.0, r.year = 2025;

// Query 46
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14070000000.0, r.year = 2025;

// Query 47
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5790000000.0, r.year = 2025;

// Query 48
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3600000000.0, r.year = 2025;

// Query 49
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 194530000000.0, r.year = 2025;

// Query 50
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42410000000.0, r.year = 2025;

// Query 51
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.56, r.year = 2025;

// Query 52
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.67, r.year = 2025;

// Query 53
// Step 6: HAS_METRIC Relationships - Year 2024;

// Query 54
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31040000000.0, r.year = 2024;

// Query 55
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11650000000.0, r.year = 2024;

// Query 56
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5380000000.0, r.year = 2024;

// Query 57
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3540000000.0, r.year = 2024;

// Query 58
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 159850000000.0, r.year = 2024;

// Query 59
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 41830000000.0, r.year = 2024;

// Query 60
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.68, r.year = 2024;

// Query 61
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.64, r.year = 2024;

// Query 62
// Step 6: HAS_METRIC Relationships - Year 2023;

// Query 63
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 32020000000.0, r.year = 2023;

// Query 64
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11990000000.0, r.year = 2023;

// Query 65
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4340000000.0, r.year = 2023;

// Query 66
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3020000000.0, r.year = 2023;

// Query 67
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 171070000000.0, r.year = 2023;

// Query 68
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39790000000.0, r.year = 2023;

// Query 69
MATCH (c:Company {name: "People's Leasing & Finance"}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.68, r.year = 2023;

// Query 70
// Step 7: Sectors;

// Query 71
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 72
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 73
// Step 8: IN_SECTOR Relationships;

// Query 74
MATCH (c:Company {name: "People's Leasing & Finance"}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 75
MATCH (c:Company {name: "People's Leasing & Finance"}), (s:Sector {name: 'Insurance'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 76
// Step 9: Products;

// Query 77
MERGE (p:Product {name: 'Finance Leases'}) ON CREATE SET p.id = 'finance_leases';

// Query 78
MERGE (p:Product {name: 'Term Loans'}) ON CREATE SET p.id = 'term_loans';

// Query 79
MERGE (p:Product {name: 'Islamic Finance'}) ON CREATE SET p.id = 'islamic_finance';

// Query 80
MERGE (p:Product {name: 'Margin Trading'}) ON CREATE SET p.id = 'margin_trading';

// Query 81
MERGE (p:Product {name: 'Factoring'}) ON CREATE SET p.id = 'factoring';

// Query 82
MERGE (p:Product {name: 'Gold Loans'}) ON CREATE SET p.id = 'gold_loans';

// Query 83
MERGE (p:Product {name: 'Debt Instruments'}) ON CREATE SET p.id = 'debt_instruments';

// Query 84
MERGE (p:Product {name: 'Public Deposits'}) ON CREATE SET p.id = 'public_deposits';

// Query 85
MERGE (p:Product {name: 'General Insurance'}) ON CREATE SET p.id = 'general_insurance';

// Query 86
MERGE (p:Product {name: 'Hire Purchase'}) ON CREATE SET p.id = 'hire_purchase';

// Query 87
MERGE (p:Product {name: 'Vehicle Rental'}) ON CREATE SET p.id = 'vehicle_rental';

// Query 88
MERGE (p:Product {name: 'Vehicle Service Centers'}) ON CREATE SET p.id = 'vehicle_service_centers';

// Query 89
MERGE (p:Product {name: 'Solar Leasing Solutions'}) ON CREATE SET p.id = 'solar_leasing_solutions';

// Query 90
// Step 10: OFFERS Relationships;

// Query 91
MATCH (c:Company {name: "People's Leasing & Finance"}), (p:Product {name: 'Finance Leases'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {name: "People's Leasing & Finance"}), (p:Product {name: 'Term Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: "People's Leasing & Finance"}), (p:Product {name: 'Islamic Finance'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: "People's Leasing & Finance"}), (p:Product {name: 'Margin Trading'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: "People's Leasing & Finance"}), (p:Product {name: 'Factoring'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: "People's Leasing & Finance"}), (p:Product {name: 'Gold Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: "People's Leasing & Finance"}), (p:Product {name: 'Debt Instruments'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: "People's Leasing & Finance"}), (p:Product {name: 'Public Deposits'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: "People's Leasing & Finance"}), (p:Product {name: 'General Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
MATCH (c:Company {name: "People's Leasing & Finance"}), (p:Product {name: 'Hire Purchase'}) MERGE (c)-[:OFFERS]->(p);

// Query 101
MATCH (c:Company {name: "People's Leasing & Finance"}), (p:Product {name: 'Vehicle Rental'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'discontinued';

// Query 102
MATCH (c:Company {name: "People's Leasing & Finance"}), (p:Product {name: 'Vehicle Service Centers'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'planned';

// Query 103
MATCH (c:Company {name: "People's Leasing & Finance"}), (p:Product {name: 'Solar Leasing Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 104
// Step 11: Company-Company Relationships - No explicit OWNS or MANAGES relationships found with required properties.;

// Total queries: 104
// Generated on: 2025-10-02T22:11:59.011671
