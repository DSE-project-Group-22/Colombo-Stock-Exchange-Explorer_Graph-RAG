// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Standard Capital'}) ON CREATE SET c.id = 'standard_capital', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('1982-06-09');

// Query 3
// Step 2: Auditor - Skipped as 'Sarma & Co.' is not in the hardcoded list of auditing firms.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'W.I. Arambage'}) ON CREATE SET p.id = 'w_i_arambage';

// Query 6
MERGE (p:Person {name: 'S. Kader'}) ON CREATE SET p.id = 's_kader';

// Query 7
MERGE (p:Person {name: 'R.M.N.B. Rathnasinghe'}) ON CREATE SET p.id = 'r_m_n_b_rathnasinghe';

// Query 8
MERGE (p:Person {name: 'A.M.A. Carder'}) ON CREATE SET p.id = 'a_m_a_carder';

// Query 9
MERGE (p:Person {name: 'V. C. Velivitiya'}) ON CREATE SET p.id = 'v_c_velivitiya';

// Query 10
// Step 4: HOLDS_POSITION Relationships;

// Query 11
MATCH (p:Person {name: 'W.I. Arambage'}), (c:Company {name: 'Standard Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-08-22');

// Query 12
MATCH (p:Person {name: 'S. Kader'}), (c:Company {name: 'Standard Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-08-22');

// Query 13
MATCH (p:Person {name: 'R.M.N.B. Rathnasinghe'}), (c:Company {name: 'Standard Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-08-22');

// Query 14
MATCH (p:Person {name: 'A.M.A. Carder'}), (c:Company {name: 'Standard Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-08-22');

// Query 15
MATCH (p:Person {name: 'V. C. Velivitiya'}), (c:Company {name: 'Standard Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-08-22');

// Query 16
// Step 5: Metrics;

// Query 17
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 18
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 19
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Net Assets per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs';

// Query 25
// Step 6: HAS_METRIC Relationships;

// Query 26
MATCH (c:Company {name: 'Standard Capital'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2185840.0, r.year = 2024;

// Query 27
MATCH (c:Company {name: 'Standard Capital'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1415796.0, r.year = 2024;

// Query 28
MATCH (c:Company {name: 'Standard Capital'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -7557322.0, r.year = 2024;

// Query 29
MATCH (c:Company {name: 'Standard Capital'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 66716673.0, r.year = 2023;

// Query 30
MATCH (c:Company {name: 'Standard Capital'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -7557322.0, r.year = 2024;

// Query 31
MATCH (c:Company {name: 'Standard Capital'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 66716673.0, r.year = 2023;

// Query 32
MATCH (c:Company {name: 'Standard Capital'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 365005775.0, r.year = 2024;

// Query 33
MATCH (c:Company {name: 'Standard Capital'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 318356962.0, r.year = 2023;

// Query 34
MATCH (c:Company {name: 'Standard Capital'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 223141147.0, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Standard Capital'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 172274482.0, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Standard Capital'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.35, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Standard Capital'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.88, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Standard Capital'}), (m:Metric {name: 'Net Assets per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33.94, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Standard Capital'}), (m:Metric {name: 'Net Assets per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31.09, r.year = 2023;

// Query 40
// Step 7: Sectors;

// Query 41
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 42
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 43
// Step 8: IN_SECTOR Relationships;

// Query 44
MATCH (c:Company {name: 'Standard Capital'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 45
MATCH (c:Company {name: 'Standard Capital'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 46
// Step 9: Product nodes creation - Skipped as no explicit products/services are mentioned.;

// Query 47
// Step 10: OFFERS relationships - Skipped as no explicit products/services are mentioned.;

// Query 48
// Step 11: Company-Company Relationships (OWNS);

// Query 49
MERGE (owner1:Company {name: 'Gulf East Finance'}) ON CREATE SET owner1.id = 'gulf_east_finance';

// Query 50
MERGE (owner2:Company {name: 'Standard Industries'}) ON CREATE SET owner2.id = 'standard_industries';

// Query 51
MERGE (owner3:Company {name: 'Eastern Ocean Investments'}) ON CREATE SET owner3.id = 'eastern_ocean_investments';

// Query 52
MERGE (owner4:Company {name: 'Best Real Invest Co Services'}) ON CREATE SET owner4.id = 'best_real_invest_co_services';

// Query 53
MERGE (owner5:Company {name: 'Standard Chemical Corporation'}) ON CREATE SET owner5.id = 'standard_chemical_corporation';

// Query 54
MERGE (owner6:Company {name: 'Amina Investments'}) ON CREATE SET owner6.id = 'amina_investments';

// Query 55
MERGE (owner7:Company {name: 'First Capital Markets'}) ON CREATE SET owner7.id = 'first_capital_markets';

// Query 56
MATCH (owner:Company {name: 'Gulf East Finance'}), (child:Company {name: 'Standard Capital'}) MERGE (owner)-[r:OWNS]->(child) ON CREATE SET r.pct = 31.76, r.as_of = date('2024-06-30');

// Query 57
MATCH (owner:Company {name: 'Standard Industries'}), (child:Company {name: 'Standard Capital'}) MERGE (owner)-[r:OWNS]->(child) ON CREATE SET r.pct = 29.83, r.as_of = date('2024-06-30');

// Query 58
MATCH (owner:Company {name: 'Eastern Ocean Investments'}), (child:Company {name: 'Standard Capital'}) MERGE (owner)-[r:OWNS]->(child) ON CREATE SET r.pct = 9.55, r.as_of = date('2024-06-30');

// Query 59
MATCH (owner:Company {name: 'Best Real Invest Co Services'}), (child:Company {name: 'Standard Capital'}) MERGE (owner)-[r:OWNS]->(child) ON CREATE SET r.pct = 5.30, r.as_of = date('2024-06-30');

// Query 60
MATCH (owner:Company {name: 'Standard Chemical Corporation'}), (child:Company {name: 'Standard Capital'}) MERGE (owner)-[r:OWNS]->(child) ON CREATE SET r.pct = 4.87, r.as_of = date('2024-06-30');

// Query 61
MATCH (owner:Company {name: 'Amina Investments'}), (child:Company {name: 'Standard Capital'}) MERGE (owner)-[r:OWNS]->(child) ON CREATE SET r.pct = 3.67, r.as_of = date('2024-06-30');

// Query 62
MATCH (owner:Company {name: 'First Capital Markets'}), (child:Company {name: 'Standard Capital'}) MERGE (owner)-[r:OWNS]->(child) ON CREATE SET r.pct = 0.64, r.as_of = date('2024-06-30');

// Total queries: 62
// Generated on: 2025-10-02T23:23:03.116790
