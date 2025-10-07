// Query 1
// Step 1: Main Company and related Companies;

// Query 2
MERGE (c:Company {name: 'Serendib Hotels'}) ON CREATE SET c.id = 'serendib_hotels', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'Dolphin Hotels'}) ON CREATE SET c.id = 'dolphin_hotels';

// Query 4
MERGE (c:Company {name: 'Hotel Sigiriya'}) ON CREATE SET c.id = 'hotel_sigiriya';

// Query 5
MERGE (c:Company {name: 'Frontier Capital Lanka'}) ON CREATE SET c.id = 'frontier_capital_lanka';

// Query 6
MERGE (c:Company {name: 'Serendib Leisure Management'}) ON CREATE SET c.id = 'serendib_leisure_management';

// Query 7
MERGE (c:Company {name: 'Eden Hotel Lanka'}) ON CREATE SET c.id = 'eden_hotel_lanka';

// Query 8
// Step 2: Auditor;

// Query 9
MERGE (a:Auditor:Company {name: 'Deloitte'}) ON CREATE SET a.id = 'deloitte', a.type = 'Auditing Firm';

// Query 10
MATCH (c:Company {name: 'Serendib Hotels'}), (a:Auditor {name: 'Deloitte'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 11
// Step 3: People - Directors and Executives;

// Query 12
MERGE (p:Person {name: 'W D K Jayawardena'}) ON CREATE SET p.id = 'w_d_k_jayawardena';

// Query 13
MERGE (p:Person {name: 'W A T M Wijesinghe'}) ON CREATE SET p.id = 'w_a_t_m_wijesinghe';

// Query 14
MERGE (p:Person {name: 'Dr. J M Swaminathan'}) ON CREATE SET p.id = 'dr_j_m_swaminathan';

// Query 15
MERGE (p:Person {name: 'D S K Amarasekera'}) ON CREATE SET p.id = 'd_s_k_amarasekera';

// Query 16
MERGE (p:Person {name: 'Mrs. K U Amarasinghe'}) ON CREATE SET p.id = 'mrs_k_u_amarasinghe';

// Query 17
MERGE (p:Person {name: 'S A Chojnacki'}) ON CREATE SET p.id = 's_a_chojnacki';

// Query 18
MERGE (p:Person {name: 'E J D Rajakarier'}) ON CREATE SET p.id = 'e_j_d_rajakarier';

// Query 19
MERGE (p:Person {name: 'J P S Kurumbalapitiya'}) ON CREATE SET p.id = 'j_p_s_kurumbalapitiya';

// Query 20
// Step 4: HOLDS_POSITION Relationships;

// Query 21
MATCH (p:Person {name: 'W D K Jayawardena'}), (c:Company {name: 'Serendib Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'W A T M Wijesinghe'}), (c:Company {name: 'Serendib Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Dr. J M Swaminathan'}), (c:Company {name: 'Serendib Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'D S K Amarasekera'}), (c:Company {name: 'Serendib Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Mrs. K U Amarasinghe'}), (c:Company {name: 'Serendib Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'S A Chojnacki'}), (c:Company {name: 'Serendib Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'E J D Rajakarier'}), (c:Company {name: 'Serendib Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'J P S Kurumbalapitiya'}), (c:Company {name: 'Serendib Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
// Step 5: Metrics;

// Query 30
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Interest Cover'}) ON CREATE SET m.id = 'interest_cover', m.unit = 'Times';

// Query 35
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 36
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 39
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 40
// Step 6: HAS_METRIC Relationships (Group values for Serendib Hotels);

// Query 41
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2869507000, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1441924000, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 660528000, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -447659000, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 559733000, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -451577000, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.95, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.94, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.96, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.15, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.11, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.09, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9411704000, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8900743000, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5855241000, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5296966000, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.61, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.54, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.07, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22.38, r.year = 2023;

// Query 61
// Step 6: HAS_METRIC Relationships (Company specific values for Serendib Hotels);

// Query 62
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 746297273, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 464251166, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 53617019, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -345591352, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 55731447, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -291784072, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3871647183, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3743123232, r.year = 2023;

// Query 70
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2395596703, r.year = 2024;

// Query 71
MATCH (c:Company {name: 'Serendib Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2338138720, r.year = 2023;

// Query 72
// Step 7: Sectors;

// Query 73
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 74
// Step 8: IN_SECTOR Relationships;

// Query 75
MATCH (c:Company {name: 'Serendib Hotels'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 76
// Step 9: Products;

// Query 77
MERGE (p:Product {name: 'Thaala Bentota Resort'}) ON CREATE SET p.id = 'thaala_bentota_resort';

// Query 78
MERGE (p:Product {name: 'Dolphin Hotel'}) ON CREATE SET p.id = 'dolphin_hotel';

// Query 79
MERGE (p:Product {name: 'Hotel Sigiriya'}) ON CREATE SET p.id = 'hotel_sigiriya';

// Query 80
MERGE (p:Product {name: 'Hotel Mirrisa'}) ON CREATE SET p.id = 'hotel_mirrisa';

// Query 81
// Step 10: OFFERS Relationships;

// Query 82
MATCH (c:Company {name: 'Serendib Hotels'}), (p:Product {name: 'Thaala Bentota Resort'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Serendib Hotels'}), (p:Product {name: 'Dolphin Hotel'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Serendib Hotels'}), (p:Product {name: 'Hotel Sigiriya'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Serendib Hotels'}), (p:Product {name: 'Hotel Mirrisa'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
// Step 11: Company-Company Relationships (MANAGES);

// Query 87
MATCH (manager:Company {name: 'Serendib Leisure Management'}), (managed:Company {name: 'Serendib Hotels'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Management agreement for hotel operations', r.as_of = date('2024-03-31');

// Total queries: 87
// Generated on: 2025-10-03T00:10:13.298786
