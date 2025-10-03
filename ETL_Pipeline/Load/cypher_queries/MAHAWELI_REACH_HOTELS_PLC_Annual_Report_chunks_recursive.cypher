// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Mahaweli Reach Hotels'}) ON CREATE SET c.id = 'mahaweli_reach_hotels', c.region = 'Sri Lanka', c.founded_on = date('1973-01-01'), c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No valid auditor found matching the hardcoded list.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'J. A. Panabokke'}) ON CREATE SET p.id = 'j_a_panabokke';

// Query 6
MERGE (p:Person {name: 'D. L. Panabokke'}) ON CREATE SET p.id = 'd_l_panabokke';

// Query 7
MERGE (p:Person {name: 'J. Asitha Panabokke'}) ON CREATE SET p.id = 'j_asitha_panabokke';

// Query 8
MERGE (p:Person {name: 'P. B. Panabokke'}) ON CREATE SET p.id = 'p_b_panabokke';

// Query 9
MERGE (p:Person {name: 'W. P. Hettiaratchi'}) ON CREATE SET p.id = 'w_p_hettiaratchi';

// Query 10
MERGE (p:Person {name: 'Mohamed Umar Maniku'}) ON CREATE SET p.id = 'mohamed_umar_maniku';

// Query 11
MERGE (p:Person {name: 'Ahamed Umar Maniku'}) ON CREATE SET p.id = 'ahamed_umar_maniku';

// Query 12
MERGE (p:Person {name: 'Ahamed Mahir Didi'}) ON CREATE SET p.id = 'ahamed_mahir_didi';

// Query 13
MERGE (p:Person {name: 'Ali Nooradeen'}) ON CREATE SET p.id = 'ali_nooradeen';

// Query 14
MERGE (p:Person {name: 'Sanjay Ibrahim Maniku'}) ON CREATE SET p.id = 'sanjay_ibrahim_maniku';

// Query 15
MERGE (p:Person {name: 'Abbasally Nuruddin Esufally'}) ON CREATE SET p.id = 'abbasally_nuruddin_esufally';

// Query 16
MERGE (p:Person {name: 'Jayampathy Charitha Ratwatte'}) ON CREATE SET p.id = 'jayampathy_charitha_ratwatte';

// Query 17
MERGE (p:Person {name: 'Joseph Rosario Philip Mancius Paiva'}) ON CREATE SET p.id = 'joseph_rosario_philip_mancius_paiva';

// Query 18
MERGE (p:Person {name: 'Fathimath Visha Mahir'}) ON CREATE SET p.id = 'fathimath_visha_mahir';

// Query 19
// Step 4: HOLDS_POSITION Relationships;

// Query 20
MATCH (p:Person {name: 'J. A. Panabokke'}), (c:Company {name: 'Mahaweli Reach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'D. L. Panabokke'}), (c:Company {name: 'Mahaweli Reach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2023-06-28');

// Query 22
MATCH (p:Person {name: 'J. Asitha Panabokke'}), (c:Company {name: 'Mahaweli Reach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'P. B. Panabokke'}), (c:Company {name: 'Mahaweli Reach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'W. P. Hettiaratchi'}), (c:Company {name: 'Mahaweli Reach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2023-06-28');

// Query 25
MATCH (p:Person {name: 'Mohamed Umar Maniku'}), (c:Company {name: 'Mahaweli Reach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-08-30');

// Query 26
MATCH (p:Person {name: 'Ahamed Umar Maniku'}), (c:Company {name: 'Mahaweli Reach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'Ahamed Mahir Didi'}), (c:Company {name: 'Mahaweli Reach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'Ali Nooradeen'}), (c:Company {name: 'Mahaweli Reach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'Sanjay Ibrahim Maniku'}), (c:Company {name: 'Mahaweli Reach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'Abbasally Nuruddin Esufally'}), (c:Company {name: 'Mahaweli Reach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'Jayampathy Charitha Ratwatte'}), (c:Company {name: 'Mahaweli Reach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'Joseph Rosario Philip Mancius Paiva'}), (c:Company {name: 'Mahaweli Reach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'Fathimath Visha Mahir'}), (c:Company {name: 'Mahaweli Reach Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 34
// Step 5: Metrics;

// Query 35
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 39
// Step 6: HAS_METRIC Relationships;

// Query 40
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 810337940, r.year = 2024, r.as_of = date('2024-03-31');

// Query 41
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 503948227, r.year = 2023, r.as_of = date('2023-03-31');

// Query 42
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 423434000, r.year = 2022, r.as_of = date('2022-03-31');

// Query 43
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 213128000, r.year = 2021, r.as_of = date('2021-03-31');

// Query 44
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 446380000, r.year = 2020, r.as_of = date('2020-03-31');

// Query 45
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -275561303, r.year = 2024, r.as_of = date('2024-03-31');

// Query 46
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -155453756, r.year = 2023, r.as_of = date('2023-03-31');

// Query 47
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -108129000, r.year = 2022, r.as_of = date('2022-03-31');

// Query 48
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -200720000, r.year = 2021, r.as_of = date('2021-03-31');

// Query 49
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -140034000, r.year = 2020, r.as_of = date('2020-03-31');

// Query 50
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -140034000, r.year = 2019, r.as_of = date('2019-03-31');

// Query 51
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3.31, r.year = 2024, r.as_of = date('2024-03-31');

// Query 52
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4.75, r.year = 2023, r.as_of = date('2023-03-31');

// Query 53
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3.75, r.year = 2022, r.as_of = date('2022-03-31');

// Query 54
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.26, r.year = 2021, r.as_of = date('2021-03-31');

// Query 55
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.84, r.year = 2020, r.as_of = date('2020-03-31');

// Query 56
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.84, r.year = 2019, r.as_of = date('2019-03-31');

// Query 57
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2014138926, r.year = 2024, r.as_of = date('2024-03-31');

// Query 58
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2288795407, r.year = 2023, r.as_of = date('2023-03-31');

// Query 59
// Step 7: Sectors;

// Query 60
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 61
// Step 8: IN_SECTOR Relationships;

// Query 62
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 63
// Step 9: Products/Services;

// Query 64
MERGE (p:Product {name: 'Hotel Services'}) ON CREATE SET p.id = 'hotel_services';

// Query 65
// Step 10: OFFERS Relationships;

// Query 66
MATCH (c:Company {name: 'Mahaweli Reach Hotels'}), (p:Product {name: 'Hotel Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 67
// Step 11: Company-Company Relationships - No valid OWNS or MANAGES relationships found.;

// Total queries: 67
// Generated on: 2025-10-03T01:18:38.881197
