// Query 1
// Step 1: Main Company Node Creation;

// Query 2
MERGE (c:Company {name: 'Softlogic Finance'}) ON CREATE SET c.id = 'softlogic_finance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Other Company Nodes Creation;

// Query 4
MERGE (c:Company {name: 'Softlogic Capital'}) ON CREATE SET c.id = 'softlogic_capital', c.region = 'Sri Lanka';

// Query 5
MERGE (c:Company {name: 'Softlogic Holdings'}) ON CREATE SET c.id = 'softlogic_holdings', c.region = 'Sri Lanka';

// Query 6
MERGE (c:Company {name: 'Softlogic Life Insurance'}) ON CREATE SET c.id = 'softlogic_life_insurance', c.region = 'Sri Lanka';

// Query 7
MERGE (c:Company {name: 'SCAP ONE'}) ON CREATE SET c.id = 'scap_one', c.region = 'Sri Lanka';

// Query 8
MERGE (c:Company {name: 'S R ONE'}) ON CREATE SET c.id = 's_r_one', c.region = 'Sri Lanka';

// Query 9
MERGE (c:Company {name: 'Softlogic Stockbrokers'}) ON CREATE SET c.id = 'softlogic_stockbrokers', c.region = 'Sri Lanka';

// Query 10
MERGE (c:Company {name: 'Softlogic Asset Management'}) ON CREATE SET c.id = 'softlogic_asset_management', c.region = 'Sri Lanka';

// Query 11
// Step 3: Auditor Node Creation & AUDITED_BY Relationship (Skipped - Auditor name not found);

// Query 12
// Step 4: Person Nodes Creation;

// Query 13
MERGE (p:Person {name: 'A. K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 14
MERGE (p:Person {name: 'R. J. Perera'}) ON CREATE SET p.id = 'r_j_perera';

// Query 15
MERGE (p:Person {name: 'A. M. Pasqual'}) ON CREATE SET p.id = 'a_m_pasqual';

// Query 16
MERGE (p:Person {name: 'S. Somasunderam'}) ON CREATE SET p.id = 's_somasunderam';

// Query 17
MERGE (p:Person {name: 'H. K. Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 18
MERGE (p:Person {name: 'N. C. A. Abeyesekera'}) ON CREATE SET p.id = 'n_c_a_abeyesekera';

// Query 19
MERGE (p:Person {name: 'W. L. P. Wijewardena'}) ON CREATE SET p.id = 'w_l_p_wijewardena';

// Query 20
MERGE (p:Person {name: 'T. M. I. Ahamed'}) ON CREATE SET p.id = 't_m_i_ahamed';

// Query 21
MERGE (p:Person {name: 'A. Russell-Davison'}) ON CREATE SET p.id = 'a_russell_davison';

// Query 22
// Step 5: HOLDS_POSITION Relationships;

// Query 23
MATCH (p:Person {name: 'A. K. Pathirage'}), (c:Company {name: 'Softlogic Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'R. J. Perera'}), (c:Company {name: 'Softlogic Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'A. M. Pasqual'}), (c:Company {name: 'Softlogic Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'S. Somasunderam'}), (c:Company {name: 'Softlogic Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'H. K. Kaimal'}), (c:Company {name: 'Softlogic Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2023-08-25');

// Query 28
MATCH (p:Person {name: 'N. C. A. Abeyesekera'}), (c:Company {name: 'Softlogic Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-12-06');

// Query 29
MATCH (p:Person {name: 'W. L. P. Wijewardena'}), (c:Company {name: 'Softlogic Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-12-31');

// Query 30
MATCH (p:Person {name: 'T. M. I. Ahamed'}), (c:Company {name: 'Softlogic Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-31');

// Query 31
MATCH (p:Person {name: 'A. Russell-Davison'}), (c:Company {name: 'Softlogic Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 32
// Step 6: Metric Nodes Creation;

// Query 33
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 41
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 42
// Step 7: HAS_METRIC Relationships for Softlogic Finance;

// Query 43
MATCH (c:Company {name: 'Softlogic Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1933063900, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Softlogic Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1489183316, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Softlogic Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -573332750, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Softlogic Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -676206889, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Softlogic Finance'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2576000000, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Softlogic Finance'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3925000000, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Softlogic Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5577910547, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Softlogic Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13166793978, r.year = 2023;

// Query 51
// Step 7: HAS_METRIC Relationships for Softlogic Capital (Group);

// Query 52
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36730000000, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 32687000000, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10830000000, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8085000000, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3685000000, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -626000000, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4183000000, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2391000000, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.0, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4.0, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -111.0, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -32.0, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 65782000000, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 74074000000, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3777000000, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7539000000, r.year = 2023;

// Query 68
// Step 8: Sector Nodes Creation;

// Query 69
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 70
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 71
// Step 9: IN_SECTOR Relationships;

// Query 72
MATCH (c:Company {name: 'Softlogic Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 73
MATCH (c:Company {name: 'Softlogic Capital'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
MATCH (c:Company {name: 'Softlogic Life Insurance'}), (s:Sector {name: 'Insurance'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 75
MATCH (c:Company {name: 'Softlogic Stockbrokers'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 76
MATCH (c:Company {name: 'Softlogic Asset Management'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 77
// Step 10: Product Nodes Creation;

// Query 78
MERGE (p:Product {name: 'Specialized Business Loans'}) ON CREATE SET p.id = 'specialized_business_loans';

// Query 79
MERGE (p:Product {name: 'Regular Business Loans'}) ON CREATE SET p.id = 'regular_business_loans';

// Query 80
MERGE (p:Product {name: 'Vehicle and Machinery Loans'}) ON CREATE SET p.id = 'vehicle_and_machinery_loans';

// Query 81
MERGE (p:Product {name: 'Personal Financing'}) ON CREATE SET p.id = 'personal_financing';

// Query 82
MERGE (p:Product {name: 'Leasing'}) ON CREATE SET p.id = 'leasing';

// Query 83
MERGE (p:Product {name: 'Hire Purchase'}) ON CREATE SET p.id = 'hire_purchase';

// Query 84
MERGE (p:Product {name: 'Fund Mobilization'}) ON CREATE SET p.id = 'fund_mobilization';

// Query 85
// Step 11: OFFERS Relationships;

// Query 86
MATCH (c:Company {name: 'Softlogic Finance'}), (p:Product {name: 'Specialized Business Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Softlogic Finance'}), (p:Product {name: 'Regular Business Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Softlogic Finance'}), (p:Product {name: 'Vehicle and Machinery Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Softlogic Finance'}), (p:Product {name: 'Personal Financing'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Softlogic Finance'}), (p:Product {name: 'Leasing'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Softlogic Finance'}), (p:Product {name: 'Hire Purchase'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {name: 'Softlogic Finance'}), (p:Product {name: 'Fund Mobilization'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
// Step 12: Company-Company Relationships (OWNS);

// Query 94
MATCH (parent:Company {name: 'Softlogic Holdings'}), (child:Company {name: 'Softlogic Capital'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 77.36, r.as_of = date('2024-03-31');

// Query 95
MATCH (parent:Company {name: 'Softlogic Capital'}), (child:Company {name: 'Softlogic Life Insurance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 51.72, r.as_of = date('2024-03-31');

// Query 96
MATCH (parent:Company {name: 'Softlogic Capital'}), (child:Company {name: 'Softlogic Finance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 95.44, r.as_of = date('2024-03-31');

// Query 97
MATCH (parent:Company {name: 'Softlogic Capital'}), (child:Company {name: 'SCAP ONE'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 98
MATCH (parent:Company {name: 'Softlogic Capital'}), (child:Company {name: 'S R ONE'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 99
MATCH (parent:Company {name: 'Softlogic Capital'}), (child:Company {name: 'Softlogic Stockbrokers'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 80.10, r.as_of = date('2024-03-31');

// Query 100
MATCH (parent:Company {name: 'Softlogic Capital'}), (child:Company {name: 'Softlogic Asset Management'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 101
// Step 13: Person-Company Relationships (OWNS_SHARES);

// Query 102
MATCH (p:Person {name: 'A. K. Pathirage'}), (c:Company {name: 'Softlogic Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 2847872, r.as_of = date('2024-03-31');

// Query 103
MATCH (p:Person {name: 'A. M. Pasqual'}), (c:Company {name: 'Softlogic Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 14200, r.as_of = date('2023-03-31');

// Total queries: 103
// Generated on: 2025-10-03T00:41:48.222811
