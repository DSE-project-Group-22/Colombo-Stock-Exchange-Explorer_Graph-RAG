// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Kelani Tyres'}) ON CREATE SET c.id = 'kelani_tyres', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'Silverstock Limited'}) ON CREATE SET c.id = 'silverstock_limited', c.region = 'Sri Lanka';

// Query 4
MERGE (c:Company {name: 'Executive Cars'}) ON CREATE SET c.id = 'executive_cars';

// Query 5
MERGE (c:Company {name: 'CEAT Kelani Holdings'}) ON CREATE SET c.id = 'ceat_kelani_holdings';

// Query 6
// Step 2: Auditor;

// Query 7
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 8
// Step 3: AUDITED_BY Relationship;

// Query 9
MATCH (c:Company {name: 'Kelani Tyres'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 10
// Step 4: People - Directors and Executives;

// Query 11
MERGE (p:Person {name: 'Chanaka De Silva'}) ON CREATE SET p.id = 'chanaka_de_silva';

// Query 12
MERGE (p:Person {name: 'Rohan T. Fernando'}) ON CREATE SET p.id = 'rohan_t_fernando';

// Query 13
MERGE (p:Person {name: 'T. Bevan Perera'}) ON CREATE SET p.id = 't_bevan_perera';

// Query 14
MERGE (p:Person {name: 'D. S. Kamantha Amarasekera'}) ON CREATE SET p.id = 'd_s_kamantha_amarasekera';

// Query 15
MERGE (p:Person {name: 'S. S. Jayatilaka'}) ON CREATE SET p.id = 's_s_jayatilaka';

// Query 16
MERGE (p:Person {name: 'Eraj T. Fernando'}) ON CREATE SET p.id = 'eraj_t_fernando';

// Query 17
MERGE (p:Person {name: 'R. P. Weerasooria'}) ON CREATE SET p.id = 'r_p_weerasooria';

// Query 18
MERGE (p:Person {name: 'R. C. D. De Silva'}) ON CREATE SET p.id = 'r_c_d_de_silva';

// Query 19
// Step 5: HOLDS_POSITION Relationships;

// Query 20
MATCH (p:Person {name: 'Chanaka De Silva'}), (c:Company {name: 'Kelani Tyres'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Rohan T. Fernando'}), (c:Company {name: 'Kelani Tyres'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'T. Bevan Perera'}), (c:Company {name: 'Kelani Tyres'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'D. S. Kamantha Amarasekera'}), (c:Company {name: 'Kelani Tyres'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'S. S. Jayatilaka'}), (c:Company {name: 'Kelani Tyres'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'Eraj T. Fernando'}), (c:Company {name: 'Kelani Tyres'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 26
MATCH (p:Person {name: 'R. P. Weerasooria'}), (c:Company {name: 'Kelani Tyres'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'R. C. D. De Silva'}), (c:Company {name: 'Kelani Tyres'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 28
// Step 6: Metrics;

// Query 29
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Dividend per share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 38
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 39
// Step 7: HAS_METRIC Relationships;

// Query 40
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 946919000, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 507790000, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 575908000, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 870391000, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6989025000, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6496498000, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1894727000, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1721843000, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7162368000, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6710360000, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2068020000, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1935605000, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.78, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.32, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.16, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.83, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'CEAT Kelani Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17400798000, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'CEAT Kelani Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15432039000, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21582000, r.year = 2022;

// Query 59
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5910000, r.year = 2021;

// Query 60
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27017000, r.year = 2020;

// Query 61
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 826831000, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 479452000, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 812596000, r.year = 2022;

// Query 64
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 936788000, r.year = 2021;

// Query 65
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 444959000, r.year = 2020;

// Query 66
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.00, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.00, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14.57, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.81, r.year = 2023;

// Query 70
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.11, r.year = 2022;

// Query 71
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.76, r.year = 2021;

// Query 72
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.93, r.year = 2020;

// Query 73
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.00, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'Kelani Tyres'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.00, r.year = 2023;

// Query 75
// Step 8: Sectors;

// Query 76
MERGE (s:Sector {name: 'Automobiles and Components'}) ON CREATE SET s.id = 'automobiles_and_components';

// Query 77
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 78
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 79
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 80
// Step 9: IN_SECTOR Relationships;

// Query 81
MATCH (c:Company {name: 'Kelani Tyres'}), (s:Sector {name: 'Automobiles and Components'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 82
MATCH (c:Company {name: 'Kelani Tyres'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 83
MATCH (c:Company {name: 'Kelani Tyres'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 84
MATCH (c:Company {name: 'Executive Cars'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 85
MATCH (c:Company {name: 'CEAT Kelani Holdings'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 86
// Step 10: Products;

// Query 87
MERGE (p:Product {name: 'Tyres'}) ON CREATE SET p.id = 'tyres';

// Query 88
MERGE (p:Product {name: 'Vehicle Hire'}) ON CREATE SET p.id = 'vehicle_hire';

// Query 89
// Step 11: OFFERS Relationships;

// Query 90
MATCH (c:Company {name: 'Kelani Tyres'}), (p:Product {name: 'Tyres'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Executive Cars'}), (p:Product {name: 'Vehicle Hire'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
// Step 12: Company-Company Relationships;

// Query 93
MATCH (parent:Company {name: 'Silverstock Limited'}), (child:Company {name: 'Kelani Tyres'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 47.857, r.as_of = date('2024-03-31');

// Query 94
MATCH (parent:Company {name: 'Kelani Tyres'}), (child:Company {name: 'Executive Cars'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2006-01-01');

// Query 95
MATCH (manager:Company {name: 'Kelani Tyres'}), (managed:Company {name: 'CEAT Kelani Holdings'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Management of commercial and operational risks', r.as_of = date('2024-03-31');

// Total queries: 95
// Generated on: 2025-10-03T02:23:05.498903
