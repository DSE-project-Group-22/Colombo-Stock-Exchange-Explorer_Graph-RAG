// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'United Motors Lanka'}) ON CREATE SET c.id = 'united_motors_lanka', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No explicit auditor name found in the hardcoded list. Skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Devaka Cooray'}) ON CREATE SET p.id = 'devaka_cooray';

// Query 6
MERGE (p:Person {name: 'Chanaka Yatawara'}) ON CREATE SET p.id = 'chanaka_yatawara';

// Query 7
MERGE (p:Person {name: 'Ananda Atukorala'}) ON CREATE SET p.id = 'ananda_atukorala';

// Query 8
MERGE (p:Person {name: 'Ramesh Yaseen'}) ON CREATE SET p.id = 'ramesh_yaseen';

// Query 9
MERGE (p:Person {name: 'Hiroshini Fernando'}) ON CREATE SET p.id = 'hiroshini_fernando';

// Query 10
MERGE (p:Person {name: 'Stuart Chapman'}) ON CREATE SET p.id = 'stuart_chapman';

// Query 11
MERGE (p:Person {name: 'Coralie Pietersz'}) ON CREATE SET p.id = 'coralie_pietersz';

// Query 12
MERGE (p:Person {name: 'Junya Takami'}) ON CREATE SET p.id = 'junya_takami';

// Query 13
MERGE (p:Person {name: 'Thushara Jayasekara'}) ON CREATE SET p.id = 'thushara_jayasekara';

// Query 14
MERGE (p:Person {name: 'Malik Ranasinghe'}) ON CREATE SET p.id = 'malik_ranasinghe';

// Query 15
MERGE (p:Person {name: 'Rinoza Hisham'}) ON CREATE SET p.id = 'rinoza_hisham';

// Query 16
MERGE (p:Person {name: 'Mahesh Gunathilake'}) ON CREATE SET p.id = 'mahesh_gunathilake';

// Query 17
MERGE (p:Person {name: 'Prasanna Haturusinghe'}) ON CREATE SET p.id = 'prasanna_haturusinghe';

// Query 18
MERGE (p:Person {name: 'Priyantha Ellepola'}) ON CREATE SET p.id = 'priyantha_ellepola';

// Query 19
MERGE (p:Person {name: 'Gihan Pilapitiya'}) ON CREATE SET p.id = 'gihan_pilapitiya';

// Query 20
MERGE (p:Person {name: 'Buddhika Singhage'}) ON CREATE SET p.id = 'buddhika_singhage';

// Query 21
// Step 4: HOLDS_POSITION Relationships;

// Query 22
MATCH (p:Person {name: 'Devaka Cooray'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Devaka Cooray'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'Chanaka Yatawara'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Chanaka Yatawara'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'Chanaka Yatawara'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'Ananda Atukorala'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'Ramesh Yaseen'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'Hiroshini Fernando'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'Stuart Chapman'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'Coralie Pietersz'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'Junya Takami'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'Thushara Jayasekara'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'Malik Ranasinghe'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'Rinoza Hisham'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-03-31');

// Query 36
MATCH (p:Person {name: 'Mahesh Gunathilake'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2023-05-20');

// Query 37
MATCH (p:Person {name: 'Mahesh Gunathilake'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2023-05-20');

// Query 38
MATCH (p:Person {name: 'Prasanna Haturusinghe'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 39
MATCH (p:Person {name: 'Prasanna Haturusinghe'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 40
MATCH (p:Person {name: 'Priyantha Ellepola'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 41
MATCH (p:Person {name: 'Gihan Pilapitiya'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 42
MATCH (p:Person {name: 'Buddhika Singhage'}), (c:Company {name: 'United Motors Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 43
// Step 5: Metrics;

// Query 44
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 50
// Step 6: HAS_METRIC Relationships;

// Query 51
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11577471000.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10736341000.0, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -244212000.0, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -312436000.0, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -272947000.0, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -131091000.0, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13425248000.0, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13628371000.0, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2.71, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.30, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20523557000.0, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19157939000.0, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6129073000.0, r.year = 2024, r.period = 'Company';

// Query 64
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4940801000.0, r.year = 2023, r.period = 'Company';

// Query 65
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 487451000.0, r.year = 2024, r.period = 'Company';

// Query 66
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 789333000.0, r.year = 2023, r.period = 'Company';

// Query 67
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 355875000.0, r.year = 2024, r.period = 'Company';

// Query 68
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 552516000.0, r.year = 2023, r.period = 'Company';

// Query 69
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14625203000.0, r.year = 2024, r.period = 'Company';

// Query 70
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14239524000.0, r.year = 2023, r.period = 'Company';

// Query 71
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20398819000.0, r.year = 2024, r.period = 'Company';

// Query 72
MATCH (c:Company {name: 'United Motors Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18754052000.0, r.year = 2023, r.period = 'Company';

// Query 73
// Step 7: Sectors;

// Query 74
MERGE (s:Sector {name: 'Automobiles and Components'}) ON CREATE SET s.id = 'automobiles_and_components';

// Query 75
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 76
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 77
// Step 8: IN_SECTOR Relationships;

// Query 78
MATCH (c:Company {name: 'United Motors Lanka'}), (s:Sector {name: 'Automobiles and Components'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 79
MATCH (c:Company {name: 'United Motors Lanka'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 80
MATCH (c:Company {name: 'United Motors Lanka'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 81
// Step 9: Product nodes creation;

// Query 82
MERGE (p:Product {name: 'Vehicle Repair and Service'}) ON CREATE SET p.id = 'vehicle_repair_and_service';

// Query 83
MERGE (p:Product {name: 'Vehicle Spare Parts'}) ON CREATE SET p.id = 'vehicle_spare_parts';

// Query 84
MERGE (p:Product {name: 'Vehicle Accessories'}) ON CREATE SET p.id = 'vehicle_accessories';

// Query 85
MERGE (p:Product {name: 'Related Components'}) ON CREATE SET p.id = 'related_components';

// Query 86
MERGE (p:Product {name: 'Passenger Vehicles'}) ON CREATE SET p.id = 'passenger_vehicles';

// Query 87
MERGE (p:Product {name: 'Assembled Vehicles'}) ON CREATE SET p.id = 'assembled_vehicles';

// Query 88
MERGE (p:Product {name: 'Commercial Vehicles'}) ON CREATE SET p.id = 'commercial_vehicles';

// Query 89
MERGE (p:Product {name: 'Special Purpose Vehicles'}) ON CREATE SET p.id = 'special_purpose_vehicles';

// Query 90
MERGE (p:Product {name: 'Pre-Owned Passenger Vehicles'}) ON CREATE SET p.id = 'pre_owned_passenger_vehicles';

// Query 91
MERGE (p:Product {name: 'Pre-Owned Commercial Vehicles'}) ON CREATE SET p.id = 'pre_owned_commercial_vehicles';

// Query 92
MERGE (p:Product {name: 'Vehicle Sales Facilitation Services'}) ON CREATE SET p.id = 'vehicle_sales_facilitation_services';

// Query 93
MERGE (p:Product {name: 'Vehicle Brokering Services'}) ON CREATE SET p.id = 'vehicle_brokering_services';

// Query 94
MERGE (p:Product {name: 'Heavy Equipment'}) ON CREATE SET p.id = 'heavy_equipment';

// Query 95
MERGE (p:Product {name: 'Generators'}) ON CREATE SET p.id = 'generators';

// Query 96
MERGE (p:Product {name: 'Machinery'}) ON CREATE SET p.id = 'machinery';

// Query 97
MERGE (p:Product {name: '3D Printers'}) ON CREATE SET p.id = '3d_printers';

// Query 98
MERGE (p:Product {name: 'Filaments'}) ON CREATE SET p.id = 'filaments';

// Query 99
MERGE (p:Product {name: '3D Printer Spare Parts'}) ON CREATE SET p.id = '3d_printer_spare_parts';

// Query 100
MERGE (p:Product {name: '3D Printer Related Services'}) ON CREATE SET p.id = '3d_printer_related_services';

// Query 101
MERGE (p:Product {name: 'Tyres'}) ON CREATE SET p.id = 'tyres';

// Query 102
MERGE (p:Product {name: 'Lubricants'}) ON CREATE SET p.id = 'lubricants';

// Query 103
MERGE (p:Product {name: 'Car Care Products'}) ON CREATE SET p.id = 'car_care_products';

// Query 104
MERGE (p:Product {name: 'Trailer Manufacturing'}) ON CREATE SET p.id = 'trailer_manufacturing';

// Query 105
MERGE (p:Product {name: 'Trailer Sales'}) ON CREATE SET p.id = 'trailer_sales';

// Query 106
MERGE (p:Product {name: 'Cargo Container Carriage'}) ON CREATE SET p.id = 'cargo_container_carriage';

// Query 107
MERGE (p:Product {name: 'Trailer Related Services'}) ON CREATE SET p.id = 'trailer_related_services';

// Query 108
// Step 10: OFFERS Relationships;

// Query 109
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Vehicle Repair and Service'}) MERGE (c)-[:OFFERS]->(p);

// Query 110
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Vehicle Spare Parts'}) MERGE (c)-[:OFFERS]->(p);

// Query 111
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Vehicle Accessories'}) MERGE (c)-[:OFFERS]->(p);

// Query 112
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Related Components'}) MERGE (c)-[:OFFERS]->(p);

// Query 113
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Passenger Vehicles'}) MERGE (c)-[:OFFERS]->(p);

// Query 114
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Assembled Vehicles'}) MERGE (c)-[:OFFERS]->(p);

// Query 115
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Commercial Vehicles'}) MERGE (c)-[:OFFERS]->(p);

// Query 116
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Special Purpose Vehicles'}) MERGE (c)-[:OFFERS]->(p);

// Query 117
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Pre-Owned Passenger Vehicles'}) MERGE (c)-[:OFFERS]->(p);

// Query 118
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Pre-Owned Commercial Vehicles'}) MERGE (c)-[:OFFERS]->(p);

// Query 119
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Vehicle Sales Facilitation Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 120
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Vehicle Brokering Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 121
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Heavy Equipment'}) MERGE (c)-[:OFFERS]->(p);

// Query 122
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Generators'}) MERGE (c)-[:OFFERS]->(p);

// Query 123
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Machinery'}) MERGE (c)-[:OFFERS]->(p);

// Query 124
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: '3D Printers'}) MERGE (c)-[:OFFERS]->(p);

// Query 125
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Filaments'}) MERGE (c)-[:OFFERS]->(p);

// Query 126
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: '3D Printer Spare Parts'}) MERGE (c)-[:OFFERS]->(p);

// Query 127
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: '3D Printer Related Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 128
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Tyres'}) MERGE (c)-[:OFFERS]->(p);

// Query 129
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Lubricants'}) MERGE (c)-[:OFFERS]->(p);

// Query 130
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Car Care Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 131
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Trailer Manufacturing'}) MERGE (c)-[:OFFERS]->(p);

// Query 132
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Trailer Sales'}) MERGE (c)-[:OFFERS]->(p);

// Query 133
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Cargo Container Carriage'}) MERGE (c)-[:OFFERS]->(p);

// Query 134
MATCH (c:Company {name: 'United Motors Lanka'}), (p:Product {name: 'Trailer Related Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 135
// Step 11: Company-Company Relationships (OWNS);

// Query 136
MERGE (child:Company {name: 'Dutch Lanka Engineering'}) ON CREATE SET child.id = 'dutch_lanka_engineering';

// Query 137
MATCH (parent:Company {name: 'United Motors Lanka'}), (child:Company {name: 'Dutch Lanka Engineering'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 138
MERGE (child:Company {name: 'Unimo Enterprises'}) ON CREATE SET child.id = 'unimo_enterprises';

// Query 139
MATCH (parent:Company {name: 'United Motors Lanka'}), (child:Company {name: 'Unimo Enterprises'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 140
MERGE (child:Company {name: 'UML Heavy Equipment'}) ON CREATE SET child.id = 'uml_heavy_equipment';

// Query 141
MATCH (parent:Company {name: 'United Motors Lanka'}), (child:Company {name: 'UML Heavy Equipment'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 142
MERGE (child:Company {name: 'UML Property Developments'}) ON CREATE SET child.id = 'uml_property_developments';

// Query 143
MATCH (parent:Company {name: 'United Motors Lanka'}), (child:Company {name: 'UML Property Developments'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Total queries: 143
// Generated on: 2025-10-03T00:58:50.770730
