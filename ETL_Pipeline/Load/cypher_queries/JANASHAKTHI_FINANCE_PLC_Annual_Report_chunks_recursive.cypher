// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Janashakthi Finance'}) ON CREATE SET c.id = 'janashakthi_finance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No specific auditor firm name found in the document to match hardcoded list.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Rajendra Theagarajah'}) ON CREATE SET p.id = 'rajendra_theagarajah';

// Query 6
MERGE (p:Person {name: 'Sriyan Cooray'}) ON CREATE SET p.id = 'sriyan_cooray';

// Query 7
MERGE (p:Person {name: 'Prakash Schaffter'}) ON CREATE SET p.id = 'prakash_schaffter';

// Query 8
MERGE (p:Person {name: 'Darshana Ratnayake'}) ON CREATE SET p.id = 'darshana_ratnayake';

// Query 9
MERGE (p:Person {name: 'Nalin Karunaratne'}) ON CREATE SET p.id = 'nalin_karunaratne';

// Query 10
MERGE (p:Person {name: 'Manohari P. Abeyesekera'}) ON CREATE SET p.id = 'manohari_p_abeyesekera';

// Query 11
MERGE (p:Person {name: 'Sandamali Chandrasekera'}) ON CREATE SET p.id = 'sandamali_chandrasekera';

// Query 12
MERGE (p:Person {name: 'Daniel N. Alphonsus'}) ON CREATE SET p.id = 'daniel_n_alphonsus';

// Query 13
MERGE (p:Person {name: 'K. M. M. Jabir'}) ON CREATE SET p.id = 'k_m_m_jabir';

// Query 14
// Step 4: HOLDS_POSITION Relationships;

// Query 15
MATCH (p:Person {name: 'Rajendra Theagarajah'}), (c:Company {name: 'Janashakthi Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-03-31');

// Query 16
MATCH (p:Person {name: 'Sriyan Cooray'}), (c:Company {name: 'Janashakthi Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 17
MATCH (p:Person {name: 'Prakash Schaffter'}), (c:Company {name: 'Janashakthi Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 18
MATCH (p:Person {name: 'Darshana Ratnayake'}), (c:Company {name: 'Janashakthi Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 19
MATCH (p:Person {name: 'Nalin Karunaratne'}), (c:Company {name: 'Janashakthi Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 20
MATCH (p:Person {name: 'Manohari P. Abeyesekera'}), (c:Company {name: 'Janashakthi Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 21
MATCH (p:Person {name: 'Sandamali Chandrasekera'}), (c:Company {name: 'Janashakthi Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 22
MATCH (p:Person {name: 'Daniel N. Alphonsus'}), (c:Company {name: 'Janashakthi Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-07-04');

// Query 23
MATCH (p:Person {name: 'K. M. M. Jabir'}), (c:Company {name: 'Janashakthi Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2025-03-31');

// Query 24
// Step 5: Metrics;

// Query 25
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 33
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Times';

// Query 34
// Step 6: HAS_METRIC Relationships;

// Query 35
MATCH (c:Company {name: 'Janashakthi Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 428012000.0, r.year = 2025;

// Query 36
MATCH (c:Company {name: 'Janashakthi Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 349482000.0, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Janashakthi Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 371800000.0, r.year = 2025;

// Query 38
MATCH (c:Company {name: 'Janashakthi Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 348530000.0, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Janashakthi Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4727590000.0, r.year = 2025;

// Query 40
MATCH (c:Company {name: 'Janashakthi Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4868240000.0, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Janashakthi Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2146390000.0, r.year = 2025;

// Query 42
MATCH (c:Company {name: 'Janashakthi Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1794410000.0, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Janashakthi Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3982210000.0, r.year = 2025;

// Query 44
MATCH (c:Company {name: 'Janashakthi Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3602930000.0, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Janashakthi Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27357670000.0, r.year = 2025;

// Query 46
MATCH (c:Company {name: 'Janashakthi Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20477360000.0, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Janashakthi Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.76, r.year = 2025;

// Query 48
MATCH (c:Company {name: 'Janashakthi Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.65, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Janashakthi Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.80, r.year = 2025;

// Query 50
MATCH (c:Company {name: 'Janashakthi Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.13, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Janashakthi Finance'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.65, r.year = 2025;

// Query 52
MATCH (c:Company {name: 'Janashakthi Finance'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.41, r.year = 2024;

// Query 53
// Step 7: Sectors;

// Query 54
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 55
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 56
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 57
MERGE (s:Sector {name: 'Utilities'}) ON CREATE SET s.id = 'utilities';

// Query 58
// Step 8: IN_SECTOR Relationships;

// Query 59
MATCH (c:Company {name: 'Janashakthi Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 60
MATCH (c:Company {name: 'Janashakthi Finance'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 61
MATCH (c:Company {name: 'Janashakthi Finance'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 62
MATCH (c:Company {name: 'Janashakthi Finance'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 63
// Step 9: Product nodes creation;

// Query 64
MERGE (p:Product {name: 'Finance Leases and Hire Purchases'}) ON CREATE SET p.id = 'finance_leases_and_hire_purchases';

// Query 65
MERGE (p:Product {name: 'Loans'}) ON CREATE SET p.id = 'loans';

// Query 66
MERGE (p:Product {name: 'Factoring'}) ON CREATE SET p.id = 'factoring';

// Query 67
MERGE (p:Product {name: 'Gold Loan'}) ON CREATE SET p.id = 'gold_loan';

// Query 68
MERGE (p:Product {name: 'Savings Solutions'}) ON CREATE SET p.id = 'savings_solutions';

// Query 69
MERGE (p:Product {name: 'Lending Solutions'}) ON CREATE SET p.id = 'lending_solutions';

// Query 70
// Step 10: OFFERS relationships;

// Query 71
MATCH (c:Company {name: 'Janashakthi Finance'}), (p:Product {name: 'Finance Leases and Hire Purchases'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Janashakthi Finance'}), (p:Product {name: 'Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'Janashakthi Finance'}), (p:Product {name: 'Factoring'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'Janashakthi Finance'}), (p:Product {name: 'Gold Loan'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'Janashakthi Finance'}), (p:Product {name: 'Savings Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
MATCH (c:Company {name: 'Janashakthi Finance'}), (p:Product {name: 'Lending Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 76
// Generated on: 2025-10-03T01:31:10.913668
