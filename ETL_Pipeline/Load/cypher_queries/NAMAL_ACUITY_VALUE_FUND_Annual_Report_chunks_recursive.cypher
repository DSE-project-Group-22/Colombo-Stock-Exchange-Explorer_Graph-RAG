// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'NAMAL Acuity Value Fund'}) ON CREATE SET c.id = 'namal_acuity_value_fund', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('2009-09-07');

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2013, r.period = 'FY 2012/13';

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Alexis Lovell'}) ON CREATE SET p.id = 'alexis_lovell';

// Query 8
MERGE (p:Person {name: 'Ajith Wijesekera'}) ON CREATE SET p.id = 'ajith_wijesekera';

// Query 9
MERGE (p:Person {name: 'Anil Amarasuriya'}) ON CREATE SET p.id = 'anil_amarasuriya';

// Query 10
MERGE (p:Person {name: 'Jitendrakumar Warnakulasuriya'}) ON CREATE SET p.id = 'jitendrakumar_warnakulasuriya';

// Query 11
MERGE (p:Person {name: 'Nihal Fonseka'}) ON CREATE SET p.id = 'nihal_fonseka';

// Query 12
MERGE (p:Person {name: 'M. Gunawardhene'}) ON CREATE SET p.id = 'm_gunawardhene';

// Query 13
MERGE (p:Person {name: 'Tyrone De Silva'}) ON CREATE SET p.id = 'tyrone_de_silva';

// Query 14
MERGE (p:Person {name: 'Avancka Herat'}) ON CREATE SET p.id = 'avancka_herat';

// Query 15
MERGE (p:Person {name: 'Khoo Siew Bee'}) ON CREATE SET p.id = 'khoo_siew_bee';

// Query 16
// Step 4: HOLDS_POSITION Relationships;

// Query 17
MATCH (p:Person {name: 'Alexis Lovell'}), (c:Company {name: 'NAMAL Acuity Value Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2013-03-31');

// Query 18
MATCH (p:Person {name: 'Ajith Wijesekera'}), (c:Company {name: 'NAMAL Acuity Value Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2013-03-31');

// Query 19
MATCH (p:Person {name: 'Anil Amarasuriya'}), (c:Company {name: 'NAMAL Acuity Value Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2013-03-31');

// Query 20
MATCH (p:Person {name: 'Jitendrakumar Warnakulasuriya'}), (c:Company {name: 'NAMAL Acuity Value Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2013-03-31');

// Query 21
MATCH (p:Person {name: 'Nihal Fonseka'}), (c:Company {name: 'NAMAL Acuity Value Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2013-03-31');

// Query 22
MATCH (p:Person {name: 'M. Gunawardhene'}), (c:Company {name: 'NAMAL Acuity Value Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2013-03-31');

// Query 23
MATCH (p:Person {name: 'Tyrone De Silva'}), (c:Company {name: 'NAMAL Acuity Value Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2013-03-31');

// Query 24
MATCH (p:Person {name: 'Avancka Herat'}), (c:Company {name: 'NAMAL Acuity Value Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2013-03-31');

// Query 25
MATCH (p:Person {name: 'Khoo Siew Bee'}), (c:Company {name: 'NAMAL Acuity Value Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2013-03-31');

// Query 26
// Step 5: Metrics;

// Query 27
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 33
// Step 6: HAS_METRIC Relationships;

// Query 34
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106894676, r.year = 2013;

// Query 35
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -215575887, r.year = 2012;

// Query 36
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93869944, r.year = 2013;

// Query 37
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -229212267, r.year = 2012;

// Query 38
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 83055918, r.year = 2013;

// Query 39
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -256090267, r.year = 2012;

// Query 40
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 81580117, r.year = 2013;

// Query 41
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -256219801, r.year = 2012;

// Query 42
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 984952393, r.year = 2013;

// Query 43
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 880801487, r.year = 2012;

// Query 44
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1137166534, r.year = 2011;

// Query 45
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 958690752, r.year = 2013;

// Query 46
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 877110635, r.year = 2012;

// Query 47
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1133330436, r.year = 2011;

// Query 48
// Step 7: Sectors;

// Query 49
MERGE (s:Sector {name: 'Telecommunication Services'}) ON CREATE SET s.id = 'telecommunication_services';

// Query 50
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 51
MERGE (s:Sector {name: 'Pharmaceuticals, Biotechnology, and Life Sciences'}) ON CREATE SET s.id = 'pharmaceuticals_biotechnology_and_life_sciences';

// Query 52
MERGE (s:Sector {name: 'Health Care Equipment and Services'}) ON CREATE SET s.id = 'health_care_equipment_and_services';

// Query 53
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 54
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 55
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 56
MERGE (s:Sector {name: 'Banks'}) ON CREATE SET s.id = 'banks';

// Query 57
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 58
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 59
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 60
// Step 8: IN_SECTOR Relationships;

// Query 61
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (s:Sector {name: 'Telecommunication Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 62
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 63
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (s:Sector {name: 'Pharmaceuticals, Biotechnology, and Life Sciences'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 64
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (s:Sector {name: 'Health Care Equipment and Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 65
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 66
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 67
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 68
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 69
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 70
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 71
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (s:Sector {name: 'Insurance'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 72
// Step 9: Product Nodes;

// Query 73
MERGE (p:Product {name: 'Unit Trust Fund'}) ON CREATE SET p.id = 'unit_trust_fund';

// Query 74
MERGE (p:Product {name: 'Equity Investment'}) ON CREATE SET p.id = 'equity_investment';

// Query 75
MERGE (p:Product {name: 'Fixed Income Securities Investment'}) ON CREATE SET p.id = 'fixed_income_securities_investment';

// Query 76
// Step 10: OFFERS Relationships;

// Query 77
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (p:Product {name: 'Unit Trust Fund'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (p:Product {name: 'Equity Investment'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (p:Product {name: 'Fixed Income Securities Investment'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
// Step 11: Company-Company Relationships (MANAGES);

// Query 81
MERGE (m:Company {name: 'National Asset Management'}) ON CREATE SET m.id = 'national_asset_management', m.region = 'Sri Lanka';

// Query 82
MATCH (manager:Company {name: 'National Asset Management'}), (managed:Company {name: 'NAMAL Acuity Value Fund'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Manages Unit Trust Fund', r.as_of = date('2013-03-31');

// Total queries: 82
// Generated on: 2025-10-02T22:41:55.723649
