// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Bimputh Lanka Investments'}) ON CREATE SET c.id = 'bimputh_lanka_investments', c.founded_on = date('2007-07-27'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor - No matching auditor found in the hardcoded list. Skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'D. D. K. Gamage'}) ON CREATE SET p.id = 'd_d_k_gamage';

// Query 6
MERGE (p:Person {name: 'P. M. D. Weerasinghe'}) ON CREATE SET p.id = 'p_m_d_weerasinghe';

// Query 7
MERGE (p:Person {name: 'S. A. S. Jayasundara'}) ON CREATE SET p.id = 's_a_s_jayasundara';

// Query 8
MERGE (p:Person {name: 'U. Hettiarachchi'}) ON CREATE SET p.id = 'u_hettiarachchi';

// Query 9
MERGE (p:Person {name: 'Heshali Peiris'}) ON CREATE SET p.id = 'heshali_peiris';

// Query 10
MERGE (p:Person {name: 'Mrs. A. Gamage'}) ON CREATE SET p.id = 'mrs_a_gamage';

// Query 11
MERGE (p:Person {name: 'Mr. D.K. Gamage'}) ON CREATE SET p.id = 'mr_d_k_gamage';

// Query 12
MERGE (p:Person {name: 'Miss. P.M.K. Gamage'}) ON CREATE SET p.id = 'miss_p_m_k_gamage';

// Query 13
MERGE (p:Person {name: 'Mr. C.K. Gamage'}) ON CREATE SET p.id = 'mr_c_k_gamage';

// Query 14
MERGE (p:Person {name: 'Mr. U.W.J.P.A. Sumathipala'}) ON CREATE SET p.id = 'mr_u_w_j_p_a_sumathipala';

// Query 15
MERGE (p:Person {name: 'Mr. D.N. Senanayake'}) ON CREATE SET p.id = 'mr_d_n_senanayake';

// Query 16
MERGE (p:Person {name: 'Mr. A. Hoshan'}) ON CREATE SET p.id = 'mr_a_hoshan';

// Query 17
MERGE (p:Person {name: 'Mr. W.A.S.P. De Saram'}) ON CREATE SET p.id = 'mr_w_a_s_p_de_saram';

// Query 18
// Step 4: HOLDS_POSITION Relationships;

// Query 19
MATCH (p:Person {name: 'D. D. K. Gamage'}), (c:Company {name: 'Bimputh Lanka Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 20
MATCH (p:Person {name: 'P. M. D. Weerasinghe'}), (c:Company {name: 'Bimputh Lanka Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 21
MATCH (p:Person {name: 'S. A. S. Jayasundara'}), (c:Company {name: 'Bimputh Lanka Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 22
MATCH (p:Person {name: 'U. Hettiarachchi'}), (c:Company {name: 'Bimputh Lanka Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 23
MATCH (p:Person {name: 'Heshali Peiris'}), (c:Company {name: 'Bimputh Lanka Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-09-30');

// Query 24
// Step 5: Metrics;

// Query 25
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 32
// Step 6: HAS_METRIC Relationships;

// Query 33
MATCH (c:Company {name: 'Bimputh Lanka Investments'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22902051.0, r.year = 2024, r.as_of = date('2024-09-30');

// Query 34
MATCH (c:Company {name: 'Bimputh Lanka Investments'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 121152019.0, r.year = 2023, r.as_of = date('2023-09-30');

// Query 35
MATCH (c:Company {name: 'Bimputh Lanka Investments'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 65034283.0, r.year = 2024, r.as_of = date('2024-09-30');

// Query 36
MATCH (c:Company {name: 'Bimputh Lanka Investments'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 192549764.0, r.year = 2023, r.as_of = date('2023-09-30');

// Query 37
MATCH (c:Company {name: 'Bimputh Lanka Investments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 65034283.0, r.year = 2024, r.as_of = date('2024-09-30');

// Query 38
MATCH (c:Company {name: 'Bimputh Lanka Investments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 192549764.0, r.year = 2023, r.as_of = date('2023-09-30');

// Query 39
MATCH (c:Company {name: 'Bimputh Lanka Investments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 65034283.0, r.year = 2024, r.as_of = date('2024-09-30');

// Query 40
MATCH (c:Company {name: 'Bimputh Lanka Investments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 192549764.0, r.year = 2023, r.as_of = date('2023-09-30');

// Query 41
MATCH (c:Company {name: 'Bimputh Lanka Investments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2444355088.0, r.year = 2024, r.as_of = date('2024-09-30');

// Query 42
MATCH (c:Company {name: 'Bimputh Lanka Investments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2538377068.0, r.year = 2023, r.as_of = date('2023-09-30');

// Query 43
MATCH (c:Company {name: 'Bimputh Lanka Investments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2193006236.0, r.year = 2024, r.as_of = date('2024-09-30');

// Query 44
MATCH (c:Company {name: 'Bimputh Lanka Investments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2099254335.0, r.year = 2023, r.as_of = date('2023-09-30');

// Query 45
MATCH (c:Company {name: 'Bimputh Lanka Investments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.60, r.year = 2024, r.as_of = date('2024-09-30');

// Query 46
MATCH (c:Company {name: 'Bimputh Lanka Investments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.79, r.year = 2023, r.as_of = date('2023-09-30');

// Query 47
// Step 7: Sectors;

// Query 48
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 49
// Step 8: IN_SECTOR Relationships;

// Query 50
MATCH (c:Company {name: 'Bimputh Lanka Investments'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 51
// Step 9: Product nodes creation - No explicit products/services found. Skipping.;

// Query 52
// Step 10: OFFERS relationships - No explicit products/services found. Skipping.;

// Query 53
// Step 11: Company-Company Relationships (OWNS, MANAGES);

// Query 54
MERGE (owner_c1:Company {name: 'Daya Group'}) ON CREATE SET owner_c1.id = 'daya_group';

// Query 55
MERGE (owner_c2:Company {name: 'Olympus Construction'}) ON CREATE SET owner_c2.id = 'olympus_construction';

// Query 56
MERGE (owner_c3:Company {name: 'Daya Apparel Export'}) ON CREATE SET owner_c3.id = 'daya_apparel_export';

// Query 57
MATCH (p:Person {name: 'D. D. K. Gamage'}), (c:Company {name: 'Bimputh Lanka Investments'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 13093336, r.pct = 12.15, r.as_of = date('2024-09-30');

// Query 58
MATCH (p:Person {name: 'Mrs. A. Gamage'}), (c:Company {name: 'Bimputh Lanka Investments'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 13093336, r.pct = 12.15, r.as_of = date('2024-09-30');

// Query 59
MATCH (p:Person {name: 'Mr. D.K. Gamage'}), (c:Company {name: 'Bimputh Lanka Investments'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 13093336, r.pct = 12.15, r.as_of = date('2024-09-30');

// Query 60
MATCH (p:Person {name: 'Miss. P.M.K. Gamage'}), (c:Company {name: 'Bimputh Lanka Investments'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 7951200, r.pct = 7.38, r.as_of = date('2024-09-30');

// Query 61
MATCH (p:Person {name: 'Mr. C.K. Gamage'}), (c:Company {name: 'Bimputh Lanka Investments'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 3697865, r.pct = 3.43, r.as_of = date('2024-09-30');

// Query 62
MATCH (p:Person {name: 'Mr. U.W.J.P.A. Sumathipala'}), (c:Company {name: 'Bimputh Lanka Investments'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 2693335, r.pct = 2.50, r.as_of = date('2024-09-30');

// Query 63
MATCH (p:Person {name: 'Mr. D.N. Senanayake'}), (c:Company {name: 'Bimputh Lanka Investments'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 520000, r.pct = 0.48, r.as_of = date('2024-09-30');

// Query 64
MATCH (p:Person {name: 'Mr. A. Hoshan'}), (c:Company {name: 'Bimputh Lanka Investments'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 500000, r.pct = 0.46, r.as_of = date('2024-09-30');

// Query 65
MATCH (p:Person {name: 'Mr. W.A.S.P. De Saram'}), (c:Company {name: 'Bimputh Lanka Investments'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 381626, r.pct = 0.35, r.as_of = date('2024-09-30');

// Query 66
MATCH (owner_c:Company {name: 'Daya Group'}), (c:Company {name: 'Bimputh Lanka Investments'}) MERGE (owner_c)-[r:OWNS]->(c) ON CREATE SET r.pct = 12.98, r.as_of = date('2024-09-30');

// Query 67
MATCH (owner_c:Company {name: 'Olympus Construction'}), (c:Company {name: 'Bimputh Lanka Investments'}) MERGE (owner_c)-[r:OWNS]->(c) ON CREATE SET r.pct = 12.00, r.as_of = date('2024-09-30');

// Query 68
MATCH (owner_c:Company {name: 'Daya Apparel Export'}), (c:Company {name: 'Bimputh Lanka Investments'}) MERGE (owner_c)-[r:OWNS]->(c) ON CREATE SET r.pct = 8.58, r.as_of = date('2024-09-30');

// Total queries: 68
// Generated on: 2025-10-03T00:38:01.276028
