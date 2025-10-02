// Query 1
MERGE (c:Company {name: 'Dankotuwa Porcelain PLC'}) ON CREATE SET c.id = 'dankotuwa_porcelain_plc', c.region = 'Sri Lanka';

// Query 2
MERGE (c:Company {name: 'Royal Fernwood Porcelain Limited'}) ON CREATE SET c.id = 'royal_fernwood_porcelain_limited', c.region = 'Sri Lanka';

// Query 3
MERGE (c:Company {name: 'DPL Singapore PTE Ltd'}) ON CREATE SET c.id = 'dpl_singapore_pte_ltd', c.region = 'Singapore';

// Query 4
MERGE (c:Company {name: 'Lanka Decals (Private) Limited'}) ON CREATE SET c.id = 'lanka_decals_private_limited', c.region = 'Sri Lanka';

// Query 5
MERGE (c:Company {name: 'Ambeon Holdings PLC'}) ON CREATE SET c.id = 'ambeon_holdings_plc', c.region = 'Sri Lanka';

// Query 6
MERGE (c:Company {name: 'Ceyline Investment (Pvt) Ltd'}) ON CREATE SET c.id = 'ceyline_investment_pvt_ltd', c.region = 'Sri Lanka';

// Query 7
MERGE (p:Person {name: 'Yudy Kanagasabai'}) ON CREATE SET p.id = 'yudy_kanagasabai';

// Query 8
MERGE (p:Person {name: 'Ranil Pathirana'}) ON CREATE SET p.id = 'ranil_pathirana';

// Query 9
MERGE (p:Person {name: 'Rohan Palitha Peris'}) ON CREATE SET p.id = 'rohan_palitha_peris';

// Query 10
MERGE (p:Person {name: 'Shalike Karunasena'}) ON CREATE SET p.id = 'shalike_karunasena';

// Query 11
MERGE (p:Person {name: 'Sajeeva Narangoda'}) ON CREATE SET p.id = 'sajeeva_narangoda';

// Query 12
MERGE (p:Person {name: 'Nathasha Egodage'}) ON CREATE SET p.id = 'nathasha_egodage';

// Query 13
MERGE (p:Person {name: 'Lakshitha Rajendran'}) ON CREATE SET p.id = 'lakshitha_rajendran';

// Query 14
MERGE (p:Person {name: 'Hasuli Perera'}) ON CREATE SET p.id = 'hasuli_perera';

// Query 15
MERGE (p:Person {name: 'Vardan Aslibekyan'}) ON CREATE SET p.id = 'vardan_aslibekyan';

// Query 16
MERGE (p:Person {name: 'R T Devasurendra'}) ON CREATE SET p.id = 'r_t_devasurendra';

// Query 17
MERGE (s:Sector {name: 'Consumer Durables and Apparel'}) ON CREATE SET s.id = 'consumer_durables_and_apparel';

// Query 18
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 19
MERGE (prod:Product {name: 'porcelain tableware'}) ON CREATE SET prod.id = 'porcelain_tableware';

// Query 20
MERGE (prod:Product {name: 'decals'}) ON CREATE SET prod.id = 'decals';

// Query 21
MERGE (prod:Product {name: 'economical product range'}) ON CREATE SET prod.id = 'economical_product_range';

// Query 22
MERGE (prod:Product {name: 'specialised cutlery range'}) ON CREATE SET prod.id = 'specialised_cutlery_range';

// Query 23
MERGE (prod:Product {name: 'Royal Fernwood products'}) ON CREATE SET prod.id = 'royal_fernwood_products';

// Query 24
MERGE (prod:Product {name: 'Laklain products'}) ON CREATE SET prod.id = 'laklain_products';

// Query 25
MERGE (m:Metric {name: 'Export Revenue'}) ON CREATE SET m.id = 'export_revenue', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Local Revenue'}) ON CREATE SET m.id = 'local_revenue', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Total Revenue'}) ON CREATE SET m.id = 'total_revenue', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Change in Fair Value Gain of Investment Property'}) ON CREATE SET m.id = 'change_in_fair_value_gain_of_investment_property', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Change in Fair Value Gain/Loss of Investment in Subsidiary'}) ON CREATE SET m.id = 'change_in_fair_value_gain_loss_of_investment_in_subsidiary', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Profit Before Interest and Tax'}) ON CREATE SET m.id = 'profit_before_interest_and_tax', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Net Current Assets'}) ON CREATE SET m.id = 'net_current_assets', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Gross Profit Margin'}) ON CREATE SET m.id = 'gross_profit_margin', m.unit = '%';

// Query 37
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 38
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 39
MERGE (m:Metric {name: 'Return on Capital Employed'}) ON CREATE SET m.id = 'return_on_capital_employed', m.unit = '%';

// Query 40
MERGE (m:Metric {name: 'Distribution Costs'}) ON CREATE SET m.id = 'distribution_costs', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Administrative Expenses'}) ON CREATE SET m.id = 'administrative_expenses', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Finance Costs'}) ON CREATE SET m.id = 'finance_costs', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Finance Income'}) ON CREATE SET m.id = 'finance_income', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Tax Expense'}) ON CREATE SET m.id = 'tax_expense', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Shareholders\' Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Non-Controlling Interest'}) ON CREATE SET m.id = 'non_controlling_interest', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 50
MERGE (m:Metric {name: 'Earnings per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Net Asset Value per Share'}) ON CREATE SET m.id = 'net_asset_value_per_share', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Dividend per Ordinary Share'}) ON CREATE SET m.id = 'dividend_per_ordinary_share', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Dividend Payout Ratio'}) ON CREATE SET m.id = 'dividend_payout_ratio', m.unit = '%';

// Query 54
MERGE (m:Metric {name: 'Quick Assets Ratio'}) ON CREATE SET m.id = 'quick_assets_ratio', m.unit = 'Ratio';

// Query 55
MERGE (m:Metric {name: 'Stated Capital'}) ON CREATE SET m.id = 'stated_capital', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Other Components of Equity'}) ON CREATE SET m.id = 'other_components_of_equity', m.unit = 'Rs';

// Query 57
MERGE (m:Metric {name: 'Retained Earnings'}) ON CREATE SET m.id = 'retained_earnings', m.unit = 'Rs';

// Query 58
MERGE (m:Metric {name: 'Equity Attributable to Equity Holders of Parent'}) ON CREATE SET m.id = 'equity_attributable_to_equity_holders_of_parent', m.unit = 'Rs';

// Query 59
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 60
MERGE (m:Metric {name: 'Interest Bearing Loans and Borrowings'}) ON CREATE SET m.id = 'interest_bearing_loans_and_borrowings', m.unit = 'Rs';

// Query 61
MERGE (m:Metric {name: 'Lease Liability'}) ON CREATE SET m.id = 'lease_liability', m.unit = 'Rs';

// Query 62
MERGE (m:Metric {name: 'Trade and Other Payables'}) ON CREATE SET m.id = 'trade_and_other_payables', m.unit = 'Rs';

// Query 63
MERGE (m:Metric {name: 'Cash and Cash Equivalents'}) ON CREATE SET m.id = 'cash_and_cash_equivalents', m.unit = 'Rs';

// Query 64
MERGE (m:Metric {name: 'Net Finance Costs'}) ON CREATE SET m.id = 'net_finance_costs', m.unit = 'Rs';

// Query 65
MATCH (p:Company {name: 'Dankotuwa Porcelain PLC'}), (c:Company {name: 'Royal Fernwood Porcelain Limited'}) MERGE (p)-[:OWNS]->(c);

// Query 66
MATCH (p:Company {name: 'Dankotuwa Porcelain PLC'}), (c:Company {name: 'DPL Singapore PTE Ltd'}) MERGE (p)-[:OWNS]->(c);

// Query 67
MATCH (p:Company {name: 'Royal Fernwood Porcelain Limited'}), (c:Company {name: 'Lanka Decals (Private) Limited'}) MERGE (p)-[:OWNS]->(c);

// Query 68
MATCH (p:Company {name: 'Ambeon Holdings PLC'}), (c:Company {name: 'Dankotuwa Porcelain PLC'}) MERGE (p)-[:OWNS {pct: 50.1, as_of: date('2023-06-15')}]->(c);

// Query 69
MATCH (p:Company {name: 'Ceyline Investment (Pvt) Ltd'}), (c:Company {name: 'Dankotuwa Porcelain PLC'}) MERGE (p)-[:OWNS {pct: 50.1, as_of: date('2023-07-13')}]->(c);

// Query 70
MATCH (p:Person {name: 'Ranil Pathirana'}), (c:Company {name: 'Dankotuwa Porcelain PLC'}) MERGE (p)-[:OWNS_SHARES {count: 200000}]->(c);

// Query 71
MATCH (p:Person {name: 'Yudy Kanagasabai'}), (c:Company {name: 'Dankotuwa Porcelain PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2023-10-23');

// Query 72
MATCH (p:Person {name: 'Yudy Kanagasabai'}), (c:Company {name: 'Dankotuwa Porcelain PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2023-10-23');

// Query 73
MATCH (p:Person {name: 'Ranil Pathirana'}), (c:Company {name: 'Dankotuwa Porcelain PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Independent, Non-Executive', r.as_of = date('2023-10-30');

// Query 74
MATCH (p:Person {name: 'Ranil Pathirana'}), (c:Company {name: 'Dankotuwa Porcelain PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2023-10-30');

// Query 75
MATCH (p:Person {name: 'Rohan Palitha Peris'}), (c:Company {name: 'Dankotuwa Porcelain PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2023-10-19');

// Query 76
MATCH (p:Person {name: 'Shalike Karunasena'}), (c:Company {name: 'Dankotuwa Porcelain PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent, Non-Executive';

// Query 77
MATCH (p:Person {name: 'Sajeeva Narangoda'}), (c:Company {name: 'Dankotuwa Porcelain PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Independent, Non-Executive', r.as_of = date('2024-06-10');

// Query 78
MATCH (p:Person {name: 'Nathasha Egodage'}), (c:Company {name: 'Dankotuwa Porcelain PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-10-19');

// Query 79
MATCH (p:Person {name: 'Lakshitha Rajendran'}), (c:Company {name: 'Dankotuwa Porcelain PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-10-19');

// Query 80
MATCH (p:Person {name: 'Hasuli Perera'}), (c:Company {name: 'Dankotuwa Porcelain PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-10-19');

// Query 81
MATCH (p:Person {name: 'Vardan Aslibekyan'}), (c:Company {name: 'Dankotuwa Porcelain PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 82
MATCH (p:Person {name: 'R T Devasurendra'}), (c:Company {name: 'Dankotuwa Porcelain PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Independent, Non-Executive', r.as_of = date('2023-10-19');

// Query 83
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (s:Sector {name: 'Consumer Durables and Apparel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 84
MATCH (c:Company {name: 'Royal Fernwood Porcelain Limited'}), (s:Sector {name: 'Consumer Durables and Apparel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 85
MATCH (c:Company {name: 'DPL Singapore PTE Ltd'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 86
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (prod:Product {name: 'porcelain tableware'}) MERGE (c)-[:OFFERS]->(prod);

// Query 87
MATCH (c:Company {name: 'Royal Fernwood Porcelain Limited'}), (prod:Product {name: 'porcelain tableware'}) MERGE (c)-[:OFFERS]->(prod);

// Query 88
MATCH (c:Company {name: 'Lanka Decals (Private) Limited'}), (prod:Product {name: 'decals'}) MERGE (c)-[:OFFERS]->(prod);

// Query 89
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (prod:Product {name: 'economical product range'}) MERGE (c)-[:OFFERS]->(prod);

// Query 90
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (prod:Product {name: 'specialised cutlery range'}) MERGE (c)-[:OFFERS]->(prod);

// Query 91
MATCH (c:Company {name: 'Royal Fernwood Porcelain Limited'}), (prod:Product {name: 'Royal Fernwood products'}) MERGE (c)-[:OFFERS]->(prod);

// Query 92
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (prod:Product {name: 'Laklain products'}) MERGE (c)-[:OFFERS]->(prod);

// Query 93
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Export Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2212298000, r.year = 2024;

// Query 94
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Export Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1609639000, r.year = 2023;

// Query 95
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Local Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1663663000, r.year = 2024;

// Query 96
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Local Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1752834000, r.year = 2023;

// Query 97
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3875961000, r.year = 2024;

// Query 98
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3362473000, r.year = 2023;

// Query 99
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1643794000, r.year = 2024;

// Query 100
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1445551000, r.year = 2023;

// Query 101
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Change in Fair Value Gain of Investment Property'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0, r.year = 2024;

// Query 102
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Change in Fair Value Gain of Investment Property'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 49672000, r.year = 2023;

// Query 103
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 764907000, r.year = 2024;

// Query 104
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 777349000, r.year = 2023;

// Query 105
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Change in Fair Value Gain/Loss of Investment in Subsidiary'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3003000, r.year = 2024;

// Query 106
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Change in Fair Value Gain/Loss of Investment in Subsidiary'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 221101000, r.year = 2023;

// Query 107
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Profit Before Interest and Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 843185000, r.year = 2024;

// Query 108
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Profit Before Interest and Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1041249000, r.year = 2023;

// Query 109
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 697311000, r.year = 2024;

// Query 110
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 896909000, r.year = 2023;

// Query 111
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 441345000, r.year = 2024;

// Query 112
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 622067000, r.year = 2023;

// Query 113
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Net Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1454966000, r.year = 2024;

// Query 114
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Net Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1005871000, r.year = 2023;

// Query 115
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Gross Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33.8, r.year = 2024;

// Query 116
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Gross Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 34.8, r.year = 2023;

// Query 117
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.79, r.year = 2024;

// Query 118
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14.67, r.year = 2023;

// Query 119
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18.36, r.year = 2024;

// Query 120
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21.71, r.year = 2024;

// Query 121
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Distribution Costs'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -435213000, r.year = 2024;

// Query 122
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Distribution Costs'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -341601000, r.year = 2023;

// Query 123
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Administrative Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -480626000, r.year = 2024;

// Query 124
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Administrative Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -580857000, r.year = 2023;

// Query 125
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Finance Costs'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -112932000, r.year = 2024;

// Query 126
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Finance Costs'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -146335000, r.year = 2023;

// Query 127
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19991000, r.year = 2024;

// Query 128
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19265000, r.year = 2023;

// Query 129
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -255966000, r.year = 2024;

// Query 130
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -274842000, r.year = 2023;

// Query 131
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6488763000, r.year = 2024;

// Query 132
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5299966000, r.year = 2023;

// Query 133
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2454334000, r.year = 2024;

// Query 134
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1726283000, r.year = 2023;

// Query 135
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Shareholders\' Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4034429000, r.year = 2024;

// Query 136
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Shareholders\' Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3573683000, r.year = 2023;

// Query 137
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27.56, r.year = 2024;

// Query 138
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.58, r.year = 2023;

// Query 139
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1402101647, r.year = 2024;

// Query 140
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1402101647, r.year = 2023;

// Query 141
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Other Components of Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1174598362, r.year = 2024;

// Query 142
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Other Components of Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1137804247, r.year = 2023;

// Query 143
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1457728802, r.year = 2024;

// Query 144
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1033776970, r.year = 2023;

// Query 145
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Equity Attributable to Equity Holders of Parent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4034428811, r.year = 2024;

// Query 146
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Equity Attributable to Equity Holders of Parent'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3573682864, r.year = 2023;

// Query 147
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4034428811, r.year = 2024;

// Query 148
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3573682864, r.year = 2023;

// Query 149
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Interest Bearing Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1065712055, r.year = 2024;

// Query 150
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Interest Bearing Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 416642703, r.year = 2023;

// Query 151
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Lease Liability'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30823752, r.year = 2024;

// Query 152
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Lease Liability'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18068651, r.year = 2023;

// Query 153
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Trade and Other Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 419138564, r.year = 2024;

// Query 154
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Trade and Other Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 504423560, r.year = 2023;

// Query 155
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Cash and Cash Equivalents'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 476363858, r.year = 2024;

// Query 156
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Cash and Cash Equivalents'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 440902153, r.year = 2023;

// Query 157
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.72, r.year = 2024;

// Query 158
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.83, r.year = 2023;

// Query 159
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Net Asset Value per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24.82, r.year = 2024;

// Query 160
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Net Asset Value per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21.98, r.year = 2023;

// Query 161
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Dividend per Ordinary Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0, r.year = 2024;

// Query 162
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Dividend per Ordinary Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0, r.year = 2023;

// Query 163
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0, r.year = 2024;

// Query 164
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0, r.year = 2023;

// Query 165
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Quick Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.32, r.year = 2024;

// Query 166
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Quick Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.36, r.year = 2023;

// Query 167
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Net Finance Costs'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 65000000, r.year = 2024;

// Query 168
MATCH (c:Company {name: 'Dankotuwa Porcelain PLC'}), (m:Metric {name: 'Net Finance Costs'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 102000000, r.year = 2023;

// Total queries: 168
// Generated on: 2025-10-02T17:47:22.503814
