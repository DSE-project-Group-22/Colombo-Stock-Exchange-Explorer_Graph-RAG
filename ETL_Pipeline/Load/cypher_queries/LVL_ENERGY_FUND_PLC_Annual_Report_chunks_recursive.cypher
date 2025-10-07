// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'LVL Energy Fund'}) ON CREATE SET c.id = 'lvl_energy_fund', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'Lanka Ventures'}) ON CREATE SET c.id = 'lanka_ventures';

// Query 4
MERGE (c:Company {name: 'Acuity Partners'}) ON CREATE SET c.id = 'acuity_partners';

// Query 5
MERGE (c:Company {name: 'Hatton National Bank'}) ON CREATE SET c.id = 'hatton_national_bank';

// Query 6
MERGE (c:Company {name: 'DFCC Bank'}) ON CREATE SET c.id = 'dfcc_bank';

// Query 7
MERGE (c:Company {name: 'Lanka Energy International'}) ON CREATE SET c.id = 'lanka_energy_international';

// Query 8
MERGE (c:Company {name: 'Sapthakanya Hydro Electric Company'}) ON CREATE SET c.id = 'sapthakanya_hydro_electric_company';

// Query 9
MERGE (c:Company {name: 'Pupulaketiya Mini Hydro Power'}) ON CREATE SET c.id = 'pupulaketiya_mini_hydro_power';

// Query 10
MERGE (c:Company {name: 'Harsha International'}) ON CREATE SET c.id = 'harsha_international';

// Query 11
MERGE (c:Company {name: 'S & N Power Kithulgala Mini Hydro'}) ON CREATE SET c.id = 's_and_n_power_kithulgala_mini_hydro';

// Query 12
MERGE (c:Company {name: 'Rivolka Energy'}) ON CREATE SET c.id = 'rivolka_energy';

// Query 13
MERGE (c:Company {name: 'Tilara Hydro'}) ON CREATE SET c.id = 'tilara_hydro';

// Query 14
MERGE (c:Company {name: 'Unit Energy Lanka'}) ON CREATE SET c.id = 'unit_energy_lanka';

// Query 15
MERGE (c:Company {name: 'Solar Energy Investments'}) ON CREATE SET c.id = 'solar_energy_investments';

// Query 16
MERGE (c:Company {name: 'Campion Hydro'}) ON CREATE SET c.id = 'campion_hydro';

// Query 17
MERGE (c:Company {name: 'Ceylon Electricity Board'}) ON CREATE SET c.id = 'ceylon_electricity_board';

// Query 18
// Step 2: Auditor;

// Query 19
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 20
// Step 3: AUDITED_BY Relationship;

// Query 21
MATCH (c:Company {name: 'LVL Energy Fund'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 22
// Step 4: People - Directors and Executives;

// Query 23
MERGE (p:Person {name: 'P. G. D. B. Pallewatte'}) ON CREATE SET p.id = 'p_g_d_b_pallewatte';

// Query 24
MERGE (p:Person {name: 'M. A. Wijetunge'}) ON CREATE SET p.id = 'm_a_wijetunge';

// Query 25
MERGE (p:Person {name: 'M. R. Abeywardena'}) ON CREATE SET p.id = 'm_r_abeywardena';

// Query 26
MERGE (p:Person {name: 'M. M. Wijetunge'}) ON CREATE SET p.id = 'm_m_wijetunge';

// Query 27
MERGE (p:Person {name: 'J. D. N. Kekulawala'}) ON CREATE SET p.id = 'j_d_n_kekulawala';

// Query 28
MERGE (p:Person {name: 'K. C. S. Dharmawardana'}) ON CREATE SET p.id = 'k_c_s_dharmawardana';

// Query 29
MERGE (p:Person {name: 'R. A. Dassanayake'}) ON CREATE SET p.id = 'r_a_dassanayake';

// Query 30
MERGE (p:Person {name: 'A. G. R. Dissanayake'}) ON CREATE SET p.id = 'a_g_r_dissanayake';

// Query 31
MERGE (p:Person {name: 'N. H. T. I. Perera'}) ON CREATE SET p.id = 'n_h_t_i_perera';

// Query 32
MERGE (p:Person {name: 'W. P. K. Jayawardana'}) ON CREATE SET p.id = 'w_p_k_jayawardana';

// Query 33
MERGE (p:Person {name: 'J. P. Gamage'}) ON CREATE SET p.id = 'j_p_gamage';

// Query 34
// Step 5: HOLDS_POSITION Relationships;

// Query 35
MATCH (p:Person {name: 'P. G. D. B. Pallewatte'}), (c:Company {name: 'LVL Energy Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 36
MATCH (p:Person {name: 'M. A. Wijetunge'}), (c:Company {name: 'LVL Energy Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 37
MATCH (p:Person {name: 'M. R. Abeywardena'}), (c:Company {name: 'LVL Energy Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 38
MATCH (p:Person {name: 'M. M. Wijetunge'}), (c:Company {name: 'LVL Energy Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 39
MATCH (p:Person {name: 'J. D. N. Kekulawala'}), (c:Company {name: 'LVL Energy Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 40
MATCH (p:Person {name: 'K. C. S. Dharmawardana'}), (c:Company {name: 'LVL Energy Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 41
MATCH (p:Person {name: 'R. A. Dassanayake'}), (c:Company {name: 'LVL Energy Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 42
MATCH (p:Person {name: 'A. G. R. Dissanayake'}), (c:Company {name: 'LVL Energy Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 43
MATCH (p:Person {name: 'N. H. T. I. Perera'}), (c:Company {name: 'LVL Energy Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 44
MATCH (p:Person {name: 'W. P. K. Jayawardana'}), (c:Company {name: 'LVL Energy Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 45
MATCH (p:Person {name: 'J. P. Gamage'}), (c:Company {name: 'LVL Energy Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 46
// Step 6: Metrics;

// Query 47
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 54
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 55
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 56
// Step 7: HAS_METRIC Relationships;

// Query 57
MATCH (c:Company {name: 'LVL Energy Fund'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 486000000.0, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'LVL Energy Fund'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 301000000.0, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'LVL Energy Fund'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -12000000.0, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'LVL Energy Fund'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -171000000.0, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'LVL Energy Fund'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -66000000.0, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'LVL Energy Fund'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -319000000.0, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'LVL Energy Fund'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8960000000.0, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'LVL Energy Fund'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9912000000.0, r.year = 2023;

// Query 65
MATCH (c:Company {name: 'LVL Energy Fund'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5215000000.0, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'LVL Energy Fund'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6077000000.0, r.year = 2023;

// Query 67
MATCH (c:Company {name: 'LVL Energy Fund'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.17, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'LVL Energy Fund'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.45, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'LVL Energy Fund'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.71, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'LVL Energy Fund'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3.67, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'LVL Energy Fund'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 64.28, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'LVL Energy Fund'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 57.02, r.year = 2023;

// Query 73
MATCH (c:Company {name: 'LVL Energy Fund'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 219000000.0, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'LVL Energy Fund'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 81000000.0, r.year = 2023;

// Query 75
// Step 8: Sectors;

// Query 76
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 77
// Step 9: IN_SECTOR Relationships;

// Query 78
MATCH (c:Company {name: 'LVL Energy Fund'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 79
// Step 10: Products;

// Query 80
MERGE (p:Product {name: 'Hydro Power Generation'}) ON CREATE SET p.id = 'hydro_power_generation';

// Query 81
MERGE (p:Product {name: 'Wind Power Generation'}) ON CREATE SET p.id = 'wind_power_generation';

// Query 82
MERGE (p:Product {name: 'Solar Power Generation'}) ON CREATE SET p.id = 'solar_power_generation';

// Query 83
MERGE (p:Product {name: 'Thermal Power Generation'}) ON CREATE SET p.id = 'thermal_power_generation';

// Query 84
// Step 11: OFFERS Relationships;

// Query 85
MATCH (c:Company {name: 'LVL Energy Fund'}), (p:Product {name: 'Hydro Power Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'LVL Energy Fund'}), (p:Product {name: 'Wind Power Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'LVL Energy Fund'}), (p:Product {name: 'Solar Power Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'LVL Energy Fund'}), (p:Product {name: 'Thermal Power Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
// Step 12: Company-Company Relationships (OWNS);

// Query 90
MATCH (parent:Company {name: 'Lanka Ventures'}), (child:Company {name: 'LVL Energy Fund'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 57.0, r.as_of = date('2024-03-31');

// Query 91
MATCH (parent:Company {name: 'LVL Energy Fund'}), (child:Company {name: 'Lanka Energy International'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 92
MATCH (parent:Company {name: 'LVL Energy Fund'}), (child:Company {name: 'Sapthakanya Hydro Electric Company'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 85.0, r.as_of = date('2024-03-31');

// Query 93
MATCH (parent:Company {name: 'LVL Energy Fund'}), (child:Company {name: 'Pupulaketiya Mini Hydro Power'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Total queries: 93
// Generated on: 2025-10-02T22:50:30.842286
