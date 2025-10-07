// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Lee Hedges'}) ON CREATE SET c.id = 'lee_hedges', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Lee Hedges'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'S. R. Vamadevan'}) ON CREATE SET p.id = 's_r_vamadevan';

// Query 8
MERGE (p:Person {name: 'S. M. N. L. Senanayake'}) ON CREATE SET p.id = 's_m_n_l_senanayake';

// Query 9
MERGE (p:Person {name: 'D. S. L. P. Wijesinghe'}) ON CREATE SET p.id = 'd_s_l_p_wijesinghe';

// Query 10
MERGE (p:Person {name: 'W. M. P. Walisundara'}) ON CREATE SET p.id = 'w_m_p_walisundara';

// Query 11
MERGE (p:Person {name: 'S. S. Vamathevan'}) ON CREATE SET p.id = 's_s_vamathevan';

// Query 12
MERGE (p:Person {name: 'R. R. Spencer'}) ON CREATE SET p.id = 'r_r_spencer';

// Query 13
MERGE (p:Person {name: 'V. V. Vamathevan'}) ON CREATE SET p.id = 'v_v_vamathevan';

// Query 14
// Step 4: HOLDS_POSITION Relationships;

// Query 15
MATCH (p:Person {name: 'S. R. Vamadevan'}), (c:Company {name: 'Lee Hedges'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'S. R. Vamadevan'}), (c:Company {name: 'Lee Hedges'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'S. M. N. L. Senanayake'}), (c:Company {name: 'Lee Hedges'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-12-01');

// Query 18
MATCH (p:Person {name: 'D. S. L. P. Wijesinghe'}), (c:Company {name: 'Lee Hedges'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'W. M. P. Walisundara'}), (c:Company {name: 'Lee Hedges'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'S. S. Vamathevan'}), (c:Company {name: 'Lee Hedges'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'R. R. Spencer'}), (c:Company {name: 'Lee Hedges'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'V. V. Vamathevan'}), (c:Company {name: 'Lee Hedges'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
// Step 5: Metrics;

// Query 24
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Net Debt to Equity Ratio'}) ON CREATE SET m.id = 'net_debt_to_equity_ratio', m.unit = 'Ratio';

// Query 30
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Dividend per ordinary share'}) ON CREATE SET m.id = 'dividend_per_ordinary_share', m.unit = 'Rs';

// Query 32
// Step 6: HAS_METRIC Relationships;

// Query 33
MATCH (c:Company {name: 'Lee Hedges'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 195413000.0, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'Lee Hedges'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 457822000.0, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Lee Hedges'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 264334000.0, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Lee Hedges'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7102600000.0, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Lee Hedges'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5780695000.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Lee Hedges'}), (m:Metric {name: 'Net Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.17, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Lee Hedges'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.32, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Lee Hedges'}), (m:Metric {name: 'Dividend per ordinary share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.50, r.year = 2024;

// Query 41
// Step 7: Sectors;

// Query 42
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 43
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 44
// Step 8: IN_SECTOR Relationships;

// Query 45
MATCH (c:Company {name: 'Lee Hedges'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 46
MATCH (c:Company {name: 'Lee Hedges'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 47
// Step 9: Products;

// Query 48
MERGE (p:Product {name: 'Property Rental'}) ON CREATE SET p.id = 'property_rental';

// Query 49
// Step 10: OFFERS Relationships;

// Query 50
MATCH (c:Company {name: 'Lee Hedges'}), (p:Product {name: 'Property Rental'}) MERGE (c)-[:OFFERS]->(p);

// Query 51
// Step 11: Company-Company Relationships;

// Query 52
MERGE (sub:Company {name: 'Lee Hedges Investment'}) ON CREATE SET sub.id = 'lee_hedges_investment';

// Query 53
MATCH (parent:Company {name: 'Lee Hedges'}), (child:Company {name: 'Lee Hedges Investment'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Total queries: 53
// Generated on: 2025-10-02T23:12:17.264822
