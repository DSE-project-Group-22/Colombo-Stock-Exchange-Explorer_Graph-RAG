// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Vidullanka'}) ON CREATE SET c.id = 'vidullanka', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'Venergy Lanka'}) ON CREATE SET c.id = 'venergy_lanka';

// Query 4
MERGE (c:Company {name: 'Vidul Plantation'}) ON CREATE SET c.id = 'vidul_plantation';

// Query 5
MERGE (c:Company {name: 'Vidul Biomass'}) ON CREATE SET c.id = 'vidul_biomass';

// Query 6
MERGE (c:Company {name: 'Vidul Agri'}) ON CREATE SET c.id = 'vidul_agri';

// Query 7
MERGE (c:Company {name: 'Horana Solar Power'}) ON CREATE SET c.id = 'horana_solar_power';

// Query 8
MERGE (c:Company {name: 'Orik Corporation'}) ON CREATE SET c.id = 'orik_corporation';

// Query 9
// Step 2: Auditor;

// Query 10
MERGE (a:Auditor:Company {name: 'BDO Partners'}) ON CREATE SET a.id = 'bdo_partners', a.type = 'Auditing Firm';

// Query 11
// Step 3: AUDITED_BY Relationship;

// Query 12
MATCH (c:Company {name: 'Vidullanka'}), (a:Auditor {name: 'BDO Partners'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 13
// Step 4: People - Directors and Executives;

// Query 14
MERGE (p:Person {name: 'Osman Kassim'}) ON CREATE SET p.id = 'osman_kassim';

// Query 15
MERGE (p:Person {name: 'Riyaz M. Sangani'}) ON CREATE SET p.id = 'riyaz_m_sangani';

// Query 16
MERGE (p:Person {name: 'Ranjan Mather'}) ON CREATE SET p.id = 'ranjan_mather';

// Query 17
MERGE (p:Person {name: 'Sujendra Mather'}) ON CREATE SET p.id = 'sujendra_mather';

// Query 18
MERGE (p:Person {name: 'Shahid M. Sangani'}) ON CREATE SET p.id = 'shahid_m_sangani';

// Query 19
MERGE (p:Person {name: 'Sattar Kassim'}) ON CREATE SET p.id = 'sattar_kassim';

// Query 20
MERGE (p:Person {name: 'Rizvi Zaheed'}) ON CREATE SET p.id = 'rizvi_zaheed';

// Query 21
MERGE (p:Person {name: 'Deepthie Wickramasuriya'}) ON CREATE SET p.id = 'deepthie_wickramasuriya';

// Query 22
MERGE (p:Person {name: 'Sidath Fernando'}) ON CREATE SET p.id = 'sidath_fernando';

// Query 23
// Step 5: HOLDS_POSITION Relationships;

// Query 24
MATCH (p:Person {name: 'Osman Kassim'}), (c:Company {name: 'Vidullanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Riyaz M. Sangani'}), (c:Company {name: 'Vidullanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'Ranjan Mather'}), (c:Company {name: 'Vidullanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'Sujendra Mather'}), (c:Company {name: 'Vidullanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'Shahid M. Sangani'}), (c:Company {name: 'Vidullanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'Sattar Kassim'}), (c:Company {name: 'Vidullanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'Rizvi Zaheed'}), (c:Company {name: 'Vidullanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'Deepthie Wickramasuriya'}), (c:Company {name: 'Vidullanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'Sidath Fernando'}), (c:Company {name: 'Vidullanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 33
// Step 6: Metrics;

// Query 34
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 40
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 41
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 43
// Step 7: HAS_METRIC Relationships;

// Query 44
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5692546000, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3836435000, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2567672000, r.year = 2022;

// Query 47
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1797070000, r.year = 2021;

// Query 48
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1440380000, r.year = 2020;

// Query 49
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2714335000, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2248750000, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1654858000, r.year = 2022;

// Query 52
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1125011000, r.year = 2021;

// Query 53
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 899346000, r.year = 2020;

// Query 54
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2242006000, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1649743000, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1357075000, r.year = 2022;

// Query 57
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 814920000, r.year = 2021;

// Query 58
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 582099000, r.year = 2020;

// Query 59
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1353186000, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1023010000, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 865877000, r.year = 2022;

// Query 62
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 594951000, r.year = 2021;

// Query 63
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 361662000, r.year = 2020;

// Query 64
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.36, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.02, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.93, r.year = 2022;

// Query 67
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.68, r.year = 2021;

// Query 68
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.41, r.year = 2020;

// Query 69
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18.0, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14.8, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.1, r.year = 2022;

// Query 72
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.3, r.year = 2021;

// Query 73
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.1, r.year = 2020;

// Query 74
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.61, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.54, r.year = 2023;

// Query 76
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.61, r.year = 2022;

// Query 77
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.99, r.year = 2021;

// Query 78
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.81, r.year = 2020;

// Query 79
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13019465000, r.year = 2024;

// Query 80
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13023778000, r.year = 2023;

// Query 81
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7528840000, r.year = 2024;

// Query 82
MATCH (c:Company {name: 'Vidullanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6889285000, r.year = 2023;

// Query 83
// Step 8: Sectors;

// Query 84
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 85
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 86
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 87
// Step 9: IN_SECTOR Relationships;

// Query 88
MATCH (c:Company {name: 'Vidullanka'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 89
MATCH (c:Company {name: 'Vidullanka'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 90
MATCH (c:Company {name: 'Vidullanka'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 91
MATCH (c:Company {name: 'Venergy Lanka'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 92
MATCH (c:Company {name: 'Vidul Plantation'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 93
MATCH (c:Company {name: 'Vidul Biomass'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 94
MATCH (c:Company {name: 'Vidul Agri'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 95
MATCH (c:Company {name: 'Horana Solar Power'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 96
MATCH (c:Company {name: 'Orik Corporation'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 97
// Step 10: Products;

// Query 98
MERGE (p:Product {name: 'Renewable Energy Generation'}) ON CREATE SET p.id = 'renewable_energy_generation';

// Query 99
MERGE (p:Product {name: 'Project Development'}) ON CREATE SET p.id = 'project_development';

// Query 100
MERGE (p:Product {name: 'Installation & Construction'}) ON CREATE SET p.id = 'installation_and_construction';

// Query 101
MERGE (p:Product {name: 'Operation & Maintenance'}) ON CREATE SET p.id = 'operation_and_maintenance';

// Query 102
MERGE (p:Product {name: 'Consultancy Services'}) ON CREATE SET p.id = 'consultancy_services';

// Query 103
MERGE (p:Product {name: 'Turnkey Solutions'}) ON CREATE SET p.id = 'turnkey_solutions';

// Query 104
MERGE (p:Product {name: 'Emobility'}) ON CREATE SET p.id = 'emobility';

// Query 105
MERGE (p:Product {name: 'Sustainable Fuelwood'}) ON CREATE SET p.id = 'sustainable_fuelwood';

// Query 106
// Step 11: OFFERS Relationships;

// Query 107
MATCH (c:Company {name: 'Vidullanka'}), (p:Product {name: 'Renewable Energy Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 108
MATCH (c:Company {name: 'Vidullanka'}), (p:Product {name: 'Project Development'}) MERGE (c)-[:OFFERS]->(p);

// Query 109
MATCH (c:Company {name: 'Vidullanka'}), (p:Product {name: 'Installation & Construction'}) MERGE (c)-[:OFFERS]->(p);

// Query 110
MATCH (c:Company {name: 'Vidullanka'}), (p:Product {name: 'Operation & Maintenance'}) MERGE (c)-[:OFFERS]->(p);

// Query 111
MATCH (c:Company {name: 'Vidullanka'}), (p:Product {name: 'Consultancy Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 112
MATCH (c:Company {name: 'Vidullanka'}), (p:Product {name: 'Turnkey Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 113
MATCH (c:Company {name: 'Venergy Lanka'}), (p:Product {name: 'Project Development'}) MERGE (c)-[:OFFERS]->(p);

// Query 114
MATCH (c:Company {name: 'Venergy Lanka'}), (p:Product {name: 'Emobility'}) MERGE (c)-[:OFFERS]->(p);

// Query 115
MATCH (c:Company {name: 'Vidul Agri'}), (p:Product {name: 'Sustainable Fuelwood'}) MERGE (c)-[:OFFERS]->(p);

// Query 116
MATCH (c:Company {name: 'Horana Solar Power'}), (p:Product {name: 'Renewable Energy Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 117
MATCH (c:Company {name: 'Orik Corporation'}), (p:Product {name: 'Renewable Energy Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 118
// Step 12: Company-Company Relationships (MANAGES);

// Query 119
MATCH (manager:Company {name: 'Vidul Biomass'}), (managed:Company {name: 'Vidul Plantation'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'operates power plant supplied by';

// Total queries: 119
// Generated on: 2025-10-02T22:28:20.230054
