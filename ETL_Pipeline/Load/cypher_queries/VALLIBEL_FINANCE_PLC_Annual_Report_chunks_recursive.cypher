// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Vallibel Finance'}) ON CREATE SET c.id = 'vallibel_finance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No auditor name explicitly found in the provided text, skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'S B Rangamuwa'}) ON CREATE SET p.id = 's_b_rangamuwa';

// Query 6
MERGE (p:Person {name: 'S S Weerabahu'}) ON CREATE SET p.id = 's_s_weerabahu';

// Query 7
MERGE (p:Person {name: 'K D A Perera'}) ON CREATE SET p.id = 'k_d_a_perera';

// Query 8
MERGE (p:Person {name: 'J Kumarasinghe'}) ON CREATE SET p.id = 'j_kumarasinghe';

// Query 9
MERGE (p:Person {name: 'C P Malalgoda'}) ON CREATE SET p.id = 'c_p_malalgoda';

// Query 10
MERGE (p:Person {name: 'M A K B Dodamgoda'}) ON CREATE SET p.id = 'm_a_k_b_dodamgoda';

// Query 11
MERGE (p:Person {name: 'R S Dahanayake'}) ON CREATE SET p.id = 'r_s_dahanayake';

// Query 12
// Step 4: HOLDS_POSITION Relationships;

// Query 13
MATCH (p:Person {name: 'S B Rangamuwa'}), (c:Company {name: 'Vallibel Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2007-03-14');

// Query 14
MATCH (p:Person {name: 'S B Rangamuwa'}), (c:Company {name: 'Vallibel Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2025-03-31');

// Query 15
MATCH (p:Person {name: 'S S Weerabahu'}), (c:Company {name: 'Vallibel Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2019-12-19');

// Query 16
MATCH (p:Person {name: 'K D A Perera'}), (c:Company {name: 'Vallibel Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2023-09-06');

// Query 17
MATCH (p:Person {name: 'J Kumarasinghe'}), (c:Company {name: 'Vallibel Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-09-23');

// Query 18
MATCH (p:Person {name: 'C P Malalgoda'}), (c:Company {name: 'Vallibel Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2021-12-01');

// Query 19
MATCH (p:Person {name: 'M A K B Dodamgoda'}), (c:Company {name: 'Vallibel Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-09-05');

// Query 20
MATCH (p:Person {name: 'R S Dahanayake'}), (c:Company {name: 'Vallibel Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-08-23');

// Query 21
// Step 5: Metrics;

// Query 22
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 31
// Step 6: HAS_METRIC Relationships;

// Query 32
MATCH (c:Company {name: 'Vallibel Finance'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19200595000.0, r.year = 2025;

// Query 33
MATCH (c:Company {name: 'Vallibel Finance'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20029639000.0, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'Vallibel Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8117491000.0, r.year = 2025;

// Query 35
MATCH (c:Company {name: 'Vallibel Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7006612000.0, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Vallibel Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10404193000.0, r.year = 2025;

// Query 37
MATCH (c:Company {name: 'Vallibel Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8664615000.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Vallibel Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5557895000.0, r.year = 2025;

// Query 39
MATCH (c:Company {name: 'Vallibel Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4644589000.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Vallibel Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2629498000.0, r.year = 2025;

// Query 41
MATCH (c:Company {name: 'Vallibel Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2141553000.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Vallibel Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 111682578000.0, r.year = 2025;

// Query 43
MATCH (c:Company {name: 'Vallibel Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93167550000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Vallibel Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15124084000.0, r.year = 2025;

// Query 45
MATCH (c:Company {name: 'Vallibel Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12973793000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Vallibel Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.17, r.year = 2025;

// Query 47
MATCH (c:Company {name: 'Vallibel Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.10, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Vallibel Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18.72, r.year = 2025;

// Query 49
MATCH (c:Company {name: 'Vallibel Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.80, r.year = 2024;

// Query 50
// Step 7: Sectors;

// Query 51
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 52
// Step 8: IN_SECTOR Relationships;

// Query 53
MATCH (c:Company {name: 'Vallibel Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 54
// Step 9: Products;

// Query 55
MERGE (p:Product {name: 'Finance Leases'}) ON CREATE SET p.id = 'finance_leases';

// Query 56
MERGE (p:Product {name: 'Hire Purchase'}) ON CREATE SET p.id = 'hire_purchase';

// Query 57
MERGE (p:Product {name: 'Vehicle Loans'}) ON CREATE SET p.id = 'vehicle_loans';

// Query 58
MERGE (p:Product {name: 'Mortgage Loans'}) ON CREATE SET p.id = 'mortgage_loans';

// Query 59
MERGE (p:Product {name: 'Gold Loans'}) ON CREATE SET p.id = 'gold_loans';

// Query 60
MERGE (p:Product {name: 'Personal Loans'}) ON CREATE SET p.id = 'personal_loans';

// Query 61
MERGE (p:Product {name: 'Deposits'}) ON CREATE SET p.id = 'deposits';

// Query 62
// Step 10: OFFERS Relationships;

// Query 63
MATCH (c:Company {name: 'Vallibel Finance'}), (p:Product {name: 'Finance Leases'}) MERGE (c)-[:OFFERS]->(p);

// Query 64
MATCH (c:Company {name: 'Vallibel Finance'}), (p:Product {name: 'Hire Purchase'}) MERGE (c)-[:OFFERS]->(p);

// Query 65
MATCH (c:Company {name: 'Vallibel Finance'}), (p:Product {name: 'Vehicle Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 66
MATCH (c:Company {name: 'Vallibel Finance'}), (p:Product {name: 'Mortgage Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 67
MATCH (c:Company {name: 'Vallibel Finance'}), (p:Product {name: 'Gold Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 68
MATCH (c:Company {name: 'Vallibel Finance'}), (p:Product {name: 'Personal Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Vallibel Finance'}), (p:Product {name: 'Deposits'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
// Step 11: Company-Company relationships (OWNS, MANAGES) - No valid relationships found due to missing explicit ownership percentage or ambiguous management context, skipping.;

// Total queries: 70
// Generated on: 2025-10-03T03:32:57.264505
