// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Richard Pieris and Company'}) ON CREATE SET c.id = 'richard_pieris_and_company', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor (Skipped - no specific auditor firm identified and matched to hardcoded list);

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Dr. Sena Yaddehige'}) ON CREATE SET p.id = 'dr_sena_yaddehige';

// Query 6
MERGE (p:Person {name: 'Mr. W. J. V. P. Perera'}) ON CREATE SET p.id = 'mr_w_j_v_p_perera';

// Query 7
MERGE (p:Person {name: 'Mr. Shaminda Yaddehige'}) ON CREATE SET p.id = 'mr_shaminda_yaddehige';

// Query 8
MERGE (p:Person {name: 'Mr. Shiron Gooneratne'}) ON CREATE SET p.id = 'mr_shiron_gooneratne';

// Query 9
MERGE (p:Person {name: 'Mr. Wasantha Rukmal Abesirigunawardena'}) ON CREATE SET p.id = 'mr_wasantha_rukmal_abesirigunawardena';

// Query 10
MERGE (p:Person {name: 'Dr. Jayatissa De Costa P.C.'}) ON CREATE SET p.id = 'dr_jayatissa_de_costa_p_c';

// Query 11
MERGE (p:Person {name: 'Mr. Prasanna Fernando'}) ON CREATE SET p.id = 'mr_prasanna_fernando';

// Query 12
MERGE (p:Person {name: 'Mr. J. F. Fernandopulle'}) ON CREATE SET p.id = 'mr_j_f_fernandopulle';

// Query 13
// Step 4: HOLDS_POSITION Relationships;

// Query 14
MATCH (p:Person {name: 'Dr. Sena Yaddehige'}), (c:Company {name: 'Richard Pieris and Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'Dr. Sena Yaddehige'}), (c:Company {name: 'Richard Pieris and Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'Mr. W. J. V. P. Perera'}), (c:Company {name: 'Richard Pieris and Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Mr. Shaminda Yaddehige'}), (c:Company {name: 'Richard Pieris and Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'Mr. Shaminda Yaddehige'}), (c:Company {name: 'Richard Pieris and Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Operating Officer', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'Mr. Shiron Gooneratne'}), (c:Company {name: 'Richard Pieris and Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'Mr. Wasantha Rukmal Abesirigunawardena'}), (c:Company {name: 'Richard Pieris and Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Dr. Jayatissa De Costa P.C.'}), (c:Company {name: 'Richard Pieris and Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Mr. Prasanna Fernando'}), (c:Company {name: 'Richard Pieris and Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Mr. J. F. Fernandopulle'}), (c:Company {name: 'Richard Pieris and Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
// Step 5: Metrics;

// Query 25
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 33
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 34
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 35
// Step 6: HAS_METRIC Relationships (Year 2024);

// Query 36
MATCH (c:Company {name: 'Richard Pieris and Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 73859225000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 37
MATCH (c:Company {name: 'Richard Pieris and Company'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3817296000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 38
MATCH (c:Company {name: 'Richard Pieris and Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2191494000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 39
MATCH (c:Company {name: 'Richard Pieris and Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1023732000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 40
MATCH (c:Company {name: 'Richard Pieris and Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 92917697000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 41
MATCH (c:Company {name: 'Richard Pieris and Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30194036000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 42
MATCH (c:Company {name: 'Richard Pieris and Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.28, r.year = 2024, r.as_of = date('2024-03-31');

// Query 43
MATCH (c:Company {name: 'Richard Pieris and Company'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.33, r.year = 2024, r.as_of = date('2024-03-31');

// Query 44
MATCH (c:Company {name: 'Richard Pieris and Company'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.07, r.year = 2024, r.as_of = date('2024-03-31');

// Query 45
MATCH (c:Company {name: 'Richard Pieris and Company'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 46.03, r.year = 2024, r.as_of = date('2024-03-31');

// Query 46
// Step 6: HAS_METRIC Relationships (Year 2023);

// Query 47
MATCH (c:Company {name: 'Richard Pieris and Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 79193785000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 48
MATCH (c:Company {name: 'Richard Pieris and Company'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11718875000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 49
MATCH (c:Company {name: 'Richard Pieris and Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9344490000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 50
MATCH (c:Company {name: 'Richard Pieris and Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6225588000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 51
MATCH (c:Company {name: 'Richard Pieris and Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 87498735000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 52
MATCH (c:Company {name: 'Richard Pieris and Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29810999000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 53
MATCH (c:Company {name: 'Richard Pieris and Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.45, r.year = 2023, r.as_of = date('2023-03-31');

// Query 54
MATCH (c:Company {name: 'Richard Pieris and Company'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21.02, r.year = 2023, r.as_of = date('2023-03-31');

// Query 55
MATCH (c:Company {name: 'Richard Pieris and Company'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.09, r.year = 2023, r.as_of = date('2023-03-31');

// Query 56
MATCH (c:Company {name: 'Richard Pieris and Company'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45.54, r.year = 2023, r.as_of = date('2023-03-31');

// Query 57
// Step 7: Sectors;

// Query 58
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 59
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 60
MERGE (s:Sector {name: 'Automobiles and Components'}) ON CREATE SET s.id = 'automobiles_and_components';

// Query 61
MERGE (s:Sector {name: 'Consumer Durables and Apparel'}) ON CREATE SET s.id = 'consumer_durables_and_apparel';

// Query 62
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 63
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 64
// Step 8: IN_SECTOR Relationships;

// Query 65
MATCH (c:Company {name: 'Richard Pieris and Company'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 66
MATCH (c:Company {name: 'Richard Pieris and Company'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 67
MATCH (c:Company {name: 'Richard Pieris and Company'}), (s:Sector {name: 'Automobiles and Components'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 68
MATCH (c:Company {name: 'Richard Pieris and Company'}), (s:Sector {name: 'Consumer Durables and Apparel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 69
MATCH (c:Company {name: 'Richard Pieris and Company'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 70
MATCH (c:Company {name: 'Richard Pieris and Company'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 71
// Step 9: Products;

// Query 72
MERGE (p:Product {name: 'Arpico Water Pumps'}) ON CREATE SET p.id = 'arpico_water_pumps';

// Query 73
MERGE (p:Product {name: 'Arpico Rigifoam Products'}) ON CREATE SET p.id = 'arpico_rigifoam_products';

// Query 74
MERGE (p:Product {name: 'Graphite-Infused Latex Products'}) ON CREATE SET p.id = 'graphite_infused_latex_products';

// Query 75
MERGE (p:Product {name: 'Organic Latex Products'}) ON CREATE SET p.id = 'organic_latex_products';

// Query 76
MERGE (p:Product {name: 'Printing Rollers'}) ON CREATE SET p.id = 'printing_rollers';

// Query 77
MERGE (p:Product {name: 'Conveyor Belts'}) ON CREATE SET p.id = 'conveyor_belts';

// Query 78
MERGE (p:Product {name: 'Industrial Rollers'}) ON CREATE SET p.id = 'industrial_rollers';

// Query 79
MERGE (p:Product {name: 'Industrial Rubber Products'}) ON CREATE SET p.id = 'industrial_rubber_products';

// Query 80
MERGE (p:Product {name: 'Molded Rubber Goods'}) ON CREATE SET p.id = 'molded_rubber_goods';

// Query 81
// Step 10: OFFERS Relationships;

// Query 82
MATCH (c:Company {name: 'Richard Pieris and Company'}), (p:Product {name: 'Arpico Water Pumps'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Richard Pieris and Company'}), (p:Product {name: 'Arpico Rigifoam Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Richard Pieris and Company'}), (p:Product {name: 'Graphite-Infused Latex Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Richard Pieris and Company'}), (p:Product {name: 'Organic Latex Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Richard Pieris and Company'}), (p:Product {name: 'Printing Rollers'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Richard Pieris and Company'}), (p:Product {name: 'Conveyor Belts'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Richard Pieris and Company'}), (p:Product {name: 'Industrial Rollers'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Richard Pieris and Company'}), (p:Product {name: 'Industrial Rubber Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Richard Pieris and Company'}), (p:Product {name: 'Molded Rubber Goods'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
// Step 11: Company-Company Relationships (MANAGES);

// Query 92
MERGE (managed:Company {name: 'Richard Pieris Finance'}) ON CREATE SET managed.id = 'richard_pieris_finance';

// Query 93
MATCH (manager:Company {name: 'Richard Pieris and Company'}), (managed:Company {name: 'Richard Pieris Finance'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Provides consumer financing products and integrated within the group', r.as_of = date('2024-03-31');

// Total queries: 93
// Generated on: 2025-10-03T01:42:58.466155
