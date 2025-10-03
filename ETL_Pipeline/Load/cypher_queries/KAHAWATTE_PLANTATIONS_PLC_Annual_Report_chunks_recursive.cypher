// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Kahawatte Plantations'}) ON CREATE SET c.id = 'kahawatte_plantations', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Kahawatte Plantations'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2025;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Dilhan C Fernando'}) ON CREATE SET p.id = 'dilhan_c_fernando';

// Query 8
MERGE (p:Person {name: 'Malik J Fernando'}) ON CREATE SET p.id = 'malik_j_fernando';

// Query 9
MERGE (p:Person {name: 'Minette D A Perera'}) ON CREATE SET p.id = 'minette_d_a_perera';

// Query 10
MERGE (p:Person {name: 'Himendra S Ranaweera'}) ON CREATE SET p.id = 'himendra_s_ranaweera';

// Query 11
MERGE (p:Person {name: 'Darshana Gunasekera'}) ON CREATE SET p.id = 'darshana_gunasekera';

// Query 12
MERGE (p:Person {name: 'Daya P Wickramatunga'}) ON CREATE SET p.id = 'daya_p_wickramatunga';

// Query 13
MERGE (p:Person {name: 'Nimal M Amarasekera'}) ON CREATE SET p.id = 'nimal_m_amarasekera';

// Query 14
MERGE (p:Person {name: 'Dilantha S Seneviratne'}) ON CREATE SET p.id = 'dilantha_s_seneviratne';

// Query 15
MERGE (p:Person {name: 'M.A. Wijeratne'}) ON CREATE SET p.id = 'm_a_wijeratne';

// Query 16
MERGE (p:Person {name: 'B. Rohith Probodha Peiris'}) ON CREATE SET p.id = 'b_rohith_probodha_peiris';

// Query 17
MERGE (p:Person {name: 'Binesh N Pananwala'}) ON CREATE SET p.id = 'binesh_n_pananwala';

// Query 18
// Step 4: HOLDS_POSITION Relationships;

// Query 19
MATCH (p:Person {name: 'Dilhan C Fernando'}), (c:Company {name: 'Kahawatte Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-03-31');

// Query 20
MATCH (p:Person {name: 'Malik J Fernando'}), (c:Company {name: 'Kahawatte Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 21
MATCH (p:Person {name: 'Minette D A Perera'}), (c:Company {name: 'Kahawatte Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 22
MATCH (p:Person {name: 'Himendra S Ranaweera'}), (c:Company {name: 'Kahawatte Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 23
MATCH (p:Person {name: 'Darshana Gunasekera'}), (c:Company {name: 'Kahawatte Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 24
MATCH (p:Person {name: 'Daya P Wickramatunga'}), (c:Company {name: 'Kahawatte Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-02-15');

// Query 25
MATCH (p:Person {name: 'Nimal M Amarasekera'}), (c:Company {name: 'Kahawatte Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-02-15');

// Query 26
MATCH (p:Person {name: 'Dilantha S Seneviratne'}), (c:Company {name: 'Kahawatte Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 27
MATCH (p:Person {name: 'M.A. Wijeratne'}), (c:Company {name: 'Kahawatte Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-24');

// Query 28
MATCH (p:Person {name: 'B. Rohith Probodha Peiris'}), (c:Company {name: 'Kahawatte Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-24');

// Query 29
MATCH (p:Person {name: 'Binesh N Pananwala'}), (c:Company {name: 'Kahawatte Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2023-10-01');

// Query 30
MATCH (p:Person {name: 'Binesh N Pananwala'}), (c:Company {name: 'Kahawatte Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-07-01');

// Query 31
// Step 5: Metrics;

// Query 32
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Operating Profit %'}) ON CREATE SET m.id = 'operating_profit_pct', m.unit = '%';

// Query 37
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 38
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 39
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 41
// Step 6: HAS_METRIC Relationships;

// Query 42
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6790324000, r.year = 2025;

// Query 43
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5672000000, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5153626000, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6261316000, r.year = 2022;

// Query 46
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4267216000, r.year = 2021;

// Query 47
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2979643000, r.year = 2020;

// Query 48
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2730645000, r.year = 2019;

// Query 49
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3105691000, r.year = 2018;

// Query 50
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3784762000, r.year = 2017;

// Query 51
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2775758000, r.year = 2016;

// Query 52
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2729838000, r.year = 2015;

// Query 53
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 692996000, r.year = 2025;

// Query 54
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 634000000, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 161601000, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 958234000, r.year = 2022;

// Query 57
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 89340000, r.year = 2021;

// Query 58
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -274000, r.year = 2020;

// Query 59
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -175626000, r.year = 2019;

// Query 60
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -39956000, r.year = 2018;

// Query 61
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 223925000, r.year = 2017;

// Query 62
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -20427000, r.year = 2016;

// Query 63
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -141574000, r.year = 2015;

// Query 64
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 357070000, r.year = 2025;

// Query 65
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -277289000, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 94841000, r.year = 2025;

// Query 67
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -579544000, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 312038000, r.year = 2022;

// Query 69
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -106198000, r.year = 2021;

// Query 70
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -245767000, r.year = 2020;

// Query 71
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -509554000, r.year = 2019;

// Query 72
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -248891000, r.year = 2018;

// Query 73
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18037000, r.year = 2017;

// Query 74
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -138454000, r.year = 2016;

// Query 75
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -192287000, r.year = 2015;

// Query 76
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit %'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.21, r.year = 2025;

// Query 77
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit %'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.14, r.year = 2023;

// Query 78
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit %'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.30, r.year = 2022;

// Query 79
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit %'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.09, r.year = 2021;

// Query 80
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit %'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.01, r.year = 2020;

// Query 81
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit %'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.43, r.year = 2019;

// Query 82
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit %'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.29, r.year = 2018;

// Query 83
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit %'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.92, r.year = 2017;

// Query 84
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit %'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.74, r.year = 2016;

// Query 85
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Operating Profit %'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.19, r.year = 2015;

// Query 86
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.46, r.year = 2025;

// Query 87
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.28, r.year = 2023;

// Query 88
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.40, r.year = 2022;

// Query 89
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.25, r.year = 2021;

// Query 90
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.28, r.year = 2020;

// Query 91
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.20, r.year = 2019;

// Query 92
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.22, r.year = 2018;

// Query 93
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.29, r.year = 2017;

// Query 94
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.32, r.year = 2016;

// Query 95
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.32, r.year = 2015;

// Query 96
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.0, r.year = 2025;

// Query 97
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -67.2, r.year = 2023;

// Query 98
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20.3, r.year = 2022;

// Query 99
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -9.3, r.year = 2021;

// Query 100
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -21.7, r.year = 2020;

// Query 101
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -81.0, r.year = 2019;

// Query 102
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28.8, r.year = 2018;

// Query 103
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.7, r.year = 2017;

// Query 104
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -15.0, r.year = 2016;

// Query 105
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -20.4, r.year = 2015;

// Query 106
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.95, r.year = 2025;

// Query 107
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.83, r.year = 2023;

// Query 108
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.14, r.year = 2022;

// Query 109
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.07, r.year = 2021;

// Query 110
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3.07, r.year = 2020;

// Query 111
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.38, r.year = 2019;

// Query 112
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3.12, r.year = 2018;

// Query 113
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.23, r.year = 2017;

// Query 114
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.73, r.year = 2016;

// Query 115
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2.41, r.year = 2015;

// Query 116
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5802672000, r.year = 2025;

// Query 117
MATCH (c:Company {name: 'Kahawatte Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5817068000, r.year = 2023;

// Query 118
// Step 7: Sectors;

// Query 119
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 120
MERGE (s:Sector {name: 'Utilities'}) ON CREATE SET s.id = 'utilities';

// Query 121
// Step 8: IN_SECTOR Relationships;

// Query 122
MATCH (c:Company {name: 'Kahawatte Plantations'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 123
MATCH (c:Company {name: 'Kahawatte Plantations'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 124
// Step 9: Products;

// Query 125
MERGE (p:Product {name: 'Tea'}) ON CREATE SET p.id = 'tea';

// Query 126
MERGE (p:Product {name: 'Rubber'}) ON CREATE SET p.id = 'rubber';

// Query 127
MERGE (p:Product {name: 'Cinnamon'}) ON CREATE SET p.id = 'cinnamon';

// Query 128
MERGE (p:Product {name: 'Coffee'}) ON CREATE SET p.id = 'coffee';

// Query 129
MERGE (p:Product {name: 'Timber'}) ON CREATE SET p.id = 'timber';

// Query 130
MERGE (p:Product {name: 'Specialty Tea'}) ON CREATE SET p.id = 'specialty_tea';

// Query 131
MERGE (p:Product {name: 'Solar Power'}) ON CREATE SET p.id = 'solar_power';

// Query 132
MERGE (p:Product {name: 'Hydropower'}) ON CREATE SET p.id = 'hydropower';

// Query 133
// Step 10: OFFERS Relationships;

// Query 134
MATCH (c:Company {name: 'Kahawatte Plantations'}), (p:Product {name: 'Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 135
MATCH (c:Company {name: 'Kahawatte Plantations'}), (p:Product {name: 'Rubber'}) MERGE (c)-[:OFFERS]->(p);

// Query 136
MATCH (c:Company {name: 'Kahawatte Plantations'}), (p:Product {name: 'Cinnamon'}) MERGE (c)-[:OFFERS]->(p);

// Query 137
MATCH (c:Company {name: 'Kahawatte Plantations'}), (p:Product {name: 'Coffee'}) MERGE (c)-[:OFFERS]->(p);

// Query 138
MATCH (c:Company {name: 'Kahawatte Plantations'}), (p:Product {name: 'Timber'}) MERGE (c)-[:OFFERS]->(p);

// Query 139
MATCH (c:Company {name: 'Kahawatte Plantations'}), (p:Product {name: 'Specialty Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 140
MATCH (c:Company {name: 'Kahawatte Plantations'}), (p:Product {name: 'Solar Power'}) MERGE (c)-[:OFFERS]->(p);

// Query 141
MATCH (c:Company {name: 'Kahawatte Plantations'}), (p:Product {name: 'Hydropower'}) MERGE (c)-[:OFFERS]->(p);

// Query 142
// Step 11: Company-Company Relationships (MANAGES);

// Query 143
MERGE (m:Company {name: 'Forbes Plantations'}) ON CREATE SET m.id = 'forbes_plantations';

// Query 144
MATCH (manager:Company {name: 'Forbes Plantations'}), (managed:Company {name: 'Kahawatte Plantations'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Managing Agent';

// Total queries: 144
// Generated on: 2025-10-03T03:45:51.062660
