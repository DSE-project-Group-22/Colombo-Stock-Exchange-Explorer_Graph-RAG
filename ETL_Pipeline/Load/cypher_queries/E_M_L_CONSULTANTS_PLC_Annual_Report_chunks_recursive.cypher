// Query 1
MERGE (c:Company {name: 'EML Consultants PLC'}) ON CREATE SET c.id = 'eml_consultants_plc', c.founded_on = date('2021-11-05'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 2
MERGE (p:Person {name: 'Karunasena Hettiarachchi'}) ON CREATE SET p.id = 'karunasena_hettiarachchi';

// Query 3
MERGE (p:Person {name: 'K. A. K. Jayatilake'}) ON CREATE SET p.id = 'k_a_k_jayatilake';

// Query 4
MERGE (p:Person {name: 'Thilak Hewawasam'}) ON CREATE SET p.id = 'thilak_hewawasam';

// Query 5
MERGE (p:Person {name: 'H. N. J. Chandrasekera'}) ON CREATE SET p.id = 'h_n_j_chandrasekera';

// Query 6
MERGE (p:Person {name: 'K. P. P. H. Mihiripenna'}) ON CREATE SET p.id = 'k_p_p_h_mihiripenna';

// Query 7
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 8
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 9
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 10
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 11
MERGE (s:Sector {name: 'Telecommunication Services'}) ON CREATE SET s.id = 'telecommunication_services';

// Query 12
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 13
MERGE (s:Sector {name: 'Utilities'}) ON CREATE SET s.id = 'utilities';

// Query 14
MERGE (p:Product {name: 'Artificial Intelligence (AI) Consultancies'}) ON CREATE SET p.id = 'artificial_intelligence_ai_consultancies';

// Query 15
MERGE (p:Product {name: 'Biodiversity and eco systems'}) ON CREATE SET p.id = 'biodiversity_and_eco_systems';

// Query 16
MERGE (p:Product {name: 'Capacity Building and Human Resources Development'}) ON CREATE SET p.id = 'capacity_building_and_human_resources_development';

// Query 17
MERGE (p:Product {name: 'Climate Change'}) ON CREATE SET p.id = 'climate_change';

// Query 18
MERGE (p:Product {name: 'Community and livelihood development'}) ON CREATE SET p.id = 'community_and_livelihood_development';

// Query 19
MERGE (p:Product {name: 'Conceptual and Detailed Design'}) ON CREATE SET p.id = 'conceptual_and_detailed_design';

// Query 20
MERGE (p:Product {name: 'Digital Technology'}) ON CREATE SET p.id = 'digital_technology';

// Query 21
MERGE (p:Product {name: 'Environment and Natural Resources Management'}) ON CREATE SET p.id = 'environment_and_natural_resources_management';

// Query 22
MERGE (p:Product {name: 'Institutional Development'}) ON CREATE SET p.id = 'institutional_development';

// Query 23
MERGE (p:Product {name: 'Internet of Things (IOT) Consultancies'}) ON CREATE SET p.id = 'internet_of_things_iot_consultancies';

// Query 24
MERGE (p:Product {name: 'Livelihood development'}) ON CREATE SET p.id = 'livelihood_development';

// Query 25
MERGE (p:Product {name: 'Monitoring & Evaluation & Social Safeguard'}) ON CREATE SET p.id = 'monitoring_and_evaluation_and_social_safeguard';

// Query 26
MERGE (p:Product {name: 'Overseas Technical Assistance Projects'}) ON CREATE SET p.id = 'overseas_technical_assistance_projects';

// Query 27
MERGE (p:Product {name: 'Renewable Energy'}) ON CREATE SET p.id = 'renewable_energy';

// Query 28
MERGE (p:Product {name: 'Road Transport and Coastal Management'}) ON CREATE SET p.id = 'road_transport_and_coastal_management';

// Query 29
MERGE (p:Product {name: 'SMEs'}) ON CREATE SET p.id = 'smes';

// Query 30
MERGE (p:Product {name: 'Socio-economic surveys'}) ON CREATE SET p.id = 'socio_economic_surveys';

// Query 31
MERGE (p:Product {name: 'Urban Planning and Infrastructure Development'}) ON CREATE SET p.id = 'urban_planning_and_infrastructure_development';

// Query 32
MERGE (p:Product {name: 'Urban and Industrial Engineering'}) ON CREATE SET p.id = 'urban_and_industrial_engineering';

// Query 33
MERGE (p:Product {name: 'Waste Disposal'}) ON CREATE SET p.id = 'waste_disposal';

// Query 34
MERGE (p:Product {name: 'Water Supply and Sanitation'}) ON CREATE SET p.id = 'water_supply_and_sanitation';

// Query 35
MERGE (p:Product {name: 'Water Supply'}) ON CREATE SET p.id = 'water_supply';

// Query 36
MERGE (p:Product {name: 'technical and management consultancy services'}) ON CREATE SET p.id = 'technical_and_management_consultancy_services';

// Query 37
MERGE (m:Metric {name: 'Bank Charges'}) ON CREATE SET m.id = 'bank_charges', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Direct Cost'}) ON CREATE SET m.id = 'direct_cost', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Earnings Before Interest and Tax'}) ON CREATE SET m.id = 'earnings_before_interest_and_tax', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Earnings Per Share - Basic'}) ON CREATE SET m.id = 'earnings_per_share_basic', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Gross Profit Margin'}) ON CREATE SET m.id = 'gross_profit_margin', m.unit = '%';

// Query 43
MERGE (m:Metric {name: 'Income Tax Expense'}) ON CREATE SET m.id = 'income_tax_expense', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Interest Income'}) ON CREATE SET m.id = 'interest_income', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Interest on Borrowings'}) ON CREATE SET m.id = 'interest_on_borrowings', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Lease Interest on Finance Leases'}) ON CREATE SET m.id = 'lease_interest_on_finance_leases', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Net Loss Margin'}) ON CREATE SET m.id = 'net_loss_margin', m.unit = '%';

// Query 48
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Retained Earnings'}) ON CREATE SET m.id = 'retained_earnings', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Stated Capital'}) ON CREATE SET m.id = 'stated_capital', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 54
MERGE (m:Metric {name: 'Total Current Assets'}) ON CREATE SET m.id = 'total_current_assets', m.unit = 'Rs';

// Query 55
MERGE (m:Metric {name: 'Total Current Liabilities'}) ON CREATE SET m.id = 'total_current_liabilities', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs';

// Query 57
MERGE (m:Metric {name: 'Total Non-current Assets'}) ON CREATE SET m.id = 'total_non_current_assets', m.unit = 'Rs';

// Query 58
MERGE (m:Metric {name: 'Total Non-current Liabilities'}) ON CREATE SET m.id = 'total_non_current_liabilities', m.unit = 'Rs';

// Query 59
MERGE (m:Metric {name: 'Total Shareholder\'s Funds'}) ON CREATE SET m.id = 'total_shareholders_funds', m.unit = 'Rs';

// Query 60
MERGE (a:Company {name: 'MGI KAL Rupasinghe & Co., Chartered Accountants'}) ON CREATE SET a.id = 'mgi_kal_rupasinghe_and_co_chartered_accountants';

// Query 61
MATCH (p:Person {id: 'karunasena_hettiarachchi'}), (c:Company {id: 'eml_consultants_plc'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2021-11-05');

// Query 62
MATCH (p:Person {id: 'k_a_k_jayatilake'}), (c:Company {id: 'eml_consultants_plc'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2020-01-29');

// Query 63
MATCH (p:Person {id: 'thilak_hewawasam'}), (c:Company {id: 'eml_consultants_plc'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive, Non-Independent Director', r.as_of = date('2007-03-22');

// Query 64
MATCH (p:Person {id: 'h_n_j_chandrasekera'}), (c:Company {id: 'eml_consultants_plc'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Independent Director', r.as_of = date('2018-06-29');

// Query 65
MATCH (p:Person {id: 'k_p_p_h_mihiripenna'}), (c:Company {id: 'eml_consultants_plc'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Independent Director', r.as_of = date('2021-07-12');

// Query 66
MATCH (p:Person {id: 'karunasena_hettiarachchi'}), (c:Company {id: 'eml_consultants_plc'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive, Non-Independent Director', r.as_of = date('2021-11-05');

// Query 67
MATCH (p:Person {id: 'k_a_k_jayatilake'}), (c:Company {id: 'eml_consultants_plc'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Executive Director', r.as_of = date('2020-01-29');

// Query 68
MATCH (p:Person {id: 'thilak_hewawasam'}), (c:Company {id: 'eml_consultants_plc'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive, Non-Independent Director', r.as_of = date('2007-03-22');

// Query 69
MATCH (p:Person {id: 'h_n_j_chandrasekera'}), (c:Company {id: 'eml_consultants_plc'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive Independent Director', r.as_of = date('2018-06-29');

// Query 70
MATCH (p:Person {id: 'k_p_p_h_mihiripenna'}), (c:Company {id: 'eml_consultants_plc'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive Independent Director', r.as_of = date('2021-07-12');

// Query 71
MATCH (c:Company {id: 'eml_consultants_plc'}), (s:Sector {id: 'capital_goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 72
MATCH (c:Company {id: 'eml_consultants_plc'}), (s:Sector {id: 'commercial_and_professional_services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 73
MATCH (c:Company {id: 'eml_consultants_plc'}), (s:Sector {id: 'energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
MATCH (c:Company {id: 'eml_consultants_plc'}), (s:Sector {id: 'real_estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 75
MATCH (c:Company {id: 'eml_consultants_plc'}), (s:Sector {id: 'telecommunication_services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 76
MATCH (c:Company {id: 'eml_consultants_plc'}), (s:Sector {id: 'transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 77
MATCH (c:Company {id: 'eml_consultants_plc'}), (s:Sector {id: 'utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 78
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'artificial_intelligence_ai_consultancies'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'biodiversity_and_eco_systems'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'capacity_building_and_human_resources_development'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'climate_change'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'community_and_livelihood_development'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'conceptual_and_detailed_design'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'digital_technology'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'environment_and_natural_resources_management'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'institutional_development'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'internet_of_things_iot_consultancies'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'livelihood_development'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'monitoring_and_evaluation_and_social_safeguard'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'overseas_technical_assistance_projects'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'renewable_energy'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'road_transport_and_coastal_management'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'smes'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'socio_economic_surveys'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'urban_planning_and_infrastructure_development'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'urban_and_industrial_engineering'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'waste_disposal'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'water_supply_and_sanitation'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'water_supply'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
MATCH (c:Company {id: 'eml_consultants_plc'}), (p:Product {id: 'technical_and_management_consultancy_services'}) MERGE (c)-[:OFFERS]->(p);

// Query 101
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'bank_charges'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -107226.0, r.year = 2024;

// Query 102
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'bank_charges'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -88696.0, r.year = 2023;

// Query 103
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'direct_cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -89014336.0, r.year = 2019;

// Query 104
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'direct_cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -102776025.0, r.year = 2020;

// Query 105
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'direct_cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -72872968.0, r.year = 2021;

// Query 106
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'direct_cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -85969316.0, r.year = 2022;

// Query 107
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'direct_cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -53107452.0, r.year = 2023;

// Query 108
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'direct_cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -79661371.0, r.year = 2024;

// Query 109
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'earnings_before_interest_and_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -541034.0, r.year = 2019;

// Query 110
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'earnings_before_interest_and_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9196083.0, r.year = 2020;

// Query 111
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'earnings_before_interest_and_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8383555.0, r.year = 2021;

// Query 112
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'earnings_before_interest_and_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 61308387.0, r.year = 2022;

// Query 113
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'earnings_before_interest_and_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -21212940.0, r.year = 2023;

// Query 114
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'earnings_before_interest_and_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -12595784.0, r.year = 2024;

// Query 115
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'earnings_per_share_basic'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.08, r.year = 2023;

// Query 116
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'earnings_per_share_basic'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.09, r.year = 2024;

// Query 117
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'gross_profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 37056259.0, r.year = 2019;

// Query 118
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'gross_profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 30964918.0, r.year = 2020;

// Query 119
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'gross_profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 37624550.0, r.year = 2021;

// Query 120
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'gross_profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 46513524.0, r.year = 2022;

// Query 121
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'gross_profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 36946770.0, r.year = 2023;

// Query 122
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'gross_profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 36913852.0, r.year = 2024;

// Query 123
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'gross_profit_margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 41.0, r.year = 2023;

// Query 124
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'gross_profit_margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 32.0, r.year = 2024;

// Query 125
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'income_tax_expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -261595.0, r.year = 2019;

// Query 126
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'income_tax_expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -712698.0, r.year = 2020;

// Query 127
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'income_tax_expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -951950.0, r.year = 2021;

// Query 128
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'income_tax_expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1566668.0, r.year = 2022;

// Query 129
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'income_tax_expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 812765.0, r.year = 2023;

// Query 130
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'income_tax_expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2475361.0, r.year = 2024;

// Query 131
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'interest_income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14190636.0, r.year = 2023;

// Query 132
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'interest_income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7910157.0, r.year = 2024;

// Query 133
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'interest_on_borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -603347.0, r.year = 2023;

// Query 134
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'interest_on_borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -371910.0, r.year = 2024;

// Query 135
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'lease_interest_on_finance_leases'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -738138.0, r.year = 2023;

// Query 136
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'lease_interest_on_finance_leases'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -440797.0, r.year = 2024;

// Query 137
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'net_loss_margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.5, r.year = 2023;

// Query 138
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'net_loss_margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6.0, r.year = 2024;

// Query 139
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'profit_after_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -920186.0, r.year = 2019;

// Query 140
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'profit_after_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8825935.0, r.year = 2020;

// Query 141
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'profit_after_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7342271.0, r.year = 2021;

// Query 142
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'profit_after_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 60569772.0, r.year = 2022;

// Query 143
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'profit_after_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -7639720.0, r.year = 2023;

// Query 144
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'profit_after_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -8080921.0, r.year = 2024;

// Query 145
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'profit_before_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -658591.0, r.year = 2019;

// Query 146
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'profit_before_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9538633.0, r.year = 2020;

// Query 147
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'profit_before_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8294221.0, r.year = 2021;

// Query 148
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'profit_before_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 62136440.0, r.year = 2022;

// Query 149
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'profit_before_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -8452485.0, r.year = 2023;

// Query 150
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'profit_before_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5605560.0, r.year = 2024;

// Query 151
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'retained_earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1595382.0, r.year = 2019;

// Query 152
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'retained_earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11101481.0, r.year = 2020;

// Query 153
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'retained_earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16067788.0, r.year = 2021;

// Query 154
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'retained_earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 79875932.0, r.year = 2022;

// Query 155
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'retained_earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 129416812.0, r.year = 2023;

// Query 156
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'retained_earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 103926278.0, r.year = 2024;

// Query 157
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 126070595.0, r.year = 2019;

// Query 158
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 133740943.0, r.year = 2020;

// Query 159
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 110497518.0, r.year = 2021;

// Query 160
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 132482840.0, r.year = 2022;

// Query 161
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 90054222.0, r.year = 2023;

// Query 162
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 116575223.0, r.year = 2024;

// Query 163
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'stated_capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 90900000.0, r.year = 2019;

// Query 164
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'stated_capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 90900000.0, r.year = 2020;

// Query 165
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'stated_capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 90900000.0, r.year = 2021;

// Query 166
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'stated_capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 90900000.0, r.year = 2022;

// Query 167
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'stated_capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 90900000.0, r.year = 2023;

// Query 168
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'stated_capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 90900000.0, r.year = 2024;

// Query 169
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 171240518.0, r.year = 2019;

// Query 170
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 194052956.0, r.year = 2020;

// Query 171
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 196692482.0, r.year = 2021;

// Query 172
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 238830817.0, r.year = 2022;

// Query 173
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 273805412.0, r.year = 2023;

// Query 174
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 283637684.0, r.year = 2024;

// Query 175
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_current_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 117222762.0, r.year = 2019;

// Query 176
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_current_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 132133991.0, r.year = 2020;

// Query 177
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_current_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 133247289.0, r.year = 2021;

// Query 178
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_current_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 182059463.0, r.year = 2022;

// Query 179
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_current_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 164383981.0, r.year = 2023;

// Query 180
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_current_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 180834007.0, r.year = 2024;

// Query 181
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_current_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 69741099.0, r.year = 2019;

// Query 182
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_current_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 79688759.0, r.year = 2020;

// Query 183
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_current_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 72821540.0, r.year = 2021;

// Query 184
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_current_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 55411507.0, r.year = 2022;

// Query 185
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_current_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 41922690.0, r.year = 2023;

// Query 186
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_current_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 58084047.0, r.year = 2024;

// Query 187
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 78745136.0, r.year = 2019;

// Query 188
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 92051475.0, r.year = 2020;

// Query 189
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 89724694.0, r.year = 2021;

// Query 190
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 68054885.0, r.year = 2022;

// Query 191
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 53488600.0, r.year = 2023;

// Query 192
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 88811406.0, r.year = 2024;

// Query 193
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_non_current_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 54017756.0, r.year = 2019;

// Query 194
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_non_current_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 61918965.0, r.year = 2020;

// Query 195
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_non_current_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 63445193.0, r.year = 2021;

// Query 196
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_non_current_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 56771354.0, r.year = 2022;

// Query 197
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_non_current_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 109421431.0, r.year = 2023;

// Query 198
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_non_current_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 102803677.0, r.year = 2024;

// Query 199
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_non_current_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9004037.0, r.year = 2019;

// Query 200
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_non_current_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12362716.0, r.year = 2020;

// Query 201
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_non_current_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16903154.0, r.year = 2021;

// Query 202
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_non_current_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12643378.0, r.year = 2022;

// Query 203
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_non_current_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11565910.0, r.year = 2023;

// Query 204
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_non_current_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 30727359.0, r.year = 2024;

// Query 205
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_shareholders_funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 92495382.0, r.year = 2019;

// Query 206
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_shareholders_funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 102001481.0, r.year = 2020;

// Query 207
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_shareholders_funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 106967788.0, r.year = 2021;

// Query 208
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_shareholders_funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 170775932.0, r.year = 2022;

// Query 209
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_shareholders_funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 220316812.0, r.year = 2023;

// Query 210
MATCH (c:Company {id: 'eml_consultants_plc'}), (m:Metric {id: 'total_shareholders_funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 194826278.0, r.year = 2024;

// Query 211
MATCH (c:Company {id: 'eml_consultants_plc'}), (a:Company {id: 'mgi_kal_rupasinghe_and_co_chartered_accountants'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Total queries: 211
// Generated on: 2025-10-02T18:56:45.251163
