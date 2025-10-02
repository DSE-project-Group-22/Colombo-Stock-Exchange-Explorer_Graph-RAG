// Query 1
MERGE (c:Company {name: 'Paragon Ceylon PLC'}) ON CREATE SET c.id = 'paragon_ceylon_plc', c.founded_on = date('1958-06-29'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 2
MERGE (c:Company {name: 'MGI SL Assurance Partners'}) ON CREATE SET c.id = 'mgi_sl_assurance_partners';

// Query 3
MERGE (c:Company {name: 'CT Holdings PLC'}) ON CREATE SET c.id = 'ct_holdings_plc';

// Query 4
MERGE (c:Company {name: 'Cyril Gardiner (Private) Limited'}) ON CREATE SET c.id = 'cyril_gardiner_private_limited';

// Query 5
MERGE (p:Person {name: 'L. I. Ratnasabapathy'}) ON CREATE SET p.id = 'l_i_ratnasabapathy';

// Query 6
MERGE (p:Person {name: 'A. M. De Alwis'}) ON CREATE SET p.id = 'a_m_de_alwis';

// Query 7
MERGE (p:Person {name: 'J. B. M. Ponrajah'}) ON CREATE SET p.id = 'j_b_m_ponrajah';

// Query 8
MERGE (p:Person {name: 'P. S. R. Casie Chitty'}) ON CREATE SET p.id = 'p_s_r_casie_chitty';

// Query 9
MERGE (p:Person {name: 'M. M. Marzook'}) ON CREATE SET p.id = 'm_m_marzook';

// Query 10
MERGE (p:Person {name: 'M. R. Y. Riffai'}) ON CREATE SET p.id = 'm_r_y_riffai';

// Query 11
MERGE (p:Person {name: 'D. T. De Alwis'}) ON CREATE SET p.id = 'd_t_de_alwis';

// Query 12
MERGE (p:Person {name: 'M. S. A. Kariapper'}) ON CREATE SET p.id = 'm_s_a_kariapper';

// Query 13
MERGE (p:Person {name: 'John Tilak Ratnanather'}) ON CREATE SET p.id = 'john_tilak_ratnanather';

// Query 14
MERGE (p:Person {name: 'Barbera Antoinette Jeyamany Ratnasabapathy'}) ON CREATE SET p.id = 'barbera_antoinette_jeyamany_ratnasabapathy';

// Query 15
MERGE (p:Person {name: 'Anthony Jehan Chanath Ratnanather'}) ON CREATE SET p.id = 'anthony_jehan_chanath_ratnanather';

// Query 16
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 17
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 18
MERGE (p:Product {name: 'Security Register Stationary'}) ON CREATE SET p.id = 'security_register_stationary';

// Query 19
MERGE (p:Product {name: 'Computer Continuous Stationary'}) ON CREATE SET p.id = 'computer_continuous_stationary';

// Query 20
MERGE (p:Product {name: 'Premises Rental'}) ON CREATE SET p.id = 'premises_rental';

// Query 21
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Results from Operations'}) ON CREATE SET m.id = 'results_from_operations', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Net Finance Income'}) ON CREATE SET m.id = 'net_finance_income', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Tax Expenses'}) ON CREATE SET m.id = 'tax_expenses', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Stated Capital'}) ON CREATE SET m.id = 'stated_capital', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Reserves'}) ON CREATE SET m.id = 'reserves', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Trade Payables'}) ON CREATE SET m.id = 'trade_payables', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Current Assets'}) ON CREATE SET m.id = 'current_assets', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Current Liabilities'}) ON CREATE SET m.id = 'current_liabilities', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Net Current Assets'}) ON CREATE SET m.id = 'net_current_assets', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Non-Current Liabilities'}) ON CREATE SET m.id = 'non_current_liabilities', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Non-Current Assets'}) ON CREATE SET m.id = 'non_current_assets', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Total Net Assets'}) ON CREATE SET m.id = 'total_net_assets', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Growth in Annual Turnover'}) ON CREATE SET m.id = 'growth_in_annual_turnover', m.unit = '%';

// Query 38
MERGE (m:Metric {name: 'Earnings per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Dividend per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Market Price per Share'}) ON CREATE SET m.id = 'market_price_per_share', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Net Asset Value per Share'}) ON CREATE SET m.id = 'net_asset_value_per_share', m.unit = 'Rs';

// Query 42
MATCH (p:Person {name: 'L. I. Ratnasabapathy'}), (c:Company {name: 'Paragon Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/Managing Director', r.as_of = date('2024-03-31');

// Query 43
MATCH (p:Person {name: 'L. I. Ratnasabapathy'}), (c:Company {name: 'Paragon Ceylon PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Executive', r.as_of = date('2024-03-31');

// Query 44
MATCH (p:Person {name: 'A. M. De Alwis'}), (c:Company {name: 'Paragon Ceylon PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Executive', r.as_of = date('2024-03-31');

// Query 45
MATCH (p:Person {name: 'J. B. M. Ponrajah'}), (c:Company {name: 'Paragon Ceylon PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Executive', r.as_of = date('2024-03-31');

// Query 46
MATCH (p:Person {name: 'P. S. R. Casie Chitty'}), (c:Company {name: 'Paragon Ceylon PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 47
MATCH (p:Person {name: 'M. M. Marzook'}), (c:Company {name: 'Paragon Ceylon PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 48
MATCH (p:Person {name: 'M. R. Y. Riffai'}), (c:Company {name: 'Paragon Ceylon PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2023-12-01');

// Query 49
MATCH (p:Person {name: 'M. R. Y. Riffai'}), (c:Company {name: 'Paragon Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Director', r.as_of = date('2023-12-01');

// Query 50
MATCH (p:Person {name: 'D. T. De Alwis'}), (c:Company {name: 'Paragon Ceylon PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2023-12-01');

// Query 51
MATCH (p:Person {name: 'M. S. A. Kariapper'}), (c:Company {name: 'Paragon Ceylon PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Head of Finance', r.as_of = date('2024-08-29');

// Query 52
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (a:Company {name: 'MGI SL Assurance Partners'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 54
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 55
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (p:Product {name: 'Security Register Stationary'}) MERGE (c)-[:OFFERS]->(p);

// Query 56
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (p:Product {name: 'Computer Continuous Stationary'}) MERGE (c)-[:OFFERS]->(p);

// Query 57
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (p:Product {name: 'Premises Rental'}) MERGE (c)-[:OFFERS]->(p);

// Query 58
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10520042.0, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7404970.0, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4540405.0, r.year = 2022;

// Query 61
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4372400.0, r.year = 2021;

// Query 62
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4666871.0, r.year = 2020;

// Query 63
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Results from Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2356143.0, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Results from Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 480673.0, r.year = 2023;

// Query 65
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Results from Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1070508.0, r.year = 2022;

// Query 66
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Results from Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 867401.0, r.year = 2021;

// Query 67
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Results from Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 460509.0, r.year = 2020;

// Query 68
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 46267.0, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 57810.0, r.year = 2023;

// Query 70
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -27191.0, r.year = 2022;

// Query 71
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 32532.0, r.year = 2021;

// Query 72
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 42502.0, r.year = 2020;

// Query 73
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2408379.0, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 497610.0, r.year = 2023;

// Query 75
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1016465.0, r.year = 2022;

// Query 76
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 910035.0, r.year = 2021;

// Query 77
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 458449.0, r.year = 2020;

// Query 78
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Tax Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2024;

// Query 79
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Tax Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2023;

// Query 80
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Tax Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -221511.0, r.year = 2022;

// Query 81
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Tax Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -7292.0, r.year = 2021;

// Query 82
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Tax Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 26839.0, r.year = 2020;

// Query 83
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2408379.0, r.year = 2024;

// Query 84
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 497610.0, r.year = 2023;

// Query 85
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 794954.0, r.year = 2022;

// Query 86
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 902743.0, r.year = 2021;

// Query 87
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 485288.0, r.year = 2020;

// Query 88
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1000280.0, r.year = 2024;

// Query 89
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1000280.0, r.year = 2023;

// Query 90
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1000280.0, r.year = 2022;

// Query 91
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1000280.0, r.year = 2021;

// Query 92
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1000280.0, r.year = 2020;

// Query 93
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3317540.0, r.year = 2024;

// Query 94
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 936725.0, r.year = 2023;

// Query 95
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 430350.0, r.year = 2022;

// Query 96
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -356512.0, r.year = 2021;

// Query 97
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1412990.0, r.year = 2020;

// Query 98
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4317820.0, r.year = 2024;

// Query 99
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1937005.0, r.year = 2023;

// Query 100
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1430650.0, r.year = 2022;

// Query 101
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 643768.0, r.year = 2021;

// Query 102
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -412710.0, r.year = 2020;

// Query 103
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Trade Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1732801.0, r.year = 2024;

// Query 104
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Trade Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2642276.0, r.year = 2023;

// Query 105
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Trade Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3551617.0, r.year = 2022;

// Query 106
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Trade Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1277008.0, r.year = 2021;

// Query 107
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Trade Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2688410.0, r.year = 2020;

// Query 108
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5093093.0, r.year = 2024;

// Query 109
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4621706.0, r.year = 2023;

// Query 110
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6295905.0, r.year = 2022;

// Query 111
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3949279.0, r.year = 2021;

// Query 112
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6390949.0, r.year = 2020;

// Query 113
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1732801.0, r.year = 2024;

// Query 114
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3663825.0, r.year = 2023;

// Query 115
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5876505.0, r.year = 2022;

// Query 116
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3650233.0, r.year = 2021;

// Query 117
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7190053.0, r.year = 2020;

// Query 118
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Net Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3360292.0, r.year = 2024;

// Query 119
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Net Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 957881.0, r.year = 2023;

// Query 120
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Net Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 419400.0, r.year = 2022;

// Query 121
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Net Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 299046.0, r.year = 2021;

// Query 122
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Net Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -799104.0, r.year = 2020;

// Query 123
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Non-Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2024;

// Query 124
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Non-Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2023;

// Query 125
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Non-Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2022;

// Query 126
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Non-Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 922963.0, r.year = 2021;

// Query 127
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Non-Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 840704.0, r.year = 2020;

// Query 128
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Non-Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 957529.0, r.year = 2024;

// Query 129
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Non-Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 979124.0, r.year = 2023;

// Query 130
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Non-Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1011250.0, r.year = 2022;

// Query 131
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Non-Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1267685.0, r.year = 2021;

// Query 132
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Non-Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1227098.0, r.year = 2020;

// Query 133
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Total Net Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4317820.0, r.year = 2024;

// Query 134
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Total Net Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1937005.0, r.year = 2023;

// Query 135
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Total Net Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1430650.0, r.year = 2022;

// Query 136
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Total Net Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 643768.0, r.year = 2021;

// Query 137
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Total Net Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -412710.0, r.year = 2020;

// Query 138
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Growth in Annual Turnover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 42.06, r.year = 2024;

// Query 139
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Growth in Annual Turnover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 63.09, r.year = 2023;

// Query 140
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Growth in Annual Turnover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.84, r.year = 2022;

// Query 141
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Growth in Annual Turnover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6.30, r.year = 2021;

// Query 142
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Growth in Annual Turnover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.84, r.year = 2020;

// Query 143
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.41, r.year = 2024;

// Query 144
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.50, r.year = 2023;

// Query 145
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.79, r.year = 2022;

// Query 146
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.90, r.year = 2021;

// Query 147
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.49, r.year = 2020;

// Query 148
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Dividend per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.00, r.year = 2024;

// Query 149
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Dividend per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.00, r.year = 2023;

// Query 150
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Dividend per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.00, r.year = 2022;

// Query 151
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Dividend per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.00, r.year = 2021;

// Query 152
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Dividend per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.00, r.year = 2020;

// Query 153
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Market Price per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 63.00, r.year = 2024;

// Query 154
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Market Price per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.00, r.year = 2023;

// Query 155
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Market Price per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.00, r.year = 2022;

// Query 156
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Market Price per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 42.00, r.year = 2021;

// Query 157
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Market Price per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.00, r.year = 2020;

// Query 158
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Net Asset Value per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.31, r.year = 2024;

// Query 159
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Net Asset Value per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.93, r.year = 2023;

// Query 160
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Net Asset Value per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.43, r.year = 2022;

// Query 161
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Net Asset Value per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.64, r.year = 2021;

// Query 162
MATCH (c:Company {name: 'Paragon Ceylon PLC'}), (m:Metric {name: 'Net Asset Value per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.41, r.year = 2020;

// Query 163
MATCH (owner:Company {name: 'CT Holdings PLC'}), (company:Company {name: 'Paragon Ceylon PLC'}) MERGE (owner)-[r:OWNS_SHARES]->(company) ON CREATE SET r.count = 213060, r.as_of = date('2024-03-31');

// Query 164
MATCH (owner:Person {name: 'John Tilak Ratnanather'}), (company:Company {name: 'Paragon Ceylon PLC'}) MERGE (owner)-[r:OWNS_SHARES]->(company) ON CREATE SET r.count = 95140, r.as_of = date('2024-03-31');

// Query 165
MATCH (owner:Person {name: 'Barbera Antoinette Jeyamany Ratnasabapathy'}), (company:Company {name: 'Paragon Ceylon PLC'}) MERGE (owner)-[r:OWNS_SHARES]->(company) ON CREATE SET r.count = 48860, r.as_of = date('2024-03-31');

// Query 166
MATCH (owner:Person {name: 'Anthony Jehan Chanath Ratnanather'}), (company:Company {name: 'Paragon Ceylon PLC'}) MERGE (owner)-[r:OWNS_SHARES]->(company) ON CREATE SET r.count = 48710, r.as_of = date('2024-03-31');

// Query 167
MATCH (owner:Company {name: 'Cyril Gardiner (Private) Limited'}), (company:Company {name: 'Paragon Ceylon PLC'}) MERGE (owner)-[r:OWNS_SHARES]->(company) ON CREATE SET r.count = 47520, r.as_of = date('2024-03-31');

// Total queries: 167
// Generated on: 2025-10-02T18:11:33.107812
