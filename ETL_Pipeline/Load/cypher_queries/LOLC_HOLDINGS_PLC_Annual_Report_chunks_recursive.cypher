// Query 1
MERGE (c:Company {name: 'LOLC Holdings PLC'}) ON CREATE SET c.id = 'lolc_holdings_plc', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 2
MERGE (p:Person {name: 'Ishara Chinthaka Nanayakkara'}) ON CREATE SET p.id = 'ishara_chinthaka_nanayakkara';

// Query 3
MERGE (p:Person {name: 'Waduthantri Dharshan Kapila Jayawardena'}) ON CREATE SET p.id = 'waduthantri_darshan_kapila_jayawardena';

// Query 4
MERGE (p:Person {name: 'Kalsha Upeka Amarasinghe'}) ON CREATE SET p.id = 'kalsha_upeka_amarasinghe';

// Query 5
MERGE (p:Person {name: 'Desamanya Minuwanpitiyage Dharmasiri Dayananda Pieris'}) ON CREATE SET p.id = 'desamanya_minuwanpitiyage_dharmasiri_dayananda_pieris';

// Query 6
MERGE (p:Person {name: 'Dr. Ravindra Ajith Fernando'}) ON CREATE SET p.id = 'dr_ravindra_ajith_fernando';

// Query 7
MERGE (p:Person {name: 'Francisco Kankanamalage Conrad Prasad Niroshan Dias'}) ON CREATE SET p.id = 'francisco_kankanamalage_conrad_prasad_niroshan_dias';

// Query 8
MERGE (auditor:Company {name: 'Ernst & Young'}) ON CREATE SET auditor.id = 'ernst_and_young';

// Query 9
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 10
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 11
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 12
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 13
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 14
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 15
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 16
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 17
MERGE (s:Sector {name: 'Utilities'}) ON CREATE SET s.id = 'utilities';

// Query 18
MERGE (prod:Product {name: 'Financial Services'}) ON CREATE SET prod.id = 'financial_services';

// Query 19
MERGE (prod:Product {name: 'Insurance'}) ON CREATE SET prod.id = 'insurance_product';

// Query 20
MERGE (prod:Product {name: 'Manufacturing'}) ON CREATE SET prod.id = 'manufacturing';

// Query 21
MERGE (prod:Product {name: 'Trading'}) ON CREATE SET prod.id = 'trading';

// Query 22
MERGE (prod:Product {name: 'Leisure'}) ON CREATE SET prod.id = 'leisure';

// Query 23
MERGE (prod:Product {name: 'Plantation'}) ON CREATE SET prod.id = 'plantation';

// Query 24
MERGE (prod:Product {name: 'Power and Energy'}) ON CREATE SET prod.id = 'power_and_energy';

// Query 25
MERGE (prod:Product {name: 'IT Services'}) ON CREATE SET prod.id = 'it_services';

// Query 26
MERGE (prod:Product {name: 'Real Estate Development'}) ON CREATE SET prod.id = 'real_estate_development';

// Query 27
MERGE (prod:Product {name: 'Construction'}) ON CREATE SET prod.id = 'construction';

// Query 28
MERGE (prod:Product {name: 'LOLC GPT'}) ON CREATE SET prod.id = 'lolc_gpt';

// Query 29
MERGE (prod:Product {name: 'Mobile App-Based Payment Channels'}) ON CREATE SET prod.id = 'mobile_app_based_payment_channels';

// Query 30
MERGE (prod:Product {name: 'Coated Fertilizers'}) ON CREATE SET prod.id = 'coated_fertilizers';

// Query 31
MERGE (prod:Product {name: 'New Fertilizer Blends'}) ON CREATE SET prod.id = 'new_fertilizer_blends';

// Query 32
MERGE (prod:Product {name: 'Crop Protection Products'}) ON CREATE SET prod.id = 'crop_protection_products';

// Query 33
MERGE (prod:Product {name: 'Advanced Irrigation Solutions'}) ON CREATE SET prod.id = 'advanced_irrigation_solutions';

// Query 34
MERGE (prod:Product {name: 'Vehicle Maintenance, Servicing and Repairs'}) ON CREATE SET prod.id = 'vehicle_maintenance_servicing_and_repairs';

// Query 35
MERGE (prod:Product {name: 'Ethanol Sales'}) ON CREATE SET prod.id = 'ethanol_sales';

// Query 36
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Lending Portfolio'}) ON CREATE SET m.id = 'lending_portfolio', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Outstanding Borrowings'}) ON CREATE SET m.id = 'outstanding_borrowings', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Non-Performing Portfolio'}) ON CREATE SET m.id = 'non_performing_portfolio', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Market Price Per Share'}) ON CREATE SET m.id = 'market_price_per_share', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Income Tax Expense'}) ON CREATE SET m.id = 'income_tax_expense', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Net Asset Value Per Share'}) ON CREATE SET m.id = 'net_asset_value_per_share', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Debt To Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Times';

// Query 48
MERGE (m:Metric {name: 'Interest Cover'}) ON CREATE SET m.id = 'interest_cover', m.unit = 'Times';

// Query 49
MERGE (m:Metric {name: 'Gearing Ratio'}) ON CREATE SET m.id = 'gearing_ratio', m.unit = '%';

// Query 50
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 51
MATCH (p:Person {name: 'Ishara Chinthaka Nanayakkara'}), (c:Company {name: 'LOLC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Deputy Chairman', r.as_of = date('2024-03-31');

// Query 52
MATCH (p:Person {name: 'Waduthantri Dharshan Kapila Jayawardena'}), (c:Company {name: 'LOLC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Managing Director/CEO', r.as_of = date('2024-03-31');

// Query 53
MATCH (p:Person {name: 'Kalsha Upeka Amarasinghe'}), (c:Company {name: 'LOLC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 54
MATCH (p:Person {name: 'Desamanya Minuwanpitiyage Dharmasiri Dayananda Pieris'}), (c:Company {name: 'LOLC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Director', r.as_of = date('2024-03-31');

// Query 55
MATCH (p:Person {name: 'Dr. Ravindra Ajith Fernando'}), (c:Company {name: 'LOLC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Director', r.as_of = date('2024-03-31');

// Query 56
MATCH (p:Person {name: 'Francisco Kankanamalage Conrad Prasad Niroshan Dias'}), (c:Company {name: 'LOLC Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 57
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 58
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (s:Sector {name: 'Insurance'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 59
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 60
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 61
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 62
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 63
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 64
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 65
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 66
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (prod:Product {name: 'Financial Services'}) MERGE (c)-[:OFFERS]->(prod);

// Query 67
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (prod:Product {name: 'Insurance'}) MERGE (c)-[:OFFERS]->(prod);

// Query 68
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (prod:Product {name: 'Manufacturing'}) MERGE (c)-[:OFFERS]->(prod);

// Query 69
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (prod:Product {name: 'Trading'}) MERGE (c)-[:OFFERS]->(prod);

// Query 70
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (prod:Product {name: 'Leisure'}) MERGE (c)-[:OFFERS]->(prod);

// Query 71
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (prod:Product {name: 'Plantation'}) MERGE (c)-[:OFFERS]->(prod);

// Query 72
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (prod:Product {name: 'Power and Energy'}) MERGE (c)-[:OFFERS]->(prod);

// Query 73
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (prod:Product {name: 'IT Services'}) MERGE (c)-[:OFFERS]->(prod);

// Query 74
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (prod:Product {name: 'Real Estate Development'}) MERGE (c)-[:OFFERS]->(prod);

// Query 75
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (prod:Product {name: 'Construction'}) MERGE (c)-[:OFFERS]->(prod);

// Query 76
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (prod:Product {name: 'LOLC GPT'}) MERGE (c)-[:OFFERS]->(prod);

// Query 77
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (prod:Product {name: 'Mobile App-Based Payment Channels'}) MERGE (c)-[:OFFERS]->(prod);

// Query 78
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (prod:Product {name: 'Coated Fertilizers'}) MERGE (c)-[:OFFERS]->(prod);

// Query 79
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (prod:Product {name: 'New Fertilizer Blends'}) MERGE (c)-[:OFFERS]->(prod);

// Query 80
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (prod:Product {name: 'Crop Protection Products'}) MERGE (c)-[:OFFERS]->(prod);

// Query 81
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (prod:Product {name: 'Advanced Irrigation Solutions'}) MERGE (c)-[:OFFERS]->(prod);

// Query 82
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (prod:Product {name: 'Vehicle Maintenance, Servicing and Repairs'}) MERGE (c)-[:OFFERS]->(prod);

// Query 83
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (prod:Product {name: 'Ethanol Sales'}) MERGE (c)-[:OFFERS]->(prod);

// Query 84
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 458000000, r.year = 2015;

// Query 85
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 835000000, r.year = 2016;

// Query 86
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10149000000, r.year = 2017;

// Query 87
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4763000000, r.year = 2018;

// Query 88
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3106000000, r.year = 2019;

// Query 89
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -9094000000, r.year = 2020;

// Query 90
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28317000000, r.year = 2021;

// Query 91
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 61064000000, r.year = 2022;

// Query 92
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22394000000, r.year = 2023;

// Query 93
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30347000000, r.year = 2024;

// Query 94
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 504000000, r.year = 2015;

// Query 95
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 689000000, r.year = 2016;

// Query 96
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9777000000, r.year = 2017;

// Query 97
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4699000000, r.year = 2018;

// Query 98
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3194000000, r.year = 2019;

// Query 99
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -9213000000, r.year = 2020;

// Query 100
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28041000000, r.year = 2021;

// Query 101
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 61163000000, r.year = 2022;

// Query 102
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22374000000, r.year = 2023;

// Query 103
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29914000000, r.year = 2024;

// Query 104
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 62609000000, r.year = 2015;

// Query 105
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 75494000000, r.year = 2016;

// Query 106
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 102007000000, r.year = 2017;

// Query 107
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 110723000000, r.year = 2018;

// Query 108
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 124996000000, r.year = 2019;

// Query 109
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 191741000000, r.year = 2020;

// Query 110
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 252953000000, r.year = 2021;

// Query 111
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 409926000000, r.year = 2022;

// Query 112
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 457298000000, r.year = 2023;

// Query 113
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 616474000000, r.year = 2024;

// Query 114
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Lending Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1378000000, r.year = 2015;

// Query 115
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Lending Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1848000000, r.year = 2016;

// Query 116
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Lending Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 850000000, r.year = 2017;

// Query 117
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Lending Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2414000000, r.year = 2018;

// Query 118
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Lending Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2535000000, r.year = 2019;

// Query 119
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Lending Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5513000000, r.year = 2020;

// Query 120
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Lending Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9218000000, r.year = 2021;

// Query 121
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Lending Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10163000000, r.year = 2022;

// Query 122
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Lending Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20542000000, r.year = 2023;

// Query 123
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Lending Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 71814000000, r.year = 2024;

// Query 124
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Outstanding Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25016000000, r.year = 2015;

// Query 125
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Outstanding Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38369000000, r.year = 2016;

// Query 126
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Outstanding Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 52698000000, r.year = 2017;

// Query 127
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Outstanding Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 54241000000, r.year = 2018;

// Query 128
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Outstanding Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 73524000000, r.year = 2019;

// Query 129
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Outstanding Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 95413000000, r.year = 2020;

// Query 130
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Outstanding Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 105175000000, r.year = 2021;

// Query 131
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Outstanding Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 146018000000, r.year = 2022;

// Query 132
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Outstanding Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 188394000000, r.year = 2023;

// Query 133
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Outstanding Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 308509000000, r.year = 2024;

// Query 134
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Non-Performing Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 168000000, r.year = 2015;

// Query 135
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Non-Performing Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 168000000, r.year = 2016;

// Query 136
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Non-Performing Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 153000000, r.year = 2017;

// Query 137
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Non-Performing Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 149000000, r.year = 2018;

// Query 138
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Non-Performing Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 151000000, r.year = 2019;

// Query 139
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Non-Performing Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 151000000, r.year = 2020;

// Query 140
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Non-Performing Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 119000000, r.year = 2021;

// Query 141
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Non-Performing Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 92000000, r.year = 2022;

// Query 142
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Non-Performing Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 91000000, r.year = 2023;

// Query 143
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Non-Performing Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 90000000, r.year = 2024;

// Query 144
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 76.60, r.year = 2015;

// Query 145
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 72.00, r.year = 2016;

// Query 146
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 61.00, r.year = 2017;

// Query 147
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 118.00, r.year = 2018;

// Query 148
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 88.90, r.year = 2019;

// Query 149
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 88.90, r.year = 2020;

// Query 150
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 292.00, r.year = 2021;

// Query 151
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 597.00, r.year = 2022;

// Query 152
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 375.00, r.year = 2023;

// Query 153
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 397.50, r.year = 2024;

// Query 154
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 458204, r.year = 2015;

// Query 155
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 834932, r.year = 2016;

// Query 156
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10149370, r.year = 2017;

// Query 157
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4762680, r.year = 2018;

// Query 158
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3106180, r.year = 2019;

// Query 159
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -9094021, r.year = 2020;

// Query 160
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28316686, r.year = 2021;

// Query 161
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 61064153, r.year = 2022;

// Query 162
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22393848, r.year = 2023;

// Query 163
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30347387, r.year = 2024;

// Query 164
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45408, r.year = 2015;

// Query 165
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -146152, r.year = 2016;

// Query 166
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -372071, r.year = 2017;

// Query 167
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -63328, r.year = 2018;

// Query 168
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -88015, r.year = 2019;

// Query 169
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -118834, r.year = 2020;

// Query 170
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -275988, r.year = 2021;

// Query 171
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 98821, r.year = 2022;

// Query 172
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -20175, r.year = 2023;

// Query 173
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -432920, r.year = 2024;

// Query 174
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 337746502000, r.year = 2024;

// Query 175
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 337700000000, r.year = 2024;

// Query 176
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 85900000000, r.year = 2024;

// Query 177
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 82600000000, r.year = 2023;

// Query 178
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 73.44, r.year = 2015;

// Query 179
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 74.71, r.year = 2016;

// Query 180
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 98.89, r.year = 2017;

// Query 181
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 108.69, r.year = 2018;

// Query 182
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 101.49, r.year = 2019;

// Query 183
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 194.72, r.year = 2020;

// Query 184
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 291.37, r.year = 2021;

// Query 185
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 515.81, r.year = 2022;

// Query 186
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 535.50, r.year = 2023;

// Query 187
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Net Asset Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 628.39, r.year = 2024;

// Query 188
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Debt To Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.72, r.year = 2015;

// Query 189
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Debt To Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.08, r.year = 2016;

// Query 190
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Debt To Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.12, r.year = 2017;

// Query 191
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Debt To Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.05, r.year = 2018;

// Query 192
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Debt To Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.52, r.year = 2019;

// Query 193
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Debt To Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.03, r.year = 2020;

// Query 194
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Debt To Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.76, r.year = 2021;

// Query 195
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Debt To Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.60, r.year = 2022;

// Query 196
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Debt To Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.74, r.year = 2023;

// Query 197
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Debt To Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.03, r.year = 2024;

// Query 198
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.27, r.year = 2015;

// Query 199
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.26, r.year = 2016;

// Query 200
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.93, r.year = 2017;

// Query 201
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.78, r.year = 2018;

// Query 202
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.61, r.year = 2019;

// Query 203
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.15, r.year = 2020;

// Query 204
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.98, r.year = 2021;

// Query 205
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.27, r.year = 2022;

// Query 206
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.68, r.year = 2023;

// Query 207
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.62, r.year = 2024;

// Query 208
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50.85, r.year = 2024;

// Query 209
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42.08, r.year = 2023;

// Query 210
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 298610277000, r.year = 2024;

// Query 211
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 254469594000, r.year = 2023;

// Query 212
MATCH (c:Company {name: 'LOLC Holdings PLC'}), (auditor:Company {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(auditor) ON CREATE SET r.year = 2024;

// Total queries: 212
// Generated on: 2025-10-02T17:57:13.214568
