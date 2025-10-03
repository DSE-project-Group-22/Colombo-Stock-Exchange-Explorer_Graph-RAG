// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Bogawantalawa Tea Estates'}) ON CREATE SET c.id = 'bogawantalawa_tea_estates', c.founded_on = date('1992-06-22'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'BDO Partners'}) ON CREATE SET a.id = 'bdo_partners', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Bogawantalawa Tea Estates'}), (a:Auditor {name: 'BDO Partners'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'Sudath Ajith Samaradiwakara Jayasundara'}) ON CREATE SET p.id = 'sudath_ajith_samaradiwakara_jayasundara';

// Query 9
MERGE (p:Person {name: 'Lalith Hemantha Munasinghe'}) ON CREATE SET p.id = 'lalith_hemantha_munasinghe';

// Query 10
MERGE (p:Person {name: 'Subhashini Harshi Munasinghe'}) ON CREATE SET p.id = 'subhashini_harshi_munasinghe';

// Query 11
MERGE (p:Person {name: 'M F Majeed'}) ON CREATE SET p.id = 'm_f_majeed';

// Query 12
MERGE (p:Person {name: 'D J Ambani'}) ON CREATE SET p.id = 'd_j_ambani';

// Query 13
MERGE (p:Person {name: 'L J Ambani'}) ON CREATE SET p.id = 'l_j_ambani';

// Query 14
MERGE (p:Person {name: 'C M O Haglind'}) ON CREATE SET p.id = 'c_m_o_haglind';

// Query 15
MERGE (p:Person {name: 'D A de Silva Wickramanayake'}) ON CREATE SET p.id = 'd_a_de_silva_wickramanayake';

// Query 16
MERGE (p:Person {name: 'Nuwan Bogahalanda'}) ON CREATE SET p.id = 'nuwan_bogahalanda';

// Query 17
// Step 5: HOLDS_POSITION Relationships;

// Query 18
MATCH (p:Person {name: 'Sudath Ajith Samaradiwakara Jayasundara'}), (c:Company {name: 'Bogawantalawa Tea Estates'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 19
MATCH (p:Person {name: 'Lalith Hemantha Munasinghe'}), (c:Company {name: 'Bogawantalawa Tea Estates'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-09-30');

// Query 20
MATCH (p:Person {name: 'Subhashini Harshi Munasinghe'}), (c:Company {name: 'Bogawantalawa Tea Estates'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 21
MATCH (p:Person {name: 'M F Majeed'}), (c:Company {name: 'Bogawantalawa Tea Estates'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-09-30');

// Query 22
MATCH (p:Person {name: 'D J Ambani'}), (c:Company {name: 'Bogawantalawa Tea Estates'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-09-30');

// Query 23
MATCH (p:Person {name: 'L J Ambani'}), (c:Company {name: 'Bogawantalawa Tea Estates'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-09-30');

// Query 24
MATCH (p:Person {name: 'C M O Haglind'}), (c:Company {name: 'Bogawantalawa Tea Estates'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 25
MATCH (p:Person {name: 'D A de Silva Wickramanayake'}), (c:Company {name: 'Bogawantalawa Tea Estates'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 26
MATCH (p:Person {name: 'Nuwan Bogahalanda'}), (c:Company {name: 'Bogawantalawa Tea Estates'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-09-30');

// Query 27
// Step 6: Metrics;

// Query 28
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

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
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 35
// Step 7: HAS_METRIC Relationships;

// Query 36
MATCH (c:Company {name: 'Bogawantalawa Tea Estates'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2617167000.0, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Bogawantalawa Tea Estates'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2474904000.0, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Bogawantalawa Tea Estates'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 675682000.0, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Bogawantalawa Tea Estates'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 103605000.0, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Bogawantalawa Tea Estates'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612760000.0, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Bogawantalawa Tea Estates'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 103605000.0, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Bogawantalawa Tea Estates'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8322858000.0, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Bogawantalawa Tea Estates'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7204471000.0, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Bogawantalawa Tea Estates'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3926529000.0, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Bogawantalawa Tea Estates'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2861307000.0, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Bogawantalawa Tea Estates'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.32, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Bogawantalawa Tea Estates'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.24, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Bogawantalawa Tea Estates'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 904120000.0, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Bogawantalawa Tea Estates'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 327763000.0, r.year = 2023;

// Query 50
// Step 8: Sectors;

// Query 51
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 52
// Step 9: IN_SECTOR Relationships;

// Query 53
MATCH (c:Company {name: 'Bogawantalawa Tea Estates'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 54
// Step 10: Products;

// Query 55
MERGE (p:Product {name: 'Tea'}) ON CREATE SET p.id = 'tea';

// Query 56
MERGE (p:Product {name: 'Rubber'}) ON CREATE SET p.id = 'rubber';

// Query 57
MERGE (p:Product {name: 'Palm Oil'}) ON CREATE SET p.id = 'palm_oil';

// Query 58
// Step 11: OFFERS Relationships;

// Query 59
MATCH (c:Company {name: 'Bogawantalawa Tea Estates'}), (p:Product {name: 'Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 60
MATCH (c:Company {name: 'Bogawantalawa Tea Estates'}), (p:Product {name: 'Rubber'}) MERGE (c)-[:OFFERS]->(p);

// Query 61
MATCH (c:Company {name: 'Bogawantalawa Tea Estates'}), (p:Product {name: 'Palm Oil'}) MERGE (c)-[:OFFERS]->(p);

// Query 62
// Step 12: Company-Company Relationships (OWNS);

// Query 63
MERGE (parent:Company {name: 'Metropolitan Resource Holdings'}) ON CREATE SET parent.id = 'metropolitan_resource_holdings', parent.region = 'Sri Lanka';

// Query 64
MATCH (parent:Company {name: 'Metropolitan Resource Holdings'}), (child:Company {name: 'Bogawantalawa Tea Estates'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 78.45, r.as_of = date('2024-09-30');

// Total queries: 64
// Generated on: 2025-10-02T22:53:44.681749
