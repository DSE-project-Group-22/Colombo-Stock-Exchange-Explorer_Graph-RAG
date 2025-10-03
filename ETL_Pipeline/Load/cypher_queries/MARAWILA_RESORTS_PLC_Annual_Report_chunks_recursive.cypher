// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Marawila Resorts'}) ON CREATE SET c.id = 'marawila_resorts', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - Not explicitly named in the provided chunks, skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'S.D.R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 6
MERGE (p:Person {name: 'C.P.R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 7
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 8
MERGE (p:Person {name: 'E.P.A. Cooray'}) ON CREATE SET p.id = 'e_p_a_cooray';

// Query 9
MERGE (p:Person {name: 'Amrit Rajaratnam'}) ON CREATE SET p.id = 'amrit_rajaratnam';

// Query 10
MERGE (p:Person {name: 'A.R. Rasiah'}) ON CREATE SET p.id = 'a_r_rasiah';

// Query 11
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 12
// Step 4: HOLDS_POSITION Relationships;

// Query 13
MATCH (p:Person {name: 'S.D.R. Arudpragasam'}), (c:Company {name: 'Marawila Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 14
MATCH (p:Person {name: 'C.P.R. Perera'}), (c:Company {name: 'Marawila Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'S. Rajaratnam'}), (c:Company {name: 'Marawila Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'E.P.A. Cooray'}), (c:Company {name: 'Marawila Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Amrit Rajaratnam'}), (c:Company {name: 'Marawila Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'A.R. Rasiah'}), (c:Company {name: 'Marawila Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'Anushman Rajaratnam'}), (c:Company {name: 'Marawila Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
// Step 5: Metrics;

// Query 21
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 28
MERGE (m:Metric {name: 'Weighted Average Number of Ordinary Shares Outstanding'}) ON CREATE SET m.id = 'weighted_average_number_of_ordinary_shares_outstanding', m.unit = 'Count';

// Query 29
// Step 6: HAS_METRIC Relationships;

// Query 30
MATCH (c:Company {name: 'Marawila Resorts'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 762000000.0, r.year = 2024;

// Query 31
MATCH (c:Company {name: 'Marawila Resorts'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 574000000.0, r.year = 2023;

// Query 32
MATCH (c:Company {name: 'Marawila Resorts'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 59300000.0, r.year = 2024;

// Query 33
MATCH (c:Company {name: 'Marawila Resorts'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -139700000.0, r.year = 2023;

// Query 34
MATCH (c:Company {name: 'Marawila Resorts'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 70000000.0, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Marawila Resorts'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -165000000.0, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Marawila Resorts'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.21, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Marawila Resorts'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.73, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Marawila Resorts'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1227885995.0, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Marawila Resorts'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1398411201.0, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Marawila Resorts'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 875624878.0, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Marawila Resorts'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 564023861.0, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Marawila Resorts'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 136.43, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Marawila Resorts'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 242.29, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Marawila Resorts'}), (m:Metric {name: 'Weighted Average Number of Ordinary Shares Outstanding'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 336984679, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Marawila Resorts'}), (m:Metric {name: 'Weighted Average Number of Ordinary Shares Outstanding'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 228000000, r.year = 2023;

// Query 46
// Step 7: Sectors;

// Query 47
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 48
// Step 8: IN_SECTOR Relationships;

// Query 49
MATCH (c:Company {name: 'Marawila Resorts'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 50
// Step 9: Products;

// Query 51
MERGE (p:Product {name: 'Club Palm Bay'}) ON CREATE SET p.id = 'club_palm_bay';

// Query 52
// Step 10: OFFERS Relationships;

// Query 53
MATCH (c:Company {name: 'Marawila Resorts'}), (p:Product {name: 'Club Palm Bay'}) MERGE (c)-[:OFFERS]->(p);

// Query 54
// Step 11: Company-Company Relationships (OWNS, MANAGES);

// Query 55
// Ownership relationships for Lankem Ceylon PLC and Colombo Fort Land & Building Company PLC are mentioned but no percentage is provided, so skipping as per rules.;

// Total queries: 55
// Generated on: 2025-10-03T02:14:20.012432
