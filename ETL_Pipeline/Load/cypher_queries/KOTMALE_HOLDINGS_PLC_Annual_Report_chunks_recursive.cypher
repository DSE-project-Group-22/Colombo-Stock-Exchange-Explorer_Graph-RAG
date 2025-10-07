// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Kotmale Holdings'}) ON CREATE SET c.id = 'kotmale_holdings', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('1967-01-06');

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Kotmale Holdings'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Imtiaz Abdul Wahid'}) ON CREATE SET p.id = 'imtiaz_abdul_wahid';

// Query 8
MERGE (p:Person {name: 'Saranga Wijesundara'}) ON CREATE SET p.id = 'saranga_wijesundara';

// Query 9
MERGE (p:Person {name: 'Ranjit Page'}) ON CREATE SET p.id = 'ranjit_page';

// Query 10
MERGE (p:Person {name: 'Asite Talwatte'}) ON CREATE SET p.id = 'asite_talwatte';

// Query 11
MERGE (p:Person {name: 'Priya Edirisinghe'}) ON CREATE SET p.id = 'priya_edirisinghe';

// Query 12
MERGE (p:Person {name: 'Joseph Page'}) ON CREATE SET p.id = 'joseph_page';

// Query 13
MERGE (p:Person {name: 'Dilantha Jayawardhana'}) ON CREATE SET p.id = 'dilantha_jayawardhana';

// Query 14
MERGE (p:Person {name: 'Indira Malwatte'}) ON CREATE SET p.id = 'indira_malwatte';

// Query 15
MERGE (p:Person {name: 'Dr. Dushni Weerakoon'}) ON CREATE SET p.id = 'dr_dushni_weerakoon';

// Query 16
// Step 4: HOLDS_POSITION Relationships;

// Query 17
MATCH (p:Person {name: 'Imtiaz Abdul Wahid'}), (c:Company {name: 'Kotmale Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2023-07-28');

// Query 18
MATCH (p:Person {name: 'Saranga Wijesundara'}), (c:Company {name: 'Kotmale Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'Ranjit Page'}), (c:Company {name: 'Kotmale Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2023-07-27');

// Query 20
MATCH (p:Person {name: 'Asite Talwatte'}), (c:Company {name: 'Kotmale Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Priya Edirisinghe'}), (c:Company {name: 'Kotmale Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Joseph Page'}), (c:Company {name: 'Kotmale Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Dilantha Jayawardhana'}), (c:Company {name: 'Kotmale Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-04-20');

// Query 24
MATCH (p:Person {name: 'Indira Malwatte'}), (c:Company {name: 'Kotmale Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-04-03');

// Query 25
MATCH (p:Person {name: 'Dr. Dushni Weerakoon'}), (c:Company {name: 'Kotmale Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-04-03');

// Query 26
// Step 5: Metrics;

// Query 27
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 35
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 36
// Step 6: HAS_METRIC Relationships - 2024;

// Query 37
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10594900000.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1002766000.0, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 927138000.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 644971000.0, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5077997000.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2994462000.0, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20.54, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.70, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.33, r.year = 2024;

// Query 46
// Step 6: HAS_METRIC Relationships - 2023;

// Query 47
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8565536000.0, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1048766000.0, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 800433000.0, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 581938000.0, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4074644000.0, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2194390000.0, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18.53, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.86, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.05, r.year = 2023;

// Query 56
// Step 6: HAS_METRIC Relationships - 2022;

// Query 57
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4341314000.0, r.year = 2022;

// Query 58
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 351809000.0, r.year = 2022;

// Query 59
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 283280000.0, r.year = 2022;

// Query 60
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3212878000.0, r.year = 2022;

// Query 61
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1693798000.0, r.year = 2022;

// Query 62
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.02, r.year = 2022;

// Query 63
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.90, r.year = 2022;

// Query 64
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.95, r.year = 2022;

// Query 65
// Step 6: HAS_METRIC Relationships - 2021;

// Query 66
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3269820000.0, r.year = 2021;

// Query 67
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 217669000.0, r.year = 2021;

// Query 68
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 190430000.0, r.year = 2021;

// Query 69
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2723989000.0, r.year = 2021;

// Query 70
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1408899000.0, r.year = 2021;

// Query 71
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.06, r.year = 2021;

// Query 72
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.93, r.year = 2021;

// Query 73
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.80, r.year = 2021;

// Query 74
// Step 6: HAS_METRIC Relationships - 2020;

// Query 75
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2931157000.0, r.year = 2020;

// Query 76
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 213476000.0, r.year = 2020;

// Query 77
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 148558000.0, r.year = 2020;

// Query 78
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2113047000.0, r.year = 2020;

// Query 79
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1094459000.0, r.year = 2020;

// Query 80
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.73, r.year = 2020;

// Query 81
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.93, r.year = 2020;

// Query 82
MATCH (c:Company {name: 'Kotmale Holdings'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.83, r.year = 2020;

// Query 83
// Step 7: Sectors;

// Query 84
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 85
// Step 8: IN_SECTOR Relationships;

// Query 86
MATCH (c:Company {name: 'Kotmale Holdings'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 87
// Step 9: Products;

// Query 88
MERGE (p:Product {name: 'Dairy Products'}) ON CREATE SET p.id = 'dairy_products';

// Query 89
// Step 10: OFFERS Relationships;

// Query 90
MATCH (c:Company {name: 'Kotmale Holdings'}), (p:Product {name: 'Dairy Products'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 90
// Generated on: 2025-10-03T03:25:31.248127
