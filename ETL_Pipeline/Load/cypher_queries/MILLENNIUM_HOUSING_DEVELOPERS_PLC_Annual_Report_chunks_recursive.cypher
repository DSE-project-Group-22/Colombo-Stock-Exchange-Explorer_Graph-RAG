// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Millennium Housing Developers'}) ON CREATE SET c.id = 'millennium_housing_developers', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No auditor name explicitly found in the document, skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'U Harshith Dharmadasa'}) ON CREATE SET p.id = 'u_harshith_dharmadasa';

// Query 6
MERGE (p:Person {name: 'K C Chandana Perera'}) ON CREATE SET p.id = 'k_c_chandana_perera';

// Query 7
MERGE (p:Person {name: 'V R Ramanan'}) ON CREATE SET p.id = 'v_r_ramanan';

// Query 8
MERGE (p:Person {name: 'Gihan De Zoysa'}) ON CREATE SET p.id = 'gihan_de_zoysa';

// Query 9
MERGE (p:Person {name: 'U H Palihakkara'}) ON CREATE SET p.id = 'u_h_palihakkara';

// Query 10
MERGE (p:Person {name: 'Sam Samarasinghe'}) ON CREATE SET p.id = 'sam_samarasinghe';

// Query 11
MERGE (p:Person {name: 'Saman Srilal'}) ON CREATE SET p.id = 'saman_srilal';

// Query 12
MERGE (p:Person {name: 'M V Rudra'}) ON CREATE SET p.id = 'm_v_rudra';

// Query 13
MERGE (p:Person {name: 'M W M D Weeraratne'}) ON CREATE SET p.id = 'm_w_m_d_weeraratne';

// Query 14
MERGE (p:Person {name: 'R E Rambukwelle'}) ON CREATE SET p.id = 'r_e_rambukwelle';

// Query 15
MERGE (p:Person {name: 'A C Jayasinghe'}) ON CREATE SET p.id = 'a_c_jayasinghe';

// Query 16
MERGE (p:Person {name: 'DR. C. Alwishewa'}) ON CREATE SET p.id = 'dr_c_alwishewa';

// Query 17
// Step 4: HOLDS_POSITION Relationships;

// Query 18
MATCH (p:Person {name: 'U Harshith Dharmadasa'}), (c:Company {name: 'Millennium Housing Developers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'K C Chandana Perera'}), (c:Company {name: 'Millennium Housing Developers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'V R Ramanan'}), (c:Company {name: 'Millennium Housing Developers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2023-12-06');

// Query 21
MATCH (p:Person {name: 'Gihan De Zoysa'}), (c:Company {name: 'Millennium Housing Developers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'U H Palihakkara'}), (c:Company {name: 'Millennium Housing Developers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Sam Samarasinghe'}), (c:Company {name: 'Millennium Housing Developers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Saman Srilal'}), (c:Company {name: 'Millennium Housing Developers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-06-01');

// Query 25
// Step 5: Metrics;

// Query 26
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 33
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 34
// Step 6: HAS_METRIC Relationships;

// Query 35
MATCH (c:Company {name: 'Millennium Housing Developers'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 115200000.0, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Millennium Housing Developers'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 674719000.0, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'Millennium Housing Developers'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -185686000.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Millennium Housing Developers'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -180611000.0, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Millennium Housing Developers'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -186889000.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Millennium Housing Developers'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -199185000.0, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Millennium Housing Developers'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 646957000.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Millennium Housing Developers'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 834299000.0, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Millennium Housing Developers'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1982339000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Millennium Housing Developers'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2074456000.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Millennium Housing Developers'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.39, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Millennium Housing Developers'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.49, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Millennium Housing Developers'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28.89, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Millennium Housing Developers'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -23.87, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Millennium Housing Developers'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 101.20, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Millennium Housing Developers'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 82.64, r.year = 2023;

// Query 51
// Step 7: Sectors;

// Query 52
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 53
// Step 8: IN_SECTOR Relationships;

// Query 54
MATCH (c:Company {name: 'Millennium Housing Developers'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 55
// Step 9: Product nodes creation;

// Query 56
MERGE (p:Product {name: 'Houses'}) ON CREATE SET p.id = 'houses';

// Query 57
MERGE (p:Product {name: 'Lands'}) ON CREATE SET p.id = 'lands';

// Query 58
MERGE (p:Product {name: 'Apartments'}) ON CREATE SET p.id = 'apartments';

// Query 59
// Step 10: OFFERS Relationships;

// Query 60
MATCH (c:Company {name: 'Millennium Housing Developers'}), (p:Product {name: 'Houses'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 61
MATCH (c:Company {name: 'Millennium Housing Developers'}), (p:Product {name: 'Lands'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 62
MATCH (c:Company {name: 'Millennium Housing Developers'}), (p:Product {name: 'Apartments'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 63
// Step 11: Company-Company Relationships (OWNS);

// Query 64
MERGE (owner:Company {name: 'DFCC Bank'}) ON CREATE SET owner.id = 'dfcc_bank';

// Query 65
MATCH (owner:Company {name: 'DFCC Bank'}), (child:Company {name: 'Millennium Housing Developers'}) MERGE (owner)-[r:OWNS]->(child) ON CREATE SET r.pct = 21.82, r.as_of = date('2024-03-31');

// Query 66
MERGE (owner:Company {name: 'Merchant Bank of Sri Lanka & Finance'}) ON CREATE SET owner.id = 'merchant_bank_of_sri_lanka_and_finance';

// Query 67
MATCH (owner:Company {name: 'Merchant Bank of Sri Lanka & Finance'}), (child:Company {name: 'Millennium Housing Developers'}) MERGE (owner)-[r:OWNS]->(child) ON CREATE SET r.pct = 0.30, r.as_of = date('2024-03-31');

// Query 68
MERGE (owner:Company {name: 'Hatton National Bank'}) ON CREATE SET owner.id = 'hatton_national_bank';

// Query 69
MATCH (owner:Company {name: 'Hatton National Bank'}), (child:Company {name: 'Millennium Housing Developers'}) MERGE (owner)-[r:OWNS]->(child) ON CREATE SET r.pct = 0.29, r.as_of = date('2024-03-31');

// Query 70
MATCH (owner:Company {name: 'Hatton National Bank'}), (child:Company {name: 'Millennium Housing Developers'}) MERGE (owner)-[r:OWNS]->(child) ON CREATE SET r.pct = 0.26, r.as_of = date('2024-03-31');

// Query 71
MERGE (owner:Company {name: 'Golden Key Company'}) ON CREATE SET owner.id = 'golden_key_company';

// Query 72
MATCH (owner:Company {name: 'Golden Key Company'}), (child:Company {name: 'Millennium Housing Developers'}) MERGE (owner)-[r:OWNS]->(child) ON CREATE SET r.pct = 0.22, r.as_of = date('2024-03-31');

// Query 73
MERGE (owner:Company {name: 'Finance and Guarantee Company'}) ON CREATE SET owner.id = 'finance_and_guarantee_company';

// Query 74
MATCH (owner:Company {name: 'Finance and Guarantee Company'}), (child:Company {name: 'Millennium Housing Developers'}) MERGE (owner)-[r:OWNS]->(child) ON CREATE SET r.pct = 0.22, r.as_of = date('2024-03-31');

// Query 75
// Step 12: Person-Company Relationships (OWNS_SHARES);

// Query 76
MATCH (p:Person {name: 'K C Chandana Perera'}), (c:Company {name: 'Millennium Housing Developers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1300000, r.pct = 0.97, r.as_of = date('2024-03-31');

// Query 77
MATCH (p:Person {name: 'U H Palihakkara'}), (c:Company {name: 'Millennium Housing Developers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 971429, r.pct = 0.72, r.as_of = date('2024-03-31');

// Query 78
MATCH (p:Person {name: 'M V Rudra'}), (c:Company {name: 'Millennium Housing Developers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 644856, r.pct = 0.48, r.as_of = date('2024-03-31');

// Query 79
MATCH (p:Person {name: 'M W M D Weeraratne'}), (c:Company {name: 'Millennium Housing Developers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 540000, r.pct = 0.40, r.as_of = date('2024-03-31');

// Query 80
MATCH (p:Person {name: 'R E Rambukwelle'}), (c:Company {name: 'Millennium Housing Developers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 125000, r.pct = 0.09, r.as_of = date('2024-03-31');

// Query 81
MATCH (p:Person {name: 'A C Jayasinghe'}), (c:Company {name: 'Millennium Housing Developers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 350521, r.pct = 0.26, r.as_of = date('2024-03-31');

// Query 82
MATCH (p:Person {name: 'DR. C. Alwishewa'}), (c:Company {name: 'Millennium Housing Developers'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 346406, r.pct = 0.26, r.as_of = date('2024-03-31');

// Total queries: 82
// Generated on: 2025-10-03T01:24:38.206227
