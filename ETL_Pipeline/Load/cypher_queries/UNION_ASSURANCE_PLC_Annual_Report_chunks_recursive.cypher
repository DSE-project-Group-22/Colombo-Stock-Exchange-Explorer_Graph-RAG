// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Union Assurance'}) ON CREATE SET c.id = 'union_assurance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Union Assurance'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Krishan Balendra'}) ON CREATE SET p.id = 'krishan_balendra';

// Query 8
MERGE (p:Person {name: 'Suresh Rajendra'}) ON CREATE SET p.id = 'suresh_rajendra';

// Query 9
MERGE (p:Person {name: 'Stephen Anthony Appleyard'}) ON CREATE SET p.id = 'stephen_anthony_appleyard';

// Query 10
MERGE (p:Person {name: 'Pasan Wanigasekara'}) ON CREATE SET p.id = 'pasan_wanigasekara';

// Query 11
MERGE (p:Person {name: 'Senath Jayatilake'}) ON CREATE SET p.id = 'senath_jayatilake';

// Query 12
MERGE (p:Person {name: 'Harsha Senanayake'}) ON CREATE SET p.id = 'harsha_senanayake';

// Query 13
MERGE (p:Person {name: 'Nisansala Paranayapa'}) ON CREATE SET p.id = 'nisansala_paranayapa';

// Query 14
MERGE (p:Person {name: 'Rumesh Modarage'}) ON CREATE SET p.id = 'rumesh_modarage';

// Query 15
MERGE (p:Person {name: 'Himani Weerasekera'}) ON CREATE SET p.id = 'himani_weerasekera';

// Query 16
MERGE (p:Person {name: 'D P Gamlath'}) ON CREATE SET p.id = 'd_p_gamlath';

// Query 17
// Step 4: HOLDS_POSITION Relationships;

// Query 18
MATCH (p:Person {name: 'Krishan Balendra'}), (c:Company {name: 'Union Assurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 19
MATCH (p:Person {name: 'Suresh Rajendra'}), (c:Company {name: 'Union Assurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 20
MATCH (p:Person {name: 'Stephen Anthony Appleyard'}), (c:Company {name: 'Union Assurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 21
MATCH (p:Person {name: 'Pasan Wanigasekara'}), (c:Company {name: 'Union Assurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 22
MATCH (p:Person {name: 'Senath Jayatilake'}), (c:Company {name: 'Union Assurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-12-31');

// Query 23
MATCH (p:Person {name: 'Harsha Senanayake'}), (c:Company {name: 'Union Assurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Information Officer', r.as_of = date('2024-12-31');

// Query 24
MATCH (p:Person {name: 'Nisansala Paranayapa'}), (c:Company {name: 'Union Assurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief People Officer', r.as_of = date('2024-12-31');

// Query 25
MATCH (p:Person {name: 'Rumesh Modarage'}), (c:Company {name: 'Union Assurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Operating Officer', r.as_of = date('2024-12-31');

// Query 26
MATCH (p:Person {name: 'Himani Weerasekera'}), (c:Company {name: 'Union Assurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-12-31');

// Query 27
MATCH (p:Person {name: 'D P Gamlath'}), (c:Company {name: 'Union Assurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 28
// Step 5: Metrics;

// Query 29
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Retained Earnings'}) ON CREATE SET m.id = 'retained_earnings', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 35
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Capital Adequacy Ratio'}) ON CREATE SET m.id = 'capital_adequacy_ratio', m.unit = '%';

// Query 38
// Step 6: HAS_METRIC Relationships;

// Query 39
MATCH (c:Company {name: 'Union Assurance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21647000000.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Union Assurance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4891000000.0, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Union Assurance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5228000000.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Union Assurance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3741000000.0, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Union Assurance'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12398000000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Union Assurance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.0, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Union Assurance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 109459000000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Union Assurance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23668000000.0, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Union Assurance'}), (m:Metric {name: 'Capital Adequacy Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 264.0, r.year = 2024;

// Query 48
// Step 7: Sectors;

// Query 49
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 50
// Step 8: IN_SECTOR Relationships;

// Query 51
MATCH (c:Company {name: 'Union Assurance'}), (s:Sector {name: 'Insurance'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 52
// Step 9: Products;

// Query 53
MERGE (p:Product {name: 'Union Advantage'}) ON CREATE SET p.id = 'union_advantage';

// Query 54
MERGE (p:Product {name: 'Union Health Deposit'}) ON CREATE SET p.id = 'union_health_deposit';

// Query 55
MERGE (p:Product {name: 'Union Advantage Single Premium'}) ON CREATE SET p.id = 'union_advantage_single_premium';

// Query 56
MERGE (p:Product {name: 'Union Advantage Starter'}) ON CREATE SET p.id = 'union_advantage_starter';

// Query 57
MERGE (p:Product {name: 'Union Smart Investor'}) ON CREATE SET p.id = 'union_smart_investor';

// Query 58
MERGE (p:Product {name: 'Union Life Plus Smart Wealth Builder'}) ON CREATE SET p.id = 'union_life_plus_smart_wealth_builder';

// Query 59
MERGE (p:Product {name: 'Union Sasirimaga'}) ON CREATE SET p.id = 'union_sasirimaga';

// Query 60
MERGE (p:Product {name: 'Union Super Investor'}) ON CREATE SET p.id = 'union_super_investor';

// Query 61
MERGE (p:Product {name: 'Union Pension Advantage'}) ON CREATE SET p.id = 'union_pension_advantage';

// Query 62
MERGE (p:Product {name: 'Union Sisumage Plus'}) ON CREATE SET p.id = 'union_sisumage_plus';

// Query 63
MERGE (p:Product {name: 'Union Smart Life'}) ON CREATE SET p.id = 'union_smart_life';

// Query 64
// Step 10: OFFERS Relationships;

// Query 65
MATCH (c:Company {name: 'Union Assurance'}), (p:Product {name: 'Union Advantage'}) MERGE (c)-[:OFFERS]->(p);

// Query 66
MATCH (c:Company {name: 'Union Assurance'}), (p:Product {name: 'Union Health Deposit'}) MERGE (c)-[:OFFERS]->(p);

// Query 67
MATCH (c:Company {name: 'Union Assurance'}), (p:Product {name: 'Union Advantage Single Premium'}) MERGE (c)-[:OFFERS]->(p);

// Query 68
MATCH (c:Company {name: 'Union Assurance'}), (p:Product {name: 'Union Advantage Starter'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Union Assurance'}), (p:Product {name: 'Union Smart Investor'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'Union Assurance'}), (p:Product {name: 'Union Life Plus Smart Wealth Builder'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Union Assurance'}), (p:Product {name: 'Union Sasirimaga'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Union Assurance'}), (p:Product {name: 'Union Super Investor'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'Union Assurance'}), (p:Product {name: 'Union Pension Advantage'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'Union Assurance'}), (p:Product {name: 'Union Sisumage Plus'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'Union Assurance'}), (p:Product {name: 'Union Smart Life'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
// Step 11: Company-Company Relationships (OWNS);

// Query 77
MERGE (parent:Company {name: 'John Keells Holdings'}) ON CREATE SET parent.id = 'john_keells_holdings';

// Query 78
MATCH (parent:Company {name: 'John Keells Holdings'}), (child:Company {name: 'Union Assurance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 90.0, r.as_of = date('2024-12-31');

// Total queries: 78
// Generated on: 2025-10-02T23:13:19.333868
