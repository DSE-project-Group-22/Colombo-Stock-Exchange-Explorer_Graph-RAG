// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Paragon Ceylon'}) ON CREATE SET c.id = 'paragon_ceylon', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('1958-06-29');

// Query 3
// Step 2: Auditor - Skipped as 'MGI SL Assurance Partners' is not in the hardcoded list.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'L. I. Ratnasabapathy'}) ON CREATE SET p.id = 'l_i_ratnasabapathy';

// Query 6
MERGE (p:Person {name: 'A. M. De Alwis'}) ON CREATE SET p.id = 'a_m_de_alwis';

// Query 7
MERGE (p:Person {name: 'J. B. M. Ponrajah'}) ON CREATE SET p.id = 'j_b_m_ponrajah';

// Query 8
MERGE (p:Person {name: 'P. S. R. Casie Chitty'}) ON CREATE SET p.id = 'p_s_r_casie_chitty';

// Query 9
MERGE (p:Person {name: 'M. M. Marzook'}) ON CREATE SET p.id = 'm_m_marzook';

// Query 10
MERGE (p:Person {name: 'M. R. Y. Riffai'}) ON CREATE SET p.id = 'm_r_y_riffai';

// Query 11
MERGE (p:Person {name: 'D. T. De Alwis'}) ON CREATE SET p.id = 'd_t_de_alwis';

// Query 12
// Step 4: HOLDS_POSITION Relationships;

// Query 13
MATCH (p:Person {name: 'L. I. Ratnasabapathy'}), (c:Company {name: 'Paragon Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 14
MATCH (p:Person {name: 'L. I. Ratnasabapathy'}), (c:Company {name: 'Paragon Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'A. M. De Alwis'}), (c:Company {name: 'Paragon Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'J. B. M. Ponrajah'}), (c:Company {name: 'Paragon Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'P. S. R. Casie Chitty'}), (c:Company {name: 'Paragon Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'M. M. Marzook'}), (c:Company {name: 'Paragon Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'M. R. Y. Riffai'}), (c:Company {name: 'Paragon Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-12-01');

// Query 20
MATCH (p:Person {name: 'D. T. De Alwis'}), (c:Company {name: 'Paragon Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-12-01');

// Query 21
// Step 5: Metrics;

// Query 22
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 29
// Step 6: HAS_METRIC Relationships;

// Query 30
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10520042, r.year = 2024;

// Query 31
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7404970, r.year = 2023;

// Query 32
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4540405, r.year = 2022;

// Query 33
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4372400, r.year = 2021;

// Query 34
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4666871, r.year = 2020;

// Query 35
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2408379, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 497610, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1016465, r.year = 2022;

// Query 38
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 910035, r.year = 2021;

// Query 39
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 458449, r.year = 2020;

// Query 40
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2408379, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 497610, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 794954, r.year = 2022;

// Query 43
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 902743, r.year = 2021;

// Query 44
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 485288, r.year = 2020;

// Query 45
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4317820, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1937005, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1430650, r.year = 2022;

// Query 48
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 643768, r.year = 2021;

// Query 49
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -412710, r.year = 2020;

// Query 50
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6050622, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5600830, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7307155, r.year = 2022;

// Query 53
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5216964, r.year = 2021;

// Query 54
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7618047, r.year = 2020;

// Query 55
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2356143, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 480673, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1070508, r.year = 2022;

// Query 58
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 867401, r.year = 2021;

// Query 59
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 460509, r.year = 2020;

// Query 60
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.41, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.50, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.79, r.year = 2022;

// Query 63
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.90, r.year = 2021;

// Query 64
MATCH (c:Company {name: 'Paragon Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.49, r.year = 2020;

// Query 65
// Step 7: Sectors;

// Query 66
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 67
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 68
// Step 8: IN_SECTOR Relationships;

// Query 69
MATCH (c:Company {name: 'Paragon Ceylon'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 70
MATCH (c:Company {name: 'Paragon Ceylon'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 71
// Step 9: Product nodes creation;

// Query 72
MERGE (p:Product {name: 'Paragon security register stationary'}) ON CREATE SET p.id = 'paragon_security_register_stationary';

// Query 73
MERGE (p:Product {name: 'Blank and preprinted computer continuous stationary'}) ON CREATE SET p.id = 'blank_and_preprinted_computer_continuous_stationary';

// Query 74
MERGE (p:Product {name: 'Rental of premises'}) ON CREATE SET p.id = 'rental_of_premises';

// Query 75
MERGE (p:Product {name: 'Computer stationery'}) ON CREATE SET p.id = 'computer_stationery';

// Query 76
// Step 10: OFFERS relationships;

// Query 77
MATCH (c:Company {name: 'Paragon Ceylon'}), (p:Product {name: 'Paragon security register stationary'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'Paragon Ceylon'}), (p:Product {name: 'Blank and preprinted computer continuous stationary'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'Paragon Ceylon'}), (p:Product {name: 'Rental of premises'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'Paragon Ceylon'}), (p:Product {name: 'Computer stationery'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 80
// Generated on: 2025-10-02T22:10:27.354397
