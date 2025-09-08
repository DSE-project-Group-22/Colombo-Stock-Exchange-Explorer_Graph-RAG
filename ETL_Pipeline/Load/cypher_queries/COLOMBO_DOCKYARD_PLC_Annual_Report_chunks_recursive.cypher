// Query 1
MERGE (c:Company {name: 'COLOMBO DOCKYARD PLC'}) ON CREATE SET c.id = 'colombo_dockyard_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 3
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'COLOMBO DOCKYARD PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/ Managing Director', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 5
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'COLOMBO DOCKYARD PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 6
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 7
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'COLOMBO DOCKYARD PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 9
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'COLOMBO DOCKYARD PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 11
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'COLOMBO DOCKYARD PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-01-01');

// Query 12
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. million';

// Query 13
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25447.0, r.year = 2024;

// Query 14
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36167.6, r.year = 2023;

// Query 15
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs. million';

// Query 16
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 603.0, r.year = 2024;

// Query 17
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6323.6, r.year = 2023;

// Query 18
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs. million';

// Query 19
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2743.0, r.year = 2024;

// Query 20
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -11006.4, r.year = 2023;

// Query 21
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. million';

// Query 22
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 43860.7, r.year = 2024;

// Query 23
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39325.1, r.year = 2023;

// Query 24
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. million';

// Query 25
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38370.1, r.year = 2024;

// Query 26
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36034.1, r.year = 2023;

// Query 27
MERGE (m:Metric {name: 'Shareholders Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs. million';

// Query 28
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5311.3, r.year = 2024;

// Query 29
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3086.1, r.year = 2023;

// Query 30
MERGE (m:Metric {name: 'Net Cash & Cash Equivalent'}) ON CREATE SET m.id = 'net_cash_and_cash_equivalent', m.unit = 'Rs. million';

// Query 31
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Net Cash & Cash Equivalent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5262.2, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Net Cash & Cash Equivalent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2619.0, r.year = 2023;

// Query 33
MERGE (m:Metric {name: 'Interest Bearing Borrowings'}) ON CREATE SET m.id = 'interest_bearing_borrowings', m.unit = 'Rs. million';

// Query 34
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Interest Bearing Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28667.9, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Interest Bearing Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23850.9, r.year = 2023;

// Query 36
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs.';

// Query 37
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -38.1, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -153.4, r.year = 2023;

// Query 39
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs.';

// Query 40
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2023;

// Query 42
MERGE (m:Metric {name: 'Net Assets Per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs.';

// Query 43
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 74.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42.0, r.year = 2023;

// Query 45
MERGE (m:Metric {name: 'Gearing Ratio'}) ON CREATE SET m.id = 'gearing_ratio', m.unit = '%';

// Query 46
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58.0, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 49.0, r.year = 2023;

// Query 48
MERGE (m:Metric {name: 'Return on Total Assets'}) ON CREATE SET m.id = 'return_on_total_assets', m.unit = '%';

// Query 49
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Return on Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Return on Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -31.0, r.year = 2023;

// Query 51
MERGE (m:Metric {name: 'Working Capital to Assets'}) ON CREATE SET m.id = 'working_capital_to_assets', m.unit = '%';

// Query 52
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Working Capital to Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -16.0, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (m:Metric {name: 'Working Capital to Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -17.0, r.year = 2023;

// Query 54
MERGE (s:Sector {name: 'Ship Repair'}) ON CREATE SET s.id = 'ship_repair';

// Query 55
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (s:Sector {name: 'Ship Repair'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 56
MERGE (s:Sector {name: 'Shipbuilding'}) ON CREATE SET s.id = 'shipbuilding';

// Query 57
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (s:Sector {name: 'Shipbuilding'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 58
MERGE (s:Sector {name: 'Heavy Engineering'}) ON CREATE SET s.id = 'heavy_engineering';

// Query 59
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (s:Sector {name: 'Heavy Engineering'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 60
MERGE (s:Sector {name: 'Material & other sales'}) ON CREATE SET s.id = 'material_and_other_sales';

// Query 61
MATCH (c:Company {name: 'COLOMBO DOCKYARD PLC'}), (s:Sector {name: 'Material & other sales'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 61
// Generated on: 2025-09-03T15:46:22.364075
