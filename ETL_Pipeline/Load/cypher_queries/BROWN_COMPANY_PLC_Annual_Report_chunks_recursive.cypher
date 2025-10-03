// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Brown and Company'}) ON CREATE SET c.id = 'brown_and_company', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Deloitte'}) ON CREATE SET a.id = 'deloitte', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Brown and Company'}), (a:Auditor {name: 'Deloitte'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'Ishara Nanayakkara'}) ON CREATE SET p.id = 'ishara_nanayakkara';

// Query 9
MERGE (p:Person {name: 'Kalsha Amarasinghe'}) ON CREATE SET p.id = 'kalsha_amarasinghe';

// Query 10
MERGE (p:Person {name: 'Kapila Jayawardena'}) ON CREATE SET p.id = 'kapila_jayawardena';

// Query 11
MERGE (p:Person {name: 'Janaka de Silva'}) ON CREATE SET p.id = 'janaka_de_silva';

// Query 12
MERGE (p:Person {name: 'Tissa Bandaranayake'}) ON CREATE SET p.id = 'tissa_bandaranayake';

// Query 13
MERGE (p:Person {name: 'Danesh Abeyrathne'}) ON CREATE SET p.id = 'danesh_abeyrathne';

// Query 14
MERGE (p:Person {name: 'Thamotharampillai Sanakan'}) ON CREATE SET p.id = 'thamotharampillai_sanakan';

// Query 15
// Step 5: HOLDS_POSITION Relationships (for People);

// Query 16
MATCH (p:Person {name: 'Ishara Nanayakkara'}), (c:Company {name: 'Brown and Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Kalsha Amarasinghe'}), (c:Company {name: 'Brown and Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'Kapila Jayawardena'}), (c:Company {name: 'Brown and Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'Janaka de Silva'}), (c:Company {name: 'Brown and Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'Tissa Bandaranayake'}), (c:Company {name: 'Brown and Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Danesh Abeyrathne'}), (c:Company {name: 'Brown and Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Thamotharampillai Sanakan'}), (c:Company {name: 'Brown and Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 23
// Step 6: Company Secretaries (Company as a 'Person' in HOLDS_POSITION context);

// Query 24
MERGE (cs:Company {name: 'LOLC Corporate Services'}) ON CREATE SET cs.id = 'lolc_corporate_services';

// Query 25
MATCH (cs:Company {name: 'LOLC Corporate Services'}), (c:Company {name: 'Brown and Company'}) MERGE (cs)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-03-31');

// Query 26
// Step 7: Metrics;

// Query 27
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 34
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 35
// Step 8: HAS_METRIC Relationships;

// Query 36
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 80609000000.0, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 72652000000.0, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50304000000.0, r.year = 2022;

// Query 39
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29391000000.0, r.year = 2021;

// Query 40
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20439000000.0, r.year = 2020;

// Query 41
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6509000000.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -11108000000.0, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30304000000.0, r.year = 2022;

// Query 44
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2783000000.0, r.year = 2021;

// Query 45
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -970000000.0, r.year = 2020;

// Query 46
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -8531000000.0, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -12528000000.0, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29747000000.0, r.year = 2022;

// Query 49
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3344000000.0, r.year = 2021;

// Query 50
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1515000000.0, r.year = 2020;

// Query 51
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 70191000000.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 79104000000.0, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 85208000000.0, r.year = 2022;

// Query 54
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 46888000000.0, r.year = 2021;

// Query 55
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30257000000.0, r.year = 2020;

// Query 56
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 563371000000.0, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 466854000000.0, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 415402000000.0, r.year = 2022;

// Query 59
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 195762000000.0, r.year = 2021;

// Query 60
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 147673000000.0, r.year = 2020;

// Query 61
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.20, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -29.30, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 101.54, r.year = 2022;

// Query 64
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.08, r.year = 2021;

// Query 65
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.03, r.year = 2020;

// Query 66
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.33, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.39, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.47, r.year = 2022;

// Query 69
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.46, r.year = 2021;

// Query 70
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.51, r.year = 2020;

// Query 71
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 56.32, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 62.07, r.year = 2023;

// Query 73
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 59.26, r.year = 2022;

// Query 74
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 61.27, r.year = 2021;

// Query 75
MATCH (c:Company {name: 'Brown and Company'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50.97, r.year = 2020;

// Query 76
// Step 9: Sectors;

// Query 77
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 78
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 79
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 80
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 81
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 82
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 83
MERGE (s:Sector {name: 'Automobiles and Components'}) ON CREATE SET s.id = 'automobiles_and_components';

// Query 84
MERGE (s:Sector {name: 'Pharmaceuticals, Biotechnology, and Life Sciences'}) ON CREATE SET s.id = 'pharmaceuticals_biotechnology_and_life_sciences';

// Query 85
MERGE (s:Sector {name: 'Consumer Durables and Apparel'}) ON CREATE SET s.id = 'consumer_durables_and_apparel';

// Query 86
// Step 10: IN_SECTOR Relationships;

// Query 87
MATCH (c:Company {name: 'Brown and Company'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 88
MATCH (c:Company {name: 'Brown and Company'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 89
MATCH (c:Company {name: 'Brown and Company'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 90
MATCH (c:Company {name: 'Brown and Company'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 91
MATCH (c:Company {name: 'Brown and Company'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 92
MATCH (c:Company {name: 'Brown and Company'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 93
MATCH (c:Company {name: 'Brown and Company'}), (s:Sector {name: 'Automobiles and Components'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 94
MATCH (c:Company {name: 'Brown and Company'}), (s:Sector {name: 'Pharmaceuticals, Biotechnology, and Life Sciences'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 95
MATCH (c:Company {name: 'Brown and Company'}), (s:Sector {name: 'Consumer Durables and Apparel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 96
// Step 11: Products;

// Query 97
MERGE (p:Product {name: 'Drone Operated Agriculture Services'}) ON CREATE SET p.id = 'drone_operated_agriculture_services';

// Query 98
MERGE (p:Product {name: 'Agrochemicals'}) ON CREATE SET p.id = 'agrochemicals';

// Query 99
MERGE (p:Product {name: 'Marine Construction Services'}) ON CREATE SET p.id = 'marine_construction_services';

// Query 100
MERGE (p:Product {name: 'Steel Renewal Services'}) ON CREATE SET p.id = 'steel_renewal_services';

// Query 101
MERGE (p:Product {name: 'Farm Management Support'}) ON CREATE SET p.id = 'farm_management_support';

// Query 102
MERGE (p:Product {name: 'Veterinary Services'}) ON CREATE SET p.id = 'veterinary_services';

// Query 103
MERGE (p:Product {name: 'Quality Certification Consultation'}) ON CREATE SET p.id = 'quality_certification_consultation';

// Query 104
MERGE (p:Product {name: 'Vaccination Services'}) ON CREATE SET p.id = 'vaccination_services';

// Query 105
// Step 12: OFFERS Relationships;

// Query 106
MATCH (c:Company {name: 'Brown and Company'}), (p:Product {name: 'Drone Operated Agriculture Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 107
MATCH (c:Company {name: 'Brown and Company'}), (p:Product {name: 'Agrochemicals'}) MERGE (c)-[:OFFERS]->(p);

// Query 108
MATCH (c:Company {name: 'Brown and Company'}), (p:Product {name: 'Marine Construction Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 109
MATCH (c:Company {name: 'Brown and Company'}), (p:Product {name: 'Steel Renewal Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 110
MATCH (c:Company {name: 'Brown and Company'}), (p:Product {name: 'Farm Management Support'}) MERGE (c)-[:OFFERS]->(p);

// Query 111
MATCH (c:Company {name: 'Brown and Company'}), (p:Product {name: 'Veterinary Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 112
MATCH (c:Company {name: 'Brown and Company'}), (p:Product {name: 'Quality Certification Consultation'}) MERGE (c)-[:OFFERS]->(p);

// Query 113
MATCH (c:Company {name: 'Brown and Company'}), (p:Product {name: 'Vaccination Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 114
// Step 13: Company-Company Relationships (MANAGES);

// Query 115
MERGE (c_ts:Company {name: 'LOLC Technology Services'}) ON CREATE SET c_ts.id = 'lolc_technology_services';

// Query 116
MATCH (manager:Company {name: 'LOLC Technology Services'}), (managed:Company {name: 'Brown and Company'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Provides IT related services', r.as_of = date('2024-03-31');

// Total queries: 116
// Generated on: 2025-10-02T22:13:36.772882
