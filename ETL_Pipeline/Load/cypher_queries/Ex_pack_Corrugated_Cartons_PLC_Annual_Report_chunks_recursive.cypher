// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Ex-pack Corrugated Cartons'}) ON CREATE SET c.id = 'ex_pack_corrugated_cartons', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No explicit auditor name found in the provided text, skipping auditor node and relationship.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Sattar Kassim'}) ON CREATE SET p.id = 'sattar_kassim';

// Query 6
MERGE (p:Person {name: 'Shafik Kassim'}) ON CREATE SET p.id = 'shafik_kassim';

// Query 7
MERGE (p:Person {name: 'Zulficar Ghouse'}) ON CREATE SET p.id = 'zulficar_ghouse';

// Query 8
MERGE (p:Person {name: 'Abdullah Kassim'}) ON CREATE SET p.id = 'abdullah_kassim';

// Query 9
MERGE (p:Person {name: 'Thulci Aluwihare'}) ON CREATE SET p.id = 'thulci_aluwihare';

// Query 10
MERGE (p:Person {name: 'Dinesh Dharmadasa'}) ON CREATE SET p.id = 'dinesh_dharmadasa';

// Query 11
MERGE (p:Person {name: 'Shehara De Silva'}) ON CREATE SET p.id = 'shehara_de_silva';

// Query 12
MERGE (p:Person {name: 'Uduwage Don Wadeepa Chathuranga Abeyratne'}) ON CREATE SET p.id = 'uduwage_don_wadeepa_chathuranga_abeyratne';

// Query 13
MERGE (p:Person {name: 'Mohamed Riyaz Valli Mohamed'}) ON CREATE SET p.id = 'mohamed_riyaz_valli_mohamed';

// Query 14
// Step 4: HOLDS_POSITION Relationships;

// Query 15
MATCH (p:Person {name: 'Sattar Kassim'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-06-04');

// Query 16
MATCH (p:Person {name: 'Sattar Kassim'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-06-04');

// Query 17
MATCH (p:Person {name: 'Shafik Kassim'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-06-04');

// Query 18
MATCH (p:Person {name: 'Zulficar Ghouse'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-06-04');

// Query 19
MATCH (p:Person {name: 'Zulficar Ghouse'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-06-04');

// Query 20
MATCH (p:Person {name: 'Abdullah Kassim'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-06-04');

// Query 21
MATCH (p:Person {name: 'Thulci Aluwihare'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-06-04');

// Query 22
MATCH (p:Person {name: 'Dinesh Dharmadasa'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-06-04');

// Query 23
MATCH (p:Person {name: 'Shehara De Silva'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-06-04');

// Query 24
MATCH (p:Person {name: 'Uduwage Don Wadeepa Chathuranga Abeyratne'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-08-02');

// Query 25
MATCH (p:Person {name: 'Mohamed Riyaz Valli Mohamed'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 26
// Step 5: Person-Company Shareholding (OWNS_SHARES) Relationships;

// Query 27
MATCH (p:Person {name: 'Sattar Kassim'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 94800, r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'Sattar Kassim'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 94800, r.as_of = date('2023-03-31');

// Query 29
MATCH (p:Person {name: 'Shafik Kassim'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 14400, r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'Shafik Kassim'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 14400, r.as_of = date('2023-03-31');

// Query 31
MATCH (p:Person {name: 'Zulficar Ghouse'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 14400, r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'Zulficar Ghouse'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 14400, r.as_of = date('2023-03-31');

// Query 33
MATCH (p:Person {name: 'Abdullah Kassim'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 234400, r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'Abdullah Kassim'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 164400, r.as_of = date('2023-03-31');

// Query 35
MATCH (p:Person {name: 'Dinesh Dharmadasa'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 37400, r.as_of = date('2024-03-31');

// Query 36
MATCH (p:Person {name: 'Dinesh Dharmadasa'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 37400, r.as_of = date('2023-03-31');

// Query 37
MATCH (p:Person {name: 'Shehara De Silva'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 13100, r.as_of = date('2024-03-31');

// Query 38
MATCH (p:Person {name: 'Shehara De Silva'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 13100, r.as_of = date('2023-03-31');

// Query 39
MATCH (p:Person {name: 'Mohamed Riyaz Valli Mohamed'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 85910, r.as_of = date('2024-03-31');

// Query 40
MATCH (p:Person {name: 'Mohamed Riyaz Valli Mohamed'}), (c:Company {name: 'Ex-pack Corrugated Cartons'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 85910, r.as_of = date('2023-03-31');

// Query 41
// Step 6: Metrics;

// Query 42
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 49
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 50
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Times';

// Query 51
// Step 7: HAS_METRIC Relationships;

// Query 52
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6441082584, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7956541717, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 753516418, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1427763205, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 536594143, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1099112580, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6738000000, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6864000000, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3179000000, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2831000000, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.74, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.24, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18.0, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.35, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.21, r.year = 2023;

// Query 67
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.72, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.93, r.year = 2023;

// Query 69
// Step 8: Sectors;

// Query 70
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 71
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 72
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 73
// Step 9: IN_SECTOR Relationships;

// Query 74
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 75
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 76
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 77
// Step 10: Products;

// Query 78
MERGE (p:Product {name: 'Corrugated Cartons'}) ON CREATE SET p.id = 'corrugated_cartons';

// Query 79
MERGE (p:Product {name: 'Paper Reels'}) ON CREATE SET p.id = 'paper_reels';

// Query 80
MERGE (p:Product {name: 'Waste Paper Export'}) ON CREATE SET p.id = 'waste_paper_export';

// Query 81
MERGE (p:Product {name: 'Recycled Fabric Export'}) ON CREATE SET p.id = 'recycled_fabric_export';

// Query 82
// Step 11: OFFERS Relationships;

// Query 83
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (p:Product {name: 'Corrugated Cartons'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (p:Product {name: 'Paper Reels'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (p:Product {name: 'Waste Paper Export'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Ex-pack Corrugated Cartons'}), (p:Product {name: 'Recycled Fabric Export'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
// Step 12: Company-Company Relationships (MANAGES);

// Query 88
MERGE (sub:Company {name: 'Neptune Papers'}) ON CREATE SET sub.id = 'neptune_papers';

// Query 89
MATCH (parent:Company {name: 'Ex-pack Corrugated Cartons'}), (managed:Company {name: 'Neptune Papers'}) MERGE (parent)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'reciprocal interests in the paper supply chain';

// Total queries: 89
// Generated on: 2025-10-03T00:08:06.717596
