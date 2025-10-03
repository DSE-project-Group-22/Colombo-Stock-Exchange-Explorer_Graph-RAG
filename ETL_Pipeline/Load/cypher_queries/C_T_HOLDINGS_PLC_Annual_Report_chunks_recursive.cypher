// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'C T Holdings'}) ON CREATE SET c.id = 'c_t_holdings', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('1928-09-29');

// Query 3
// Step 1: Other Companies mentioned;

// Query 4
MERGE (c:Company {name: 'Odeon Holdings (Ceylon)'}) ON CREATE SET c.id = 'odeon_holdings_ceylon', c.region = 'Sri Lanka';

// Query 5
MERGE (c:Company {name: 'CT CLSA Holdings'}) ON CREATE SET c.id = 'ct_clsa_holdings', c.region = 'Sri Lanka';

// Query 6
MERGE (c:Company {name: 'CT CLSA Securities'}) ON CREATE SET c.id = 'ct_clsa_securities', c.region = 'Sri Lanka';

// Query 7
MERGE (c:Company {name: 'CT CLSA Capital'}) ON CREATE SET c.id = 'ct_clsa_capital', c.region = 'Sri Lanka';

// Query 8
MERGE (c:Company {name: 'CT CLSA Asset Management'}) ON CREATE SET c.id = 'ct_clsa_asset_management', c.region = 'Sri Lanka';

// Query 9
MERGE (c:Company {name: 'Cargills (Ceylon)'}) ON CREATE SET c.id = 'cargills_ceylon', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 10
MERGE (c:Company {name: 'Kotmale Holdings'}) ON CREATE SET c.id = 'kotmale_holdings', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 11
MERGE (c:Company {name: 'CT Land Development'}) ON CREATE SET c.id = 'ct_land_development', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 12
// Step 2: Auditor - No auditor name found in the hardcoded list, skipping auditor creation and relationship.;

// Query 13
// Step 3: People - Directors and Executives;

// Query 14
MERGE (p:Person {name: 'Anthony A Page'}) ON CREATE SET p.id = 'anthony_a_page';

// Query 15
MERGE (p:Person {name: 'Louis Page'}) ON CREATE SET p.id = 'louis_page';

// Query 16
MERGE (p:Person {name: 'Ranjit Page'}) ON CREATE SET p.id = 'ranjit_page';

// Query 17
MERGE (p:Person {name: 'Asite Talwatte'}) ON CREATE SET p.id = 'asite_talwatte';

// Query 18
MERGE (p:Person {name: 'Jayantha De Silva'}) ON CREATE SET p.id = 'jayantha_de_silva';

// Query 19
MERGE (p:Person {name: 'Priya Edirisinghe'}) ON CREATE SET p.id = 'priya_edirisinghe';

// Query 20
MERGE (p:Person {name: 'Cecilia Page'}) ON CREATE SET p.id = 'cecilia_page';

// Query 21
MERGE (p:Person {name: 'Aravinda Page'}) ON CREATE SET p.id = 'aravinda_page';

// Query 22
MERGE (p:Person {name: 'Joseph Page'}) ON CREATE SET p.id = 'joseph_page';

// Query 23
MERGE (p:Person {name: 'Imtiaz Abdul Wahid'}) ON CREATE SET p.id = 'imtiaz_abdul_wahid';

// Query 24
MERGE (p:Person {name: 'Sanjay Niles'}) ON CREATE SET p.id = 'sanjay_niles';

// Query 25
MERGE (p:Person {name: 'J B L De Silva'}) ON CREATE SET p.id = 'j_b_l_de_silva';

// Query 26
// Step 4: HOLDS_POSITION Relationships;

// Query 27
MATCH (p:Person {name: 'Louis Page'}), (c:Company {name: 'C T Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'Ranjit Page'}), (c:Company {name: 'C T Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'Ranjit Page'}), (c:Company {name: 'C T Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'Asite Talwatte'}), (c:Company {name: 'C T Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'Jayantha De Silva'}), (c:Company {name: 'C T Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'Priya Edirisinghe'}), (c:Company {name: 'C T Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'Cecilia Page'}), (c:Company {name: 'C T Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'Aravinda Page'}), (c:Company {name: 'C T Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'Joseph Page'}), (c:Company {name: 'C T Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 36
MATCH (p:Person {name: 'Imtiaz Abdul Wahid'}), (c:Company {name: 'C T Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 37
MATCH (p:Person {name: 'Sanjay Niles'}), (c:Company {name: 'C T Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 38
MATCH (p:Person {name: 'J B L De Silva'}), (c:Company {name: 'C T Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 39
MATCH (p:Person {name: 'Cecilia Page'}), (c:Company {name: 'CT CLSA Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 40
MATCH (p:Person {name: 'Cecilia Page'}), (c:Company {name: 'CT CLSA Securities'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 41
MATCH (p:Person {name: 'Cecilia Page'}), (c:Company {name: 'CT CLSA Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 42
MATCH (p:Person {name: 'Cecilia Page'}), (c:Company {name: 'CT CLSA Asset Management'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 43
MATCH (p:Person {name: 'Ranjit Page'}), (c:Company {name: 'Cargills (Ceylon)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2021-01-01');

// Query 44
MATCH (p:Person {name: 'Ranjit Page'}), (c:Company {name: 'Cargills (Ceylon)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2021-01-01');

// Query 45
MATCH (p:Person {name: 'Ranjit Page'}), (c:Company {name: 'Kotmale Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2023-07-01');

// Query 46
MATCH (p:Person {name: 'Sanjay Niles'}), (c:Company {name: 'CT Land Development'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 47
// Step 5: Metrics;

// Query 48
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 53
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 54
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Times';

// Query 55
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 57
// Step 6: HAS_METRIC Relationships;

// Query 58
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 224283040000.0, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 196265571000.0, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 136872756000.0, r.year = 2022;

// Query 61
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 112940971000.0, r.year = 2021;

// Query 62
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 107817065000.0, r.year = 2020;

// Query 63
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9699451000.0, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8453905000.0, r.year = 2023;

// Query 65
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5468375000.0, r.year = 2022;

// Query 66
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4311617000.0, r.year = 2021;

// Query 67
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4254692000.0, r.year = 2020;

// Query 68
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6226137000.0, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5109516000.0, r.year = 2023;

// Query 70
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4170305000.0, r.year = 2022;

// Query 71
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3321269000.0, r.year = 2021;

// Query 72
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2721877000.0, r.year = 2020;

// Query 73
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21.63, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.17, r.year = 2023;

// Query 75
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14.09, r.year = 2022;

// Query 76
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.24, r.year = 2021;

// Query 77
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.98, r.year = 2020;

// Query 78
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14.45, r.year = 2024;

// Query 79
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14.96, r.year = 2023;

// Query 80
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.93, r.year = 2022;

// Query 81
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.83, r.year = 2021;

// Query 82
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.66, r.year = 2020;

// Query 83
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.66, r.year = 2024;

// Query 84
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.64, r.year = 2023;

// Query 85
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.66, r.year = 2022;

// Query 86
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.57, r.year = 2021;

// Query 87
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.53, r.year = 2020;

// Query 88
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.27, r.year = 2024;

// Query 89
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.52, r.year = 2023;

// Query 90
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.23, r.year = 2022;

// Query 91
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.62, r.year = 2021;

// Query 92
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.14, r.year = 2020;

// Query 93
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30154588000.0, r.year = 2024;

// Query 94
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23113904000.0, r.year = 2023;

// Query 95
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23787323000.0, r.year = 2022;

// Query 96
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23359195000.0, r.year = 2021;

// Query 97
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21189846000.0, r.year = 2020;

// Query 98
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 43886310000.0, r.year = 2024;

// Query 99
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 35363311000.0, r.year = 2023;

// Query 100
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33343013000.0, r.year = 2022;

// Query 101
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31313712000.0, r.year = 2021;

// Query 102
MATCH (c:Company {name: 'C T Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26507266000.0, r.year = 2020;

// Query 103
// Step 7: Sectors;

// Query 104
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 105
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 106
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 107
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 108
MERGE (s:Sector {name: 'Banks'}) ON CREATE SET s.id = 'banks';

// Query 109
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 110
// Step 8: IN_SECTOR Relationships;

// Query 111
MATCH (c:Company {name: 'C T Holdings'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 112
MATCH (c:Company {name: 'C T Holdings'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 113
MATCH (c:Company {name: 'C T Holdings'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 114
MATCH (c:Company {name: 'C T Holdings'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 115
MATCH (c:Company {name: 'C T Holdings'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 116
MATCH (c:Company {name: 'C T Holdings'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 117
// Step 9: Product nodes creation;

// Query 118
MERGE (p:Product {name: 'Supermarkets'}) ON CREATE SET p.id = 'supermarkets';

// Query 119
MERGE (p:Product {name: 'Convenient Stores'}) ON CREATE SET p.id = 'convenient_stores';

// Query 120
MERGE (p:Product {name: 'Dairy Products'}) ON CREATE SET p.id = 'dairy_products';

// Query 121
MERGE (p:Product {name: 'Agrifoods'}) ON CREATE SET p.id = 'agrifoods';

// Query 122
MERGE (p:Product {name: 'Convenience Foods'}) ON CREATE SET p.id = 'convenience_foods';

// Query 123
MERGE (p:Product {name: 'Confectionery'}) ON CREATE SET p.id = 'confectionery';

// Query 124
MERGE (p:Product {name: 'KIST Nectars and Juices'}) ON CREATE SET p.id = 'kist_nectars_and_juices';

// Query 125
MERGE (p:Product {name: 'Knuckles Water'}) ON CREATE SET p.id = 'knuckles_water';

// Query 126
MERGE (p:Product {name: 'RIDE Energy Drinks'}) ON CREATE SET p.id = 'ride_energy_drinks';

// Query 127
MERGE (p:Product {name: 'Kentucky Fried Chicken (KFC) Restaurants'}) ON CREATE SET p.id = 'kentucky_fried_chicken_kfc_restaurants';

// Query 128
MERGE (p:Product {name: 'TGI Fridays Restaurants'}) ON CREATE SET p.id = 'tgi_fridays_restaurants';

// Query 129
MERGE (p:Product {name: 'Majestic City Mall'}) ON CREATE SET p.id = 'majestic_city_mall';

// Query 130
MERGE (p:Product {name: 'Cargills Square Mall'}) ON CREATE SET p.id = 'cargills_square_mall';

// Query 131
MERGE (p:Product {name: 'Residential Condominiums'}) ON CREATE SET p.id = 'residential_condominiums';

// Query 132
MERGE (p:Product {name: 'Commercial Development'}) ON CREATE SET p.id = 'commercial_development';

// Query 133
MERGE (p:Product {name: 'Cinematic Content Exhibition'}) ON CREATE SET p.id = 'cinematic_content_exhibition';

// Query 134
MERGE (p:Product {name: 'Stockbroking Services'}) ON CREATE SET p.id = 'stockbroking_services';

// Query 135
MERGE (p:Product {name: 'Investment Banking Services'}) ON CREATE SET p.id = 'investment_banking_services';

// Query 136
MERGE (p:Product {name: 'Asset Management Services'}) ON CREATE SET p.id = 'asset_management_services';

// Query 137
// Step 10: OFFERS relationships;

// Query 138
MATCH (c:Company {name: 'C T Holdings'}), (p:Product {name: 'Supermarkets'}) MERGE (c)-[:OFFERS]->(p);

// Query 139
MATCH (c:Company {name: 'C T Holdings'}), (p:Product {name: 'Convenient Stores'}) MERGE (c)-[:OFFERS]->(p);

// Query 140
MATCH (c:Company {name: 'C T Holdings'}), (p:Product {name: 'Dairy Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 141
MATCH (c:Company {name: 'C T Holdings'}), (p:Product {name: 'Agrifoods'}) MERGE (c)-[:OFFERS]->(p);

// Query 142
MATCH (c:Company {name: 'C T Holdings'}), (p:Product {name: 'Convenience Foods'}) MERGE (c)-[:OFFERS]->(p);

// Query 143
MATCH (c:Company {name: 'C T Holdings'}), (p:Product {name: 'Confectionery'}) MERGE (c)-[:OFFERS]->(p);

// Query 144
MATCH (c:Company {name: 'C T Holdings'}), (p:Product {name: 'KIST Nectars and Juices'}) MERGE (c)-[:OFFERS]->(p);

// Query 145
MATCH (c:Company {name: 'C T Holdings'}), (p:Product {name: 'Knuckles Water'}) MERGE (c)-[:OFFERS]->(p);

// Query 146
MATCH (c:Company {name: 'C T Holdings'}), (p:Product {name: 'RIDE Energy Drinks'}) MERGE (c)-[:OFFERS]->(p);

// Query 147
MATCH (c:Company {name: 'C T Holdings'}), (p:Product {name: 'Kentucky Fried Chicken (KFC) Restaurants'}) MERGE (c)-[:OFFERS]->(p);

// Query 148
MATCH (c:Company {name: 'C T Holdings'}), (p:Product {name: 'TGI Fridays Restaurants'}) MERGE (c)-[:OFFERS]->(p);

// Query 149
MATCH (c:Company {name: 'C T Holdings'}), (p:Product {name: 'Majestic City Mall'}) MERGE (c)-[:OFFERS]->(p);

// Query 150
MATCH (c:Company {name: 'C T Holdings'}), (p:Product {name: 'Cargills Square Mall'}) MERGE (c)-[:OFFERS]->(p);

// Query 151
MATCH (c:Company {name: 'C T Holdings'}), (p:Product {name: 'Residential Condominiums'}) MERGE (c)-[:OFFERS]->(p);

// Query 152
MATCH (c:Company {name: 'C T Holdings'}), (p:Product {name: 'Commercial Development'}) MERGE (c)-[:OFFERS]->(p);

// Query 153
MATCH (c:Company {name: 'C T Holdings'}), (p:Product {name: 'Cinematic Content Exhibition'}) MERGE (c)-[:OFFERS]->(p);

// Query 154
MATCH (c:Company {name: 'C T Holdings'}), (p:Product {name: 'Stockbroking Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 155
MATCH (c:Company {name: 'C T Holdings'}), (p:Product {name: 'Investment Banking Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 156
MATCH (c:Company {name: 'C T Holdings'}), (p:Product {name: 'Asset Management Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 157
// Step 11: Company-Company Relationships (OWNS);

// Query 158
MATCH (parent:Company {name: 'Odeon Holdings (Ceylon)'}), (child:Company {name: 'C T Holdings'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 42.32, r.as_of = date('2024-03-31');

// Query 159
MATCH (parent:Company {name: 'Odeon Holdings (Ceylon)'}), (child:Company {name: 'C T Holdings'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 42.09, r.as_of = date('2023-03-31');

// Query 160
MATCH (parent:Company {name: 'CT CLSA Holdings'}), (child:Company {name: 'CT CLSA Securities'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 161
MATCH (parent:Company {name: 'CT CLSA Holdings'}), (child:Company {name: 'CT CLSA Capital'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 162
MATCH (parent:Company {name: 'CT CLSA Holdings'}), (child:Company {name: 'CT CLSA Asset Management'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Total queries: 162
// Generated on: 2025-10-03T03:18:49.950073
