// Query 1
MERGE (c:Company {name: 'Bogala Graphite Lanka PLC'}) ON CREATE SET c.id = 'bogala_graphite_lanka_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 3
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'Bogala Graphite Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/Managing Director', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 5
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'Bogala Graphite Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 6
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 7
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'Bogala Graphite Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 9
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'Bogala Graphite Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 11
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'Bogala Graphite Lanka PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-06-18');

// Query 12
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. million';

// Query 13
MATCH (c:Company {name: 'Bogala Graphite Lanka PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1765.7, r.year = 2024;

// Query 14
MATCH (c:Company {name: 'Bogala Graphite Lanka PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1623.1, r.year = 2023;

// Query 15
MERGE (m:Metric {name: 'Profit before tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs. million';

// Query 16
MATCH (c:Company {name: 'Bogala Graphite Lanka PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 232.3, r.year = 2024;

// Query 17
MATCH (c:Company {name: 'Bogala Graphite Lanka PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 241.9, r.year = 2023;

// Query 18
MERGE (m:Metric {name: 'Total comprehensive income net of tax'}) ON CREATE SET m.id = 'total_comprehensive_income_net_of_tax', m.unit = 'Rs. million';

// Query 19
MATCH (c:Company {name: 'Bogala Graphite Lanka PLC'}), (m:Metric {name: 'Total comprehensive income net of tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 158.5, r.year = 2024;

// Query 20
MATCH (c:Company {name: 'Bogala Graphite Lanka PLC'}), (m:Metric {name: 'Total comprehensive income net of tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 166.6, r.year = 2023;

// Query 21
MERGE (s:Sector {name: 'Healthcare Services'}) ON CREATE SET s.id = 'healthcare_services';

// Query 22
MATCH (c:Company {name: 'Bogala Graphite Lanka PLC'}), (s:Sector {name: 'Healthcare Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 23
MERGE (s:Sector {name: 'Sales of Goods'}) ON CREATE SET s.id = 'sales_of_goods';

// Query 24
MATCH (c:Company {name: 'Bogala Graphite Lanka PLC'}), (s:Sector {name: 'Sales of Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 24
// Generated on: 2025-09-03T16:11:37.816348
