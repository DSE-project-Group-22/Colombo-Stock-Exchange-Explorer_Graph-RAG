// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Ceylon Hospitals'}) ON CREATE SET c.id = 'ceylon_hospitals', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'B.R. De Silva'}) ON CREATE SET a.id = 'b_r_de_silva', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Ceylon Hospitals'}), (a:Auditor {name: 'B.R. De Silva'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'A. E. Tudawe'}) ON CREATE SET p.id = 'a_e_tudawe';

// Query 8
MERGE (p:Person {name: 'A. D. Tudawe'}) ON CREATE SET p.id = 'a_d_tudawe';

// Query 9
MERGE (p:Person {name: 'U. D. Tudawe'}) ON CREATE SET p.id = 'u_d_tudawe';

// Query 10
MERGE (p:Person {name: 'A. D. P. A. Wijegoonewardene'}) ON CREATE SET p.id = 'a_d_p_a_wijegoonewardene';

// Query 11
MERGE (p:Person {name: 'Y. N. R. Piyasena'}) ON CREATE SET p.id = 'y_n_r_piyasena';

// Query 12
MERGE (p:Person {name: 'A. D. B. Talwatte'}) ON CREATE SET p.id = 'a_d_b_talwatte';

// Query 13
MERGE (p:Person {name: 'A.V.R. De Silva Jayatilleke'}) ON CREATE SET p.id = 'a_v_r_de_silva_jayatilleke';

// Query 14
// Step 4: HOLDS_POSITION Relationships;

// Query 15
MATCH (p:Person {name: 'A. E. Tudawe'}), (c:Company {name: 'Ceylon Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 16
MATCH (p:Person {name: 'A. D. Tudawe'}), (c:Company {name: 'Ceylon Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 17
MATCH (p:Person {name: 'U. D. Tudawe'}), (c:Company {name: 'Ceylon Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 18
MATCH (p:Person {name: 'A. D. P. A. Wijegoonewardene'}), (c:Company {name: 'Ceylon Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 19
MATCH (p:Person {name: 'Y. N. R. Piyasena'}), (c:Company {name: 'Ceylon Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 20
MATCH (p:Person {name: 'A. D. B. Talwatte'}), (c:Company {name: 'Ceylon Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 21
MATCH (p:Person {name: 'A.V.R. De Silva Jayatilleke'}), (c:Company {name: 'Ceylon Hospitals'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 22
// Step 5: Metrics;

// Query 23
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 28
// Step 6: HAS_METRIC Relationships;

// Query 29
MATCH (c:Company {name: 'Ceylon Hospitals'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 493628000, r.year = 2024, r.as_of = date('2024-12-31');

// Query 30
MATCH (c:Company {name: 'Ceylon Hospitals'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 173531000, r.year = 2023, r.as_of = date('2023-12-31');

// Query 31
MATCH (c:Company {name: 'Ceylon Hospitals'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 455228000, r.year = 2024, r.as_of = date('2024-12-31');

// Query 32
MATCH (c:Company {name: 'Ceylon Hospitals'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 111794000, r.year = 2023, r.as_of = date('2023-12-31');

// Query 33
MATCH (c:Company {name: 'Ceylon Hospitals'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 233631000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 34
MATCH (c:Company {name: 'Ceylon Hospitals'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1573191000, r.year = 2024, r.as_of = date('2024-12-31');

// Query 35
MATCH (c:Company {name: 'Ceylon Hospitals'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1297524000, r.year = 2023, r.as_of = date('2023-12-31');

// Query 36
MATCH (c:Company {name: 'Ceylon Hospitals'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 339315000, r.year = 2024, r.as_of = date('2024-12-31');

// Query 37
MATCH (c:Company {name: 'Ceylon Hospitals'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 70824000, r.year = 2023, r.as_of = date('2023-12-31');

// Query 38
MATCH (c:Company {name: 'Ceylon Hospitals'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.73, r.as_of = date('2024-12-31');

// Query 39
MATCH (c:Company {name: 'Ceylon Hospitals'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.08, r.as_of = date('2023-12-31');

// Query 40
// Step 7: Sectors;

// Query 41
MERGE (s:Sector {name: 'Health Care Equipment and Services'}) ON CREATE SET s.id = 'health_care_equipment_and_services';

// Query 42
// Step 8: IN_SECTOR Relationships;

// Query 43
MATCH (c:Company {name: 'Ceylon Hospitals'}), (s:Sector {name: 'Health Care Equipment and Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 44
// Step 9: Products;

// Query 45
MERGE (p:Product {name: 'Durdans'}) ON CREATE SET p.id = 'durdans';

// Query 46
MERGE (p:Product {name: 'Durdans Heart Centre'}) ON CREATE SET p.id = 'durdans_heart_centre';

// Query 47
// Step 10: OFFERS Relationships;

// Query 48
MATCH (c:Company {name: 'Ceylon Hospitals'}), (p:Product {name: 'Durdans'}) MERGE (c)-[:OFFERS]->(p);

// Query 49
MATCH (c:Company {name: 'Ceylon Hospitals'}), (p:Product {name: 'Durdans Heart Centre'}) MERGE (c)-[:OFFERS]->(p);

// Query 50
// Step 11: Other Company Nodes for OWNS relationships;

// Query 51
MERGE (comp:Company {name: 'Durdans Management Services'}) ON CREATE SET comp.id = 'durdans_management_services';

// Query 52
MERGE (comp:Company {name: 'MJF Holdings'}) ON CREATE SET comp.id = 'mjf_holdings';

// Query 53
MERGE (comp:Company {name: 'Commercial Bank of Ceylon'}) ON CREATE SET comp.id = 'commercial_bank_of_ceylon';

// Query 54
MERGE (comp:Company {name: 'Peoples Leasing & Finance'}) ON CREATE SET comp.id = 'peoples_leasing_and_finance';

// Query 55
MERGE (comp:Company {name: 'E. W. Balasuriya & Co.'}) ON CREATE SET comp.id = 'e_w_balasuriya_and_co';

// Query 56
MERGE (comp:Company {name: 'Tudawe Engineering Services'}) ON CREATE SET comp.id = 'tudawe_engineering_services';

// Query 57
MERGE (comp:Company {name: 'Saman Villas'}) ON CREATE SET comp.id = 'saman_villas';

// Query 58
MERGE (comp:Company {name: 'Galle Face Capital Partners'}) ON CREATE SET comp.id = 'galle_face_capital_partners';

// Query 59
MERGE (comp:Company {name: 'Cargo Boat Development Company'}) ON CREATE SET comp.id = 'cargo_boat_development_company';

// Query 60
// Step 12: OWNS Relationships;

// Query 61
MATCH (parent:Company {name: 'Durdans Management Services'}), (child:Company {name: 'Ceylon Hospitals'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 69.60, r.as_of = date('2024-12-31');

// Query 62
MATCH (parent:Company {name: 'MJF Holdings'}), (child:Company {name: 'Ceylon Hospitals'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 6.28, r.as_of = date('2024-12-31');

// Query 63
MATCH (parent:Company {name: 'Commercial Bank of Ceylon'}), (child:Company {name: 'Ceylon Hospitals'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 0.28, r.as_of = date('2024-12-31');

// Query 64
MATCH (parent:Company {name: 'Peoples Leasing & Finance'}), (child:Company {name: 'Ceylon Hospitals'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 0.72, r.as_of = date('2024-12-31');

// Query 65
MATCH (parent:Company {name: 'E. W. Balasuriya & Co.'}), (child:Company {name: 'Ceylon Hospitals'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 3.96, r.as_of = date('2024-12-31');

// Query 66
MATCH (parent:Company {name: 'Tudawe Engineering Services'}), (child:Company {name: 'Ceylon Hospitals'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 1.10, r.as_of = date('2024-12-31');

// Query 67
MATCH (parent:Company {name: 'Saman Villas'}), (child:Company {name: 'Ceylon Hospitals'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 0.70, r.as_of = date('2024-12-31');

// Query 68
MATCH (parent:Company {name: 'Galle Face Capital Partners'}), (child:Company {name: 'Ceylon Hospitals'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 1.67, r.as_of = date('2024-12-31');

// Query 69
MATCH (parent:Company {name: 'Cargo Boat Development Company'}), (child:Company {name: 'Ceylon Hospitals'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 1.20, r.as_of = date('2024-12-31');

// Total queries: 69
// Generated on: 2025-10-02T23:16:23.238407
