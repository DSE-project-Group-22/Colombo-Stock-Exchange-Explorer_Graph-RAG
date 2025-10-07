// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Lanka Credit and Business Finance'}) ON CREATE SET c.id = 'lanka_credit_and_business_finance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Dushmantha Thotawatte'}) ON CREATE SET p.id = 'dushmantha_thotawatte';

// Query 8
MERGE (p:Person {name: 'Ashvin Welgama Nanayakkara'}) ON CREATE SET p.id = 'ashvin_welgama_nanayakkara';

// Query 9
MERGE (p:Person {name: 'Gayan Kalhara Nanayakkara'}) ON CREATE SET p.id = 'gayan_kalhara_nanayakkara';

// Query 10
MERGE (p:Person {name: 'Ukwatta Kankanamge Harith Ruwan Ranasinghe'}) ON CREATE SET p.id = 'ukwatta_kankanamge_harith_ruwan_ranasinghe';

// Query 11
MERGE (p:Person {name: 'Kandegoda Gamage Leelananda'}) ON CREATE SET p.id = 'kandegoda_gamage_leelananda';

// Query 12
MERGE (p:Person {name: 'Ranjan Lal Masakorala'}) ON CREATE SET p.id = 'ranjan_lal_masakorala';

// Query 13
MERGE (p:Person {name: 'Vijitha Lokunarangoda'}) ON CREATE SET p.id = 'vijitha_lokunarangoda';

// Query 14
MERGE (p:Person {name: 'Kapila Indika Weerasinghe'}) ON CREATE SET p.id = 'kapila_indika_weerasinghe';

// Query 15
MERGE (p:Person {name: 'Maheen Priyantha Ahalapa Gamage'}) ON CREATE SET p.id = 'maheen_priyantha_ahalapa_gamage';

// Query 16
MERGE (p:Person {name: 'Mahesh Katulanda'}) ON CREATE SET p.id = 'mahesh_katulanda';

// Query 17
MERGE (p:Person {name: 'Jayalath Pathiranalage Chandrasiri Jayalath'}) ON CREATE SET p.id = 'jayalath_pathiranalage_chandrasiri_jayalath';

// Query 18
// Step 4: HOLDS_POSITION Relationships;

// Query 19
MATCH (p:Person {name: 'Dushmantha Thotawatte'}), (c:Company {name: 'Lanka Credit and Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'Dushmantha Thotawatte'}), (c:Company {name: 'Lanka Credit and Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Ashvin Welgama Nanayakkara'}), (c:Company {name: 'Lanka Credit and Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Gayan Kalhara Nanayakkara'}), (c:Company {name: 'Lanka Credit and Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Ukwatta Kankanamge Harith Ruwan Ranasinghe'}), (c:Company {name: 'Lanka Credit and Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Kandegoda Gamage Leelananda'}), (c:Company {name: 'Lanka Credit and Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Kandegoda Gamage Leelananda'}), (c:Company {name: 'Lanka Credit and Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'Ranjan Lal Masakorala'}), (c:Company {name: 'Lanka Credit and Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'Vijitha Lokunarangoda'}), (c:Company {name: 'Lanka Credit and Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'Kapila Indika Weerasinghe'}), (c:Company {name: 'Lanka Credit and Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'Maheen Priyantha Ahalapa Gamage'}), (c:Company {name: 'Lanka Credit and Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2023-09-23');

// Query 30
MATCH (p:Person {name: 'Mahesh Katulanda'}), (c:Company {name: 'Lanka Credit and Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'Jayalath Pathiranalage Chandrasiri Jayalath'}), (c:Company {name: 'Lanka Credit and Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 32
// Step 5: Metrics;

// Query 33
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 42
// Step 6: HAS_METRIC Relationships;

// Query 43
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1368715429, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1104019440, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1202448835, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1031981246, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 137557883, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 212553791, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 111093673, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 162770755, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7013430881, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5877500382, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2919497811, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2796190433, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.14, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.21, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 748557162, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 676653295, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.89, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5.94, r.year = 2023;

// Query 61
// Step 7: Sectors;

// Query 62
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 63
// Step 8: IN_SECTOR Relationships;

// Query 64
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 65
// Step 9: Products;

// Query 66
MERGE (p:Product {name: 'Deposits'}) ON CREATE SET p.id = 'deposits';

// Query 67
MERGE (p:Product {name: 'Finance Lease'}) ON CREATE SET p.id = 'finance_lease';

// Query 68
MERGE (p:Product {name: 'Hire Purchase'}) ON CREATE SET p.id = 'hire_purchase';

// Query 69
MERGE (p:Product {name: 'Vehicle Loan Facilities'}) ON CREATE SET p.id = 'vehicle_loan_facilities';

// Query 70
MERGE (p:Product {name: 'Mortgage Loans'}) ON CREATE SET p.id = 'mortgage_loans';

// Query 71
MERGE (p:Product {name: 'Gold Loans'}) ON CREATE SET p.id = 'gold_loans';

// Query 72
MERGE (p:Product {name: 'Revolving Loans'}) ON CREATE SET p.id = 'revolving_loans';

// Query 73
MERGE (p:Product {name: 'Business/Personal Loans'}) ON CREATE SET p.id = 'business_personal_loans';

// Query 74
// Step 10: OFFERS Relationships;

// Query 75
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (p:Product {name: 'Deposits'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (p:Product {name: 'Finance Lease'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (p:Product {name: 'Hire Purchase'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (p:Product {name: 'Vehicle Loan Facilities'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (p:Product {name: 'Mortgage Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (p:Product {name: 'Gold Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (p:Product {name: 'Revolving Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Lanka Credit and Business Finance'}), (p:Product {name: 'Business/Personal Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
// Step 11: Company-Company Relationships (OWNS);

// Query 84
MERGE (parent:Company {name: 'Lanka Credit and Business'}) ON CREATE SET parent.id = 'lanka_credit_and_business', parent.region = 'Sri Lanka';

// Query 85
MATCH (parent:Company {name: 'Lanka Credit and Business'}), (child:Company {name: 'Lanka Credit and Business Finance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 72.0, r.as_of = date('2024-03-31');

// Total queries: 85
// Generated on: 2025-10-03T02:49:01.669416
