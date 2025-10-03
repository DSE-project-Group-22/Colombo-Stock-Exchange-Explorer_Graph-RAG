// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'On\'ally Holdings'}) ON CREATE SET c.id = 'onally_holdings', c.region = 'Sri Lanka', c.founded_on = date('1982-06-25'), c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'On\'ally Holdings'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'A J B Warman'}) ON CREATE SET p.id = 'a_j_b_warman';

// Query 9
MERGE (p:Person {name: 'N L S Joseph'}) ON CREATE SET p.id = 'n_l_s_joseph';

// Query 10
MERGE (p:Person {name: 'M H Jamaldeen'}) ON CREATE SET p.id = 'm_h_jamaldeen';

// Query 11
MERGE (p:Person {name: 'Tharsini Sarveshwaran'}) ON CREATE SET p.id = 'tharsini_sarveshwaran';

// Query 12
MERGE (p:Person {name: 'Sarravanan Neelakandan'}) ON CREATE SET p.id = 'sarravanan_neelakandan';

// Query 13
MERGE (p:Person {name: 'A A Marikar'}) ON CREATE SET p.id = 'a_a_marikar';

// Query 14
MERGE (p:Person {name: 'E A C Piyashantha'}) ON CREATE SET p.id = 'e_a_c_piyashantha';

// Query 15
MERGE (p:Person {name: 'H A N D Herath'}) ON CREATE SET p.id = 'h_a_n_d_herath';

// Query 16
MERGE (p:Person {name: 'H R S C Gunathilake'}) ON CREATE SET p.id = 'h_r_s_c_gunathilake';

// Query 17
MERGE (p:Person {name: 'J A Ratwatte'}) ON CREATE SET p.id = 'j_a_ratwatte';

// Query 18
// Step 5: HOLDS_POSITION Relationships;

// Query 19
MATCH (p:Person {name: 'A J B Warman'}), (c:Company {name: 'On\'ally Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'N L S Joseph'}), (c:Company {name: 'On\'ally Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'M H Jamaldeen'}), (c:Company {name: 'On\'ally Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Tharsini Sarveshwaran'}), (c:Company {name: 'On\'ally Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Sarravanan Neelakandan'}), (c:Company {name: 'On\'ally Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'A A Marikar'}), (c:Company {name: 'On\'ally Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'E A C Piyashantha'}), (c:Company {name: 'On\'ally Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'H A N D Herath'}), (c:Company {name: 'On\'ally Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'H R S C Gunathilake'}), (c:Company {name: 'On\'ally Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'J A Ratwatte'}), (c:Company {name: 'On\'ally Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
// Step 6: Metrics;

// Query 30
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 35
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 38
// Step 7: HAS_METRIC Relationships;

// Query 39
MATCH (c:Company {name: 'On\'ally Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 286314201, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'On\'ally Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 279978718, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'On\'ally Holdings'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 148500371, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'On\'ally Holdings'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 188691717, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'On\'ally Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 732193585, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'On\'ally Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 724370234, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'On\'ally Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 570392972, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'On\'ally Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 344760445, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'On\'ally Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.88, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'On\'ally Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.49, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'On\'ally Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.13, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'On\'ally Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.71, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'On\'ally Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4775967208, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'On\'ally Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4235745384, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'On\'ally Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3378215192, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'On\'ally Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3000278808, r.year = 2023;

// Query 55
// Step 8: Sectors;

// Query 56
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 57
// Step 9: IN_SECTOR Relationships;

// Query 58
MATCH (c:Company {name: 'On\'ally Holdings'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 59
// Step 10: Product nodes creation;

// Query 60
MERGE (p:Product {name: 'Unity Plaza'}) ON CREATE SET p.id = 'unity_plaza';

// Query 61
// Step 11: OFFERS Relationships;

// Query 62
MATCH (c:Company {name: 'On\'ally Holdings'}), (p:Product {name: 'Unity Plaza'}) MERGE (c)-[r:OFFERS]->(p) ON CREATE SET r.status = 'active';

// Query 63
// Step 12: Company-Company Relationships (OWNS);

// Query 64
MERGE (owner1:Company {name: 'Lanka Realty Investments'}) ON CREATE SET owner1.id = 'lanka_realty_investments';

// Query 65
MERGE (owner2:Company {name: 'Urban Development Authority'}) ON CREATE SET owner2.id = 'urban_development_authority';

// Query 66
MATCH (owner1:Company {name: 'Lanka Realty Investments'}), (child:Company {name: 'On\'ally Holdings'}) MERGE (owner1)-[r:OWNS]->(child) ON CREATE SET r.pct = 50.89, r.as_of = date('2024-03-31');

// Query 67
MATCH (owner2:Company {name: 'Urban Development Authority'}), (child:Company {name: 'On\'ally Holdings'}) MERGE (owner2)-[r:OWNS]->(child) ON CREATE SET r.pct = 44.80, r.as_of = date('2024-03-31');

// Total queries: 67
// Generated on: 2025-10-02T23:50:27.506544
