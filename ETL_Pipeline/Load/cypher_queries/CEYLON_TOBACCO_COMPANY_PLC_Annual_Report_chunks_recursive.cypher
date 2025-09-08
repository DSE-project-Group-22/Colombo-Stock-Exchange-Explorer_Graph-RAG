// Query 1
MERGE (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) ON CREATE SET c.id = 'ceylon_tobacco_company_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a.k._pathirage';

// Query 3
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/ Managing Director', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's._selliah';

// Query 5
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-07-29');

// Query 6
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k.m.p_karunaratne';

// Query 7
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g.l.h._premaratne';

// Query 9
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 11
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-06-18');

// Query 12
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's._d._r._arudpragasam';

// Query 13
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-01-01');

// Query 14
MERGE (p:Person {name: 'C. P. R. Perera'}) ON CREATE SET p.id = 'c._p._r._perera';

// Query 15
MATCH (p:Person {name: 'C. P. R. Perera'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 16
MERGE (p:Person {name: 'J. T. Sumathipala'}) ON CREATE SET p.id = 'j._t._sumathipala';

// Query 17
MATCH (p:Person {name: 'J. T. Sumathipala'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-25');

// Query 18
MERGE (p:Person {name: 'R. Radha'}) ON CREATE SET p.id = 'r._radha';

// Query 19
MATCH (p:Person {name: 'R. Radha'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-09');

// Query 20
MERGE (p:Person {name: 'R.A.T.P Perera'}) ON CREATE SET p.id = 'r.a.t.p_perera';

// Query 21
MATCH (p:Person {name: 'R.A.T.P Perera'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director/CEO', r.as_of = date('2024-01-31');

// Query 22
MERGE (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}) ON CREATE SET p.id = 'd.a.s.d._a._abeyesinhe';

// Query 23
MATCH (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 24
MERGE (p:Person {name: 'A. D. Ross'}) ON CREATE SET p.id = 'a._d._ross';

// Query 25
MATCH (p:Person {name: 'A. D. Ross'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 26
MERGE (p:Person {name: 'V. Siva Jr.'}) ON CREATE SET p.id = 'v._siva_jr.';

// Query 27
MATCH (p:Person {name: 'V. Siva Jr.'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 28
MERGE (p:Person {name: 'S. S. Balasubramaniam'}) ON CREATE SET p.id = 's._s._balasubramaniam';

// Query 29
MATCH (p:Person {name: 'S. S. Balasubramaniam'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-01');

// Query 30
MERGE (p:Person {name: 'D. Swarnasinghe'}) ON CREATE SET p.id = 'd._swarnasinghe';

// Query 31
MATCH (p:Person {name: 'D. Swarnasinghe'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-01');

// Query 32
MERGE (p:Person {name: 'D Hasitha S Jayawardena'}) ON CREATE SET p.id = 'd_hasitha_s_jayawardena';

// Query 33
MATCH (p:Person {name: 'D Hasitha S Jayawardena'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Chairman', r.as_of = date('2025-02-03');

// Query 34
MERGE (p:Person {name: 'C R Jansz'}) ON CREATE SET p.id = 'c_r_jansz';

// Query 35
MATCH (p:Person {name: 'C R Jansz'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 36
MERGE (p:Person {name: 'M A N S Perera'}) ON CREATE SET p.id = 'm_a_n_s_perera';

// Query 37
MATCH (p:Person {name: 'M A N S Perera'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-01-01');

// Query 38
MERGE (p:Person {name: 'K Dayaparan'}) ON CREATE SET p.id = 'k_dayaparan';

// Query 39
MATCH (p:Person {name: 'K Dayaparan'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 40
MERGE (p:Person {name: 'A Shakthevale'}) ON CREATE SET p.id = 'a_shakthevale';

// Query 41
MATCH (p:Person {name: 'A Shakthevale'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-10-01');

// Query 42
MERGE (p:Person {name: 'D S K Amarasekara'}) ON CREATE SET p.id = 'd_s_k_amarasekara';

// Query 43
MATCH (p:Person {name: 'D S K Amarasekara'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-10-01');

// Query 44
MERGE (p:Person {name: 'M R Mihular'}) ON CREATE SET p.id = 'm_r_mihular';

// Query 45
MATCH (p:Person {name: 'M R Mihular'}), (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Non-Executive Director', r.as_of = date('2024-10-01');

// Query 46
MERGE (m:Metric {name: 'Earnings per share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs.';

// Query 47
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (m:Metric {name: 'Earnings per share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 158.24, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (m:Metric {name: 'Earnings per share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 147.64, r.year = 2023;

// Query 49
MERGE (m:Metric {name: 'Total dividend'}) ON CREATE SET m.id = 'total_dividend', m.unit = 'Rs. Billion';

// Query 50
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (m:Metric {name: 'Total dividend'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 30.3, r.year = 2024;

// Query 51
MERGE (m:Metric {name: 'Dividend payout ratio'}) ON CREATE SET m.id = 'dividend_payout_ratio', m.unit = '%';

// Query 52
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (m:Metric {name: 'Dividend payout ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 100, r.year = 2024;

// Query 53
MERGE (m:Metric {name: 'Share price'}) ON CREATE SET m.id = 'share_price', m.unit = 'Rs.';

// Query 54
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (m:Metric {name: 'Share price'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1397.25, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (m:Metric {name: 'Share price'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 953.75, r.year = 2023;

// Query 56
MERGE (m:Metric {name: 'Market capitalization'}) ON CREATE SET m.id = 'market_capitalization', m.unit = 'Rs. Billion';

// Query 57
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (m:Metric {name: 'Market capitalization'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 261.7, r.year = 2024;

// Query 58
MERGE (m:Metric {name: 'Total equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs. Mn';

// Query 59
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (m:Metric {name: 'Total equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 33549, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (m:Metric {name: 'Total equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 32238, r.year = 2023;

// Query 61
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs. Mn';

// Query 62
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14832, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13674, r.year = 2023;

// Query 64
MERGE (m:Metric {name: 'Total non-current liabilities'}) ON CREATE SET m.id = 'total_non-current_liabilities', m.unit = 'Rs. Mn';

// Query 65
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (m:Metric {name: 'Total non-current liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10029, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (m:Metric {name: 'Total non-current liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9584, r.year = 2023;

// Query 67
MERGE (m:Metric {name: 'Total current liabilities'}) ON CREATE SET m.id = 'total_current_liabilities', m.unit = 'Rs. Mn';

// Query 68
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (m:Metric {name: 'Total current liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4803, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (m:Metric {name: 'Total current liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4090, r.year = 2023;

// Query 70
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs.\'000s';

// Query 71
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14832175, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13673759, r.year = 2023;

// Query 73
MERGE (m:Metric {name: 'Total equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs.\'000s';

// Query 74
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (m:Metric {name: 'Total equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 33549128, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (m:Metric {name: 'Total equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 32237888, r.year = 2023;

// Query 76
MERGE (s:Sector {name: 'Investment Holdings'}) ON CREATE SET s.id = 'investment_holdings';

// Query 77
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (s:Sector {name: 'Investment Holdings'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 78
MERGE (s:Sector {name: 'Portfolio and Asset Management'}) ON CREATE SET s.id = 'portfolio_and_asset_management';

// Query 79
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (s:Sector {name: 'Portfolio and Asset Management'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 80
MERGE (s:Sector {name: 'Oil palm plantations'}) ON CREATE SET s.id = 'oil_palm_plantations';

// Query 81
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (s:Sector {name: 'Oil palm plantations'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 82
MERGE (s:Sector {name: 'Oils & fats'}) ON CREATE SET s.id = 'oils_&_fats';

// Query 83
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (s:Sector {name: 'Oils & fats'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 84
MERGE (s:Sector {name: 'Beverages'}) ON CREATE SET s.id = 'beverages';

// Query 85
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (s:Sector {name: 'Beverages'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 86
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 87
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 88
MERGE (s:Sector {name: 'Leisure'}) ON CREATE SET s.id = 'leisure';

// Query 89
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (s:Sector {name: 'Leisure'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 90
MERGE (s:Sector {name: 'Management Services'}) ON CREATE SET s.id = 'management_services';

// Query 91
MATCH (c:Company {name: 'CEYLON TOBACCO COMPANY PLC'}), (s:Sector {name: 'Management Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 91
// Generated on: 2025-09-03T15:37:48.513473
