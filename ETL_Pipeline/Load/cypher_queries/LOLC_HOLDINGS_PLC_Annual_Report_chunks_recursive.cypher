// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'LOLC Holdings'}) ON CREATE SET c.id = 'lolc_holdings', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'LOLC Holdings'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 7
// Step 4: Subsidiary Companies (without explicit ownership percentage);

// Query 8
MERGE (c:Company {name: 'LOLC Motors'}) ON CREATE SET c.id = 'lolc_motors', c.region = 'Sri Lanka';

// Query 9
MERGE (c:Company {name: 'LOLCTECH'}) ON CREATE SET c.id = 'lolctech', c.region = 'Sri Lanka';

// Query 10
// Step 5: Person Nodes;

// Query 11
MERGE (p:Person {name: 'Ishara Chinthaka Nanayakkara'}) ON CREATE SET p.id = 'ishara_chinthaka_nanayakkara';

// Query 12
MERGE (p:Person {name: 'Waduthantri Dharshan Kapila Jayawardena'}) ON CREATE SET p.id = 'waduthantri_darshan_kapila_jayawardena';

// Query 13
MERGE (p:Person {name: 'Kalsha Upeka Amarasinghe'}) ON CREATE SET p.id = 'kalsha_upeka_amarasinghe';

// Query 14
MERGE (p:Person {name: 'Desamanya Minuwanpitiyage Dharmasiri Dayananda Pieris'}) ON CREATE SET p.id = 'desamanya_minuwanpitiyage_dharmasiri_dayananda_pieris';

// Query 15
MERGE (p:Person {name: 'Ravindra Ajith Fernando'}) ON CREATE SET p.id = 'ravindra_ajith_fernando';

// Query 16
MERGE (p:Person {name: 'Francisco Kankanamalage Conrad Prasad Niroshan Dias'}) ON CREATE SET p.id = 'francisco_kankanamalage_conrad_prasad_niroshan_dias';

// Query 17
// Step 6: HOLDS_POSITION Relationships;

// Query 18
MATCH (p:Person {name: 'Ishara Chinthaka Nanayakkara'}), (c:Company {name: 'LOLC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'Waduthantri Dharshan Kapila Jayawardena'}), (c:Company {name: 'LOLC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'Waduthantri Dharshan Kapila Jayawardena'}), (c:Company {name: 'LOLC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Kalsha Upeka Amarasinghe'}), (c:Company {name: 'LOLC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Desamanya Minuwanpitiyage Dharmasiri Dayananda Pieris'}), (c:Company {name: 'LOLC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Ravindra Ajith Fernando'}), (c:Company {name: 'LOLC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Francisco Kankanamalage Conrad Prasad Niroshan Dias'}), (c:Company {name: 'LOLC Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
// Step 7: Metric Nodes;

// Query 26
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 32
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 33
// Step 8: HAS_METRIC Relationships;

// Query 34
MATCH (c:Company {name: 'LOLC Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30347000000, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'LOLC Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29914000000, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'LOLC Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 616474000000, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'LOLC Holdings'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 337746502000, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'LOLC Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 85900000000, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'LOLC Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.03, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'LOLC Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 487326670000, r.year = 2024;

// Query 41
// Step 9: Sector Nodes;

// Query 42
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 43
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 44
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 45
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 46
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 47
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 48
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 49
MERGE (s:Sector {name: 'Utilities'}) ON CREATE SET s.id = 'utilities';

// Query 50
MERGE (s:Sector {name: 'Telecommunication Services'}) ON CREATE SET s.id = 'telecommunication_services';

// Query 51
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 52
// Step 10: IN_SECTOR Relationships;

// Query 53
MATCH (c:Company {name: 'LOLC Holdings'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 54
MATCH (c:Company {name: 'LOLC Holdings'}), (s:Sector {name: 'Insurance'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 55
MATCH (c:Company {name: 'LOLC Holdings'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 56
MATCH (c:Company {name: 'LOLC Holdings'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 57
MATCH (c:Company {name: 'LOLC Holdings'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 58
MATCH (c:Company {name: 'LOLC Holdings'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 59
MATCH (c:Company {name: 'LOLC Holdings'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 60
MATCH (c:Company {name: 'LOLC Holdings'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 61
MATCH (c:Company {name: 'LOLC Holdings'}), (s:Sector {name: 'Telecommunication Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 62
MATCH (c:Company {name: 'LOLC Holdings'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 63
// Step 11: Product Nodes;

// Query 64
MERGE (p:Product {name: 'Vehicle Maintenance'}) ON CREATE SET p.id = 'vehicle_maintenance';

// Query 65
MERGE (p:Product {name: 'Vehicle Servicing'}) ON CREATE SET p.id = 'vehicle_servicing';

// Query 66
MERGE (p:Product {name: 'Vehicle Repairs'}) ON CREATE SET p.id = 'vehicle_repairs';

// Query 67
MERGE (p:Product {name: 'LOLC GPT'}) ON CREATE SET p.id = 'lolc_gpt';

// Query 68
// Step 12: OFFERS Relationships;

// Query 69
MATCH (c:Company {name: 'LOLC Motors'}), (p:Product {name: 'Vehicle Maintenance'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'LOLC Motors'}), (p:Product {name: 'Vehicle Servicing'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'LOLC Motors'}), (p:Product {name: 'Vehicle Repairs'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'LOLCTECH'}), (p:Product {name: 'LOLC GPT'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 72
// Generated on: 2025-10-02T22:02:18.108917
