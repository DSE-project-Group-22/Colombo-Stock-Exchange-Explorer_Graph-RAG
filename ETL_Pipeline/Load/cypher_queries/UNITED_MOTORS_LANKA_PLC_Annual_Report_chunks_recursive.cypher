// Query 1
MERGE (c:Company {name: 'UNITED MOTORS LANKA PLC'}) ON CREATE SET c.id = 'united_motors_lanka_plc';

// Query 2
MERGE (p:Person {name: 'S.D.R. Arudpragasam'}) ON CREATE SET p.id = 's.d.r._arudpragasam';

// Query 3
MATCH (p:Person {name: 'S.D.R. Arudpragasam'}), (c:Company {name: 'UNITED MOTORS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-01-01');

// Query 4
MERGE (p:Person {name: 'R.C.A. Welikala'}) ON CREATE SET p.id = 'r.c.a._welikala';

// Query 5
MATCH (p:Person {name: 'R.C.A. Welikala'}), (c:Company {name: 'UNITED MOTORS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-01-01');

// Query 6
MERGE (p:Person {name: 'R.N. Bopearatchy'}) ON CREATE SET p.id = 'r.n._bopearatchy';

// Query 7
MATCH (p:Person {name: 'R.N. Bopearatchy'}), (c:Company {name: 'UNITED MOTORS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-01-01');

// Query 8
MERGE (p:Person {name: 'E.T. De Zoysa'}) ON CREATE SET p.id = 'e.t._de_zoysa';

// Query 9
MATCH (p:Person {name: 'E.T. De Zoysa'}), (c:Company {name: 'UNITED MOTORS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2021-01-01');

// Query 10
MERGE (p:Person {name: 'R.S.A. Wickramasingha'}) ON CREATE SET p.id = 'r.s.a._wickramasingha';

// Query 11
MATCH (p:Person {name: 'R.S.A. Wickramasingha'}), (c:Company {name: 'UNITED MOTORS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2021-01-01');

// Query 12
MERGE (p:Person {name: 'D.S. Wickramasingha'}) ON CREATE SET p.id = 'd.s._wickramasingha';

// Query 13
MATCH (p:Person {name: 'D.S. Wickramasingha'}), (c:Company {name: 'UNITED MOTORS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 14
MERGE (p:Person {name: 'N.K. Wickramasingha'}) ON CREATE SET p.id = 'n.k._wickramasingha';

// Query 15
MATCH (p:Person {name: 'N.K. Wickramasingha'}), (c:Company {name: 'UNITED MOTORS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 16
MERGE (p:Person {name: 'L.J.M. De Silva'}) ON CREATE SET p.id = 'l.j.m._de_silva';

// Query 17
MATCH (p:Person {name: 'L.J.M. De Silva'}), (c:Company {name: 'UNITED MOTORS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 18
MERGE (p:Person {name: 'M.U.S.G. Thilakawardana'}) ON CREATE SET p.id = 'm.u.s.g._thilakawardana';

// Query 19
MATCH (p:Person {name: 'M.U.S.G. Thilakawardana'}), (c:Company {name: 'UNITED MOTORS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 20
MERGE (p:Person {name: 'D.M.A. Kulasooriya'}) ON CREATE SET p.id = 'd.m.a._kulasooriya';

// Query 21
MATCH (p:Person {name: 'D.M.A. Kulasooriya'}), (c:Company {name: 'UNITED MOTORS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 22
MERGE (p:Person {name: 'M.S. Nanayakkara'}) ON CREATE SET p.id = 'm.s._nanayakkara';

// Query 23
MATCH (p:Person {name: 'M.S. Nanayakkara'}), (c:Company {name: 'UNITED MOTORS LANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-01-01');

// Query 24
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. Mn';

// Query 25
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7764, r.year = 2024;

// Query 26
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8199, r.year = 2023;

// Query 27
MERGE (m:Metric {name: 'Cash Inflow From Operations'}) ON CREATE SET m.id = 'cash_inflow_from_operations', m.unit = 'Rs. Mn';

// Query 28
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (m:Metric {name: 'Cash Inflow From Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2655, r.year = 2024;

// Query 29
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (m:Metric {name: 'Cash Inflow From Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3553, r.year = 2023;

// Query 30
MERGE (m:Metric {name: 'Net Profit Ratio'}) ON CREATE SET m.id = 'net_profit_ratio', m.unit = '%';

// Query 31
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (m:Metric {name: 'Net Profit Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 21.17, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (m:Metric {name: 'Net Profit Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 31.45, r.year = 2023;

// Query 33
MERGE (m:Metric {name: 'Taxes'}) ON CREATE SET m.id = 'taxes', m.unit = 'Rs. Mn';

// Query 34
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (m:Metric {name: 'Taxes'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 491, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (m:Metric {name: 'Taxes'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 719, r.year = 2023;

// Query 36
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 37
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 25.80, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 41.81, r.year = 2023;

// Query 39
MERGE (m:Metric {name: 'Asset Turnover Ratio'}) ON CREATE SET m.id = 'asset_turnover_ratio', m.unit = 'times';

// Query 40
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.79, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.90, r.year = 2023;

// Query 42
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs.';

// Query 43
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 26.85, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19.00, r.year = 2023;

// Query 45
MERGE (m:Metric {name: 'Debt: Equity Ratio'}) ON CREATE SET m.id = 'debt_equity_ratio', m.unit = '%';

// Query 46
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (m:Metric {name: 'Debt: Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (m:Metric {name: 'Debt: Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5, r.year = 2023;

// Query 48
MERGE (s:Sector {name: 'Spare parts and workshop'}) ON CREATE SET s.id = 'spare_parts_and_workshop';

// Query 49
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (s:Sector {name: 'Spare parts and workshop'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 50
MERGE (s:Sector {name: 'Vehicles'}) ON CREATE SET s.id = 'vehicles';

// Query 51
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (s:Sector {name: 'Vehicles'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 52
MERGE (s:Sector {name: 'Equipment and machinery'}) ON CREATE SET s.id = 'equipment_and_machinery';

// Query 53
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (s:Sector {name: 'Equipment and machinery'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 54
MERGE (s:Sector {name: '3D Printers and services'}) ON CREATE SET s.id = '3d_printers_and_services';

// Query 55
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (s:Sector {name: '3D Printers and services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 56
MERGE (s:Sector {name: 'Tyres'}) ON CREATE SET s.id = 'tyres';

// Query 57
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (s:Sector {name: 'Tyres'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 58
MERGE (s:Sector {name: 'Lubricant and car care products'}) ON CREATE SET s.id = 'lubricant_and_car_care_products';

// Query 59
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (s:Sector {name: 'Lubricant and car care products'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 60
MERGE (s:Sector {name: 'Trailers'}) ON CREATE SET s.id = 'trailers';

// Query 61
MATCH (c:Company {name: 'UNITED MOTORS LANKA PLC'}), (s:Sector {name: 'Trailers'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 61
// Generated on: 2025-09-03T15:33:51.360297
