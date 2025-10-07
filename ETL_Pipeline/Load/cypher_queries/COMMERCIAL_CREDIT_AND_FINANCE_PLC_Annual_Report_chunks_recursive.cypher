// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Commercial Credit and Finance'}) ON CREATE SET c.id = 'commercial_credit_and_finance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No specific auditor firm name found in the provided chunks. Skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'L.L.S. Wickremasinghe'}) ON CREATE SET p.id = 'l_l_s_wickremasinghe';

// Query 6
MERGE (p:Person {name: 'P.S.R. Casie Chitty'}) ON CREATE SET p.id = 'p_s_r_casie_chitty';

// Query 7
MERGE (p:Person {name: 'G. A. M. Edwards'}) ON CREATE SET p.id = 'g_a_m_edwards';

// Query 8
MERGE (p:Person {name: 'W. D. Barnabas'}) ON CREATE SET p.id = 'w_d_barnabas';

// Query 9
MERGE (p:Person {name: 'F. A. P. L. Solbani'}) ON CREATE SET p.id = 'f_a_p_l_solbani';

// Query 10
MERGE (p:Person {name: 'J.P. Kuruppu'}) ON CREATE SET p.id = 'j_p_kuruppu';

// Query 11
MERGE (p:Person {name: 'G.B. Egodage'}) ON CREATE SET p.id = 'g_b_egodage';

// Query 12
MERGE (p:Person {name: 'R.S. Egodage'}) ON CREATE SET p.id = 'r_s_egodage';

// Query 13
MERGE (p:Person {name: 'G.R. Egodage'}) ON CREATE SET p.id = 'g_r_egodage';

// Query 14
MERGE (p:Person {name: 'T.M.L. Paktsun'}) ON CREATE SET p.id = 't_m_l_paktsun';

// Query 15
// Step 4: HOLDS_POSITION Relationships;

// Query 16
MATCH (p:Person {name: 'L.L.S. Wickremasinghe'}), (c:Company {name: 'Commercial Credit and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'P.S.R. Casie Chitty'}), (c:Company {name: 'Commercial Credit and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'G. A. M. Edwards'}), (c:Company {name: 'Commercial Credit and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'W. D. Barnabas'}), (c:Company {name: 'Commercial Credit and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'F. A. P. L. Solbani'}), (c:Company {name: 'Commercial Credit and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'J.P. Kuruppu'}), (c:Company {name: 'Commercial Credit and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'G.B. Egodage'}), (c:Company {name: 'Commercial Credit and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'R.S. Egodage'}), (c:Company {name: 'Commercial Credit and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'G.R. Egodage'}), (c:Company {name: 'Commercial Credit and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'T.M.L. Paktsun'}), (c:Company {name: 'Commercial Credit and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 26
// Step 5: Metrics;

// Query 27
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 35
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 36
// Step 6: HAS_METRIC Relationships;

// Query 37
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31055222000, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28949269000, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12808022000, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11106651000, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6594978000, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3859879000, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4193917000, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2599629000, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 107987834000, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 102154440000, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24179669000, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20359015000, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.19, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.17, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18.83, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.22, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27251351000, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25054774000, r.year = 2023;

// Query 55
// Step 7: Sectors;

// Query 56
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 57
// Step 8: IN_SECTOR Relationships;

// Query 58
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 59
// Step 9: Products;

// Query 60
MERGE (p:Product {name: 'Finance Lease'}) ON CREATE SET p.id = 'finance_lease';

// Query 61
MERGE (p:Product {name: 'Hire Purchase'}) ON CREATE SET p.id = 'hire_purchase';

// Query 62
MERGE (p:Product {name: 'Microfinance & SME Loans'}) ON CREATE SET p.id = 'microfinance_sme_loans';

// Query 63
MERGE (p:Product {name: 'Gold Loan'}) ON CREATE SET p.id = 'gold_loan';

// Query 64
MERGE (p:Product {name: 'Term Loan'}) ON CREATE SET p.id = 'term_loan';

// Query 65
MERGE (p:Product {name: 'Revolving Loan'}) ON CREATE SET p.id = 'revolving_loan';

// Query 66
MERGE (p:Product {name: 'Investments'}) ON CREATE SET p.id = 'investments';

// Query 67
MERGE (p:Product {name: 'Energy-Saving Loans'}) ON CREATE SET p.id = 'energy_saving_loans';

// Query 68
// Step 10: OFFERS Relationships;

// Query 69
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (p:Product {name: 'Finance Lease'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (p:Product {name: 'Hire Purchase'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (p:Product {name: 'Microfinance & SME Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (p:Product {name: 'Gold Loan'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (p:Product {name: 'Term Loan'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (p:Product {name: 'Revolving Loan'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (p:Product {name: 'Investments'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
MATCH (c:Company {name: 'Commercial Credit and Finance'}), (p:Product {name: 'Energy-Saving Loans'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 76
// Generated on: 2025-10-03T01:57:36.755083
