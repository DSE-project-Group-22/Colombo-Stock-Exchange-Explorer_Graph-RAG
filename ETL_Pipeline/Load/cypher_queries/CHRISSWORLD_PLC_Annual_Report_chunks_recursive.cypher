// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Chrissworld'}) ON CREATE SET c.id = 'chrissworld', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - Skipped as 'WIJEYERATNE & COMPANY' is not in the hardcoded list of auditing firms.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Christopher A.M. Perera'}) ON CREATE SET p.id = 'christopher_a_m_perera';

// Query 6
MERGE (p:Person {name: 'Suraj Suraweera'}) ON CREATE SET p.id = 'suraj_suraweera';

// Query 7
MERGE (p:Person {name: 'Sithira Wickramasekera'}) ON CREATE SET p.id = 'sithira_wickramasekera';

// Query 8
MERGE (p:Person {name: 'Shanaka Lansakara'}) ON CREATE SET p.id = 'shanaka_lansakara';

// Query 9
MERGE (p:Person {name: 'Melanga A. Doolwala'}) ON CREATE SET p.id = 'melanga_a_doolwala';

// Query 10
MERGE (p:Person {name: 'Rohan Ladduwahetty'}) ON CREATE SET p.id = 'rohan_ladduwahetty';

// Query 11
MERGE (p:Person {name: 'Shama Ismail Mohamed'}) ON CREATE SET p.id = 'shama_ismail_mohamed';

// Query 12
// Step 4: HOLDS_POSITION Relationships;

// Query 13
MATCH (p:Person {name: 'Christopher A.M. Perera'}), (c:Company {name: 'Chrissworld'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 14
MATCH (p:Person {name: 'Suraj Suraweera'}), (c:Company {name: 'Chrissworld'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'Suraj Suraweera'}), (c:Company {name: 'Chrissworld'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'Sithira Wickramasekera'}), (c:Company {name: 'Chrissworld'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Shanaka Lansakara'}), (c:Company {name: 'Chrissworld'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'Melanga A. Doolwala'}), (c:Company {name: 'Chrissworld'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'Rohan Ladduwahetty'}), (c:Company {name: 'Chrissworld'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'Shama Ismail Mohamed'}), (c:Company {name: 'Chrissworld'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-03-31');

// Query 21
// Step 5: Metrics;

// Query 22
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 29
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 30
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 32
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 33
// Step 6: HAS_METRIC Relationships (Year 2024);

// Query 34
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 509757428.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 35
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 115870714.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 36
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 32428363.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 37
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 22840572.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 38
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 291549458.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 39
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 131026713.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 40
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.56, r.year = 2024, r.as_of = date('2024-03-31');

// Query 41
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 36.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 42
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.76, r.year = 2024, r.as_of = date('2024-03-31');

// Query 43
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 44
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 17.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 45
// Step 6: HAS_METRIC Relationships (Year 2023);

// Query 46
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 308603867.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 47
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 88530688.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 48
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16156502.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 49
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13075737.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 50
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 215093344.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 51
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 108186142.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 52
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.55, r.year = 2023, r.as_of = date('2023-03-31');

// Query 53
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 54
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.42, r.year = 2023, r.as_of = date('2023-03-31');

// Query 55
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 56
MATCH (c:Company {name: 'Chrissworld'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 57
// Step 7: Sectors;

// Query 58
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 59
// Step 8: IN_SECTOR Relationships;

// Query 60
MATCH (c:Company {name: 'Chrissworld'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 61
// Step 9: Products;

// Query 62
MERGE (p:Product {name: 'Warehouse Management'}) ON CREATE SET p.id = 'warehouse_management';

// Query 63
MERGE (p:Product {name: 'Value Added Services'}) ON CREATE SET p.id = 'value_added_services';

// Query 64
MERGE (p:Product {name: 'Transport Services'}) ON CREATE SET p.id = 'transport_services';

// Query 65
MERGE (p:Product {name: 'Freight Forwarding'}) ON CREATE SET p.id = 'freight_forwarding';

// Query 66
MERGE (p:Product {name: 'Supply Chain Consultancy Services'}) ON CREATE SET p.id = 'supply_chain_consultancy_services';

// Query 67
MERGE (p:Product {name: 'Project Cargo Management'}) ON CREATE SET p.id = 'project_cargo_management';

// Query 68
// Step 10: OFFERS Relationships;

// Query 69
MATCH (c:Company {name: 'Chrissworld'}), (p:Product {name: 'Warehouse Management'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'Chrissworld'}), (p:Product {name: 'Value Added Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Chrissworld'}), (p:Product {name: 'Transport Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Chrissworld'}), (p:Product {name: 'Freight Forwarding'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'Chrissworld'}), (p:Product {name: 'Supply Chain Consultancy Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'Chrissworld'}), (p:Product {name: 'Project Cargo Management'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
// Step 11: Company-Company Relationships (OWNS);

// Query 76
MERGE (parent:Company {name: 'Chrisslogix'}) ON CREATE SET parent.id = 'chrisslogix';

// Query 77
MATCH (parent:Company {name: 'Chrisslogix'}), (child:Company {name: 'Chrissworld'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 73.0, r.as_of = date('2024-03-31');

// Total queries: 77
// Generated on: 2025-10-03T03:02:04.192704
