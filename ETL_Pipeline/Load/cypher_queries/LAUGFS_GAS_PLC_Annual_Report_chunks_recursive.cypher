// Query 1
// Step 1: Main Company Node Creation;

// Query 2
MERGE (c:Company {name: 'LAUGFS Gas'}) ON CREATE SET c.id = 'laugfs_gas', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'LAUGFS Holdings'}) ON CREATE SET c.id = 'laugfs_holdings', c.region = 'Sri Lanka';

// Query 4
MERGE (c:Company {name: 'LAUGFS Maritime Services'}) ON CREATE SET c.id = 'laugfs_maritime_services';

// Query 5
MERGE (c:Company {name: 'LAUGFS Property Developers'}) ON CREATE SET c.id = 'laugfs_property_developers';

// Query 6
MERGE (c:Company {name: 'LAUGFS Terminals'}) ON CREATE SET c.id = 'laugfs_terminals';

// Query 7
MERGE (c:Company {name: 'SLOGAL Energy'}) ON CREATE SET c.id = 'slogal_energy', c.region = 'United Arab Emirates';

// Query 8
// Step 2: Auditor Node Creation;

// Query 9
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 10
// Step 3: AUDITED_BY Relationship;

// Query 11
MATCH (c:Company {name: 'LAUGFS Gas'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 12
// Step 4: Person Nodes Creation;

// Query 13
MERGE (p:Person {name: 'W. K. H. Wegapitiya'}) ON CREATE SET p.id = 'w_k_h_wegapitiya';

// Query 14
MERGE (p:Person {name: 'U. K. Thilak De Silva'}) ON CREATE SET p.id = 'u_k_thilak_de_silva';

// Query 15
MERGE (p:Person {name: 'P. Kudabalage'}) ON CREATE SET p.id = 'p_kudabalage';

// Query 16
MERGE (p:Person {name: 'Prof. S. P. P. Amaratunge'}) ON CREATE SET p.id = 'prof_s_p_p_amaratunge';

// Query 17
MERGE (p:Person {name: 'R. Selvaskandan'}) ON CREATE SET p.id = 'r_selvaskandan';

// Query 18
MERGE (p:Person {name: 'K. R. Goonesinghe'}) ON CREATE SET p.id = 'k_r_goonesinghe';

// Query 19
MERGE (p:Person {name: 'P. M. B. Fernando'}) ON CREATE SET p.id = 'p_m_b_fernando';

// Query 20
// Step 5: HOLDS_POSITION Relationships;

// Query 21
MATCH (p:Person {name: 'W. K. H. Wegapitiya'}), (c:Company {name: 'LAUGFS Gas'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'U. K. Thilak De Silva'}), (c:Company {name: 'LAUGFS Gas'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'P. Kudabalage'}), (c:Company {name: 'LAUGFS Gas'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'P. Kudabalage'}), (c:Company {name: 'LAUGFS Gas'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Prof. S. P. P. Amaratunge'}), (c:Company {name: 'LAUGFS Gas'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'R. Selvaskandan'}), (c:Company {name: 'LAUGFS Gas'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'K. R. Goonesinghe'}), (c:Company {name: 'LAUGFS Gas'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'P. M. B. Fernando'}), (c:Company {name: 'LAUGFS Gas'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
// Step 6: Metric Nodes Creation;

// Query 30
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 39
// Step 7: HAS_METRIC Relationships (LAUGFS Gas - Company);

// Query 40
MATCH (c:Company {name: 'LAUGFS Gas'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22475780000, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'LAUGFS Gas'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18533538000, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'LAUGFS Gas'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4078850000, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'LAUGFS Gas'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5189829000, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'LAUGFS Gas'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3153180000, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'LAUGFS Gas'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4097482000, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'LAUGFS Gas'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 622363000, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'LAUGFS Gas'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 54388000, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'LAUGFS Gas'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 463634000, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'LAUGFS Gas'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -115104000, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'LAUGFS Gas'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2.52, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'LAUGFS Gas'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.74, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'LAUGFS Gas'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40802000000, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'LAUGFS Gas'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44698000000, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'LAUGFS Gas'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3543000000, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'LAUGFS Gas'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4455000000, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'LAUGFS Gas'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36.0, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'LAUGFS Gas'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 46.0, r.year = 2023;

// Query 58
// Step 8: Sector Nodes Creation;

// Query 59
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 60
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 61
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 62
// Step 9: IN_SECTOR Relationships;

// Query 63
MATCH (c:Company {name: 'LAUGFS Gas'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 64
MATCH (c:Company {name: 'LAUGFS Maritime Services'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 65
MATCH (c:Company {name: 'LAUGFS Property Developers'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 66
MATCH (c:Company {name: 'LAUGFS Terminals'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 67
MATCH (c:Company {name: 'SLOGAL Energy'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 68
// Step 10: Product Nodes Creation;

// Query 69
MERGE (p:Product {name: 'Liquefied Petroleum Gas'}) ON CREATE SET p.id = 'liquefied_petroleum_gas';

// Query 70
MERGE (p:Product {name: 'Petroleum Products'}) ON CREATE SET p.id = 'petroleum_products';

// Query 71
MERGE (p:Product {name: 'Shipping operations'}) ON CREATE SET p.id = 'shipping_operations';

// Query 72
MERGE (p:Product {name: 'Marine cargo services'}) ON CREATE SET p.id = 'marine_cargo_services';

// Query 73
MERGE (p:Product {name: 'LPG storage and transhipment facilities'}) ON CREATE SET p.id = 'lpg_storage_and_transhipment_facilities';

// Query 74
MERGE (p:Product {name: 'Commercial property'}) ON CREATE SET p.id = 'commercial_property';

// Query 75
// Step 11: OFFERS Relationships;

// Query 76
MATCH (c:Company {name: 'LAUGFS Gas'}), (p:Product {name: 'Liquefied Petroleum Gas'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
MATCH (c:Company {name: 'LAUGFS Gas'}), (p:Product {name: 'Petroleum Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'LAUGFS Gas'}), (p:Product {name: 'LPG storage and transhipment facilities'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'LAUGFS Maritime Services'}), (p:Product {name: 'Shipping operations'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'LAUGFS Maritime Services'}), (p:Product {name: 'Marine cargo services'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'LAUGFS Property Developers'}), (p:Product {name: 'Commercial property'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'LAUGFS Terminals'}), (p:Product {name: 'LPG storage and transhipment facilities'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'SLOGAL Energy'}), (p:Product {name: 'Liquefied Petroleum Gas'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'SLOGAL Energy'}), (p:Product {name: 'Petroleum Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
// Step 12: Company-Company Relationships (MANAGES);

// Query 86
MATCH (manager:Company {name: 'LAUGFS Gas'}), (managed:Company {name: 'LAUGFS Property Developers'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Manages property development operations';

// Total queries: 86
// Generated on: 2025-10-03T03:20:10.520859
