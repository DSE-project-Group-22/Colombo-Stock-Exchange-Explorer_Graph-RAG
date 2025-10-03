// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'C M Holdings'}) ON CREATE SET c.id = 'c_m_holdings', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('1909-07-09');

// Query 3
MERGE (c:Company {name: 'Corporate Managers & Secretaries'}) ON CREATE SET c.id = 'corporate_managers_and_secretaries';

// Query 4
MERGE (c:Company {name: 'People\'s Bank'}) ON CREATE SET c.id = 'peoples_bank';

// Query 5
MERGE (c:Company {name: 'Hatton National Bank'}) ON CREATE SET c.id = 'hatton_national_bank';

// Query 6
MERGE (c:Company {name: 'Commercial Bank of Ceylon'}) ON CREATE SET c.id = 'commercial_bank_of_ceylon';

// Query 7
MERGE (c:Company {name: 'Julius & Creasy'}) ON CREATE SET c.id = 'julius_and_creasy';

// Query 8
MERGE (c:Company {name: 'Colombo Stock Exchange'}) ON CREATE SET c.id = 'colombo_stock_exchange';

// Query 9
// Step 2: Auditor;

// Query 10
MERGE (a:Auditor:Company {name: 'Deloitte'}) ON CREATE SET a.id = 'deloitte', a.type = 'Auditing Firm';

// Query 11
// Step 3: AUDITED_BY Relationship;

// Query 12
MATCH (c:Company {name: 'C M Holdings'}), (a:Auditor {name: 'Deloitte'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 13
// Step 4: People - Directors and Executives;

// Query 14
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 15
MERGE (p:Person {name: 'J. M. Swaminathan'}) ON CREATE SET p.id = 'j_m_swaminathan';

// Query 16
MERGE (p:Person {name: 'A. M. de S. Jayaratne'}) ON CREATE SET p.id = 'a_m_de_s_jayaratne';

// Query 17
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 18
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 19
MERGE (p:Person {name: 'R. M. M. J. Ratnayake'}) ON CREATE SET p.id = 'r_m_m_j_ratnayake';

// Query 20
MERGE (p:Person {name: 'Arosh Azariah'}) ON CREATE SET p.id = 'arosh_azariah';

// Query 21
MERGE (p:Person {name: 'A. Rajaratnam'}) ON CREATE SET p.id = 'a_rajaratnam';

// Query 22
// Step 5: HOLDS_POSITION Relationships;

// Query 23
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'C M Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'J. M. Swaminathan'}), (c:Company {name: 'C M Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'A. M. de S. Jayaratne'}), (c:Company {name: 'C M Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'S. Rajaratnam'}), (c:Company {name: 'C M Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'Anushman Rajaratnam'}), (c:Company {name: 'C M Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'R. M. M. J. Ratnayake'}), (c:Company {name: 'C M Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'Arosh Azariah'}), (c:Company {name: 'C M Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'A. Rajaratnam'}), (c:Company {name: 'C M Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2023-08-26');

// Query 31
// Step 6: Person OWNS_SHARES Relationships;

// Query 32
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'C M Holdings'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 500, r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'J. M. Swaminathan'}), (c:Company {name: 'C M Holdings'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 561, r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'A. M. de S. Jayaratne'}), (c:Company {name: 'C M Holdings'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 467, r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'R. M. M. J. Ratnayake'}), (c:Company {name: 'C M Holdings'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 185, r.as_of = date('2024-03-31');

// Query 36
// Step 7: Metrics;

// Query 37
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 43
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 44
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 46
// Step 8: HAS_METRIC Relationships;

// Query 47
MATCH (c:Company {name: 'C M Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 305685802, r.year = 2024, r.as_of = date('2024-03-31');

// Query 48
MATCH (c:Company {name: 'C M Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 276430164, r.year = 2023, r.as_of = date('2023-03-31');

// Query 49
MATCH (c:Company {name: 'C M Holdings'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 321962700, r.year = 2024, r.as_of = date('2024-03-31');

// Query 50
MATCH (c:Company {name: 'C M Holdings'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 94135675, r.year = 2023, r.as_of = date('2023-03-31');

// Query 51
MATCH (c:Company {name: 'C M Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 243000933, r.year = 2024, r.as_of = date('2024-03-31');

// Query 52
MATCH (c:Company {name: 'C M Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 107749078, r.year = 2023, r.as_of = date('2023-03-31');

// Query 53
MATCH (c:Company {name: 'C M Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 208317683, r.year = 2024, r.as_of = date('2024-03-31');

// Query 54
MATCH (c:Company {name: 'C M Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 49747680, r.year = 2023, r.as_of = date('2023-03-31');

// Query 55
MATCH (c:Company {name: 'C M Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13.69, r.year = 2024, r.as_of = date('2024-03-31');

// Query 56
MATCH (c:Company {name: 'C M Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.27, r.year = 2023, r.as_of = date('2023-03-31');

// Query 57
MATCH (c:Company {name: 'C M Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.23, r.year = 2024, r.as_of = date('2024-03-31');

// Query 58
MATCH (c:Company {name: 'C M Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.25, r.year = 2023, r.as_of = date('2023-03-31');

// Query 59
MATCH (c:Company {name: 'C M Holdings'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.38, r.year = 2024, r.as_of = date('2024-03-31');

// Query 60
MATCH (c:Company {name: 'C M Holdings'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.83, r.year = 2023, r.as_of = date('2023-03-31');

// Query 61
MATCH (c:Company {name: 'C M Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3593718482, r.year = 2024, r.as_of = date('2024-03-31');

// Query 62
MATCH (c:Company {name: 'C M Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3363070418, r.year = 2023, r.as_of = date('2023-03-31');

// Query 63
MATCH (c:Company {name: 'C M Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4729186808, r.year = 2024, r.as_of = date('2024-03-31');

// Query 64
MATCH (c:Company {name: 'C M Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4408329754, r.year = 2023, r.as_of = date('2023-03-31');

// Query 65
// Step 9: Sectors;

// Query 66
MERGE (s:Sector {name: 'Automobiles and Components'}) ON CREATE SET s.id = 'automobiles_and_components';

// Query 67
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 68
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 69
// Step 10: IN_SECTOR Relationships;

// Query 70
MATCH (c:Company {name: 'C M Holdings'}), (s:Sector {name: 'Automobiles and Components'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 71
MATCH (c:Company {name: 'C M Holdings'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 72
MATCH (c:Company {name: 'C M Holdings'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 73
// Step 11: Products;

// Query 74
MERGE (p:Product {name: 'Motor Vehicles'}) ON CREATE SET p.id = 'motor_vehicles';

// Query 75
MERGE (p:Product {name: 'Motor Vehicle Repair and Maintenance'}) ON CREATE SET p.id = 'motor_vehicle_repair_and_maintenance';

// Query 76
MERGE (p:Product {name: 'Motor Vehicle Spare Parts'}) ON CREATE SET p.id = 'motor_vehicle_spare_parts';

// Query 77
MERGE (p:Product {name: 'Property Leasing'}) ON CREATE SET p.id = 'property_leasing';

// Query 78
// Step 12: OFFERS Relationships;

// Query 79
MATCH (c:Company {name: 'C M Holdings'}), (p:Product {name: 'Motor Vehicles'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'C M Holdings'}), (p:Product {name: 'Motor Vehicle Repair and Maintenance'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'C M Holdings'}), (p:Product {name: 'Motor Vehicle Spare Parts'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'C M Holdings'}), (p:Product {name: 'Property Leasing'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
// Step 13: MANAGES Relationship;

// Query 84
MATCH (manager:Company {name: 'Corporate Managers & Secretaries'}), (managed:Company {name: 'C M Holdings'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Secretarial and Management Services', r.as_of = date('2024-03-31');

// Total queries: 84
// Generated on: 2025-10-03T00:52:20.869672
