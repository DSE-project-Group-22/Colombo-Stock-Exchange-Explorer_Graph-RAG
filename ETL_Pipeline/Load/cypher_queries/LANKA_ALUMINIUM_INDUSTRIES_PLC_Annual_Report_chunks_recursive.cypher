// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Lanka Aluminium Industries'}) ON CREATE SET c.id = 'lanka_aluminium_industries', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - Not applicable as the financial statements are explicitly stated as 'not audited';

// Query 4
// Step 3: People - Shareholders;

// Query 5
MERGE (p:Person {name: 'Palaniyandy Muralitharan'}) ON CREATE SET p.id = 'palaniyandy_muralitharan';

// Query 6
MERGE (p:Person {name: 'Runantissa Suresh Anthony Silva'}) ON CREATE SET p.id = 'runantissa_suresh_anthony_silva';

// Query 7
MERGE (p:Person {name: 'P.D Salpitikorala'}) ON CREATE SET p.id = 'p_d_salpitikorala';

// Query 8
MERGE (p:Person {name: 'Kanasu Chelvadurai Vignarajah'}) ON CREATE SET p.id = 'kanasu_chelvadurai_vignarajah';

// Query 9
MERGE (p:Person {name: 'S. Senthilnathan'}) ON CREATE SET p.id = 's_senthilnathan';

// Query 10
MERGE (p:Person {name: 'G.B.D. Thilakaratne'}) ON CREATE SET p.id = 'g_b_d_thilakaratne';

// Query 11
MERGE (p:Person {name: 'S. Vasudevan'}) ON CREATE SET p.id = 's_vasudevan';

// Query 12
MERGE (p:Person {name: 'P.N. Bhatt'}) ON CREATE SET p.id = 'p_n_bhatt';

// Query 13
MERGE (p:Person {name: 'R.M.N.C. Bandra'}) ON CREATE SET p.id = 'r_m_n_c_bandra';

// Query 14
MERGE (p:Person {name: 'H.A.D.U.G. Gunasekera'}) ON CREATE SET p.id = 'h_a_d_u_g_gunasekera';

// Query 15
MERGE (p:Person {name: 'D.N.P. Rathnayake'}) ON CREATE SET p.id = 'd_n_p_rathnayake';

// Query 16
// Step 4: HOLDS_POSITION Relationships - Not applicable as no directors with specific titles are listed, and it states 'THE DIRECTORS DO NOT HOLD ANY SHARES';

// Query 17
// Step 5: Metrics;

// Query 18
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 19
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Ordinary Shares Outstanding'}) ON CREATE SET m.id = 'ordinary_shares_outstanding', m.unit = 'Count';

// Query 25
// Step 6: HAS_METRIC Relationships;

// Query 26
MATCH (c:Company {name: 'Lanka Aluminium Industries'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 836130000.0, r.year = 2024, r.as_of = date('2024-09-30');

// Query 27
MATCH (c:Company {name: 'Lanka Aluminium Industries'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 585543000.0, r.year = 2023, r.as_of = date('2023-09-30');

// Query 28
MATCH (c:Company {name: 'Lanka Aluminium Industries'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 179777000.0, r.year = 2024, r.as_of = date('2024-09-30');

// Query 29
MATCH (c:Company {name: 'Lanka Aluminium Industries'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 160201000.0, r.year = 2023, r.as_of = date('2023-09-30');

// Query 30
MATCH (c:Company {name: 'Lanka Aluminium Industries'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 96829000.0, r.year = 2024, r.as_of = date('2024-09-30');

// Query 31
MATCH (c:Company {name: 'Lanka Aluminium Industries'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 85839000.0, r.year = 2023, r.as_of = date('2023-09-30');

// Query 32
MATCH (c:Company {name: 'Lanka Aluminium Industries'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 153549000.0, r.year = 2024, r.as_of = date('2024-09-30');

// Query 33
MATCH (c:Company {name: 'Lanka Aluminium Industries'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 117150000.0, r.year = 2023, r.as_of = date('2023-09-30');

// Query 34
MATCH (c:Company {name: 'Lanka Aluminium Industries'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 89755000.0, r.year = 2024, r.as_of = date('2024-09-30');

// Query 35
MATCH (c:Company {name: 'Lanka Aluminium Industries'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 61567000.0, r.year = 2023, r.as_of = date('2023-09-30');

// Query 36
MATCH (c:Company {name: 'Lanka Aluminium Industries'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.56, r.year = 2024, r.as_of = date('2024-09-30');

// Query 37
MATCH (c:Company {name: 'Lanka Aluminium Industries'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.22, r.year = 2023, r.as_of = date('2023-09-30');

// Query 38
MATCH (c:Company {name: 'Lanka Aluminium Industries'}), (m:Metric {name: 'Ordinary Shares Outstanding'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 68514115, r.year = 2024, r.as_of = date('2024-09-30');

// Query 39
MATCH (c:Company {name: 'Lanka Aluminium Industries'}), (m:Metric {name: 'Ordinary Shares Outstanding'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 68514115, r.year = 2023, r.as_of = date('2023-09-30');

// Query 40
// Step 7: Sectors;

// Query 41
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 42
// Step 8: IN_SECTOR Relationships;

// Query 43
MATCH (c:Company {name: 'Lanka Aluminium Industries'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 44
// Step 9: Product nodes creation;

// Query 45
MERGE (p:Product {name: 'Aluminium Products'}) ON CREATE SET p.id = 'aluminium_products';

// Query 46
// Step 10: OFFERS relationships;

// Query 47
MATCH (c:Company {name: 'Lanka Aluminium Industries'}), (p:Product {name: 'Aluminium Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 48
// Step 11: Company-Company Relationships (OWNS);

// Query 49
MERGE (sh:Company {name: 'Clovis Company'}) ON CREATE SET sh.id = 'clovis_company';

// Query 50
MATCH (sh:Company {name: 'Clovis Company'}), (c:Company {name: 'Lanka Aluminium Industries'}) MERGE (sh)-[r:OWNS]->(c) ON CREATE SET r.pct = 50.09, r.as_of = date('2024-09-30');

// Query 51
MERGE (sh:Company {name: 'Senthilverl Holdings'}) ON CREATE SET sh.id = 'senthilverl_holdings';

// Query 52
MATCH (sh:Company {name: 'Senthilverl Holdings'}), (c:Company {name: 'Lanka Aluminium Industries'}) MERGE (sh)-[r:OWNS]->(c) ON CREATE SET r.pct = 9.32, r.as_of = date('2024-09-30');

// Query 53
MERGE (sh:Company {name: 'Astrue Alpha Fund'}) ON CREATE SET sh.id = 'astrue_alpha_fund';

// Query 54
MATCH (sh:Company {name: 'Astrue Alpha Fund'}), (c:Company {name: 'Lanka Aluminium Industries'}) MERGE (sh)-[r:OWNS]->(c) ON CREATE SET r.pct = 1.10, r.as_of = date('2024-09-30');

// Query 55
MERGE (sh:Company {name: 'Eagle Crest'}) ON CREATE SET sh.id = 'eagle_crest';

// Query 56
MATCH (sh:Company {name: 'Eagle Crest'}), (c:Company {name: 'Lanka Aluminium Industries'}) MERGE (sh)-[r:OWNS]->(c) ON CREATE SET r.pct = 1.01, r.as_of = date('2024-09-30');

// Query 57
MERGE (sh:Company {name: 'Alpex Marine'}) ON CREATE SET sh.id = 'alpex_marine';

// Query 58
MATCH (sh:Company {name: 'Alpex Marine'}), (c:Company {name: 'Lanka Aluminium Industries'}) MERGE (sh)-[r:OWNS]->(c) ON CREATE SET r.pct = 0.60, r.as_of = date('2024-09-30');

// Query 59
MERGE (sh:Company {name: 'National Equity Fund'}) ON CREATE SET sh.id = 'national_equity_fund';

// Query 60
MATCH (sh:Company {name: 'National Equity Fund'}), (c:Company {name: 'Lanka Aluminium Industries'}) MERGE (sh)-[r:OWNS]->(c) ON CREATE SET r.pct = 0.49, r.as_of = date('2024-09-30');

// Query 61
// Step 12: Person-Company Relationships (OWNS_SHARES);

// Query 62
MATCH (p:Person {name: 'Palaniyandy Muralitharan'}), (c:Company {name: 'Lanka Aluminium Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 2.55, r.as_of = date('2024-09-30');

// Query 63
MATCH (p:Person {name: 'Runantissa Suresh Anthony Silva'}), (c:Company {name: 'Lanka Aluminium Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 1.53, r.as_of = date('2024-09-30');

// Query 64
MATCH (p:Person {name: 'P.D Salpitikorala'}), (c:Company {name: 'Lanka Aluminium Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 1.06, r.as_of = date('2024-09-30');

// Query 65
MATCH (p:Person {name: 'Kanasu Chelvadurai Vignarajah'}), (c:Company {name: 'Lanka Aluminium Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 1.02, r.as_of = date('2024-09-30');

// Query 66
MATCH (p:Person {name: 'S. Senthilnathan'}), (c:Company {name: 'Lanka Aluminium Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.95, r.as_of = date('2024-09-30');

// Query 67
MATCH (p:Person {name: 'G.B.D. Thilakaratne'}), (c:Company {name: 'Lanka Aluminium Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.76, r.as_of = date('2024-09-30');

// Query 68
MATCH (p:Person {name: 'S. Vasudevan'}), (c:Company {name: 'Lanka Aluminium Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.62, r.as_of = date('2024-09-30');

// Query 69
MATCH (p:Person {name: 'P.N. Bhatt'}), (c:Company {name: 'Lanka Aluminium Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.57, r.as_of = date('2024-09-30');

// Query 70
MATCH (p:Person {name: 'R.M.N.C. Bandra'}), (c:Company {name: 'Lanka Aluminium Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.47, r.as_of = date('2024-09-30');

// Query 71
MATCH (p:Person {name: 'H.A.D.U.G. Gunasekera'}), (c:Company {name: 'Lanka Aluminium Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.46, r.as_of = date('2024-09-30');

// Query 72
MATCH (p:Person {name: 'D.N.P. Rathnayake'}), (c:Company {name: 'Lanka Aluminium Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.44, r.as_of = date('2024-09-30');

// Query 73
// Step 13: Other Company nodes mentioned as custodians/intermediaries (no direct OWNS relationship to main company);

// Query 74
MERGE (c:Company {name: 'Seylan Bank'}) ON CREATE SET c.id = 'seylan_bank';

// Query 75
MERGE (c:Company {name: 'Sampath Bank'}) ON CREATE SET c.id = 'sampath_bank';

// Query 76
MERGE (c:Company {name: 'Hatton National Bank'}) ON CREATE SET c.id = 'hatton_national_bank';

// Query 77
MERGE (c:Company {name: 'Cargills Bank'}) ON CREATE SET c.id = 'cargills_bank';

// Query 78
MERGE (c:Company {name: 'Deutsche Bank'}) ON CREATE SET c.id = 'deutsche_bank';

// Query 79
MERGE (c:Company {name: 'People\'s Leasing & Finance'}) ON CREATE SET c.id = 'peoples_leasing_and_finance';

// Query 80
MERGE (c:Company {name: 'Merchant Bank of Sri Lanka & Finance'}) ON CREATE SET c.id = 'merchant_bank_of_sri_lanka_and_finance';

// Total queries: 80
// Generated on: 2025-10-02T22:39:56.303146
