// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Luminex'}) ON CREATE SET c.id = 'luminex', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No external auditor from the hardcoded list was explicitly named. Skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Lionel Imbulana'}) ON CREATE SET p.id = 'lionel_imbulana';

// Query 6
MERGE (p:Person {name: 'Ruwan Fernando'}) ON CREATE SET p.id = 'ruwan_fernando';

// Query 7
MERGE (p:Person {name: 'Anura De Alwis'}) ON CREATE SET p.id = 'anura_de_alwis';

// Query 8
MERGE (p:Person {name: 'Sanjaya Bandara'}) ON CREATE SET p.id = 'sanjaya_bandara';

// Query 9
MERGE (p:Person {name: 'H M D Palitha Herath'}) ON CREATE SET p.id = 'h_m_d_palitha_herath';

// Query 10
MERGE (p:Person {name: 'B. P. Suranjith Swaris'}) ON CREATE SET p.id = 'b_p_suranjith_swaris';

// Query 11
// Step 4: HOLDS_POSITION Relationships;

// Query 12
MATCH (p:Person {name: 'Lionel Imbulana'}), (c:Company {name: 'Luminex'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 13
MATCH (p:Person {name: 'Lionel Imbulana'}), (c:Company {name: 'Luminex'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 14
MATCH (p:Person {name: 'Ruwan Fernando'}), (c:Company {name: 'Luminex'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'Anura De Alwis'}), (c:Company {name: 'Luminex'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'Sanjaya Bandara'}), (c:Company {name: 'Luminex'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'H M D Palitha Herath'}), (c:Company {name: 'Luminex'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'H M D Palitha Herath'}), (c:Company {name: 'Luminex'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'B. P. Suranjith Swaris'}), (c:Company {name: 'Luminex'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
// Step 5: Metrics;

// Query 21
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 25
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 26
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 27
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 30
// Step 6: HAS_METRIC Relationships;

// Query 31
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2508766447, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3045264832, r.year = 2023;

// Query 33
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3121311743, r.year = 2022;

// Query 34
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2554040787, r.year = 2021;

// Query 35
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1545368584, r.year = 2020;

// Query 36
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 146150171, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 182530660, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 558473352, r.year = 2022;

// Query 39
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 364474271, r.year = 2021;

// Query 40
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 125619878, r.year = 2020;

// Query 41
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93313882, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 129677846, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 444246684, r.year = 2022;

// Query 44
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 301089256, r.year = 2021;

// Query 45
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 98432628, r.year = 2020;

// Query 46
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.38, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.14, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24.11, r.year = 2022;

// Query 49
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20.94, r.year = 2021;

// Query 50
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.42, r.year = 2020;

// Query 51
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.21, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.36, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.99, r.year = 2022;

// Query 54
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.23, r.year = 2021;

// Query 55
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.68, r.year = 2020;

// Query 56
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 63.59, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 81.81, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 95.03, r.year = 2022;

// Query 59
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 34.34, r.year = 2021;

// Query 60
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 59.43, r.year = 2020;

// Query 61
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.34, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.49, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2129132790, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2110803938, r.year = 2023;

// Query 65
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1842579922, r.year = 2022;

// Query 66
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1437968997, r.year = 2021;

// Query 67
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1168824088, r.year = 2020;

// Query 68
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3483145095, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3837573646, r.year = 2023;

// Query 70
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3593640454, r.year = 2022;

// Query 71
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1931731723, r.year = 2021;

// Query 72
MATCH (c:Company {name: 'Luminex'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1863409138, r.year = 2020;

// Query 73
// Step 7: Sectors;

// Query 74
MERGE (s:Sector {name: 'Telecommunication Services'}) ON CREATE SET s.id = 'telecommunication_services';

// Query 75
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 76
// Step 8: IN_SECTOR Relationships;

// Query 77
MATCH (c:Company {name: 'Luminex'}), (s:Sector {name: 'Telecommunication Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 78
MATCH (c:Company {name: 'Luminex'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 79
// Step 9: Product nodes creation;

// Query 80
MERGE (p:Product {name: 'Electrical Engineering Contracting'}) ON CREATE SET p.id = 'electrical_engineering_contracting';

// Query 81
MERGE (p:Product {name: 'Electronic Engineering Contracting'}) ON CREATE SET p.id = 'electronic_engineering_contracting';

// Query 82
MERGE (p:Product {name: 'Telecommunication Engineering Contracting'}) ON CREATE SET p.id = 'telecommunication_engineering_contracting';

// Query 83
MERGE (p:Product {name: 'Civil Engineering Contracting'}) ON CREATE SET p.id = 'civil_engineering_contracting';

// Query 84
MERGE (p:Product {name: 'Mechanical Engineering Contracting'}) ON CREATE SET p.id = 'mechanical_engineering_contracting';

// Query 85
MERGE (p:Product {name: 'Engineering Consulting'}) ON CREATE SET p.id = 'engineering_consulting';

// Query 86
MERGE (p:Product {name: 'Technical Advisory Services'}) ON CREATE SET p.id = 'technical_advisory_services';

// Query 87
MERGE (p:Product {name: 'Electrical Equipment Manufacturing'}) ON CREATE SET p.id = 'electrical_equipment_manufacturing';

// Query 88
MERGE (p:Product {name: 'Electronic Equipment Manufacturing'}) ON CREATE SET p.id = 'electronic_equipment_manufacturing';

// Query 89
MERGE (p:Product {name: 'Telecommunication Equipment Manufacturing'}) ON CREATE SET p.id = 'telecommunication_equipment_manufacturing';

// Query 90
MERGE (p:Product {name: 'Telecommunication Outside Plant Construction'}) ON CREATE SET p.id = 'telecommunication_outside_plant_construction';

// Query 91
MERGE (p:Product {name: 'Equipment Maintenance'}) ON CREATE SET p.id = 'equipment_maintenance';

// Query 92
MERGE (p:Product {name: 'Equipment Repair'}) ON CREATE SET p.id = 'equipment_repair';

// Query 93
MERGE (p:Product {name: 'Equipment Servicing'}) ON CREATE SET p.id = 'equipment_servicing';

// Query 94
MERGE (p:Product {name: 'Equipment Import/Export'}) ON CREATE SET p.id = 'equipment_import_export';

// Query 95
MERGE (p:Product {name: 'Equipment Distribution'}) ON CREATE SET p.id = 'equipment_distribution';

// Query 96
MERGE (p:Product {name: 'Equipment Sales (Wholesale/Retail)'}) ON CREATE SET p.id = 'equipment_sales_wholesale_retail';

// Query 97
MERGE (p:Product {name: 'Equipment Rental'}) ON CREATE SET p.id = 'equipment_rental';

// Query 98
MERGE (p:Product {name: 'Equipment Leasing'}) ON CREATE SET p.id = 'equipment_leasing';

// Query 99
MERGE (p:Product {name: 'Telecommunication Projects'}) ON CREATE SET p.id = 'telecommunication_projects';

// Query 100
MERGE (p:Product {name: 'Electrical Projects'}) ON CREATE SET p.id = 'electrical_projects';

// Query 101
MERGE (p:Product {name: 'Concrete Pole Manufacturing'}) ON CREATE SET p.id = 'concrete_pole_manufacturing';

// Query 102
MERGE (p:Product {name: 'Building Construction'}) ON CREATE SET p.id = 'building_construction';

// Query 103
// Step 10: OFFERS Relationships;

// Query 104
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Electrical Engineering Contracting'}) MERGE (c)-[:OFFERS]->(p);

// Query 105
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Electronic Engineering Contracting'}) MERGE (c)-[:OFFERS]->(p);

// Query 106
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Telecommunication Engineering Contracting'}) MERGE (c)-[:OFFERS]->(p);

// Query 107
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Civil Engineering Contracting'}) MERGE (c)-[:OFFERS]->(p);

// Query 108
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Mechanical Engineering Contracting'}) MERGE (c)-[:OFFERS]->(p);

// Query 109
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Engineering Consulting'}) MERGE (c)-[:OFFERS]->(p);

// Query 110
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Technical Advisory Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 111
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Electrical Equipment Manufacturing'}) MERGE (c)-[:OFFERS]->(p);

// Query 112
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Electronic Equipment Manufacturing'}) MERGE (c)-[:OFFERS]->(p);

// Query 113
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Telecommunication Equipment Manufacturing'}) MERGE (c)-[:OFFERS]->(p);

// Query 114
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Telecommunication Outside Plant Construction'}) MERGE (c)-[:OFFERS]->(p);

// Query 115
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Equipment Maintenance'}) MERGE (c)-[:OFFERS]->(p);

// Query 116
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Equipment Repair'}) MERGE (c)-[:OFFERS]->(p);

// Query 117
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Equipment Servicing'}) MERGE (c)-[:OFFERS]->(p);

// Query 118
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Equipment Import/Export'}) MERGE (c)-[:OFFERS]->(p);

// Query 119
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Equipment Distribution'}) MERGE (c)-[:OFFERS]->(p);

// Query 120
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Equipment Sales (Wholesale/Retail)'}) MERGE (c)-[:OFFERS]->(p);

// Query 121
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Equipment Rental'}) MERGE (c)-[:OFFERS]->(p);

// Query 122
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Equipment Leasing'}) MERGE (c)-[:OFFERS]->(p);

// Query 123
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Telecommunication Projects'}) MERGE (c)-[:OFFERS]->(p);

// Query 124
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Electrical Projects'}) MERGE (c)-[:OFFERS]->(p);

// Query 125
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Concrete Pole Manufacturing'}) MERGE (c)-[:OFFERS]->(p);

// Query 126
MATCH (c:Company {name: 'Luminex'}), (p:Product {name: 'Building Construction'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 126
// Generated on: 2025-10-03T02:45:13.362338
