// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Asian Hotels and Properties'}) ON CREATE SET c.id = 'asian_hotels_and_properties', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: Management Company (Deloitte Advisory Services);

// Query 8
MERGE (m_co:Company {name: 'Deloitte Advisory Services'}) ON CREATE SET m_co.id = 'deloitte_advisory_services';

// Query 9
// Step 5: MANAGES Relationship (Deloitte as internal auditor);

// Query 10
MATCH (manager:Company {name: 'Deloitte Advisory Services'}), (managed:Company {name: 'Asian Hotels and Properties'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Outsourced Internal Auditing', r.as_of = date('2024-03-31');

// Query 11
// Step 6: People - Directors and Executives;

// Query 12
MERGE (p:Person {name: 'Krishan Niraj Jayasekara Balendra'}) ON CREATE SET p.id = 'krishan_niraj_jayasekara_balendra';

// Query 13
MERGE (p:Person {name: 'Joseph Gihan Adisha Cooray'}) ON CREATE SET p.id = 'joseph_gihan_adisha_cooray';

// Query 14
MERGE (p:Person {name: 'Suresh Rajendra'}) ON CREATE SET p.id = 'suresh_rajendra';

// Query 15
MERGE (p:Person {name: 'Jegatheesan Durairatnam'}) ON CREATE SET p.id = 'jegatheesan_durairatnam';

// Query 16
MERGE (p:Person {name: 'Ashan Suresh De Zoysa'}) ON CREATE SET p.id = 'ashan_suresh_de_zoysa';

// Query 17
MERGE (p:Person {name: 'Mikael Roland Svensson'}) ON CREATE SET p.id = 'mikael_roland_svensson';

// Query 18
MERGE (p:Person {name: 'Changa Lashantha Poojitha Gunawardane'}) ON CREATE SET p.id = 'changa_lashantha_poojitha_gunawardane';

// Query 19
MERGE (p:Person {name: 'Aroshi Nanayakkara'}) ON CREATE SET p.id = 'aroshi_nanayakkara';

// Query 20
// Step 7: HOLDS_POSITION Relationships;

// Query 21
MATCH (p:Person {name: 'Krishan Niraj Jayasekara Balendra'}), (c:Company {name: 'Asian Hotels and Properties'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Joseph Gihan Adisha Cooray'}), (c:Company {name: 'Asian Hotels and Properties'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Suresh Rajendra'}), (c:Company {name: 'Asian Hotels and Properties'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Jegatheesan Durairatnam'}), (c:Company {name: 'Asian Hotels and Properties'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Ashan Suresh De Zoysa'}), (c:Company {name: 'Asian Hotels and Properties'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'Mikael Roland Svensson'}), (c:Company {name: 'Asian Hotels and Properties'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'Changa Lashantha Poojitha Gunawardane'}), (c:Company {name: 'Asian Hotels and Properties'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'Aroshi Nanayakkara'}), (c:Company {name: 'Asian Hotels and Properties'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 29
// Step 8: Metric Nodes Creation;

// Query 30
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 34
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 37
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 38
// Step 9: HAS_METRIC Relationships;

// Query 39
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772000000, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8417000000, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4095000000, r.year = 2022;

// Query 42
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790000000, r.year = 2021;

// Query 43
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5560000000, r.year = 2020;

// Query 44
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212000000, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -133000000, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -459000000, r.year = 2022;

// Query 47
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2370000000, r.year = 2021;

// Query 48
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 199000000, r.year = 2020;

// Query 49
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78000000, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -333000000, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -508000000, r.year = 2022;

// Query 52
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2244000000, r.year = 2021;

// Query 53
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106000000, r.year = 2020;

// Query 54
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.07, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.92, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.62, r.year = 2022;

// Query 57
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.54, r.year = 2021;

// Query 58
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.15, r.year = 2020;

// Query 59
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381000000, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45912000000, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42509000000, r.year = 2022;

// Query 62
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40869000000, r.year = 2021;

// Query 63
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42582000000, r.year = 2020;

// Query 64
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33549000000, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 32238000000, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.45, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.41, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.05, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.63, r.year = 2023;

// Query 70
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.22, r.year = 2022;

// Query 71
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.53, r.year = 2021;

// Query 72
// Step 10: Sector Nodes Creation;

// Query 73
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 74
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 75
// Step 11: IN_SECTOR Relationships;

// Query 76
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 77
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 78
// Step 12: Product Nodes Creation;

// Query 79
MERGE (p:Product {name: 'Hoteliering Services'}) ON CREATE SET p.id = 'hoteliering_services';

// Query 80
MERGE (p:Product {name: 'Property Development'}) ON CREATE SET p.id = 'property_development';

// Query 81
MERGE (p:Product {name: 'Premises Rental'}) ON CREATE SET p.id = 'premises_rental';

// Query 82
// Step 13: OFFERS Relationships;

// Query 83
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (p:Product {name: 'Hoteliering Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (p:Product {name: 'Property Development'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Asian Hotels and Properties'}), (p:Product {name: 'Premises Rental'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 85
// Generated on: 2025-10-02T22:57:33.033621
