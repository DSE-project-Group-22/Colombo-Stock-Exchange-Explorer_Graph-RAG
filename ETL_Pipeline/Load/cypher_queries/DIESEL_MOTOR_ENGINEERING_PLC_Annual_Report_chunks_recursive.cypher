// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Diesel & Motor Engineering'}) ON CREATE SET c.id = 'diesel_motor_engineering', c.founded_on = date('1945-01-01'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'A. R. Pandithage'}) ON CREATE SET p.id = 'a_r_pandithage';

// Query 9
MERGE (p:Person {name: 'A. G. Pandithage'}) ON CREATE SET p.id = 'a_g_pandithage';

// Query 10
MERGE (p:Person {name: 'A. M. Pandithage'}) ON CREATE SET p.id = 'a_m_pandithage';

// Query 11
MERGE (p:Person {name: 'B. C. S. A. P. Gooneratne'}) ON CREATE SET p.id = 'b_c_s_a_p_gooneratne';

// Query 12
MERGE (p:Person {name: 'Dr. H. Cabral'}) ON CREATE SET p.id = 'dr_h_cabral';

// Query 13
MERGE (p:Person {name: 'P. K. W. Mahendra'}) ON CREATE SET p.id = 'p_k_w_mahendra';

// Query 14
MERGE (p:Person {name: 'S. R. W. M. C. Ranawana'}) ON CREATE SET p.id = 's_r_w_m_c_ranawana';

// Query 15
MERGE (p:Person {name: 'A. D. B. Talwatte'}) ON CREATE SET p.id = 'a_d_b_talwatte';

// Query 16
MERGE (p:Person {name: 'J. M. De Silva'}) ON CREATE SET p.id = 'j_m_de_silva';

// Query 17
MERGE (p:Person {name: 'D. N. K. Kurukulasuriya'}) ON CREATE SET p.id = 'd_n_k_kurukulasuriya';

// Query 18
MERGE (p:Person {name: 'C. R. Pandithage'}) ON CREATE SET p.id = 'c_r_pandithage';

// Query 19
MERGE (p:Person {name: 'H. M. A. Jayesinghe'}) ON CREATE SET p.id = 'h_m_a_jayesinghe';

// Query 20
MERGE (p:Person {name: 'S. C. Algama'}) ON CREATE SET p.id = 's_c_algama';

// Query 21
MERGE (p:Person {name: 'R. K. J. Gunasekera'}) ON CREATE SET p.id = 'r_k_j_gunasekera';

// Query 22
MERGE (p:Person {name: 'R. D. M. P. Wickramasinghe'}) ON CREATE SET p.id = 'r_d_m_p_wickramasinghe';

// Query 23
MERGE (p:Person {name: 'H. M. P. D. B. Dematawa'}) ON CREATE SET p.id = 'h_m_p_d_b_dematawa';

// Query 24
MERGE (p:Person {name: 'G. P. M. S. Karunaratne'}) ON CREATE SET p.id = 'g_p_m_s_karunaratne';

// Query 25
MERGE (p:Person {name: 'M. H. B. U. S. B. Mahagedara'}) ON CREATE SET p.id = 'm_h_b_u_s_b_mahagedara';

// Query 26
MERGE (p:Person {name: 'M. D. H. Peiris'}) ON CREATE SET p.id = 'm_d_h_peiris';

// Query 27
// Step 5: HOLDS_POSITION Relationships;

// Query 28
MATCH (p:Person {name: 'A. R. Pandithage'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-09-30');

// Query 29
MATCH (p:Person {name: 'A. G. Pandithage'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-09-30');

// Query 30
MATCH (p:Person {name: 'A. G. Pandithage'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-09-30');

// Query 31
MATCH (p:Person {name: 'A. M. Pandithage'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 32
MATCH (p:Person {name: 'B. C. S. A. P. Gooneratne'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-09-30');

// Query 33
MATCH (p:Person {name: 'B. C. S. A. P. Gooneratne'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-09-30');

// Query 34
MATCH (p:Person {name: 'Dr. H. Cabral'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-09-30');

// Query 35
MATCH (p:Person {name: 'P. K. W. Mahendra'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 36
MATCH (p:Person {name: 'S. R. W. M. C. Ranawana'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 37
MATCH (p:Person {name: 'A. D. B. Talwatte'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-09-30');

// Query 38
MATCH (p:Person {name: 'J. M. De Silva'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-09-30');

// Query 39
MATCH (p:Person {name: 'D. N. K. Kurukulasuriya'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 40
MATCH (p:Person {name: 'C. R. Pandithage'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-09-30');

// Query 41
MATCH (p:Person {name: 'H. M. A. Jayesinghe'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-09-30');

// Query 42
MATCH (p:Person {name: 'S. C. Algama'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-09-30');

// Query 43
MATCH (p:Person {name: 'R. K. J. Gunasekera'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-09-30');

// Query 44
MATCH (p:Person {name: 'R. D. M. P. Wickramasinghe'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-09-30');

// Query 45
MATCH (p:Person {name: 'H. M. P. D. B. Dematawa'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-09-30');

// Query 46
MATCH (p:Person {name: 'G. P. M. S. Karunaratne'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-09-30');

// Query 47
MATCH (p:Person {name: 'M. H. B. U. S. B. Mahagedara'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-09-30');

// Query 48
MATCH (p:Person {name: 'M. D. H. Peiris'}), (c:Company {name: 'Diesel & Motor Engineering'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-09-30');

// Query 49
// Step 6: Metrics;

// Query 50
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 54
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 55
// Step 7: HAS_METRIC Relationships;

// Query 56
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 32557940000.0, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16823287000.0, r.as_of = date('2024-09-30');

// Query 58
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14738230000.0, r.as_of = date('2023-09-30');

// Query 59
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3085702000.0, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 676063000.0, r.as_of = date('2024-09-30');

// Query 61
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1209020000.0, r.as_of = date('2023-09-30');

// Query 62
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -537348000.0, r.as_of = date('2024-09-30');

// Query 63
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 32520000.0, r.as_of = date('2023-09-30');

// Query 64
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 53820293000.0, r.as_of = date('2024-09-30');

// Query 65
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36842860000.0, r.as_of = date('2023-09-30');

// Query 66
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42528208000.0, r.as_of = date('2024-03-31');

// Query 67
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15438319000.0, r.as_of = date('2024-09-30');

// Query 68
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13682057000.0, r.as_of = date('2023-09-30');

// Query 69
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15427955000.0, r.as_of = date('2024-03-31');

// Query 70
// Step 8: Sectors;

// Query 71
MERGE (s:Sector {name: 'Automobiles and Components'}) ON CREATE SET s.id = 'automobiles_and_components';

// Query 72
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 73
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 74
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 75
MERGE (s:Sector {name: 'Utilities'}) ON CREATE SET s.id = 'utilities';

// Query 76
MERGE (s:Sector {name: 'Health Care Equipment and Services'}) ON CREATE SET s.id = 'health_care_equipment_and_services';

// Query 77
// Step 9: IN_SECTOR Relationships;

// Query 78
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (s:Sector {name: 'Automobiles and Components'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 79
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 80
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 81
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 82
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 83
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (s:Sector {name: 'Health Care Equipment and Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 84
// Step 10: Products;

// Query 85
MERGE (p:Product {name: 'Brand new vehicles'}) ON CREATE SET p.id = 'brand_new_vehicles';

// Query 86
MERGE (p:Product {name: 'Special purpose vehicles'}) ON CREATE SET p.id = 'special_purpose_vehicles';

// Query 87
MERGE (p:Product {name: 'Pre-owned vehicles'}) ON CREATE SET p.id = 'pre_owned_vehicles';

// Query 88
MERGE (p:Product {name: 'Premium vehicles aftersales'}) ON CREATE SET p.id = 'premium_vehicles_aftersales';

// Query 89
MERGE (p:Product {name: 'Mainstream vehicles aftersales'}) ON CREATE SET p.id = 'mainstream_vehicles_aftersales';

// Query 90
MERGE (p:Product {name: 'Marine and general engineering'}) ON CREATE SET p.id = 'marine_and_general_engineering';

// Query 91
MERGE (p:Product {name: 'Assembly of vehicles and pumps'}) ON CREATE SET p.id = 'assembly_of_vehicles_and_pumps';

// Query 92
MERGE (p:Product {name: 'Recreation of vehicles (camper trailer)'}) ON CREATE SET p.id = 'recreation_of_vehicles_camper_trailer';

// Query 93
MERGE (p:Product {name: 'Education in engineering and automotive solutions'}) ON CREATE SET p.id = 'education_in_engineering_and_automotive_solutions';

// Query 94
MERGE (p:Product {name: 'Automotive parts'}) ON CREATE SET p.id = 'automotive_parts';

// Query 95
MERGE (p:Product {name: 'Tyres'}) ON CREATE SET p.id = 'tyres';

// Query 96
MERGE (p:Product {name: 'Auto-care solutions'}) ON CREATE SET p.id = 'auto_care_solutions';

// Query 97
MERGE (p:Product {name: 'Lighting products'}) ON CREATE SET p.id = 'lighting_products';

// Query 98
MERGE (p:Product {name: 'Power tools'}) ON CREATE SET p.id = 'power_tools';

// Query 99
MERGE (p:Product {name: 'Home appliances'}) ON CREATE SET p.id = 'home_appliances';

// Query 100
MERGE (p:Product {name: 'Gardening solutions'}) ON CREATE SET p.id = 'gardening_solutions';

// Query 101
MERGE (p:Product {name: 'Construction solutions'}) ON CREATE SET p.id = 'construction_solutions';

// Query 102
MERGE (p:Product {name: 'Construction machinery'}) ON CREATE SET p.id = 'construction_machinery';

// Query 103
MERGE (p:Product {name: 'Storage & material handling solutions'}) ON CREATE SET p.id = 'storage_and_material_handling_solutions';

// Query 104
MERGE (p:Product {name: 'Car parking solutions'}) ON CREATE SET p.id = 'car_parking_solutions';

// Query 105
MERGE (p:Product {name: 'Water & fluid management projects'}) ON CREATE SET p.id = 'water_and_fluid_management_projects';

// Query 106
MERGE (p:Product {name: 'Import, processing, distribution of fertilizer'}) ON CREATE SET p.id = 'import_processing_distribution_of_fertilizer';

// Query 107
MERGE (p:Product {name: 'Seeds'}) ON CREATE SET p.id = 'seeds';

// Query 108
MERGE (p:Product {name: 'Agrochemical'}) ON CREATE SET p.id = 'agrochemical';

// Query 109
MERGE (p:Product {name: 'Plant nutrients'}) ON CREATE SET p.id = 'plant_nutrients';

// Query 110
MERGE (p:Product {name: 'Agri machinery'}) ON CREATE SET p.id = 'agri_machinery';

// Query 111
MERGE (p:Product {name: 'Value-added organic food products'}) ON CREATE SET p.id = 'value_added_organic_food_products';

// Query 112
MERGE (p:Product {name: 'R&D techno parks'}) ON CREATE SET p.id = 'r_and_d_techno_parks';

// Query 113
MERGE (p:Product {name: 'Agri advisory services'}) ON CREATE SET p.id = 'agri_advisory_services';

// Query 114
MERGE (p:Product {name: 'Agriculture pipes'}) ON CREATE SET p.id = 'agriculture_pipes';

// Query 115
MERGE (p:Product {name: 'Advance agri technologies including micro-irrigation & greenhouse projects'}) ON CREATE SET p.id = 'advance_agri_technologies_including_micro_irrigation_and_greenhouse_projects';

// Query 116
MERGE (p:Product {name: 'Processing & sales of coconut shell charcoal'}) ON CREATE SET p.id = 'processing_and_sales_of_coconut_shell_charcoal';

// Query 117
MERGE (p:Product {name: 'Engineering and related solutions in power & energy'}) ON CREATE SET p.id = 'engineering_and_related_solutions_in_power_and_energy';

// Query 118
MERGE (p:Product {name: 'Generation of solar power'}) ON CREATE SET p.id = 'generation_of_solar_power';

// Query 119
MERGE (p:Product {name: 'Building technologies'}) ON CREATE SET p.id = 'building_technologies';

// Query 120
MERGE (p:Product {name: 'Elevator and escalator solutions'}) ON CREATE SET p.id = 'elevator_and_escalator_solutions';

// Query 121
MERGE (p:Product {name: 'Medical equipments'}) ON CREATE SET p.id = 'medical_equipments';

// Query 122
MERGE (p:Product {name: 'Consumables'}) ON CREATE SET p.id = 'consumables';

// Query 123
MERGE (p:Product {name: 'Pharmaceuticals'}) ON CREATE SET p.id = 'pharmaceuticals';

// Query 124
MERGE (p:Product {name: 'Cardiology devices'}) ON CREATE SET p.id = 'cardiology_devices';

// Query 125
MERGE (p:Product {name: 'Contrast mediums'}) ON CREATE SET p.id = 'contrast_mediums';

// Query 126
// Step 11: OFFERS Relationships;

// Query 127
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Brand new vehicles'}) MERGE (c)-[:OFFERS]->(p);

// Query 128
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Special purpose vehicles'}) MERGE (c)-[:OFFERS]->(p);

// Query 129
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Pre-owned vehicles'}) MERGE (c)-[:OFFERS]->(p);

// Query 130
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Premium vehicles aftersales'}) MERGE (c)-[:OFFERS]->(p);

// Query 131
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Mainstream vehicles aftersales'}) MERGE (c)-[:OFFERS]->(p);

// Query 132
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Marine and general engineering'}) MERGE (c)-[:OFFERS]->(p);

// Query 133
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Assembly of vehicles and pumps'}) MERGE (c)-[:OFFERS]->(p);

// Query 134
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Recreation of vehicles (camper trailer)'}) MERGE (c)-[:OFFERS]->(p);

// Query 135
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Education in engineering and automotive solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 136
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Automotive parts'}) MERGE (c)-[:OFFERS]->(p);

// Query 137
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Tyres'}) MERGE (c)-[:OFFERS]->(p);

// Query 138
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Auto-care solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 139
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Lighting products'}) MERGE (c)-[:OFFERS]->(p);

// Query 140
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Power tools'}) MERGE (c)-[:OFFERS]->(p);

// Query 141
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Home appliances'}) MERGE (c)-[:OFFERS]->(p);

// Query 142
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Gardening solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 143
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Construction solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 144
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Construction machinery'}) MERGE (c)-[:OFFERS]->(p);

// Query 145
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Storage & material handling solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 146
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Car parking solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 147
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Water & fluid management projects'}) MERGE (c)-[:OFFERS]->(p);

// Query 148
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Import, processing, distribution of fertilizer'}) MERGE (c)-[:OFFERS]->(p);

// Query 149
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Seeds'}) MERGE (c)-[:OFFERS]->(p);

// Query 150
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Agrochemical'}) MERGE (c)-[:OFFERS]->(p);

// Query 151
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Plant nutrients'}) MERGE (c)-[:OFFERS]->(p);

// Query 152
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Agri machinery'}) MERGE (c)-[:OFFERS]->(p);

// Query 153
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Value-added organic food products'}) MERGE (c)-[:OFFERS]->(p);

// Query 154
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'R&D techno parks'}) MERGE (c)-[:OFFERS]->(p);

// Query 155
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Agri advisory services'}) MERGE (c)-[:OFFERS]->(p);

// Query 156
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Agriculture pipes'}) MERGE (c)-[:OFFERS]->(p);

// Query 157
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Advance agri technologies including micro-irrigation & greenhouse projects'}) MERGE (c)-[:OFFERS]->(p);

// Query 158
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Processing & sales of coconut shell charcoal'}) MERGE (c)-[:OFFERS]->(p);

// Query 159
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Engineering and related solutions in power & energy'}) MERGE (c)-[:OFFERS]->(p);

// Query 160
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Generation of solar power'}) MERGE (c)-[:OFFERS]->(p);

// Query 161
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Building technologies'}) MERGE (c)-[:OFFERS]->(p);

// Query 162
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Elevator and escalator solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 163
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Medical equipments'}) MERGE (c)-[:OFFERS]->(p);

// Query 164
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Consumables'}) MERGE (c)-[:OFFERS]->(p);

// Query 165
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Pharmaceuticals'}) MERGE (c)-[:OFFERS]->(p);

// Query 166
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Cardiology devices'}) MERGE (c)-[:OFFERS]->(p);

// Query 167
MATCH (c:Company {name: 'Diesel & Motor Engineering'}), (p:Product {name: 'Contrast mediums'}) MERGE (c)-[:OFFERS]->(p);

// Query 168
// Step 12: Company-Company Relationships (OWNS);

// Query 169
MERGE (child:Company {name: 'DIMO Lifeline'}) ON CREATE SET child.id = 'dimo_lifeline';

// Query 170
MATCH (parent:Company {name: 'Diesel & Motor Engineering'}), (child:Company {name: 'DIMO Lifeline'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 75.0, r.as_of = date('2024-09-30');

// Total queries: 170
// Generated on: 2025-10-02T22:30:19.320893
