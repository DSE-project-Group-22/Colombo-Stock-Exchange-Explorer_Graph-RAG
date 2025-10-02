// Query 1
MERGE (c:Company {name: 'Hayleys Leisure PLC'}) ON CREATE SET c.id = 'hayleys_leisure_plc', c.listed_on = 'Colombo Stock Exchange of Sri Lanka', c.region = 'Sri Lanka';

// Query 2
MERGE (p:Person {name: 'A. M. Pandithage'}) ON CREATE SET p.id = 'a_m_pandithage';

// Query 3
MERGE (p:Person {name: 'R. J. Karunarajah'}) ON CREATE SET p.id = 'r_j_karunarajah';

// Query 4
MERGE (p:Person {name: 'S. C. Ganegoda'}) ON CREATE SET p.id = 's_c_ganegoda';

// Query 5
MERGE (p:Person {name: 'R. N. Ponnambalam'}) ON CREATE SET p.id = 'r_n_ponnambalam';

// Query 6
MERGE (p:Person {name: 'W. D. De Costa'}) ON CREATE SET p.id = 'w_d_de_costa';

// Query 7
MERGE (p:Person {name: 'K. A. D. B. Perera'}) ON CREATE SET p.id = 'k_a_d_b_perera';

// Query 8
MERGE (p:Person {name: 'S. J. Wijesinghe'}) ON CREATE SET p.id = 's_j_wijesinghe';

// Query 9
MERGE (p:Person {name: 'S. H. Amarasekera'}) ON CREATE SET p.id = 's_h_amarasekera';

// Query 10
MERGE (p:Person {name: 'D. T. R. De Silva'}) ON CREATE SET p.id = 'd_t_r_de_silva';

// Query 11
MERGE (p:Person {name: 'A. I. Wanigasekera'}) ON CREATE SET p.id = 'a_i_wanigasekera';

// Query 12
MERGE (p:Person {name: 'A. A. K. Amarasinghe'}) ON CREATE SET p.id = 'a_a_k_amarasinghe';

// Query 13
MERGE (p:Person {name: 'H.C. Cabral'}) ON CREATE SET p.id = 'h_c_cabral';

// Query 14
MERGE (p:Person {name: 'M.Y.A. Perera'}) ON CREATE SET p.id = 'm_y_a_perera';

// Query 15
MERGE (p:Person {name: 'K.D.G. Gunaratne'}) ON CREATE SET p.id = 'k_d_g_gunaratne';

// Query 16
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 17
MERGE (prod:Product {name: 'Hotel Services'}) ON CREATE SET prod.id = 'hotel_services';

// Query 18
MERGE (prod:Product {name: 'Hospitality Management Services'}) ON CREATE SET prod.id = 'hospitality_management_services';

// Query 19
MERGE (prod:Product {name: 'Food and Beverage Services'}) ON CREATE SET prod.id = 'food_and_beverage_services';

// Query 20
MERGE (prod:Product {name: 'Recreational Services'}) ON CREATE SET prod.id = 'recreational_services';

// Query 21
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Earnings Before Interest, Tax, Depreciation and Amortisation'}) ON CREATE SET m.id = 'earnings_before_interest_tax_depreciation_and_amortisation', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Results from Operating Activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Profit Attributable to Owners of Parent'}) ON CREATE SET m.id = 'profit_attributable_to_owners_of_parent', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Gross Profit Margin'}) ON CREATE SET m.id = 'gross_profit_margin', m.unit = '%';

// Query 28
MERGE (m:Metric {name: 'Operating Profit Margin'}) ON CREATE SET m.id = 'operating_profit_margin', m.unit = '%';

// Query 29
MERGE (m:Metric {name: 'Net Profit Margin'}) ON CREATE SET m.id = 'net_profit_margin', m.unit = '%';

// Query 30
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 31
MERGE (m:Metric {name: 'Return on Capital Employed'}) ON CREATE SET m.id = 'return_on_capital_employed', m.unit = '%';

// Query 32
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Total Debts'}) ON CREATE SET m.id = 'total_debts', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Equity Attributable to Equity Holders of Parent'}) ON CREATE SET m.id = 'equity_attributable_to_equity_holders_of_parent', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Earnings Per Share (Basic)'}) ON CREATE SET m.id = 'earnings_per_share_basic', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Net Assets Value Per Share'}) ON CREATE SET m.id = 'net_assets_value_per_share', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Market Price Per Share'}) ON CREATE SET m.id = 'market_price_per_share', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Net Cash From Operating Activities'}) ON CREATE SET m.id = 'net_cash_from_operating_activities', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Net Cash From Investment Activities'}) ON CREATE SET m.id = 'net_cash_from_investment_activities', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Net Cash From Financing Activities'}) ON CREATE SET m.id = 'net_cash_from_financing_activities', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Net Increase in Cash and Cash Equivalents'}) ON CREATE SET m.id = 'net_increase_in_cash_and_cash_equivalents', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Stated Capital'}) ON CREATE SET m.id = 'stated_capital', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Gearing Ratio'}) ON CREATE SET m.id = 'gearing_ratio', m.unit = '%';

// Query 45
MERGE (m:Metric {name: 'Capital Expenditure'}) ON CREATE SET m.id = 'capital_expenditure', m.unit = 'Rs';

// Query 46
MERGE (aud:Company {name: 'Ernst & Young'}) ON CREATE SET aud.id = 'ernst_and_young';

// Query 47
MATCH (p:Person {name: 'A. M. Pandithage'}), (c:Company {name: 'Hayleys Leisure PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Chairman', r.as_of = date('2024-03-31');

// Query 48
MATCH (p:Person {name: 'R. J. Karunarajah'}), (c:Company {name: 'Hayleys Leisure PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 49
MATCH (p:Person {name: 'S. C. Ganegoda'}), (c:Company {name: 'Hayleys Leisure PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 50
MATCH (p:Person {name: 'R. N. Ponnambalam'}), (c:Company {name: 'Hayleys Leisure PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 51
MATCH (p:Person {name: 'W. D. De Costa'}), (c:Company {name: 'Hayleys Leisure PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 52
MATCH (p:Person {name: 'K. A. D. B. Perera'}), (c:Company {name: 'Hayleys Leisure PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 53
MATCH (p:Person {name: 'S. J. Wijesinghe'}), (c:Company {name: 'Hayleys Leisure PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2023-07-26');

// Query 54
MATCH (p:Person {name: 'S. H. Amarasekera'}), (c:Company {name: 'Hayleys Leisure PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-12-31');

// Query 55
MATCH (p:Person {name: 'D. T. R. De Silva'}), (c:Company {name: 'Hayleys Leisure PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 56
MATCH (p:Person {name: 'A. I. Wanigasekera'}), (c:Company {name: 'Hayleys Leisure PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-03');

// Query 57
MATCH (p:Person {name: 'A. A. K. Amarasinghe'}), (c:Company {name: 'Hayleys Leisure PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-03');

// Query 58
MATCH (p:Person {name: 'H.C. Cabral'}), (c:Company {name: 'Hayleys Leisure PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 59
MATCH (p:Person {name: 'M.Y.A. Perera'}), (c:Company {name: 'Hayleys Leisure PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 60
MATCH (p:Person {name: 'K.D.G. Gunaratne'}), (c:Company {name: 'Hayleys Leisure PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-11-01');

// Query 61
MATCH (p:Person {name: 'S. H. Amarasekera'}), (c:Company {name: 'Hayleys Leisure PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 46912, r.as_of = date('2024-03-31');

// Query 62
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 63
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (prod:Product {name: 'Hotel Services'}) MERGE (c)-[:OFFERS]->(prod);

// Query 64
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (prod:Product {name: 'Hospitality Management Services'}) MERGE (c)-[:OFFERS]->(prod);

// Query 65
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (prod:Product {name: 'Food and Beverage Services'}) MERGE (c)-[:OFFERS]->(prod);

// Query 66
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (prod:Product {name: 'Recreational Services'}) MERGE (c)-[:OFFERS]->(prod);

// Query 67
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2877808000, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1531664000, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Earnings Before Interest, Tax, Depreciation and Amortisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 518139000, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Earnings Before Interest, Tax, Depreciation and Amortisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 55864000, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 144073000, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -444684000, r.year = 2023;

// Query 73
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -154507000, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -892029000, r.year = 2023;

// Query 75
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -145986000, r.year = 2024;

// Query 76
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -824431000, r.year = 2023;

// Query 77
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Profit Attributable to Owners of Parent'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -112626000, r.year = 2024;

// Query 78
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Profit Attributable to Owners of Parent'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -741165000, r.year = 2023;

// Query 79
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Gross Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 61.13, r.year = 2024;

// Query 80
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Gross Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 52.98, r.year = 2023;

// Query 81
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Operating Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5.01, r.year = 2024;

// Query 82
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Operating Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -29.03, r.year = 2023;

// Query 83
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5.07, r.year = 2024;

// Query 84
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -53.83, r.year = 2023;

// Query 85
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2.51, r.year = 2024;

// Query 86
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -15.24, r.year = 2023;

// Query 87
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6.16, r.year = 2024;

// Query 88
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -9.20, r.year = 2023;

// Query 89
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5815109000, r.year = 2024;

// Query 90
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5408978000, r.year = 2023;

// Query 91
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Total Debts'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2575416000, r.year = 2024;

// Query 92
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Total Debts'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2790881000, r.year = 2023;

// Query 93
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Equity Attributable to Equity Holders of Parent'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1344453000, r.year = 2024;

// Query 94
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Equity Attributable to Equity Holders of Parent'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1370097000, r.year = 2023;

// Query 95
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Earnings Per Share (Basic)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1.04, r.year = 2024;

// Query 96
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Earnings Per Share (Basic)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6.86, r.year = 2023;

// Query 97
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Net Assets Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12.45, r.year = 2024;

// Query 98
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Net Assets Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12.69, r.year = 2023;

// Query 99
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 20.00, r.year = 2024;

// Query 100
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 24.00, r.year = 2023;

// Query 101
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Net Cash From Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 323798000, r.year = 2024;

// Query 102
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Net Cash From Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -173504000, r.year = 2023;

// Query 103
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Net Cash From Investment Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -132471000, r.year = 2024;

// Query 104
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Net Cash From Investment Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -65858000, r.year = 2023;

// Query 105
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Net Cash From Financing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -193261000, r.year = 2024;

// Query 106
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Net Cash From Financing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 140954000, r.year = 2023;

// Query 107
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Net Increase in Cash and Cash Equivalents'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1934000, r.year = 2024;

// Query 108
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Net Increase in Cash and Cash Equivalents'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -98408000, r.year = 2023;

// Query 109
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 909370708, r.year = 2024;

// Query 110
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 909370708, r.year = 2023;

// Query 111
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1174674015, r.year = 2024;

// Query 112
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1233976742, r.year = 2023;

// Query 113
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 77.60, r.year = 2024;

// Query 114
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 74.75, r.year = 2023;

// Query 115
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Capital Expenditure'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 142000000, r.year = 2024;

// Query 116
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (m:Metric {name: 'Capital Expenditure'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 98000000, r.year = 2023;

// Query 117
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (aud:Company {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(aud) ON CREATE SET r.year = 2024;

// Query 118
MATCH (c:Company {name: 'Hayleys Leisure PLC'}), (aud:Company {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(aud) ON CREATE SET r.year = 2023;

// Total queries: 118
// Generated on: 2025-10-02T19:01:20.009980
