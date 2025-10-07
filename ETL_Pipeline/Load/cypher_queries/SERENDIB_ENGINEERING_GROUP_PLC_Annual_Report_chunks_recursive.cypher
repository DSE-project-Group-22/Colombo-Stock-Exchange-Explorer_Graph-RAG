// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Serendib Engineering Group'}) ON CREATE SET c.id = 'serendib_engineering_group', c.founded_on = date('1992-09-07'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor - No matching auditor found in the hardcoded list. Skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'G. T. Jayaseelan'}) ON CREATE SET p.id = 'g_t_jayaseelan';

// Query 6
MERGE (p:Person {name: 'Santhirasegaram Sivarajah'}) ON CREATE SET p.id = 'santhirasegaram_sivarajah';

// Query 7
MERGE (p:Person {name: 'K. Sivaskantharajah'}) ON CREATE SET p.id = 'k_sivaskantharajah';

// Query 8
MERGE (p:Person {name: 'Saman Sri Lal'}) ON CREATE SET p.id = 'saman_sri_lal';

// Query 9
MERGE (p:Person {name: 'Mrs. A.A. Raaymakers'}) ON CREATE SET p.id = 'mrs_a_a_raaymakers';

// Query 10
MERGE (p:Person {name: 'Mr. M.A.T. Raaymakers'}) ON CREATE SET p.id = 'mr_m_a_t_raaymakers';

// Query 11
MERGE (p:Person {name: 'Mr. H.L. Wijewardena'}) ON CREATE SET p.id = 'mr_h_l_wijewardena';

// Query 12
MERGE (p:Person {name: 'Mr. R.E. Rambukwelle'}) ON CREATE SET p.id = 'mr_r_e_rambukwelle';

// Query 13
MERGE (p:Person {name: 'Mr. H.R. Dinesh'}) ON CREATE SET p.id = 'mr_h_r_dinesh';

// Query 14
MERGE (p:Person {name: 'Mrs H.P Gin'}) ON CREATE SET p.id = 'mrs_h_p_gin';

// Query 15
MERGE (p:Person {name: 'Mrs. W.A.N. Fonseka'}) ON CREATE SET p.id = 'mrs_w_a_n_fonseka';

// Query 16
MERGE (p:Person {name: 'Mr. M.I.M. Anas'}) ON CREATE SET p.id = 'mr_m_i_m_anas';

// Query 17
MERGE (p:Person {name: 'Mr. M.A. Azeez'}) ON CREATE SET p.id = 'mr_m_a_azeez';

// Query 18
MERGE (p:Person {name: 'Riyansi Kenat Dickman'}) ON CREATE SET p.id = 'riyansi_kenat_dickman';

// Query 19
MERGE (p:Person {name: 'H.A.S.P.Kumara'}) ON CREATE SET p.id = 'h_a_s_p_kumara';

// Query 20
MERGE (p:Person {name: 'Ravindra Erle Rambukwelle'}) ON CREATE SET p.id = 'ravindra_erle_rambukwelle';

// Query 21
MERGE (p:Person {name: 'K.W.J.P.L. Perera'}) ON CREATE SET p.id = 'k_w_j_p_l_perera';

// Query 22
MERGE (p:Person {name: 'Ananda Samaranayake'}) ON CREATE SET p.id = 'ananda_samaranayake';

// Query 23
MERGE (p:Person {name: 'M.A.U. Gnanatilake'}) ON CREATE SET p.id = 'm_a_u_gnanatilake';

// Query 24
MERGE (p:Person {name: 'R.G.G. Wijesuriya'}) ON CREATE SET p.id = 'r_g_g_wijesuriya';

// Query 25
MERGE (p:Person {name: 'M.A. Maliyadda'}) ON CREATE SET p.id = 'm_a_maliyadda';

// Query 26
// Step 4: HOLDS_POSITION Relationships;

// Query 27
MATCH (p:Person {name: 'G. T. Jayaseelan'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-09-30');

// Query 28
MATCH (p:Person {name: 'Santhirasegaram Sivarajah'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-08');

// Query 29
MATCH (p:Person {name: 'K. Sivaskantharajah'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-31');

// Query 30
MATCH (p:Person {name: 'Saman Sri Lal'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-31');

// Query 31
// Step 5: Metrics;

// Query 32
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 39
// Step 6: HAS_METRIC Relationships (Group - Audited, Year Ended 31st March 2024);

// Query 40
MATCH (c:Company {name: 'Serendib Engineering Group'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14172000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 41
MATCH (c:Company {name: 'Serendib Engineering Group'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -77832295.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 42
MATCH (c:Company {name: 'Serendib Engineering Group'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -72750002.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 43
MATCH (c:Company {name: 'Serendib Engineering Group'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -61067152.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 44
MATCH (c:Company {name: 'Serendib Engineering Group'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 54810910.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 45
MATCH (c:Company {name: 'Serendib Engineering Group'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -339098970.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 46
// Step 6: HAS_METRIC Relationships (Group - Unaudited, As at 30th September 2024);

// Query 47
MATCH (c:Company {name: 'Serendib Engineering Group'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6040401.0, r.year = 2024, r.as_of = date('2024-09-30');

// Query 48
MATCH (c:Company {name: 'Serendib Engineering Group'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -10578493.0, r.year = 2024, r.as_of = date('2024-09-30');

// Query 49
MATCH (c:Company {name: 'Serendib Engineering Group'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -9688493.0, r.year = 2024, r.as_of = date('2024-09-30');

// Query 50
MATCH (c:Company {name: 'Serendib Engineering Group'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5670646.0, r.year = 2024, r.as_of = date('2024-09-30');

// Query 51
MATCH (c:Company {name: 'Serendib Engineering Group'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31460223.0, r.year = 2024, r.as_of = date('2024-09-30');

// Query 52
MATCH (c:Company {name: 'Serendib Engineering Group'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -362315231.0, r.year = 2024, r.as_of = date('2024-09-30');

// Query 53
MATCH (c:Company {name: 'Serendib Engineering Group'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -10.36, r.year = 2024, r.as_of = date('2024-09-30');

// Query 54
// Step 6: HAS_METRIC Relationships (Company - Audited, Year Ended 31st March 2024);

// Query 55
MATCH (c:Company {name: 'Serendib Engineering Group'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2400000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 56
MATCH (c:Company {name: 'Serendib Engineering Group'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 63.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 57
MATCH (c:Company {name: 'Serendib Engineering Group'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -38480975.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 58
// Step 6: HAS_METRIC Relationships (Company - Unaudited, As at 30th September 2024);

// Query 59
MATCH (c:Company {name: 'Serendib Engineering Group'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1200000.0, r.year = 2024, r.as_of = date('2024-09-30');

// Query 60
MATCH (c:Company {name: 'Serendib Engineering Group'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 63.0, r.year = 2024, r.as_of = date('2024-09-30');

// Query 61
MATCH (c:Company {name: 'Serendib Engineering Group'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -42690201.0, r.year = 2024, r.as_of = date('2024-09-30');

// Query 62
MATCH (c:Company {name: 'Serendib Engineering Group'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.32, r.year = 2024, r.as_of = date('2024-09-30');

// Query 63
// Step 7: Sectors;

// Query 64
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 65
// Step 8: IN_SECTOR Relationships;

// Query 66
MATCH (c:Company {name: 'Serendib Engineering Group'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 67
// Step 9: Product nodes creation (if applicable) - No explicit products/services found. Skipping.;

// Query 68
// Step 10: OFFERS relationships (if applicable) - No explicit products/services found. Skipping.;

// Query 69
// Step 11: Company-Company Relationships (OWNS);

// Query 70
MERGE (owner1:Company {name: 'Serendib Holdings'}) ON CREATE SET owner1.id = 'serendib_holdings';

// Query 71
MERGE (owner2:Company {name: 'Flyasia'}) ON CREATE SET owner2.id = 'flyasia';

// Query 72
MATCH (owner1:Company {name: 'Serendib Holdings'}), (child:Company {name: 'Serendib Engineering Group'}) MERGE (owner1)-[r:OWNS]->(child) ON CREATE SET r.pct = 84.12, r.as_of = date('2024-09-30');

// Query 73
MATCH (owner2:Company {name: 'Flyasia'}), (child:Company {name: 'Serendib Engineering Group'}) MERGE (owner2)-[r:OWNS]->(child) ON CREATE SET r.pct = 3.63, r.as_of = date('2024-09-30');

// Query 74
// Step 12: Person-Company Relationships (OWNS_SHARES);

// Query 75
MATCH (p:Person {name: 'Mrs. A.A. Raaymakers'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.70, r.as_of = date('2024-09-30');

// Query 76
MATCH (p:Person {name: 'Mr. M.A.T. Raaymakers'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.46, r.as_of = date('2024-09-30');

// Query 77
MATCH (p:Person {name: 'Mr. H.L. Wijewardena'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.32, r.as_of = date('2024-09-30');

// Query 78
MATCH (p:Person {name: 'Mr. R.E. Rambukwelle'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.22, r.as_of = date('2024-09-30');

// Query 79
MATCH (p:Person {name: 'Mr. H.R. Dinesh'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.21, r.as_of = date('2024-09-30');

// Query 80
MATCH (p:Person {name: 'Mrs H.P Gin'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.16, r.as_of = date('2024-09-30');

// Query 81
MATCH (p:Person {name: 'Mrs. W.A.N. Fonseka'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.15, r.as_of = date('2024-09-30');

// Query 82
MATCH (p:Person {name: 'Mr. M.I.M. Anas'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.10, r.as_of = date('2024-09-30');

// Query 83
MATCH (p:Person {name: 'Mr. M.A. Azeez'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.09, r.as_of = date('2024-09-30');

// Query 84
MATCH (p:Person {name: 'Riyansi Kenat Dickman'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 1.45, r.as_of = date('2024-09-30');

// Query 85
MATCH (p:Person {name: 'H.A.S.P.Kumara'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.48, r.as_of = date('2024-09-30');

// Query 86
MATCH (p:Person {name: 'Ravindra Erle Rambukwelle'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.47, r.as_of = date('2024-09-30');

// Query 87
MATCH (p:Person {name: 'K.W.J.P.L. Perera'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.39, r.as_of = date('2024-09-30');

// Query 88
MATCH (p:Person {name: 'Ananda Samaranayake'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.15, r.as_of = date('2024-09-30');

// Query 89
MATCH (p:Person {name: 'M.A.U. Gnanatilake'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.10, r.as_of = date('2024-09-30');

// Query 90
MATCH (p:Person {name: 'R.G.G. Wijesuriya'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.09, r.as_of = date('2024-09-30');

// Query 91
MATCH (p:Person {name: 'M.A. Maliyadda'}), (c:Company {name: 'Serendib Engineering Group'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 0.09, r.as_of = date('2024-09-30');

// Total queries: 91
// Generated on: 2025-10-02T22:33:46.283407
