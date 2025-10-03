// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Softlogic Capital'}) ON CREATE SET c.id = 'softlogic_capital', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No auditor found matching the hardcoded list. Skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Ashok Pathirage'}) ON CREATE SET p.id = 'ashok_pathirage';

// Query 6
MERGE (p:Person {name: 'R. J. Perera'}) ON CREATE SET p.id = 'r_j_perera';

// Query 7
MERGE (p:Person {name: 'A. M. Pasqual'}) ON CREATE SET p.id = 'a_m_pasqual';

// Query 8
MERGE (p:Person {name: 'S. Somasunderam'}) ON CREATE SET p.id = 's_somasunderam';

// Query 9
MERGE (p:Person {name: 'H. Kaimal'}) ON CREATE SET p.id = 'h_kaimal';

// Query 10
MERGE (p:Person {name: 'N. C. A. Abeyesekera'}) ON CREATE SET p.id = 'n_c_a_abeyesekera';

// Query 11
MERGE (p:Person {name: 'W. L. P. Wijewardena'}) ON CREATE SET p.id = 'w_l_p_wijewardena';

// Query 12
MERGE (p:Person {name: 'T. M. I. Ahamed'}) ON CREATE SET p.id = 't_m_i_ahamed';

// Query 13
MERGE (p:Person {name: 'A. Russell-Davison'}) ON CREATE SET p.id = 'a_russell_davison';

// Query 14
// Step 4: HOLDS_POSITION Relationships;

// Query 15
MATCH (p:Person {name: 'Ashok Pathirage'}), (c:Company {name: 'Softlogic Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'R. J. Perera'}), (c:Company {name: 'Softlogic Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'A. M. Pasqual'}), (c:Company {name: 'Softlogic Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'S. Somasunderam'}), (c:Company {name: 'Softlogic Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'H. Kaimal'}), (c:Company {name: 'Softlogic Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'N. C. A. Abeyesekera'}), (c:Company {name: 'Softlogic Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'W. L. P. Wijewardena'}), (c:Company {name: 'Softlogic Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-12-31');

// Query 22
MATCH (p:Person {name: 'T. M. I. Ahamed'}), (c:Company {name: 'Softlogic Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-31');

// Query 23
MATCH (p:Person {name: 'A. Russell-Davison'}), (c:Company {name: 'Softlogic Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-01');

// Query 24
// Step 5: Metric Nodes;

// Query 25
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 33
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 34
// Step 6: HAS_METRIC Relationships (Softlogic Capital - Company);

// Query 35
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1933063900, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1489183316, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -573332750, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -676206889, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20006809514, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23685463576, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5589310547, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13166793978, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4.85, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.14, r.year = 2023;

// Query 45
// Step 6: HAS_METRIC Relationships (Softlogic Capital - Group Metrics);

// Query 46
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36730000000, r.year = 2024, r.period = 'Group';

// Query 47
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 32687000000, r.year = 2023, r.period = 'Group';

// Query 48
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10830000000, r.year = 2024, r.period = 'Group';

// Query 49
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8085000000, r.year = 2023, r.period = 'Group';

// Query 50
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3685000000, r.year = 2024, r.period = 'Group';

// Query 51
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -626000000, r.year = 2023, r.period = 'Group';

// Query 52
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4183000000, r.year = 2024, r.period = 'Group';

// Query 53
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2391000000, r.year = 2023, r.period = 'Group';

// Query 54
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.0, r.year = 2024, r.period = 'Group';

// Query 55
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4.0, r.year = 2023, r.period = 'Group';

// Query 56
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -111.0, r.year = 2024, r.period = 'Group';

// Query 57
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -32.0, r.year = 2023, r.period = 'Group';

// Query 58
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 65782000000, r.year = 2024, r.period = 'Group';

// Query 59
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 74074000000, r.year = 2023, r.period = 'Group';

// Query 60
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3777000000, r.year = 2024, r.period = 'Group';

// Query 61
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7539000000, r.year = 2023, r.period = 'Group';

// Query 62
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2576000000, r.year = 2024, r.period = 'NBFI Sector Group';

// Query 63
MATCH (c:Company {name: 'Softlogic Capital'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3925000000, r.year = 2023, r.period = 'NBFI Sector Group';

// Query 64
// Step 7: Sector Nodes;

// Query 65
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 66
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 67
// Step 8: IN_SECTOR Relationships;

// Query 68
MATCH (c:Company {name: 'Softlogic Capital'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 69
// Step 9: Product Nodes;

// Query 70
MERGE (p:Product {name: 'Investment Management'}) ON CREATE SET p.id = 'investment_management';

// Query 71
MERGE (p:Product {name: 'Consultancy Services'}) ON CREATE SET p.id = 'consultancy_services';

// Query 72
MERGE (p:Product {name: 'Advisory Services'}) ON CREATE SET p.id = 'advisory_services';

// Query 73
MERGE (p:Product {name: 'Specialized Business Loans'}) ON CREATE SET p.id = 'specialized_business_loans';

// Query 74
MERGE (p:Product {name: 'Regular Business Loans'}) ON CREATE SET p.id = 'regular_business_loans';

// Query 75
MERGE (p:Product {name: 'Vehicle Loans'}) ON CREATE SET p.id = 'vehicle_loans';

// Query 76
MERGE (p:Product {name: 'Machinery Loans'}) ON CREATE SET p.id = 'machinery_loans';

// Query 77
MERGE (p:Product {name: 'Personal Financing'}) ON CREATE SET p.id = 'personal_financing';

// Query 78
MERGE (p:Product {name: 'Leasing'}) ON CREATE SET p.id = 'leasing';

// Query 79
MERGE (p:Product {name: 'Hire Purchase'}) ON CREATE SET p.id = 'hire_purchase';

// Query 80
MERGE (p:Product {name: 'Fund Mobilization'}) ON CREATE SET p.id = 'fund_mobilization';

// Query 81
MERGE (p:Product {name: 'Life Insurance Solutions'}) ON CREATE SET p.id = 'life_insurance_solutions';

// Query 82
MERGE (p:Product {name: 'Stock-brokering'}) ON CREATE SET p.id = 'stock_brokering';

// Query 83
MERGE (p:Product {name: 'Asset Management Services for Unit Trust Funds'}) ON CREATE SET p.id = 'asset_management_services_for_unit_trust_funds';

// Query 84
// Step 10: OFFERS Relationships;

// Query 85
MATCH (c:Company {name: 'Softlogic Capital'}), (p:Product {name: 'Investment Management'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Softlogic Capital'}), (p:Product {name: 'Consultancy Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Softlogic Capital'}), (p:Product {name: 'Advisory Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
// Step 11: Company-Company Relationships (OWNS);

// Query 89
MERGE (c:Company {name: 'Softlogic Holdings'}) ON CREATE SET c.id = 'softlogic_holdings';

// Query 90
MERGE (c:Company {name: 'Softlogic Life Insurance'}) ON CREATE SET c.id = 'softlogic_life_insurance';

// Query 91
MERGE (c:Company {name: 'Softlogic Finance'}) ON CREATE SET c.id = 'softlogic_finance';

// Query 92
MERGE (c:Company {name: 'SCAP ONE'}) ON CREATE SET c.id = 'scap_one';

// Query 93
MERGE (c:Company {name: 'S R ONE'}) ON CREATE SET c.id = 's_r_one';

// Query 94
MERGE (c:Company {name: 'Softlogic Stockbrokers'}) ON CREATE SET c.id = 'softlogic_stockbrokers';

// Query 95
MERGE (c:Company {name: 'Softlogic Asset Management'}) ON CREATE SET c.id = 'softlogic_asset_management';

// Query 96
MATCH (parent:Company {name: 'Softlogic Holdings'}), (child:Company {name: 'Softlogic Capital'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 77.36, r.as_of = date('2024-03-31');

// Query 97
MATCH (parent:Company {name: 'Softlogic Capital'}), (child:Company {name: 'Softlogic Life Insurance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 51.72, r.as_of = date('2024-03-31');

// Query 98
MATCH (parent:Company {name: 'Softlogic Capital'}), (child:Company {name: 'Softlogic Finance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 95.44, r.as_of = date('2024-03-31');

// Query 99
MATCH (parent:Company {name: 'Softlogic Capital'}), (child:Company {name: 'SCAP ONE'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 100
MATCH (parent:Company {name: 'Softlogic Capital'}), (child:Company {name: 'S R ONE'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 101
MATCH (parent:Company {name: 'Softlogic Capital'}), (child:Company {name: 'Softlogic Stockbrokers'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 80.10, r.as_of = date('2024-03-31');

// Query 102
MATCH (parent:Company {name: 'Softlogic Capital'}), (child:Company {name: 'Softlogic Asset Management'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 103
// Step 12: Subsidiary Company Sectors and Products;

// Query 104
MATCH (c:Company {name: 'Softlogic Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 105
MATCH (c:Company {name: 'Softlogic Finance'}), (p:Product {name: 'Specialized Business Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 106
MATCH (c:Company {name: 'Softlogic Finance'}), (p:Product {name: 'Regular Business Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 107
MATCH (c:Company {name: 'Softlogic Finance'}), (p:Product {name: 'Vehicle Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 108
MATCH (c:Company {name: 'Softlogic Finance'}), (p:Product {name: 'Machinery Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 109
MATCH (c:Company {name: 'Softlogic Finance'}), (p:Product {name: 'Personal Financing'}) MERGE (c)-[:OFFERS]->(p);

// Query 110
MATCH (c:Company {name: 'Softlogic Finance'}), (p:Product {name: 'Leasing'}) MERGE (c)-[:OFFERS]->(p);

// Query 111
MATCH (c:Company {name: 'Softlogic Finance'}), (p:Product {name: 'Hire Purchase'}) MERGE (c)-[:OFFERS]->(p);

// Query 112
MATCH (c:Company {name: 'Softlogic Finance'}), (p:Product {name: 'Fund Mobilization'}) MERGE (c)-[:OFFERS]->(p);

// Query 113
MATCH (c:Company {name: 'Softlogic Life Insurance'}), (s:Sector {name: 'Insurance'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 114
MATCH (c:Company {name: 'Softlogic Life Insurance'}), (p:Product {name: 'Life Insurance Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 115
MATCH (c:Company {name: 'Softlogic Stockbrokers'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 116
MATCH (c:Company {name: 'Softlogic Stockbrokers'}), (p:Product {name: 'Stock-brokering'}) MERGE (c)-[:OFFERS]->(p);

// Query 117
MATCH (c:Company {name: 'Softlogic Asset Management'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 118
MATCH (c:Company {name: 'Softlogic Asset Management'}), (p:Product {name: 'Asset Management Services for Unit Trust Funds'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 118
// Generated on: 2025-10-02T22:47:31.845464
