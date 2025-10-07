// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Malwatte Valley Plantations'}) ON CREATE SET c.id = 'malwatte_valley_plantations', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Frits Bogtstra'}) ON CREATE SET p.id = 'frits_bogtstra';

// Query 8
MERGE (p:Person {name: 'Lucas Bogtstra'}) ON CREATE SET p.id = 'lucas_bogtstra';

// Query 9
MERGE (p:Person {name: 'S. D. Samaradiwakara'}) ON CREATE SET p.id = 's_d_samaradiwakara';

// Query 10
MERGE (p:Person {name: 'K. G. M. Piyaratne'}) ON CREATE SET p.id = 'k_g_m_piyaratne';

// Query 11
MERGE (p:Person {name: 'G. Chamindra De Silva'}) ON CREATE SET p.id = 'g_chamindra_de_silva';

// Query 12
MERGE (p:Person {name: 'G. Z. A. Chitty'}) ON CREATE SET p.id = 'g_z_a_chitty';

// Query 13
MERGE (p:Person {name: 'Wilfred Avindra De Silva'}) ON CREATE SET p.id = 'wilfred_avindra_de_silva';

// Query 14
MERGE (p:Person {name: 'Dilantha Stephen Seneviratne'}) ON CREATE SET p.id = 'dilantha_stephen_seneviratne';

// Query 15
// Step 4: HOLDS_POSITION Relationships;

// Query 16
MATCH (p:Person {name: 'Frits Bogtstra'}), (c:Company {name: 'Malwatte Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 17
MATCH (p:Person {name: 'Frits Bogtstra'}), (c:Company {name: 'Malwatte Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 18
MATCH (p:Person {name: 'Lucas Bogtstra'}), (c:Company {name: 'Malwatte Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-12-31');

// Query 19
MATCH (p:Person {name: 'Lucas Bogtstra'}), (c:Company {name: 'Malwatte Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 20
MATCH (p:Person {name: 'S. D. Samaradiwakara'}), (c:Company {name: 'Malwatte Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-12-31');

// Query 21
MATCH (p:Person {name: 'S. D. Samaradiwakara'}), (c:Company {name: 'Malwatte Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 22
MATCH (p:Person {name: 'K. G. M. Piyaratne'}), (c:Company {name: 'Malwatte Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-12-31');

// Query 23
MATCH (p:Person {name: 'K. G. M. Piyaratne'}), (c:Company {name: 'Malwatte Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 24
MATCH (p:Person {name: 'G. Chamindra De Silva'}), (c:Company {name: 'Malwatte Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 25
MATCH (p:Person {name: 'G. Z. A. Chitty'}), (c:Company {name: 'Malwatte Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 26
MATCH (p:Person {name: 'Wilfred Avindra De Silva'}), (c:Company {name: 'Malwatte Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 27
MATCH (p:Person {name: 'Dilantha Stephen Seneviratne'}), (c:Company {name: 'Malwatte Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-10');

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
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 35
// Step 6: HAS_METRIC Relationships;

// Query 36
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10062991000, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9757409000, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9210022000, r.year = 2022;

// Query 39
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4712945000, r.year = 2021;

// Query 40
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5068575000, r.year = 2020;

// Query 41
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 905793000, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 324651000, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2020053000, r.year = 2022;

// Query 44
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 431387000, r.year = 2021;

// Query 45
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 317972000, r.year = 2020;

// Query 46
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 769173000, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45495000, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2481541000, r.year = 2022;

// Query 49
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 371382000, r.year = 2021;

// Query 50
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 262525000, r.year = 2020;

// Query 51
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 532837000, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -171611000, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2133367000, r.year = 2022;

// Query 54
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 282754000, r.year = 2021;

// Query 55
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 227440000, r.year = 2020;

// Query 56
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6173251030, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5818925693, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5629907000, r.year = 2022;

// Query 59
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3507989000, r.year = 2021;

// Query 60
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3419940000, r.year = 2020;

// Query 61
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.39, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.77, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.56, r.year = 2022;

// Query 64
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.27, r.year = 2021;

// Query 65
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.02, r.year = 2020;

// Query 66
// Step 7: Sectors;

// Query 67
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 68
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 69
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 70
// Step 8: IN_SECTOR Relationships;

// Query 71
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 72
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 73
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
// Step 9: Products;

// Query 75
MERGE (p:Product {name: 'Black Tea'}) ON CREATE SET p.id = 'black_tea';

// Query 76
MERGE (p:Product {name: 'Rubber'}) ON CREATE SET p.id = 'rubber';

// Query 77
MERGE (p:Product {name: 'Solar Generators'}) ON CREATE SET p.id = 'solar_generators';

// Query 78
MERGE (p:Product {name: 'Cinnamon'}) ON CREATE SET p.id = 'cinnamon';

// Query 79
MERGE (p:Product {name: 'Avocado'}) ON CREATE SET p.id = 'avocado';

// Query 80
// Step 10: OFFERS Relationships;

// Query 81
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (p:Product {name: 'Black Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (p:Product {name: 'Rubber'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (p:Product {name: 'Solar Generators'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (p:Product {name: 'Cinnamon'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Malwatte Valley Plantations'}), (p:Product {name: 'Avocado'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
// Step 11: Company-Company Relationships (OWNS);

// Query 87
MERGE (c:Company {name: 'Wayamba Plantations'}) ON CREATE SET c.id = 'wayamba_plantations';

// Query 88
MERGE (c:Company {name: 'Bogtstra and Gerlach'}) ON CREATE SET c.id = 'bogtstra_and_gerlach';

// Query 89
MATCH (parent:Company {name: 'Wayamba Plantations'}), (child:Company {name: 'Malwatte Valley Plantations'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 66.98, r.as_of = date('2024-12-31');

// Query 90
MATCH (parent:Company {name: 'Bogtstra and Gerlach'}), (child:Company {name: 'Wayamba Plantations'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 69.14, r.as_of = date('2024-12-31');

// Total queries: 90
// Generated on: 2025-10-02T23:59:13.397302
