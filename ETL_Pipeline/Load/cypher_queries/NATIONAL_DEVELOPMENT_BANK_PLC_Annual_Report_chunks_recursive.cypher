// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'National Development Bank'}) ON CREATE SET c.id = 'national_development_bank', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'NDB Capital Holdings'}) ON CREATE SET c.id = 'ndb_capital_holdings';

// Query 4
MERGE (c:Company {name: 'NDB Investment Bank'}) ON CREATE SET c.id = 'ndb_investment_bank';

// Query 5
MERGE (c:Company {name: 'NDB Wealth Management'}) ON CREATE SET c.id = 'ndb_wealth_management';

// Query 6
MERGE (c:Company {name: 'NDB Securities'}) ON CREATE SET c.id = 'ndb_securities';

// Query 7
MERGE (c:Company {name: 'NDB Zephyr Partners'}) ON CREATE SET c.id = 'ndb_zephyr_partners';

// Query 8
MERGE (c:Company {name: 'Development Holdings'}) ON CREATE SET c.id = 'development_holdings';

// Query 9
MERGE (c:Company {name: 'NDB Capital (Bangladesh)'}) ON CREATE SET c.id = 'ndb_capital_bangladesh';

// Query 10
// Step 2: Auditor;

// Query 11
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 12
// Step 3: AUDITED_BY Relationship;

// Query 13
MATCH (c:Company {name: 'National Development Bank'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 14
// Step 4: People - Directors and Executives;

// Query 15
MERGE (p:Person {name: 'Shweta Pandey'}) ON CREATE SET p.id = 'shweta_pandey';

// Query 16
MERGE (p:Person {name: 'Shehani Ranasinghe'}) ON CREATE SET p.id = 'shehani_ranasinghe';

// Query 17
MERGE (p:Person {name: 'Kushan D’Alwis'}) ON CREATE SET p.id = 'kushan_d_alwis';

// Query 18
MERGE (p:Person {name: 'Sriyan Cooray'}) ON CREATE SET p.id = 'sriyan_cooray';

// Query 19
MERGE (p:Person {name: 'Sujeewa Mudalige'}) ON CREATE SET p.id = 'sujeewa_mudalige';

// Query 20
MERGE (p:Person {name: 'Bernard Sinniah'}) ON CREATE SET p.id = 'bernard_sinniah';

// Query 21
MERGE (p:Person {name: 'Chandima Dilrukshi'}) ON CREATE SET p.id = 'chandima_dilrukshi';

// Query 22
MERGE (p:Person {name: 'Kelum Edirisinghe'}) ON CREATE SET p.id = 'kelum_edirisinghe';

// Query 23
MERGE (p:Person {name: 'Fay Piyachatr Chetnakarnkul'}) ON CREATE SET p.id = 'fay_piyachatr_chetnakarnkul';

// Query 24
MERGE (p:Person {name: 'Kasturi Chellaraja'}) ON CREATE SET p.id = 'kasturi_chellaraja';

// Query 25
MERGE (p:Person {name: 'Hasitha Premaratne'}) ON CREATE SET p.id = 'hasitha_premaratne';

// Query 26
// Step 5: HOLDS_POSITION Relationships;

// Query 27
MATCH (p:Person {name: 'Shweta Pandey'}), (c:Company {name: 'National Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 28
MATCH (p:Person {name: 'Shehani Ranasinghe'}), (c:Company {name: 'National Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2023-04-28');

// Query 29
MATCH (p:Person {name: 'Kushan D’Alwis'}), (c:Company {name: 'National Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 30
MATCH (p:Person {name: 'Sriyan Cooray'}), (c:Company {name: 'National Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 31
MATCH (p:Person {name: 'Sujeewa Mudalige'}), (c:Company {name: 'National Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 32
MATCH (p:Person {name: 'Bernard Sinniah'}), (c:Company {name: 'National Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 33
MATCH (p:Person {name: 'Chandima Dilrukshi'}), (c:Company {name: 'National Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 34
MATCH (p:Person {name: 'Kelum Edirisinghe'}), (c:Company {name: 'National Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-12-31');

// Query 35
MATCH (p:Person {name: 'Fay Piyachatr Chetnakarnkul'}), (c:Company {name: 'National Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 36
MATCH (p:Person {name: 'Kasturi Chellaraja'}), (c:Company {name: 'National Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 37
MATCH (p:Person {name: 'Hasitha Premaratne'}), (c:Company {name: 'National Development Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 38
// Step 6: Metrics;

// Query 39
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 46
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Net Interest Margin'}) ON CREATE SET m.id = 'net_interest_margin', m.unit = '%';

// Query 48
// Step 7: HAS_METRIC Relationships;

// Query 49
MATCH (c:Company {name: 'National Development Bank'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 102204000000.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'National Development Bank'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 134473000000.0, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'National Development Bank'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25691000000.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'National Development Bank'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10904000000.0, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'National Development Bank'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9794000000.0, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'National Development Bank'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5759000000.0, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'National Development Bank'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 803780000000.0, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'National Development Bank'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 786959000000.0, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'National Development Bank'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 82743000000.0, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'National Development Bank'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 74471000000.0, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'National Development Bank'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 34494000000.0, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'National Development Bank'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 32381000000.0, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'National Development Bank'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.46, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'National Development Bank'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.11, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'National Development Bank'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23.57, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'National Development Bank'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.86, r.year = 2023;

// Query 65
MATCH (c:Company {name: 'National Development Bank'}), (m:Metric {name: 'Net Interest Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.34, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'National Development Bank'}), (m:Metric {name: 'Net Interest Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.98, r.year = 2023;

// Query 67
// Step 8: Sectors;

// Query 68
MERGE (s:Sector {name: 'Banks'}) ON CREATE SET s.id = 'banks';

// Query 69
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 70
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 71
// Step 9: IN_SECTOR Relationships;

// Query 72
MATCH (c:Company {name: 'National Development Bank'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 73
MATCH (c:Company {name: 'National Development Bank'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
MATCH (c:Company {name: 'National Development Bank'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 75
// Step 10: Products;

// Query 76
MERGE (p:Product {name: 'Unit Trust Investments'}) ON CREATE SET p.id = 'unit_trust_investments';

// Query 77
MERGE (p:Product {name: 'Investment Banking Services'}) ON CREATE SET p.id = 'investment_banking_services';

// Query 78
MERGE (p:Product {name: 'Mergers and Acquisitions Advisory'}) ON CREATE SET p.id = 'mergers_and_acquisitions_advisory';

// Query 79
MERGE (p:Product {name: 'Transaction Advisory Services'}) ON CREATE SET p.id = 'transaction_advisory_services';

// Query 80
MERGE (p:Product {name: 'NEOS Digital Banking Platform'}) ON CREATE SET p.id = 'neos_digital_banking_platform';

// Query 81
MERGE (p:Product {name: 'Loan Origination System'}) ON CREATE SET p.id = 'loan_origination_system';

// Query 82
MERGE (p:Product {name: 'NDB PIXEL'}) ON CREATE SET p.id = 'ndb_pixel';

// Query 83
MERGE (p:Product {name: 'Privilege Junior Savings'}) ON CREATE SET p.id = 'privilege_junior_savings';

// Query 84
MERGE (p:Product {name: 'Trade Financing'}) ON CREATE SET p.id = 'trade_financing';

// Query 85
MERGE (p:Product {name: 'Cash Management Services'}) ON CREATE SET p.id = 'cash_management_services';

// Query 86
// Step 11: OFFERS Relationships;

// Query 87
MATCH (c:Company {name: 'National Development Bank'}), (p:Product {name: 'Unit Trust Investments'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'National Development Bank'}), (p:Product {name: 'Investment Banking Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'National Development Bank'}), (p:Product {name: 'Mergers and Acquisitions Advisory'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'National Development Bank'}), (p:Product {name: 'Transaction Advisory Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'National Development Bank'}), (p:Product {name: 'NEOS Digital Banking Platform'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {name: 'National Development Bank'}), (p:Product {name: 'Loan Origination System'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: 'National Development Bank'}), (p:Product {name: 'NDB PIXEL'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: 'National Development Bank'}), (p:Product {name: 'Privilege Junior Savings'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'National Development Bank'}), (p:Product {name: 'Trade Financing'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'National Development Bank'}), (p:Product {name: 'Cash Management Services'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 96
// Generated on: 2025-10-03T00:20:03.095408
