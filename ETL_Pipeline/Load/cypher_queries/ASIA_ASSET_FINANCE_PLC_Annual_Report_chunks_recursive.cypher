// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Asia Asset Finance'}) ON CREATE SET c.id = 'asia_asset_finance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'BDO Partners'}) ON CREATE SET a.id = 'bdo_partners', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Asia Asset Finance'}), (a:Auditor {name: 'BDO Partners'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'V. A. Prasanth'}) ON CREATE SET p.id = 'v_a_prasanth';

// Query 9
MERGE (p:Person {name: 'G. Alexander'}) ON CREATE SET p.id = 'g_alexander';

// Query 10
MERGE (p:Person {name: 'K. G. K. Pillai'}) ON CREATE SET p.id = 'k_g_k_pillai';

// Query 11
MERGE (p:Person {name: 'K. R. Bijimon'}) ON CREATE SET p.id = 'k_r_bijimon';

// Query 12
MERGE (p:Person {name: 'R. J. A. Gunawardena'}) ON CREATE SET p.id = 'r_j_a_gunawardena';

// Query 13
MERGE (p:Person {name: 'R. A. B. Basnayake'}) ON CREATE SET p.id = 'r_a_b_basnayake';

// Query 14
MERGE (p:Person {name: 'J. P. D. R. Jayasekara'}) ON CREATE SET p.id = 'j_p_d_r_jayasekara';

// Query 15
MERGE (p:Person {name: 'S. S. R. D. De Silva Gunasekera'}) ON CREATE SET p.id = 's_s_r_d_de_silva_gunasekera';

// Query 16
MERGE (p:Person {name: 'Chalani Gonaduwa'}) ON CREATE SET p.id = 'chalani_gonaduwa';

// Query 17
// Step 5: HOLDS_POSITION Relationships;

// Query 18
MATCH (p:Person {name: 'V. A. Prasanth'}), (c:Company {name: 'Asia Asset Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'G. Alexander'}), (c:Company {name: 'Asia Asset Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'K. G. K. Pillai'}), (c:Company {name: 'Asia Asset Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'K. R. Bijimon'}), (c:Company {name: 'Asia Asset Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'R. J. A. Gunawardena'}), (c:Company {name: 'Asia Asset Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'R. A. B. Basnayake'}), (c:Company {name: 'Asia Asset Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'J. P. D. R. Jayasekara'}), (c:Company {name: 'Asia Asset Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'S. S. R. D. De Silva Gunasekera'}), (c:Company {name: 'Asia Asset Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'Chalani Gonaduwa'}), (c:Company {name: 'Asia Asset Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-03-31');

// Query 27
// Step 6: Metric Nodes;

// Query 28
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 35
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Times';

// Query 36
// Step 7: HAS_METRIC Relationships;

// Query 37
MATCH (c:Company {name: 'Asia Asset Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6604000000.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Asia Asset Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6006000000.0, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Asia Asset Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1432000000.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Asia Asset Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1741000000.0, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Asia Asset Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 373000000.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Asia Asset Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 360000000.0, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Asia Asset Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 344000000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Asia Asset Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 295000000.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Asia Asset Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25843000000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Asia Asset Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25013000000.0, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Asia Asset Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.77, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Asia Asset Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.38, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Asia Asset Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.82, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Asia Asset Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.81, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Asia Asset Finance'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.43, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Asia Asset Finance'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.15, r.year = 2023;

// Query 53
// Step 8: Sector Nodes;

// Query 54
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 55
// Step 9: IN_SECTOR Relationships;

// Query 56
MATCH (c:Company {name: 'Asia Asset Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 57
// Step 10: Product Nodes;

// Query 58
MERGE (p:Product {name: 'Lease & Hire-purchase'}) ON CREATE SET p.id = 'lease_and_hire_purchase';

// Query 59
MERGE (p:Product {name: 'Loans'}) ON CREATE SET p.id = 'loans';

// Query 60
MERGE (p:Product {name: 'Gold Loans'}) ON CREATE SET p.id = 'gold_loans';

// Query 61
MERGE (p:Product {name: 'Investment Products'}) ON CREATE SET p.id = 'investment_products';

// Query 62
MERGE (p:Product {name: 'Luckewallet Mobile App'}) ON CREATE SET p.id = 'luckewallet_mobile_app';

// Query 63
MERGE (p:Product {name: 'Agricultural Loans'}) ON CREATE SET p.id = 'agricultural_loans';

// Query 64
MERGE (p:Product {name: 'Solar Loans'}) ON CREATE SET p.id = 'solar_loans';

// Query 65
MERGE (p:Product {name: 'Leasing for Hybrid and Electric Cars'}) ON CREATE SET p.id = 'leasing_for_hybrid_and_electric_cars';

// Query 66
// Step 11: OFFERS Relationships;

// Query 67
MATCH (c:Company {name: 'Asia Asset Finance'}), (p:Product {name: 'Lease & Hire-purchase'}) MERGE (c)-[:OFFERS]->(p);

// Query 68
MATCH (c:Company {name: 'Asia Asset Finance'}), (p:Product {name: 'Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Asia Asset Finance'}), (p:Product {name: 'Gold Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'Asia Asset Finance'}), (p:Product {name: 'Investment Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Asia Asset Finance'}), (p:Product {name: 'Luckewallet Mobile App'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Asia Asset Finance'}), (p:Product {name: 'Agricultural Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'Asia Asset Finance'}), (p:Product {name: 'Solar Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'Asia Asset Finance'}), (p:Product {name: 'Leasing for Hybrid and Electric Cars'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 74
// Generated on: 2025-10-03T02:27:52.310044
