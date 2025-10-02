// Query 1
MERGE (c:Company {name: 'Prime Lands Residencies PLC'}) ON CREATE SET c.id = 'prime_lands_residencies_plc', c.founded_on = date('2005-05-01'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 2
MERGE (c:Company {name: 'Prime Lands (Private) Limited'}) ON CREATE SET c.id = 'prime_lands_private_limited';

// Query 3
MERGE (p:Person {name: 'Ms. Sandamini Perera'}) ON CREATE SET p.id = 'ms_sandamini_perera';

// Query 4
MERGE (p:Person {name: 'Mr. Premalal Brahmanage'}) ON CREATE SET p.id = 'mr_premalal_brahmanage';

// Query 5
MERGE (p:Person {name: 'Mr. Manjula Weerakkody'}) ON CREATE SET p.id = 'mr_manjula_weerakkody';

// Query 6
MERGE (p:Person {name: 'Mr. Nalinda Heenatigala'}) ON CREATE SET p.id = 'mr_nalinda_heenatigala';

// Query 7
MERGE (p:Person {name: 'Ms. Shehana Brahmanage'}) ON CREATE SET p.id = 'ms_shehana_brahmanage';

// Query 8
MERGE (p:Person {name: 'Mr. Anura Pathirage'}) ON CREATE SET p.id = 'mr_anura_pathirage';

// Query 9
MERGE (p:Person {name: 'Mr. Deepal Sooriyaarachchi'}) ON CREATE SET p.id = 'mr_deepal_sooriyaarachchi';

// Query 10
MERGE (p:Person {name: 'Mr. Sanjaya Bandara'}) ON CREATE SET p.id = 'mr_sanjaya_bandara';

// Query 11
MERGE (p:Person {name: 'Mr. Dhammika Kalapuge'}) ON CREATE SET p.id = 'mr_dhammika_kalapuge';

// Query 12
MERGE (p:Person {name: 'Mr. Mahinda Perera'}) ON CREATE SET p.id = 'mr_mahinda_perera';

// Query 13
MERGE (p:Person {name: 'Mr. Noel Joseph'}) ON CREATE SET p.id = 'mr_noel_joseph';

// Query 14
MERGE (p:Person {name: 'Snr. Prof. Sampath Amaratunge'}) ON CREATE SET p.id = 'snr_prof_sampath_amaratunge';

// Query 15
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 16
MERGE (p:Product {name: 'Apartment Sale'}) ON CREATE SET p.id = 'apartment_sale';

// Query 17
MERGE (p:Product {name: 'Land Sale'}) ON CREATE SET p.id = 'land_sale';

// Query 18
MERGE (m:Metric {name: 'Profit before taxation'}) ON CREATE SET m.id = 'profit_before_taxation', m.unit = 'Rs';

// Query 19
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 22
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Operating cost'}) ON CREATE SET m.id = 'operating_cost', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Employee Wages and Salary'}) ON CREATE SET m.id = 'employee_wages_and_salary', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Payments to Equity Holders'}) ON CREATE SET m.id = 'payments_to_equity_holders', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Payments to Government'}) ON CREATE SET m.id = 'payments_to_government', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Payments to Loan Capital Providers'}) ON CREATE SET m.id = 'payments_to_loan_capital_providers', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Retained Economic Value'}) ON CREATE SET m.id = 'retained_economic_value', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Tax Expense'}) ON CREATE SET m.id = 'tax_expense', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Stated Capital'}) ON CREATE SET m.id = 'stated_capital', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Retained Earnings'}) ON CREATE SET m.id = 'retained_earnings', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Total Borrowings'}) ON CREATE SET m.id = 'total_borrowings', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Debt/Equity Ratio'}) ON CREATE SET m.id = 'debt_equity_ratio', m.unit = '%';

// Query 37
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 38
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Dividend Payout'}) ON CREATE SET m.id = 'dividend_payout', m.unit = '%';

// Query 40
MERGE (m:Metric {name: 'Dividend Cover'}) ON CREATE SET m.id = 'dividend_cover', m.unit = 'Times';

// Query 41
MERGE (m:Metric {name: 'Market Value Per Share'}) ON CREATE SET m.id = 'market_value_per_share', m.unit = 'Rs';

// Query 42
MATCH (p:Company {name: 'Prime Lands (Private) Limited'}), (c:Company {name: 'Prime Lands Residencies PLC'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 80.0, r.as_of = date('2025-03-31');

// Query 43
MATCH (p:Person {name: 'Ms. Sandamini Perera'}), (c:Company {name: 'Prime Lands Residencies PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairperson', r.as_of = date('2025-03-31');

// Query 44
MATCH (p:Person {name: 'Ms. Sandamini Perera'}), (c:Company {name: 'Prime Lands Residencies PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 45
MATCH (p:Person {name: 'Mr. Premalal Brahmanage'}), (c:Company {name: 'Prime Lands Residencies PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 46
MATCH (p:Person {name: 'Mr. Manjula Weerakkody'}), (c:Company {name: 'Prime Lands Residencies PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2025-03-31');

// Query 47
MATCH (p:Person {name: 'Mr. Manjula Weerakkody'}), (c:Company {name: 'Prime Lands Residencies PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 48
MATCH (p:Person {name: 'Mr. Nalinda Heenatigala'}), (c:Company {name: 'Prime Lands Residencies PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 49
MATCH (p:Person {name: 'Mr. Nalinda Heenatigala'}), (c:Company {name: 'Prime Lands Residencies PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director Corporate Affairs', r.as_of = date('2025-03-31');

// Query 50
MATCH (p:Person {name: 'Ms. Shehana Brahmanage'}), (c:Company {name: 'Prime Lands Residencies PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 51
MATCH (p:Person {name: 'Mr. Anura Pathirage'}), (c:Company {name: 'Prime Lands Residencies PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-03-31');

// Query 52
MATCH (p:Person {name: 'Mr. Anura Pathirage'}), (c:Company {name: 'Prime Lands Residencies PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director Finance', r.as_of = date('2025-03-31');

// Query 53
MATCH (p:Person {name: 'Mr. Deepal Sooriyaarachchi'}), (c:Company {name: 'Prime Lands Residencies PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 54
MATCH (p:Person {name: 'Mr. Deepal Sooriyaarachchi'}), (c:Company {name: 'Prime Lands Residencies PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Director', r.as_of = date('2025-03-31');

// Query 55
MATCH (p:Person {name: 'Mr. Sanjaya Bandara'}), (c:Company {name: 'Prime Lands Residencies PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 56
MATCH (p:Person {name: 'Mr. Dhammika Kalapuge'}), (c:Company {name: 'Prime Lands Residencies PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 57
MATCH (p:Person {name: 'Mr. Mahinda Perera'}), (c:Company {name: 'Prime Lands Residencies PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 58
MATCH (p:Person {name: 'Mr. Noel Joseph'}), (c:Company {name: 'Prime Lands Residencies PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Independent Director', r.as_of = date('2025-03-31');

// Query 59
MATCH (p:Person {name: 'Snr. Prof. Sampath Amaratunge'}), (c:Company {name: 'Prime Lands Residencies PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Independent Director', r.as_of = date('2025-03-27');

// Query 60
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 61
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (p:Product {name: 'Apartment Sale'}) MERGE (c)-[:OFFERS]->(p);

// Query 62
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (p:Product {name: 'Land Sale'}) MERGE (c)-[:OFFERS]->(p);

// Query 63
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Profit before taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1803407765, r.year = 2025;

// Query 64
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Profit before taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1590593285, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Profit before taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3979316420, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Profit before taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1847921605, r.year = 2022;

// Query 67
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Profit before taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1277417267, r.year = 2021;

// Query 68
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1231078752, r.year = 2025;

// Query 69
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1129001701, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3351231763, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1682373241, r.year = 2022;

// Query 72
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 989255576, r.year = 2021;

// Query 73
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 22060000000.0, r.year = 2025;

// Query 74
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 15760000000.0, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6.0, r.year = 2025;

// Query 76
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7.0, r.year = 2024;

// Query 77
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19.0, r.year = 2023;

// Query 78
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9.0, r.year = 2022;

// Query 79
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.0, r.year = 2021;

// Query 80
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8259800877, r.year = 2025;

// Query 81
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8090379095, r.year = 2024;

// Query 82
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19798684442, r.year = 2023;

// Query 83
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9510383251, r.year = 2022;

// Query 84
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7732398134, r.year = 2021;

// Query 85
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Operating cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6513392155, r.year = 2025;

// Query 86
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Operating cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6251745619, r.year = 2024;

// Query 87
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Employee Wages and Salary'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 281354059, r.year = 2025;

// Query 88
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Employee Wages and Salary'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 192783158, r.year = 2024;

// Query 89
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Payments to Equity Holders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 562500000, r.year = 2025;

// Query 90
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Payments to Equity Holders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 562500000, r.year = 2024;

// Query 91
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Payments to Government'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 572329013, r.year = 2025;

// Query 92
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Payments to Government'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 447743031, r.year = 2024;

// Query 93
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Payments to Loan Capital Providers'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 120982615, r.year = 2025;

// Query 94
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Payments to Loan Capital Providers'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 604954539, r.year = 2024;

// Query 95
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Retained Economic Value'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 209243035, r.year = 2025;

// Query 96
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Retained Economic Value'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 30652748, r.year = 2024;

// Query 97
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2423899398, r.year = 2025;

// Query 98
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2224979157, r.year = 2024;

// Query 99
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5420995606, r.year = 2023;

// Query 100
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2422102250, r.year = 2022;

// Query 101
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1893518991, r.year = 2021;

// Query 102
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1591790728, r.year = 2025;

// Query 103
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1735246109, r.year = 2024;

// Query 104
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4759365480, r.year = 2023;

// Query 105
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1936561052, r.year = 2022;

// Query 106
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1585039550, r.year = 2021;

// Query 107
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -572329013, r.year = 2025;

// Query 108
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -461591584, r.year = 2024;

// Query 109
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -628084657, r.year = 2023;

// Query 110
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -165548364, r.year = 2022;

// Query 111
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -288161691, r.year = 2021;

// Query 112
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3450000000, r.year = 2025;

// Query 113
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3450000000, r.year = 2024;

// Query 114
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6491472687, r.year = 2025;

// Query 115
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6124741476, r.year = 2024;

// Query 116
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9941472687, r.year = 2025;

// Query 117
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9574741476, r.year = 2024;

// Query 118
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Total Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 807378323, r.year = 2025;

// Query 119
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Total Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 892735010, r.year = 2024;

// Query 120
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Debt/Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.0, r.year = 2025;

// Query 121
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Debt/Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9.0, r.year = 2024;

// Query 122
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12.0, r.year = 2025;

// Query 123
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12.0, r.year = 2024;

// Query 124
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 36.0, r.year = 2023;

// Query 125
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 25.0, r.year = 2022;

// Query 126
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 29.0, r.year = 2021;

// Query 127
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.6, r.year = 2025;

// Query 128
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.6, r.year = 2024;

// Query 129
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.0, r.year = 2023;

// Query 130
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.7, r.year = 2022;

// Query 131
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.4, r.year = 2021;

// Query 132
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Dividend Payout'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 46.0, r.year = 2025;

// Query 133
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Dividend Payout'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 50.0, r.year = 2024;

// Query 134
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Dividend Payout'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 28.0, r.year = 2023;

// Query 135
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Dividend Payout'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 39.0, r.year = 2022;

// Query 136
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Dividend Payout'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 38.0, r.year = 2021;

// Query 137
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Dividend Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.18, r.year = 2025;

// Query 138
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Dividend Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.01, r.year = 2024;

// Query 139
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Dividend Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.57, r.year = 2023;

// Query 140
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Dividend Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.66, r.year = 2022;

// Query 141
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Dividend Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.3, r.year = 2021;

// Query 142
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Market Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11.9, r.year = 2025;

// Query 143
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Market Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.4, r.year = 2024;

// Query 144
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Market Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.0, r.year = 2023;

// Query 145
MATCH (c:Company {name: 'Prime Lands Residencies PLC'}), (m:Metric {name: 'Market Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6.9, r.year = 2022;

// Total queries: 145
// Generated on: 2025-10-02T18:09:13.893673
