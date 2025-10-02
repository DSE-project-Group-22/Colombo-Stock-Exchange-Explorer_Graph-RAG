// Query 1
MERGE (c:Company {name: 'Tangerine Beach Hotels PLC'}) ON CREATE SET c.id = 'tangerine_beach_hotels_plc', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 2
MERGE (p:Person {name: 'A. M. Ondaatjie'}) ON CREATE SET p.id = 'a_m_ondaatjie';

// Query 3
MERGE (p:Person {name: 'C. A. Ondaatjie'}) ON CREATE SET p.id = 'c_a_ondaatjie';

// Query 4
MERGE (p:Person {name: 'G. G. Ondaatjie'}) ON CREATE SET p.id = 'g_g_ondaatjie';

// Query 5
MERGE (p:Person {name: 'T. J. Ondaatjie'}) ON CREATE SET p.id = 't_j_ondaatjie';

// Query 6
MERGE (p:Person {name: 'N. H. V. Perera'}) ON CREATE SET p.id = 'n_h_v_perera';

// Query 7
MERGE (p:Person {name: 'L. H. Jayasinghe'}) ON CREATE SET p.id = 'l_h_jayasinghe';

// Query 8
MERGE (p:Person {name: 'P. S. R. Casie Chitty'}) ON CREATE SET p.id = 'p_s_r_casie_chitty';

// Query 9
MERGE (p:Person {name: 'M. I. Shahabdeen'}) ON CREATE SET p.id = 'm_i_shahabdeen';

// Query 10
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 11
MERGE (prod:Product {name: 'Room Sales'}) ON CREATE SET prod.id = 'room_sales';

// Query 12
MERGE (prod:Product {name: 'Food and Beverage Sales'}) ON CREATE SET prod.id = 'food_and_beverage_sales';

// Query 13
MERGE (prod:Product {name: 'Other Hotel Related Revenue'}) ON CREATE SET prod.id = 'other_hotel_related_revenue';

// Query 14
MERGE (m:Metric {name: 'Gross Revenue'}) ON CREATE SET m.id = 'gross_revenue', m.unit = 'Rs';

// Query 15
MERGE (m:Metric {name: 'Cost of Sales'}) ON CREATE SET m.id = 'cost_of_sales', m.unit = 'Rs';

// Query 16
MERGE (m:Metric {name: 'Operating Profit before Interest & Tax'}) ON CREATE SET m.id = 'operating_profit_before_interest_and_tax', m.unit = 'Rs';

// Query 17
MERGE (m:Metric {name: 'Interest Expense'}) ON CREATE SET m.id = 'interest_expense', m.unit = 'Rs';

// Query 18
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 19
MERGE (m:Metric {name: 'Income Tax Expense'}) ON CREATE SET m.id = 'income_tax_expense', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Profit Attributable to Shareholders'}) ON CREATE SET m.id = 'profit_attributable_to_shareholders', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Shareholders Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Number of Shares in Issue'}) ON CREATE SET m.id = 'number_of_shares_in_issue', m.unit = 'Count';

// Query 25
MERGE (m:Metric {name: 'Cash & Cash Equivalent'}) ON CREATE SET m.id = 'cash_and_cash_equivalent', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Return on Shareholders Funds'}) ON CREATE SET m.id = 'return_on_shareholders_funds', m.unit = '%';

// Query 27
MERGE (m:Metric {name: 'Return on Total Assets'}) ON CREATE SET m.id = 'return_on_total_assets', m.unit = '%';

// Query 28
MERGE (m:Metric {name: 'Interest Cover'}) ON CREATE SET m.id = 'interest_cover', m.unit = 'Times';

// Query 29
MERGE (m:Metric {name: 'Equity / Assets'}) ON CREATE SET m.id = 'equity_assets', m.unit = '%';

// Query 30
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 31
MERGE (m:Metric {name: 'Gearing Ratio'}) ON CREATE SET m.id = 'gearing_ratio', m.unit = 'Times';

// Query 32
MERGE (m:Metric {name: 'Earnings per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Net Asset per Share'}) ON CREATE SET m.id = 'net_asset_per_share', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Market Value per Share'}) ON CREATE SET m.id = 'market_value_per_share', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Market Capitalisation'}) ON CREATE SET m.id = 'market_capitalisation', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Price Earnings Ratio'}) ON CREATE SET m.id = 'price_earnings_ratio', m.unit = 'Times';

// Query 37
MERGE (m:Metric {name: 'Stated Capital'}) ON CREATE SET m.id = 'stated_capital', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Revaluation Reserve'}) ON CREATE SET m.id = 'revaluation_reserve', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Fair Value Reserve'}) ON CREATE SET m.id = 'fair_value_reserve', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Retained Earnings'}) ON CREATE SET m.id = 'retained_earnings', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Deferred Tax Liabilities'}) ON CREATE SET m.id = 'deferred_tax_liabilities', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Post Employment Benefit Liability'}) ON CREATE SET m.id = 'post_employment_benefit_liability', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Lease Liability'}) ON CREATE SET m.id = 'lease_liability', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Trade and Other Payables'}) ON CREATE SET m.id = 'trade_and_other_payables', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Amounts Due to Related Parties'}) ON CREATE SET m.id = 'amounts_due_to_related_parties', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Income Tax Payable'}) ON CREATE SET m.id = 'income_tax_payable', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Current Portion of Lease Liability'}) ON CREATE SET m.id = 'current_portion_of_lease_liability', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Current Portion of Interest Bearing Loans and Borrowings'}) ON CREATE SET m.id = 'current_portion_of_interest_bearing_loans_and_borrowings', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Dividends per Share'}) ON CREATE SET m.id = 'dividends_per_share', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Dividend Cover'}) ON CREATE SET m.id = 'dividend_cover', m.unit = 'Times';

// Query 52
MERGE (m:Metric {name: 'Dividend Yield'}) ON CREATE SET m.id = 'dividend_yield', m.unit = '%';

// Query 53
MERGE (m:Metric {name: 'Dividend Pay-out Ratio'}) ON CREATE SET m.id = 'dividend_pay_out_ratio', m.unit = 'Ratio';

// Query 54
MATCH (p:Person {name: 'A. M. Ondaatjie'}), (c:Company {name: 'Tangerine Beach Hotels PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairperson', r.as_of = date('2024-08-20');

// Query 55
MATCH (p:Person {name: 'A. M. Ondaatjie'}), (c:Company {name: 'Tangerine Beach Hotels PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 569982, r.as_of = date('2024-03-31');

// Query 56
MATCH (p:Person {name: 'A. M. Ondaatjie'}), (c:Company {name: 'Tangerine Beach Hotels PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 569982, r.as_of = date('2023-03-31');

// Query 57
MATCH (p:Person {name: 'C. A. Ondaatjie'}), (c:Company {name: 'Tangerine Beach Hotels PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2024-03-31');

// Query 58
MATCH (p:Person {name: 'C. A. Ondaatjie'}), (c:Company {name: 'Tangerine Beach Hotels PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 259854, r.as_of = date('2024-03-31');

// Query 59
MATCH (p:Person {name: 'C. A. Ondaatjie'}), (c:Company {name: 'Tangerine Beach Hotels PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 259854, r.as_of = date('2023-03-31');

// Query 60
MATCH (p:Person {name: 'G. G. Ondaatjie'}), (c:Company {name: 'Tangerine Beach Hotels PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2024-03-31');

// Query 61
MATCH (p:Person {name: 'G. G. Ondaatjie'}), (c:Company {name: 'Tangerine Beach Hotels PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 538028, r.as_of = date('2024-03-31');

// Query 62
MATCH (p:Person {name: 'G. G. Ondaatjie'}), (c:Company {name: 'Tangerine Beach Hotels PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 538028, r.as_of = date('2023-03-31');

// Query 63
MATCH (p:Person {name: 'T. J. Ondaatjie'}), (c:Company {name: 'Tangerine Beach Hotels PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2024-03-31');

// Query 64
MATCH (p:Person {name: 'T. J. Ondaatjie'}), (c:Company {name: 'Tangerine Beach Hotels PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 582220, r.as_of = date('2024-03-31');

// Query 65
MATCH (p:Person {name: 'T. J. Ondaatjie'}), (c:Company {name: 'Tangerine Beach Hotels PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 582220, r.as_of = date('2023-03-31');

// Query 66
MATCH (p:Person {name: 'N. H. V. Perera'}), (c:Company {name: 'Tangerine Beach Hotels PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 67
MATCH (p:Person {name: 'N. H. V. Perera'}), (c:Company {name: 'Tangerine Beach Hotels PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman of Remuneration Committee', r.as_of = date('2024-02-12');

// Query 68
MATCH (p:Person {name: 'N. H. V. Perera'}), (c:Company {name: 'Tangerine Beach Hotels PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 202236, r.as_of = date('2024-03-31');

// Query 69
MATCH (p:Person {name: 'N. H. V. Perera'}), (c:Company {name: 'Tangerine Beach Hotels PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 202236, r.as_of = date('2023-03-31');

// Query 70
MATCH (p:Person {name: 'L. H. Jayasinghe'}), (c:Company {name: 'Tangerine Beach Hotels PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Executive', r.as_of = date('2024-03-31');

// Query 71
MATCH (p:Person {name: 'L. H. Jayasinghe'}), (c:Company {name: 'Tangerine Beach Hotels PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-03-31');

// Query 72
MATCH (p:Person {name: 'P. S. R. Casie Chitty'}), (c:Company {name: 'Tangerine Beach Hotels PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 73
MATCH (p:Person {name: 'M. I. Shahabdeen'}), (c:Company {name: 'Tangerine Beach Hotels PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Financial Controller', r.as_of = date('2024-03-31');

// Query 74
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 75
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (prod:Product {name: 'Room Sales'}) MERGE (c)-[:OFFERS]->(prod);

// Query 76
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (prod:Product {name: 'Food and Beverage Sales'}) MERGE (c)-[:OFFERS]->(prod);

// Query 77
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (prod:Product {name: 'Other Hotel Related Revenue'}) MERGE (c)-[:OFFERS]->(prod);

// Query 78
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 964685000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 79
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 569189000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 80
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Cost of Sales'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 357350000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 81
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Cost of Sales'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 243242000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 82
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Operating Profit before Interest & Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -19768000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 83
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Operating Profit before Interest & Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -171024000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 84
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Interest Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1650000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 85
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Interest Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1579000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 86
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 73967000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 87
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -119435000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 88
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3452000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 89
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -81326000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 90
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 77419000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 91
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -200761000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 92
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Profit Attributable to Shareholders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 77419000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 93
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Profit Attributable to Shareholders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -200761000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 94
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2980992000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 95
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2895150000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 96
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3907907000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 97
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3813327000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 98
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Number of Shares in Issue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 20000000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 99
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Number of Shares in Issue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 20000000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 100
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Cash & Cash Equivalent'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 178420000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 101
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Cash & Cash Equivalent'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 32625000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 102
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Return on Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.60, r.year = 2024, r.as_of = date('2024-03-31');

// Query 103
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Return on Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6.93, r.year = 2023, r.as_of = date('2023-03-31');

// Query 104
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Return on Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 105
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Return on Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5.26, r.year = 2023, r.as_of = date('2023-03-31');

// Query 106
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16.71, r.year = 2024, r.as_of = date('2024-03-31');

// Query 107
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -55.36, r.year = 2023, r.as_of = date('2023-03-31');

// Query 108
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Equity / Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 76.28, r.year = 2024, r.as_of = date('2024-03-31');

// Query 109
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Equity / Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 76.45, r.year = 2023, r.as_of = date('2023-03-31');

// Query 110
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -3.16, r.year = 2024, r.as_of = date('2024-03-31');

// Query 111
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2.97, r.year = 2023, r.as_of = date('2023-03-31');

// Query 112
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 113
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 114
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.87, r.year = 2024, r.as_of = date('2024-03-31');

// Query 115
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -10.04, r.year = 2023, r.as_of = date('2023-03-31');

// Query 116
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Net Asset per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 149.05, r.year = 2024, r.as_of = date('2024-03-31');

// Query 117
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Net Asset per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 144.76, r.year = 2023, r.as_of = date('2023-03-31');

// Query 118
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Market Value per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 58.90, r.year = 2024, r.as_of = date('2024-03-31');

// Query 119
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Market Value per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 55.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 120
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Market Capitalisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1178000000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 121
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Market Capitalisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1100000000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 122
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Price Earnings Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 15.22, r.year = 2024, r.as_of = date('2024-03-31');

// Query 123
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Price Earnings Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5.48, r.year = 2023, r.as_of = date('2023-03-31');

// Query 124
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 244800000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 125
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 244800000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 126
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Revaluation Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1778757213, r.year = 2024, r.as_of = date('2024-03-31');

// Query 127
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Revaluation Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1767856665, r.year = 2023, r.as_of = date('2023-03-31');

// Query 128
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Fair Value Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 77386, r.year = 2024, r.as_of = date('2024-03-31');

// Query 129
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Fair Value Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 77386, r.year = 2023, r.as_of = date('2023-03-31');

// Query 130
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 957357344, r.year = 2024, r.as_of = date('2024-03-31');

// Query 131
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 882416031, r.year = 2023, r.as_of = date('2023-03-31');

// Query 132
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2980991943, r.year = 2024, r.as_of = date('2024-03-31');

// Query 133
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2895150082, r.year = 2023, r.as_of = date('2023-03-31');

// Query 134
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Deferred Tax Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 684826520, r.year = 2024, r.as_of = date('2024-03-31');

// Query 135
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Deferred Tax Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 697869104, r.year = 2023, r.as_of = date('2023-03-31');

// Query 136
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Post Employment Benefit Liability'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 36110363, r.year = 2024, r.as_of = date('2024-03-31');

// Query 137
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Post Employment Benefit Liability'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 27597592, r.year = 2023, r.as_of = date('2023-03-31');

// Query 138
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Lease Liability'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2712588, r.year = 2024, r.as_of = date('2024-03-31');

// Query 139
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Lease Liability'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4052841, r.year = 2023, r.as_of = date('2023-03-31');

// Query 140
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Trade and Other Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 123600769, r.year = 2024, r.as_of = date('2024-03-31');

// Query 141
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Trade and Other Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 91596145, r.year = 2023, r.as_of = date('2023-03-31');

// Query 142
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Amounts Due to Related Parties'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11142952, r.year = 2024, r.as_of = date('2024-03-31');

// Query 143
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Amounts Due to Related Parties'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 18643427, r.year = 2023, r.as_of = date('2023-03-31');

// Query 144
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Income Tax Payable'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 145
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Income Tax Payable'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 169148, r.year = 2023, r.as_of = date('2023-03-31');

// Query 146
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Current Portion of Lease Liability'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 867872, r.year = 2024, r.as_of = date('2024-03-31');

// Query 147
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Current Portion of Lease Liability'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 854040, r.year = 2023, r.as_of = date('2023-03-31');

// Query 148
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Current Portion of Interest Bearing Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 67654482, r.year = 2024, r.as_of = date('2024-03-31');

// Query 149
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Current Portion of Interest Bearing Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 77395523, r.year = 2023, r.as_of = date('2023-03-31');

// Query 150
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Dividends per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 151
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Dividends per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 152
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Dividend Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 153
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Dividend Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 154
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Dividend Yield'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 155
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Dividend Yield'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 156
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Dividend Pay-out Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 157
MATCH (c:Company {name: 'Tangerine Beach Hotels PLC'}), (m:Metric {name: 'Dividend Pay-out Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2023, r.as_of = date('2023-03-31');

// Total queries: 157
// Generated on: 2025-10-02T17:49:30.602668
