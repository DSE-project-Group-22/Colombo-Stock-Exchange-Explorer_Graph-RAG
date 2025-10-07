// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Mercantile Investments and Finance'}) ON CREATE SET c.id = 'mercantile_investments_and_finance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor (Skipped - No auditor from hardcoded list found);

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'P. D. D. Perera'}) ON CREATE SET p.id = 'p_d_d_perera';

// Query 6
MERGE (p:Person {name: 'G. G. Ondaatjie'}) ON CREATE SET p.id = 'g_g_ondaatjie';

// Query 7
MERGE (p:Person {name: 'A. M. Ondaatjie'}) ON CREATE SET p.id = 'a_m_ondaatjie';

// Query 8
MERGE (p:Person {name: 'T. J. Ondaatjie'}) ON CREATE SET p.id = 't_j_ondaatjie';

// Query 9
MERGE (p:Person {name: 'S. H. Jayasuriya'}) ON CREATE SET p.id = 's_h_jayasuriya';

// Query 10
MERGE (p:Person {name: 'A. L. N. Dias'}) ON CREATE SET p.id = 'a_l_n_dias';

// Query 11
MERGE (p:Person {name: 'E. D. Wickramasuriya'}) ON CREATE SET p.id = 'e_d_wickramasuriya';

// Query 12
MERGE (p:Person {name: 'M. K. S. Pieris'}) ON CREATE SET p.id = 'm_k_s_pieris';

// Query 13
MERGE (p:Person {name: 'B. P. Morris'}) ON CREATE SET p.id = 'b_p_morris';

// Query 14
MERGE (p:Person {name: 'S. S. J. Patabendige'}) ON CREATE SET p.id = 's_s_j_patabendige';

// Query 15
MERGE (p:Person {name: 'Deva Anthony'}) ON CREATE SET p.id = 'deva_anthony';

// Query 16
// Step 4: HOLDS_POSITION Relationships;

// Query 17
MATCH (p:Person {name: 'P. D. D. Perera'}), (c:Company {name: 'Mercantile Investments and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-06-30');

// Query 18
MATCH (p:Person {name: 'G. G. Ondaatjie'}), (c:Company {name: 'Mercantile Investments and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-06-30');

// Query 19
MATCH (p:Person {name: 'A. M. Ondaatjie'}), (c:Company {name: 'Mercantile Investments and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 20
MATCH (p:Person {name: 'T. J. Ondaatjie'}), (c:Company {name: 'Mercantile Investments and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 21
MATCH (p:Person {name: 'S. H. Jayasuriya'}), (c:Company {name: 'Mercantile Investments and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 22
MATCH (p:Person {name: 'A. L. N. Dias'}), (c:Company {name: 'Mercantile Investments and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 23
MATCH (p:Person {name: 'E. D. Wickramasuriya'}), (c:Company {name: 'Mercantile Investments and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 24
MATCH (p:Person {name: 'M. K. S. Pieris'}), (c:Company {name: 'Mercantile Investments and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 25
MATCH (p:Person {name: 'B. P. Morris'}), (c:Company {name: 'Mercantile Investments and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 26
MATCH (p:Person {name: 'S. S. J. Patabendige'}), (c:Company {name: 'Mercantile Investments and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 27
MATCH (p:Person {name: 'Deva Anthony'}), (c:Company {name: 'Mercantile Investments and Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-08-15');

// Query 28
// Step 5: Metrics;

// Query 29
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 38
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 39
// Step 6: HAS_METRIC Relationships;

// Query 40
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2645699000.0, r.year = 2024, r.as_of = date('2024-06-30');

// Query 41
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2621318000.0, r.year = 2023, r.as_of = date('2023-06-30');

// Query 42
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 135476000.0, r.year = 2024, r.as_of = date('2024-06-30');

// Query 43
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30304000.0, r.year = 2023, r.as_of = date('2023-06-30');

// Query 44
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 228570000.0, r.year = 2024, r.as_of = date('2024-06-30');

// Query 45
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 60960000.0, r.year = 2023, r.as_of = date('2023-06-30');

// Query 46
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 54943650000.0, r.year = 2024, r.as_of = date('2024-06-30');

// Query 47
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 53230713000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 48
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12454712000.0, r.year = 2024, r.as_of = date('2024-06-30');

// Query 49
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12165069000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 50
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1275830000.0, r.year = 2024, r.as_of = date('2024-06-30');

// Query 51
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 791042000.0, r.year = 2023, r.as_of = date('2023-06-30');

// Query 52
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 333749000.0, r.year = 2024, r.as_of = date('2024-06-30');

// Query 53
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 114803000.0, r.year = 2023, r.as_of = date('2023-06-30');

// Query 54
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45.07, r.year = 2024, r.as_of = date('2024-06-30');

// Query 55
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.08, r.year = 2023, r.as_of = date('2023-06-30');

// Query 56
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.40, r.year = 2024, r.as_of = date('2024-06-30');

// Query 57
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.80, r.year = 2024, r.as_of = date('2024-03-31');

// Query 58
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.00, r.year = 2024, r.as_of = date('2024-06-30');

// Query 59
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.10, r.year = 2024, r.as_of = date('2024-03-31');

// Query 60
// Step 7: Sectors;

// Query 61
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 62
// Step 8: IN_SECTOR Relationships;

// Query 63
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 64
// Step 9: Products;

// Query 65
MERGE (p:Product {name: 'Finance Lease'}) ON CREATE SET p.id = 'finance_lease';

// Query 66
MERGE (p:Product {name: 'Hire Purchase'}) ON CREATE SET p.id = 'hire_purchase';

// Query 67
MERGE (p:Product {name: 'Loans & Advances'}) ON CREATE SET p.id = 'loans_and_advances';

// Query 68
MERGE (p:Product {name: 'Investments'}) ON CREATE SET p.id = 'investments';

// Query 69
// Step 10: OFFERS Relationships;

// Query 70
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (p:Product {name: 'Finance Lease'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (p:Product {name: 'Hire Purchase'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (p:Product {name: 'Loans & Advances'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'Mercantile Investments and Finance'}), (p:Product {name: 'Investments'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
// Step 11: Company-Company Relationships (OWNS);

// Query 75
MERGE (comp_nilaveli:Company {name: 'Nilaveli Beach Hotels'}) ON CREATE SET comp_nilaveli.id = 'nilaveli_beach_hotels';

// Query 76
MATCH (parent:Company {name: 'Nilaveli Beach Hotels'}), (child:Company {name: 'Mercantile Investments and Finance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 20.94, r.as_of = date('2024-06-30');

// Query 77
MERGE (comp_mercantile_fortunes:Company {name: 'Mercantile Fortunes'}) ON CREATE SET comp_mercantile_fortunes.id = 'mercantile_fortunes';

// Query 78
MATCH (parent:Company {name: 'Mercantile Fortunes'}), (child:Company {name: 'Mercantile Investments and Finance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 13.81, r.as_of = date('2024-06-30');

// Query 79
MERGE (comp_tangerine_tours:Company {name: 'Tangerine Tours'}) ON CREATE SET comp_tangerine_tours.id = 'tangerine_tours';

// Query 80
MATCH (parent:Company {name: 'Tangerine Tours'}), (child:Company {name: 'Mercantile Investments and Finance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 6.78, r.as_of = date('2024-06-30');

// Query 81
// Step 12: Person-Company Relationships (OWNS_SHARES);

// Query 82
MATCH (p:Person {name: 'G. G. Ondaatjie'}), (c:Company {name: 'Mercantile Investments and Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 484615, r.pct = 16.12, r.as_of = date('2024-06-30');

// Query 83
MATCH (p:Person {name: 'A. M. Ondaatjie'}), (c:Company {name: 'Mercantile Investments and Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 484615, r.pct = 16.12, r.as_of = date('2024-06-30');

// Query 84
MATCH (p:Person {name: 'T. J. Ondaatjie'}), (c:Company {name: 'Mercantile Investments and Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 484614, r.pct = 16.12, r.as_of = date('2024-06-30');

// Query 85
MATCH (p:Person {name: 'C. A. Ondaatjie'}), (c:Company {name: 'Mercantile Investments and Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 166224, r.pct = 5.53, r.as_of = date('2024-06-30');

// Query 86
MATCH (p:Person {name: 'A. S. G. H. Jafferjee'}), (c:Company {name: 'Mercantile Investments and Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 41055, r.pct = 1.37, r.as_of = date('2024-06-30');

// Query 87
MATCH (p:Person {name: 'S. S. Jafferjee'}), (c:Company {name: 'Mercantile Investments and Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 41055, r.pct = 1.37, r.as_of = date('2024-06-30');

// Query 88
MATCH (p:Person {name: 'N. H. V. Perera'}), (c:Company {name: 'Mercantile Investments and Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 10020, r.pct = 0.33, r.as_of = date('2024-06-30');

// Query 89
MATCH (p:Person {name: 'R. M. D. Abeygunewardena'}), (c:Company {name: 'Mercantile Investments and Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 10020, r.pct = 0.33, r.as_of = date('2024-06-30');

// Query 90
MATCH (p:Person {name: 'J. A. S. S. Adhihetty'}), (c:Company {name: 'Mercantile Investments and Finance'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 10020, r.pct = 0.33, r.as_of = date('2024-06-30');

// Total queries: 90
// Generated on: 2025-10-03T02:47:35.626649
