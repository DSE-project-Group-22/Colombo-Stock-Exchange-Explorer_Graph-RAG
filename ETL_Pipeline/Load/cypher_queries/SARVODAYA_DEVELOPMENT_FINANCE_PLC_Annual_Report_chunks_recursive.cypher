// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Sarvodaya Development Finance'}) ON CREATE SET c.id = 'sarvodaya_development_finance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Deloitte'}) ON CREATE SET a.id = 'deloitte', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (a:Auditor {name: 'Deloitte'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2025, r.period = 'FY 2024/25';

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Channa de Silva'}) ON CREATE SET p.id = 'channa_de_silva';

// Query 8
MERGE (p:Person {name: 'Dhammika Ganegama'}) ON CREATE SET p.id = 'dhammika_ganegama';

// Query 9
MERGE (p:Person {name: 'Amrit CanagaRetna'}) ON CREATE SET p.id = 'amrit_canagaretna';

// Query 10
MERGE (p:Person {name: 'Ramesh Schaffter'}) ON CREATE SET p.id = 'ramesh_schaffter';

// Query 11
MERGE (p:Person {name: 'S Nandhanan Senthilverl'}) ON CREATE SET p.id = 's_nandhanan_senthilverl';

// Query 12
MERGE (p:Person {name: 'Shehara De Silva'}) ON CREATE SET p.id = 'shehara_de_silva';

// Query 13
MERGE (p:Person {name: 'Suranjani Wickremeratne'}) ON CREATE SET p.id = 'suranjani_wickremeratne';

// Query 14
MERGE (p:Person {name: 'Shiromi Patabendige'}) ON CREATE SET p.id = 'shiromi_patabendige';

// Query 15
MERGE (p:Person {name: 'J K D N Pushpakumara'}) ON CREATE SET p.id = 'j_k_d_n_pushpakumara';

// Query 16
// Step 4: HOLDS_POSITION Relationships;

// Query 17
MATCH (p:Person {name: 'Channa de Silva'}), (c:Company {name: 'Sarvodaya Development Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-03-31');

// Query 18
MATCH (p:Person {name: 'Dhammika Ganegama'}), (c:Company {name: 'Sarvodaya Development Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 19
MATCH (p:Person {name: 'Amrit CanagaRetna'}), (c:Company {name: 'Sarvodaya Development Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 20
MATCH (p:Person {name: 'Ramesh Schaffter'}), (c:Company {name: 'Sarvodaya Development Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 21
MATCH (p:Person {name: 'S Nandhanan Senthilverl'}), (c:Company {name: 'Sarvodaya Development Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 22
MATCH (p:Person {name: 'Shehara De Silva'}), (c:Company {name: 'Sarvodaya Development Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 23
MATCH (p:Person {name: 'Suranjani Wickremeratne'}), (c:Company {name: 'Sarvodaya Development Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 24
MATCH (p:Person {name: 'Shiromi Patabendige'}), (c:Company {name: 'Sarvodaya Development Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2025-03-31');

// Query 25
MATCH (p:Person {name: 'J K D N Pushpakumara'}), (c:Company {name: 'Sarvodaya Development Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2025-03-31');

// Query 26
// Step 5: Metrics;

// Query 27
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 36
// Step 6: HAS_METRIC Relationships;

// Query 37
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4374000000.0, r.year = 2025;

// Query 38
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3327000000.0, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2639400000.0, r.year = 2025;

// Query 40
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1779500000.0, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2950000000.0, r.year = 2025;

// Query 42
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2004000000.0, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2511000000.0, r.year = 2025;

// Query 44
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1672000000.0, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 829600000.0, r.year = 2025;

// Query 46
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 409260000.0, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 473800000.0, r.year = 2025;

// Query 48
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 249600000.0, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22541926000.0, r.year = 2025;

// Query 50
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14897848000.0, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3943959000.0, r.year = 2025;

// Query 52
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3570718000.0, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.4114, r.year = 2025;

// Query 54
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.9399, r.year = 2024;

// Query 55
// Step 7: Sectors;

// Query 56
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 57
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 58
// Step 8: IN_SECTOR Relationships;

// Query 59
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 60
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 61
// Step 9: Products;

// Query 62
MERGE (p:Product {name: 'Agricultural Leasing'}) ON CREATE SET p.id = 'agricultural_leasing';

// Query 63
MERGE (p:Product {name: 'Gold Loans'}) ON CREATE SET p.id = 'gold_loans';

// Query 64
MERGE (p:Product {name: 'Loans'}) ON CREATE SET p.id = 'loans';

// Query 65
MERGE (p:Product {name: 'Lease Rentals'}) ON CREATE SET p.id = 'lease_rentals';

// Query 66
MERGE (p:Product {name: 'Deposits'}) ON CREATE SET p.id = 'deposits';

// Query 67
// Step 10: OFFERS Relationships;

// Query 68
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (p:Product {name: 'Agricultural Leasing'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (p:Product {name: 'Gold Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (p:Product {name: 'Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (p:Product {name: 'Lease Rentals'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Sarvodaya Development Finance'}), (p:Product {name: 'Deposits'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 72
// Generated on: 2025-10-03T00:14:42.129347
