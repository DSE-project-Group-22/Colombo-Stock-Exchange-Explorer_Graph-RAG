// Query 1
MERGE (c:Company {name: 'Ceylon Beverage Holdings PLC'}) ON CREATE SET c.id = 'ceylon_beverage_holdings_plc', c.founded_on = date('1910-01-01'), c.listed_on = 'Colombo Stock Exchange (CSE)', c.region = 'Sri Lanka';

// Query 2
MERGE (c:Company {name: 'Lion Brewery (Ceylon) PLC'}) ON CREATE SET c.id = 'lion_brewery_ceylon_plc';

// Query 3
MERGE (c:Company {name: 'Lion Beer (Ceylon) Pte Ltd, SG'}) ON CREATE SET c.id = 'lion_beer_ceylon_pte_ltd_sg';

// Query 4
MERGE (c:Company {name: 'Millers Brewery Limited'}) ON CREATE SET c.id = 'millers_brewery_limited';

// Query 5
MERGE (c:Company {name: 'Pubs ‘N Places (Private) Limited'}) ON CREATE SET c.id = 'pubs_n_places_private_limited';

// Query 6
MERGE (c:Company {name: 'Retail Spaces (Private) Limited'}) ON CREATE SET c.id = 'retail_spaces_private_limited';

// Query 7
MERGE (c:Company {name: 'Luxury Brands (Private) Limited'}) ON CREATE SET c.id = 'luxury_brands_private_limited';

// Query 8
MERGE (c:Company {name: 'KPMG'}) ON CREATE SET c.id = 'kpmg';

// Query 9
MERGE (c:Company {name: 'Bukit Darah PLC'}) ON CREATE SET c.id = 'bukit_darah_plc';

// Query 10
MERGE (c:Company {name: 'Carson Cumberbatch PLC'}) ON CREATE SET c.id = 'carson_cumberbatch_plc';

// Query 11
MERGE (c:Company {name: 'Carino (Pvt) Ltd'}) ON CREATE SET c.id = 'carino_pvt_ltd';

// Query 12
MERGE (c:Company {name: 'Noorani Estates Limited'}) ON CREATE SET c.id = 'noorani_estates_limited';

// Query 13
MERGE (c:Company {name: 'AHL Business Solutions (Private) Limited'}) ON CREATE SET c.id = 'ahl_business_solutions_private_limited';

// Query 14
MERGE (c:Company {name: 'National Development Bank PLC'}) ON CREATE SET c.id = 'national_development_bank_plc';

// Query 15
MERGE (c:Company {name: 'Nations Trust Bank PLC'}) ON CREATE SET c.id = 'nations_trust_bank_plc';

// Query 16
MERGE (c:Company {name: 'Commercial Bank of Ceylon PLC'}) ON CREATE SET c.id = 'commercial_bank_of_ceylon_plc';

// Query 17
MERGE (c:Company {name: 'Bank of China Limited'}) ON CREATE SET c.id = 'bank_of_china_limited';

// Query 18
MERGE (c:Company {name: 'NDB Investment Bank'}) ON CREATE SET c.id = 'ndb_investment_bank';

// Query 19
MERGE (p:Person {name: 'D A Cabraal'}) ON CREATE SET p.id = 'd_a_cabraal';

// Query 20
MERGE (p:Person {name: 'H Selvanathan'}) ON CREATE SET p.id = 'h_selvanathan';

// Query 21
MERGE (p:Person {name: 'M Selvanathan'}) ON CREATE SET p.id = 'm_selvanathan';

// Query 22
MERGE (p:Person {name: 'D C R Gunawardena'}) ON CREATE SET p.id = 'd_c_r_gunawardena';

// Query 23
MERGE (p:Person {name: 'R H Meewakkala'}) ON CREATE SET p.id = 'r_h_meewakkala';

// Query 24
MERGE (p:Person {name: 'S Clini'}) ON CREATE SET p.id = 's_clini';

// Query 25
MERGE (p:Person {name: 'A J Alles'}) ON CREATE SET p.id = 'a_j_alles';

// Query 26
MERGE (p:Person {name: 'A B Baliga'}) ON CREATE SET p.id = 'a_b_baliga';

// Query 27
MERGE (p:Person {name: 'A S Amaratunga'}) ON CREATE SET p.id = 'a_s_amaratunga';

// Query 28
MERGE (p:Person {name: 'S J F Evans'}) ON CREATE SET p.id = 's_j_f_evans';

// Query 29
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 30
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 31
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 32
MERGE (prod:Product {name: 'Beers'}) ON CREATE SET prod.id = 'beers';

// Query 33
MERGE (prod:Product {name: 'Alcohol Products'}) ON CREATE SET prod.id = 'alcohol_products';

// Query 34
MERGE (prod:Product {name: 'Wines'}) ON CREATE SET prod.id = 'wines';

// Query 35
MERGE (prod:Product {name: 'Spirits'}) ON CREATE SET prod.id = 'spirits';

// Query 36
MERGE (prod:Product {name: 'Machang Pub Chain'}) ON CREATE SET prod.id = 'machang_pub_chain';

// Query 37
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit Before Finance Cost'}) ON CREATE SET m.id = 'profit_before_finance_cost', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Profit Before Taxation'}) ON CREATE SET m.id = 'profit_before_taxation', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Profit After Taxation'}) ON CREATE SET m.id = 'profit_after_taxation', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Dividends Per Share'}) ON CREATE SET m.id = 'dividends_per_share', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Shareholders Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Earnings Per Ordinary Share'}) ON CREATE SET m.id = 'earnings_per_ordinary_share', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Net Assets Per Ordinary Share'}) ON CREATE SET m.id = 'net_assets_per_ordinary_share', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Net Cash From Operating Activities'}) ON CREATE SET m.id = 'net_cash_from_operating_activities', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Net Cash From Investing Activities'}) ON CREATE SET m.id = 'net_cash_from_investing_activities', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Net Cash From Financing Activities'}) ON CREATE SET m.id = 'net_cash_from_financing_activities', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Net Cash Movement'}) ON CREATE SET m.id = 'net_cash_movement', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Return On Shareholders Funds'}) ON CREATE SET m.id = 'return_on_shareholders_funds', m.unit = '%';

// Query 51
MERGE (m:Metric {name: 'Return On Capital Employed'}) ON CREATE SET m.id = 'return_on_capital_employed', m.unit = 'Times';

// Query 52
MERGE (m:Metric {name: 'Equity To Total Assets'}) ON CREATE SET m.id = 'equity_to_total_assets', m.unit = 'Times';

// Query 53
MERGE (m:Metric {name: 'Assets Turnover'}) ON CREATE SET m.id = 'assets_turnover', m.unit = 'Times';

// Query 54
MERGE (m:Metric {name: 'Interest Cover'}) ON CREATE SET m.id = 'interest_cover', m.unit = 'Times';

// Query 55
MERGE (m:Metric {name: 'Taxes Contribution'}) ON CREATE SET m.id = 'taxes_contribution', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Market Capitalisation'}) ON CREATE SET m.id = 'market_capitalisation', m.unit = 'Rs';

// Query 57
MERGE (m:Metric {name: 'Capital Expenditure'}) ON CREATE SET m.id = 'capital_expenditure', m.unit = 'Rs';

// Query 58
MERGE (m:Metric {name: 'Revenue (USD)'}) ON CREATE SET m.id = 'revenue_usd', m.unit = 'USD';

// Query 59
MERGE (m:Metric {name: 'Profit Before Finance Cost (USD)'}) ON CREATE SET m.id = 'profit_before_finance_cost_usd', m.unit = 'USD';

// Query 60
MERGE (m:Metric {name: 'Profit Before Taxation (USD)'}) ON CREATE SET m.id = 'profit_before_taxation_usd', m.unit = 'USD';

// Query 61
MERGE (m:Metric {name: 'Profit After Taxation (USD)'}) ON CREATE SET m.id = 'profit_after_taxation_usd', m.unit = 'USD';

// Query 62
MATCH (p:Person {name: 'D A Cabraal'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 63
MATCH (p:Person {name: 'D A Cabraal'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.role = 'Non-Executive', r.as_of = date('2024-09-25');

// Query 64
MATCH (p:Person {name: 'D A Cabraal'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1500, r.as_of = date('2025-03-31');

// Query 65
MATCH (p:Person {name: 'D A Cabraal'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 1500, r.as_of = date('2024-03-31');

// Query 66
MATCH (p:Person {name: 'H Selvanathan'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.role = 'Non-Executive', r.as_of = date('2024-03-31');

// Query 67
MATCH (p:Person {name: 'H Selvanathan'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 690, r.as_of = date('2025-03-31');

// Query 68
MATCH (p:Person {name: 'H Selvanathan'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 690, r.as_of = date('2024-03-31');

// Query 69
MATCH (p:Person {name: 'M Selvanathan'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.role = 'Non-Executive', r.as_of = date('2024-03-31');

// Query 70
MATCH (p:Person {name: 'M Selvanathan'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 690, r.as_of = date('2025-03-31');

// Query 71
MATCH (p:Person {name: 'M Selvanathan'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 690, r.as_of = date('2024-03-31');

// Query 72
MATCH (p:Person {name: 'D C R Gunawardena'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.role = 'Non-Executive', r.as_of = date('2024-03-31');

// Query 73
MATCH (p:Person {name: 'D C R Gunawardena'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 15, r.as_of = date('2025-03-31');

// Query 74
MATCH (p:Person {name: 'D C R Gunawardena'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 15, r.as_of = date('2024-03-31');

// Query 75
MATCH (p:Person {name: 'D C R Gunawardena'}), (c:Company {name: 'Bukit Darah PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Key Management Personnel', r.as_of = date('2024-03-31');

// Query 76
MATCH (p:Person {name: 'D C R Gunawardena'}), (c:Company {name: 'Carson Cumberbatch PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Key Management Personnel', r.as_of = date('2024-03-31');

// Query 77
MATCH (p:Person {name: 'D C R Gunawardena'}), (c:Company {name: 'Carino (Pvt) Ltd'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 78
MATCH (p:Person {name: 'D C R Gunawardena'}), (c:Company {name: 'Noorani Estates Limited'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 79
MATCH (p:Person {name: 'D C R Gunawardena'}), (c:Company {name: 'AHL Business Solutions (Private) Limited'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 80
MATCH (p:Person {name: 'R H Meewakkala'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director/CEO', r.role = 'Executive', r.as_of = date('2024-03-31');

// Query 81
MATCH (p:Person {name: 'S Clini'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.role = 'Non-Executive', r.as_of = date('2024-03-31');

// Query 82
MATCH (p:Person {name: 'A J Alles'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.role = 'Independent Non-Executive', r.as_of = date('2024-09-25');

// Query 83
MATCH (p:Person {name: 'A B Baliga'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.role = 'Independent Non-Executive', r.as_of = date('2024-09-25');

// Query 84
MATCH (p:Person {name: 'A S Amaratunga'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.role = 'Independent Non-Executive', r.as_of = date('2024-09-25');

// Query 85
MATCH (p:Person {name: 'S J F Evans'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 86
MATCH (parent:Company {name: 'Ceylon Beverage Holdings PLC'}), (child:Company {name: 'Lion Brewery (Ceylon) PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 52.25;

// Query 87
MATCH (parent:Company {name: 'Lion Brewery (Ceylon) PLC'}), (child:Company {name: 'Lion Beer (Ceylon) Pte Ltd, SG'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0;

// Query 88
MATCH (parent:Company {name: 'Lion Brewery (Ceylon) PLC'}), (child:Company {name: 'Millers Brewery Limited'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0;

// Query 89
MATCH (parent:Company {name: 'Ceylon Beverage Holdings PLC'}), (child:Company {name: 'Pubs ‘N Places (Private) Limited'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 99.9;

// Query 90
MATCH (parent:Company {name: 'Ceylon Beverage Holdings PLC'}), (child:Company {name: 'Retail Spaces (Private) Limited'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0;

// Query 91
MATCH (parent:Company {name: 'Ceylon Beverage Holdings PLC'}), (child:Company {name: 'Luxury Brands (Private) Limited'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0;

// Query 92
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (a:Company {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2025;

// Query 93
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 94
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 95
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 96
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (prod:Product {name: 'Beers'}) MERGE (c)-[:OFFERS]->(prod);

// Query 97
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (prod:Product {name: 'Alcohol Products'}) MERGE (c)-[:OFFERS]->(prod);

// Query 98
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (prod:Product {name: 'Wines'}) MERGE (c)-[:OFFERS]->(prod);

// Query 99
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (prod:Product {name: 'Spirits'}) MERGE (c)-[:OFFERS]->(prod);

// Query 100
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (prod:Product {name: 'Machang Pub Chain'}) MERGE (c)-[:OFFERS]->(prod);

// Query 101
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Revenue', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 125172015000.0, r.year = 2025;

// Query 102
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Revenue', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 111930270000.0, r.year = 2024;

// Query 103
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit Before Finance Cost', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16598854000.0, r.year = 2025;

// Query 104
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit Before Finance Cost', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 15657291000.0, r.year = 2024;

// Query 105
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit Before Taxation', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16036224000.0, r.year = 2025;

// Query 106
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit Before Taxation', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14023293000.0, r.year = 2024;

// Query 107
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit After Taxation', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9657662000.0, r.year = 2025;

// Query 108
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit After Taxation', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7975609000.0, r.year = 2024;

// Query 109
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Dividends Per Share', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 50.35, r.year = 2025;

// Query 110
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Dividends Per Share', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 81.24, r.year = 2024;

// Query 111
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Shareholders Funds', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 34950484000.0, r.year = 2025;

// Query 112
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Shareholders Funds', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 27791612000.0, r.year = 2024;

// Query 113
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Total Assets', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 64917211000.0, r.year = 2025;

// Query 114
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Total Assets', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 56732634000.0, r.year = 2024;

// Query 115
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Earnings Per Ordinary Share', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 243.82, r.year = 2025;

// Query 116
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Earnings Per Ordinary Share', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 188.82, r.year = 2024;

// Query 117
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Assets Per Ordinary Share', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 882.18, r.year = 2025;

// Query 118
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Assets Per Ordinary Share', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 696.25, r.year = 2024;

// Query 119
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Cash From Operating Activities', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14765946000.0, r.year = 2025;

// Query 120
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Cash From Operating Activities', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13925461000.0, r.year = 2024;

// Query 121
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Cash From Operating Activities', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1406818000.0, r.year = 2023;

// Query 122
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Cash From Operating Activities', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4990359000.0, r.year = 2022;

// Query 123
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Cash From Operating Activities', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5650184000.0, r.year = 2021;

// Query 124
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Cash From Investing Activities', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6536646000.0, r.year = 2025;

// Query 125
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Cash From Investing Activities', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -4641674000.0, r.year = 2024;

// Query 126
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Cash From Investing Activities', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 345913000.0, r.year = 2023;

// Query 127
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Cash From Investing Activities', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2023597000.0, r.year = 2022;

// Query 128
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Cash From Investing Activities', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -8239464000.0, r.year = 2021;

// Query 129
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Cash From Financing Activities', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -3614929000.0, r.year = 2025;

// Query 130
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Cash From Financing Activities', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -9384877000.0, r.year = 2024;

// Query 131
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Cash From Financing Activities', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1167299000.0, r.year = 2023;

// Query 132
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Cash From Financing Activities', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1216479000.0, r.year = 2022;

// Query 133
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Cash From Financing Activities', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -8025983000.0, r.year = 2021;

// Query 134
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Cash Movement', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4614371000.0, r.year = 2025;

// Query 135
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Cash Movement', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -101090000.0, r.year = 2024;

// Query 136
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Cash Movement', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 585432000.0, r.year = 2023;

// Query 137
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Cash Movement', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5797477000.0, r.year = 2022;

// Query 138
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net Cash Movement', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -10615263000.0, r.year = 2021;

// Query 139
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Return On Shareholders Funds', unit: '%'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 27.62, r.year = 2025;

// Query 140
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Return On Shareholders Funds', unit: '%'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 27.11, r.year = 2024;

// Query 141
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Return On Shareholders Funds', unit: '%'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 28.44, r.year = 2023;

// Query 142
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Return On Shareholders Funds', unit: '%'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19.99, r.year = 2022;

// Query 143
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Return On Shareholders Funds', unit: '%'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14.66, r.year = 2021;

// Query 144
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Return On Capital Employed', unit: 'Times'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 75.42, r.year = 2025;

// Query 145
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Return On Capital Employed', unit: 'Times'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 69.9, r.year = 2024;

// Query 146
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Return On Capital Employed', unit: 'Times'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 64.82, r.year = 2023;

// Query 147
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Return On Capital Employed', unit: 'Times'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 39.72, r.year = 2022;

// Query 148
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Return On Capital Employed', unit: 'Times'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 33.91, r.year = 2021;

// Query 149
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Equity To Total Assets', unit: 'Times'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.86, r.year = 2025;

// Query 150
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Equity To Total Assets', unit: 'Times'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.04, r.year = 2024;

// Query 151
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Equity To Total Assets', unit: 'Times'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.12, r.year = 2023;

// Query 152
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Equity To Total Assets', unit: 'Times'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.13, r.year = 2022;

// Query 153
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Equity To Total Assets', unit: 'Times'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.17, r.year = 2021;

// Query 154
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Assets Turnover', unit: 'Times'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.93, r.year = 2025;

// Query 155
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Assets Turnover', unit: 'Times'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.97, r.year = 2024;

// Query 156
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Assets Turnover', unit: 'Times'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.99, r.year = 2023;

// Query 157
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Assets Turnover', unit: 'Times'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.42, r.year = 2022;

// Query 158
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Assets Turnover', unit: 'Times'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.42, r.year = 2021;

// Query 159
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Interest Cover', unit: 'Times'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 29.5, r.year = 2025;

// Query 160
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Interest Cover', unit: 'Times'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9.58, r.year = 2024;

// Query 161
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Interest Cover', unit: 'Times'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6.11, r.year = 2023;

// Query 162
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Interest Cover', unit: 'Times'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.28, r.year = 2021;

// Query 163
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Taxes Contribution', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 95000000000.0, r.year = 2025;

// Query 164
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Taxes Contribution', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 80000000000.0, r.year = 2024;

// Query 165
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Market Capitalisation', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 55072748160.0, r.as_of = date('2025-03-31');

// Query 166
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Market Capitalisation', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 32169495000.0, r.as_of = date('2024-03-31');

// Query 167
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Capital Expenditure', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7500000000.0, r.year = 2025;

// Query 168
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Capital Expenditure', unit: 'Rs'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10000000000.0, r.year = 2024;

// Query 169
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Revenue (USD)', unit: 'USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 413884000.0, r.year = 2025;

// Query 170
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Revenue (USD)', unit: 'USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 345560000.0, r.year = 2024;

// Query 171
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Revenue (USD)', unit: 'USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 272652000.0, r.year = 2023;

// Query 172
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Revenue (USD)', unit: 'USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 293398000.0, r.year = 2022;

// Query 173
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Revenue (USD)', unit: 'USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 271635000.0, r.year = 2021;

// Query 174
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit Before Finance Cost (USD)', unit: 'USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 54885000.0, r.year = 2025;

// Query 175
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit Before Finance Cost (USD)', unit: 'USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 48338000.0, r.year = 2024;

// Query 176
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit Before Finance Cost (USD)', unit: 'USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 37872000.0, r.year = 2023;

// Query 177
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit Before Finance Cost (USD)', unit: 'USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 27835000.0, r.year = 2022;

// Query 178
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit Before Finance Cost (USD)', unit: 'USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 25865000.0, r.year = 2021;

// Query 179
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit Before Taxation (USD)', unit: 'USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 53025000.0, r.year = 2025;

// Query 180
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit Before Taxation (USD)', unit: 'USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 43293000.0, r.year = 2024;

// Query 181
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit Before Taxation (USD)', unit: 'USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 31673000.0, r.year = 2023;

// Query 182
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit Before Taxation (USD)', unit: 'USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 28677000.0, r.year = 2022;

// Query 183
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit Before Taxation (USD)', unit: 'USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 22743000.0, r.year = 2021;

// Query 184
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit After Taxation (USD)', unit: 'USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 31933000.0, r.year = 2025;

// Query 185
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit After Taxation (USD)', unit: 'USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 24621000.0, r.year = 2024;

// Query 186
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit After Taxation (USD)', unit: 'USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 18974000.0, r.year = 2023;

// Query 187
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit After Taxation (USD)', unit: 'USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 18623000.0, r.year = 2022;

// Query 188
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit After Taxation (USD)', unit: 'USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12922000.0, r.year = 2021;

// Total queries: 188
// Generated on: 2025-10-02T17:51:49.501802
