// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Panasian Power'}) ON CREATE SET c.id = 'panasian_power', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Panasian Power'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'L. H. A. L. Silva'}) ON CREATE SET p.id = 'l_h_a_l_silva';

// Query 8
MERGE (p:Person {name: 'D. Sooriyaarachchi'}) ON CREATE SET p.id = 'd_sooriyaarachchi';

// Query 9
MERGE (p:Person {name: 'P. K. Pathmanatha'}) ON CREATE SET p.id = 'p_k_pathmanatha';

// Query 10
MERGE (p:Person {name: 'K. Kamburadeniya'}) ON CREATE SET p.id = 'k_kamburadeniya';

// Query 11
MERGE (p:Person {name: 'L. K. A. H. Fernando'}) ON CREATE SET p.id = 'l_k_a_h_fernando';

// Query 12
MERGE (p:Person {name: 'C. Pietersz'}) ON CREATE SET p.id = 'c_pietersz';

// Query 13
MERGE (p:Person {name: 'R. Weudagedara'}) ON CREATE SET p.id = 'r_weudagedara';

// Query 14
// Step 4: HOLDS_POSITION Relationships;

// Query 15
MATCH (p:Person {name: 'L. H. A. L. Silva'}), (c:Company {name: 'Panasian Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'D. Sooriyaarachchi'}), (c:Company {name: 'Panasian Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'P. K. Pathmanatha'}), (c:Company {name: 'Panasian Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'P. K. Pathmanatha'}), (c:Company {name: 'Panasian Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'K. Kamburadeniya'}), (c:Company {name: 'Panasian Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'L. K. A. H. Fernando'}), (c:Company {name: 'Panasian Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'C. Pietersz'}), (c:Company {name: 'Panasian Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'R. Weudagedara'}), (c:Company {name: 'Panasian Power'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-03-31');

// Query 23
// Step 5: Metrics;

// Query 24
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 32
// Step 6: HAS_METRIC Relationships;

// Query 33
MATCH (c:Company {name: 'Panasian Power'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1490346698.0, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'Panasian Power'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1014079462.0, r.year = 2023;

// Query 35
MATCH (c:Company {name: 'Panasian Power'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 99659744.0, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Panasian Power'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -460798622.0, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'Panasian Power'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 560694604.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Panasian Power'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 427637782.0, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Panasian Power'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 225209087.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Panasian Power'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9323902.0, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Panasian Power'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5458471056.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Panasian Power'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5000045144.0, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Panasian Power'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2237719734.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Panasian Power'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1942102508.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Panasian Power'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.12, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Panasian Power'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.77, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Panasian Power'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 105.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Panasian Power'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 130.0, r.year = 2023;

// Query 49
// Step 7: Sectors;

// Query 50
MERGE (s:Sector {name: 'Utilities'}) ON CREATE SET s.id = 'utilities';

// Query 51
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 52
// Step 8: IN_SECTOR Relationships;

// Query 53
MATCH (c:Company {name: 'Panasian Power'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 54
MATCH (c:Company {name: 'Panasian Power'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 55
// Step 9: Products;

// Query 56
MERGE (p:Product {name: 'Mini-hydro plants'}) ON CREATE SET p.id = 'mini_hydro_plants';

// Query 57
MERGE (p:Product {name: 'Solar power plants'}) ON CREATE SET p.id = 'solar_power_plants';

// Query 58
MERGE (p:Product {name: 'Roof top solar power plants'}) ON CREATE SET p.id = 'roof_top_solar_power_plants';

// Query 59
MERGE (p:Product {name: 'Solar panel'}) ON CREATE SET p.id = 'solar_panel';

// Query 60
MERGE (p:Product {name: 'Inverters'}) ON CREATE SET p.id = 'inverters';

// Query 61
// Step 10: OFFERS Relationships;

// Query 62
MATCH (c:Company {name: 'Panasian Power'}), (p:Product {name: 'Mini-hydro plants'}) MERGE (c)-[:OFFERS]->(p);

// Query 63
MATCH (c:Company {name: 'Panasian Power'}), (p:Product {name: 'Solar power plants'}) MERGE (c)-[:OFFERS]->(p);

// Query 64
MATCH (c:Company {name: 'Panasian Power'}), (p:Product {name: 'Roof top solar power plants'}) MERGE (c)-[:OFFERS]->(p);

// Query 65
MATCH (c:Company {name: 'Panasian Power'}), (p:Product {name: 'Solar panel'}) MERGE (c)-[:OFFERS]->(p);

// Query 66
MATCH (c:Company {name: 'Panasian Power'}), (p:Product {name: 'Inverters'}) MERGE (c)-[:OFFERS]->(p);

// Query 67
// Step 11: Company-Company Relationships (OWNS);

// Query 68
MERGE (child:Company {name: 'Panasian Investments'}) ON CREATE SET child.id = 'panasian_investments';

// Query 69
MATCH (parent:Company {name: 'Panasian Power'}), (child:Company {name: 'Panasian Investments'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Total queries: 69
// Generated on: 2025-10-03T00:51:12.185686
