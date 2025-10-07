// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Richard Pieris Exports'}) ON CREATE SET c.id = 'richard_pieris_exports', c.founded_on = date('1983-06-30'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor - Skipped as 'Kreston MNS & Company' is not in the hardcoded list.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Sena Yaddehige'}) ON CREATE SET p.id = 'sena_yadehige';

// Query 6
MERGE (p:Person {name: 'Shaminda Yaddehige'}) ON CREATE SET p.id = 'shaminda_yadehige';

// Query 7
MERGE (p:Person {name: 'W. J. Viville P. Perera'}) ON CREATE SET p.id = 'w_j_viville_p_perera';

// Query 8
MERGE (p:Person {name: 'W. R. Abeysirigunawardena'}) ON CREATE SET p.id = 'w_r_abeysirigunawardena';

// Query 9
MERGE (p:Person {name: 'L. M. K. Tillekeratne'}) ON CREATE SET p.id = 'l_m_k_tillekeratne';

// Query 10
MERGE (p:Person {name: 'Lalith Chandrasiri Wijeyesinghe'}) ON CREATE SET p.id = 'lalith_chandrasiri_wijeyesinghe';

// Query 11
MERGE (p:Person {name: 'Lawrence Perera'}) ON CREATE SET p.id = 'lawrence_perera';

// Query 12
MERGE (p:Person {name: 'Charith Ariyarathna'}) ON CREATE SET p.id = 'charith_ariyarathna';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'Sena Yaddehige'}), (c:Company {name: 'Richard Pieris Exports'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-05-30');

// Query 15
MATCH (p:Person {name: 'Shaminda Yaddehige'}), (c:Company {name: 'Richard Pieris Exports'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-30');

// Query 16
MATCH (p:Person {name: 'W. J. Viville P. Perera'}), (c:Company {name: 'Richard Pieris Exports'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-30');

// Query 17
MATCH (p:Person {name: 'W. R. Abeysirigunawardena'}), (c:Company {name: 'Richard Pieris Exports'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-30');

// Query 18
MATCH (p:Person {name: 'L. M. K. Tillekeratne'}), (c:Company {name: 'Richard Pieris Exports'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-30');

// Query 19
MATCH (p:Person {name: 'Lalith Chandrasiri Wijeyesinghe'}), (c:Company {name: 'Richard Pieris Exports'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-30');

// Query 20
MATCH (p:Person {name: 'Lawrence Perera'}), (c:Company {name: 'Richard Pieris Exports'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-30');

// Query 21
MATCH (p:Person {name: 'Charith Ariyarathna'}), (c:Company {name: 'Richard Pieris Exports'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-05-30');

// Query 22
// Step 5: Metrics;

// Query 23
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 29
// Step 6: HAS_METRIC Relationships (Company);

// Query 30
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1945498000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 31
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3141325000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 32
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 235014000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 33
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1068142000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 34
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 103182000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 35
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 928578000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 36
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.24, r.year = 2024, r.as_of = date('2024-03-31');

// Query 37
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 83.18, r.year = 2023, r.as_of = date('2023-03-31');

// Query 38
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3384695000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 39
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3310119000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 40
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2940769000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 41
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2990022000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 42
// Step 6: HAS_METRIC Relationships (Consolidated - using main company node for consolidated metrics);

// Query 43
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC {year: 2024, as_of: date('2024-03-31'), type: 'Consolidated'}]->(m) SET r.value = 7120443000.0;

// Query 44
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC {year: 2023, as_of: date('2023-03-31'), type: 'Consolidated'}]->(m) SET r.value = 9040796000.0;

// Query 45
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC {year: 2024, as_of: date('2024-03-31'), type: 'Consolidated'}]->(m) SET r.value = 84631000.0;

// Query 46
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC {year: 2023, as_of: date('2023-03-31'), type: 'Consolidated'}]->(m) SET r.value = 1287317000.0;

// Query 47
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC {year: 2024, as_of: date('2024-03-31'), type: 'Consolidated'}]->(m) SET r.value = 34136000.0;

// Query 48
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC {year: 2023, as_of: date('2023-03-31'), type: 'Consolidated'}]->(m) SET r.value = 1047057000.0;

// Query 49
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC {year: 2024, as_of: date('2024-03-31'), type: 'Consolidated'}]->(m) SET r.value = -6.94;

// Query 50
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC {year: 2023, as_of: date('2023-03-31'), type: 'Consolidated'}]->(m) SET r.value = -19.59;

// Query 51
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC {year: 2024, as_of: date('2024-03-31'), type: 'Consolidated'}]->(m) SET r.value = 9741087000.0;

// Query 52
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC {year: 2023, as_of: date('2023-03-31'), type: 'Consolidated'}]->(m) SET r.value = 8313737000.0;

// Query 53
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC {year: 2024, as_of: date('2024-03-31'), type: 'Consolidated'}]->(m) SET r.value = 5130615000.0;

// Query 54
MATCH (c:Company {name: 'Richard Pieris Exports'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC {year: 2023, as_of: date('2023-03-31'), type: 'Consolidated'}]->(m) SET r.value = 5290571000.0;

// Query 55
// Step 7: Sectors;

// Query 56
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 57
// Step 8: IN_SECTOR Relationships;

// Query 58
MATCH (c:Company {name: 'Richard Pieris Exports'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 59
// Step 9: Products;

// Query 60
MERGE (p:Product {name: 'Rubber Based Products'}) ON CREATE SET p.id = 'rubber_based_products';

// Query 61
MERGE (p:Product {name: 'Fillers for the Rubber Industry'}) ON CREATE SET p.id = 'fillers_for_the_rubber_industry';

// Query 62
// Step 10: OFFERS Relationships;

// Query 63
MATCH (c:Company {name: 'Richard Pieris Exports'}), (p:Product {name: 'Rubber Based Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 64
MATCH (c:Company {name: 'Richard Pieris Exports'}), (p:Product {name: 'Fillers for the Rubber Industry'}) MERGE (c)-[:OFFERS]->(p);

// Query 65
// Step 11: Company-Company Relationships (OWNS);

// Query 66
MERGE (parent:Company {name: 'Richard Pieris & Company'}) ON CREATE SET parent.id = 'richard_pieris_and_company';

// Query 67
MATCH (parent:Company {name: 'Richard Pieris & Company'}), (child:Company {name: 'Richard Pieris Exports'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 84.13, r.as_of = date('2024-03-31');

// Total queries: 67
// Generated on: 2025-10-02T22:58:45.981079
