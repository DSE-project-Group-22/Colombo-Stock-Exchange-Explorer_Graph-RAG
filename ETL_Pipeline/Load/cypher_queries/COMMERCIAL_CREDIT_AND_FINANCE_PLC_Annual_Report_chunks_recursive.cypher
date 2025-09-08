// Query 1
MERGE (c:Company {name: 'Commercial Credit and Finance PLC'}) ON CREATE SET c.id = 'commercial_credit_and_finance_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 3
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'Commercial Credit and Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 4
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'Commercial Credit and Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 5
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 6
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'Commercial Credit and Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 7
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 8
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'Commercial Credit and Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 9
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 10
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'Commercial Credit and Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-03-31');

// Query 11
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 12
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'Commercial Credit and Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 13
MERGE (p:Person {name: 'C. P. R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 14
MATCH (p:Person {name: 'C. P. R. Perera'}), (c:Company {name: 'Commercial Credit and Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 15
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 16
MATCH (p:Person {name: 'S. Rajaratnam'}), (c:Company {name: 'Commercial Credit and Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 17
MERGE (p:Person {name: 'Amrit Rajaratnam'}) ON CREATE SET p.id = 'amrit_rajaratnam';

// Query 18
MATCH (p:Person {name: 'Amrit Rajaratnam'}), (c:Company {name: 'Commercial Credit and Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 19
MERGE (p:Person {name: 'A. R. Rasiah'}) ON CREATE SET p.id = 'a_r_rasiah';

// Query 20
MATCH (p:Person {name: 'A. R. Rasiah'}), (c:Company {name: 'Commercial Credit and Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 21
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 22
MATCH (p:Person {name: 'Anushman Rajaratnam'}), (c:Company {name: 'Commercial Credit and Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 23
MERGE (p:Person {name: 'J. T. Sumathipala'}) ON CREATE SET p.id = 'j_t_sumathipala';

// Query 24
MATCH (p:Person {name: 'J. T. Sumathipala'}), (c:Company {name: 'Commercial Credit and Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-25');

// Query 25
MERGE (p:Person {name: 'R. Radha'}) ON CREATE SET p.id = 'r_radha';

// Query 26
MATCH (p:Person {name: 'R. Radha'}), (c:Company {name: 'Commercial Credit and Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 27
MERGE (p:Person {name: 'R.A.T.P Perera'}) ON CREATE SET p.id = 'r_a_t_p_perera';

// Query 28
MATCH (p:Person {name: 'R.A.T.P Perera'}), (c:Company {name: 'Commercial Credit and Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-01-31');

// Query 29
MATCH (p:Person {name: 'R.A.T.P Perera'}), (c:Company {name: 'Commercial Credit and Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'CEO', r.as_of = date('2024-01-31');

// Query 30
MERGE (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}) ON CREATE SET p.id = 'd_a_s_d_a_abeyesinhe';

// Query 31
MATCH (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}), (c:Company {name: 'Commercial Credit and Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 32
MERGE (p:Person {name: 'A. D. Ross'}) ON CREATE SET p.id = 'a_d_ross';

// Query 33
MATCH (p:Person {name: 'A. D. Ross'}), (c:Company {name: 'Commercial Credit and Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 34
MERGE (p:Person {name: 'V. Siva Jr.'}) ON CREATE SET p.id = 'v_siva_jr';

// Query 35
MATCH (p:Person {name: 'V. Siva Jr.'}), (c:Company {name: 'Commercial Credit and Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 36
MERGE (p:Person {name: 'S. S. Balasubramaniam'}) ON CREATE SET p.id = 's_s_balasubramaniam';

// Query 37
MATCH (p:Person {name: 'S. S. Balasubramaniam'}), (c:Company {name: 'Commercial Credit and Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 38
MERGE (p:Person {name: 'D. Swarnasinghe'}) ON CREATE SET p.id = 'd_swarnasinghe';

// Query 39
MATCH (p:Person {name: 'D. Swarnasinghe'}), (c:Company {name: 'Commercial Credit and Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 40
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs. thousand';

// Query 41
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31055222, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28949269, r.year = 2023;

// Query 43
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs. thousand';

// Query 44
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12808022, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11106651, r.year = 2023;

// Query 46
MERGE (m:Metric {name: 'Profit Before Taxation'}) ON CREATE SET m.id = 'profit_before_taxation', m.unit = 'Rs. thousand';

// Query 47
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Profit Before Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6594978, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Profit Before Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3859879, r.year = 2023;

// Query 49
MERGE (m:Metric {name: 'Profit After Taxation'}) ON CREATE SET m.id = 'profit_after_taxation', m.unit = 'Rs. thousand';

// Query 50
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Profit After Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4193917, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Profit After Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2599629, r.year = 2023;

// Query 52
MERGE (m:Metric {name: 'Leases, Hire Purchases, Loans and Advances'}) ON CREATE SET m.id = 'leases_hire_purchases_loans_and_advances', m.unit = 'Rs. thousand';

// Query 53
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Leases, Hire Purchases, Loans and Advances'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 81437828, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Leases, Hire Purchases, Loans and Advances'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 76170663, r.year = 2023;

// Query 55
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. thousand';

// Query 56
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 107987834, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 102154440, r.year = 2023;

// Query 58
MERGE (m:Metric {name: 'Total Deposit Base'}) ON CREATE SET m.id = 'total_deposit_base', m.unit = 'Rs. thousand';

// Query 59
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Total Deposit Base'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 62121240, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Total Deposit Base'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 59243651, r.year = 2023;

// Query 61
MERGE (m:Metric {name: 'Borrowings'}) ON CREATE SET m.id = 'borrowings', m.unit = 'Rs. thousand';

// Query 62
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13902823, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17555544, r.year = 2023;

// Query 64
MERGE (m:Metric {name: 'Shareholders’ Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs. thousand';

// Query 65
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Shareholders’ Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24179669, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Shareholders’ Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20359015, r.year = 2023;

// Query 67
MERGE (m:Metric {name: 'Liquid Assets'}) ON CREATE SET m.id = 'liquid_assets', m.unit = 'Rs. thousand';

// Query 68
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Liquid Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11483294, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Liquid Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12836935, r.year = 2023;

// Query 70
MERGE (m:Metric {name: 'Earnings per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs.';

// Query 71
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.19, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.17, r.year = 2023;

// Query 73
MERGE (m:Metric {name: 'Net Assets per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs.';

// Query 74
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Net Assets per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 76.02, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Net Assets per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 64.01, r.year = 2023;

// Query 76
MERGE (m:Metric {name: 'Year end Market Price per Share'}) ON CREATE SET m.id = 'year_end_market_price_per_share', m.unit = 'Rs.';

// Query 77
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Year end Market Price per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 35.30, r.year = 2024;

// Query 78
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Year end Market Price per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26.00, r.year = 2023;

// Query 79
MERGE (m:Metric {name: 'Return on Average Assets'}) ON CREATE SET m.id = 'return_on_average_assets', m.unit = '%';

// Query 80
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Return on Average Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.99, r.year = 2024;

// Query 81
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Return on Average Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.66, r.year = 2023;

// Query 82
MERGE (m:Metric {name: 'Equity / Assets'}) ON CREATE SET m.id = 'equity_assets', m.unit = '%';

// Query 83
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Equity / Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22.39, r.year = 2024;

// Query 84
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Equity / Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.93, r.year = 2023;

// Query 85
MERGE (m:Metric {name: 'Gross Non Performing Accommodations'}) ON CREATE SET m.id = 'gross_non_performing_accommodations', m.unit = '%';

// Query 86
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Gross Non Performing Accommodations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.65, r.year = 2024;

// Query 87
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Gross Non Performing Accommodations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.07, r.year = 2023;

// Query 88
MERGE (s:Sector {name: 'Finance Lease'}) ON CREATE SET s.id = 'finance_lease';

// Query 89
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (s:Sector {name: 'Finance Lease'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 90
MERGE (s:Sector {name: 'Hire Purchase'}) ON CREATE SET s.id = 'hire_purchase';

// Query 91
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (s:Sector {name: 'Hire Purchase'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 92
MERGE (s:Sector {name: 'Microfinance and SME Loans'}) ON CREATE SET s.id = 'microfinance_and_sme_loans';

// Query 93
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (s:Sector {name: 'Microfinance and SME Loans'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 94
MERGE (s:Sector {name: 'Gold loan'}) ON CREATE SET s.id = 'gold_loan';

// Query 95
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (s:Sector {name: 'Gold loan'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 96
MERGE (s:Sector {name: 'Term Loan'}) ON CREATE SET s.id = 'term_loan';

// Query 97
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (s:Sector {name: 'Term Loan'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 98
MERGE (s:Sector {name: 'Revolving Loans'}) ON CREATE SET s.id = 'revolving_loans';

// Query 99
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (s:Sector {name: 'Revolving Loans'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 100
MERGE (s:Sector {name: 'Investments'}) ON CREATE SET s.id = 'investments';

// Query 101
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (s:Sector {name: 'Investments'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 101
// Generated on: 2025-09-03T16:14:22.922059
