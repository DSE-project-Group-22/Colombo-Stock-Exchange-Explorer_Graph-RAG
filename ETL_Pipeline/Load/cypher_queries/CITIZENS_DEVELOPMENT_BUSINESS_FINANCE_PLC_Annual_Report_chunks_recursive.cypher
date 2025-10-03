// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Citizens Development Business Finance'}) ON CREATE SET c.id = 'citizens_development_business_finance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No auditor from the hardcoded list was identified in the document.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'W. P. C. M. Nanayakkara'}) ON CREATE SET p.id = 'w_p_c_m_nanayakkara';

// Query 6
MERGE (p:Person {name: 'S. P. P. Amaratunge'}) ON CREATE SET p.id = 's_p_p_amaratunge';

// Query 7
MERGE (p:Person {name: 'T. M. D. P. Tennakoon'}) ON CREATE SET p.id = 't_m_d_p_tennakoon';

// Query 8
MERGE (p:Person {name: 'R. H. Abeygoonewardena'}) ON CREATE SET p.id = 'r_h_abeygoonewardena';

// Query 9
MERGE (p:Person {name: 'S. V. Munasinghe'}) ON CREATE SET p.id = 's_v_munasinghe';

// Query 10
MERGE (p:Person {name: 'D. A. De Silva'}) ON CREATE SET p.id = 'd_a_de_silva';

// Query 11
MERGE (p:Person {name: 'J. P. Abhayaratne'}) ON CREATE SET p.id = 'j_p_abhayaratne';

// Query 12
MERGE (p:Person {name: 'P. R. W. Perera'}) ON CREATE SET p.id = 'p_r_w_perera';

// Query 13
MERGE (p:Person {name: 'E. R. S. G. S. Hemachandra'}) ON CREATE SET p.id = 'e_r_s_g_s_hemachandra';

// Query 14
MERGE (p:Person {name: 'S. Kumarapperum'}) ON CREATE SET p.id = 's_kumarapperum';

// Query 15
MERGE (p:Person {name: 'P. N. Gamage'}) ON CREATE SET p.id = 'p_n_gamage';

// Query 16
MERGE (p:Person {name: 'Laavanya Paheerathan'}) ON CREATE SET p.id = 'laavanya_paheerathan';

// Query 17
// Step 4: HOLDS_POSITION Relationships;

// Query 18
MATCH (p:Person {name: 'W. P. C. M. Nanayakkara'}), (c:Company {name: 'Citizens Development Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2025-03-31');

// Query 19
MATCH (p:Person {name: 'W. P. C. M. Nanayakkara'}), (c:Company {name: 'Citizens Development Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2025-03-31');

// Query 20
MATCH (p:Person {name: 'W. P. C. M. Nanayakkara'}), (c:Company {name: 'Citizens Development Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 21
MATCH (p:Person {name: 'S. P. P. Amaratunge'}), (c:Company {name: 'Citizens Development Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 22
MATCH (p:Person {name: 'T. M. D. P. Tennakoon'}), (c:Company {name: 'Citizens Development Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2025-03-31');

// Query 23
MATCH (p:Person {name: 'T. M. D. P. Tennakoon'}), (c:Company {name: 'Citizens Development Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 24
MATCH (p:Person {name: 'R. H. Abeygoonewardena'}), (c:Company {name: 'Citizens Development Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 25
MATCH (p:Person {name: 'S. V. Munasinghe'}), (c:Company {name: 'Citizens Development Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 26
MATCH (p:Person {name: 'D. A. De Silva'}), (c:Company {name: 'Citizens Development Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 27
MATCH (p:Person {name: 'J. P. Abhayaratne'}), (c:Company {name: 'Citizens Development Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 28
MATCH (p:Person {name: 'P. R. W. Perera'}), (c:Company {name: 'Citizens Development Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 29
MATCH (p:Person {name: 'E. R. S. G. S. Hemachandra'}), (c:Company {name: 'Citizens Development Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 30
MATCH (p:Person {name: 'S. Kumarapperum'}), (c:Company {name: 'Citizens Development Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 31
MATCH (p:Person {name: 'P. N. Gamage'}), (c:Company {name: 'Citizens Development Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 32
MATCH (p:Person {name: 'Laavanya Paheerathan'}), (c:Company {name: 'Citizens Development Business Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2025-03-31');

// Query 33
// Step 5: Metrics;

// Query 34
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 44
// Step 6: HAS_METRIC Relationships;

// Query 45
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25599000000.0, r.year = 2025;

// Query 46
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23894000000.0, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11391000000.0, r.year = 2025;

// Query 48
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9093000000.0, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14105000000.0, r.year = 2025;

// Query 50
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10767000000.0, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7922000000.0, r.year = 2025;

// Query 52
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4599000000.0, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5751000000.0, r.year = 2025;

// Query 54
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3706000000.0, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4005000000.0, r.year = 2025;

// Query 56
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2516000000.0, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 156936000000.0, r.year = 2025;

// Query 58
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 128778000000.0, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23936000000.0, r.year = 2025;

// Query 60
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20208000000.0, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 56.53, r.year = 2025;

// Query 62
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 35.95, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18.15, r.year = 2025;

// Query 64
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.10, r.year = 2024;

// Query 65
// Step 7: Sectors;

// Query 66
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 67
// Step 8: IN_SECTOR Relationships;

// Query 68
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 69
// Step 9: Products;

// Query 70
MERGE (p:Product {name: 'Leasing'}) ON CREATE SET p.id = 'leasing';

// Query 71
MERGE (p:Product {name: 'Loans and Advances'}) ON CREATE SET p.id = 'loans_and_advances';

// Query 72
MERGE (p:Product {name: 'patpat.lk'}) ON CREATE SET p.id = 'patpat_lk';

// Query 73
MERGE (p:Product {name: 'CDB Wings'}) ON CREATE SET p.id = 'cdb_wings';

// Query 74
MERGE (p:Product {name: 'Green Finance'}) ON CREATE SET p.id = 'green_finance';

// Query 75
MERGE (p:Product {name: 'CDB Self'}) ON CREATE SET p.id = 'cdb_self';

// Query 76
MERGE (p:Product {name: 'AI-driven Credit Decisioning'}) ON CREATE SET p.id = 'ai_driven_credit_decisioning';

// Query 77
// Step 10: OFFERS Relationships;

// Query 78
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (p:Product {name: 'Leasing'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (p:Product {name: 'Loans and Advances'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (p:Product {name: 'patpat.lk'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (p:Product {name: 'CDB Wings'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (p:Product {name: 'Green Finance'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (p:Product {name: 'CDB Self'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Citizens Development Business Finance'}), (p:Product {name: 'AI-driven Credit Decisioning'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 84
// Generated on: 2025-10-03T01:54:11.478974
