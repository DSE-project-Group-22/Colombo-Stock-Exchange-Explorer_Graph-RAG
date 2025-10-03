// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Colombo Dockyard'}) ON CREATE SET c.id = 'colombo_dockyard', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Colombo Dockyard'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: Person Nodes Creation;

// Query 8
MERGE (p:Person {name: 'Lalith Ganlath'}) ON CREATE SET p.id = 'lalith_ganlath';

// Query 9
MERGE (p:Person {name: 'Sarath De Costa'}) ON CREATE SET p.id = 'sarath_de_costa';

// Query 10
MERGE (p:Person {name: 'Thimira S. Godakumbura'}) ON CREATE SET p.id = 'thimira_s_godakumbura';

// Query 11
MERGE (p:Person {name: 'C. C. Wickramatileka'}) ON CREATE SET p.id = 'c_c_wickramatileka';

// Query 12
MERGE (p:Person {name: 'V. G. L. A. Jayawardena'}) ON CREATE SET p.id = 'v_g_l_a_jayawardena';

// Query 13
MERGE (p:Person {name: 'C. A. M. Jayamaha'}) ON CREATE SET p.id = 'c_a_m_jayamaha';

// Query 14
MERGE (p:Person {name: 'Manori P. Mallikarachchi'}) ON CREATE SET p.id = 'manori_p_mallikarachchi';

// Query 15
MERGE (p:Person {name: 'Mangala De Silva'}) ON CREATE SET p.id = 'mangala_de_silva';

// Query 16
MERGE (p:Person {name: 'R. M. Vajira Rathnayake'}) ON CREATE SET p.id = 'r_m_vajira_rathnayake';

// Query 17
MERGE (p:Person {name: 'S. G. Senadeera'}) ON CREATE SET p.id = 's_g_senadeera';

// Query 18
MERGE (p:Person {name: 'P. D. Gihan Ravinatha'}) ON CREATE SET p.id = 'p_d_gihan_ravinatha';

// Query 19
MERGE (p:Person {name: 'P. S. Abeysinghe'}) ON CREATE SET p.id = 'p_s_abeysinghe';

// Query 20
MERGE (p:Person {name: 'K. N. G. W. Kariyawasam'}) ON CREATE SET p.id = 'k_n_g_w_kariyawasam';

// Query 21
// Step 5: HOLDS_POSITION Relationships;

// Query 22
MATCH (p:Person {name: 'Lalith Ganlath'}), (c:Company {name: 'Colombo Dockyard'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 23
MATCH (p:Person {name: 'Sarath De Costa'}), (c:Company {name: 'Colombo Dockyard'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-12-31');

// Query 24
MATCH (p:Person {name: 'Thimira S. Godakumbura'}), (c:Company {name: 'Colombo Dockyard'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-12-31');

// Query 25
MATCH (p:Person {name: 'Thimira S. Godakumbura'}), (c:Company {name: 'Colombo Dockyard'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-12-31');

// Query 26
MATCH (p:Person {name: 'C. C. Wickramatileka'}), (c:Company {name: 'Colombo Dockyard'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 27
MATCH (p:Person {name: 'V. G. L. A. Jayawardena'}), (c:Company {name: 'Colombo Dockyard'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-12-31');

// Query 28
MATCH (p:Person {name: 'C. A. M. Jayamaha'}), (c:Company {name: 'Colombo Dockyard'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 29
MATCH (p:Person {name: 'Manori P. Mallikarachchi'}), (c:Company {name: 'Colombo Dockyard'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-12-31');

// Query 30
MATCH (p:Person {name: 'Mangala De Silva'}), (c:Company {name: 'Colombo Dockyard'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-12-31');

// Query 31
MATCH (p:Person {name: 'R. M. Vajira Rathnayake'}), (c:Company {name: 'Colombo Dockyard'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-12-31');

// Query 32
MATCH (p:Person {name: 'S. G. Senadeera'}), (c:Company {name: 'Colombo Dockyard'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-12-31');

// Query 33
MATCH (p:Person {name: 'P. D. Gihan Ravinatha'}), (c:Company {name: 'Colombo Dockyard'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-12-31');

// Query 34
MATCH (p:Person {name: 'P. D. Gihan Ravinatha'}), (c:Company {name: 'Colombo Dockyard'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-12-31');

// Query 35
MATCH (p:Person {name: 'P. S. Abeysinghe'}), (c:Company {name: 'Colombo Dockyard'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-12-31');

// Query 36
MATCH (p:Person {name: 'K. N. G. W. Kariyawasam'}), (c:Company {name: 'Colombo Dockyard'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-12-31');

// Query 37
// Step 6: Metric Nodes Creation;

// Query 38
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 44
// Step 7: HAS_METRIC Relationships (Group);

// Query 45
MATCH (c:Company {name: 'Colombo Dockyard'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25447000000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Colombo Dockyard'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36167600000.0, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Colombo Dockyard'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2743000000.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Colombo Dockyard'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -11006400000.0, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Colombo Dockyard'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 43860700000.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Colombo Dockyard'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39325100000.0, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Colombo Dockyard'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5311300000.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Colombo Dockyard'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3086100000.0, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Colombo Dockyard'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -38.1, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Colombo Dockyard'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -153.4, r.year = 2023;

// Query 55
// Step 7: HAS_METRIC Relationships (Company Specific);

// Query 56
MATCH (c:Company {name: 'Colombo Dockyard'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC {year: 2024, as_of: date('2024-12-31')}]->(m) SET r.value = 23695500000.0;

// Query 57
MATCH (c:Company {name: 'Colombo Dockyard'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC {year: 2023, as_of: date('2023-12-31')}]->(m) SET r.value = 33068500000.0;

// Query 58
MATCH (c:Company {name: 'Colombo Dockyard'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC {year: 2024, as_of: date('2024-12-31')}]->(m) SET r.value = -2757400000.0;

// Query 59
MATCH (c:Company {name: 'Colombo Dockyard'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC {year: 2023, as_of: date('2023-12-31')}]->(m) SET r.value = -11127000000.0;

// Query 60
MATCH (c:Company {name: 'Colombo Dockyard'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC {year: 2024, as_of: date('2024-12-31')}]->(m) SET r.value = 2700700000.0;

// Query 61
MATCH (c:Company {name: 'Colombo Dockyard'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC {year: 2023, as_of: date('2023-12-31')}]->(m) SET r.value = 473400000.0;

// Query 62
MATCH (c:Company {name: 'Colombo Dockyard'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC {year: 2024, as_of: date('2024-12-31')}]->(m) SET r.value = 40310500000.0;

// Query 63
MATCH (c:Company {name: 'Colombo Dockyard'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC {year: 2023, as_of: date('2023-12-31')}]->(m) SET r.value = 36048800000.0;

// Query 64
MATCH (c:Company {name: 'Colombo Dockyard'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC {year: 2024, as_of: date('2024-12-31')}]->(m) SET r.value = -2791000000.0;

// Query 65
MATCH (c:Company {name: 'Colombo Dockyard'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC {year: 2023, as_of: date('2023-12-31')}]->(m) SET r.value = -11188000000.0;

// Query 66
// Step 8: Sector Nodes Creation;

// Query 67
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 68
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 69
MERGE (s:Sector {name: 'Telecommunication Services'}) ON CREATE SET s.id = 'telecommunication_services';

// Query 70
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 71
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 72
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 73
// Step 9: IN_SECTOR Relationships;

// Query 74
MATCH (c:Company {name: 'Colombo Dockyard'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 75
MATCH (c:Company {name: 'Colombo Dockyard'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 76
MATCH (c:Company {name: 'Colombo Dockyard'}), (s:Sector {name: 'Telecommunication Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 77
MATCH (c:Company {name: 'Colombo Dockyard'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 78
MATCH (c:Company {name: 'Colombo Dockyard'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 79
MATCH (c:Company {name: 'Colombo Dockyard'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 80
// Step 10: Product Nodes Creation;

// Query 81
MERGE (p:Product {name: 'Ship Repair'}) ON CREATE SET p.id = 'ship_repair';

// Query 82
MERGE (p:Product {name: 'Shipbuilding'}) ON CREATE SET p.id = 'shipbuilding';

// Query 83
MERGE (p:Product {name: 'Heavy Engineering'}) ON CREATE SET p.id = 'heavy_engineering';

// Query 84
MERGE (p:Product {name: 'Material Sales'}) ON CREATE SET p.id = 'material_sales';

// Query 85
MERGE (p:Product {name: 'Tankers Repair'}) ON CREATE SET p.id = 'tankers_repair';

// Query 86
MERGE (p:Product {name: 'General Cargo Repair'}) ON CREATE SET p.id = 'general_cargo_repair';

// Query 87
MERGE (p:Product {name: 'Container Carriers Repair'}) ON CREATE SET p.id = 'container_carriers_repair';

// Query 88
MERGE (p:Product {name: 'Passenger Vessels Repair'}) ON CREATE SET p.id = 'passenger_vessels_repair';

// Query 89
MERGE (p:Product {name: 'Fishing Trawlers Repair'}) ON CREATE SET p.id = 'fishing_trawlers_repair';

// Query 90
MERGE (p:Product {name: 'Tugs Repair'}) ON CREATE SET p.id = 'tugs_repair';

// Query 91
MERGE (p:Product {name: 'LPG Tankers Repair'}) ON CREATE SET p.id = 'lpg_tankers_repair';

// Query 92
MERGE (p:Product {name: 'Dredgers Repair'}) ON CREATE SET p.id = 'dredgers_repair';

// Query 93
MERGE (p:Product {name: 'Naval Vessels Repair'}) ON CREATE SET p.id = 'naval_vessels_repair';

// Query 94
MERGE (p:Product {name: 'Cement Carriers Repair'}) ON CREATE SET p.id = 'cement_carriers_repair';

// Query 95
MERGE (p:Product {name: 'Offshore Support/Supply Vessels Repair'}) ON CREATE SET p.id = 'offshore_support_supply_vessels_repair';

// Query 96
MERGE (p:Product {name: 'Barge Repair'}) ON CREATE SET p.id = 'barge_repair';

// Query 97
MERGE (p:Product {name: 'Bulk Carriers Repair'}) ON CREATE SET p.id = 'bulk_carriers_repair';

// Query 98
MERGE (p:Product {name: 'Research Vessel Repair'}) ON CREATE SET p.id = 'research_vessel_repair';

// Query 99
MERGE (p:Product {name: 'Bulk Carriers Building'}) ON CREATE SET p.id = 'bulk_carriers_building';

// Query 100
MERGE (p:Product {name: 'Cable Laying Vessels Building'}) ON CREATE SET p.id = 'cable_laying_vessels_building';

// Query 101
MERGE (p:Product {name: 'Heavy Fabrication'}) ON CREATE SET p.id = 'heavy_fabrication';

// Query 102
MERGE (p:Product {name: 'Power Generation Services'}) ON CREATE SET p.id = 'power_generation_services';

// Query 103
MERGE (p:Product {name: 'Service Operation Vessels'}) ON CREATE SET p.id = 'service_operation_vessels';

// Query 104
MERGE (p:Product {name: 'Offshore Support Vessels'}) ON CREATE SET p.id = 'offshore_support_vessels';

// Query 105
MERGE (p:Product {name: 'Underwater Structures'}) ON CREATE SET p.id = 'underwater_structures';

// Query 106
MERGE (p:Product {name: 'Hybrid Eco Bulk Carrier Vessels'}) ON CREATE SET p.id = 'hybrid_eco_bulk_carrier_vessels';

// Query 107
MERGE (p:Product {name: 'LNG Carriers'}) ON CREATE SET p.id = 'lng_carriers';

// Query 108
// Step 11: OFFERS Relationships;

// Query 109
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Ship Repair'}) MERGE (c)-[:OFFERS]->(p);

// Query 110
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Shipbuilding'}) MERGE (c)-[:OFFERS]->(p);

// Query 111
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Heavy Engineering'}) MERGE (c)-[:OFFERS]->(p);

// Query 112
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Material Sales'}) MERGE (c)-[:OFFERS]->(p);

// Query 113
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Tankers Repair'}) MERGE (c)-[:OFFERS]->(p);

// Query 114
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'General Cargo Repair'}) MERGE (c)-[:OFFERS]->(p);

// Query 115
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Container Carriers Repair'}) MERGE (c)-[:OFFERS]->(p);

// Query 116
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Passenger Vessels Repair'}) MERGE (c)-[:OFFERS]->(p);

// Query 117
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Fishing Trawlers Repair'}) MERGE (c)-[:OFFERS]->(p);

// Query 118
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Tugs Repair'}) MERGE (c)-[:OFFERS]->(p);

// Query 119
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'LPG Tankers Repair'}) MERGE (c)-[:OFFERS]->(p);

// Query 120
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Dredgers Repair'}) MERGE (c)-[:OFFERS]->(p);

// Query 121
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Naval Vessels Repair'}) MERGE (c)-[:OFFERS]->(p);

// Query 122
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Cement Carriers Repair'}) MERGE (c)-[:OFFERS]->(p);

// Query 123
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Offshore Support/Supply Vessels Repair'}) MERGE (c)-[:OFFERS]->(p);

// Query 124
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Barge Repair'}) MERGE (c)-[:OFFERS]->(p);

// Query 125
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Bulk Carriers Repair'}) MERGE (c)-[:OFFERS]->(p);

// Query 126
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Research Vessel Repair'}) MERGE (c)-[:OFFERS]->(p);

// Query 127
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Bulk Carriers Building'}) MERGE (c)-[:OFFERS]->(p);

// Query 128
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Cable Laying Vessels Building'}) MERGE (c)-[:OFFERS]->(p);

// Query 129
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Heavy Fabrication'}) MERGE (c)-[:OFFERS]->(p);

// Query 130
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Power Generation Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 131
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Service Operation Vessels'}) MERGE (c)-[:OFFERS]->(p);

// Query 132
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Offshore Support Vessels'}) MERGE (c)-[:OFFERS]->(p);

// Query 133
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Underwater Structures'}) MERGE (c)-[:OFFERS]->(p);

// Query 134
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'Hybrid Eco Bulk Carrier Vessels'}) MERGE (c)-[:OFFERS]->(p);

// Query 135
MATCH (c:Company {name: 'Colombo Dockyard'}), (p:Product {name: 'LNG Carriers'}) MERGE (c)-[:OFFERS]->(p);

// Query 136
// Step 12: Company-Company Relationships (MANAGES);

// Query 137
MERGE (sub1:Company {name: 'Dockyard General Engineering Services'}) ON CREATE SET sub1.id = 'dockyard_general_engineering_services';

// Query 138
MERGE (sub2:Company {name: 'Ceylon Shipping Agency'}) ON CREATE SET sub2.id = 'ceylon_shipping_agency';

// Query 139
MERGE (sub3:Company {name: 'Dockyard Total Solutions'}) ON CREATE SET sub3.id = 'dockyard_total_solutions';

// Query 140
MATCH (parent:Company {name: 'Colombo Dockyard'}), (child:Company {name: 'Dockyard General Engineering Services'}) MERGE (parent)-[r:MANAGES]->(child);

// Query 141
MATCH (parent:Company {name: 'Colombo Dockyard'}), (child:Company {name: 'Ceylon Shipping Agency'}) MERGE (parent)-[r:MANAGES]->(child);

// Query 142
MATCH (parent:Company {name: 'Colombo Dockyard'}), (child:Company {name: 'Dockyard Total Solutions'}) MERGE (parent)-[r:MANAGES]->(child);

// Query 143
// Step 13: Person-Company Shareholdings;

// Query 144
MATCH (p:Person {name: 'Lalith Ganlath'}), (c:Company {name: 'Colombo Dockyard'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 578, r.as_of = date('2024-12-31');

// Query 145
MATCH (p:Person {name: 'C. C. Wickramatileka'}), (c:Company {name: 'Colombo Dockyard'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1000, r.as_of = date('2024-12-31');

// Total queries: 145
// Generated on: 2025-10-03T01:21:14.609298
