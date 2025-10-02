// Query 1
MERGE (c:Company {name: 'VIDULLANKA PLC'}) ON CREATE SET c.id = 'vidullanka_plc', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 2
MERGE (p:Person {name: 'Osman Kassim'}) ON CREATE SET p.id = 'osman_kassim';

// Query 3
MERGE (p:Person {name: 'Riyaz M. Sangani'}) ON CREATE SET p.id = 'riyaz_m_sangani';

// Query 4
MERGE (p:Person {name: 'Ranjan Mather'}) ON CREATE SET p.id = 'ranjan_mather';

// Query 5
MERGE (p:Person {name: 'Sujendra Mather'}) ON CREATE SET p.id = 'sujendra_mather';

// Query 6
MERGE (p:Person {name: 'Shahid M. Sangani'}) ON CREATE SET p.id = 'shahid_m_sangani';

// Query 7
MERGE (p:Person {name: 'Sattar Kassim'}) ON CREATE SET p.id = 'sattar_kassim';

// Query 8
MERGE (p:Person {name: 'Rizvi Zaheed'}) ON CREATE SET p.id = 'rizvi_zaheed';

// Query 9
MERGE (p:Person {name: 'Deepthie Wickramasuriya'}) ON CREATE SET p.id = 'deepthie_wickramasuriya';

// Query 10
MERGE (p:Person {name: 'Sidath Fernando'}) ON CREATE SET p.id = 'sidath_fernando';

// Query 11
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 12
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 13
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 14
MERGE (prod:Product {name: 'Bambarabatuoya MHPP'}) ON CREATE SET prod.id = 'bambarabatuoya_mhpp';

// Query 15
MERGE (prod:Product {name: 'Batathota MHPP'}) ON CREATE SET prod.id = 'batathota_mhpp';

// Query 16
MERGE (prod:Product {name: 'Wembiyagoda MHPP'}) ON CREATE SET prod.id = 'wembiyagoda_mhpp';

// Query 17
MERGE (prod:Product {name: 'Rideepana MHPP'}) ON CREATE SET prod.id = 'rideepana_mhpp';

// Query 18
MERGE (prod:Product {name: 'Udawela MHPP'}) ON CREATE SET prod.id = 'udawela_mhpp';

// Query 19
MERGE (prod:Product {name: 'Lower Kotmale Oya MHPP'}) ON CREATE SET prod.id = 'lower_kotmale_oya_mhpp';

// Query 20
MERGE (prod:Product {name: 'Horana Solar Power Plant'}) ON CREATE SET prod.id = 'horana_solar_power_plant';

// Query 21
MERGE (m:Metric {name: 'Gross Revenue'}) ON CREATE SET m.id = 'gross_revenue', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Energy Generation'}) ON CREATE SET m.id = 'energy_generation', m.unit = 'GWh';

// Query 25
MERGE (m:Metric {name: 'Installed Capacity'}) ON CREATE SET m.id = 'installed_capacity', m.unit = 'MW';

// Query 26
MERGE (m:Metric {name: 'Net Profit Margin'}) ON CREATE SET m.id = 'net_profit_margin', m.unit = '%';

// Query 27
MERGE (m:Metric {name: 'Return On Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 28
MERGE (m:Metric {name: 'Return On Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 29
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Net Asset Value Per Share'}) ON CREATE SET m.id = 'net_asset_value_per_share', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Financial Leverage'}) ON CREATE SET m.id = 'financial_leverage', m.unit = '%';

// Query 33
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Cash Generated from Operating Activities'}) ON CREATE SET m.id = 'cash_generated_from_operating_activities', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Cash Utilized in Investing Activities'}) ON CREATE SET m.id = 'cash_utilized_in_investing_activities', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'New Capacity Added'}) ON CREATE SET m.id = 'new_capacity_added', m.unit = 'MW';

// Query 38
MERGE (m:Metric {name: 'Emission Reduction'}) ON CREATE SET m.id = 'emission_reduction', m.unit = 'Ton';

// Query 39
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 40
MERGE (m:Metric {name: 'Equity Asset Ratio'}) ON CREATE SET m.id = 'equity_asset_ratio', m.unit = 'Ratio';

// Query 41
MERGE (m:Metric {name: 'Asset Turnover Ratio'}) ON CREATE SET m.id = 'asset_turnover_ratio', m.unit = 'Ratio';

// Query 42
MERGE (m:Metric {name: 'Market Capitalization'}) ON CREATE SET m.id = 'market_capitalization', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Dividend Payout Ratio'}) ON CREATE SET m.id = 'dividend_payout_ratio', m.unit = '%';

// Query 44
MERGE (m:Metric {name: 'Price to Book Value - Voting Share'}) ON CREATE SET m.id = 'price_to_book_value_voting_share', m.unit = 'Ratio';

// Query 45
MERGE (m:Metric {name: 'Price to Book Value - Non Voting Share'}) ON CREATE SET m.id = 'price_to_book_value_non_voting_share', m.unit = 'Ratio';

// Query 46
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Total Loans and Borrowings'}) ON CREATE SET m.id = 'total_loans_and_borrowings', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Total Capital Employed'}) ON CREATE SET m.id = 'total_capital_employed', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Stated Capital'}) ON CREATE SET m.id = 'stated_capital', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Retained Earnings'}) ON CREATE SET m.id = 'retained_earnings', m.unit = 'Rs';

// Query 52
MERGE (aud:Company {name: 'BDO partners'}) ON CREATE SET aud.id = 'bdo_partners';

// Query 53
MATCH (p:Person {name: 'Osman Kassim'}), (c:Company {name: 'VIDULLANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Chairman', r.as_of = date('2024-03-31');

// Query 54
MATCH (p:Person {name: 'Riyaz M. Sangani'}), (c:Company {name: 'VIDULLANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 55
MATCH (p:Person {name: 'Ranjan Mather'}), (c:Company {name: 'VIDULLANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 56
MATCH (p:Person {name: 'Sujendra Mather'}), (c:Company {name: 'VIDULLANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 57
MATCH (p:Person {name: 'Shahid M. Sangani'}), (c:Company {name: 'VIDULLANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 58
MATCH (p:Person {name: 'Sattar Kassim'}), (c:Company {name: 'VIDULLANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 59
MATCH (p:Person {name: 'Rizvi Zaheed'}), (c:Company {name: 'VIDULLANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 60
MATCH (p:Person {name: 'Deepthie Wickramasuriya'}), (c:Company {name: 'VIDULLANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 61
MATCH (p:Person {name: 'Sidath Fernando'}), (c:Company {name: 'VIDULLANKA PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 62
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 63
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 64
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 65
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (prod:Product {name: 'Bambarabatuoya MHPP'}) MERGE (c)-[:OFFERS]->(prod);

// Query 66
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (prod:Product {name: 'Batathota MHPP'}) MERGE (c)-[:OFFERS]->(prod);

// Query 67
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (prod:Product {name: 'Wembiyagoda MHPP'}) MERGE (c)-[:OFFERS]->(prod);

// Query 68
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (prod:Product {name: 'Rideepana MHPP'}) MERGE (c)-[:OFFERS]->(prod);

// Query 69
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (prod:Product {name: 'Udawela MHPP'}) MERGE (c)-[:OFFERS]->(prod);

// Query 70
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (prod:Product {name: 'Lower Kotmale Oya MHPP'}) MERGE (c)-[:OFFERS]->(prod);

// Query 71
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (prod:Product {name: 'Horana Solar Power Plant'}) MERGE (c)-[:OFFERS]->(prod);

// Query 72
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5692546000, r.year = 2024;

// Query 73
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3836435000, r.year = 2023;

// Query 74
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2567672000, r.year = 2022;

// Query 75
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1797070000, r.year = 2021;

// Query 76
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1440380000, r.year = 2020;

// Query 77
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1281956000, r.year = 2019;

// Query 78
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 974838000, r.year = 2018;

// Query 79
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 534754000, r.year = 2017;

// Query 80
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 723224000, r.year = 2016;

// Query 81
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 563348000, r.year = 2015;

// Query 82
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3191325000, r.year = 2024;

// Query 83
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2720321000, r.year = 2023;

// Query 84
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1879819000, r.year = 2022;

// Query 85
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1205147000, r.year = 2021;

// Query 86
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1062483000, r.year = 2020;

// Query 87
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 980401000, r.year = 2019;

// Query 88
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 726369000, r.year = 2018;

// Query 89
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 391062000, r.year = 2017;

// Query 90
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 601700000, r.year = 2016;

// Query 91
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 434822000, r.year = 2015;

// Query 92
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1353186000, r.year = 2024;

// Query 93
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1023010000, r.year = 2023;

// Query 94
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 865877000, r.year = 2022;

// Query 95
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 594951000, r.year = 2021;

// Query 96
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 361662000, r.year = 2020;

// Query 97
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 527318000, r.year = 2019;

// Query 98
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 509220000, r.year = 2018;

// Query 99
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 41677000, r.year = 2017;

// Query 100
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 371591000, r.year = 2016;

// Query 101
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 354997000, r.year = 2015;

// Query 102
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Energy Generation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 215.2, r.year = 2024;

// Query 103
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Energy Generation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 183.2, r.year = 2023;

// Query 104
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Energy Generation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 185.9, r.year = 2022;

// Query 105
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Energy Generation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 139.6, r.year = 2021;

// Query 106
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Energy Generation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 114.9, r.year = 2020;

// Query 107
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Energy Generation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 108.0, r.year = 2019;

// Query 108
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Energy Generation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 92.6, r.year = 2018;

// Query 109
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Energy Generation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48.5, r.year = 2017;

// Query 110
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Energy Generation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 68.0, r.year = 2016;

// Query 111
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Energy Generation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 63.0, r.year = 2015;

// Query 112
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Installed Capacity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 51, r.year = 2024;

// Query 113
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Installed Capacity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 49, r.year = 2023;

// Query 114
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Installed Capacity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39, r.year = 2022;

// Query 115
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Installed Capacity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 37, r.year = 2021;

// Query 116
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Installed Capacity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30, r.year = 2020;

// Query 117
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23.8, r.year = 2024;

// Query 118
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26.7, r.year = 2023;

// Query 119
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33.7, r.year = 2022;

// Query 120
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33.1, r.year = 2021;

// Query 121
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25.1, r.year = 2020;

// Query 122
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 41.1, r.year = 2019;

// Query 123
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 52.2, r.year = 2018;

// Query 124
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.8, r.year = 2017;

// Query 125
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 51.4, r.year = 2016;

// Query 126
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 63.0, r.year = 2015;

// Query 127
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Return On Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18.0, r.year = 2024;

// Query 128
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Return On Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14.8, r.year = 2023;

// Query 129
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Return On Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.1, r.year = 2022;

// Query 130
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Return On Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.3, r.year = 2021;

// Query 131
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Return On Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.1, r.year = 2020;

// Query 132
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Return On Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.2, r.year = 2019;

// Query 133
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Return On Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23.0, r.year = 2018;

// Query 134
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Return On Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.3, r.year = 2017;

// Query 135
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Return On Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.9, r.year = 2016;

// Query 136
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Return On Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24.5, r.year = 2015;

// Query 137
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Return On Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20.8, r.year = 2024;

// Query 138
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Return On Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.3, r.year = 2023;

// Query 139
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Return On Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14.4, r.year = 2022;

// Query 140
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Return On Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.6, r.year = 2021;

// Query 141
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Return On Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.2, r.year = 2020;

// Query 142
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Return On Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.8, r.year = 2019;

// Query 143
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Return On Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.1, r.year = 2018;

// Query 144
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Return On Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.2, r.year = 2017;

// Query 145
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Return On Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.7, r.year = 2016;

// Query 146
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Return On Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.1, r.year = 2015;

// Query 147
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.36, r.year = 2024;

// Query 148
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.02, r.year = 2023;

// Query 149
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.93, r.year = 2022;

// Query 150
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.68, r.year = 2021;

// Query 151
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.41, r.year = 2020;

// Query 152
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.62, r.year = 2019;

// Query 153
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.60, r.year = 2018;

// Query 154
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.05, r.year = 2017;

// Query 155
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.52, r.year = 2016;

// Query 156
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.49, r.year = 2015;

// Query 157
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.36, r.year = 2024;

// Query 158
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.20, r.year = 2023;

// Query 159
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.30, r.year = 2022;

// Query 160
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.10, r.year = 2021;

// Query 161
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.23, r.year = 2020;

// Query 162
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.15, r.year = 2019;

// Query 163
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.20, r.year = 2018;

// Query 164
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.10, r.year = 2017;

// Query 165
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.23, r.year = 2016;

// Query 166
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.18, r.year = 2015;

// Query 167
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.69, r.year = 2024;

// Query 168
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.07, r.year = 2023;

// Query 169
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.99, r.year = 2022;

// Query 170
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.21, r.year = 2021;

// Query 171
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.51, r.year = 2020;

// Query 172
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.24, r.year = 2019;

// Query 173
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.66, r.year = 2018;

// Query 174
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.41, r.year = 2017;

// Query 175
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.50, r.year = 2016;

// Query 176
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.04, r.year = 2015;

// Query 177
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Financial Leverage'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28.9, r.year = 2024;

// Query 178
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Financial Leverage'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36.6, r.year = 2023;

// Query 179
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Financial Leverage'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 43.2, r.year = 2022;

// Query 180
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Financial Leverage'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 51.3, r.year = 2021;

// Query 181
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Financial Leverage'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 53.1, r.year = 2020;

// Query 182
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2714335000, r.year = 2024;

// Query 183
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2248750000, r.year = 2023;

// Query 184
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1654858000, r.year = 2022;

// Query 185
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1125011000, r.year = 2021;

// Query 186
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 899346000, r.year = 2020;

// Query 187
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 917576000, r.year = 2019;

// Query 188
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 908559000, r.year = 2018;

// Query 189
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 199934000, r.year = 2017;

// Query 190
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 479792000, r.year = 2016;

// Query 191
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 427749000, r.year = 2015;

// Query 192
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2242006000, r.year = 2024;

// Query 193
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1649743000, r.year = 2023;

// Query 194
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1357075000, r.year = 2022;

// Query 195
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 814920000, r.year = 2021;

// Query 196
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 582099000, r.year = 2020;

// Query 197
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 624212000, r.year = 2019;

// Query 198
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 649490000, r.year = 2018;

// Query 199
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 40715000, r.year = 2017;

// Query 200
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 392464000, r.year = 2016;

// Query 201
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 388304000, r.year = 2015;

// Query 202
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Cash Generated from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2913009000, r.year = 2024;

// Query 203
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Cash Generated from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2618993000, r.year = 2023;

// Query 204
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Cash Generated from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1664361000, r.year = 2022;

// Query 205
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Cash Generated from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1161248000, r.year = 2021;

// Query 206
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Cash Generated from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 899154000, r.year = 2020;

// Query 207
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Cash Generated from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 729590000, r.year = 2019;

// Query 208
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Cash Generated from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 866127000, r.year = 2018;

// Query 209
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Cash Generated from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 465004000, r.year = 2017;

// Query 210
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Cash Generated from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 340003000, r.year = 2016;

// Query 211
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Cash Generated from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 345827000, r.year = 2015;

// Query 212
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Cash Utilized in Investing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 431198000, r.year = 2024;

// Query 213
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Cash Utilized in Investing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 986281000, r.year = 2023;

// Query 214
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Cash Utilized in Investing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 311010000, r.year = 2022;

// Query 215
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Cash Utilized in Investing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 735787000, r.year = 2021;

// Query 216
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Cash Utilized in Investing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 916675000, r.year = 2020;

// Query 217
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Cash Utilized in Investing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 60370000, r.year = 2019;

// Query 218
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Cash Utilized in Investing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 431244000, r.year = 2018;

// Query 219
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Cash Utilized in Investing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1392648000, r.year = 2017;

// Query 220
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Cash Utilized in Investing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 305623000, r.year = 2016;

// Query 221
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Cash Utilized in Investing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 382577000, r.year = 2015;

// Query 222
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'New Capacity Added'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.0, r.year = 2024;

// Query 223
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'New Capacity Added'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.0, r.year = 2023;

// Query 224
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'New Capacity Added'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.9, r.year = 2022;

// Query 225
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'New Capacity Added'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.3, r.year = 2021;

// Query 226
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'New Capacity Added'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.3, r.year = 2020;

// Query 227
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'New Capacity Added'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.4, r.year = 2018;

// Query 228
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'New Capacity Added'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.5, r.year = 2017;

// Query 229
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'New Capacity Added'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.75, r.year = 2016;

// Query 230
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'New Capacity Added'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.0, r.year = 2015;

// Query 231
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Emission Reduction'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 142294, r.year = 2024;

// Query 232
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Emission Reduction'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106727, r.year = 2023;

// Query 233
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Emission Reduction'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 108300, r.year = 2022;

// Query 234
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Emission Reduction'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 81355, r.year = 2021;

// Query 235
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Emission Reduction'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 66578, r.year = 2020;

// Query 236
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Emission Reduction'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 68040, r.year = 2019;

// Query 237
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Emission Reduction'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58338, r.year = 2018;

// Query 238
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Emission Reduction'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30555, r.year = 2017;

// Query 239
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Emission Reduction'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42840, r.year = 2016;

// Query 240
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Emission Reduction'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39690, r.year = 2015;

// Query 241
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.61, r.year = 2024;

// Query 242
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.54, r.year = 2023;

// Query 243
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.61, r.year = 2022;

// Query 244
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.99, r.year = 2021;

// Query 245
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.81, r.year = 2020;

// Query 246
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.11, r.year = 2019;

// Query 247
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.48, r.year = 2018;

// Query 248
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.53, r.year = 2017;

// Query 249
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.99, r.year = 2016;

// Query 250
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.04, r.year = 2015;

// Query 251
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Equity Asset Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.73, r.year = 2024;

// Query 252
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Equity Asset Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.89, r.year = 2023;

// Query 253
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Equity Asset Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.01, r.year = 2022;

// Query 254
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Equity Asset Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.27, r.year = 2021;

// Query 255
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Equity Asset Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.46, r.year = 2020;

// Query 256
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Equity Asset Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.10, r.year = 2019;

// Query 257
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Equity Asset Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.40, r.year = 2018;

// Query 258
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Equity Asset Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.60, r.year = 2017;

// Query 259
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Equity Asset Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.88, r.year = 2016;

// Query 260
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Equity Asset Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.54, r.year = 2015;

// Query 261
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.44, r.year = 2024;

// Query 262
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.29, r.year = 2023;

// Query 263
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.22, r.year = 2022;

// Query 264
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.22, r.year = 2021;

// Query 265
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.20, r.year = 2020;

// Query 266
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.22, r.year = 2019;

// Query 267
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.18, r.year = 2018;

// Query 268
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.11, r.year = 2017;

// Query 269
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.21, r.year = 2016;

// Query 270
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.25, r.year = 2015;

// Query 271
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Market Capitalization'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6678881794, r.year = 2024;

// Query 272
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Market Capitalization'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5473776960, r.year = 2023;

// Query 273
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25, r.year = 2024;

// Query 274
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19, r.year = 2023;

// Query 275
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Price to Book Value - Voting Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.94, r.year = 2024;

// Query 276
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Price to Book Value - Voting Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.83, r.year = 2023;

// Query 277
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Price to Book Value - Non Voting Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.73, r.year = 2024;

// Query 278
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Price to Book Value - Non Voting Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.65, r.year = 2023;

// Query 279
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13019465000, r.year = 2024;

// Query 280
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13023778000, r.year = 2023;

// Query 281
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11505892000, r.year = 2022;

// Query 282
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8291754000, r.year = 2021;

// Query 283
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7382488000, r.year = 2020;

// Query 284
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5789278000, r.year = 2019;

// Query 285
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5303325000, r.year = 2018;

// Query 286
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4705043000, r.year = 2017;

// Query 287
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3509004000, r.year = 2016;

// Query 288
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2235897000, r.year = 2015;

// Query 289
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7528840000, r.year = 2024;

// Query 290
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6889285000, r.year = 2023;

// Query 291
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5725127000, r.year = 2022;

// Query 292
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3644926000, r.year = 2021;

// Query 293
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3000797000, r.year = 2020;

// Query 294
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2753369000, r.year = 2019;

// Query 295
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2212155000, r.year = 2018;

// Query 296
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1807590000, r.year = 2017;

// Query 297
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1870400000, r.year = 2016;

// Query 298
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1450452000, r.year = 2015;

// Query 299
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3055073000, r.year = 2024;

// Query 300
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3975948000, r.year = 2023;

// Query 301
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4357951000, r.year = 2022;

// Query 302
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3846807000, r.year = 2021;

// Query 303
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3397825000, r.year = 2020;

// Query 304
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2672769000, r.year = 2019;

// Query 305
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2629451000, r.year = 2018;

// Query 306
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2604609000, r.year = 2017;

// Query 307
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1448370000, r.year = 2016;

// Query 308
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Loans and Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 630915000, r.year = 2015;

// Query 309
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10583913000, r.year = 2024;

// Query 310
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10865233000, r.year = 2023;

// Query 311
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10083077000, r.year = 2022;

// Query 312
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7491733000, r.year = 2021;

// Query 313
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6398622000, r.year = 2020;

// Query 314
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5426138000, r.year = 2019;

// Query 315
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4841606000, r.year = 2018;

// Query 316
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4412199000, r.year = 2017;

// Query 317
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3318770000, r.year = 2016;

// Query 318
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Total Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2081367000, r.year = 2015;

// Query 319
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1825593926, r.year = 2024;

// Query 320
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1825593926, r.year = 2023;

// Query 321
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4082365801, r.year = 2024;

// Query 322
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3143660370, r.year = 2023;

// Query 323
MATCH (c:Company {name: 'VIDULLANKA PLC'}), (aud:Company {name: 'BDO partners'}) MERGE (c)-[r:AUDITED_BY]->(aud) ON CREATE SET r.year = 2024;

// Total queries: 323
// Generated on: 2025-10-02T18:37:47.834678
