// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Colombo Fort Investments'}) ON CREATE SET c.id = 'colombo_fort_investments', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('2007-12-13');

// Query 3
// Step 2: Auditor - Skipped as 'V.S. & Associates' is not in the hardcoded list of auditing firms.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 6
MERGE (p:Person {name: 'S. Shanmugalingam'}) ON CREATE SET p.id = 's_shanmugalingam';

// Query 7
MERGE (p:Person {name: 'A. M. de S. Jayaratne'}) ON CREATE SET p.id = 'a_m_de_s_jayaratne';

// Query 8
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 9
MERGE (p:Person {name: 'J. M. Swaminathan'}) ON CREATE SET p.id = 'j_m_swaminathan';

// Query 10
MERGE (p:Person {name: 'Amrit Rajaratnam'}) ON CREATE SET p.id = 'amrit_rajaratnam';

// Query 11
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 12
MERGE (p:Person {name: 'P. M. A. Sirimane'}) ON CREATE SET p.id = 'p_m_a_sirimane';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'Colombo Fort Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'S. Shanmugalingam'}), (c:Company {name: 'Colombo Fort Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'A. M. de S. Jayaratne'}), (c:Company {name: 'Colombo Fort Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'S. Rajaratnam'}), (c:Company {name: 'Colombo Fort Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'J. M. Swaminathan'}), (c:Company {name: 'Colombo Fort Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'Amrit Rajaratnam'}), (c:Company {name: 'Colombo Fort Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'Anushman Rajaratnam'}), (c:Company {name: 'Colombo Fort Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'P. M. A. Sirimane'}), (c:Company {name: 'Colombo Fort Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
// Step 5: Metrics;

// Query 23
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 29
// Step 6: HAS_METRIC Relationships;

// Query 30
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 70300000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 31
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50800000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 32
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 41227000.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 33
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17222000.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 34
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12515000.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 35
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50804000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 36
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 85034000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 37
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 54531000.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 38
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 112676000.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 39
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2777000.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 40
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50486000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 41
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 83281000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 42
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50856000.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 43
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 111305000.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 44
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1666000.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 45
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2055229000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 46
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790322000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 47
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1123370000.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 48
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1328426000.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 49
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 613743000.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 50
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2056023000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 51
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1791104000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 52
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1143804000.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 53
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1349275000.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 54
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 639727000.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 55
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.75, r.year = 2024, r.as_of = date('2024-03-31');

// Query 56
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.87, r.year = 2023, r.as_of = date('2023-03-31');

// Query 57
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.02, r.year = 2022, r.as_of = date('2022-03-31');

// Query 58
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.86, r.year = 2021, r.as_of = date('2021-03-31');

// Query 59
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.24, r.year = 2020, r.as_of = date('2020-03-31');

// Query 60
MERGE (m:Metric {name: 'Net Asset Per Share'}) ON CREATE SET m.id = 'net_asset_per_share', m.unit = 'Rs';

// Query 61
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Net Asset Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 233.89, r.year = 2024, r.as_of = date('2024-03-31');

// Query 62
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Net Asset Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 203.75, r.year = 2023, r.as_of = date('2023-03-31');

// Query 63
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Net Asset Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 155.13, r.year = 2022, r.as_of = date('2022-03-31');

// Query 64
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Net Asset Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 189.25, r.year = 2021, r.as_of = date('2021-03-31');

// Query 65
MATCH (c:Company {name: 'Colombo Fort Investments'}), (m:Metric {name: 'Net Asset Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 88.82, r.year = 2020, r.as_of = date('2020-03-31');

// Query 66
// Step 7: Sectors;

// Query 67
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 68
// Step 8: IN_SECTOR Relationships;

// Query 69
MATCH (c:Company {name: 'Colombo Fort Investments'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 70
// Step 9: Products/Services;

// Query 71
MERGE (p:Product {name: 'Investment Services'}) ON CREATE SET p.id = 'investment_services';

// Query 72
// Step 10: OFFERS Relationships;

// Query 73
MATCH (c:Company {name: 'Colombo Fort Investments'}), (p:Product {name: 'Investment Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
// Step 11: Company-Company Relationships (OWNS, MANAGES);

// Query 75
// OWNS relationships skipped due to lack of explicit ownership percentages.;

// Query 76
MERGE (m:Company {name: 'Corporate Managers & Secretaries'}) ON CREATE SET m.id = 'corporate_managers_and_secretaries';

// Query 77
MATCH (manager:Company {name: 'Corporate Managers & Secretaries'}), (managed:Company {name: 'Colombo Fort Investments'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Secretarial and Accounting Services', r.as_of = date('2024-03-31');

// Total queries: 77
// Generated on: 2025-10-03T01:30:03.615696
