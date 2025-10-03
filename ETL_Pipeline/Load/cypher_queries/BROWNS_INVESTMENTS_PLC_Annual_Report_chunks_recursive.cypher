// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Browns Investments'}) ON CREATE SET c.id = 'browns_investments', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Deloitte'}) ON CREATE SET a.id = 'deloitte', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Browns Investments'}), (a:Auditor {name: 'Deloitte'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'Ishara Nanayakkara'}) ON CREATE SET p.id = 'ishara_nanayakkara';

// Query 9
MERGE (p:Person {name: 'Kapila Jayawardena'}) ON CREATE SET p.id = 'kapila_jayawardena';

// Query 10
MERGE (p:Person {name: 'Kalsha Amarasinghe'}) ON CREATE SET p.id = 'kalsha_amarasinghe';

// Query 11
MERGE (p:Person {name: 'Kamantha Amarasekera'}) ON CREATE SET p.id = 'kamantha_amarasekera';

// Query 12
MERGE (p:Person {name: 'Dr. Jayanta Swaminathan'}) ON CREATE SET p.id = 'dr_jayanta_swaminathan';

// Query 13
MERGE (p:Person {name: 'Stefan Furkhan'}) ON CREATE SET p.id = 'stefan_furkhan';

// Query 14
// Step 5: HOLDS_POSITION Relationships;

// Query 15
MATCH (p:Person {name: 'Ishara Nanayakkara'}), (c:Company {name: 'Browns Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'Kapila Jayawardena'}), (c:Company {name: 'Browns Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Kalsha Amarasinghe'}), (c:Company {name: 'Browns Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'Kamantha Amarasekera'}), (c:Company {name: 'Browns Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'Dr. Jayanta Swaminathan'}), (c:Company {name: 'Browns Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'Stefan Furkhan'}), (c:Company {name: 'Browns Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
// Step 6: Metrics;

// Query 22
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 28
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 29
// Step 7: HAS_METRIC Relationships;

// Query 30
MATCH (c:Company {name: 'Browns Investments'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47429333000, r.year = 2024;

// Query 31
MATCH (c:Company {name: 'Browns Investments'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42015935000, r.year = 2023;

// Query 32
MATCH (c:Company {name: 'Browns Investments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10039003000, r.year = 2024;

// Query 33
MATCH (c:Company {name: 'Browns Investments'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -11993747000, r.year = 2023;

// Query 34
MATCH (c:Company {name: 'Browns Investments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5783364000, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Browns Investments'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -12234293000, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Browns Investments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.70, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Browns Investments'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.64, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Browns Investments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 129601555000, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Browns Investments'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 113613215000, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Browns Investments'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42.40, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Browns Investments'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42.89, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Browns Investments'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.31, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Browns Investments'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.37, r.year = 2023;

// Query 44
// Step 8: Sectors;

// Query 45
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 46
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 47
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 48
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 49
MERGE (s:Sector {name: 'Utilities'}) ON CREATE SET s.id = 'utilities';

// Query 50
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 51
// Step 9: IN_SECTOR Relationships;

// Query 52
MATCH (c:Company {name: 'Browns Investments'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 53
MATCH (c:Company {name: 'Browns Investments'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 54
MATCH (c:Company {name: 'Browns Investments'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 55
MATCH (c:Company {name: 'Browns Investments'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 56
MATCH (c:Company {name: 'Browns Investments'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 57
MATCH (c:Company {name: 'Browns Investments'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 58
// Step 10: Product nodes creation;

// Query 59
MERGE (p:Product {name: 'Teak Timber Flooring'}) ON CREATE SET p.id = 'teak_timber_flooring';

// Query 60
MERGE (p:Product {name: 'Pallet Manufacturing'}) ON CREATE SET p.id = 'pallet_manufacturing';

// Query 61
MERGE (p:Product {name: 'Coated Fertilisers'}) ON CREATE SET p.id = 'coated_fertilisers';

// Query 62
MERGE (p:Product {name: 'New Blends'}) ON CREATE SET p.id = 'new_blends';

// Query 63
MERGE (p:Product {name: 'Irrigation Solutions'}) ON CREATE SET p.id = 'irrigation_solutions';

// Query 64
MERGE (p:Product {name: 'Quarrying Services'}) ON CREATE SET p.id = 'quarrying_services';

// Query 65
MERGE (p:Product {name: 'Metal Products'}) ON CREATE SET p.id = 'metal_products';

// Query 66
MERGE (p:Product {name: 'Cables'}) ON CREATE SET p.id = 'cables';

// Query 67
// Step 11: OFFERS Relationships;

// Query 68
MATCH (c:Company {name: 'Browns Investments'}), (p:Product {name: 'Teak Timber Flooring'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Browns Investments'}), (p:Product {name: 'Pallet Manufacturing'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'Browns Investments'}), (p:Product {name: 'Coated Fertilisers'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Browns Investments'}), (p:Product {name: 'New Blends'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Browns Investments'}), (p:Product {name: 'Irrigation Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'Browns Investments'}), (p:Product {name: 'Quarrying Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'Browns Investments'}), (p:Product {name: 'Metal Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'Browns Investments'}), (p:Product {name: 'Cables'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
// Step 12: Company-Company Relationships (OWNS, MANAGES);

// Query 77
MERGE (parent:Company {name: 'Brown & Company'}) ON CREATE SET parent.id = 'brown_and_company';

// Query 78
MATCH (parent:Company {name: 'Brown & Company'}), (child:Company {name: 'Browns Investments'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 64.55, r.as_of = date('2024-03-31');

// Query 79
MERGE (manager:Company {name: 'LOLC Technology Services'}) ON CREATE SET manager.id = 'lolc_technology_services';

// Query 80
MATCH (manager:Company {name: 'LOLC Technology Services'}), (managed:Company {name: 'Browns Investments'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'manages cyber security and provides IT related services', r.as_of = date('2024-03-31');

// Total queries: 80
// Generated on: 2025-10-03T03:51:05.895057
