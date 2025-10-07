// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Softlogic Holdings'}) ON CREATE SET c.id = 'softlogic_holdings', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('1998-02-25');

// Query 3
// Step 2: Auditor - No explicit auditor from the hardcoded list found, skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'A K Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 6
MERGE (p:Person {name: 'G W D H U Gunawardena'}) ON CREATE SET p.id = 'g_w_d_h_u_gunawardena';

// Query 7
MERGE (p:Person {name: 'R J Perera'}) ON CREATE SET p.id = 'r_j_perera';

// Query 8
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 9
MERGE (p:Person {name: 'M P R Rassool'}) ON CREATE SET p.id = 'm_p_r_rassool';

// Query 10
MERGE (p:Person {name: 'Prof. A S Dharmasiri'}) ON CREATE SET p.id = 'prof_a_s_dharmasiri';

// Query 11
MERGE (p:Person {name: 'A Russell-Davison'}) ON CREATE SET p.id = 'a_russell_davison';

// Query 12
MERGE (p:Person {name: 'S Saraf'}) ON CREATE SET p.id = 's_saraf';

// Query 13
MERGE (p:Person {name: 'C K Gupta'}) ON CREATE SET p.id = 'c_k_gupta';

// Query 14
MERGE (p:Person {name: 'J D N Kekulawala'}) ON CREATE SET p.id = 'j_d_n_kekulawala';

// Query 15
// Step 4: HOLDS_POSITION Relationships;

// Query 16
MATCH (p:Person {name: 'A K Pathirage'}), (c:Company {name: 'Softlogic Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-05-31');

// Query 17
MATCH (p:Person {name: 'A K Pathirage'}), (c:Company {name: 'Softlogic Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-05-31');

// Query 18
MATCH (p:Person {name: 'G W D H U Gunawardena'}), (c:Company {name: 'Softlogic Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-31');

// Query 19
MATCH (p:Person {name: 'R J Perera'}), (c:Company {name: 'Softlogic Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-31');

// Query 20
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'Softlogic Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-31');

// Query 21
MATCH (p:Person {name: 'M P R Rassool'}), (c:Company {name: 'Softlogic Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-31');

// Query 22
MATCH (p:Person {name: 'Prof. A S Dharmasiri'}), (c:Company {name: 'Softlogic Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-31');

// Query 23
MATCH (p:Person {name: 'A Russell-Davison'}), (c:Company {name: 'Softlogic Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-31');

// Query 24
MATCH (p:Person {name: 'S Saraf'}), (c:Company {name: 'Softlogic Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-31');

// Query 25
MATCH (p:Person {name: 'C K Gupta'}), (c:Company {name: 'Softlogic Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-31');

// Query 26
MATCH (p:Person {name: 'J D N Kekulawala'}), (c:Company {name: 'Softlogic Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-05-31');

// Query 27
// Step 5: Metrics;

// Query 28
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 35
// Step 6: HAS_METRIC Relationships;

// Query 36
MATCH (c:Company {name: 'Softlogic Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 99426699000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 37
MATCH (c:Company {name: 'Softlogic Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 96899370000, r.year = 2023, r.as_of = date('2024-03-31');

// Query 38
MATCH (c:Company {name: 'Softlogic Holdings'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33123595000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 39
MATCH (c:Company {name: 'Softlogic Holdings'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 34095740000, r.year = 2023, r.as_of = date('2024-03-31');

// Query 40
MATCH (c:Company {name: 'Softlogic Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 319649000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 41
MATCH (c:Company {name: 'Softlogic Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -7037276000, r.year = 2023, r.as_of = date('2024-03-31');

// Query 42
MATCH (c:Company {name: 'Softlogic Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 395587000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 43
MATCH (c:Company {name: 'Softlogic Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 524022000, r.year = 2023, r.as_of = date('2024-03-31');

// Query 44
MATCH (c:Company {name: 'Softlogic Holdings'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2834439000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 45
MATCH (c:Company {name: 'Softlogic Holdings'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1850909000, r.year = 2023, r.as_of = date('2024-03-31');

// Query 46
MATCH (c:Company {name: 'Softlogic Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 180499440000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 47
MATCH (c:Company {name: 'Softlogic Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 184236913000, r.year = 2023, r.as_of = date('2024-03-31');

// Query 48
MATCH (c:Company {name: 'Softlogic Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -31045935000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 49
MATCH (c:Company {name: 'Softlogic Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -17871860000, r.year = 2023, r.as_of = date('2024-03-31');

// Query 50
// Step 7: Sectors;

// Query 51
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 52
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 53
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 54
MERGE (s:Sector {name: 'Telecommunication Services'}) ON CREATE SET s.id = 'telecommunication_services';

// Query 55
MERGE (s:Sector {name: 'Automobiles and Components'}) ON CREATE SET s.id = 'automobiles_and_components';

// Query 56
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 57
MERGE (s:Sector {name: 'Health Care Equipment and Services'}) ON CREATE SET s.id = 'health_care_equipment_and_services';

// Query 58
// Step 8: IN_SECTOR Relationships;

// Query 59
MATCH (c:Company {name: 'Softlogic Holdings'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 60
MATCH (c:Company {name: 'Softlogic Holdings'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 61
MATCH (c:Company {name: 'Softlogic Holdings'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 62
MATCH (c:Company {name: 'Softlogic Holdings'}), (s:Sector {name: 'Telecommunication Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 63
MATCH (c:Company {name: 'Softlogic Holdings'}), (s:Sector {name: 'Automobiles and Components'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 64
MATCH (c:Company {name: 'Softlogic Holdings'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 65
MATCH (c:Company {name: 'Softlogic Holdings'}), (s:Sector {name: 'Health Care Equipment and Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 66
// Step 9: Product nodes creation - No explicit products/services found, skipping.;

// Query 67
// Step 10: OFFERS relationships - No explicit products/services found, skipping.;

// Query 68
// Step 11: Company-Company Relationships (OWNS, MANAGES);

// Query 69
MERGE (owner:Company {name: 'Samena Ceylon Holdings'}) ON CREATE SET owner.id = 'samena_ceylon_holdings';

// Query 70
MERGE (owner:Company {name: 'Arunodhaya Industries'}) ON CREATE SET owner.id = 'arunodhaya_industries';

// Query 71
MERGE (owner:Company {name: 'Arunodhaya'}) ON CREATE SET owner.id = 'arunodhaya';

// Query 72
MATCH (p:Person {name: 'A K Pathirage'}), (c:Company {name: 'Softlogic Holdings'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 493125865, r.pct = 41.35, r.as_of = date('2024-03-31');

// Query 73
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'Softlogic Holdings'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 80439792, r.pct = 6.75, r.as_of = date('2024-03-31');

// Query 74
MATCH (owner:Company {name: 'Samena Ceylon Holdings'}), (c:Company {name: 'Softlogic Holdings'}) MERGE (owner)-[r:OWNS]->(c) ON CREATE SET r.pct = 20.75, r.as_of = date('2024-03-31');

// Query 75
MATCH (owner:Company {name: 'Arunodhaya Industries'}), (c:Company {name: 'Softlogic Holdings'}) MERGE (owner)-[r:OWNS]->(c) ON CREATE SET r.pct = 0.30, r.as_of = date('2024-03-31');

// Query 76
MATCH (owner:Company {name: 'Arunodhaya'}), (c:Company {name: 'Softlogic Holdings'}) MERGE (owner)-[r:OWNS]->(c) ON CREATE SET r.pct = 0.25, r.as_of = date('2024-03-31');

// Total queries: 76
// Generated on: 2025-10-03T00:29:51.078792
