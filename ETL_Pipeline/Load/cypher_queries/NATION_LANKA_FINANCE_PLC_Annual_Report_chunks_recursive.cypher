// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Nation Lanka Finance'}) ON CREATE SET c.id = 'nation_lanka_finance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No auditor found matching the hardcoded list.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'V R Ramanan'}) ON CREATE SET p.id = 'v_r_ramanan';

// Query 6
MERGE (p:Person {name: 'A G M Priyantha'}) ON CREATE SET p.id = 'a_g_m_priyantha';

// Query 7
MERGE (p:Person {name: 'S A Wickramasinghe'}) ON CREATE SET p.id = 's_a_wickramasinghe';

// Query 8
MERGE (p:Person {name: 'K G D W K Bandara'}) ON CREATE SET p.id = 'k_g_d_w_k_bandara';

// Query 9
MERGE (p:Person {name: 'N W M Gunawansha'}) ON CREATE SET p.id = 'n_w_m_gunawansha';

// Query 10
MERGE (p:Person {name: 'U R Senevirathne'}) ON CREATE SET p.id = 'u_r_senevirathne';

// Query 11
MERGE (p:Person {name: 'L M M Jayawickrema'}) ON CREATE SET p.id = 'l_m_m_jayawickrema';

// Query 12
MERGE (p:Person {name: 'Buddhika Kodithuwakku'}) ON CREATE SET p.id = 'buddhika_kodithuwakku';

// Query 13
MERGE (p:Person {name: 'Nirosha Madawala'}) ON CREATE SET p.id = 'nirosha_madawala';

// Query 14
MERGE (p:Person {name: 'K S Wimalasiri'}) ON CREATE SET p.id = 'k_s_wimalasiri';

// Query 15
MERGE (p:Person {name: 'Y Tetsuro'}) ON CREATE SET p.id = 'y_tetsuro';

// Query 16
MERGE (p:Person {name: 'S K Liyanage'}) ON CREATE SET p.id = 's_k_liyanage';

// Query 17
MERGE (p:Person {name: 'R E Rambukwella'}) ON CREATE SET p.id = 'r_e_rambukwella';

// Query 18
MERGE (p:Person {name: 'D M Meegaswatte'}) ON CREATE SET p.id = 'd_m_meegaswatte';

// Query 19
MERGE (p:Person {name: 'A J C Senathipathy'}) ON CREATE SET p.id = 'a_j_c_senathipathy';

// Query 20
MERGE (p:Person {name: 'H K J Dharmadasa'}) ON CREATE SET p.id = 'h_k_j_dharmadasa';

// Query 21
MERGE (p:Person {name: 'D M Siriwardhana'}) ON CREATE SET p.id = 'd_m_siriwardhana';

// Query 22
MERGE (p:Person {name: 'D S I Weerasinghe'}) ON CREATE SET p.id = 'd_s_i_weerasinghe';

// Query 23
MERGE (p:Person {name: 'T D Sellahewa'}) ON CREATE SET p.id = 't_d_sellahewa';

// Query 24
MERGE (p:Person {name: 'J Rudra'}) ON CREATE SET p.id = 'j_rudra';

// Query 25
MERGE (p:Person {name: 'K H Soorasena'}) ON CREATE SET p.id = 'k_h_soorasena';

// Query 26
MERGE (p:Person {name: 'N D P Jayatunga'}) ON CREATE SET p.id = 'n_d_p_jayatunga';

// Query 27
// Step 4: HOLDS_POSITION Relationships;

// Query 28
MATCH (p:Person {name: 'V R Ramanan'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 29
MATCH (p:Person {name: 'A G M Priyantha'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 30
MATCH (p:Person {name: 'S A Wickramasinghe'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-08-14');

// Query 31
MATCH (p:Person {name: 'K G D W K Bandara'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 32
MATCH (p:Person {name: 'N W M Gunawansha'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 33
MATCH (p:Person {name: 'U R Senevirathne'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 34
MATCH (p:Person {name: 'L M M Jayawickrema'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 35
MATCH (p:Person {name: 'Buddhika Kodithuwakku'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-08-14');

// Query 36
MATCH (p:Person {name: 'Nirosha Madawala'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-08-14');

// Query 37
MATCH (p:Person {name: 'K S Wimalasiri'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-08-14');

// Query 38
// Step 5: Metrics;

// Query 39
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Core Capital'}) ON CREATE SET m.id = 'core_capital', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Total Capital Base'}) ON CREATE SET m.id = 'total_capital_base', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Gross Non-Performing Accommodations'}) ON CREATE SET m.id = 'gross_non_performing_accommodations', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Gross Non-Performing Accommodations %'}) ON CREATE SET m.id = 'gross_non_performing_accommodations_pct', m.unit = '%';

// Query 51
MERGE (m:Metric {name: 'Required Minimum Liquid Assets'}) ON CREATE SET m.id = 'required_minimum_liquid_assets', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Available Liquid Assets'}) ON CREATE SET m.id = 'available_liquid_assets', m.unit = 'Rs';

// Query 53
// Step 6: HAS_METRIC Relationships;

// Query 54
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -9884000.0, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50662000.0, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -307229000.0, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2897000.0, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44123000.0, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -43592000.0, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -305272000.0, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -44738000.0, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -305272000.0, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -44738000.0, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 752347000.0, r.as_of = date('2024-06-30');

// Query 65
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1057500000.0, r.as_of = date('2023-06-30');

// Query 66
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8966558000.0, r.as_of = date('2024-06-30');

// Query 67
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9965277000.0, r.as_of = date('2023-06-30');

// Query 68
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.04, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.00, r.year = 2023;

// Query 70
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Core Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 203255000.0, r.as_of = date('2024-06-30');

// Query 71
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Core Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 787862000.0, r.as_of = date('2023-06-30');

// Query 72
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Total Capital Base'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 614575000.0, r.as_of = date('2024-06-30');

// Query 73
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Total Capital Base'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1181840000.0, r.as_of = date('2023-06-30');

// Query 74
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Gross Non-Performing Accommodations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5530470000.0, r.as_of = date('2024-06-30');

// Query 75
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Gross Non-Performing Accommodations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3437666000.0, r.as_of = date('2023-06-30');

// Query 76
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Gross Non-Performing Accommodations %'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 83.0, r.as_of = date('2024-06-30');

// Query 77
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Gross Non-Performing Accommodations %'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 57.04, r.as_of = date('2023-06-30');

// Query 78
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Required Minimum Liquid Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 557059000.0, r.as_of = date('2024-06-30');

// Query 79
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Required Minimum Liquid Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 654629000.0, r.as_of = date('2023-06-30');

// Query 80
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Available Liquid Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1292202000.0, r.as_of = date('2024-06-30');

// Query 81
MATCH (c:Company {name: 'Nation Lanka Finance'}), (m:Metric {name: 'Available Liquid Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 652487000.0, r.as_of = date('2023-06-30');

// Query 82
// Step 7: Sectors;

// Query 83
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 84
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 85
// Step 8: IN_SECTOR Relationships;

// Query 86
MATCH (c:Company {name: 'Nation Lanka Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 87
MATCH (c:Company {name: 'Nation Lanka Finance'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 88
// Step 9: Products;

// Query 89
MERGE (p:Product {name: 'Lending Services'}) ON CREATE SET p.id = 'lending_services';

// Query 90
MERGE (p:Product {name: 'Real Estate Services'}) ON CREATE SET p.id = 'real_estate_services';

// Query 91
// Step 10: OFFERS Relationships;

// Query 92
MATCH (c:Company {name: 'Nation Lanka Finance'}), (p:Product {name: 'Lending Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: 'Nation Lanka Finance'}), (p:Product {name: 'Real Estate Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
// Step 11: Company-Company Relationships (OWNS_SHARES);

// Query 95
MATCH (p:Person {name: 'V R Ramanan'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 965842690, r.pct = 13.8, r.as_of = date('2024-06-30');

// Query 96
MATCH (p:Person {name: 'Y Tetsuro'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 22580148, r.pct = 0.32, r.as_of = date('2024-06-30');

// Query 97
MATCH (p:Person {name: 'S K Liyanage'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 19488732, r.pct = 0.28, r.as_of = date('2024-06-30');

// Query 98
MATCH (p:Person {name: 'R E Rambukwella'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 447001, r.pct = 0.01, r.as_of = date('2024-06-30');

// Query 99
MATCH (p:Person {name: 'D M Meegaswatte'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 11324622, r.pct = 0.16, r.as_of = date('2024-06-30');

// Query 100
MATCH (p:Person {name: 'A J C Senathipathy'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 154835302, r.pct = 2.21, r.as_of = date('2024-06-30');

// Query 101
MATCH (p:Person {name: 'H K J Dharmadasa'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 87536211, r.pct = 1.25, r.as_of = date('2024-06-30');

// Query 102
MATCH (p:Person {name: 'D M Siriwardhana'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 46369979, r.pct = 0.66, r.as_of = date('2024-06-30');

// Query 103
MATCH (p:Person {name: 'D S I Weerasinghe'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 46369947, r.pct = 0.66, r.as_of = date('2024-06-30');

// Query 104
MATCH (p:Person {name: 'T D Sellahewa'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 40850213, r.pct = 0.58, r.as_of = date('2024-06-30');

// Query 105
MATCH (p:Person {name: 'J Rudra'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 40352922, r.pct = 0.58, r.as_of = date('2024-06-30');

// Query 106
MATCH (p:Person {name: 'K H Soorasena'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 32257355, r.pct = 0.46, r.as_of = date('2024-06-30');

// Query 107
MATCH (p:Person {name: 'N D P Jayatunga'}), (c:Company {name: 'Nation Lanka Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 28370408, r.pct = 0.41, r.as_of = date('2024-06-30');

// Query 108
// Step 12: Company-Company Relationships (OWNS);

// Query 109
MERGE (comp:Company {name: 'Singhe Capital Investment'}) ON CREATE SET comp.id = 'singhe_capital_investment';

// Query 110
MATCH (parent:Company {name: 'Singhe Capital Investment'}), (child:Company {name: 'Nation Lanka Finance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 38.22, r.as_of = date('2024-06-30');

// Query 111
MERGE (comp:Company {name: 'Mutual Holdings'}) ON CREATE SET comp.id = 'mutual_holdings';

// Query 112
MATCH (parent:Company {name: 'Mutual Holdings'}), (child:Company {name: 'Nation Lanka Finance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 24.77, r.as_of = date('2024-06-30');

// Query 113
MERGE (comp:Company {name: 'Dunamis Capital'}) ON CREATE SET comp.id = 'dunamis_capital';

// Query 114
MATCH (parent:Company {name: 'Dunamis Capital'}), (child:Company {name: 'Nation Lanka Finance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 3.27, r.as_of = date('2024-06-30');

// Query 115
MERGE (comp:Company {name: 'First Capital'}) ON CREATE SET comp.id = 'first_capital';

// Query 116
MATCH (parent:Company {name: 'First Capital'}), (child:Company {name: 'Nation Lanka Finance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 2.75, r.as_of = date('2024-06-30');

// Query 117
MERGE (comp:Company {name: 'DFCC Bank'}) ON CREATE SET comp.id = 'dfcc_bank';

// Query 118
MATCH (parent:Company {name: 'DFCC Bank'}), (child:Company {name: 'Nation Lanka Finance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 1.86, r.as_of = date('2024-06-30');

// Query 119
MERGE (comp:Company {name: 'Ceyoka'}) ON CREATE SET comp.id = 'ceyoka';

// Query 120
MATCH (parent:Company {name: 'Ceyoka'}), (child:Company {name: 'Nation Lanka Finance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 1.54, r.as_of = date('2024-06-30');

// Query 121
MERGE (comp:Company {name: 'Central Investments & Finance'}) ON CREATE SET comp.id = 'central_investments_and_finance';

// Query 122
MATCH (parent:Company {name: 'Central Investments & Finance'}), (child:Company {name: 'Nation Lanka Finance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 0.38, r.as_of = date('2024-06-30');

// Query 123
MERGE (comp:Company {name: 'Hatton National Bank'}) ON CREATE SET comp.id = 'hatton_national_bank';

// Query 124
MATCH (parent:Company {name: 'Hatton National Bank'}), (child:Company {name: 'Nation Lanka Finance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 0.18, r.as_of = date('2024-06-30');

// Total queries: 124
// Generated on: 2025-10-03T03:27:30.890106
