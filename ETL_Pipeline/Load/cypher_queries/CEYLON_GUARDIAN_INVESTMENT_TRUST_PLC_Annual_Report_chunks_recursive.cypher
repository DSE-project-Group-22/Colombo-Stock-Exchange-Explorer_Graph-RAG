// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Ceylon Guardian Investment Trust'}) ON CREATE SET c.id = 'ceylon_guardian_investment_trust', c.founded_on = date('1951-01-01'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor - No explicit auditor name found in the provided text.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'M. A. R. C. Cooray'}) ON CREATE SET p.id = 'm_a_r_c_cooray';

// Query 6
MERGE (p:Person {name: 'D. C. R. Gunawardena'}) ON CREATE SET p.id = 'd_c_r_gunawardena';

// Query 7
MERGE (p:Person {name: 'V. M. Fernando'}) ON CREATE SET p.id = 'v_m_fernando';

// Query 8
MERGE (p:Person {name: 'K. Selvanathan'}) ON CREATE SET p.id = 'k_selvanathan';

// Query 9
MERGE (p:Person {name: 'A. D. Pereira'}) ON CREATE SET p.id = 'a_d_pereira';

// Query 10
MERGE (p:Person {name: 'C. T. Knight'}) ON CREATE SET p.id = 'c_t_knight';

// Query 11
// Step 4: HOLDS_POSITION Relationships;

// Query 12
MATCH (p:Person {name: 'M. A. R. C. Cooray'}), (c:Company {name: 'Ceylon Guardian Investment Trust'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 13
MATCH (p:Person {name: 'M. A. R. C. Cooray'}), (c:Company {name: 'Ceylon Guardian Investment Trust'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 14
MATCH (p:Person {name: 'D. C. R. Gunawardena'}), (c:Company {name: 'Ceylon Guardian Investment Trust'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'V. M. Fernando'}), (c:Company {name: 'Ceylon Guardian Investment Trust'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'K. Selvanathan'}), (c:Company {name: 'Ceylon Guardian Investment Trust'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'A. D. Pereira'}), (c:Company {name: 'Ceylon Guardian Investment Trust'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'C. T. Knight'}), (c:Company {name: 'Ceylon Guardian Investment Trust'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-07-31');

// Query 19
// Step 5: Metrics;

// Query 20
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 24
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 25
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 28
// Step 6: HAS_METRIC Relationships;

// Query 29
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2287656000.0, r.year = 2024;

// Query 30
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1114610000.0, r.year = 2023;

// Query 31
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3670375000.0, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1575783000.0, r.year = 2023;

// Query 33
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3392371000.0, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1428470000.0, r.year = 2023;

// Query 35
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.68, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.44, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.14, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14.67, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 32.31, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.70, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20814675000.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18734602000.0, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26276316000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23053549000.0, r.year = 2023;

// Query 45
// Step 7: Sectors;

// Query 46
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 47
// Step 8: IN_SECTOR Relationships;

// Query 48
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 49
// Step 9: Product nodes creation;

// Query 50
MERGE (p:Product {name: 'Listed Equity Investments'}) ON CREATE SET p.id = 'listed_equity_investments';

// Query 51
MERGE (p:Product {name: 'Private Equity Investments'}) ON CREATE SET p.id = 'private_equity_investments';

// Query 52
MERGE (p:Product {name: 'Fixed Income Investments'}) ON CREATE SET p.id = 'fixed_income_investments';

// Query 53
MERGE (p:Product {name: 'Fund Management'}) ON CREATE SET p.id = 'fund_management';

// Query 54
// Step 10: OFFERS Relationships;

// Query 55
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (p:Product {name: 'Listed Equity Investments'}) MERGE (c)-[:OFFERS]->(p);

// Query 56
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (p:Product {name: 'Private Equity Investments'}) MERGE (c)-[:OFFERS]->(p);

// Query 57
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (p:Product {name: 'Fixed Income Investments'}) MERGE (c)-[:OFFERS]->(p);

// Query 58
MATCH (c:Company {name: 'Ceylon Guardian Investment Trust'}), (p:Product {name: 'Fund Management'}) MERGE (c)-[:OFFERS]->(p);

// Query 59
// Step 11: Company-Company Relationships (OWNS, MANAGES);

// Query 60
MERGE (parent:Company {name: 'Carson Cumberbatch'}) ON CREATE SET parent.id = 'carson_cumberbatch', parent.region = 'Sri Lanka';

// Query 61
MATCH (parent:Company {name: 'Carson Cumberbatch'}), (child:Company {name: 'Ceylon Guardian Investment Trust'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 67.53, r.as_of = date('2024-03-31');

// Query 62
MERGE (m_company:Company {name: 'Guardian Fund Management'}) ON CREATE SET m_company.id = 'guardian_fund_management', m_company.region = 'Sri Lanka';

// Query 63
MATCH (manager:Company {name: 'Guardian Fund Management'}), (managed:Company {name: 'Ceylon Guardian Investment Trust'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Investment Management', r.as_of = date('2024-03-31');

// Query 64
MERGE (m_company:Company {name: 'Carsons Management Services'}) ON CREATE SET m_company.id = 'carsons_management_services', m_company.region = 'Sri Lanka';

// Query 65
MATCH (manager:Company {name: 'Carsons Management Services'}), (managed:Company {name: 'Ceylon Guardian Investment Trust'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Management Support Services', r.as_of = date('2024-03-31');

// Total queries: 65
// Generated on: 2025-10-03T00:03:42.480014
